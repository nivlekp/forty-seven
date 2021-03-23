\version "2.20.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\context Score = "forty-seven"
<<
    \context Staff = "FluteStaff"
    <<
        \context Voice = "FluteVoice1"
        {
            {
                \tempo 4=60
                \time 7/8
                r16
                af''16
                r8
                af''8
                ~
                af''16
                cs'''8.
                ~
                cs'''8
                aqs''8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12 {
                    aqs''1
                    af''2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    af''4.
                    ~
                    af''8
                    eqs''8
                    ~
                    eqs''4
                    af''8
                    \grace {
                        cs'''16
                    }
                    cs'''8
                    eqs''2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8 {
                    eqs''2
                    ef''4
                    ef''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10 {
                    ef''8
                    ef''8
                    ~
                    ef''8
                    af''8
                    ~
                    af''8
                    af''8
                    cs'''2
                    ~
                }
            }
            {
                cs'''4
                ~
                cs'''16
                aqs''16
                ~
                aqs''16
                af''8.
                ~
                af''4
                ~
            }
            {
                af''4.
                ~
                af''8
                eqs''16
                af''16
                af''4
                ~
            }
            {
                af''16
                af''16
                ~
                af''16
                ef''8.
                ~
                ef''4
                ~
                ef''16
                cqs''''8.
                ~
            }
            {
                cqs''''2..
                ~
            }
            {
                cqs''''16
                dqs'''16
                ~
                dqs'''4
                ~
                dqs'''4
                \grace {
                    ef''16
                }
                ef''8
                af''8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12 {
                    \times 2/3 {
                        af''4
                        \grace {
                            eqs''16
                        }
                        ef''2
                        ~
                    }
                    \times 2/3 {
                        ef''2
                        aqs''4
                        ~
                    }
                    aqs''2
                }
            }
            {
                aqs''16
                ef''16
                ~
                ef''16
                ef''8.
                ~
                ef''8.
                ef''16
                ~
                ef''8
                r8
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    r4.
                    r8
                    ef''8
                    ~
                    ef''4
                    ~
                    ef''8
                    ef''8
                    ~
                    ef''4
                    ~
                    ef''8
                    b'''8
                    ~
                }
            }
            {
                b'''8
                b'''4
                cs'''16
                aqs''16
                ~
                aqs''16
                eqs''16
                ~
                eqs''8
                r16
                ef''16
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12 {
                    ef''4
                    aqs''4
                    ~
                    aqs''1
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    aqs''4.
                    ~
                    aqs''8
                    cqs''''8
                    ~
                    cqs''''2
                    b'''4
                    ~
                    b'''8
                    eqs''8
                    ~
                }
            }
            {
                eqs''16
                gqs'''16
                fs'''8
                r8
                r8
                ef''16
                r16
                r8
                eqs''8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10 {
                    eqs''8
                    ef''8
                    ~
                    ef''4.
                    \grace {
                        dqs'''16
                    }
                    ef''8
                    ~
                    ef''8
                    \grace {
                        cqs''''16
                    }
                    aqs''8
                    eqs''8
                    \grace {
                        ef''16
                    }
                    b'''8
                    ~
                }
            }
            {
                b'''8
                b'''16
                cqs''''16
                r8
                r8
                ef''16
                b'''16
                ~
                b'''16
                r16
                \grace {
                    dqs'''16
                }
                cqs''''16
                r16
            }
            {
                r8.
                \grace {
                    cqs''''16
                }
                cs'''16
                r8
                r16
                ef''8.
                \grace {
                    cqs''''16
                }
                fs'''16
                r16
                ef''8
                ~
            }
            {
                ef''16
                ef''16
                r8.
                aqs''16
                r8
                gqs'''16
                r16
                dqs'''16
                cs'''16
                ~
                cs'''16
                aqs''16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    fs'''4
                    eqs''8
                    ~
                    eqs''8
                    aqs''8
                    \grace {
                        dqs'''16
                    }
                    fs'''8
                    af''8
                    gqs'''4
                    cs'''4
                    ~
                    cs'''8
                    \grace {
                        af''16
                    }
                    gqs'''8
                }
            }
            {
                gqs'''16
                dqs'''16
                ~
                dqs'''16
                cs'''8.
                ~
                cs'''8
                \grace {
                    ef''16
                }
                af''16
                r16
                r4
            }
            {
                r16
                ef''16
                ~
                ef''8.
                ef''16
                ~
                ef''16
                af''8.
                ~
                af''4
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10 {
                    af''4.
                    eqs''4.
                    ~
                    eqs''4.
                    cs'''8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    cs'''8
                    af''4
                    ~
                    af''8
                    eqs''8
                    ~
                    eqs''8
                    af''8
                    ~
                    af''2.
                    ~
                }
            }
            {
                af''8
                cs'''8
                ef''16
                ef''16
                ~
                ef''8
                af''8
                ~
                af''8.
                r16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    r2..
                    ef''2.
                    ~
                }
            }
            {
                ef''8
                ef''4
                ~
                ef''8.
                ef''16
                ~
                ef''8.
                \grace {
                    ef''16
                }
                eqs''16
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8 {
                    eqs''4
                    aqs''2.
                    ~
                }
            }
            {
                aqs''2..
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10 {
                    aqs''4
                    eqs''4.
                    eqs''8
                    ~
                    eqs''8
                    cs'''8
                    ~
                    cs'''8
                    cs'''8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12 {
                    \times 2/3 {
                        \grace {
                            cs'''16
                        }
                        eqs''2
                        ef''4
                        ~
                    }
                    \times 2/3 {
                        ef''4
                        r2
                    }
                    r2
                }
            }
        }
    >>
>>