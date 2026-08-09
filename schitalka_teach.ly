\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \numericTimeSignature \time 4/4 \tempo "Бодро"
  r8 <c g>8 r8 <e g>8 r8 <c d f>8 r8 <b, d>8 |
  r8 <c g>8 r8 <e g>8 r8 <c d>8 r8 <d g>8 |
  r8 <c g>8 r8 <c a>8 r8 <c d>8 r8 <c e>8 |
  r8 <c d>8 r8 <d g>8 r8 e8 e4 \bar "|."
}
lh = { \clef bass \numericTimeSignature \time 4/4
  c,4 e,4 f,4 g,4 |
  c,4 e,4 f,8[ fis,8] g,8[ f,8] |
  e,4 f,4 fis,4 g,4 |
  f,4 g,4 c4 c,4
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }
