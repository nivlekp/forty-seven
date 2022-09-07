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
                \times 5/7
                {
                    \tempo 4=72
                    \time 7/8
                    r4.
                    r4
                    dqf'''4
                }
                dqs'''8
                dqf'''8
            }
            {
                \times 4/5
                {
                    \grace {
                        cqs'''16
                    }
                    bqs''4.
                    ~
                    bqs''8
                    \grace {
                        cqs'''16
                    }
                    bqs''8
                }
                \grace {
                    b''16
                    bf''16
                }
                a''8
                ~
                a''8
                bf''8
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        a''4.
                        bf''2
                    }
                    \times 2/3
                    {
                        a''2
                        \grace {
                            bf''16
                            g'16
                        }
                        af'1
                    }
                }
            }
            {
                a'8
                af'8
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/6
                {
                    a'4
                    af'2
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 2/3
                    {
                        a'4
                        aqs'2
                    }
                    \grace {
                        a'16
                        af'16
                        a'16
                        aqs'16
                    }
                    bqf'4
                    \grace {
                        aqs'16
                        dqf'''16
                    }
                    dqs'''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/7
                {
                    \grace {
                        ef'''16
                        dqs'''16
                    }
                    dqf'''8.
                    ~
                    dqf'''16
                    \grace {
                        dqs'''16
                    }
                    ef'''16
                    ~
                    ef'''8
                }
                \times 4/7
                {
                    \grace {
                        e'''16
                    }
                    f'''4.
                    ~
                    f'''8
                    \grace {
                        fs'''16
                        gqf'''16
                        fs'''16
                    }
                    gqf'''8
                    ~
                    gqf'''4
                }
            }
            {
                gqs'''4
                \grace {
                    g'16
                    fs'16
                }
                g'8
                ~
                g'4
                \times 4/5
                {
                    fs'8
                    r16
                    r8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        g'4.
                        ~
                        g'8
                        af'8
                        ~
                        af'4
                    }
                    \times 4/7
                    {
                        \grace {
                            g'16
                        }
                        af'4.
                        ~
                        af'8
                        g'8
                        ~
                        g'4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \grace {
                        fs'16
                    }
                    fqs'4
                    \grace {
                        eqs'16
                    }
                    fqs'4
                    \times 4/5
                    {
                        \grace {
                            dqf'''16
                        }
                        cqs'''4
                        dqf'''8
                        ~
                        dqf'''4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/7
                {
                    dqs'''8.
                    ~
                    dqs'''16
                    \grace {
                        dqf'''16
                    }
                    dqs'''16
                    ~
                    dqs'''8
                }
                dqf'''4
                dqs'''4
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        \grace {
                            dqf'''16
                        }
                        cqs'''4.
                        ~
                        cqs'''8
                        \grace {
                            dqf'''16
                        }
                        cqs'''8
                        ~
                        cqs'''4
                    }
                    \times 4/7
                    {
                        \grace {
                            bqs''16
                        }
                        g'4.
                        \grace {
                            fs'16
                        }
                        fqs'2
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \grace {
                        eqs'16
                    }
                    fqs'4
                    \grace {
                        eqs'16
                    }
                    eqf'4
                    \times 4/7
                    {
                        \grace {
                            eqs'16
                        }
                        eqf'2.
                        dqs'1
                        ~
                    }
                }
            }
            {
                dqs'8
                eqf'4
                \grace {
                    dqs'16
                }
                dqf'''4
                \grace {
                    cqs'''16
                }
                dqf'''4
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        dqs'''8
                        dqf'''4
                        ~
                        dqf'''2
                    }
                    \grace {
                        dqs'''16
                    }
                    dqf'''4
                    \grace {
                        dqs'''16
                        ef'''16
                    }
                    e'''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/5
                    {
                        ef'''4.
                        r4
                    }
                    \times 4/7
                    {
                        g'4
                        fs'2
                        ~
                        fs'1
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/5
                    {
                        fs'4
                        g'2
                        ~
                        g'2
                    }
                    \times 4/5
                    {
                        fs'16
                        fqs'8
                        ~
                        fqs'8
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        fs'4.
                        ~
                        fs'8
                        \grace {
                            g'16
                            af'16
                            g'16
                        }
                        fs'8
                        ~
                        fs'4
                    }
                    \times 4/7
                    {
                        \grace {
                            fqs'16
                        }
                        dqf'''4.
                        \grace {
                            dqs'''16
                        }
                        dqf'''2
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/5
                    {
                        r8
                        dqs'''4
                        ~
                        dqs'''4
                    }
                    \times 4/7
                    {
                        dqf'''4.
                        ~
                        dqf'''8
                        \grace {
                            dqs'''16
                            ef'''16
                        }
                        dqs'''8
                        ~
                        dqs'''4
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        dqs'''4.
                        \grace {
                            dqf'''16
                            dqs'''16
                        }
                        g'2
                    }
                    \times 2/3
                    {
                        fs'1
                        \grace {
                            fqs'16
                        }
                        fs'2
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        \grace {
                            g'16
                        }
                        fs'4
                        g'8
                        ~
                        g'2
                    }
                    \times 4/7
                    {
                        \grace {
                            fs'16
                        }
                        g'4.
                        fs'2
                    }
                }
            }
        }
    >>
>>