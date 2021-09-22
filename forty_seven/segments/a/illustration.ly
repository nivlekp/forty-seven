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
                    \times 4/5
                    {
                        \tempo 4=72
                        \time 7/8
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >4
                        \ppppp
                        r8
                        r4
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            gqf''
                        >4.
                        \ffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            gqf''
                        >8
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                f'
                                f''
                            >16
                            \mf
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            gqf''
                        >8
                        \pppp
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            gqf''
                        >4
                        ~
                    }
                }
            }
            {
                \times 4/7
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        gqf''
                    >8
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >16
                        \fffff
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        gqf''
                    >16
                    \fffff
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        gqf''
                    >4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/7
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        dqf'''
                    >8
                    \mf
                    <
                        \tweak NoteHead.style #'harmonic
                        bqs'
                        bqs''
                    >4
                    \mf
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        bqs'
                        bqs''
                    >2
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >2.
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >4
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                bqs'
                                bqs''
                            >16
                            \ppp
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >4
                        \mf
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >2
                    }
                    \times 2/3
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4
                        \fffff
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >2
                        \ffff
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 2/3
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >2
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4
                        \pp
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                c'
                                g''
                            >16
                            \p
                            <
                                \tweak NoteHead.style #'harmonic
                                dqf'
                                aqf''
                            >16
                            \fff
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4.
                        \ffff
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >2
                        \ppppp
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 2/3
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >1
                        \fffff
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >2
                        \mf
                    }
                    \times 2/3
                    {
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                bf'
                                f'''
                            >16
                            \fff
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            gqf'''
                        >2
                        \mp
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >4
                        \ff
                        ~
                    }
                }
            }
            {
                <
                    \tweak NoteHead.style #'harmonic
                    bf'
                    bf''
                >2..
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        bf'
                        bf''
                    >4
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        gqf''
                    >4
                    \f
                    \times 2/3
                    {
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                gqf'
                                gqf''
                            >16
                            \fff
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            f''
                        >2
                        \f
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                c'
                                c''
                            >16
                            \mf
                            <
                                \tweak NoteHead.style #'harmonic
                                c'
                                c''
                            >16
                            \p
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4
                        \fffff
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/5
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4
                        \fffff
                        <
                            \tweak NoteHead.style #'harmonic
                            dqf'
                            aqf''
                        >8
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            dqf'
                            aqf''
                        >4
                        ~
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        dqf'
                        aqf''
                    >2
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >16
                        \ppp
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        dqf'''
                    >2
                    \pppp
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/5
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >8.
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >16
                        r16
                    }
                    \times 4/7
                    {
                        r4
                        cqs''''2
                        ~
                        cqs''''1
                        ~
                    }
                }
            }
            {
                cqs''''4.
                ~
                \times 2/3
                {
                    cqs''''2
                    dqs'''4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/5
                    {
                        dqs'''2.
                        ~
                        dqs'''4
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >4
                        \mp
                    }
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >8
                        \pp
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >16
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >4
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >4
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >8
                        \mp
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >2
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        r2.
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >2
                        \fff
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/5
                {
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >16
                        \pppp
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        dqf'
                        aqf''
                    >4.
                    \fffff
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        gqf''
                    >4
                    \ppppp
                }
                \times 4/7
                {
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            gqf''
                        >16
                        \mf
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        bqs'
                        bqs''
                    >4.
                    \pp
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        bqs'
                        bqs''
                    >8
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            gqf'''
                        >16
                        \mf
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        bqs'
                        gqf'''
                    >8
                    \fffff
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        bqs'
                        gqf'''
                    >4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/7
                    {
                        r8
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            f''
                        >4
                        \fff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            f''
                        >2
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >8
                        \mp
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >4
                        \ff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >2
                    }
                }
            }
            {
                <
                    \tweak NoteHead.style #'harmonic
                    c'
                    c''
                >8
                \p
                r4
                r4
                \times 4/5
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        dqf'''
                    >8.
                    \mf
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        dqf'''
                    >16
                    <
                        \tweak NoteHead.style #'harmonic
                        dqf'
                        dqf''
                    >16
                    \pppp
                    ~
                }
            }
            {
                <
                    \tweak NoteHead.style #'harmonic
                    dqf'
                    dqf''
                >8
                <
                    \tweak NoteHead.style #'harmonic
                    f'
                    f''
                >4
                \mf
                ~
                <
                    \tweak NoteHead.style #'harmonic
                    f'
                    f''
                >2
                ~
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 2/3
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            f''
                        >4
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                c'
                                g''
                            >16
                            \fffff
                            b'''16
                        }
                        b'''2
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \grace {
                            cs'''16
                            aqs''16
                        }
                        eqs''4
                        \grace {
                            ef''16
                        }
                        aqs''8
                        ~
                        aqs''2
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    cqs''''8
                    b'''8
                    \times 4/5
                    {
                        \grace {
                            eqs''16
                        }
                        gqs'''4
                        r2
                        r2
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        r2.
                        r4
                        fs'''4
                        ~
                        fs'''2
                        ~
                    }
                    fs'''4
                    ef''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/7
                    {
                        eqs''2
                        \grace {
                            ef''16
                            eqs''16
                        }
                        eqs''4
                        ~
                        eqs''1
                    }
                    \times 4/5
                    {
                        cqs''''8.
                        ~
                        cqs''''16
                        \grace {
                            b'''16
                        }
                        fs'''16
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        r2.
                        \grace {
                            af''16
                        }
                        eqs''1
                    }
                    \times 4/7
                    {
                        \grace {
                            dqs'''16
                        }
                        ef''4.
                        \grace {
                            cqs''''16
                        }
                        aqs''2
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        eqs''4.
                        ~
                        eqs''8
                        \grace {
                            ef''16
                            b'''16
                        }
                        b'''8
                        ~
                        b'''4
                    }
                    \times 4/7
                    {
                        \grace {
                            cqs''''16
                        }
                        ef''4.
                        b'''2
                        ~
                    }
                }
            }
            {
                \times 4/7
                {
                    b'''4.
                    \grace {
                        dqs'''16
                    }
                    cqs''''2
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/7
                {
                    \grace {
                        cqs''''16
                        cs'''16
                        ef''16
                        cqs''''16
                    }
                    fs'''8.
                    ef''4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        \grace {
                            ef''16
                            aqs''16
                        }
                        gqs'''2.
                        ~
                        gqs'''4
                        \grace {
                            dqs'''16
                        }
                        cs'''4
                        ~
                        cs'''2
                    }
                    \times 4/7
                    {
                        \grace {
                            aqs''16
                            fs'''16
                        }
                        eqs''4.
                        ~
                        eqs''8
                        \grace {
                            aqs''16
                        }
                        dqs'''8
                        ~
                        dqs'''4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/5
                    {
                        \grace {
                            fs'''16
                        }
                        af''2.
                        \grace {
                            gqs'''16
                            cs'''16
                            af''16
                        }
                        gqs'''2
                    }
                    \times 4/7
                    {
                        \grace {
                            gqs'''16
                        }
                        dqs'''4.
                        ~
                        dqs'''8
                        cs'''8
                        ~
                        cs'''4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/7
                    {
                        ef''4.
                        \grace {
                            af''16
                        }
                        ef''2
                    }
                    \times 4/7
                    {
                        af''2.
                        \grace {
                            cqs''''16
                            af''16
                        }
                        gqs'''1
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/5
                    {
                        \grace {
                            ef''16
                            b'''16
                        }
                        cs'''4
                        \grace {
                            af''16
                        }
                        af''8
                        ~
                        af''4
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \grace {
                            gqs'''16
                            gqs'''16
                            aqs''16
                        }
                        eqs''4.
                        ~
                        eqs''4
                        \grace {
                            gqs'''16
                            eqs''16
                        }
                        aqs''4
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
                            cs'''16
                        }
                        b'''4.
                        ~
                        b'''8
                        af''8
                        ~
                        af''4
                    }
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4.
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >8
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >8
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 4/5
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >2.
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            gqf'
                            dqf'''
                        >4
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                c'
                                c''
                            >16
                            \fffff
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >4
                        \fffff
                        ~
                    }
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            c''
                        >16
                        r8
                        r4
                    }
                }
            }
            {
                \times 4/5
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        c''
                    >4.
                    \ppppp
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        c''
                    >8
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            dqf'
                            aqf''
                        >16
                        \fffff
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >16
                        \fff
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        c''
                    >8
                    \fffff
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/7
                {
                    r8.
                    r16
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        g''
                    >16
                    \ppppp
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        g''
                    >8
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 2/3
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >4
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >2
                        \mf
                    }
                    \times 2/3
                    {
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                bf'
                                bf''
                            >16
                            \ff
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            f''
                        >2
                        \fffff
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >4
                        \fffff
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 2/3
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >4
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >8
                        \ppppp
                    }
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >2.
                        \ff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >4
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                bqs'
                                bqs''
                            >16
                            \mf
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >4
                        \ffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >2
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
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >2.
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >4
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            f'''
                        >4
                        \fffff
                    }
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            gqf'''
                        >8.
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            gqf'''
                        >8
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            gqf'''
                        >16
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >16
                        \ff
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        <
                            \tweak NoteHead.style #'harmonic
                            bqs'
                            bqs''
                        >4
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >8
                        \ppppp
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            bf'
                            bf''
                        >2
                    }
                    \times 4/7
                    {
                        \grace {
                            <
                                \tweak NoteHead.style #'harmonic
                                f'
                                c'''
                            >16
                            \ppppp
                        }
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >4.
                        \mf
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >8
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >8
                        \fffff
                        ~
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            c'''
                        >4
                    }
                }
            }
            {
                \times 4/7
                {
                    r8.
                    r16
                    <
                        \tweak NoteHead.style #'harmonic
                        f'
                        f''
                    >16
                    \f
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        f'
                        f''
                    >8
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/7
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        dqf'''
                    >4.
                    \f
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        gqf'
                        dqf'''
                    >8
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            c'
                            g''
                        >16
                        \fff
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        f'
                        c'''
                    >8
                    \mf
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        f'
                        c'''
                    >4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/5
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        c''
                    >4.
                    \pppp
                    ~
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        c''
                    >8
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            dqf'
                            aqf''
                        >16
                        \ppp
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        g''
                    >8
                    \ppppp
                }
                \times 2/3
                {
                    <
                        \tweak NoteHead.style #'harmonic
                        f'
                        f''
                    >4
                    \fffff
                    <
                        \tweak NoteHead.style #'harmonic
                        c'
                        c''
                    >2
                    \ppppp
                    ~
                }
            }
            {
                <
                    \tweak NoteHead.style #'harmonic
                    c'
                    c''
                >8
                <
                    \tweak NoteHead.style #'harmonic
                    c'
                    g''
                >8
                \p
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/7
                {
                    \grace {
                        <
                            \tweak NoteHead.style #'harmonic
                            f'
                            f''
                        >16
                        \fff
                    }
                    <
                        \tweak NoteHead.style #'harmonic
                        bf'
                        f'''
                    >8
                    \ff
                    r4
                    r2
                }
            }
        }
    >>
>>