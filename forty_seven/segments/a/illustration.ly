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
                \tempo 4=72
                \time 7/8
                r16
                af''16
                ~
                af''4
                aqs''8.
                eqs''16
                ~
                eqs''8.
                ef''16
                ~
            }
            {
                ef''16
                \grace {
                    ef''16
                }
                aqs''16
                ef''8
                \grace {
                    ef''16
                }
                ef''8
                eqs''16
                ef''16
                r8
                ef''16
                ef''8.
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    af''8
                    r4
                    r4
                    r8
                    cs'''8
                    ~
                    cs'''8
                    af''8
                    ~
                    af''4
                    cs'''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    cs'''8
                    cs'''4
                    ~
                    cs'''4
                    ~
                    cs'''8
                    aqs''8
                    cs'''4
                    aqs''4
                    aqs''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    aqs''2
                    ~
                    aqs''4
                    \grace {
                        cs'''16
                        cs'''16
                    }
                    aqs''4
                    eqs''2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    eqs''8
                    \grace {
                        eqs''16
                    }
                    eqs''4
                    eqs''2
                    \grace {
                        af''16
                        ef''16
                    }
                    af''8
                    ef''8
                    eqs''4
                    ~
                    eqs''8
                    \grace {
                        ef''16
                    }
                    af''8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    af''4
                    ef''8
                    ~
                    ef''8
                    ef''8
                    r1
                }
            }
            {
                r2..
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    r4.
                    r8
                    cqs''''8
                    ~
                    cqs''''1
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    cqs''''2.
                    ~
                    cqs''''4
                    dqs'''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    dqs'''2.
                    af''4.
                    \grace {
                        cs'''16
                        cs'''16
                    }
                    cs'''8
                }
            }
            {
                cs'''8
                aqs''16
                aqs''16
                aqs''16
                r16
                r4
                eqs''16
                ef''16
                r16
                ef''16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    eqs''4.
                    aqs''8
                    ef''8
                    ~
                    ef''8
                    ef''8
                    ~
                    ef''4
                    ~
                    ef''8
                    \grace {
                        eqs''16
                    }
                    ef''8
                    ef''8
                    ef''8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    ef''4.
                    ~
                    ef''8
                    cs'''8
                    ef''8
                    ef''8
                    ~
                    ef''8
                    af''8
                    ~
                    af''8
                    cs'''8
                    cs'''8
                    cs'''8
                }
            }
            {
                aqs''4
                r8
                r4
                cs'''8
                ef''16
                r16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    r8
                    \grace {
                        ef''16
                    }
                    eqs''4
                    ef''4
                    ~
                    ef''8
                    ef''8
                    b'''4
                    b'''4
                    cs'''8
                    aqs''8
                }
            }
            {
                eqs''16
                r16
                r4
                ef''8
                aqs''8
                ~
                aqs''16
                cqs''''8.
                ~
            }
            {
                cqs''''16
                b'''16
                eqs''16
                gqs'''16
                ~
                gqs'''16
                r16
                r2
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    r4.
                    r4
                    fs'''2.
                    ef''4
                    ~
                }
            }
            {
                ef''16
                eqs''16
                ~
                eqs''16
                \grace {
                    ef''16
                }
                eqs''16
                eqs''8
                ~
                eqs''4
                ~
                eqs''16
                cqs''''16
                ~
                cqs''''16
                b'''16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    fs'''8
                    r8
                    af''4
                    eqs''4
                    dqs'''8
                    ef''8
                    \grace {
                        cqs''''16
                    }
                    aqs''8
                    eqs''8
                }
            }
            {
                r8.
                ef''16
                ~
                ef''16
                \grace {
                    b'''16
                }
                b'''16
                r8
                \grace {
                    cqs''''16
                }
                ef''16
                r16
                b'''16
                r8.
            }
            {
                r8.
                dqs'''16
                cqs''''8
                ~
                cqs''''16
                \grace {
                    cqs''''16
                }
                cs'''16
                ef''16
                \grace {
                    cqs''''16
                }
                fs'''16
                ~
                fs'''16
                ef''8.
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    ef''8
                    aqs''8
                    gqs'''8
                    r4
                    dqs'''4
                    cs'''8
                    aqs''8
                    \grace {
                        fs'''16
                    }
                    eqs''4
                    \grace {
                        aqs''16
                    }
                    dqs'''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    fs'''8
                    af''8
                    r8
                    gqs'''4
                    \grace {
                        cs'''16
                    }
                    af''8
                    gqs'''8
                    ~
                    gqs'''8
                    gqs'''8
                    dqs'''4
                    cs'''4
                }
            }
            {
                ef''16
                r16
                \grace {
                    af''16
                }
                ef''8
                af''16
                r16
                r8
                cqs''''16
                af''16
                ~
                af''16
                gqs'''8.
            }
            {
                ef''16
                \grace {
                    b'''16
                }
                cs'''16
                af''16
                af''16
                ~
                af''16
                \grace {
                    gqs'''16
                }
                gqs'''16
                ~
                gqs'''16
                \grace {
                    aqs''16
                }
                eqs''8.
                ~
                eqs''16
                \grace {
                    gqs'''16
                }
                eqs''16
                aqs''16
                cs'''16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    r8
                    b'''4
                    ~
                    b'''8
                    af''8
                    ~
                    af''8
                    eqs''8
                    ~
                    eqs''8
                    cs'''8
                    ~
                    cs'''4
                    ~
                    cs'''8
                    \grace {
                        cs'''16
                        cs'''16
                    }
                    cs'''8
                }
            }
            {
                ef''16
                r16
                r8.
                ef''16
                r8.
                cs'''16
                r8
                cs'''16
                r16
            }
            {
                cs'''16
                cs'''8.
                cs'''16
                af''16
                ~
                af''8
                cs'''8
                r16
                cs'''8.
            }
            {
                r8.
                cs'''8.
                af''8
                cs'''16
                \grace {
                    cs'''16
                }
                aqs''16
                r4
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    r4.
                    cs'''8
                    cs'''8
                    cs'''4
                    ~
                    cs'''8
                    cs'''8
                    ~
                    cs'''4
                    ~
                    cs'''8
                    cs'''8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    cs'''4.
                    r4.
                    eqs''8
                    r8
                    af''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    ef''4
                    ef''8
                    eqs''4
                    cs'''2
                    cs'''8
                    aqs''8
                    \grace {
                        cs'''16
                    }
                    cs'''4
                }
            }
            {
                r8
                \grace {
                    ef''16
                }
                af''8
                aqs''8
                ~
                aqs''16
                aqs''16
                ~
                aqs''16
                af''16
                ~
                af''8.
                cs'''16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    cs'''4.
                    cs'''4
                    aqs''4
                    \grace {
                        cs'''16
                    }
                    aqs''8
                    cs'''8
                    cs'''8
                    cs'''8
                    ~
                    cs'''8
                    r8
                }
            }
        }
    >>
>>