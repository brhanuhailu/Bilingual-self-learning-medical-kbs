:-set_prolog_flag(singleton,off).
:-style_check(-singleton).
began:- display_welcome1, introduction1.
display_welcome1:-nl,
  write('###############################################################################'),nl,
 write('WELCOME TO SELF-LEARNING MEDICAL KNOWLEDGE BASED SYSTEM FOR   '),nl,
 write('DIAGONOSES,AND TREATMENT OF MALNUTRITION CAUSE DISEASES FOR CHILDREN'),nl,
   write(' Designed by << Brhanu Hailu Seifu August 2013 E.C >>'),nl,
  write(' WELCOME AND STAY WELL'),nl,
  write('###############################################################################'),nl.
introduction1:-
 ensure_loaded('F:/storenglish.pl'),nl,write('write name:'),read(Name),answer11(Name),hypothesis1(Disease),write('The diagonsis result indicates: '),
write(Disease),assertz(diseases(Name,Disease)), write(''),
 tell('F:/storenglish.pl'),write(':-dynamic(diseases/2).'),nl,listing(diseases),told,nl,(Disease=='diarrhea'->describe_temlas1(Name,Disease);Disease=='kwashiorkor'->describe_kwushkorkorwindow(Name,Disease);Disease=='marasmus'->describe_marsurmus1(Name,Disease);Disease=='unknown'->end1),nl.
end1:-write('come back again please！'),break.
answer11(Name) :-diseases(Name,Type),nl,
 write(Name),((Type=='kwashiorkor',write(', "YOUR LAST TIME TEST WAS KWASHIORKOR"'),retract(diseases(Name,Type)),windowExtraKwashkorko1,nl,display21);
 (Type=='marasmus',write(', "YOUR LAST TIME TEST WAS MARASMUS"'),retract(diseases(Name,Type)),nl,windowExtraMarsurmus1,display21);
(Type=='diarrhea',write(', "YOUR LAST TIME TEST WAS DIARRHEA"'),retract(diseases(Name,Type)),nl,windowExtradihrea1,display21);
(Type=='unknown',write(', "YOUR LAST TIME TEST WAS UNKNOWN"'),retract(diseases(Name,Type)),nl,display21)).
answer11(Name):-
 nl,write('Hello,'),write(Name),write(' Stay tunned!.'),nl,display21.
sdate1 :-
    write('Enter the date`:'),nl,
     write('Example format （2001-4-2）E.C`:'),nl,
     read(YYYY-MM-DD),
      date_time_stamp(date(YYYY,MM,DD,0,0,0,_,_,_),Stamp),
    stamp_date_time(Stamp,D,local),
    date_time_value(date,D,DV),
    format('Diagonsis stated date:~w', [DV]),nl,nl.

display21:-nl,
 write('Do you want to start diagonsis?(yes/no): '),
 read(Answer2), assert(Answer2), Answer2=='yes',nl,
  write('###########################################################################'),nl,
 write('Help for the General information how to use the system (How)'),nl,nl,
 write('If you agree with query enter yes (yes.) unless enter no(no.)'),nl,nl,
 write('If the query is not clear enter (what.)or why (why.)for clarification') ,nl,nl,
 write('###########################################################################'),nl,nl,sdate1;Answer2=='no',nl,assurel(_Name).

go1 :-
write('Sorry the disease is not known！'),nl.
/*Answer2:-
    write(' Answer the following
    questions?'),nl,write('******************************************'),nl.*/
%hypothesis diseases
hypothesis1(kwashiorkor) :-kwashiorkor.
hypothesis1(marasmus) :-marasmus.
hypothesis1(diarrhea) :-diarrhea.
hypothesis1(unknown):-go1.
%describe the symptom of the diseases
kwashiorkor:-
    cheack(loss_of_appetite),
    cheack(changes_in_color_in_hair_mostly_yellow),
    cheack(dehydration),
    cheack(swelling),
    cheack(lack_of_muscle),
    cheack(lethargy),
    cheack(tiredness),
    cheack(irritability),
    cheack(frequent_skin_infections),
    cheack(failure_to_grow ),
    cheack(flaky_rash ),
    cheack(dry),
    cheack(prominencribs),
    cheack(shrinkagstomach),
    cheack(respiratoryin),
    cheack(lose_weight),
    cheack(enlarged_tummy).

