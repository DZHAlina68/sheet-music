\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \numericTimeSignature \time 4/4 \tempo "Ласково"
  <c' e'>4 <b e'> <a e'> <g e'> |
  r4 <f b> << { \voiceOne c'2\> } \new Voice { \voiceTwo e4( g) } >> \oneVoice |
  <c' e'>4\! <b e'> <a e'> <g e'> |
  r4 <f g> <e g>2 | \break
  \repeat volta 2 {
    r4 f\> r <f g b> |
    r4\! <g c'>\> r <g c'> |
    r4\! c'\< r c' |
    r4 <f g>\! <e g>2--
  }
}
lh = { \clef bass \numericTimeSignature \time 4/4
  c2 g,2 | b,4( g,) c2-- | c2 g,2 | a,4( b,) c2-- |
  \repeat volta 2 {
    aes,2( g,2) | c2( g,2) | f,4( f g, e | a, b,) c2--
  }
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }