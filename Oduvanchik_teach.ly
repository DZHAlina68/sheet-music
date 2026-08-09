\include "common.ily"
#(set-global-staff-size 19)
rh = { \clef bass \key g \major \numericTimeSignature \time 4/4 \tempo "Легко"
  r2 r4 <g a>-. | r4 <fis c'>-. r b-. | r2 r4 <g a>-. | r4 <fis c'>-. <g b>-. r | \break
  r2 r4 fis-. | r4 <fis a>-. r <g d>-. | r2 r4 <fis a>-. | r4 <fis c'>-. <g b>-. r
}
lh = { \clef bass \key g \major \numericTimeSignature \time 4/4
  r2 c4-. r | e4-. r g-. r | r2 c4-. r | d4-. r r b,-. |
  c4-. cis-. d4-. r4 | c4-. r b,-. r | a,-. b,-. c-. r | d4-. r r g,-.
}
\score { \new PianoStaff << \new Staff \rh \new Staff \lh >> \layout {} }
