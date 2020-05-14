import 'package:flutter/material.dart';
class MusicaClass {

  //Nombro asi las Lsiatas por que El map no crece por si solo
   var nombres = List(25);
   var letras = List(25);
   var acordes = List(25);
   var autores = List(25);
   var drive = List(25);



  void runNombres(){
    nombres[0]= "Viene tu pueblo a alabar";
    nombres[1]= "El himno de la liberación";
    nombres[2]= "Busca la paz de tu Dios";
    nombres[3]= "No por honra";
    nombres[4]= "Danza mi país";
    nombres[5]= "Para el Señor canta toda la tierra";
    nombres[6]= "Yo soy un militante";
    nombres[7]= "Canto de los líderes";
    nombres[8]= "La unidad";
    nombres[9]= "Isaías 33:14-16";
    nombres[10]= "Tenemos esperanza";
    nombres[11]= "Ayúdame a mirar con tus ojos";
    nombres[12]= "Señor cuando tú me llames";
    nombres[13]= "Escudriñemos nuestros caminos";
    nombres[14]= "Debemos decir y hacer la verdad";
    nombres[15]= "Piedras vivas";
    nombres[16]= "Salmo 8";
    nombres[17]= "HAKUNA MUNGU KAMA WEWE";
    nombres[18]= "Sencilla ";
    nombres[19]= "Xote da victoria";
    nombres[20]= "La semilla ";
    nombres[21]= "Salmo 19 ";
    nombres[22]= "Quién sino tú ";
    nombres[23]= "El sancocho";
    nombres[24]= "Con alegría";
  }
  void runAcordes(tono){
    acordes[0] = "Jesús, Dios nuestro,\n   "+convert(tono)+"     "+convert(tono-5)+"          .\nSeñor nadie es como tú.\n"+convert(tono-3)+"-    "+convert(tono-5)+"     "+convert(tono-7)+"\nDesde aquí decimos hoy:\n"+convert(tono-8)+"-  "+convert(tono-3)+"-  "+convert(tono-8)+"-   "+convert(tono-3)+"-\nCuan grande es tu poder y amor.\n"+convert(tono-2)+"        "+convert(tono-5)+"\n\nConsuelo, refugio,\n"+convert(tono)+"     "+convert(tono-5)+"     .\nAmas justicia y verdad.\n"+convert(tono-3)+"-    "+convert(tono-5)+"     "+convert(tono-7)+"\nLa creación, tu pueblo aquí,\n"+convert(tono-8)+"-  "+convert(tono-3)+"-  "+convert(tono-8)+"-   "+convert(tono-3)+"-\nCelebramos en tu honor.\n"+convert(tono-2)+"        "+convert(tono-5)+"\n\nCoro:\nPara el Señor canta toda la tierra,\n"+convert(tono)+"      "+convert(tono-3)+"-       "+convert(tono+2)+"-        "+convert(tono-5)+"\nLa majestad y el poder suyos son.\n"+convert(tono)+"      "+convert(tono-3)+"-       "+convert(tono+2)+"-        "+convert(tono-5)+"\nTiemblan los montes, los mares se\n"+convert(tono)+"           "+convert(tono-3)+"-          "+convert(tono+2)+"-\nEncrespan al sonido de su voz.\n"+convert(tono+7)+"              "+convert(tono-5)+"\nVen celebremos sus obras, sus hechos;\nLA     FA# -        SI-          MI\nPermanecemos, pues él vive hoy.\nLA     FA# -    SI-     MI\nNuestra esperanza descansa en nuestro Dios.\nLA        FA# -     SI-         MI      LA";
    acordes[1] = "Oh vengan pueblos todos,\nMI -                   .\nde todas las naciones,\n\nLevántense cantando alegremente\n                             SOL\nDejemos escuchar, la nueva melodía\n                              RE\nQue en Jesucristo trae liberación\nDO                            SI 7\n\nEs tiempo de romper la vil esclavitud\nMI-                            \nQue nos ejercen hombres o ideas;\nSOL                            \nEs tiempo de decir que Dios tan sólo es\n                                    RE\nEl único Señor del universo\nDO                 SI 7\nLa verdad os libertará\nMI -             SOL\nSeréis en Cristo verdaderamente libres\n            RE          DO        SI 7\nVengan todos sí oh vengan ya\nMI -                SOL    .\nY celebremos con gran gozo\n      RE               DO\nnuestra liberación\n       SI 7   MI -\n\nAquellos oprimidos, aquellos explotados\nY los que viven días de agonía.\nAquellos cojos, ciegos, cautivos, solos\nSabed que pronto viene un nuevo día.\nUn día de justicia, un día de verdad,\nUn día en que habrá en la tierra paz\nY que será vencida muerte por la vida:\nLa esclavitud al fin acabará.";
    acordes[2] = "Busca la paz de tu Dios,\n MI                 SI    \ntu Dios que se llama Jesús\n  DO # -               SOL #\n\nY síguela siempre hasta estallar\nLA          SI     DO # -      .\nen el gozo de su Cruz\n  LA        SI     MI\n\nBusca una forma de amar, amar a pesar del dolor,\nQue sea una fuerza para encontrar el Verbo del Señor.\n\nSeñor del canto y del trabajo,\n DO # -                SOL#-\ndanos hoy otra vez una oportunidad,\n LA           SI         DO # -\n\nPara poder sembrar la tierra fértil que\nLA     SI              DO # -         .\nEspera por tus manos, Señor;\nLA          SI         DO # -\nEspera por la semilla que nos vas a regalar.\nLA          SI                DO # -\nY cantaremos loor, Señor.\nLA     SI            MI\n\nPara sentirte feliz desnúdate ante tu Dios,\nY háblale cara a cara sin temor,\nY  tendrás por qué reír.\nConvierte tu placer en vida para tener\nLa paz, libertad y toda una hermandad\nen el canto de la fe.\n";
    acordes[3] = "//Heme aquí, envíame a mí\nRE                     LA\nYo iré donde me mandes Tú//\nSOL                   RE/LA\n\nNo por honra, no por pan,\n       RE             LA\nNo por vestido, te serviré, Señor.\n       SOL              RE       .\nNo por gloria, ni por una bendición\n       RE             LA          .\nNo por salud, te serviré Señor.\n       SOL            RE      .\n\n///Sólo por amarte///\n            LA/SOL/RE\nTe serviré Señor.\nSOL   LA       RE\n\n//Porque tú me amaste//,\nY no me rechazaste,\nTe serviré Señor.\n";
    acordes[4] = "Vivo en un país maravilloso,\nSOL                      RE\nLleno de riqueza y voluntad\nMI -                     SI –\nDios pintó mi alma blanco y rojo,\nDO                          SOL\nY por nada cambio este lugar.\nLA7                        RE\n\nMi pueblo es valiente y generoso,\nPobre pero rico en dignidad.\nY ni la tristeza ni el enojo\nHan hecho que deje de cantar.\nY así danza, danza, danza con sus penas,\nSOL                 RE              MI -\nCon sus alegrías, con su caminar.\n            SOL    LA 7      RE\nDanza, danza, danza porque espera\nSI -         DO              MI -\nQue el Dios de la vida lo liberará.\n     DO          SOL  RE       SOL\n\nSi vas a vivir en otras tierras,\nDiles lo que pasa aquí en verdad.\nCuéntales que el odio y la miseria\nNo nos han podido doblegar.\nHabla de toda la gente buena\nQue ha dado su vida por la paz,\nY que tras su muerte los que quedan,\nSe han unido para continuar.\n";
    acordes[5] = "Jesús, Dios nuestro,\nLA     MI          .\nSeñor nadie es como tú.\n      FA# -   MI     RE\nDesde aquí decimos hoy:\nDO#-  FA#-  DO#-   FA#-\nCuan grande es tu poder y amor.\n                  SOL        MI\n\nConsuelo, refugio,\nLA        MI     .\nAmas justicia y verdad.\nFA# -     MI        RE\nLa creación, tu pueblo aquí,\nDO#-  FA#-  DO#-       FA#-\nCelebramos en tu honor.\n            SOL     MI            \nPara el Señor canta toda la tierra,\nLA      FA# -      SI-        MI   \nLa majestad y el poder suyos son.\nLA     FA# -       S       MI    \nTiemblan los montes, los mares se\nLA           FA# -            SI-\nEncrespan al sonido de su voz.\nRE              MI            \nVen celebremos sus obras, sus hechos;\nLA     FA# -        SI-          MI  \nPermanecemos, pues él vive hoy.\nLA     FA# -    SI-     MI     \nNuestra esperanza descansa en nuestro Dios.\nLA        FA# -     SI-         MI      LA \n";
    acordes[6] = "Yo soy un militante\nDO FA        SOL  .\nLa gracia me ha enrolado,\n   MI -             LA - \nNo temo a la batalla,\n   FA          SOL   \nMi ejército es triunfante\n   FA           SOL      \n¡Jesús es el Señor!\n FA      SOL    DO \n\nAunque pareciera que ya no hay razón  \nDO          FA      SOL           MI -\nPara combatir, yo no me cansaré,    \nLA -       FA     SOL         DO/DO7\nPues sé que al final la muerte morirá,\n     FA          SOL     MI -     LA -\n¡Vencido el enemigo ya está!   \n  FA          SOL        DO/DO7\n\nEl hombre encadenado busca libertad,\nY no terminará nuestra lucha hasta encontrar\nAtado al verdugo que oprime al pecador.\n¡Vencido el enemigo ya está!\n";
    acordes[7] = "Cuando el mundo padece tiranías,\nMI -                            \nAparatos de odio y de mentira,\nLA -                          \nQue los siervos de tu Reino se mantengan\n        RE7                         SOL \nComo ejemplo contrastante de servicio.\n      FA#                          SI7\nSi en el mundo los jefes se agigantan\nMI -                                .\nManejando sus deseos de poder,\nLA-                           .\nQue tu pueblo sea fiel a tu mensaje,\nRE7                             SOL \nPues conquistas lavando nuestros pies.  \n         FA#                        SI 7\n\n//Que se escuche tu voz y no la mía,       \n            MI        SI 7               DO#-\nQue los hermanos te adoren sólo a ti;  \n        LA                          SI 7\nQue yo mengue y tú crezcas cada día;      \n     SOL#                             DO#-\nQue se postren a tus pies y no hacia a mí// \n    FA#                                  SI 7\n(Que se postren rendidos a tus pies)    \n         FA#-        SI 7             MI\n\nQue se atienda al que llora y al que sufre,\nY se busque al humano en desamparo,\nQue encontremos tu rostro cada día\nY seamos instrumentos en tus manos.\nQue tu Palabra en mis labios siempre abunde\nY abra caminos de paz en mis Hermanos,\nPara aprender la humildad y mansedumbre\nDe Jesús, El Pastor de los humanos\n";
    acordes[8] = "//Yo sé que fue pagado un alto precio,\n   FA#-                           DO#-\nPara que seamos uno tú y yo.\n RE                    FA#-\nCuando Jesús derramaba su vida,\n FA#-             DO#-         \nÉl pensaba en ti, Él pensaba en mí,\nRE                MI\nEn nuestra unidad.//\n               FA#- \n\nNos veía redimidos por su sangre,\nRE                         LA    \nCombatiendo la batalla de la fe,\n      RE                      LA\nCodo a codo trabajando,\nRE                 FA#-\nsu iglesia edificando,\n      RE          FA#-\nY rompiendo las barreras por amor.\n   RE                        MI  .\nY mediante el Espíritu Santo\n   LA               MI     .\nproclamamos hoy aquí,\n      FA#-         DO#-\nQue pagaremos el precio de ser\n     RE          LA          .\ntodos un corazón en Jesús.\n RE                   MI .\nY si las tinieblas militan\n    LA               MI  .\ny nos quieren separar,\n   FA#-         DO#-  \nPuestos los ojos en Cristo,\nRE                  LA    .\n¡Marchamos en unidad!\n  RE         MI    LA\n";
    acordes[9] = "«¿Quién de nosotros morará\nRE			  \ncon el fuego consumidor?\n                  LA    \n¿Quién de nosotros habitará\n SI-			   \ncon las llamas eternas?\n               FA#-    \nEl que camina en justicia\nSOL			\ny habla de lo recto,\n             RE     \nEl que aborrece la ganancia de violencias;\n    MI-                         LA	  \nEl que sacude sus manos\n        RE             \npara no recibir soborno\n                  LA   \nEl que tapa sus oídos para no oír  \n SI-                           FA#-\n Propuestas sanguinarias;\n SOL                RE   \n El que cierra sus ojos \n         MI-		\n para no ver cosa mala».\n                  LA/LA-\n\n«Este habitará en las alturas,\n      RE                LA    \nFortaleza de rocas será su lugar de refugio.\n     SI-                             FA#-   \nSe le dará su pan, y sus aguas serán seguras».\nSOL                 RE           MI-    LA RE \n";
    acordes[10] = "Porque él nació en un pesebre oscuro.\n            RE-                 LA   \nPorque él vivió sembrando amor y vida,\n             FA                   DO  \nPorque él quebró los corazones duros\n             SOL-               RE- \nY levantó las almas abatidas.\n       LA        LA7/RE-/RE7 \n\n// Por eso es que hoy tenemos esperanza,\n       SOL-                       DO    \nPor eso es que hoy luchamos con porfía,\n     FA                            RE- \nPor eso es que hoy miramos con confianza\n    SOL-                       LA/LA7   \nEl porvenir... [en esta tierra mía] //\n       RE-                  RE/RE7    \n\nPorque atacó a ambiciosos mercaderes\nY denunció maldad e hipocresía,\nPorque exaltó a los niños, las mujeres,\nY resistió a los que de orgullo ardían;\nPorque él llevó la cruz de nuestras penas\nY saboreó la hiel de nuestros males,\nPorque aceptó sufrir nuestra condena\nY así morir por todos los mortales.\n\nPorque aurora vio su gran victoria\nSobre la muerte, el miedo, la mentira,\nYa nada puede detener su historia,\nNi de su reino eterno la venida.\n";
    acordes[11] = "// Ayúdame a mirar con tus ojos,\n     RE                     SI-\nYo quiero sentir con tu corazón.\n    SOL                  LA	\nNo quiero vivir más siendo insensible\n     RE                     SI-/SI   \nA la necesidad, oh Jesucristo. //\n   SOL                   LA/LA7  \n\n// Te pido la paz para mi ciudad [país],\n              RE       SI-              \nTe pido perdón por mi ciudad [país].\n    SOL            LA               \nAhora me humillo y busco tu rostro.\n     RE                     SI-/SI \nA quién iré Señor, sino a ti. //\n  SOL        LA          RE     \n";
    acordes[12] = "Señor, cuando tú me llames\n   DO                    .\nPon mi mano en el arado,\n       SOL             .\nPon la simiente en la alforja,\n        FA                   .\ndame un pedazo de tierra\n DO                    .\nDonde pueda cada día trazar\n                  RE-     .\nlíneas paralelas.\n           SOL  .\n\nDame también gotas de agua,\nDO                        .\nde la lluvia tempranera\n        SOL           .\nDel sudor sobre mi frente,\n      FA                 .\nde mis ojos cuando sienta\n         DO             .\nEl corazón conmovido\n              RE-  .\npor la alegría o la pena.\n                    SOL .\n\nSeñor, cuando tú me llames,\n  DO                      .\nDame al fin  lo que tú quieras.\n        LA-                   .\nDame el monte o dame el llano,\n        FA                   .\nO una montaña de piedras.\n       SOL              .\nPero Señor sobre todo,\n     DO              .\nmultiplícame las fuerzas\n      RE-              .\nDame un canto de victoria,\n       FA                .\nY que la multitud de mis penas y mis dudas\n          DO                             .\ne inquietudes,\n     RE-     .\nCambien en vigor y certeza.\n                    SOL   .\n\nSeñor, cuando tú me llames\nPon mi mano en el arado,\nPonme un carbón encendido,\nQuema mis impurezas y cambia mi vida\nCon tu luz en la diáfana lumbrera.\nDe victoria cual antorcha,\ny de guía al que no pueda\nencontrar entre las sombras\nEl Sendero de tus huellas.\n\nSeñor, cuando tú me llames\nDame al fin lo que tú quieras,\nComo al viento la marea\n//Yo quiero escuchar tu voz//...\ninconfundible y serena.\n";
    acordes[13] = "Escudriñemos, nuestros caminos\n DO                      MI-  \nY volvamos a Jehová.\n     FA         SOL \n\nLevantemos, nuestras manos al Señor\n     DO               MI-    FA/SOL\nLevantemos nuestras manos al Dios de los cielos\n     FA               MI-      LA-        FA   \nY volvamos a Jehová nuestro Dios\n     DO          FA  SOL      DO\n\nPor la bondad de Jehová\nNo hemos sido consumidos\nPorque nunca decayeron sus bondades\n//Nuevas son cada mañana//\nY grande es su fidelidad\n";
    acordes[14] = "Tiempos difíciles nos han tocado vivir.\nSOL       RE            MI-        DO  \nEl mundo avanza y no para de cambiar.\nSOL         RE       MI-       DO    \nY el vacío no deja de existir.\nRE                   MI-      \nY me pregunto que podemos hoy hacer.\n  Re          DO             RE/RE7 \n\nDebemos decir y hacer la verdad.\n         SOL      RE       MI-  \nDebemos orar y nunca parar.\n         DO     SOL     RE \nDebemos amar sin condición.\n         SOL-SOL7    DO/DO-\nDebemos ganar a la universidad.\n         SOL    DO    RE    SOL\n\nTambién tu escuela necesita del Señor.\n  SOl       RE       MI-        DO    \nDe tu constancia y de tu consagración.\nSOL     RE         MI-           DO   \nLa oportunidad la tienes, no la dejes ir.\n   RE                             MI-    \nDile al Señor conmigo cuentas de corazón.\n  RE               DO             RE/RE7 \n";
    acordes[15] = "INTRO: SOL SI DO RE x2\n\n       SOL     \n//Hoy migrantes\nSI        \nCaminantes\n DO            RE\nEn la universidad\nSOL         .\nPiedras vivas\nSI      \nElegidas\n DO          RE     .\nTodos tenemos llamado\n MI-      SI-    DO           RE       .\nHacer el bien viviendo en justicia y paz\n  MI-        SI-   DO                    RE\nOpuestos al mal dispuestos a sufrir como el//\n\n   SOL      SI\n//Dios guíame \n      D0       SI           MI- (MI-, RE, DO)\nQue pesen más mis actos que mi voz           \nDO               RE\nQuiero encontrarte \nSI7          MI- (MI-, RE,DO)\nQuiero presentarte           \nDO      RE            SOL  \npiedras vivas cerca de ti//\n";
    acordes[16] = "INTRO: FA DO MI LA-\n\n                  DO   \nOh jehová señor nuestro\n                  SOL   \ncuán grande es tu nombre\n                    LA-  \nen toda la tierra aleluya\n                   DO  \nOh jehová señor nuestro\n                  SOL   \ncuán grande es tu nombre\n                    LA-  \nen toda la tierra aleluya\n\nFA              DO  \nOhhhhhhhh oh oh uueo\n     MI                 LA- \nShalala shala lalala aleluya\n\nFA               DO \nOhhhhhhhh oh oh uueo\n      MI               LA-  \nShalala shala lalala aleluya\n\n                   DO	\nDe la boca de los niños\nSOL			  \ny de los maman fundaste la\nLA-		 \nfortaleza aleluya\n\n                   DO\nDe la boca de los niños\nSOL			\ny de los maman fundaste la\nLA-			\nfortaleza aleluya\n\nOhhhhhhhh oh oh uueo\nShalalala shalalala aleluya\nOhhhhhhhh oh oh uueo\nShalalala shalalala aleluya\n\nCuando miro los cielos\nla luna y las estrellas\nme pregunto qué es el hombre aleluya\nCuando miro los cielos\nla luna y las estrellas\nme pregunto qué es el hombre aleluya\n\nOhhhhh";
    acordes[17] = "MI            LA      \nHAKUNA MUNGU KAMA WEWE\nMI            SI    \nHAKUNA MANGU KAMA WE\nMI            LA      \nHAKUNA MUNGU KAMA WEWE\nMI    SI      MI    \nHAKUNA NA HATAKUWEPO\n\nMI            LA\n//NIMETEMBEA KOTE KOTE\nMI             SI     \nNIMEZUNGUKA KOTE KOTE\nMI            LA     \nNIMETAFUTA KOTE KOTE\nMI          SI    MI\nHAKUNA NA HATAKUWEPO//\n\nMI                            LA  \nNO HAY QUIEN SE COMPARE CON CRISTO\nMI                         SI \nNO HAY QUIEN SE COMPARE CON EL\nMI                           LA   \nNO HAY QUIEN SE COMAPRE CON CRISTO\nMI             SI            MI  \nNO HAY QUIEN SE COMPARE CON JESUS\n\nMI                     LA \n//HE CAMINADO Y NADA, NADA\nMI                      SI  \nTAMBIEN BUSCADO Y NADA, NADA\nMI                       LA  \nHE DADO VUELTAS, Y NADA, NADA\n  MI          SI            MI     \nNO HAY QUIEN SE COMPARE CON JESUS//\n";
    acordes[18] = "INTRO: RE   FA#-    SOL   MI7-  LA7\n\n                 RE \nDame una fe sencilla\n                            FA#-\ncomo risa de niños cuando juegan\n                          SOL  \ncomo gota de roció que se rueda\n       MI7-             LA7\ncomo cruz de rústica madera\n                RE  \nDame una fe sencilla\n                               FA#-  \nque se siente a la mesa de los pobres\n                                SOL   \nque se alegre de alegrar sus corazones\n     MI7-                       LA7\ny que llore también con sus dolores\n\n SOL SOLmaj7  A7 	      \nuna fe así     parecida a ti….\n\n    RE          SOL     LA7        RE  \nSencilla como fue a la tierra tu venida\n      SOL        LA7            RE  \ncomo Fueron tus historias campesinas\n     LA    SOL      LA      LA7\ncomo fue tu hogar en palestina \n\n                 RE \nDame una fe sencilla\n                               FA#- \npara curar con esperanza la tristeza\n                                 SOL    \npara cantar por el perdón en esta guerra\n   MI7-                    LA7 \npara avivar el pabilo que humea\n               RE   \nDame una fe sencilla\n                            FA#- \nque no le da espacio a la mentira\n                                SOL    \nque no logra acomodarse a la injusticia\n      MI7-                        LA7    \ny no calla a lo que sabe que da vidaaa...\n\nRE   FA#-  SOL  LA7   X2\n\n  SOL Gmaj7  LA7               \nuna fe así      parecida a ti….\n\n    RE          SOL     LA7        RE  \nSencilla como fue a la tierra tu venida\n      SOL        LA7            RE  \ncomo Fueron tus historias campesinas\n     LA    SOL      LA      LA7\ncomo fue tu hogar en palestina \n\n   RE        SOL LA7         RE  \nSencilla como tu mirada compasiva\n    SOL      A7           RE   \ncomo aquellas aldeas campesinas\n    LA         SOL      LA7 \ncomo el amor que te llevo...\n RE   FA#-  SOL  LA7\na dar la vida...    \n\nRE   FA#-  SOL  LA7\n  a dar la vida    \n          RE  \nA dar la vida.\n";
    acordes[19] = "             FA#-         SI            SOL#-\nSi alguien pregunta por el día de esperanza  \n         DO#-       FA#-       SI       MI  LA MI\nTú dirás con fe y confianza: todo aquí mejorará  \n           FA#-      SI          SOL#-\nEl pueblo alegré realizará la historia\n        DO#m      FA#-    SI              MI \nY el Señor de la victoria la cosecha nos dará\n\n              LA          SOL#-\n¿Y el hambre existirá?... ¡No! \n              LA          SOL#-\n¿La violencia existirá?... ¡No!\n             FA#-       SI          SOL#-\nSi nuestra fuerza se mantiene con porfía \n       DO#-       FA#-      SI         MI   \nEl Señor de la armonía quitará nuestro dolor\n\n  LA     SOL#-             FA#-  SI    MI  \n//La, laia, laia , laia, laIA, laia, laia//\n\n        FA#-             SI      SOL#-\nNos mantenemos con los ojos al futuro \n       DO#-          FA#- \nDespejando el campo oscuro\n      SI                MI LA MI\ncon la fuerza de la unión	\n        FA#-             SI         SOL#-\nQue venceremos a quien lucha con bajeza  \n      DO#-           FA#-       SI       MI \nLo sabemos con certeza plantados en la razón\n\n              LA          SOL#-\n¿Y el hambre existirá?... ¡No! \n              LA          SOL#-\n¿La violencia existirá?... ¡No!\n             FA#-       SI          SOL#-\nSi nuestra fuerza se mantiene con porfía \n       DO#-       FA#-      SI         MI   \nEl Señor de la armonía quitará nuestro dolor\n\n  LA     SOL#-             FA#-  SI    MI  \n//La, laia, laia , laia, laIA, laia, laia//\n";
    acordes[20] = "            SI		 \nLa semilla sembrada lleva\n                       MI-  \nya tiempo en su nuevo hogar,\n       SI			\nse le ha procurado lo necesario \n          MI-\npa germinar  \n             LA-     \npero aunque se acerca\n                    SOL \nla temporada de cosechar\n           DO                  RE  \nfalta que la vida la vuelva espiga,\n          SOL \nla vuelva pan.\n\n            SI        \nLa semilla ama el olor\n              MI-     \na tierra de la humedad\n                  SI  \nconvertirse en fruto y\n                      MI-\ndejar atrás su comodidad \n          LA-		     \npero que ha de hacerse si fue\n      RE           SOL \nsembrada con la misión,\n                           RE    \nde dejar la sombra para exponerse\n             SOL\nal rayo del sol.\n\n              RE \nque el agricultor\n           SOL\npueda recoger \n            DO         .\ny ver este campo llamado\n RE           SOL \npatria reverdecer,\n\n            SI  \ny que la ilusión\n              DO  \ncon la que sembró,\n             LA-\nse haga realidad\n            SI            MI-\nen el nacimiento de cada flor\n\nSI MI- X4 DO MI- SI- DO SI MI- DO MI- SI- LA- SI\n\n2 veces todo\n";
    acordes[21] = "             SI		    \nLa ley de Jehová es perfecta\n  LA            MI   \nQue convierte el alma\n                   SI	       \nEl testimonio de Jehová es fiel\nLA                  MI    MI7\nQue hace sabio al sencillo   \n\n           LA          SI   \nDeseables son más que el oro\n                SOL#-    DO#-\ny más que mucho oro afinado  \n          LA\nY dulces mas\n         SI                  MI  \nQue la miel que destila del panal\n\n                       SI	     \nLos mandamientos de Jehová son rectos\nLA                 MI \nQue alegran el corazón\n                        SI   \nEl percepto de Jehová es puro\n LA           MI    MI7\nQue alivia los ojos    \n\n           LA          SI   \nDeseables son más que el oro\n                SOL#-    DO#-\ny más que mucho oro afinado  \n          LA\nY dulces mas\n         SI                  MI  \nQue la miel que destila del panal\n\n                 SI	     \nEl perdón de Jehová es limpio\n LA             MI    \nPermanece para siempre\n                 SI		\nLos juicios de Jehová son verdad\nLA        MI    MI7\nTodos justos	   \n\n///       LA          SI    \nDeseables son más que el oro\n              SOL#-    DO#-\ny más que mucho oro afinado\n         LA \nY dulces mas\n        SI                  MI   MI7 \nQue la miel que destila del panal ///\n\n(Ultima a capella)\n";
    acordes[22] = "E       B/D#       C#m7     \nTu nos has traido hasta aqui\n  Asus2     E      F#m7     B5       \nno nuestras fuerzas ni nuestra bondad\n E        G#*        C#m7   \ntu nos has traido hasta aqui\nBm7-E7    Asus2    E           G#*  C#m7\npor eso  toda la gloria, y la gratitud, \nRIFF             B5     E     \npor eso todo el honor para Ti.\n\n         G#m7   Asus2    B5 	   \nPues quien sino Tú has sido refugio\n        G#m7    Asus2    B5      \ny quien sino Tú calmo nuestra sed\n       E     G#*   C#m7		    \ny quien sino Tú has sido el sustento\n    Bsus2   C#m/Bb \ncuando todo faltaba\n      riff    B5      E			\nSeñor sino Tú que por siempre eres fiel.\n\nE        G#m7        C#m7   \nTú nos has traido hasta aqui\nAsus2    E          F#m7     B5		\ntu viento ha soplado con poder y verdad \nE         G#           C#m7	     \ny hasta donde bien nos quieras llevar\nBm7-E7   Asus2         E     G#        C#m7  \nque en nosotros hable tu voz y brille tu vida\n  RIFF        B5      E	      \ny vengan tu justicia y tu paz.\n\n         G#m7   Asus2    B5	   \nPues quien sino Tú has sido refugio\n        G#m7    Asus2    B5	 \ny quien sino Tú calmo nuestra sed\n       E     G#*   C#m7		    \ny quien sino Tú has sido el sustento\n    F#7		   \ncuando todo faltaba\n      riff   B5        E		\nSeñor sino Tú que por siempre eres fiel.\n\n          (IGUAL QUE CORO )		\n y quien sino tú  que nos dio su palabra\n quien puso sus sueños en el corazon\nquien edificó con sus manos la casa\ny planto las semillas\nseñor sino tu traspasado de amor\n quien edifico con sus manos la casa\ny planto la semilla\nseñor sino tu traspasado de amor.\n";
    acordes[23] = "Intro: A, E, F#m7, D (x4)\n\nA		  \nTodo empezó un día\n        D		 \nal iniciar la universidad\nE		 \ncuando James supo\n      A        E	    \nde un compañero en necesidad\nA		   \nY aunque en su casa\nD          Dm	  \ncasi no había nada\n\nA		  \nle dijo que andara\nE		\na ver qué pasaba\n\nLa mamá de James\nlo esperaba para almorzar\naquel día había\naún más poco que lo normal\nTremenda sorpresa\nal abrir la puerta\ny ver a su hijo\ncon visita hambrienta\n\n(CORO)\n        A	 \nSigan al sancocho\nE         F#m7	  \nentren a la fiesta\nE        D	 \ny que los abrigue\nB7/D#     Esus/E\nel fogón de leña\n        C#7	   \nSigan que a la mesa\n       F#m	\nla bendice Dios \nD         A	 \ny si hay para uno\nE      A      \nhabrá para dos\n  E  F#m7 D\nEh Eh Eh Eh\n\nAl día siguiente\nvolvió la madre a cocinar\ny James de nuevo\nregresó a la universidad\nY al salir de clase\nvio que tenían hambre\ncuatro melenudos que estudiaban artes\n\nLA mamá contenta\nporque ese día correspondía\nun poco de carne\nque era un lujo en su economía\ncorrió cuando James\nLA llamó A LA puerta\ny al abrir quedó de una sola pieza\n\n(CORO)\nSigan al sancocho\nentren a la fiesta\ny que los abrigue\nel fogón de leña\nSigan que a la mesa\nDios la hará crecer\ny si hay para uno\nhabrá para seis\n\nHan pasado años\nya casi James se va a graduar\nmedia u lo espera\nparada frente a la facultad\n\ntodo el mundo sabe\nque el que tenga hambre\nlas puertas abiertas tiene donde James\n\nLA pobre mamá\nes la más feliz con la situación\ny todos los días\nansiosa espera aquel batallón\nprepara la olla\nse agarra la moña\ny al pelar cebolla de alegría llora...\n\n(CORO)\n             A   \nSigan al sancocho\nE          F#m7   \nentren a la fiesta\nE       D	 \ny que los abrigue\nB7/D#     Esus/E\nel fogón de leña\n           C#m7   \nSigan que el Señor\n           F#m	    \nhoy va a multiplicar\n         B7	 \ny si hay para uno\n       E	\npara cien habrá \n\n       A	 \nSigan al sancocho\nE         F#m7    \nque la Biblia dice\nE        D	  \nque aquella comida\n      B7/D#        Esus/E	\nes Cristo mismo quien la recibe \n          C#m7     \nQue por dar su amor\n       F#m /E	\nnos reconocerían\n          B7	     \nque al servir al otro\n       E      \nDios sonreiría\n        D	  \nQue nos ha salvado\n     E        A		    \ny ya no podemos ser egoístas\n  E   F#m7 D\nEh Eh Eh Eh\n  E   F#m7 D\nEh Eh Eh Eh\n";
    acordes[24] = "Con alegría te queremos loar,\nLA-                     D\nA ti venimos hoy gozo a cantar\nMI                    LA - (MI)\nTus mandamientos cumplimos con amor\nLA -                          DO\nY nuestras vidas te entregamos Señor\nMI                          LA -\nPara los pobres y perdidos salvar\nSOL                        DO\nPor tu Palabra vamos a trabajar\nSI 7                            MI\n\n// Y te cantamos porque aquí tú vives\n FA                MI          LA -\nNos has salvado nos has hecho libres//\nFA              MI            LA -\nQue más pudiéramos pedirte Señor\nNos diste manos y creaste el sudor.\nTe regocijas con nosotros labrar\nLa dura tierra y la llenas  de pan\nY pones ánimo en el corazón\nDe gozo eterno por la salvación.\n\nNos alegramos de tu visitación,\nComo el rocío a nuestras manos llegó\nFormaste en gloria nuestra comunidad\nNos bautizaste con amor y verdad\nY un himno nuevo en nuestros\nlabios también\nQue te proclama por siglos, ¡Amén\n";

  }


