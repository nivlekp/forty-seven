import random

import numpy as np

import abjad
import pang
from abjadext import nauert

instruments = abjad.OrderedDict([("Flute", abjad.Flute())])

start_pitch = instruments["Flute"].pitch_range.start_pitch
stop_pitch = instruments["Flute"].pitch_range.stop_pitch

metronome_marks = abjad.OrderedDict(
    [
        ("60", abjad.MetronomeMark((1, 4), 60)),
        ("72", abjad.MetronomeMark((1, 4), 72)),
    ]
)

sieves = abjad.OrderedDict(
    [
        ("A", abjad.Pattern(indices=[0, 3], period=10)),
        ("B", abjad.Pattern(indices=[0, 2, 4, 5], period=7)),
        ("C", abjad.Pattern(indices=[0, 1, 2, 4, 8, 10], period=11)),
    ]
)

registrations = abjad.OrderedDict(
    [
        ("full", (start_pitch, stop_pitch)),
        ("low", (start_pitch, stop_pitch + abjad.NamedInterval(-24))),
        (
            "middle",
            (
                start_pitch + abjad.NamedInterval(12),
                stop_pitch + abjad.NamedInterval(-12),
            ),
        ),
        (
            "mid-high",
            (
                start_pitch + abjad.NamedInterval(12),
                stop_pitch,
            ),
        ),
        ("high", (start_pitch + abjad.NamedInterval(24), stop_pitch)),
    ]
)

search_trees = abjad.OrderedDict(
    [
        (
            "A",
            nauert.UnweightedSearchTree(
                definition={
                    2: {2: None, 3: None},
                    3: {2: None, 3: None},
                    5: {2: None},
                    7: None,
                }
            ),
        ),
        (
            "B",
            nauert.UnweightedSearchTree(
                definition={
                    2: {2: {2: None}, 3: None, 5: None, 7: None},
                    3: {2: None, 3: None, 5: None},
                    5: {2: None, 3: None},
                    7: {2: None},
                },
            ),
        ),
        (
            "C",
            nauert.WeightedSearchTree(
                definition={
                    "divisors": (2, 3, 5, 7),
                    "max_depth": 2,
                    "max_divisions": 2,
                },
            ),
        ),
        (
            "D",
            nauert.WeightedSearchTree(
                definition={
                    "divisors": (2, 3, 5, 7, 11),
                    "max_depth": 1,
                    "max_divisions": 4,
                }
            ),
        ),
    ]
)

q_schemas = abjad.OrderedDict(
    [
        (
            "A",
            nauert.MeasurewiseQSchema(
                search_tree=search_trees["A"],
                tempo=metronome_marks["72"],
                time_signature=(7, 8),
            ),
        ),
        (
            "B",
            nauert.MeasurewiseQSchema(
                search_tree=search_trees["B"],
                tempo=metronome_marks["72"],
                time_signature=(7, 8),
                use_full_measure=True,
            ),
        ),
        (
            "C",
            nauert.MeasurewiseQSchema(
                search_tree=search_trees["C"],
                tempo=metronome_marks["72"],
                time_signature=(7, 8),
                use_full_measure=True,
            ),
        ),
        (
            "D",
            nauert.MeasurewiseQSchema(
                search_tree=search_trees["D"],
                tempo=metronome_marks["72"],
                time_signature=(7, 8),
                use_full_measure=True,
            ),
        ),
    ]
)

overtone_series_intervals = [
    0,
    12,
    19,
    24,
    28,
    31,
    34,
    36,
    38,
    40,
    41,
    43,
    44,
    46,
    47,
    48,
]


def make_score_template(simultaneous=True):
    voice1 = abjad.Voice(name="FluteVoice1")
    voices = [voice1]
    staff = abjad.Staff(voices, name="FluteStaff", simultaneous=simultaneous)
    literal = abjad.LilyPondLiteral(r'\set Staff.midiInstrument = #"flute"')
    abjad.attach(literal, staff)
    score = abjad.Score([staff], name="forty-seven")
    return score


def attach_dynamics_to_sequence(
    sequence, mean_amplitude=0.5, standard_deviation=0.5, seed=123456
):
    """
    Attach dynamic to sequence randomly.
    """
    assert mean_amplitude <= 1.0 and mean_amplitude >= 0.0
    dynamic_ordinals_bins = np.array([-6, -5, -4, -3, -2, -1, 1, 2, 3, 4, 5, 6])
    np.random.seed(seed)
    amplitudes = np.clip(
        np.random.normal(mean_amplitude, standard_deviation, len(sequence)),
        0,
        1,
    )
    dynamic_ordinals = np.interp(
        amplitudes, (amplitudes.min(), amplitudes.max()), (-6, 6)
    )
    dynamic_ordinals_indices = np.digitize(
        dynamic_ordinals, dynamic_ordinals_bins, right=True
    )
    dynamic_names = [
        abjad.Dynamic.dynamic_ordinal_to_dynamic_name(dynamic_ordinals_bins[index])
        for index in dynamic_ordinals_indices
    ]
    for event, dynamic_name in zip(sequence, dynamic_names):
        dynamic = pang.Dynamic(dynamic_name)
        event.attach(dynamic)


def attach_harmonics_to_sequence(sequence, harmonic_indices=[1, 2, 3], seed=123456):
    random.seed(seed)
    for event in sequence:
        index = random.choice(harmonic_indices)
        harmonic_interval = overtone_series_intervals[index]
        assert isinstance(event.pitch, (int, float))
        event.pitch = (event.pitch, event.pitch + harmonic_interval)
        harmonics = pang.Harmonics()
        event.attach(harmonics)


def attach_red_to_sequence(sequence):
    """
    Attach the color red to every second pitched event in the sequence.
    """
    index = 0
    for event in sequence:
        if event.pitch is not None:
            if index % 2 == 0:
                color = pang.Red()
                event.attach(color)
            index += 1
