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
                r4
                r8
                c''8
                ~
                \times 2/3 {
                    \times 4/5 {
                        c''16
                        r32
                        r16
                    }
                    \times 2/3 {
                        r16
                        b'8
                        ~
                    }
                    b'8
                    ~
                }
                b'4
                ~
            }
            {
                b'8
                \times 4/7 {
                    r16.
                    r16
                    r32
                    cs''32
                    ~
                }
                cs''16..
                d''64
                ~
                d''8
                ~
                d''16.
                ef''32
                \times 2/3 {
                    e''8.
                    ~
                }
                \times 4/7 {
                    e''8.
                    ~
                    e''8
                    d''8
                    ~
                }
            }
            {
                d''16
                ef''16
                ~
                \times 2/3 {
                    ef''16
                    r8
                }
                \times 8/13 {
                    r16
                    cs''32
                    ~
                    cs''4
                    ~
                    cs''16
                    ~
                }
                \times 4/5 {
                    \times 2/3 {
                        cs''32
                        cs''16
                        ~
                    }
                    cs''32
                    cs''32
                    d''16
                    ~
                    d''8
                    ~
                }
                d''8.
                cs''16
                ~
            }
            {
                cs''4
                ~
                \times 2/3 {
                    cs''8
                    ~
                    \times 2/3 {
                        cs''16
                        c''8
                        ~
                    }
                    c''8
                    ~
                }
                \times 4/5 {
                    c''32
                    cs''32
                    c''8
                    ~
                    c''16.
                    b'32
                    ~
                }
                b'4
                ~
            }
            {
                \times 4/7 {
                    b'8.
                    ~
                    b'8
                    b'8
                    ~
                }
                b'2
                b'4
                ~
            }
            {
                b'16
                ~
                b'64
                c''32.
                ~
                c''8
                ~
                \times 4/5 {
                    c''8.
                    ~
                    \times 2/3 {
                        c''16
                        c''32
                        ~
                    }
                    c''16
                    ~
                }
                \times 2/3 {
                    c''8
                    ~
                    \times 2/3 {
                        c''8
                        cs''16
                        ~
                    }
                    cs''8
                    ~
                }
                \times 2/3 {
                    \times 4/5 {
                        cs''16.
                        c''16
                    }
                    \times 2/3 {
                        b'16
                        b'8
                        ~
                    }
                    b'8
                    ~
                }
            }
            {
                b'2
                ~
                b'16
                ~
                b'64
                bf'64
                ~
                bf'64
                b'64
                ~
                b'8
                ~
                b'16..
                b'64
                ~
                b'8
                ~
            }
            {
                \times 8/11 {
                    b'16.
                    ~
                    b'16
                    b'8.
                }
                r4
                \times 8/13 {
                    r16
                    b'32
                    ~
                    b'32
                    r32
                    r4
                }
                \times 4/7 {
                    r32
                    b'32
                    ~
                    b'8
                    ~
                    b'4
                    ~
                }
            }
            {
                b'4
                ~
                b'64
                a'8...
                ~
                \times 4/5 {
                    a'16
                    af'32
                    g'16.
                    ~
                    g'8
                    ~
                }
                \times 4/5 {
                    \times 2/3 {
                        g'16
                        af'32
                        ~
                    }
                    af'32
                    fs'16.
                    ~
                    fs'16
                    ~
                    \times 2/3 {
                        fs'16
                        f'32
                        ~
                    }
                }
            }
            {
                f'4
                ~
                \times 2/3 {
                    f'4
                    ~
                    f'16
                    f'16
                }
                \times 2/3 {
                    r4
                    fs'8
                    ~
                }
                \times 4/5 {
                    \times 2/3 {
                        fs'32
                        r16
                    }
                    r16
                    g'16
                    ~
                    g'8
                    ~
                }
            }
            {
                \times 4/5 {
                    g'8
                    r16
                    r8
                }
                r2.
            }
        }
    >>
>>