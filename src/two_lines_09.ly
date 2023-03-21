\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 70
  \key    d \minor
}

\parallelMusic voiceUpper, voiceLower {
  a4    c   bes f   |   % attempt 0
  d4    a'  g   a   |   % cantus firmus

  g4    a   e'  d   |   % attempt 0
  e4    f   g   f   |   % cantus firmus

  cis4  d   r2      |   % attempt 0
  e4    d   r2      |   % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \clef treble
      \relative c''
      \voiceUpper
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      \relative c
      \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
