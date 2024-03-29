import forty_seven
import pang

template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template, segment_name="a")

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"],
    origin=0,
    pitch_range=forty_seven.registrations["low"],
    multiplier=0.5,
)

pitch_set_1 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"],
    origin=0,
    pitch_range=forty_seven.registrations["mid-high"],
    multiplier=0.5,
)

sequence = pang.Sequence()
sound_points_generator = pang.GRWSoundPointsGenerator(
    arrival_rate=1.5,
    service_rate=1.7,
    pitch_set=pitch_set_0,
    standard_deviation=2,
    seed=28374,
)
segment = pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=60
)
forty_seven.attach_harmonics_to_sequence(segment, harmonic_indices=[1, 2], seed=123456)
forty_seven.attach_dynamics_to_sequence(segment, mean_amplitude=0.5, seed=5681)
sequence.extend(segment)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=0.5, service_rate=1, pitch_set=pitch_set_1, seed=98719
)
sequence.insert(
    offset=20,
    sequence=pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=5
    ),
)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=1.5, service_rate=3, pitch_set=pitch_set_1, seed=91616
)
sequence.insert(
    offset=45,
    sequence=pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=15
    ),
)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=3, service_rate=4.5, pitch_set=pitch_set_1, seed=17886
)
sequence.insert(
    offset=60,
    sequence=pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=20
    ),
)

for event in sequence:
    if not isinstance(event.pitch, tuple) and event.attachments is not None:
        print(event)
        raise Exception
    if isinstance(event.pitch, tuple) and not isinstance(
        event.attachments[0], pang.Harmonics
    ):
        print(event.pitch)
        print(event.attachments)
        raise Exception

command = pang.QuantizeSequenceCommand(sequence, q_schema=forty_seven.q_schemas["C"])
scope = pang.Scope(voice_name="FluteVoice1")


if __name__ == "__main__":
    metadata = pang.build.section(template, scope, command)
    pang.build.persist(template, metadata)
