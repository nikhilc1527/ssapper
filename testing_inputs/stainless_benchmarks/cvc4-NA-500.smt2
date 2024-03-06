; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3418 () Bool)

(assert start!3418)

(declare-fun b!20433 () Bool)

(declare-fun res!8857 () Bool)

(declare-fun e!10717 () Bool)

(assert (=> b!20433 (=> res!8857 e!10717)))

(declare-datatypes () ((T!1755 (T!1756 (val!50 Int)))))

(declare-fun y!824 () T!1755)

(declare-datatypes () ((Conc!32 (CC!31 (left!676 Conc!32) (right!679 Conc!32)) (Single!31 (x!8791 T!1755)) (Empty!42))))

(declare-fun xs!604 () Conc!32)

(declare-fun i!298 () Int)

(declare-fun insertAppendAxiomInst!12 (Conc!32 Int T!1755) Bool)

(assert (=> b!20433 (= res!8857 (not (insertAppendAxiomInst!12 xs!604 i!298 y!824)))))

(declare-fun b!20434 () Bool)

(declare-fun e!10718 () Bool)

(declare-fun tp!4677 () Bool)

(declare-fun tp!4679 () Bool)

(assert (=> b!20434 (= e!10718 (and tp!4677 tp!4679))))

(declare-fun b!20435 () Bool)

(declare-fun res!5606 () Conc!32)

(declare-datatypes () ((List!337 (Cons!331 (h!245 T!1755) (t!4332 List!337)) (Nil!332))))

(declare-fun toList!97 (Conc!32) List!337)

(declare-fun insertAtIndex!10 (List!337 Int T!1755) List!337)

(assert (=> b!20435 (= e!10717 (not (= (toList!97 res!5606) (insertAtIndex!10 (toList!97 xs!604) i!298 y!824))))))

(declare-fun b!20436 () Bool)

(declare-fun e!10719 () Bool)

(assert (=> b!20436 (= e!10719 e!10717)))

(declare-fun res!8859 () Bool)

(assert (=> b!20436 (=> res!8859 e!10717)))

(declare-fun concInv!30 (Conc!32) Bool)

(assert (=> b!20436 (= res!8859 (not (concInv!30 res!5606)))))

(declare-fun b!20437 () Bool)

(declare-fun res!8852 () Bool)

(assert (=> b!20437 (=> res!8852 e!10717)))

(declare-fun isEmpty!294 (Conc!32) Bool)

(assert (=> b!20437 (= res!8852 (isEmpty!294 res!5606))))

(declare-fun b!20438 () Bool)

(declare-fun res!8855 () Bool)

(assert (=> b!20438 (=> (not res!8855) (not e!10719))))

(declare-fun balanced!31 (Conc!32) Bool)

(assert (=> b!20438 (= res!8855 (balanced!31 xs!604))))

(declare-fun res!8850 () Bool)

(assert (=> start!3418 (=> (not res!8850) (not e!10719))))

(assert (=> start!3418 (= res!8850 (concInv!30 xs!604))))

(assert (=> start!3418 e!10719))

(assert (=> start!3418 e!10718))

(assert (=> start!3418 true))

(declare-fun e!10720 () Bool)

(assert (=> start!3418 e!10720))

(declare-fun tp_is_empty!99 () Bool)

(assert (=> start!3418 tp_is_empty!99))

(declare-fun b!20439 () Bool)

(declare-fun res!8860 () Bool)

(assert (=> b!20439 (=> res!8860 e!10717)))

(declare-fun level!29 (Conc!32) Int)

(assert (=> b!20439 (= res!8860 (> (- (level!29 res!5606) (level!29 xs!604)) 1))))

(declare-fun b!20440 () Bool)

(declare-fun res!8854 () Bool)

(assert (=> b!20440 (=> res!8854 e!10717)))

(assert (=> b!20440 (= res!8854 (< (level!29 res!5606) (level!29 xs!604)))))

(declare-fun b!20441 () Bool)

(declare-fun res!8856 () Bool)

(assert (=> b!20441 (=> (not res!8856) (not e!10719))))

(assert (=> b!20441 (= res!8856 (>= i!298 0))))

(declare-fun b!20442 () Bool)

(assert (=> b!20442 (= e!10720 tp_is_empty!99)))

(declare-fun b!20443 () Bool)

(declare-fun tp!4680 () Bool)

(declare-fun tp!4678 () Bool)

(assert (=> b!20443 (= e!10720 (and tp!4680 tp!4678))))

(declare-fun b!20444 () Bool)

(declare-fun res!8851 () Bool)

(assert (=> b!20444 (=> (not res!8851) (not e!10719))))

(declare-fun size!223 (Conc!32) Int)

(assert (=> b!20444 (= res!8851 (<= i!298 (size!223 xs!604)))))

(declare-fun b!20445 () Bool)

(declare-fun res!8853 () Bool)

(assert (=> b!20445 (=> (not res!8853) (not e!10719))))

(assert (=> b!20445 (= res!8853 (and (not (is-Empty!42 xs!604)) (is-Single!31 xs!604) (not (= i!298 0)) (= res!5606 (CC!31 xs!604 (Single!31 y!824)))))))

(declare-fun b!20446 () Bool)

(declare-fun res!8858 () Bool)

(assert (=> b!20446 (=> res!8858 e!10717)))

(assert (=> b!20446 (= res!8858 (not (balanced!31 res!5606)))))

(declare-fun b!20447 () Bool)

(assert (=> b!20447 (= e!10718 tp_is_empty!99)))

(assert (= (and start!3418 res!8850) b!20438))

(assert (= (and b!20438 res!8855) b!20441))

(assert (= (and b!20441 res!8856) b!20444))

(assert (= (and b!20444 res!8851) b!20445))

(assert (= (and b!20445 res!8853) b!20436))

(assert (= (and b!20436 (not res!8859)) b!20446))

(assert (= (and b!20446 (not res!8858)) b!20439))

(assert (= (and b!20439 (not res!8860)) b!20440))

(assert (= (and b!20440 (not res!8854)) b!20437))

(assert (= (and b!20437 (not res!8852)) b!20433))

(assert (= (and b!20433 (not res!8857)) b!20435))

(assert (= (and start!3418 (is-CC!31 xs!604)) b!20434))

(assert (= (and start!3418 (is-Single!31 xs!604)) b!20447))

(assert (= (and start!3418 (is-CC!31 res!5606)) b!20443))

(assert (= (and start!3418 (is-Single!31 res!5606)) b!20442))

(declare-fun m!22565 () Bool)

(assert (=> b!20446 m!22565))

(declare-fun m!22567 () Bool)

(assert (=> start!3418 m!22567))

(declare-fun m!22569 () Bool)

(assert (=> b!20433 m!22569))

(declare-fun m!22571 () Bool)

(assert (=> b!20438 m!22571))

(declare-fun m!22573 () Bool)

(assert (=> b!20436 m!22573))

(declare-fun m!22575 () Bool)

(assert (=> b!20444 m!22575))

(declare-fun m!22577 () Bool)

(assert (=> b!20435 m!22577))

(declare-fun m!22579 () Bool)

(assert (=> b!20435 m!22579))

(assert (=> b!20435 m!22579))

(declare-fun m!22581 () Bool)

(assert (=> b!20435 m!22581))

(declare-fun m!22583 () Bool)

(assert (=> b!20439 m!22583))

(declare-fun m!22585 () Bool)

(assert (=> b!20439 m!22585))

(assert (=> b!20440 m!22583))

(assert (=> b!20440 m!22585))

(declare-fun m!22587 () Bool)

(assert (=> b!20437 m!22587))

(push 1)

(assert (not b!20444))

(assert (not b!20434))

(assert (not b!20433))

(assert tp_is_empty!99)

(assert (not b!20440))

(assert (not b!20446))

(assert (not b!20436))

(assert (not b!20443))

(assert (not b!20435))

(assert (not start!3418))

(assert (not b!20438))

(assert (not b!20437))

(assert (not b!20439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!20453 () Bool)

(declare-fun e!10723 () Int)

(declare-fun lt!3083 () Int)

(declare-fun lt!3082 () Int)

(assert (=> b!20453 (= e!10723 (+ 1 (ite (>= lt!3083 lt!3082) lt!3083 lt!3082)))))

(assert (=> b!20453 (= lt!3082 (level!29 (right!679 res!5606)))))

(assert (=> b!20453 (= lt!3083 (level!29 (left!676 res!5606)))))

(declare-fun d!12585 () Bool)

(declare-fun lt!3084 () Int)

(assert (=> d!12585 (>= lt!3084 0)))

(assert (=> d!12585 (= lt!3084 e!10723)))

(declare-fun c!4919 () Bool)

(assert (=> d!12585 (= c!4919 (or (is-Empty!42 res!5606) (is-Single!31 res!5606)))))

(assert (=> d!12585 (= (level!29 res!5606) lt!3084)))

(declare-fun b!20452 () Bool)

(assert (=> b!20452 (= e!10723 0)))

(assert (= (and d!12585 c!4919) b!20452))

(assert (= (and d!12585 (not c!4919)) b!20453))

(declare-fun m!22589 () Bool)

(assert (=> b!20453 m!22589))

(declare-fun m!22591 () Bool)

(assert (=> b!20453 m!22591))

(assert (=> b!20439 d!12585))

(declare-fun b!20455 () Bool)

(declare-fun e!10724 () Int)

(declare-fun lt!3086 () Int)

(declare-fun lt!3085 () Int)

(assert (=> b!20455 (= e!10724 (+ 1 (ite (>= lt!3086 lt!3085) lt!3086 lt!3085)))))

(assert (=> b!20455 (= lt!3085 (level!29 (right!679 xs!604)))))

(assert (=> b!20455 (= lt!3086 (level!29 (left!676 xs!604)))))

(declare-fun d!12587 () Bool)

(declare-fun lt!3087 () Int)

(assert (=> d!12587 (>= lt!3087 0)))

(assert (=> d!12587 (= lt!3087 e!10724)))

(declare-fun c!4920 () Bool)

(assert (=> d!12587 (= c!4920 (or (is-Empty!42 xs!604) (is-Single!31 xs!604)))))

(assert (=> d!12587 (= (level!29 xs!604) lt!3087)))

(declare-fun b!20454 () Bool)

(assert (=> b!20454 (= e!10724 0)))

(assert (= (and d!12587 c!4920) b!20454))

(assert (= (and d!12587 (not c!4920)) b!20455))

(declare-fun m!22593 () Bool)

(assert (=> b!20455 m!22593))

(declare-fun m!22595 () Bool)

(assert (=> b!20455 m!22595))

(assert (=> b!20439 d!12587))

(declare-fun b!20465 () Bool)

(declare-fun e!10729 () List!337)

(declare-fun e!10730 () List!337)

(assert (=> b!20465 (= e!10729 e!10730)))

(declare-fun c!4926 () Bool)

(assert (=> b!20465 (= c!4926 (is-Single!31 res!5606))))

(declare-fun d!12589 () Bool)

(declare-fun lt!3090 () List!337)

(declare-fun size!224 (List!337) Int)

(assert (=> d!12589 (= (size!224 lt!3090) (size!223 res!5606))))

(assert (=> d!12589 (= lt!3090 e!10729)))

(declare-fun c!4925 () Bool)

(assert (=> d!12589 (= c!4925 (is-Empty!42 res!5606))))

(assert (=> d!12589 (= (toList!97 res!5606) lt!3090)))

(declare-fun b!20464 () Bool)

(assert (=> b!20464 (= e!10729 Nil!332)))

(declare-fun b!20467 () Bool)

(declare-fun ++!20 (List!337 List!337) List!337)

(assert (=> b!20467 (= e!10730 (++!20 (toList!97 (left!676 res!5606)) (toList!97 (right!679 res!5606))))))

(declare-fun b!20466 () Bool)

(assert (=> b!20466 (= e!10730 (Cons!331 (x!8791 res!5606) Nil!332))))

(assert (= (and b!20465 c!4926) b!20466))

(assert (= (and b!20465 (not c!4926)) b!20467))

(assert (= (and d!12589 c!4925) b!20464))

(assert (= (and d!12589 (not c!4925)) b!20465))

(declare-fun m!22597 () Bool)

(assert (=> d!12589 m!22597))

(declare-fun m!22599 () Bool)

(assert (=> d!12589 m!22599))

(declare-fun m!22601 () Bool)

(assert (=> b!20467 m!22601))

(declare-fun m!22603 () Bool)

(assert (=> b!20467 m!22603))

(assert (=> b!20467 m!22601))

(assert (=> b!20467 m!22603))

(declare-fun m!22605 () Bool)

(assert (=> b!20467 m!22605))

(assert (=> b!20435 d!12589))

(declare-fun b!20479 () Bool)

(declare-fun e!10736 () List!337)

(assert (=> b!20479 (= e!10736 (Cons!331 (h!245 (toList!97 xs!604)) (insertAtIndex!10 (t!4332 (toList!97 xs!604)) (- i!298 1) y!824)))))

(declare-fun b!20476 () Bool)

(declare-fun e!10735 () List!337)

(assert (=> b!20476 (= e!10735 (Cons!331 y!824 Nil!332))))

(declare-fun d!12591 () Bool)

(declare-fun c!4931 () Bool)

(assert (=> d!12591 (= c!4931 (is-Nil!332 (toList!97 xs!604)))))

(assert (=> d!12591 (= (insertAtIndex!10 (toList!97 xs!604) i!298 y!824) e!10735)))

(declare-fun b!20477 () Bool)

(assert (=> b!20477 (= e!10735 e!10736)))

(declare-fun c!4932 () Bool)

(assert (=> b!20477 (= c!4932 (= i!298 0))))

(declare-fun b!20478 () Bool)

(assert (=> b!20478 (= e!10736 (Cons!331 y!824 (toList!97 xs!604)))))

(assert (= (and b!20477 c!4932) b!20478))

(assert (= (and b!20477 (not c!4932)) b!20479))

(assert (= (and d!12591 c!4931) b!20476))

(assert (= (and d!12591 (not c!4931)) b!20477))

(declare-fun m!22607 () Bool)

(assert (=> b!20479 m!22607))

(assert (=> b!20435 d!12591))

(declare-fun b!20481 () Bool)

(declare-fun e!10737 () List!337)

(declare-fun e!10738 () List!337)

(assert (=> b!20481 (= e!10737 e!10738)))

(declare-fun c!4934 () Bool)

(assert (=> b!20481 (= c!4934 (is-Single!31 xs!604))))

(declare-fun d!12593 () Bool)

(declare-fun lt!3091 () List!337)

(assert (=> d!12593 (= (size!224 lt!3091) (size!223 xs!604))))

(assert (=> d!12593 (= lt!3091 e!10737)))

(declare-fun c!4933 () Bool)

(assert (=> d!12593 (= c!4933 (is-Empty!42 xs!604))))

(assert (=> d!12593 (= (toList!97 xs!604) lt!3091)))

(declare-fun b!20480 () Bool)

(assert (=> b!20480 (= e!10737 Nil!332)))

(declare-fun b!20483 () Bool)

(assert (=> b!20483 (= e!10738 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604))))))

(declare-fun b!20482 () Bool)

(assert (=> b!20482 (= e!10738 (Cons!331 (x!8791 xs!604) Nil!332))))

(assert (= (and b!20481 c!4934) b!20482))

(assert (= (and b!20481 (not c!4934)) b!20483))

(assert (= (and d!12593 c!4933) b!20480))

(assert (= (and d!12593 (not c!4933)) b!20481))

(declare-fun m!22609 () Bool)

(assert (=> d!12593 m!22609))

(assert (=> d!12593 m!22575))

(declare-fun m!22611 () Bool)

(assert (=> b!20483 m!22611))

(declare-fun m!22613 () Bool)

(assert (=> b!20483 m!22613))

(assert (=> b!20483 m!22611))

(assert (=> b!20483 m!22613))

(declare-fun m!22615 () Bool)

(assert (=> b!20483 m!22615))

(assert (=> b!20435 d!12593))

(declare-fun d!12595 () Bool)

(declare-fun res!8870 () Bool)

(declare-fun e!10743 () Bool)

(assert (=> d!12595 (=> res!8870 e!10743)))

(assert (=> d!12595 (= res!8870 (not (is-CC!31 res!5606)))))

(assert (=> d!12595 (= (concInv!30 res!5606) e!10743)))

(declare-fun b!20495 () Bool)

(declare-fun e!10744 () Bool)

(assert (=> b!20495 (= e!10744 (concInv!30 (right!679 res!5606)))))

(declare-fun b!20494 () Bool)

(declare-fun res!8872 () Bool)

(assert (=> b!20494 (=> (not res!8872) (not e!10744))))

(assert (=> b!20494 (= res!8872 (concInv!30 (left!676 res!5606)))))

(declare-fun b!20492 () Bool)

(assert (=> b!20492 (= e!10743 e!10744)))

(declare-fun res!8873 () Bool)

(assert (=> b!20492 (=> (not res!8873) (not e!10744))))

(assert (=> b!20492 (= res!8873 (not (isEmpty!294 (left!676 res!5606))))))

(declare-fun b!20493 () Bool)

(declare-fun res!8871 () Bool)

(assert (=> b!20493 (=> (not res!8871) (not e!10744))))

(assert (=> b!20493 (= res!8871 (not (isEmpty!294 (right!679 res!5606))))))

(assert (= (and d!12595 (not res!8870)) b!20492))

(assert (= (and b!20492 res!8873) b!20493))

(assert (= (and b!20493 res!8871) b!20494))

(assert (= (and b!20494 res!8872) b!20495))

(declare-fun m!22617 () Bool)

(assert (=> b!20495 m!22617))

(declare-fun m!22619 () Bool)

(assert (=> b!20494 m!22619))

(declare-fun m!22621 () Bool)

(assert (=> b!20492 m!22621))

(declare-fun m!22623 () Bool)

(assert (=> b!20493 m!22623))

(assert (=> b!20436 d!12595))

(declare-fun b!20504 () Bool)

(declare-fun e!10750 () Int)

(assert (=> b!20504 (= e!10750 0)))

(declare-fun b!20507 () Bool)

(declare-fun e!10749 () Int)

(assert (=> b!20507 (= e!10749 (+ (size!223 (left!676 xs!604)) (size!223 (right!679 xs!604))))))

(declare-fun b!20506 () Bool)

(assert (=> b!20506 (= e!10749 1)))

(declare-fun b!20505 () Bool)

(assert (=> b!20505 (= e!10750 e!10749)))

(declare-fun c!4940 () Bool)

(assert (=> b!20505 (= c!4940 (is-Single!31 xs!604))))

(declare-fun d!12597 () Bool)

(declare-fun lt!3094 () Int)

(assert (=> d!12597 (>= lt!3094 0)))

(assert (=> d!12597 (= lt!3094 e!10750)))

(declare-fun c!4939 () Bool)

(assert (=> d!12597 (= c!4939 (is-Empty!42 xs!604))))

(assert (=> d!12597 (= (size!223 xs!604) lt!3094)))

(assert (= (and b!20505 c!4940) b!20506))

(assert (= (and b!20505 (not c!4940)) b!20507))

(assert (= (and d!12597 c!4939) b!20504))

(assert (= (and d!12597 (not c!4939)) b!20505))

(declare-fun m!22625 () Bool)

(assert (=> b!20507 m!22625))

(declare-fun m!22627 () Bool)

(assert (=> b!20507 m!22627))

(assert (=> b!20444 d!12597))

(assert (=> b!20440 d!12585))

(assert (=> b!20440 d!12587))

(declare-fun d!12599 () Bool)

(declare-fun res!8882 () Bool)

(declare-fun e!10755 () Bool)

(assert (=> d!12599 (=> res!8882 e!10755)))

(assert (=> d!12599 (= res!8882 (not (is-CC!31 xs!604)))))

(assert (=> d!12599 (= (balanced!31 xs!604) e!10755)))

(declare-fun b!20516 () Bool)

(declare-fun e!10756 () Bool)

(assert (=> b!20516 (= e!10755 e!10756)))

(declare-fun res!8884 () Bool)

(assert (=> b!20516 (=> (not res!8884) (not e!10756))))

(assert (=> b!20516 (= res!8884 (>= (- (level!29 (left!676 xs!604)) (level!29 (right!679 xs!604))) (- 1)))))

(declare-fun b!20518 () Bool)

(declare-fun res!8883 () Bool)

(assert (=> b!20518 (=> (not res!8883) (not e!10756))))

(assert (=> b!20518 (= res!8883 (balanced!31 (left!676 xs!604)))))

(declare-fun b!20517 () Bool)

(declare-fun res!8885 () Bool)

(assert (=> b!20517 (=> (not res!8885) (not e!10756))))

(assert (=> b!20517 (= res!8885 (<= (- (level!29 (left!676 xs!604)) (level!29 (right!679 xs!604))) 1))))

(declare-fun b!20519 () Bool)

(assert (=> b!20519 (= e!10756 (balanced!31 (right!679 xs!604)))))

(assert (= (and d!12599 (not res!8882)) b!20516))

(assert (= (and b!20516 res!8884) b!20517))

(assert (= (and b!20517 res!8885) b!20518))

(assert (= (and b!20518 res!8883) b!20519))

(assert (=> b!20516 m!22595))

(assert (=> b!20516 m!22593))

(declare-fun m!22629 () Bool)

(assert (=> b!20518 m!22629))

(assert (=> b!20517 m!22595))

(assert (=> b!20517 m!22593))

(declare-fun m!22631 () Bool)

(assert (=> b!20519 m!22631))

(assert (=> b!20438 d!12599))

(declare-fun d!12601 () Bool)

(declare-fun e!10762 () Bool)

(assert (=> d!12601 e!10762))

(declare-fun res!8891 () Bool)

(assert (=> d!12601 (=> res!8891 e!10762)))

(assert (=> d!12601 (= res!8891 (not (is-CC!31 xs!604)))))

(declare-fun e!10761 () Bool)

(assert (=> d!12601 e!10761))

(declare-fun res!8890 () Bool)

(assert (=> d!12601 (=> (not res!8890) (not e!10761))))

(assert (=> d!12601 (= res!8890 (>= i!298 0))))

(assert (=> d!12601 (= (insertAppendAxiomInst!12 xs!604 i!298 y!824) true)))

(declare-fun b!20524 () Bool)

(assert (=> b!20524 (= e!10761 (<= i!298 (size!223 xs!604)))))

(declare-fun b!20525 () Bool)

(declare-fun appendInsertIndex!11 (List!337 List!337 Int T!1755) Bool)

(assert (=> b!20525 (= e!10762 (appendInsertIndex!11 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604)) i!298 y!824))))

(assert (= (and d!12601 res!8890) b!20524))

(assert (= (and d!12601 (not res!8891)) b!20525))

(assert (=> b!20524 m!22575))

(assert (=> b!20525 m!22611))

(assert (=> b!20525 m!22613))

(assert (=> b!20525 m!22611))

(assert (=> b!20525 m!22613))

(declare-fun m!22633 () Bool)

(assert (=> b!20525 m!22633))

(assert (=> b!20433 d!12601))

(declare-fun d!12603 () Bool)

(declare-fun res!8892 () Bool)

(declare-fun e!10763 () Bool)

(assert (=> d!12603 (=> res!8892 e!10763)))

(assert (=> d!12603 (= res!8892 (not (is-CC!31 xs!604)))))

(assert (=> d!12603 (= (concInv!30 xs!604) e!10763)))

(declare-fun b!20529 () Bool)

(declare-fun e!10764 () Bool)

(assert (=> b!20529 (= e!10764 (concInv!30 (right!679 xs!604)))))

(declare-fun b!20528 () Bool)

(declare-fun res!8894 () Bool)

(assert (=> b!20528 (=> (not res!8894) (not e!10764))))

(assert (=> b!20528 (= res!8894 (concInv!30 (left!676 xs!604)))))

(declare-fun b!20526 () Bool)

(assert (=> b!20526 (= e!10763 e!10764)))

(declare-fun res!8895 () Bool)

(assert (=> b!20526 (=> (not res!8895) (not e!10764))))

(assert (=> b!20526 (= res!8895 (not (isEmpty!294 (left!676 xs!604))))))

(declare-fun b!20527 () Bool)

(declare-fun res!8893 () Bool)

(assert (=> b!20527 (=> (not res!8893) (not e!10764))))

(assert (=> b!20527 (= res!8893 (not (isEmpty!294 (right!679 xs!604))))))

(assert (= (and d!12603 (not res!8892)) b!20526))

(assert (= (and b!20526 res!8895) b!20527))

(assert (= (and b!20527 res!8893) b!20528))

(assert (= (and b!20528 res!8894) b!20529))

(declare-fun m!22635 () Bool)

(assert (=> b!20529 m!22635))

(declare-fun m!22637 () Bool)

(assert (=> b!20528 m!22637))

(declare-fun m!22639 () Bool)

(assert (=> b!20526 m!22639))

(declare-fun m!22641 () Bool)

(assert (=> b!20527 m!22641))

(assert (=> start!3418 d!12603))

(declare-fun d!12605 () Bool)

(assert (=> d!12605 (= (isEmpty!294 res!5606) (= res!5606 Empty!42))))

(assert (=> b!20437 d!12605))

(declare-fun d!12607 () Bool)

(declare-fun res!8896 () Bool)

(declare-fun e!10765 () Bool)

(assert (=> d!12607 (=> res!8896 e!10765)))

(assert (=> d!12607 (= res!8896 (not (is-CC!31 res!5606)))))

(assert (=> d!12607 (= (balanced!31 res!5606) e!10765)))

(declare-fun b!20530 () Bool)

(declare-fun e!10766 () Bool)

(assert (=> b!20530 (= e!10765 e!10766)))

(declare-fun res!8898 () Bool)

(assert (=> b!20530 (=> (not res!8898) (not e!10766))))

(assert (=> b!20530 (= res!8898 (>= (- (level!29 (left!676 res!5606)) (level!29 (right!679 res!5606))) (- 1)))))

(declare-fun b!20532 () Bool)

(declare-fun res!8897 () Bool)

(assert (=> b!20532 (=> (not res!8897) (not e!10766))))

(assert (=> b!20532 (= res!8897 (balanced!31 (left!676 res!5606)))))

(declare-fun b!20531 () Bool)

(declare-fun res!8899 () Bool)

(assert (=> b!20531 (=> (not res!8899) (not e!10766))))

(assert (=> b!20531 (= res!8899 (<= (- (level!29 (left!676 res!5606)) (level!29 (right!679 res!5606))) 1))))

(declare-fun b!20533 () Bool)

(assert (=> b!20533 (= e!10766 (balanced!31 (right!679 res!5606)))))

(assert (= (and d!12607 (not res!8896)) b!20530))

(assert (= (and b!20530 res!8898) b!20531))

(assert (= (and b!20531 res!8899) b!20532))

(assert (= (and b!20532 res!8897) b!20533))

(assert (=> b!20530 m!22591))

(assert (=> b!20530 m!22589))

(declare-fun m!22643 () Bool)

(assert (=> b!20532 m!22643))

(assert (=> b!20531 m!22591))

(assert (=> b!20531 m!22589))

(declare-fun m!22645 () Bool)

(assert (=> b!20533 m!22645))

(assert (=> b!20446 d!12607))

(declare-fun b!20540 () Bool)

(declare-fun e!10769 () Bool)

(declare-fun tp!4685 () Bool)

(declare-fun tp!4686 () Bool)

(assert (=> b!20540 (= e!10769 (and tp!4685 tp!4686))))

(declare-fun b!20541 () Bool)

(assert (=> b!20541 (= e!10769 tp_is_empty!99)))

(assert (=> b!20443 (= tp!4680 e!10769)))

(assert (= (and b!20443 (is-CC!31 (left!676 res!5606))) b!20540))

(assert (= (and b!20443 (is-Single!31 (left!676 res!5606))) b!20541))

(declare-fun b!20542 () Bool)

(declare-fun e!10770 () Bool)

(declare-fun tp!4687 () Bool)

(declare-fun tp!4688 () Bool)

(assert (=> b!20542 (= e!10770 (and tp!4687 tp!4688))))

(declare-fun b!20543 () Bool)

(assert (=> b!20543 (= e!10770 tp_is_empty!99)))

(assert (=> b!20443 (= tp!4678 e!10770)))

(assert (= (and b!20443 (is-CC!31 (right!679 res!5606))) b!20542))

(assert (= (and b!20443 (is-Single!31 (right!679 res!5606))) b!20543))

(declare-fun b!20544 () Bool)

(declare-fun e!10771 () Bool)

(declare-fun tp!4689 () Bool)

(declare-fun tp!4690 () Bool)

(assert (=> b!20544 (= e!10771 (and tp!4689 tp!4690))))

(declare-fun b!20545 () Bool)

