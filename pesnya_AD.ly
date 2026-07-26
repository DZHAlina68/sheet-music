\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c' {
  \key c \major \time 2/4 \tempo "Протяжно"
  % System 1 : melody, low register
  e8^2( g g f) | e8( g g e) |
  f16^3( g f e d4) | e16^3(f e d c4) |
  \break
  % System 2 : held thirds, then a turn, then held
  <c g'>2~ | <c g'>2 |
  g'4 g16( a b g | c2) | \bar "|."
}

lower = \relative c {
  \clef bass \key c \major \time 2/4
  % System 1 : held thirds
  <c g'>2~ | <c g'>2 | g'2 | c,2 |
  \break
  % System 2 : moving eighths
  e8_3( g g f) | e8_3( g g e) |
  d8_4( g f g) | e16_3( f e d c4) | \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
