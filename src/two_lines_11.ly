\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 100
}

\parallelMusic voiceUpper, voiceLower {
  a2    c     |
  a2    e'    |   % cantus firmus

  a2    g     |
  f2    e     |   % cantus firmus

  b2    c     |
  d2    e     |   % cantus firmus

  e2    gis,  |
  c2    b     |   % cantus firmus

  a1          |
  a1          |   % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \clef treble
      \relative c''
      \voiceUpper
    }
    \new Staff \with { midiInstrument = "bassoon" } {
      \global
      \set Staff.midiMaximumVolume = #0.5
      \clef treble
      \relative c'
      \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