(assert (=> b!20545 (= e!10771 tp_is_empty!99)))

(assert (=> b!20434 (= tp!4677 e!10771)))

(assert (= (and b!20434 (is-CC!31 (left!676 xs!604))) b!20544))

(assert (= (and b!20434 (is-Single!31 (left!676 xs!604))) b!20545))

(declare-fun b!20546 () Bool)

(declare-fun e!10772 () Bool)

(declare-fun tp!4691 () Bool)

(declare-fun tp!4692 () Bool)

(assert (=> b!20546 (= e!10772 (and tp!4691 tp!4692))))

(declare-fun b!20547 () Bool)

(assert (=> b!20547 (= e!10772 tp_is_empty!99)))

(assert (=> b!20434 (= tp!4679 e!10772)))

(assert (= (and b!20434 (is-CC!31 (right!679 xs!604))) b!20546))

(assert (= (and b!20434 (is-Single!31 (right!679 xs!604))) b!20547))

(push 1)

(assert (not b!20531))

(assert (not b!20479))

(assert (not b!20519))

(assert (not b!20517))

(assert (not b!20540))

(assert (not b!20533))

(assert (not d!12589))

(assert tp_is_empty!99)

(assert (not b!20493))

(assert (not b!20525))

(assert (not b!20532))

(assert (not b!20530))

(assert (not b!20524))

(assert (not b!20542))

(assert (not b!20528))

(assert (not b!20455))

(assert (not b!20483))

(assert (not b!20495))

(assert (not b!20507))

(assert (not d!12593))

(assert (not b!20527))

(assert (not b!20453))

(assert (not b!20492))

(assert (not b!20544))

(assert (not b!20526))

(assert (not b!20494))

(assert (not b!20529))

(assert (not b!20546))

(assert (not b!20467))

(assert (not b!20516))

(assert (not b!20518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12609 () Bool)

(declare-fun res!8900 () Bool)

(declare-fun e!10773 () Bool)

(assert (=> d!12609 (=> res!8900 e!10773)))

(assert (=> d!12609 (= res!8900 (not (is-CC!31 (right!679 xs!604))))))

(assert (=> d!12609 (= (balanced!31 (right!679 xs!604)) e!10773)))

(declare-fun b!20548 () Bool)

(declare-fun e!10774 () Bool)

(assert (=> b!20548 (= e!10773 e!10774)))

(declare-fun res!8902 () Bool)

(assert (=> b!20548 (=> (not res!8902) (not e!10774))))

(assert (=> b!20548 (= res!8902 (>= (- (level!29 (left!676 (right!679 xs!604))) (level!29 (right!679 (right!679 xs!604)))) (- 1)))))

(declare-fun b!20550 () Bool)

(declare-fun res!8901 () Bool)

(assert (=> b!20550 (=> (not res!8901) (not e!10774))))

(assert (=> b!20550 (= res!8901 (balanced!31 (left!676 (right!679 xs!604))))))

(declare-fun b!20549 () Bool)

(declare-fun res!8903 () Bool)

(assert (=> b!20549 (=> (not res!8903) (not e!10774))))

(assert (=> b!20549 (= res!8903 (<= (- (level!29 (left!676 (right!679 xs!604))) (level!29 (right!679 (right!679 xs!604)))) 1))))

(declare-fun b!20551 () Bool)

(assert (=> b!20551 (= e!10774 (balanced!31 (right!679 (right!679 xs!604))))))

(assert (= (and d!12609 (not res!8900)) b!20548))

(assert (= (and b!20548 res!8902) b!20549))

(assert (= (and b!20549 res!8903) b!20550))

(assert (= (and b!20550 res!8901) b!20551))

(declare-fun m!22647 () Bool)

(assert (=> b!20548 m!22647))

(declare-fun m!22649 () Bool)

(assert (=> b!20548 m!22649))

(declare-fun m!22651 () Bool)

(assert (=> b!20550 m!22651))

(assert (=> b!20549 m!22647))

(assert (=> b!20549 m!22649))

(declare-fun m!22653 () Bool)

(assert (=> b!20551 m!22653))

(assert (=> b!20519 d!12609))

(declare-fun d!12611 () Bool)

(declare-fun res!8904 () Bool)

(declare-fun e!10775 () Bool)

(assert (=> d!12611 (=> res!8904 e!10775)))

(assert (=> d!12611 (= res!8904 (not (is-CC!31 (right!679 res!5606))))))

(assert (=> d!12611 (= (balanced!31 (right!679 res!5606)) e!10775)))

(declare-fun b!20552 () Bool)

(declare-fun e!10776 () Bool)

(assert (=> b!20552 (= e!10775 e!10776)))

(declare-fun res!8906 () Bool)

(assert (=> b!20552 (=> (not res!8906) (not e!10776))))

(assert (=> b!20552 (= res!8906 (>= (- (level!29 (left!676 (right!679 res!5606))) (level!29 (right!679 (right!679 res!5606)))) (- 1)))))

(declare-fun b!20554 () Bool)

(declare-fun res!8905 () Bool)

(assert (=> b!20554 (=> (not res!8905) (not e!10776))))

(assert (=> b!20554 (= res!8905 (balanced!31 (left!676 (right!679 res!5606))))))

(declare-fun b!20553 () Bool)

(declare-fun res!8907 () Bool)

(assert (=> b!20553 (=> (not res!8907) (not e!10776))))

(assert (=> b!20553 (= res!8907 (<= (- (level!29 (left!676 (right!679 res!5606))) (level!29 (right!679 (right!679 res!5606)))) 1))))

(declare-fun b!20555 () Bool)

(assert (=> b!20555 (= e!10776 (balanced!31 (right!679 (right!679 res!5606))))))

(assert (= (and d!12611 (not res!8904)) b!20552))

(assert (= (and b!20552 res!8906) b!20553))

(assert (= (and b!20553 res!8907) b!20554))

(assert (= (and b!20554 res!8905) b!20555))

(declare-fun m!22655 () Bool)

(assert (=> b!20552 m!22655))

(declare-fun m!22657 () Bool)

(assert (=> b!20552 m!22657))

(declare-fun m!22659 () Bool)

(assert (=> b!20554 m!22659))

(assert (=> b!20553 m!22655))

(assert (=> b!20553 m!22657))

(declare-fun m!22661 () Bool)

(assert (=> b!20555 m!22661))

(assert (=> b!20533 d!12611))

(declare-fun b!20557 () Bool)

(declare-fun e!10777 () Int)

(declare-fun lt!3096 () Int)

(declare-fun lt!3095 () Int)

(assert (=> b!20557 (= e!10777 (+ 1 (ite (>= lt!3096 lt!3095) lt!3096 lt!3095)))))

(assert (=> b!20557 (= lt!3095 (level!29 (right!679 (right!679 xs!604))))))

(assert (=> b!20557 (= lt!3096 (level!29 (left!676 (right!679 xs!604))))))

(declare-fun d!12613 () Bool)

(declare-fun lt!3097 () Int)

(assert (=> d!12613 (>= lt!3097 0)))

(assert (=> d!12613 (= lt!3097 e!10777)))

(declare-fun c!4941 () Bool)

(assert (=> d!12613 (= c!4941 (or (is-Empty!42 (right!679 xs!604)) (is-Single!31 (right!679 xs!604))))))

(assert (=> d!12613 (= (level!29 (right!679 xs!604)) lt!3097)))

(declare-fun b!20556 () Bool)

(assert (=> b!20556 (= e!10777 0)))

(assert (= (and d!12613 c!4941) b!20556))

(assert (= (and d!12613 (not c!4941)) b!20557))

(assert (=> b!20557 m!22649))

(assert (=> b!20557 m!22647))

(assert (=> b!20455 d!12613))

(declare-fun b!20559 () Bool)

(declare-fun e!10778 () Int)

(declare-fun lt!3099 () Int)

(declare-fun lt!3098 () Int)

(assert (=> b!20559 (= e!10778 (+ 1 (ite (>= lt!3099 lt!3098) lt!3099 lt!3098)))))

(assert (=> b!20559 (= lt!3098 (level!29 (right!679 (left!676 xs!604))))))

(assert (=> b!20559 (= lt!3099 (level!29 (left!676 (left!676 xs!604))))))

(declare-fun d!12615 () Bool)

(declare-fun lt!3100 () Int)

(assert (=> d!12615 (>= lt!3100 0)))

(assert (=> d!12615 (= lt!3100 e!10778)))

(declare-fun c!4942 () Bool)

(assert (=> d!12615 (= c!4942 (or (is-Empty!42 (left!676 xs!604)) (is-Single!31 (left!676 xs!604))))))

(assert (=> d!12615 (= (level!29 (left!676 xs!604)) lt!3100)))

(declare-fun b!20558 () Bool)

(assert (=> b!20558 (= e!10778 0)))

(assert (= (and d!12615 c!4942) b!20558))

(assert (= (and d!12615 (not c!4942)) b!20559))

(declare-fun m!22663 () Bool)

(assert (=> b!20559 m!22663))

(declare-fun m!22665 () Bool)

(assert (=> b!20559 m!22665))

(assert (=> b!20455 d!12615))

(declare-fun d!12617 () Bool)

(assert (=> d!12617 (= (isEmpty!294 (left!676 xs!604)) (= (left!676 xs!604) Empty!42))))

(assert (=> b!20526 d!12617))

(declare-fun d!12619 () Bool)

(declare-fun res!8908 () Bool)

(declare-fun e!10779 () Bool)

(assert (=> d!12619 (=> res!8908 e!10779)))

(assert (=> d!12619 (= res!8908 (not (is-CC!31 (left!676 res!5606))))))

(assert (=> d!12619 (= (concInv!30 (left!676 res!5606)) e!10779)))

(declare-fun b!20563 () Bool)

(declare-fun e!10780 () Bool)

(assert (=> b!20563 (= e!10780 (concInv!30 (right!679 (left!676 res!5606))))))

(declare-fun b!20562 () Bool)

(declare-fun res!8910 () Bool)

(assert (=> b!20562 (=> (not res!8910) (not e!10780))))

(assert (=> b!20562 (= res!8910 (concInv!30 (left!676 (left!676 res!5606))))))

(declare-fun b!20560 () Bool)

(assert (=> b!20560 (= e!10779 e!10780)))

(declare-fun res!8911 () Bool)

(assert (=> b!20560 (=> (not res!8911) (not e!10780))))

(assert (=> b!20560 (= res!8911 (not (isEmpty!294 (left!676 (left!676 res!5606)))))))

(declare-fun b!20561 () Bool)

(declare-fun res!8909 () Bool)

(assert (=> b!20561 (=> (not res!8909) (not e!10780))))

(assert (=> b!20561 (= res!8909 (not (isEmpty!294 (right!679 (left!676 res!5606)))))))

(assert (= (and d!12619 (not res!8908)) b!20560))

(assert (= (and b!20560 res!8911) b!20561))

(assert (= (and b!20561 res!8909) b!20562))

(assert (= (and b!20562 res!8910) b!20563))

(declare-fun m!22667 () Bool)

(assert (=> b!20563 m!22667))

(declare-fun m!22669 () Bool)

(assert (=> b!20562 m!22669))

(declare-fun m!22671 () Bool)

(assert (=> b!20560 m!22671))

(declare-fun m!22673 () Bool)

(assert (=> b!20561 m!22673))

(assert (=> b!20494 d!12619))

(declare-fun e!10782 () List!337)

(declare-fun b!20567 () Bool)

(assert (=> b!20567 (= e!10782 (Cons!331 (h!245 (t!4332 (toList!97 xs!604))) (insertAtIndex!10 (t!4332 (t!4332 (toList!97 xs!604))) (- (- i!298 1) 1) y!824)))))

(declare-fun b!20564 () Bool)

(declare-fun e!10781 () List!337)

(assert (=> b!20564 (= e!10781 (Cons!331 y!824 Nil!332))))

(declare-fun d!12621 () Bool)

(declare-fun c!4943 () Bool)

(assert (=> d!12621 (= c!4943 (is-Nil!332 (t!4332 (toList!97 xs!604))))))

(assert (=> d!12621 (= (insertAtIndex!10 (t!4332 (toList!97 xs!604)) (- i!298 1) y!824) e!10781)))

(declare-fun b!20565 () Bool)

(assert (=> b!20565 (= e!10781 e!10782)))

(declare-fun c!4944 () Bool)

(assert (=> b!20565 (= c!4944 (= (- i!298 1) 0))))

(declare-fun b!20566 () Bool)

(assert (=> b!20566 (= e!10782 (Cons!331 y!824 (t!4332 (toList!97 xs!604))))))

(assert (= (and b!20565 c!4944) b!20566))

(assert (= (and b!20565 (not c!4944)) b!20567))

(assert (= (and d!12621 c!4943) b!20564))

(assert (= (and d!12621 (not c!4943)) b!20565))

(declare-fun m!22675 () Bool)

(assert (=> b!20567 m!22675))

(assert (=> b!20479 d!12621))

(declare-fun b!20569 () Bool)

(declare-fun e!10783 () Int)

(declare-fun lt!3102 () Int)

(declare-fun lt!3101 () Int)

(assert (=> b!20569 (= e!10783 (+ 1 (ite (>= lt!3102 lt!3101) lt!3102 lt!3101)))))

(assert (=> b!20569 (= lt!3101 (level!29 (right!679 (left!676 res!5606))))))

(assert (=> b!20569 (= lt!3102 (level!29 (left!676 (left!676 res!5606))))))

(declare-fun d!12623 () Bool)

(declare-fun lt!3103 () Int)

(assert (=> d!12623 (>= lt!3103 0)))

(assert (=> d!12623 (= lt!3103 e!10783)))

(declare-fun c!4945 () Bool)

(assert (=> d!12623 (= c!4945 (or (is-Empty!42 (left!676 res!5606)) (is-Single!31 (left!676 res!5606))))))

(assert (=> d!12623 (= (level!29 (left!676 res!5606)) lt!3103)))

(declare-fun b!20568 () Bool)

(assert (=> b!20568 (= e!10783 0)))

(assert (= (and d!12623 c!4945) b!20568))

(assert (= (and d!12623 (not c!4945)) b!20569))

(declare-fun m!22677 () Bool)

(assert (=> b!20569 m!22677))

(declare-fun m!22679 () Bool)

(assert (=> b!20569 m!22679))

(assert (=> b!20530 d!12623))

(declare-fun b!20571 () Bool)

(declare-fun e!10784 () Int)

(declare-fun lt!3105 () Int)

(declare-fun lt!3104 () Int)

(assert (=> b!20571 (= e!10784 (+ 1 (ite (>= lt!3105 lt!3104) lt!3105 lt!3104)))))

(assert (=> b!20571 (= lt!3104 (level!29 (right!679 (right!679 res!5606))))))

(assert (=> b!20571 (= lt!3105 (level!29 (left!676 (right!679 res!5606))))))

(declare-fun d!12625 () Bool)

(declare-fun lt!3106 () Int)

(assert (=> d!12625 (>= lt!3106 0)))

(assert (=> d!12625 (= lt!3106 e!10784)))

(declare-fun c!4946 () Bool)

(assert (=> d!12625 (= c!4946 (or (is-Empty!42 (right!679 res!5606)) (is-Single!31 (right!679 res!5606))))))

(assert (=> d!12625 (= (level!29 (right!679 res!5606)) lt!3106)))

(declare-fun b!20570 () Bool)

(assert (=> b!20570 (= e!10784 0)))

(assert (= (and d!12625 c!4946) b!20570))

(assert (= (and d!12625 (not c!4946)) b!20571))

(assert (=> b!20571 m!22657))

(assert (=> b!20571 m!22655))

(assert (=> b!20530 d!12625))

(declare-fun d!12627 () Bool)

(declare-fun res!8912 () Bool)

(declare-fun e!10785 () Bool)

(assert (=> d!12627 (=> res!8912 e!10785)))

(assert (=> d!12627 (= res!8912 (not (is-CC!31 (right!679 res!5606))))))

(assert (=> d!12627 (= (concInv!30 (right!679 res!5606)) e!10785)))

(declare-fun b!20575 () Bool)

(declare-fun e!10786 () Bool)

(assert (=> b!20575 (= e!10786 (concInv!30 (right!679 (right!679 res!5606))))))

(declare-fun b!20574 () Bool)

(declare-fun res!8914 () Bool)

(assert (=> b!20574 (=> (not res!8914) (not e!10786))))

(assert (=> b!20574 (= res!8914 (concInv!30 (left!676 (right!679 res!5606))))))

(declare-fun b!20572 () Bool)

(assert (=> b!20572 (= e!10785 e!10786)))

(declare-fun res!8915 () Bool)

(assert (=> b!20572 (=> (not res!8915) (not e!10786))))

(assert (=> b!20572 (= res!8915 (not (isEmpty!294 (left!676 (right!679 res!5606)))))))

(declare-fun b!20573 () Bool)

(declare-fun res!8913 () Bool)

(assert (=> b!20573 (=> (not res!8913) (not e!10786))))

(assert (=> b!20573 (= res!8913 (not (isEmpty!294 (right!679 (right!679 res!5606)))))))

(assert (= (and d!12627 (not res!8912)) b!20572))

(assert (= (and b!20572 res!8915) b!20573))

(assert (= (and b!20573 res!8913) b!20574))

(assert (= (and b!20574 res!8914) b!20575))

(declare-fun m!22681 () Bool)

(assert (=> b!20575 m!22681))

(declare-fun m!22683 () Bool)

(assert (=> b!20574 m!22683))

(declare-fun m!22685 () Bool)

(assert (=> b!20572 m!22685))

(declare-fun m!22687 () Bool)

(assert (=> b!20573 m!22687))

(assert (=> b!20495 d!12627))

(assert (=> b!20524 d!12597))

(assert (=> b!20453 d!12625))

(assert (=> b!20453 d!12623))

(declare-fun d!12629 () Bool)

(declare-fun lt!3109 () Int)

(assert (=> d!12629 (>= lt!3109 0)))

(declare-fun e!10789 () Int)

(assert (=> d!12629 (= lt!3109 e!10789)))

(declare-fun c!4949 () Bool)

(assert (=> d!12629 (= c!4949 (is-Nil!332 lt!3090))))

(assert (=> d!12629 (= (size!224 lt!3090) lt!3109)))

(declare-fun b!20580 () Bool)

(assert (=> b!20580 (= e!10789 0)))

(declare-fun b!20581 () Bool)

(assert (=> b!20581 (= e!10789 (+ 1 (size!224 (t!4332 lt!3090))))))

(assert (= (and d!12629 c!4949) b!20580))

(assert (= (and d!12629 (not c!4949)) b!20581))

(declare-fun m!22689 () Bool)

(assert (=> b!20581 m!22689))

(assert (=> d!12589 d!12629))

(declare-fun b!20582 () Bool)

(declare-fun e!10791 () Int)

(assert (=> b!20582 (= e!10791 0)))

(declare-fun b!20585 () Bool)

(declare-fun e!10790 () Int)

(assert (=> b!20585 (= e!10790 (+ (size!223 (left!676 res!5606)) (size!223 (right!679 res!5606))))))

(declare-fun b!20584 () Bool)

(assert (=> b!20584 (= e!10790 1)))

(declare-fun b!20583 () Bool)

(assert (=> b!20583 (= e!10791 e!10790)))

(declare-fun c!4951 () Bool)

(assert (=> b!20583 (= c!4951 (is-Single!31 res!5606))))

(declare-fun d!12631 () Bool)

(declare-fun lt!3110 () Int)

(assert (=> d!12631 (>= lt!3110 0)))

(assert (=> d!12631 (= lt!3110 e!10791)))

(declare-fun c!4950 () Bool)

(assert (=> d!12631 (= c!4950 (is-Empty!42 res!5606))))

(assert (=> d!12631 (= (size!223 res!5606) lt!3110)))

(assert (= (and b!20583 c!4951) b!20584))

(assert (= (and b!20583 (not c!4951)) b!20585))

(assert (= (and d!12631 c!4950) b!20582))

(assert (= (and d!12631 (not c!4950)) b!20583))

(declare-fun m!22691 () Bool)

(assert (=> b!20585 m!22691))

(declare-fun m!22693 () Bool)

(assert (=> b!20585 m!22693))

(assert (=> d!12589 d!12631))

(declare-fun d!12633 () Bool)

(declare-fun e!10797 () Bool)

(assert (=> d!12633 e!10797))

(declare-fun res!8921 () Bool)

(assert (=> d!12633 (=> (not res!8921) (not e!10797))))

(declare-fun lt!3113 () List!337)

(declare-fun content!58 (List!337) (Set T!1755))

(assert (=> d!12633 (= res!8921 (= (content!58 lt!3113) (union (content!58 (toList!97 (left!676 res!5606))) (content!58 (toList!97 (right!679 res!5606))))))))

(declare-fun e!10796 () List!337)

(assert (=> d!12633 (= lt!3113 e!10796)))

(declare-fun c!4954 () Bool)

(assert (=> d!12633 (= c!4954 (is-Nil!332 (toList!97 (left!676 res!5606))))))

(assert (=> d!12633 (= (++!20 (toList!97 (left!676 res!5606)) (toList!97 (right!679 res!5606))) lt!3113)))

(declare-fun b!20595 () Bool)

(assert (=> b!20595 (= e!10796 (Cons!331 (h!245 (toList!97 (left!676 res!5606))) (++!20 (t!4332 (toList!97 (left!676 res!5606))) (toList!97 (right!679 res!5606)))))))

(declare-fun b!20596 () Bool)

(declare-fun res!8922 () Bool)

(assert (=> b!20596 (=> (not res!8922) (not e!10797))))

(assert (=> b!20596 (= res!8922 (= (size!224 lt!3113) (+ (size!224 (toList!97 (left!676 res!5606))) (size!224 (toList!97 (right!679 res!5606))))))))

(declare-fun b!20597 () Bool)

(assert (=> b!20597 (= e!10797 (or (not (= (toList!97 (right!679 res!5606)) Nil!332)) (= lt!3113 (toList!97 (left!676 res!5606)))))))

(declare-fun b!20594 () Bool)

(assert (=> b!20594 (= e!10796 (toList!97 (right!679 res!5606)))))

(assert (= (and d!12633 c!4954) b!20594))

(assert (= (and d!12633 (not c!4954)) b!20595))

(assert (= (and d!12633 res!8921) b!20596))

(assert (= (and b!20596 res!8922) b!20597))

(declare-fun m!22695 () Bool)

(assert (=> d!12633 m!22695))

(assert (=> d!12633 m!22601))

(declare-fun m!22697 () Bool)

(assert (=> d!12633 m!22697))

(assert (=> d!12633 m!22603))

(declare-fun m!22699 () Bool)

(assert (=> d!12633 m!22699))

(assert (=> b!20595 m!22603))

(declare-fun m!22701 () Bool)

(assert (=> b!20595 m!22701))

(declare-fun m!22703 () Bool)

(assert (=> b!20596 m!22703))

(assert (=> b!20596 m!22601))

(declare-fun m!22705 () Bool)

(assert (=> b!20596 m!22705))

(assert (=> b!20596 m!22603))

(declare-fun m!22707 () Bool)

(assert (=> b!20596 m!22707))

(assert (=> b!20467 d!12633))

(declare-fun b!20599 () Bool)

(declare-fun e!10798 () List!337)

(declare-fun e!10799 () List!337)

(assert (=> b!20599 (= e!10798 e!10799)))

(declare-fun c!4956 () Bool)

(assert (=> b!20599 (= c!4956 (is-Single!31 (left!676 res!5606)))))

(declare-fun d!12635 () Bool)

(declare-fun lt!3114 () List!337)

(assert (=> d!12635 (= (size!224 lt!3114) (size!223 (left!676 res!5606)))))

(assert (=> d!12635 (= lt!3114 e!10798)))

(declare-fun c!4955 () Bool)

(assert (=> d!12635 (= c!4955 (is-Empty!42 (left!676 res!5606)))))

(assert (=> d!12635 (= (toList!97 (left!676 res!5606)) lt!3114)))

(declare-fun b!20598 () Bool)

(assert (=> b!20598 (= e!10798 Nil!332)))

(declare-fun b!20601 () Bool)

(assert (=> b!20601 (= e!10799 (++!20 (toList!97 (left!676 (left!676 res!5606))) (toList!97 (right!679 (left!676 res!5606)))))))

(declare-fun b!20600 () Bool)

(assert (=> b!20600 (= e!10799 (Cons!331 (x!8791 (left!676 res!5606)) Nil!332))))

(assert (= (and b!20599 c!4956) b!20600))

(assert (= (and b!20599 (not c!4956)) b!20601))

(assert (= (and d!12635 c!4955) b!20598))

(assert (= (and d!12635 (not c!4955)) b!20599))

(declare-fun m!22709 () Bool)

(assert (=> d!12635 m!22709))

(assert (=> d!12635 m!22691))

(declare-fun m!22711 () Bool)

(assert (=> b!20601 m!22711))

(declare-fun m!22713 () Bool)

(assert (=> b!20601 m!22713))

(assert (=> b!20601 m!22711))

(assert (=> b!20601 m!22713))

(declare-fun m!22715 () Bool)

(assert (=> b!20601 m!22715))

(assert (=> b!20467 d!12635))

(declare-fun b!20603 () Bool)

(declare-fun e!10800 () List!337)

(declare-fun e!10801 () List!337)

(assert (=> b!20603 (= e!10800 e!10801)))

(declare-fun c!4958 () Bool)

(assert (=> b!20603 (= c!4958 (is-Single!31 (right!679 res!5606)))))

(declare-fun d!12637 () Bool)

(declare-fun lt!3115 () List!337)

(assert (=> d!12637 (= (size!224 lt!3115) (size!223 (right!679 res!5606)))))

(assert (=> d!12637 (= lt!3115 e!10800)))

(declare-fun c!4957 () Bool)

(assert (=> d!12637 (= c!4957 (is-Empty!42 (right!679 res!5606)))))

(assert (=> d!12637 (= (toList!97 (right!679 res!5606)) lt!3115)))

(declare-fun b!20602 () Bool)

(assert (=> b!20602 (= e!10800 Nil!332)))

(declare-fun b!20605 () Bool)

(assert (=> b!20605 (= e!10801 (++!20 (toList!97 (left!676 (right!679 res!5606))) (toList!97 (right!679 (right!679 res!5606)))))))

(declare-fun b!20604 () Bool)

(assert (=> b!20604 (= e!10801 (Cons!331 (x!8791 (right!679 res!5606)) Nil!332))))

(assert (= (and b!20603 c!4958) b!20604))

(assert (= (and b!20603 (not c!4958)) b!20605))

(assert (= (and d!12637 c!4957) b!20602))

(assert (= (and d!12637 (not c!4957)) b!20603))

(declare-fun m!22717 () Bool)

(assert (=> d!12637 m!22717))

(assert (=> d!12637 m!22693))

(declare-fun m!22719 () Bool)

(assert (=> b!20605 m!22719))

(declare-fun m!22721 () Bool)

(assert (=> b!20605 m!22721))

(assert (=> b!20605 m!22719))

(assert (=> b!20605 m!22721))

(declare-fun m!22723 () Bool)

(assert (=> b!20605 m!22723))

(assert (=> b!20467 d!12637))

(declare-fun d!12639 () Bool)

(assert (=> d!12639 (= (isEmpty!294 (right!679 res!5606)) (= (right!679 res!5606) Empty!42))))

(assert (=> b!20493 d!12639))

(declare-fun d!12641 () Bool)

(declare-fun res!8923 () Bool)

(declare-fun e!10802 () Bool)

(assert (=> d!12641 (=> res!8923 e!10802)))

(assert (=> d!12641 (= res!8923 (not (is-CC!31 (left!676 res!5606))))))

(assert (=> d!12641 (= (balanced!31 (left!676 res!5606)) e!10802)))

(declare-fun b!20606 () Bool)

(declare-fun e!10803 () Bool)

(assert (=> b!20606 (= e!10802 e!10803)))

(declare-fun res!8925 () Bool)

(assert (=> b!20606 (=> (not res!8925) (not e!10803))))

(assert (=> b!20606 (= res!8925 (>= (- (level!29 (left!676 (left!676 res!5606))) (level!29 (right!679 (left!676 res!5606)))) (- 1)))))

(declare-fun b!20608 () Bool)

(declare-fun res!8924 () Bool)

(assert (=> b!20608 (=> (not res!8924) (not e!10803))))

(assert (=> b!20608 (= res!8924 (balanced!31 (left!676 (left!676 res!5606))))))

(declare-fun b!20607 () Bool)

(declare-fun res!8926 () Bool)

(assert (=> b!20607 (=> (not res!8926) (not e!10803))))

(assert (=> b!20607 (= res!8926 (<= (- (level!29 (left!676 (left!676 res!5606))) (level!29 (right!679 (left!676 res!5606)))) 1))))

(declare-fun b!20609 () Bool)

(assert (=> b!20609 (= e!10803 (balanced!31 (right!679 (left!676 res!5606))))))

(assert (= (and d!12641 (not res!8923)) b!20606))

(assert (= (and b!20606 res!8925) b!20607))

(assert (= (and b!20607 res!8926) b!20608))

(assert (= (and b!20608 res!8924) b!20609))

(assert (=> b!20606 m!22679))

(assert (=> b!20606 m!22677))

(declare-fun m!22725 () Bool)

(assert (=> b!20608 m!22725))

(assert (=> b!20607 m!22679))

(assert (=> b!20607 m!22677))

(declare-fun m!22727 () Bool)

(assert (=> b!20609 m!22727))

(assert (=> b!20532 d!12641))

(assert (=> b!20531 d!12623))

(assert (=> b!20531 d!12625))

(declare-fun d!12643 () Bool)

(declare-fun res!8927 () Bool)

(declare-fun e!10804 () Bool)

(assert (=> d!12643 (=> res!8927 e!10804)))

(assert (=> d!12643 (= res!8927 (not (is-CC!31 (right!679 xs!604))))))

(assert (=> d!12643 (= (concInv!30 (right!679 xs!604)) e!10804)))

(declare-fun b!20613 () Bool)

(declare-fun e!10805 () Bool)

(assert (=> b!20613 (= e!10805 (concInv!30 (right!679 (right!679 xs!604))))))

(declare-fun b!20612 () Bool)

(declare-fun res!8929 () Bool)

(assert (=> b!20612 (=> (not res!8929) (not e!10805))))

(assert (=> b!20612 (= res!8929 (concInv!30 (left!676 (right!679 xs!604))))))

(declare-fun b!20610 () Bool)

(assert (=> b!20610 (= e!10804 e!10805)))

(declare-fun res!8930 () Bool)

(assert (=> b!20610 (=> (not res!8930) (not e!10805))))

(assert (=> b!20610 (= res!8930 (not (isEmpty!294 (left!676 (right!679 xs!604)))))))

(declare-fun b!20611 () Bool)

(declare-fun res!8928 () Bool)

(assert (=> b!20611 (=> (not res!8928) (not e!10805))))

(assert (=> b!20611 (= res!8928 (not (isEmpty!294 (right!679 (right!679 xs!604)))))))

(assert (= (and d!12643 (not res!8927)) b!20610))

(assert (= (and b!20610 res!8930) b!20611))

(assert (= (and b!20611 res!8928) b!20612))

(assert (= (and b!20612 res!8929) b!20613))

(declare-fun m!22729 () Bool)

(assert (=> b!20613 m!22729))

(declare-fun m!22731 () Bool)

(assert (=> b!20612 m!22731))

(declare-fun m!22733 () Bool)

(assert (=> b!20610 m!22733))

(declare-fun m!22735 () Bool)

(assert (=> b!20611 m!22735))

(assert (=> b!20529 d!12643))

(assert (=> b!20517 d!12615))

(assert (=> b!20517 d!12613))

(declare-fun d!12645 () Bool)

(declare-fun res!8931 () Bool)

(declare-fun e!10806 () Bool)

(assert (=> d!12645 (=> res!8931 e!10806)))

(assert (=> d!12645 (= res!8931 (not (is-CC!31 (left!676 xs!604))))))

(assert (=> d!12645 (= (balanced!31 (left!676 xs!604)) e!10806)))

(declare-fun b!20614 () Bool)

(declare-fun e!10807 () Bool)

(assert (=> b!20614 (= e!10806 e!10807)))

(declare-fun res!8933 () Bool)

(assert (=> b!20614 (=> (not res!8933) (not e!10807))))

(assert (=> b!20614 (= res!8933 (>= (- (level!29 (left!676 (left!676 xs!604))) (level!29 (right!679 (left!676 xs!604)))) (- 1)))))

(declare-fun b!20616 () Bool)

(declare-fun res!8932 () Bool)

(assert (=> b!20616 (=> (not res!8932) (not e!10807))))

(assert (=> b!20616 (= res!8932 (balanced!31 (left!676 (left!676 xs!604))))))

(declare-fun b!20615 () Bool)

(declare-fun res!8934 () Bool)

(assert (=> b!20615 (=> (not res!8934) (not e!10807))))

(assert (=> b!20615 (= res!8934 (<= (- (level!29 (left!676 (left!676 xs!604))) (level!29 (right!679 (left!676 xs!604)))) 1))))

(declare-fun b!20617 () Bool)

(assert (=> b!20617 (= e!10807 (balanced!31 (right!679 (left!676 xs!604))))))

(assert (= (and d!12645 (not res!8931)) b!20614))

(assert (= (and b!20614 res!8933) b!20615))

(assert (= (and b!20615 res!8934) b!20616))

(assert (= (and b!20616 res!8932) b!20617))

(assert (=> b!20614 m!22665))

(assert (=> b!20614 m!22663))

(declare-fun m!22737 () Bool)

(assert (=> b!20616 m!22737))

(assert (=> b!20615 m!22665))

(assert (=> b!20615 m!22663))

(declare-fun m!22739 () Bool)

(assert (=> b!20617 m!22739))

(assert (=> b!20518 d!12645))

(declare-fun d!12647 () Bool)

(assert (=> d!12647 (= (isEmpty!294 (left!676 res!5606)) (= (left!676 res!5606) Empty!42))))

(assert (=> b!20492 d!12647))

(declare-fun b!20618 () Bool)

(declare-fun e!10809 () Int)

(assert (=> b!20618 (= e!10809 0)))

(declare-fun b!20621 () Bool)

(declare-fun e!10808 () Int)

(assert (=> b!20621 (= e!10808 (+ (size!223 (left!676 (left!676 xs!604))) (size!223 (right!679 (left!676 xs!604)))))))

(declare-fun b!20620 () Bool)

(assert (=> b!20620 (= e!10808 1)))

(declare-fun b!20619 () Bool)

(assert (=> b!20619 (= e!10809 e!10808)))

(declare-fun c!4960 () Bool)

(assert (=> b!20619 (= c!4960 (is-Single!31 (left!676 xs!604)))))

(declare-fun d!12649 () Bool)

(declare-fun lt!3116 () Int)

(assert (=> d!12649 (>= lt!3116 0)))

(assert (=> d!12649 (= lt!3116 e!10809)))

(declare-fun c!4959 () Bool)

(assert (=> d!12649 (= c!4959 (is-Empty!42 (left!676 xs!604)))))

(assert (=> d!12649 (= (size!223 (left!676 xs!604)) lt!3116)))

(assert (= (and b!20619 c!4960) b!20620))

(assert (= (and b!20619 (not c!4960)) b!20621))

(assert (= (and d!12649 c!4959) b!20618))

(assert (= (and d!12649 (not c!4959)) b!20619))

(declare-fun m!22741 () Bool)

(assert (=> b!20621 m!22741))

(declare-fun m!22743 () Bool)

(assert (=> b!20621 m!22743))

(assert (=> b!20507 d!12649))

(declare-fun b!20622 () Bool)

(declare-fun e!10811 () Int)

(assert (=> b!20622 (= e!10811 0)))

(declare-fun b!20625 () Bool)

(declare-fun e!10810 () Int)

(assert (=> b!20625 (= e!10810 (+ (size!223 (left!676 (right!679 xs!604))) (size!223 (right!679 (right!679 xs!604)))))))

(declare-fun b!20624 () Bool)

(assert (=> b!20624 (= e!10810 1)))

(declare-fun b!20623 () Bool)

(assert (=> b!20623 (= e!10811 e!10810)))

(declare-fun c!4962 () Bool)

(assert (=> b!20623 (= c!4962 (is-Single!31 (right!679 xs!604)))))

(declare-fun d!12651 () Bool)

(declare-fun lt!3117 () Int)

(assert (=> d!12651 (>= lt!3117 0)))

(assert (=> d!12651 (= lt!3117 e!10811)))

(declare-fun c!4961 () Bool)

(assert (=> d!12651 (= c!4961 (is-Empty!42 (right!679 xs!604)))))

(assert (=> d!12651 (= (size!223 (right!679 xs!604)) lt!3117)))

(assert (= (and b!20623 c!4962) b!20624))

(assert (= (and b!20623 (not c!4962)) b!20625))

(assert (= (and d!12651 c!4961) b!20622))

(assert (= (and d!12651 (not c!4961)) b!20623))

(declare-fun m!22745 () Bool)

(assert (=> b!20625 m!22745))

(declare-fun m!22747 () Bool)

(assert (=> b!20625 m!22747))

(assert (=> b!20507 d!12651))

(declare-fun b!20636 () Bool)

(declare-fun e!10822 () List!337)

(assert (=> b!20636 (= e!10822 (++!20 (toList!97 (left!676 xs!604)) (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824)))))

(declare-fun d!12653 () Bool)

(declare-fun e!10820 () Bool)

(assert (=> d!12653 e!10820))

(declare-fun res!8942 () Bool)

(assert (=> d!12653 (=> (not res!8942) (not e!10820))))

(declare-fun e!10823 () Bool)

(assert (=> d!12653 (= res!8942 e!10823)))

(declare-fun res!8941 () Bool)

(assert (=> d!12653 (=> res!8941 e!10823)))

(assert (=> d!12653 (= res!8941 (or (is-Nil!332 (toList!97 (left!676 xs!604))) (= i!298 0)))))

(declare-fun e!10821 () Bool)

(assert (=> d!12653 e!10821))

(declare-fun res!8943 () Bool)

(assert (=> d!12653 (=> (not res!8943) (not e!10821))))

(assert (=> d!12653 (= res!8943 (<= 0 i!298))))

(assert (=> d!12653 (= (appendInsertIndex!11 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604)) i!298 y!824) true)))

