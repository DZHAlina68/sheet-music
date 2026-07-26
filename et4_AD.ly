\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c' {
  \key c \major \time 4/4 \tempo "Неторопливо"
  % system 1
  r4 g'8^3 ( a g4 ) e | r4 g8^2 ( a g4 ) c |
  a4^1 c b d^2 | c2^3 r2 |
  \break
  % system 2
  r4 g8^2 ( a g4 ) c | r4 c8^2 ( d c4 ) e |
  r4 d8^3 ( e d4 ) b | c2 r2 | \bar "|."
}

lower = \relative c' {
  \clef treble
  \key c \major \time 4/4
  c1 | c1 | d4 r g, r | c2 r2 | \break
  c1 | e1 | f4 r g r | c,2 r2 | \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
