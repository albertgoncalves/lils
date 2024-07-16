\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  % \tempo 4 = 90
}

\score {
  <<
    \new Staff \with { midiInstrument = "electric guitar (jazz)" } {
      \global
      \clef "treble_8"
      \relative c {
        < c e g bes >1        | < c e g >   |

        < f  a c ees >        | < c ees g > |

        < c e gis bes des >   | < bes des fes >2  < des fes aes > |

        < fis a c ees >1      | < ees ges beses > |

        < d f a c >2  < g b d f aes > |
        < f a c >     < f aes ces >   |
      }
    }
  >>
  \layout { }
  \midi { }
}

%   C7    F7      C7    C7alt
%   F7    F#dim7  C7    A7alt
%   Dm7   G7b9    C7    G7alt

%   C     Cm      C     Dbm
%   Cm    Ebdim   C     Bbm
%   F     Fdim    C     Abm
