\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 75
}

\parallelMusic voiceUpper, voiceLower {
  e4  c   d   c   |   % cantus firmus
  e4  e   f   g   |   % attempt 0

  a4  a'  g   e   |   % cantus firmus
  f4  e   b   c   |   % attempt 0

  f4  e   r2      |   % cantus firmus
  d4  e   r2      |   % attempt 0
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
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
