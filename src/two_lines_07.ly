\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 75
}

\parallelMusic voiceUpper, voiceLower {
  g4    e   g   b   |   % attempt 0
  g4    c   b   g   |   % cantus firmus

  a4    c   b   b   |   % attempt 0
  c4    e   d   g   |   % cantus firmus

  g4    a   a   g   |   % attempt 0
  e4    c   d   b   |   % cantus firmus

  fis4  g   r2      |   % attempt 0
  a4    g   r2      |   % cantus firmus
}

\score {
  \new Staff \with { midiInstrument = "violin" } {
    \global
    \clef treble
    << \relative c'' \voiceUpper \\ \relative c'  \voiceLower >>
  }
  \layout { }
  \midi { }
}
