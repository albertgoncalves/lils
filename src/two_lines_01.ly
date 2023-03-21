\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 90
}

\parallelMusic voiceUpper, voiceLower {
  % b4  c   f,  g   |   % solution
  e4  e   f   g   |   % attempt 0
  e4  c   d   c   |   % cantus firmus

  % a4  c   b   e   |   % solution
  f4  e   b   c   |   % attempt 0
  a4  a'  g   e   |   % cantus firmus

  % d4  e   r2      |   % solution
  d4  e   r2      |   % attempt 0
  f4  e   r2      |   % cantus firmus
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
