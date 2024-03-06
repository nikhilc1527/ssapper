; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3754 () Bool)

(assert start!3754)

(declare-fun b!24398 () Bool)

(declare-fun res!10857 () Bool)

(declare-fun e!12646 () Bool)

(assert (=> b!24398 (=> (not res!10857) (not e!12646))))

(declare-datatypes () ((T!1807 (T!1808 (val!76 Int)))))

(declare-datatypes () ((Conc!53 (CC!52 (left!697 Conc!53) (right!700 Conc!53)) (Single!52 (x!8874 T!1807)) (Empty!63))))

(declare-fun ys!119 () Conc!53)

(declare-fun balanced!48 (Conc!53) Bool)

(assert (=> b!24398 (= res!10857 (balanced!48 ys!119))))

(declare-fun b!24399 () Bool)

(declare-fun res!10851 () Bool)

(assert (=> b!24399 (=> (not res!10851) (not e!12646))))

(declare-fun xs!625 () Conc!53)

(assert (=> b!24399 (= res!10851 (balanced!48 xs!625))))

(declare-fun b!24400 () Bool)

(declare-fun e!12645 () Bool)

(declare-fun tp_is_empty!151 () Bool)

(assert (=> b!24400 (= e!12645 tp_is_empty!151)))

(declare-fun b!24401 () Bool)

(declare-fun res!10858 () Bool)

(assert (=> b!24401 (=> (not res!10858) (not e!12646))))

(declare-fun concInv!47 (Conc!53) Bool)

(assert (=> b!24401 (= res!10858 (concInv!47 ys!119))))

(declare-fun b!24402 () Bool)

(declare-fun tp!5283 () Bool)

(declare-fun tp!5284 () Bool)

(assert (=> b!24402 (= e!12645 (and tp!5283 tp!5284))))

(declare-fun b!24403 () Bool)

(declare-fun res!10852 () Bool)

(declare-fun e!12642 () Bool)

(assert (=> b!24403 (=> res!10852 e!12642)))

(declare-fun lt!3770 () Int)

(declare-fun lt!3769 () Int)

(declare-fun lt!3767 () Int)

(assert (=> b!24403 (= res!10852 (> lt!3767 (+ (ite (>= lt!3770 lt!3769) lt!3770 lt!3769) 1)))))

(declare-fun level!42 (Conc!53) Int)

(assert (=> b!24403 (= lt!3769 (level!42 ys!119))))

(assert (=> b!24403 (= lt!3770 (level!42 xs!625))))

(declare-fun res!5625 () Conc!53)

(assert (=> b!24403 (= lt!3767 (level!42 res!5625))))

(declare-fun b!24404 () Bool)

(declare-fun e!12644 () Bool)

(declare-fun tp!5285 () Bool)

(declare-fun tp!5282 () Bool)

(assert (=> b!24404 (= e!12644 (and tp!5285 tp!5282))))

(declare-fun b!24405 () Bool)

(declare-fun res!10859 () Bool)

(assert (=> b!24405 (=> res!10859 e!12642)))

(declare-fun lt!3766 () Int)

(declare-fun lt!3765 () Int)

(declare-fun lt!3768 () Int)

(assert (=> b!24405 (= res!10859 (< lt!3766 (ite (>= lt!3768 lt!3765) lt!3768 lt!3765)))))

(assert (=> b!24405 (= lt!3765 (level!42 ys!119))))

(assert (=> b!24405 (= lt!3768 (level!42 xs!625))))

(assert (=> b!24405 (= lt!3766 (level!42 res!5625))))

(declare-fun b!24406 () Bool)

(declare-fun e!12643 () Bool)

(assert (=> b!24406 (= e!12643 tp_is_empty!151)))

(declare-fun b!24407 () Bool)

(declare-fun concatCorrectness!7 (Conc!53 Conc!53 Conc!53) Bool)

(assert (=> b!24407 (= e!12642 (not (concatCorrectness!7 res!5625 xs!625 ys!119)))))

(declare-fun b!24408 () Bool)

(assert (=> b!24408 (= e!12644 tp_is_empty!151)))

(declare-fun b!24409 () Bool)

(declare-fun res!10854 () Bool)

(assert (=> b!24409 (=> res!10854 e!12642)))

(assert (=> b!24409 (= res!10854 (not (balanced!48 res!5625)))))

(declare-fun res!10855 () Bool)

(assert (=> start!3754 (=> (not res!10855) (not e!12646))))

(assert (=> start!3754 (= res!10855 (concInv!47 xs!625))))

(assert (=> start!3754 e!12646))

(assert (=> start!3754 e!12645))

(assert (=> start!3754 e!12644))

(assert (=> start!3754 e!12643))

(declare-fun b!24410 () Bool)

(declare-fun tp!5281 () Bool)

(declare-fun tp!5280 () Bool)

(assert (=> b!24410 (= e!12643 (and tp!5281 tp!5280))))

(declare-fun b!24411 () Bool)

(declare-fun res!10853 () Bool)

(assert (=> b!24411 (=> (not res!10853) (not e!12646))))

(assert (=> b!24411 (= res!10853 (and (is-Empty!63 ys!119) (= res!5625 xs!625)))))

(declare-fun b!24412 () Bool)

(assert (=> b!24412 (= e!12646 e!12642)))

(declare-fun res!10856 () Bool)

(assert (=> b!24412 (=> res!10856 e!12642)))

(assert (=> b!24412 (= res!10856 (not (concInv!47 res!5625)))))

(assert (= (and start!3754 res!10855) b!24399))

(assert (= (and b!24399 res!10851) b!24401))

(assert (= (and b!24401 res!10858) b!24398))

(assert (= (and b!24398 res!10857) b!24411))

(assert (= (and b!24411 res!10853) b!24412))

(assert (= (and b!24412 (not res!10856)) b!24409))

(assert (= (and b!24409 (not res!10854)) b!24403))

(assert (= (and b!24403 (not res!10852)) b!24405))

(assert (= (and b!24405 (not res!10859)) b!24407))

(assert (= (and start!3754 (is-CC!52 xs!625)) b!24402))

(assert (= (and start!3754 (is-Single!52 xs!625)) b!24400))

(assert (= (and start!3754 (is-CC!52 ys!119)) b!24404))

(assert (= (and start!3754 (is-Single!52 ys!119)) b!24408))

(assert (= (and start!3754 (is-CC!52 res!5625)) b!24410))

(assert (= (and start!3754 (is-Single!52 res!5625)) b!24406))

(declare-fun m!25601 () Bool)

(assert (=> b!24403 m!25601))

(declare-fun m!25603 () Bool)

(assert (=> b!24403 m!25603))

(declare-fun m!25605 () Bool)

(assert (=> b!24403 m!25605))

(declare-fun m!25607 () Bool)

(assert (=> b!24412 m!25607))

(declare-fun m!25609 () Bool)

(assert (=> b!24398 m!25609))

(declare-fun m!25611 () Bool)

(assert (=> start!3754 m!25611))

(declare-fun m!25613 () Bool)

(assert (=> b!24409 m!25613))

(declare-fun m!25615 () Bool)

(assert (=> b!24399 m!25615))

(declare-fun m!25617 () Bool)

(assert (=> b!24407 m!25617))

(assert (=> b!24405 m!25601))

(assert (=> b!24405 m!25603))

(assert (=> b!24405 m!25605))

(declare-fun m!25619 () Bool)

(assert (=> b!24401 m!25619))

(push 1)

(assert (not b!24399))

(assert (not b!24407))

(assert (not b!24403))

(assert (not b!24405))

(assert (not b!24404))

(assert (not b!24401))

(assert tp_is_empty!151)

(assert (not b!24410))

(assert (not b!24402))

(assert (not b!24412))

(assert (not start!3754))

(assert (not b!24409))

(assert (not b!24398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13519 () Bool)

(declare-datatypes () ((List!355 (Cons!349 (h!266 T!1807) (t!4369 List!355)) (Nil!350))))

(declare-fun toList!110 (Conc!53) List!355)

(declare-fun ++!35 (List!355 List!355) List!355)

(assert (=> d!13519 (= (concatCorrectness!7 res!5625 xs!625 ys!119) (= (toList!110 res!5625) (++!35 (toList!110 xs!625) (toList!110 ys!119))))))

(declare-fun bs!5076 () Bool)

(assert (= bs!5076 d!13519))

(declare-fun m!25621 () Bool)

(assert (=> bs!5076 m!25621))

(declare-fun m!25623 () Bool)

(assert (=> bs!5076 m!25623))

(declare-fun m!25625 () Bool)

(assert (=> bs!5076 m!25625))

(assert (=> bs!5076 m!25625))

(assert (=> bs!5076 m!25621))

(declare-fun m!25627 () Bool)

(assert (=> bs!5076 m!25627))

(assert (=> b!24407 d!13519))

(declare-fun b!24418 () Bool)

(declare-fun e!12649 () Int)

(declare-fun lt!3779 () Int)

(declare-fun lt!3778 () Int)

(assert (=> b!24418 (= e!12649 (+ 1 (ite (>= lt!3779 lt!3778) lt!3779 lt!3778)))))

(assert (=> b!24418 (= lt!3778 (level!42 (right!700 ys!119)))))

(assert (=> b!24418 (= lt!3779 (level!42 (left!697 ys!119)))))

(declare-fun d!13521 () Bool)

(declare-fun lt!3777 () Int)

(assert (=> d!13521 (>= lt!3777 0)))

(assert (=> d!13521 (= lt!3777 e!12649)))

(declare-fun c!5641 () Bool)

(assert (=> d!13521 (= c!5641 (or (is-Empty!63 ys!119) (is-Single!52 ys!119)))))

(assert (=> d!13521 (= (level!42 ys!119) lt!3777)))

(declare-fun b!24417 () Bool)

(assert (=> b!24417 (= e!12649 0)))

(assert (= (and d!13521 c!5641) b!24417))

(assert (= (and d!13521 (not c!5641)) b!24418))

(declare-fun m!25629 () Bool)

(assert (=> b!24418 m!25629))

(declare-fun m!25631 () Bool)

(assert (=> b!24418 m!25631))

(assert (=> b!24403 d!13521))

(declare-fun b!24420 () Bool)

(declare-fun e!12650 () Int)

(declare-fun lt!3782 () Int)

(declare-fun lt!3781 () Int)

(assert (=> b!24420 (= e!12650 (+ 1 (ite (>= lt!3782 lt!3781) lt!3782 lt!3781)))))

(assert (=> b!24420 (= lt!3781 (level!42 (right!700 xs!625)))))

(assert (=> b!24420 (= lt!3782 (level!42 (left!697 xs!625)))))

(declare-fun d!13523 () Bool)

(declare-fun lt!3780 () Int)

(assert (=> d!13523 (>= lt!3780 0)))

(assert (=> d!13523 (= lt!3780 e!12650)))

(declare-fun c!5642 () Bool)

(assert (=> d!13523 (= c!5642 (or (is-Empty!63 xs!625) (is-Single!52 xs!625)))))

(assert (=> d!13523 (= (level!42 xs!625) lt!3780)))

(declare-fun b!24419 () Bool)

(assert (=> b!24419 (= e!12650 0)))

(assert (= (and d!13523 c!5642) b!24419))

(assert (= (and d!13523 (not c!5642)) b!24420))

(declare-fun m!25633 () Bool)

(assert (=> b!24420 m!25633))

(declare-fun m!25635 () Bool)

(assert (=> b!24420 m!25635))

(assert (=> b!24403 d!13523))

(declare-fun b!24422 () Bool)

(declare-fun e!12651 () Int)

(declare-fun lt!3785 () Int)

(declare-fun lt!3784 () Int)

(assert (=> b!24422 (= e!12651 (+ 1 (ite (>= lt!3785 lt!3784) lt!3785 lt!3784)))))

(assert (=> b!24422 (= lt!3784 (level!42 (right!700 res!5625)))))

(assert (=> b!24422 (= lt!3785 (level!42 (left!697 res!5625)))))

(declare-fun d!13525 () Bool)

(declare-fun lt!3783 () Int)

(assert (=> d!13525 (>= lt!3783 0)))

(assert (=> d!13525 (= lt!3783 e!12651)))

(declare-fun c!5643 () Bool)

(assert (=> d!13525 (= c!5643 (or (is-Empty!63 res!5625) (is-Single!52 res!5625)))))

(assert (=> d!13525 (= (level!42 res!5625) lt!3783)))

(declare-fun b!24421 () Bool)

(assert (=> b!24421 (= e!12651 0)))

(assert (= (and d!13525 c!5643) b!24421))

(assert (= (and d!13525 (not c!5643)) b!24422))

(declare-fun m!25637 () Bool)

(assert (=> b!24422 m!25637))

(declare-fun m!25639 () Bool)

(assert (=> b!24422 m!25639))

(assert (=> b!24403 d!13525))

(declare-fun b!24433 () Bool)

(declare-fun res!10871 () Bool)

(declare-fun e!12656 () Bool)

(assert (=> b!24433 (=> (not res!10871) (not e!12656))))

(assert (=> b!24433 (= res!10871 (concInv!47 (left!697 res!5625)))))

(declare-fun b!24431 () Bool)

(declare-fun e!12657 () Bool)

(assert (=> b!24431 (= e!12657 e!12656)))

(declare-fun res!10869 () Bool)

(assert (=> b!24431 (=> (not res!10869) (not e!12656))))

(declare-fun isEmpty!310 (Conc!53) Bool)

(assert (=> b!24431 (= res!10869 (not (isEmpty!310 (left!697 res!5625))))))

(declare-fun b!24432 () Bool)

(declare-fun res!10872 () Bool)

(assert (=> b!24432 (=> (not res!10872) (not e!12656))))

(assert (=> b!24432 (= res!10872 (not (isEmpty!310 (right!700 res!5625))))))

(declare-fun b!24434 () Bool)

(assert (=> b!24434 (= e!12656 (concInv!47 (right!700 res!5625)))))

(declare-fun d!13527 () Bool)

(declare-fun res!10870 () Bool)

(assert (=> d!13527 (=> res!10870 e!12657)))

(assert (=> d!13527 (= res!10870 (not (is-CC!52 res!5625)))))

(assert (=> d!13527 (= (concInv!47 res!5625) e!12657)))

(assert (= (and d!13527 (not res!10870)) b!24431))

(assert (= (and b!24431 res!10869) b!24432))

(assert (= (and b!24432 res!10872) b!24433))

(assert (= (and b!24433 res!10871) b!24434))

(declare-fun m!25641 () Bool)

(assert (=> b!24433 m!25641))

(declare-fun m!25643 () Bool)

(assert (=> b!24431 m!25643))

(declare-fun m!25645 () Bool)

(assert (=> b!24432 m!25645))

(declare-fun m!25647 () Bool)

(assert (=> b!24434 m!25647))

(assert (=> b!24412 d!13527))

(declare-fun b!24445 () Bool)

(declare-fun res!10884 () Bool)

(declare-fun e!12662 () Bool)

(assert (=> b!24445 (=> (not res!10884) (not e!12662))))

(assert (=> b!24445 (= res!10884 (balanced!48 (left!697 xs!625)))))

(declare-fun b!24444 () Bool)

(declare-fun res!10883 () Bool)

(assert (=> b!24444 (=> (not res!10883) (not e!12662))))

(assert (=> b!24444 (= res!10883 (<= (- (level!42 (left!697 xs!625)) (level!42 (right!700 xs!625))) 1))))

(declare-fun b!24446 () Bool)

(assert (=> b!24446 (= e!12662 (balanced!48 (right!700 xs!625)))))

(declare-fun d!13529 () Bool)

(declare-fun res!10881 () Bool)

(declare-fun e!12663 () Bool)

(assert (=> d!13529 (=> res!10881 e!12663)))

(assert (=> d!13529 (= res!10881 (not (is-CC!52 xs!625)))))

(assert (=> d!13529 (= (balanced!48 xs!625) e!12663)))

(declare-fun b!24443 () Bool)

(assert (=> b!24443 (= e!12663 e!12662)))

(declare-fun res!10882 () Bool)

(assert (=> b!24443 (=> (not res!10882) (not e!12662))))

(assert (=> b!24443 (= res!10882 (>= (- (level!42 (left!697 xs!625)) (level!42 (right!700 xs!625))) (- 1)))))

(assert (= (and d!13529 (not res!10881)) b!24443))

(assert (= (and b!24443 res!10882) b!24444))

(assert (= (and b!24444 res!10883) b!24445))

(assert (= (and b!24445 res!10884) b!24446))

(declare-fun m!25649 () Bool)

(assert (=> b!24445 m!25649))

(assert (=> b!24444 m!25635))

(assert (=> b!24444 m!25633))

(declare-fun m!25651 () Bool)

(assert (=> b!24446 m!25651))

(assert (=> b!24443 m!25635))

(assert (=> b!24443 m!25633))

(assert (=> b!24399 d!13529))

(declare-fun b!24449 () Bool)

(declare-fun res!10888 () Bool)

(declare-fun e!12664 () Bool)

(assert (=> b!24449 (=> (not res!10888) (not e!12664))))

(assert (=> b!24449 (= res!10888 (balanced!48 (left!697 ys!119)))))

(declare-fun b!24448 () Bool)

(declare-fun res!10887 () Bool)

(assert (=> b!24448 (=> (not res!10887) (not e!12664))))

(assert (=> b!24448 (= res!10887 (<= (- (level!42 (left!697 ys!119)) (level!42 (right!700 ys!119))) 1))))

(declare-fun b!24450 () Bool)

(assert (=> b!24450 (= e!12664 (balanced!48 (right!700 ys!119)))))

(declare-fun d!13531 () Bool)

(declare-fun res!10885 () Bool)

(declare-fun e!12665 () Bool)

(assert (=> d!13531 (=> res!10885 e!12665)))

(assert (=> d!13531 (= res!10885 (not (is-CC!52 ys!119)))))

(assert (=> d!13531 (= (balanced!48 ys!119) e!12665)))

(declare-fun b!24447 () Bool)

(assert (=> b!24447 (= e!12665 e!12664)))

(declare-fun res!10886 () Bool)

(assert (=> b!24447 (=> (not res!10886) (not e!12664))))

(assert (=> b!24447 (= res!10886 (>= (- (level!42 (left!697 ys!119)) (level!42 (right!700 ys!119))) (- 1)))))

(assert (= (and d!13531 (not res!10885)) b!24447))

(assert (= (and b!24447 res!10886) b!24448))

(assert (= (and b!24448 res!10887) b!24449))

(assert (= (and b!24449 res!10888) b!24450))

(declare-fun m!25653 () Bool)

(assert (=> b!24449 m!25653))

(assert (=> b!24448 m!25631))

(assert (=> b!24448 m!25629))

(declare-fun m!25655 () Bool)

(assert (=> b!24450 m!25655))

(assert (=> b!24447 m!25631))

(assert (=> b!24447 m!25629))

(assert (=> b!24398 d!13531))

(declare-fun b!24453 () Bool)

(declare-fun res!10891 () Bool)

(declare-fun e!12666 () Bool)

(assert (=> b!24453 (=> (not res!10891) (not e!12666))))

(assert (=> b!24453 (= res!10891 (concInv!47 (left!697 ys!119)))))

(declare-fun b!24451 () Bool)

(declare-fun e!12667 () Bool)

(assert (=> b!24451 (= e!12667 e!12666)))

(declare-fun res!10889 () Bool)

(assert (=> b!24451 (=> (not res!10889) (not e!12666))))

(assert (=> b!24451 (= res!10889 (not (isEmpty!310 (left!697 ys!119))))))

(declare-fun b!24452 () Bool)

(declare-fun res!10892 () Bool)

(assert (=> b!24452 (=> (not res!10892) (not e!12666))))

(assert (=> b!24452 (= res!10892 (not (isEmpty!310 (right!700 ys!119))))))

(declare-fun b!24454 () Bool)

(assert (=> b!24454 (= e!12666 (concInv!47 (right!700 ys!119)))))

(declare-fun d!13533 () Bool)

(declare-fun res!10890 () Bool)

(assert (=> d!13533 (=> res!10890 e!12667)))

(assert (=> d!13533 (= res!10890 (not (is-CC!52 ys!119)))))

(assert (=> d!13533 (= (concInv!47 ys!119) e!12667)))

(assert (= (and d!13533 (not res!10890)) b!24451))

(assert (= (and b!24451 res!10889) b!24452))

(assert (= (and b!24452 res!10892) b!24453))

(assert (= (and b!24453 res!10891) b!24454))

(declare-fun m!25657 () Bool)

(assert (=> b!24453 m!25657))

(declare-fun m!25659 () Bool)

(assert (=> b!24451 m!25659))

(declare-fun m!25661 () Bool)

(assert (=> b!24452 m!25661))

(declare-fun m!25663 () Bool)

(assert (=> b!24454 m!25663))

(assert (=> b!24401 d!13533))

(declare-fun b!24457 () Bool)

(declare-fun res!10895 () Bool)

(declare-fun e!12668 () Bool)

(assert (=> b!24457 (=> (not res!10895) (not e!12668))))

(assert (=> b!24457 (= res!10895 (concInv!47 (left!697 xs!625)))))

(declare-fun b!24455 () Bool)

(declare-fun e!12669 () Bool)

(assert (=> b!24455 (= e!12669 e!12668)))

(declare-fun res!10893 () Bool)

(assert (=> b!24455 (=> (not res!10893) (not e!12668))))

(assert (=> b!24455 (= res!10893 (not (isEmpty!310 (left!697 xs!625))))))

(declare-fun b!24456 () Bool)

(declare-fun res!10896 () Bool)

(assert (=> b!24456 (=> (not res!10896) (not e!12668))))

(assert (=> b!24456 (= res!10896 (not (isEmpty!310 (right!700 xs!625))))))

(declare-fun b!24458 () Bool)

(assert (=> b!24458 (= e!12668 (concInv!47 (right!700 xs!625)))))

(declare-fun d!13535 () Bool)

(declare-fun res!10894 () Bool)

(assert (=> d!13535 (=> res!10894 e!12669)))

(assert (=> d!13535 (= res!10894 (not (is-CC!52 xs!625)))))

(assert (=> d!13535 (= (concInv!47 xs!625) e!12669)))

(assert (= (and d!13535 (not res!10894)) b!24455))

(assert (= (and b!24455 res!10893) b!24456))

(assert (= (and b!24456 res!10896) b!24457))

(assert (= (and b!24457 res!10895) b!24458))

(declare-fun m!25665 () Bool)

(assert (=> b!24457 m!25665))

(declare-fun m!25667 () Bool)

(assert (=> b!24455 m!25667))

(declare-fun m!25669 () Bool)

(assert (=> b!24456 m!25669))

(declare-fun m!25671 () Bool)

(assert (=> b!24458 m!25671))

(assert (=> start!3754 d!13535))

(assert (=> b!24405 d!13521))

(assert (=> b!24405 d!13523))

(assert (=> b!24405 d!13525))

(declare-fun b!24461 () Bool)

(declare-fun res!10900 () Bool)

(declare-fun e!12670 () Bool)

(assert (=> b!24461 (=> (not res!10900) (not e!12670))))

(assert (=> b!24461 (= res!10900 (balanced!48 (left!697 res!5625)))))

(declare-fun b!24460 () Bool)

(declare-fun res!10899 () Bool)

(assert (=> b!24460 (=> (not res!10899) (not e!12670))))

(assert (=> b!24460 (= res!10899 (<= (- (level!42 (left!697 res!5625)) (level!42 (right!700 res!5625))) 1))))

(declare-fun b!24462 () Bool)

(assert (=> b!24462 (= e!12670 (balanced!48 (right!700 res!5625)))))

(declare-fun d!13537 () Bool)

(declare-fun res!10897 () Bool)

(declare-fun e!12671 () Bool)

(assert (=> d!13537 (=> res!10897 e!12671)))

(assert (=> d!13537 (= res!10897 (not (is-CC!52 res!5625)))))

(assert (=> d!13537 (= (balanced!48 res!5625) e!12671)))

(declare-fun b!24459 () Bool)

(assert (=> b!24459 (= e!12671 e!12670)))

(declare-fun res!10898 () Bool)

(assert (=> b!24459 (=> (not res!10898) (not e!12670))))

(assert (=> b!24459 (= res!10898 (>= (- (level!42 (left!697 res!5625)) (level!42 (right!700 res!5625))) (- 1)))))

(assert (= (and d!13537 (not res!10897)) b!24459))

(assert (= (and b!24459 res!10898) b!24460))

(assert (= (and b!24460 res!10899) b!24461))

(assert (= (and b!24461 res!10900) b!24462))

(declare-fun m!25673 () Bool)

(assert (=> b!24461 m!25673))

(assert (=> b!24460 m!25639))

(assert (=> b!24460 m!25637))

(declare-fun m!25675 () Bool)

(assert (=> b!24462 m!25675))

(assert (=> b!24459 m!25639))

(assert (=> b!24459 m!25637))

(assert (=> b!24409 d!13537))

(declare-fun b!24469 () Bool)

(declare-fun e!12674 () Bool)

(declare-fun tp!5290 () Bool)

(declare-fun tp!5291 () Bool)

(assert (=> b!24469 (= e!12674 (and tp!5290 tp!5291))))

(declare-fun b!24470 () Bool)

(assert (=> b!24470 (= e!12674 tp_is_empty!151)))

(assert (=> b!24410 (= tp!5281 e!12674)))

(assert (= (and b!24410 (is-CC!52 (left!697 res!5625))) b!24469))

(assert (= (and b!24410 (is-Single!52 (left!697 res!5625))) b!24470))

(declare-fun b!24471 () Bool)

(declare-fun e!12675 () Bool)

(declare-fun tp!5292 () Bool)

(declare-fun tp!5293 () Bool)

(assert (=> b!24471 (= e!12675 (and tp!5292 tp!5293))))

(declare-fun b!24472 () Bool)

(assert (=> b!24472 (= e!12675 tp_is_empty!151)))

(assert (=> b!24410 (= tp!5280 e!12675)))

(assert (= (and b!24410 (is-CC!52 (right!700 res!5625))) b!24471))

(assert (= (and b!24410 (is-Single!52 (right!700 res!5625))) b!24472))

(declare-fun b!24473 () Bool)

(declare-fun e!12676 () Bool)

(declare-fun tp!5294 () Bool)

(declare-fun tp!5295 () Bool)

(assert (=> b!24473 (= e!12676 (and tp!5294 tp!5295))))

(declare-fun b!24474 () Bool)

(assert (=> b!24474 (= e!12676 tp_is_empty!151)))

(assert (=> b!24402 (= tp!5283 e!12676)))

(assert (= (and b!24402 (is-CC!52 (left!697 xs!625))) b!24473))

(assert (= (and b!24402 (is-Single!52 (left!697 xs!625))) b!24474))

(declare-fun b!24475 () Bool)

(declare-fun e!12677 () Bool)

(declare-fun tp!5296 () Bool)

(declare-fun tp!5297 () Bool)

(assert (=> b!24475 (= e!12677 (and tp!5296 tp!5297))))

(declare-fun b!24476 () Bool)

(assert (=> b!24476 (= e!12677 tp_is_empty!151)))

(assert (=> b!24402 (= tp!5284 e!12677)))

(assert (= (and b!24402 (is-CC!52 (right!700 xs!625))) b!24475))

(assert (= (and b!24402 (is-Single!52 (right!700 xs!625))) b!24476))

(declare-fun b!24477 () Bool)

(declare-fun e!12678 () Bool)

(declare-fun tp!5298 () Bool)

(declare-fun tp!5299 () Bool)

(assert (=> b!24477 (= e!12678 (and tp!5298 tp!5299))))

(declare-fun b!24478 () Bool)

(assert (=> b!24478 (= e!12678 tp_is_empty!151)))

(assert (=> b!24404 (= tp!5285 e!12678)))

(assert (= (and b!24404 (is-CC!52 (left!697 ys!119))) b!24477))

(assert (= (and b!24404 (is-Single!52 (left!697 ys!119))) b!24478))

(declare-fun b!24479 () Bool)

(declare-fun e!12679 () Bool)

(declare-fun tp!5300 () Bool)

(declare-fun tp!5301 () Bool)

(assert (=> b!24479 (= e!12679 (and tp!5300 tp!5301))))

(declare-fun b!24480 () Bool)

(assert (=> b!24480 (= e!12679 tp_is_empty!151)))

(assert (=> b!24404 (= tp!5282 e!12679)))

(assert (= (and b!24404 (is-CC!52 (right!700 ys!119))) b!24479))

(assert (= (and b!24404 (is-Single!52 (right!700 ys!119))) b!24480))

(push 1)

(assert (not b!24422))

(assert (not b!24449))

(assert (not b!24432))

(assert (not b!24434))

(assert (not b!24469))

(assert (not b!24458))

(assert (not b!24460))

(assert (not b!24457))

(assert (not b!24473))

(assert (not d!13519))

(assert (not b!24451))

(assert (not b!24477))

(assert (not b!24443))

(assert (not b!24475))

(assert (not b!24445))

(assert (not b!24479))

(assert tp_is_empty!151)

(assert (not b!24453))

(assert (not b!24444))

(assert (not b!24471))

(assert (not b!24420))

(assert (not b!24452))

(assert (not b!24450))

(assert (not b!24448))

(assert (not b!24462))

(assert (not b!24455))

(assert (not b!24446))

(assert (not b!24454))

(assert (not b!24431))

(assert (not b!24433))

(assert (not b!24461))

(assert (not b!24459))

(assert (not b!24447))

(assert (not b!24418))

(assert (not b!24456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13539 () Bool)

(assert (=> d!13539 (= (isEmpty!310 (left!697 xs!625)) (= (left!697 xs!625) Empty!63))))

(assert (=> b!24455 d!13539))

(declare-fun d!13541 () Bool)

(assert (=> d!13541 (= (isEmpty!310 (right!700 ys!119)) (= (right!700 ys!119) Empty!63))))

(assert (=> b!24452 d!13541))

(declare-fun b!24483 () Bool)

(declare-fun res!10903 () Bool)

(declare-fun e!12680 () Bool)

(assert (=> b!24483 (=> (not res!10903) (not e!12680))))

(assert (=> b!24483 (= res!10903 (concInv!47 (left!697 (right!700 xs!625))))))

(declare-fun b!24481 () Bool)

(declare-fun e!12681 () Bool)

(assert (=> b!24481 (= e!12681 e!12680)))

(declare-fun res!10901 () Bool)

(assert (=> b!24481 (=> (not res!10901) (not e!12680))))

(assert (=> b!24481 (= res!10901 (not (isEmpty!310 (left!697 (right!700 xs!625)))))))

(declare-fun b!24482 () Bool)

(declare-fun res!10904 () Bool)

(assert (=> b!24482 (=> (not res!10904) (not e!12680))))

(assert (=> b!24482 (= res!10904 (not (isEmpty!310 (right!700 (right!700 xs!625)))))))

(declare-fun b!24484 () Bool)

(assert (=> b!24484 (= e!12680 (concInv!47 (right!700 (right!700 xs!625))))))

(declare-fun d!13543 () Bool)

(declare-fun res!10902 () Bool)

(assert (=> d!13543 (=> res!10902 e!12681)))

(assert (=> d!13543 (= res!10902 (not (is-CC!52 (right!700 xs!625))))))

(assert (=> d!13543 (= (concInv!47 (right!700 xs!625)) e!12681)))

(assert (= (and d!13543 (not res!10902)) b!24481))

(assert (= (and b!24481 res!10901) b!24482))

(assert (= (and b!24482 res!10904) b!24483))

(assert (= (and b!24483 res!10903) b!24484))

(declare-fun m!25677 () Bool)

(assert (=> b!24483 m!25677))

(declare-fun m!25679 () Bool)

(assert (=> b!24481 m!25679))

(declare-fun m!25681 () Bool)

(assert (=> b!24482 m!25681))

(declare-fun m!25683 () Bool)

(assert (=> b!24484 m!25683))

(assert (=> b!24458 d!13543))

(declare-fun b!24487 () Bool)

(declare-fun res!10908 () Bool)

(declare-fun e!12682 () Bool)

(assert (=> b!24487 (=> (not res!10908) (not e!12682))))

(assert (=> b!24487 (= res!10908 (balanced!48 (left!697 (left!697 ys!119))))))

(declare-fun b!24486 () Bool)

(declare-fun res!10907 () Bool)

(assert (=> b!24486 (=> (not res!10907) (not e!12682))))

(assert (=> b!24486 (= res!10907 (<= (- (level!42 (left!697 (left!697 ys!119))) (level!42 (right!700 (left!697 ys!119)))) 1))))

(declare-fun b!24488 () Bool)

(assert (=> b!24488 (= e!12682 (balanced!48 (right!700 (left!697 ys!119))))))

(declare-fun d!13545 () Bool)

(declare-fun res!10905 () Bool)

(declare-fun e!12683 () Bool)

(assert (=> d!13545 (=> res!10905 e!12683)))

(assert (=> d!13545 (= res!10905 (not (is-CC!52 (left!697 ys!119))))))

(assert (=> d!13545 (= (balanced!48 (left!697 ys!119)) e!12683)))

(declare-fun b!24485 () Bool)

(assert (=> b!24485 (= e!12683 e!12682)))

(declare-fun res!10906 () Bool)

(assert (=> b!24485 (=> (not res!10906) (not e!12682))))

(assert (=> b!24485 (= res!10906 (>= (- (level!42 (left!697 (left!697 ys!119))) (level!42 (right!700 (left!697 ys!119)))) (- 1)))))

(assert (= (and d!13545 (not res!10905)) b!24485))

(assert (= (and b!24485 res!10906) b!24486))

(assert (= (and b!24486 res!10907) b!24487))

(assert (= (and b!24487 res!10908) b!24488))

(declare-fun m!25685 () Bool)

(assert (=> b!24487 m!25685))

(declare-fun m!25687 () Bool)

(assert (=> b!24486 m!25687))

(declare-fun m!25689 () Bool)

(assert (=> b!24486 m!25689))

(declare-fun m!25691 () Bool)

(assert (=> b!24488 m!25691))

(assert (=> b!24485 m!25687))

(assert (=> b!24485 m!25689))

(assert (=> b!24449 d!13545))

(declare-fun b!24491 () Bool)

(declare-fun res!10911 () Bool)

(declare-fun e!12684 () Bool)

(assert (=> b!24491 (=> (not res!10911) (not e!12684))))

(assert (=> b!24491 (= res!10911 (concInv!47 (left!697 (left!697 res!5625))))))

(declare-fun b!24489 () Bool)

(declare-fun e!12685 () Bool)

(assert (=> b!24489 (= e!12685 e!12684)))

(declare-fun res!10909 () Bool)

(assert (=> b!24489 (=> (not res!10909) (not e!12684))))

(assert (=> b!24489 (= res!10909 (not (isEmpty!310 (left!697 (left!697 res!5625)))))))

(declare-fun b!24490 () Bool)

(declare-fun res!10912 () Bool)

(assert (=> b!24490 (=> (not res!10912) (not e!12684))))

(assert (=> b!24490 (= res!10912 (not (isEmpty!310 (right!700 (left!697 res!5625)))))))

(declare-fun b!24492 () Bool)

(assert (=> b!24492 (= e!12684 (concInv!47 (right!700 (left!697 res!5625))))))

(declare-fun d!13547 () Bool)

(declare-fun res!10910 () Bool)

(assert (=> d!13547 (=> res!10910 e!12685)))

(assert (=> d!13547 (= res!10910 (not (is-CC!52 (left!697 res!5625))))))

(assert (=> d!13547 (= (concInv!47 (left!697 res!5625)) e!12685)))

(assert (= (and d!13547 (not res!10910)) b!24489))

(assert (= (and b!24489 res!10909) b!24490))

(assert (= (and b!24490 res!10912) b!24491))

(assert (= (and b!24491 res!10911) b!24492))

(declare-fun m!25693 () Bool)

(assert (=> b!24491 m!25693))

(declare-fun m!25695 () Bool)

(assert (=> b!24489 m!25695))

(declare-fun m!25697 () Bool)

(assert (=> b!24490 m!25697))

(declare-fun m!25699 () Bool)

(assert (=> b!24492 m!25699))

(assert (=> b!24433 d!13547))

(declare-fun b!24494 () Bool)

(declare-fun e!12686 () Int)

(declare-fun lt!3788 () Int)

(declare-fun lt!3787 () Int)

(assert (=> b!24494 (= e!12686 (+ 1 (ite (>= lt!3788 lt!3787) lt!3788 lt!3787)))))

(assert (=> b!24494 (= lt!3787 (level!42 (right!700 (left!697 xs!625))))))

(assert (=> b!24494 (= lt!3788 (level!42 (left!697 (left!697 xs!625))))))

(declare-fun d!13549 () Bool)

(declare-fun lt!3786 () Int)

(assert (=> d!13549 (>= lt!3786 0)))

(assert (=> d!13549 (= lt!3786 e!12686)))

(declare-fun c!5644 () Bool)

(assert (=> d!13549 (= c!5644 (or (is-Empty!63 (left!697 xs!625)) (is-Single!52 (left!697 xs!625))))))

(assert (=> d!13549 (= (level!42 (left!697 xs!625)) lt!3786)))

(declare-fun b!24493 () Bool)

(assert (=> b!24493 (= e!12686 0)))

(assert (= (and d!13549 c!5644) b!24493))

(assert (= (and d!13549 (not c!5644)) b!24494))

(declare-fun m!25701 () Bool)

(assert (=> b!24494 m!25701))

(declare-fun m!25703 () Bool)

(assert (=> b!24494 m!25703))

(assert (=> b!24444 d!13549))

(declare-fun b!24496 () Bool)

(declare-fun e!12687 () Int)

(declare-fun lt!3791 () Int)

(declare-fun lt!3790 () Int)

(assert (=> b!24496 (= e!12687 (+ 1 (ite (>= lt!3791 lt!3790) lt!3791 lt!3790)))))

(assert (=> b!24496 (= lt!3790 (level!42 (right!700 (right!700 xs!625))))))

(assert (=> b!24496 (= lt!3791 (level!42 (left!697 (right!700 xs!625))))))

(declare-fun d!13551 () Bool)

(declare-fun lt!3789 () Int)

(assert (=> d!13551 (>= lt!3789 0)))

(assert (=> d!13551 (= lt!3789 e!12687)))

(declare-fun c!5645 () Bool)

(assert (=> d!13551 (= c!5645 (or (is-Empty!63 (right!700 xs!625)) (is-Single!52 (right!700 xs!625))))))

(assert (=> d!13551 (= (level!42 (right!700 xs!625)) lt!3789)))

(declare-fun b!24495 () Bool)

(assert (=> b!24495 (= e!12687 0)))

(assert (= (and d!13551 c!5645) b!24495))

(assert (= (and d!13551 (not c!5645)) b!24496))

(declare-fun m!25705 () Bool)

(assert (=> b!24496 m!25705))

(declare-fun m!25707 () Bool)

(assert (=> b!24496 m!25707))

(assert (=> b!24444 d!13551))

(declare-fun b!24499 () Bool)

(declare-fun res!10915 () Bool)

(declare-fun e!12688 () Bool)

(assert (=> b!24499 (=> (not res!10915) (not e!12688))))

(assert (=> b!24499 (= res!10915 (concInv!47 (left!697 (left!697 xs!625))))))

(declare-fun b!24497 () Bool)

(declare-fun e!12689 () Bool)

(assert (=> b!24497 (= e!12689 e!12688)))

(declare-fun res!10913 () Bool)

(assert (=> b!24497 (=> (not res!10913) (not e!12688))))

(assert (=> b!24497 (= res!10913 (not (isEmpty!310 (left!697 (left!697 xs!625)))))))

(declare-fun b!24498 () Bool)

(declare-fun res!10916 () Bool)

(assert (=> b!24498 (=> (not res!10916) (not e!12688))))

(assert (=> b!24498 (= res!10916 (not (isEmpty!310 (right!700 (left!697 xs!625)))))))

(declare-fun b!24500 () Bool)

(assert (=> b!24500 (= e!12688 (concInv!47 (right!700 (left!697 xs!625))))))

(declare-fun d!13553 () Bool)

(declare-fun res!10914 () Bool)

(assert (=> d!13553 (=> res!10914 e!12689)))

(assert (=> d!13553 (= res!10914 (not (is-CC!52 (left!697 xs!625))))))

(assert (=> d!13553 (= (concInv!47 (left!697 xs!625)) e!12689)))

(assert (= (and d!13553 (not res!10914)) b!24497))

(assert (= (and b!24497 res!10913) b!24498))

(assert (= (and b!24498 res!10916) b!24499))

(assert (= (and b!24499 res!10915) b!24500))

(declare-fun m!25709 () Bool)

(assert (=> b!24499 m!25709))

(declare-fun m!25711 () Bool)

(assert (=> b!24497 m!25711))

(declare-fun m!25713 () Bool)

(assert (=> b!24498 m!25713))

(declare-fun m!25715 () Bool)

(assert (=> b!24500 m!25715))

(assert (=> b!24457 d!13553))

(declare-fun b!24503 () Bool)

(declare-fun res!10919 () Bool)

(declare-fun e!12690 () Bool)

(assert (=> b!24503 (=> (not res!10919) (not e!12690))))

(assert (=> b!24503 (= res!10919 (concInv!47 (left!697 (left!697 ys!119))))))

(declare-fun b!24501 () Bool)

(declare-fun e!12691 () Bool)

(assert (=> b!24501 (= e!12691 e!12690)))

(declare-fun res!10917 () Bool)

(assert (=> b!24501 (=> (not res!10917) (not e!12690))))

(assert (=> b!24501 (= res!10917 (not (isEmpty!310 (left!697 (left!697 ys!119)))))))

(declare-fun b!24502 () Bool)

(declare-fun res!10920 () Bool)

(assert (=> b!24502 (=> (not res!10920) (not e!12690))))

(assert (=> b!24502 (= res!10920 (not (isEmpty!310 (right!700 (left!697 ys!119)))))))

(declare-fun b!24504 () Bool)

(assert (=> b!24504 (= e!12690 (concInv!47 (right!700 (left!697 ys!119))))))

(declare-fun d!13555 () Bool)

(declare-fun res!10918 () Bool)

(assert (=> d!13555 (=> res!10918 e!12691)))

(assert (=> d!13555 (= res!10918 (not (is-CC!52 (left!697 ys!119))))))

(assert (=> d!13555 (= (concInv!47 (left!697 ys!119)) e!12691)))

(assert (= (and d!13555 (not res!10918)) b!24501))

(assert (= (and b!24501 res!10917) b!24502))

(assert (= (and b!24502 res!10920) b!24503))

(assert (= (and b!24503 res!10919) b!24504))

(declare-fun m!25717 () Bool)

(assert (=> b!24503 m!25717))

(declare-fun m!25719 () Bool)

(assert (=> b!24501 m!25719))

(declare-fun m!25721 () Bool)

(assert (=> b!24502 m!25721))

(declare-fun m!25723 () Bool)

(assert (=> b!24504 m!25723))

(assert (=> b!24453 d!13555))

(declare-fun b!24507 () Bool)

(declare-fun res!10924 () Bool)

(declare-fun e!12692 () Bool)

(assert (=> b!24507 (=> (not res!10924) (not e!12692))))

(assert (=> b!24507 (= res!10924 (balanced!48 (left!697 (right!700 res!5625))))))

(declare-fun b!24506 () Bool)

(declare-fun res!10923 () Bool)

(assert (=> b!24506 (=> (not res!10923) (not e!12692))))

(assert (=> b!24506 (= res!10923 (<= (- (level!42 (left!697 (right!700 res!5625))) (level!42 (right!700 (right!700 res!5625)))) 1))))

(declare-fun b!24508 () Bool)

(assert (=> b!24508 (= e!12692 (balanced!48 (right!700 (right!700 res!5625))))))

(declare-fun d!13557 () Bool)

(declare-fun res!10921 () Bool)

(declare-fun e!12693 () Bool)

(assert (=> d!13557 (=> res!10921 e!12693)))

(assert (=> d!13557 (= res!10921 (not (is-CC!52 (right!700 res!5625))))))

(assert (=> d!13557 (= (balanced!48 (right!700 res!5625)) e!12693)))

(declare-fun b!24505 () Bool)

(assert (=> b!24505 (= e!12693 e!12692)))

(declare-fun res!10922 () Bool)

(assert (=> b!24505 (=> (not res!10922) (not e!12692))))

(assert (=> b!24505 (= res!10922 (>= (- (level!42 (left!697 (right!700 res!5625))) (level!42 (right!700 (right!700 res!5625)))) (- 1)))))

(assert (= (and d!13557 (not res!10921)) b!24505))

(assert (= (and b!24505 res!10922) b!24506))

(assert (= (and b!24506 res!10923) b!24507))

(assert (= (and b!24507 res!10924) b!24508))

(declare-fun m!25725 () Bool)

(assert (=> b!24507 m!25725))

(declare-fun m!25727 () Bool)

(assert (=> b!24506 m!25727))

(declare-fun m!25729 () Bool)

(assert (=> b!24506 m!25729))

(declare-fun m!25731 () Bool)

(assert (=> b!24508 m!25731))

(assert (=> b!24505 m!25727))

(assert (=> b!24505 m!25729))

(assert (=> b!24462 d!13557))

(declare-fun d!13559 () Bool)

(declare-fun lt!3794 () List!355)

(declare-fun size!261 (List!355) Int)

(declare-fun size!262 (Conc!53) Int)

(assert (=> d!13559 (= (size!261 lt!3794) (size!262 ys!119))))

(declare-fun e!12698 () List!355)

(assert (=> d!13559 (= lt!3794 e!12698)))

(declare-fun c!5650 () Bool)

(assert (=> d!13559 (= c!5650 (is-Empty!63 ys!119))))

(assert (=> d!13559 (= (toList!110 ys!119) lt!3794)))

(declare-fun b!24518 () Bool)

(declare-fun e!12699 () List!355)

(assert (=> b!24518 (= e!12698 e!12699)))

(declare-fun c!5651 () Bool)

(assert (=> b!24518 (= c!5651 (is-Single!52 ys!119))))

(declare-fun b!24517 () Bool)

(assert (=> b!24517 (= e!12698 Nil!350)))

(declare-fun b!24520 () Bool)

(assert (=> b!24520 (= e!12699 (++!35 (toList!110 (left!697 ys!119)) (toList!110 (right!700 ys!119))))))

(declare-fun b!24519 () Bool)

(assert (=> b!24519 (= e!12699 (Cons!349 (x!8874 ys!119) Nil!350))))

(assert (= (and b!24518 c!5651) b!24519))

(assert (= (and b!24518 (not c!5651)) b!24520))

(assert (= (and d!13559 c!5650) b!24517))

(assert (= (and d!13559 (not c!5650)) b!24518))

(declare-fun m!25733 () Bool)

(assert (=> d!13559 m!25733))

(declare-fun m!25735 () Bool)

(assert (=> d!13559 m!25735))

(declare-fun m!25737 () Bool)

(assert (=> b!24520 m!25737))

(declare-fun m!25739 () Bool)

(assert (=> b!24520 m!25739))

(assert (=> b!24520 m!25737))

(assert (=> b!24520 m!25739))

(declare-fun m!25741 () Bool)

(assert (=> b!24520 m!25741))

(assert (=> d!13519 d!13559))

(declare-fun d!13561 () Bool)

(declare-fun lt!3795 () List!355)

(assert (=> d!13561 (= (size!261 lt!3795) (size!262 xs!625))))

(declare-fun e!12700 () List!355)

(assert (=> d!13561 (= lt!3795 e!12700)))

(declare-fun c!5652 () Bool)

(assert (=> d!13561 (= c!5652 (is-Empty!63 xs!625))))

(assert (=> d!13561 (= (toList!110 xs!625) lt!3795)))

(declare-fun b!24522 () Bool)

(declare-fun e!12701 () List!355)

(assert (=> b!24522 (= e!12700 e!12701)))

(declare-fun c!5653 () Bool)

(assert (=> b!24522 (= c!5653 (is-Single!52 xs!625))))

(declare-fun b!24521 () Bool)

(assert (=> b!24521 (= e!12700 Nil!350)))

(declare-fun b!24524 () Bool)

(assert (=> b!24524 (= e!12701 (++!35 (toList!110 (left!697 xs!625)) (toList!110 (right!700 xs!625))))))

(declare-fun b!24523 () Bool)

(assert (=> b!24523 (= e!12701 (Cons!349 (x!8874 xs!625) Nil!350))))

(assert (= (and b!24522 c!5653) b!24523))

(assert (= (and b!24522 (not c!5653)) b!24524))

(assert (= (and d!13561 c!5652) b!24521))

(assert (= (and d!13561 (not c!5652)) b!24522))

(declare-fun m!25743 () Bool)

(assert (=> d!13561 m!25743))

(declare-fun m!25745 () Bool)

(assert (=> d!13561 m!25745))

(declare-fun m!25747 () Bool)

(assert (=> b!24524 m!25747))

(declare-fun m!25749 () Bool)

(assert (=> b!24524 m!25749))

(assert (=> b!24524 m!25747))

(assert (=> b!24524 m!25749))

(declare-fun m!25751 () Bool)

(assert (=> b!24524 m!25751))

(assert (=> d!13519 d!13561))

(declare-fun d!13563 () Bool)

(declare-fun e!12707 () Bool)

(assert (=> d!13563 e!12707))

(declare-fun res!10931 () Bool)

(assert (=> d!13563 (=> (not res!10931) (not e!12707))))

(declare-fun lt!3798 () List!355)

(declare-fun content!66 (List!355) (Set T!1807))

(assert (=> d!13563 (= res!10931 (= (content!66 lt!3798) (union (content!66 (toList!110 xs!625)) (content!66 (toList!110 ys!119)))))))

(declare-fun e!12706 () List!355)

(assert (=> d!13563 (= lt!3798 e!12706)))

(declare-fun c!5656 () Bool)

(assert (=> d!13563 (= c!5656 (is-Nil!350 (toList!110 xs!625)))))

(assert (=> d!13563 (= (++!35 (toList!110 xs!625) (toList!110 ys!119)) lt!3798)))

(declare-fun b!24534 () Bool)

(assert (=> b!24534 (= e!12706 (Cons!349 (h!266 (toList!110 xs!625)) (++!35 (t!4369 (toList!110 xs!625)) (toList!110 ys!119))))))

(declare-fun b!24536 () Bool)

(assert (=> b!24536 (= e!12707 (or (not (= (toList!110 ys!119) Nil!350)) (= lt!3798 (toList!110 xs!625))))))

(declare-fun b!24535 () Bool)

(declare-fun res!10932 () Bool)

(assert (=> b!24535 (=> (not res!10932) (not e!12707))))

(assert (=> b!24535 (= res!10932 (= (size!261 lt!3798) (+ (size!261 (toList!110 xs!625)) (size!261 (toList!110 ys!119)))))))

(declare-fun b!24533 () Bool)

(assert (=> b!24533 (= e!12706 (toList!110 ys!119))))

(assert (= (and d!13563 c!5656) b!24533))

(assert (= (and d!13563 (not c!5656)) b!24534))

(assert (= (and d!13563 res!10931) b!24535))

(assert (= (and b!24535 res!10932) b!24536))

(declare-fun m!25753 () Bool)

(assert (=> d!13563 m!25753))

(assert (=> d!13563 m!25625))

(declare-fun m!25755 () Bool)

(assert (=> d!13563 m!25755))

(assert (=> d!13563 m!25621))

(declare-fun m!25757 () Bool)

(assert (=> d!13563 m!25757))

(assert (=> b!24534 m!25621))

(declare-fun m!25759 () Bool)

(assert (=> b!24534 m!25759))

(declare-fun m!25761 () Bool)

(assert (=> b!24535 m!25761))

(assert (=> b!24535 m!25625))

(declare-fun m!25763 () Bool)

(assert (=> b!24535 m!25763))

(assert (=> b!24535 m!25621))

(declare-fun m!25765 () Bool)

(assert (=> b!24535 m!25765))

(assert (=> d!13519 d!13563))

(declare-fun d!13565 () Bool)

(declare-fun lt!3799 () List!355)

(assert (=> d!13565 (= (size!261 lt!3799) (size!262 res!5625))))

(declare-fun e!12708 () List!355)

(assert (=> d!13565 (= lt!3799 e!12708)))

(declare-fun c!5657 () Bool)

(assert (=> d!13565 (= c!5657 (is-Empty!63 res!5625))))

(assert (=> d!13565 (= (toList!110 res!5625) lt!3799)))

(declare-fun b!24538 () Bool)

(declare-fun e!12709 () List!355)

(assert (=> b!24538 (= e!12708 e!12709)))

(declare-fun c!5658 () Bool)

(assert (=> b!24538 (= c!5658 (is-Single!52 res!5625))))

(declare-fun b!24537 () Bool)

(assert (=> b!24537 (= e!12708 Nil!350)))

(declare-fun b!24540 () Bool)

(assert (=> b!24540 (= e!12709 (++!35 (toList!110 (left!697 res!5625)) (toList!110 (right!700 res!5625))))))

(declare-fun b!24539 () Bool)

(assert (=> b!24539 (= e!12709 (Cons!349 (x!8874 res!5625) Nil!350))))

(assert (= (and b!24538 c!5658) b!24539))

(assert (= (and b!24538 (not c!5658)) b!24540))

(assert (= (and d!13565 c!5657) b!24537))

(assert (= (and d!13565 (not c!5657)) b!24538))

(declare-fun m!25767 () Bool)

(assert (=> d!13565 m!25767))

(declare-fun m!25769 () Bool)

(assert (=> d!13565 m!25769))

(declare-fun m!25771 () Bool)

(assert (=> b!24540 m!25771))

(declare-fun m!25773 () Bool)

(assert (=> b!24540 m!25773))

(assert (=> b!24540 m!25771))

(assert (=> b!24540 m!25773))

(declare-fun m!25775 () Bool)

(assert (=> b!24540 m!25775))

(assert (=> d!13519 d!13565))

(declare-fun d!13567 () Bool)

(assert (=> d!13567 (= (isEmpty!310 (right!700 res!5625)) (= (right!700 res!5625) Empty!63))))

(assert (=> b!24432 d!13567))

(declare-fun b!24542 () Bool)

(declare-fun e!12710 () Int)

(declare-fun lt!3802 () Int)

(declare-fun lt!3801 () Int)

(assert (=> b!24542 (= e!12710 (+ 1 (ite (>= lt!3802 lt!3801) lt!3802 lt!3801)))))

(assert (=> b!24542 (= lt!3801 (level!42 (right!700 (right!700 res!5625))))))

(assert (=> b!24542 (= lt!3802 (level!42 (left!697 (right!700 res!5625))))))

(declare-fun d!13569 () Bool)

(declare-fun lt!3800 () Int)

(assert (=> d!13569 (>= lt!3800 0)))

(assert (=> d!13569 (= lt!3800 e!12710)))

(declare-fun c!5659 () Bool)

(assert (=> d!13569 (= c!5659 (or (is-Empty!63 (right!700 res!5625)) (is-Single!52 (right!700 res!5625))))))

(assert (=> d!13569 (= (level!42 (right!700 res!5625)) lt!3800)))

(declare-fun b!24541 () Bool)

(assert (=> b!24541 (= e!12710 0)))

(assert (= (and d!13569 c!5659) b!24541))

(assert (= (and d!13569 (not c!5659)) b!24542))

(assert (=> b!24542 m!25729))

(assert (=> b!24542 m!25727))

(assert (=> b!24422 d!13569))

(declare-fun b!24544 () Bool)

(declare-fun e!12711 () Int)

(declare-fun lt!3805 () Int)

(declare-fun lt!3804 () Int)

(assert (=> b!24544 (= e!12711 (+ 1 (ite (>= lt!3805 lt!3804) lt!3805 lt!3804)))))

(assert (=> b!24544 (= lt!3804 (level!42 (right!700 (left!697 res!5625))))))

(assert (=> b!24544 (= lt!3805 (level!42 (left!697 (left!697 res!5625))))))

(declare-fun d!13571 () Bool)

(declare-fun lt!3803 () Int)

(assert (=> d!13571 (>= lt!3803 0)))

(assert (=> d!13571 (= lt!3803 e!12711)))

(declare-fun c!5660 () Bool)

(assert (=> d!13571 (= c!5660 (or (is-Empty!63 (left!697 res!5625)) (is-Single!52 (left!697 res!5625))))))

(assert (=> d!13571 (= (level!42 (left!697 res!5625)) lt!3803)))

(declare-fun b!24543 () Bool)

(assert (=> b!24543 (= e!12711 0)))

(assert (= (and d!13571 c!5660) b!24543))

(assert (= (and d!13571 (not c!5660)) b!24544))

(declare-fun m!25777 () Bool)

(assert (=> b!24544 m!25777))

(declare-fun m!25779 () Bool)

(assert (=> b!24544 m!25779))

(assert (=> b!24422 d!13571))

(declare-fun b!24546 () Bool)

(declare-fun e!12712 () Int)

(declare-fun lt!3808 () Int)

(declare-fun lt!3807 () Int)

(assert (=> b!24546 (= e!12712 (+ 1 (ite (>= lt!3808 lt!3807) lt!3808 lt!3807)))))

(assert (=> b!24546 (= lt!3807 (level!42 (right!700 (right!700 ys!119))))))

(assert (=> b!24546 (= lt!3808 (level!42 (left!697 (right!700 ys!119))))))

(declare-fun d!13573 () Bool)

(declare-fun lt!3806 () Int)

(assert (=> d!13573 (>= lt!3806 0)))

(assert (=> d!13573 (= lt!3806 e!12712)))

(declare-fun c!5661 () Bool)

(assert (=> d!13573 (= c!5661 (or (is-Empty!63 (right!700 ys!119)) (is-Single!52 (right!700 ys!119))))))

(assert (=> d!13573 (= (level!42 (right!700 ys!119)) lt!3806)))

(declare-fun b!24545 () Bool)

(assert (=> b!24545 (= e!12712 0)))

(assert (= (and d!13573 c!5661) b!24545))

(assert (= (and d!13573 (not c!5661)) b!24546))

(declare-fun m!25781 () Bool)

(assert (=> b!24546 m!25781))

(declare-fun m!25783 () Bool)

(assert (=> b!24546 m!25783))

(assert (=> b!24418 d!13573))

(declare-fun b!24548 () Bool)

(declare-fun e!12713 () Int)

(declare-fun lt!3811 () Int)

(declare-fun lt!3810 () Int)

(assert (=> b!24548 (= e!12713 (+ 1 (ite (>= lt!3811 lt!3810) lt!3811 lt!3810)))))

(assert (=> b!24548 (= lt!3810 (level!42 (right!700 (left!697 ys!119))))))

(assert (=> b!24548 (= lt!3811 (level!42 (left!697 (left!697 ys!119))))))

(declare-fun d!13575 () Bool)

(declare-fun lt!3809 () Int)

(assert (=> d!13575 (>= lt!3809 0)))

(assert (=> d!13575 (= lt!3809 e!12713)))

(declare-fun c!5662 () Bool)

(assert (=> d!13575 (= c!5662 (or (is-Empty!63 (left!697 ys!119)) (is-Single!52 (left!697 ys!119))))))

(assert (=> d!13575 (= (level!42 (left!697 ys!119)) lt!3809)))

(declare-fun b!24547 () Bool)

(assert (=> b!24547 (= e!12713 0)))

(assert (= (and d!13575 c!5662) b!24547))

(assert (= (and d!13575 (not c!5662)) b!24548))

(assert (=> b!24548 m!25689))

(assert (=> b!24548 m!25687))

(assert (=> b!24418 d!13575))

(assert (=> b!24443 d!13549))

(assert (=> b!24443 d!13551))

(declare-fun d!13577 () Bool)

(assert (=> d!13577 (= (isEmpty!310 (left!697 res!5625)) (= (left!697 res!5625) Empty!63))))

(assert (=> b!24431 d!13577))

(declare-fun d!13579 () Bool)

(assert (=> d!13579 (= (isEmpty!310 (left!697 ys!119)) (= (left!697 ys!119) Empty!63))))

(assert (=> b!24451 d!13579))

(assert (=> b!24448 d!13575))

(assert (=> b!24448 d!13573))

(assert (=> b!24460 d!13571))

(assert (=> b!24460 d!13569))

(assert (=> b!24420 d!13551))

(assert (=> b!24420 d!13549))

(declare-fun b!24551 () Bool)

(declare-fun res!10936 () Bool)

(declare-fun e!12714 () Bool)

(assert (=> b!24551 (=> (not res!10936) (not e!12714))))

(assert (=> b!24551 (= res!10936 (balanced!48 (left!697 (left!697 res!5625))))))

(declare-fun b!24550 () Bool)

(declare-fun res!10935 () Bool)

(assert (=> b!24550 (=> (not res!10935) (not e!12714))))

(assert (=> b!24550 (= res!10935 (<= (- (level!42 (left!697 (left!697 res!5625))) (level!42 (right!700 (left!697 res!5625)))) 1))))

(declare-fun b!24552 () Bool)

(assert (=> b!24552 (= e!12714 (balanced!48 (right!700 (left!697 res!5625))))))

(declare-fun d!13581 () Bool)

(declare-fun res!10933 () Bool)

(declare-fun e!12715 () Bool)

(assert (=> d!13581 (=> res!10933 e!12715)))

(assert (=> d!13581 (= res!10933 (not (is-CC!52 (left!697 res!5625))))))

(assert (=> d!13581 (= (balanced!48 (left!697 res!5625)) e!12715)))

(declare-fun b!24549 () Bool)

(assert (=> b!24549 (= e!12715 e!12714)))

(declare-fun res!10934 () Bool)

(assert (=> b!24549 (=> (not res!10934) (not e!12714))))

(assert (=> b!24549 (= res!10934 (>= (- (level!42 (left!697 (left!697 res!5625))) (level!42 (right!700 (left!697 res!5625)))) (- 1)))))

(assert (= (and d!13581 (not res!10933)) b!24549))

(assert (= (and b!24549 res!10934) b!24550))

(assert (= (and b!24550 res!10935) b!24551))

(assert (= (and b!24551 res!10936) b!24552))

(declare-fun m!25785 () Bool)

(assert (=> b!24551 m!25785))

(assert (=> b!24550 m!25779))

(assert (=> b!24550 m!25777))

(declare-fun m!25787 () Bool)

(assert (=> b!24552 m!25787))

(assert (=> b!24549 m!25779))

(assert (=> b!24549 m!25777))

(assert (=> b!24461 d!13581))

(declare-fun b!24555 () Bool)

(declare-fun res!10939 () Bool)

(declare-fun e!12716 () Bool)

(assert (=> b!24555 (=> (not res!10939) (not e!12716))))

(assert (=> b!24555 (= res!10939 (concInv!47 (left!697 (right!700 ys!119))))))

(declare-fun b!24553 () Bool)

(declare-fun e!12717 () Bool)

(assert (=> b!24553 (= e!12717 e!12716)))

(declare-fun res!10937 () Bool)

(assert (=> b!24553 (=> (not res!10937) (not e!12716))))

(assert (=> b!24553 (= res!10937 (not (isEmpty!310 (left!697 (right!700 ys!119)))))))

(declare-fun b!24554 () Bool)

(declare-fun res!10940 () Bool)

(assert (=> b!24554 (=> (not res!10940) (not e!12716))))

(assert (=> b!24554 (= res!10940 (not (isEmpty!310 (right!700 (right!700 ys!119)))))))

(declare-fun b!24556 () Bool)

(assert (=> b!24556 (= e!12716 (concInv!47 (right!700 (right!700 ys!119))))))

(declare-fun d!13583 () Bool)

(declare-fun res!10938 () Bool)

(assert (=> d!13583 (=> res!10938 e!12717)))

(assert (=> d!13583 (= res!10938 (not (is-CC!52 (right!700 ys!119))))))

(assert (=> d!13583 (= (concInv!47 (right!700 ys!119)) e!12717)))

(assert (= (and d!13583 (not res!10938)) b!24553))

(assert (= (and b!24553 res!10937) b!24554))

(assert (= (and b!24554 res!10940) b!24555))

(assert (= (and b!24555 res!10939) b!24556))

(declare-fun m!25789 () Bool)

(assert (=> b!24555 m!25789))

(declare-fun m!25791 () Bool)

(assert (=> b!24553 m!25791))

(declare-fun m!25793 () Bool)

(assert (=> b!24554 m!25793))

(declare-fun m!25795 () Bool)

(assert (=> b!24556 m!25795))

(assert (=> b!24454 d!13583))

(declare-fun b!24559 () Bool)

(declare-fun res!10944 () Bool)

(declare-fun e!12718 () Bool)

(assert (=> b!24559 (=> (not res!10944) (not e!12718))))

(assert (=> b!24559 (= res!10944 (balanced!48 (left!697 (right!700 xs!625))))))

(declare-fun b!24558 () Bool)

(declare-fun res!10943 () Bool)

(assert (=> b!24558 (=> (not res!10943) (not e!12718))))

(assert (=> b!24558 (= res!10943 (<= (- (level!42 (left!697 (right!700 xs!625))) (level!42 (right!700 (right!700 xs!625)))) 1))))

(declare-fun b!24560 () Bool)

(assert (=> b!24560 (= e!12718 (balanced!48 (right!700 (right!700 xs!625))))))

(declare-fun d!13585 () Bool)

(declare-fun res!10941 () Bool)

(declare-fun e!12719 () Bool)

(assert (=> d!13585 (=> res!10941 e!12719)))

(assert (=> d!13585 (= res!10941 (not (is-CC!52 (right!700 xs!625))))))

(assert (=> d!13585 (= (balanced!48 (right!700 xs!625)) e!12719)))

(declare-fun b!24557 () Bool)

(assert (=> b!24557 (= e!12719 e!12718)))

(declare-fun res!10942 () Bool)

(assert (=> b!24557 (=> (not res!10942) (not e!12718))))

(assert (=> b!24557 (= res!10942 (>= (- (level!42 (left!697 (right!700 xs!625))) (level!42 (right!700 (right!700 xs!625)))) (- 1)))))

(assert (= (and d!13585 (not res!10941)) b!24557))

(assert (= (and b!24557 res!10942) b!24558))

(assert (= (and b!24558 res!10943) b!24559))

(assert (= (and b!24559 res!10944) b!24560))

(declare-fun m!25797 () Bool)

(assert (=> b!24559 m!25797))

(assert (=> b!24558 m!25707))

(assert (=> b!24558 m!25705))

(declare-fun m!25799 () Bool)

(assert (=> b!24560 m!25799))

(assert (=> b!24557 m!25707))

(assert (=> b!24557 m!25705))

(assert (=> b!24446 d!13585))

(declare-fun b!24563 () Bool)

(declare-fun res!10948 () Bool)

(declare-fun e!12720 () Bool)

(assert (=> b!24563 (=> (not res!10948) (not e!12720))))

(assert (=> b!24563 (= res!10948 (balanced!48 (left!697 (left!697 xs!625))))))

(declare-fun b!24562 () Bool)

(declare-fun res!10947 () Bool)

(assert (=> b!24562 (=> (not res!10947) (not e!12720))))

(assert (=> b!24562 (= res!10947 (<= (- (level!42 (left!697 (left!697 xs!625))) (level!42 (right!700 (left!697 xs!625)))) 1))))

(declare-fun b!24564 () Bool)

(assert (=> b!24564 (= e!12720 (balanced!48 (right!700 (left!697 xs!625))))))

(declare-fun d!13587 () Bool)

(declare-fun res!10945 () Bool)

(declare-fun e!12721 () Bool)

(assert (=> d!13587 (=> res!10945 e!12721)))

(assert (=> d!13587 (= res!10945 (not (is-CC!52 (left!697 xs!625))))))

(assert (=> d!13587 (= (balanced!48 (left!697 xs!625)) e!12721)))

(declare-fun b!24561 () Bool)

(assert (=> b!24561 (= e!12721 e!12720)))

(declare-fun res!10946 () Bool)

(assert (=> b!24561 (=> (not res!10946) (not e!12720))))

(assert (=> b!24561 (= res!10946 (>= (- (level!42 (left!697 (left!697 xs!625))) (level!42 (right!700 (left!697 xs!625)))) (- 1)))))

(assert (= (and d!13587 (not res!10945)) b!24561))

(assert (= (and b!24561 res!10946) b!24562))

(assert (= (and b!24562 res!10947) b!24563))

(assert (= (and b!24563 res!10948) b!24564))

(declare-fun m!25801 () Bool)

(assert (=> b!24563 m!25801))

(assert (=> b!24562 m!25703))

(assert (=> b!24562 m!25701))

(declare-fun m!25803 () Bool)

(assert (=> b!24564 m!25803))

(assert (=> b!24561 m!25703))

(assert (=> b!24561 m!25701))

(assert (=> b!24445 d!13587))

(assert (=> b!24447 d!13575))

(assert (=> b!24447 d!13573))

(declare-fun d!13589 () Bool)

(assert (=> d!13589 (= (isEmpty!310 (right!700 xs!625)) (= (right!700 xs!625) Empty!63))))

(assert (=> b!24456 d!13589))

(declare-fun b!24567 () Bool)

(declare-fun res!10951 () Bool)

(declare-fun e!12722 () Bool)

(assert (=> b!24567 (=> (not res!10951) (not e!12722))))

(assert (=> b!24567 (= res!10951 (concInv!47 (left!697 (right!700 res!5625))))))

(declare-fun b!24565 () Bool)

(declare-fun e!12723 () Bool)

(assert (=> b!24565 (= e!12723 e!12722)))

(declare-fun res!10949 () Bool)

(assert (=> b!24565 (=> (not res!10949) (not e!12722))))

(assert (=> b!24565 (= res!10949 (not (isEmpty!310 (left!697 (right!700 res!5625)))))))

(declare-fun b!24566 () Bool)

(declare-fun res!10952 () Bool)

(assert (=> b!24566 (=> (not res!10952) (not e!12722))))

(assert (=> b!24566 (= res!10952 (not (isEmpty!310 (right!700 (right!700 res!5625)))))))

(declare-fun b!24568 () Bool)

(assert (=> b!24568 (= e!12722 (concInv!47 (right!700 (right!700 res!5625))))))

(declare-fun d!13591 () Bool)

(declare-fun res!10950 () Bool)

(assert (=> d!13591 (=> res!10950 e!12723)))

(assert (=> d!13591 (= res!10950 (not (is-CC!52 (right!700 res!5625))))))

(assert (=> d!13591 (= (concInv!47 (right!700 res!5625)) e!12723)))

(assert (= (and d!13591 (not res!10950)) b!24565))

(assert (= (and b!24565 res!10949) b!24566))

(assert (= (and b!24566 res!10952) b!24567))

(assert (= (and b!24567 res!10951) b!24568))

(declare-fun m!25805 () Bool)

(assert (=> b!24567 m!25805))

(declare-fun m!25807 () Bool)

(assert (=> b!24565 m!25807))

(declare-fun m!25809 () Bool)

(assert (=> b!24566 m!25809))

(declare-fun m!25811 () Bool)

(assert (=> b!24568 m!25811))

(assert (=> b!24434 d!13591))

(assert (=> b!24459 d!13571))

(assert (=> b!24459 d!13569))

(declare-fun b!24571 () Bool)

(declare-fun res!10956 () Bool)

(declare-fun e!12724 () Bool)

(assert (=> b!24571 (=> (not res!10956) (not e!12724))))

(assert (=> b!24571 (= res!10956 (balanced!48 (left!697 (right!700 ys!119))))))

(declare-fun b!24570 () Bool)

(declare-fun res!10955 () Bool)

(assert (=> b!24570 (=> (not res!10955) (not e!12724))))

(assert (=> b!24570 (= res!10955 (<= (- (level!42 (left!697 (right!700 ys!119))) (level!42 (right!700 (right!700 ys!119)))) 1))))

(declare-fun b!24572 () Bool)

(assert (=> b!24572 (= e!12724 (balanced!48 (right!700 (right!700 ys!119))))))

(declare-fun d!13593 () Bool)

(declare-fun res!10953 () Bool)

(declare-fun e!12725 () Bool)

(assert (=> d!13593 (=> res!10953 e!12725)))

(assert (=> d!13593 (= res!10953 (not (is-CC!52 (right!700 ys!119))))))

(assert (=> d!13593 (= (balanced!48 (right!700 ys!119)) e!12725)))

(declare-fun b!24569 () Bool)

(assert (=> b!24569 (= e!12725 e!12724)))

(declare-fun res!10954 () Bool)

(assert (=> b!24569 (=> (not res!10954) (not e!12724))))

(assert (=> b!24569 (= res!10954 (>= (- (level!42 (left!697 (right!700 ys!119))) (level!42 (right!700 (right!700 ys!119)))) (- 1)))))

(assert (= (and d!13593 (not res!10953)) b!24569))

(assert (= (and b!24569 res!10954) b!24570))

(assert (= (and b!24570 res!10955) b!24571))

(assert (= (and b!24571 res!10956) b!24572))

(declare-fun m!25813 () Bool)

(assert (=> b!24571 m!25813))

(assert (=> b!24570 m!25783))

(assert (=> b!24570 m!25781))

(declare-fun m!25815 () Bool)

(assert (=> b!24572 m!25815))

(assert (=> b!24569 m!25783))

(assert (=> b!24569 m!25781))

(assert (=> b!24450 d!13593))

(declare-fun b!24573 () Bool)

(declare-fun e!12726 () Bool)

(declare-fun tp!5302 () Bool)

(declare-fun tp!5303 () Bool)

(assert (=> b!24573 (= e!12726 (and tp!5302 tp!5303))))

(declare-fun b!24574 () Bool)

(assert (=> b!24574 (= e!12726 tp_is_empty!151)))

(assert (=> b!24479 (= tp!5300 e!12726)))

(assert (= (and b!24479 (is-CC!52 (left!697 (right!700 ys!119)))) b!24573))

(assert (= (and b!24479 (is-Single!52 (left!697 (right!700 ys!119)))) b!24574))

(declare-fun b!24575 () Bool)

(declare-fun e!12727 () Bool)

(declare-fun tp!5304 () Bool)

(declare-fun tp!5305 () Bool)

(assert (=> b!24575 (= e!12727 (and tp!5304 tp!5305))))

(declare-fun b!24576 () Bool)

(assert (=> b!24576 (= e!12727 tp_is_empty!151)))

(assert (=> b!24479 (= tp!5301 e!12727)))

(assert (= (and b!24479 (is-CC!52 (right!700 (right!700 ys!119)))) b!24575))

(assert (= (and b!24479 (is-Single!52 (right!700 (right!700 ys!119)))) b!24576))

(declare-fun b!24577 () Bool)

(declare-fun e!12728 () Bool)

(declare-fun tp!5306 () Bool)

(declare-fun tp!5307 () Bool)

(assert (=> b!24577 (= e!12728 (and tp!5306 tp!5307))))

(declare-fun b!24578 () Bool)

(assert (=> b!24578 (= e!12728 tp_is_empty!151)))

(assert (=> b!24477 (= tp!5298 e!12728)))

(assert (= (and b!24477 (is-CC!52 (left!697 (left!697 ys!119)))) b!24577))

(assert (= (and b!24477 (is-Single!52 (left!697 (left!697 ys!119)))) b!24578))

(declare-fun b!24579 () Bool)

(declare-fun e!12729 () Bool)

(declare-fun tp!5308 () Bool)

(declare-fun tp!5309 () Bool)

(assert (=> b!24579 (= e!12729 (and tp!5308 tp!5309))))

(declare-fun b!24580 () Bool)

(assert (=> b!24580 (= e!12729 tp_is_empty!151)))

(assert (=> b!24477 (= tp!5299 e!12729)))

(assert (= (and b!24477 (is-CC!52 (right!700 (left!697 ys!119)))) b!24579))

(assert (= (and b!24477 (is-Single!52 (right!700 (left!697 ys!119)))) b!24580))

(declare-fun b!24581 () Bool)

(declare-fun e!12730 () Bool)

(declare-fun tp!5310 () Bool)

(declare-fun tp!5311 () Bool)

(assert (=> b!24581 (= e!12730 (and tp!5310 tp!5311))))

(declare-fun b!24582 () Bool)

(assert (=> b!24582 (= e!12730 tp_is_empty!151)))

(assert (=> b!24469 (= tp!5290 e!12730)))

(assert (= (and b!24469 (is-CC!52 (left!697 (left!697 res!5625)))) b!24581))

(assert (= (and b!24469 (is-Single!52 (left!697 (left!697 res!5625)))) b!24582))

(declare-fun b!24583 () Bool)

(declare-fun e!12731 () Bool)

(declare-fun tp!5312 () Bool)

(declare-fun tp!5313 () Bool)

(assert (=> b!24583 (= e!12731 (and tp!5312 tp!5313))))

(declare-fun b!24584 () Bool)

(assert (=> b!24584 (= e!12731 tp_is_empty!151)))

(assert (=> b!24469 (= tp!5291 e!12731)))

(assert (= (and b!24469 (is-CC!52 (right!700 (left!697 res!5625)))) b!24583))

(assert (= (and b!24469 (is-Single!52 (right!700 (left!697 res!5625)))) b!24584))

(declare-fun b!24585 () Bool)

(declare-fun e!12732 () Bool)

(declare-fun tp!5314 () Bool)

(declare-fun tp!5315 () Bool)

(assert (=> b!24585 (= e!12732 (and tp!5314 tp!5315))))

(declare-fun b!24586 () Bool)

(assert (=> b!24586 (= e!12732 tp_is_empty!151)))

(assert (=> b!24471 (= tp!5292 e!12732)))

(assert (= (and b!24471 (is-CC!52 (left!697 (right!700 res!5625)))) b!24585))

(assert (= (and b!24471 (is-Single!52 (left!697 (right!700 res!5625)))) b!24586))

(declare-fun b!24587 () Bool)

(declare-fun e!12733 () Bool)

(declare-fun tp!5316 () Bool)

(declare-fun tp!5317 () Bool)

(assert (=> b!24587 (= e!12733 (and tp!5316 tp!5317))))

(declare-fun b!24588 () Bool)

(assert (=> b!24588 (= e!12733 tp_is_empty!151)))

(assert (=> b!24471 (= tp!5293 e!12733)))

(assert (= (and b!24471 (is-CC!52 (right!700 (right!700 res!5625)))) b!24587))

(assert (= (and b!24471 (is-Single!52 (right!700 (right!700 res!5625)))) b!24588))

(declare-fun b!24589 () Bool)

(declare-fun e!12734 () Bool)

(declare-fun tp!5318 () Bool)

(declare-fun tp!5319 () Bool)

(assert (=> b!24589 (= e!12734 (and tp!5318 tp!5319))))

(declare-fun b!24590 () Bool)

(assert (=> b!24590 (= e!12734 tp_is_empty!151)))

(assert (=> b!24473 (= tp!5294 e!12734)))

(assert (= (and b!24473 (is-CC!52 (left!697 (left!697 xs!625)))) b!24589))

(assert (= (and b!24473 (is-Single!52 (left!697 (left!697 xs!625)))) b!24590))

(declare-fun b!24591 () Bool)

(declare-fun e!12735 () Bool)

(declare-fun tp!5320 () Bool)

(declare-fun tp!5321 () Bool)

(assert (=> b!24591 (= e!12735 (and tp!5320 tp!5321))))

(declare-fun b!24592 () Bool)

(assert (=> b!24592 (= e!12735 tp_is_empty!151)))

(assert (=> b!24473 (= tp!5295 e!12735)))

(assert (= (and b!24473 (is-CC!52 (right!700 (left!697 xs!625)))) b!24591))

(assert (= (and b!24473 (is-Single!52 (right!700 (left!697 xs!625)))) b!24592))

(declare-fun b!24593 () Bool)

(declare-fun e!12736 () Bool)

(declare-fun tp!5322 () Bool)

(declare-fun tp!5323 () Bool)

(assert (=> b!24593 (= e!12736 (and tp!5322 tp!5323))))

(declare-fun b!24594 () Bool)

(assert (=> b!24594 (= e!12736 tp_is_empty!151)))

(assert (=> b!24475 (= tp!5296 e!12736)))

(assert (= (and b!24475 (is-CC!52 (left!697 (right!700 xs!625)))) b!24593))

(assert (= (and b!24475 (is-Single!52 (left!697 (right!700 xs!625)))) b!24594))

(declare-fun b!24595 () Bool)

(declare-fun e!12737 () Bool)

(declare-fun tp!5324 () Bool)

(declare-fun tp!5325 () Bool)

(assert (=> b!24595 (= e!12737 (and tp!5324 tp!5325))))

(declare-fun b!24596 () Bool)

(assert (=> b!24596 (= e!12737 tp_is_empty!151)))

(assert (=> b!24475 (= tp!5297 e!12737)))

(assert (= (and b!24475 (is-CC!52 (right!700 (right!700 xs!625)))) b!24595))

(assert (= (and b!24475 (is-Single!52 (right!700 (right!700 xs!625)))) b!24596))

(push 1)

(assert (not b!24520))

(assert (not b!24549))

(assert (not b!24488))

(assert (not b!24500))

(assert (not b!24591))

(assert (not b!24487))

(assert (not b!24491))

(assert (not b!24481))

(assert (not b!24485))

(assert (not b!24579))

(assert (not b!24554))

(assert (not b!24552))

(assert (not b!24567))

(assert (not b!24573))

(assert (not b!24571))

(assert (not b!24593))

(assert (not b!24534))

(assert (not b!24494))

(assert (not b!24569))

(assert (not b!24565))

(assert (not b!24501))

(assert (not b!24542))

(assert (not b!24587))

(assert (not b!24508))

(assert (not b!24535))

(assert (not d!13559))

(assert (not b!24557))

(assert (not b!24484))

(assert (not b!24561))

(assert (not b!24548))

(assert (not b!24553))

(assert (not b!24583))

(assert (not b!24503))

(assert (not b!24566))

(assert (not b!24559))

(assert (not b!24497))

(assert (not b!24502))

(assert (not d!13561))

(assert (not b!24570))

(assert (not b!24507))

(assert (not b!24564))

(assert (not b!24551))

(assert tp_is_empty!151)

(assert (not d!13565))

(assert (not b!24486))

(assert (not b!24572))

(assert (not b!24483))

(assert (not b!24489))

(assert (not b!24546))

(assert (not b!24505))

(assert (not b!24563))

(assert (not b!24540))

(assert (not b!24555))

(assert (not b!24558))

(assert (not b!24492))

(assert (not b!24504))

(assert (not b!24595))

(assert (not b!24568))

(assert (not b!24544))

(assert (not b!24585))

(assert (not b!24562))

(assert (not b!24577))

(assert (not b!24498))

(assert (not b!24589))

(assert (not b!24581))

(assert (not d!13563))

(assert (not b!24490))

(assert (not b!24506))

(assert (not b!24550))

(assert (not b!24556))

(assert (not b!24482))

(assert (not b!24499))

(assert (not b!24560))

(assert (not b!24496))

(assert (not b!24524))

(assert (not b!24575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