(declare-fun b!20637 () Bool)

(assert (=> b!20637 (= e!10823 (appendInsertIndex!11 (t!4332 (toList!97 (left!676 xs!604))) (toList!97 (right!679 xs!604)) (- i!298 1) y!824))))

(declare-fun b!20638 () Bool)

(assert (=> b!20638 (= e!10820 (= (insertAtIndex!10 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604))) i!298 y!824) e!10822))))

(declare-fun c!4965 () Bool)

(assert (=> b!20638 (= c!4965 (< i!298 (size!224 (toList!97 (left!676 xs!604)))))))

(declare-fun b!20639 () Bool)

(assert (=> b!20639 (= e!10822 (++!20 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824) (toList!97 (right!679 xs!604))))))

(declare-fun b!20640 () Bool)

(assert (=> b!20640 (= e!10821 (<= i!298 (+ (size!224 (toList!97 (left!676 xs!604))) (size!224 (toList!97 (right!679 xs!604))))))))

(assert (= (and d!12653 res!8943) b!20640))

(assert (= (and d!12653 (not res!8941)) b!20637))

(assert (= (and d!12653 res!8942) b!20638))

(assert (= (and b!20638 c!4965) b!20639))

(assert (= (and b!20638 (not c!4965)) b!20636))

(assert (=> b!20636 m!22611))

(declare-fun m!22749 () Bool)

(assert (=> b!20636 m!22749))

(assert (=> b!20636 m!22613))

(declare-fun m!22751 () Bool)

(assert (=> b!20636 m!22751))

(assert (=> b!20636 m!22611))

(assert (=> b!20636 m!22751))

(declare-fun m!22753 () Bool)

(assert (=> b!20636 m!22753))

(assert (=> b!20639 m!22611))

(declare-fun m!22755 () Bool)

(assert (=> b!20639 m!22755))

(assert (=> b!20639 m!22755))

(assert (=> b!20639 m!22613))

(declare-fun m!22757 () Bool)

(assert (=> b!20639 m!22757))

(assert (=> b!20640 m!22611))

(assert (=> b!20640 m!22749))

(assert (=> b!20640 m!22613))

(declare-fun m!22759 () Bool)

(assert (=> b!20640 m!22759))

(assert (=> b!20638 m!22611))

(assert (=> b!20638 m!22613))

(assert (=> b!20638 m!22615))

(assert (=> b!20638 m!22615))

(declare-fun m!22761 () Bool)

(assert (=> b!20638 m!22761))

(assert (=> b!20638 m!22611))

(assert (=> b!20638 m!22749))

(assert (=> b!20637 m!22613))

(declare-fun m!22763 () Bool)

(assert (=> b!20637 m!22763))

(assert (=> b!20525 d!12653))

(declare-fun b!20642 () Bool)

(declare-fun e!10824 () List!337)

(declare-fun e!10825 () List!337)

(assert (=> b!20642 (= e!10824 e!10825)))

(declare-fun c!4967 () Bool)

(assert (=> b!20642 (= c!4967 (is-Single!31 (left!676 xs!604)))))

(declare-fun d!12655 () Bool)

(declare-fun lt!3118 () List!337)

(assert (=> d!12655 (= (size!224 lt!3118) (size!223 (left!676 xs!604)))))

(assert (=> d!12655 (= lt!3118 e!10824)))

(declare-fun c!4966 () Bool)

(assert (=> d!12655 (= c!4966 (is-Empty!42 (left!676 xs!604)))))

(assert (=> d!12655 (= (toList!97 (left!676 xs!604)) lt!3118)))

(declare-fun b!20641 () Bool)

(assert (=> b!20641 (= e!10824 Nil!332)))

(declare-fun b!20644 () Bool)

(assert (=> b!20644 (= e!10825 (++!20 (toList!97 (left!676 (left!676 xs!604))) (toList!97 (right!679 (left!676 xs!604)))))))

(declare-fun b!20643 () Bool)

(assert (=> b!20643 (= e!10825 (Cons!331 (x!8791 (left!676 xs!604)) Nil!332))))

(assert (= (and b!20642 c!4967) b!20643))

(assert (= (and b!20642 (not c!4967)) b!20644))

(assert (= (and d!12655 c!4966) b!20641))

(assert (= (and d!12655 (not c!4966)) b!20642))

(declare-fun m!22765 () Bool)

(assert (=> d!12655 m!22765))

(assert (=> d!12655 m!22625))

(declare-fun m!22767 () Bool)

(assert (=> b!20644 m!22767))

(declare-fun m!22769 () Bool)

(assert (=> b!20644 m!22769))

(assert (=> b!20644 m!22767))

(assert (=> b!20644 m!22769))

(declare-fun m!22771 () Bool)

(assert (=> b!20644 m!22771))

(assert (=> b!20525 d!12655))

(declare-fun b!20646 () Bool)

(declare-fun e!10826 () List!337)

(declare-fun e!10827 () List!337)

(assert (=> b!20646 (= e!10826 e!10827)))

(declare-fun c!4969 () Bool)

(assert (=> b!20646 (= c!4969 (is-Single!31 (right!679 xs!604)))))

(declare-fun d!12657 () Bool)

(declare-fun lt!3119 () List!337)

(assert (=> d!12657 (= (size!224 lt!3119) (size!223 (right!679 xs!604)))))

(assert (=> d!12657 (= lt!3119 e!10826)))

(declare-fun c!4968 () Bool)

(assert (=> d!12657 (= c!4968 (is-Empty!42 (right!679 xs!604)))))

(assert (=> d!12657 (= (toList!97 (right!679 xs!604)) lt!3119)))

(declare-fun b!20645 () Bool)

(assert (=> b!20645 (= e!10826 Nil!332)))

(declare-fun b!20648 () Bool)

(assert (=> b!20648 (= e!10827 (++!20 (toList!97 (left!676 (right!679 xs!604))) (toList!97 (right!679 (right!679 xs!604)))))))

(declare-fun b!20647 () Bool)

(assert (=> b!20647 (= e!10827 (Cons!331 (x!8791 (right!679 xs!604)) Nil!332))))

(assert (= (and b!20646 c!4969) b!20647))

(assert (= (and b!20646 (not c!4969)) b!20648))

(assert (= (and d!12657 c!4968) b!20645))

(assert (= (and d!12657 (not c!4968)) b!20646))

(declare-fun m!22773 () Bool)

(assert (=> d!12657 m!22773))

(assert (=> d!12657 m!22627))

(declare-fun m!22775 () Bool)

(assert (=> b!20648 m!22775))

(declare-fun m!22777 () Bool)

(assert (=> b!20648 m!22777))

(assert (=> b!20648 m!22775))

(assert (=> b!20648 m!22777))

(declare-fun m!22779 () Bool)

(assert (=> b!20648 m!22779))

(assert (=> b!20525 d!12657))

(declare-fun d!12659 () Bool)

(declare-fun res!8944 () Bool)

(declare-fun e!10828 () Bool)

(assert (=> d!12659 (=> res!8944 e!10828)))

(assert (=> d!12659 (= res!8944 (not (is-CC!31 (left!676 xs!604))))))

(assert (=> d!12659 (= (concInv!30 (left!676 xs!604)) e!10828)))

(declare-fun b!20652 () Bool)

(declare-fun e!10829 () Bool)

(assert (=> b!20652 (= e!10829 (concInv!30 (right!679 (left!676 xs!604))))))

(declare-fun b!20651 () Bool)

(declare-fun res!8946 () Bool)

(assert (=> b!20651 (=> (not res!8946) (not e!10829))))

(assert (=> b!20651 (= res!8946 (concInv!30 (left!676 (left!676 xs!604))))))

(declare-fun b!20649 () Bool)

(assert (=> b!20649 (= e!10828 e!10829)))

(declare-fun res!8947 () Bool)

(assert (=> b!20649 (=> (not res!8947) (not e!10829))))

(assert (=> b!20649 (= res!8947 (not (isEmpty!294 (left!676 (left!676 xs!604)))))))

(declare-fun b!20650 () Bool)

(declare-fun res!8945 () Bool)

(assert (=> b!20650 (=> (not res!8945) (not e!10829))))

(assert (=> b!20650 (= res!8945 (not (isEmpty!294 (right!679 (left!676 xs!604)))))))

(assert (= (and d!12659 (not res!8944)) b!20649))

(assert (= (and b!20649 res!8947) b!20650))

(assert (= (and b!20650 res!8945) b!20651))

(assert (= (and b!20651 res!8946) b!20652))

(declare-fun m!22781 () Bool)

(assert (=> b!20652 m!22781))

(declare-fun m!22783 () Bool)

(assert (=> b!20651 m!22783))

(declare-fun m!22785 () Bool)

(assert (=> b!20649 m!22785))

(declare-fun m!22787 () Bool)

(assert (=> b!20650 m!22787))

(assert (=> b!20528 d!12659))

(declare-fun d!12661 () Bool)

(declare-fun lt!3120 () Int)

(assert (=> d!12661 (>= lt!3120 0)))

(declare-fun e!10830 () Int)

(assert (=> d!12661 (= lt!3120 e!10830)))

(declare-fun c!4970 () Bool)

(assert (=> d!12661 (= c!4970 (is-Nil!332 lt!3091))))

(assert (=> d!12661 (= (size!224 lt!3091) lt!3120)))

(declare-fun b!20653 () Bool)

(assert (=> b!20653 (= e!10830 0)))

(declare-fun b!20654 () Bool)

(assert (=> b!20654 (= e!10830 (+ 1 (size!224 (t!4332 lt!3091))))))

(assert (= (and d!12661 c!4970) b!20653))

(assert (= (and d!12661 (not c!4970)) b!20654))

(declare-fun m!22789 () Bool)

(assert (=> b!20654 m!22789))

(assert (=> d!12593 d!12661))

(assert (=> d!12593 d!12597))

(assert (=> b!20516 d!12615))

(assert (=> b!20516 d!12613))

(declare-fun d!12663 () Bool)

(declare-fun e!10832 () Bool)

(assert (=> d!12663 e!10832))

(declare-fun res!8948 () Bool)

(assert (=> d!12663 (=> (not res!8948) (not e!10832))))

(declare-fun lt!3121 () List!337)

(assert (=> d!12663 (= res!8948 (= (content!58 lt!3121) (union (content!58 (toList!97 (left!676 xs!604))) (content!58 (toList!97 (right!679 xs!604))))))))

(declare-fun e!10831 () List!337)

(assert (=> d!12663 (= lt!3121 e!10831)))

(declare-fun c!4971 () Bool)

(assert (=> d!12663 (= c!4971 (is-Nil!332 (toList!97 (left!676 xs!604))))))

(assert (=> d!12663 (= (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604))) lt!3121)))

(declare-fun b!20656 () Bool)

(assert (=> b!20656 (= e!10831 (Cons!331 (h!245 (toList!97 (left!676 xs!604))) (++!20 (t!4332 (toList!97 (left!676 xs!604))) (toList!97 (right!679 xs!604)))))))

(declare-fun b!20657 () Bool)

(declare-fun res!8949 () Bool)

(assert (=> b!20657 (=> (not res!8949) (not e!10832))))

(assert (=> b!20657 (= res!8949 (= (size!224 lt!3121) (+ (size!224 (toList!97 (left!676 xs!604))) (size!224 (toList!97 (right!679 xs!604))))))))

(declare-fun b!20658 () Bool)

(assert (=> b!20658 (= e!10832 (or (not (= (toList!97 (right!679 xs!604)) Nil!332)) (= lt!3121 (toList!97 (left!676 xs!604)))))))

(declare-fun b!20655 () Bool)

(assert (=> b!20655 (= e!10831 (toList!97 (right!679 xs!604)))))

(assert (= (and d!12663 c!4971) b!20655))

(assert (= (and d!12663 (not c!4971)) b!20656))

(assert (= (and d!12663 res!8948) b!20657))

(assert (= (and b!20657 res!8949) b!20658))

(declare-fun m!22791 () Bool)

(assert (=> d!12663 m!22791))

(assert (=> d!12663 m!22611))

(declare-fun m!22793 () Bool)

(assert (=> d!12663 m!22793))

(assert (=> d!12663 m!22613))

(declare-fun m!22795 () Bool)

(assert (=> d!12663 m!22795))

(assert (=> b!20656 m!22613))

(declare-fun m!22797 () Bool)

(assert (=> b!20656 m!22797))

(declare-fun m!22799 () Bool)

(assert (=> b!20657 m!22799))

(assert (=> b!20657 m!22611))

(assert (=> b!20657 m!22749))

(assert (=> b!20657 m!22613))

(assert (=> b!20657 m!22759))

(assert (=> b!20483 d!12663))

(assert (=> b!20483 d!12655))

(assert (=> b!20483 d!12657))

(declare-fun d!12665 () Bool)

(assert (=> d!12665 (= (isEmpty!294 (right!679 xs!604)) (= (right!679 xs!604) Empty!42))))

(assert (=> b!20527 d!12665))

(declare-fun b!20659 () Bool)

(declare-fun e!10833 () Bool)

(declare-fun tp!4693 () Bool)

(declare-fun tp!4694 () Bool)

(assert (=> b!20659 (= e!10833 (and tp!4693 tp!4694))))

(declare-fun b!20660 () Bool)

(assert (=> b!20660 (= e!10833 tp_is_empty!99)))

(assert (=> b!20546 (= tp!4691 e!10833)))

(assert (= (and b!20546 (is-CC!31 (left!676 (right!679 xs!604)))) b!20659))

(assert (= (and b!20546 (is-Single!31 (left!676 (right!679 xs!604)))) b!20660))

(declare-fun b!20661 () Bool)

(declare-fun e!10834 () Bool)

(declare-fun tp!4695 () Bool)

(declare-fun tp!4696 () Bool)

(assert (=> b!20661 (= e!10834 (and tp!4695 tp!4696))))

(declare-fun b!20662 () Bool)

(assert (=> b!20662 (= e!10834 tp_is_empty!99)))

(assert (=> b!20546 (= tp!4692 e!10834)))

(assert (= (and b!20546 (is-CC!31 (right!679 (right!679 xs!604)))) b!20661))

(assert (= (and b!20546 (is-Single!31 (right!679 (right!679 xs!604)))) b!20662))

(declare-fun b!20663 () Bool)

(declare-fun e!10835 () Bool)

(declare-fun tp!4697 () Bool)

(declare-fun tp!4698 () Bool)

(assert (=> b!20663 (= e!10835 (and tp!4697 tp!4698))))

(declare-fun b!20664 () Bool)

(assert (=> b!20664 (= e!10835 tp_is_empty!99)))

(assert (=> b!20544 (= tp!4689 e!10835)))

(assert (= (and b!20544 (is-CC!31 (left!676 (left!676 xs!604)))) b!20663))

(assert (= (and b!20544 (is-Single!31 (left!676 (left!676 xs!604)))) b!20664))

(declare-fun b!20665 () Bool)

(declare-fun e!10836 () Bool)

(declare-fun tp!4699 () Bool)

(declare-fun tp!4700 () Bool)

(assert (=> b!20665 (= e!10836 (and tp!4699 tp!4700))))

(declare-fun b!20666 () Bool)

(assert (=> b!20666 (= e!10836 tp_is_empty!99)))

(assert (=> b!20544 (= tp!4690 e!10836)))

(assert (= (and b!20544 (is-CC!31 (right!679 (left!676 xs!604)))) b!20665))

(assert (= (and b!20544 (is-Single!31 (right!679 (left!676 xs!604)))) b!20666))

(declare-fun b!20667 () Bool)

(declare-fun e!10837 () Bool)

(declare-fun tp!4701 () Bool)

(declare-fun tp!4702 () Bool)

(assert (=> b!20667 (= e!10837 (and tp!4701 tp!4702))))

(declare-fun b!20668 () Bool)

(assert (=> b!20668 (= e!10837 tp_is_empty!99)))

(assert (=> b!20542 (= tp!4687 e!10837)))

(assert (= (and b!20542 (is-CC!31 (left!676 (right!679 res!5606)))) b!20667))

(assert (= (and b!20542 (is-Single!31 (left!676 (right!679 res!5606)))) b!20668))

(declare-fun b!20669 () Bool)

(declare-fun e!10838 () Bool)

(declare-fun tp!4703 () Bool)

(declare-fun tp!4704 () Bool)

(assert (=> b!20669 (= e!10838 (and tp!4703 tp!4704))))

(declare-fun b!20670 () Bool)

(assert (=> b!20670 (= e!10838 tp_is_empty!99)))

(assert (=> b!20542 (= tp!4688 e!10838)))

(assert (= (and b!20542 (is-CC!31 (right!679 (right!679 res!5606)))) b!20669))

(assert (= (and b!20542 (is-Single!31 (right!679 (right!679 res!5606)))) b!20670))

(declare-fun b!20671 () Bool)

(declare-fun e!10839 () Bool)

(declare-fun tp!4705 () Bool)

(declare-fun tp!4706 () Bool)

(assert (=> b!20671 (= e!10839 (and tp!4705 tp!4706))))

(declare-fun b!20672 () Bool)

(assert (=> b!20672 (= e!10839 tp_is_empty!99)))

(assert (=> b!20540 (= tp!4685 e!10839)))

(assert (= (and b!20540 (is-CC!31 (left!676 (left!676 res!5606)))) b!20671))

(assert (= (and b!20540 (is-Single!31 (left!676 (left!676 res!5606)))) b!20672))

(declare-fun b!20673 () Bool)

(declare-fun e!10840 () Bool)

(declare-fun tp!4707 () Bool)

(declare-fun tp!4708 () Bool)

(assert (=> b!20673 (= e!10840 (and tp!4707 tp!4708))))

(declare-fun b!20674 () Bool)

(assert (=> b!20674 (= e!10840 tp_is_empty!99)))

(assert (=> b!20540 (= tp!4686 e!10840)))

(assert (= (and b!20540 (is-CC!31 (right!679 (left!676 res!5606)))) b!20673))

(assert (= (and b!20540 (is-Single!31 (right!679 (left!676 res!5606)))) b!20674))

(push 1)

(assert (not b!20548))

(assert (not b!20554))

(assert (not d!12633))

(assert (not b!20616))

(assert (not b!20573))

(assert (not b!20636))

(assert (not b!20601))

(assert (not b!20575))

(assert (not d!12635))

(assert (not b!20639))

(assert (not b!20551))

(assert (not b!20651))

(assert (not b!20625))

(assert (not b!20574))

(assert (not b!20596))

(assert tp_is_empty!99)

(assert (not b!20585))

(assert (not b!20611))

(assert (not b!20557))

(assert (not b!20654))

(assert (not b!20612))

(assert (not b!20663))

(assert (not b!20607))

(assert (not b!20617))

(assert (not b!20569))

(assert (not b!20615))

(assert (not b!20669))

(assert (not b!20555))

(assert (not b!20671))

(assert (not b!20650))

(assert (not b!20609))

(assert (not b!20656))

(assert (not b!20552))

(assert (not b!20665))

(assert (not b!20561))

(assert (not b!20606))

(assert (not b!20657))

(assert (not b!20610))

(assert (not d!12655))

(assert (not b!20652))

(assert (not b!20673))

