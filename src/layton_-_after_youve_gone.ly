\version "2.24.1"

\include "page.ly"
\include "swing.ly"

\header {
  title = "After You've Gone"
  composer = "Turner Layton"
}

global = {
  \time 4/4
  \key bes \major
}

count_in = \new DrumStaff {
  \global
  \drummode
  {
    cl4 cl  cl  cl  |
  }
}

music = \new Staff \with { midiInstrument = "muted trumpet" } {
  \global
  \clef treble
  \relative c''
  \repeat volta 2
  {
    % ------+-------|-------+-------|-------+-------|-------+-------|
    g8      bes     c       d ~     d2                              |
    r8      c       d       c       d       c4.                     |
    d,8     f       g       a ~     a2                              |
    r8      g       a       g       a       g4.                     |

    \alternative {
      \volta 1 {
        % ------+-------|-------+-------|-------+-------|-------+-------|
        g8      d'4             d8 ~    d2                              |
        g,8     c4              c8 ~    c2                              |
        r8      f,      g       f       a       f       g       f       |
        bes     d,4             f8 ~    f2                              |
      }
      \volta 2 {
        % ------+-------|-------+-------|-------+-------|-------+-------|
        ees'2                           d                               |
        c8      fis,    g       d' ~    d4              c               |
        r8      cis     d       bes     c       b       c       a       |
        bes     cis,    d       a' ~    a4              g               |
        f8      g       bes     d ~     d2                              |
        r8      ees,    f       a       c4              d               |
        d8      bes4. ~                 bes2                            |
        r1                                                        \bar "."
      }
    }
  }
}

chord_names = {
  \new ChordNames {
    % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/common-chord-modifiers`.
    % NOTE: See `https://lilypond.org/doc/v2.23/Documentation/notation/displaying-chords`.
    \chordmode {
      %-----------+-----------|
      ees1:7+                 |
      aes:7.5-                |
      bes:7+                  |
      d2:m7       g:7         |

      c1:7                    |
      f:7                     |
      bes:6                   |
      bes:7                   |

      c2:m7       g:7         |
      c:m7        aes:7.5-    |
      bes:7+      d:7/a       |
      g:m7/f      e:dim7      |

      bes:7+      g:7         |
      c:m7        f:7         |
      bes1:6                  |
      bes:7                   |
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
    \tempo 4 = 130
  }
}
