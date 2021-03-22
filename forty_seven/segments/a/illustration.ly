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
                a''8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12 {
                    a''1
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
                    e''8
                    ~
                    e''4
                    af''8
                    \grace {
                        cs'''16
                    }
                    cs'''8
                    e''2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8 {
                    e''2
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
                a''16
                ~
                a''16
                af''8.
                ~
                af''4
                ~
            }
            {
                af''4.
                ~
                af''8
                e''16
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
                b'''8.
                ~
            }
            {
                b'''2..
                ~
            }
            {
                b'''16
                fs'''16
                ~
                fs'''4
                ~
                fs'''4
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
                            e''16
                        }
                        ef''2
                        ~
                    }
                    \times 2/3 {
                        ef''2
                        a''4
                        ~
                    }
                    a''2
                }
            }
            {
                a''16
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
                fs'''16
                d'''16
                ~
                d'''16
                cs'''16
                ~
                cs'''8
                r16
                cs'''16
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12 {
                    cs'''4
                    d'''4
                    ~
                    d'''1
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    d'''4.
                    ~
                    d'''8
                    b'''8
                    ~
                    b'''2
                    b'''4
                    ~
                    b'''8
                    cs'''8
                    ~
                }
            }
            {
                cs'''16
                g'''16
                g'''8
                r8
                r8
                cs'''16
                r16
                r8
                c''''8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10 {
                    c''''8
                    cs'''8
                    ~
                    cs'''4.
                    \grace {
                        c''''16
                    }
                    fs'''8
                    ~
                    fs'''8
                    \grace {
                        cs'''16
                    }
                    b'''8
                    d'''8
                    \grace {
                        c''''16
                    }
                    cs'''8
                    ~
                }
            }
            {
                cs'''8
                cs'''16
                b'''16
                r8
                r8
                b'''16
                c''''16
                ~
                c''''16
                r16
                \grace {
                    b'''16
                }
                cs'''16
                r16
            }
            {
                r8.
                \grace {
                    b'''16
                }
                fs'''16
                r8
                r16
                b'''8.
                \grace {
                    b'''16
                }
                fs'''16
                r16
                cs'''8
                ~
            }
            {
                cs'''16
                b'''16
                r8.
                g'''16
                r8
                cs'''16
                r16
                cs'''16
                d'''16
                ~
                d'''16
                g'''16
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13 {
                    fs'''4
                    fs'''8
                    ~
                    fs'''8
                    d'''8
                    \grace {
                        g'''16
                    }
                    cs'''8
                    d'''8
                    fs'''4
                    g'''4
                    ~
                    g'''8
                    \grace {
                        d'''16
                    }
                    g'''8
                }
            }
            {
                fs'''16
                d'''16
                ~
                d'''16
                g'''8.
                ~
                g'''8
                \grace {
                    g'''16
                }
                fs'''16
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
                    e''4.
                    ~
                    e''4.
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
                    e''8
                    ~
                    e''8
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
                e''16
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8 {
                    e''4
                    a''2.
                    ~
                }
            }
            {
                a''2..
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10 {
                    a''4
                    e''4.
                    e''8
                    ~
                    e''8
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
                        e''2
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