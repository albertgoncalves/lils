\version "2.22.2"

\include "page.ly"

global = {
  \time   4/4
  \tempo  4 = 75
}

% NOTE: See `https://www.youtube.com/watch?v=zYjsOP7sju8`.

\score {
  <<
    \new Staff \with { midiInstrument = "oboe" } {
      \global
      \clef treble
      \relative c' {
        << c2   ees g   >>  << c, e g   >> |
        << bes, ees g   >>  << a, d fis >> |
        << g,   c   g'  >>  << g, b g'  >> |
        << a,1  cis fis >>
      }
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      \relative c {
        a2  b   |
        c   d   |
        e   e   |
        a,1
      }
    }
  >>
  \layout { }
  \midi { }
}
