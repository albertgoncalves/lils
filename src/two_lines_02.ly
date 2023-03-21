\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 80
}

\parallelMusic voiceUpper, voiceLower {
  c4    d   g   f   |   % attempt 0
  c4    f   e   a   |   % cantus firmus

  f4    e   a,  c   |   % attempt 0
  d,4   g   f   e   |   % cantus firmus

  b4    c   r2      |   % attempt 0
  d4    c   r2      |   % cantus firmus
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
      \clef treble
      \relative c'
      \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
