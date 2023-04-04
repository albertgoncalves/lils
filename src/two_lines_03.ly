\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

\parallelMusic voiceUpper, voiceLower {
  d4    f   e   d   |   % cantus firmus
  d4    d   c   f   |   % attempt 0

  g4    f   a   g   |   % cantus firmus
  e4    d   c   e   |   % attempt 0

  f4    e   d   r   |   % cantus firmus
  d4    cis d   r   |   % attempt 0
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