marasmus:-
    cheack(chronic_vomiting ),
    cheack(failure_to_grow),
    cheack(abdominal_cramps  ),
    cheack(faintness_and_dizziness),
    cheack(unusual_paleness),
    cheack(shrinkagstomach),
    cheack(tarry_stools),
    cheack(vomit_contains_blood),
    cheack(sweating),
    cheack(lose_weight),
    cheack(headaches),
    cheack(chest_pain),
    cheack(rapid_heartbeat),
    cheack(cough),
    cheack(skinfolds),
    cheack(prominencribs).

diarrhea:-
    cheack(frequent_loose ),
    cheack(watery_stools ),
    cheack(abdominal_cramps ),
    cheack(fever ),
    cheack(bleeding ),
    cheack(light_headedness ),
    cheack(dehydration ),
    cheack(abdominal_pain).

%function that can explain the reason
reason1(loss_of_appetite):-
write('becuase it is neccessary to identify the diseases'),nl.
reason1(changes_in_color_in_hair_mostly_yellow):-write(' ').
reason1(dehydration):-write(' becuase the reseaon is to identify the cause'),nl.
reason1(swelling):-write(' the is to mean all necessary to measure the total tempreture of you body'),nl.
reason1(lack_of_muscle):-write('This helps to identify the basic symptom of very relative disease easily'),nl.
reason1(lethargy):-write(' This is helps to identify the different disease that can show sympotom on eyes'),nl.
reason1(irritability):-write('becuase it is necessary in different case to clearly identify'),nl.
reason1(frequent_skin_infections):-write('The othe reason is conscontively'),nl.
reason1(failure_to_grow):-write('this to mean new reason do you have cough every day'),nl.
reason1(flaky_rash):-write(' the is to mean all necessary'),nl.
reason1(dry):-write(' the is to mean all necessary'),nl.
reason1(brittle_hair):-write(' the is to mean all necessary'),nl.
reason1(cracked_nails):-write(' the is to mean all necessary'),nl.
reason1(enlarged_tummy):-write(' the is to mean all necessary'),nl.
reason1(chronic_vomiting):-write(' the is to mean all necessary'),nl.
reason1(stunted_growth):-write(' the is to mean all necessary'),nl.
reason1(abdominal_cramps):-write(' the is to mean all necessary'),nl.
reason1(faintness_and_dizziness):-write(' the is to mean all necessary'),nl.
reason1(unusual_paleness):-write(' the is to mean all necessary'),nl.
reason1(shortness_of_breath):-write(' the is to mean all necessary'),nl.
reason1(tarry_stools):-write(' the is to mean all necessary'),nl.
reason1(vomit_contains_blood):-write(' the is to mean all necessary'),nl.
reason1(sweating):-write(' the is to mean all necessary'),nl.
reason1(headaches):-write(' the is to mean all necessary'),nl.
reason1(chest_pain):-write(' the is to mean all necessary'),nl.
reason1(rapid_heartbeat):-write(' the is to mean all necessary'),nl.
reason1(cough):-write(' the is to mean all necessary'),nl.
reason1(old_face):-write(' the is to mean all necessary'),nl.
reason1(frequent_loose):-write(' the is to mean all necessary'),nl.
reason1(watery_stools):-write(' the is to mean all necessary'),nl.
reason1(abdominal_cramps):-write(' the is to mean all necessary'),nl.
reason1(fever):-write(' the is to mean all necessary'),nl.
reason1(bleeding):-write(' the is to mean all necessary'),nl.
reason1(failure_to_grow):-write('becuase it is neccessary to identify the diseases'),nl.
reason1(light_headedness):-write(' the is to mean all necessary'),nl.
ask1(Question) :-
write('Does the child has '),
write(Question),
write(''),
write('(  yes/what/no)? '),
read(Response),
nl,
( (Response == yes ; Response == y)->assert(yes(Question));
(Response == what)->assert(what(Question)),(Question=='loss_of_appetite'->headache1;Question=='changes_in_color_in_hair_mostly_yellow'->hair1;Question=='dehydration'->dehydration1;Question=='swelling'->swelling1;Question=='lack_of_muscle'->lackenergy1;Question=='lethargy'->longlasting1;Question=='tiredness'->tiredness1;Question=='irritability'->irritability1;Question=='frequent_skin_infections'->lethargy1;Question=='failure_to_grow'->growth1;Question=='flaky_rash'->swelling1;Question=='dry'->dermatosis1;Question=='prominencribs'->prominencribs1;Question=='shrinkagstomach'->inflamed1; Question=='respiratoryin'->losappetite1;Question=='lose_weight'->dizziness1;Question=='enlarged_tummy'->tummy1;

                                           Question=='chronic_vomiting'->chronidiarrhoea1; Question=='failure_to_grow'->weighloss1;Question=='abdominal_cramps'->dehydration1;Question=='faintness_and_dizziness'->lackenergy1;Question=='unusual_paleness'->stuntegrowth1;Question=='shrinkagstomach'->chronidiarrhoea1;Question=='tarry_stools'->shrinkagstomach1;Question=='vomit_contains_blood'->respiratoryin1;Question=='sweating'->prominencribs1;Question=='lose_weight'->skinfolds1;Question=='headaches'->lethargy1;Question=='chest_pain'->persistenvomiting1;Question=='rapid_heartbeat'->instools1;Question=='cough'->lackenergy1;Question=='skinfolds'->skinfolds1;Question=='prominencribs'->prominencribs1;
                                           Question=='frequent_loose'->watery1;Question=='watery_stools'->watery1;Question=='abdominal_cramps'->abdominal1;Question=='fever'->higtemperature1;Question=='bleeding'->bleeding1;Question=='light_headedness'->headedness1;Question=='dehydration'->appetite1;Question=='abdominal_pain'->cramps1),
write("Therefore,Does the child has "),write(Question),write("?(why/yes/no)"),nl,read(Reson),Reson=='why'->reason1(loss_of_appetite),write(" Does the child has "),write(Question),write("?(yes/no)"),read(Reply),((Reply == 'yes')->assert(yes(Question));assert(no(Question)), fail)).
  /*
(Response == what)->assert(what(Question)),  Question=='ለዘብዘብ'->cough,            write("So,Does the patient have "),write(Question),write("?(ንምንታይ/እወ/ኣይፋል)"),read(Rr1),Rr1=='why'->reason(ለዘብዘብ),write("ስለዚ፣ እቲ ህፃን "),write(Question),write("?(yes/ኣይፋል)"),read(Reply),((Reply == እወ)->assert(እወ(Question));assert(ኣይፋል(Question)), fail))).
*/

:- dynamic yes/1,what/1,why/1,no/1.
/*How to verify something */
cheack(Sc) :-
(yes(Sc)->true ;
(what(Sc)->true;
(why(Sc)->true;
(no(Sc)->fail ;
ask1(Sc))))).
/* undo all yes/no assertions*/
undo1 :- retract(yes(_)),fail.
undo1 :- retract(what(_)),fail.
undo1 :- retract(why(_)),fail.
undo1 :- retract(no(_)),fail.
undo1.
headache1:-write('It is to mean do you have low habit of eating foods '),nl.
tummy1 :-write('It is to mean simple as overeating or drinking carbonated drinks, which is easy to remedy'),nl.
growth1 :-write('It is to mean growth delay occurs when a child isnt growing at the normal rate for their ag'),nl.
tiredness1 :-write('It is to mean Does the child feels weakness'),nl.
irritability1 :-write('It is to mean Does the child feels long lasting pain'),nl.
longlasting1 :-write('It is to mean does the child have feeling of pain for long time '),nl.
inflamed1 :-write('Redness and heat are due to increased blood flow at body core temperature to the inflamed '),nl.
hair1 :-write('It is to mean does the hair of the child change the color from black to yellow'),nl.
lethargy1:-write('It is to mean Does the child feel tired to move '),nl.
/*healing1 :-write('It is to mean feeling of recovery or good sound '),nl.*/
swelling1:-write('an increase in the size or a change in the shape of an area of the body'),nl.
dermatosis1:-write('is a term that refers to diseases of the integumentary system '),nl.
appetite1 :-write('t is distinct from hunger, which is the bodys biological response to a lack of food '),nl.
/*oldface:-write('እቲ ህፃን ገፅ ናይ ዓበይትን ምልባት እውን ብጣዕሚ ዝኣረገ ዶ ይመእል ንምባል ተድልዩ እዩ። '), nl.*/
instools1:-write('It is to mean doe it occur when you pass liquid instead of formed stool '),nl.
persistenvomiting1:-write('intractable vomiting and widely used as a warning sign of severe illness in dengue infection '),nl.
skinfolds1:-write('It is to mean a fold of skin formed by pinching or compressing the skin and subcutaneous layer '),nl.
prominencribs1:-write('rib cage is slightly uneven or protruding, it may be due to a muscle weakness '),nl.
respiratoryin1 :-write('It is to mean infection is an infection that may interfere with normal breathing. '),nl.
shrinkagstomach1 :-write('It is to mean your stomach adjusts to hunger and feelings of fullness '),nl.
chronidiarrhoea1:-write(' It is to mean passage of loose or liquid stools, urgent need to evacuate or feelings of abdominal discomfort,'),nl.
losappetite1 :-write('It is to mean Does the child have lost habit to eat '),nl.
stuntegrowth1:-write('It is to mean reduced growth rate in child development '),nl.
lackenergy1:-write('It is to mean that feeling of weekness to walk  '),nl.
higtemperature1 :-write('It is to mean does the child has high temprute or hottness '),nl.
dehydration1:-write('It is to mean the lose of water from his body '),nl.
weighloss1:-write('It is to mean that heavness of child becomes low'),nl.
dizziness1:-write(' It is to mean that feeling of boring and serious weekness'),nl.
abdominal1:-write('It is to mean that having pain in his abdomon '),nl.
headedness1:-write('It is to mean feeling tewisted head and pain of head '),nl.
bleeding1 :-write('It is to mean showing blood on his body accedently '),nl.
cramps1:-write('It is to mean feeling of shevering and pain in his abdomon '),nl.
watery1:-write('It is to mean watery content wastage lose frequently '),nl.

describe_temlas1(_Name,Disease) :-
 nl,
  write('**********************************************************************'),nl,
  write('Diarrhea is usually a symptom of an infection in the intestinal tract, which '),nl,
  write('can be caused by a variety of bacterial, viral and parasitic organisms'),nl,
  write('Infection is spread through contaminated food or drinking-water, or from '),nl,
  write('person-to-person as a result of poor hygiene Children die because of diarrhea '),nl,
 write(' Children have to protect from drinking polunating waters and polunating foods'),nl,
  write('**********************************************************************'),nl,window11(_Name,Disease)
 .
describe_marsurmus1(_Name,Disease):-
nl,  write('**********************************************************************'),nl,
   write('Marasmus is also other form of severe malnutrition caused diseases. It can  '),nl,
   write('occur in any one but, it is most common in children and in developing countries'),nl,
    write('Children can die and stun easily with marasmus unless treatment is taken on time  '),nl,
    write('Causes of marasmus ingesting enough protein, calories, carbohydrates and '),nl,
    write(' nutrients are the main cause of marasmus This is due to poverty and scarcity of'),nl,
    write(' necessary foods,Developing countries are under risk of marasmus. Diagnose  '),nl,
    write('method, like kwashiorkor marasmus can diagnose through physical experiment. '),nl,
    write('**********************************************************************'),nl,
