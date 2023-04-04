\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 85
}

\parallelMusic voiceUpper, voiceLower {
  f4  e   f   a   |   % attempt 0
  f4  g   a   f   |   % cantus firmus

  f4  bes a   g   |   % attempt 0
  d4  e   f   c'  |   % cantus firmus

  f4  d   e   f   |   % attempt 0
  a4  f   g   f   |   % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "oboe" } {
      \global
      \clef treble
      \relative c' \voiceUpper
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      \relative c \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
