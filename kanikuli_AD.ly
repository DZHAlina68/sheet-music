\include "common.ily"
#(set-global-staff-size 32)

upper = \relative c'' {
  \key g \major \time 2/4 \tempo "Бодро, в характере польки"
  % System 1
  d8.^5( c16 b8 a8) | g8( b) b4 | b16^3( c b a g8) b | a4 r4 |
  \break
  % System 2
  c8.^4( b16 a8) g8 | fis8^2( a) a4 | fis16^3( g fis e fis8) d | g4 r4 |
  \break
  % System 3
  b8.^3( c16 b8) a | g( b )b4 | c16-2( b c d e8) d | c4 r4 |
  \break
  % System 4
  e8.^4( d16 c8) e8 | d8 (b) b4 | r4 a8 d | r4 \acciaccatura fis8 g4 ^\staccato | \bar "|."
}

lower = \relative c {
  \clef bass \key g \major \time 2/4
  % System 1
  g'8 b d, b' | g8 b d, b' | g8 b d, b' | fis8 ( <c' d> ) <c d>4 |
  \break
  % System 2
  a8 c d, c' | a8 c d, c' | a8 c d, c' | g8 ( <b d> ) <b d>4 |
  \break
  % System 3
  g8 b fis b | e, b' d, b' | c,8 e gis e | a8 (e') e4 |
  \break
  % System 4
  c8 e a, c | r8 <g d'>8 <g d'>4 \clef treble | d'16_4 (e fis g) r8 d | g4 g,_\staccato | \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}