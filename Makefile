.PHONY: black-check black-reformat clean flake8 isort-check isort-reformat
.PHONY: mypy pytest pytest-coverage pytest-x reformat check test
.PHONY: make-segments

black-check:
	black --check --diff --target-version=py38 .

black-reformat:
	black --target-version=py38 .

clean:
	find . -name '*.pyc' | xargs rm
	rm -Rif *.egg-info/
	rm -Rif .cache
	rm -Rif .tox
	rm -Rif __pycache__
	#rm -Rif build
	rm -Rif dist
	rm -Rif htmlcov
	rm -Rif prof

flake_ignore = --ignore=E203,E266,E501,W503
flake_options = --isolated --max-line-length=88

flake8:
	flake8 ${flake_ignore} ${flake_options}

isort-check:
	isort \
	--case-sensitive \
	--check-only \
	--diff \
	--line-width=88 \
	--multi-line=3 \
	--project=abjad \
	--project=abjadext \
	--project=pang \
	--thirdparty=ply \
	--thirdparty=roman \
	--thirdparty=uqbar \
	--trailing-comma \
	--use-parentheses \
	.

isort-reformat:
	isort \
	--case-sensitive \
	--line-width=88 \
	--multi-line=3 \
	--project=abjad \
	--project=abjadext \
	--project=pang \
	--thirdparty=ply \
	--thirdparty=roman \
	--thirdparty=uqbar \
	--trailing-comma \
	--use-parentheses \
	.

mypy:
	mypy .
	# fix mypy errors and then run mypy over tests/ directory
	# mypy tests

project = forty_seven

pytest:
	pytest .

pytest-coverage:
	rm -Rf htmlcov/
	pytest \
	--cov-config=.coveragerc \
	--cov-report=html \
	--cov=${project} \
	.

pytest-x:
	pytest -x .

reformat:
	make black-reformat
	make isort-reformat

check:
	make black-check
	make flake8
	make isort-check
	#make mypy

test:
	make black-check
	make flake8
	make isort-check
	#make mypy
	make pytest

segments-ly:
	cd scr && ./run-segmentmakers-ly
