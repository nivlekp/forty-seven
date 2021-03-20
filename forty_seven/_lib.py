import abjad

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
        ("A", abjad.Pattern(indices=[0, 1], period=5)),
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
        ("high", (start_pitch + abjad.NamedInterval(24), stop_pitch)),
    ]
)


def make_score_template(simultaneous=True):
    voice1 = abjad.Voice(name="FluteVoice1")
    voices = [voice1]
    staff = abjad.Staff(voices, name="FluteStaff", simultaneous=simultaneous)
    score = abjad.Score([staff], name="forty-seven")
    return score
