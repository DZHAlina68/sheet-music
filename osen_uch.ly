\include "common.ily"
#(set-global-staff-size 19)
rh = { \numericTimeSignature \time 4/4
  e'4-2 g'-4 e' r | R1 | e'4-2 a'-5 e' r | R1 | \break
  r2 r4 d'-3 | e'2 c'2 | c'4-2 d' r2 | R1
}
lh = { \numericTimeSignature \time 4/4
  r2 r4 d'_2 | c'2 d'2 | r2 r4 d'_2 | c'2 c'2 |
  d'4_3 b c' r | R1 | r2 b4_2 bes | a2 a2
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }