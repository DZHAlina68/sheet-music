\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c'' {
  \key c \major \numericTimeSignature \time 3/4
  \tempo "Andante cantabile (Спокойно, певуче)"
  % system 1
  g2-3\mp( f4 | e4 g4-2 c4-5 | b a b | c g^2 e^1) | \break
  % system 2
  g2^3 ( f4 | e g^2 c^5 | b a b | c2.) | \break
  % system 3
  d4^5( g,4 ) g4 | aes4^2 aes4 aes4^2 | g4^1 (a!4 b4 | c2.) | \break
  % system 4
  g2^3 ( f4 | e g c | b a b | c2.) \bar "|."
}

lower = \relative c {
  \clef bass \key c \major \numericTimeSignature \time 3/4
  % system 1 : 2 bars rest, then canon (upper, octave lower, 2 bars later)
  R2. | R2. | g'2_3 ( f4 | e4 g4 c4) | \break
  % system 2
  b4( a b | c g_3 e) | g2_3 (f4 | e g c | \break
  % system 3
  b4 a b | c2.) | d4 (g,4_4 ) g4 | aes4_3 aes aes_3 | \break
  % system 4
  g4_4( a! b | c2.) | g2_3 ( f4 | e2.) \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
