\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 100
}

% See `https://www.youtube.com/watch?v=b5PoTBOj7Xc`.

\parallelMusic voiceUpper, voiceLower {
  g2    f     |   % solution 0
  c,2   d     |   % cantus firmus

  g2    a     |   % solution 0
  e2    c     |   % cantus firmus

  b2    d     |   % solution 0
  g'2   f     |   % cantus firmus

  c2    c     |   % solution 0
  e2    a     |   % cantus firmus

  d2    e     |   % solution 0
  g2    c,    |   % cantus firmus

  d2    a     |   % solution 0
  d2    f     |   % cantus firmus

  c2    b     |   % solution 0
  e2    d     |   % cantus firmus

  c2    r     |   % solution 0
  c2    r     |   % cantus firmus
}

\score {
  \new Staff \with { midiInstrument = "clarinet" } {
    \global
    \clef treble
    \relative c''
    << \voiceUpper \\ \voiceLower >>
  }
  \layout { }
  \midi { }
}
