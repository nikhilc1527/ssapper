; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9186 () Bool)

(assert start!9186)

(declare-fun res!29587 () Bool)

(declare-fun e!34343 () Bool)

(assert (=> start!9186 (=> (not res!29587) (not e!34343))))

(declare-datatypes () ((Formula!5 (And!10 (lhs!818 Formula!5) (rhs!818 Formula!5)) (Literal!4 (id!4784 Int)) (Implies!10 (lhs!819 Formula!5) (rhs!819 Formula!5)) (Or!10 (lhs!820 Formula!5) (rhs!820 Formula!5)) (Not!10 (f!4075 Formula!5)))))

(declare-fun f!3964 () Formula!5)

(assert (=> start!9186 (= res!29587 (and (not (is-And!10 f!3964)) (is-Literal!4 f!3964)))))

(assert (=> start!9186 e!34343))

(assert (=> start!9186 true))

(declare-fun b!63419 () Bool)

(declare-fun eval!0 (Formula!5) Bool)

(declare-fun simplify!1 (Formula!5) Formula!5)

(assert (=> b!63419 (= e!34343 (not (= (eval!0 f!3964) (eval!0 (simplify!1 f!3964)))))))

(assert (= (and start!9186 res!29587) b!63419))

(declare-fun m!69025 () Bool)

(assert (=> b!63419 m!69025))

(declare-fun m!69027 () Bool)

(assert (=> b!63419 m!69027))

(assert (=> b!63419 m!69027))

(declare-fun m!69029 () Bool)

(assert (=> b!63419 m!69029))

(push 1)

