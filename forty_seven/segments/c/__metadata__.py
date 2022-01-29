import abjad

metadata = dict(
    {
        "empty_beatspan": abjad.Duration(5, 8),
        "last_tempo": MetronomeMark(
            reference_duration=Duration(1, 4),
            units_per_minute=72,
            textual_indication=None,
            custom_markup=None,
            decimal=None,
            hide=False,
        ),
        "last_time_signature": TimeSignature(pair=(7, 8), hide=False, partial=None),
        "segment_name": "c",
    }
)
