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
    \repeat unfold 2
    {
      r4  hh  r   hh  |
    }
  }
}



music = \new Staff \with { midiInstrument = "electric guitar (jazz)" } {
  \global
  \clef "treble_8"
  % \relative c''
  \relative c'
  {
    % ------+-------|-------+-------|-------+-------|-------+-------|
    % % c8      aes     f       d       r       dis     b'      g       |
    % c4              \tuplet 3/2 { aes8 f d }
    %                                 r8      dis     b'      g       |
    % a       g       r4              r2                              |

    r8      a       r       c       d       r       d       b       |
    e       b       r       g       r4              b8      r       |
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

