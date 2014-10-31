--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actor; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE actor (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.actor OWNER TO rglassett;

--
-- Name: casting; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE casting (
    movieid integer NOT NULL,
    actorid integer NOT NULL,
    ord integer
);


ALTER TABLE public.casting OWNER TO rglassett;

--
-- Name: dept; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE dept (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.dept OWNER TO rglassett;

--
-- Name: movie; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE movie (
    id integer NOT NULL,
    title character varying,
    yr integer,
    score double precision,
    votes integer,
    director integer
);


ALTER TABLE public.movie OWNER TO rglassett;

--
-- Name: nobel; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE nobel (
    yr integer,
    subject character varying,
    winner character varying
);


ALTER TABLE public.nobel OWNER TO rglassett;

--
-- Name: route; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE route (
    num character varying NOT NULL,
    company character varying NOT NULL,
    pos integer NOT NULL,
    stop integer
);


ALTER TABLE public.route OWNER TO rglassett;

--
-- Name: stops; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE stops (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.stops OWNER TO rglassett;

--
-- Name: teacher; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE teacher (
    id integer NOT NULL,
    dept integer,
    name character varying,
    phone integer,
    mobile character varying
);


ALTER TABLE public.teacher OWNER TO rglassett;

--
-- Name: world; Type: TABLE; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE TABLE world (
    name character varying NOT NULL,
    continent character varying,
    area integer,
    population integer,
    gdp bigint
);


ALTER TABLE public.world OWNER TO rglassett;

--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY actor (id, name) FROM stdin;
1	Woody Allen
2	Clint Eastwood
3	Robert De Niro
4	Sean Connery
5	Sylvester Stallone
6	Harrison Ford
7	Robin Williams
8	Tom Hanks
9	Arnold Schwarzenegger
10	Kevin Costner
11	Alfred Hitchcock
12	Al Pacino
13	Bruce Willis
14	Steve Martin
15	Dan Aykroyd
16	Gene Hackman
17	Nicolas Cage
18	Steven Spielberg
19	Tom Cruise
20	Michael Douglas
21	Ron Howard
22	Mel Gibson
23	John Carpenter
24	Danny DeVito
25	Tim Robbins
26	Johnny Depp
27	Dustin Hoffman
28	Francis Ford Coppola
29	Mel Brooks
30	Kurt Russell
31	Brian De Palma
32	John Cusack
33	Eddie Murphy
34	John Travolta
35	Jeff Bridges
36	Robert Redford
37	Rob Reiner
38	Barry Levinson
39	Anthony Hopkins
40	Julia Roberts
41	Denzel Washington
42	Paul Newman
43	Jack Nicholson
44	Robert Duvall
45	Michelle Pfeiffer
46	Kevin Bacon
47	Mike Nichols
48	Kenneth Branagh
49	Wesley Snipes
50	Matthew Broderick
51	Dennis Quaid
52	Michael Keaton
53	Keanu Reeves
54	Sigourney Weaver
55	Chevy Chase
56	Val Kilmer
57	Meg Ryan
58	Charlie Sheen
59	Terry Gilliam
60	Warren Beatty
61	Kevin Kline
62	John Landis
63	Meryl Streep
64	Demi Moore
65	Blake Edwards
66	John Badham
67	Robert Zemeckis
68	Alan Parker
69	Oliver Stone
70	Michael J. Fox
71	Robert Downey Jr.
72	Bill Murray
73	Harvey Keitel
74	Richard Gere
75	Cary Grant
76	Kevin Spacey
77	Richard Dreyfuss
78	Martin Scorsese
79	Billy Wilder
80	Sidney Lumet
81	Norman Jewison
82	Stanley Kubrick
83	Michael Caine
84	Sandra Bullock
85	Marlon Brando
86	Peter Weir
87	Lawrence Kasdan
88	Christian Slater
89	Samuel L. Jackson
90	Roman Polanski
91	Morgan Freeman
92	Sydney Pollack
93	Sean Penn
94	Diane Keaton
95	Hugh Grant
96	William Hurt
97	David Cronenberg
98	Gary Oldman
99	Christopher Walken
100	Liam Neeson
101	Nick Nolte
102	Bill Pullman
103	Peter Hyams
104	Glenn Close
105	Joel Schumacher
106	Jack Lemmon
107	Tony Scott
108	Harold Ramis
109	Ivan Reitman
110	Ridley Scott
111	Joel Coen
112	Susan Sarandon
113	James Woods
114	Alec Baldwin
115	Peter Sellers
116	Winona Ryder
117	Jackie Chan
118	James Stewart
119	Tommy Lee Jones
120	Steve Guttenberg
121	Leslie Nielsen
122	Brendan Fraser
123	Frank Oz
124	Drew Barrymore
125	Dennis Hopper
126	Jim Carrey
127	Jack Warden
128	William Shatner
129	Garry Marshall
130	Bill Paxton
131	Emilio Estevez
132	Walter Matthau
133	Wes Craven
134	Christopher Lloyd
135	Donald Sutherland
136	Sharon Stone
137	Jean-Claude Van Damme
138	George Clooney
139	David Lynch
140	Wolfgang Petersen
141	Sam Raimi
142	Jamie Lee Curtis
143	Walter Hill
144	John Hughes
145	Charles Chaplin
146	Roger Donaldson
147	Rick Moranis
148	Tim Burton
149	Stephen Herek
150	Joe Dante
151	Ethan Hawke
152	Joan Cusack
153	Neil Jordan
154	Jeff Daniels
155	Robert Altman
156	Chris Columbus
157	Forest Whitaker
158	Billy Crystal
159	Ben Affleck
160	Max von Sydow
161	Jon Voight
162	Willem Dafoe
163	John Turturro
164	Gregory Peck
165	Charlton Heston
166	Whoopi Goldberg
167	Donald Pleasence
168	Daniel Day-Lewis
169	Nicole Kidman
170	John Wayne
171	Steven Seagal
172	Geena Davis
173	Kathleen Turner
174	Ed Harris
175	Jim Jarmusch
176	Fred Ward
177	Ralph Fiennes
178	Roy Scheider
179	John Goodman
180	John Candy
181	Matt Damon
182	Faye Dunaway
183	William Holden
184	Bridget Fonda
185	Leonardo DiCaprio
186	Steve Buscemi
187	Christina Ricci
188	Adam Sandler
189	Jim Abrahams
190	Jeff Goldblum
191	Mia Farrow
192	Sam Neill
193	Leonard Nimoy
194	Julianne Moore
195	John Cleese
196	John McTiernan
197	Howard Hawks
198	James Cameron
199	Michael Apted
200	Herbert Ross
201	Paul Verhoeven
202	Oliver Platt
203	Melanie Griffith
204	John Woo
205	Richard Linklater
206	Spike Lee
207	Barbra Streisand
208	Akira Kurosawa
209	Richard Donner
210	Renny Harlin
211	Gwyneth Paltrow
212	Phillip Noyce
213	Humphrey Bogart
214	Andy Garcia
215	Jodie Foster
216	Chris O'Donnell
217	J.T. Walsh
218	Woody Harrelson
219	Pierce Brosnan
220	Hank Azaria
221	Carl Reiner
222	Cary Elwes
223	Matt Dillon
224	Kiefer Sutherland
225	Anne Bancroft
226	William H. Macy
227	John Mahoney
228	Andie MacDowell
229	Ewan McGregor
230	John Heard
231	Burt Reynolds
232	Patrick Swayze
233	Goldie Hawn
234	Danny Glover
235	Richard Attenborough
236	Roger Moore
237	Mike Myers
238	Ned Beatty
239	Ian Holm
240	Matthew McConaughey
241	Mark Wahlberg
242	Ben Stiller
243	Uma Thurman
244	Michael Madsen
245	Christian Bale
246	Dan Hedaya
247	Albert Brooks
248	Bob Hoskins
249	Annette Bening
250	James Caan
251	Jennifer Lopez
252	Lance Henriksen
253	Orson Welles
254	Barbara Hershey
255	Gary Sinise
256	James Spader
257	Sean Astin
258	Brad Pitt
259	Joe Pesci
260	Antonio Banderas
261	John Leguizamo
262	Jonathan Lynn
263	Christopher McDonald
264	William Friedkin
265	Bette Midler
266	Clyde Geronimi
267	Gene Wilder
268	Sergio Leone
269	Wim Wenders
270	Trey Parker
271	Gus Van Sant
272	Fred Schepisi
273	Ang Lee
274	Richard Lester
275	Alan J. Pakula
276	George Roy Hill
277	Kirsten Dunst
278	Elisabeth Shue
279	Steve McQueen
280	Holly Hunter
281	Jonathan Demme
282	Cameron Diaz
283	Adrian Lyne
284	Macaulay Culkin
285	Howard Deutch
286	Robert Wise
287	John Ford
288	Philip Kaufman
289	Christopher Lambert
290	Roland Emmerich
291	Andrew Davis
292	Stephen Frears
293	John Boorman
294	Patrick Stewart
295	Harry Dean Stanton
296	Robert Loggia
297	Kim Basinger
298	Billy Bob Thornton
299	Christopher Reeve
300	Danny Aiello
301	Peter Boyle
302	Benicio Del Toro
303	Lea Thompson
304	Malcolm McDowell
305	Robert Prosky
306	Martin Sheen
307	Bonnie Hunt
308	Gabriel Byrne
309	Randy Quaid
310	Madonna
311	Daniel Stern
312	John Huston
313	Will Patton
314	John Lithgow
315	Mira Sorvino
316	Joan Allen
317	Stockard Channing
318	Tom Sizemore
319	Mickey Rourke
320	Richard Benjamin
321	Kathy Bates
322	Audrey Hepburn
323	Freddie Prinze Jr.
324	Russell Crowe
325	Rene Russo
326	Peter Jackson
327	Peter Weller
328	Neve Campbell
329	Ben Kingsley
330	Dennis Dugan
331	Laurence Fishburne
332	Griffin Dunne
333	Minnie Driver
334	Joe Mantegna
335	David Arquette
336	J&#252;rgen Prochnow
337	Maggie Smith
338	Treat Williams
339	James Remar
340	Shirley MacLaine
341	Michael McKean
342	Claire Danes
343	Anjelica Huston
344	Richard Crenna
345	Henry Fonda
346	Don Siegel
347	Robert Carlyle
348	Giovanni Ribisi
349	Ellen Barkin
350	Jennifer Jason Leigh
351	Ian McKellen
352	Christopher Guest
353	Juliette Lewis
354	Charles Durning
355	Ving Rhames
356	Tom Skerritt
357	Bruno Kirby
358	Janeane Garofalo
359	Emma Thompson
360	George Lucas
361	Penny Marshall
362	Wilford Brimley
363	Denis Leary
364	John Waters
365	Steve Miner
366	G&#233;rard Depardieu
367	Diane Lane
368	Rosanna Arquette
369	Sally Field
370	Laurence Olivier
371	Michael Lehmann (I)
372	Rob Lowe
373	Lloyd Bridges
374	Michael Caton-Jones
375	Andrew Bergman
376	Rob Cohen
377	Hugh Wilson
378	Kevin Reynolds
379	George A. Romero
380	Aidan Quinn
381	Ice Cube
382	Edward Zwick
383	Randal Kleiser
384	Peter Segal
385	Burgess Meredith
386	Peter Greenaway
387	Lasse Hallstr&#246;m
388	Terence Young
389	Luc Besson
390	Lewis Gilbert (II)
391	Cameron Crowe
392	Frank Capra
393	Yun-Fat Chow
394	Pedro Almod&#243;var
395	Brian Levant
396	John Singleton
397	Charles Shyer
398	Krzysztof Kieslowski
399	Federico Fellini
400	Bubba Smith
401	Michael Hoffman
402	Richard Fleischer
403	Amy Heckerling
404	Kirk Douglas
405	Franklin J. Schaffner
406	Patricia Arquette
407	Roger Spottiswoode
408	Milos Forman
409	Don Bluth
410	Joseph Ruben
411	Jon Turteltaub
412	Jeremiah S. Chechik
413	Tom Wilkinson (I)
414	David Fincher
415	Ron Underwood
416	Michael Rooker
417	David Morse
418	Michael Ritchie (I)
419	Spencer Tracy
420	Ingmar Bergman
421	Jan de Bont
422	Barry Sonnenfeld
423	James Foley
424	Joe Johnston
425	Betty Thomas (I)
426	Anne Heche
427	Edward Norton
428	Stanley Donen
429	Katharine Hepburn
430	Tom Berenger
431	James Cromwell
432	Viggo Mortensen
433	James Rebhorn
434	John C. McGinley
435	Hal Holbrook
436	Carol Kane
437	M. Emmet Walsh
438	John Hurt
439	Jeffrey Jones
440	Geoffrey Rush
441	Chazz Palminteri
442	Joaquin Phoenix
443	Philip Seymour Hoffman
444	Quentin Tarantino
445	Kevin Smith
446	Sarah Jessica Parker
447	Chris Farley
448	Jon Favreau
449	Vincent D'Onofrio
450	Burt Young
451	Tch&#233;ky Karyo
452	Helen Mirren
453	Martin Balsam
454	Rupert Everett
455	Michael Wincott
456	Loren Dean
457	Tim Curry
458	Kevin Dunn (I)
459	John C. Reilly
460	Giancarlo Esposito
461	Kelly Preston
462	Carrie Fisher
463	Sissy Spacek
464	David Graf
465	Martin Lawrence
466	Alan Arkin
467	Madeline Kahn
468	Tom Everett Scott
469	Will Smith
470	Charles Grodin
471	Maury Chaykin
472	James Coburn
473	Brian Dennehy
474	Natalie Wood
475	River Phoenix
476	George Kennedy
477	Cheech Marin
478	Matthew Lillard
479	George C. Scott
480	Jennifer Aniston
481	Oliver Reed
482	R. Lee Ermey
483	Vince Vaughn
484	Delroy Lindo
485	Edward Burns (I)
486	David Duchovny
487	Angelina Jolie
488	Virginia Madsen
489	Don Taylor (I)
490	Joan Plowright
491	Alicia Silverstone
492	Ryan Phillippe
493	Michael Biehn
494	Cloris Leachman
495	Frances McDormand
496	Catherine Deneuve
497	Jane Fonda
498	Ronny Cox
499	Jessica Lange
500	Jonathan Frakes
501	Penelope Ann Miller
502	Talia Shire
503	John Malkovich
504	Dianne Wiest
505	Fran&#231;ois Truffaut
506	David Paymer
507	Bob Gunton
508	John Gielgud
509	Simon Callow
510	Michael Winslow
511	Steve Zahn
512	Matthew Modine
513	Vanessa Redgrave
514	Tobey Maguire
515	Brion James
516	Xander Berkeley
517	Craig T. Nelson
518	Martin Landau
519	Christopher Plummer
520	Stephen Tobolowsky
521	Raymond J. Barry
522	Annabella Sciorra
523	Jay Mohr
524	Salma Hayek
525	Jonathan Pryce
526	David Chappelle
527	Denholm Elliott
528	Kevin Pollak
529	Mary Steenburgen
530	Hector Elizondo
531	Catherine O'Hara
532	James Doohan
533	Marisa Tomei
534	Lauren Bacall
535	Lauren Holly
536	Robin Wright
537	Bill Duke
538	Nigel Hawthorne
539	Elizabeth Taylor
540	Mako
541	Lindsay Crouse
542	Burt Lancaster
543	David Thewlis
544	Bruce Campbell (I)
545	Robert Englund
546	James Earl Jones
547	Josh Mostel
548	Lili Taylor
549	Gina Gershon
550	Ben Gazzara
551	Dom DeLuise
552	Mark Hamill
553	Isabella Rossellini
554	Hume Cronyn
555	Teri Garr
556	Rod Taylor
557	Emily Watson
558	Shelley Duvall
559	Brian Blessed
560	Philip Baker Hall
561	Jessica Tandy
562	Tom Holland (I)
563	Gary Busey
564	William Hickey (I)
565	Sam Shepard
566	Richard E. Grant
567	Olympia Dukakis
568	Alfre Woodard
569	Ryan O'Neal
570	David Warner
571	Nicholas Meyer
572	Nick Park
573	David Zucker
574	James L. Brooks
575	Jane Campion
576	James Ivory
577	Russell Mulcahy
578	Toni Collette
579	Bob Clark (III)
580	Jonathan Kaplan (I)
581	Jim Sheridan
582	Mike Judge
583	Mike Leigh
584	Bille August
585	Mike Newell
586	Tom Shadyac
587	Mike Starr (I)
588	Shelley Long
589	Mimi Leder
590	Cuba Gooding Jr.
591	Daryl Hannah
592	Jennifer Love Hewitt
593	Neil LaBute
594	Beverly D'Angelo
595	Martin Brest
596	Josh Brolin
597	Danny Boyle
598	Bernardo Bertolucci
599	Donald Petrie
600	Jeannot Szwarc
601	DeForest Kelley
602	Sarah Michelle Gellar
603	Jean Reno
604	Jay Roach
605	Judy Davis
606	David Mamet
607	Curtis Hanson
608	Peter O'Toole
609	Kristin Scott Thomas
610	Richard Pryor
611	Kyle MacLachlan
612	Peter Bogdanovich
613	William Baldwin
614	Frank Marshall (I)
615	Lars von Trier
616	Harold Becker
617	Fred Zinnemann
618	Hal Needham
619	Louis Malle
620	William Wyler
621	Anthony Minghella
622	Lou Diamond Phillips
623	Paul Reubens
624	Lee Tamahori
625	Peter Sallis
626	Gene Kelly
627	Geoff Murphy
628	George Cukor
629	George Dzundza
630	Gregory Hoblit
631	George P. Cosmatos
632	Les Mayfield
633	Raja Gosnell
634	Graham Chapman
635	Glenne Headly
636	Guy Hamilton (I)
637	Illeana Douglas
638	Rub&#233;n Blades
639	Bryan Singer
640	Kate Winslet
641	Kathryn Bigelow
642	Ron Shelton
643	Veronica Cartwright
644	Keith Gordon
645	Timothy Hutton
646	Anthony Michael Hall
647	Kate Nelligan
648	Roddy McDowall
649	Marcello Mastroianni
650	Ally Sheedy
651	Irvin Kershner
652	Paul Schrader
653	Paul Anderson (III)
654	Andy Tennant
655	Elia Kazan
656	Elias Koteas
657	Andrew Fleming
658	Andrei Tarkovsky
659	Ellen Burstyn
660	Robert Benton
661	Howard Zieff
662	Emile Ardolino
663	Emir Kusturica
664	Wayne Wang
665	Atom Egoyan
666	Robert Rodriguez
667	Stanley Tong
668	John Glen (II)
669	Jon Amiel
670	Cher
671	Tim Matheson
672	Stephen Hopkins
673	Stanley Kramer
674	Taylor Hackford
675	Michael Curtiz
676	John Frankenheimer
677	John Schlesinger
678	Michael Bay
679	Carl Weathers
680	Chris Sarandon
681	Bruce Greenwood (I)
682	Melinda Dillon
683	John G. Avildsen
684	Tim Allen
685	Bruce Beresford
686	Terrence Malick
687	John Ritter
688	Takashi Shimura
689	Steven Soderbergh
690	Charles Dutton
691	Jon Avnet
692	Joe Don Baker
693	John Milius
694	Terry Jones
695	Parker Posey
696	Bob Balaban
697	Michael Rapaport
698	Keith David (I)
699	Heather Graham
700	Kristy Swanson
701	James Gandolfini
702	Eric Stoltz
703	Joe Pantoliano
704	Brad Dourif
705	Pam Grier
706	Marcia Gay Harden
707	Kevin J. O'Connor
708	Reese Witherspoon
709	Dabney Coleman
710	Chris Penn
711	Murray Hamilton
712	Jeffrey Tambor
713	Brian Cox
714	Ron Perlman
715	Julie Hagerty
716	Helena Bonham Carter
717	Luke Wilson
718	Frank Whaley
719	Warren Oates
720	Paul Mazursky
721	Tommy Chong
722	Ernest Borgnine
723	Gena Rowlands
724	Famke Janssen
725	Eileen Brennan
726	Kate Capshaw
727	Mario Van Peebles
728	Chris Cooper (I)
729	William Forsythe
730	Hart Bochner
731	William Daniels (I)
732	Jack Palance
733	Albert Finney
734	Julie Christie
735	Toshir&#244; Mifune
736	Embeth Davidtz
737	Nathan Lane
738	Fisher Stevens
739	Don Cheadle
740	John Wood (I)
741	Jeremy Northam
742	Jeremy Irons
743	Rip Torn
744	David Strathairn
745	Udo Kier
746	Brian Doyle-Murray
747	Scott Glenn
748	Josef Sommer
749	Eric Idle
750	Judi Dench
751	Rod Steiger
752	Dennis Farina
753	Kurtwood Smith
754	Walter Koenig
755	Paul Guilfoyle (II)
756	Alfonso Arau
757	Ray Walston
758	Ossie Davis
759	Dana Delany
760	Cate Blanchett
761	David Ogden Stiers
762	Debi Mazar
763	Louise Fletcher
764	Don Ameche
765	Stephen Rea
766	Billy Zane
767	Joe Morton
768	Shawn Hatosy
769	John Ashton (I)
770	Fairuza Balk
771	Kevin McCarthy
772	Katie Holmes
773	Bruce Davison
774	Peter MacNicol
775	Rade Serbedzija
776	Ray Liotta
777	Anthony LaPaglia
778	Judge Reinhold
779	Michael York
780	Joseph Cotten
781	Kelly McGillis
782	Kathleen Quinlan
783	William L. Petersen
784	Bonnie Bedelia
785	Laura Dern
786	John Belushi
787	Nastassja Kinski
788	Joshua Jackson
789	Tony Shalhoub
790	Nancy Travis
791	Tim Roth
792	Jean-Marc Barr
793	Jude Law
794	James Russo
795	Rose McGowan
796	Charlotte Rampling
797	Dennis Franz
798	Armand Assante
799	Michael Palin
800	Paul Rudd (I)
801	Helen Hunt
802	James Mason
803	Jonny Lee Miller
804	Courteney Cox
805	Richard Burton
806	Peter Berg
807	Joely Richardson
808	William Atherton
809	Kim Cattrall
810	Maureen Stapleton
811	Ir&#232;ne Jacob
812	Julie Andrews
813	Bryan Brown
814	Julian Sands
815	Luis Bu&#241;uel
816	Gary Cole
817	Isabelle Adjani
818	Jack Weston
819	Vincent Gallo
820	Roberto Benigni
821	Genevi&#232;ve Bujold
822	Bruce Dern
823	Steven Weber
824	Raul Julia
825	Molly Ringwald
826	Lorraine Gary
827	Ingrid Bergman
828	Bette Davis
829	Sidney Poitier
830	Mary-Louise Parker
831	Edward Furlong
832	John Glover
833	Colleen Camp
834	Bradley Whitford
835	Austin Pendleton
836	Peter Horton
837	John Carradine
838	Charlize Theron
839	Bernard Lee (I)
840	Molly Shannon
841	David Niven
842	Richard Jenkins (I)
843	Pat Hingle
844	Richard Libertini
845	Robert Stack
846	Jon Lovitz
847	Christine Baranski
848	Rob Schneider
849	Amanda Plummer
850	Robert Wuhl
851	Ashley Judd
852	Brad Renfro
853	Bill Nunn
854	Amy Brenneman
855	Michael Ironside
856	Christopher Eccleston
857	Amy Yasbeck
858	Richard Masur
859	Jamie Kennedy
860	D.B. Sweeney
861	Seth Green
862	Pete Postlethwaite
863	Casey Siemaszko
864	Robert Wagner
865	Jeanne Tripplehorn
866	Ren&#233;e Zellweger
867	George Gaynes
868	Valeria Golino
869	Devon Sawa
870	Gaby Hoffmann
871	Natalie Portman
872	Harris Yulin
873	Tom Selleck
874	Richard Briers
875	JoBeth Williams
876	Laura Linney
877	Dave Foley
878	Leslie Easterbrook
879	Anthony Edwards
880	Moses Gunn
881	Peter Gallagher
882	O.J. Simpson
883	Dudley Moore
884	Maria Conchita Alonso
885	C. Thomas Howell
886	Cyril Cusack
887	Ed O'Ross
888	Sterling Holloway
889	Ernie Hudson
890	Paul Michael Glaser
891	Tom Hulce
892	Teresa Wright
893	James Garner
894	George Takei
895	Annabeth Gish
896	Adrienne Barbeau
897	Lori Petty
898	Deborah Unger
899	Gunnar Bj&#246;rnstrand
900	Strother Martin
901	Edward Fox
902	Jerry Orbach
903	Rosie Perez
904	Patrick Dempsey
905	Steven Berkoff
906	Lara Flynn Boyle
907	Joe Grifasi
908	Herbert Lom
909	Ken Russell
910	Temuera Morrison
911	Nia Long
912	Peter Ustinov
913	Mary Elizabeth Mastrantonio
914	Eric Bogosian
915	Marilyn Monroe
916	Philip Bosco
917	Liev Schreiber
918	Phil Hartman
919	Alan Rickman
920	Kathy Najimy
921	John Spencer (I)
922	Stellan Skarsg&#229;rd
923	Rita Wilson
924	Peter Coyote
925	Alec Guinness
926	John Neville
927	Alan Cumming
928	Marshall Bell
929	Kyra Sedgwick
930	John Savage
931	John Sayles
932	Pruitt Taylor Vince
933	Karen Allen
934	Moira Kelly (I)
935	Will Ferrell
936	Peter Fonda
937	John Cazale
938	Kim Hunter
939	Anne Archer
940	Aaron Eckhart
941	Robert Mitchum
942	Powers Boothe
943	Anthony Quinn
944	J.E. Freeman
945	Lily Tomlin
946	Gillian Anderson
947	Elliott Gould
948	Steve Oedekerk
949	Roberts Blossom
950	Mary McDonnell
951	Owen Wilson
952	Jim Henson
953	Frank Langella
954	Ted Kotcheff
955	Michael Moore (II)
956	Chris Elliott (I)
957	Richard Edson
958	Dermot Mulroney
959	B.D. Wong
960	Crispin Glover
961	Karen Young (I)
962	Ethan Embry
963	Allen Garfield
964	F. Murray Abraham
965	Wendy Crewson
966	M. Night Shyamalan
967	Jerry Paris
968	G.W. Bailey
969	Thora Birch
970	Ralph Richardson
971	Hal Ashby
972	Andrew Robinson
973	Robert Hays
974	John McNaughton
975	Robert John Burke
976	Paul Dooley
977	Adam Rifkin
978	Priscilla Presley
979	George Miller (II)
980	Volker Schl&#246;ndorff
981	Groucho Marx
982	Hal Hartley
983	Andrew McCarthy
984	William Sadler
985	Alejandro Amen&#225;bar
986	Caroline Goodall
987	Hugh Laurie
988	Iain Softley
989	Ray Wise
990	Phil Daniels (I)
991	Kenny Ortega
992	Leo McCarey
993	Phil Alden Robinson
994	Peter Yates
995	Marc Caro
996	Linda Hamilton
997	Agnieszka Holland
998	Carl Franklin
999	Yahoo Serious
1000	Michael Gough
1001	Peter Medak
1002	Peter Vaughan
1003	Carol Reed
1004	Wolfgang Reitherman
1005	Edward James Olmos
1006	John Hannah
1007	Robert Mandel
1008	Edward Woodward
1009	Rebecca De Mornay
1010	Alan Metter
1011	John Madden (II)
1012	Lois Chiles
1013	Melanie Lynskey
1014	Guy Pearce
1015	John Getz
1016	Lewis Teague
1017	Michael Crichton
1018	Greg Kinnear
1019	Heather Langenkamp
1020	Richard Marquand
1021	Penelope Spheeris
1022	George Stevens
1023	Kim Darby (I)
1024	Pen&#233;lope Cruz
1025	Allan Moyle
1026	Alex D. Linz
1027	Rachel Ticotin
1028	Bruce Robinson (I)
1029	Stuart Rosenberg (I)
1030	Helen Slater
1031	Grace Kelly
1032	Rachel Talalay
1033	Lisa Kudrow
1034	Wes Anderson
1035	F. Gary Gray
1036	Henry Selick
1037	Paul Thomas Anderson
1038	Paul Sorvino
1039	Richard Rush
1040	Frank Darabont
1041	Alex Cox
1042	Elizabeth Perkins
1043	Steven Zaillian
1044	John Lasseter
1045	Fred MacMurray
1046	Linda Hunt
1047	Alex Proyas
1048	Ted Demme
1049	Andrei Konchalovsky
1050	John Lennon
1051	Hayao Miyazaki
1052	Paul Hogan
1053	Luis Llosa
1054	Frank Coraci
1055	Tamra Davis
1056	George Sanders
1057	Casey Affleck
1058	Franco Zeffirelli
1059	William Dear
1060	Robert Aldrich
1061	George Seaton
1062	John Dahl
1063	Hugh Hudson
1064	Stuart Baird
1065	Jason Alexander
1066	Juliette Binoche
1067	Mark Harmon
1068	Julie Harris
1069	Baz Luhrmann
1070	David O. Russell
1071	David N. Twohy
1072	Sam Peckinpah
1073	Mark L. Lester
1074	Topol
1075	Sam Weisman
1076	Nicolas Roeg
1077	Thomas Mitchell (I)
1078	Samantha Mathis
1079	Brenda Blethyn
1080	David Lean
1081	Tracey Walter
1082	David Keith
1083	Breckin Meyer
1084	James Dean
1085	Jared Leto
1086	Debra Winger
1087	Arthur Hiller
1088	Matthew Perry
1089	James Fox (I)
1090	Rowdy Herrington
1091	Nora Ephron
1092	James Gammon (I)
1093	Denise Richards
1094	Brett Ratner
1095	Kar-wai Wong
1096	Steve Barron
1097	James Whale
1098	Marion Ramsey
1099	James Mangold
1100	Rutger Hauer
1101	Dean Parisot
1102	Dean Martin
1103	Stephen Sommers (I)
1104	Barbet Schroeder
1105	Barnard Hughes
1106	Michael Mann
1107	Ruby Dee
1108	Clark Gable
1109	Ming-Na
1110	Colin Higgins (I)
1111	Joseph L. Mankiewicz
1112	Jeroen Krabb&#233;
1113	Christina Applegate
1114	Simon West (I)
1115	Simon Wincer
1116	Jerry Zucker
1117	David Hand
1118	Mick Jackson (II)
1119	Joseph Sargent
1120	Jonathan Mostow
1121	Todd Solondz
1122	Chuck Russell
1123	Tobe Hooper
1124	Bob Fosse
1125	Christine Taylor
1126	Mary Stuart Masterson
1127	Joe Chappelle
1128	Claude Rains
1129	Danny Cannon
1130	Jean-Hugues Anglade
1131	Jean-Jacques Annaud
1132	Jean-Jacques Beineix
1133	David Anspaugh
1134	Dave Goelz
1135	Scott Hicks
1136	Darren Aronofsky
1137	Morton DaCosta
1138	Stephan Elliott
1139	Brad Silberling
1140	Martin Donovan (II)
1141	Martha Coolidge
1142	Jeffrey Combs
1143	Daniel Auteuil
1144	Dan O'Herlihy
1145	Sean Young
1146	Jena Malone
1147	Chris Tucker
1148	Bibi Andersson
1149	Nicholas Hytner
1150	Bernard Rose
1151	Victor Fleming
1152	Ron Clements
1153	Kelly Lynch
1154	Michael Radford
1155	Verna Felton
1156	Douglas Trumbull
1157	Patricia Neal
1158	Jackie Cooper (I)
1159	Antonia Bird
1160	Katt Shea (I)
1161	James Brolin
1162	Don Rickles
1163	Doug Liman
1164	J. Lee Thompson
1165	Kelsey Grammer
1166	Ole Bornedal
1167	James Algar
1168	Robin Tunney
1169	P.J. Hogan
1170	Roland Joff&#233;
1171	Brian Gibson
1172	Irwin Winkler
1173	Jack Sholder
1174	John Bruno
1175	Annabel Jankel
1176	Diane Venora
1177	Vincent Perez
1178	Dwight H. Little
1179	Robin Shou
1180	Isaac Hayes
1181	Annie Potts
1182	Marco Brambilla
1183	Charles Laughton
1184	Robert Shaw
1185	Katrin Cartlidge
1186	Bill Cobbs
1187	Patricia Clarkson
1188	Charles Rocket
1189	Charles Hallahan
1190	William Fichtner
1191	Lois Smith
1192	Victor Wong (III)
1193	Natasha Lyonne
1194	Ian Hart
1195	Ted Danson
1196	Freddie Jones
1197	Don Harvey (I)
1198	Frederic Forrest
1199	Jason Isaacs
1200	Jack Noseworthy
1201	Glenn Plummer
1202	Clancy Brown
1203	Paul Winfield
1204	Mykelti Williamson
1205	Tom Atkins
1206	Brent Spiner
1207	Anna Paquin
1208	Stephen Collins
1209	Harvey Korman
1210	Elijah Wood
1211	Anthony Zerbe
1212	James Frain
1213	Geraldine Chaplin
1214	Dylan Baker
1215	Jason Lee (I)
1216	Phoebe Cates
1217	Everett McGill
1218	Jonathan Hyde
1219	David Krumholtz
1220	Blythe Danner
1221	Peter Falk
1222	Wallace Shawn
1223	Stephen Fry
1224	Seymour Cassel
1225	Catherine Hicks
1226	Judd Nelson
1227	Martin Short
1228	Nancy Allen
1229	Stanley Tucci
1230	E.G. Marshall
1231	Ralph Bellamy
1232	Kasi Lemmons
1233	Cliff De Young
1234	Michael Gambon
1235	Jennifer Tilly
1236	Luis Guzm&#225;n
1237	Wil Wheaton
1238	Mary Beth Hurt
1239	James Hampton
1240	Maximilian Schell
1241	Anthony Perkins
1242	Jeffrey DeMunn
1243	Stephen Baldwin
1244	Marsha Mason
1245	Sean Patrick Flanery
1246	Terry O'Quinn
1247	Daniel von Bargen
1248	Connie Nielsen
1249	Tony Burton
1250	Vin Diesel
1251	Jon Cryer
1252	Piper Laurie
1253	Fred Gwynne
1254	Rachel Griffiths (I)
1255	Graham Greene (II)
1256	Angie Dickinson
1257	George Segal
1258	Jerry O'Connell
1259	Bill McKinney
1260	Campbell Scott
1261	Ian Bannen
1262	Caroline Aaron
1263	Corey Feldman
1264	Dylan McDermott
1265	Miranda Richardson
1266	Yaphet Kotto
1267	Gene Saks
1268	Jennifer Grey
1269	Jennifer Connelly
1270	Jennifer Beals
1271	Jerry Nelson
1272	Jack Thompson (I)
1273	Brenda Fricker
1274	Thomas Jane
1275	Mae Whitman
1276	Ward Bond
1277	Richard Bohringer
1278	Joey Lauren Adams
1279	John Vernon
1280	Rosie O'Donnell
1281	Brenda Vaccaro
1282	Diana Scarwid
1283	Jason London
1284	Larry Miller
1285	Rick Rossovich
1286	Andre Braugher
1287	Jacqueline Bisset
1288	Dee Wallace-Stone
1289	Eugene Levy
1290	Henry Jones (I)
1291	John Forsythe
1292	Henry Winkler
1293	Bernard Hill
1294	Bernadette Peters
1295	Robert Forster
1296	Teri Hatcher
1297	Richard Roundtree
1298	Charlie Korsmo
1299	Catherine Zeta-Jones
1300	Pamela Reed
1301	Katherine Helmond
1302	Elizabeth Hurley
1303	Nina Foch
1304	Brigitte Nielsen
1305	Tony Roberts (I)
1306	David Hemblen
1307	Donald Moffat
1308	Michael Jeter
1309	CCH Pounder
1310	Bruce McGill
1311	Armin Mueller-Stahl
1312	Richard Riehle
1313	Peter Stormare
1314	Patrick McGoohan
1315	Frank McRae
1316	Alan Alda
1317	Halle Berry
1318	Richard Kiel
1319	Liv Tyler
1320	Saul Rubinek
1321	David Caruso
1322	Leo G. Carroll
1323	Cathy Moriarty
1324	Damon Wayans
1325	Chris Rock
1326	Muse Watson
1327	Elizabeth Daily
1328	Marvin J. McIntyre
1329	Paul Bartel
1330	Jeremy Piven
1331	Peter Donat
1332	Paul Gleason (I)
1333	Kenneth Mars
1334	John Saxon
1335	Joseph Maher
1336	Porter Hall
1337	James Caviezel
1338	James Duval
1339	Kirstie Alley
1340	Michael Par&#233;
1341	John Lurie
1342	James Cosmo
1343	M.C. Gainey
1344	Joanna Cassidy
1345	Ian McDiarmid
1346	Jack MacGowran
1347	Josh Charles
1348	Lee Marvin
1349	Julie Delpy
1350	Maurice Evans
1351	Lee Van Cleef
1352	Harland Williams
1353	Jason Robards
1354	Mitch Ryan
1355	P.J. Soles
1356	Miriam Margolyes
1357	Marc McClure (I)
1358	Harry Connick Jr.
1359	Milla Jovovich
1360	Kevin Peter Hall
1361	Keenen Ivory Wayans
1362	LL Cool J
1363	Oprah Winfrey
1364	James Belushi
1365	Omar Sharif
1366	Mickey Rooney
1367	Kieran Culkin
1368	Robert Patrick
1369	Richard Schiff
1370	Ed Binns
1371	Rachel Roberts
1372	Charles Martin Smith
1373	David Schwimmer
1374	Regina King
1375	Charles Cyphers
1376	Billy Crudup
1377	Wallace Ford
1378	Dominique Pinon
1379	Betsy Palmer
1380	Gedde Watanabe
1381	Rodney Dangerfield
1382	Richard Griffiths (I)
1383	Edward Herrmann
1384	Richard A. Dysart
1385	Dennis Haysbert
1386	Colm Meaney
1387	Reni Santoni
1388	Tia Carrere
1389	Ann-Margret
1390	Claudia Cardinale
1391	Clea DuVall
1392	Cliff Curtis
1393	Christopher Lee
1394	Clare Higgins (I)
1395	Bill Hunter (I)
1396	Tony Darrow
1397	Joseph Mazzello
1398	Tony Goldwyn
1399	Timothy Spall
1400	Josh Hamilton
1401	Judd Hirsch
1402	Mary Kay Place
1403	James Cagney
1404	Joseph Gordon-Levitt
1405	Jos&#233; Ferrer
1406	Otto Preminger
1407	Ron Livingston
1408	Oskar Werner
1409	Tori Spelling
1410	Dina Meyer
1411	Omar Epps
1412	Tom Arnold
1413	Olivia Newton-John
1414	Olivia Williams
1415	Ron Rifkin
1416	Verna Bloom
1417	Hugo Weaving
1418	Robert Davi
1419	Katharine Ross
1420	Elizabeth Wilson (I)
1421	Elle Macpherson
1422	Hoyt Axton
1423	Isaiah Washington
1424	Kathryn Beaumont
1425	Iben Hjejle
1426	Paul Mercurio
1427	Keir Dullea
1428	Keith Coogan
1429	Margot Kidder
1430	Marco Leonardi
1431	Paul Scofield
1432	Marianne S&#228;gebrecht
1433	Edmund Gwenn
1434	Jack Gilford
1435	Julia Ormond
1436	Dylan Walsh
1437	Trevor Howard
1438	Rosalind Russell
1439	Patrick Bergin
1440	Kate Beckinsale
1441	Robert Sean Leonard
1442	Karl Malden
1443	Julie Walters
1444	Robert Preston (I)
1445	Irene Bedard
1446	Juliet Stevenson
1447	Tuesday Weld
1448	Ice-T
1449	Jack Hawkins
1450	James Hong
1451	Sean Bean
1452	Miriam Flynn
1453	Sterling Hayden
1454	Charles Dance
1455	Dan Futterman
1456	Jeffrey Wright
1457	Dana Carvey
1458	Roy Dotrice
1459	Michael Dorn
1460	John Astin
1461	Danny Kaye
1462	Casper Van Dien
1463	Cary-Hiroyuki Tagawa
1464	Myrna Loy
1465	Carol Burnett
1466	Michael Beck
1467	Charles Bronson
1468	Stanley Baker
1469	Jim Mallon
1470	Solveig Dommartin
1471	Sofia Coppola
1472	Michelle Yeoh
1473	Joaquim de Almeida
1474	Skeet Ulrich
1475	Cylk Cozart
1476	Sihung Lung
1477	Shannon Elizabeth
1478	Sheryl Lee
1479	Chia-Liang Liu
1480	Michael Jai White
1481	Craig Sheffer
1482	Mimi Rogers
1483	Craig Wasson
1484	Takeshi Kitano
1485	Spike Jonze
1486	James Marsden
1487	Carlo Cecchi
1488	Maureen O'Hara
1489	Nicolette Sheridan
1490	Thomas F. Wilson
1491	Ruth Warrick
1492	Dean Stockwell
1493	Brian Henson
1494	Ruth Gordon
1495	Nick Cassavetes
1496	John Williams (II)
1497	Pamela Blair
1498	Rufus Sewell
1499	Paul Smith (I)
1500	Johnathon Schaech
1501	James Fleet
1502	Bobby Driscoll
1503	Nikita Mikhalkov
1504	Sammi Davis (I)
1505	Mary Wickes
1506	Bruce McCulloch
1507	John Houseman
1508	Tara Fitzgerald
1509	Jean Arthur
1510	Tate Donovan
1511	Saffron Burrows
1512	Brooke Adams
1513	David Carradine
1514	Sam Wanamaker
1515	Bridgette Wilson
1516	Nichelle Nichols
1517	John Meillon
1518	Sam Elliott
1519	Maxwell Caulfield
1520	Terry Kinney
1521	Jason Scott Lee
1522	Adam Hann-Byrd
1523	Greg Cruttwell
1524	Vivien Leigh
1525	Radha Mitchell
1526	Warren Clarke
1527	Farley Granger
1528	Hayden Panettiere
1529	Henry Czerny
1530	Liza Minnelli
1531	Reginald VelJohnson
1532	Gailard Sartain
1533	Lou Jacobi
1534	Heath Ledger
1535	Alexis Arquette
1536	Walter Brennan
1537	George Carlin
1538	Richard Jordan (I)
1539	Yul Brynner
1540	Richard Lineback
1541	Louis Gossett Jr.
1542	Amy Madigan
1543	William Powell
1544	Akira Terao
1545	Lee J. Cobb
1546	Angela Lansbury
1547	Koji Yakusho
1548	Linda Fiorentino
1549	Piper Perabo
1550	Linus Roache
1551	Paul Walker (I)
1552	Richard Farnsworth
1553	Glynis Johns
1554	Kenneth Tsang
1555	Annette O'Toole
1556	Lisa Bonet
1557	Peter Graves (I)
1558	Leslie Mann
1559	LeVar Burton
1560	Peter Facinelli
1561	Lane Smith (I)
1562	Vincent Cassel
1563	Ricki Lake
1564	Rex Linn
1565	Allison Janney
1566	Nicky Katt
1567	Jim Broadbent
1568	Tom Waits
1569	Fred Dalton Thompson
1570	Frankie Faison
1571	David Patrick Kelly
1572	Martha Plimpton
1573	Jane Adams (II)
1574	Derek Jacobi
1575	Jon Polito
1576	Anthony Heald
1577	Stuart Pankin
1578	Marc Macaulay
1579	Ronald Lacey
1580	Bebe Neuwirth
1581	Matt Craven
1582	G.D. Spradlin
1583	Lucinda Jenney
1584	Daniel Roebuck
1585	Chelcie Ross
1586	Jeff Corey
1587	Frances Bay
1588	Sarah Polley
1589	Holland Taylor
1590	Max Casella
1591	Sam Rockwell
1592	Ally Walker
1593	John Pankow
1594	John Randolph
1595	Michael Rispoli
1596	Jake Busey
1597	George Wendt
1598	Billy Connolly
1599	Olek Krupa
1600	Donal Logue
1601	Jon Tenney
1602	Michael J. Pollard
1603	Miguel Ferrer
1604	Ling Bai
1605	Jake Weber
1606	Cliff Robertson
1607	Cole Hauser
1608	Kyle Secor
1609	Stephen Lang
1610	Om Puri
1611	Allen Covert
1612	Chloe Webb
1613	William Lee Scott
1614	John P. Ryan
1615	Lorraine Bracco
1616	John M. Jackson
1617	Telly Savalas
1618	John Larroquette
1619	Lena Olin
1620	Maura Tierney
1621	Sandy Baron
1622	David Suchet
1623	Albert Hall (I)
1624	Johnny Galecki
1625	Brendan Sexton III
1626	Grant Heslov
1627	Noah Emmerich
1628	Danny Trejo
1629	Boyd Gaines
1630	Rowan Atkinson
1631	Rebecca Gayheart
1632	Jeffrey Kramer
1633	Alan Ruck
1634	Mason Gamble
1635	Roshan Seth
1636	Timothy Busfield
1637	Lonette McKee
1638	Mark Blum
1639	Harvey Fierstein
1640	Paul Giamatti
1641	Iggy Pop
1642	Fran Drescher
1643	Marilu Henner
1644	Anthony Rapp
1645	Margaret Colin
1646	Elizabeth McGovern
1647	Kevin Anderson
1648	Trey Wilson
1649	Til Schweiger
1650	Paul Shenar
1651	Judith Anderson
1652	Marc Anthony (I)
1653	Barry Pepper
1654	Elizabeth Berkley
1655	Anthony Daniels
1656	Joss Ackland
1657	Eric Christmas
1658	Angela Bassett
1659	Edie McClurg
1660	James Whitmore
1661	Thierry Lhermitte
1662	Andrew Divoff
1663	Charlotte Stewart
1664	Bill Campbell
1665	Cynthia Stevenson
1666	Sally Kirkland
1667	Alec McCowen
1668	Cedric Hardwicke
1669	Elsa Lanchester
1670	Lee Evans (I)
1671	Lesley Ann Warren
1672	Peter Michael Goetz
1673	Imelda Staunton
1674	Damian Chapa
1675	Lesley Sharp
1676	Brent Jennings
1677	Kathy Baker
1678	John Rhys-Davies
1679	Edward G. Robinson
1680	Robert Pastorelli
1681	Matt Stone
1682	Marianne Jean-Baptiste
1683	Nicholas Farrell
1684	Sela Ward
1685	Charles Cioffi
1686	Greta Scacchi
1687	Josh Hartnett
1688	David Bowie
1689	Jean-Luc Godard
1690	Gemma Jones
1691	Sammo Hung Kam-Bo
1692	Taylor Nichols
1693	Elaine Hendrix
1694	Ursula Andress
1695	Swoosie Kurtz
1696	Sandahl Bergman
1697	Mia Kirshner
1698	Tatsuya Nakadai
1699	Natasha Henstridge
1700	John Herzfeld
1701	Natascha McElhone
1702	Leon (I)
1703	Jason Mewes
1704	Darren McGavin
1705	George Newbern
1706	Nicholas Ray
1707	Irma P. Hall
1708	Peter Riegert
1709	Cybill Shepherd
1710	Sam J. Jones
1711	Elizabeth Pe&#241;a
1712	Brittany Murphy
1713	Angela Featherstone
1714	Nancy Kyes
1715	Michael Clarke Duncan
1716	Elaine May
1717	Janet Leigh
1718	Elden Ratliff
1719	Phil Harris (I)
1720	Michael Bates (I)
1721	Gregory Hines
1722	Karen Black
1723	Stan Shaw
1724	Kim Dickens
1725	Stacy Keach
1726	Ben Johnson (I)
1727	Billy Dee Williams
1728	Ron Eldard
1729	Hilary Swank
1730	Ben Cross
1731	Jack Black (I)
1732	Jessica Harper
1733	Alison Elliott (I)
1734	Christine Lahti
1735	Madolyn Smith-Osborne
1736	Christine Ebersole
1737	Ali Larter
1738	Anouk Aim&#233;e
1739	Ron Silver
1740	Mike McGlone
1741	Spalding Gray
1742	Harry Morgan
1743	Pupella Maggio
1744	Claire Bloom
1745	Alyson Hannigan
1746	Jim Brown
1747	Michelle Williams
1748	Wayne Knight
1749	Cleavon Little
1750	Slim Pickens
1751	Marg Helgenberger
1752	Michael Vartan
1753	Linda Blair
1754	Frances Sternhagen
1755	Marco Hofschneider
1756	Bill Tung
1757	Gilbert Gottfried
1758	Eric Roberts
1759	Polly Walker (II)
1760	Shawn Wayans
1761	Fritz Weaver
1762	Colm Feore
1763	Milo O'Shea
1764	Sid Caesar
1765	Norm Macdonald
1766	Lew Ayres
1767	Lucy Liu
1768	Grace Jones
1769	Chlo&#235; Sevigny
1770	Peter Jason
1771	Jennifer Rubin (I)
1772	Anatoli Solonitsyn
1773	Curtis Armstrong
1774	Keenan Wynn
1775	Deborah Kerr
1776	Eliza Dushku
1777	Larry Gates
1778	Patricia Hayes (I)
1779	Miko Hughes
1780	Michael Lonsdale
1781	Joel Grey
1782	Richard Haydn
1783	Michael Lerner
1784	Victor Argo
1785	Jon Finch
1786	Ben Chaplin
1787	Dennis Miller (I)
1788	Paul McGann
1789	Mildred Natwick
1790	Noble Willingham
1791	David Margulies
1792	Jack Kehoe
1793	Desmond Llewelyn
1794	Grace Zabriskie
1795	Leon Rippy
1796	Grand L. Bush
1797	Stefan Gierasch
1798	David Cross (II)
1799	Lisa Jane Persky
1800	Lois Maxwell
1801	Jenette Goldstein
1802	Zach Grenier
1803	Zeljko Ivanek
1804	Bronson Pinchot
1805	Ed Lauter
1806	Lanny Flaherty
1807	Julia Sweeney
1808	Mark Rolston
1809	Dick Miller (I)
1810	Nicholas Pryor
1811	Terence Stamp
1812	Ted Raimi
1813	Richard Harris
1814	David Proval
1815	John Kapelos
1816	Madeleine Stowe
1817	Frank Vincent (I)
1818	Tony Todd (I)
1819	Bill Irwin
1820	David Spade
1821	Julie Kavner
1822	James LeGros
1823	Deborah Rush
1824	William Windom
1825	David Hayman
1826	David Thornton (I)
1827	Laurie Metcalf
1828	Elya Baskin
1829	Mary McCormack
1830	Heather Matarazzo
1831	Adam Baldwin
1832	Ed Begley Jr.
1833	Edward Hardwicke
1834	Bob Goldthwait
1835	Patrick Magee (I)
1836	Todd Allen
1837	Blair Underwood
1838	Tom 'Tiny' Lister Jr.
1839	Julia Louis-Dreyfus
1840	Roma Maffia
1841	Jacqueline Kim
1842	Ricky Jay
1843	Jack Nance
1844	Michelle Johnson
1845	Robert Webber (I)
1846	Carlos G&#243;mez (II)
1847	John Hillerman
1848	Natasha Gregson Wagner
1849	Adrian Pasdar
1850	Michael G. Hagerty
1851	Ian McNeice
1852	Brian O'Halloran
1853	Paul Bates
1854	Wes Studi
1855	Kenneth Cranham
1856	Zero Mostel
1857	Tracey Ullman
1858	Tom Guiry
1859	Lillo Brancato
1860	Billy Gilbert (I)
1861	Victoria Rowell
1862	Joe Berlinger
1863	Klaus Maria Brandauer
1864	Mel Smith
1865	Wesley Addy
1866	Mic Rodgers
1867	Megan Ward
1868	Suzy Amis
1869	Ulrich Thomsen
1870	Angel David
1871	Brooke Shields
1872	Artie Lange
1873	Tara Reid
1874	Benjamin Bratt
1875	Amy Irving
1876	'Weird Al' Yankovic
1877	Tony Danza
1878	Mario Machado
1879	Billie Whitelaw
1880	Michael Elphick
1881	Abe Vigoda
1882	Sonny Bono
1883	Bruno Ganz
1884	Adrien Brody
1885	Kevin Hooks
1886	Werner Herzog
1887	Judith Hoag
1888	Tatum O'Neal
1889	Louis Giambalvo
1890	Andrew Dice Clay
1891	Beah Richards
1892	Leland Orser
1893	Brian Thompson (I)
1894	Brad Davis
1895	Ted Levine
1896	Michael Currie
1897	Mark Pellington
1898	Louise Lasser
1899	Zak Orth
1900	Brian McCardie
1901	Leslie Carlson
1902	Theresa Randle
1903	Arnold Vosloo
1904	Steve Railsback
1905	Steve Whitmire
1906	Cecil B. DeMille
1907	Thandie Newton
1908	Zach Galligan
1909	Barry Dennen
1910	Jon Seda
1911	Barry Miller
1912	Jurnee Smollett
1913	Adam Goldberg
1914	Terence Rigby
1915	Leopold Stokowski
1916	Cherie Lunghi
1917	Larry Block
1918	Stuart Wilson (II)
1919	Julie Bowen
1920	Arsenio Hall
1921	Magda Szubanski
1922	Bokeem Woodbine
1923	Mathieu Kassovitz
1924	John Witherspoon
1925	Julia Stiles
1926	John Duigan
1927	Jake Kasdan
1928	Sherilyn Fenn
1929	Scott Caan
1930	Oliver Parker (I)
1931	Daryl Mitchell
1932	James Brown (I)
1933	Paul Reiser
1934	Monica Potter
1935	Heather Locklear
1936	Dick Van Dyke
1937	Sam Waterston
1938	Jeanne Moreau
1939	Sean McGinley
1940	Peter Howitt (II)
1941	Ron Carey
1942	Osheen Jones
1943	Hope Davis
1944	Gretchen Mol
1945	Roger Rees
1946	Minoru Chiaki
1947	Hope Lange
1948	Jenny Agutter
1949	Craig Bierko
1950	Courtney B. Vance
1951	Jeremy Davies
1952	Guillermo D&#237;az
1953	Ethan Suplee
1954	Jamie Foxx
1955	Jamie Uys
1956	Richard O'Brien (I)
1957	Saeed Jaffrey
1958	Harvey Atkin
1959	Penelope Allen
1960	Fiona Shaw
1961	Nicoletta Braschi
1962	James Sikking
1963	Richard Gant
1964	David Alan Grier
1965	Rick Ducommun
1966	Djimon Hounsou
1967	David Hyde Pierce
1968	Nina Siemaszko
1969	Russ Tamblyn
1970	Harmony Korine
1971	Roy Kinnear
1972	Dennis Christopher
1973	Norman Alden
1974	Ric Young
1975	Jean-Paul Belmondo
1976	Erland Josephson
1977	Jean-Pierre L&#233;aud
1978	Jason Patric
1979	Glenn Shadix
1980	J.A. Preston
1981	Jim Haynie
1982	Gregg Henry
1983	Patrice Camhi
1984	Jeremy Sisto
1985	Jessie Royce Landis
1986	Clarence Williams III
1987	Roberta Maxwell
1988	Dougray Scott
1989	Robert J. Wilke
1990	Robert Vaughn
1991	Gerrit Graham
1992	Pamela Segall
1993	Cliff Gorman
1994	Jack Gilpin
1995	Jesse Bradford
1996	Miki Manojlovic
1997	Ione Skye
1998	Julieta Serrano
1999	Kenneth More
2000	Barry Fitzgerald
2001	Kaige Chen
2002	Ken Hughes (I)
2003	Anne Baxter
2004	Ken Leung
2005	Ken Stott
2006	Kenneth Johnson (I)
2007	Ken Sagoes
2008	Henry Silva
2009	Errol Flynn
2010	Anne Parillaud
2011	Juzo Itami
2012	Henry Travers
2013	Ilene Woods
2014	Ernst Lubitsch
2015	Fernando Trueba
2016	Floyd Mutrux
2017	Andrew Morahan
2018	Irwin Allen
2019	Edward Asner
2020	Andrew Niccol
2021	Andrew Sipes
2022	Irene Grazioli
2023	Andrzej Bartkowiak
2024	Andy Wachowski
2025	Julie Taymor
2026	Andy Wilson (IV)
2027	Edward Dmytryk
2028	Julien Temple
2029	Henry Koster
2030	Fernanda Montenegro
2031	Fax Bahr
2032	Kevin Conroy
2033	Anita Mui
2034	Henry Bergman
2035	F.W. Murnau
2036	Ann Reinking
2037	Kerry Fox
2038	Edward D. Wood Jr.
2039	Anthony Drazan
2040	Henry Hathaway
2041	Ernie Reyes Jr.
2042	Irene Cara
2043	Ash Brannon
2044	Honor Blackman
2045	Katsuhiro &#212;tomo
2046	Ate de Jong
2047	Antony Sher
2048	Arlene Sanford
2049	Arletty
2050	Elise Neal
2051	Arne Glimcher
2052	Ashley Laurence
2053	Kathryn Erbe
2054	Ken Finkleman
2055	Arnold Alfredsson
2056	Ian Charleson
2057	Kate Reid
2058	Elizabeth Hoffman
2059	Arthur Penn
2060	Emmanuelle B&#233;art
2061	Howard Franklin
2062	Emily Bergl
2063	Howard Stern
2064	Art Garfunkel
2065	Arthur Hill (I)
2066	Hugh Jackman
2067	Ellen Greene
2068	Kate Maberly
2069	Kelly LeBrock
2070	Kamatari Fujiwara
2071	Ken Howard (I)
2072	Eric Darnell
2073	Erick Zonca
2074	Katherine Heigl
2075	Efrem Zimbalist Jr.
2076	Erich von Stroheim
2077	Kelly Rowan
2078	Hermione Baddeley
2079	Anthony Lucero (I)
2080	Kelly Makin
2081	Eli Wallach
2082	Anthony Quayle
2083	Antonella Attili
2084	Hettie MacDonald
2085	Bajram Severdzan
2086	Anthony Waller
2087	Ian Michael Smith
2088	Hill Harper
2089	Eric Radomski
2090	Eric Leighton
2091	Antoine Fuqua
2092	Austin Stoker
2093	Eleanor Audley
2094	Ernest R. Dickerson
2095	Barry Bostwick
2096	Leon Lai
2097	Adrienne Shelly
2098	Adrienne King
2099	Leo McKern
2100	Gene Lockhart
2101	Geoffrey Wright (I)
2102	Francesca Annis
2103	George Armitage
2104	Gaspard Manesse
2105	Gregory Widen
2106	Gregory Walcott
2107	George Coe
2108	Adriana Caselotti
2109	George Dunning (II)
2110	Adam Resnick
2111	Leon Gast
2112	Gary Sinyor
2113	Alastair Sim
2114	Gary Fleder
2115	Alan Shapiro
2116	Lee David Zlotoff
2117	Gary Nelson
2118	Gary Ross
2119	Ajay Naidu
2120	Lee Grant (I)
2121	Gene Barry
2122	Alan Myerson
2123	Lee Remick
2124	Alan Ladd
2125	Alan Cohn
2126	Gary Trousdale
2127	George Huang
2128	Grigori Aleksandrov
2129	Gil Junger
2130	George Harrison
2131	Liam Cunningham
2132	Gore Verbinski
2133	Abel Ferrara
2134	Gordon Parks
2135	Gian Maria Volont&#233;
2136	Adam Arkin
2137	Giancarlo Giannini
2138	Lewis Milestone
2139	Glenn Gordon Caron
2140	Gillian Armstrong
2141	Gladys Cooper
2142	Giuseppe Tornatore
2143	&#201;lodie Bouchez
2144	Linda Henry (I)
2145	Lilia Skala
2146	Adam Bernstein
2147	Gary Cooper
2148	George Lazenby
2149	George Pal
2150	Gregg Edelman
2151	Lesli Linka Glatter
2152	Gregg Araki
2153	Liam Aiken
2154	Leslie Cheung
2155	Gregory Nava
2156	Gerald Potterton
2157	Adam Beach
2158	Gert Fr&#246;be
2159	Gr&#233;goire Colin
2160	Gore Vidal
2161	Ghita N&#248;rby
2162	George Sluizer
2163	Allison Anders
2164	Hark Tsui
2165	Amy Locane
2166	Kirk Jones (III)
2167	Kirk Wong
2168	Harry Elfont
2169	Francis Veber
2170	Kimberly Williams (I)
2171	Frank Overton
2172	Kimberly Peirce
2173	Harpo Marx
2174	Frankie Muniz
2175	Fraser Clarke Heston
2176	Kris Isacsson
2177	Kristina Adolphson
2178	Guillermo del Toro
2179	Kitty Winn
2180	Amy Smart
2181	Fran Rubel Kuzui
2182	Heather Donahue
2183	Kieu Chinh
2184	Fran&#231;ois Girard
2185	Haviland Morris
2186	Anand Tucker
2187	Kinka Usher
2188	Amy Steel
2189	Allan Corduner
2190	Harve Foster
2191	Harry Winer
2192	Basil Rathbone
2193	Kimberly Deauna Adams
2194	Douglas McGrath (I)
2195	Harry Hamlin
2196	Franc Roddam
2197	Lauren Graham
2198	Fred Clark (I)
2199	Alexander Payne
2200	Alex Winter
2201	Alex Karras
2202	Gabriele Ferzetti
2203	Alex D&#233;sert
2204	G&#233;rard Pir&#232;s
2205	Guy Ritchie
2206	Fritz Kiersch
2207	Aleksander Bardini
2208	Alek Keshishian
2209	Gabrielle Anwar
2210	Gustav Botz
2211	Albert Magnoli
2212	Kevin Williamson
2213	Laura San Giacomo
2214	Lance Guest
2215	Allan Arkush
2216	Hardie Albright
2217	Fred M. Wilcox
2218	Kyle T. Heffner
2219	Kylie Minogue
2220	Alison Crosbie
2221	Gabriel Axel
2222	Lainie Kazan
2223	Gary Farmer
2224	Hamilton Luske
2225	Haley Joel Osment
2226	Alfonso Cuar&#243;n
2227	Fredric March
2228	Alexandra Paul
2229	Alexandra Dahlstr&#246;m
2230	Alicia Witt
2231	Darren Stein
2232	Carl Schultz
2233	Jean-Paul Rappeneau
2234	Jean-Pierre Cassel
2235	Jean-Pierre Jeunet
2236	John Fortenberry
2237	Carmen Maura
2238	Carole Lombard
2239	Carroll Ballard (I)
2240	John Diehl
2241	John Denver
2242	John De Bello
2243	Dave Thomas (I)
2244	Catherine McCormack
2245	Ben Sharpsteen
2246	Cecilia Roth
2247	Charles Crichton
2248	Daniel Myrick
2249	John Call (I)
2250	Daniel Petrie
2251	Charles Berling
2252	John Cornell
2253	Daniel Petrie Jr.
2254	Cathy Tyson
2255	Cecil Kellaway
2256	John Cassavetes
2257	Jeff Kanew
2258	Daphne Zuniga
2259	Dario Argento
2260	Byron Haskin
2261	Jeffrey John Davis
2262	Bronwen Hughes
2263	David Arkin
2264	David Hogan
2265	John Irvin
2266	David Huddleston
2267	Jay Levey
2268	Jean Gabin
2269	David Kellogg
2270	David Gulpilil
2271	David Koepp
2272	Jason James Richter
2273	David M. Evans (I)
2274	David Marshall Grant
2275	Jason Bloom
2276	Jason Biggs
2277	Jason Schwartzman
2278	John Gray (I)
2279	Damon Santostefano
2280	Jean-Marie Poir&#233;
2281	Burl Ives
2282	David Carson (I)
2283	David Dobkin
2284	Jay Russell
2285	Jean-Claude Dreyfus
2286	Cantinflas
2287	John Guillermin
2288	David Emge
2289	John Haycraft
2290	Bruce Lee
2291	Jean Seberg
2292	Jean Renoir
2293	Buddy Van Horn
2294	Christopher Daniel Barnes
2295	Jerome Robbins
2296	Claude Sautet
2297	Jesse Ventura
2298	Christopher Leitch
2299	Jocelyn Moorhouse
2300	Joanna Pacula
2301	Jodi Lyn O'Keefe
2302	Jet Li
2303	Joe Alves
2304	Joe Belcher
2305	Christopher Cain (I)
2306	Christopher Ashley
2307	Clint Howard
2308	Dan Monahan (I)
2309	Jerry Reed (I)
2310	Jim True
2311	Fred Dekker
2312	Giuseppe Andrews
2313	Claire Trevor
2314	Jim Fall
2315	Jim McBride
2316	Joanne Whalley
2317	Jim Drake (II)
2318	Clu Gulager
2319	Cindy Williams (I)
2320	Claude Berri
2321	Joan Fontaine
2322	Chuck Pfarrer
2323	Christopher Monger
2324	Christopher McQuarrie
2325	Jim Sharman
2326	Cyril O'Reilly
2327	Clive Barker
2328	Joey Travolta
2329	Chico Marx
2330	John Ales
2331	Jennifer O'Neill (I)
2332	Joey Cramer
2333	Jennifer Lien
2334	Chris Buck (II)
2335	John Baddeley
2336	Dale Midkiff
2337	Damien O'Donnell
2338	John Beck (II)
2339	Jennifer Chambers Lynch
2340	Jared Rushton
2341	Cy Endfield
2342	Chris Smith (II)
2343	Clyde Bruckman
2344	Christine Cavanaugh
2345	Christian Nyby
2346	Christian Duguay (I)
2347	Christian Duguay
2348	Courtney Gains
2349	Chris Young (I)
2350	Jeni Courtney
2351	Joe Pytka
2352	Chris Roberts (II)
2353	Chris Noonan
2354	Chris Kattan
2355	Chris Eyre
2356	Jeremy Leven
2357	Christian Clavier
2358	Joseph McGinty Nichol
2359	Don McKellar
2360	Dolph Lundgren
2361	Bill Thompson (I)
2362	Dominic Sena
2363	Jacob Sewell
2364	Joseph Fiennes
2365	Bill Condon
2366	Jake Gyllenhaal
2367	Joseph Melito
2368	Jackie Mason
2369	Bill Bernstein
2370	Biff McGuire
2371	Betty Buckley
2372	Dian Bachar
2373	Don Coscarelli
2374	James Bond
2375	Jason Bateman
2376	Boaz Yakin
2377	Diane Baker
2378	Jonathan Darby
2379	Bo Derek
2380	Jacqueline McKenzie (I)
2381	Bj&#246;rk
2382	Don Roos
2383	Bing Crosby
2384	Dolly Parton
2385	Jake Scott (II)
2386	Jonathan Silverman
2387	Jordana Brewster
2388	Josef Rusnak
2389	James Bridges (I)
2390	Julian Schnabel
2391	Don Gordon (I)
2392	Judy Parfitt
2393	Jack Carson (I)
2394	Jace Alexander (I)
2395	Duane Jones (I)
2396	Jack Kruschen
2397	Eamonn Owens
2398	Drew Desmarais
2399	Beeban Kidron
2400	Ivo Caprino
2401	Isao Takahata
2402	Julie Carmen
2403	Isabelle Huppert
2404	Beau Bridges
2405	J.L. Reate
2406	Benny Chan
2407	Josh Evans
2408	Donald Adeosun Faison
2409	Jack Thibeau
2410	Donna Murphy
2411	Bess Armstrong
2412	Judy Garland
2413	Beno&#238;t Poelvoorde
2414	Dharmendra
2415	Donna Reed
2416	Dorian Harewood
2417	Dorsey Wright
2418	Douglas Aarniokoski
2419	Ben Younger
2420	Jim Gillespie (I)
2421	Bernie Worrell
2422	Brian Glover (I)
2423	John Schultz (I)
2424	John R. Leonetti
2425	David S. Ward
2426	James Wong (IV)
2427	Brian Helgeland
2428	Brian Kerwin
2429	James Toback
2430	Jamie Blanks
2431	Brian Gilbert
2432	Brian G. Hutton
2433	David Swift (II)
2434	Brian Desmond Hurst
2435	David Wayne (I)
2436	Bob Geldof
2437	James Van Der Beek
2438	Jane Curtin
2439	Eduardo Noriega (II)
2440	Brigitte Lin
2441	Janni Brenn-Lowen
2442	David Miller (II)
2443	Jane Powell (III)
2444	John Patrick Shanley
2445	David Mirkin (I)
2446	James Robinson (II)
2447	David Nutter
2448	John N. Smith
2449	Brian Narelle
2450	Jane Birkin
2451	Jan Kounen
2452	John Pasquin
2453	Brian Robbins (I)
2454	Denys Arcand
2455	Brett Leonard
2456	Jojo Marr
2457	James Farentino
2458	Bodil J&#248;rgensen
2459	Bobby Farrelly
2460	James Franciscus
2461	Bob Spiers
2462	James Frawley
2463	Deran Sarafian
2464	Bob Saget
2465	James Donald (I)
2466	Des McAnuff
2467	Bob Rafelson
2468	Desmond Davis (I)
2469	James Eckhouse
2470	James Olson
2471	Debbie Harry
2472	Brenda Chapman
2473	John Sturges
2474	John Swanbeck
2475	Debbie Reynolds
2476	Dennis Dun
2477	Bradford Dillman
2478	David McNally (II)
2479	James Merendino
2480	Brad Bird
2481	Deborah Theaker
2482	Dennis Boutsikaris
2483	Boris Sagal
2484	Boris Karloff
2485	Brandon Lee
2486	Olivia de Havilland
2487	Linda Kozlowski
2488	Orlando Jones
2489	Sally Potter
2490	Ono Fleischer
2491	Robert Iscove
2492	Marshall Herskovitz
2493	Robert Harmon (I)
2494	T&#233;a Leoni
2495	Sam Bottoms
2496	Oliver Robins
2497	Victoria Jackson (I)
2498	Marlon Wayans
2499	Oleg Menshikov
2500	Vincent Ward
2501	Marleen Gorris
2502	Robert Kurtzman
2503	Nigel Cole
2504	Paige Turco
2505	Vincent Gardenia
2506	Mark McKinney (I)
2507	Mark Patton
2508	Paige O'Hara
2509	Sean S. Cunningham
2510	Mark S. Waters
2511	Mark Watson (II)
2512	Mark Steven Johnson
2513	Richard Franklin
2514	Mark Stewart (I)
2515	Mark Tarlov
2516	Robert Joy (I)
2517	Robert Greenwald
2518	Mark Rydell
2519	Nigel Terry
2520	Marvin Chatinover
2521	Robert Donat
2522	Nikolaj Coster-Waldau
2523	Mary Costa
2524	Tanya Roberts
2525	Victoria Abril
2526	Richard Loncraine
2527	Vernon Wells
2528	Tarsem Singh
2529	Robert Crumb
2530	Nigel Havers
2531	Mary Harron
2532	Sam Wood
2533	Rena Owen
2534	Nikolai Grinko
2535	Norbert Auerbach
2536	Takeshi Kaneshiro
2537	Talisa Soto
2538	Victor Sj&#246;str&#246;m
2539	Martin Campbell
2540	Victor Salva
2541	Victor Nunez
2542	Sam Mendes
2543	Tamara Jenkins
2544	Marv Newland
2545	Nomadlozi Kubheka
2546	Vicki Lewis
2547	Noah Hathaway
2548	Marty Feldman
2549	Vic Morrow
2550	Sal Mineo
2551	Martin Rosen (I)
2552	Paul Auster
2553	Robert Strauss (I)
2554	Maria Bello
2555	Walter Pidgeon
2556	Paul Brickman
2557	Rupert Wainwright
2558	W.D. Richter
2559	Walter Levine
2560	Walter Salles
2561	Stuart Gordon
2562	Patrick Wymark
2563	Selma Blair
2564	W.S. Van Dyke
2565	Marilyn Burns
2566	Pamela Anderson
2567	Paul Bogart
2568	Wenche Foss
2569	Shari Albert
2570	Marc Rocco
2571	Steve James (II)
2572	Marc Singer
2573	Marcel Carn&#233;
2574	Steve Rash
2575	Steven Lisberger
2576	Paul Freeman (I)
2577	Steven Kloves
2578	Steven Baigelman (II)
2579	Margaret Sheridan
2580	Margaret Whitton
2581	Steven E. De Souza
2582	Robert Towne
2583	Mario Adorf
2584	Marcia Strassman
2585	Vincenzo Natali
2586	Robert Mulligan
2587	Michelangelo Antonioni
2588	Robert Moore (I)
2589	S&#246;nke Wortmann
2590	Robert Longo
2591	Patrick Macnee
2592	Mark Christopher
2593	Pat Proft
2594	S&#248;ren Kragh-Jacobsen
2595	Susanne Lothar
2596	Mark Herman (I)
2597	Vincente Minnelli
2598	Mark Illsley
2599	Paris Barclay
2600	Pascal Benezech
2601	Patricia Birch
2602	Patricia Wettig
2603	Sebastian Rice-Edwards
2604	Marion Mack
2605	Robert Rossen
2606	Richard Brooks (I)
2607	Sebastian Cabot
2608	Robert Oliveri
2609	Viveca Lindfors
2610	Pat O'Connor (I)
2611	Marius Weyers
2612	Patrice Leconte
2613	Patrice Ch&#233;reau
2614	Mark A.Z. Dipp&#233;
2615	Susan Seidelman
2616	Robert Cornthwaite
2617	Vivian Wu
2618	Rick Rosenthal
2619	Todd Phillips (I)
2620	Mike Mitchell (VI)
2621	Michael Goldenberg
2622	Sarah Miles (I)
2623	Rob Minkoff
2624	Michael Hordern
2625	Michael Haigney
2626	Michael Corrente
2627	Tom Ewell
2628	Mike Hodges (I)
2629	Michael Haneke
2630	Mike Gabriel
2631	Mikael Salomon
2632	Mia Sara
2633	Tom Dey
2634	Scott Kalvert
2635	Vera Miles
2636	Tuesday Knight
2637	Tsutomu Yamazaki
2638	Mitsuo Iwata
2639	Michael Bowen
2640	Mitchell Lichtenstein
2641	Troy Duffy
2642	Tinto Brass
2643	Milcho Manchevski
2644	Tod Browning
2645	Michael Cimino
2646	Mili Avital
2647	Todd Haynes
2648	Michael Constantine
2649	Tom Helmore
2650	Tsutomu Tatsumi
2651	Tony Bancroft
2652	Michael Pressman
2653	Tony Richardson (I)
2654	Michael Rennie
2655	Tony Randel
2656	Tammy Lauren
2657	Michael Hitchcock
2658	Tony Lo Bianco
2659	Michele Soavi
2660	Ringo Starr
2661	Tony Bill
2662	Tony Curtis
2663	Tony Kaye (I)
2664	Risa Bramon Garcia
2665	Michael Winterbottom
2666	Michel Piccoli
2667	Michael Moriarty
2668	Miguel Sandoval (I)
2669	Michael Jordan
2670	Tom Mankiewicz
2671	Michael Kirby
2672	Mieko Harada
2673	Rob Bowman (I)
2674	Savage Steve Holland
2675	Tom Stoppard
2676	Michael Patrick Jann
2677	Trace Beaulieu
2678	Michael Nouri
2679	Michael Oliver (I)
2680	Tommy Lee Wallace
2681	Michael Pataki
2682	Timothy Balme
2683	Riz Abbasi
2684	Nelson Shin
2685	Matt McCoy
2686	Matt Reeves
2687	Terry Ballard
2688	Matt Williams (II)
2689	Newt Arnold
2690	Val Guest
2691	Terry Hughes
2692	Ted Post
2693	Matthew Robbins (I)
2694	Maud Adams
2695	Terry Potter
2696	Terry Zwigoff
2697	Sean Chapman
2698	Michael Anderson (I)
2699	Matthew Bright
2700	Vanessa L. Williams
2701	Mary Lambert
2702	Taye Diggs
2703	Nick Metropolis
2704	Nick Gomez
2705	Mary Tyler Moore
2706	Robert Clouse
2707	Robert Butler (I)
2708	Robert Carradine
2709	Nicholas Rowe
2710	Masatoshi Nagase
2711	Sean Gullette
2712	Masayuki Suo
2713	Nicholas Webster
2714	Ted Neeley
2715	Neal Israel
2716	Nick Castle (I)
2717	Melvin Frank
2718	Tilda Swinton
2719	Melanie Brown (I)
2720	Muhammad Ali
2721	Tim Hill (III)
2722	Melissa Joan Hart
2723	Maureen O'Sullivan
2724	Montgomery Clift
2725	Scott Silver (I)
2726	Menahem Golan
2727	Tim Pope (I)
2728	Tyrone Power
2729	Rick Friedberg
2730	Sara Gilbert (I)
2731	Tushka Bergen
2732	Morris Day
2733	Scott Weinger
2734	Ulu Grosbard
2735	Ulrich Edel
2736	Natasha Richardson
2737	Max Pomeranc
2738	Samy Naceri
2739	Maxine Bahns
2740	Mel Stuart
2741	Natalya Bondarchuk
2742	Mekhi Phifer
2743	Thomas Carter (II)
2744	Thomas Jay Ryan
2745	Thomas Schlamme
2746	Naomi Watts
2747	Nancy Meyers
2748	Robert Morley (I)
2749	Robert Arkins
2750	Poppy Montgomery
2751	Wilhelmenia Fernandez
2752	Roger Vadim
2753	Youki Kudoh
2754	Peter Bonerz
2755	Shekhar Kapur
2756	Roger Miller
2757	Peter Cattaneo
2758	Rod Daniel
2759	Ronald Neame
2760	Roger Michell
2761	Ronald F. Maxwell
2762	Peter Collinson
2763	William Malone
2764	Rossy de Palma
2765	Roger Kumble
2766	Polly Bergen
2767	Lynn Whitfield
2768	Rod Lurie
2769	Ross Malinger
2770	Peter Chelsom
2771	Percy Adlon
2772	Liz Gilles
2773	Magali No&#235;l
2774	Sinbad
2775	Stephen Kessler
2776	Roy Ward Baker
2777	Willard Carroll
2778	Lochlyn Munro
2779	Willard Huyck
2780	Prince
2781	Yves Montand
2782	Lothaire Bluteau
2783	R&#233;my Belvaux
2784	Stephen Daldry
2785	R&#233;gis Wargnier
2786	Lonny Chapman
2787	Randa Haines
2788	Stephen Barker Turner
2789	William Finley (I)
2790	Lori Cardille
2791	Willeke van Ammelrooy
2792	Peter Lorre
2793	Peter Hewitt (I)
2794	Stacy Peralta
2795	Luis Mandoki
2796	Luis Barzaga
2797	Rodman Flender
2798	Rory Cochrane
2799	Ray Milland
2800	Y&#244;ji Matsuda
2801	Lynn Redgrave
2802	Peter Lord (I)
2803	Lukas Moodysson
2804	Peter MacDonald
2805	Spiros Foc&#225;s
2806	Roger Christian
2807	Phil Joanou
2808	Peyton Reed
2809	Peter R. Hunt (I)
2810	Peter O'Fallon
2811	Sophia Loren
2812	Luigi Pistilli
2813	Lou Reed
2814	William Gates
2815	Solomon Perel
2816	Rebecca Pidgeon
2817	Stanley Swerdlow
2818	Ronee Blakley
2819	Lou Adler
2820	Sondra Locke
2821	Pierre Batcheff
2822	Peter H. Hunt
2823	Peter Faiman
2824	Ronny Yu
2825	Peter Farrelly
2826	Peter Firth
2827	Roddy Piper
2828	Philippe Noiret
2829	Stan Dragoti
2830	Yimou Zhang
2831	Peter Friedman (I)
2832	Raymond Massey (I)
2833	Stefan Schwartz
2834	Shelley Winters
2835	Zbigniew Zamachowski
2836	Zack Norman
2837	Lisanne Falk
2838	Sidney J. Furie
2839	Lisa Blount
2840	Ram&#243;n Men&#233;ndez (I)
2841	Rachel Weisz
2842	Stephen Surjik
2843	Zachary David Cope
2844	Lisa Banes
2845	Yvette Mimieux
2846	Ron Fricke
2847	Steve Gordon (I)
2848	Ramesh Sippy
2849	Ralph Bakshi
2850	Yvonne Furneaux
2851	Ron Moody
2852	Reginald Hudlin
2853	Steve Carr (III)
2854	Zakes Mokae
2855	Paul McCartney
2856	Ralph Macchio
2857	Whit Stillman
2858	Siem Vroom
2859	Paul Weitz
2860	Paul Weiland
2861	Stephen Norrington
2862	Paul Williams (III)
2863	Robin Hardy
2864	Lisa Gay Hamilton
2865	Linden Ashby
2866	Rachel True
2867	Lisa Cholodenko
2868	Rand Ravich
2869	Lisa Boyle
2870	Lindsay Lohan
2871	Mar&#237;a Barranco
2872	Walter Gotell
2873	Dana Ivey
2874	Mark Margolis
2875	Larry Hankin
2876	Kevin Tighe
2877	Mark Boone Junior
2878	Robert Picardo
2879	Richard Portnow
2880	Norman Burton
2881	Kenny Baker (I)
2882	Jason Flemyng
2883	Ian Wolfe
2884	Dennis Burkley
2885	Danielle Harris
2886	Robin Bartlett
2887	Jonathan Banks
2888	Vincent Schiavelli
2889	Don Calfa
2890	J.C. Quinn
2891	Richard Bright
2892	Scott Paulin
2893	Troy Evans
2894	Scatman Crothers
2895	Conchata Ferrell
2896	John Capodice
2897	Beatrice Winde
2898	Brian Tarantina
2899	Andy Romano
2900	Amy Wright
2901	Ron Dean
2902	Connie Ray
2903	Linda Harrison
2904	Phyllida Law
2905	Brock Peters
2906	Lyle Lovett
2907	Gene Canfield
2908	Steven Hill (I)
2909	James Saito
2910	Matt Malloy (I)
2911	Jay O. Sanders
2912	Geoffrey Palmer
2913	Fred Willard
2914	Lee Tergesen
2915	Philip Stone (I)
2916	Elizabeth Lawrence
2917	Jared Harris
2918	Graham Stark
2919	Victor Garber
2920	Buck Henry
2921	Bruce Mahler
2922	Robert Miranda
2923	Lin Shaye
2924	Tony Plana
2925	Martin Ferrero
2926	Dick Van Patten
2927	Steve Kahan
2928	Earl Boen
2929	Clive Merrison
2930	Debra Monk
2931	Tzi Ma
2932	Mercedes Ruehl
2933	Kathleen Freeman (I)
2934	Stephanie Faracy
2935	Ewen Bremner
2936	Bo Hopkins
2937	Alfred Molina
2938	Patrick Van Horn
2939	Leonard Rossiter
2940	Stephen Spinella
2941	Catherine Keener
2942	John Finn
2943	Michael Kitchen
2944	George Wyner
2945	Diane Ladd
2946	Tsai Chin (I)
2947	Stephen Root
2948	Daniel Baldwin
2949	Gerry Becker
2950	Sheb Wooley
2951	Susan Barnes
2952	Gerry Bamman
2953	Mena Suvari
2954	Robin Thomas (I)
2955	Chick Ortega
2956	Dinah Manoff
2957	John Fiedler (I)
2958	Michael Richards
2959	Ciar&#225;n Hinds
2960	Matt Ross (I)
2961	Dick O'Neill
2962	Jerry Levine
2963	Janet Carroll
2964	Terry Alexander (I)
2965	Jennifer Esposito
2966	Dominic West
2967	Jenny Wright
2968	Leonardo Cimino
2969	Valri Bromfield
2970	R.G. Armstrong
2971	Ralph Brown (I)
2972	George DiCenzo
2973	Leopoldo Trieste
2974	Blair Brown
2975	Rick Overton
2976	Scarlett Johansson
2977	Ray McAnally
2978	Matt Adler
2979	Jim Breuer
2980	Michael A. Goorjian
2981	David Andrews (I)
2982	Esther Rolle
2983	Barbara Barrie
2984	John Lynch
2985	Michael Murphy (I)
2986	Clifton James
2987	Don Lake
2988	Michael Lombard
2989	Graham Beckel
2990	Joe Viterelli
2991	Siobhan Fallon
2992	Claire Forlani
2993	Bill McCutcheon
2994	Tom Wood (II)
2995	John Michael Higgins
2996	Bill Paterson (I)
2997	Polly Holliday
2998	Philippe Morier-Genoud
2999	Evelyn Keyes
3000	George Grizzard
3001	Danny Mann (I)
3002	Soon-Tek Oh
3003	Meat Loaf
3004	Janet Margolin
3005	Arthur O'Connell
3006	John Ratzenberger
3007	Randall Batinkoff
3008	Lolita Davidovich
3009	Tim Kazurinsky
3010	Morris Chestnut
3011	Aeryk Egan
3012	Portia de Rossi
3013	Barbara Harris
3014	Robert A. Silverman
3015	Jason Bernard (I)
3016	Barret Oliver
3017	Harve Presnell
3018	Peter Greene (I)
3019	Gary Riley (I)
3020	Harold Gould
3021	Marilyn Sokol
3022	Frank Welker
3023	Dwier Brown
3024	Dan Bell
3025	Marley Shelton
3026	Allan Rich (I)
3027	Robert Stanton (II)
3028	Renoly Santiago
3029	Gabrielle Union
3030	Kevin Dillon
3031	L.Q. Jones
3032	Paprika Steen
3033	Byron Mann
3034	Martin Mull
3035	Robert Goulet
3036	Harley Jane Kozak
3037	Denise Y. Dowse
3038	Richard Bradford (I)
3039	Henry Daniell
3040	Eddie Izzard
3041	Christian Clemenson
3042	Doug McGrath (I)
3043	Jada Pinkett
3044	Ingeborga Dapkunaite
3045	Alexander Godunov
3046	Gary Lewis (III)
3047	Peter Arne
3048	Henry Goodman
3049	Mark Lenard
3050	Daniel Benzali
3051	Malik Yoba
3052	Patrick Godfrey (I)
3053	Pat Roach
3054	Andrew Lowery
3055	Dan Shor
3056	Patti LuPone
3057	Rodney Eastman
3058	Susanna Thompson
3059	Dylan Bruno
3060	Ray McKinnon
3061	Stacy Edwards
3062	Amanda Wyss
3063	Maddie Corman
3064	Seann William Scott
3065	Alan North
3066	Heidi Schanz
3067	Paul McCrane
3068	Larry Joshua
3069	Chris Haywood
3070	Spencer Treat Clark
3071	Charles Fleischer
3072	Tamara Tunie
3073	Brooke Langton
3074	Lucas Black (II)
3075	Mark Holton
3076	Mary Mara
3077	Mare Winningham
3078	Jack Riley (II)
3079	Derrick O'Connor
3080	Nora Dunn
3081	Marc Duret
3082	Stephen Furst
3083	Jenny McCarthy
3084	Billy Green Bush
3085	Eugene Roche (I)
3086	Regina Taylor
3087	Mindy Sterling
3088	Patrick Labyorteaux
3089	Susan May Pratt
3090	Carrie Snodgress
3091	Pauly Shore
3092	Richard Brooks (II)
3093	J. Pat O'Malley
3094	Patricia Quinn (I)
3095	Ramon Bieri
3096	Stephen Lack
3097	Jack Angel (I)
3098	Susan Blakely
3099	Richard Chamberlain
3100	Carroll Baker
3101	Patric Knowles
3102	Chris Barnes (II)
3103	Jack Albertson
3104	Dan Hicks (I)
3105	Clive Russell
3106	Ian Richardson
3107	Hugh Marlowe
3108	Rae Dawn Chong
3109	Hilary Gordon
3110	Hugh Griffith (I)
3111	Paul Henreid
3112	Steve Rackman
3113	Ralph Strait
3114	Rik Mayall
3115	Hugh Quarshie
3116	Tone Loc
3117	Michelle Forbes
3118	G&#233;rard Darmon
3119	Jim Varney
3120	Hoagy Carmichael
3121	Renato Scarpa
3122	Ernie Dingo
3123	Ralph Carlsson
3124	Charley Grapewin
3125	Shannen Doherty
3126	Ralph Meeker
3127	Howard St. John
3128	Estelle Parsons
3129	Geraldine Fitzgerald
3130	Rachael Leigh Cook
3131	Scott Brady (I)
3132	Richard Basehart
3133	Clifton Collins Jr.
3134	Miguel Bos&#233;
3135	Jessica Alba
3136	Rhys Ifans
3137	Paulette Goddard
3138	Stephen Young (I)
3139	Paula Kelly (I)
3140	Mike Henry
3141	Sig Ruman
3142	Henry Rollins
3143	Henry Thomas
3144	Ian Abercrombie
3145	Estelle Getty
3146	Frederique Van Der Wal
3147	Jim Carter (I)
3148	Steven Bauer
3149	Scott Bakula
3150	Chad Everett
3151	Burt Kwouk
3152	Buzz Kilman
3153	Fernando Fern&#225;n G&#243;mez
3154	Gates McFadden
3155	Cindy Morgan
3156	Richard Roxburgh
3157	Stanislas Carr&#233; de Malberg
3158	Harcourt Williams
3159	Terry-Thomas
3160	Buddy Hackett
3161	James Gleason (I)
3162	Oded Fehr
3163	Daniel Gerroll
3164	Scott Wolf (I)
3165	Theodore Bikel
3166	Scott Wilson (I)
3167	Sean Pertwee
3168	Naveen Andrews
3169	Nathaniel Parker
3170	Gordon Clapp (I)
3171	T.K. Carter
3172	Harold Perrineau Jr.
3173	Perry Lopez
3174	Taliesin Jaffe
3175	Finlay Currie
3176	Sophie Lee
3177	Chuck Connors (I)
3178	Peter Mayhew (II)
3179	Nicol Williamson
3180	Daniel Wyllie
3181	Nigel Bruce
3182	Sheryl Lee Ralph
3183	Philip Davis (I)
3184	Fiona Lewis
3185	Noel Coward
3186	Jane Kaczmarek
3187	Natalie Trundy
3188	Stacey Dash
3189	Terrence Dashon Howard
3190	Raymond Burr
3191	Tantoo Cardinal
3192	Daniel Olbrychski
3193	Fran&#231;ois Chau
3194	Fernando Rey
3195	Richard Jaeckel
3196	Brian McNamara
3197	James Karen
3198	Srdjan Todorovic
3199	Queen Latifah
3200	Gloria Reuben
3201	Pamela Gidley
3202	Carla Gugino
3203	Suzanna Hamilton
3204	Paolo Bonacelli
3205	George Chakiris
3206	Randall 'Tex' Cobb
3207	Monica Evans
3208	Gary Dourdan
3209	Jackie Earle Haley
3210	Jack O'Halloran
3211	Jackie Gayle
3212	Timothy Dalton
3213	Hattie McDaniel
3214	Chris Owen (I)
3215	Carol Cleveland
3216	Heather Angel
3217	Susan Tyrrell
3218	Joan Chen
3219	Chris Klein
3220	R.D. Call
3221	Jennifer Elise Cox
3222	Park Overall
3223	Nancy Marchand
3224	Frances Fisher
3225	Peter Dobson
3226	Thomas Gibson (I)
3227	Brendan Gleeson
3228	Jean Hagen
3229	Stefania Casini
3230	Colin Friels
3231	Jean Louisa Kelly
3232	Richard T. Jones
3233	Moroni Olsen
3234	Peter Cushing
3235	Heather O'Rourke
3236	Clarence Felder
3237	Randy Brooks (I)
3238	Bradley Pierce
3239	Candy Clark
3240	Brad Sullivan
3241	Sofie Gr&#229;b&#248;l
3242	Jacqueline Obradors
3243	Dana Elcar
3244	Peter Bull (I)
3245	Suzanne Snyder
3246	Jake Lloyd (I)
3247	Marlene Dietrich
3248	Elizabeth Ashley
3249	Anna Quayle
3250	David Sheiner
3251	Vincent Spano
3252	Julian Glover
3253	David Schofield
3254	Sa&#239;d Taghmaoui
3255	Vince Vieluf
3256	Mark Feuerstein
3257	Joshua Rudoy
3258	Anthony Dawson (I)
3259	Martha Gehman
3260	Josephine Hull
3261	Anthony Higgins
3262	Marina Sirtis
3263	John de Lancie
3264	Marita Geraghty
3265	Justin Lazard
3266	Kate Mulgrew
3267	Melinda McGraw
3268	Ruth White (II)
3269	Robert Rusler
3270	Marisa Berenson
3271	Julie Bovasso
3272	Kari Wuhrer
3273	Sam Jaffe (I)
3274	David Yip
3275	Sarah Douglas (I)
3276	Robert Peters (I)
3277	John Castle (II)
3278	Mark Blankfield
3279	Julie Warner
3280	Andy Devine (I)
3281	John Mills (I)
3282	Victor Buono
3283	Matt Frewer
3284	Sammy Davis Jr.
3285	John Stockwell
3286	John Harkins
3287	Barbara Sukowa
3288	Arsin&#233;e Khanjian
3289	Arye Gross
3290	Robbie Coltrane
3291	B.B. King
3292	David Hunt (II)
3293	John McGiver (I)
3294	John Marshall Jones
3295	Meg Tilly
3296	Megan Cavanagh
3297	Valerie Chow
3298	Arliss Howard
3299	Anton Diffring
3300	David Moscow
3301	Barry Nelson (I)
3302	David Morrissey
3303	Michael Byrne
3304	Jonathan Stark
3305	Art Evans
3306	Jonathan Lipnicki
3307	Tracy Reed (I)
3308	Jon Bon Jovi
3309	Emmanuelle Seigner
3310	Jon Abrahams
3311	Mason Adams
3312	Michael Angarano
3313	Van Heflin
3314	Jonathan Rhys-Meyers
3315	Larry Drake
3316	Laurence Luckinbill
3317	Don Steele (I)
3318	Rosalind Cash
3319	Benny Hill
3320	Donald F. Muhich
3321	Larry Gilliard Jr.
3322	David Clennon
3323	Winston Chao
3324	Yancy Butler
3325	Larry B. Scott
3326	Donald O'Connor
3327	Lance Kinsey
3328	Rosario Dawson
3329	Luke Perry
3330	Kate Hudson
3331	Michael Patrick Carter
3332	Erik King
3333	Lisa Eilbacher
3334	Adam LaVorgna
3335	Joan Severance
3336	Yvonne De Carlo
3337	Roland Bertin
3338	Leo Rossi (II)
3339	Ritch Brinkley
3340	Joanna Going
3341	Laurence Mason
3342	Leo Burmester
3343	Lenore Banks
3344	Lee Strasberg
3345	Louis Calhern
3346	Lawrence Dane
3347	Rita Moreno
3348	William Sage
3349	Adrian Zmed
3350	John Amos (I)
3351	Debbi Morgan
3352	Kent Williams
3353	Amanda Peet
3354	Marcus Gilbert
3355	Eric Mabius
3356	Wayne Newton
3357	Michael Massee
3358	Eartha Kitt
3359	Wendy Hiller
3360	Margarita Lozano
3361	Ebbe Roe Smith
3362	Maria de Medeiros
3363	Maria Grazia Cucinotta
3364	Russell Wong
3365	Marian Seldes
3366	Margaret Dumont
3367	Alix Koromzay
3368	Roscoe Karns
3369	Roseanne
3370	Dorothy Malone
3371	Roxanne Hart
3372	Kirk Baltz
3373	William Devane
3374	Alyssa Milano
3375	Mae Questel
3376	Wendy Makkena
3377	Dwight Yoakam
3378	Allen Payne (I)
3379	Joe Turkel
3380	Dyan Cannon
3381	Kim Greist
3382	Jack Kehler
3383	Nicole Ari Parker
3384	Sy Richardson
3385	James Handy
3386	Scott Thomson (I)
3387	Kathleen Wilhoite
3388	Robert Ridgely
3389	Anna Levine (I)
3390	John Qualen
3391	Sab Shimono
3392	Lee Garlington
3393	George 'Buck' Flower
3394	Jos&#233; Z&#250;&#241;iga
3395	Leslie Stefanson
3396	Kurt Fuller
3397	Rudy Bond
3398	Barton Heyman
3399	Carmen Argenziano
3400	Raymond Cruz
3401	Nancy Fish
3402	Rosanna DeSoto
3403	Lynne Thigpen
3404	Courtney Love
3405	Holt McCallany
3406	Martin Clunes
3407	Jacob Vargas
3408	Michael Gaston
3409	Max Perlich
3410	Pepe Serna
3411	Gregory Sporleder
3412	Woodrow Parfrey
3413	Michael Higgins (I)
3414	Timothy Carhart
3415	Geoffrey Blake
3416	Jonathan Winters
3417	Edie Adams
3418	Sam McMurray
3419	Peter Brocco
3420	Alexa Vega
3421	Norman Reedus
3422	Reg E. Cathey
3423	Sheila Kelley (I)
3424	James Tolkan
3425	Sophie Marceau
3426	Alan Oppenheimer
3427	Ellen Albertini Dow
3428	Tommy Flanagan (I)
3429	Jamie Farr
3430	Jon Stewart
3431	Ben Wright (I)
3432	Bruce A. Young
3433	Archie Hahn
3434	Eve Arden
3435	Mary Kay Bergman
3436	Raynor Scheine
3437	Robert Costanzo
3438	Alida Valli
3439	Peter Dvorsky (I)
3440	Kimberly Scott
3441	Laraine Newman
3442	Steven Wright (I)
3443	Mink Stole
3444	Jack Murdock
3445	Todd Louiso
3446	Susan Traylor
3447	Rick Zumwalt
3448	Carolyn Jones (I)
3449	Paul Calderon
3450	Paul Herman
3451	J.K. Simmons
3452	Anna Deavere Smith
3453	Tom Heaton
3454	Richard C. Sarafian
3455	Andy Dick
3456	Vivica A. Fox
3457	Emily Mortimer
3458	Fred Asparagus
3459	Richard Boes
3460	Kate McGregor-Stewart
3461	John Beasley
3462	Milton Berle
3463	Denise Crosby
3464	Kim Robillard
3465	Chris Ellis (I)
3466	Art LaFleur
3467	Helen Shaver
3468	Stephen Pearlman
3469	Tobin Bell
3470	Charles Gray (I)
3471	Malcolm Danare
3472	O-Lan Jones
3473	Cherry Jones
3474	Anne Haney
3475	Wendy Schaal
3476	Chauncey Leopardi
3477	Gabriel Mann
3478	Anna Maria Horsford
3479	Charles Napier
3480	Charles McKeown
3481	Dub Taylor
3482	Claire Skinner (I)
3483	Arthur Malet
3484	Time Winters
3485	Jay Patterson (I)
3486	Gregg Berger
3487	Liam Dunn
3488	Maureen Teefy
3489	Simon MacCorkindale
3490	Lauren Tom
3491	Joanna Merlin
3492	Aida Turturro
3493	Lawrence Pressman
3494	Bernie Casey
3495	Thomas Kopache
3496	Lee McCain
3497	Beth Grant
3498	David Hemmings (I)
3499	John Putch
3500	Robert Beatty (I)
3501	Dimitra Arliss
3502	Ralph Waite
3503	Tyra Ferrell
3504	Leigh French
3505	George P. Wilbur
3506	Ron Jeremy
3507	Mandy Patinkin
3508	Deirdre O'Connell
3509	Kenneth Tobey
3510	Amanda Bearse
3511	Les Tremayne
3512	Amanda De Cadenet
3513	Howard Erskine
3514	Henry Victor
3515	Joey Slotnick
3516	Tom O'Brien (II)
3517	Ron Vawter
3518	Kevin O'Morrison
3519	David Bowe
3520	Dody Goodman
3521	Priscilla Pointer
3522	Marcel Iures
3523	Jihmi Kennedy
3524	Roger Wilson (I)
3525	Adrian Dunbar
3526	Tom Riis Farrell
3527	Curt Bois
3528	Gia Carides
3529	Loles Le&#243;n
3530	Estelle Harris
3531	Paul Geoffrey
3532	Cress Williams
3533	Horst Buchholz
3534	Estelle Winwood
3535	Roger Yuan
3536	Michael Williams (I)
3537	Deems Taylor
3538	Traci Lind
3539	Kenneth Welsh
3540	Claudia Christian
3541	Kerry Walker
3542	Michael McShane (I)
3543	Mickey Cottrell
3544	Deborah Harmon
3545	Rufus Thomas
3546	Paul Benjamin
3547	Ed Nelson (I)
3548	Maria Pitillo
3549	Zelda Rubinstein
3550	Paul Ben-Victor
3551	Raf Vallone
3552	George Raft
3553	Carole Shelley
3554	Linda Bassett
3555	Simon Jones (I)
3556	Dina Merrill
3557	Tracy Brooks Swope
3558	Linda Hart
3559	Patti D'Arbanville
3560	Ingrid Pitt
3561	George Macready
3562	Sully Boyar
3563	Patrick Malahide
3564	Robert Ryan
3565	Rob Campbell
3566	Irving Metzman
3567	Patrick Kilpatrick
3568	Ricardo Montalban
3569	Hugo Stanger
3570	Cynthia Rhodes
3571	Gerald R. Molen
3572	Paul Greco
3573	Gina Hecht
3574	Zack Duhame
3575	Wilfrid Hyde-White
3576	Amrish Puri
3577	Wendell Pierce
3578	Traci Lords
3579	Eric Lloyd
3580	Ron O'Neal
3581	Eszter Balint
3582	R.M. Haley
3583	Wayne Grace
3584	Lewis Fitz-Gerald
3585	Paul Dillon (I)
3586	Lewis Martin (I)
3587	Sarita Choudhury
3588	Kel Mitchell
3589	Anders Hove
3590	Maria Aitken
3591	Clifton Powell
3592	Daisuke Kat&#244; (I)
3593	Lisa Lu
3594	Greg Collins (II)
3595	Don Pedro Colley
3596	Willie Garson
3597	Gaylen Ross
3598	Sasha Jenson
3599	Michelle Meyrink
3600	Laila Robins
3601	Lacey Kohl
3602	Geoffrey Keen
3603	Stanley Brock
3604	Rod Mullinar
3605	Corey Burton
3606	Michel Galabru
3607	Akosua Busia
3608	Lupe Ontiveros
3609	Ricky Dean Logan
3610	Devin Ratray
3611	Bill Erwin (I)
3612	Lea Salonga
3613	Philippe Volter
3614	Leah Ayres
3615	Donovan Scott (I)
3616	Alison Doody
3617	Lumi Cavazos
3618	Michael Taliferro
3619	Ray Collins (I)
3620	Roger Ashton-Griffiths
3621	Michael Talbott
3622	Ray Charles (I)
3623	Laurel Cronin
3624	Rosalind Chao
3625	Jodi Long
3626	Christopher Meloni
3627	Gregory Smith (I)
3628	Donald Gibb
3629	Saveli Kramarov
3630	Guy Boyd
3631	Rodger Bumpass
3632	Lucille Bliss
3633	Derek de Lint
3634	Michael Reid MacKay
3635	Michelle Burke (I)
3636	Tony Sirico
3637	Larry Brandenburg
3638	Joe Flaherty (I)
3639	Michelan Sisti
3640	Rodney A. Grant
3641	Tomas Milian
3642	Peter Maloney (I)
3643	Ruben Santiago-Hudson
3644	Leelee Sobieski
3645	Alfie Bass
3646	Leib Lensky
3647	Diana Kent (I)
3648	Heidi Kling
3649	Joe Spinell
3650	Jill Clayburgh
3651	Kim Coates
3652	Lenny von Dohlen
3653	Corin Nemec
3654	Chip Zien
3655	Ernest Thesiger
3656	Garcelle Beauvais
3657	Skipp Sudduth
3658	Kieran Mulroney
3659	Gale Hansen
3660	William Katt
3661	Betty Lou Gerson
3662	Keye Luke
3663	Alison Folland
3664	Chester Conklin
3665	Kevin West
3666	Colin Blakely
3667	Red Buttons
3668	Kris Kristofferson
3669	Stuart Charno
3670	Phyllis Applegate
3671	Phyllis Logan
3672	Peter Capaldi
3673	Alex Rocco (I)
3674	Cory Buck
3675	Dexter Fletcher
3676	Mabel King
3677	Don Keefer
3678	Lee Ving
3679	Alexander Goodwin
3680	Lorraine Toussaint
3681	Macdonald Carey
3682	Douglas Spencer
3683	William Frankfather
3684	Bill Kerr (I)
3685	Roy Cooper
3686	Rockets Redglare
3687	Shirley Knight
3688	Ritchie Singer
3689	Chris Mulkey
3690	Jimmy Yuill
3691	Stephanie Roth
3692	James Nesbitt
3693	Thomas G. Waites
3694	Jacques Mathou
3695	Robert J. Steinmiller Jr.
3696	Jay Brazeau
3697	Sam Robards
3698	Bob Peck (I)
3699	Timothy Daly
3700	Dana Wynter
3701	Toby Huss
3702	Ellie Raab
3703	Brian Bedford
3704	Matt Winston
3705	Orson Bean
3706	Elizabeth Moody
3707	David Prowse
3708	Mark Webber (II)
3709	Elpidia Carrillo
3710	Anne Ramsey
3711	Robert Hy Gorman
3712	Taral Hicks
3713	Carl Anderson (II)
3714	Dana Wheeler-Nicholson
3715	Vincent Laresca
3716	Barry Otto
3717	John Dall
3718	Jacob Reynolds
3719	Arija Bareikis
3720	Jay Villiers
3721	B&#233;atrice Dalle
3722	Judy Greer
3723	John Trudell
3724	Matthew Faber
3725	Mark Phelan
3726	Dann Florek
3727	Jonathan Ke Quan
3728	Carel Struycken
3729	Cara Seymour
3730	Vincent Beck
3731	Brian Backer
3732	Richard Foronjy
3733	Sean Sullivan (I)
3734	John Doe (I)
3735	Bud Cort
3736	Tamala Jones
3737	Norman Fell
3738	Victor Jory (I)
3739	John Shrapnel
3740	Elisha Cook Jr.
3741	Jason Beghe
3742	Bryan Larkin
3743	T.E. Russell
3744	Tippi Hedren
3745	Bob Elliott (I)
3746	John Rothman
3747	Joseph Bologna
3748	Valente Rodriguez
3749	Fern Persons
3750	Mischa Barton
3751	Darwin Joston
3752	Daniel Hugh Kelly
3753	Valeri Nikolayev
3754	Robert Gossett
3755	Elisabeth Moss
3756	Jens Albinus
3757	Jason Lively
3758	Elina L&#246;wensohn
3759	Busta Rhymes
3760	Oliver Smith (I)
3761	Thelma Ritter
3762	Barry Primus
3763	Neva Patterson
3764	Brian McConnachie
3765	Mitchell Whitfield
3766	Victor Slezak
3767	John Ridgely
3768	Victor Spinetti
3769	James Madio
3770	Kathy Griffin
3771	Martin Benson
3772	Neil Patrick Harris
3773	Val&#233;rie Lemercier
3774	Minna Gombell
3775	Theresa Merritt
3776	Elizabeth Mitchell
3777	Mike Nussbaum
3778	Brenda Bakke
3779	Mary Louise Wilson
3780	Dean Jones (I)
3781	Jeep Swenson
3782	Richard Marcus
3783	J. Smith-Cameron
3784	Brownie McGhee
3785	Brandon Smith (I)
3786	Vanessa Williams (I)
3787	Marisol Nichols
3788	Barbara Baxley
3789	Fanny Ardant
3790	Nick Searcy
3791	Richard Tyson
3792	Edward Brophy
3793	John MacKay (I)
3794	James Sloyan
3795	Jeff Anderson (I)
3796	Michael Berryman
3797	Marisa Paredes
3798	Tim Blake Nelson
3799	Susan Anspach
3800	Isaach De Bankol&#233;
3801	John Benjamin Hickey
3802	Rick Aviles
3803	Patrick Fontana
3804	Patrick Field
3805	Darren Dalton
3806	Musetta Vander
3807	Jamie Foreman
3808	Jan Hooks
3809	Fortunio Bonanova
3810	Mel Winkler
3811	Johnny Williams (I)
3812	Richard Widmark
3813	Tristine Skyler
3814	Johnny Whitworth
3815	Timothy Olyphant
3816	Ted Ross (II)
3817	Susan Fleetwood
3818	Barbara Crampton
3819	Edwina Moore
3820	Jeremy Howard
3821	Richard Davalos
3822	Eileen Heckart
3823	Thomas Haden Church
3824	Monica Bellucci
3825	Frank Bruynbroek
3826	Pat Morita
3827	John Clive
3828	James Urbaniak
3829	Sage Stallone
3830	Dave Duffy
3831	Art Metrano
3832	Jeff Conaway
3833	Brad Beyer
3834	Ellen Hamilton Latzen
3835	Todd Field
3836	Kai Wulff
3837	Ryan Hurst
3838	Brent Briscoe
3839	Jackie Burroughs
3840	Emmanuel Xuereb
3841	Jean Simmons
3842	Robert Phalen
3843	Caroline Hunt
3844	Tim Holt
3845	K. Todd Freeman
3846	Vinnie Jones
3847	Barbara Babcock (I)
3848	Suzanne Krull
3849	Julie Brown (I)
3850	Michael Durrell
3851	Nickolas Grace
3852	Jean Marsh
3853	Balthazar Getty
3854	Thomas Rosales Jr.
3855	Sanjeev Kumar (I)
3856	Samm-Art Williams
3857	Conrad Veidt
3858	Scott Schwartz
3859	Constance Collier
3860	Daniel York
3861	Daniel Zacapa
3862	Desmond Askew
3863	Derrick Branche
3864	Constance Marie
3865	Connie Booth
3866	Connie Britton
3867	Daniela Bianchi
3868	Samia Shoaib
3869	Sandra Milo
3870	Diane Cilento
3871	Coleen Gray
3872	Diane Franklin
3873	Ronald Allen
3874	Danny Rosen (I)
3875	Cole Sprouse
3876	Shon Greenblatt
3877	Saverio Guerra
3878	Diane Salinger
3879	Sidney Blackmer
3880	Scott Sowers
3881	David Kelly (I)
3882	David Brisbin (I)
3883	Sandy Dennis
3884	Daragh Donnelly
3885	Ron Smerczak
3886	Darby Dougherty
3887	Daria Kalinina
3888	Dick Anthony Williams
3889	Sandra Prinsloo
3890	Dick Crockett
3891	Dario D'Ambrosi
3892	David Herman (I)
3893	Darlene Cates
3894	Ron Lester
3895	Dara Tomanovich
3896	Ronald Squire
3897	David Harris (I)
3898	Samuel Le Bihan
3899	Ronnie Corbett
3900	Shirley Eaton
3901	David Blair (V)
3902	Collin Wilcox Paxton
3903	Screamin' Jay Hawkins
3904	Danny Denzongpa
3905	Colleen Rennison
3906	Colleen Fitzpatrick (I)
3907	Colleen Dewhurst
3908	David Huffman (I)
3909	Samuele Amighetti
3910	Danny Lloyd
3911	Danny Elfman
3912	Scott Williamson
3913	Colin Firth
3914	Colin Clive
3915	Sandra Bernhard
3916	Sandy Nelson (II)
3917	David Johansen
3918	Diana Pe&#241;alver
3919	Diana Rigg
3920	Sandra Hess
3921	Danny Lee (I)
3922	Shirley Douglas
3923	Shirley Jones (I)
3924	David Buck
3925	Da Ying
3926	Declan Croghan
3927	Shani Wallis
3928	Dan O'Bannon
3929	Dan Moran (I)
3930	Declan Hannigan
3931	David Crawford (I)
3932	Dee McCaffrey
3933	Shane (II)
3934	David Bennent
3935	Seth Smith
3936	Debra Feuer
3937	Dan Marino
3938	Sharon Taylor (I)
\.


--
-- Data for Name: casting; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY casting (movieid, actorid, ord) FROM stdin;
\.


--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY dept (id, name) FROM stdin;
1	Computing
2	Design
3	Engineering
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY movie (id, title, yr, score, votes, director) FROM stdin;
\.


--
-- Data for Name: nobel; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY nobel (yr, subject, winner) FROM stdin;
2008	Chemistry	Martin Chalfie
2008	Chemistry	Osamu Shimomura
2008	Chemistry	Roger Y. Tsien
2008	Economics	Paul Krugman
2008	Literature	Jean-Marie Gustave Le ClÃ©zio
2008	Medicine	FranÃ§oise BarrÃ©-Sinoussi
2008	Medicine	Luc Montagnier
2008	Medicine	Harald zur Hausen
2008	Peace	Martti Ahtisaari
2008	Physics	Makoto Kobayashi
2008	Physics	Toshihide Maskawa
2008	Physics	Yoichiro Nambu
2007	Chemistry	Gerhard Ertl
2007	Economics	Leonid Hurwicz
2007	Economics	Eric S. Maskin
2007	Economics	Roger B. Myerson
2007	Literature	Doris Lessing
2007	Medicine	Mario R. Capecchi
2007	Medicine	Sir Martin J. Evans
2007	Medicine	Oliver Smithies
2007	Peace	Intergovernmental Panel on Climate Change
2007	Peace	Al Gore
2007	Physics	Albert Fert
2007	Physics	Peter GrÃ¼nberg
2006	Chemistry	Roger D. Kornberg
2006	Economics	Edmund S. Phelps
2006	Literature	Orhan Pamuk
2006	Medicine	Andrew Z. Fire
2006	Medicine	Craig C. Mello
2006	Peace	Grameen Bank
2006	Peace	Muhammad Yunus
2006	Physics	John C. Mather
2006	Physics	George F. Smoot
2005	Chemistry	Yves Chauvin
2005	Chemistry	Robert H. Grubbs
2005	Chemistry	Richard R. Schrock
2005	Economics	Robert J. Aumann
2005	Economics	Thomas C. Schelling
2005	Literature	Harold Pinter
2005	Medicine	Barry J. Marshall
2005	Medicine	J. Robin Warren
2005	Peace	International Atomic Energy Agency
2005	Peace	Mohamed ElBaradei
2005	Physics	Roy J. Glauber
2005	Physics	John L. Hall
2005	Physics	Theodor W. HÃ¤nsch
2004	Chemistry	Aaron Ciechanover
2004	Chemistry	Avram Hershko
2004	Chemistry	Irwin Rose
2004	Economics	Finn E. Kydland
2004	Economics	Edward C. Prescott
2004	Literature	Elfriede Jelinek
2004	Medicine	Richard Axel
2004	Medicine	Linda B. Buck
2004	Peace	Wangari Maathai
2004	Physics	David J. Gross
2004	Physics	H. David Politzer
2004	Physics	Frank Wilczek
2003	Chemistry	Peter Agre
2003	Chemistry	Roderick MacKinnon
2003	Economics	Robert F. Engle III
2003	Economics	Clive W.J. Granger
2003	Literature	J. M. Coetzee
2003	Medicine	Paul C. Lauterbur
2003	Medicine	Sir Peter Mansfield
2003	Peace	Shirin Ebadi
2003	Physics	Alexei A. Abrikosov
2003	Physics	Vitaly L. Ginzburg
2003	Physics	Anthony J. Leggett
2002	Chemistry	John B. Fenn
2002	Chemistry	Koichi Tanaka
2002	Chemistry	Kurt WÃ¼thrich
2002	Economics	Daniel Kahneman
2002	Economics	Vernon L. Smith
2002	Literature	Imre KertÃ©sz
2002	Medicine	Sydney Brenner
2002	Medicine	H. Robert Horvitz
2002	Medicine	John E. Sulston
2002	Peace	Jimmy Carter
2002	Physics	Raymond Davis Jr.
2002	Physics	Riccardo Giacconi
2002	Physics	Masatoshi Koshiba
2001	Chemistry	William S. Knowles
2001	Chemistry	Ryoji Noyori
2001	Chemistry	K. Barry Sharpless
2001	Economics	George A. Akerlof
2001	Economics	A. Michael Spence
2001	Economics	Joseph E. Stiglitz
2001	Literature	V. S. Naipaul
2001	Medicine	Leland H. Hartwell
2001	Medicine	Tim Hunt
2001	Medicine	Sir Paul Nurse
2001	Peace	United Nations
2001	Peace	Kofi Annan
2001	Physics	Eric A. Cornell
2001	Physics	Wolfgang Ketterle
2001	Physics	Carl E. Wieman
2000	Chemistry	Alan Heeger
2000	Chemistry	Alan G. MacDiarmid
2000	Chemistry	Hideki Shirakawa
2000	Economics	James J. Heckman
2000	Economics	Daniel L. McFadden
2000	Literature	Gao Xingjian
2000	Medicine	Arvid Carlsson
2000	Medicine	Paul Greengard
2000	Medicine	Eric R. Kandel
2000	Peace	Kim Dae-jung
2000	Physics	Zhores I. Alferov
2000	Physics	Jack S. Kilby
2000	Physics	Herbert Kroemer
1999	Chemistry	Ahmed Zewail
1999	Economics	Robert A. Mundell
1999	Literature	GÃ¼nter Grass
1999	Medicine	GÃ¼nter Blobel
1999	Peace	MÃ©decins Sans FrontiÃ¨res
1999	Physics	Gerardus 't Hooft
1999	Physics	Martinus J.G. Veltman
1998	Chemistry	Walter Kohn
1998	Chemistry	John Pople
1998	Economics	Amartya Sen
1998	Literature	JosÃ© Saramago
1998	Medicine	Robert F. Furchgott
1998	Medicine	Louis J. Ignarro
1998	Medicine	Ferid Murad
1998	Peace	John Hume
1998	Peace	David Trimble
1998	Physics	Robert B. Laughlin
1998	Physics	Horst L. StÃ¶rmer
1998	Physics	Daniel C. Tsui
1997	Chemistry	Paul D. Boyer
1997	Chemistry	Jens C. Skou
1997	Chemistry	John E. Walker
1997	Economics	Robert C. Merton
1997	Economics	Myron S. Scholes
1997	Literature	Dario Fo
1997	Medicine	Stanley B. Prusiner
1997	Peace	International Campaign to Ban Landmines
1997	Peace	Jody Williams
1997	Physics	Steven Chu
1997	Physics	Claude Cohen-Tannoudji
1997	Physics	William D. Phillips
1996	Chemistry	Robert F. Curl Jr.
1996	Chemistry	Sir Harold Kroto
1996	Chemistry	Richard E. Smalley
1996	Economics	James A. Mirrlees
1996	Economics	William Vickrey
1996	Literature	Wislawa Szymborska
1996	Medicine	Peter C. Doherty
1996	Medicine	Rolf M. Zinkernagel
1996	Peace	Carlos Filipe Ximenes Belo
1996	Peace	JosÃ© Ramos-Horta
1996	Physics	David M. Lee
1996	Physics	Douglas D. Osheroff
1996	Physics	Robert C. Richardson
1995	Chemistry	Paul J. Crutzen
1995	Chemistry	Mario J. Molina
1995	Chemistry	F. Sherwood Rowland
1995	Economics	Robert E. Lucas Jr.
1995	Literature	Seamus Heaney
1995	Medicine	Edward B. Lewis
1995	Medicine	Christiane NÃ¼sslein-Volhard
1995	Medicine	Eric F. Wieschaus
1995	Peace	Pugwash Conferences on Science and World Affairs
1995	Peace	Joseph Rotblat
1995	Physics	Martin L. Perl
1995	Physics	Frederick Reines
1994	Chemistry	George A. Olah
1994	Economics	John C. Harsanyi
1994	Economics	John F. Nash Jr.
1994	Economics	Reinhard Selten
1994	Literature	Kenzaburo Oe
1994	Medicine	Alfred G. Gilman
1994	Medicine	Martin Rodbell
1994	Peace	Yasser Arafat
1994	Peace	Shimon Peres
1994	Peace	Yitzhak Rabin
1994	Physics	Bertram N. Brockhouse
1994	Physics	Clifford G. Shull
1993	Chemistry	Kary B. Mullis
1993	Chemistry	Michael Smith
1993	Economics	Robert W. Fogel
1993	Economics	Douglass C. North
1993	Literature	Toni Morrison
1993	Medicine	Richard J. Roberts
1993	Medicine	Phillip A. Sharp
1993	Peace	F.W. de Klerk
1993	Peace	Nelson Mandela
1993	Physics	Russell A. Hulse
1993	Physics	Joseph H. Taylor Jr.
1992	Chemistry	Rudolph A. Marcus
1992	Economics	Gary S. Becker
1992	Literature	Derek Walcott
1992	Medicine	Edmond H. Fischer
1992	Medicine	Edwin G. Krebs
1992	Peace	Rigoberta MenchÃº Tum
1992	Physics	Georges Charpak
1991	Chemistry	Richard R. Ernst
1991	Economics	Ronald H. Coase
1991	Literature	Nadine Gordimer
1991	Medicine	Erwin Neher
1991	Medicine	Bert Sakmann
1991	Peace	Aung San Suu Kyi
1991	Physics	Pierre-Gilles de Gennes
1990	Chemistry	Elias James Corey
1990	Economics	Harry M. Markowitz
1990	Economics	Merton H. Miller
1990	Economics	William F. Sharpe
1990	Literature	Octavio Paz
1990	Medicine	Joseph E. Murray
1990	Medicine	E. Donnall Thomas
1990	Peace	Mikhail Gorbachev
1990	Physics	Jerome I. Friedman
1990	Physics	Henry W. Kendall
1990	Physics	Richard E. Taylor
1989	Chemistry	Sidney Altman
1989	Chemistry	Thomas R. Cech
1989	Economics	Trygve Haavelmo
1989	Literature	Camilo JosÃ© Cela
1989	Medicine	J. Michael Bishop
1989	Medicine	Harold E. Varmus
1989	Peace	The 14th Dalai Lama
1989	Physics	Hans G. Dehmelt
1989	Physics	Wolfgang Paul
1989	Physics	Norman F. Ramsey
1988	Chemistry	Johann Deisenhofer
1988	Chemistry	Robert Huber
1988	Chemistry	Hartmut Michel
1988	Economics	Maurice Allais
1988	Literature	Naguib Mahfouz
1988	Medicine	Sir James W. Black
1988	Medicine	Gertrude B. Elion
1988	Medicine	George H. Hitchings
1988	Peace	United Nations Peacekeeping Forces
1988	Physics	Leon M. Lederman
1988	Physics	Melvin Schwartz
1988	Physics	Jack Steinberger
1987	Chemistry	Donald J. Cram
1987	Chemistry	Jean-Marie Lehn
1987	Chemistry	Charles J. Pedersen
1987	Economics	Robert M. Solow
1987	Literature	Joseph Brodsky
1987	Medicine	Susumu Tonegawa
1987	Peace	Oscar Arias SÃ¡nchez
1987	Physics	J. Georg Bednorz
1987	Physics	K. Alex MÃ¼ller
1986	Chemistry	Dudley R. Herschbach
1986	Chemistry	Yuan T. Lee
1986	Chemistry	John C. Polanyi
1986	Economics	James M. Buchanan Jr.
1986	Literature	Wole Soyinka
1986	Medicine	Stanley Cohen
1986	Medicine	Rita Levi-Montalcini
1986	Peace	Elie Wiesel
1986	Physics	Gerd Binnig
1986	Physics	Heinrich Rohrer
1986	Physics	Ernst Ruska
1985	Chemistry	Herbert A. Hauptman
1985	Chemistry	Jerome Karle
1985	Economics	Franco Modigliani
1985	Literature	Claude Simon
1985	Medicine	Michael S. Brown
1985	Medicine	Joseph L. Goldstein
1985	Peace	International Physicians for the Prevention of Nuclear War
1985	Physics	Klaus von Klitzing
1984	Chemistry	Bruce Merrifield
1984	Economics	Richard Stone
1984	Literature	Jaroslav Seifert
1984	Medicine	Niels K. Jerne
1984	Medicine	Georges J.F. KÃ¶hler
1984	Medicine	CÃ©sar Milstein
1984	Peace	Desmond Tutu
1984	Physics	Carlo Rubbia
1984	Physics	Simon van der Meer
1983	Chemistry	Henry Taube
1983	Economics	Gerard Debreu
1983	Literature	William Golding
1983	Medicine	Barbara McClintock
1983	Peace	Lech Walesa
1983	Physics	Subramanyan Chandrasekhar
1983	Physics	William A. Fowler
1982	Chemistry	Aaron Klug
1982	Economics	George J. Stigler
1982	Literature	Gabriel GarcÃ­a MÃ¡rquez
1982	Medicine	Sune K. BergstrÃ¶m
1982	Medicine	Bengt I. Samuelsson
1982	Medicine	John R. Vane
1982	Peace	Alfonso GarcÃ­a Robles
1982	Peace	Alva Myrdal
1982	Physics	Kenneth G. Wilson
1981	Chemistry	Kenichi Fukui
1981	Chemistry	Roald Hoffmann
1981	Economics	James Tobin
1981	Literature	Elias Canetti
1981	Medicine	David H. Hubel
1981	Medicine	Roger W. Sperry
1981	Medicine	Torsten N. Wiesel
1981	Peace	Office of the United Nations High Commissioner for Refugees
1981	Physics	Nicolaas Bloembergen
1981	Physics	Arthur L. Schawlow
1981	Physics	Kai M. Siegbahn
1980	Chemistry	Paul Berg
1980	Chemistry	Walter Gilbert
1980	Chemistry	Frederick Sanger
1980	Economics	Lawrence R. Klein
1980	Literature	Czeslaw Milosz
1980	Medicine	Baruj Benacerraf
1980	Medicine	Jean Dausset
1980	Medicine	George D. Snell
1980	Peace	Adolfo PÃ©rez Esquivel
1980	Physics	James Cronin
1980	Physics	Val Fitch
1979	Chemistry	Herbert C. Brown
1979	Chemistry	Georg Wittig
1979	Economics	Sir Arthur Lewis
1979	Economics	Theodore W. Schultz
1979	Literature	Odysseus Elytis
1979	Medicine	Allan M. Cormack
1979	Medicine	Godfrey N. Hounsfield
1979	Peace	Mother Teresa
1979	Physics	Sheldon Glashow
1979	Physics	Abdus Salam
1979	Physics	Steven Weinberg
1978	Chemistry	Peter Mitchell
1978	Economics	Herbert A. Simon
1978	Literature	Isaac Bashevis Singer
1978	Medicine	Werner Arber
1978	Medicine	Daniel Nathans
1978	Medicine	Hamilton O. Smith
1978	Peace	Anwar al-Sadat
1978	Peace	Menachem Begin
1978	Physics	Pyotr Kapitsa
1978	Physics	Arno Penzias
1978	Physics	Robert Woodrow Wilson
1977	Chemistry	Ilya Prigogine
1977	Economics	James E. Meade
1977	Economics	Bertil Ohlin
1977	Literature	Vicente Aleixandre
1977	Medicine	Roger Guillemin
1977	Medicine	Andrew V. Schally
1977	Medicine	Rosalyn Yalow
1977	Peace	Amnesty International
1977	Physics	Philip W. Anderson
1977	Physics	Sir Nevill F. Mott
1977	Physics	John H. van Vleck
1976	Chemistry	William Lipscomb
1976	Economics	Milton Friedman
1976	Literature	Saul Bellow
1976	Medicine	Baruch S. Blumberg
1976	Medicine	D. Carleton Gajdusek
1976	Peace	Mairead Corrigan
1976	Peace	Betty Williams
1976	Physics	Burton Richter
1976	Physics	Samuel C.C. Ting
1975	Chemistry	John Cornforth
1975	Chemistry	Vladimir Prelog
1975	Economics	Leonid Vitaliyevich Kantorovich
1975	Economics	Tjalling C. Koopmans
1975	Literature	Eugenio Montale
1975	Medicine	David Baltimore
1975	Medicine	Renato Dulbecco
1975	Medicine	Howard M. Temin
1975	Peace	Andrei Sakharov
1975	Physics	Aage N. Bohr
1975	Physics	Ben R. Mottelson
1975	Physics	James Rainwater
1974	Chemistry	Paul J. Flory
1974	Economics	Gunnar Myrdal
1974	Economics	Friedrich August von Hayek
1974	Literature	Eyvind Johnson
1974	Literature	Harry Martinson
1974	Medicine	Albert Claude
1974	Medicine	Christian de Duve
1974	Medicine	George E. Palade
1974	Peace	SeÃ¡n MacBride
1974	Peace	Eisaku Sato
1974	Physics	Antony Hewish
1974	Physics	Martin Ryle
1973	Chemistry	Ernst Otto Fischer
1973	Chemistry	Geoffrey Wilkinson
1973	Economics	Wassily Leontief
1973	Literature	Patrick White
1973	Medicine	Konrad Lorenz
1973	Medicine	Nikolaas Tinbergen
1973	Medicine	Karl von Frisch
1973	Peace	Le Duc Tho
1973	Peace	Henry Kissinger
1973	Physics	Leo Esaki
1973	Physics	Ivar Giaever
1973	Physics	Brian D. Josephson
1972	Chemistry	Christian Anfinsen
1972	Chemistry	Stanford Moore
1972	Chemistry	William H. Stein
1972	Economics	Kenneth J. Arrow
1972	Economics	John R. Hicks
1972	Literature	Heinrich BÃ¶ll
1972	Medicine	Gerald M. Edelman
1972	Medicine	Rodney R. Porter
1972	Physics	John Bardeen
1972	Physics	Leon N. Cooper
1972	Physics	Robert Schrieffer
1971	Chemistry	Gerhard Herzberg
1971	Economics	Simon Kuznets
1971	Literature	Pablo Neruda
1971	Medicine	Earl W. Sutherland, Jr.
1971	Peace	Willy Brandt
1971	Physics	Dennis Gabor
1970	Chemistry	Luis Leloir
1970	Economics	Paul A. Samuelson
1970	Literature	Alexandr Solzhenitsyn
1970	Medicine	Julius Axelrod
1970	Medicine	Sir Bernard Katz
1970	Medicine	Ulf von Euler
1970	Peace	Norman Borlaug
1970	Physics	Hannes AlfvÃ©n
1970	Physics	Louis NÃ©el
1969	Chemistry	Derek Barton
1969	Chemistry	Odd Hassel
1969	Economics	Ragnar Frisch
1969	Economics	Jan Tinbergen
1969	Literature	Samuel Beckett
1969	Medicine	Max DelbrÃ¼ck
1969	Medicine	Alfred D. Hershey
1969	Medicine	Salvador E. Luria
1969	Peace	International Labour Organization
1969	Physics	Murray Gell-Mann
1968	Chemistry	Lars Onsager
1968	Literature	Yasunari Kawabata
1968	Medicine	Robert W. Holley
1968	Medicine	H. Gobind Khorana
1968	Medicine	Marshall W. Nirenberg
1968	Peace	RenÃ© Cassin
1968	Physics	Luis Alvarez
1967	Chemistry	Manfred Eigen
1967	Chemistry	Ronald G.W. Norrish
1967	Chemistry	George Porter
1967	Literature	Miguel Angel Asturias
1967	Medicine	Ragnar Granit
1967	Medicine	Haldan K. Hartline
1967	Medicine	George Wald
1967	Physics	Hans Bethe
1966	Chemistry	Robert S. Mulliken
1966	Literature	Shmuel Agnon
1966	Literature	Nelly Sachs
1966	Medicine	Charles B. Huggins
1966	Medicine	Peyton Rous
1966	Physics	Alfred Kastler
1965	Chemistry	Robert B. Woodward
1965	Literature	Mikhail Sholokhov
1965	Medicine	FranÃ§ois Jacob
1965	Medicine	AndrÃ© Lwoff
1965	Medicine	Jacques Monod
1965	Peace	United Nations Children's Fund
1965	Physics	Richard P. Feynman
1965	Physics	Julian Schwinger
1965	Physics	Sin-Itiro Tomonaga
1964	Chemistry	Dorothy Crowfoot Hodgkin
1964	Literature	Jean-Paul Sartre
1964	Medicine	Konrad Bloch
1964	Medicine	Feodor Lynen
1964	Peace	Martin Luther King Jr.
1964	Physics	Nicolay G. Basov
1964	Physics	Aleksandr M. Prokhorov
1964	Physics	Charles H. Townes
1963	Chemistry	Giulio Natta
1963	Chemistry	Karl Ziegler
1963	Literature	Giorgos Seferis
1963	Medicine	Sir John Eccles
1963	Medicine	Alan L. Hodgkin
1963	Medicine	Andrew F. Huxley
1963	Peace	International Committee of the Red Cross
1963	Peace	League of Red Cross Societies
1963	Physics	Maria Goeppert-Mayer
1963	Physics	J. Hans D. Jensen
1963	Physics	Eugene Wigner
1962	Chemistry	John C. Kendrew
1962	Chemistry	Max F. Perutz
1962	Literature	John Steinbeck
1962	Medicine	Francis Crick
1962	Medicine	James Watson
1962	Medicine	Maurice Wilkins
1962	Peace	Linus Pauling
1962	Physics	Lev Landau
1961	Chemistry	Melvin Calvin
1961	Literature	Ivo Andric
1961	Medicine	Georg von BÃ©kÃ©sy
1961	Peace	Dag HammarskjÃ¶ld
1961	Physics	Robert Hofstadter
1961	Physics	Rudolf MÃ¶ssbauer
1960	Chemistry	Willard F. Libby
1960	Literature	Saint-John Perse
1960	Medicine	Sir Frank Macfarlane Burnet
1960	Medicine	Peter Medawar
1960	Peace	Albert Lutuli
1960	Physics	Donald A. Glaser
1959	Chemistry	Jaroslav Heyrovsky
1959	Literature	Salvatore Quasimodo
1959	Medicine	Arthur Kornberg
1959	Medicine	Severo Ochoa
1959	Peace	Philip Noel-Baker
1959	Physics	Owen Chamberlain
1959	Physics	Emilio SegrÃ¨
1958	Chemistry	Frederick Sanger
1958	Literature	Boris Pasternak
1958	Medicine	George Beadle
1958	Medicine	Joshua Lederberg
1958	Medicine	Edward Tatum
1958	Peace	Georges Pire
1958	Physics	Pavel A. Cherenkov
1958	Physics	IlÂ´ja M. Frank
1958	Physics	Igor Y. Tamm
1957	Chemistry	Lord Todd
1957	Literature	Albert Camus
1957	Medicine	Daniel Bovet
1957	Peace	Lester Bowles Pearson
1957	Physics	Tsung-Dao Lee
1957	Physics	Chen Ning Yang
1956	Chemistry	Sir Cyril Hinshelwood
1956	Chemistry	Nikolay Semenov
1956	Literature	Juan RamÃ³n JimÃ©nez
1956	Medicine	AndrÃ© F. Cournand
1956	Medicine	Werner Forssmann
1956	Medicine	Dickinson W. Richards
1956	Physics	John Bardeen
1956	Physics	Walter H. Brattain
1956	Physics	William B. Shockley
1955	Chemistry	Vincent du Vigneaud
1955	Literature	HalldÃ³r Laxness
1955	Medicine	Hugo Theorell
1955	Physics	Polykarp Kusch
1955	Physics	Willis E. Lamb
1954	Chemistry	Linus Pauling
1954	Literature	Ernest Hemingway
1954	Medicine	John F. Enders
1954	Medicine	Frederick C. Robbins
1954	Medicine	Thomas H. Weller
1954	Peace	Office of the United Nations High Commissioner for Refugees
1954	Physics	Max Born
1954	Physics	Walther Bothe
1953	Chemistry	Hermann Staudinger
1953	Literature	Winston Churchill
1953	Medicine	Hans Krebs
1953	Medicine	Fritz Lipmann
1953	Peace	George C. Marshall
1953	Physics	Frits Zernike
1952	Chemistry	Archer J.P. Martin
1952	Chemistry	Richard L.M. Synge
1952	Literature	FranÃ§ois Mauriac
1952	Medicine	Selman A. Waksman
1952	Peace	Albert Schweitzer
1952	Physics	Felix Bloch
1952	Physics	E. M. Purcell
1951	Chemistry	Edwin M. McMillan
1951	Chemistry	Glenn T. Seaborg
1951	Literature	PÃ¤r Lagerkvist
1951	Medicine	Max Theiler
1951	Peace	LÃ©on Jouhaux
1951	Physics	John Cockcroft
1951	Physics	Ernest T.S. Walton
1950	Chemistry	Kurt Alder
1950	Chemistry	Otto Diels
1950	Literature	Bertrand Russell
1950	Medicine	Philip S. Hench
1950	Medicine	Edward C. Kendall
1950	Medicine	Tadeus Reichstein
1950	Peace	Ralph Bunche
1950	Physics	Cecil Powell
1949	Chemistry	William F. Giauque
1949	Literature	William Faulkner
1949	Medicine	Walter Hess
1949	Medicine	Egas Moniz
1949	Peace	Lord Boyd Orr
1949	Physics	Hideki Yukawa
1948	Chemistry	Arne Tiselius
1948	Literature	T.S. Eliot
1948	Medicine	Paul MÃ¼ller
1948	Physics	Patrick M.S. Blackett
1947	Chemistry	Sir Robert Robinson
1947	Literature	AndrÃ© Gide
1947	Medicine	Carl Cori
1947	Medicine	Gerty Cori
1947	Medicine	Bernardo Houssay
1947	Peace	Friends Service Council
1947	Peace	American Friends Service Committee
1947	Physics	Edward V. Appleton
1946	Chemistry	John H. Northrop
1946	Chemistry	Wendell M. Stanley
1946	Chemistry	James B. Sumner
1946	Literature	Hermann Hesse
1946	Medicine	Hermann J. Muller
1946	Peace	Emily Greene Balch
1946	Peace	John R. Mott
1946	Physics	Percy W. Bridgman
1945	Chemistry	Artturi Virtanen
1945	Literature	Gabriela Mistral
1945	Medicine	Ernst B. Chain
1945	Medicine	Sir Alexander Fleming
1945	Medicine	Sir Howard Florey
1945	Peace	Cordell Hull
1945	Physics	Wolfgang Pauli
1944	Chemistry	Otto Hahn
1944	Literature	Johannes V. Jensen
1944	Medicine	Joseph Erlanger
1944	Medicine	Herbert S. Gasser
1944	Peace	International Committee of the Red Cross
1944	Physics	Isidor Isaac Rabi
1943	Chemistry	George de Hevesy
1943	Medicine	Henrik Dam
1943	Medicine	Edward A. Doisy
1943	Physics	Otto Stern
1939	Chemistry	Adolf Butenandt
1939	Chemistry	Leopold Ruzicka
1939	Literature	Frans Eemil SillanpÃ¤Ã¤
1939	Medicine	Gerhard Domagk
1939	Physics	Ernest Lawrence
1938	Chemistry	Richard Kuhn
1938	Literature	Pearl Buck
1938	Medicine	Corneille Heymans
1938	Peace	Nansen International Office for Refugees
1938	Physics	Enrico Fermi
1937	Chemistry	Norman Haworth
1937	Chemistry	Paul Karrer
1937	Literature	Roger Martin du Gard
1937	Medicine	Albert Szent-GyÃ¶rgyi
1937	Peace	Robert Cecil
1937	Physics	Clinton Davisson
1937	Physics	George Paget Thomson
1936	Chemistry	Peter Debye
1936	Literature	Eugene O'Neill
1936	Medicine	Sir Henry Dale
1936	Medicine	Otto Loewi
1936	Peace	Carlos Saavedra Lamas
1936	Physics	Carl D. Anderson
1936	Physics	Victor F. Hess
1935	Chemistry	FrÃ©dÃ©ric Joliot
1935	Chemistry	IrÃ¨ne Joliot-Curie
1935	Medicine	Hans Spemann
1935	Peace	Carl von Ossietzky
1935	Physics	James Chadwick
1934	Chemistry	Harold C. Urey
1934	Literature	Luigi Pirandello
1934	Medicine	George R. Minot
1934	Medicine	William P. Murphy
1934	Medicine	George H. Whipple
1934	Peace	Arthur Henderson
1933	Literature	Ivan Bunin
1933	Medicine	Thomas H. Morgan
1933	Peace	Sir Norman Angell
1933	Physics	Paul A.M. Dirac
1933	Physics	Erwin SchrÃ¶dinger
1932	Chemistry	Irving Langmuir
1932	Literature	John Galsworthy
1932	Medicine	Edgar Adrian
1932	Medicine	Sir Charles Sherrington
1932	Physics	Werner Heisenberg
1931	Chemistry	Friedrich Bergius
1931	Chemistry	Carl Bosch
1931	Literature	Erik Axel Karlfeldt
1931	Medicine	Otto Warburg
1931	Peace	Jane Addams
1931	Peace	Nicholas Murray Butler
1930	Chemistry	Hans Fischer
1930	Literature	Sinclair Lewis
1930	Medicine	Karl Landsteiner
1930	Peace	Nathan SÃ¶derblom
1930	Physics	Sir Venkata Raman
1929	Chemistry	Arthur Harden
1929	Chemistry	Hans von Euler-Chelpin
1929	Literature	Thomas Mann
1929	Medicine	Christiaan Eijkman
1929	Medicine	Sir Frederick Hopkins
1929	Peace	Frank B. Kellogg
1929	Physics	Louis de Broglie
1928	Chemistry	Adolf Windaus
1928	Literature	Sigrid Undset
1928	Medicine	Charles Nicolle
1928	Physics	Owen Willans Richardson
1927	Chemistry	Heinrich Wieland
1927	Literature	Henri Bergson
1927	Medicine	Julius Wagner-Jauregg
1927	Peace	Ferdinand Buisson
1927	Peace	Ludwig Quidde
1927	Physics	Arthur H. Compton
1927	Physics	C.T.R. Wilson
1926	Chemistry	The Svedberg
1926	Literature	Grazia Deledda
1926	Medicine	Johannes Fibiger
1926	Peace	Aristide Briand
1926	Peace	Gustav Stresemann
1926	Physics	Jean Baptiste Perrin
1925	Chemistry	Richard Zsigmondy
1925	Literature	George Bernard Shaw
1925	Peace	Sir Austen Chamberlain
1925	Peace	Charles G. Dawes
1925	Physics	James Franck
1925	Physics	Gustav Hertz
1924	Literature	Wladyslaw Reymont
1924	Medicine	Willem Einthoven
1924	Physics	Manne Siegbahn
1923	Chemistry	Fritz Pregl
1923	Literature	William Butler Yeats
1923	Medicine	Frederick G. Banting
1923	Medicine	John Macleod
1923	Physics	Robert A. Millikan
1922	Chemistry	Francis W. Aston
1922	Literature	Jacinto Benavente
1922	Medicine	Archibald V. Hill
1922	Medicine	Otto Meyerhof
1922	Peace	Fridtjof Nansen
1922	Physics	Niels Bohr
1921	Chemistry	Frederick Soddy
1921	Literature	Anatole France
1921	Peace	Hjalmar Branting
1921	Peace	Christian Lange
1921	Physics	Albert Einstein
1920	Chemistry	Walther Nernst
1920	Literature	Knut Hamsun
1920	Medicine	August Krogh
1920	Peace	LÃ©on Bourgeois
1920	Physics	Charles Edouard Guillaume
1919	Literature	Carl Spitteler
1919	Medicine	Jules Bordet
1919	Peace	Woodrow Wilson
1919	Physics	Johannes Stark
1918	Chemistry	Fritz Haber
1918	Physics	Max Planck
1917	Literature	Karl Gjellerup
1917	Literature	Henrik Pontoppidan
1917	Peace	International Committee of the Red Cross
1917	Physics	Charles Glover Barkla
1916	Literature	Verner von Heidenstam
1915	Chemistry	Richard WillstÃ¤tter
1915	Literature	Romain Rolland
1915	Physics	William Bragg
1915	Physics	Lawrence Bragg
1914	Chemistry	Theodore W. Richards
1914	Medicine	Robert BÃ¡rÃ¡ny
1914	Physics	Max von Laue
1913	Chemistry	Alfred Werner
1913	Literature	Rabindranath Tagore
1913	Medicine	Charles Richet
1913	Peace	Henri La Fontaine
1913	Physics	Heike Kamerlingh Onnes
1912	Chemistry	Victor Grignard
1912	Chemistry	Paul Sabatier
1912	Literature	Gerhart Hauptmann
1912	Medicine	Alexis Carrel
1912	Peace	Elihu Root
1912	Physics	Gustaf DalÃ©n
1911	Chemistry	Marie Curie
1911	Literature	Maurice Maeterlinck
1911	Medicine	Allvar Gullstrand
1911	Peace	Tobias Asser
1911	Peace	Alfred Fried
1911	Physics	Wilhelm Wien
1910	Chemistry	Otto Wallach
1910	Literature	Paul Heyse
1910	Medicine	Albrecht Kossel
1910	Peace	Permanent International Peace Bureau
1910	Physics	Johannes Diderik van der Waals
1909	Chemistry	Wilhelm Ostwald
1909	Literature	Selma LagerlÃ¶f
1909	Medicine	Theodor Kocher
1909	Peace	Auguste Beernaert
1909	Peace	Paul Henri d'Estournelles de Constant
1909	Physics	Ferdinand Braun
1909	Physics	Guglielmo Marconi
1908	Chemistry	Ernest Rutherford
1908	Literature	Rudolf Eucken
1908	Medicine	Paul Ehrlich
1908	Medicine	Ilya Mechnikov
1908	Peace	Klas Pontus Arnoldson
1908	Peace	Fredrik Bajer
1908	Physics	Gabriel Lippmann
1907	Chemistry	Eduard Buchner
1907	Literature	Rudyard Kipling
1907	Medicine	Alphonse Laveran
1907	Peace	Ernesto Teodoro Moneta
1907	Peace	Louis Renault
1907	Physics	Albert A. Michelson
1906	Chemistry	Henri Moissan
1906	Literature	GiosuÃ¨ Carducci
1906	Medicine	Camillo Golgi
1906	Medicine	Santiago RamÃ³n y Cajal
1906	Peace	Theodore Roosevelt
1906	Physics	J.J. Thomson
1905	Chemistry	Adolf von Baeyer
1905	Literature	Henryk Sienkiewicz
1905	Medicine	Robert Koch
1905	Peace	Bertha von Suttner
1905	Physics	Philipp Lenard
1904	Chemistry	Sir William Ramsay
1904	Literature	JosÃ© Echegaray
1904	Literature	FrÃ©dÃ©ric Mistral
1904	Medicine	Ivan Pavlov
1904	Peace	Institute of International Law
1904	Physics	Lord Rayleigh
1903	Chemistry	Svante Arrhenius
1903	Literature	BjÃ¸rnstjerne BjÃ¸rnson
1903	Medicine	Niels Ryberg Finsen
1903	Peace	Randal Cremer
1903	Physics	Henri Becquerel
1903	Physics	Pierre Curie
1903	Physics	Marie Curie
1902	Chemistry	Emil Fischer
1902	Literature	Theodor Mommsen
1902	Medicine	Ronald Ross
1902	Peace	Ã‰lie Ducommun
1902	Peace	Albert Gobat
1902	Physics	Hendrik A. Lorentz
1902	Physics	Pieter Zeeman
1901	Chemistry	Jacobus H. van 't Hoff
1901	Literature	Sully Prudhomme
1901	Medicine	Emil von Behring
1901	Peace	Henry Dunant
1901	Peace	FrÃ©dÃ©ric Passy
1901	Physics	Wilhelm Conrad RÃ¶ntgen
\.


--
-- Data for Name: route; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY route (num, company, pos, stop) FROM stdin;
1	LRT	1	137
1	LRT	2	99
1	LRT	3	59
1	LRT	4	66
1	LRT	5	42
1	LRT	6	48
1	LRT	7	223
1	LRT	8	92
1	LRT	9	205
1	LRT	10	80
1	LRT	11	137
2	LRT	1	173
2	LRT	2	191
2	LRT	3	50
2	LRT	4	137
2	LRT	5	141
2	LRT	6	194
2	LRT	7	115
2	LRT	8	48
2	LRT	9	31
2	LRT	10	31
2	LRT	11	223
2	LRT	12	101
2	LRT	13	115
2	LRT	14	107
2	LRT	15	192
2	LRT	16	54
2	LRT	17	173
2A	LRT	1	173
2A	LRT	2	191
2A	LRT	3	50
2A	LRT	4	137
2A	LRT	5	141
2A	LRT	6	194
2A	LRT	7	115
2A	LRT	8	48
2A	LRT	9	31
2A	LRT	10	109
2A	LRT	11	31
2A	LRT	12	223
2A	LRT	13	101
2A	LRT	14	115
2A	LRT	15	107
2A	LRT	16	192
2A	LRT	17	54
2A	LRT	18	173
3	LRT	1	154
3	LRT	2	62
3	LRT	3	97
3	LRT	4	194
3	LRT	5	115
3	LRT	6	101
3	LRT	7	213
3	LRT	8	244
3	LRT	9	44
3A	LRJ	1	100
3A	LRJ	2	172
3A	LRJ	3	62
3A	LRJ	4	65
3A	LRJ	5	29
3A	LRJ	6	194
3A	LRJ	7	115
3A	LRJ	8	101
3A	LRJ	9	213
3A	LRJ	10	244
3A	LRJ	11	44
4	LRT	1	19
4	LRT	2	177
4	LRT	3	149
4	LRT	4	194
4	LRT	5	115
4	LRT	6	53
4	LRT	7	179
4	LRT	8	85
4	LRT	9	117
5	LRT	1	24
5	LRT	2	46
5	LRT	3	179
5	LRT	4	160
5	LRT	5	103
5	LRT	6	29
5	LRT	7	149
5	LRT	8	177
5	LRT	9	161
5	LRT	10	34
6	LRT	1	137
6	LRT	2	80
6	LRT	3	205
6	LRT	4	92
6	LRT	5	48
6	LRT	6	223
6	LRT	7	42
6	LRT	8	66
6	LRT	9	59
6	LRT	10	99
6	LRT	11	137
7	LRT	1	167
7	LRT	2	137
7	LRT	3	141
7	LRT	4	29
7	LRT	5	142
7	LRT	6	102
7	LRT	7	38
7A	LRT	1	206
7A	LRT	2	239
7A	LRT	3	99
7A	LRT	4	37
7A	LRT	5	15
7A	LRT	6	29
7A	LRT	7	142
7A	LRT	8	102
7A	LRT	9	38
8	LRT	1	96
8	LRT	2	29
8	LRT	3	15
8	LRT	4	37
8	LRT	5	99
8	LRT	6	105
8	LRT	7	162
8	LRT	8	215
9	LRT	1	121
9	LRT	2	96
9	LRT	3	29
9	LRT	4	15
9	LRT	5	37
9	LRT	6	99
9	LRT	7	105
9	LRT	8	162
9	LRT	9	215
10	LRT	1	215
10	LRT	2	162
10	LRT	3	167
10	LRT	4	137
10	LRT	5	141
10	LRT	6	194
10	LRT	7	230
10	LRT	8	53
10	LRT	9	46
10	LRT	10	231
11	LRT	1	167
11	LRT	2	186
11	LRT	3	230
11	LRT	4	160
11	LRT	5	85
11	LRT	6	38
12	LRT	1	173
12	LRT	2	54
12	LRT	3	192
12	LRT	4	107
12	LRT	5	115
12	LRT	6	101
12	LRT	7	223
12	LRT	8	31
12	LRT	9	109
12	LRT	10	31
12	LRT	11	48
12	LRT	12	115
12	LRT	13	194
12	LRT	14	141
12	LRT	15	137
12	LRT	16	50
12	LRT	17	191
12	LRT	18	173
13	LRT	1	148
13	LRT	2	80
13	LRT	3	150
13	LRT	4	39
13	LRT	5	198
13	LRT	6	22
14	LRT	1	215
14	LRT	2	162
14	LRT	3	28
14	LRT	4	99
14	LRT	5	137
14	LRT	6	141
14	LRT	7	29
14	LRT	8	192
14	LRT	9	54
14	LRT	10	173
14	LRT	11	166
14	LRT	12	215
15	LRT	1	226
15	LRT	2	163
15	LRT	3	82
15	LRT	4	191
15	LRT	5	149
15	LRT	6	194
15	LRT	7	230
15	LRT	8	160
15	LRT	9	85
16	LRT	1	167
16	LRT	2	140
16	LRT	3	141
16	LRT	4	194
16	LRT	5	230
16	LRT	6	160
16	LRT	7	179
16	LRT	8	120
16	SMT	1	219
16	SMT	2	48
16	SMT	3	109
16	SMT	4	165
16	SMT	5	32
16	SMT	6	236
16	SMT	7	14
16	SMT	8	5
16	SMT	9	23
17	LRT	1	167
17	LRT	2	137
17	LRT	3	141
17	LRT	4	194
17	LRT	5	230
17	LRT	6	160
17	LRT	7	179
18	SMT	1	219
18	SMT	2	48
18	SMT	3	109
18	SMT	4	165
18	SMT	5	32
18	SMT	6	236
18	SMT	7	14
18	SMT	8	246
19	SMT	1	14
19	SMT	2	68
19	SMT	3	69
19	SMT	4	132
19	SMT	5	236
19	SMT	6	32
19	SMT	7	165
19	SMT	8	48
19	SMT	9	219
19	LRT	1	28
19	LRT	2	59
19	LRT	3	47
19	LRT	4	178
19	LRT	5	39
19	LRT	6	95
19	LRT	7	15
19	LRT	8	37
19	LRT	9	99
19	LRT	10	28
19A	LRT	1	28
19A	LRT	2	59
19A	LRT	3	47
19A	LRT	4	95
19A	LRT	5	37
19A	LRT	6	99
19A	LRT	7	28
20	LRT	1	105
20	LRT	2	59
20	LRT	3	225
20	LRT	4	95
20	LRT	5	149
20	LRT	6	147
20	LRT	7	200
20	LRT	8	191
20	LRT	9	82
21	LRT	1	109
21	LRT	2	31
21	LRT	3	223
21	LRT	4	101
21	LRT	5	115
21	LRT	6	194
21	LRT	7	29
21	LRT	8	222
21	LRT	9	192
21	LRT	10	54
21	LRT	11	108
22	LRT	1	167
22	LRT	2	137
22	LRT	3	141
22	LRT	4	219
22	LRT	5	115
22	LRT	6	101
22	LRT	7	223
22	LRT	8	213
22A	LRT	1	139
22A	LRT	2	141
22A	LRT	3	219
22A	LRT	4	115
22A	LRT	5	101
22A	LRT	6	223
22A	LRT	7	213
22A	LRT	8	201
23	LRT	1	234
23	LRT	2	37
23	LRT	3	112
23	LRT	4	230
23	LRT	5	160
23	LRT	6	51
24	LRT	1	80
24	LRT	2	219
24	LRT	3	230
24	LRT	4	153
24	LRT	5	21
24	LRT	6	36
25	LRT	1	167
25	LRT	2	168
25	LRT	3	137
25	LRT	4	141
25	LRT	5	219
25	LRT	6	115
25	LRT	7	101
25	LRT	8	223
25	LRT	9	213
26	LRT	1	43
26	LRT	2	42
26	LRT	3	48
26	LRT	4	115
26	LRT	5	194
26	LRT	6	199
26	LRT	7	191
26	LRT	8	82
26	LRT	9	163
26	LRT	10	193
26	LRT	11	190
26	LRT	12	212
26A	LRT	1	43
26A	LRT	2	42
26A	LRT	3	48
26A	LRT	4	115
26A	LRT	5	194
26A	LRT	6	149
26A	LRT	7	191
26A	LRT	8	82
26A	LRT	9	163
26A	LRT	10	193
26A	LRT	11	233
27	LRT	1	215
27	LRT	2	59
27	LRT	3	37
27	LRT	4	112
27	LRT	5	230
27	LRT	6	53
27	LRT	7	179
27	LRT	8	120
27	MID	1	246
27	MID	2	20
27	MID	3	145
27	MID	4	157
27	MID	5	77
27	MID	6	213
27	MID	7	219
28	LRT	1	162
28	LRT	2	70
28	LRT	3	59
28	LRT	4	47
28	LRT	5	112
28	LRT	6	92
28	LRT	7	152
28	LRT	8	244
28	LRT	9	44
29	LOW	1	219
29	LOW	2	65
29	LOW	3	62
29	LOW	4	181
29	LOW	5	136
29	LOW	6	76
29	LOW	7	220
29	LOW	8	4
29	LOW	9	125
30	LOW	1	219
30	LOW	2	65
30	LOW	3	62
30	LOW	4	181
30	LOW	5	136
30	LOW	6	76
30	LOW	7	220
30	LOW	8	126
30	LRT	1	100
30	LRT	2	170
30	LRT	3	154
30	LRT	4	62
30	LRT	5	65
30	LRT	6	29
30	LRT	7	194
30	LRT	8	115
30	LRT	9	101
30	LRT	10	213
30	LRT	11	244
30	LRT	12	44
31	LRT	1	89
31	LRT	2	96
31	LRT	3	121
31	LRT	4	142
31	LRT	5	29
31	LRT	6	194
31	LRT	7	115
31	LRT	8	48
31	LRT	9	78
32	LRT	1	173
32	LRT	2	33
32	LRT	3	191
32	LRT	4	50
32	LRT	5	200
32	LRT	6	137
32	LRT	7	167
32	LRT	8	105
32	LRT	9	162
32	LRT	10	70
32	LRT	11	42
32	LRT	12	48
32	LRT	13	31
32	LRT	14	213
32	LRT	15	244
32	LRT	16	46
32	LRT	17	179
32	LRT	18	85
32	LRT	19	121
32	LRT	20	96
32	LRT	21	36
32	LRT	22	54
32	LRT	23	173
33	LRT	1	89
33	LRT	2	36
33	LRT	3	29
33	LRT	4	194
33	LRT	5	115
33	LRT	6	101
33	LRT	7	152
33	LRT	8	245
33	LRT	9	243
33	LRT	10	9
34	LRT	1	213
34	LRT	2	101
34	LRT	3	92
34	LRT	4	39
34	LRT	5	225
34	LRT	6	37
34	LRT	7	26
34	LRT	8	137
34	LRT	9	147
34	LRT	10	149
34	LRT	11	176
34	LRT	12	116
34	LRT	13	92
34	LRT	14	152
34	LRT	15	213
35	LRT	1	213
35	LRT	2	152
35	LRT	3	92
35	LRT	4	116
35	LRT	5	176
35	LRT	6	149
35	LRT	7	147
35	LRT	8	137
35	LRT	9	26
35	LRT	10	37
35	LRT	11	225
35	LRT	12	39
35	LRT	13	92
35	LRT	14	101
35	LRT	15	213
36	LRT	1	109
36	LRT	2	48
36	LRT	3	115
36	LRT	4	194
36	LRT	5	29
36	LRT	6	36
36	LRT	7	55
37	LRT	1	105
37	LRT	2	37
37	LRT	3	112
37	LRT	4	230
37	LRT	5	160
37	LRT	6	51
37	SMT	1	219
37	SMT	2	115
37	SMT	3	48
37	SMT	4	98
37	SMT	5	197
37	SMT	6	131
37	SMT	7	77
37	SMT	8	157
37	SMT	9	145
38	LRT	1	192
38	LRT	2	36
38	LRT	3	242
38	LRT	4	21
38	LRT	5	160
38	LRT	6	164
38	LRT	7	101
38	LRT	8	198
38	LRT	9	52
38	LRT	10	59
38	MID	1	219
38	MID	2	115
38	MID	3	48
38	MID	4	109
38	MID	5	165
38	MID	6	130
38	MID	7	250
38	MID	8	143
38	MID	9	188
38	MID	10	87
38	MID	11	224
40	LRT	1	21
40	LRT	2	153
40	LRT	3	112
40	LRT	4	40
40	LRT	5	196
40	LRT	6	66
40	LRT	7	57
41	LRT	1	41
41	LRT	2	160
41	LRT	3	21
41	LRT	4	153
41	LRT	5	112
41	LRT	6	39
41	LRT	7	196
41	LRT	8	66
41	LRT	9	13
41	LRT	10	57
42	LRT	1	36
42	LRT	2	54
42	LRT	3	71
42	LRT	4	191
42	LRT	5	50
42	LRT	6	147
42	LRT	7	149
42	LRT	8	219
42	LRT	9	242
42	LRT	10	36
43	SMT	1	219
43	SMT	2	196
43	SMT	3	13
43	SMT	4	64
43	SMT	5	218
43	SMT	6	208
43	LRT	1	237
43	LRT	2	163
43	LRT	3	158
43	LRT	4	149
43	LRT	5	194
43	LRT	6	115
43	LRT	7	216
43	LRT	8	128
43	LRT	9	60
43	LRT	10	10
43	LRT	11	11
43	LRT	12	45
44	LRT	1	45
44	LRT	2	11
44	LRT	3	10
44	LRT	4	60
44	LRT	5	128
44	LRT	6	216
44	LRT	7	115
44	LRT	8	194
44	LRT	9	149
44	LRT	10	158
44	LRT	11	163
44	LRT	12	238
45	LRT	1	33
45	LRT	2	71
45	LRT	3	177
45	LRT	4	149
45	LRT	5	112
45	LRT	6	230
45	LRT	7	53
45	LRT	8	46
45	LRT	9	60
45	LRT	10	201
46A	LRT	1	36
46A	LRT	2	242
46A	LRT	3	219
46A	LRT	4	149
46A	LRT	5	147
46A	LRT	6	50
46A	LRT	7	191
46A	LRT	8	71
46A	LRT	9	54
46A	LRT	10	36
47	LRT	1	37
47	LRT	2	112
47	LRT	3	230
47	LRT	4	53
47	LRT	5	46
47	LRT	6	60
47	LRT	7	10
47	LRT	8	45
47	LRT	9	11
47	MID	1	219
47	MID	2	196
47	MID	3	13
47	MID	4	64
47	MID	5	218
47	MID	6	25
47	MID	7	104
47	MID	8	87
48	WIL	1	48
48	WIL	2	56
48	WIL	3	109
48	WIL	4	235
49	SMT	1	191
49	SMT	2	177
49	SMT	3	249
49	SMT	4	155
49	SMT	5	133
51	LRT	1	160
51	LRT	2	103
51	LRT	3	29
51	LRT	4	149
51	LRT	5	177
51	LRT	6	159
51	LRT	7	7
52	LRT	1	173
52	LRT	2	54
52	LRT	3	36
52	LRT	4	96
52	LRT	5	121
52	LRT	6	85
52	LRT	7	179
52	LRT	8	46
52	LRT	9	244
52	LRT	10	213
52	LRT	11	31
52	LRT	12	48
52	LRT	13	42
52	LRT	14	70
52	LRT	15	162
52	LRT	16	105
52	LRT	17	167
52	LRT	18	137
52	LRT	19	200
52	LRT	20	191
52	LRT	21	50
52	LRT	22	33
52	LRT	23	173
53	FS	1	175
53	FS	2	94
53	FS	3	39
53	FS	4	22
53	FS	5	13
53	FS	6	91
53	FS	7	124
53	FS	8	61
55	FS	1	219
55	FS	2	196
55	FS	3	13
55	FS	4	91
55	FS	5	124
55	FS	6	204
55	FS	7	75
55	FS	8	127
55	LRT	1	215
55	LRT	2	59
55	LRT	3	47
55	LRT	4	219
56	FF	1	219
56	FF	2	196
56	FF	3	13
56	FF	4	91
56	FF	5	75
56	FF	6	49
56	FF	7	12
58	LRT	1	109
58	LRT	2	217
58	LRT	3	111
58	LRT	4	128
58	LRT	5	122
59	LRT	1	109
59	LRT	2	217
59	LRT	3	245
60	JM	1	72
60	JM	2	30
61	LRT	1	219
61	LRT	2	115
61	LRT	3	101
61	LRT	4	213
61	LRT	5	60
61	SMT	1	219
61	SMT	2	115
61	SMT	3	101
61	SMT	4	213
61	SMT	5	201
62	LOW	1	219
62	LOW	2	142
62	LOW	3	18
62	LOW	4	184
62	LOW	5	182
62	LOW	6	123
62	LOW	7	93
62	LOW	8	156
63	LRT	1	6
63	LRT	2	33
63	LRT	3	159
63	LRT	4	177
63	LRT	5	149
63	LRT	6	219
63	LRT	7	115
63	LRT	8	48
63	LRT	9	31
63	LRT	10	109
64	SMT	1	39
64	SMT	2	95
64	SMT	3	219
64	SMT	4	29
64	SMT	5	142
64	SMT	6	18
64	SMT	7	184
64	SMT	8	134
64A	SMT	1	39
64A	SMT	2	95
64A	SMT	3	219
64A	SMT	4	29
64A	SMT	5	142
64A	SMT	6	146
64A	SMT	7	18
64A	SMT	8	184
64A	SMT	9	134
65	LRT	1	200
65	LRT	2	147
65	LRT	3	149
65	LRT	4	194
65	LRT	5	115
65	LRT	6	101
65	LRT	7	213
65	LRT	8	201
65	SMT	1	39
65	SMT	2	219
65	SMT	3	29
65	SMT	4	142
65	SMT	5	146
65	SMT	6	18
65	SMT	7	203
65	SMT	8	184
65	SMT	9	67
66	SMT	1	237
66	SMT	2	163
66	SMT	3	191
66	SMT	4	149
66	SMT	5	194
66	SMT	6	115
66	SMT	7	216
66	SMT	8	128
66	SMT	9	60
66	SMT	10	10
66	SMT	11	45
66A	SMT	1	212
66A	SMT	2	190
66A	SMT	3	193
66A	SMT	4	163
66A	SMT	5	191
66A	SMT	6	149
66A	SMT	7	194
66A	SMT	8	115
66A	SMT	9	216
66A	SMT	10	128
66A	SMT	11	60
66A	SMT	12	10
66A	SMT	13	45
69	LRT	1	42
69	LRT	2	48
69	LRT	3	115
69	LRT	4	194
69	LRT	5	29
69	LRT	6	55
74	SMT	1	115
74	SMT	2	194
74	SMT	3	29
74	SMT	4	142
74	SMT	5	146
74	SMT	6	135
74	SMT	7	189
74	SMT	8	27
74	SMT	9	62
75	LRT	1	115
75	LRT	2	194
75	LRT	3	149
75	LRT	4	158
75	LRT	5	163
75	LRT	6	226
75	LRT	7	209
77	SMT	1	115
77	SMT	2	29
77	SMT	3	142
77	SMT	4	27
77	SMT	5	189
79	SMT	1	39
79	SMT	2	194
79	SMT	3	29
79	SMT	4	36
79	SMT	5	65
79	SMT	6	62
79	SMT	7	84
79	SMT	8	27
79	SMT	9	189
79	SMT	10	202
80	LRT	1	189
80	LRT	2	27
80	LRT	3	135
80	LRT	4	142
80	LRT	5	29
80	LRT	6	194
80	LRT	7	225
80	LRT	8	47
80	LRT	9	52
80	LRT	10	70
80	LRT	11	59
80	LRT	12	215
80A	LRT	1	189
80A	LRT	2	27
80A	LRT	3	135
80A	LRT	4	142
80A	LRT	5	29
80A	LRT	6	194
80A	LRT	7	225
80A	LRT	8	47
80A	LRT	9	59
80A	LRT	10	215
80B	LRT	1	189
80B	LRT	2	27
80B	LRT	3	135
80B	LRT	4	142
80B	LRT	5	29
80B	LRT	6	194
80B	LRT	7	225
80B	LRT	8	47
80B	LRT	9	52
80B	LRT	10	70
80B	LRT	11	66
80B	LRT	12	215
80	SMT	1	115
80	SMT	2	194
80	SMT	3	29
80	SMT	4	96
80	SMT	5	62
80	SMT	6	84
80	SMT	7	171
80	SMT	8	100
81	LRT	1	67
81	LRT	2	184
81	LRT	3	142
81	LRT	4	29
81	LRT	5	219
81	LRT	6	47
81	LRT	7	59
81	LRT	8	162
81	LRT	9	219
81	LRT	10	47
81	LRT	11	59
81	LRT	12	162
81A	LRT	1	67
81A	LRT	2	184
81A	LRT	3	146
81A	LRT	4	142
81A	LRT	5	29
81A	LRT	6	219
81A	LRT	7	47
81A	LRT	8	59
81A	LRT	9	162
81A	LRT	10	219
81A	LRT	11	47
81A	LRT	12	59
81A	LRT	13	162
82	LRT	1	202
82	LRT	2	189
82	LRT	3	27
82	LRT	4	62
82	LRT	5	65
82	LRT	6	36
82	LRT	7	29
82	LRT	8	219
82	LRT	9	196
82	LRT	10	13
82	LRT	11	78
84	LRT	1	209
84	LRT	2	191
84	LRT	3	82
84	LRT	4	163
84	LRT	5	237
84	LRT	6	247
84	LRT	7	62
85	LRT	1	42
85	LRT	2	48
85	LRT	3	115
85	LRT	4	194
85	LRT	5	199
85	LRT	6	191
85	LRT	7	163
85	LRT	8	233
85	SMT	1	39
85	SMT	2	194
85	SMT	3	219
85	SMT	4	29
85	SMT	5	36
85	SMT	6	65
85	SMT	7	62
85	SMT	8	154
85	SMT	9	171
85	SMT	10	100
86	LRT	1	42
86	LRT	2	48
86	LRT	3	115
86	LRT	4	194
86	LRT	5	199
86	LRT	6	191
86	LRT	7	163
86	LRT	8	193
86	LRT	9	233
86	SMT	1	43
86	SMT	2	42
86	SMT	3	48
86	SMT	4	115
86	SMT	5	194
86	SMT	6	29
86	SMT	7	36
86	SMT	8	65
86	SMT	9	62
86	SMT	10	154
86A	LRT	1	240
86A	LRT	2	115
86A	LRT	3	48
86A	LRT	4	83
87	LRT	1	209
87	LRT	2	137
87	LRT	3	147
87	LRT	4	149
87	LRT	5	29
87	LRT	6	142
87	LRT	7	146
87	LRT	8	18
87	LRT	9	184
87	LRT	10	134
87	SMT	1	171
87	SMT	2	154
87	SMT	3	62
87	SMT	4	96
87	SMT	5	29
87	SMT	6	219
87	SMT	7	141
87	SMT	8	137
87A	LRT	1	210
87A	LRT	2	147
87A	LRT	3	149
87A	LRT	4	29
87A	LRT	5	142
87A	LRT	6	146
87A	LRT	7	203
93	SMT	1	6
93	SMT	2	166
93	SMT	3	163
93	SMT	4	233
94	LOW	1	156
94	LOW	2	93
94	LOW	3	227
94	LOW	4	96
94	LOW	5	169
94	LOW	6	219
95	LOW	1	219
95	LOW	2	65
95	LOW	3	62
95	LOW	4	84
95	LOW	5	171
95	LOW	6	227
95	LOW	7	93
95	LOW	8	211
95	LOW	9	114
100	LRT	1	240
100	LRT	2	115
100	LRT	3	48
100	LRT	4	83
100	MAC	1	219
100	MAC	2	160
100	MAC	3	184
100	MAC	4	241
100	MAC	5	17
100	MAC	6	2
100	MAC	7	229
100	MAC	8	73
106	SMT	1	115
106	SMT	2	194
106	SMT	3	149
106	SMT	4	158
106	SMT	5	163
106	SMT	6	233
106	SMT	7	110
106	SMT	8	3
106	SMT	9	74
113	SMT	1	219
113	SMT	2	149
113	SMT	3	158
113	SMT	4	163
113	SMT	5	187
113	SMT	6	237
113	SMT	7	233
113	SMT	8	183
124	SMT	1	39
124	SMT	2	95
124	SMT	3	219
124	SMT	4	149
124	SMT	5	158
124	SMT	6	163
124	SMT	7	193
124	SMT	8	151
124	SMT	9	1
124	SMT	10	174
129	SMT	1	215
129	SMT	2	90
129	SMT	3	59
129	SMT	4	47
129	SMT	5	178
129	SMT	6	219
129	SMT	7	191
129	SMT	8	163
129	SMT	9	193
129	SMT	10	190
129	SMT	11	212
134	SMT	1	219
134	SMT	2	29
134	SMT	3	36
134	SMT	4	65
134	SMT	5	163
134	SMT	6	247
134	SMT	7	62
137	SMT	1	219
137	SMT	2	115
137	SMT	3	48
137	SMT	4	235
137	SMT	5	98
137	SMT	6	197
137	SMT	7	63
137	SMT	8	248
142	SMJ	1	6
142	SMJ	2	166
142	SMJ	3	163
142	SMJ	4	65
142	SMJ	5	62
142	SMJ	6	86
142	SMJ	7	119
251	CCC	1	219
251	CCC	2	158
251	CCC	3	110
251	CCC	4	79
251	CCC	5	74
251	CCC	6	16
275	SMT	1	219
275	SMT	2	48
275	SMT	3	165
275	SMT	4	48
275	SMT	5	165
275	SMT	6	32
275	SMT	7	236
275	SMT	8	195
275	SMT	9	145
315	LOW	1	219
315	LOW	2	230
315	LOW	3	160
315	LOW	4	85
315	LOW	5	117
315	LOW	6	35
315	LOW	7	18
315	LOW	8	203
315	LOW	9	8
315	LOW	10	184
455	MID	1	145
455	MID	2	221
455	MID	3	236
455	MID	4	32
455	MID	5	130
455	MID	6	218
455	MID	7	185
455	MID	8	144
A8	SMT	1	232
A8	SMT	2	193
A8	SMT	3	163
A8	SMT	4	191
A8	SMT	5	81
C3	SMT	1	167
C3	SMT	2	137
C3	SMT	3	141
C3	SMT	4	29
C3	SMT	5	192
C3	SMT	6	54
C3	SMT	7	173
C3	SMT	8	129
C33	SMT	1	167
C33	SMT	2	137
C33	SMT	3	141
C33	SMT	4	29
C33	SMT	5	192
C33	SMT	6	54
C33	SMT	7	173
C33	SMT	8	166
C33	SMT	9	163
C33	SMT	10	247
C5	SMT	1	244
C5	SMT	2	213
C5	SMT	3	207
C5	SMT	4	101
C5	SMT	5	115
C5	SMT	6	194
C5	SMT	7	149
C5	SMT	8	80
C5	SMT	9	137
C5	SMT	10	147
C5	SMT	11	200
C12	SMT	1	219
C12	SMT	2	115
C12	SMT	3	48
C12	SMT	4	31
C12	SMT	5	109
C55	SMT	1	245
C55	SMT	2	180
C55	SMT	3	101
C55	SMT	4	115
C55	SMT	5	194
C55	SMT	6	149
C55	SMT	7	200
C70	SMT	1	44
C70	SMT	2	244
C70	SMT	3	213
C70	SMT	4	31
C70	SMT	5	223
C70	SMT	6	101
C70	SMT	7	115
C70	SMT	8	194
C70	SMT	9	29
C70	SMT	10	142
C70	SMT	11	146
C70	SMT	12	228
D25	SMT	1	219
D25	SMT	2	213
D25	SMT	3	131
D25	SMT	4	77
D25	SMT	5	157
D25	SMT	6	145
D25	SMT	7	69
D25	SMT	8	14
D26	SMT	1	219
D26	SMT	2	213
D26	SMT	3	77
D26	SMT	4	157
D26	SMT	5	145
D26	SMT	6	20
D26	SMT	7	246
D26	SMT	8	88
D27	SMT	1	219
D27	SMT	2	213
D27	SMT	3	77
D27	SMT	4	157
D27	SMT	5	145
D27	SMT	6	20
D27	SMT	7	246
D27	SMT	8	113
D27	SMT	9	82
D28	SMT	1	219
D28	SMT	2	213
D28	SMT	3	77
D28	SMT	4	157
D28	SMT	5	145
D28	SMT	6	69
D28	SMT	7	14
R1	ROU	1	106
R1	ROU	2	167
R1	ROU	3	99
R1	ROU	4	37
R1	ROU	5	95
R1	ROU	6	47
R1	ROU	7	59
R1	ROU	8	106
R2	ROU	1	106
R2	ROU	2	59
R2	ROU	3	47
R2	ROU	4	95
R2	ROU	5	37
R2	ROU	6	99
R2	ROU	7	167
R2	ROU	8	106
VL2	VL	1	109
VL2	VL	2	201
VL2	VL	3	60
VL2	VL	4	10
\.


--
-- Data for Name: stops; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY stops (id, name) FROM stdin;
1	Aberlady
2	Abington
3	Amisfield Park
4	Ancrum
5	Armadale
6	ASDA
7	ASDA/Brunstane
8	Auchendinny
9	Baberton
10	Balerno
11	Balerno Church
12	Ballingry
13	Barnton
14	Bathgate
15	Bellevue
16	Berwick upon Tweed
17	Biggar
18	Bilston
19	Bingham
20	Blackburn
21	Blackford
22	Blackhall
23	Blackridge
24	Bonaly Avenue
25	Bo’ness
26	Bonnington
27	Bonnyrigg
28	Boswall
29	Bridges
30	Bristo
31	Broomhouse
32	Broxburn
33	Brunstane
34	Brunstane/ASDA
35	Bush Estate
36	Cameron Toll
37	Canonmills
38	Captains Road
39	Charlotte Square
40	Charlotte Street
41	City Hospital
42	Clermiston
43	Clerwood
44	Clovenstone
45	Cockburn Crescent
46	Colinton
47	Comely Bank
48	Corstorphine
49	Cowdenbeath
50	Craigentinny
51	Craighouse Campus
52	Craigleith
53	Craiglockhart
54	Craigmillar
55	Craigour
56	Craigs Road
57	Cramond
59	Crewe Toll
60	Currie
61	Dalgety Bay
62	Dalkeith
63	Dalmahoy
64	Dalmeny
65	Danderhall
66	Davidsons Mains
67	Deanburn
68	Deans Road/Royston Roundabout
69	Deans South
70	Drylaw
71	Duddingston
72	Dumbiedykes
73	Dumfries
74	Dunbar
75	Dunfermline
76	Earlston
77	East Calder
78	East Craigs
79	East Linton
80	Easter Road
81	Eastern General Hospital
82	Eastfield
83	Edinburgh Airport
84	Eskbank
85	Fairmilehead
86	Fala
87	Falkirk
88	Fauldhouse
89	Ferniehill
90	Ferry Road
91	Forth Bridge
92	Fountainbridge
93	Galashiels
94	George IV Bridge
95	George Street
96	Gilmerton
97	Gilmerton  Bridges
98	Gogar Station
99	Goldenacre
100	Gorebridge
101	Gorgie
102	Gracemount
103	Grange
104	Grangemouth
105	Granton
106	Granton Square
107	Grassmarket
108	Greendykes
109	Gyle
110	Haddington
111	Hailes
112	Hanover Street
113	Harthill
114	Hawick
115	Haymarket
116	High Street
117	Hillend
119	Humbie
120	Hunters Tryst
121	Hyvots Bank
122	Inglis Green Road
123	Innerleithen
124	Inverkeithing
125	Jedburgh
126	Kelso
127	Kelty
128	Kingsknowe
129	Kinnaird Park
130	Kirkliston
131	Kirknewton
132	Knightsridge
133	Lady Neurone
134	Ladywood
135	Lasswade
136	Lauder
137	Leith
139	Leith (Commercial Street)
140	Leith Docks
141	Leith Walk
142	Liberton
143	Linlithgow
144	Linlithgow Cross
145	Livingstone
146	Loanhead
147	Lochend
148	Lochend (Findlay Gardens)
149	London Road
150	London Street
151	Longniddry
152	Longstone
153	Marchmont
154	Mayfield
155	Meadowfield Drive
156	Melrose
157	Mid Calder
158	Milton Road
159	Moantcastle
160	Morningside
161	Mountcastle
162	Muirhouse
163	Musselburgh
164	Myreside
165	Newbridge
166	Newcraighall
167	Newhaven
168	Newhaven Road
169	Newington
170	Newton Grange
171	Newtongrange
172	Newtongrange Mayfield
173	Niddrie
174	North Berwick
175	North Bridge
176	North Road
177	Northfield
178	Orchard Brae
179	Oxgangs
180	Parkhead
181	Pathhead
182	Peebles
183	Pencaitland
184	Penicuik
185	Philipstoun
186	Pilrig -Princes Street
187	Pinkie
188	Polmont
189	Polton Mill
190	Port Seton
191	Portobello
192	Prestonfield
193	Prestonpans
194	Princes Street
195	Pumpherston
196	Queensferry Road
197	Ratho
198	Ravelston
199	Regent Road
200	Restalrig
201	Riccarton Campus
202	Rosewell
203	Roslin
204	Rosyth
205	Royal Mile
206	Royston
207	Saughton
208	Scotstoun
209	Seafield
210	Seafield Garage
211	Selkirk
212	Seton Sands
213	Sighthill
215	Silverknowes
216	Slateford
217	South Gyle
218	South Queensferry
219	St Andrew Square
220	St Boswells
221	St John’s Hospital
222	St Leonards
223	Stenhouse
224	Stirling
225	Stockbridge
226	Stoneybank
227	Stow
228	Straiton Road Sainsbury
229	Thornhill
230	Tollcross
231	Torphin
232	Trances
233	Tranent
234	Trinity
235	Turnhouse
236	Uphall
237	Wallyford
238	Wallyford
239	Wardie
240	Waverley Bridge
241	West Linton
242	West Mains
243	Westburn
244	Wester Hailes
245	Wester Hailes Centre
246	Whitburn
247	Whitecraig
248	Wilkieston
249	Willowbrae
250	Winchburgh
\.


--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY teacher (id, dept, name, phone, mobile) FROM stdin;
101	1	Shrivell	2753	07966 555 1234
102	1	Throd	2754	07122 555 1920
103	1	Splint	2293	\N
104	\N	Spiregrain	3287	\N
105	2	Cutflower	3212	07966 555 6574
106	\N	Deadyawn	3345	\N
\.


--
-- Data for Name: world; Type: TABLE DATA; Schema: public; Owner: rglassett
--

COPY world (name, continent, area, population, gdp) FROM stdin;
Afghanistan	South Asia	652225	26000000	\N
Albania	Europe	28728	3200000	6656000000
Algeria	Middle East	2400000	32900000	75012000000
Andorra	Europe	468	64000	\N
Angola	Africa	1250000	14500000	14935000000
Antigua and Barbuda	Americas	442	77000	770000000
Argentina	South America	2800000	39300000	146196000000
Armenia	Europe	29743	3000000	3360000000
Australia	Asia-Pacific	7700000	20300000	546070000000
Austria	Europe	83871	8100000	261630000000
Azerbaijan	Europe	86600	8500000	\N
Bahamas	Americas	13939	321000	4789320000
Bahrain	Middle East	717	754000	9357140000
Bangladesh	South Asia	143998	152600000	67144000000
Barbados	Americas	430	272000	2518720000
Belarus	Europe	207595	9800000	20776000000
Belgium	Europe	30528	10300000	319609000000
Belize	Americas	22965	266000	\N
Benin	Africa	112622	7100000	3763000000
Bhutan	South Asia	38364	2400000	1824000000
Bolivia	South America	1100000	9100000	\N
Bosnia-Hercegovina	Europe	51129	4200000	8568000000
Botswana	Africa	581730	1800000	7812000000
Brazil	South America	8550000	182800000	564852000000
Brunei	Asia-Pacific	5765	374000	\N
Bulgaria	Europe	110994	7800000	21372000000
Burkina Faso	Africa	274200	13800000	4968000000
Burma	Asia-Pacific	676552	50700000	\N
Burundi	Africa	27816	7300000	\N
Cambodia	Asia-Pacific	181035	14800000	4736000000
Cameroon	Africa	465458	16600000	13280000000
Canada	North America	9900000	32000000	908480000000
Cape Verde	Africa	4033	482000	853140000
Central African Republic	Africa	622984	3900000	\N
Chad	Africa	1280000	9100000	2366000000
Chile	South America	756096	16200000	79542000000
China	Asia-Pacific	9600000	1300000000	1677000000000
Colombia	South America	1140000	45600000	\N
Comoros	Africa	1862	812000	\N
Costa Rica	Americas	51100	4300000	\N
Croatia	Europe	56594	4400000	28996000000
Cuba	Americas	110860	11300000	\N
Cyprus	Europe	9250	807000	14187060000
Czech Republic	Europe	78866	10200000	93330000000
Democratic Republic of Congo	Africa	2340000	56000000	6720000000
Denmark	Europe	43098	5400000	219510000000
Djibouti	Africa	23200	721000	\N
Dominica	Americas	751	71000	259150000
Dominican Republic	Americas	48072	9000000	\N
East Timor	Asia-Pacific	14609	857000	\N
Ecuador	South America	272045	13400000	\N
Egypt	Middle East	1000000	74900000	98119000000
El Salvador	Americas	21041	6700000	15745000000
Equatorial Guinea	Africa	28051	521000	484530000
Eritrea	Africa	117400	4561599	\N
Estonia	Europe	45227	1300000	9113000000
Ethiopia	Africa	1130000	74200000	8162000000
Fiji	Asia-Pacific	18376	854000	\N
Finland	Europe	338145	5200000	170508000000
Former Yugoslav Republic of Macedonia	Europe	25713	2000000	4700000000
France	Europe	543965	60700000	1826463000000
Gabon	Africa	267667	1400000	\N
Georgia	Europe	69700	5000000	5200000000
Germany	Europe	357027	82500000	2484900000000
Ghana	Africa	238533	21800000	8284000000
Greece	Europe	131957	11000000	182710000000
Grenada	Americas	344	103000	\N
Guatemala	Americas	108890	13000000	\N
Guinea	Africa	245857	8800000	4048000000
Guinea-Bissau	Africa	36125	1600000	256000000
Guyana	South America	214969	768000	\N
Haiti	Americas	27750	8500000	\N
Honduras	Americas	112492	7200000	7416000000
Hungary	Europe	93030	9800000	81046000000
Iceland	Europe	103000	294000	11354280000
India	South Asia	3100000	1100000000	682000000000
Indonesia	Asia-Pacific	1900000	225300000	256842000000
Iran	Middle East	1650000	70700000	162610000000
Iraq	Middle East	438317	26500000	\N
Ireland	Europe	70182	4000000	137120000000
Israel and Palestinian territories	Middle East	20770	3800000	4256000000
Italy	Europe	301338	57200000	1494064000000
Ivory Coast	Africa	322462	17100000	13167000000
Jamaica	Americas	10991	2700000	7830000000
Japan	Asia-Pacific	377864	127900000	4755322000000
Jordan	Middle East	89342	5700000	12198000000
Kazakhstan	Asia-Pacific	2700000	15400000	\N
Kenya	Africa	582646	32800000	15088000000
Kiribati	Asia-Pacific	810	85000	82450000
Kuwait	Middle East	17818	2700000	48519000000
Kyrgyzstan	Asia-Pacific	199900	5300000	\N
Laos	Asia-Pacific	236800	5900000	2301000000
Latvia	Europe	64589	2300000	\N
Lebanon	Middle East	10452	3800000	18924000000
Lesotho	Africa	30355	1800000	1332000000
Liberia	Africa	99067	3600000	396000000
Libya	Africa	1770000	5800000	25810000000
Liechtenstein	Europe	160	34000	\N
Lithuania	Europe	65300	3400000	19516000000
Luxembourg	Europe	2586	465000	26146950000
Madagascar	Africa	587041	18400000	5520000000
Malawi	Africa	118484	12600000	2142000000
Malaysia	Asia-Pacific	329847	25300000	\N
Mali	Africa	1250000	13800000	4968000000
Malta	Europe	316	397000	4863250000
Marshall Islands	Asia-Pacific	181	57000	135090000
Mauritania	Middle East	1040000	3100000	1302000000
Mauritius	Africa	2040	1200000	5568000000
Mexico	North America	1960000	106400000	720328000000
Micronesia	Asia-Pacific	700	111000	\N
Moldova	Europe	33800	4300000	3053000000
Monaco	Europe	2	32000	\N
Mongolia	Asia-Pacific	1560000	2700000	\N
Morocco	Middle East	710850	31600000	48032000000
Mozambique	Africa	812379	19500000	4875000000
Namibia	Africa	824292	2000000	4740000000
Nauru	Asia-Pacific	21	9900	\N
Nepal	South Asia	147181	26300000	6838000000
New Zealand	Asia-Pacific	270534	4000000	81240000000
Nicaragua	Americas	120254	5700000	4503000000
Niger	Africa	1270000	12900000	2967000000
Nigeria	Africa	923768	130200000	50778000000
North Korea	Asia-Pacific	122762	22900000	\N
Norway	Europe	323759	4600000	239338000000
Oman	Middle East	309500	3000000	23670000000
Pakistan	South Asia	796095	161100000	96660000000
Palau	Asia-Pacific	508	20000	\N
Panama	Americas	75517	3200000	\N
Papua New Guinea	Asia-Pacific	462840	5900000	3422000000
Paraguay	South America	406752	6200000	\N
Peru	South America	1280000	28000000	\N
Poland	Europe	312685	38500000	234465000000
Portugal	Europe	92345	10500000	150675000000
Qatar	Middle East	11437	628000	\N
Republic of Congo	Africa	342000	3039126	\N
Romania	Europe	238391	22200000	64824000000
Russia	Europe	17000000	141500000	482515000000
Rwanda	Africa	26338	8600000	1892000000
Samoa	Asia-Pacific	2831	182000	\N
San Marino	Europe	61	27000	\N
Sao Tome and Principe	Africa	1001	169000	62530000
Saudi Arabia	Middle East	2240000	25600000	267008000000
Senegal	Africa	196722	10600000	7102000000
Serbia and Montenegro	Europe	102173	10500000	27510000000
Seychelles	Africa	455	76000	\N
Sierra Leone	Africa	71740	5300000	1060000000
Singapore	Asia-Pacific	660	4400000	106568000000
Slovakia	Europe	49033	5400000	34992000000
Slovenia	Europe	20273	2000000	29620000000
Solomon Islands	Asia-Pacific	27556	504000	277200000
Somalia	Africa	637657	10700000	\N
South Africa	Africa	1220000	45300000	164439000000
South Korea	Asia-Pacific	99313	48200000	673836000000
Spain	Europe	505988	44100000	935361000000
Sri Lanka	South Asia	65610	19400000	19594000000
St Kitts and Nevis	Americas	269	46000	\N
St Lucia	Americas	616	152000	655120000
St Vincent and the Grenadines	Americas	389	121000	441650000
Sudan	Middle East	2500000	35000000	18550000000
Surinam	South America	163265	442000	\N
Swaziland	Africa	17364	1100000	1826000000
Sweden	Europe	449964	8900000	318353000000
Switzerland	Europe	41284	7100000	342433000000
Syria	Middle East	185180	18600000	22134000000
Taiwan	Asia-Pacific	36188	22700000	302364000000
Tajikistan	Asia-Pacific	143100	6300000	\N
Tanzania	Africa	945087	38400000	\N
Thailand	Asia-Pacific	513115	64100000	162814000000
The Gambia	Africa	11295	1500000	\N
The Maldives	South Asia	298	338000	848380000
The Netherlands	Europe	41864	16300000	516710000000
The Philippines	Asia-Pacific	300000	82800000	96876000000
Togo	Africa	56785	5100000	1938000000
Tonga	Asia-Pacific	748	106000	\N
Trinidad and Tobago	Americas	5128	1300000	\N
Tunisia	Middle East	164150	10000000	26300000000
Turkey	Europe	779452	73300000	274875000000
Turkmenistan	Asia-Pacific	488100	5000000	\N
Tuvalu	Asia-Pacific	26	10000	\N
Uganda	Africa	241038	27600000	7452000000
Ukraine	Europe	603700	47800000	60228000000
United Arab Emirates	Middle East	77700	3100000	\N
United Kingdom	Europe	242514	59600000	2022824000000
United States of America	North America	9800000	295000000	12213000000000
Uruguay	South America	176215	3500000	\N
Uzbekistan	Asia-Pacific	447400	26900000	\N
Vanuatu	Asia-Pacific	12190	222000	297480000
Vatican	Europe	0	\N	\N
Venezuela	South America	881050	26600000	\N
Vietnam	Asia-Pacific	329247	83600000	45980000000
Yemen	Middle East	536869	21500000	12255000000
Zambia	Africa	752614	11000000	4950000000
Zimbabwe	Africa	390759	12900000	6192000000
\.


--
-- Name: actor_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id);


--
-- Name: casting_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY casting
    ADD CONSTRAINT casting_pkey PRIMARY KEY (movieid, actorid);


--
-- Name: dept_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (id);


--
-- Name: movie_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- Name: route_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY route
    ADD CONSTRAINT route_pkey PRIMARY KEY (num, company, pos);


--
-- Name: stops_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY stops
    ADD CONSTRAINT stops_pkey PRIMARY KEY (id);


--
-- Name: teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);


--
-- Name: world_pkey; Type: CONSTRAINT; Schema: public; Owner: rglassett; Tablespace: 
--

ALTER TABLE ONLY world
    ADD CONSTRAINT world_pkey PRIMARY KEY (name);


--
-- Name: actor_name; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX actor_name ON actor USING btree (name);


--
-- Name: casting_actor; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX casting_actor ON casting USING btree (actorid);


--
-- Name: casting_movie; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX casting_movie ON casting USING btree (movieid);


--
-- Name: casting_ord; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX casting_ord ON casting USING btree (ord);


--
-- Name: movie_title; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX movie_title ON movie USING btree (title);


--
-- Name: teacher_dept; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX teacher_dept ON teacher USING btree (dept);


--
-- Name: world_continent; Type: INDEX; Schema: public; Owner: rglassett; Tablespace: 
--

CREATE INDEX world_continent ON world USING btree (continent);


--
-- Name: casting_actorid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rglassett
--

ALTER TABLE ONLY casting
    ADD CONSTRAINT casting_actorid_fkey FOREIGN KEY (actorid) REFERENCES actor(id);


--
-- Name: casting_movieid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rglassett
--

ALTER TABLE ONLY casting
    ADD CONSTRAINT casting_movieid_fkey FOREIGN KEY (movieid) REFERENCES movie(id);


--
-- Name: movie_director_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rglassett
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_director_fkey FOREIGN KEY (director) REFERENCES actor(id);


--
-- Name: route_stop_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rglassett
--

ALTER TABLE ONLY route
    ADD CONSTRAINT route_stop_fkey FOREIGN KEY (stop) REFERENCES stops(id);


--
-- Name: teacher_dept_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rglassett
--

ALTER TABLE ONLY teacher
    ADD CONSTRAINT teacher_dept_fkey FOREIGN KEY (dept) REFERENCES dept(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: rglassett
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM rglassett;
GRANT ALL ON SCHEMA public TO rglassett;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