  void runLetras(){
    letras[0] = "Jesús, Dios nuestro,\nSeñor nadie es como tú.\nDesde aquí decimos hoy:\nCuan grande es tu poder y amor.\n\nConsuelo, refugio,\nAmas justicia y verdad.\nLa creación, tu pueblo aquí,\nCelebramos en tu honor.\n\nPara el Señor canta toda la tierra,\nLa majestad y el poder suyos son.\nTiemblan los montes, los mares se\nEncrespan al sonido de su voz.\nVen celebremos sus obras, sus hechos;\nPermanecemos, pues él vive hoy.\nNuestra esperanza descansa en nuestro Dios.";
    letras[1] = "Oh vengan pueblos todos,\nde todas las naciones,\nLevántense cantando alegremente\nDejemos escuchar, la nueva melodía\nQue en Jesucristo trae liberación\n\nEs tiempo de romper la vil esclavitud\nQue nos ejercen hombres o ideas;\nEs tiempo de decir que Dios tan sólo es\nEl único Señor del universo\n\nLa verdad os libertará\nSeréis en Cristo verdaderamente libres\nVengan todos sí oh vengan ya\nY celebremos con gran gozo\nnuestra liberación\n\nAquellos oprimidos, aquellos explotados\nY los que viven días de agonía.\nAquellos cojos, ciegos, cautivos, solos\nSabed que pronto viene un nuevo día.\n\nUn día de justicia, un día de verdad,\nUn día en que habrá en la tierra paz.\nY que será vencida muerte por la vida:\nLa esclavitud al fin acabará.\n\n";
    letras[2] = "Busca la paz de tu Dios,\ntu Dios que se llama Jesús\nY síguela siempre hasta estallar\nen el gozo de su Cruz\nBusca una forma de amar,\namar a pesar del dolor,\nQue sea una fuerza para\nencontrar el Verbo del Señor.\n\nSeñor del canto y del trabajo,\ndanos hoy otra vez Una oportunidad,\nPara poder sembrar la tierra fértil que\nEspera por tus manos, Señor;\nEspera por la semilla\nque nos vas a regalar.\nY cantaremos loor, Señor.\n\nPara sentirte feliz\ndesnúdate ante tu Dios,\nY háblale cara a cara sin temor,\nY  tendrás por qué reír.\nConvierte tu placer en vida\npara tener La paz,\nlibertad y toda una hermandad\nen el canto de la fe.\n";
    letras[3] = "//Heme aquí, envíame a mí\nYo iré donde me mandes Tú//\n\nNo por honra, no por pan,\nNo por vestido, te serviré, Señor.\nNo por gloria, ni por una bendición\nNo por salud, te serviré Señor.\n\n///Sólo por amarte///\nTe serviré Señor.\n\n//Porque tú me amaste//,\nY no me rechazaste,\nTe serviré Señor.\n";
    letras[4] = "Vivo en un país maravilloso,\nLleno de riqueza y voluntad\nDios pintó mi alma blanco y rojo,\nY por nada cambio este lugar.\n\n Mi pueblo es valiente y generoso,\nPobre pero rico en dignidad.\nY ni la tristeza ni el enojo\nHan hecho que deje de cantar.\nY así danza, danza, danza con sus penas,\nCon sus alegrías, con su caminar.\nDanza, danza, danza porque espera\nQue el Dios de la vida lo liberará.\n\nSi vas a vivir en otras tierras,\nDiles lo que pasa aquí en verdad.\nCuéntales que el odio y la miseria\nNo nos han podido doblegar.\nHabla de toda la gente buena\nQue ha dado su vida por la paz,\nY que tras su muerte los que quedan,\nSe han unido para continuar.\n";
    letras[5] = "Jesús, Dios nuestro,\nSeñor nadie es como tú.\nDesde aquí decimos hoy:\nCuan grande es tu poder y amor.\n\nConsuelo, refugio,\nAmas justicia y verdad.\nLa creación, tu pueblo aquí,\nCelebramos en tu honor.\n\nPara el Señor canta toda la tierra,\nLa majestad y el poder suyos son.\nTiemblan los montes, los mares se\nEncrespan al sonido de su voz.\nVen celebremos sus obras, sus hechos;\nPermanecemos, pues él vive hoy.\nNuestra esperanza descansa en nuestro Dios.\n";
    letras[6] = "Yo soy un militante\nLa gracia me ha enrolado,\nNo temo a la batalla,\nMi ejército es triunfante\n[Última: La historia está ganada],\n¡Jesús es el Señor!\n\nAunque pareciera que ya no hay razón\nPara combatir, yo no me cansaré,\nPues sé que al final la muerte morirá,\n¡Vencido el enemigo ya está!\n\nEl hombre encadenado busca libertad, y no terminará\nNuestra lucha hasta encontrar atado al verdugo\nQue oprime al pecador. ¡Vencido el enemigo ya está!\n";
    letras[7] = "Cuando el mundo padece tiranías,\nAparatos de odio y de mentira,\nQue los siervos de tu Reino se mantengan\nComo ejemplo contrastante de servicio.\n\nSi en el mundo los jefes se agigantan\nManejando sus deseos de poder,\nQue tu pueblo sea fiel a tu mensaje,\nPues conquistas lavando nuestros pies.\n\n//Que se escuche tu voz y no la mía,\nQue los hermanos te adoren sólo a ti;\nQue yo mengue y tú crezcas cada día;\nQue se postren a tus pies y no hacia a mí//\n(Que se postren rendidos a tus pies)\n\nQue se atienda al que llora y al que sufre,\nY se busque al humano en desamparo,\nQue encontremos tu rostro cada día\nY seamos instrumentos en tus manos.\nQue tu Palabra en mis labios siempre abunde\nY abra caminos de paz en mis Hermanos,\nPara aprender la humildad y mansedumbre\nDe Jesús, El Pastor de los humanos...\n\n";
    letras[8] = "//Yo sé que fue pagado un alto precio,\nPara que seamos uno tú y yo.\nCuando Jesús derramaba su vida,\nÉl pensaba en ti, Él pensaba en mí,\nEn nuestra unidad.//\n\nNos veía redimidos por su sangre,\nCombatiendo la batalla de la fe,\nCodo a codo trabajando, su iglesia edificando,\n\nY rompiendo las barreras por amor.\nY mediante el Espíritu Santo proclamamos hoy aquí,\nQue pagaremos el precio de ser todos un corazón\n\nen Jesús.Y si las tinieblas militan y nos quieren separar,\nPuestos los ojos en Cristo, ¡Marchamos en unidad!\n";
    letras[9] = "«¿Quién de nosotros morará con el fuego consumidor?\n¿Quién de nosotros habitará con las llamas eternas?\nEl que camina en justicia y habla de lo recto,\nEl que aborrece la ganancia de violencias;\nEl que sacude sus manos para no recibir soborno\nEl que tapa sus oídos para no oír\nPropuestas sanguinarias;\nEl que cierra sus ojos para no ver cosa mala».\n\n«Este habitará en las alturas,\nFortaleza de rocas será su lugar de refugio.\nSe le dará su pan, y sus aguas serán seguras».\n";
    letras[10] = "Porque entró en mundo y en la historia.\nPorque él rompió el silencio y la agonía.\nPorque llenó la tierra de su gloria.\nPorque fue luz en nuestra noche fría.\n\nPorque él nació en un pesebre oscuro.\nPorque él vivió sembrando amor y vida,\nPorque él quebró los corazones duros\nY levantó las almas abatidas.\n\n// Por eso es que hoy tenemos esperanza,\nPor eso es que hoy luchamos con porfía,\nPor eso es que hoy miramos con confianza\nEl porvenir... [en esta tierra mía] //\n\nPorque atacó a ambiciosos mercaderes\nY denunció maldad e hipocresía,\nPorque exaltó a los niños, las mujeres,\nY resistió a los que de orgullo ardían;\nPorque él llevó la cruz de nuestras penas\nY saboreó la hiel de nuestros males,\nPorque aceptó sufrir nuestra condena\nY así morir por todos los mortales.\n\nPorque aurora vio su gran victoria\nSobre la muerte, el miedo, la mentira,\nYa nada puede detener su historia,\nNi de su reino eterno la venida.\n";
    letras[11] = "// Ayúdame a mirar con tus ojos,\nYo quiero sentir con tu corazón.\nNo quiero vivir más siendo insensible\nA la necesidad, oh Jesucristo. //\n\n// Te pido la paz para mi ciudad [país],\nTe pido perdón por mi ciudad [país].\nAhora me humillo y busco tu rostro.\nA quién iré Señor, sino a ti. //\n";
    letras[12] = "Señor, cuando tú me llames pon mi mano en el arado,\nPon la simiente en la alforja, dame un pedazo de tierra\nDonde pueda cada día trazar líneas paralelas.\n\nDame también gotas de agua, de la lluvia tempranera\nDel sudor sobre mi frente, de mis ojos cuando sienta\nEl corazón conmovido por la alegría o la pena.\n\nSeñor, cuando tú me llames,\nDame al fin  lo que tú quieras.\nDame el monte o dame el llano,\nO una montaña de piedras.\nPero Señor sobre todo, multiplícame las fuerzas\nDame un canto de victoria,\nY que  la multitud de mis penas y mis dudas e  inquietudes,\nCambien en vigor y certeza.\n\nSeñor, cuando tú me llames pon mi mano en el arado,\nPonme un carbón encendido,\nQuema mis impurezas y cambia mi vida\nCon tu luz en la diáfana lumbrera.\nDe victoria cual antorcha,\ny de guía al que no pueda encontrar entre las sombras\nEl Sendero de tus huellas.\n\nSeñor, cuando tú me llames\nDame al fin lo que tú quieras,\nComo al viento la marea\n//Yo quiero escuchar tu voz//... inconfundible y serena.\n";
    letras[13] = "Escudriñemos, nuestros caminos\nY volvamos a Jehová.\nLevantemos, nuestras manos al Señor\nLevantemos nuestras manos al Dios de los cielos\nY volvamos a Jehová nuestro Dios\n\nPor la bondad de Jehová\nNo hemos sido consumidos\nPorque nunca decayeron sus bondades\n//Nuevas son cada mañana//\nY grande es su fidelidad\n";
    letras[14] = "Tiempos difíciles nos han tocado vivir.\nEl mundo avanza y no para de cambiar.\nY el vacío no deja de existir.\nY me pregunto que podemos hoy hacer.\n\nDebemos decir y hacer la verdad.\nDebemos orar y nunca parar.\nDebemos amar sin condición.\nDebemos ganar a la universidad.\n\nTambién tu escuela necesita del Señor.\nDe tu constancia y de tu consagración.\nLa oportunidad la tienes, no la dejes ir.\nDile al Señor conmigo cuentas de corazón.\n";
    letras[15] = "//Hoy migrantes\nCaminantes\nEn la universidad\nPiedras vivas\nElegidas\nTodos tenemos llamado\nHacer el bien viviendo en justicia y paz\nOpuestos al mal dispuestos a sufrir como el//\n\nCORO\n//Dios guíame\nQue pesen más mis actos que mi voz\nQuiero encontrarte\nQuiero presentarte\npiedras vivas cerca de ti//\n";
    letras[16] = "Oh jehová señor nuestro\nCuán grande es tu nombre en toda la tierra aleluya\nOh jehová señor nuestro\nCuán grande es tu nombre en toda la tierra aleluya\n\nOhhhhhhhh oh oh uueo\nShalala shala lalala aleluya\n\nOhhhhhhhh oh oh uueo\nShalala shala lalala aleluya\n\nDe la boca de los niños y de los maman fundaste la fortaleza aleluya\nDe la boca de los niños y de los maman fundaste la fortaleza aleluya\n\nOhhhhhhhh oh oh uueo\nShalalala shalalala aleluya\nOhhhhhhhh oh oh uueo\nShalalala shalalala aleluya\n\nCuando miro los cielos la luna y las estrellas me pregunto qué es el hombre aleluya\nCuando miro los cielos la luna y las estrellas me pregunto qué es el hombre aleluya\n\nOhhhhhhhh oh oh uueo\nShalalala shalalala aleluya\n\nOhhhhhhhh oh oh uueo\nShalalala shalalala aleluya\n";
    letras[17] = "HAKUNA MUNGU KAMA WEWE\nHAKUNA MANGU KAMA WE\nHAKUNA MUNGU KAMA WEWE\nHAKUNA NA HATAKUWEPO\n\n//NIMETEMBEA KOTE KOTE\nNIMEZUNGUKA KOTE KOTE\nNIMETAFUTA KOTE KOTE\nHAKUNA NA HATAKUWEPO//\n\nNO HAY QUIEN SE COMPARE CON CRISTO\nNO HAY QUIEN SE COMPARE CON EL\nNO HAY QUIEN SE COMAPRE CON CRISTO\nNO HAY QUIEN SE COMPARE CON JESUS\n\n//HE CAMINADO Y NADA, NADA\nTAMBIEN BUSCADO Y NADA, NADA\nHE DADO VUELTAS, Y NADA, NADA\nNO HAY QUIEN SE COMPARE CON JESUS//\n";
    letras[18] = "Dame una fe sencilla\ncomo risa de niños cuando juegan\ncomo gota de roció que se rueda\ncomo cruz de rústica madera\n\nDame una fe sencilla\nque se siente a la mesa de los pobres\nque se alegre de alegrar sus corazones\ny que llore también con sus dolores\n\nuna fe así parecida a ti….\n\nSencilla como fue a la tierra tu venida\ncomo Fueron tus historias campesinas\ncomo fue tu hogar en palestina\n\nDame una fe sencilla\npara curar con esperanza la tristeza\npara cantar por el perdón en esta guerra\npara avivar el pabilo que humea\nDame una fe sencilla\nque no le da espacio a la mentira\nque no logra acomodarse a la injusticia\ny no calla a lo que sabe que da vidaaa...\n\nuna fe así parecida a ti….\n\nSencilla como fue a la tierra tu venida\ncomo Fueron tus historias campesinas\ncomo fue tu hogar en palestina\nSencilla como tu mirada compasiva\ncomo aquellas aldeas campesinas\ncomo el amor que te llevo...\n\nA dar la vida...\nA dar la vida\nA dar la vida\n";
    letras[19] = "Si alguien pregunta por el día de esperanza\nTú dirás con fe y confianza: todo aquí mejorará\nEl pueblo alegré realizará la historia\nY el Señor de la victoria la cosecha nos dará\n\n¿Y el hambre existirá?... ¡No!\n¿La violencia existirá?... ¡No!\nSi nuestra fuerza se mantiene con porfía\nEl Señor de la armonía quitará nuestro dolor\n\nNos mantenemos con los ojos al futuro\nDespejando el campo oscuro con la fuerza de la unión\nQue venceremos a quien lucha con bajeza\nLo sabemos con certeza plantados en la razón\n\n¿Y el hambre existirá?... ¡No!\n¿La violencia existirá?... ¡No!\nSi nuestra fuerza se mantiene con porfía\nEl Señor de la armonía quitará nuestro dolor\n";
    letras[20] = "La semilla sembrada lleva ya tiempo en su nuevo hogar,\nse le ha procurado lo necesario pa germinar\npero aunque se acerca la temporada de cosechar\nfalta que la vida la vuelva espiga, la vuelva pan.\nLa semilla ama el olor a tierra de la humedad\nconvertirse en fruto y dejar atrás su comodidad\npero que ha de hacerse si fue sembrada con la misión,\n\nde dejar la sombra para exponerse al rayo del sol.\n\nque el agricultor\npueda recoger\ny ver este campo llamado patria reverdecer,\ny que la ilusión con la que sembró,\nse haga realidad en el nacimiento de cada flor\n\nLa semilla sembrada lleva ya tiempo en su nuevo hogar,\nse le ha procurado lo necesario pa germinar\npero aunque se acerca la temporada de cosechar\nfalta que la vida la vuelva espiga, la vuelva pan.\nLa semilla ama el olor a tierra de la humedad\nconvertirse en fruto y dejar atrás su comodidad\npero que ha de hacerse si fue sembrada con la misión,\n\nde dejar la sombra para exponerse al rayo del sol.\n\nque el agricultor\npueda recoger\ny ver este campo llamado patria reverdecer,\ny que la ilusión con la que sembró,\nse haga realidad en el nacimiento de cada flor\nse haga realidad en el nacimiento de cada flor\nse haga realidad en el nacimiento de cada flor\nse haga realidad en el nacimiento de cada flor\n";
    letras[21] = "La ley de Jehová es perfecta\nQue convierte el alma\nEl testimonio de Jehová es fiel\nQue hace sabio al sencillo\n\nDeseables son más que el oro\ny más que mucho oro afinado\nY dulces mas\nQue la miel que destila del panal\n\nLos mandamientos de Jehová son rectos\nQue alegran el corazón\nEl percepto de Jehová es puro\nQue alivia los ojos\n\nDeseables son más que el oro\ny más que mucho oro afinado\nY dulces mas\nQue la miel que destila del panal\n\nEl perdón de Jehová es limpio\nPermanece para siempre\nLos juicios de Jehová son verdad\nTodos justos\n\n///Deseables son más que el oro\ny más que mucho oro afinado\nY dulces mas\nQue la miel que destila del panal///\n";
    letras[22] = "Tu nos has traido hasta aqui\nno nuestras fuerzas ni nuestra bondad\ntu nos has traido hasta aqui\npor eso toda la gloria, y la gratitud,\npor eso todo el honor para Ti.\n\nPues quien sino Tú has sido refugio\ny quien sino Tú calmo nuestra sed\ny quien sino Tú has sido el sustento\ncuando todo faltaba\nSeñor sino Tú que por siempre eres fiel.\n\nTú nos has traido hasta aqui\ntu viento ha soplado con poder y verdad\ny hasta donde bien nos quieras llevar\nque en nosotros hable tu voz y brille tu vida\ny vengan tu justicia y tu paz.\n\nPues quien sino Tú has sido refugio\ny quien sino Tú calmo nuestra sed\ny quien sino Tú has sido el sustento\ncuando todo faltaba\nSeñor sino Tú que por siempre eres fiel.\n\ny quien sino tú que nos dio su palabra\nquien puso sus sueños en el corazon\nquien edificó con sus manos la casa\ny planto las semillas\nseñor sino tu traspasado de amor\nquien edifico con sus manos la casa\ny planto la semilla\nseñor sino tu traspasado de amor.\n";
    letras[23] = "Todo empezó un día\nal iniciar la universidad\ncuando James supo\nde un compañero en necesidad\nY aunque en su casa\ncasi no había nada\nle dijo que andara\na ver qué pasaba\n\nLa mamá de James\nlo esperaba para almorzar\naquel día había\naún más poco que lo normal\nTremenda sorpresa\nal abrir la puerta\ny ver a su hijo\ncon visita hambrienta\n\n(CORO)\nSigan al sancocho\nentren a la fiesta\ny que los abrigue\nel fogón de leña\nSigan que a la mesa\nla bendice Dios\ny si hay para uno\nhabrá para dos\n\nAl día siguiente\nvolvió la madre a cocinar\ny James de nuevo\nregresó a la universidad\nY al salir de clase\nvio que tenían hambre\ncuatro melenudos que estudiaban artes\n\nLA mamá contenta\nporque ese día correspondía\nun poco de carne\nque era un lujo en su economía\ncorrió cuando James\nLA llamó A LA puerta\ny al abrir quedó de una sola pieza\n\n(CORO)\nSigan al sancocho\nentren a la fiesta\ny que los abrigue\nel fogón de leña\nSigan que a la mesa\nDios la hará crecer\ny si hay para uno\nhabrá para seis\n\nHan pasado años\nya casi James se va a graduar\nmedia u lo espera\nparada frente a la facultad\ntodo el mundo sabe\nque el que tenga hambre\nlas puertas abiertas tiene donde James\n\nLA pobre mamá\nes la más feliz con la situación\ny todos los días\nansiosa espera aquel batallón\nprepara la olla\nse agarra la moña\ny al pelar cebolla de alegría llora...\n\n(CORO)\nSigan al sancocho\nentren a la fiesta\ny que los abrigue\nel fogón de leña\nSigan que el Señor\nhoy va a multiplicar\ny si hay para uno\npara cien habrá\n\nSigan al sancocho\nque la Biblia dice\nque aquella comida\nes Cristo mismo quien la recibe\nQue por dar su amor\nnos reconocerían\nque al servir al otro\nDios sonreiría\nQue nos ha salvado\ny ya no podemos ser egoístas\nEh Eh Eh Eh\nEh Eh Eh Eh\n";
    letras[24] = "Desde las cimas andinas,\nColoreadas por el sol\nDesde estas montañas frías,\nDonde crece el frailejón.\n\nDesde las selvas lluviosas,\nLlenas de sabia y verdor,\nDesde las costas ruidosas,\nSe oye rugir una voz.\nSe oye rugir una voz.\n\nPorque donde hubo pecado,\nSobreabundó tu bondad\nDonde vivía la muerte,\nTu vida nos llena más.\nPorque cuando no había nada,\nTu gracia nos cobijó\nY hoy tenemos esperanza,\nporque tu amor nos salvó.\n\nDesde los llanos que escapan,\nQueriendo el cielo besar,\nDesde los ríos que sueñan,\nCon ver algún día el mar.\n\ndesde nuestras capitales,\nCon tu lucha por el pan,\nEn medio de nuestros pesares\n//viene tu pueblo a alabar//\n";

  }

