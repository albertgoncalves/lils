\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 75
}

% NOTE: See `https://youtu.be/zYjsOP7sju8?t=397`.

\score {
  <<
    \new Staff \with { midiInstrument = "oboe" } {
      \global
      \clef treble
      \relative c' {
        < e    g   c     >2 < d    g   d'   > |
        < ees  g   c     >  < d    f   bes  > |
        < c    e   gis   >  < b    d   g    > |
        < c    e   fis   >1
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
