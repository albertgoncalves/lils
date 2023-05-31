\version "2.24.1"

\include "page.ly"
\include "swing.ly"

global = {
  \time 4/4
  \tempo 4 = 120
}

k = 4

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
    \repeat volta \k
    {
      \repeat unfold 6
      {
        r4  hh  r   hh  |
      }
    }
  }
}

music = \new DrumStaff \with {
  \override Stem.neutral-direction = #up
  \override StaffSymbol.line-count = #1
  drumStyleTable = #percussion-style
} {
  \global
  \drummode
  {
    \repeat volta \k
    {
      % ------+-------|-------+-------|-------+-------|-------+-------|
      sn2                             sn4.                    sn8     |
      r2                              sn2                             |
      r8      sn4.                    sn2                             |
      sn4.                    sn8     r4              sn4             |
      sn2                             sn                              |
      r4              sn4             r8      sn4.                    |
    }
  }
}

\score {
  {
    \music
  }
  \layout { }
}

\score {
  \applySwing 8 #'(5 4)
  \unfoldRepeats
  {
    \count_in
    <<
      \music
      \pulse
    >>
  }
  \midi { }
}