(assert (not b!63419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!63498 () Bool)

(declare-fun e!34403 () Bool)

(declare-fun e!34412 () Bool)

(assert (=> b!63498 (= e!34403 e!34412)))

(declare-fun res!29645 () Bool)

(assert (=> b!63498 (=> (not res!29645) (not e!34412))))

(declare-fun lt!11766 () Bool)

(assert (=> b!63498 (= res!29645 (not lt!11766))))

(declare-fun b!63499 () Bool)

(declare-fun e!34392 () Bool)

(declare-fun e!34402 () Bool)

(assert (=> b!63499 (= e!34392 e!34402)))

(declare-fun res!29654 () Bool)

(assert (=> b!63499 (=> (not res!29654) (not e!34402))))

(declare-fun lt!11778 () Bool)

(assert (=> b!63499 (= res!29654 lt!11778)))

(assert (=> b!63499 (= lt!11778 (is-Implies!10 f!3964))))

(declare-fun b!63500 () Bool)

(declare-fun e!34398 () Bool)

(declare-fun e!34413 () Formula!5)

(assert (=> b!63500 (= e!34398 (eval!0 e!34413))))

(declare-fun c!13860 () Bool)

(declare-fun lt!11768 () Bool)

(assert (=> b!63500 (= c!13860 lt!11768)))

(declare-fun b!63501 () Bool)

(declare-fun res!29646 () Bool)

(assert (=> b!63501 (= e!34398 res!29646)))

(assert (=> b!63501 true))

(declare-fun b!63502 () Bool)

(declare-fun e!34411 () Bool)

(declare-fun e!34414 () Bool)

(assert (=> b!63502 (= e!34411 e!34414)))

(declare-fun c!13848 () Bool)

(assert (=> b!63502 (= c!13848 (is-Not!10 f!3964))))

(declare-fun b!63503 () Bool)

(declare-fun e!34409 () Bool)

(declare-fun e!34415 () Bool)

(assert (=> b!63503 (= e!34409 e!34415)))

(declare-fun c!13855 () Bool)

(assert (=> b!63503 (= c!13855 lt!11766)))

(declare-fun lt!11771 () Bool)

(declare-fun e!34401 () Bool)

(assert (=> b!63503 (= lt!11771 e!34401)))

(declare-fun c!13847 () Bool)

(assert (=> b!63503 (= c!13847 e!34403)))

(declare-fun res!29647 () Bool)

(assert (=> b!63503 (=> res!29647 e!34403)))

(declare-fun lt!11779 () Bool)

(assert (=> b!63503 (= res!29647 (and lt!11766 (not lt!11779)))))

(declare-fun e!34404 () Bool)

(assert (=> b!63503 (= lt!11779 e!34404)))

(declare-fun c!13861 () Bool)

(assert (=> b!63503 (= c!13861 (or lt!11766 (is-Implies!10 f!3964) (is-Not!10 f!3964)))))

(assert (=> b!63503 (= lt!11766 (is-Or!10 f!3964))))

(declare-fun d!53258 () Bool)

(declare-fun c!13850 () Bool)

(declare-fun lt!11775 () Bool)

(assert (=> d!53258 (= c!13850 lt!11775)))

(declare-fun lt!11770 () Bool)

(assert (=> d!53258 (= lt!11770 e!34398)))

(declare-fun c!13849 () Bool)

(declare-fun e!34394 () Bool)

(assert (=> d!53258 (= c!13849 e!34394)))

(declare-fun res!29658 () Bool)

(assert (=> d!53258 (=> res!29658 e!34394)))

(assert (=> d!53258 (= res!29658 lt!11768)))

(declare-fun lt!11777 () Bool)

(assert (=> d!53258 (= lt!11768 (and lt!11775 lt!11777))))

(declare-fun e!34395 () Bool)

(assert (=> d!53258 (= lt!11777 e!34395)))

(declare-fun c!13854 () Bool)

(assert (=> d!53258 (= c!13854 (or lt!11775 (is-Or!10 f!3964) (is-Implies!10 f!3964) (is-Not!10 f!3964)))))

(assert (=> d!53258 (= lt!11775 (is-And!10 f!3964))))

(assert (=> d!53258 (= (eval!0 f!3964) e!34409)))

(declare-fun b!63504 () Bool)

(assert (=> b!63504 (= e!34415 (or lt!11779 lt!11771))))

(declare-fun b!63505 () Bool)

(declare-fun e!34396 () Formula!5)

(assert (=> b!63505 (= e!34396 (rhs!820 f!3964))))

(declare-fun b!63506 () Bool)

(declare-fun res!29650 () Bool)

(assert (=> b!63506 (= e!34404 res!29650)))

(assert (=> b!63506 true))

(declare-fun b!63507 () Bool)

(declare-fun e!34408 () Bool)

(assert (=> b!63507 (= e!34408 lt!11779)))

(declare-fun b!63508 () Bool)

(declare-fun e!34407 () Bool)

(declare-fun res!29660 () Bool)

(assert (=> b!63508 (= e!34407 res!29660)))

(assert (=> b!63508 true))

(declare-fun b!63509 () Bool)

(assert (=> b!63509 (= e!34404 lt!11777)))

(declare-fun b!63510 () Bool)

(declare-fun e!34400 () Bool)

(assert (=> b!63510 (= e!34400 lt!11777)))

(declare-fun b!63511 () Bool)

(declare-fun lt!11772 () Bool)

(assert (=> b!63511 (= e!34414 (not lt!11772))))

(declare-fun b!63512 () Bool)

(declare-fun e!34405 () Bool)

(assert (=> b!63512 (= e!34402 e!34405)))

(declare-fun c!13858 () Bool)

(assert (=> b!63512 (= c!13858 (or lt!11778 (is-Not!10 f!3964)))))

(declare-fun b!63513 () Bool)

(declare-fun evalLit!0 (Int) Bool)

(assert (=> b!63513 (= e!34414 (evalLit!0 (id!4784 f!3964)))))

(declare-fun b!63514 () Bool)

(assert (=> b!63514 (= e!34413 e!34396)))

(declare-fun c!13857 () Bool)

(declare-fun e!34393 () Bool)

(assert (=> b!63514 (= c!13857 e!34393)))

(declare-fun res!29653 () Bool)

(assert (=> b!63514 (=> (not res!29653) (not e!34393))))

(declare-fun lt!11767 () Bool)

(assert (=> b!63514 (= res!29653 lt!11767)))

(assert (=> b!63514 (= lt!11767 (is-Or!10 f!3964))))

(declare-fun b!63515 () Bool)

(declare-fun e!34399 () Bool)

(declare-fun res!29648 () Bool)

(assert (=> b!63515 (= e!34399 res!29648)))

(assert (=> b!63515 true))

(declare-fun b!63516 () Bool)

(declare-fun e!34410 () Bool)

(assert (=> b!63516 (= e!34394 e!34410)))

(declare-fun res!29652 () Bool)

(assert (=> b!63516 (=> (not res!29652) (not e!34410))))

(assert (=> b!63516 (= res!29652 (not lt!11775))))

(declare-fun b!63517 () Bool)

(assert (=> b!63517 (= e!34399 lt!11779)))

(declare-fun b!63518 () Bool)

(declare-fun e!34397 () Bool)

(assert (=> b!63518 (= e!34410 e!34397)))

(declare-fun res!29655 () Bool)

(assert (=> b!63518 (=> res!29655 e!34397)))

(declare-fun lt!11769 () Bool)

(declare-fun lt!11774 () Bool)

(assert (=> b!63518 (= res!29655 (and lt!11769 (not lt!11774)))))

(assert (=> b!63518 (= lt!11774 e!34400)))

(declare-fun c!13856 () Bool)

(assert (=> b!63518 (= c!13856 (or lt!11769 (is-Implies!10 f!3964) (is-Not!10 f!3964)))))

(assert (=> b!63518 (= lt!11769 (is-Or!10 f!3964))))

(declare-fun b!63519 () Bool)

(declare-fun res!29657 () Bool)

(assert (=> b!63519 (= e!34401 res!29657)))

(assert (=> b!63519 true))

(declare-fun b!63520 () Bool)

(assert (=> b!63520 (= e!34397 e!34392)))

(declare-fun res!29649 () Bool)

(assert (=> b!63520 (=> (not res!29649) (not e!34392))))

(assert (=> b!63520 (= res!29649 (not lt!11769))))

(declare-fun b!63521 () Bool)

(declare-fun e!34406 () Bool)

(assert (=> b!63521 (= e!34406 e!34399)))

(declare-fun c!13851 () Bool)

(declare-fun lt!11773 () Bool)

(assert (=> b!63521 (= c!13851 (or lt!11773 (is-Not!10 f!3964)))))

(declare-fun b!63522 () Bool)

(assert (=> b!63522 (= e!34409 (and lt!11777 lt!11770))))

(declare-fun b!63523 () Bool)

(assert (=> b!63523 (= e!34411 (or (not lt!11772) lt!11771))))

(declare-fun b!63524 () Bool)

(declare-fun res!29659 () Bool)

(assert (=> b!63524 (= e!34395 res!29659)))

(assert (=> b!63524 true))

(declare-fun b!63525 () Bool)

(assert (=> b!63525 (= e!34396 (rhs!819 f!3964))))

(declare-fun b!63526 () Bool)

(assert (=> b!63526 (= e!34415 e!34411)))

(declare-fun c!13853 () Bool)

(declare-fun lt!11776 () Bool)

(assert (=> b!63526 (= c!13853 lt!11776)))

(assert (=> b!63526 (= lt!11772 e!34408)))

(declare-fun c!13859 () Bool)

(assert (=> b!63526 (= c!13859 (or lt!11776 (is-Not!10 f!3964)))))

(assert (=> b!63526 (= lt!11776 (is-Implies!10 f!3964))))

(declare-fun b!63527 () Bool)

(declare-fun res!29644 () Bool)

(assert (=> b!63527 (= e!34405 res!29644)))

(assert (=> b!63527 true))

(declare-fun b!63528 () Bool)

(assert (=> b!63528 (= e!34412 e!34406)))

(declare-fun res!29651 () Bool)

(assert (=> b!63528 (=> (not res!29651) (not e!34406))))

(assert (=> b!63528 (= res!29651 lt!11773)))

(assert (=> b!63528 (= lt!11773 (is-Implies!10 f!3964))))

(declare-fun b!63529 () Bool)

(assert (=> b!63529 (= e!34393 (not e!34407))))

(declare-fun c!13852 () Bool)

(assert (=> b!63529 (= c!13852 (or lt!11767 (is-Implies!10 f!3964) (is-Not!10 f!3964)))))

(declare-fun b!63530 () Bool)

(assert (=> b!63530 (= e!34413 (rhs!818 f!3964))))

(declare-fun b!63531 () Bool)

(assert (=> b!63531 (= e!34405 lt!11774)))

(declare-fun b!63532 () Bool)

(assert (=> b!63532 (= e!34401 lt!11770)))

(declare-fun b!63533 () Bool)

(declare-fun res!29661 () Bool)

(assert (=> b!63533 (= e!34400 res!29661)))

(assert (=> b!63533 true))

(declare-fun b!63534 () Bool)

(assert (=> b!63534 (= e!34395 (eval!0 (ite lt!11775 (lhs!818 f!3964) (ite (is-Or!10 f!3964) (lhs!820 f!3964) (ite (is-Implies!10 f!3964) (lhs!819 f!3964) (f!4075 f!3964))))))))

(declare-fun b!63535 () Bool)

(declare-fun res!29656 () Bool)

(assert (=> b!63535 (= e!34408 res!29656)))

(assert (=> b!63535 true))

(assert (=> b!63535 true))

(declare-fun b!63536 () Bool)

(assert (=> b!63536 (= e!34407 lt!11777)))

(assert (= (and d!53258 c!13854) b!63534))

(assert (= (and d!53258 (not c!13854)) b!63524))

(assert (= (and d!53258 (not res!29658)) b!63516))

(assert (= (and b!63516 res!29652) b!63518))

(assert (= (and b!63518 c!13856) b!63510))

(assert (= (and b!63518 (not c!13856)) b!63533))

(assert (= (and b!63518 (not res!29655)) b!63520))

(assert (= (and b!63520 res!29649) b!63499))

(assert (= (and b!63499 res!29654) b!63512))

(assert (= (and b!63512 c!13858) b!63531))

(assert (= (and b!63512 (not c!13858)) b!63527))

(assert (= (and b!63514 res!29653) b!63529))

(assert (= (and b!63529 c!13852) b!63536))

(assert (= (and b!63529 (not c!13852)) b!63508))

(assert (= (and b!63514 c!13857) b!63505))

(assert (= (and b!63514 (not c!13857)) b!63525))

(assert (= (and b!63500 c!13860) b!63530))

(assert (= (and b!63500 (not c!13860)) b!63514))

(assert (= (and d!53258 c!13849) b!63500))

(assert (= (and d!53258 (not c!13849)) b!63501))

(assert (= (and b!63503 c!13861) b!63509))

(assert (= (and b!63503 (not c!13861)) b!63506))

(assert (= (and b!63503 (not res!29647)) b!63498))

(assert (= (and b!63498 res!29645) b!63528))

(assert (= (and b!63528 res!29651) b!63521))

(assert (= (and b!63521 c!13851) b!63517))

(assert (= (and b!63521 (not c!13851)) b!63515))

(assert (= (and b!63503 c!13847) b!63532))

(assert (= (and b!63503 (not c!13847)) b!63519))

(assert (= (and b!63526 c!13859) b!63507))

(assert (= (and b!63526 (not c!13859)) b!63535))

(assert (= (and b!63502 c!13848) b!63511))

(assert (= (and b!63502 (not c!13848)) b!63513))

(assert (= (and b!63526 c!13853) b!63523))

(assert (= (and b!63526 (not c!13853)) b!63502))

(assert (= (and b!63503 c!13855) b!63504))

(assert (= (and b!63503 (not c!13855)) b!63526))

(assert (= (and d!53258 c!13850) b!63522))

(assert (= (and d!53258 (not c!13850)) b!63503))

(declare-fun m!69031 () Bool)

(assert (=> b!63500 m!69031))

(declare-fun m!69033 () Bool)

(assert (=> b!63513 m!69033))

(declare-fun m!69035 () Bool)

(assert (=> b!63534 m!69035))

(assert (=> b!63419 d!53258))

(declare-fun b!63537 () Bool)

(declare-fun e!34427 () Bool)

(declare-fun e!34436 () Bool)

(assert (=> b!63537 (= e!34427 e!34436)))

(declare-fun res!29663 () Bool)

(assert (=> b!63537 (=> (not res!29663) (not e!34436))))

(declare-fun lt!11780 () Bool)

(assert (=> b!63537 (= res!29663 (not lt!11780))))

(declare-fun b!63538 () Bool)

(declare-fun e!34416 () Bool)

(declare-fun e!34426 () Bool)

(assert (=> b!63538 (= e!34416 e!34426)))

(declare-fun res!29672 () Bool)

(assert (=> b!63538 (=> (not res!29672) (not e!34426))))

(declare-fun lt!11792 () Bool)

(assert (=> b!63538 (= res!29672 lt!11792)))

(assert (=> b!63538 (= lt!11792 (is-Implies!10 (simplify!1 f!3964)))))

(declare-fun b!63539 () Bool)

(declare-fun e!34422 () Bool)

(declare-fun e!34437 () Formula!5)

(assert (=> b!63539 (= e!34422 (eval!0 e!34437))))

(declare-fun c!13875 () Bool)

(declare-fun lt!11782 () Bool)

(assert (=> b!63539 (= c!13875 lt!11782)))

(declare-fun b!63540 () Bool)

(declare-fun res!29664 () Bool)

(assert (=> b!63540 (= e!34422 res!29664)))

(assert (=> b!63540 true))

(declare-fun b!63541 () Bool)

(declare-fun e!34435 () Bool)

(declare-fun e!34438 () Bool)

(assert (=> b!63541 (= e!34435 e!34438)))

(declare-fun c!13863 () Bool)

(assert (=> b!63541 (= c!13863 (is-Not!10 (simplify!1 f!3964)))))

(declare-fun b!63542 () Bool)

(declare-fun e!34433 () Bool)

(declare-fun e!34439 () Bool)

(assert (=> b!63542 (= e!34433 e!34439)))

(declare-fun c!13870 () Bool)

(assert (=> b!63542 (= c!13870 lt!11780)))

(declare-fun lt!11785 () Bool)

(declare-fun e!34425 () Bool)

(assert (=> b!63542 (= lt!11785 e!34425)))

(declare-fun c!13862 () Bool)

(assert (=> b!63542 (= c!13862 e!34427)))

(declare-fun res!29665 () Bool)

(assert (=> b!63542 (=> res!29665 e!34427)))

(declare-fun lt!11793 () Bool)

(assert (=> b!63542 (= res!29665 (and lt!11780 (not lt!11793)))))

(declare-fun e!34428 () Bool)

(assert (=> b!63542 (= lt!11793 e!34428)))

(declare-fun c!13876 () Bool)

(assert (=> b!63542 (= c!13876 (or lt!11780 (is-Implies!10 (simplify!1 f!3964)) (is-Not!10 (simplify!1 f!3964))))))

(assert (=> b!63542 (= lt!11780 (is-Or!10 (simplify!1 f!3964)))))

(declare-fun d!53260 () Bool)

(declare-fun c!13865 () Bool)

(declare-fun lt!11789 () Bool)

(assert (=> d!53260 (= c!13865 lt!11789)))

(declare-fun lt!11784 () Bool)

(assert (=> d!53260 (= lt!11784 e!34422)))

(declare-fun c!13864 () Bool)

(declare-fun e!34418 () Bool)

(assert (=> d!53260 (= c!13864 e!34418)))

(declare-fun res!29676 () Bool)

(assert (=> d!53260 (=> res!29676 e!34418)))

(assert (=> d!53260 (= res!29676 lt!11782)))

(declare-fun lt!11791 () Bool)

(assert (=> d!53260 (= lt!11782 (and lt!11789 lt!11791))))

(declare-fun e!34419 () Bool)

(assert (=> d!53260 (= lt!11791 e!34419)))

(declare-fun c!13869 () Bool)

(assert (=> d!53260 (= c!13869 (or lt!11789 (is-Or!10 (simplify!1 f!3964)) (is-Implies!10 (simplify!1 f!3964)) (is-Not!10 (simplify!1 f!3964))))))

(assert (=> d!53260 (= lt!11789 (is-And!10 (simplify!1 f!3964)))))

(assert (=> d!53260 (= (eval!0 (simplify!1 f!3964)) e!34433)))

(declare-fun b!63543 () Bool)

(assert (=> b!63543 (= e!34439 (or lt!11793 lt!11785))))

(declare-fun b!63544 () Bool)

(declare-fun e!34420 () Formula!5)

(assert (=> b!63544 (= e!34420 (rhs!820 (simplify!1 f!3964)))))

(declare-fun b!63545 () Bool)

(declare-fun res!29668 () Bool)

(assert (=> b!63545 (= e!34428 res!29668)))

(assert (=> b!63545 true))

(declare-fun b!63546 () Bool)

(declare-fun e!34432 () Bool)

(assert (=> b!63546 (= e!34432 lt!11793)))

(declare-fun b!63547 () Bool)

(declare-fun e!34431 () Bool)

(declare-fun res!29678 () Bool)

(assert (=> b!63547 (= e!34431 res!29678)))

(assert (=> b!63547 true))

(declare-fun b!63548 () Bool)

(assert (=> b!63548 (= e!34428 lt!11791)))

(declare-fun b!63549 () Bool)

(declare-fun e!34424 () Bool)

(assert (=> b!63549 (= e!34424 lt!11791)))

(declare-fun b!63550 () Bool)

(declare-fun lt!11786 () Bool)

(assert (=> b!63550 (= e!34438 (not lt!11786))))

(declare-fun b!63551 () Bool)

(declare-fun e!34429 () Bool)

(assert (=> b!63551 (= e!34426 e!34429)))

(declare-fun c!13873 () Bool)

(assert (=> b!63551 (= c!13873 (or lt!11792 (is-Not!10 (simplify!1 f!3964))))))

(declare-fun b!63552 () Bool)

(assert (=> b!63552 (= e!34438 (evalLit!0 (id!4784 (simplify!1 f!3964))))))

(declare-fun b!63553 () Bool)

(assert (=> b!63553 (= e!34437 e!34420)))

(declare-fun c!13872 () Bool)

(declare-fun e!34417 () Bool)

(assert (=> b!63553 (= c!13872 e!34417)))

(declare-fun res!29671 () Bool)

(assert (=> b!63553 (=> (not res!29671) (not e!34417))))

(declare-fun lt!11781 () Bool)

(assert (=> b!63553 (= res!29671 lt!11781)))

(assert (=> b!63553 (= lt!11781 (is-Or!10 (simplify!1 f!3964)))))

(declare-fun b!63554 () Bool)

(declare-fun e!34423 () Bool)

(declare-fun res!29666 () Bool)

(assert (=> b!63554 (= e!34423 res!29666)))

(assert (=> b!63554 true))

(declare-fun b!63555 () Bool)

(declare-fun e!34434 () Bool)

(assert (=> b!63555 (= e!34418 e!34434)))

(declare-fun res!29670 () Bool)

(assert (=> b!63555 (=> (not res!29670) (not e!34434))))

(assert (=> b!63555 (= res!29670 (not lt!11789))))

(declare-fun b!63556 () Bool)

(assert (=> b!63556 (= e!34423 lt!11793)))

(declare-fun b!63557 () Bool)

(declare-fun e!34421 () Bool)

(assert (=> b!63557 (= e!34434 e!34421)))

(declare-fun res!29673 () Bool)

(assert (=> b!63557 (=> res!29673 e!34421)))

(declare-fun lt!11783 () Bool)

(declare-fun lt!11788 () Bool)

(assert (=> b!63557 (= res!29673 (and lt!11783 (not lt!11788)))))

(assert (=> b!63557 (= lt!11788 e!34424)))

(declare-fun c!13871 () Bool)

(assert (=> b!63557 (= c!13871 (or lt!11783 (is-Implies!10 (simplify!1 f!3964)) (is-Not!10 (simplify!1 f!3964))))))

(assert (=> b!63557 (= lt!11783 (is-Or!10 (simplify!1 f!3964)))))

(declare-fun b!63558 () Bool)

(declare-fun res!29675 () Bool)

(assert (=> b!63558 (= e!34425 res!29675)))

(assert (=> b!63558 true))

(declare-fun b!63559 () Bool)

(assert (=> b!63559 (= e!34421 e!34416)))

(declare-fun res!29667 () Bool)

(assert (=> b!63559 (=> (not res!29667) (not e!34416))))

(assert (=> b!63559 (= res!29667 (not lt!11783))))

(declare-fun b!63560 () Bool)

(declare-fun e!34430 () Bool)

(assert (=> b!63560 (= e!34430 e!34423)))

(declare-fun c!13866 () Bool)

(declare-fun lt!11787 () Bool)

(assert (=> b!63560 (= c!13866 (or lt!11787 (is-Not!10 (simplify!1 f!3964))))))

(declare-fun b!63561 () Bool)

(assert (=> b!63561 (= e!34433 (and lt!11791 lt!11784))))

(declare-fun b!63562 () Bool)

(assert (=> b!63562 (= e!34435 (or (not lt!11786) lt!11785))))

(declare-fun b!63563 () Bool)

(declare-fun res!29677 () Bool)

(assert (=> b!63563 (= e!34419 res!29677)))

(assert (=> b!63563 true))

(declare-fun b!63564 () Bool)

(assert (=> b!63564 (= e!34420 (rhs!819 (simplify!1 f!3964)))))

(declare-fun b!63565 () Bool)

(assert (=> b!63565 (= e!34439 e!34435)))

(declare-fun c!13868 () Bool)

(declare-fun lt!11790 () Bool)

(assert (=> b!63565 (= c!13868 lt!11790)))

(assert (=> b!63565 (= lt!11786 e!34432)))

(declare-fun c!13874 () Bool)

(assert (=> b!63565 (= c!13874 (or lt!11790 (is-Not!10 (simplify!1 f!3964))))))

(assert (=> b!63565 (= lt!11790 (is-Implies!10 (simplify!1 f!3964)))))

(declare-fun b!63566 () Bool)

(declare-fun res!29662 () Bool)

(assert (=> b!63566 (= e!34429 res!29662)))

(assert (=> b!63566 true))

(declare-fun b!63567 () Bool)

(assert (=> b!63567 (= e!34436 e!34430)))

(declare-fun res!29669 () Bool)

(assert (=> b!63567 (=> (not res!29669) (not e!34430))))

(assert (=> b!63567 (= res!29669 lt!11787)))

(assert (=> b!63567 (= lt!11787 (is-Implies!10 (simplify!1 f!3964)))))

(declare-fun b!63568 () Bool)

(assert (=> b!63568 (= e!34417 (not e!34431))))

(declare-fun c!13867 () Bool)

(assert (=> b!63568 (= c!13867 (or lt!11781 (is-Implies!10 (simplify!1 f!3964)) (is-Not!10 (simplify!1 f!3964))))))

(declare-fun b!63569 () Bool)

(assert (=> b!63569 (= e!34437 (rhs!818 (simplify!1 f!3964)))))

(declare-fun b!63570 () Bool)

(assert (=> b!63570 (= e!34429 lt!11788)))

(declare-fun b!63571 () Bool)

(assert (=> b!63571 (= e!34425 lt!11784)))

(declare-fun b!63572 () Bool)

(declare-fun res!29679 () Bool)

(assert (=> b!63572 (= e!34424 res!29679)))

(assert (=> b!63572 true))

(declare-fun b!63573 () Bool)

(assert (=> b!63573 (= e!34419 (eval!0 (ite lt!11789 (lhs!818 (simplify!1 f!3964)) (ite (is-Or!10 (simplify!1 f!3964)) (lhs!820 (simplify!1 f!3964)) (ite (is-Implies!10 (simplify!1 f!3964)) (lhs!819 (simplify!1 f!3964)) (f!4075 (simplify!1 f!3964)))))))))

(declare-fun b!63574 () Bool)

(declare-fun res!29674 () Bool)

(assert (=> b!63574 (= e!34432 res!29674)))

(assert (=> b!63574 true))

(assert (=> b!63574 true))

(declare-fun b!63575 () Bool)

(assert (=> b!63575 (= e!34431 lt!11791)))

(assert (= (and d!53260 c!13869) b!63573))

(assert (= (and d!53260 (not c!13869)) b!63563))

(assert (= (and d!53260 (not res!29676)) b!63555))

(assert (= (and b!63555 res!29670) b!63557))

(assert (= (and b!63557 c!13871) b!63549))

(assert (= (and b!63557 (not c!13871)) b!63572))

(assert (= (and b!63557 (not res!29673)) b!63559))

(assert (= (and b!63559 res!29667) b!63538))

(assert (= (and b!63538 res!29672) b!63551))

(assert (= (and b!63551 c!13873) b!63570))

(assert (= (and b!63551 (not c!13873)) b!63566))

(assert (= (and b!63553 res!29671) b!63568))

(assert (= (and b!63568 c!13867) b!63575))

(assert (= (and b!63568 (not c!13867)) b!63547))

(assert (= (and b!63553 c!13872) b!63544))

(assert (= (and b!63553 (not c!13872)) b!63564))

(assert (= (and b!63539 c!13875) b!63569))

(assert (= (and b!63539 (not c!13875)) b!63553))

(assert (= (and d!53260 c!13864) b!63539))

(assert (= (and d!53260 (not c!13864)) b!63540))

(assert (= (and b!63542 c!13876) b!63548))

(assert (= (and b!63542 (not c!13876)) b!63545))

(assert (= (and b!63542 (not res!29665)) b!63537))

(assert (= (and b!63537 res!29663) b!63567))

(assert (= (and b!63567 res!29669) b!63560))

(assert (= (and b!63560 c!13866) b!63556))

(assert (= (and b!63560 (not c!13866)) b!63554))

(assert (= (and b!63542 c!13862) b!63571))

(assert (= (and b!63542 (not c!13862)) b!63558))

(assert (= (and b!63565 c!13874) b!63546))

(assert (= (and b!63565 (not c!13874)) b!63574))

(assert (= (and b!63541 c!13863) b!63550))

(assert (= (and b!63541 (not c!13863)) b!63552))

(assert (= (and b!63565 c!13868) b!63562))

(assert (= (and b!63565 (not c!13868)) b!63541))

(assert (= (and b!63542 c!13870) b!63543))

(assert (= (and b!63542 (not c!13870)) b!63565))

(assert (= (and d!53260 c!13865) b!63561))

(assert (= (and d!53260 (not c!13865)) b!63542))

(declare-fun m!69037 () Bool)

(assert (=> b!63539 m!69037))

(declare-fun m!69039 () Bool)

(assert (=> b!63552 m!69039))

(declare-fun m!69041 () Bool)

(assert (=> b!63573 m!69041))

(assert (=> b!63419 d!53260))

(declare-fun lt!11817 () Formula!5)

(declare-fun lt!11815 () Formula!5)

(declare-fun lt!11816 () Bool)

(declare-fun b!63604 () Bool)

(declare-fun e!34458 () Formula!5)

(assert (=> b!63604 (= e!34458 (ite lt!11816 (Or!10 (Not!10 lt!11815) lt!11817) (ite (is-Not!10 f!3964) (Not!10 lt!11815) f!3964)))))

(declare-fun e!34455 () Formula!5)

(assert (=> b!63604 (= lt!11815 e!34455)))

(declare-fun c!13894 () Bool)

(assert (=> b!63604 (= c!13894 (or lt!11816 (is-Not!10 f!3964)))))

(assert (=> b!63604 (= lt!11816 (is-Implies!10 f!3964))))

(declare-fun b!63605 () Bool)

(declare-fun e!34460 () Formula!5)

(declare-fun res!29707 () Formula!5)

(assert (=> b!63605 (= e!34460 res!29707)))

(assert (=> b!63605 true))

(declare-fun b!63606 () Bool)

(declare-fun e!34456 () Formula!5)

(declare-fun lt!11819 () Formula!5)

(assert (=> b!63606 (= e!34456 lt!11819)))

(declare-fun b!63607 () Bool)

(declare-fun e!34457 () Formula!5)

(assert (=> b!63607 (= e!34457 e!34458)))

(declare-fun c!13897 () Bool)

(declare-fun lt!11818 () Bool)

(assert (=> b!63607 (= c!13897 lt!11818)))

(assert (=> b!63607 (= lt!11817 e!34456)))

(declare-fun c!13896 () Bool)

(assert (=> b!63607 (= c!13896 (or lt!11818 (is-Implies!10 f!3964)))))

(declare-fun lt!11813 () Formula!5)

(declare-fun e!34459 () Formula!5)

(assert (=> b!63607 (= lt!11813 e!34459)))

(declare-fun c!13893 () Bool)

(assert (=> b!63607 (= c!13893 (or lt!11818 (is-Implies!10 f!3964) (is-Not!10 f!3964)))))

(assert (=> b!63607 (= lt!11818 (is-Or!10 f!3964))))

(declare-fun b!63608 () Bool)

(declare-fun lt!11812 () Bool)

(assert (=> b!63608 (= e!34460 (simplify!1 (ite lt!11812 (rhs!818 f!3964) (ite (is-Or!10 f!3964) (rhs!820 f!3964) (rhs!819 f!3964)))))))

(declare-fun b!63609 () Bool)

(assert (=> b!63609 (= e!34458 (Or!10 lt!11813 lt!11817))))

(declare-fun b!63610 () Bool)

(declare-fun lt!11814 () Formula!5)

(assert (=> b!63610 (= e!34457 (And!10 lt!11814 lt!11819))))

(declare-fun b!63611 () Bool)

(declare-fun res!29708 () Formula!5)

(assert (=> b!63611 (= e!34455 res!29708)))

(assert (=> b!63611 true))

(assert (=> b!63611 true))

(declare-fun b!63612 () Bool)

(declare-fun e!34454 () Formula!5)

(declare-fun res!29705 () Formula!5)

(assert (=> b!63612 (= e!34454 res!29705)))

(assert (=> b!63612 true))

(declare-fun b!63613 () Bool)

(assert (=> b!63613 (= e!34459 lt!11814)))

(declare-fun b!63614 () Bool)

(declare-fun res!29706 () Formula!5)

(assert (=> b!63614 (= e!34456 res!29706)))

(assert (=> b!63614 true))

(declare-fun d!53262 () Bool)

(declare-fun lt!11820 () Formula!5)

(declare-fun isSimplified!1 (Formula!5) Bool)

(assert (=> d!53262 (isSimplified!1 lt!11820)))

(assert (=> d!53262 (= lt!11820 e!34457)))

(declare-fun c!13891 () Bool)

(assert (=> d!53262 (= c!13891 lt!11812)))

(assert (=> d!53262 (= lt!11819 e!34460)))

(declare-fun c!13892 () Bool)

(assert (=> d!53262 (= c!13892 (or lt!11812 (is-Or!10 f!3964) (is-Implies!10 f!3964)))))

(assert (=> d!53262 (= lt!11814 e!34454)))

(declare-fun c!13895 () Bool)

(assert (=> d!53262 (= c!13895 (or lt!11812 (is-Or!10 f!3964) (is-Implies!10 f!3964) (is-Not!10 f!3964)))))

(assert (=> d!53262 (= lt!11812 (is-And!10 f!3964))))

(assert (=> d!53262 (= (simplify!1 f!3964) lt!11820)))

(declare-fun b!63615 () Bool)

(declare-fun res!29709 () Formula!5)

(assert (=> b!63615 (= e!34459 res!29709)))

(assert (=> b!63615 true))

(declare-fun b!63616 () Bool)

(assert (=> b!63616 (= e!34454 (simplify!1 (ite lt!11812 (lhs!818 f!3964) (ite (is-Or!10 f!3964) (lhs!820 f!3964) (ite (is-Implies!10 f!3964) (lhs!819 f!3964) (f!4075 f!3964))))))))

(declare-fun b!63617 () Bool)

(assert (=> b!63617 (= e!34455 lt!11813)))

(assert (= (and d!53262 c!13895) b!63616))

(assert (= (and d!53262 (not c!13895)) b!63612))

(assert (= (and d!53262 c!13892) b!63608))

(assert (= (and d!53262 (not c!13892)) b!63605))

(assert (= (and b!63607 c!13893) b!63613))

(assert (= (and b!63607 (not c!13893)) b!63615))

(assert (= (and b!63607 c!13896) b!63606))

(assert (= (and b!63607 (not c!13896)) b!63614))

(assert (= (and b!63604 c!13894) b!63617))

(assert (= (and b!63604 (not c!13894)) b!63611))

(assert (= (and b!63607 c!13897) b!63609))

(assert (= (and b!63607 (not c!13897)) b!63604))

(assert (= (and d!53262 c!13891) b!63610))

(assert (= (and d!53262 (not c!13891)) b!63607))

(declare-fun m!69043 () Bool)

(assert (=> b!63608 m!69043))

(declare-fun m!69045 () Bool)

(assert (=> d!53262 m!69045))

(declare-fun m!69047 () Bool)

(assert (=> b!63616 m!69047))

(assert (=> b!63419 d!53262))

(push 1)

(assert (not b!63552))

(assert (not b!63539))

(assert (not b!63616))

(assert (not b!63500))

(assert (not b!63608))

(assert (not b!63534))

(assert (not b!63573))

(assert (not b!63513))

(assert (not d!53262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

