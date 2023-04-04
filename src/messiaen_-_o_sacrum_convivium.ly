\version "2.24.1"

\include "page.ly"

\header {
  title = "O sacrum convivium!"
  composer = "Olivier Messiaen"
}

global = {
  \tempo 4 = 55
  \key fis \major
}

% NOTE: See `https://lilypond.org/doc/v2.24/Documentation/learning/i_0027m-hearing-voices`.
% NOTE: See `http://lilypond.org/doc/v2.25/Documentation/notation/multiple-voices#writing-music-in-parallel`.

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  \compoundMeter #'((3 2 2 2 8))
  eis4. ( cisis4  dis gis |
  ais4.   ais4    b   b   |
  cis4.   cis4    cis cis |
  fis4.   fis4    fis fis |

  \compoundMeter #'((3 2 2 8))
  eis4  cisis8  dis2 )  |
  ais4  ais8    b2      |
  cis4  cis8    cis2    |
  fis4  fis8    fis2    |

  \compoundMeter #'((3 2 2 2 8))
  eis4. ( cisis4  dis4  gis4  |
  ais4.   ais4    b     b     |
  cis4.   cis4    cis   cis   |
  fis4.   fis4    fis   fis   |

  \compoundMeter #'((3 2 2 8))
  cis4  ais8  gis2 )  |
  d4    d8    dis2    |
  eis4  eis8  fis2    |
  b4    b8    b2      |

  \compoundMeter #'((3 2 2 2 8))
  ais4. ( dis4    cis4  gis4  |
  eis4.   eis4    fis   fis   |
  b4.     b4      b     b     |
  cis4.   cis4    d     d     |

  \compoundMeter #'((3 2 2 8))
  cis8  dis cis gis2 )  |
  g8    g   g   fis2    |
  b8    b   b   b2      |
  dis8  dis dis d2      |

  \compoundMeter #'((3 2 2 2 8))
  ais4. ( dis4    cis4  gis4  |
  eis4.   eis4    fis   fis   |
  b4.     b4      b     b     |
  cis4.   cis4    d     d     |

  \compoundMeter #'((3 2 2 8))
  cis4  ais8  gis2 )  |
  gis4.       fis2    |
  b4.         b2      |
  dis4.       d2      |

  \compoundMeter #'((3 2 2 2 8))
  bis4. ( fis'4   dis   a   |
  fis4.   fis4    fis   e   |
  ais4.   ais4    ais   bis |
  cis4.   cis4    cis   cis |

  \compoundMeter #'((3 2 2 8))
  bis8  dis   bis   fis2 )  |
  fis4        fis8  fis2    |
  ais4        ais8  ais2    |
  cis4        cis8  cis2    |

  \compoundMeter #'((3 2 2 2 8))
  a4. ( ees'4   c     fis,    |
  ees4. ees4    ees   des     |
  g4.   g4      g     a       |
  bes4. bes4    bes   bes     |

  a8  c   a     fis2 )  fis4 (  |
  ees4    ees8  des2    des4    |
  g4      g8    g2      g4      |
  bes4    bes8  a2      a4      |

  \compoundMeter #'((3 2 2 8))
  f8  gis f d2 )  |
  c4.       b2    |
  fis4.     fis2  |
  a4.       gis2  |

  \compoundMeter #'((3 2 8))
  f4. ( d4 )  |
  b4.   bes4  |
  d4.   d4    |
  g4.   g4    |

  f4. ( d4 )  |
  b4.   bes4  |
  d4.   d4    |
  g4.   g4    |

  \compoundMeter #'((6 4))
  f2. ( d ) |
  a2.   a   |
  d2.   d   |
  fis2. fis |

  \compoundMeter #'((3 2 2 2 8))
  eis4. ( cisis4  dis gis |
  ais4.   ais4    b   b   |
  cis4.   cis4    cis cis |
  fis4.   fis4    fis fis |

  \compoundMeter #'((3 2 2 8))
  eis4  cisis8  dis2 )  |
  ais4  ais8    b2      |
  cis4  cis8    cis2    |
  fis4  fis8    fis2    |

  \compoundMeter #'((3 2 2 2 8))
  eis4. ( cisis4  dis gis |
  ais4.   ais4    b   b   |
  cis4.   cis4    cis cis |
  fis4.   fis4    fis fis |

  \compoundMeter #'((3 2 2 8))
  cis4  ais8  gis2 )  |
  d4    d8    dis2    |
  eis4  eis8  fis2    |
  b4    b8    b2      |

  \compoundMeter #'((3 2 2 2 8))
  ais4. ( dis4  cis   gis   |
  eis4.   eis4  fis   fis   |
  b4.     b4    b     b     |
  cis4.   cis4  d     d     |

  cis4.   fis4  dis   ais ) |
  g4.     g4    gis   gis   |
  b4.     b4    b     b     |
  dis4.   dis4  e     e     |

  dis4. ( ais'4 eis   d     |
  ais4.   b4    gis   fis   |
  b4.     eis4  dis   cis   |
  eis4.   cis'4 b     ais   |

  \compoundMeter #'((3 2 2 8))
  eis8  gis eis   d2 )  |
  a4        a8    a2    |
  bis4      bis8  bis2  |
  fis4      fis8  fis2  |

  \compoundMeter #'((3 2 2 2 8))
  bis4. ( fis'4   dis   gis,  |
  fis4.   ais4    fis   dis   |
  ais4.   dis4    cis   ais   |
  dis4.   bis'4   ais   fis   |

  \compoundMeter #'((3 2 2 8))
  ais8  cis ais   gis2 )  |
  fis4.           fis2    |
  b4.             b2      |
  d4.             d2      |

  \compoundMeter #'((3 2 8))
  gis'4. (  dis4    |
  fis4. ~   fis4 ~  |
  ais4. ~   ais4 ~  |
  cis4. ~   cis4 ~  |

  \compoundMeter #'((3 2 2 8))
  eis4  dis8  gis,4 ais |
  fis4. ~     fis2      |
  ais4. ~     ais2      |
  cis4. ~     cis2      |

  cis4  ais8  dis,4 fis4  |
  dis4.       cis2        |
  fis4. ~     fis2 ~      |
  ais4. ~     ais2        |

  ais4  fis8  cis4  dis ~ |
  b4    b8    b2 ~        |
  fis4  fis8  fis2 ~      |
  gis4  gis8  gis2 ~      |

  \time 3/4
  dis4  cis   dis ~   |
  b4    b2 ~          |
  fis4  fis2 ~        |
  gis4  gis2 ~        |

  dis4 )  cis ( dis   |
  b4      gis   b     |
  fis4    dis   fis   |
  gis4    b     gis   |

  \compoundMeter #'((3 2 8))
  gis4.   dis4 )    |
  ais4.   ais4      |
  cis4.   cis4      |
  fis4.   fis4      |

  \compoundMeter #'((3 2 2 8))
  gis4. ( dis4  dis   |
  ais4.   ais4  ais   |
  cis4.   cis4  cis   |
  fis4.   fis4  fis   |

  \time 8/4
  gis2.   dis4  dis1 )  |
  ais2.   ais4  ais1    |
  cis2.   cis4  cis1    |
  fis2.   fis4  fis1    \bar "|."
}

\score {
  <<
    \new Staff \with { midiInstrument = "oboe" \omit TimeSignature } {
      \global
      \clef treble
      << \relative c' \voiceS \\ \relative c' \voiceA >>
    }

    \new Staff \with { midiInstrument = "bassoon" \omit TimeSignature } {
      \global
      \clef bass
      << \relative c \voiceT \\ \relative c, \voiceB >>
    }
  >>
  \layout { }
  \midi { }
}
