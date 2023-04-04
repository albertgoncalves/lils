\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 110
}

\parallelMusic voiceUpper, voiceLower {
  r4    a     b     gis     |
  a2          e'            |   % cantus firmus

  a4    d     c     a       |
  f2          e             |   % cantus firmus

  b4    f     g     c       |
  d2          e             |   % cantus firmus

  e4    c     d     gis,    |
  c2          b             |   % cantus firmus

  a2          r2            |
  a2          r2            |   % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \clef treble
      \relative c'' \voiceUpper
    }
    \new Staff \with { midiInstrument = "bassoon" } {
      \global
      \set Staff.midiMaximumVolume = #0.75
      \clef treble
      \relative c' \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
