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
                \time 4/4
                r32.
                af''64
                r8.
                \times 4/5 {
                    r16
                    af''8
                    ~
                    af''8
                    ~
                }
                \times 4/5 {
                    af''8.
                    \grace {
                        a''16
                    }
                    af''8
                    ~
                }
                af''4
                ~
            }
            {
                af''8.
                e''16
                ~
                e''4
                ~
                \times 2/3 {
                    e''4
                    ~
                    e''16
                    af''16
                    ~
                }
                af''4
                ~
            }
            {
                af''2
                ~
                \times 4/5 {
                    af''16.
                    af''16
                    ~
                }
                af''16.
                af''32
                ~
                \times 4/5 {
                    af''32
                    e''32
                    ~
                    e''8
                    ~
                    e''8
                    ~
                }
            }
            {
                e''64
                af''8...
                ~
                af''8
                ~
                \times 4/5 {
                    af''16
                    d'''32
                    r16
                }
                r4
                \times 4/7 {
                    r8
                    r32
                    bf'32
                    ~
                    bf'4
                    ~
                }
            }
            {
                bf'4
                ~
                bf'16
                ~
                bf'64
                f'64
                d'''32
                ~
                d'''8
                ~
                \times 4/5 {
                    d'''8
                    \times 2/3 {
                        d'''16
                        af''32
                        ~
                    }
                    af''16
                    e''16
                    ~
                }
                e''4
                ~
            }
            {
                \times 2/3 {
                    e''8
                    e''4
                    ~
                }
                e''64
                ef''8...
                ~
                ef''64
                r64
                r64
                af''64
                ~
                af''16
                ~
                af''64
                a''32.
                ~
                \times 2/3 {
                    a''16.
                }
                \times 4/5 {
                    r8.
                    \times 2/3 {
                        r16
                        cs'''32
                        ~
                    }
                    cs'''16
                    ~
                }
            }
            {
                \times 8/13 {
                    cs'''16
                    af''32
                    ~
                    af''8
                    r8.
                }
                \times 2/3 {
                    r8
                    \times 4/5 {
                        af''16.
                        ~
                        af''32
                        r32
                    }
                    r8
                }
                \times 8/13 {
                    r16.
                    r32
                    af''32
                    ~
                    af''4
                    ~
                }
                \times 2/3 {
                    af''4
                    ~
                    af''16
                    r16
                }
            }
            {
                r16
                af''8.
                ~
                \times 4/5 {
                    af''32
                    e''32
                    ~
                    e''8
                    ~
                    e''8
                    ~
                }
                \times 8/13 {
                    e''16.
                    fs'4
                    ~
                    fs'16
                    ~
                }
                fs'16..
                r64
                r8
            }
            {
                \times 8/13 {
                    r16.
                    r16
                    r32
                    c'32
                    r32
                    e''32
                    ~
                    e''8
                    ~
                }
                e''4
                ~
                \times 2/3 {
                    e''4
                    r8
                }
                r4
            }
        }
    >>
>>