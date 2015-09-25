% Mudela file generated by Denemo version 0.5.9

%http://www.gnu.org/software/denemo/denemo.html

\header{
    title = "Satin Doll"
    subtitle = ""
    composer = "Strayhorn, Ellington \& Mercer"
    enteredby = "Silvia Bertoluzza"
    tagline = #tagline
    head = #instrument
}

Staff = \notes \context Voice = $Staff {
    \property Staff.midiInstrument = "acoustic grand"
    \time 4/4
    \key c \major
    \clef treble
    \repeat volta 2	{
	a'8. g'16 a'8 g' ~ g' a'4. |
	r8 a'4. g'8 a'4. |
	b'8. a'16 b'8 a' ~ a' b'4. |
	r8 b'4. a'8 b'4. |
				%5
	r8 d''4. c''8 d''4. |
	r8 bes'4. aes'4 bes'8 g' ~ |
    }
    \alternative {
	{ g'1 ~ | g'4 r r2 | }
	{ g'1 | r2 r4 r8 g' |}
    }
    c''4 bes'8. a'16 g'8. a'16 bes'4 |
    c'' bes'8. a'16 g'8. a'16 bes'8 c'' ~ |
    c''1 ~ |
    c''2. r8 c'' |
				%15
    d''8. c''16 b'8 a' ~ a'8. b'16 c''4 |
    d''8. c''16 b'8 a' ~ a'8. b'16 c''8 d'' ~ |
    d''1 ~ |
    d''8 r r4 r2 |
    a'8. g'16 a'8 g' ~ g' a'4. |
    r8 a'4. g'8 a'4. |	b'8. a'16 b'8 a' ~ a' b'4. |
    r8 b'4. a'8 b'4. |
				%5
    r8 d''4. c''8 d''4. |
    r8 bes'4. aes'4 bes'8 g' ~ |
    g'1 ~ |
    g'4 r r2 
    \bar "|."
}


texta = \lyrics {
    Ci -- ga -- rette hol -- der, which wigs me o -- ver my shoul -- der
    he digs me, out -- cat -- ting, that sa -- tin doll.
    _  He's no -- bo -- dy's fool so I'm playn' it as cool as can be.
    I'll give it a whirl but I ain't for no boy catch -- ing me.
    Te -- le -- phone num -- bers, well you know, do -- in' my 
    rum -- bas, with u -- no, and that' -- n, my sa -- tin doll.
}

textb = \lyrics {
    Ba -- by shall we go out skip -- ping, care -- ful a -- mi -- go, you're
    flip -- ping, speaks la -- tin, my sa -- tin doll.
}

accompaniment = \chords {
    \repeat volta 2 {d2:min g:7 d:min g:7
		     e:min a:7 e:min a:7 a:min d:7
		     aes:min des:7}
    \alternative{
	{c2:7 b:7 bes:7 a:7}
	{c1*2}
    }
    g1 c:7 f1*2
    a1:min d:7 g1*2:7
    d2:min g:7 d:min g:7 e:min a:7 e:min a:7
    a:min d:7 aes:min des:7 c1 a:7
}


\midi { \tempo 4 = 60 }

StaffStaff = \context Staff = StaffStaff <
    \property Staff.automaticMelismata = ##t
    \Staff
>

Score = \notes <
    \context ChordNames \accompaniment
				%\property ChordNames.ChordName \set #'extra-offset = #70.
    \property ChordNames.SeparatingGroupSpanner \set #'kern = #70
    \addlyrics
    \StaffStaff
    \context Lyrics < \texta \textb >
>
