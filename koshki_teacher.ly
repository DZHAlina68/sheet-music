\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \numericTimeSignature \time 4/4 \tempo "Серьёзно"
  r2 s2 |
  r2 f4-. d4-. |
  e4( g4) r2 |
  r2 f4-. d4-. | \break
  e4( g4) r4 c'4 |
  r2 f4-. d4-. |
  e4( g4) r4 g4 |
  r2 f4( d4) |
  e2 s2 \bar "|."
}
lh = { \clef bass \numericTimeSignature \time 4/4
  r2 s2 |
  b,2 a,2 |
  c2 g,2 |
  b,2 g,2 |
  c2 e2 |
  d2 g,2 |
  c2 e,2 |
  f,2 b,2 |
  c2 s2
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }
