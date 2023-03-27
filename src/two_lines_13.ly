\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 100
}

% See `https://www.youtube.com/watch?v=b5PoTBOj7Xc`.

\parallelMusic voiceUpper, voiceLower {
  c2    b     |
  c,2   d     |   % cantus firmus

  a2    g     |
  f2    e     |   % cantus firmus

  a2    b     |
  c2    g'    |   % cantus firmus

  d2    e     |
  f2    e     |   % cantus firmus

  b2    c     |
  d2    c     |   % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \clef treble
      \relative c''
      << \voiceUpper \\ \voiceLower >>
    }
  >>
  \layout { }
  \midi { }
}

