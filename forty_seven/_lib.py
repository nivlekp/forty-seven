import random

import abjad
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
                    2: {2: None, 3: None},
                    3: {2: None, 3: None},
                    5: {2: None},
                    7: {2: None},
                    13: None,
                },
            ),
        ),
    ]
)

q_schemas = abjad.OrderedDict(
    [
        ("A", nauert.MeasurewiseQSchema(search_tree=search_trees["A"])),
        (
            "B",
            nauert.MeasurewiseQSchema(
                search_tree=search_trees["B"],
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


def attach_harmonics_to_sequence(sequence, harmonic_indices=[1, 2, 3], seed=123456):
    random.seed(seed)
    for event in sequence:
        index = random.choice(harmonic_indices)
        harmonic_interval = overtone_series_intervals[index]
        harmonics = pang.Harmonics(harmonic_interval)
        pang.attach(harmonics, event)
