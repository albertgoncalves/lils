\version "2.24.1"

\include "page.ly"
\include "swing.ly"

\header {
  title = "Out of Nowhere"
  composer = "Johnny Green"
}

% NOTE: See `https://music.stackexchange.com/questions/113428/midi-count-in-with-lilypond`.
% NOTE: See `https://lilypond.org/doc/v2.23/Documentation/notation/enhancing-midi-output`.

global = {
  \time 4/4
  \key g \major
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
  \relative c'
  \repeat volta 2
  {
    % ------+-------|-------+-------|-------+-------|-------+-------|
    d8      e       fis     a ~     a2 ~                            |
    a4              g               d               e               |
    f4.                     f8 ~    f2~                             |
    f1                                                              |
    d8      e       fis     a ~     a2 ~                            |
    a4              g               d               e               |
    fis1 ~                                                          |
    fis1                                                            |
    \alternative {
      \volta 1 {
        % ------+-------|-------+-------|-------+-------|-------+-------|
        e8      f       e       c' ~    c2                              |
        e,8     f       e       b' ~    b4              e,              |
        b'1                                                             |
        a1                                                              |
        \tuplet 3/2 { bes4 a g }        g2                              |
        \tuplet 3/2 { g4 a bes bes g bes }                              |
        d1 ~                                                            |
        d1                                                              |
      }
      \volta 2 {
        % ------+-------|-------+-------|-------+-------|-------+-------|
        e,8     f       e       c' ~    c2                              |
        \tuplet 3/2 { e,4 f e b' c d }                                  |
        e1                                                              |
        b                                                               |
        a8      fis4            g8      e4              fis             |
        d2                              b'                              |
        g1 ~                                                            |
        g1                                                        \bar "."
      }
    }
  }
}

chord_names = {
  \new ChordNames {
    % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/common-chord-modifiers`.
    % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/chord-mode#extended-and-altered-chords`.
    \chordmode {
      %-----------+-----------|
      g\breve:7+              |
                              |
      bes1:m7                 |
      ees:7                   |
      g\breve:7+              |
                              |
      b1:m7                   |
      e:7                     |

      a:m7                    |
      b2:m7.5-    e:7         |
      a\breve:m7              |
                              |
      ees:7                   |
      a1:m7                   |
      d:7                     |

      a:m7                    |
      b2:m7.5-    e:7         |
      a1:m7                   |
      f:7                     |
      b2:m7       bes:dim7    |
      a:m7        d:7         |
      g1:6                    |
      a2:m7       d:7         |
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
    \tempo 4 = 140
  }
}
