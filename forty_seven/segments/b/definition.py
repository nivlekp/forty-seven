import pathlib

import forty_seven
import pang

template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template, segment_name="b")

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["B"],
    origin=0,
    pitch_range=forty_seven.registrations["mid-high"],
    multiplier=0.5,
)

pitch_set_1 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["B"],
    origin=0,
    pitch_range=forty_seven.registrations["low"],
    multiplier=0.5,
)

sequence = pang.Sequence()

for i in range(10):
    sound_points_generator = pang.RandomWalkSoundPointsGenerator(
        arrival_rate=2.5 - i / 10,
        service_rate=3.0 - i / 10,
        pitch_set=pitch_set_1 if i % 2 else pitch_set_0,
        seed=879716156 + i * i,
    )
    sequence_segment = pang.Sequence(
        sound_points_generator=sound_points_generator, sequence_duration=6
    )
    sequence.extend(sequence_segment)

command = pang.QuantizeSequenceCommand(sequence, q_schema=forty_seven.q_schemas["C"])
scope = pang.Scope(voice_name="FluteVoice1")


if __name__ == "__main__":
    pang.build.section(template, scope, command)
    lilypond_file_path = pathlib.Path(__file__).parent / "music.ly"
    lilypond_file = pang.build.make_lilypond_file(template)
    pang.build.persist(lilypond_file, lilypond_file_path)
