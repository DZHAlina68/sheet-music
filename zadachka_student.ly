\include "common.ily"
#(set-global-staff-size 19)
mel = { \key f \major \numericTimeSignature \time 4/4
  s2 \change Staff = "down" c'4_3( \change Staff = "up" f'4^2 |
  a'4^4 g'4 f'4 \change Staff = "down" d'4_2 |
  \change Staff = "down" c'2) c'4_3 \change Staff = "up" f'  |
  \change Staff = "up" a'4^4( g'4 f'4 \change Staff = "down" d'4 |
  c'2) \breathe \change Staff = "up" e'4^3( d'4 | \break
  c'4^1 \change Staff = "down" bes4_2 a4 bes4 |
  c'2) \breathe \change Staff = "up" f'4^4( f'4 |
  e'4 \change Staff = "down" c'4_4 d'4 e'4 |
  f'2) \breathe \change Staff = "up" f'4( f'4 | \break
  e'4 d'4 \change Staff = "down" c'4_2 bes4 |
  a2) \breathe (c'4 c'_2 |
  \change Staff = "up" d'4^2( d'4 e' e' |
  f'2) s2 \bar "|."
}
\score {
  \new PianoStaff <<
    \new Staff = "up" { \key f \major \numericTimeSignature \time 4/4 s1*13 }
    \new Staff = "down" \mel
  >>
  \layout {}
}
