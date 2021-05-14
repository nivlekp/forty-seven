\version "2.20.0"
\language "english"
#(ly:set-option 'relative-includes #t)
\include "../../stylesheets/stylesheet.ily"

\context Score = "forty-seven"
<<
    \context Staff = "FluteStaff"
    <<
        \set Staff.midiInstrument = #"flute"
        \context Voice = "FluteVoice1"
        {
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \tempo 4=72
                    \time 7/8
                    gqf'4
                    r8
                    fs'8
                    r4
                    r8
                    gqf'4.
                    ~
                }
            }
            {
                gqf'8
                gqs'16
                r16
                r16
                aqs'16
                ~
                aqs'8.
                r16
                gqs'4
                ~
            }
            {
                gqs'4.
                gqf'16
                \grace {
                    af'''16
                }
                e'''16
                fs'8
                ~
                fs'8.
                \grace {
                    e'''16
                    cs''''16
                }
                e'''16
            }
            {
                cs''''16
                a'''16
                cs''''16
                \grace {
                    fqs'16
                }
                d'''16
                \grace {
                    a'''16
                    cs''''16
                    af'''16
                    a'''16
                }
                fs'''16
                \grace {
                    cs'''16
                }
                fs'16
                ~
                fs'8.
                \grace {
                    cs''''16
                }
                d'''16
                ~
                d'''16
                cs'''16
                ~
                cs'''16
                b'''16
            }
            {
                gqf'2..
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    gqf'4
                    af'''4
                    \grace {
                        fs'''16
                    }
                    fs'2
                    ~
                    \times 2/3
                    {
                        fs'2
                        \grace {
                            e'''16
                        }
                        fs'''4
                    }
                }
            }
            {
                cs'''16
                \grace {
                    b'''16
                    af'''16
                    d'''16
                }
                a'''16
                \grace {
                    af'''16
                    af'''16
                }
                fqs'4
                ~
                fqs'16
                \grace {
                    f'16
                }
                fqs'16
                ~
                fqs'16
                f'16
                ~
                f'4
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    f'4
                    e'8
                    f'4.
                    ~
                    f'4
                    fqs'8
                    f'8
                }
            }
            {
                fqs'4
                ~
                fqs'16
                \grace {
                    fs'''16
                }
                e'''16
                \grace {
                    a'''16
                    b'''16
                }
                d'''8
                \grace {
                    cs'''16
                }
                fs'8
                ~
                fs'16
                a'''16
                \grace {
                    e'''16
                    e'''16
                }
                fqs'8
                ~
            }
            {
                fqs'4.
                \grace {
                    e'''16
                }
                fs'''16
                \grace {
                    e'''16
                }
                f'16
                ~
                f'16
                cs''''16
                ~
                cs''''16
                d'''16
                ~
                d'''16
                cs''''16
            }
            {
                \grace {
                    fs'''16
                    a'''16
                }
                af'''8.
                cs''''16
                \grace {
                    e'16
                }
                fs'''16
                cs'''16
                e'''16
                \grace {
                    af'''16
                }
                d'8.
                \grace {
                    cs''''16
                }
                fs'''16
                fs'''16
                \grace {
                    fs'''16
                    cs'''16
                    af'''16
                    cs'''16
                }
                e'8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    e'2
                    ~
                    \times 2/3
                    {
                        e'2
                        d'4
                    }
                    \times 2/3
                    {
                        e'4
                        d'4
                        \grace {
                            e'16
                        }
                        f'4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    \grace {
                        e'16
                        fs'''16
                    }
                    a'''8
                    \grace {
                        cs''''16
                    }
                    e'''8
                    \grace {
                        cs'''16
                        fs'''16
                    }
                    a'''8
                    ~
                    a'''8
                    \grace {
                        cs'''16
                    }
                    cs''''8
                    d'4
                    ~
                    d'8
                    af'''8
                    \grace {
                        cs'''16
                        cs''''16
                    }
                    fs'''8
                    b'''8
                    e'4
                }
            }
            {
                \grace {
                    af'''16
                    e'''16
                }
                af'''16
                \grace {
                    e'''16
                    a'''16
                }
                f'16
                \grace {
                    cs'''16
                    af'''16
                }
                cs''''16
                fqs'8.
                \grace {
                    a'''16
                }
                fs'''8.
                f'16
                cs''''8
                af'''16
                e'''16
            }
            {
                \grace {
                    fs'''16
                    cs'''16
                }
                e'''8
                e'8.
                f'16
                ~
                f'16
                e'8.
                ~
                e'16
                \grace {
                    d'16
                }
                e'8.
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    e'4
                    f'4
                    ~
                    \times 2/3
                    {
                        f'4
                        e'2
                        ~
                    }
                    e'2
                }
            }
            {
                d'4.
                ~
                d'8
                \grace {
                    cs'16
                }
                cqs'8
                ~
                cqs'4
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    cqs'4
                    c'2
                    ~
                    c'2
                }
            }
            {
                cqs'16
                cs'16
                ~
                cs'4
                ~
                cs'2
                ~
            }
            {
                cs'8
                \grace {
                    e'''16
                    fs'''16
                }
                cs'''16
                b'''16
                d'''8
                ~
                d'''16
                d'8.
                \grace {
                    fs'''16
                }
                af'''16
                \grace {
                    b'''16
                }
                e'16
                d'''8
                ~
            }
            {
                d'''16
                af'''16
                af'''8
                \grace {
                    b'''16
                }
                a'''16
                \grace {
                    af'''16
                }
                f'16
                ~
                f'16
                cs''''16
                \grace {
                    af'''16
                }
                cs'''16
                cs''''16
                b'''16
                e'''16
                ~
                e'''16
                \grace {
                    b'''16
                }
                e'16
                ~
            }
            {
                e'8.
                \grace {
                    a'''16
                    b'''16
                }
                fs'''16
                ~
                fs'''16
                b'''16
                \grace {
                    a'''16
                }
                f'2
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    f'4.
                    ~
                    f'8
                    a'''8
                    \grace {
                        fs'''16
                        d'''16
                    }
                    cs''''8
                    e'8
                    f'4
                    fqs'2
                }
            }
            {
                f'16
                e'16
                ~
                e'8.
                f'16
                ~
                f'2
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    f'8
                    fqs'4
                    ~
                    fqs'4
                    fs'8
                    gqf'8
                    gqs'4
                    gqf'4
                    ~
                    gqf'8
                    gqs'8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    gqf'8
                    fs'4
                    ~
                    fs'8
                    fqs'8
                    ~
                    fqs'4
                    f'4
                    ~
                    f'8
                    e'8
                    ~
                    e'4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    e'4.
                    f'8
                    ~
                    f'8
                    e'8
                    f'4.
                    e'8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    e'4
                    d'4
                    cs'2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    cs'4.
                    d'8
                    r4
                    r2
                }
            }
        }
    >>
>>