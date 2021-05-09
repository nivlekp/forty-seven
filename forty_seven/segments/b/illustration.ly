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
                r4.
                r16
                dqf'''8.
                dqs'''8
                dqf'''8
                ~
            }
            {
                dqf'''16
                cqs'''16
                bqs''4
                cqs'''16
                bqs''16
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
                \times 7/13
                {
                    a''4
                    bf''8
                    ~
                    bf''8
                    a''8
                    ~
                    a''4
                    \grace {
                        bf''16
                    }
                    g'8
                    af'8
                    ~
                    af'2
                    ~
                }
            }
            {
                af'16
                a'16
                af'8
                a'8
                ~
                a'16
                af'8.
                ~
                af'4
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    af'8
                    a'8
                    aqs'8
                    ~
                    aqs'4
                    a'8
                    af'8
                    \grace {
                        a'16
                        aqs'16
                    }
                    bqf'4
                    aqs'8
                    \grace {
                        dqf'''16
                    }
                    dqs'''8
                    ~
                    dqs'''4
                }
            }
            {
                ef'''16
                dqs'''16
                dqf'''16
                dqs'''16
                ef'''8
                e'''16
                f'''16
                ~
                f'''16
                fs'''16
                gqf'''16
                fs'''16
                gqf'''8
                ~
            }
            {
                gqf'''16
                gqs'''16
                ~
                gqs'''16
                g'16
                fs'16
                g'16
                ~
                g'4
                fs'8
                r8
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    g'4.
                    ~
                    g'8
                    af'8
                    ~
                    af'8
                    g'8
                    af'4
                    ~
                    af'8
                    g'8
                    ~
                    g'4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    fs'8
                    fqs'4
                    eqs'8
                    fqs'8
                    ~
                    fqs'8
                    \grace {
                        dqf'''16
                    }
                    cqs'''8
                    ~
                    cqs'''4
                    dqf'''2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    dqf'''8
                    dqs'''4
                    dqf'''8
                    dqs'''8
                    ~
                    dqs'''8
                    dqf'''8
                    ~
                    dqf'''4
                    dqs'''2
                }
            }
            {
                dqf'''16
                cqs'''8.
                dqf'''16
                cqs'''16
                ~
                cqs'''16
                bqs''16
                g'8
                fs'16
                fqs'16
                ~
                fqs'16
                eqs'16
            }
            {
                fqs'8
                eqs'16
                eqf'16
                ~
                eqf'16
                \grace {
                    eqs'16
                }
                eqf'16
                ~
                eqf'8.
                dqs'16
                ~
                dqs'4
                ~
            }
            {
                dqs'8
                eqf'4
                dqs'16
                dqf'''16
                ~
                dqf'''16
                cqs'''16
                dqf'''8.
                dqs'''16
            }
            {
                r16
                dqf'''16
                r4
                dqs'''16
                dqf'''16
                ~
                dqf'''16
                r16
                dqs'''16
                ef'''16
                e'''8
                ~
            }
            {
                e'''16
                ef'''16
                ~
                ef'''16
                r16
                g'8
                fs'2
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    fs'4
                    g'8
                    ~
                    g'2.
                    ~
                    g'8
                    fs'8
                    fqs'4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    fqs'8
                    fs'4
                    \grace {
                        g'16
                    }
                    af'4
                    \grace {
                        g'16
                    }
                    fs'4
                    \grace {
                        fqs'16
                    }
                    dqf'''4
                    \grace {
                        dqs'''16
                    }
                    dqf'''4
                    ~
                    dqf'''8
                    r8
                }
            }
            {
                r16
                dqs'''16
                r4
                r16
                dqf'''8.
                dqs'''16
                ef'''16
                dqs'''8
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/13
                {
                    dqs'''8
                    \grace {
                        dqf'''16
                    }
                    dqs'''8
                    g'8
                    ~
                    g'8
                    fs'8
                    ~
                    fs'2
                    ~
                    fs'8
                    \grace {
                        fqs'16
                    }
                    fs'8
                    ~
                    fs'4
                }
            }
            {
                \grace {
                    g'16
                }
                fs'8
                g'8.
                fs'16
                ~
                fs'16
                g'16
                r8
                fs'16
                r8.
            }
        }
    >>
>>