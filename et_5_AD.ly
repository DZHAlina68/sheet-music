\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c' {
  \key f \major \time 4/4 \tempo "Неторопливо"
  % system 1
  r2 f8^2 ( g f4 ) | a2 ( f4 ) r4 |
  r2 g8^2 ( a g4 ) | bes2 ( g4 ) r4 |
  \break
  % system 2
  a8^3 ( bes a4 ) g8^2 ( a g4 ) | f2^1 ( a^4 ) |
  g2-3  e-2  | f2  f4  r4 | \bar "|."
}

lower = \relative c' {
  \clef treble
  \key f \major \time 4/4
  % system 1
  c8_3 ( d c4 ) r2 | c8 ( d c4 ) r2 |
  c8 ( d c4 ) r2 | c8 ( d c4 ) r2 |
  \break
  % system 2
  r2 cis2_2 | d2_1 ( c ) |
  bes8_3 ( c bes4 ) c8_2 ( d c4 ) | \parenthesize f2 r2 | \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
