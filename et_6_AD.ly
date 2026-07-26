\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c' {
  \key c \major \time 4/4 \tempo "Неторопливо"
  % system 1: figure (low-up-low) + held half note, climbing
  s2. g'8^4 ( f \bar "|"
  e2 ) e4 g8 (f |
  e2 ) e4 f8^3 (e |
  d2 ) d4 g8^4 (f |
  e2 ) e4 g8^3 (f  |
  \break
  % system 2: held half note + figure, climbing higher
  e2 ) e4 a8^4 (g  |
  f2^2) f4^1 b8^3 (a  |
  g2) g4 e'8^5 (d8 |
  c2) c4  \bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major \time 4/4
  % system 1: off-beat quarters
  s2 s4 r4 |
  r4 g'4_4 c_1 r4 |
  r4 g4 c r4 |
  r4 c4_1 b r4 |
  r4 b4_2 c r4 |
  \break
  % system 2
  r4 g4 c r4 |
  r4 a4 d r4 |
  r4 g,4 b r4 |
  r4 g4 c \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}