import abjad


def make_score_template(
    voice_names=["Voice"], staff_name="Staff", score_name="Score", simultaneous=True
):
    voice1 = abjad.Voice(name="FluteVoice1")
    voices = [voice1]
    staff = abjad.Staff(voices, name="FluteStaff", simultaneous=simultaneous)
    score = abjad.Score([staff], name="forty-seven")
    return score
