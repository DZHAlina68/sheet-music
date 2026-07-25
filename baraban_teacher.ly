\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \numericTimeSignature \time 4/4 \tempo "Маршеобразно"
  r4 <e g>4\< r4 <f g b>4 |
  r4 <g c'>4 r4 <f a>4\! |
  r4 <e g>4\< r4 <f g b>4 |
  r4 <g c'>4 c'2\! | \break
  r4 <g b>4\< <g a>4 <f g b>4\! |
  r4 <f a>4 <e g>2\> |
  r4\! <g b>4\< <g a>4 <f g b>4\! |
  r4 <f a>4\> <e g>2\! \bar "|."
}
lh = { \clef bass \numericTimeSignature \time 4/4
  c2 b,2 |
  bes,2 a,2 |
  c2 b,2 |
  bes,2 a,4( aes,4) |
  g,1 |
  c2 c,4( e,4) |
  g,1 |
  c,2( c2)
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }
