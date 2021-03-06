%:-discontigous(singliton).
:-set_prolog_flag(singleton,off).
:-style_check(-singleton).
ጀምር:- display_welcome, introduction.
display_welcome:-nl,
  write('###############################################################################'),nl,
 write('እቲ ማእኸል ንህፃናት ብሕፅረት ወይ ድማ ብዘይተመጣጠነ ምግቢ ዝነቅሉ ሕማምት መመርምርን መሕከም ስርዓት እዩ።'),nl,nl,
   write(' ኣዳዳላውን ኣማዕባሊ እዚ ስርዓት << ብርሃኑ ሃይሉ ሰይፉ ጉንበት 2013 ዓ/ም/ግ እዩ >>'),nl,
  write(' እንኳዕ ናብ ማእኸል መመርመሪ መከላኸሊን ስርዓት ብሰላም መፁ'),nl,
  write('###############################################################################'),nl.
introduction:-
 ensure_loaded('F:/storetigrgna.pl'),nl,write('ሽም ይፀሓፉ/ፋ:'),read(Name),answer1(Name),hypothesis(Disease),write('ውፅኢቲ እቲ ምርመራ==: '),
write(Disease),assertz(disease(Name,Disease)), write('  የመላኽት ==።'),
 tell('F:/storetigrgna.pl'),write(':-dynamic(disease/2).'),nl,listing(disease),told,nl,(Disease=='ተምላስ'->describe_temlas(Name,Disease);Disease=='ክዋሽኮርኮር'->describe_kwushkorkorwindow1(Name,Disease);Disease=='ማራስመስ'->describe_marsurmus(Name,Disease);Disease=='ኣይተፈለጠን'->end),nl.
end:-write('እንደገና ደጊሞም ይመርመሩ！'),break.
answer1(Name) :-disease(Name,Type),nl,
 write(Name),((Type=='ክዋሽኮርኮር',write(', "ኣብ ዝሓለፈ ውፂእት ምርመራ ክዋሽኮርኮር ሕዙ/ኪ ካ ነይሩ"'),retract(disease(Name,Type)),windowExtraKwashkorko,nl,display2);
 (Type=='ማራስመስ',write(', "ኣብ ዝሓለፈ ውፂእት ምርመራ ማራስመስ ሕዙካ/ኪ  ነይሩ"'),retract(disease(Name,Type)),nl,windowExtraMarsurmus,display2);
(Type=='ተምላስ',write(', "ኣብ ዝሓለፈ ውፂእት ምርመራ ተምላስ ሕዙካ/ኪ  ነይሩ"'),retract(disease(Name,Type)),nl,windowExtradihrea,display2);
(Type=='ኣይተፈለጠን',write(', "ኣብ ዝሓለፈ ምርመራ ውፅኢትካ ኣይተፈልጠን ነይሩ"'),retract(disease(Name,Type)),nl,display2)).
answer1(Name):-
 nl,write('ሰላም,'),write(Name),write(' ስናይ ፃንሒት ክኮነልካ/ኪ ይምነ!.'),nl,display2.
sdate :-
    write('ዕለት የእትው ብመልክዕ （ዓ/ም-ወርሒ-ማዕልቲ）.`:'),nl,
     write('ንኣብነት （2001-4-2） 2001 ዓ/ም፣ ወርሒ 4（ታሕሳስ）፣ማዕልቲ 2.`:'),nl,
     read(YYYY-MM-DD),
      date_time_stamp(date(YYYY,MM,DD,0,0,0,_,_,_),Stamp),
    stamp_date_time(Stamp,D,local),
    date_time_value(date,D,DV),
    format('ምርመራ ዝጀመሩሉ/ ዕለት:~w', [DV]),nl,nl.

display2:-nl,
 write('ምርመራ ክገብሩ ይደልዩ ዶ?(እወ/ኣይፋል): '),
 read(Answer2), assert(Answer2), Answer2=='እወ',nl,
  write('###########################################################################'),nl,
 write('በይዘኦም ነዞም ዝስዕቡ ሕቶታት ንምምላስ （እወ.） ወይ （ኣይፋል.） ብምባል ጥራሕ ብቐሊሉ ይጠቐሙ'),nl,nl,
 write('እንድሕር እቶም ሕቶታት ግልፂ ዘይኮይኖም （እንታይ.）ን （ንምንታይ.） ብምባል ብቐልሉ ክግለፀሎም/ን እዩ።)'),nl,nl,
 write('###########################################################################'),nl,nl,sdate,nl.

go :-
write('ይቅሬ እቲ ሕማም ብዕሊ ክስለዘይተኸኣለ'),nl.
/*Answer2:-
    write(' እዞም ዝስዕቡ ሕቶታት ብዝግባእ
    ይመልሱ?'),nl,write('******************************************'),nl.*/
