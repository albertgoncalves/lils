\version "2.24.1"

\include "page.ly"
\include "swing.ly"

global = {
  \time 4/4
  \tempo 4 = 200
}

count_in = \new DrumStaff {
  \global
  \drummode
  {
    cl4 cl  cl  cl  |
  }
}

pulse = \new DrumStaff {
  \global
  \drummode
  {
    \repeat unfold 5
    {
      r4  hh  r   hh  |
    }
  }
}



music = \new Staff \with { midiInstrument = "electric guitar (jazz)" } {
  \global
  \clef "treble_8"
  \relative c'
  {
    % ------|-------|-------|-------|
    ees4    g,      bes     c       |
    a       f       c'      ees     |
    d       bes     a       d       |
    cis     a       g       c       |
    b       a       f       d       |
  }
}

\score {
  {
    \music
  }
  \layout { }
}

\score {
  \applySwing 8 #'(4 3)
  {
    \count_in
    <<
      \music
      \pulse
    >>
  }
  \midi { }
}


