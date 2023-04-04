\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

\parallelMusic voiceUpper, voiceLower {
  a4   bes  a     f     |
  d2        f           |   % cantus firmus

  g4  c     bes   f'    |
  e2        d           |   % cantus firmus

  e4  g     a4    g     |
  g2        f           |   % cantus firmus

  f4  c     bes   e     |
  a2        g           |   % cantus firmus

  d4  a     b     cis   |
  f2        e           |   % cantus firmus

  d1                    |
  d1                    |   % cantus firmus

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
      \clef treble
      \relative c' \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
