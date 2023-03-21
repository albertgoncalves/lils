\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 90
}

\parallelMusic voiceUpper, voiceLower {
  f4  g   a   f   |   % cantus firmus
  f4  e   c   d   |   % attempt 0

  d4  e   f   c'  |   % cantus firmus
  f4  g   a   e   |   % attempt 0

  a4  f   g   f   |   % cantus firmus
  f4  d   e   f   |   % attempt 0
}

\score {
  <<
    \new Staff \with { midiInstrument = "trumpet" } {
      \global
      \clef treble
      \relative c'
      \voiceUpper
    }
    \new Staff \with { midiInstrument = "viola" } {
      \global
      \clef bass
      \relative c
      \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
