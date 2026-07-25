\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \key f \major \numericTimeSignature \time 4/4 \tempo "Спокойно"
  << { r4 c'4( d'4) r4 } \\ { r2 f2 } >> |
  r4 bes4( a2) |
  r4 a4( <g d')>4 r4 |
  (<f bes>4\> g4 a4) r4\! | \break
  r4 c'4( bes4 g4) |
  r4 c'4( c'4 a4) |
  r4 c'4( <g d'>2) |
  <f bes>4\> g4 <f a>4 r4\! \bar "|."
}
lh = { \clef bass \key f \major \numericTimeSignature \time 4/4
  c4( a,4 bes,2) |
  c2( f,2) |
  f4( d4 bes,2) |
  c2( f,2) |
  f4( e4 d4 bes,4) |
  c4( bes,4 a,4 f,4) |
  fis4( <d fis>4 bes,2) |
  c2( f,2)
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }
