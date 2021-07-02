import abjad


class Multiphonics:
    r"""
    Flute Multiphonics.

    ..  container:: example

        >>> multiphonics = Multiphonics(
        ...     notes=["b'", "fqs''", "cqs'''"],
        ...     fingering={
        ...         "cc": ["two", "three", "fourR", "five", "six"],
        ...         "lh": ["b"],
        ...         "rh": ["ees"],
        ...     },
        ... )
        >>> string = abjad.lilypond(multiphonics.abjad_format)
        >>> print(string)
        <b' fqs'' cqs'''>1
        ^ \markup { \woodwind-diagram #'flute #'((cc . (two three fourR five six)) (lh . (b)) (rh . (ees))) }

    """

    def __init__(self, notes: list[str], fingering: dict[str, list[str]], id_: int):
        self._notes = notes
        self._fingering = fingering
        self._id = id_

    def _gen_markup_string(self):
        cc_string = f"(cc . ({' '.join(self._fingering['cc'])}))"
        lh_string = f"(lh . ({' '.join(self._fingering['lh'])}))"
        rh_string = f"(rh . ({' '.join(self._fingering['rh'])}))"
        fingerings_string = f"#'({' '.join([cc_string, lh_string, rh_string])})"
        string_components = [
            r"\markup {",
            r"\woodwind-diagram",
            r"#'flute",
            fingerings_string,
            "}",
        ]
        string = " ".join(string_components)
        return abjad.Markup(string, literal=True, direction=abjad.Up)

    @property
    def abjad_format(self, duration=(4, 4)):
        maker = abjad.LeafMaker()
        duration = abjad.Duration(duration)
        selection = maker([tuple(self._notes)], duration)
        chord = selection[0]
        markup = self._gen_markup_string()
        abjad.attach(markup, chord)
        return chord


multiphonics_list = [
    Multiphonics(
        notes=["b'", "fqs''", "cqs'''"],
        fingering={
            "cc": ["two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["ees"],
        },
        id_=1305,
    ),
    Multiphonics(
        notes=["ds'''", "fs'''"],
        fingering={
            "cc": ["one", "two", "three", "fourR", "five", "six"],
            "lh": ["b"],
            "rh": ["ees", "gz"],
        },
        id_=235,
    ),
]
