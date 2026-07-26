\include "common.ily"
#(set-global-staff-size 35)

upper = \relative c' {
  \key c \major \numericTimeSignature \time 4/4 \tempo "Не спеша"
  % m1-4 (system 1)
  c4^1-.\p c-1-. e-3-. e-. | g4-5-. g-. e2^3 |
  f4-5-. f-. d-3-. d-. | b4-2-. b-. g2-1 |
  \break
  % m5-8 (system 2)
  c4-1-. c-. e-3-. e-. | g4-. g-. e2 |
  c'4-5-.\< c-. fis,^2_. fis_. \!| g4-3-.\f r g-. r |
  \break
  % m9-12 (system 3)
  f2-3\p( e2 | d4-.) d-. [d8-1( e] [f g] | a4-5-.) g-. f-. e-. | d4-1-. d-. d2 |
  \break
  % m13-16 (system 4)
  c4-1-. c-. e-3-. e-. | g4-. g-. e2 | f4-4-. d-2-. r2 | c4-1-. r c2 \bar "|."
}

lower = \relative c {
  \clef bass \key c \major \numericTimeSignature \time 4/4
  % m1-4
  c2_3 r2 | R1 | g2_5 r2 | R1 |
  \break
  % m5-8
  c2_3 r2 | R1 | d2_3 r2 | <g_3 b_1>4-. r <g b>-. r |
  \break
  % m9-12
  r2 c2-1( | b4-.) r r2 | R1 | b4-. b-. b2 |
  \break
  % m13-16
  R1 | r2 c2 | r2 b4-2-. g-. | r2 <c,_3 e_1>2 \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}