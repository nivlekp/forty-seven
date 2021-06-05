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
                \times 7/11
                {
                    \tempo 4=72
                    \time 7/8
                    b''4.
                    ~
                    b''4
                    ~
                    b''8
                    a''8
                    ~
                    a''8
                    b'''8
                    ~
                    b'''8
                    \grace {
                        fs'''16
                    }
                    g''8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    g''8
                    a''4
                    ~
                    a''8
                    \grace {
                        c''16
                    }
                    a'''8
                    ~
                    a'''2
                    \grace {
                        a'''16
                    }
                    b''4
                }
            }
            {
                r8
                b''4
                g''4
                ~
                g''8
                a''8
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    b'''4
                    g''8
                    ~
                    g''4
                    ~
                    g''8
                    r8
                    r4
                    a''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    fs'''8
                    r4
                    r1
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    d'''1
                    d'''2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    d'''4.
                    ~
                    d'''4
                    \grace {
                        cs''''16
                    }
                    af'''4
                    a''4
                    b'''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    b'''8
                    r4
                    r4
                    fs'''8
                    r8
                    r2
                }
            }
            {
                r2..
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    r2.
                    c''2
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    r4.
                    r4
                    \grace {
                        a''16
                    }
                    cs''''4
                    ~
                    cs''''8
                    b''8
                    r4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    a'''2..
                    \grace {
                        c''16
                    }
                    a''8
                    cs''''8
                    ~
                    cs''''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    \grace {
                        b'''16
                    }
                    cs''''4
                    \grace {
                        b''16
                        d'''16
                    }
                    cs''''8
                    ~
                    cs''''8
                    r8
                    r4
                    \grace {
                        fs'''16
                    }
                    b''2
                    ~
                }
            }
            {
                b''4
                cs''''8
                ~
                cs''''2
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    b''4.
                    ~
                    b''4
                    ~
                    b''8
                    d'''8
                    ~
                    d'''8
                    c''8
                    r4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    r2..
                    r4
                    g''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    a'''4
                    b'''8
                    ~
                    b'''4
                    ~
                    b'''8
                    a'''8
                    ~
                    a'''4
                    g''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    g''2..
                    ~
                    g''8
                    a'''8
                    ~
                    a'''4
                    ~
                }
            }
            {
                a'''8
                r4
                r2
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    r2..
                    af'''4
                    r4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    r4
                    d'''2
                    ~
                    d'''4
                    b''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    b''2
                    af'''1
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    af'''4.
                    ~
                    af'''8
                    \grace {
                        c''16
                    }
                    cs''''8
                    ~
                    cs''''4
                    ~
                    cs''''8
                    a'''8
                    ~
                    a'''8
                    \grace {
                        af'''16
                        cs''''16
                    }
                    af'''8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    b''8
                    b''4
                    ~
                    b''4
                    fs'''2.
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    b''4.
                    ~
                    b''4
                    ~
                    b''8
                    fs'''8
                    d'''4
                    \grace {
                        g''16
                    }
                    b''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    a''4.
                    ~
                    a''8
                    \grace {
                        g''16
                    }
                    d'''8
                    ~
                    d'''2
                    \grace {
                        g''16
                    }
                    af'''8
                    \grace {
                        cs''''16
                    }
                    d'''8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    d'''4.
                    r1
                }
            }
            {
                r4
                b''8
                ~
                b''4
                ~
                b''8
                r8
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    r4.
                    fs'''8
                    c''8
                    ~
                    c''4
                    ~
                    c''8
                    r8
                    r4
                }
            }
            {
                r8
                d'''4
                \grace {
                    b''16
                    cs''''16
                }
                a''4
                ~
                a''8
                af'''8
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/11
                {
                    cs''''4
                    \grace {
                        cs''''16
                        g''16
                    }
                    d'''8
                    ~
                    d'''8
                    b'''8
                    ~
                    b'''4
                    ~
                    b'''8
                    \grace {
                        a'''16
                        fs'''16
                    }
                    a''8
                    ~
                    a''4
                }
            }
        }
    >>
>>