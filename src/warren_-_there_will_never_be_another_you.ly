\version "2.24.1"

\include "page.ly"
\include "swing.ly"

\header {
  title = "There Will Never Be Another You"
  composer = "Harry Warren"
}

count_in = \new DrumStaff {
  \time 3/4
  \drummode
  {
    cl4 cl  cl
  }
}

music = \new Staff \with { midiInstrument = "tenor sax" } {
  \time 4/4
  \key c \major
  {
    {
      \relative c''
      {
        % ------+-------|-------+-------|-------+-------|-------+-------|
        \partial 4                                      g4              |
      }
    }
    {
      \relative c''
      \repeat volta 2
      {

        % ------+-------|-------+-------|-------+-------|-------+-------|
        a               b               c               d               |
        e               g               d               c               |
        d1 ~                                                            |
        d2                              r8      e4.                     |

        % ------+-------|-------+-------|-------+-------|-------+-------|
        c4              d               e               g               |
        a               c               a4.                     g8      |
        a1 ~                                                            |
        a2.                                             g4              |

        \alternative {
          \volta 1 {
            % ------+-------|-------+-------|-------+-------|-------+-------|
            c               a               g               f               |
            e               d               e               f               |
            g               e               d               c               |
            d               c8      d ~     d4              c               |

            % ------+-------|-------+-------|-------+-------|-------+-------|
            b'              a               g               fis             |
            e               d               e               d               |
            f1 ~                                                            |
            f2.                                             g,4             |
          }
          \volta 2 {
            % ------+-------|-------+-------|-------+-------|-------+-------|
            c'              a               g               f               |
            e               d               e               f               |
            g               e               d               c8      b' ~    |
            b2                              r8      a4.                     |

            % ------+-------|-------+-------|-------+-------|-------+-------|
            g4              c               b               a               |
            g               c,              g'              f               |
            d2                              e                               |
            c1                                                        \bar "."
          }
        }
      }
    }
  }
}

chord_names = {
  \new ChordNames {
    \chordmode {
      g4:7                    |

      c\breve:7+              |
                              |
      b1:m7.5-                |
      e:7                     |

      a\breve:m7              |
      g1:m7                   |
      c:7                     |

      f:7+                    |
      bes:7                   |
      c:7+                    |
      a:m7                    |

      d:7                     |
      a2:m7       d:7         |
      d1:m7                   |
      g:7                     |

      f:7+                    |
      bes:7                   |
      c:7+                    |
      fis2:m7.5-  b:7         |

      c2:7+       f:7         |
      e:m7        a:7         |
      d:m7        g:7         |
      c:7+        f:m6        |
    }
  }
}

\score {
  \transpose c ees,
  <<
    \chord_names
    \music
  >>

  \layout { }
}

\score {
  \unfoldRepeats
  \applySwing 8 #'(4 3)

  \transpose c ees,
  {
    \count_in
    \music
  }

  \midi {
    \tempo 4 = 140
  }
}
