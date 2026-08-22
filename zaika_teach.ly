\include "common.ily"
#(set-global-staff-size 28)

upper = \relative c'' {
  \key g \major \time 3/4 \tempo "Не спеша"
  % System 1 : rising thirds, r4 + two slurred quarters
  r4_1\mp b4-1( d4-3) | r4 b4( d) | r4 b4^\markup { \italic "sim." } d |
  r4 b4 d | r4 c4^2 e^4 | r4 c4 e |
  \break
  % System 2 : descending thirds (high register)
  r4 c4 e | r4 c4 e | r4 fis,4^2 a^4 |
  r4 fis4 a | r4 e4^2 g^4 | r4 e g |
  \break
  % System 3 : rising thirds restated
  r4 d4^2 fis^4 | r4 d fis | r4 <c^1 d^2>4 fis4^4 |
  r4_\markup { \italic "замедлить" } <c^1 d^2>4 fis4 | r4^\markup { \bold "I темп" } \mf b,4^1 d^2 | r4 b4 d |
  \break
  % System 4 : rising thirds starting on C
  r4 b4 d | r4 b4 d | r4 c4^2 e^4 |
  r4 c e | r4 c e | r4 c e |
  \break
  % System 5 : rising thirds, then chromatic close to E
  r4 fis4 a | r4 fis a | r4 <c^2 d^3>2 |
  r4 <c d>2 | r4 a_\markup { \italic "замедлить" }^1 (ais^2 | b2.^3) | \bar "|."
}

lower = \relative c' {
  \clef treble \key g \major \time 3/4
  % System 1 : held dotted halves (treble)
  g'^2 (| fis^3 | a^1 | g^2 | b^1 | a^2 |
  \break
  % System 2 : D pedal area with chromatic g sharp, slur pairs
  gis2.^3 | a^1 ) | e^2 (|  d) | d^2 ( | c)
  \break
  % System 3 : treble (4 bars) then bass clef (2 bars)
  c2.^2( | b) | b (|  a) | \clef bass g^2 ( |  fis |
  \break
  % System 4 : bass clef, then back to treble at end
  a | g | b^1 | a | gis | a) \clef treble
  \break
  % System 5 : treble, D pedal rising then closing
  e' ( | d) | e2^4 ( fis4^3 | b2^1 a4 | g2. ~ | g2.) | \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout {}
}
