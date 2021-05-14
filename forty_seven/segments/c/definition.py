import forty_seven
import pang

template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template, segment_name="c")

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["C"],
    origin=0,
    pitch_range=forty_seven.registrations["low"],
    multiplier=0.5,
)

pitch_set_1 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"] | forty_seven.sieves["B"],
    origin=0,
    pitch_range=forty_seven.registrations["high"],
    multiplier=1,
)

sequence = pang.Sequence()
sound_points_generator = pang.RandomWalkSoundPointsGenerator(
    arrival_rate=1.0,
    service_rate=1.3,
    arrival_model="deterministic",
    service_model="markov",
    pitch_set=pitch_set_0,
    seed=4145405,
)
sequence_segment = pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=80
)
sequence.extend(sequence_segment)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=5.0,
    service_rate=7.5,
    pitch_set=pitch_set_1,
    seed=7928374,
)
sequence_segment = pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=6
)
sequence.superpose(offset=6, sequence=sequence_segment)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=5.0,
    service_rate=7.5,
    pitch_set=pitch_set_1,
    seed=611767,
)
sequence_segment = pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=6
)
sequence.superpose(offset=20, sequence=sequence_segment)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=5.0,
    service_rate=7.5,
    pitch_set=pitch_set_1,
    seed=938274,
)
sequence_segment = pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=6
)
sequence.superpose(offset=32, sequence=sequence_segment)

sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=5.0,
    service_rate=7.5,
    pitch_set=pitch_set_1,
    seed=178719971,
)
sequence_segment = pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=6
)
sequence.superpose(offset=50, sequence=sequence_segment)

command = pang.QuantizeSequenceCommand(sequence, q_schema=forty_seven.q_schemas["B"])
scope = pang.Scope(voice_name="FluteVoice1")
maker(scope, command)

command = pang.DecodeCommand()
maker(scope, command)
