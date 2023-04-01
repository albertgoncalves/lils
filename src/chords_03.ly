\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 90
}

\score {
  <<
    \new Staff \with { midiInstrument = "electric guitar (jazz)" } {
      \global
      \clef "treble_8"
      \relative c {
        << b2   d     f   a   >>  << e    gis   bis   d   >>  |
        << a    c     e   fis >>  r                           |

        << b,,  f'    a   d   >>  << e,,  d'    gis   bis >>  |
        << a,   e'    fis c'  >>  r                           |

        << b,   a'    d   f   >>  << e,   bis'  d     gis >>  |
        << a,,  fis'  c'  e   >>  r                           |
      }
    }
  >>
  \layout { }
  \midi { }
}
