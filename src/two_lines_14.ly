\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

% See `https://www.youtube.com/watch?v=b5PoTBOj7Xc`.

\parallelMusic voiceUpper, voiceLower {
  g2    b     |
  c2    d     |   % cantus firmus

  a2    c     |
  f2    e     |   % cantus firmus

  e2    d     |
  c2    g'    |   % cantus firmus

  a2    c     |
  f2    e     |   % cantus firmus

  b2    c     |
  d2    c     |   % cantus firmus
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
