import typing

import abjad


class Multiphonics:
    r"""
    Flute Multiphonics. Source: https://www.multiphoniques.com/

    ..  container:: example

        >>> multiphonics = Multiphonics(
        ...     pitches=["b'", "fqs''", "cqs'''"],
        ...     fingering={
        ...         "cc": ["two", "three", "fourR", "five", "six"],
        ...         "lh": ["b"],
        ...         "rh": ["ees"],
        ...     },
        ... )
        >>> string = abjad.lilypond(multiphonics.abjad_format)
        >>> print(string)
        <b' fqs'' cqs'''>1
        ^ \markup { \woodwind-diagram #'flute #'((cc . (two three fourR five six)) (lh . (b)) (rh . (ees))) }

    """

    def __init__(
        self,
        pitches: list[str],
        fingering: dict[str, list[str]],
        id_: typing.Optional[int] = None,
        comments: typing.Optional[str] = None,
    ):
        self._pitches = pitches
        self._fingering = fingering
        self._id = id_
        self._comments = comments

    def _gen_markup_string(self):
        cc_string = f"(cc . ({' '.join(self._fingering['cc'])}))"
        lh_string = f"(lh . ({' '.join(self._fingering['lh'])}))"
        rh_string = f"(rh . ({' '.join(self._fingering['rh'])}))"
        fingerings_string = f"#'({' '.join([cc_string, lh_string, rh_string])})"
        string_components = [
            r"\markup {",
            r"\woodwind-diagram",
            r"#'flute",
            fingerings_string,
            "}",
        ]
        string = " ".join(string_components)
        return abjad.Markup(string, literal=True, direction=abjad.Up)

    @property
    def abjad_format(self, duration=(4, 4)):
        maker = abjad.LeafMaker()
        duration = abjad.Duration(duration)
        selection = maker([tuple(self._pitches)], duration)
        chord = selection[0]
        markup = self._gen_markup_string()
        abjad.attach(markup, chord)
        return chord


multiphonics_list = [
    Multiphonics(
        pitches=["ds'''", "fs'''"],
        fingering={
            "cc": ["one", "two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["ees", "gz"],
        },
        id_=235,
    ),
    Multiphonics(
        pitches=["b'", "fqs''", "cqs'''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["ees"],
        },
        id_=1305,
    ),
    Multiphonics(
        pitches=["g'", "bqf'", "d''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["cis", "c", "gz"],
        },
        id_=1306,
        comments="p",
    ),
    Multiphonics(
        pitches=["c'", "d''", "d'''", "a'''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "sixR"],
            "lh": ["b"],
            "rh": [],
        },
        id_=1307,
        comments="difficult",
    ),
    Multiphonics(
        pitches=["c''", "cqs'''", "g'''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["ees"],
        },
        id_=1308,
        comments="mf-f",
    ),
    Multiphonics(
        pitches=["c'", "e'''", "bf'''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["ees"],
        },
        id_=1309,
        comments="not easy to stabilize",
    ),
    Multiphonics(
        pitches=["e'", "b'", "e''", "cs'''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["cis"],
        },
        id_=1310,
    ),
    Multiphonics(
        pitches=["e'", "b'", "e''", "aqs''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["cis"],
        },
        id_=1311,
        comments="pp, windy, difficult",
    ),
    Multiphonics(
        pitches=["c''", "b''"],
        fingering={
            "cc": ["two", "threeRT", "four", "five", "six"],
            "lh": ["b"],
            "rh": ["cis"],
        },
        id_=1312,
        comments="stable",
    ),
]