  void runAutores(){
     autores[0]= "Viene tu pueblo a alabar";
     autores[1]= "El himno de la liberación";
     autores[2]= "Busca la paz de tu Dios";
     autores[3]= "No por honra";
     autores[4]= "Danza mi país";
     autores[5]= "Para el Señor canta toda la tierra";
     autores[6]= "Yo soy un militante";
     autores[7]= "Canto de los líderes";
     autores[8]= "La unidad";
     autores[9]= "Isaías 33:14-16";
     autores[10]= "Tenemos esperanza";
     autores[11]= "Ayúdame a mirar con tus ojos";
     autores[12]= "Señor cuando tú me llames";
     autores[13]= "Escudriñemos nuestros caminos";
     autores[14]= "Debemos decir y hacer la verdad";
     autores[15]= "Piedras vivas";
     autores[16]= "Salmo 8";
     autores[17]= "HAKUNA MUNGU KAMA WEWE";
     autores[18]= "Sencilla ";
     autores[19]= "Xote da victoria";
     autores[20]= "La semilla ";
     autores[21]= "Salmo 19 ";
     autores[22]= "Quién sino tú ";
     autores[23]= "El sancocho";
     autores[24]= "Con alegría";
   }

   void LinksDrive(){
     drive[0]= '-';
     drive[1]= 'https://drive.google.com/open?id=1GBI_g8MRI-T9VxAa4N8ktwwo8SGI64Zt';
     drive[2]= 'https://drive.google.com/open?id=1LDYAOFF5An8Y02swILxNYCDFga3aiyHR';
     drive[3]= 'https://drive.google.com/open?id=1Rhpwuw6YWVGMZFA4ksocOSpUJS4T4sys';
     drive[4]= 'https://drive.google.com/open?id=1vX_kk_Xi3BGzM6kNanfiOLgxxQH-m9at';
     drive[5]= '-';
     drive[6]= 'https://drive.google.com/open?id=1eaZy-rIi_U2cXKT1ndNv6EY-6IeOuD8A';
     drive[7]= 'https://drive.google.com/open?id=1usXK_etkyBKGLDrJlXjrmoP4axjCaDlM';
     drive[8]= 'https://drive.google.com/open?id=1KIMnz_pOQ41ZLeN_PRIezuJ67VTEvX2O';
     drive[9]= 'https://drive.google.com/open?id=1fiyzhdPCvQ6QopEIF0k2AQR_T-GD9yat';
     drive[10]= 'https://drive.google.com/open?id=1SChUWEl1AFMPqUlwQUCZDFuJMC1y-wkL';
     drive[11]= 'https://drive.google.com/open?id=1rtgX64VzC-neNDssmDyPQ3CHh4-fkISs';
     drive[12]= 'https://drive.google.com/open?id=17Pij07ZQRzJhblOc75Y8l1P8vL20Lbvu';
     drive[13]= 'https://drive.google.com/open?id=1JrPIwzp3Ssmq2Z_qGwN2SzOrGcYFUK2N';
     drive[14]= 'https://drive.google.com/open?id=1lA9UC8x7zYnvJNMsPsDTp3pMzNBq_T3G';
     drive[15]= '-';
     drive[16]= 'https://drive.google.com/open?id=1YgvelAz8siQfb4eTXsI1w4O1U8-Z_OSY';
     drive[17]= 'https://drive.google.com/open?id=1Q1dZbbgXivLdu1wbtZPjqvEga5UnwwW6';
     drive[18]= 'https://drive.google.com/open?id=1RBcOaY3PMzAhU_URIknc9Q6UVp_7I5nr';
     drive[19]= '-';
     drive[20]= '-';
     drive[21]= 'https://drive.google.com/open?id=1DRWlr99L8Sjpn3ac2ZHNXaPF6M6Hd0BC';
     drive[22]= 'https://drive.google.com/open?id=1Xvo3wAheNq9rAyFbtgQuI8yFjCap36Wj';
     drive[23]= 'https://drive.google.com/open?id=1XueO49mSLphYa6FvOT3jj40NmPS1DS0S';
     drive[24]= '-';
   }
  String getnombre(int i){
    runNombres();
    return nombres[i];
  }
   String getletras(int i){
     runLetras();
     return letras[i];
   }
   String getacordes(int i, int tono){
     runAcordes(tono);
     return acordes[i];
   }
   String getAutores(int i){
     runAutores();
     return autores[i];
   }

