start :-
    repeat,
    write('###############################################################################'),nl,
    write('ትግርኛ ቋንቋ ንምጥቃም እንተደለዮም ቑፅሪ 1 （1.）። '),nl,
    write('ካብ ስርዓት ክወፁ እንተይሎም ቑፅሪ 3 ይጠውቑ （3.）'),nl,
    write('To select Engilish language enter number 2 (2.)'),nl,
    write('If you want to exit enter 3 (3.)'),nl,
    write('###############################################################################'),nl,
    write('--ዝርዝር/-MENU-------------------------------------'), nl,
    write('1. ትግርኛ'),nl,
    write('2. English'),nl,
    write('3. Exit'),nl,
    write('ዝደለይዎ የእትው/Enter your option: ')
   ,read(Z),( Z = 3 -> !, fail ; true),choice(Z).
choice(X):-X=:=1,consult('F:/tigrigna.pl'),ጀምር.
choice(X):-X=:=2,consult('F:/eglishh.pl'),began.
/*
process(X):-X=:=,consult('english.pl'),menu,write('please enter your words to be translated'),read(Y).
process(X):-(O=:=1->write(' please enter your words in english for
translation');write('you chose to go to option 2')).*/
