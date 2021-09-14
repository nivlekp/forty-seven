import pytest

import pang

from ._lib import attach_dynamics_to_sequence


def generate_sequence_manually(instances, durations, pitches):
    sound_points_generator = pang.ManualSoundPointsGenerator(
        instances=instances,
        durations=durations,
        pitches=pitches,
    )
    return pang.Sequence(sound_points_generator=sound_points_generator)


@pytest.mark.parametrize(
    "instances, durations, pitches",
    [([0, 1, 1.5, 3], [1, 0.5, 1.5, 1], [0, 0, (0, 12), 0])],
)
def test_attach_dynamics_to_sequence(instances, durations, pitches):
    """
    Test that dynamics can be attached to events in sequence correctly.
    """
    sequence = generate_sequence_manually(instances, durations, pitches)
    attach_dynamics_to_sequence(sequence)
    assert all(isinstance(event.attachments[0], pang.Dynamic) for event in sequence)
