\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \numericTimeSignature \time 4/4 \tempo "Неторопливо"
  r4 g( c' g) | e4( g f g) | r4 e( a gis) | r4 e( a e) | \break
  r4 c( f c) | r4 c( a e) | r4 f r e | r4 e( c2)
}
lh = { \clef bass \numericTimeSignature \time 4/4
  c1 | c2 g,2 | c2. b,4 | a,1 |
  f,1 | e, | d,2 gis,2 | a,1
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }