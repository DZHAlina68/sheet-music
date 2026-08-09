\include "common.ily"
#(set-global-staff-size 23)

upper = \relative c'' {
  \key c \major \time 4/4 \tempo "Не спеша"
  e16^4 (d c b) r4 r4 a4^1 | d16^4 (c b a) r4 r4 g4^1 |
  c16^4 (b a g) r4 r4 f4^1 | b16^4 (a g f) r4 r4 e4 |  
  \break
  r4 g8^1 c a4 r4 | r4 f8^2 a g4 r4 |
  e16^2 (f e d) r4 f4^3 r4 | d16^2 (e d c) r4 r4 c'4^5 | \bar "|."
}

lower = \relative c' {
  \clef treble \key c \major \time 4/4
  r4 a'8_2 g f4 r4 | r4 g8_2 f e4 r4 |
  r4 f8_2 e d4 r4 | r4 e8_2 d c4 r4 |
  \break
  c16_4 (d e f) r4 r4 f4 | b,16_4 (c d e) r4 r4 e4 |
  r4 c8_2 a r4 d4_1 | r4 b8_2 g c4_1 r4 | \bar "|."

}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
