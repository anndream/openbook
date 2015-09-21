<%page args='part'/>
% if part=='Vars':
<%
	# vim: set filetype=lilypond :
	import attr
	version=attr.Version()
	version['doChords']=True
	version['doChordBars']=True
	version['doGuitar']=True
	version['doExtra']=True
	attributes.addVersion('My', version)
	attributes.setDefaultVersionName('My')

	attributes['heb']=True

	attributes['title']=u'גשם'
	attributes['style']='Israeli'
	attributes['composer']=u'יחיאל אמסלם'
	attributes['poet']=u'יעקב גלעד'
	attributes['piece']=u'בלדת רוק'
	attributes['singer']=u'אלי לוזון'
	attributes['typesetter']=u'מרק ולצר <mark.veltzer@gmail.com>'

	attributes['completion']='5'
	attributes['uuid']='c562b5fa-c345-11e0-995c-0019d11e5a41'

	attributes['idyoutube1']='1CBj7q51-BQ'
	attributes['lyricsurl']='http://www.mp3music.co.il/lyrics/448.html'
%>
% endif

% if part=='ChordsMy':
\chordmode {
	\startChords
	\startSong

	\myWordMark "Intro"
	\startPart
	g2. g4:sus4 | g2. g4:sus4 |
	\endPart

	\myWordMark "Verse"
	\startPart
	\repeat volta 2 {
		\repeat volta 2 {
			g1 | d | c2 d | e1:m |
		}
		d | \myEndLine
	}
	\endPart

	\myWordMark "Chorus"
	\startPart
	e1:m | d | c2 d | g2. g4/fis | \myEndLine
	e1:m | d | c2 d | e:m a:m | \myEndLine
	b:m c | des:m7.5- b:m | g c | e1 | \myEndLine
	\endPart

	\myWordMark "Verse"
	\startPart
	\repeat volta 2 {
		a | e | d2 e | fis1:m |
	}
	e | \myEndLine
	\endPart

	\myWordMark "Chorus"
	\startPart
	fis:m | e | d2 e | fis1:m | \myEndLine
	fis:m | e | d2 e | \time 2/4 fis2:m | \myEndLine
	\repeat volta 2 {
		\time 4/4 b2:m cis:m | d ees:m7.5- | cis:m a | d fis | \time 2/4 fis2 | \myEndLine
	}
	\endPart

	%% commented in order to see the closing repeats
	%%\endSong
	%%\endChords
}
% endif

% if part=='Extra':
%% Lyrics
\verticalSpace
\verticalSpace
\markup {
	\small { %% \teeny \tiny \small \normalsize \large \huge
		\fill-line {
			\right-column {
				"אין מקום לדאגה היי שקטה"
				"אני איתך, את לא לבד לעת עתה"
				"עכשיו הכל זורם כאן במנוחה"
				"ואת בוכה, ואת בוכה."
				\null
				"ספרי לי מה כבד עלייך"
				"את כל מה שחבוי בך ונרדם"
				"אני אמחה את דמעותייך"
				"ורק שלא תבכי עוד לעולם."
			}
			\null
			\right-column {
				"ברחובות כיבו מזמן את הניאון"
				"את נראית לי עייפה נלך לישון"
				"האור דולק בחדר השני"
				"אבל מישהו בוכה וזה לא אני."
				\null
				"אני רוצה לשמור עלייך ועלי"
				"היום עבר עלינו יום קשה מדי"
				"בחוץ יורדים עכשיו גשמי ברכה"
				"ואת בוכה, ואת בוכה."
				\null
				"ספרי לי מה כבד עלייך"
				"את כל מה שחבוי בך ונרדם"
				"אני אמחה את דמעותייך"
				"ורק שלא תבכי עוד לעולם."
			}
		}
	}
}
% endif
