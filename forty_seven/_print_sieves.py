import abjad
import forty_seven
import pang

pitch_set_0 = pang.gen_pitches_from_sieve(
    sieve=forty_seven.sieves["A"],
    origin=0,
    pitch_range=forty_seven.registrations["full"],
    multiplier=0.5,
)

maker = abjad.LeafMaker()
duration = abjad.Duration((1, 4))
leaves = maker(pitch_set_0, duration)
staff = abjad.Staff(leaves)
abjad.show(staff)
