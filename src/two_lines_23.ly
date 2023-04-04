\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

\parallelMusic voiceUpper, voiceLower {
  a2    e'    |   % cantus firmus
  a2    g     |

  f     e     |   % cantus firmus
  d     g     |

  d     e     |   % cantus firmus
  f     e     |

  c     b     |   % cantus firmus
  a     gis   |

  a     r     |   % cantus firmus
  a     r     |
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \set Staff.midiMaximumVolume = #0.5
      \clef treble
      \relative c'' \voiceUpper
    }
    \new Staff \with { midiInstrument = "bassoon" } {
      \global
      \clef bass
      \relative c' \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
