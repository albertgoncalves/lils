\version "2.24.1"

\include "page.ly"
\include "swing.ly"

\header {
  title = "Solar"
  composer = "Miles Davis"
}

% NOTE: See `https://music.stackexchange.com/questions/113428/midi-count-in-with-lilypond`.
% NOTE: See `https://lilypond.org/doc/v2.23/Documentation/notation/enhancing-midi-output`.

global = {
  \time 4/4
  \key c \major
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
    % \bar ".|:"
    r8  c4.           b4      d8    c       |
    r8  g4. ~         g             a8      |
    bes4    bes8  bes a4      c8    bes ~   |
    bes1                                    |
    r8  a4.           gis4    bes8  a       |
    r8  c,4. ~        c4      f8    g       |
    aes4    aes8  aes g4      bes8  aes ~   |
    aes2.                     r8    g ~     |
    g4      f8    ees d   c4        ges'8 ~ |
    ges4    f8    ees des c4        f8 ~    |
    f1                                      |
    r8  d   ees   f   g   aes b4            |
  }
}

chord_names = {
  \new ChordNames {
    % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/common-chord-modifiers`.
    % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/chord-mode#extended-and-altered-chords`.
    \chordmode {
      c\breve:m6        |
                        |
      g1:m7             |
      c:7               |
      f\breve:7+        |
                        |
      f1:m7             |
      bes:7             |
      ees:7+            |
      ees2:m7   aes:7   |
      des1:7+           |
      d2:m7.5-  g:7.9-  |
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
