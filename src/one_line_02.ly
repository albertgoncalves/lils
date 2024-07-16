\version "2.24.1"

\include "page.ly"
\include "swing.ly"

global = {
  \time 4/4
  \tempo 4 = 180
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
    \repeat unfold 2
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
    % ------+-------|-------+-------|-------+-------|-------+-------|
    d8      a       r       b       r       f'      r       g ~     |
    g       e       c       b       r2                              |
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
