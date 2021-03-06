import abjad

metadata = abjad.OrderedDict(
    [
        (
            "last_tempo",
            abjad.MetronomeMark(
                reference_duration=abjad.Duration(1, 4),
                units_per_minute=72,
            ),
        ),
        (
            "last_time_signature",
            abjad.TimeSignature((7, 8)),
        ),
        (
            "empty_beatspan",
            abjad.Duration(5, 8),
        ),
        ("segment_name", "c"),
    ]
)
