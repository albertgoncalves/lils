\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

% See `https://youtu.be/J0Xkhgw-oPM?t=554`.

\parallelMusic voiceUpper, voiceLower {
  e2    d     |
  a2    b     | % cantus firmus

  e     c     |
  c     e     | % cantus firmus

  a     b     |
  f     e     | % cantus firmus

  a     fis   |
  c     a     | % cantus firmus

  gis   a     |
  b     a     | % cantus firmus
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
