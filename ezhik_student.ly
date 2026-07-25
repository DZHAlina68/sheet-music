\include "common.ily"
#(set-global-staff-size 19)
rh = { \numericTimeSignature \time 4/4
  a'4^4 f'4 g'4 g'4 |
  s1 |
  a'4^4 f'4 g'4 g'4 |
  s1 | \break
  a'4 a'4 g'4 g'4 |
  s1 |
  a'4 a'4 g'4 g'4 |
  s1 \bar "|."
}
lh = { \numericTimeSignature \time 4/4
  s1 |
  d'4_4 e'4 f'4 f'4 |
  s1 |
  d'4_4 e'4 f'4 f'4 |
  s1 |
  e'4 e'4 f'2 |
  s1 |
  d'4 e'4 f'2
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }
