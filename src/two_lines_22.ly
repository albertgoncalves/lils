\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

\parallelMusic voiceUpper, voiceLower {
  a2    b     | % cantus firmus
  a2    g'    |

  c     e     | % cantus firmus
  f     g     |

  f     e     | % cantus firmus
  d     a'    |

  c     a     | % cantus firmus
  e     fis   |

  b     a     | % cantus firmus
  gis   a     |
}

\score {
  \new Staff \with { midiInstrument = "recorder" } {
    \global
    \clef treble
    << \relative c'' \voiceUpper \\ \relative c' \voiceLower >>
  }
  \layout { }
  \midi { }
}
