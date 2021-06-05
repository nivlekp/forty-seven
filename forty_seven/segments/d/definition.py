import forty_seven
import pang

template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template, segment_name="c")

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["B"] & forty_seven.sieves["C"],
    origin=0,
    pitch_range=forty_seven.registrations["mid-high"],
    multiplier=1,
)

sequence = pang.Sequence()

for i in range(10):
    sound_points_generator = pang.AtaxicSoundPointsGenerator(
        arrival_rate=1.5 - (i % 3 * 2 / 3),
        service_rate=2.0 - (i % 3 * 2 / 3),
        pitch_set=pitch_set_0,
        seed=91851 + i * i,
    )
    sequence_segment = pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=10
    )
    sequence.extend(sequence_segment)

command = pang.QuantizeSequenceCommand(sequence, q_schema=forty_seven.q_schemas["D"])
scope = pang.Scope(voice_name="FluteVoice1")
maker(scope, command)

command = pang.DecodeCommand()
maker(scope, command)
