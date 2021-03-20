import forty_seven
import pang

template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template)

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"],
    origin=0,
    pitch_range=forty_seven.registrations["middle"],
)

pitch_set_1 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"],
    origin=0,
    pitch_range=forty_seven.registrations["full"],
)

sequence = pang.Sequence()
sound_points_generator = pang.GRWSoundPointsGenerator(pitch_set=pitch_set_0, seed=28374)
sequence.extend(pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=10
))

sound_points_generator = pang.AtaxicSoundPointsGenerator(pitch_set=pitch_set_1, seed=98719)
sequence.extend(pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=5
))

sound_points_generator = pang.GRWSoundPointsGenerator(pitch_set=pitch_set_0, seed=234234)
sequence.extend(pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=10
))

sound_points_generator = pang.AtaxicSoundPointsGenerator(pitch_set=pitch_set_1, seed=91616)
sequence.extend(pang.Sequence(
    sound_points_generator=sound_points_generator, sequence_duration=5
))

command = pang.QuantizeSequenceCommand(sequence)
scope = pang.Scope(voice_name="FluteVoice1")
maker(scope, command)
