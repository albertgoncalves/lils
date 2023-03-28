\version "2.22.2"

\include "page.ly"

% NOTE: See `https://www.youtube.com/watch?v=yQnjn5NVSUI`.

\score {
  % NOTE: See `https://lilypond.org/doc/v2.22/Documentation/notation/midi-instruments`.
  \new Staff \with { midiInstrument = "muted trumpet" } {
    \time   4/4
    \tempo  4 = 75
    \clef treble
    \relative c' {
      << << e2    b'    dis     >>  \\ g,,2 >>
      << << fis'  b     d       >>  \\ g,,  >> |
      << << e'    bes'  d       >>  \\ g,,  >>
      << << ees'  aes   c       >>  \\ g,   >> |
      << << d'    f     a   b   >>  \\ g,   >>
      << << e'    g     a   c   >>  \\ c,,  >>
    }
  }
  \layout { }
  \midi { }
}