(assert (not b!20649))

(assert (not b!20581))

(assert (not b!20560))

(assert (not b!20648))

(assert (not b!20549))

(assert (not b!20644))

(assert (not b!20562))

(assert (not b!20640))

(assert (not b!20614))

(assert (not b!20595))

(assert (not b!20638))

(assert (not b!20563))

(assert (not b!20572))

(assert (not b!20567))

(assert (not b!20621))

(assert (not d!12637))

(assert (not d!12663))

(assert (not b!20637))

(assert (not b!20608))

(assert (not b!20559))

(assert (not b!20659))

(assert (not b!20605))

(assert (not b!20667))

(assert (not d!12657))

(assert (not b!20571))

(assert (not b!20550))

(assert (not b!20661))

(assert (not b!20553))

(assert (not b!20613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12667 () Bool)

(declare-fun res!8950 () Bool)

(declare-fun e!10841 () Bool)

(assert (=> d!12667 (=> res!8950 e!10841)))

(assert (=> d!12667 (= res!8950 (not (is-CC!31 (right!679 (left!676 xs!604)))))))

(assert (=> d!12667 (= (balanced!31 (right!679 (left!676 xs!604))) e!10841)))

(declare-fun b!20675 () Bool)

(declare-fun e!10842 () Bool)

(assert (=> b!20675 (= e!10841 e!10842)))

(declare-fun res!8952 () Bool)

(assert (=> b!20675 (=> (not res!8952) (not e!10842))))

(assert (=> b!20675 (= res!8952 (>= (- (level!29 (left!676 (right!679 (left!676 xs!604)))) (level!29 (right!679 (right!679 (left!676 xs!604))))) (- 1)))))

(declare-fun b!20677 () Bool)

(declare-fun res!8951 () Bool)

(assert (=> b!20677 (=> (not res!8951) (not e!10842))))

(assert (=> b!20677 (= res!8951 (balanced!31 (left!676 (right!679 (left!676 xs!604)))))))

(declare-fun b!20676 () Bool)

(declare-fun res!8953 () Bool)

(assert (=> b!20676 (=> (not res!8953) (not e!10842))))

(assert (=> b!20676 (= res!8953 (<= (- (level!29 (left!676 (right!679 (left!676 xs!604)))) (level!29 (right!679 (right!679 (left!676 xs!604))))) 1))))

(declare-fun b!20678 () Bool)

(assert (=> b!20678 (= e!10842 (balanced!31 (right!679 (right!679 (left!676 xs!604)))))))

(assert (= (and d!12667 (not res!8950)) b!20675))

(assert (= (and b!20675 res!8952) b!20676))

(assert (= (and b!20676 res!8953) b!20677))

(assert (= (and b!20677 res!8951) b!20678))

(declare-fun m!22801 () Bool)

(assert (=> b!20675 m!22801))

(declare-fun m!22803 () Bool)

(assert (=> b!20675 m!22803))

(declare-fun m!22805 () Bool)

(assert (=> b!20677 m!22805))

(assert (=> b!20676 m!22801))

(assert (=> b!20676 m!22803))

(declare-fun m!22807 () Bool)

(assert (=> b!20678 m!22807))

(assert (=> b!20617 d!12667))

(declare-fun b!20680 () Bool)

(declare-fun e!10843 () Int)

(declare-fun lt!3123 () Int)

(declare-fun lt!3122 () Int)

(assert (=> b!20680 (= e!10843 (+ 1 (ite (>= lt!3123 lt!3122) lt!3123 lt!3122)))))

(assert (=> b!20680 (= lt!3122 (level!29 (right!679 (left!676 (right!679 xs!604)))))))

(assert (=> b!20680 (= lt!3123 (level!29 (left!676 (left!676 (right!679 xs!604)))))))

(declare-fun d!12669 () Bool)

(declare-fun lt!3124 () Int)

(assert (=> d!12669 (>= lt!3124 0)))

(assert (=> d!12669 (= lt!3124 e!10843)))

(declare-fun c!4972 () Bool)

(assert (=> d!12669 (= c!4972 (or (is-Empty!42 (left!676 (right!679 xs!604))) (is-Single!31 (left!676 (right!679 xs!604)))))))

(assert (=> d!12669 (= (level!29 (left!676 (right!679 xs!604))) lt!3124)))

(declare-fun b!20679 () Bool)

(assert (=> b!20679 (= e!10843 0)))

(assert (= (and d!12669 c!4972) b!20679))

(assert (= (and d!12669 (not c!4972)) b!20680))

(declare-fun m!22809 () Bool)

(assert (=> b!20680 m!22809))

(declare-fun m!22811 () Bool)

(assert (=> b!20680 m!22811))

(assert (=> b!20548 d!12669))

(declare-fun b!20682 () Bool)

(declare-fun e!10844 () Int)

(declare-fun lt!3126 () Int)

(declare-fun lt!3125 () Int)

(assert (=> b!20682 (= e!10844 (+ 1 (ite (>= lt!3126 lt!3125) lt!3126 lt!3125)))))

(assert (=> b!20682 (= lt!3125 (level!29 (right!679 (right!679 (right!679 xs!604)))))))

(assert (=> b!20682 (= lt!3126 (level!29 (left!676 (right!679 (right!679 xs!604)))))))

(declare-fun d!12671 () Bool)

(declare-fun lt!3127 () Int)

(assert (=> d!12671 (>= lt!3127 0)))

(assert (=> d!12671 (= lt!3127 e!10844)))

(declare-fun c!4973 () Bool)

(assert (=> d!12671 (= c!4973 (or (is-Empty!42 (right!679 (right!679 xs!604))) (is-Single!31 (right!679 (right!679 xs!604)))))))

(assert (=> d!12671 (= (level!29 (right!679 (right!679 xs!604))) lt!3127)))

(declare-fun b!20681 () Bool)

(assert (=> b!20681 (= e!10844 0)))

(assert (= (and d!12671 c!4973) b!20681))

(assert (= (and d!12671 (not c!4973)) b!20682))

(declare-fun m!22813 () Bool)

(assert (=> b!20682 m!22813))

(declare-fun m!22815 () Bool)

(assert (=> b!20682 m!22815))

(assert (=> b!20548 d!12671))

(declare-fun d!12673 () Bool)

(declare-fun c!4976 () Bool)

(assert (=> d!12673 (= c!4976 (is-Nil!332 lt!3121))))

(declare-fun e!10847 () (Set T!1755))

(assert (=> d!12673 (= (content!58 lt!3121) e!10847)))

(declare-fun b!20687 () Bool)

(assert (=> b!20687 (= e!10847 (as emptyset (Set T!1755)))))

(declare-fun b!20688 () Bool)

(assert (=> b!20688 (= e!10847 (union (insert (h!245 lt!3121) (as emptyset (Set T!1755))) (content!58 (t!4332 lt!3121))))))

(assert (= (and d!12673 c!4976) b!20687))

(assert (= (and d!12673 (not c!4976)) b!20688))

(declare-fun m!22817 () Bool)

(assert (=> b!20688 m!22817))

(declare-fun m!22819 () Bool)

(assert (=> b!20688 m!22819))

(assert (=> d!12663 d!12673))

(declare-fun d!12675 () Bool)

(declare-fun c!4977 () Bool)

(assert (=> d!12675 (= c!4977 (is-Nil!332 (toList!97 (left!676 xs!604))))))

(declare-fun e!10848 () (Set T!1755))

(assert (=> d!12675 (= (content!58 (toList!97 (left!676 xs!604))) e!10848)))

(declare-fun b!20689 () Bool)

(assert (=> b!20689 (= e!10848 (as emptyset (Set T!1755)))))

(declare-fun b!20690 () Bool)

(assert (=> b!20690 (= e!10848 (union (insert (h!245 (toList!97 (left!676 xs!604))) (as emptyset (Set T!1755))) (content!58 (t!4332 (toList!97 (left!676 xs!604))))))))

(assert (= (and d!12675 c!4977) b!20689))

(assert (= (and d!12675 (not c!4977)) b!20690))

(declare-fun m!22821 () Bool)

(assert (=> b!20690 m!22821))

(declare-fun m!22823 () Bool)

(assert (=> b!20690 m!22823))

(assert (=> d!12663 d!12675))

(declare-fun d!12677 () Bool)

(declare-fun c!4978 () Bool)

(assert (=> d!12677 (= c!4978 (is-Nil!332 (toList!97 (right!679 xs!604))))))

(declare-fun e!10849 () (Set T!1755))

(assert (=> d!12677 (= (content!58 (toList!97 (right!679 xs!604))) e!10849)))

(declare-fun b!20691 () Bool)

(assert (=> b!20691 (= e!10849 (as emptyset (Set T!1755)))))

(declare-fun b!20692 () Bool)

(assert (=> b!20692 (= e!10849 (union (insert (h!245 (toList!97 (right!679 xs!604))) (as emptyset (Set T!1755))) (content!58 (t!4332 (toList!97 (right!679 xs!604))))))))

(assert (= (and d!12677 c!4978) b!20691))

(assert (= (and d!12677 (not c!4978)) b!20692))

(declare-fun m!22825 () Bool)

(assert (=> b!20692 m!22825))

(declare-fun m!22827 () Bool)

(assert (=> b!20692 m!22827))

(assert (=> d!12663 d!12677))

(declare-fun b!20693 () Bool)

(declare-fun e!10851 () Int)

(assert (=> b!20693 (= e!10851 0)))

(declare-fun b!20696 () Bool)

(declare-fun e!10850 () Int)

(assert (=> b!20696 (= e!10850 (+ (size!223 (left!676 (left!676 (left!676 xs!604)))) (size!223 (right!679 (left!676 (left!676 xs!604))))))))

(declare-fun b!20695 () Bool)

(assert (=> b!20695 (= e!10850 1)))

(declare-fun b!20694 () Bool)

(assert (=> b!20694 (= e!10851 e!10850)))

(declare-fun c!4980 () Bool)

(assert (=> b!20694 (= c!4980 (is-Single!31 (left!676 (left!676 xs!604))))))

(declare-fun d!12679 () Bool)

(declare-fun lt!3128 () Int)

(assert (=> d!12679 (>= lt!3128 0)))

(assert (=> d!12679 (= lt!3128 e!10851)))

(declare-fun c!4979 () Bool)

(assert (=> d!12679 (= c!4979 (is-Empty!42 (left!676 (left!676 xs!604))))))

(assert (=> d!12679 (= (size!223 (left!676 (left!676 xs!604))) lt!3128)))

(assert (= (and b!20694 c!4980) b!20695))

(assert (= (and b!20694 (not c!4980)) b!20696))

(assert (= (and d!12679 c!4979) b!20693))

(assert (= (and d!12679 (not c!4979)) b!20694))

(declare-fun m!22829 () Bool)

(assert (=> b!20696 m!22829))

(declare-fun m!22831 () Bool)

(assert (=> b!20696 m!22831))

(assert (=> b!20621 d!12679))

(declare-fun b!20697 () Bool)

(declare-fun e!10853 () Int)

(assert (=> b!20697 (= e!10853 0)))

(declare-fun b!20700 () Bool)

(declare-fun e!10852 () Int)

(assert (=> b!20700 (= e!10852 (+ (size!223 (left!676 (right!679 (left!676 xs!604)))) (size!223 (right!679 (right!679 (left!676 xs!604))))))))

(declare-fun b!20699 () Bool)

(assert (=> b!20699 (= e!10852 1)))

(declare-fun b!20698 () Bool)

(assert (=> b!20698 (= e!10853 e!10852)))

(declare-fun c!4982 () Bool)

(assert (=> b!20698 (= c!4982 (is-Single!31 (right!679 (left!676 xs!604))))))

(declare-fun d!12681 () Bool)

(declare-fun lt!3129 () Int)

(assert (=> d!12681 (>= lt!3129 0)))

(assert (=> d!12681 (= lt!3129 e!10853)))

(declare-fun c!4981 () Bool)

(assert (=> d!12681 (= c!4981 (is-Empty!42 (right!679 (left!676 xs!604))))))

(assert (=> d!12681 (= (size!223 (right!679 (left!676 xs!604))) lt!3129)))

(assert (= (and b!20698 c!4982) b!20699))

(assert (= (and b!20698 (not c!4982)) b!20700))

(assert (= (and d!12681 c!4981) b!20697))

(assert (= (and d!12681 (not c!4981)) b!20698))

(declare-fun m!22833 () Bool)

(assert (=> b!20700 m!22833))

(declare-fun m!22835 () Bool)

(assert (=> b!20700 m!22835))

(assert (=> b!20621 d!12681))

(declare-fun d!12683 () Bool)

(declare-fun res!8954 () Bool)

(declare-fun e!10854 () Bool)

(assert (=> d!12683 (=> res!8954 e!10854)))

(assert (=> d!12683 (= res!8954 (not (is-CC!31 (left!676 (left!676 xs!604)))))))

(assert (=> d!12683 (= (balanced!31 (left!676 (left!676 xs!604))) e!10854)))

(declare-fun b!20701 () Bool)

(declare-fun e!10855 () Bool)

(assert (=> b!20701 (= e!10854 e!10855)))

(declare-fun res!8956 () Bool)

(assert (=> b!20701 (=> (not res!8956) (not e!10855))))

(assert (=> b!20701 (= res!8956 (>= (- (level!29 (left!676 (left!676 (left!676 xs!604)))) (level!29 (right!679 (left!676 (left!676 xs!604))))) (- 1)))))

(declare-fun b!20703 () Bool)

(declare-fun res!8955 () Bool)

(assert (=> b!20703 (=> (not res!8955) (not e!10855))))

(assert (=> b!20703 (= res!8955 (balanced!31 (left!676 (left!676 (left!676 xs!604)))))))

(declare-fun b!20702 () Bool)

(declare-fun res!8957 () Bool)

(assert (=> b!20702 (=> (not res!8957) (not e!10855))))

(assert (=> b!20702 (= res!8957 (<= (- (level!29 (left!676 (left!676 (left!676 xs!604)))) (level!29 (right!679 (left!676 (left!676 xs!604))))) 1))))

(declare-fun b!20704 () Bool)

(assert (=> b!20704 (= e!10855 (balanced!31 (right!679 (left!676 (left!676 xs!604)))))))

(assert (= (and d!12683 (not res!8954)) b!20701))

(assert (= (and b!20701 res!8956) b!20702))

(assert (= (and b!20702 res!8957) b!20703))

(assert (= (and b!20703 res!8955) b!20704))

(declare-fun m!22837 () Bool)

(assert (=> b!20701 m!22837))

(declare-fun m!22839 () Bool)

(assert (=> b!20701 m!22839))

(declare-fun m!22841 () Bool)

(assert (=> b!20703 m!22841))

(assert (=> b!20702 m!22837))

(assert (=> b!20702 m!22839))

(declare-fun m!22843 () Bool)

(assert (=> b!20704 m!22843))

(assert (=> b!20616 d!12683))

(declare-fun d!12685 () Bool)

(declare-fun lt!3130 () Int)

(assert (=> d!12685 (>= lt!3130 0)))

(declare-fun e!10856 () Int)

(assert (=> d!12685 (= lt!3130 e!10856)))

(declare-fun c!4983 () Bool)

(assert (=> d!12685 (= c!4983 (is-Nil!332 lt!3118))))

(assert (=> d!12685 (= (size!224 lt!3118) lt!3130)))

(declare-fun b!20705 () Bool)

(assert (=> b!20705 (= e!10856 0)))

(declare-fun b!20706 () Bool)

(assert (=> b!20706 (= e!10856 (+ 1 (size!224 (t!4332 lt!3118))))))

(assert (= (and d!12685 c!4983) b!20705))

(assert (= (and d!12685 (not c!4983)) b!20706))

(declare-fun m!22845 () Bool)

(assert (=> b!20706 m!22845))

(assert (=> d!12655 d!12685))

(assert (=> d!12655 d!12649))

(declare-fun b!20710 () Bool)

(declare-fun e!10858 () List!337)

(assert (=> b!20710 (= e!10858 (Cons!331 (h!245 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604)))) (insertAtIndex!10 (t!4332 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604)))) (- i!298 1) y!824)))))

(declare-fun b!20707 () Bool)

(declare-fun e!10857 () List!337)

(assert (=> b!20707 (= e!10857 (Cons!331 y!824 Nil!332))))

(declare-fun d!12687 () Bool)

(declare-fun c!4984 () Bool)

(assert (=> d!12687 (= c!4984 (is-Nil!332 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604)))))))

(assert (=> d!12687 (= (insertAtIndex!10 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604))) i!298 y!824) e!10857)))

(declare-fun b!20708 () Bool)

(assert (=> b!20708 (= e!10857 e!10858)))

(declare-fun c!4985 () Bool)

(assert (=> b!20708 (= c!4985 (= i!298 0))))

(declare-fun b!20709 () Bool)

(assert (=> b!20709 (= e!10858 (Cons!331 y!824 (++!20 (toList!97 (left!676 xs!604)) (toList!97 (right!679 xs!604)))))))

(assert (= (and b!20708 c!4985) b!20709))

(assert (= (and b!20708 (not c!4985)) b!20710))

(assert (= (and d!12687 c!4984) b!20707))

(assert (= (and d!12687 (not c!4984)) b!20708))

(declare-fun m!22847 () Bool)

(assert (=> b!20710 m!22847))

(assert (=> b!20638 d!12687))

(assert (=> b!20638 d!12663))

(declare-fun d!12689 () Bool)

(declare-fun lt!3131 () Int)

(assert (=> d!12689 (>= lt!3131 0)))

(declare-fun e!10859 () Int)

(assert (=> d!12689 (= lt!3131 e!10859)))

(declare-fun c!4986 () Bool)

(assert (=> d!12689 (= c!4986 (is-Nil!332 (toList!97 (left!676 xs!604))))))

(assert (=> d!12689 (= (size!224 (toList!97 (left!676 xs!604))) lt!3131)))

(declare-fun b!20711 () Bool)

(assert (=> b!20711 (= e!10859 0)))

(declare-fun b!20712 () Bool)

(assert (=> b!20712 (= e!10859 (+ 1 (size!224 (t!4332 (toList!97 (left!676 xs!604))))))))

(assert (= (and d!12689 c!4986) b!20711))

(assert (= (and d!12689 (not c!4986)) b!20712))

(declare-fun m!22849 () Bool)

(assert (=> b!20712 m!22849))

(assert (=> b!20638 d!12689))

(declare-fun d!12691 () Bool)

(assert (=> d!12691 (= (isEmpty!294 (left!676 (left!676 res!5606))) (= (left!676 (left!676 res!5606)) Empty!42))))

(assert (=> b!20560 d!12691))

(declare-fun d!12693 () Bool)

(declare-fun res!8958 () Bool)

(declare-fun e!10860 () Bool)

(assert (=> d!12693 (=> res!8958 e!10860)))

(assert (=> d!12693 (= res!8958 (not (is-CC!31 (right!679 (right!679 xs!604)))))))

(assert (=> d!12693 (= (concInv!30 (right!679 (right!679 xs!604))) e!10860)))

(declare-fun b!20716 () Bool)

(declare-fun e!10861 () Bool)

(assert (=> b!20716 (= e!10861 (concInv!30 (right!679 (right!679 (right!679 xs!604)))))))

(declare-fun b!20715 () Bool)

(declare-fun res!8960 () Bool)

(assert (=> b!20715 (=> (not res!8960) (not e!10861))))

(assert (=> b!20715 (= res!8960 (concInv!30 (left!676 (right!679 (right!679 xs!604)))))))

(declare-fun b!20713 () Bool)

(assert (=> b!20713 (= e!10860 e!10861)))

(declare-fun res!8961 () Bool)

(assert (=> b!20713 (=> (not res!8961) (not e!10861))))

(assert (=> b!20713 (= res!8961 (not (isEmpty!294 (left!676 (right!679 (right!679 xs!604))))))))

(declare-fun b!20714 () Bool)

(declare-fun res!8959 () Bool)

(assert (=> b!20714 (=> (not res!8959) (not e!10861))))

(assert (=> b!20714 (= res!8959 (not (isEmpty!294 (right!679 (right!679 (right!679 xs!604))))))))

(assert (= (and d!12693 (not res!8958)) b!20713))

(assert (= (and b!20713 res!8961) b!20714))

(assert (= (and b!20714 res!8959) b!20715))

(assert (= (and b!20715 res!8960) b!20716))

(declare-fun m!22851 () Bool)

(assert (=> b!20716 m!22851))

(declare-fun m!22853 () Bool)

(assert (=> b!20715 m!22853))

(declare-fun m!22855 () Bool)

(assert (=> b!20713 m!22855))

(declare-fun m!22857 () Bool)

(assert (=> b!20714 m!22857))

(assert (=> b!20613 d!12693))

(declare-fun d!12695 () Bool)

(declare-fun lt!3132 () Int)

(assert (=> d!12695 (>= lt!3132 0)))

(declare-fun e!10862 () Int)

(assert (=> d!12695 (= lt!3132 e!10862)))

(declare-fun c!4987 () Bool)

(assert (=> d!12695 (= c!4987 (is-Nil!332 lt!3114))))

(assert (=> d!12695 (= (size!224 lt!3114) lt!3132)))

(declare-fun b!20717 () Bool)

(assert (=> b!20717 (= e!10862 0)))

(declare-fun b!20718 () Bool)

(assert (=> b!20718 (= e!10862 (+ 1 (size!224 (t!4332 lt!3114))))))

(assert (= (and d!12695 c!4987) b!20717))

(assert (= (and d!12695 (not c!4987)) b!20718))

(declare-fun m!22859 () Bool)

(assert (=> b!20718 m!22859))

(assert (=> d!12635 d!12695))

(declare-fun b!20719 () Bool)

(declare-fun e!10864 () Int)

(assert (=> b!20719 (= e!10864 0)))

(declare-fun b!20722 () Bool)

(declare-fun e!10863 () Int)

(assert (=> b!20722 (= e!10863 (+ (size!223 (left!676 (left!676 res!5606))) (size!223 (right!679 (left!676 res!5606)))))))

(declare-fun b!20721 () Bool)

(assert (=> b!20721 (= e!10863 1)))

(declare-fun b!20720 () Bool)

(assert (=> b!20720 (= e!10864 e!10863)))

(declare-fun c!4989 () Bool)

(assert (=> b!20720 (= c!4989 (is-Single!31 (left!676 res!5606)))))

(declare-fun d!12697 () Bool)

(declare-fun lt!3133 () Int)

(assert (=> d!12697 (>= lt!3133 0)))

(assert (=> d!12697 (= lt!3133 e!10864)))

(declare-fun c!4988 () Bool)

(assert (=> d!12697 (= c!4988 (is-Empty!42 (left!676 res!5606)))))

(assert (=> d!12697 (= (size!223 (left!676 res!5606)) lt!3133)))

(assert (= (and b!20720 c!4989) b!20721))

(assert (= (and b!20720 (not c!4989)) b!20722))

(assert (= (and d!12697 c!4988) b!20719))

(assert (= (and d!12697 (not c!4988)) b!20720))

(declare-fun m!22861 () Bool)

(assert (=> b!20722 m!22861))

(declare-fun m!22863 () Bool)

(assert (=> b!20722 m!22863))

(assert (=> d!12635 d!12697))

(declare-fun b!20724 () Bool)

(declare-fun e!10865 () Int)

(declare-fun lt!3135 () Int)

(declare-fun lt!3134 () Int)

(assert (=> b!20724 (= e!10865 (+ 1 (ite (>= lt!3135 lt!3134) lt!3135 lt!3134)))))

(assert (=> b!20724 (= lt!3134 (level!29 (right!679 (left!676 (right!679 res!5606)))))))

(assert (=> b!20724 (= lt!3135 (level!29 (left!676 (left!676 (right!679 res!5606)))))))

(declare-fun d!12699 () Bool)

(declare-fun lt!3136 () Int)

(assert (=> d!12699 (>= lt!3136 0)))

(assert (=> d!12699 (= lt!3136 e!10865)))

(declare-fun c!4990 () Bool)

(assert (=> d!12699 (= c!4990 (or (is-Empty!42 (left!676 (right!679 res!5606))) (is-Single!31 (left!676 (right!679 res!5606)))))))

(assert (=> d!12699 (= (level!29 (left!676 (right!679 res!5606))) lt!3136)))

(declare-fun b!20723 () Bool)

(assert (=> b!20723 (= e!10865 0)))

(assert (= (and d!12699 c!4990) b!20723))

(assert (= (and d!12699 (not c!4990)) b!20724))

(declare-fun m!22865 () Bool)

(assert (=> b!20724 m!22865))

(declare-fun m!22867 () Bool)

(assert (=> b!20724 m!22867))

(assert (=> b!20553 d!12699))

(declare-fun b!20726 () Bool)

(declare-fun e!10866 () Int)

(declare-fun lt!3138 () Int)

(declare-fun lt!3137 () Int)

(assert (=> b!20726 (= e!10866 (+ 1 (ite (>= lt!3138 lt!3137) lt!3138 lt!3137)))))

(assert (=> b!20726 (= lt!3137 (level!29 (right!679 (right!679 (right!679 res!5606)))))))

(assert (=> b!20726 (= lt!3138 (level!29 (left!676 (right!679 (right!679 res!5606)))))))

(declare-fun d!12701 () Bool)

(declare-fun lt!3139 () Int)

(assert (=> d!12701 (>= lt!3139 0)))

(assert (=> d!12701 (= lt!3139 e!10866)))

(declare-fun c!4991 () Bool)

(assert (=> d!12701 (= c!4991 (or (is-Empty!42 (right!679 (right!679 res!5606))) (is-Single!31 (right!679 (right!679 res!5606)))))))

(assert (=> d!12701 (= (level!29 (right!679 (right!679 res!5606))) lt!3139)))

(declare-fun b!20725 () Bool)

(assert (=> b!20725 (= e!10866 0)))

(assert (= (and d!12701 c!4991) b!20725))

(assert (= (and d!12701 (not c!4991)) b!20726))

(declare-fun m!22869 () Bool)

(assert (=> b!20726 m!22869))

(declare-fun m!22871 () Bool)

(assert (=> b!20726 m!22871))

(assert (=> b!20553 d!12701))

(declare-fun d!12703 () Bool)

(declare-fun lt!3140 () Int)

(assert (=> d!12703 (>= lt!3140 0)))

(declare-fun e!10867 () Int)

(assert (=> d!12703 (= lt!3140 e!10867)))

(declare-fun c!4992 () Bool)

(assert (=> d!12703 (= c!4992 (is-Nil!332 (t!4332 lt!3090)))))

(assert (=> d!12703 (= (size!224 (t!4332 lt!3090)) lt!3140)))

(declare-fun b!20727 () Bool)

(assert (=> b!20727 (= e!10867 0)))

(declare-fun b!20728 () Bool)

(assert (=> b!20728 (= e!10867 (+ 1 (size!224 (t!4332 (t!4332 lt!3090)))))))

(assert (= (and d!12703 c!4992) b!20727))

(assert (= (and d!12703 (not c!4992)) b!20728))

(declare-fun m!22873 () Bool)

(assert (=> b!20728 m!22873))

(assert (=> b!20581 d!12703))

(assert (=> b!20552 d!12699))

(assert (=> b!20552 d!12701))

(declare-fun d!12705 () Bool)

(declare-fun res!8962 () Bool)

(declare-fun e!10868 () Bool)

(assert (=> d!12705 (=> res!8962 e!10868)))

(assert (=> d!12705 (= res!8962 (not (is-CC!31 (left!676 (right!679 xs!604)))))))

(assert (=> d!12705 (= (balanced!31 (left!676 (right!679 xs!604))) e!10868)))

(declare-fun b!20729 () Bool)

(declare-fun e!10869 () Bool)

(assert (=> b!20729 (= e!10868 e!10869)))

(declare-fun res!8964 () Bool)

(assert (=> b!20729 (=> (not res!8964) (not e!10869))))

(assert (=> b!20729 (= res!8964 (>= (- (level!29 (left!676 (left!676 (right!679 xs!604)))) (level!29 (right!679 (left!676 (right!679 xs!604))))) (- 1)))))

(declare-fun b!20731 () Bool)

(declare-fun res!8963 () Bool)

(assert (=> b!20731 (=> (not res!8963) (not e!10869))))

(assert (=> b!20731 (= res!8963 (balanced!31 (left!676 (left!676 (right!679 xs!604)))))))

(declare-fun b!20730 () Bool)

(declare-fun res!8965 () Bool)

(assert (=> b!20730 (=> (not res!8965) (not e!10869))))

(assert (=> b!20730 (= res!8965 (<= (- (level!29 (left!676 (left!676 (right!679 xs!604)))) (level!29 (right!679 (left!676 (right!679 xs!604))))) 1))))

(declare-fun b!20732 () Bool)

(assert (=> b!20732 (= e!10869 (balanced!31 (right!679 (left!676 (right!679 xs!604)))))))

(assert (= (and d!12705 (not res!8962)) b!20729))

(assert (= (and b!20729 res!8964) b!20730))

(assert (= (and b!20730 res!8965) b!20731))

(assert (= (and b!20731 res!8963) b!20732))

(assert (=> b!20729 m!22811))

(assert (=> b!20729 m!22809))

(declare-fun m!22875 () Bool)

(assert (=> b!20731 m!22875))

(assert (=> b!20730 m!22811))

(assert (=> b!20730 m!22809))

(declare-fun m!22877 () Bool)

(assert (=> b!20732 m!22877))

(assert (=> b!20550 d!12705))

(assert (=> b!20571 d!12701))

(assert (=> b!20571 d!12699))

(declare-fun d!12707 () Bool)

(declare-fun e!10871 () Bool)

(assert (=> d!12707 e!10871))

(declare-fun res!8966 () Bool)

(assert (=> d!12707 (=> (not res!8966) (not e!10871))))

(declare-fun lt!3141 () List!337)

(assert (=> d!12707 (= res!8966 (= (content!58 lt!3141) (union (content!58 (t!4332 (toList!97 (left!676 res!5606)))) (content!58 (toList!97 (right!679 res!5606))))))))

(declare-fun e!10870 () List!337)

(assert (=> d!12707 (= lt!3141 e!10870)))

(declare-fun c!4993 () Bool)

(assert (=> d!12707 (= c!4993 (is-Nil!332 (t!4332 (toList!97 (left!676 res!5606)))))))

(assert (=> d!12707 (= (++!20 (t!4332 (toList!97 (left!676 res!5606))) (toList!97 (right!679 res!5606))) lt!3141)))

(declare-fun b!20734 () Bool)

(assert (=> b!20734 (= e!10870 (Cons!331 (h!245 (t!4332 (toList!97 (left!676 res!5606)))) (++!20 (t!4332 (t!4332 (toList!97 (left!676 res!5606)))) (toList!97 (right!679 res!5606)))))))

(declare-fun b!20735 () Bool)

(declare-fun res!8967 () Bool)

(assert (=> b!20735 (=> (not res!8967) (not e!10871))))

(assert (=> b!20735 (= res!8967 (= (size!224 lt!3141) (+ (size!224 (t!4332 (toList!97 (left!676 res!5606)))) (size!224 (toList!97 (right!679 res!5606))))))))

(declare-fun b!20736 () Bool)

(assert (=> b!20736 (= e!10871 (or (not (= (toList!97 (right!679 res!5606)) Nil!332)) (= lt!3141 (t!4332 (toList!97 (left!676 res!5606))))))))

(declare-fun b!20733 () Bool)

(assert (=> b!20733 (= e!10870 (toList!97 (right!679 res!5606)))))

(assert (= (and d!12707 c!4993) b!20733))

(assert (= (and d!12707 (not c!4993)) b!20734))

(assert (= (and d!12707 res!8966) b!20735))

(assert (= (and b!20735 res!8967) b!20736))

(declare-fun m!22879 () Bool)

(assert (=> d!12707 m!22879))

(declare-fun m!22881 () Bool)

(assert (=> d!12707 m!22881))

(assert (=> d!12707 m!22603))

(assert (=> d!12707 m!22699))

(assert (=> b!20734 m!22603))

(declare-fun m!22883 () Bool)

(assert (=> b!20734 m!22883))

(declare-fun m!22885 () Bool)

(assert (=> b!20735 m!22885))

(declare-fun m!22887 () Bool)

(assert (=> b!20735 m!22887))

(assert (=> b!20735 m!22603))

(assert (=> b!20735 m!22707))

(assert (=> b!20595 d!12707))

(declare-fun d!12709 () Bool)

(declare-fun e!10873 () Bool)

(assert (=> d!12709 e!10873))

(declare-fun res!8968 () Bool)

(assert (=> d!12709 (=> (not res!8968) (not e!10873))))

(declare-fun lt!3142 () List!337)

(assert (=> d!12709 (= res!8968 (= (content!58 lt!3142) (union (content!58 (t!4332 (toList!97 (left!676 xs!604)))) (content!58 (toList!97 (right!679 xs!604))))))))

(declare-fun e!10872 () List!337)

(assert (=> d!12709 (= lt!3142 e!10872)))

(declare-fun c!4994 () Bool)

(assert (=> d!12709 (= c!4994 (is-Nil!332 (t!4332 (toList!97 (left!676 xs!604)))))))

(assert (=> d!12709 (= (++!20 (t!4332 (toList!97 (left!676 xs!604))) (toList!97 (right!679 xs!604))) lt!3142)))

(declare-fun b!20738 () Bool)

(assert (=> b!20738 (= e!10872 (Cons!331 (h!245 (t!4332 (toList!97 (left!676 xs!604)))) (++!20 (t!4332 (t!4332 (toList!97 (left!676 xs!604)))) (toList!97 (right!679 xs!604)))))))

(declare-fun b!20739 () Bool)

(declare-fun res!8969 () Bool)

(assert (=> b!20739 (=> (not res!8969) (not e!10873))))

(assert (=> b!20739 (= res!8969 (= (size!224 lt!3142) (+ (size!224 (t!4332 (toList!97 (left!676 xs!604)))) (size!224 (toList!97 (right!679 xs!604))))))))

(declare-fun b!20740 () Bool)

(assert (=> b!20740 (= e!10873 (or (not (= (toList!97 (right!679 xs!604)) Nil!332)) (= lt!3142 (t!4332 (toList!97 (left!676 xs!604))))))))

(declare-fun b!20737 () Bool)

(assert (=> b!20737 (= e!10872 (toList!97 (right!679 xs!604)))))

(assert (= (and d!12709 c!4994) b!20737))

(assert (= (and d!12709 (not c!4994)) b!20738))

(assert (= (and d!12709 res!8968) b!20739))

(assert (= (and b!20739 res!8969) b!20740))

(declare-fun m!22889 () Bool)

(assert (=> d!12709 m!22889))

(assert (=> d!12709 m!22823))

(assert (=> d!12709 m!22613))

(assert (=> d!12709 m!22795))

(assert (=> b!20738 m!22613))

(declare-fun m!22891 () Bool)

(assert (=> b!20738 m!22891))

(declare-fun m!22893 () Bool)

(assert (=> b!20739 m!22893))

(assert (=> b!20739 m!22849))

(assert (=> b!20739 m!22613))

(assert (=> b!20739 m!22759))

(assert (=> b!20656 d!12709))

(declare-fun d!12711 () Bool)

(declare-fun e!10875 () Bool)

(assert (=> d!12711 e!10875))

(declare-fun res!8970 () Bool)

(assert (=> d!12711 (=> (not res!8970) (not e!10875))))

(declare-fun lt!3143 () List!337)

(assert (=> d!12711 (= res!8970 (= (content!58 lt!3143) (union (content!58 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824)) (content!58 (toList!97 (right!679 xs!604))))))))

(declare-fun e!10874 () List!337)

(assert (=> d!12711 (= lt!3143 e!10874)))

(declare-fun c!4995 () Bool)

(assert (=> d!12711 (= c!4995 (is-Nil!332 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824)))))

(assert (=> d!12711 (= (++!20 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824) (toList!97 (right!679 xs!604))) lt!3143)))

(declare-fun b!20742 () Bool)

(assert (=> b!20742 (= e!10874 (Cons!331 (h!245 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824)) (++!20 (t!4332 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824)) (toList!97 (right!679 xs!604)))))))

(declare-fun b!20743 () Bool)

(declare-fun res!8971 () Bool)

(assert (=> b!20743 (=> (not res!8971) (not e!10875))))

(assert (=> b!20743 (= res!8971 (= (size!224 lt!3143) (+ (size!224 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824)) (size!224 (toList!97 (right!679 xs!604))))))))

(declare-fun b!20744 () Bool)

(assert (=> b!20744 (= e!10875 (or (not (= (toList!97 (right!679 xs!604)) Nil!332)) (= lt!3143 (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824))))))

(declare-fun b!20741 () Bool)

(assert (=> b!20741 (= e!10874 (toList!97 (right!679 xs!604)))))

(assert (= (and d!12711 c!4995) b!20741))

(assert (= (and d!12711 (not c!4995)) b!20742))

(assert (= (and d!12711 res!8970) b!20743))

(assert (= (and b!20743 res!8971) b!20744))

(declare-fun m!22895 () Bool)

(assert (=> d!12711 m!22895))

(assert (=> d!12711 m!22755))

(declare-fun m!22897 () Bool)

(assert (=> d!12711 m!22897))

(assert (=> d!12711 m!22613))

(assert (=> d!12711 m!22795))

(assert (=> b!20742 m!22613))

(declare-fun m!22899 () Bool)

(assert (=> b!20742 m!22899))

(declare-fun m!22901 () Bool)

(assert (=> b!20743 m!22901))

(assert (=> b!20743 m!22755))

(declare-fun m!22903 () Bool)

(assert (=> b!20743 m!22903))

(assert (=> b!20743 m!22613))

(assert (=> b!20743 m!22759))

(assert (=> b!20639 d!12711))

(declare-fun e!10877 () List!337)

(declare-fun b!20748 () Bool)

(assert (=> b!20748 (= e!10877 (Cons!331 (h!245 (toList!97 (left!676 xs!604))) (insertAtIndex!10 (t!4332 (toList!97 (left!676 xs!604))) (- i!298 1) y!824)))))

(declare-fun b!20745 () Bool)

(declare-fun e!10876 () List!337)

(assert (=> b!20745 (= e!10876 (Cons!331 y!824 Nil!332))))

(declare-fun d!12713 () Bool)

(declare-fun c!4996 () Bool)

(assert (=> d!12713 (= c!4996 (is-Nil!332 (toList!97 (left!676 xs!604))))))

(assert (=> d!12713 (= (insertAtIndex!10 (toList!97 (left!676 xs!604)) i!298 y!824) e!10876)))

(declare-fun b!20746 () Bool)

(assert (=> b!20746 (= e!10876 e!10877)))

(declare-fun c!4997 () Bool)

(assert (=> b!20746 (= c!4997 (= i!298 0))))

(declare-fun b!20747 () Bool)

(assert (=> b!20747 (= e!10877 (Cons!331 y!824 (toList!97 (left!676 xs!604))))))

(assert (= (and b!20746 c!4997) b!20747))

(assert (= (and b!20746 (not c!4997)) b!20748))

(assert (= (and d!12713 c!4996) b!20745))

(assert (= (and d!12713 (not c!4996)) b!20746))

(declare-fun m!22905 () Bool)

(assert (=> b!20748 m!22905))

(assert (=> b!20639 d!12713))

(declare-fun d!12715 () Bool)

(declare-fun res!8972 () Bool)

(declare-fun e!10878 () Bool)

(assert (=> d!12715 (=> res!8972 e!10878)))

(assert (=> d!12715 (= res!8972 (not (is-CC!31 (right!679 (right!679 res!5606)))))))

(assert (=> d!12715 (= (concInv!30 (right!679 (right!679 res!5606))) e!10878)))

(declare-fun b!20752 () Bool)

(declare-fun e!10879 () Bool)

(assert (=> b!20752 (= e!10879 (concInv!30 (right!679 (right!679 (right!679 res!5606)))))))

(declare-fun b!20751 () Bool)

(declare-fun res!8974 () Bool)

(assert (=> b!20751 (=> (not res!8974) (not e!10879))))

(assert (=> b!20751 (= res!8974 (concInv!30 (left!676 (right!679 (right!679 res!5606)))))))

(declare-fun b!20749 () Bool)

(assert (=> b!20749 (= e!10878 e!10879)))

(declare-fun res!8975 () Bool)

(assert (=> b!20749 (=> (not res!8975) (not e!10879))))

(assert (=> b!20749 (= res!8975 (not (isEmpty!294 (left!676 (right!679 (right!679 res!5606))))))))

(declare-fun b!20750 () Bool)

(declare-fun res!8973 () Bool)

(assert (=> b!20750 (=> (not res!8973) (not e!10879))))

(assert (=> b!20750 (= res!8973 (not (isEmpty!294 (right!679 (right!679 (right!679 res!5606))))))))

(assert (= (and d!12715 (not res!8972)) b!20749))

(assert (= (and b!20749 res!8975) b!20750))

(assert (= (and b!20750 res!8973) b!20751))

(assert (= (and b!20751 res!8974) b!20752))

(declare-fun m!22907 () Bool)

(assert (=> b!20752 m!22907))

(declare-fun m!22909 () Bool)

(assert (=> b!20751 m!22909))

(declare-fun m!22911 () Bool)

(assert (=> b!20749 m!22911))

(declare-fun m!22913 () Bool)

(assert (=> b!20750 m!22913))

(assert (=> b!20575 d!12715))

(declare-fun b!20754 () Bool)

(declare-fun e!10880 () Int)

(declare-fun lt!3145 () Int)

(declare-fun lt!3144 () Int)

(assert (=> b!20754 (= e!10880 (+ 1 (ite (>= lt!3145 lt!3144) lt!3145 lt!3144)))))

(assert (=> b!20754 (= lt!3144 (level!29 (right!679 (left!676 (left!676 xs!604)))))))

(assert (=> b!20754 (= lt!3145 (level!29 (left!676 (left!676 (left!676 xs!604)))))))

(declare-fun d!12717 () Bool)

(declare-fun lt!3146 () Int)

(assert (=> d!12717 (>= lt!3146 0)))

(assert (=> d!12717 (= lt!3146 e!10880)))

(declare-fun c!4998 () Bool)

(assert (=> d!12717 (= c!4998 (or (is-Empty!42 (left!676 (left!676 xs!604))) (is-Single!31 (left!676 (left!676 xs!604)))))))

(assert (=> d!12717 (= (level!29 (left!676 (left!676 xs!604))) lt!3146)))

(declare-fun b!20753 () Bool)

(assert (=> b!20753 (= e!10880 0)))

(assert (= (and d!12717 c!4998) b!20753))

(assert (= (and d!12717 (not c!4998)) b!20754))

(assert (=> b!20754 m!22839))

(assert (=> b!20754 m!22837))

(assert (=> b!20614 d!12717))

(declare-fun b!20756 () Bool)

(declare-fun e!10881 () Int)

(declare-fun lt!3148 () Int)

(declare-fun lt!3147 () Int)

(assert (=> b!20756 (= e!10881 (+ 1 (ite (>= lt!3148 lt!3147) lt!3148 lt!3147)))))

(assert (=> b!20756 (= lt!3147 (level!29 (right!679 (right!679 (left!676 xs!604)))))))

(assert (=> b!20756 (= lt!3148 (level!29 (left!676 (right!679 (left!676 xs!604)))))))

(declare-fun d!12719 () Bool)

(declare-fun lt!3149 () Int)

(assert (=> d!12719 (>= lt!3149 0)))

(assert (=> d!12719 (= lt!3149 e!10881)))

(declare-fun c!4999 () Bool)

(assert (=> d!12719 (= c!4999 (or (is-Empty!42 (right!679 (left!676 xs!604))) (is-Single!31 (right!679 (left!676 xs!604)))))))

(assert (=> d!12719 (= (level!29 (right!679 (left!676 xs!604))) lt!3149)))

(declare-fun b!20755 () Bool)

(assert (=> b!20755 (= e!10881 0)))

(assert (= (and d!12719 c!4999) b!20755))

(assert (= (and d!12719 (not c!4999)) b!20756))

(assert (=> b!20756 m!22803))

(assert (=> b!20756 m!22801))

(assert (=> b!20614 d!12719))

(declare-fun d!12721 () Bool)

(declare-fun res!8976 () Bool)

(declare-fun e!10882 () Bool)

(assert (=> d!12721 (=> res!8976 e!10882)))

(assert (=> d!12721 (= res!8976 (not (is-CC!31 (right!679 (left!676 res!5606)))))))

(assert (=> d!12721 (= (concInv!30 (right!679 (left!676 res!5606))) e!10882)))

(declare-fun b!20760 () Bool)

(declare-fun e!10883 () Bool)

(assert (=> b!20760 (= e!10883 (concInv!30 (right!679 (right!679 (left!676 res!5606)))))))

(declare-fun b!20759 () Bool)

(declare-fun res!8978 () Bool)

(assert (=> b!20759 (=> (not res!8978) (not e!10883))))

(assert (=> b!20759 (= res!8978 (concInv!30 (left!676 (right!679 (left!676 res!5606)))))))

(declare-fun b!20757 () Bool)

(assert (=> b!20757 (= e!10882 e!10883)))

(declare-fun res!8979 () Bool)

(assert (=> b!20757 (=> (not res!8979) (not e!10883))))

(assert (=> b!20757 (= res!8979 (not (isEmpty!294 (left!676 (right!679 (left!676 res!5606))))))))

(declare-fun b!20758 () Bool)

(declare-fun res!8977 () Bool)

(assert (=> b!20758 (=> (not res!8977) (not e!10883))))

(assert (=> b!20758 (= res!8977 (not (isEmpty!294 (right!679 (right!679 (left!676 res!5606))))))))

(assert (= (and d!12721 (not res!8976)) b!20757))

(assert (= (and b!20757 res!8979) b!20758))

(assert (= (and b!20758 res!8977) b!20759))

(assert (= (and b!20759 res!8978) b!20760))

(declare-fun m!22915 () Bool)

(assert (=> b!20760 m!22915))

(declare-fun m!22917 () Bool)

(assert (=> b!20759 m!22917))

(declare-fun m!22919 () Bool)

(assert (=> b!20757 m!22919))

(declare-fun m!22921 () Bool)

(assert (=> b!20758 m!22921))

(assert (=> b!20563 d!12721))

(declare-fun d!12723 () Bool)

(declare-fun lt!3150 () Int)

(assert (=> d!12723 (>= lt!3150 0)))

(declare-fun e!10884 () Int)

(assert (=> d!12723 (= lt!3150 e!10884)))

(declare-fun c!5000 () Bool)

(assert (=> d!12723 (= c!5000 (is-Nil!332 lt!3119))))

(assert (=> d!12723 (= (size!224 lt!3119) lt!3150)))

(declare-fun b!20761 () Bool)

(assert (=> b!20761 (= e!10884 0)))

(declare-fun b!20762 () Bool)

(assert (=> b!20762 (= e!10884 (+ 1 (size!224 (t!4332 lt!3119))))))

(assert (= (and d!12723 c!5000) b!20761))

(assert (= (and d!12723 (not c!5000)) b!20762))

(declare-fun m!22923 () Bool)

(assert (=> b!20762 m!22923))

(assert (=> d!12657 d!12723))

(assert (=> d!12657 d!12651))

(declare-fun d!12725 () Bool)

(assert (=> d!12725 (= (isEmpty!294 (left!676 (right!679 xs!604))) (= (left!676 (right!679 xs!604)) Empty!42))))

(assert (=> b!20610 d!12725))

(declare-fun e!10887 () List!337)

(declare-fun b!20763 () Bool)

(assert (=> b!20763 (= e!10887 (++!20 (t!4332 (toList!97 (left!676 xs!604))) (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- (- i!298 1) (size!224 (t!4332 (toList!97 (left!676 xs!604))))) y!824)))))

(declare-fun d!12727 () Bool)

(declare-fun e!10885 () Bool)

(assert (=> d!12727 e!10885))

(declare-fun res!8981 () Bool)

(assert (=> d!12727 (=> (not res!8981) (not e!10885))))

(declare-fun e!10888 () Bool)

(assert (=> d!12727 (= res!8981 e!10888)))

(declare-fun res!8980 () Bool)

(assert (=> d!12727 (=> res!8980 e!10888)))

(assert (=> d!12727 (= res!8980 (or (is-Nil!332 (t!4332 (toList!97 (left!676 xs!604)))) (= (- i!298 1) 0)))))

(declare-fun e!10886 () Bool)

(assert (=> d!12727 e!10886))

(declare-fun res!8982 () Bool)

(assert (=> d!12727 (=> (not res!8982) (not e!10886))))

(assert (=> d!12727 (= res!8982 (<= 0 (- i!298 1)))))

(assert (=> d!12727 (= (appendInsertIndex!11 (t!4332 (toList!97 (left!676 xs!604))) (toList!97 (right!679 xs!604)) (- i!298 1) y!824) true)))

(declare-fun b!20764 () Bool)

(assert (=> b!20764 (= e!10888 (appendInsertIndex!11 (t!4332 (t!4332 (toList!97 (left!676 xs!604)))) (toList!97 (right!679 xs!604)) (- (- i!298 1) 1) y!824))))

(declare-fun b!20765 () Bool)

(assert (=> b!20765 (= e!10885 (= (insertAtIndex!10 (++!20 (t!4332 (toList!97 (left!676 xs!604))) (toList!97 (right!679 xs!604))) (- i!298 1) y!824) e!10887))))

(declare-fun c!5001 () Bool)

(assert (=> b!20765 (= c!5001 (< (- i!298 1) (size!224 (t!4332 (toList!97 (left!676 xs!604))))))))

(declare-fun b!20766 () Bool)

(assert (=> b!20766 (= e!10887 (++!20 (insertAtIndex!10 (t!4332 (toList!97 (left!676 xs!604))) (- i!298 1) y!824) (toList!97 (right!679 xs!604))))))

(declare-fun b!20767 () Bool)

(assert (=> b!20767 (= e!10886 (<= (- i!298 1) (+ (size!224 (t!4332 (toList!97 (left!676 xs!604)))) (size!224 (toList!97 (right!679 xs!604))))))))

(assert (= (and d!12727 res!8982) b!20767))

(assert (= (and d!12727 (not res!8980)) b!20764))

(assert (= (and d!12727 res!8981) b!20765))

(assert (= (and b!20765 c!5001) b!20766))

(assert (= (and b!20765 (not c!5001)) b!20763))

(assert (=> b!20763 m!22849))

(assert (=> b!20763 m!22613))

(declare-fun m!22925 () Bool)

(assert (=> b!20763 m!22925))

(assert (=> b!20763 m!22925))

(declare-fun m!22927 () Bool)

(assert (=> b!20763 m!22927))

(assert (=> b!20766 m!22905))

(assert (=> b!20766 m!22905))

(assert (=> b!20766 m!22613))

(declare-fun m!22929 () Bool)

(assert (=> b!20766 m!22929))

(assert (=> b!20767 m!22849))

(assert (=> b!20767 m!22613))

(assert (=> b!20767 m!22759))

(assert (=> b!20765 m!22613))

(assert (=> b!20765 m!22797))

(assert (=> b!20765 m!22797))

(declare-fun m!22931 () Bool)

(assert (=> b!20765 m!22931))

(assert (=> b!20765 m!22849))

(assert (=> b!20764 m!22613))

(declare-fun m!22933 () Bool)

(assert (=> b!20764 m!22933))

(assert (=> b!20637 d!12727))

(declare-fun d!12729 () Bool)

(declare-fun e!10890 () Bool)

(assert (=> d!12729 e!10890))

(declare-fun res!8983 () Bool)

(assert (=> d!12729 (=> (not res!8983) (not e!10890))))

(declare-fun lt!3151 () List!337)

(assert (=> d!12729 (= res!8983 (= (content!58 lt!3151) (union (content!58 (toList!97 (left!676 xs!604))) (content!58 (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824)))))))

(declare-fun e!10889 () List!337)

(assert (=> d!12729 (= lt!3151 e!10889)))

(declare-fun c!5002 () Bool)

(assert (=> d!12729 (= c!5002 (is-Nil!332 (toList!97 (left!676 xs!604))))))

(assert (=> d!12729 (= (++!20 (toList!97 (left!676 xs!604)) (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824)) lt!3151)))

(declare-fun b!20769 () Bool)

(assert (=> b!20769 (= e!10889 (Cons!331 (h!245 (toList!97 (left!676 xs!604))) (++!20 (t!4332 (toList!97 (left!676 xs!604))) (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824))))))

(declare-fun b!20770 () Bool)

(declare-fun res!8984 () Bool)

(assert (=> b!20770 (=> (not res!8984) (not e!10890))))

(assert (=> b!20770 (= res!8984 (= (size!224 lt!3151) (+ (size!224 (toList!97 (left!676 xs!604))) (size!224 (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824)))))))

(declare-fun b!20771 () Bool)

(assert (=> b!20771 (= e!10890 (or (not (= (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824) Nil!332)) (= lt!3151 (toList!97 (left!676 xs!604)))))))

(declare-fun b!20768 () Bool)

(assert (=> b!20768 (= e!10889 (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824))))

(assert (= (and d!12729 c!5002) b!20768))

(assert (= (and d!12729 (not c!5002)) b!20769))

(assert (= (and d!12729 res!8983) b!20770))

(assert (= (and b!20770 res!8984) b!20771))

(declare-fun m!22935 () Bool)

(assert (=> d!12729 m!22935))

(assert (=> d!12729 m!22611))

(assert (=> d!12729 m!22793))

(assert (=> d!12729 m!22751))

(declare-fun m!22937 () Bool)

(assert (=> d!12729 m!22937))

(assert (=> b!20769 m!22751))

(declare-fun m!22939 () Bool)

(assert (=> b!20769 m!22939))

(declare-fun m!22941 () Bool)

(assert (=> b!20770 m!22941))

(assert (=> b!20770 m!22611))

(assert (=> b!20770 m!22749))

(assert (=> b!20770 m!22751))

(declare-fun m!22943 () Bool)

(assert (=> b!20770 m!22943))

(assert (=> b!20636 d!12729))

(declare-fun b!20775 () Bool)

(declare-fun e!10892 () List!337)

(assert (=> b!20775 (= e!10892 (Cons!331 (h!245 (toList!97 (right!679 xs!604))) (insertAtIndex!10 (t!4332 (toList!97 (right!679 xs!604))) (- (- i!298 (size!224 (toList!97 (left!676 xs!604)))) 1) y!824)))))

(declare-fun b!20772 () Bool)

(declare-fun e!10891 () List!337)

(assert (=> b!20772 (= e!10891 (Cons!331 y!824 Nil!332))))

(declare-fun d!12731 () Bool)

(declare-fun c!5003 () Bool)

(assert (=> d!12731 (= c!5003 (is-Nil!332 (toList!97 (right!679 xs!604))))))

(assert (=> d!12731 (= (insertAtIndex!10 (toList!97 (right!679 xs!604)) (- i!298 (size!224 (toList!97 (left!676 xs!604)))) y!824) e!10891)))

(declare-fun b!20773 () Bool)

(assert (=> b!20773 (= e!10891 e!10892)))

(declare-fun c!5004 () Bool)

(assert (=> b!20773 (= c!5004 (= (- i!298 (size!224 (toList!97 (left!676 xs!604)))) 0))))

(declare-fun b!20774 () Bool)

(assert (=> b!20774 (= e!10892 (Cons!331 y!824 (toList!97 (right!679 xs!604))))))

(assert (= (and b!20773 c!5004) b!20774))

(assert (= (and b!20773 (not c!5004)) b!20775))

(assert (= (and d!12731 c!5003) b!20772))

(assert (= (and d!12731 (not c!5003)) b!20773))

(declare-fun m!22945 () Bool)

(assert (=> b!20775 m!22945))

(assert (=> b!20636 d!12731))

(assert (=> b!20636 d!12689))

(declare-fun b!20777 () Bool)

(declare-fun e!10893 () Int)

(declare-fun lt!3153 () Int)

(declare-fun lt!3152 () Int)

(assert (=> b!20777 (= e!10893 (+ 1 (ite (>= lt!3153 lt!3152) lt!3153 lt!3152)))))

(assert (=> b!20777 (= lt!3152 (level!29 (right!679 (left!676 (left!676 res!5606)))))))

(assert (=> b!20777 (= lt!3153 (level!29 (left!676 (left!676 (left!676 res!5606)))))))

(declare-fun d!12733 () Bool)

(declare-fun lt!3154 () Int)

(assert (=> d!12733 (>= lt!3154 0)))

(assert (=> d!12733 (= lt!3154 e!10893)))

(declare-fun c!5005 () Bool)

(assert (=> d!12733 (= c!5005 (or (is-Empty!42 (left!676 (left!676 res!5606))) (is-Single!31 (left!676 (left!676 res!5606)))))))

(assert (=> d!12733 (= (level!29 (left!676 (left!676 res!5606))) lt!3154)))

(declare-fun b!20776 () Bool)

(assert (=> b!20776 (= e!10893 0)))

(assert (= (and d!12733 c!5005) b!20776))

(assert (= (and d!12733 (not c!5005)) b!20777))

(declare-fun m!22947 () Bool)

(assert (=> b!20777 m!22947))

(declare-fun m!22949 () Bool)

(assert (=> b!20777 m!22949))

(assert (=> b!20607 d!12733))

(declare-fun b!20779 () Bool)

(declare-fun e!10894 () Int)

(declare-fun lt!3156 () Int)

(declare-fun lt!3155 () Int)

(assert (=> b!20779 (= e!10894 (+ 1 (ite (>= lt!3156 lt!3155) lt!3156 lt!3155)))))

(assert (=> b!20779 (= lt!3155 (level!29 (right!679 (right!679 (left!676 res!5606)))))))

(assert (=> b!20779 (= lt!3156 (level!29 (left!676 (right!679 (left!676 res!5606)))))))

(declare-fun d!12735 () Bool)

(declare-fun lt!3157 () Int)

(assert (=> d!12735 (>= lt!3157 0)))

(assert (=> d!12735 (= lt!3157 e!10894)))

(declare-fun c!5006 () Bool)

(assert (=> d!12735 (= c!5006 (or (is-Empty!42 (right!679 (left!676 res!5606))) (is-Single!31 (right!679 (left!676 res!5606)))))))

(assert (=> d!12735 (= (level!29 (right!679 (left!676 res!5606))) lt!3157)))

(declare-fun b!20778 () Bool)

(assert (=> b!20778 (= e!10894 0)))

(assert (= (and d!12735 c!5006) b!20778))

(assert (= (and d!12735 (not c!5006)) b!20779))

(declare-fun m!22951 () Bool)

(assert (=> b!20779 m!22951))

(declare-fun m!22953 () Bool)

(assert (=> b!20779 m!22953))

(assert (=> b!20607 d!12735))

(assert (=> b!20549 d!12669))

(assert (=> b!20549 d!12671))

(assert (=> b!20615 d!12717))

(assert (=> b!20615 d!12719))

(declare-fun d!12737 () Bool)

(declare-fun res!8985 () Bool)

(declare-fun e!10895 () Bool)

(assert (=> d!12737 (=> res!8985 e!10895)))

(assert (=> d!12737 (= res!8985 (not (is-CC!31 (right!679 (left!676 xs!604)))))))

(assert (=> d!12737 (= (concInv!30 (right!679 (left!676 xs!604))) e!10895)))

(declare-fun b!20783 () Bool)

(declare-fun e!10896 () Bool)

(assert (=> b!20783 (= e!10896 (concInv!30 (right!679 (right!679 (left!676 xs!604)))))))

(declare-fun b!20782 () Bool)

(declare-fun res!8987 () Bool)

(assert (=> b!20782 (=> (not res!8987) (not e!10896))))

(assert (=> b!20782 (= res!8987 (concInv!30 (left!676 (right!679 (left!676 xs!604)))))))

(declare-fun b!20780 () Bool)

(assert (=> b!20780 (= e!10895 e!10896)))

(declare-fun res!8988 () Bool)

(assert (=> b!20780 (=> (not res!8988) (not e!10896))))

(assert (=> b!20780 (= res!8988 (not (isEmpty!294 (left!676 (right!679 (left!676 xs!604))))))))

(declare-fun b!20781 () Bool)

(declare-fun res!8986 () Bool)

(assert (=> b!20781 (=> (not res!8986) (not e!10896))))

(assert (=> b!20781 (= res!8986 (not (isEmpty!294 (right!679 (right!679 (left!676 xs!604))))))))

(assert (= (and d!12737 (not res!8985)) b!20780))

(assert (= (and b!20780 res!8988) b!20781))

(assert (= (and b!20781 res!8986) b!20782))

(assert (= (and b!20782 res!8987) b!20783))

(declare-fun m!22955 () Bool)

(assert (=> b!20783 m!22955))

(declare-fun m!22957 () Bool)

(assert (=> b!20782 m!22957))

(declare-fun m!22959 () Bool)

(assert (=> b!20780 m!22959))

(declare-fun m!22961 () Bool)

(assert (=> b!20781 m!22961))

(assert (=> b!20652 d!12737))

(declare-fun d!12739 () Bool)

(assert (=> d!12739 (= (isEmpty!294 (right!679 (left!676 xs!604))) (= (right!679 (left!676 xs!604)) Empty!42))))

(assert (=> b!20650 d!12739))

(declare-fun d!12741 () Bool)

(declare-fun e!10898 () Bool)

(assert (=> d!12741 e!10898))

(declare-fun res!8989 () Bool)

(assert (=> d!12741 (=> (not res!8989) (not e!10898))))

(declare-fun lt!3158 () List!337)

(assert (=> d!12741 (= res!8989 (= (content!58 lt!3158) (union (content!58 (toList!97 (left!676 (left!676 xs!604)))) (content!58 (toList!97 (right!679 (left!676 xs!604)))))))))

(declare-fun e!10897 () List!337)

(assert (=> d!12741 (= lt!3158 e!10897)))

(declare-fun c!5007 () Bool)

(assert (=> d!12741 (= c!5007 (is-Nil!332 (toList!97 (left!676 (left!676 xs!604)))))))

(assert (=> d!12741 (= (++!20 (toList!97 (left!676 (left!676 xs!604))) (toList!97 (right!679 (left!676 xs!604)))) lt!3158)))

(declare-fun b!20785 () Bool)

(assert (=> b!20785 (= e!10897 (Cons!331 (h!245 (toList!97 (left!676 (left!676 xs!604)))) (++!20 (t!4332 (toList!97 (left!676 (left!676 xs!604)))) (toList!97 (right!679 (left!676 xs!604))))))))

(declare-fun b!20786 () Bool)

(declare-fun res!8990 () Bool)

(assert (=> b!20786 (=> (not res!8990) (not e!10898))))

(assert (=> b!20786 (= res!8990 (= (size!224 lt!3158) (+ (size!224 (toList!97 (left!676 (left!676 xs!604)))) (size!224 (toList!97 (right!679 (left!676 xs!604)))))))))

(declare-fun b!20787 () Bool)

(assert (=> b!20787 (= e!10898 (or (not (= (toList!97 (right!679 (left!676 xs!604))) Nil!332)) (= lt!3158 (toList!97 (left!676 (left!676 xs!604))))))))

(declare-fun b!20784 () Bool)

(assert (=> b!20784 (= e!10897 (toList!97 (right!679 (left!676 xs!604))))))

(assert (= (and d!12741 c!5007) b!20784))

(assert (= (and d!12741 (not c!5007)) b!20785))

(assert (= (and d!12741 res!8989) b!20786))

(assert (= (and b!20786 res!8990) b!20787))

(declare-fun m!22963 () Bool)

(assert (=> d!12741 m!22963))

(assert (=> d!12741 m!22767))

(declare-fun m!22965 () Bool)

(assert (=> d!12741 m!22965))

(assert (=> d!12741 m!22769))

(declare-fun m!22967 () Bool)

(assert (=> d!12741 m!22967))

(assert (=> b!20785 m!22769))

(declare-fun m!22969 () Bool)

(assert (=> b!20785 m!22969))

(declare-fun m!22971 () Bool)

(assert (=> b!20786 m!22971))

(assert (=> b!20786 m!22767))

(declare-fun m!22973 () Bool)

(assert (=> b!20786 m!22973))

(assert (=> b!20786 m!22769))

(declare-fun m!22975 () Bool)

(assert (=> b!20786 m!22975))

(assert (=> b!20644 d!12741))

(declare-fun b!20789 () Bool)

(declare-fun e!10899 () List!337)

(declare-fun e!10900 () List!337)

(assert (=> b!20789 (= e!10899 e!10900)))

(declare-fun c!5009 () Bool)

(assert (=> b!20789 (= c!5009 (is-Single!31 (left!676 (left!676 xs!604))))))

(declare-fun d!12743 () Bool)

(declare-fun lt!3159 () List!337)

(assert (=> d!12743 (= (size!224 lt!3159) (size!223 (left!676 (left!676 xs!604))))))

(assert (=> d!12743 (= lt!3159 e!10899)))

(declare-fun c!5008 () Bool)

(assert (=> d!12743 (= c!5008 (is-Empty!42 (left!676 (left!676 xs!604))))))

(assert (=> d!12743 (= (toList!97 (left!676 (left!676 xs!604))) lt!3159)))

(declare-fun b!20788 () Bool)

(assert (=> b!20788 (= e!10899 Nil!332)))

(declare-fun b!20791 () Bool)

(assert (=> b!20791 (= e!10900 (++!20 (toList!97 (left!676 (left!676 (left!676 xs!604)))) (toList!97 (right!679 (left!676 (left!676 xs!604))))))))

(declare-fun b!20790 () Bool)

(assert (=> b!20790 (= e!10900 (Cons!331 (x!8791 (left!676 (left!676 xs!604))) Nil!332))))

(assert (= (and b!20789 c!5009) b!20790))

(assert (= (and b!20789 (not c!5009)) b!20791))

(assert (= (and d!12743 c!5008) b!20788))

(assert (= (and d!12743 (not c!5008)) b!20789))

(declare-fun m!22977 () Bool)

(assert (=> d!12743 m!22977))

(assert (=> d!12743 m!22741))

(declare-fun m!22979 () Bool)

(assert (=> b!20791 m!22979))

(declare-fun m!22981 () Bool)

(assert (=> b!20791 m!22981))

(assert (=> b!20791 m!22979))

(assert (=> b!20791 m!22981))

(declare-fun m!22983 () Bool)

(assert (=> b!20791 m!22983))

(assert (=> b!20644 d!12743))

(declare-fun b!20793 () Bool)

(declare-fun e!10901 () List!337)

(declare-fun e!10902 () List!337)

(assert (=> b!20793 (= e!10901 e!10902)))

(declare-fun c!5011 () Bool)

(assert (=> b!20793 (= c!5011 (is-Single!31 (right!679 (left!676 xs!604))))))

(declare-fun d!12745 () Bool)

(declare-fun lt!3160 () List!337)

(assert (=> d!12745 (= (size!224 lt!3160) (size!223 (right!679 (left!676 xs!604))))))

(assert (=> d!12745 (= lt!3160 e!10901)))

(declare-fun c!5010 () Bool)

(assert (=> d!12745 (= c!5010 (is-Empty!42 (right!679 (left!676 xs!604))))))

(assert (=> d!12745 (= (toList!97 (right!679 (left!676 xs!604))) lt!3160)))

(declare-fun b!20792 () Bool)

(assert (=> b!20792 (= e!10901 Nil!332)))

(declare-fun b!20795 () Bool)

(assert (=> b!20795 (= e!10902 (++!20 (toList!97 (left!676 (right!679 (left!676 xs!604)))) (toList!97 (right!679 (right!679 (left!676 xs!604))))))))

(declare-fun b!20794 () Bool)

(assert (=> b!20794 (= e!10902 (Cons!331 (x!8791 (right!679 (left!676 xs!604))) Nil!332))))

(assert (= (and b!20793 c!5011) b!20794))

(assert (= (and b!20793 (not c!5011)) b!20795))

(assert (= (and d!12745 c!5010) b!20792))

(assert (= (and d!12745 (not c!5010)) b!20793))

(declare-fun m!22985 () Bool)

(assert (=> d!12745 m!22985))

(assert (=> d!12745 m!22743))

(declare-fun m!22987 () Bool)

(assert (=> b!20795 m!22987))

(declare-fun m!22989 () Bool)

(assert (=> b!20795 m!22989))

(assert (=> b!20795 m!22987))

(assert (=> b!20795 m!22989))

(declare-fun m!22991 () Bool)

(assert (=> b!20795 m!22991))

(assert (=> b!20644 d!12745))

(declare-fun d!12747 () Bool)

(declare-fun res!8991 () Bool)

(declare-fun e!10903 () Bool)

(assert (=> d!12747 (=> res!8991 e!10903)))

(assert (=> d!12747 (= res!8991 (not (is-CC!31 (left!676 (right!679 xs!604)))))))

(assert (=> d!12747 (= (concInv!30 (left!676 (right!679 xs!604))) e!10903)))

(declare-fun b!20799 () Bool)

(declare-fun e!10904 () Bool)

(assert (=> b!20799 (= e!10904 (concInv!30 (right!679 (left!676 (right!679 xs!604)))))))

(declare-fun b!20798 () Bool)

(declare-fun res!8993 () Bool)

(assert (=> b!20798 (=> (not res!8993) (not e!10904))))

(assert (=> b!20798 (= res!8993 (concInv!30 (left!676 (left!676 (right!679 xs!604)))))))

(declare-fun b!20796 () Bool)

(assert (=> b!20796 (= e!10903 e!10904)))

(declare-fun res!8994 () Bool)

(assert (=> b!20796 (=> (not res!8994) (not e!10904))))

(assert (=> b!20796 (= res!8994 (not (isEmpty!294 (left!676 (left!676 (right!679 xs!604))))))))

(declare-fun b!20797 () Bool)

(declare-fun res!8992 () Bool)

(assert (=> b!20797 (=> (not res!8992) (not e!10904))))

(assert (=> b!20797 (= res!8992 (not (isEmpty!294 (right!679 (left!676 (right!679 xs!604))))))))

(assert (= (and d!12747 (not res!8991)) b!20796))

(assert (= (and b!20796 res!8994) b!20797))

(assert (= (and b!20797 res!8992) b!20798))

(assert (= (and b!20798 res!8993) b!20799))

(declare-fun m!22993 () Bool)

(assert (=> b!20799 m!22993))

(declare-fun m!22995 () Bool)

(assert (=> b!20798 m!22995))

(declare-fun m!22997 () Bool)

(assert (=> b!20796 m!22997))

(declare-fun m!22999 () Bool)

(assert (=> b!20797 m!22999))

(assert (=> b!20612 d!12747))

(declare-fun d!12749 () Bool)

(declare-fun res!8995 () Bool)

(declare-fun e!10905 () Bool)

(assert (=> d!12749 (=> res!8995 e!10905)))

(assert (=> d!12749 (= res!8995 (not (is-CC!31 (right!679 (right!679 res!5606)))))))

(assert (=> d!12749 (= (balanced!31 (right!679 (right!679 res!5606))) e!10905)))

(declare-fun b!20800 () Bool)

(declare-fun e!10906 () Bool)

(assert (=> b!20800 (= e!10905 e!10906)))

(declare-fun res!8997 () Bool)

(assert (=> b!20800 (=> (not res!8997) (not e!10906))))

(assert (=> b!20800 (= res!8997 (>= (- (level!29 (left!676 (right!679 (right!679 res!5606)))) (level!29 (right!679 (right!679 (right!679 res!5606))))) (- 1)))))

(declare-fun b!20802 () Bool)

(declare-fun res!8996 () Bool)

(assert (=> b!20802 (=> (not res!8996) (not e!10906))))

(assert (=> b!20802 (= res!8996 (balanced!31 (left!676 (right!679 (right!679 res!5606)))))))

(declare-fun b!20801 () Bool)

(declare-fun res!8998 () Bool)

(assert (=> b!20801 (=> (not res!8998) (not e!10906))))

(assert (=> b!20801 (= res!8998 (<= (- (level!29 (left!676 (right!679 (right!679 res!5606)))) (level!29 (right!679 (right!679 (right!679 res!5606))))) 1))))

(declare-fun b!20803 () Bool)

(assert (=> b!20803 (= e!10906 (balanced!31 (right!679 (right!679 (right!679 res!5606)))))))

(assert (= (and d!12749 (not res!8995)) b!20800))

(assert (= (and b!20800 res!8997) b!20801))

(assert (= (and b!20801 res!8998) b!20802))

(assert (= (and b!20802 res!8996) b!20803))

(assert (=> b!20800 m!22871))

(assert (=> b!20800 m!22869))

(declare-fun m!23001 () Bool)

(assert (=> b!20802 m!23001))

(assert (=> b!20801 m!22871))

(assert (=> b!20801 m!22869))

(declare-fun m!23003 () Bool)

(assert (=> b!20803 m!23003))

(assert (=> b!20555 d!12749))

(declare-fun d!12751 () Bool)

(declare-fun res!8999 () Bool)

(declare-fun e!10907 () Bool)

(assert (=> d!12751 (=> res!8999 e!10907)))

(assert (=> d!12751 (= res!8999 (not (is-CC!31 (left!676 (right!679 res!5606)))))))

(assert (=> d!12751 (= (concInv!30 (left!676 (right!679 res!5606))) e!10907)))

(declare-fun b!20807 () Bool)

(declare-fun e!10908 () Bool)

(assert (=> b!20807 (= e!10908 (concInv!30 (right!679 (left!676 (right!679 res!5606)))))))

(declare-fun b!20806 () Bool)

(declare-fun res!9001 () Bool)

(assert (=> b!20806 (=> (not res!9001) (not e!10908))))

(assert (=> b!20806 (= res!9001 (concInv!30 (left!676 (left!676 (right!679 res!5606)))))))

(declare-fun b!20804 () Bool)

(assert (=> b!20804 (= e!10907 e!10908)))

(declare-fun res!9002 () Bool)

(assert (=> b!20804 (=> (not res!9002) (not e!10908))))

(assert (=> b!20804 (= res!9002 (not (isEmpty!294 (left!676 (left!676 (right!679 res!5606))))))))

(declare-fun b!20805 () Bool)

(declare-fun res!9000 () Bool)

(assert (=> b!20805 (=> (not res!9000) (not e!10908))))

(assert (=> b!20805 (= res!9000 (not (isEmpty!294 (right!679 (left!676 (right!679 res!5606))))))))

(assert (= (and d!12751 (not res!8999)) b!20804))

(assert (= (and b!20804 res!9002) b!20805))

(assert (= (and b!20805 res!9000) b!20806))

(assert (= (and b!20806 res!9001) b!20807))

(declare-fun m!23005 () Bool)

(assert (=> b!20807 m!23005))

(declare-fun m!23007 () Bool)

(assert (=> b!20806 m!23007))

(declare-fun m!23009 () Bool)

(assert (=> b!20804 m!23009))

(declare-fun m!23011 () Bool)

(assert (=> b!20805 m!23011))

(assert (=> b!20574 d!12751))

(assert (=> b!20640 d!12689))

(declare-fun d!12753 () Bool)

(declare-fun lt!3161 () Int)

(assert (=> d!12753 (>= lt!3161 0)))

(declare-fun e!10909 () Int)

(assert (=> d!12753 (= lt!3161 e!10909)))

(declare-fun c!5012 () Bool)

(assert (=> d!12753 (= c!5012 (is-Nil!332 (toList!97 (right!679 xs!604))))))

(assert (=> d!12753 (= (size!224 (toList!97 (right!679 xs!604))) lt!3161)))

(declare-fun b!20808 () Bool)

(assert (=> b!20808 (= e!10909 0)))

(declare-fun b!20809 () Bool)

(assert (=> b!20809 (= e!10909 (+ 1 (size!224 (t!4332 (toList!97 (right!679 xs!604))))))))

(assert (= (and d!12753 c!5012) b!20808))

(assert (= (and d!12753 (not c!5012)) b!20809))

(declare-fun m!23013 () Bool)

(assert (=> b!20809 m!23013))

(assert (=> b!20640 d!12753))

(assert (=> b!20557 d!12671))

(assert (=> b!20557 d!12669))

(declare-fun d!12755 () Bool)

(declare-fun e!10911 () Bool)

(assert (=> d!12755 e!10911))

(declare-fun res!9003 () Bool)

(assert (=> d!12755 (=> (not res!9003) (not e!10911))))

(declare-fun lt!3162 () List!337)

(assert (=> d!12755 (= res!9003 (= (content!58 lt!3162) (union (content!58 (toList!97 (left!676 (right!679 xs!604)))) (content!58 (toList!97 (right!679 (right!679 xs!604)))))))))

(declare-fun e!10910 () List!337)

(assert (=> d!12755 (= lt!3162 e!10910)))

(declare-fun c!5013 () Bool)

(assert (=> d!12755 (= c!5013 (is-Nil!332 (toList!97 (left!676 (right!679 xs!604)))))))

(assert (=> d!12755 (= (++!20 (toList!97 (left!676 (right!679 xs!604))) (toList!97 (right!679 (right!679 xs!604)))) lt!3162)))

(declare-fun b!20811 () Bool)

(assert (=> b!20811 (= e!10910 (Cons!331 (h!245 (toList!97 (left!676 (right!679 xs!604)))) (++!20 (t!4332 (toList!97 (left!676 (right!679 xs!604)))) (toList!97 (right!679 (right!679 xs!604))))))))

(declare-fun b!20812 () Bool)

(declare-fun res!9004 () Bool)

(assert (=> b!20812 (=> (not res!9004) (not e!10911))))

(assert (=> b!20812 (= res!9004 (= (size!224 lt!3162) (+ (size!224 (toList!97 (left!676 (right!679 xs!604)))) (size!224 (toList!97 (right!679 (right!679 xs!604)))))))))

(declare-fun b!20813 () Bool)

(assert (=> b!20813 (= e!10911 (or (not (= (toList!97 (right!679 (right!679 xs!604))) Nil!332)) (= lt!3162 (toList!97 (left!676 (right!679 xs!604))))))))

(declare-fun b!20810 () Bool)

(assert (=> b!20810 (= e!10910 (toList!97 (right!679 (right!679 xs!604))))))

(assert (= (and d!12755 c!5013) b!20810))

(assert (= (and d!12755 (not c!5013)) b!20811))

(assert (= (and d!12755 res!9003) b!20812))

(assert (= (and b!20812 res!9004) b!20813))

(declare-fun m!23015 () Bool)

(assert (=> d!12755 m!23015))

(assert (=> d!12755 m!22775))

(declare-fun m!23017 () Bool)

(assert (=> d!12755 m!23017))

(assert (=> d!12755 m!22777))

(declare-fun m!23019 () Bool)

(assert (=> d!12755 m!23019))

(assert (=> b!20811 m!22777))

(declare-fun m!23021 () Bool)

(assert (=> b!20811 m!23021))

(declare-fun m!23023 () Bool)

(assert (=> b!20812 m!23023))

(assert (=> b!20812 m!22775))

(declare-fun m!23025 () Bool)

(assert (=> b!20812 m!23025))

(assert (=> b!20812 m!22777))

(declare-fun m!23027 () Bool)

(assert (=> b!20812 m!23027))

(assert (=> b!20648 d!12755))

(declare-fun b!20815 () Bool)

(declare-fun e!10912 () List!337)

(declare-fun e!10913 () List!337)

(assert (=> b!20815 (= e!10912 e!10913)))

(declare-fun c!5015 () Bool)

(assert (=> b!20815 (= c!5015 (is-Single!31 (left!676 (right!679 xs!604))))))

(declare-fun d!12757 () Bool)

(declare-fun lt!3163 () List!337)

(assert (=> d!12757 (= (size!224 lt!3163) (size!223 (left!676 (right!679 xs!604))))))

(assert (=> d!12757 (= lt!3163 e!10912)))

(declare-fun c!5014 () Bool)

(assert (=> d!12757 (= c!5014 (is-Empty!42 (left!676 (right!679 xs!604))))))

(assert (=> d!12757 (= (toList!97 (left!676 (right!679 xs!604))) lt!3163)))

(declare-fun b!20814 () Bool)

(assert (=> b!20814 (= e!10912 Nil!332)))

(declare-fun b!20817 () Bool)

(assert (=> b!20817 (= e!10913 (++!20 (toList!97 (left!676 (left!676 (right!679 xs!604)))) (toList!97 (right!679 (left!676 (right!679 xs!604))))))))

(declare-fun b!20816 () Bool)

(assert (=> b!20816 (= e!10913 (Cons!331 (x!8791 (left!676 (right!679 xs!604))) Nil!332))))

(assert (= (and b!20815 c!5015) b!20816))

(assert (= (and b!20815 (not c!5015)) b!20817))

(assert (= (and d!12757 c!5014) b!20814))

(assert (= (and d!12757 (not c!5014)) b!20815))

(declare-fun m!23029 () Bool)

(assert (=> d!12757 m!23029))

(assert (=> d!12757 m!22745))

(declare-fun m!23031 () Bool)

(assert (=> b!20817 m!23031))

(declare-fun m!23033 () Bool)

(assert (=> b!20817 m!23033))

(assert (=> b!20817 m!23031))

(assert (=> b!20817 m!23033))

(declare-fun m!23035 () Bool)

(assert (=> b!20817 m!23035))

(assert (=> b!20648 d!12757))

(declare-fun b!20819 () Bool)

(declare-fun e!10914 () List!337)

(declare-fun e!10915 () List!337)

(assert (=> b!20819 (= e!10914 e!10915)))

(declare-fun c!5017 () Bool)

(assert (=> b!20819 (= c!5017 (is-Single!31 (right!679 (right!679 xs!604))))))

(declare-fun d!12759 () Bool)

(declare-fun lt!3164 () List!337)

(assert (=> d!12759 (= (size!224 lt!3164) (size!223 (right!679 (right!679 xs!604))))))

(assert (=> d!12759 (= lt!3164 e!10914)))

(declare-fun c!5016 () Bool)

(assert (=> d!12759 (= c!5016 (is-Empty!42 (right!679 (right!679 xs!604))))))

(assert (=> d!12759 (= (toList!97 (right!679 (right!679 xs!604))) lt!3164)))

(declare-fun b!20818 () Bool)

(assert (=> b!20818 (= e!10914 Nil!332)))

(declare-fun b!20821 () Bool)

(assert (=> b!20821 (= e!10915 (++!20 (toList!97 (left!676 (right!679 (right!679 xs!604)))) (toList!97 (right!679 (right!679 (right!679 xs!604))))))))

(declare-fun b!20820 () Bool)

(assert (=> b!20820 (= e!10915 (Cons!331 (x!8791 (right!679 (right!679 xs!604))) Nil!332))))

(assert (= (and b!20819 c!5017) b!20820))

(assert (= (and b!20819 (not c!5017)) b!20821))

(assert (= (and d!12759 c!5016) b!20818))

(assert (= (and d!12759 (not c!5016)) b!20819))

(declare-fun m!23037 () Bool)

(assert (=> d!12759 m!23037))

(assert (=> d!12759 m!22747))

(declare-fun m!23039 () Bool)

(assert (=> b!20821 m!23039))

(declare-fun m!23041 () Bool)

(assert (=> b!20821 m!23041))

(assert (=> b!20821 m!23039))

(assert (=> b!20821 m!23041))

(declare-fun m!23043 () Bool)

(assert (=> b!20821 m!23043))

(assert (=> b!20648 d!12759))

(assert (=> b!20606 d!12733))

(assert (=> b!20606 d!12735))

(declare-fun d!12761 () Bool)

(declare-fun e!10917 () Bool)

(assert (=> d!12761 e!10917))

(declare-fun res!9005 () Bool)

(assert (=> d!12761 (=> (not res!9005) (not e!10917))))

(declare-fun lt!3165 () List!337)

(assert (=> d!12761 (= res!9005 (= (content!58 lt!3165) (union (content!58 (toList!97 (left!676 (left!676 res!5606)))) (content!58 (toList!97 (right!679 (left!676 res!5606)))))))))

(declare-fun e!10916 () List!337)

(assert (=> d!12761 (= lt!3165 e!10916)))

(declare-fun c!5018 () Bool)

(assert (=> d!12761 (= c!5018 (is-Nil!332 (toList!97 (left!676 (left!676 res!5606)))))))

(assert (=> d!12761 (= (++!20 (toList!97 (left!676 (left!676 res!5606))) (toList!97 (right!679 (left!676 res!5606)))) lt!3165)))

(declare-fun b!20823 () Bool)

(assert (=> b!20823 (= e!10916 (Cons!331 (h!245 (toList!97 (left!676 (left!676 res!5606)))) (++!20 (t!4332 (toList!97 (left!676 (left!676 res!5606)))) (toList!97 (right!679 (left!676 res!5606))))))))

(declare-fun b!20824 () Bool)

(declare-fun res!9006 () Bool)

(assert (=> b!20824 (=> (not res!9006) (not e!10917))))

(assert (=> b!20824 (= res!9006 (= (size!224 lt!3165) (+ (size!224 (toList!97 (left!676 (left!676 res!5606)))) (size!224 (toList!97 (right!679 (left!676 res!5606)))))))))

(declare-fun b!20825 () Bool)

(assert (=> b!20825 (= e!10917 (or (not (= (toList!97 (right!679 (left!676 res!5606))) Nil!332)) (= lt!3165 (toList!97 (left!676 (left!676 res!5606))))))))

(declare-fun b!20822 () Bool)

(assert (=> b!20822 (= e!10916 (toList!97 (right!679 (left!676 res!5606))))))

(assert (= (and d!12761 c!5018) b!20822))

(assert (= (and d!12761 (not c!5018)) b!20823))

(assert (= (and d!12761 res!9005) b!20824))

(assert (= (and b!20824 res!9006) b!20825))

(declare-fun m!23045 () Bool)

(assert (=> d!12761 m!23045))

