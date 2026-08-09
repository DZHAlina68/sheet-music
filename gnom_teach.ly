\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \numericTimeSignature \time 4/4 \tempo "Ласково"
  r4 <e g c'>4 r4 <f a c'>4 |
  r4 <e g c'>4 r4 <d f a>4 |
  r4 <e g>4 r4 <d f a>4 |
  r4 <e g>4 r4 <c e g>4 | \break
  r4 f4 r4 <d f>4 |
  r4 <d g>4 r4 g4 |
  r4 <c d>4 r4 <d f g>4 |
  r4 <e g>4 r2 \bar "|."
}
lh = { \clef bass \numericTimeSignature \time 4/4
  c2 c2 |
  c2 c2 |
  c2 c2 |
  c2 bes,2 |
  aes,2 bes,2 |
  b,!2 c2 |
  f,2 g,2 |
  c2 c,2
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }