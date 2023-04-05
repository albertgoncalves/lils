\version "2.24.1"

\include "page.ly"

global = {
  \time 4/4
  \key  g \minor
}

% NOTE: See `https://www.mymusictheory.com/learn-music-theory/for-students/grade-6/28-grade-6-online-course/309-a9-realising-a-figured-bass-exercises`.

\score {
  <<
    \new Staff \with { midiInstrument = "recorder" } {
      \global
      \clef treble
      \relative c'' {
        < d   bes g   >4
        < a   d   f   >
        < bes ees g   >
        < c   ees g   >   |
        < bes d   g   >
        < a   d   fis >
        < bes d   g   >2  |
        < a   c   f   >4
        < f   bes d   >
        < ees g   c   >2  |
        < d   g   bes >4
        < d   fis a   >
        < d   g   bes >2  |
      }
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      <<
        \relative c' {
          g4      f       ees8  d         c4        |
          d       d       g,2                       |
          a4      bes     c8    d         ees   f   |
          g4      d       g,2                       |
        }
        \figures {
          \bassFigureExtendersOn
          s4      <6>     s16 <_>16 <_>8  s4        |
          <6 4>4  <_+>    s2                        |
          <6>4    s       s16 <_>16 <_>8  <6>   <6> |
          s4      <_+>    s2                        |
        }
      >>
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = 75
  }
}