(assert (=> d!12761 m!22711))

(declare-fun m!23047 () Bool)

(assert (=> d!12761 m!23047))

(assert (=> d!12761 m!22713))

(declare-fun m!23049 () Bool)

(assert (=> d!12761 m!23049))

(assert (=> b!20823 m!22713))

(declare-fun m!23051 () Bool)

(assert (=> b!20823 m!23051))

(declare-fun m!23053 () Bool)

(assert (=> b!20824 m!23053))

(assert (=> b!20824 m!22711))

(declare-fun m!23055 () Bool)

(assert (=> b!20824 m!23055))

(assert (=> b!20824 m!22713))

(declare-fun m!23057 () Bool)

(assert (=> b!20824 m!23057))

(assert (=> b!20601 d!12761))

(declare-fun b!20827 () Bool)

(declare-fun e!10918 () List!337)

(declare-fun e!10919 () List!337)

(assert (=> b!20827 (= e!10918 e!10919)))

(declare-fun c!5020 () Bool)

(assert (=> b!20827 (= c!5020 (is-Single!31 (left!676 (left!676 res!5606))))))

(declare-fun d!12763 () Bool)

(declare-fun lt!3166 () List!337)

(assert (=> d!12763 (= (size!224 lt!3166) (size!223 (left!676 (left!676 res!5606))))))

(assert (=> d!12763 (= lt!3166 e!10918)))

(declare-fun c!5019 () Bool)

(assert (=> d!12763 (= c!5019 (is-Empty!42 (left!676 (left!676 res!5606))))))

(assert (=> d!12763 (= (toList!97 (left!676 (left!676 res!5606))) lt!3166)))

(declare-fun b!20826 () Bool)

(assert (=> b!20826 (= e!10918 Nil!332)))

(declare-fun b!20829 () Bool)

(assert (=> b!20829 (= e!10919 (++!20 (toList!97 (left!676 (left!676 (left!676 res!5606)))) (toList!97 (right!679 (left!676 (left!676 res!5606))))))))

(declare-fun b!20828 () Bool)

(assert (=> b!20828 (= e!10919 (Cons!331 (x!8791 (left!676 (left!676 res!5606))) Nil!332))))

(assert (= (and b!20827 c!5020) b!20828))

(assert (= (and b!20827 (not c!5020)) b!20829))

(assert (= (and d!12763 c!5019) b!20826))

(assert (= (and d!12763 (not c!5019)) b!20827))

(declare-fun m!23059 () Bool)

(assert (=> d!12763 m!23059))

(assert (=> d!12763 m!22861))

(declare-fun m!23061 () Bool)

(assert (=> b!20829 m!23061))

(declare-fun m!23063 () Bool)

(assert (=> b!20829 m!23063))

(assert (=> b!20829 m!23061))

(assert (=> b!20829 m!23063))

(declare-fun m!23065 () Bool)

(assert (=> b!20829 m!23065))

(assert (=> b!20601 d!12763))

(declare-fun b!20831 () Bool)

(declare-fun e!10920 () List!337)

(declare-fun e!10921 () List!337)

(assert (=> b!20831 (= e!10920 e!10921)))

(declare-fun c!5022 () Bool)

(assert (=> b!20831 (= c!5022 (is-Single!31 (right!679 (left!676 res!5606))))))

(declare-fun d!12765 () Bool)

(declare-fun lt!3167 () List!337)

(assert (=> d!12765 (= (size!224 lt!3167) (size!223 (right!679 (left!676 res!5606))))))

(assert (=> d!12765 (= lt!3167 e!10920)))

(declare-fun c!5021 () Bool)

(assert (=> d!12765 (= c!5021 (is-Empty!42 (right!679 (left!676 res!5606))))))

(assert (=> d!12765 (= (toList!97 (right!679 (left!676 res!5606))) lt!3167)))

(declare-fun b!20830 () Bool)

(assert (=> b!20830 (= e!10920 Nil!332)))

(declare-fun b!20833 () Bool)

(assert (=> b!20833 (= e!10921 (++!20 (toList!97 (left!676 (right!679 (left!676 res!5606)))) (toList!97 (right!679 (right!679 (left!676 res!5606))))))))

(declare-fun b!20832 () Bool)

(assert (=> b!20832 (= e!10921 (Cons!331 (x!8791 (right!679 (left!676 res!5606))) Nil!332))))

(assert (= (and b!20831 c!5022) b!20832))

(assert (= (and b!20831 (not c!5022)) b!20833))

(assert (= (and d!12765 c!5021) b!20830))

(assert (= (and d!12765 (not c!5021)) b!20831))

(declare-fun m!23067 () Bool)

(assert (=> d!12765 m!23067))

(assert (=> d!12765 m!22863))

(declare-fun m!23069 () Bool)

(assert (=> b!20833 m!23069))

(declare-fun m!23071 () Bool)

(assert (=> b!20833 m!23071))

(assert (=> b!20833 m!23069))

(assert (=> b!20833 m!23071))

(declare-fun m!23073 () Bool)

(assert (=> b!20833 m!23073))

(assert (=> b!20601 d!12765))

(declare-fun d!12767 () Bool)

(declare-fun res!9007 () Bool)

(declare-fun e!10922 () Bool)

(assert (=> d!12767 (=> res!9007 e!10922)))

(assert (=> d!12767 (= res!9007 (not (is-CC!31 (left!676 (left!676 xs!604)))))))

(assert (=> d!12767 (= (concInv!30 (left!676 (left!676 xs!604))) e!10922)))

(declare-fun b!20837 () Bool)

(declare-fun e!10923 () Bool)

(assert (=> b!20837 (= e!10923 (concInv!30 (right!679 (left!676 (left!676 xs!604)))))))

(declare-fun b!20836 () Bool)

(declare-fun res!9009 () Bool)

(assert (=> b!20836 (=> (not res!9009) (not e!10923))))

(assert (=> b!20836 (= res!9009 (concInv!30 (left!676 (left!676 (left!676 xs!604)))))))

(declare-fun b!20834 () Bool)

(assert (=> b!20834 (= e!10922 e!10923)))

(declare-fun res!9010 () Bool)

(assert (=> b!20834 (=> (not res!9010) (not e!10923))))

(assert (=> b!20834 (= res!9010 (not (isEmpty!294 (left!676 (left!676 (left!676 xs!604))))))))

(declare-fun b!20835 () Bool)

(declare-fun res!9008 () Bool)

(assert (=> b!20835 (=> (not res!9008) (not e!10923))))

(assert (=> b!20835 (= res!9008 (not (isEmpty!294 (right!679 (left!676 (left!676 xs!604))))))))

(assert (= (and d!12767 (not res!9007)) b!20834))

(assert (= (and b!20834 res!9010) b!20835))

(assert (= (and b!20835 res!9008) b!20836))

(assert (= (and b!20836 res!9009) b!20837))

(declare-fun m!23075 () Bool)

(assert (=> b!20837 m!23075))

(declare-fun m!23077 () Bool)

(assert (=> b!20836 m!23077))

(declare-fun m!23079 () Bool)

(assert (=> b!20834 m!23079))

(declare-fun m!23081 () Bool)

(assert (=> b!20835 m!23081))

(assert (=> b!20651 d!12767))

(declare-fun d!12769 () Bool)

(declare-fun e!10925 () Bool)

(assert (=> d!12769 e!10925))

(declare-fun res!9011 () Bool)

(assert (=> d!12769 (=> (not res!9011) (not e!10925))))

(declare-fun lt!3168 () List!337)

(assert (=> d!12769 (= res!9011 (= (content!58 lt!3168) (union (content!58 (toList!97 (left!676 (right!679 res!5606)))) (content!58 (toList!97 (right!679 (right!679 res!5606)))))))))

(declare-fun e!10924 () List!337)

(assert (=> d!12769 (= lt!3168 e!10924)))

(declare-fun c!5023 () Bool)

(assert (=> d!12769 (= c!5023 (is-Nil!332 (toList!97 (left!676 (right!679 res!5606)))))))

(assert (=> d!12769 (= (++!20 (toList!97 (left!676 (right!679 res!5606))) (toList!97 (right!679 (right!679 res!5606)))) lt!3168)))

(declare-fun b!20839 () Bool)

(assert (=> b!20839 (= e!10924 (Cons!331 (h!245 (toList!97 (left!676 (right!679 res!5606)))) (++!20 (t!4332 (toList!97 (left!676 (right!679 res!5606)))) (toList!97 (right!679 (right!679 res!5606))))))))

(declare-fun b!20840 () Bool)

(declare-fun res!9012 () Bool)

(assert (=> b!20840 (=> (not res!9012) (not e!10925))))

(assert (=> b!20840 (= res!9012 (= (size!224 lt!3168) (+ (size!224 (toList!97 (left!676 (right!679 res!5606)))) (size!224 (toList!97 (right!679 (right!679 res!5606)))))))))

(declare-fun b!20841 () Bool)

(assert (=> b!20841 (= e!10925 (or (not (= (toList!97 (right!679 (right!679 res!5606))) Nil!332)) (= lt!3168 (toList!97 (left!676 (right!679 res!5606))))))))

(declare-fun b!20838 () Bool)

(assert (=> b!20838 (= e!10924 (toList!97 (right!679 (right!679 res!5606))))))

(assert (= (and d!12769 c!5023) b!20838))

(assert (= (and d!12769 (not c!5023)) b!20839))

(assert (= (and d!12769 res!9011) b!20840))

(assert (= (and b!20840 res!9012) b!20841))

(declare-fun m!23083 () Bool)

(assert (=> d!12769 m!23083))

(assert (=> d!12769 m!22719))

(declare-fun m!23085 () Bool)

(assert (=> d!12769 m!23085))

(assert (=> d!12769 m!22721))

(declare-fun m!23087 () Bool)

(assert (=> d!12769 m!23087))

(assert (=> b!20839 m!22721))

(declare-fun m!23089 () Bool)

(assert (=> b!20839 m!23089))

(declare-fun m!23091 () Bool)

(assert (=> b!20840 m!23091))

(assert (=> b!20840 m!22719))

(declare-fun m!23093 () Bool)

(assert (=> b!20840 m!23093))

(assert (=> b!20840 m!22721))

(declare-fun m!23095 () Bool)

(assert (=> b!20840 m!23095))

(assert (=> b!20605 d!12769))

(declare-fun b!20843 () Bool)

(declare-fun e!10926 () List!337)

(declare-fun e!10927 () List!337)

(assert (=> b!20843 (= e!10926 e!10927)))

(declare-fun c!5025 () Bool)

(assert (=> b!20843 (= c!5025 (is-Single!31 (left!676 (right!679 res!5606))))))

(declare-fun d!12771 () Bool)

(declare-fun lt!3169 () List!337)

(assert (=> d!12771 (= (size!224 lt!3169) (size!223 (left!676 (right!679 res!5606))))))

(assert (=> d!12771 (= lt!3169 e!10926)))

(declare-fun c!5024 () Bool)

(assert (=> d!12771 (= c!5024 (is-Empty!42 (left!676 (right!679 res!5606))))))

(assert (=> d!12771 (= (toList!97 (left!676 (right!679 res!5606))) lt!3169)))

(declare-fun b!20842 () Bool)

(assert (=> b!20842 (= e!10926 Nil!332)))

(declare-fun b!20845 () Bool)

(assert (=> b!20845 (= e!10927 (++!20 (toList!97 (left!676 (left!676 (right!679 res!5606)))) (toList!97 (right!679 (left!676 (right!679 res!5606))))))))

(declare-fun b!20844 () Bool)

(assert (=> b!20844 (= e!10927 (Cons!331 (x!8791 (left!676 (right!679 res!5606))) Nil!332))))

(assert (= (and b!20843 c!5025) b!20844))

(assert (= (and b!20843 (not c!5025)) b!20845))

(assert (= (and d!12771 c!5024) b!20842))

(assert (= (and d!12771 (not c!5024)) b!20843))

(declare-fun m!23097 () Bool)

(assert (=> d!12771 m!23097))

(declare-fun m!23099 () Bool)

(assert (=> d!12771 m!23099))

(declare-fun m!23101 () Bool)

(assert (=> b!20845 m!23101))

(declare-fun m!23103 () Bool)

(assert (=> b!20845 m!23103))

(assert (=> b!20845 m!23101))

(assert (=> b!20845 m!23103))

(declare-fun m!23105 () Bool)

(assert (=> b!20845 m!23105))

(assert (=> b!20605 d!12771))

(declare-fun b!20847 () Bool)

(declare-fun e!10928 () List!337)

(declare-fun e!10929 () List!337)

(assert (=> b!20847 (= e!10928 e!10929)))

(declare-fun c!5027 () Bool)

(assert (=> b!20847 (= c!5027 (is-Single!31 (right!679 (right!679 res!5606))))))

(declare-fun d!12773 () Bool)

(declare-fun lt!3170 () List!337)

(assert (=> d!12773 (= (size!224 lt!3170) (size!223 (right!679 (right!679 res!5606))))))

(assert (=> d!12773 (= lt!3170 e!10928)))

(declare-fun c!5026 () Bool)

(assert (=> d!12773 (= c!5026 (is-Empty!42 (right!679 (right!679 res!5606))))))

(assert (=> d!12773 (= (toList!97 (right!679 (right!679 res!5606))) lt!3170)))

(declare-fun b!20846 () Bool)

(assert (=> b!20846 (= e!10928 Nil!332)))

(declare-fun b!20849 () Bool)

(assert (=> b!20849 (= e!10929 (++!20 (toList!97 (left!676 (right!679 (right!679 res!5606)))) (toList!97 (right!679 (right!679 (right!679 res!5606))))))))

(declare-fun b!20848 () Bool)

(assert (=> b!20848 (= e!10929 (Cons!331 (x!8791 (right!679 (right!679 res!5606))) Nil!332))))

(assert (= (and b!20847 c!5027) b!20848))

(assert (= (and b!20847 (not c!5027)) b!20849))

(assert (= (and d!12773 c!5026) b!20846))

(assert (= (and d!12773 (not c!5026)) b!20847))

(declare-fun m!23107 () Bool)

(assert (=> d!12773 m!23107))

(declare-fun m!23109 () Bool)

(assert (=> d!12773 m!23109))

(declare-fun m!23111 () Bool)

(assert (=> b!20849 m!23111))

(declare-fun m!23113 () Bool)

(assert (=> b!20849 m!23113))

(assert (=> b!20849 m!23111))

(assert (=> b!20849 m!23113))

(declare-fun m!23115 () Bool)

(assert (=> b!20849 m!23115))

(assert (=> b!20605 d!12773))

(declare-fun d!12775 () Bool)

(assert (=> d!12775 (= (isEmpty!294 (right!679 (right!679 res!5606))) (= (right!679 (right!679 res!5606)) Empty!42))))

(assert (=> b!20573 d!12775))

(declare-fun d!12777 () Bool)

(assert (=> d!12777 (= (isEmpty!294 (right!679 (left!676 res!5606))) (= (right!679 (left!676 res!5606)) Empty!42))))

(assert (=> b!20561 d!12777))

(declare-fun d!12779 () Bool)

(assert (=> d!12779 (= (isEmpty!294 (left!676 (right!679 res!5606))) (= (left!676 (right!679 res!5606)) Empty!42))))

(assert (=> b!20572 d!12779))

(declare-fun d!12781 () Bool)

(declare-fun res!9013 () Bool)

(declare-fun e!10930 () Bool)

(assert (=> d!12781 (=> res!9013 e!10930)))

(assert (=> d!12781 (= res!9013 (not (is-CC!31 (left!676 (left!676 res!5606)))))))

(assert (=> d!12781 (= (concInv!30 (left!676 (left!676 res!5606))) e!10930)))

(declare-fun b!20853 () Bool)

(declare-fun e!10931 () Bool)

(assert (=> b!20853 (= e!10931 (concInv!30 (right!679 (left!676 (left!676 res!5606)))))))

(declare-fun b!20852 () Bool)

(declare-fun res!9015 () Bool)

(assert (=> b!20852 (=> (not res!9015) (not e!10931))))

(assert (=> b!20852 (= res!9015 (concInv!30 (left!676 (left!676 (left!676 res!5606)))))))

(declare-fun b!20850 () Bool)

(assert (=> b!20850 (= e!10930 e!10931)))

(declare-fun res!9016 () Bool)

(assert (=> b!20850 (=> (not res!9016) (not e!10931))))

(assert (=> b!20850 (= res!9016 (not (isEmpty!294 (left!676 (left!676 (left!676 res!5606))))))))

(declare-fun b!20851 () Bool)

(declare-fun res!9014 () Bool)

(assert (=> b!20851 (=> (not res!9014) (not e!10931))))

(assert (=> b!20851 (= res!9014 (not (isEmpty!294 (right!679 (left!676 (left!676 res!5606))))))))

(assert (= (and d!12781 (not res!9013)) b!20850))

(assert (= (and b!20850 res!9016) b!20851))

(assert (= (and b!20851 res!9014) b!20852))

(assert (= (and b!20852 res!9015) b!20853))

(declare-fun m!23117 () Bool)

(assert (=> b!20853 m!23117))

(declare-fun m!23119 () Bool)

(assert (=> b!20852 m!23119))

(declare-fun m!23121 () Bool)

(assert (=> b!20850 m!23121))

(declare-fun m!23123 () Bool)

(assert (=> b!20851 m!23123))

(assert (=> b!20562 d!12781))

(declare-fun d!12783 () Bool)

(declare-fun res!9017 () Bool)

(declare-fun e!10932 () Bool)

(assert (=> d!12783 (=> res!9017 e!10932)))

(assert (=> d!12783 (= res!9017 (not (is-CC!31 (right!679 (right!679 xs!604)))))))

(assert (=> d!12783 (= (balanced!31 (right!679 (right!679 xs!604))) e!10932)))

(declare-fun b!20854 () Bool)

(declare-fun e!10933 () Bool)

(assert (=> b!20854 (= e!10932 e!10933)))

(declare-fun res!9019 () Bool)

(assert (=> b!20854 (=> (not res!9019) (not e!10933))))

(assert (=> b!20854 (= res!9019 (>= (- (level!29 (left!676 (right!679 (right!679 xs!604)))) (level!29 (right!679 (right!679 (right!679 xs!604))))) (- 1)))))

(declare-fun b!20856 () Bool)

(declare-fun res!9018 () Bool)

(assert (=> b!20856 (=> (not res!9018) (not e!10933))))

(assert (=> b!20856 (= res!9018 (balanced!31 (left!676 (right!679 (right!679 xs!604)))))))

(declare-fun b!20855 () Bool)

(declare-fun res!9020 () Bool)

(assert (=> b!20855 (=> (not res!9020) (not e!10933))))

(assert (=> b!20855 (= res!9020 (<= (- (level!29 (left!676 (right!679 (right!679 xs!604)))) (level!29 (right!679 (right!679 (right!679 xs!604))))) 1))))

(declare-fun b!20857 () Bool)

(assert (=> b!20857 (= e!10933 (balanced!31 (right!679 (right!679 (right!679 xs!604)))))))

(assert (= (and d!12783 (not res!9017)) b!20854))

(assert (= (and b!20854 res!9019) b!20855))

(assert (= (and b!20855 res!9020) b!20856))

(assert (= (and b!20856 res!9018) b!20857))

(assert (=> b!20854 m!22815))

(assert (=> b!20854 m!22813))

(declare-fun m!23125 () Bool)

(assert (=> b!20856 m!23125))

(assert (=> b!20855 m!22815))

(assert (=> b!20855 m!22813))

(declare-fun m!23127 () Bool)

(assert (=> b!20857 m!23127))

(assert (=> b!20551 d!12783))

(declare-fun d!12785 () Bool)

(declare-fun res!9021 () Bool)

(declare-fun e!10934 () Bool)

(assert (=> d!12785 (=> res!9021 e!10934)))

(assert (=> d!12785 (= res!9021 (not (is-CC!31 (right!679 (left!676 res!5606)))))))

(assert (=> d!12785 (= (balanced!31 (right!679 (left!676 res!5606))) e!10934)))

(declare-fun b!20858 () Bool)

(declare-fun e!10935 () Bool)

(assert (=> b!20858 (= e!10934 e!10935)))

(declare-fun res!9023 () Bool)

(assert (=> b!20858 (=> (not res!9023) (not e!10935))))

(assert (=> b!20858 (= res!9023 (>= (- (level!29 (left!676 (right!679 (left!676 res!5606)))) (level!29 (right!679 (right!679 (left!676 res!5606))))) (- 1)))))

(declare-fun b!20860 () Bool)

(declare-fun res!9022 () Bool)

(assert (=> b!20860 (=> (not res!9022) (not e!10935))))

(assert (=> b!20860 (= res!9022 (balanced!31 (left!676 (right!679 (left!676 res!5606)))))))

(declare-fun b!20859 () Bool)

(declare-fun res!9024 () Bool)

(assert (=> b!20859 (=> (not res!9024) (not e!10935))))

(assert (=> b!20859 (= res!9024 (<= (- (level!29 (left!676 (right!679 (left!676 res!5606)))) (level!29 (right!679 (right!679 (left!676 res!5606))))) 1))))

(declare-fun b!20861 () Bool)

(assert (=> b!20861 (= e!10935 (balanced!31 (right!679 (right!679 (left!676 res!5606)))))))

(assert (= (and d!12785 (not res!9021)) b!20858))

(assert (= (and b!20858 res!9023) b!20859))

(assert (= (and b!20859 res!9024) b!20860))

(assert (= (and b!20860 res!9022) b!20861))

(assert (=> b!20858 m!22953))

(assert (=> b!20858 m!22951))

(declare-fun m!23129 () Bool)

(assert (=> b!20860 m!23129))

(assert (=> b!20859 m!22953))

(assert (=> b!20859 m!22951))

(declare-fun m!23131 () Bool)

(assert (=> b!20861 m!23131))

(assert (=> b!20609 d!12785))

(declare-fun d!12787 () Bool)

(declare-fun c!5028 () Bool)

(assert (=> d!12787 (= c!5028 (is-Nil!332 lt!3113))))

(declare-fun e!10936 () (Set T!1755))

(assert (=> d!12787 (= (content!58 lt!3113) e!10936)))

(declare-fun b!20862 () Bool)

(assert (=> b!20862 (= e!10936 (as emptyset (Set T!1755)))))

(declare-fun b!20863 () Bool)

(assert (=> b!20863 (= e!10936 (union (insert (h!245 lt!3113) (as emptyset (Set T!1755))) (content!58 (t!4332 lt!3113))))))

(assert (= (and d!12787 c!5028) b!20862))

(assert (= (and d!12787 (not c!5028)) b!20863))

(declare-fun m!23133 () Bool)

(assert (=> b!20863 m!23133))

(declare-fun m!23135 () Bool)

(assert (=> b!20863 m!23135))

(assert (=> d!12633 d!12787))

(declare-fun d!12789 () Bool)

(declare-fun c!5029 () Bool)

(assert (=> d!12789 (= c!5029 (is-Nil!332 (toList!97 (left!676 res!5606))))))

(declare-fun e!10937 () (Set T!1755))

(assert (=> d!12789 (= (content!58 (toList!97 (left!676 res!5606))) e!10937)))

(declare-fun b!20864 () Bool)

(assert (=> b!20864 (= e!10937 (as emptyset (Set T!1755)))))

(declare-fun b!20865 () Bool)

(assert (=> b!20865 (= e!10937 (union (insert (h!245 (toList!97 (left!676 res!5606))) (as emptyset (Set T!1755))) (content!58 (t!4332 (toList!97 (left!676 res!5606))))))))

(assert (= (and d!12789 c!5029) b!20864))

(assert (= (and d!12789 (not c!5029)) b!20865))

(declare-fun m!23137 () Bool)

(assert (=> b!20865 m!23137))

(assert (=> b!20865 m!22881))

(assert (=> d!12633 d!12789))

(declare-fun d!12791 () Bool)

(declare-fun c!5030 () Bool)

(assert (=> d!12791 (= c!5030 (is-Nil!332 (toList!97 (right!679 res!5606))))))

(declare-fun e!10938 () (Set T!1755))

(assert (=> d!12791 (= (content!58 (toList!97 (right!679 res!5606))) e!10938)))

(declare-fun b!20866 () Bool)

(assert (=> b!20866 (= e!10938 (as emptyset (Set T!1755)))))

(declare-fun b!20867 () Bool)

(assert (=> b!20867 (= e!10938 (union (insert (h!245 (toList!97 (right!679 res!5606))) (as emptyset (Set T!1755))) (content!58 (t!4332 (toList!97 (right!679 res!5606))))))))

(assert (= (and d!12791 c!5030) b!20866))

(assert (= (and d!12791 (not c!5030)) b!20867))

(declare-fun m!23139 () Bool)

(assert (=> b!20867 m!23139))

(declare-fun m!23141 () Bool)

(assert (=> b!20867 m!23141))

(assert (=> d!12633 d!12791))

(declare-fun d!12793 () Bool)

(assert (=> d!12793 (= (isEmpty!294 (left!676 (left!676 xs!604))) (= (left!676 (left!676 xs!604)) Empty!42))))

(assert (=> b!20649 d!12793))

(declare-fun e!10940 () List!337)

(declare-fun b!20871 () Bool)

(assert (=> b!20871 (= e!10940 (Cons!331 (h!245 (t!4332 (t!4332 (toList!97 xs!604)))) (insertAtIndex!10 (t!4332 (t!4332 (t!4332 (toList!97 xs!604)))) (- (- (- i!298 1) 1) 1) y!824)))))

(declare-fun b!20868 () Bool)

(declare-fun e!10939 () List!337)

(assert (=> b!20868 (= e!10939 (Cons!331 y!824 Nil!332))))

(declare-fun d!12795 () Bool)

(declare-fun c!5031 () Bool)

(assert (=> d!12795 (= c!5031 (is-Nil!332 (t!4332 (t!4332 (toList!97 xs!604)))))))

(assert (=> d!12795 (= (insertAtIndex!10 (t!4332 (t!4332 (toList!97 xs!604))) (- (- i!298 1) 1) y!824) e!10939)))

(declare-fun b!20869 () Bool)

(assert (=> b!20869 (= e!10939 e!10940)))

(declare-fun c!5032 () Bool)

(assert (=> b!20869 (= c!5032 (= (- (- i!298 1) 1) 0))))

(declare-fun b!20870 () Bool)

(assert (=> b!20870 (= e!10940 (Cons!331 y!824 (t!4332 (t!4332 (toList!97 xs!604)))))))

(assert (= (and b!20869 c!5032) b!20870))

(assert (= (and b!20869 (not c!5032)) b!20871))

(assert (= (and d!12795 c!5031) b!20868))

(assert (= (and d!12795 (not c!5031)) b!20869))

(declare-fun m!23143 () Bool)

(assert (=> b!20871 m!23143))

(assert (=> b!20567 d!12795))

(declare-fun d!12797 () Bool)

(declare-fun res!9025 () Bool)

(declare-fun e!10941 () Bool)

(assert (=> d!12797 (=> res!9025 e!10941)))

(assert (=> d!12797 (= res!9025 (not (is-CC!31 (left!676 (left!676 res!5606)))))))

(assert (=> d!12797 (= (balanced!31 (left!676 (left!676 res!5606))) e!10941)))

(declare-fun b!20872 () Bool)

(declare-fun e!10942 () Bool)

(assert (=> b!20872 (= e!10941 e!10942)))

(declare-fun res!9027 () Bool)

(assert (=> b!20872 (=> (not res!9027) (not e!10942))))

(assert (=> b!20872 (= res!9027 (>= (- (level!29 (left!676 (left!676 (left!676 res!5606)))) (level!29 (right!679 (left!676 (left!676 res!5606))))) (- 1)))))

(declare-fun b!20874 () Bool)

(declare-fun res!9026 () Bool)

(assert (=> b!20874 (=> (not res!9026) (not e!10942))))

(assert (=> b!20874 (= res!9026 (balanced!31 (left!676 (left!676 (left!676 res!5606)))))))

(declare-fun b!20873 () Bool)

(declare-fun res!9028 () Bool)

(assert (=> b!20873 (=> (not res!9028) (not e!10942))))

(assert (=> b!20873 (= res!9028 (<= (- (level!29 (left!676 (left!676 (left!676 res!5606)))) (level!29 (right!679 (left!676 (left!676 res!5606))))) 1))))

(declare-fun b!20875 () Bool)

(assert (=> b!20875 (= e!10942 (balanced!31 (right!679 (left!676 (left!676 res!5606)))))))

(assert (= (and d!12797 (not res!9025)) b!20872))

(assert (= (and b!20872 res!9027) b!20873))

(assert (= (and b!20873 res!9028) b!20874))

(assert (= (and b!20874 res!9026) b!20875))

(assert (=> b!20872 m!22949))

