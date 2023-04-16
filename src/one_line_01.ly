\version "2.24.1"

\include "page.ly"
\include "swing.ly"

global = {
  \time 4/4
  \tempo 4 = 160
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
    \repeat unfold 6
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
    g8      ees'4           c               b               g8      |
    r8      aes4            c               d8      r4              |

    g,8     e'4             c               b               g8      |
    r8      a4              c               ees8    r4              |

    g8      f4              ees             c               aes8    |
    bes'8   g4              bes             a8      r4              |
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
