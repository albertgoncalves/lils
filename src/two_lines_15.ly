\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 100
}

% See `https://www.youtube.com/watch?v=b5PoTBOj7Xc`.

\parallelMusic voiceUpper, voiceLower {
  c2    d   | % cantus firmus
  c,2   f   |

  f2    e   | % cantus firmus
  d2    e   |

  c2    g'  | % cantus firmus
  a2    g   |

  f2    e   | % cantus firmus
  a2    g   |

  d2    c   | % cantus firmus
  b2    c   |
}

\score {
  <<
    \new Staff \with { midiInstrument = "vibraphone" } {
      \global
      \clef tenor
      \relative c'
      << \voiceUpper \\ \voiceLower >>
    }
  >>
  \layout { }
  \midi { }
}
