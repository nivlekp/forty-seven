\version "2.20.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\score {
    {
        \include "../../segments/a/music.ily"
        \include "../../segments/b/music.ily"
        \include "../../segments/c/music.ily"
        \include "../../segments/d/music.ily"
    }
    \layout { }
    \midi { }
}
