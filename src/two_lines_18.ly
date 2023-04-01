\version "2.24.1"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 100
}

% See `https://youtu.be/J0Xkhgw-oPM?t=389`.

\parallelMusic voiceUpper, voiceLower {
  g2    a   |
  c2    f   | % cantus firmus

  b     c   |
  e     a   | % cantus firmus

  d     e   |
  d,    g   | % cantus firmus

  a,    c   |
  f     e   | % cantus firmus

  b     c   |
  d     c   | % cantus firmus
}

\score {
  \new Staff \with { midiInstrument = "clarinet" } {
    \global
    \clef treble
    << \relative c'' \voiceUpper \\ \relative c' \voiceLower >>
  }
  \layout { }
  \midi { }
}
