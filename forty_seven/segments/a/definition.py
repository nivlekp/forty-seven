import forty_seven

import pang


template = forty_seven.make_score_template()
maker = pang.SegmentMaker(score_template=template)

pitch_set = list(range(24))
sound_points_generator = pang.GRWSoundPointsGenerator(pitch_set=pitch_set)
sequence = pang.Sequence(sound_points_generator=sound_points_generator, sequence_duration=40)
command = pang.QuantizeSequenceCommand(sequence)
scope = pang.Scope(voice_name="FluteVoice1")

maker(scope, command)
lilypond_file = maker.run()
