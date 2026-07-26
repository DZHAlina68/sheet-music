\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c' {
  \key c \major \time 4/4 \tempo "Неторопливо"
  r4 f4^3 e4( d4) | e4( f4) e4 r4 | f8^3 (g f4) e r4 | d8^1 (e d4) r2 |
  \break
  g4^3 g4 g8 (a g4) | g8^2 (a g4) c r4 | g^3 g f8 (g f4) | d8^1 (e d4) r2 |\bar "|."
}

lower = \relative c {
  \clef bass \key c \major \time 4/4
  g'4_3 g g8 (a g4) | g8_4 (a g4) c (g) | b_2 (g) c_1 (g) | b (g) c (g) \clef treble|
  \break
  r4 f'4_1 e (f) | e4 (f4) e4 (c4) | r4 b4_2 a4( c4) | g4_4 (b4) c2 |\bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
s