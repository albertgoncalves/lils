\version "2.24.1"

\include "page.ly"

global = {
  \time 3/2
  \key  g \minor
}

% NOTE: See `https://youtu.be/g_htbzpNJjA?list=PL6Towqbh0pdpxUL5NlGTOW2hwVVo1IhdQ`.

\score {
  <<
    \new Staff \with { midiInstrument = "clarinet" } {
      \global
      \clef treble
      \relative c'' {
        < bes   d     g     >2
        < a     d     a'    >
        < bes   d     g     >   |
        < g     c     g'    >
        < bes   d     g     >
        < a     ees'  a     >   |
        < d     fis   \parenthesize
                      a     >     % NOTE: Is there a better way to resolve the
        < bes   ees   g     >     %       leading-tone here?
        < c     ees   g     >   |
        < bes   d     g     >
        < bes   d     fis   >
        < a     d     fis   >   |
        < bes   d     g     >1. |
      }
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      <<
        \relative c' {
          g2  fis   g   |
          ees d     c   |
          d   ees   c   |
          d1.           |
          g,            |
        }
        \figures {
          s2    <6>     s       |
          <6>   <6 4>   <6>     |
          <_+>  s       s       |
          <6 4> <6 _+>  <_ _+>  |
          s1.                   |
        }
      >>
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = 110
  }
}