%hypothesis diseases
hypothesis(ማራስመስ) :-ማራስመስ.
hypothesis(ተምላስ) :-ተምላስ.
hypothesis(ክዋሽኮርኮር) :-ክዋሽኮርኮር.
hypothesis(ኣይተፈለጠን):-go.
%describe the symptom of the diseases
ክዋሽኮርኮር:-
    verify(ምድቃቕ_ኣዕፅምቲ_ኣእዳው),
    verify(ምንፋሕ_ኸብዲ),
    verify(ድኽዳኸ),
    verify(ድኻም),
    verify(ሕርቃን),
    verify(ነውሕ_ቓንዛ),
    verify(ቀይሕ_ዝተቆፈፈ_ቆርበት),
    verify(ደረቕ_ዝቆራረፅ_ሕብሩ_ዝቕይር_ፀጉሪ),
    verify(ታህክት),
    verify(ቶሎ_ዘይሓውይ_ቁስሊ),
    verify(ሕበጥ),
    verify(ሕማም_ቆርበት),
    verify(ድርቐት),
    verify(ምቕናስ_ሽውሃት_ምግቢ).

ማራስመስ:-
    verify(ምፍዘዝ),
    verify(ምቕናስ_ክብደት),
    verify(ድርቐት ),
    verify(ምቕናስ_ጉልበት),
    verify(ዝሕቱል_ከይዲ_ዕብየት),
    verify(ሱር_ዝሰደደ_ተቕማጥ),
    verify(ምጥልቃዕ_ኸብዲ),
    verify(ቃንዛ_መተፈሲ_ኣካላት),
    verify(ጎኒ_ዓፅሚ_ጎልሁ_ምርኣይ),
    verify(ምሽምራር_ቆርበት_ሰውነት),
    verify(ታህክት),
    verify(ተደጋጋሚ_ተምላስ),
    verify(ደም_ዝሓዘ_ሰገራ),
    verify(ዝኣረገ_ገፅ_ምስሊ).

ተምላስ:-
    verify(ተመላላሲ_ቁልቁለት),
    verify(ንቁልቁል_ቀጢን_ስጋራ),
    verify(ቁርጸት_ከብዲ),
    verify(ረስኒ),
    verify(ምፍሳስ_ደም),
    verify(ሕማም_ርእሲ),
    verify(ድርቀት),
    verify(ሕማም_ከብዲ).

