\version "2.22.2"

\include "page.ly"

% NOTE: See `https://www.youtube.com/watch?v=yQnjn5NVSUI`.

\score {
  <<
    \new ChordNames {
      % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/common-chord-modifiers`.
      % NOTE: See `https://lilypond.org/doc/v2.21/Documentation/notation/chord-mode#extended-and-altered-chords`.
      \chordmode {
        e2:m7+    g:7+    |
        e:m7.5-   aes:7+  |
        g:7.9     c:6     |
      }
    }
    % NOTE: See `https://lilypond.org/doc/v2.22/Documentation/notation/midi-instruments`.
    \new Staff \with { midiInstrument = "muted trumpet" } {
      \time  4/4
      \tempo 4 = 75
      \clef treble
        \relative c' {
          << < e     b'    dis     >2 \\ g,2 >>
          << < fis'  b     d       >  \\ g,  >> |
          << < e'    bes'  d       >  \\ g,  >>
          << < ees'  aes   c       >  \\ g,  >> |
          << < d'    f     a   b   >  \\ g,  >>
          << < e'    g     a   c   >  \\ c,  >> |
        }
    }
  >>
  \layout { }
  \midi { }
}
