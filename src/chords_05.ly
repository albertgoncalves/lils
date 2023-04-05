\version "2.24.1"

\include "page.ly"

global = {
  \time 4/4
}

% NOTE: See `https://youtu.be/g_htbzpNJjA?list=PL6Towqbh0pdpxUL5NlGTOW2hwVVo1IhdQ&t=684`.

\score {
  <<
    \new Staff \with { midiInstrument = "recorder" } {
      \global
      \clef treble
      \relative c' {
        \partial 2
        < e   g   c   >2  |
        < d   g   d'  >
        < e   g   c   >   |
        < g   b   d   >
        < e   a   c   >   |
        < e   b'  e   >
        < e   a   c   >   |
        < e   gis b   >
        < c   a'      >   |
        < c   g'  c   >
        < c   f   a   >   |
        < e   g   c   >1  |
      }
    }
    \new Staff \with { midiInstrument = "cello" } {
      \global
      \clef bass
      <<
        \relative c' {
          \partial 2
                c2    |
          b     c     |
          g     a     |
          gis   a     |
          e     f     |
          e     f     |
          c1          |
        }
        \figures {
          \partial 2
                s2    |
          <6>   s     |
          s     s     |
          <6>   s     |
          <_+>  s     |
          <6>   s     |
          s1          |
        }
      >>
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = 110
  }
}
