import forty_seven
import pang

template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template)

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"],
    origin=0,
    pitch_range=forty_seven.registrations["middle"],
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
    pitch_set=pitch_set_0, standard_deviation=2, seed=28374
)
sequence.extend(
    pang.Sequence(sound_points_generator=sound_points_generator, sequence_duration=60)
)

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
    arrival_rate=1, service_rate=2, pitch_set=pitch_set_1, seed=91616
)
sequence.insert(
    offset=45,
    sequence=pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=15
    ),
)


sound_points_generator = pang.AtaxicSoundPointsGenerator(
    arrival_rate=2, service_rate=3, pitch_set=pitch_set_1, seed=17886
)
sequence.insert(
    offset=60,
    sequence=pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=20
    ),
)

command = pang.QuantizeSequenceCommand(sequence, q_schema=forty_seven.q_schemas["B"])
scope = pang.Scope(voice_name="FluteVoice1")
maker(scope, command)
