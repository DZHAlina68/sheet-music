\include "common.ily"
#(set-global-staff-size 32)

upper = {
  \key c \major \time 4/4 \tempo "Lively, with energy"
  <e' c''>1\f ~ | <e' c''>1 	| <e' c''>1 ~ | \break
  <e' c''>1		| <ees' c''>1~ 	| <ees' c''>1 \break
  <e' c''>1 ~ | <e' c''>1 | <g' d''>1 ~ | \break
  <g' d''>1 | <e' c''>2 <ees' c''>8 <ees' c''>8~ <ees' c''>4 | <e' c''>1 |
}

lower = {
  \clef bass \key c \major \time 4/4
  c,4_5\f e,_4 g,_2 a,8_1 bes,8~_2 | bes,8 bes,8_2 a,4_1 g,_2 e,_4 |
  c,4_5 e, g, a,8 bes,8~ | bes,8 bes,8 a,4 g, e, |
  f,4_5 a,_4 c d8 ees8~ | ees8 ees8 d4 c a, |
  c,4 e, g, a,8 bes,8~ | bes,8 bes,8 a,4 g, e, |
  g,_5 b,_4 c_3 cis8_2 d8~_1 | d8 d_1 b,4_2 a, g, |
  c2 f8, f,~ f,4 | c1 |
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}

