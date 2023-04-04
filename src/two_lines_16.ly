\version "2.24.1"

\include "page.ly"

global = {
  \time  4/4
  \tempo 4 = 100
}

% See `https://musictheory.pugetsound.edu/mt21c/IntroductionToCounterpointExercises.html`.

\parallelMusic voiceUpper, voiceLower {
  c2    b   |
  c2    g'  | % cantus firmus

  a2    c   |
  f2    e   | % cantus firmus

  d2    g,  |
  f2    e   | % cantus firmus

  a2    b   |
  f2    d   | % cantus firmus

  c2    r   |
  c2    r   | % cantus firmus
}

\score {
  \new Staff \with { midiInstrument = "clarinet" } {
    \global
    \clef treble
    << \relative c'' \voiceUpper \\ \relative c' \voiceLower >>
  }
  \layout { }
  \midi { }
}