(assert (=> b!20872 m!22947))

(declare-fun m!23145 () Bool)

(assert (=> b!20874 m!23145))

(assert (=> b!20873 m!22949))

(assert (=> b!20873 m!22947))

(declare-fun m!23147 () Bool)

(assert (=> b!20875 m!23147))

(assert (=> b!20608 d!12797))

(declare-fun d!12799 () Bool)

(declare-fun lt!3171 () Int)

(assert (=> d!12799 (>= lt!3171 0)))

(declare-fun e!10943 () Int)

(assert (=> d!12799 (= lt!3171 e!10943)))

(declare-fun c!5033 () Bool)

(assert (=> d!12799 (= c!5033 (is-Nil!332 lt!3113))))

(assert (=> d!12799 (= (size!224 lt!3113) lt!3171)))

(declare-fun b!20876 () Bool)

(assert (=> b!20876 (= e!10943 0)))

(declare-fun b!20877 () Bool)

(assert (=> b!20877 (= e!10943 (+ 1 (size!224 (t!4332 lt!3113))))))

(assert (= (and d!12799 c!5033) b!20876))

(assert (= (and d!12799 (not c!5033)) b!20877))

(declare-fun m!23149 () Bool)

(assert (=> b!20877 m!23149))

(assert (=> b!20596 d!12799))

(declare-fun d!12801 () Bool)

(declare-fun lt!3172 () Int)

(assert (=> d!12801 (>= lt!3172 0)))

(declare-fun e!10944 () Int)

(assert (=> d!12801 (= lt!3172 e!10944)))

(declare-fun c!5034 () Bool)

(assert (=> d!12801 (= c!5034 (is-Nil!332 (toList!97 (left!676 res!5606))))))

(assert (=> d!12801 (= (size!224 (toList!97 (left!676 res!5606))) lt!3172)))

(declare-fun b!20878 () Bool)

(assert (=> b!20878 (= e!10944 0)))

(declare-fun b!20879 () Bool)

(assert (=> b!20879 (= e!10944 (+ 1 (size!224 (t!4332 (toList!97 (left!676 res!5606))))))))

(assert (= (and d!12801 c!5034) b!20878))

(assert (= (and d!12801 (not c!5034)) b!20879))

(assert (=> b!20879 m!22887))

(assert (=> b!20596 d!12801))

(declare-fun d!12803 () Bool)

(declare-fun lt!3173 () Int)

(assert (=> d!12803 (>= lt!3173 0)))

(declare-fun e!10945 () Int)

(assert (=> d!12803 (= lt!3173 e!10945)))

(declare-fun c!5035 () Bool)

(assert (=> d!12803 (= c!5035 (is-Nil!332 (toList!97 (right!679 res!5606))))))

(assert (=> d!12803 (= (size!224 (toList!97 (right!679 res!5606))) lt!3173)))

(declare-fun b!20880 () Bool)

(assert (=> b!20880 (= e!10945 0)))

(declare-fun b!20881 () Bool)

(assert (=> b!20881 (= e!10945 (+ 1 (size!224 (t!4332 (toList!97 (right!679 res!5606))))))))

(assert (= (and d!12803 c!5035) b!20880))

(assert (= (and d!12803 (not c!5035)) b!20881))

(declare-fun m!23151 () Bool)

(assert (=> b!20881 m!23151))

(assert (=> b!20596 d!12803))

(declare-fun d!12805 () Bool)

(declare-fun lt!3174 () Int)

(assert (=> d!12805 (>= lt!3174 0)))

(declare-fun e!10946 () Int)

(assert (=> d!12805 (= lt!3174 e!10946)))

(declare-fun c!5036 () Bool)

(assert (=> d!12805 (= c!5036 (is-Nil!332 (t!4332 lt!3091)))))

(assert (=> d!12805 (= (size!224 (t!4332 lt!3091)) lt!3174)))

(declare-fun b!20882 () Bool)

(assert (=> b!20882 (= e!10946 0)))

(declare-fun b!20883 () Bool)

(assert (=> b!20883 (= e!10946 (+ 1 (size!224 (t!4332 (t!4332 lt!3091)))))))

(assert (= (and d!12805 c!5036) b!20882))

(assert (= (and d!12805 (not c!5036)) b!20883))

(declare-fun m!23153 () Bool)

(assert (=> b!20883 m!23153))

(assert (=> b!20654 d!12805))

(assert (=> b!20585 d!12697))

(declare-fun b!20884 () Bool)

(declare-fun e!10948 () Int)

(assert (=> b!20884 (= e!10948 0)))

(declare-fun b!20887 () Bool)

(declare-fun e!10947 () Int)

(assert (=> b!20887 (= e!10947 (+ (size!223 (left!676 (right!679 res!5606))) (size!223 (right!679 (right!679 res!5606)))))))

(declare-fun b!20886 () Bool)

(assert (=> b!20886 (= e!10947 1)))

(declare-fun b!20885 () Bool)

(assert (=> b!20885 (= e!10948 e!10947)))

(declare-fun c!5038 () Bool)

(assert (=> b!20885 (= c!5038 (is-Single!31 (right!679 res!5606)))))

(declare-fun d!12807 () Bool)

(declare-fun lt!3175 () Int)

(assert (=> d!12807 (>= lt!3175 0)))

(assert (=> d!12807 (= lt!3175 e!10948)))

(declare-fun c!5037 () Bool)

(assert (=> d!12807 (= c!5037 (is-Empty!42 (right!679 res!5606)))))

(assert (=> d!12807 (= (size!223 (right!679 res!5606)) lt!3175)))

(assert (= (and b!20885 c!5038) b!20886))

(assert (= (and b!20885 (not c!5038)) b!20887))

(assert (= (and d!12807 c!5037) b!20884))

(assert (= (and d!12807 (not c!5037)) b!20885))

(assert (=> b!20887 m!23099))

(assert (=> b!20887 m!23109))

(assert (=> b!20585 d!12807))

(assert (=> b!20559 d!12719))

(assert (=> b!20559 d!12717))

(declare-fun d!12809 () Bool)

(declare-fun lt!3176 () Int)

(assert (=> d!12809 (>= lt!3176 0)))

(declare-fun e!10949 () Int)

(assert (=> d!12809 (= lt!3176 e!10949)))

(declare-fun c!5039 () Bool)

(assert (=> d!12809 (= c!5039 (is-Nil!332 lt!3121))))

(assert (=> d!12809 (= (size!224 lt!3121) lt!3176)))

(declare-fun b!20888 () Bool)

(assert (=> b!20888 (= e!10949 0)))

(declare-fun b!20889 () Bool)

(assert (=> b!20889 (= e!10949 (+ 1 (size!224 (t!4332 lt!3121))))))

(assert (= (and d!12809 c!5039) b!20888))

(assert (= (and d!12809 (not c!5039)) b!20889))

(declare-fun m!23155 () Bool)

(assert (=> b!20889 m!23155))

(assert (=> b!20657 d!12809))

(assert (=> b!20657 d!12689))

(assert (=> b!20657 d!12753))

(declare-fun d!12811 () Bool)

(declare-fun lt!3177 () Int)

(assert (=> d!12811 (>= lt!3177 0)))

(declare-fun e!10950 () Int)

(assert (=> d!12811 (= lt!3177 e!10950)))

(declare-fun c!5040 () Bool)

(assert (=> d!12811 (= c!5040 (is-Nil!332 lt!3115))))

(assert (=> d!12811 (= (size!224 lt!3115) lt!3177)))

(declare-fun b!20890 () Bool)

(assert (=> b!20890 (= e!10950 0)))

(declare-fun b!20891 () Bool)

(assert (=> b!20891 (= e!10950 (+ 1 (size!224 (t!4332 lt!3115))))))

(assert (= (and d!12811 c!5040) b!20890))

(assert (= (and d!12811 (not c!5040)) b!20891))

(declare-fun m!23157 () Bool)

(assert (=> b!20891 m!23157))

(assert (=> d!12637 d!12811))

(assert (=> d!12637 d!12807))

(declare-fun b!20892 () Bool)

(declare-fun e!10952 () Int)

(assert (=> b!20892 (= e!10952 0)))

(declare-fun b!20895 () Bool)

(declare-fun e!10951 () Int)

(assert (=> b!20895 (= e!10951 (+ (size!223 (left!676 (left!676 (right!679 xs!604)))) (size!223 (right!679 (left!676 (right!679 xs!604))))))))

(declare-fun b!20894 () Bool)

(assert (=> b!20894 (= e!10951 1)))

(declare-fun b!20893 () Bool)

(assert (=> b!20893 (= e!10952 e!10951)))

(declare-fun c!5042 () Bool)

(assert (=> b!20893 (= c!5042 (is-Single!31 (left!676 (right!679 xs!604))))))

(declare-fun d!12813 () Bool)

(declare-fun lt!3178 () Int)

(assert (=> d!12813 (>= lt!3178 0)))

(assert (=> d!12813 (= lt!3178 e!10952)))

(declare-fun c!5041 () Bool)

(assert (=> d!12813 (= c!5041 (is-Empty!42 (left!676 (right!679 xs!604))))))

(assert (=> d!12813 (= (size!223 (left!676 (right!679 xs!604))) lt!3178)))

(assert (= (and b!20893 c!5042) b!20894))

(assert (= (and b!20893 (not c!5042)) b!20895))

(assert (= (and d!12813 c!5041) b!20892))

(assert (= (and d!12813 (not c!5041)) b!20893))

(declare-fun m!23159 () Bool)

(assert (=> b!20895 m!23159))

(declare-fun m!23161 () Bool)

(assert (=> b!20895 m!23161))

(assert (=> b!20625 d!12813))

(declare-fun b!20896 () Bool)

(declare-fun e!10954 () Int)

(assert (=> b!20896 (= e!10954 0)))

(declare-fun b!20899 () Bool)

(declare-fun e!10953 () Int)

(assert (=> b!20899 (= e!10953 (+ (size!223 (left!676 (right!679 (right!679 xs!604)))) (size!223 (right!679 (right!679 (right!679 xs!604))))))))

(declare-fun b!20898 () Bool)

(assert (=> b!20898 (= e!10953 1)))

(declare-fun b!20897 () Bool)

(assert (=> b!20897 (= e!10954 e!10953)))

(declare-fun c!5044 () Bool)

(assert (=> b!20897 (= c!5044 (is-Single!31 (right!679 (right!679 xs!604))))))

(declare-fun d!12815 () Bool)

(declare-fun lt!3179 () Int)

(assert (=> d!12815 (>= lt!3179 0)))

(assert (=> d!12815 (= lt!3179 e!10954)))

(declare-fun c!5043 () Bool)

(assert (=> d!12815 (= c!5043 (is-Empty!42 (right!679 (right!679 xs!604))))))

(assert (=> d!12815 (= (size!223 (right!679 (right!679 xs!604))) lt!3179)))

(assert (= (and b!20897 c!5044) b!20898))

(assert (= (and b!20897 (not c!5044)) b!20899))

(assert (= (and d!12815 c!5043) b!20896))

(assert (= (and d!12815 (not c!5043)) b!20897))

(declare-fun m!23163 () Bool)

(assert (=> b!20899 m!23163))

(declare-fun m!23165 () Bool)

(assert (=> b!20899 m!23165))

(assert (=> b!20625 d!12815))

(declare-fun d!12817 () Bool)

(declare-fun res!9029 () Bool)

(declare-fun e!10955 () Bool)

(assert (=> d!12817 (=> res!9029 e!10955)))

(assert (=> d!12817 (= res!9029 (not (is-CC!31 (left!676 (right!679 res!5606)))))))

(assert (=> d!12817 (= (balanced!31 (left!676 (right!679 res!5606))) e!10955)))

(declare-fun b!20900 () Bool)

(declare-fun e!10956 () Bool)

(assert (=> b!20900 (= e!10955 e!10956)))

(declare-fun res!9031 () Bool)

(assert (=> b!20900 (=> (not res!9031) (not e!10956))))

(assert (=> b!20900 (= res!9031 (>= (- (level!29 (left!676 (left!676 (right!679 res!5606)))) (level!29 (right!679 (left!676 (right!679 res!5606))))) (- 1)))))

(declare-fun b!20902 () Bool)

(declare-fun res!9030 () Bool)

(assert (=> b!20902 (=> (not res!9030) (not e!10956))))

(assert (=> b!20902 (= res!9030 (balanced!31 (left!676 (left!676 (right!679 res!5606)))))))

(declare-fun b!20901 () Bool)

(declare-fun res!9032 () Bool)

(assert (=> b!20901 (=> (not res!9032) (not e!10956))))

(assert (=> b!20901 (= res!9032 (<= (- (level!29 (left!676 (left!676 (right!679 res!5606)))) (level!29 (right!679 (left!676 (right!679 res!5606))))) 1))))

(declare-fun b!20903 () Bool)

(assert (=> b!20903 (= e!10956 (balanced!31 (right!679 (left!676 (right!679 res!5606)))))))

(assert (= (and d!12817 (not res!9029)) b!20900))

(assert (= (and b!20900 res!9031) b!20901))

(assert (= (and b!20901 res!9032) b!20902))

(assert (= (and b!20902 res!9030) b!20903))

(assert (=> b!20900 m!22867))

(assert (=> b!20900 m!22865))

(declare-fun m!23167 () Bool)

(assert (=> b!20902 m!23167))

(assert (=> b!20901 m!22867))

(assert (=> b!20901 m!22865))

(declare-fun m!23169 () Bool)

(assert (=> b!20903 m!23169))

(assert (=> b!20554 d!12817))

(declare-fun d!12819 () Bool)

(assert (=> d!12819 (= (isEmpty!294 (right!679 (right!679 xs!604))) (= (right!679 (right!679 xs!604)) Empty!42))))

(assert (=> b!20611 d!12819))

(assert (=> b!20569 d!12735))

(assert (=> b!20569 d!12733))

(declare-fun b!20904 () Bool)

(declare-fun e!10957 () Bool)

(declare-fun tp!4709 () Bool)

(declare-fun tp!4710 () Bool)

(assert (=> b!20904 (= e!10957 (and tp!4709 tp!4710))))

(declare-fun b!20905 () Bool)

(assert (=> b!20905 (= e!10957 tp_is_empty!99)))

(assert (=> b!20673 (= tp!4707 e!10957)))

(assert (= (and b!20673 (is-CC!31 (left!676 (right!679 (left!676 res!5606))))) b!20904))

(assert (= (and b!20673 (is-Single!31 (left!676 (right!679 (left!676 res!5606))))) b!20905))

(declare-fun b!20906 () Bool)

(declare-fun e!10958 () Bool)

(declare-fun tp!4711 () Bool)

(declare-fun tp!4712 () Bool)

(assert (=> b!20906 (= e!10958 (and tp!4711 tp!4712))))

(declare-fun b!20907 () Bool)

(assert (=> b!20907 (= e!10958 tp_is_empty!99)))

(assert (=> b!20673 (= tp!4708 e!10958)))

(assert (= (and b!20673 (is-CC!31 (right!679 (right!679 (left!676 res!5606))))) b!20906))

(assert (= (and b!20673 (is-Single!31 (right!679 (right!679 (left!676 res!5606))))) b!20907))

(declare-fun b!20908 () Bool)

(declare-fun e!10959 () Bool)

(declare-fun tp!4713 () Bool)

(declare-fun tp!4714 () Bool)

(assert (=> b!20908 (= e!10959 (and tp!4713 tp!4714))))

(declare-fun b!20909 () Bool)

(assert (=> b!20909 (= e!10959 tp_is_empty!99)))

(assert (=> b!20671 (= tp!4705 e!10959)))

(assert (= (and b!20671 (is-CC!31 (left!676 (left!676 (left!676 res!5606))))) b!20908))

(assert (= (and b!20671 (is-Single!31 (left!676 (left!676 (left!676 res!5606))))) b!20909))

(declare-fun b!20910 () Bool)

(declare-fun e!10960 () Bool)

(declare-fun tp!4715 () Bool)

(declare-fun tp!4716 () Bool)

(assert (=> b!20910 (= e!10960 (and tp!4715 tp!4716))))

(declare-fun b!20911 () Bool)

(assert (=> b!20911 (= e!10960 tp_is_empty!99)))

(assert (=> b!20671 (= tp!4706 e!10960)))

(assert (= (and b!20671 (is-CC!31 (right!679 (left!676 (left!676 res!5606))))) b!20910))

(assert (= (and b!20671 (is-Single!31 (right!679 (left!676 (left!676 res!5606))))) b!20911))

(declare-fun b!20912 () Bool)

(declare-fun e!10961 () Bool)

(declare-fun tp!4717 () Bool)

(declare-fun tp!4718 () Bool)

(assert (=> b!20912 (= e!10961 (and tp!4717 tp!4718))))

(declare-fun b!20913 () Bool)

(assert (=> b!20913 (= e!10961 tp_is_empty!99)))

(assert (=> b!20659 (= tp!4693 e!10961)))

(assert (= (and b!20659 (is-CC!31 (left!676 (left!676 (right!679 xs!604))))) b!20912))

(assert (= (and b!20659 (is-Single!31 (left!676 (left!676 (right!679 xs!604))))) b!20913))

(declare-fun b!20914 () Bool)

(declare-fun e!10962 () Bool)

(declare-fun tp!4719 () Bool)

(declare-fun tp!4720 () Bool)

(assert (=> b!20914 (= e!10962 (and tp!4719 tp!4720))))

(declare-fun b!20915 () Bool)

(assert (=> b!20915 (= e!10962 tp_is_empty!99)))

(assert (=> b!20659 (= tp!4694 e!10962)))

(assert (= (and b!20659 (is-CC!31 (right!679 (left!676 (right!679 xs!604))))) b!20914))

(assert (= (and b!20659 (is-Single!31 (right!679 (left!676 (right!679 xs!604))))) b!20915))

(declare-fun b!20916 () Bool)

(declare-fun e!10963 () Bool)

(declare-fun tp!4721 () Bool)

(declare-fun tp!4722 () Bool)

(assert (=> b!20916 (= e!10963 (and tp!4721 tp!4722))))

(declare-fun b!20917 () Bool)

(assert (=> b!20917 (= e!10963 tp_is_empty!99)))

(assert (=> b!20669 (= tp!4703 e!10963)))

(assert (= (and b!20669 (is-CC!31 (left!676 (right!679 (right!679 res!5606))))) b!20916))

(assert (= (and b!20669 (is-Single!31 (left!676 (right!679 (right!679 res!5606))))) b!20917))

(declare-fun b!20918 () Bool)

(declare-fun e!10964 () Bool)

(declare-fun tp!4723 () Bool)

(declare-fun tp!4724 () Bool)

(assert (=> b!20918 (= e!10964 (and tp!4723 tp!4724))))

(declare-fun b!20919 () Bool)

(assert (=> b!20919 (= e!10964 tp_is_empty!99)))

(assert (=> b!20669 (= tp!4704 e!10964)))

(assert (= (and b!20669 (is-CC!31 (right!679 (right!679 (right!679 res!5606))))) b!20918))

(assert (= (and b!20669 (is-Single!31 (right!679 (right!679 (right!679 res!5606))))) b!20919))

(declare-fun b!20920 () Bool)

(declare-fun e!10965 () Bool)

(declare-fun tp!4725 () Bool)

(declare-fun tp!4726 () Bool)

(assert (=> b!20920 (= e!10965 (and tp!4725 tp!4726))))

(declare-fun b!20921 () Bool)

(assert (=> b!20921 (= e!10965 tp_is_empty!99)))

(assert (=> b!20667 (= tp!4701 e!10965)))

(assert (= (and b!20667 (is-CC!31 (left!676 (left!676 (right!679 res!5606))))) b!20920))

(assert (= (and b!20667 (is-Single!31 (left!676 (left!676 (right!679 res!5606))))) b!20921))

(declare-fun b!20922 () Bool)

(declare-fun e!10966 () Bool)

(declare-fun tp!4727 () Bool)

(declare-fun tp!4728 () Bool)

(assert (=> b!20922 (= e!10966 (and tp!4727 tp!4728))))

(declare-fun b!20923 () Bool)

(assert (=> b!20923 (= e!10966 tp_is_empty!99)))

(assert (=> b!20667 (= tp!4702 e!10966)))

(assert (= (and b!20667 (is-CC!31 (right!679 (left!676 (right!679 res!5606))))) b!20922))

(assert (= (and b!20667 (is-Single!31 (right!679 (left!676 (right!679 res!5606))))) b!20923))

(declare-fun b!20924 () Bool)

(declare-fun e!10967 () Bool)

(declare-fun tp!4729 () Bool)

(declare-fun tp!4730 () Bool)

(assert (=> b!20924 (= e!10967 (and tp!4729 tp!4730))))

(declare-fun b!20925 () Bool)

(assert (=> b!20925 (= e!10967 tp_is_empty!99)))

(assert (=> b!20665 (= tp!4699 e!10967)))

(assert (= (and b!20665 (is-CC!31 (left!676 (right!679 (left!676 xs!604))))) b!20924))

(assert (= (and b!20665 (is-Single!31 (left!676 (right!679 (left!676 xs!604))))) b!20925))

(declare-fun b!20926 () Bool)

(declare-fun e!10968 () Bool)

(declare-fun tp!4731 () Bool)

(declare-fun tp!4732 () Bool)

(assert (=> b!20926 (= e!10968 (and tp!4731 tp!4732))))

(declare-fun b!20927 () Bool)

(assert (=> b!20927 (= e!10968 tp_is_empty!99)))

(assert (=> b!20665 (= tp!4700 e!10968)))

(assert (= (and b!20665 (is-CC!31 (right!679 (right!679 (left!676 xs!604))))) b!20926))

(assert (= (and b!20665 (is-Single!31 (right!679 (right!679 (left!676 xs!604))))) b!20927))

(declare-fun b!20928 () Bool)

(declare-fun e!10969 () Bool)

(declare-fun tp!4733 () Bool)

(declare-fun tp!4734 () Bool)

(assert (=> b!20928 (= e!10969 (and tp!4733 tp!4734))))

(declare-fun b!20929 () Bool)

(assert (=> b!20929 (= e!10969 tp_is_empty!99)))

(assert (=> b!20661 (= tp!4695 e!10969)))

(assert (= (and b!20661 (is-CC!31 (left!676 (right!679 (right!679 xs!604))))) b!20928))

(assert (= (and b!20661 (is-Single!31 (left!676 (right!679 (right!679 xs!604))))) b!20929))

(declare-fun b!20930 () Bool)

(declare-fun e!10970 () Bool)

(declare-fun tp!4735 () Bool)

(declare-fun tp!4736 () Bool)

(assert (=> b!20930 (= e!10970 (and tp!4735 tp!4736))))

(declare-fun b!20931 () Bool)

(assert (=> b!20931 (= e!10970 tp_is_empty!99)))

(assert (=> b!20661 (= tp!4696 e!10970)))

(assert (= (and b!20661 (is-CC!31 (right!679 (right!679 (right!679 xs!604))))) b!20930))

(assert (= (and b!20661 (is-Single!31 (right!679 (right!679 (right!679 xs!604))))) b!20931))

(declare-fun b!20932 () Bool)

(declare-fun e!10971 () Bool)

(declare-fun tp!4737 () Bool)

(declare-fun tp!4738 () Bool)

(assert (=> b!20932 (= e!10971 (and tp!4737 tp!4738))))

(declare-fun b!20933 () Bool)

(assert (=> b!20933 (= e!10971 tp_is_empty!99)))

(assert (=> b!20663 (= tp!4697 e!10971)))

(assert (= (and b!20663 (is-CC!31 (left!676 (left!676 (left!676 xs!604))))) b!20932))

(assert (= (and b!20663 (is-Single!31 (left!676 (left!676 (left!676 xs!604))))) b!20933))

(declare-fun b!20934 () Bool)

(declare-fun e!10972 () Bool)

(declare-fun tp!4739 () Bool)

(declare-fun tp!4740 () Bool)

(assert (=> b!20934 (= e!10972 (and tp!4739 tp!4740))))

(declare-fun b!20935 () Bool)

(assert (=> b!20935 (= e!10972 tp_is_empty!99)))

(assert (=> b!20663 (= tp!4698 e!10972)))

(assert (= (and b!20663 (is-CC!31 (right!679 (left!676 (left!676 xs!604))))) b!20934))

(assert (= (and b!20663 (is-Single!31 (right!679 (left!676 (left!676 xs!604))))) b!20935))

(push 1)

(assert (not b!20849))

(assert (not b!20758))

(assert (not b!20715))

(assert (not b!20839))

(assert (not b!20908))

(assert (not b!20704))

(assert (not b!20696))

(assert (not b!20749))

(assert (not b!20821))

(assert (not b!20926))

(assert (not b!20887))

(assert (not b!20912))

(assert (not b!20767))

(assert (not d!12769))

(assert (not b!20823))

(assert (not d!12729))

(assert (not b!20718))

(assert (not b!20713))

(assert (not b!20799))

(assert (not b!20834))

(assert (not b!20871))

(assert (not b!20852))

(assert (not b!20780))

(assert (not b!20728))

(assert (not b!20829))

(assert (not b!20875))

(assert (not b!20700))

(assert (not b!20930))

(assert tp_is_empty!99)

(assert (not b!20724))

(assert (not b!20895))

(assert (not b!20770))

(assert (not d!12757))

(assert (not b!20732))

(assert (not d!12765))

(assert (not b!20836))

(assert (not b!20688))

(assert (not b!20762))

(assert (not b!20850))

(assert (not b!20835))

(assert (not b!20779))

(assert (not b!20859))

(assert (not b!20706))

(assert (not b!20856))

(assert (not b!20914))

(assert (not b!20786))

(assert (not b!20857))

(assert (not b!20854))

(assert (not b!20743))

(assert (not b!20726))

(assert (not b!20840))

(assert (not b!20901))

(assert (not b!20801))

(assert (not b!20690))

(assert (not b!20785))

(assert (not b!20754))

(assert (not b!20729))

(assert (not b!20932))

(assert (not d!12773))

(assert (not b!20863))

(assert (not b!20803))

(assert (not b!20900))

(assert (not b!20791))

(assert (not b!20702))

(assert (not b!20804))

(assert (not b!20899))

(assert (not d!12711))

(assert (not b!20675))

(assert (not d!12743))

(assert (not b!20858))

(assert (not d!12761))

(assert (not b!20798))

(assert (not b!20851))

(assert (not d!12763))

(assert (not d!12707))

(assert (not b!20796))

(assert (not d!12741))

(assert (not b!20873))

(assert (not b!20692))

(assert (not b!20764))

(assert (not b!20734))

(assert (not b!20760))

(assert (not b!20812))

(assert (not b!20722))

(assert (not b!20769))

(assert (not b!20934))

(assert (not b!20874))

(assert (not b!20714))

(assert (not b!20797))

(assert (not b!20756))

(assert (not b!20712))

(assert (not b!20783))

(assert (not b!20922))

(assert (not b!20710))

(assert (not b!20752))

(assert (not b!20805))

(assert (not b!20763))

(assert (not b!20751))

(assert (not b!20806))

(assert (not b!20928))

(assert (not b!20861))

(assert (not b!20855))

(assert (not b!20766))

(assert (not b!20748))

(assert (not b!20877))

(assert (not b!20833))

(assert (not b!20759))

(assert (not b!20910))

(assert (not b!20902))

(assert (not b!20678))

(assert (not b!20750))

(assert (not d!12745))

(assert (not b!20742))

(assert (not d!12709))

(assert (not b!20817))

(assert (not b!20881))

(assert (not b!20677))

(assert (not b!20795))

(assert (not b!20765))

(assert (not b!20889))

(assert (not b!20860))

(assert (not b!20883))

(assert (not b!20853))

(assert (not d!12771))

(assert (not b!20781))

(assert (not b!20807))

(assert (not b!20676))

(assert (not b!20730))

(assert (not b!20879))

(assert (not b!20739))

(assert (not d!12755))

(assert (not b!20682))

(assert (not b!20802))

(assert (not b!20867))

(assert (not b!20809))

(assert (not d!12759))

(assert (not b!20872))

(assert (not b!20735))

(assert (not b!20680))

(assert (not b!20918))

(assert (not b!20738))

(assert (not b!20845))

(assert (not b!20757))

(assert (not b!20904))

(assert (not b!20782))

(assert (not b!20903))

(assert (not b!20701))

(assert (not b!20865))

(assert (not b!20777))

(assert (not b!20800))

(assert (not b!20924))

(assert (not b!20906))

(assert (not b!20916))

(assert (not b!20920))

(assert (not b!20837))

(assert (not b!20775))

(assert (not b!20824))

(assert (not b!20703))

(assert (not b!20716))

(assert (not b!20811))

(assert (not b!20731))

(assert (not b!20891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

