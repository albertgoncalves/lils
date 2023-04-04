\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

% See `https://youtu.be/J0Xkhgw-oPM?t=554`.

\parallelMusic voiceUpper, voiceLower {
  e2    d     |
  a2    b     | % cantus firmus

  e     gis,  |
  c     e     | % cantus firmus

  a     b     |
  f     e     | % cantus firmus

  e,    fis   |
  c     a     | % cantus firmus

  gis   a     |
  b     a     | % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "oboe" } {
      \global
      \clef treble
      \relative c'' \voiceUpper
    }
    \new Staff \with { midiInstrument = "bassoon" } {
      \global
      \clef bass
      \relative c \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
