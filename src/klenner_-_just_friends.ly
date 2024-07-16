\version "2.24.1"

\include "page.ly"
\include "swing.ly"

\header {
  title = "Just Friends"
  composer = "John Klenner"
}

global = {
  \time 4/4
  \key g \major
}

count_in = \new DrumStaff {
  \global
  \drummode
  {
    cl4 cl  cl  cl  |

    \partial 2
    cl  cl          |
  }
}

music = \new Staff \with { midiInstrument = "muted trumpet" } {
  \global
  \clef treble

  \relative c''
  {
    \partial 2 b2 |

    \repeat volta 2
    {
      % ------+-------|-------+-------|-------+-------|-------+-------|
      b1 ~                                                            |
      b2                              \tuplet 3/2 { a4 b a }          |
      ees1 ~                                                          |
      ees2                            a                               |
      a1 ~                                                            |
      a4              a               \tuplet 3/2 { g a g }           |
      des1 ~                                                          |
      des2                            r4              g               |
      \alternative {
        \volta 1 {
          % ------+-------|-------+-------|-------+-------|-------+-------|
          g4.                     e8      g4.                     e8      |
          fis2.                                           fis4            |
          fis4.                   d8      fis4.                   d8      |
          e4              fis             g               b               |
          e2                              b ~                             |
          b4              e,              \tuplet 3/2 { e fis g }         |
          b2                              a ~                             |
          a                               b                               |
        }
        \volta 2 {
          % ------+-------|-------+-------|-------+-------|-------+-------|
          g4.                     e8      g4.                     e8      |
          fis2.                                           a4              |
          a4.                     fis8    a4.                     fis8    |
          g4              a               b               d               |
          e2                              e,                              |
          d'2                             b                               |
          g1 ~                                                            |
          g2                              r2                        \bar "."
        }
      }
    }
  }
}

chord_names = {
  \new ChordNames {
    \chordmode {
      \set noChordSymbol = ""

      %-----------+-----------|
      \partial 2  r2          |

      c\breve:7+              |
                              |
      c1:m7                   |
      f:7                     |
      g\breve:7+              |
                              |
      bes1:m7                 |
      ees:7                   |

      a:m7                    |
      d:7                     |
      b:m7                    |
      e:m7                    |
      a\breve:7               |
                              |
      a1:m7                   |
      d2:7        des:7       |

      a1:m7                   |
      d:7                     |
      b:m7                    |
      e:m7                    |
      a:7                     |
      a2:m7       d:7         |
      g1:6                    |
      d2:m7       g:7         |
    }
  }
}

\score {
  <<
    \chord_names
    \music
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \applySwing 8 #'(4 3)
  {
    \count_in
    \music
  }
  \midi {
    \tempo 4 = 160
  }
}
