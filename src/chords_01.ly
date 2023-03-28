\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 75
}

% NOTE: See `https://www.youtube.com/watch?v=zYjsOP7sju8`.

\score {
  <<
    \new Staff \with { midiInstrument = "oboe" } {
      \global
      \clef treble
      \relative c' {
        << e2   g   c     >> << d,   g   d'    >> |
        << ees, g   c     >> << d,   f   bes   >> |
        << c,   e   gis   >> << b,   d   g     >> |
        << c,1  e   fis   >>
      }
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      \relative c {
        a2  b   |
        c   d   |
        e   e   |
        a,1
      }
    }
  >>
  \layout { }
  \midi { }
}
