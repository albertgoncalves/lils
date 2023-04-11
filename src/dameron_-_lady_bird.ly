\version "2.24.1"

\include "page.ly"
\include "swing.ly"

\header {
  title = "Lady Bird"
  composer = "Tadd Dameron"
}

global = {
  \time 4/4
  \key c \major
}

count_in = \new DrumStaff {
  \global
  \drummode
  {
    cl4 cl cl cl |
  }
}

music = \new Staff \with { midiInstrument = "tenor sax" } {
  \global
  \clef treble
  \relative c''
  \repeat volta 2
  {
  % -------+-------|-------+-------|-------+-------|-------+-------|
    r8      g4.                     g4              g               |
    g4.                     g4              g4              g8      |
    bes2                            aes4            ees8    g       |
    r8      f4. ~                   f2                              |

    r8      g4.                     g4              g               |
    g4.                     g4              g4              g8      |
    c2                              bes4            f8      c'      |
    r8      bes4. ~                 bes2                            |

    r8      bes4.                   a4              aes4            |
    bes4            a8      aes ~   aes2                            |
    r8      b4.                     bes4            a4              |
    b4              bes8    a ~     a2                              |

    c2 ~                            c8      a       f       e ~     |
    e2                              r4              d8      e       |
    g4.                     bes8    r2                              |
    f8      ees     r       aes8    r2                              |
  }
}

chord_names = {
  \new ChordNames {
    \chordmode {
      c1:7+                       |
      c:6                         |
      f:m7                        |
      bes:7                       |
      c:7+                        |
      c:6                         |
      bes:m7                      |
      ees:7                       |
      aes\breve:7+                |
      a1:m7                       |
      d:7                         |
      d:m7                        |
      g:7                         |
      c2:7+         ees:7+        |
      aes:7+        des:7+        |
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
  \applySwing 8 #'(4 3)
  {
    \count_in
    \music
  }
  \midi {
    \tempo 4 = 200
  }
}
