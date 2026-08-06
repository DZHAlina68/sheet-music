\include "common.ily"
#(set-global-staff-size 28)

upper = \relative c'' {
  \key d \major \numericTimeSignature \time 2/4
  \tempo "Весело"
  % system 1
  a8_1\mf (b8 a4) | a8_1 (b8 a4) | d4^4 (cis8 b8 | a4 a4) | a8_1 (b8 a4) | e'8^5 (b8 a4) |\break
  % system 2
  fis'4^3 ( e8 d8^1 | cis4^2 cis4) | d8_1 \f ( e8 d4) | a'4_5 a4 | b,8_1 (cis8 b4) | e4^5 e4 | \break
  % system 3
  a,8_1 \> ( d8 cis4 ) | b8_2 (cis8 b4) | cis8_3 (e8_5 b4_2) | a2_1 \! | a8_1 \mf (b8 a4) | a8 (b8 a4) | \break
  % system 4
  d4 ( cis8 b8 | a4 a4) | a8 \< (b8 a4) | e'8^5 (b8 a4) \!| fis'2_4^> \f | e2_3^> | <a,_1 d_3>2^> ~ | <a_1 d_3>4 r4 \bar "|."
}

lower = \relative c'' {
  \key d \major \numericTimeSignature \time 2/4
  % system 1 : 2 bars rest, then canon (upper, octave lower, 2 bars later)
  g4_2_\markup \italic "несвязно" d4_5 | g4_2 d4_5 | fis4_3 d4_5 | g4_2 d4_5 | fis4_3 d4_5 | g4_2 d4_5 | \break
  % system 2
  bes'4^1 d,4 | b'!2^1 | <a_2 b_1>2_> | <g_3 b_1>4 r4 | <g_2 a_1>2_> | <fis_3 a_1>4 r4 | \break
  % system 3
  <e_2 fis_1>2 | <d_3 fis_1>4 r4 | <d_2 e_1>2 | <cis_3 e_1>2 | g'4_1 d4_3 | g4_1 d4_3 | \break
  % system 4
  fis4_1 d4_3 | g4 d4 | fis4_3 d4 | g4_2 d4_5 | <b_5 g'_1>2_> | <cis_5 a'_1>2_> | <d_3 fis_1>2_> ~ | <d_3 fis_1>4  r4 \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
