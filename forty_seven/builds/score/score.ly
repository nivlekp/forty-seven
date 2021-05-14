\version "2.20.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\score {
    {
        \include "_segments/a.ly"
        \include "_segments/b.ly"
        \include "_segments/c.ly"
    }
    \layout { }
    \midi { }
}