window11(_Name,Disease).
describe_kwushkorkorwindow(_Name,Disease):-
nl, write('**********************************************************************'),nl,
    write('Kwashiorkor is nutritional disorder which happens most of the time  '),nl,
    write('as a result of occurrence of famine in our country.It is one form of'),nl,
    write('malnutrition caused by lack of protein in the diet.Kwashiorkor usually  '),nl,
    write('occurs after a child stops breastfeeding, and before they reach 4 years '),nl,
    write('of age Carbohydrate will give first treating condition for the diseases,'),nl,
    write(' and then add proteins, vitamins as well as minerals to prevent this '),nl,
    write('malnutrition there is a need to eat enough calories and protein content foods'),nl,
    write('**********************************************************************'),nl,
window11(_Name,Disease).
windowExtraKwashkorko1:-
 nl,write('=========================================== '),
  nl,write(' Do you want to see last time detail test (yes/no)?'),
 read(AnsExtra), assert(answer(AnsExtra)),
((AnsExtra=='yes',
highLevelKwa1));(AnsExtra=='no',assurel(_Name)).
highLevelKwa1:-
write('===========Last time test results============='),
 nl,write('         Type of disease: Kwashiorkor '),nl,
 write('            Symptom of the disease  '),nl,
 write('loss_of_appetite,changes_in_color_in_hair,dehydration,dry'),nl,
 write('swelling,lack_of_muscle,lethargy,irritability,brittle hair'),nl,
 write('frequent_skin_infections,failure_to_grow,flaky_rash,enlarged_tummy  '),nl,
 write('respiratoryin,shrinkagstomach,lose_weight'),nl,
 write('=============================================='),nl,
 write('===========medication recommended============='),nl,
 write( '           azithromycin, clarithromycin '),nl,
 write('=============================================='),
 nl,assurel(_Name).
windowExtraMarsurmus1:-
 nl,write('=========================================== '),
  nl,write('Do you want to see last time diagonosis detail (yes/no)?'),
 read(AnsExtr), assert(answer(AnsExtr)),
