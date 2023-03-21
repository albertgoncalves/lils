\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 90
}

\parallelMusic voiceUpper, voiceLower {
  a4  a   g   b   |   % attempt 0
  a4  c   b   d   |   % cantus firmus

  e4  c   a   b   |   % attempt 0
  c4  e   f   e   |   % cantus firmus

  b4  a   gis a   |   % attempt 0
  d4  c   b   a   |   % cantus firmus
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
