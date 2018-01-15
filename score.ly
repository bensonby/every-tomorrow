\version "2.18.2"

\header {
  title = "陳奕迅 － 每一個明天"
  subtitle = "Piano accompaniment (to be played with voice, guitar and drums)"
  arranger = "Arranged by Benson"
}

upper-intro-a = \relative c'' {
  <dis b'>4\( <fis dis'> <eis cis'> <gis eis'> <fis dis'> <ais fis'> <gis eis'>2\)
}
upper-intro-b-easy = \relative c' {
  \tupletDown
  \tuplet 6/4 4 {
  dis16\( fis gis ais b-1 cis
  dis cis b ais-4 gis fis
  eis gis ais b-1 cis dis
  eis dis cis b ais-4 gis
  fis-2 b-1 fis'-2 gis-3 ais-4 b-1 cis-5 b-1 ais-4 gis-3 fis-2 eis-1
  }
  gis8\) <ais, cis fis ais>-> <b dis fis b>-> <cis eis gis cis>->
}
lower-intro-midi = \relative c {
  \repeat unfold 16 {cis32 cis'}
  \repeat unfold 16 {cis,32 cis'}
  \repeat unfold 16 {cis,,32 cis'}
  \repeat unfold 8 {cis,32 cis'}
  <cis, cis'>8 q q q
}
lower-intro-print = \relative c {
  << {\repeat tremolo 16 {cis32 cis'}} \\ {s1_\markup { \italic "con pedal" }} >>
  \repeat tremolo 16 {cis,32 cis'}
  \repeat tremolo 16 {cis,,32 cis'}
  \repeat tremolo 8 {cis,32 cis'}
  <cis, cis'>8 q q q
}
melody-verse-one = \relative c'' {
  fis4\( eis8 fis gis4 cis, b' ais8 gis fis4\) gis8\( ais dis,4 fis8 gis cis,4 fis8 gis ais b ais fis gis2\)
  fis4\( eis8 fis gis4 cis, b' ais8 gis fis4\) gis8\( ais dis,4 gis fis eis8 fis~\) fis2 b,2\rest
}
harmony-verse-one = \relative c'' {
  ais2 cis cis ais <gis b> fis dis' <cis fis>4 <cis eis>
  ais2 cis cis ais b <gis cis> <ais cis>2
}
upper-verse-one = { << {\melody-verse-one} \\ {\harmony-verse-one} >> }
bass-verse-one = \relative c, {
  dis2 eis fis fis'4. fis,8 gis2 ais b cis4 cis,
  dis2 eis fis4. cis'8 fis4. fis,8 gis2 cis << {fis,8 cis' fis gis ais2} \\ {fis,2} >>
}
upper-pre-chorus-one = \relative c' {
  <b dis>2 cis'4\( ais gis eis fis2\)
  b,4.\( b8 cis2 dis2 <dis fis>4 <cis eis>\)
  fis2 cis'4\( ais <gis, eis'>2 dis'\)
  << {s1 s2 eis'4 gis,8-2 ais-1} \\ {\stemNeutral b,2\( <fis cis'>4 <fis dis'> <gis b fis'>2\arpeggio \stemDown <eis' gis>\) } >>
}
lower-pre-chorus-one = \relative c {
  b8 fis' cis' dis~ dis fis, cis' dis
  ais, eis' gis ais dis,, dis' fis ais
  gis,4 fis' ais,8 cis fis cis'
  b, fis' cis' dis cis, gis'4 cis,8
  b8 fis' cis' dis~ dis fis, cis' dis
  ais, eis' gis cis dis,, dis' gis ais
  gis, dis' fis b ais,4 b cis8 gis' b fis' cis,2
}
upper-bridge-one = \relative c''' {
  \stemUp cis2.^\( fis,4-5 gis2. cis4 b2. ais8 gis \stemNeutral ais2\) <fis' ais>16 q <fis, ais> q <cis' fis> q <cis, fis> q
  << {cis'2.\( fis,4 gis2. cis4-5 dis2~ dis8 cis b ais b4. ais8 gis2\)} \\
     {<fis ais>8 r r4 fis,4_\markup {\italic "m.s."} ais gis2 eis2_\markup {\italic "m.s."}
      \change Staff = "left" \stemUp fis2~ fis8 \change Staff = "right" \stemDown cis' b ais \tweak font-size #-2 gis1}
  >>
}

lower-bridge-one = \relative c' {
  r8 gis ais fis' r gis,[ ais-1 \change Staff = "right" \stemDown fis'] \change Staff = "left" \stemUp
  r gis, cis eis r gis, cis-1 \change Staff = "right" \stemDown eis
  e\rest dis fis b~-1 b2
  \change Staff = "left" \stemUp
  r4 gis,8 ais r gis ais fis'
  r8 gis, ais fis' r gis,
  ais-1 \change Staff = "right" \stemDown fis' \change Staff = "left" \stemUp
  r gis, cis eis r gis, cis-1 \change Staff = "right" \stemDown eis
  e2\rest \change Staff = "left" <b dis>
}
bass-bridge-one = \relative c, {
  fis2.~ fis8 cis'-2 fis,2.~-5 fis8 cis'-5 fis-2 gis fis4~ fis8 cis fis4-1 fis,1
  fis2.~ fis8 cis'-2 fis,2.~-5 fis8 cis'-5 fis gis fis4~ fis8 cis fis4 \stemNeutral cis,4. gis'8 cis cis cis,4
}
upper-verse-two = \relative c {
  \clef bass
  r8 fis\( ais dis <gis, eis'> cis gis eis\) r fis\( b dis <ais cis>\) fis\( gis ais
  <gis b> gis ais8 b <fis cis'> fis \clef treble fis' gis\) r fis'\( b dis cis16\) b,-1 gis-4 fis eis gis eis cis
  \clef bass r8 fis,\( ais dis\) r cis,\( eis cis'\) r fis,\( b dis <fis, ais cis>4\) \clef treble
  << {b'8\( cis fis,4 b ais gis8 ais~\) ais cis\( b' gis ais4\)} \\ {s4 <b,, dis> q <dis fis> <cis eis> <ais cis fis>2.} >>
  cis'32-2 dis eis-1 fis gis ais b-1 cis-4
}
bass-verse-two = \relative c,, {
  \ottava #-1
  dis2 eis fis~ fis4. fis8 gis2 ais b4. b8 cis cis' gis, cis,
  dis2 eis fis fis'8 fis fis,4 gis2 cis fis,4. fis'8~ fis \appoggiatura eis16 fis8 eis cis
}
violin-pre-chorus-two = \relative c''' {
  dis1\(-5 cis2 fis,4\) eis8\( fis dis2 cis4 fis ais4. gis16 fis gis4\) cis,32 dis eis fis gis ais b cis
  dis1\( cis2 ais4\) gis8\( ais b ais b gis cis4 fis,\) r8 dis'-> r16 dis8.-> cis2-> <fis,, b dis fis>4-- <gis cis eis gis>--
}
upper-pre-chorus-two = \relative c' {
  r4 <fis ais eis'>8 fis' <fis, ais cis>4 <fis ais eis'>8 fis' <cis gis'>4 eis8 fis <ais, cis>2
  r4 <fis b eis>8 fis' <fis, ais>4 fis <dis' fis>4 eis4 <gis, gis'>8 eis' cis4
  r4 <fis, ais eis'>8 cis'~ cis eis~ <fis, ais eis'> fis' <cis gis'>4 gis8 ais <ais cis>4 gis8 cis
  <b dis>2 <cis fis> r8 <dis fis> r16 q8. <cis eis>2 s2
}
bass-pre-chorus-two = \relative c, {
  \ottava #-1
  b8. b16~ b8 b~ b2 ais4. dis,8~ dis4. dis8 gis2 ais b4 bis cis8 gis cis,4
  b'8. b16~ b8 b~ b4. b8 ais4. ais8 dis4 ais8 dis, gis2 ais4 b r8 <cis, cis'>-> r16 q8.-> q2-> <dis dis'>4-- <eis eis'>--
}
upper-chorus-one-midi = \relative c''' {
  << {\repeat unfold 2 {cis32 dis cis dis cis dis cis dis}} \\ {<cis, fis ais>2} >> <cis fis>4 <cis ais'>
  <gis cis eis gis>2 << {cis'8 b ais gis} \\ {<cis, eis>4 r} >>
  <ais cis fis>2 <gis ais cis fis> <b dis fis>4 <b dis b'> <cis eis ais>8 <dis fis> <cis eis gis>8 fis32 gis ais b
  << {\repeat unfold 2 {cis32 dis cis dis cis dis cis dis}} \\ {<cis, fis ais>2} >> <cis fis ais>2
  <cis eis gis>2 <eis cis'>
  <fis dis'>~ q8 <ais cis> <dis, gis b> <fis ais> << {gis1} \\ {<cis, fis>4. gis8~ <gis cis eis>2} >>
  <fis ais cis fis>2~ q8 cis' ais4
}
upper-chorus-one-print = \relative c''' {
  <cis, fis ais cis>2\startTrillSpan <cis fis>4\stopTrillSpan <cis ais'>
  <gis cis eis gis>2 << {cis'8\( b ais gis \stemDown <ais, cis fis>2\)} \\ {\stemNeutral <cis eis>4 r} >>
  <gis ais cis fis>2 <b dis fis>4\( <b dis b'> <cis eis ais>8 <dis fis> <cis eis gis>8\)
  << {\stemNeutral fis32\( gis ais b <cis, fis ais cis>2\startTrillSpan <cis fis ais>2\stopTrillSpan
      <cis eis gis>2 <eis cis'> <fis dis'>~ q8 <ais cis> <dis, gis b> <fis ais> gis1\)}
     \\
     {s8 s1 s1 s1 \once \override NoteColumn.horizontal-shift = -1 <cis, fis>4. gis8~ <gis cis eis>2}
  >>
  <fis ais cis fis>2~ q8 cis' ais4
}
bass-chorus-one = \relative c,, {
  \ottava #-1
  <fis fis'>2. cis'8 fis, eis2.~ eis8 eis dis2 cis' b4. b8 cis gis cis,4
  fis2.~ fis8 cis' eis,1 dis2 dis'4. dis8 cis4. gis8 cis,2
  << {\ottava #0 r8 cis''\( gis' ais cis gis ais4\)} \new Staff {
    \set Staff.explicitKeySignatureVisibility = #all-invisible
    \clef bass \key fis \major
    \once \omit Staff.TimeSignature
    \ottava #-1 fis,,1 \ottava #0
  } >>
}
melody-episode = \relative c''' {
  \key a \major
  \override TupletBracket.bracket-visibility = ##t
  << {s1 s2 r8 <b e>16\( q <e gis> q <gis, b>8\)} \\ {} \\ {\stemUp a4.\( fis16 gis a4. gis16 fis gis4. e16 fis gis2\)-1} >>
  << {s1 s2 \tuplet 6/4 4 {d'8[ cis16 b a g] fis-3[ e d cis-3 b a]}} \\ {} \\ {\stemUp g'4.\( e16 fis g4. d16 e fis4. d16 e-1 fis2\)} >>
  g4.\( fis8 e d e fis e2~ e8 cis d e <b cis fis>1\)
  cis'16 fis, fis cis' fis, cis' cis fis, cis'2

}
oboe-episode = \relative c'' {
  \key a \major
  cis2 cis b \tweak font-size #-2 b b b a a_\markup {\italic "m.s."}
  <\tweak font-size #-2 g e'>4. <fis d'>8 <e cis'> <d b'> <e cis'> <fis d'> <e cis'>4. b'8 ais <cis, gis'> <d fis> e
  fis2~\( fis8 gis ais b-1 cis2\) fis8 gis ais b
}
harmony-episode = \relative c' {
  \key a \major
  r8\sustainOn a-. <b cis>-.\sustainOff <e a>-. r8\sustainOn a,-. <b cis>-.\sustainOff <e a>-.
  r8_\markup {\italic "simile"} e, <gis b> <b e> r e, <gis b> <b e>
  r8 g <b d> <d g> r g, <b d> <d g>
  r8 fis, a d r fis, a d
  \stemNeutral r8 e,\( b' e\) r d,\( b' e\) r cis,\( gis' b ais2\)
  r8 fis\( b cis fis b, cis4\) R1
}
bass-episode = \relative c {
  \key a \major
  \ottava #0
  a2 e' e, e'' g,, g'' d, d'
  \new Staff {
    \set Staff.explicitKeySignatureVisibility = #all-invisible
    \clef bass \key fis \major
    \once \omit Staff.TimeSignature
    \ottava #-1
    e,,,2 d cis2. cis'4 fis,2.~ fis8 fis' fis,1
  }
}
top-pre-chorus-three-midi = \relative c''' {
  s4 s2 s2 r8 b\( ais fis dis4. cis16 b cis2\) r2
  \repeat unfold 4 {cis'32 dis} cis8\( gis
  fis4 eis8 fis gis fis eis fis
  cis'4 ais8 cis\) r8 fis\( eis fis
  cis8 dis cis2\) fis8 cis
  <fis, b dis fis>2-- <eis gis cis eis>--
  \set fingeringOrientations = #'(up)
  << {fis4 gis} \\ {<b, dis>16 fis b fis' eis gis, cis gis'} >>
}
top-pre-chorus-three-print = \relative c''' {
  s4 s2 s2 r8 b\( ais fis dis4. cis16 b cis2\) r2
  cis'4\trill cis8\( gis
  fis4 eis8 fis gis fis eis fis
  cis'4 ais8 cis\) r8 fis\( eis fis
  cis8 dis cis2\) fis8 cis
  <fis, b dis fis>2-- <eis gis cis eis>--
  \set fingeringOrientations = #'(up)
  << {fis4 gis} \\ {<b, dis>16 fis b <fis'-4> eis gis, cis <gis'-4>} >>
}
upper-harmony-pre-chorus-three = \relative c' {
  \stemUp <cis ais'>4\( <fis cis'> <cis ais'> <cis eis gis>4.
  \stemDown <cis fis ais>8~\) q2 b'4 fis <cis fis>2
  <b dis fis>4 <bis dis gis> <cis' eis>2
  r8 fis,4. b8 ais gis ais <cis eis>4 q4 <\tweak font-size #-2 ais \tweak font-size #-2 dis fis>2
  <dis fis>4. q8 <cis eis gis>4 <fis b>
  r8 <cis, dis fis b>-> r16 q8.-> r4 <cis dis eis gis>
}
upper-pre-chorus-three-midi = \relative c'' {
  \key fis \major
  <dis fis cis'>8 r 
  << {\top-pre-chorus-three-midi} \\ {\upper-harmony-pre-chorus-three} >>
}
upper-pre-chorus-three-print = \relative c'' {
  \key fis \major
  <dis fis cis'>8 r
  << {\top-pre-chorus-three-print} \\ {\upper-harmony-pre-chorus-three} >>
}
bass-pre-chorus-three = \relative c, {
  \key fis \major
  \ottava #-1
  b8. b16~ b8 b~ b2 ais4. dis,8~ dis4. dis8 gis2 ais b4 bis cis8 gis cis,4
  b'8. b16~ b8 b~ b4. b8 ais4. ais8 dis4 ais8 dis, gis2 ais4 b r8 <cis, cis'>-> r16 q8.-> q2-> <dis dis'>4 <eis eis'>
}
upper-chorus-two = \relative c'' {
  \stemNeutral
  <cis fis ais>1 <cis eis gis>2 <eis cis'>4 <cis eis gis> <ais dis fis>\( <ais' fis'> <ais cis eis>4 <ais cis>
  <fis b dis>8 b fis dis eis fis <cis eis gis>4\)
  <fis, ais cis fis>2\( <cis' fis ais> <cis eis gis> <eis cis'>4\) <cis gis'>8\( fis16 eis
  <b dis>4\) <fis' dis'>~\( q8 <cis ais' cis> <cis gis' b> <cis fis ais> <cis fis gis>2~ <cis eis gis>4\) cis'-3
  <fis, a fis'>8 e' <a, cis>16 d-5 cis b fis-1 g a b c-1 d e fis
}
bass-chorus-two = \relative c,, {
  \ottava #-1
  <fis fis'>2. cis'8 fis, eis2.~ eis8 eis dis2 cis' b4. b8 cis gis cis,4
  fis2.~ fis8 cis' eis,1 dis2 dis'4. dis8 cis,4. gis'8 cis gis cis,4 d4. a''8 d d, a d,
}
upper-chorus-three = \relative c''' {
  \key g \major
  <g b d g>1\( fis2 d4 fis
  e2 d e\) b'8-> g-> a4->
  g2\( b a d e2~ e8 d c b a1\)
}
harmony-upper-chorus-three = \relative c'' {
  r8 g <b d> g <b g'> g <b d> g
  <a d> fis a fis a fis <a d> fis
  <g b> e <g b> e <fis b> d <fis b> d
  <e g a>4 <e g> d'8 d <d fis>4
  <g, b d>8 g <b d> g <d' g> b <d g> b
  <d fis> a <d fis> d fis d e <fis a>
  <e g c> c <e g> c <e c'> b' a g
  <d fis d'> d' c c a16\( e g a d, e g a\)
}
bass-chorus-three = \relative c, {
  \key g \major
  g2. d'8 g, fis2.~ fis8 fis e2 d' c4. c8 d-> a-> d,4->
  g2.~ g8 d' fis,1 e2 e'4. e8 d4. a8 d,2
}
melody-chorus-last = \relative c'' {
  \key bes \major
  \stemNeutral
  <bes g' bes>4\( <a a'>8 <bes bes'> <c a' c>4 <f, f'> <ees' bes' ees> <d d'>8 <c c'> <bes d f bes>4\)
  <c c'>8\( <d d'> <g, ees' g>4 <bes bes'>8 <c c'> <f, bes f'>4
  <bes bes'>8 <c c'> <d d'> <ees ees'> <d d'> <bes bes'> <c f a c>2\)

  << {\stemNeutral <bes d f bes>4\( <a a'>8 <bes bes'> <c f c'>4 <f, f'>
      \stemUp <ees' bes' ees> <d d'>8 <c c'> <bes bes'>4\)
      <c c'>8\( <d d'>
      \stemNeutral
      <g, ees' g>4 <c ees g c> <bes bes'> <a a'>8 <bes bes'>~\) <bes bes'>1} \\
      {s1 r8 g' \tiny a bes c, \normalsize d \tiny bes' f }
  >>

}
bass-chorus-last = \relative c,, {
  \key bes \major
  ees2 f4. f8 bes4. f8 bes16 c bes8 f bes
  c4. c8 d4. d8 ees4. ees,8 f f c' f,
  bes4. bes8 a4. a8 g4. g8 f4. f8 ees4. ees8 f4. f8
  << {bes1} \\ {\change Staff = "right" r8 f''\( bes d f2\)} >>
}
upper-end = \relative c' {
  <bes d g>2\arpeggio <a c f>\arpeggio <bes ees g>\arpeggio <bes d f>\arpeggio
  <ees, g bes ees>\arpeggio <a d f>\arpeggio << {r2 d''8\( c d f c1\)} \\ {<bes,, d f>1} >>
}
bass-end = \relative c' {
  \ottava #0
  g2 f g8 g bes ees f,2
  c2 f bes,8\sustainOn f' bes d f bes, d f \change Staff = "right" <bes, d f bes>1\arpeggio
}


upper-midi = \relative c' {
  \set Staff.pedalSustainStyle = #'bracket
  \key fis \major
  \clef treble
  \tempo 4 = 93
  \upper-intro-a
  \upper-intro-b-easy
  \upper-verse-one
  \upper-pre-chorus-one
  \upper-bridge-one
  \upper-verse-two
  << {\violin-pre-chorus-two} \\ {\upper-pre-chorus-two} >>
  \upper-chorus-one-midi
  << {\melody-episode} \\ {\oboe-episode} >>
  \upper-pre-chorus-three-midi
  \upper-chorus-two
  << {\upper-chorus-three} \\ {\harmony-upper-chorus-three} >>
  \melody-chorus-last
  \upper-end
  \bar "|."
}

lower-midi = \relative c {
  \set Staff.pedalSustainStyle = #'bracket
  \key fis \major
  \clef bass
  \lower-intro-midi
  \bass-verse-one
  \lower-pre-chorus-one
  << {\lower-bridge-one} \\ {\bass-bridge-one} >>
  \bass-verse-two
  \bass-pre-chorus-two
  \bass-chorus-one
  << {\harmony-episode} \\ {\bass-episode} >>
  \bass-pre-chorus-three
  \bass-chorus-two
  \bass-chorus-three
  \bass-chorus-last
  \bass-end
  \bar "|."
}

upper-print = \relative c' {
  \set Staff.pedalSustainStyle = #'bracket
  \key fis \major
  \clef treble
  \tempo 4 = 93
  \upper-intro-a
  \upper-intro-b-easy
  \upper-verse-one
  \upper-pre-chorus-one
  \upper-bridge-one
  \upper-verse-two
  << {\violin-pre-chorus-two} \\ {\upper-pre-chorus-two} >>
  \upper-chorus-one-print
  << {\melody-episode} \\ {\oboe-episode} >>
  \upper-pre-chorus-three-print
  \upper-chorus-two
  << {\upper-chorus-three} \\ {\harmony-upper-chorus-three} >>
  \melody-chorus-last
  \upper-end
  \bar "|."
}

lower-print = \relative c {
  \set Staff.pedalSustainStyle = #'bracket
  \key fis \major
  \clef bass
  \lower-intro-print
  \bass-verse-one
  \lower-pre-chorus-one
  << {\lower-bridge-one} \\ {\bass-bridge-one} >>
  \bass-verse-two
  \bass-pre-chorus-two
  \bass-chorus-one
  << {\harmony-episode} \\ {\bass-episode} >>
  \bass-pre-chorus-three
  \bass-chorus-two
  \bass-chorus-three
  \bass-chorus-last
  \bass-end
  \bar "|."
}

dynamics = {
  s1\mp s1 s1\cresc s1\f
  s1\mf s1 s1 s1 s1 s1 s1 s2\> s2\!
  s1\p \repeat unfold 7 {s1}
  s1\mf \repeat unfold 7 {s1}
  s1\mp \repeat unfold 4 {s1} s2 s4 s4\mf s1 s1
  \repeat unfold 8 {s1} s2
  s1\f \repeat unfold 8 {s1}
  s1\mf s1 s1 s2 s2\< s1\f s1 s1 s1\mf
  \repeat unfold 8 {s1} s2\<
  s1\f \repeat unfold 7 {s1} s2 s2\<
  s1\! \repeat unfold 7 {s1}
  s1\f \repeat unfold 6 {s1} s2\> s2\!
  s1\p s2 s2_\markup {\italic "rit." }
}

guitarchords = \chordmode {
  b2:sus2 cis dis:m7 cis b:sus2 cis b:sus2 cis
  dis:m cis fis:sus4 fis gis:m7 fis b:7 cis4:sus4 cis
  dis2:m cis fis:sus4 fis gis:m cis:sus4 fis1
  b1 ais2:m7 dis:m gis:m7 fis b cis
  b1 ais2:m7 dis:sus4 gis:m7 fis4 b cis2:sus4 cis
  fis1 cis:/fis b fis
  fis cis:/fis b cis
  dis2:m cis b fis gis:m fis b cis
  dis:m cis b fis gis:m7 cis fis1
  b ais2:m7 dis:m7 gis:m fis b4 gis cis2
  b1 ais2:m7 dis:m7 gis:m fis b:sus2 cis b4 cis
  fis1 cis dis2:m7 cis b cis
  fis1 cis b cis2:sus4 cis fis1
  a1 e g d e2:m e:m7 cis1:m7 fis:sus4 fis
  b1 ais4.:m7 dis8:m7~ dis2:m7 gis:m7 fis b4 gis cis2
  b1 ais2:m7 dis:m7 gis:m ais4:m7 b b2:sus2 cis b4 cis
  fis1 cis dis2:m7 ais:m b cis
  fis1 cis b cis2:sus4 cis d1
  g1 d e2:m b:m c d
  g1 d c d
  ees2 f bes:sus4 bes c2:m bes ees f
  bes2 f ees bes c:m f bes1
  g2:m f ees bes c:m7 d:m bes1
}

lyricsmain = \lyricmode {
結 伴 創 將 來  多 麼 的 美
你 的 路  我 的 途  再 也 不 分 己 與 彼
有 浪 有 風 來  不 捨 不 棄  每 一 明 天 也 贈 你

未 懂 占 卜  也 不 懂 命 理
卻 可 先 知 我 們  同 步 注 定 了 不 起
令 我 不 普 通  變 得 堅 毅 無 忌
幕 後 有 一 個 最 大 原 因  因 為 你

每 望 向 將 來  都 找 到 你
我 所 夢  我 所 期  全 部 喝 彩 因 你 起
你 是 我 將 來  不 捨 不 棄  我 的 明 天 創 自 你

沒 仰 天 觀 星  看 星 宿 日 記
無 問 獅 子 雙 魚  前 面 有 沒 有 驚 喜
一 早 知  幾 多 風 吹 與 飛
活 著 也 很 快 樂  自 尋 到 你

天 佑 我 的 愛 人  給 她 永 遠 笑 聲  並 常 對 她 偏 愛
天 佑 我 的 愛 人  有 她 不 再 覺 得 生 命 無 奈  敢 愛

未 懂 占 卜  也 不 懂 命 理
卻 可 先 知 我 們  同 步 注 定 了 不 起
若 我 不 普 通  變 得 堅 毅 無 忌
並 沒 秘 方 這 是 純 因 你

天 佑 我 的 愛 人  這 日  明 天  一 世  把 她 寵 愛
天 佑 我 的 愛 人  有 她 不 再 覺 得 生 命 無 奈  敢 愛

天 佑 我 的 愛 人  這 日  明 天  一 世  把 她 寵 愛
天 佑 我 的 愛 人  有 她 不 再 覺 得 生 命 無 奈  敢 愛

你 是 我 將 來  不 捨 不 棄
每 一 明 天 愛 著 你
}

melody = \relative c' {
  \key fis \major
  \clef treble
  R1 R1 R1 R1
  fis4 eis8 fis gis4 cis, b' ais8 gis fis4
  gis8 ais dis,4 fis8 gis cis,4
  fis8 gis ais b ais fis gis4 r
  fis4 eis8 fis gis4 cis, b' ais8 gis fis4
  gis8 ais dis,4 gis fis eis8 fis~ fis2 r4

  ais8( b) cis8. cis16~ cis8 cis~ cis4 cis8 dis cis4 eis,8 fis~ fis4
  gis8 ais b( ais) gis fis cis4 dis8 eis fis eis fis ais gis4
  ais8 b cis8. cis16~ cis8 cis~ cis4 cis8 dis cis4 ais8 gis ais4 ais8 ais
  b cis b ais gis4 fis4 dis'2 cis4 eis,8 fis~ fis2 r
  R1 R1 R1 R1 R1 R1 R1

  fis4 eis8 fis gis4 cis, b' ais8 gis fis4
  gis8 ais dis,4 fis8 gis cis,4
  fis8 gis ais b ais fis gis4 r
  fis4 eis8 fis gis4 cis, b' ais8 gis fis4
  gis8 ais dis,4 gis fis eis8 fis~ fis2 r4

  ais8 b cis8. cis16~ cis8 cis~ cis4 cis8 dis cis4 eis,8 fis~ fis4
  gis8 ais b ais gis( fis) cis4 dis8 eis fis eis fis ais gis4 r4
  cis8. cis16~ cis8 cis~ cis4 cis8 dis cis4 ais8 gis ais4 ais8 ais
  b cis b ais gis4 fis4 dis'2 cis2 \time 2/4 r2 \time 4/4

  cis2 ais8( b) cis dis cis2 gis4
  ais8 gis fis4 fis8 gis ais4 gis8 fis dis' eis dis cis~ cis2
  cis2 ais8( b) cis dis cis2 gis4
  dis'8 eis dis cis cis dis cis8. ais16~ ais8 fis gis2 r4 ais4 fis2 r2

  R1 R1 R1 R1 R1 R1 R1 r2 r4 ais8( b)
  cis8. cis16~ cis8 cis~ cis4 cis8 dis cis4 eis,8 fis~ fis4
  gis8 ais b( ais) gis fis cis4 dis8 eis fis eis fis ais gis4
  ais8 b cis8. cis16~ cis8 cis~ cis4 cis8 dis cis4 ais8 gis ais4 ais8 ais
  b cis b( ais) gis4 fis dis'2 cis2 \time 2/4 r2 \time 4/4

  cis2 ais8( b) cis dis cis2 gis4
  ais8 gis fis4 fis' eis cis dis8 eis dis cis~ cis2
  cis2 ais8( b) cis dis cis2 gis4
  dis'8 eis dis cis cis dis cis8. ais16~ ais8 fis gis2 r4 ais4 fis2 r2

  \key g \major
  d'2 b8( c) d e d2 a4 b8 a g4 g' fis d e8 fis e d~ d2
  d2 b8( c) d e d2 a4 e'8 fis e d d e d8. b16~ b8 g a2 r4 g'
  \key bes \major f1 
  \repeat unfold 7 {R1}
  bes,4
  a8 bes c4 f, ees' d8 c bes4 c8 d g,4 c bes4 a8 bes~ bes2 r2 R1

}


\book {
\bookOutputSuffix "original-key"
\score {
  <<
    \new ChordNames {
      \guitarchords
    }
    \new Staff = "melodystaff" <<
      \set Staff.midiInstrument = #"choir aahs"
      \set Staff.instrumentName = #"Voice"
      \new Voice = "melody" {
        \melody
      }
      \context Lyrics = "lyrics" { \lyricsto "melody" { \lyricsmain } }
    >>
    \new PianoStaff <<
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.instrumentName = #"Piano"
      \new Staff = "right" { \upper-midi }
      \new Staff = "left" { \lower-midi }
    >>
  >>
  \midi {
    \context {
      \ChordNameVoice \remove Note_performer
    }
  }
}
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \guitarchords
    }
    \new Staff = "melodystaff" \with {
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    }
    <<
      \set Staff.midiInstrument = #"choir aahs"
      \set Staff.instrumentName = #"Voice"
      \new Voice = "melody" {
        \melody
      }
      \context Lyrics = "lyrics" { \lyricsto "melody" { \lyricsmain } }
    >>
    \new PianoStaff <<
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.instrumentName = #"Piano"
      \new Staff = "right" { \upper-print }
      \new Dynamics = "Dynamics_pf" \dynamics
      \new Staff = "left" { \lower-print }
    >>
  >>
  \layout {
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      \Staff \RemoveEmptyStaves
    }
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      \Dynamics \RemoveEmptyStaves
    }
    \context {
      \Score
      % Remove all-rest staves also in the first system
      \override VerticalAxisGroup.remove-first = ##t
      % If only one non-empty staff in a system exists, still print the starting bar
      \override SystemStartBar.collapse-height = #1
    }
    \context {
      \ChordNames
      \override ChordName #'font-size = #-3
    }
  }
}
}