((AnsExtr=='yes',
highLeveMarsurmus1));(AnsExtr=='no',assurel(_Name)).
highLeveMarsurmus1:-
write('=============Last time test results================'),
 nl,write('       Type of disease: marasmus '),nl,
 write('          Symptom of the disease  '),nl,
 write('  chronic_vomiting, stunted_growth,abdominal_cramps, Faintness,dizziness
'),nl,
 write(' unusual_paleness,shortness_of_breath,tarry_stools,vomit_contains_blood
'),nl,
 write('sweating,headaches, chest-pain, rapid-heartbeat, cough,prominencribs,shrinkagstomach
'),nl,
 write('=============================================='),nl,
 write('=============medication recommended================'),nl,
 write('dried skim milk powder mixed with boiled water is the initial treatment of marasmus. '),nl,
  write('Next the mixture can include sugar, vegetable, casein and oils. Casein is milk protein, oil increase amount of energy and density of mixtures '),nl,
 write('=============================================='),
 nl,assurel(_Name).
windowExtradihrea1:-
 nl,write('=========================================== '),
  nl,write('  Do you want to see last time detail test (yes/no)?'),
 read(AnsExt), assert(answer(AnsExt)),
((AnsExt=='yes',
highLevedihrea1));(AnsExt=='no',assurel(_Name)).
highLevedihrea1:-
write('=============Last time test results================'),
 nl,write('       Type of disease: Diarrhea  '),nl,
 write('          Symptom of the disease  '),nl,
 write(' frequent-loose, watery-stools, abdominal-cramps, fever,'),nl,
 write(' bleeding, light-headedness,dehydration,abdominal-pain
'),nl,
 write('=============================================='),nl,
 write('=============medication recommended================'),nl,
 write('oral rehydration solution (ORS)'),nl,
 write('a solution of clean water, sugar and salt'),nl,
 write('=============================================='),
 nl,assurel(_Name).

window11(_Name,Disease):-
 nl,
 write('Do you want to see treatment (yes/no):? '),
 read(Answer3), assert(answer(Answer3)),
((Answer3=='yes',
treatmentFuncc(_Name,Disease));(Answer3=='no',assurel(_Name))).
treatmentFuncc(_Name,Disease):-
 ((Disease=='marasmus',nl,
 write('=====================***************************===================='),nl,
 write('------------------GENERAL TREATMENT FOR KWASHIORKOR-----------------'),nl,
 write('=====================***************************===================='),nl,
 write('------------------------Recommended foods to be eat----------------------------------'),nl,nl,
 write('Breads/Cereals: '),write('Bread, heny, rice, pasta, Crackers'),nl,nl,write('Meat/Protein '),
 write('Eggs, Beef,fish,Bins, adegura'),nl,nl,write('Milk/Dairy including milk, yogurt, chesse are necessary foods for recover'),nl,nl,
 write('------------------------medication recommended for marasmus------------------------'),nl,nl,write('dried skim milk powder mixed with boiled water is the initial treatment of marasmus. '),nl,nl,
write(' Next the mixture can include sugar, vegetable, casein and oils. Casein is milk protein, oil increase amount of energy and density of mixtures ...'),nl,nl,
 write('--------------------------------------------------------------------'),nl,nl,
  write('------------------------===================------------------------'),nl),window12(_Name); %,foodsToAvoid(Name,Answer3))
 (Disease=='kwashiorkor',nl,
 write('=====================***************************===================='),nl,
 write('------------------GENERAL TREATMENT FOR KWASHIORKOR-----------------'),nl,
 write('=====================***************************===================='),nl,

 write('-----------------------Food that should you eat------------------------'),nl,nl,
 write('           Fish, eggs, meat, been, fruits and cearials'),nl,nl,
 write('------------------------Medication Tabletes------------------------'),nl,nl,
 write('                     azithromycin and clarithromycin '),nl,nl,
 write('------------------------Instruction to take------------------------'),nl,nl,
 write('   azithromycin  can swallow with or without water  and
           foods.Age of the child must be older that two years'),nl,nl,
 write(' clarithromycin  known as （dose） 7.5 mg/kg twice per a day
      It is possible for children from age of 6 month upto 12 years old
              weight of the child must be over 8kg'),nl,nl,
 write('---------------------Children are the future of the country----------------------'),nl),window12(_Name); %, foodsToAvoid(Name,Answer3)

 (Disease=='diarrhea',nl,
write('=====================***************************===================='),nl,
write('------------------GENERAL TREATMENT FOR DIARRHEA-----------------'),nl,
write('=====================***************************===================='),nl,
write('=====================RECOMMENDATION============================='),nl,nl,
write('oral rehydration solution (ORS)'),nl,
write('a solution of clean water, sugar and salt'),nl,
write('So, treatment consists different content that can repaire the losed energy'),nl,
write('most of the time such foods and tablets are imdiate recovery foods for child'),nl,
write('body weight of the child will improve with in a week and face of child become bright'),nl,nl,window12(_Name))).
window12(_Name):-
 nl,
 write('Do you need to see the standard child feeding system?(yes/no): '),nl,
 read(Answer5), assert(answer(Answer5)),
((Answer5=='yes',
childFeedn);(Answer5=='no', assurel(_Name))).
childFeedn:-
 (
  write('Does the age of child is under 6 months(yes/no)?'), read(Answer9),assert(answer(Answer9)),Answer9=='yes',foodAge8 ,enchoice(_Name);
      write('Does teh age of child from 6 monthes up to one year old (yes/no)?'),
    read(Answer4),assert(answer(Answer4)),Answer4=='yes',
                  foodAge5,enchoice(_Name);
   write('Does the age of child is from 2 up to 3 years old (yes/no)? '),
    read(Answer4),assert(answer(Answer4)),Answer4=='yes',
                  foodAge6,enchoice(_Name);
    write('Does the age of the child is from 3 up to 4 years old (yes/no)?'),
    read(Answer6),assert(answer(Answer6)),Answer6=='yes',
    foodAge6,enchoice(_Name);
    write('Does the age of the child is from 4 up to 5 years old (yes/no)?'),read(Answer7),assert(answer(Answer7)),Answer7=='yes',foodAge7),enchoice(_Name).

 foodAge5:-
 write('Children under of 6 months up to 1 year recommonded to eat '),nl,
 write('the follwing foods'),nl,
 write('============= (Milk/Dairy) Food Type  ================'),nl,
 write('               1/4-1/2 cup Milk
                     1/4-1/2 cup yogurt
                     1/3-2/3 oz cheese'),nl,nl,
 write('============= (Meat/Protein) Food Type ================'),nl,
 write('               2 spone /Poultry
                     1/2 spone / Eggs
                     1 Tbsp/Beef
                     Beef Fish '),nl,nl,
 write('============= (Fruit/Vegetables) Type  ================'),nl,
 write('               1/8 cup Fruit juice
                     1-2 oz any Juice.
                     1-2 Tbsp Vegetables
                     3-5 times per aday'),nl,nl,
 write('============= (Breads/Cereals) Food Type ================'),nl,

 write('               1/2 slice rice
                     1/4 cup pasta
                     1/2 oz Grain bread
                     1-2 Whole, Hot, cereal,
                     4 times per aday
'),nl,assurel(_Name).
foodAge6:-
write(' Necessary foods for Children under age of 2 upto 3 years old '),nl,
 write('============= (Milk/Dairy) Food Type ================'),nl,
 write('               1/2-3/4 cup of Milk
                     1/2-3/4 cup of yogurt
                     2/3-1 cup of cheese
'),nl,nl,
 write('=============(Meat/Protein) Food Type ================'),nl,
 write('              2 oz Beef
                    1  oz hen
                    1  Tbsp
                    2 Eggs '),nl,nl,
 write('============= (Fruit/Vegetables) Type  ================'),nl,
 write('              1/4  cup Fruit juice
                    2-4  any Juice.
                    3-4  Tbsp Vegetables  3-5 times per a day'),nl,nl,
 write('=============(Breads/Cereals) Food Type ================'),nl,

 write('             3/4 slice bread
                   1/3 cup Grain
                   3/4 spone rice
                   2-3 crackers prepaire and take 4 time per a day')
 ,nl,assurel(_Name).
foodAge7:-
write(' Necessary foods for Children under age of 4 upto 5 years old '),nl,
 write('============= (Milk/Dairy) Food Type ================'),nl,
 write('             3/4 cup Milk,
                   3/4 cup, yogurt
                   1 awns  cheese
'),nl,nl,
 write('=============(Meat/Protein) Food Type================'),nl,
 write('             2 oz Beef
                   1 oz Fish
                   1 Tbsp Poultry
                   with  Eggs
              '),nl,nl,
 write('============= (Fruit/Vegetables) Type ================'),nl,
 write('             1/2  cup Fruit juice
                   4-6  any Juice.
                   4-5 Tbsp Vegetables
                   Fruit Fruit
                   3-5 times per a day'),nl,nl,
 write('=============(Breads/Cereals) Food Type ================'),nl,

 write('            3/4 slice  bread,
                  1/2 cup rice, pasta
                  1 oz Grain, Hot
                  3-4 Whole, , cereal,
                  Crackers  4 times per aday
'),nl,assurel(_Name).
foodAge8:-
 write('child under of six months does not need extra food'),nl,assurel(_Name).
logout(Option):-
 ((option(Option),Option=='yes',nl,write('Please come back to test again Bye!!'),break);(option(Option),Option=='no',display21)).
enchoice(_Name):-
 nl,write('Are You Sure to Logout from the system？ （yes/no）: '),nl,
 read(Option), assert(option(Option)),
 logout(Option).
assurel(_Name):-
 nl,write('Do want to Logout from the system?(yes/no):'),nl,read(Respond),
 assert(respond(Respond)),((Respond=='yes',enchoice(_Name));(Respond=='no',display21)).