%function that can explain the reason
reason(ምድቃቕ_ኣዕፅምቲ_ኣእዳው):-
write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።'),nl.
reason(ምንፋሕ_ኸብዲ):-write('').
reason(ድኽዳኸ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ድኻም):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕርቃን):-write('ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ነውሕ_ቓንዛ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ቀይሕ_ዝተቆፈፈ_ቆርበት):-write('ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ደረቕ_ዝቆራረፅ_ሕብሩ_ዝቕይር_ፀጉሪ):-write('ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ታህክት):-write('ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ቶሎ_ዘይሓውይ_ቁስሊ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕበጥ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕማም_ቆርበት):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ድርቐት):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ምቕናስ_ሽውሃት_ምግቢ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሰዓል):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ጸገም_ምንትንፋስ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ምውሳኽ_ውቅዕት_ልቢ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ልዑል_መጠን_ረስኒ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ምንቅጥቃጥ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ረሃጽ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሽውሃት_ምግቢ_ምንካይ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕማም_ኣፍልቢ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ቅሩብ_ህምፕትስስ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕማም_ርእሲ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕጽረት_ምንትፋስ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕማም_ጭዋዳ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ተመላላሲ_ቁልቁለት):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ንቁልቁል_ቀጢን_ስጋራ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ቁርጸት_ከብዲ):-write('ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ረስኒ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ምፍሳስ_ደም):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕማም_ርእሲ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ድርቀት):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
reason(ሕማም_ከብዲ):-write(' ምኽንያቱንምርመራ ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ስለዝኽእል ኣገዳሲ ስለዝኾነ እዩ።').
ask(Question) :-
write('እቲ ህፃን '),
write(Question),
write('  ኣለዎ/ይረኧዮ ዶ'),
write('(እንታይ/እወ/ኣይፋል)? '),
read(Response),
nl,
( (Response == እወ ; Response == y)->assert(እወ(Question));
(Response == እንታይ)->assert(እንታይ(Question)),(Question=='ምድቃቕ_ኣዕፅምቲ_ኣእዳው'->headache;Question=='ምንፋሕ_ኸብዲ'->tummy;Question=='ድኽዳኸ'->growth;Question=='ድኻም'->tiredness;Question=='ሕርቃን'->irritability;Question=='ነውሕ_ቓንዛ'->longlasting;Question=='ቀይሕ_ዝተቆፈፈ_ቆርበት'->inflamed;Question=='ደረቕ_ዝቆራረፅ_ሕብሩ_ዝቕይር_ፀጉሪ'->hair;Question=='ታህክት'->lethargy;Question=='ቶሎ_ዘይሓውይ_ቁስሊ'->healing;Question=='ሕበጥ'->swelling;Question=='ሕማም_ቆርበት'->dermatosis;Question=='ድርቐት'->appetite;Question=='ምቕናስ_ሽውሃት_ምግቢ'->losappetite;

                                           Question=='ምፍዘዝ'->dizziness; Question=='ምቕናስ_ክብደት'->weighloss;Question=='ድርቐት'->dehydration;Question=='ምቕናስ_ጉልበት'->lackenergy;Question=='ዝሕቱል_ከይዲ_ዕብየት'->stuntegrowth;Question=='ሱር_ዝሰደደ_ተቕማጥ'->chronidiarrhoea;Question=='ምጥልቃዕ_ኸብዲ'->shrinkagstomach;Question=='ቃንዛ_መተፈሲ_ኣካላት'->respiratoryin;Question=='ጎኒ_ዓፅሚ_ጎልሁ_ምርኣይ'->prominencribs;Question=='ምሽምራር_ቆርበት_ሰውነት'->skinfolds;Question=='ታህክት'->lethargy;Question=='ተደጋጋሚ_ተምላስ'->persistenvomiting;Question=='ደም_ዝሓዘ_ሰገራ'->instools;Question=='ዝኣረገ_ገፅ_ምስሊ'->oldface;
                                           Question=='ተመላላሲ_ቁልቁለት'->watery;Question=='ንቁልቁል_ቀጢን_ስጋራ'->watery;Question=='ቁርጸት_ከብዲ'->abdominal;Question=='ረስኒ'->higtemperature;Question=='ምፍሳስ_ደም'->bleeding;Question=='ሕማም_ርእሲ'->headedness;Question=='ድርቀት'->appetite;Question=='ሕማም_ከብዲ'->cramps),
write("ስለዚ፣ እቲ ህፃን "),write(Question),write("?(ንምንታይ/እወ/ኣይፋል)"),read(Reson),Reson=='ንምንታይ'->reason(ምድቃቕ_ኣዕፅምቲ_ኣእዳው),write("ስለዚ፣   እቲ ሕሙም ህፃን "),write(Question),write("?(እወ/ኣይፋል)"),read(Reply),((Reply == 'እወ')->assert(እወ(Question));assert(ኣይፋል(Question)), fail)).
  /*
(Response == what)->assert(what(Question)),  Question=='ለዘብዘብ'->cough,            write("So,Does the patient have "),write(Question),write("?(ንምንታይ/እወ/ኣይፋል)"),read(Rr1),Rr1=='why'->reason(ለዘብዘብ),write("ስለዚ፣ እቲ ህፃን "),write(Question),write("?(yes/ኣይፋል)"),read(Reply),((Reply == እወ)->assert(እወ(Question));assert(ኣይፋል(Question)), fail))).
*/

:- dynamic እወ/1,እንታይ/1,ንምንታይ/1,ኣይፋል/1.
/*How to verify something */
verify(S) :-
(እወ(S)->true ;
(እንታይ(S)->true;
(ንምንታይ(S)->true;
(ኣይፋል(S)->fail ;
ask(S))))).
/* undo all yes/no assertions*/
undo :- retract(እወ(_)),fail.
undo :- retract(እንታይ(_)),fail.
undo :- retract(ንምንታይ(_)),fail.
undo :- retract(ኣይፋል(_)),fail.
undo.
headache:-write('ናይቲ ህፃን ከይዲ ብርኪ ዕብየት ብኣግባቡ ንምርዳእን ነቲ ሐዚ ዘሎ ሕማም ንሚንፃርን ክጠቅም ኣብ ኣእዳው ናይ ምድቃቕ ወይ ድማ ዝሕቱል ዕበየት ይርየኧዮ ዶ ንማለት እዩ። '),nl.
tummy :-write('ህፃናት ከብዶም ናይ ምንፋሕ ምልክት ዘርእዮ እተኾኖም ንሕማም ክዋሽኮርኮር ናይ ምቅለዖም መርኣያ ክኾን ስለዝኸል ንምፃር ዝኣክል እዩ።'),nl.
growth :-write('ብርኪ ዕብየት ቁመት እቲ ህፃን ሓፅር ዶ ይኾን ኣሎ ንምባል ተደልዩ  እዩ።'),nl.
tiredness :-write('እቲ ህፃን ናይ ምሽልቻውን ድኽመት ሰብወት ይረኣዮ ዶ ንምባል ተደልዩ እዩ።'),nl.
irritability :-write('እቲ ህፃን ኣወፅወፅ ወይ ድማ ኣነጭነጭ ናይ ምባል ባህሪ ዶ ኣሎዎ ንምባል እዩ።'),nl.
longlasting :-write('እቲ ህፃን ተኸታታሊ ናይ ነዊሕ ዝበለ ሰዓታት ቃንዛ ዶ ይስመዖ ንምባል ተደልዩ እዩ። '),nl.
inflamed :-write('ናይቲ ህፃን ቆርበት ሰውነቱ ዝተቆርፈፈን ሕብሩ ናብ ምቕሕቕ ባህሪ ዶ የርኢ ንምባል ተደልዩ እዩ። '),nl.
hair :-write('ናይቲ ህፃን ፀጉሪ ርእሱ ደረቕ ዝተቆራረፀን ሕብሩ ናይ ምቕያር ባህሪ ዶ የርኢ ኣሎ ንምባል ተደልዩ እዩ።'),nl.
lethargy:-write('እቲ ህፃን ናይ ምንቅስቓስ ድሌቱ እናተሓተ ዶ ይኸይድ ኣሎ ንምባል እዩ። '),nl.
healing :-write('ተመላላሲ ቁስሊ ኣብ ሙሉእ ሰውነቱ ይረኧዮ ዶ ንምባል ተደልዩ እዩ። '),nl.
swelling:-write('እቲ ህፃን ሰብነቱ ናይ ምሕባጥ ባህሪ ኣለዎ ዶ ንምባል ተደልዩ እዩ።'),nl.
dermatosis:-write('እቲ ህፃን ቆርበት የሕምሞን ፀላዕላዕ የብሎን ዶ ይህሉ ልማለት ተደልዩ እዩ። '),nl.
appetite :-write('እቲ ህፃን ሕማም ምድራቕን ማለት እውን ከብድ ቁርፀትን ማይ ውሓድን ዶ ይስመዖ ኣሎ ንምባል እዩ። '),nl.
oldface:-write('እቲ ህፃን ገፅ ናይ ዓበይትን ምልባት እውን ብጣዕሚ ዝኣረገ ዶ ይመእል ንምባል ተድልዩ እዩ። '),nl.
instools:-write('እቲ ህፃን ኣብዚ ዝኾነ ፈሳሲ ደም ዝመስል ወይ ንፋጥ ዝመስል ዶ ይረየኦዮ ንምባል ተደልዩ እዩ። '),nl.
persistenvomiting:-write('እቲ ህፃን ተመላላሲ ንዓቐብ  ዶ የብሎ ንምባል ተደልዩ እዩ። '),nl.
skinfolds:-write('ናይቲ ህፃን ሰብነቱ ወይ ቆርበቱ ምጭምዳድ ምልክታት ዶ ኣለዎ ንምባል ተደልዩ እዩ። '),nl.
prominencribs:-write('ናይቲ ህፃን ጉኒ ዓፅሚ ጎሊሁ ይረኧ ዶ ማለት ሓምቑ ዶ ንምባል ተደልዩ እዩ። '),nl.
respiratoryin :-write('እቲ ህፃን ኣብ ጎሮሮኡ/ኣ፣ወይ ኣብ ካልኦት ናይ መንተሰፊ ቃንዛ ይስመዖ ዶ ኣሎ ንማለት ተደልዩ እዩ '),nl.
shrinkagstomach :-write('ናይቲ ህፃን ኸብዲ ናይ ምጥልቃዕ ወይ ምቅጣን ምልክት ዶ ኣለዎ ንማለት ተደልዩ እዩ '),nl.
chronidiarrhoea:-write(' እቲ ህፃን ብተደጋጋሚ ንቑልቑል ዶ የብሎ ንምባል ተደልዩ እዩ'),nl.
losappetite :-write('እቲ ህፃን ምግኒ ናይ ምብላዕ ድሌቱ እናነከየ ድዩ ንምባል ተደልዩ እዩ። '),nl.
stuntegrowth:-write('ናይቲ ህፃን ከይዲ ዕብየት ትሑት ድዩ ንምባል ተድልዩ ድዩ '),nl.
lackenergy:-write('ናይቲ ህፃን ሓይሊን ወይ ጉልበት ናይ ምንቅስቓስ ንምባል ተደልዩ እዩ  '),nl.
higtemperature :-write('ናይቲ ህፃን መጠን ሙቐት ሰውነቱ ካብቲ ንቡር ንላዕሊ ዶ ይሞቕ ንምባል ተደልዩ እዩ። '),nl.
dehydration:-write('እቲ ህፃን ሕማም ምድራቕን ማለት እውን ከብድ ቁርፀትን ማይ ውሓድን ዶ ይስመዖ ኣሎ ንምባል እዩ። '),nl.
weighloss:-write('እቲ ህፃን መጠን ክብደቱ ናይ ምንካይ ምልክታት ይረኧዮ ዶ ኣሎ ንምባል ተደልዩ እዩ '),nl.
dizziness:-write(' መጠን ምንቅስቓስን ንቕሓትን እቲ ህፃን ካብ ዝተለመደ ወፃኢ ትሑት መንፈስ ዶ ይረኧዮሎ ንምባል እዩ።'),nl.
abdominal:-write('እቲ ህፃን ከብዱ ናይ ቀርፀት ቃንዛ ይሰመዖሎ ዶ ንምባል ተደልዩ እዩ። '),nl.
headedness:-write('እቲ ህፃን ኣብ ርእሱ ናይ ቃንዛ ወይ እውልውል ዝብል ምልክት ይስመዖ ዶ ንምባል ተደልዩ እዩ። '),nl.
bleeding :-write('እቲ ህፃን ብዝኾነ ይኹን ኣካላቱ ደም ናይ ምፍሳስ ምልክት ይረኧዮ ዶ ንምባል ተደልዩ እዩ። '),nl.
cramps:-write('እቲ ህፃን ናይ ከብዲ ሕማም ወይ ምጭባጥ ምልክታት ይረኧይዎ ዶ ንምባል ተደልዮ እዩ። '),nl.
watery:-write('እቲ ህፃን ተደጋጋሚ ስጋራ ወይ ፍታን ይረኧዮ ዶ ንምባል ተደልዩ እዩ። '),nl.

describe_temlas(_Name,Disease):-
 write('#########################################################################'),
 nl,nl, write(' ፅሬት እቲ ህፃን ብኣግባቡ ክተሓዝ ይግባእ። ዝተበከለ ማይ ከይሕፀቡን ከይሰትዩን ብውሕሉል መንገዲ ክተሓዙን ክዓብዩን ይግባእ።'),nl,
write('#########################################################################'),nl,window1(_Name,Disease).
describe_marsurmus(_Name,Disease):-
write('#########################################################################'),
nl, nl, write('ማራስማስ ናይ ዝለዓለ ምግብ ህፅረት ዝኽሰት ሕማም እዩ። ኸብድ ሕፅረት ዝተመጣጠነ ኣብዘለዎ ኣብ ማንም ሰብ ከጥቅዕ ዝኽእል እዩ። '),nl,
 write('  እንተኾነ ግና መብዛሕትኡ
ግዘ ኣብ ህፃናት ዝረኧ ሕማም እዩ። ማራስመስ ንህወት ሓደጋ ዘቃልዕ እኳ እንተኾነ መድሓንት ግን ዘለዎ ሕማም እዩ'),nl,
write('#########################################################################'),
window1(_Name,Disease).
describe_kwushkorkorwindow1(_Name,Disease):-
 write('#########################################################################'),
 nl, nl,   write('ክዋሽኮርኮር ብናይ ፕሮትን ሕፅረት ምኽንያት ዝለዓል ሓንድበታዊ ሕፅረት ምግቢ '),nl,
           write('ዝኽሰት ሕማም እዩ። ሓደ ህፃን እኹል   ከይወሰደ ክተርፍ ከሎ ዝኽሰት ከብድ ሕማም እዩ።'),nl,
           write(' ከብድ ናይ ፕሮትን ሕፅረት ድማ ፈሳሲ ክፀንሕ ይገብር እሞ ከብዲ የሕብጥ።'),nl,
write('#########################################################################'),nl,window1(_Name,Disease).
windowExtraKwashkorko:-
 nl,write('=========================================== '),
  nl,write(' ናይ ዝሓለፈ ምርመራኻ ዝርዝር ሓበሬታ ድዮም/ን ዝድልዩ （እወ/ኣይፋል）？'),
 read(AnsExtra), assert(answer(AnsExtra)),
((AnsExtra=='እወ',
highLevelKwa));(AnsExtra=='ኣይፋል',display2).
highLevelKwa:-
write('=============ኣብ ዝሓለፈ እዋን ወፅኢት ምርመራን================'),
 nl,write('       ዓይነት ሕማም: ክዋሽኮርኮር '),nl,
 write('          ዝርዝር ምልክታት ክዋሽኮር  '),nl,
 write('ምድቃቕ_ኣዕፅምቲ_ኣእዳው፣ ምንፋሕ_ኸብዲ፣ድኽዳኸ፣ድኻም ሕርቃን፣'),nl,
 write('ነውሕ_ቓንዛ፣ቀይሕ_ዝተቆፈፈ_ቆርበት፣ደረቕ_ዝቆራረፅ_ሕብሩ_ዝቕይር_ፀጉሪ፣'),nl,
 write('ታህክት፣ቶሎ_ዘይሓውይ_ቁስሊ፣ሕበጥ፣ሕማም_ቆርበት፣ድርቐት፣ምቕናስ_ሽውሃት_ምግ'),nl,
 write('=============================================='),nl,
 write('=============ዝተኣዘዘሎም/ን ዝርዝር መድሓኒታት================'),nl,
 write('ኣዚትሮምይስን/azithromycin, ክላርትሮምስን/ clarithromycin እዮም።'),nl,
 write('=============================================='),
 nl,assurelt(_Name).
windowExtraMarsurmus:-
 nl,write('=========================================== '),
  nl,write(' ናይ ዝሓለፈ ምርመራኻ ዝርዝር ሓበሬታ ድዮም/ን ዝድልዩ （እወ/ኣይፋል）？'),
 read(AnsExtr), assert(answer(AnsExtr)),
((AnsExtr=='እወ',
highLeveMarsurmus));(AnsExtr=='ኣይፋል',display2).
highLeveMarsurmus:-
write('=============ኣብ ዝሓለፈ እዋን ወፅኢት ምርመራን================'),
 nl,write('       ዓይነት ሕማም ማራስመስ '),nl,
 write('          ዝርዝር ምልክታ ማራስመስ  '),nl,
 write('   ታህክት፣ተደጋጋሚ_ተምላስ፣ደም_ዝሓዘ_ሰገራ፣ዝኣረገ_ገፅ_ምስሊ'),nl,
 write('ምጥልቃዕ_ኸብዲ፣ቃንዛ_መተፈሲ_ኣካላት፣ጎኒ_ዓፅሚ_ጎልሁ_ምርኣይ፣ምሽምራር_ቆርበት_ሰውነት፣'),nl,
 write('ምፍዘዝ፣ምቕናስ_ክብደት፣ድርቐት፣ምቕናስ_ጉልበት፣ዝሕቱል_ከይዲ_ዕብየት፣ሱር_ዝሰደደ_ተቕማጥ'),nl,
 write('=============================================='),nl,
 write('=============ዝተኣዘዘሎም/ን ዝርዝር መድሓኒታት================'),nl,
 write('ኣዚትሮምይስን/azithromycin, ክላርትሮምስን/ clarithromycin እዮም።'),nl,
 write('=============================================='),
 nl,assurelt(_Name).
windowExtradihrea:-
 nl,write('=========================================== '),
  nl,write(' ናይ ዝሓለፈ ምርመራኻ ዝርዝር ሓበሬታ ድዮም/ን ዝድልዩ （እወ/ኣይፋል）？'),
 read(AnsExt), assert(answer(AnsExt)),
((AnsExt=='እወ',
highLevedihrea));(AnsExt=='ኣይፋል',display2).
highLevedihrea:-
write('=============ኣብ ዝሓለፈ እዋን ወፅኢት ምርመራን================'),
 nl,write('       ዓይነት ሕማም： ተምላስ   '),nl,
 write('          ዝርዝር ምልታት ተምላስ  '),nl,
 write('   ሕማም_ርእሲ፣ድርቀት፣ሕማም_ከብዲ'),nl,
 write('ንቁልቁል_ቀጢን_ስጋራ፣ረስኒ፣ቁርጸት_ከብዲ፣ምፍሳስ_ደም'),nl,
 write('=============================================='),nl,
 write('=============ዝተኣዘዘሎም/ን ዝርዝር መድሓኒታት================'),nl,
 write('ኦርስ/ ኦራል ሪሃይድሬሽን ሶሉሹን, ክላርሽኳርን ጨውን ብንፁህ ማይ በፅብፅኻ ንክሰቲይ እዮም።'),nl,
 write('=============================================='),
 nl,assurelt(_Name).

window1(_Name,Disease):-
 nl,
 write('መድሓንት ንምእዛዝን ምኽሪ ንምቕባልን ዶ ይደልዩ? (እወ/ኣይፋል): '),
 read(Answer3), assert(answer(Answer3)),
((Answer3=='እወ',
treatmentFunc(_Name,Disease));(Answer3=='no',assurelt(_Name))).
treatmentFunc(_Name,Disease):-
 ((Disease=='ማራስመስ',nl,
 write('------------------------ክምገብዎም ዝግበኡ ምግብታት----------------------------------'),nl,nl,
 write('ሓይሊ ወሃብቲ ምግብታት: '),write('ሕምባሻ፣ ሩዝ፣ መዓር፣ ገዓት፣ሙቕ'),nl,nl,write('ናይ ራሕሲ ምግብታት: '),
 write('ዓተር፣ሽምብራ፣ኣዶጉራ፣ሰልጥ፣ኣቮካዶን ተመሳሰልትን ...'),nl,nl,write('ልቢ ይበሉ፡ እዞም ኣብ ላዕሊ ዝተጠቐሱ ምግብታት ብቐሊሉ ሕማም ናይ ምክልኻል ዓቕሚ ኣለዎም።'),nl,nl,
 write('------------------------ክወስዶ / ትወስዶ ዝግበኡ መድሓኒታት------------------------'),nl,nl,write('ናይ መራስመስ ናይ መጀመርያ ሕክምና ብዙሕ ግዘ ሕሉጭ ፀብ ብሙውቕ ማይ ብምሕዋስ ምስታይ እዩ። ካብዚ ብተወሳኺ '),nl,nl,
write(' ናይ ኣትኽልቲ ዘይቲ ከካትት ይኸእል ከም ሰሊጥ፣ሽኮርን ካልኦትን ፀባ ፕሮትን እንትውስኽ ዘይቱ ድማ ዝተሓዋወሰ ናይ ሓቢ ሓይሊ ይውስኽ ...'),nl,nl,
 write('------------------------ምቅንስቓስ----------------------------------'),nl,nl,
 write('እቲ ዝወሃቡ/ባ ምግቢን መድሓንት ምስ ወሰደ ቅሩብ ኣካላዊ ምቅስቓስ ንክገብር ምሕጋዝ።'),nl,nl,
 write('------------------------===============------------------------'),nl),window2(_Name); %,foodsToAvoid(Name,Answer3))
 (Disease=='ክዋሽኮርኮር',nl,nl,
 write('------------------------ክዝውተሩ ዝግበኦም ምግብታት------------------------'),nl,nl,
 write('       ዓሳ፣እንቋቕሖ፣ስጋ፣ዓተር፣ሽምብራ፣ፈረ_ምረ፣ጥረ_ምረ ወሰንቲ ዓይነት ምግብታት እዮም'),nl,nl,
 write('------------------------ዝተኣዘዘሎም/ን ዝርዝር መድሓኒታት------------------------'),nl,nl,
 write('ኣዚትሮምይስ/azithromycin, ክላርትሮምስን/ clarithromycin እዮም'),nl,nl,
 write('------------------------መምረሒ ኣወሳስዳ መድሓንት------------------------'),nl,nl,
 write('ኣዚትሮምይ/azithromycin  ክንናን ፈሳስን ምስ ምግቢ ይኾን ብዘይምግቢ ክውሰድ ይኽእል እዩ።
              ዕድመ እቲ ህፃን ካብ 2 ዓመት ንላዕሊ ክኾውን ኣለዎ'),nl,nl,
 write(' ክላርትሮምስን/ clarithromycin  ልሙድ ዶስ （dose） 7.5 ሚግ/ኪግ ክልት ግዘ ኣብ ማዕልቲ
               እዚ ካብ 6 ወርሒ ስካብ 12 ዓ/ም ክሊ ዕድመ ህፃናት ይወሃብ
               ክብደት ህፃናት ካብ 8 ኪግ ንላዕሊ ክኾውን ኣለዎ እዮም'),nl,nl,
 write('---------------------ህፃናት ናይ ፅባሕ ተረከብቲ ዓዲ እዮም----------------------'),nl),window2(_Name); %, foodsToAvoid(Name,Answer3)

 (Disease=='ተምላስ',nl,nl,
write('==============መምረሕን ኣወሳስዳ መድሓንትን=================='),nl,nl,
write('ናይ መጀመርያ መድሓንት ኦርስ/ ኦራል ሪሃይድሬሽን ሶሉሹን ዝብሃል ብማይ በፅብፅኻ ምስታይ።'),nl,
write('ካልኣይ ሽኳርን ጨውን ብንፁህ ማይ በፅብፅኻ ንክሰቲይ ምግባር።'),nl,
write('እዞም ዝተጠቐሱ ሜላ ኣጠቓቕማ መድሓንት ብውሕድ ሓንቲ ብርጭቆ ኣብ ማዕልቲ የድልዮ።'),nl,
write('ንህፃናት ካብ 1 ክሳብ 5 ዓመት ዕድመ ዘለው ዘግልግል እንትኾውን ኣብ ሰሙን ለውጢ የምፅእ።'),nl,
write('ምኽንያቱ ድማ ነቲ ብመልክዕ ንዓቐብን ንቑልቑልን ዝወፀ ሓይሊ ምግቢ ብቕልጡፍ ክትክኡ ስለ'),nl,nl,
write('ዝኽእሉ እዩ፡ ስለዚ፥ ነዚ ኣብ ላዕሊ ዝተወሃበ መመርሒ ይጥቐሙ።'),nl,nl,window2(_Name))).
window2(_Name):-
 nl,
 write('ሳይነሳዊ ስርዓት ኣመጋግባ ህፃናት ዶ ክርድኡ ይደልዩ/ያ?(እወ/ኣይፋል): '),
 read(Answer5), assert(answer(Answer5)),
((Answer5=='እወ',
childFeed);(Answer5=='ኣይፋል', display2)).
childFeed:-
 (
  write('ዕድመ እቲ ህፃን ትሕቲ 6 ወርሒ ድዩ (እወ/ኣይፋል)'), read(Answer9),assert(answer(Answer9)),Answer9=='እወ',foodAget5 ,tgchoice(_Name);
      write('ዕድመ እቲ ህፃን ኣብ ሞ 6 ወርሒ ክሳብ 1 ዓመት ዶ ይኾውን? (እወ/ኣይፋል)'),
    read(Answer4),assert(answer(Answer4)),Answer4=='እወ',
                  foodAget1,tgchoice(_Name);
   write('ዕድመ እቲ ህፃን ኣብ ሞንጎ 1-2 ዓመት ዶ ይኾውን ？(እወ/ኣይፋል) '),
    read(Answer4),assert(answer(Answer4)),Answer4=='እወ',
                  foodAget2,tgchoice(_Name);
    write('ዕድመ እቲ ህፃን ኣብ ሞ3-4 ዓመት ዶ ይኾውን? (እወ/ኣይፋል)'),
    read(Answer6),assert(answer(Answer6)),Answer6=='እወ',
    foodAget3,tgchoice(_Name);
    write('ዕድመ እቲ ህፃን ኣብ ሞንጎ 4-5 ዓመት ዶ ይኾውን (እወ/ኣይፋል)'),read(Answer7),assert(answer(Answer7)),Answer7=='እወ',foodAget3),tgchoice(_Name).

 foodAget1:-
 write('ዕድመ እቲ ህፃን ካብ 6 ወርሒ ክሻዕ ሓደ ዓመት ዝኾኑ ህፃናት እዞም ዝስዕቡ ምግብታት ምስ መጠኖም ይቐርበሎም '),nl,
 write('############# ፀባን ወፅኢት ፀባን ም #################'),nl,
 write('       1/4-1/2 cup / ኩባያ Milk （ጸባ),
             1/4-1/2 cup / ኩባያ, yogurt （ርጎኦ)
             1/3-2/3 oz / ኣውንስ.  cheese（ኣጅቦ）
'),nl,nl,
 write('============= ስጋን ውፅኢት ስጋን （ፕሮቲንን）================'),nl,
 write('       1 oz /ኣውንስ
             1/2 oz / ኣውንስ
             1Tbsp/ትብስፕ
             እንቋቕሖ ፍርፍር （Eggs） '),nl,nl,
 write('============= ኣሕምልትን ፍራ_ምረን ምግብታት ================'),nl,
 write('       1/8  ኩባያ 1-2  ኩባያ ፍራ_ምረ.
             2-4  ቡሽ ፅማቕ.
             ኣብ ማዕልት ካብ 3_5 ግዘ'),nl,nl,
 write('============= ዝራእቲን ጥረ_ምረን ምግብታት ================'),nl,

 write('       1/2 ቁራስ ሕምባሻ （slice bread）
             1/4 ኩባያ ሕሩጭ （cup Grain）
             1/2 ዓባይ ማንካ
             1-2 ብሽኩቲ （crackers）ኩሉ ኣዳሊኻ ኣብ ማዕልቲ 4 ግዘ ምምጋብ
             ከይዲ ጥዕናን ዕብየትን ንፃናት ከስተኻኻል ዝኽእል ስርዓት ኣመጋግባ እዩ
'),nl,assurelt(_Name).
foodAget2:-
write('ዕድመ እቲ ህ ሞንጎ 1-2 ዓመት ዝኾኑ ህፃናት እዞም ዝስዕቡ ምግብታት ምስ መጠኖም ይቐርበሎም '),nl,
 write('============= ፀባን ወፅኢት ፀባን ምግብታት================'),nl,
 write('        1/2-3/4 ኩባያ ጸባ （ cup Milk),
              1/2-3/4 ኩባያ ርጎኦ, (cup fo yogurt)
              2/3-1 ኩባያ ኣጅቦ.  ኣውንስ.  cheese
'),nl,nl,
 write('============= ስጋን ውፅኢት ስጋን （ፕሮቲንን）================'),nl,
 write('        2 ማንኪያ ስጋ （oz Beef）
              1  ኣውንስ （oz hen）
              1  ትብስፕ (Tbsp)
              2 እንቋቕሖ ፍርፍር （Eggs） '),nl,nl,
 write('============= ኣሕምልትን ፍራ_ምረን ምግብታት ================'),nl,
 write('        1/4  ኩባያ ፍራ_ምረ
              2-4  ቡሽ ፅማቕ.
              3-4  ኣሕምልትን  ኣብ ማዕልት ካብ 3_5 ግዘ'),nl,nl,
 write('============= ዝራእቲን ጥረ_ምረን ምግብታት ================'),nl,

 write('       3/4 ቁራስ ሕምባሻ （slice bread）
             1/3 ኩባያ ሕሩጭ （cup Grain）
             3/4  ዓባይ ማንካ ሩዝ（spone rice）.
             2-3 ብሽኩቲ （crackers）ኩሉ ኣዳሊኻ ኣብ ማዕልቲ 4 ግዘ ምምጋብ
             ከይዲ ጥዕናን ዕብየትን ንፃናት ከስተኻኻል ዝኽእል ስርዓት ኣመጋግባ እዩ
'),nl,assurelt(_Name).
foodAget3:-
write('ዕድመ እቲ ህ ሞን3-4 ዓመት ዝኾኑ ህፃናት እዞም ዝስዕቡ ምግብታት ምስ መጠኖም ይቐርበሎም '),nl,
 write('============= ፀባን ወፅኢት ፀባን ምግብታት================'),nl,
 write('       3/4 cup/ኩባያ Milk （ጸባ),
             3/4 cup/ኩባያ, yogurt （ርጎኦ)
             1 ኩባያ.  ኣውንስ.  cheese（ኣጅቦ）
'),nl,nl,
 write('============= ስጋን ውፅኢት ስጋን （ፕሮቲንን）================'),nl,
 write('       2 oz /ኣውንስ
             1 oz / ኣውንስ
             1Tbsp /ትብስፕ
             እንቋቕሖ ፍርፍር （Eggs）  '),nl,nl,
 write('============= ኣሕምልትን ፍራ_ምረን ምግብታት ================'),nl,
 write('       1/2  ኩባያ
             4-6 oz.
             4-5 Tbsp
             Fruit Fruit, Juice, Vegetables
             ኣብ ማዕልት ካብ 3_5 ግዘ'),nl,nl,
 write('============= ዝራእቲን ጥረ_ምረን ምግብታት ================'),nl,

 write('       3/4  ቁራስ ሕምባሻ （slice bread）
             1/2 ኩባያ ሕሩጭ （cup Grain）
             1 ዓባይ ማንካ ሩዝ（spone rice）.
             3-4 ብሽኩቲ （crackers）ኩሉ ኣዳሊኻ ኣብ ማዕልቲ 4 ግዘ ምምጋብ
             ከይዲ ጥዕናን ዕብየትን ንፃናት ከስተኻኻል ዝኽእል ስርዓት ኣመጋግባ እዩ
'),nl,assurelt(_Name).
foodAget5:-
 write('ትሕቲ ዕድመ 6 ወርሒ ህፃን ተወሳኺ ምግቢ ኣየድልዮን። ተዳጋጋሚ ጡብ ኣሶ ጥራሕ የድልዮ'),nl,assurelt(_Name).
logout1(Option):-
 ((option(Option),Option=='እወ',nl,write('በይዘኦም ደጊሞም ይመርመሩ ሰላም ዳሕን ይኹኑ!!'),break);(option(Option),Option=='ኣይፋል',display2)).
tgchoice(_Name):-
 nl,write('ካብቲ ስርዓት ሕክምናይ እናወፁ እዮም፡ ኣምነሙሉ ድዮም ክወፁ？ （እወ/ኣይፋል）: '),
 read(Option), assert(option(Option)),
 logout1(Option).
assurelt(_Name):-
 nl,write('ካብቲ ስርዓት ክወፁ/ፃ ዶ ይደልዩ/ያ ？（እወ/ኣይፋል）:'),read(Respond),
 assert(respond(Respond)),((Respond=='እወ',tgchoice(_Name));(Respond=='ኣይፋል',display2)).






