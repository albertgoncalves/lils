\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 90
}

% NOTE: See `https://viva.pressbooks.pub/openmusictheory/chapter/gradus-ad-parnassum-exercises/`.

\parallelMusic voiceUpper, voiceLower {
  % a4  a   g   a   |   % solution
  d4  d   c   f   |   % attempt 1
  d4  f   e   d   |   % cantus firmus

  % b4  c   c   b   |   % solution
  e4  d   c   e   |   % attempt 1
  g4  f   a   g   |   % cantus firmus

  % d4  cis d2      |   % solution
  d4  cis d2      |   % attempt 1
  f4  e   d2      |   % cantus firmus
}

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \clef treble
      \relative c'' \voiceUpper
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef treble
      \relative c' \voiceLower
    }
  >>
  \layout { }
  \midi { }
}