   String getLinksDrive(int i){
     LinksDrive();
     return drive[i];
   }

   List getnombreList(){
     runNombres();
      return nombres;
   }
   int getnombreListancho(){
     runNombres();
     return nombres.length;
   }

   String convert(int not) {
     switch(not) {

       case 1: {
         return "Do";
       }
       break;
       case 2: {
         return "Do#";
       }
       break;
       case 3: {
         return "Re";
       }
       break;
       case 4: {
         return "Re#";
       }
       break;
       case 5: {
         return "Mi";
       }
       break;
       case 6: {
         return "Fa";
       }
       break;
       case 7: {
         return "Fa#";
       }
       break;
       case 8: {
         return "Sol";
       }
       break;
       case 9: {
         return "Sol#";
       }
       break;
       case 10: {
         return "La";
       }
       break;
       case 11: {
         return "La#";
       }
       break;
       case 12: {
         return "Si";
       }
       break;
       case 13: {
         return "Do";
       }
       break;
       case 14: {
         return "Do#";
       }
       break;
       case 15: {
         return "Re";
       }
       break;
       case 16: {
         return "Re#";
       }
       break;
       case 17: {
         return "Mi";
       }
       break;
       case 18: {
         return "Fa";
       }
       break;
       case 19: {
         return "Fa#";
       }
       break;
       case 20: {
         return "Sol";
       }
       break;
       case 21: {
         return "Sol#";
       }
       break;
       case 22: {
         return "La";
       }
       break;
       case 23: {
         return "La#";
       }
       break;
       case 24: {
         return "Si";
       }
       break;

       default: {
         return ":/";
       }
       break;
     }
   }

}