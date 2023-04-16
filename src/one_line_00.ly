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
    \repeat unfold 7
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
    c2                              aes4.                   bes8    |
    r8      c4.                     aes2                            |
    bes4            c               bes4.                   aes8    |
    r4.                     c8 ~    c4              bes             |
    aes2                            c4              e               |
    r4              d ~             d8      aes4.                   |
    c8      bes4            d8      r2                              |
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
