\version "2.20.0"
\language "english"
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
                    \times 2/3
                    {
                        r4
                        fs'8
                    }
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
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/5
                    {
                        cs''''8
                        a'''8
                        cs''''8
                        fqs'8
                        \grace {
                            d'''16
                            a'''16
                            cs''''16
                        }
                        af'''8
                    }
                    \times 4/5
                    {
                        \grace {
                            a'''16
                            fs'''16
                            cs'''16
                        }
                        fs'4.
                        ~
                        fs'8
                        cs''''8
                    }
                    \times 2/3
                    {
                        d'''4
                        cs'''4
                        b'''4
                    }
                }
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
                    \times 4/5
                    {
                        fs'''8
                        fs'4
                        ~
                        fs'4
                        ~
                    }
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
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        cs'''8
                        \grace {
                            b'''16
                            af'''16
                            d'''16
                        }
                        a'''8
                        \grace {
                            af'''16
                            af'''16
                        }
                        fqs'8
                        ~
                        fqs'2
                    }
                    \times 2/3
                    {
                        \grace {
                            f'16
                        }
                        fqs'4
                        f'2
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    f'4
                    \times 2/3
                    {
                        e'8
                        f'4
                        ~
                    }
                    f'4
                    ~
                    f'4
                    fqs'8
                    f'8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    fqs'4
                    ~
                    \times 2/3
                    {
                        fqs'4
                        fs'''8
                    }
                    \times 2/3
                    {
                        \grace {
                            e'''16
                            a'''16
                        }
                        b'''8
                        d'''8
                        cs'''8
                    }
                    fs'4
                    \times 2/3
                    {
                        a'''8
                        \grace {
                            e'''16
                            e'''16
                        }
                        fqs'4
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    fqs'2
                    \times 2/3
                    {
                        e'''8
                        \grace {
                            fs'''16
                        }
                        e'''8
                        f'8
                        ~
                    }
                    \times 2/3
                    {
                        f'8
                        cs''''4
                    }
                    d'''8
                    cs''''8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \grace {
                        fs'''16
                        a'''16
                    }
                    af'''4
                    ~
                    \times 2/3
                    {
                        af'''8
                        \grace {
                            cs''''16
                        }
                        e'8
                        \grace {
                            fs'''16
                        }
                        cs'''8
                    }
                    \times 2/3
                    {
                        e'''4
                        \grace {
                            af'''16
                        }
                        d'8
                        ~
                    }
                    d'8
                    \grace {
                        cs''''16
                    }
                    fs'''8
                    \times 2/3
                    {
                        \grace {
                            fs'''16
                        }
                        fs'''8
                        \grace {
                            cs'''16
                            af'''16
                            cs'''16
                        }
                        e'4
                        ~
                    }
                }
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
                        ~
                    }
                    \times 4/5
                    {
                        d'8
                        e'8
                        d'8
                        \grace {
                            e'16
                        }
                        f'4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 2/3
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
                    }
                    \times 2/3
                    {
                        a'''4
                        \grace {
                            cs'''16
                        }
                        cs''''8
                    }
                    d'4
                    \times 2/3
                    {
                        af'''8
                        \grace {
                            cs'''16
                            cs''''16
                        }
                        fs'''8
                        b'''8
                    }
                    e'4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        \grace {
                            af'''16
                            e'''16
                        }
                        af'''8
                        \grace {
                            e'''16
                            a'''16
                        }
                        f'8
                        \grace {
                            cs'''16
                            af'''16
                        }
                        cs''''8
                        fqs'4
                        ~
                        fqs'8
                        \grace {
                            a'''16
                        }
                        fs'''8
                        ~
                    }
                    fs'''8
                    f'8
                    cs''''8
                    af'''8
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/5
                    {
                        \grace {
                            e'''16
                            fs'''16
                            cs'''16
                        }
                        e'''4
                        e'8
                        ~
                        e'4
                    }
                    \times 4/5
                    {
                        f'4.
                        e'4
                        ~
                    }
                    \times 2/3
                    {
                        e'4
                        \grace {
                            d'16
                        }
                        e'2
                        ~
                    }
                }
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
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    \times 2/3
                    {
                        cqs'8
                        cs'4
                        ~
                    }
                    cs'2
                    ~
                    cs'2
                    ~
                }
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
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/5
                    {
                        d'''8
                        \grace {
                            af'''16
                        }
                        af'''4
                        \grace {
                            b'''16
                        }
                        a'''8
                        \grace {
                            af'''16
                        }
                        f'8
                    }
                    \times 4/7
                    {
                        cs''''8
                        \grace {
                            af'''16
                        }
                        cs'''8
                        cs''''8
                        b'''8
                        e'''8
                        ~
                        e'''8
                        \grace {
                            b'''16
                        }
                        e'8
                        ~
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    e'4
                    \times 2/3
                    {
                        \grace {
                            a'''16
                        }
                        b'''8
                        fs'''8
                        b'''8
                    }
                    \grace {
                        a'''16
                    }
                    f'4
                    ~
                    f'2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    f'4
                    ~
                    \times 2/3
                    {
                        f'4
                        \grace {
                            a'''16
                        }
                        fs'''8
                    }
                    \times 2/3
                    {
                        \grace {
                            d'''16
                        }
                        cs''''8
                        e'8
                        f'8
                        ~
                    }
                    \times 2/3
                    {
                        f'4
                        fqs'8
                        ~
                    }
                    fqs'4
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/7
                    {
                        f'8
                        e'4
                        ~
                        e'4
                        f'4
                        ~
                    }
                    f'2
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/12
                {
                    \times 4/5
                    {
                        f'8
                        fqs'4
                        ~
                        fqs'4
                        ~
                    }
                    \times 4/5
                    {
                        fqs'8
                        fs'8
                        gqf'8
                        gqs'4
                    }
                    \times 2/3
                    {
                        gqf'2
                        gqs'4
                    }
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/10
                {
                    gqf'8
                    fs'8
                    ~
                    \times 2/3
                    {
                        fs'8
                        fqs'4
                        ~
                    }
                    \times 2/3
                    {
                        fqs'4
                        f'8
                        ~
                    }
                    \times 2/3
                    {
                        f'4
                        e'8
                        ~
                    }
                    e'4
                    ~
                }
            }
            {
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/8
                {
                    \times 4/5
                    {
                        e'4.
                        f'4
                    }
                    e'8
                    f'8
                    ~
                    f'8
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
                \times 7/8
                {
                    \times 4/5
                    {
                        cs'4.
                        d'8
                        r8
                    }
                    r2
                }
            }
        }
    >>
>>