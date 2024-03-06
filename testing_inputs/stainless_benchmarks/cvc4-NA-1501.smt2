; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10192 () Bool)

(assert start!10192)

(declare-fun b!73513 () Bool)

(declare-fun e!39730 () Bool)

(declare-datatypes () ((Formula!70 (Implies!74 (lhs!1323 Formula!70) (rhs!1323 Formula!70)) (And!74 (lhs!1324 Formula!70) (rhs!1324 Formula!70)) (Or!74 (lhs!1325 Formula!70) (rhs!1325 Formula!70)) (Literal!68 (id!4931 (_ BitVec 32))) (Not!74 (f!4663 Formula!70)))))

(declare-fun f!4625 () Formula!70)

(declare-fun isNNF!0 (Formula!70) Bool)

(assert (=> b!73513 (= e!39730 (not (isNNF!0 f!4625)))))

(declare-fun res!36061 () Bool)

(assert (=> start!10192 (=> (not res!36061) (not e!39730))))

(declare-fun f!4611 () Formula!70)

(assert (=> start!10192 (= res!36061 (isNNF!0 f!4611))))

(assert (=> start!10192 e!39730))

(assert (=> start!10192 true))

(declare-fun b!73510 () Bool)

(declare-fun res!36058 () Bool)

(assert (=> b!73510 (=> (not res!36058) (not e!39730))))

(assert (=> b!73510 (= res!36058 (and (not (is-Implies!74 f!4611)) (is-And!74 f!4611)))))

(declare-fun b!73511 () Bool)

(declare-fun res!36060 () Bool)

(assert (=> b!73511 (=> (not res!36060) (not e!39730))))

(declare-fun inductVal!753 () Bool)

(declare-fun nnfIsStable!0 (Formula!70) Bool)

(assert (=> b!73511 (= res!36060 (= inductVal!753 (nnfIsStable!0 (rhs!1324 f!4611))))))

(declare-fun b!73512 () Bool)

(declare-fun res!36059 () Bool)

(assert (=> b!73512 (=> (not res!36059) (not e!39730))))

(assert (=> b!73512 (= res!36059 (= f!4625 (lhs!1324 f!4611)))))

(assert (= (and start!10192 res!36061) b!73510))

(assert (= (and b!73510 res!36058) b!73511))

(assert (= (and b!73511 res!36060) b!73512))

(assert (= (and b!73512 res!36059) b!73513))

(declare-fun m!72816 () Bool)

(assert (=> b!73513 m!72816))

(declare-fun m!72818 () Bool)

(assert (=> start!10192 m!72818))

(declare-fun m!72820 () Bool)

(assert (=> b!73511 m!72820))

(push 1)

(assert (not b!73511))

(assert (not b!73513))

(assert (not start!10192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!73538 () Bool)

(declare-fun e!39744 () Bool)

(declare-fun lt!15643 () Formula!70)

(assert (=> b!73538 (= e!39744 (= lt!15643 (rhs!1324 f!4611)))))

(declare-fun b!73539 () Bool)

(declare-fun e!39748 () Bool)

(declare-fun res!36093 () Bool)

(assert (=> b!73539 (= e!39748 res!36093)))

(assert (=> b!73539 true))

(declare-fun d!54771 () Bool)

(assert (=> d!54771 e!39744))

(declare-fun c!17753 () Bool)

(declare-fun lt!15644 () Bool)

(assert (=> d!54771 (= c!17753 lt!15644)))

(declare-fun e!39745 () Formula!70)

(assert (=> d!54771 (= lt!15643 e!39745)))

(declare-fun c!17754 () Bool)

(assert (=> d!54771 (= c!17754 (or lt!15644 (is-And!74 (rhs!1324 f!4611)) (is-Or!74 (rhs!1324 f!4611))))))

(declare-fun lt!15642 () Bool)

(declare-fun e!39743 () Bool)

(assert (=> d!54771 (= lt!15642 e!39743)))

(declare-fun c!17752 () Bool)

(assert (=> d!54771 (= c!17752 (or lt!15644 (is-And!74 (rhs!1324 f!4611)) (is-Or!74 (rhs!1324 f!4611))))))

(declare-fun lt!15645 () Bool)

(assert (=> d!54771 (= lt!15645 e!39748)))

(declare-fun c!17751 () Bool)

(assert (=> d!54771 (= c!17751 (or lt!15644 (is-And!74 (rhs!1324 f!4611)) (is-Or!74 (rhs!1324 f!4611)) (not (is-Literal!68 (rhs!1324 f!4611)))))))

(assert (=> d!54771 (= lt!15644 (is-Implies!74 (rhs!1324 f!4611)))))

(assert (=> d!54771 (isNNF!0 (rhs!1324 f!4611))))

(assert (=> d!54771 (= (nnfIsStable!0 (rhs!1324 f!4611)) true)))

(declare-fun b!73540 () Bool)

(declare-fun nnf!0 (Formula!70) Formula!70)

(assert (=> b!73540 (= e!39745 (nnf!0 (rhs!1324 f!4611)))))

(declare-fun b!73541 () Bool)

(declare-fun e!39746 () Bool)

(assert (=> b!73541 (= e!39746 (= (nnf!0 (rhs!1324 f!4611)) (rhs!1324 f!4611)))))

(declare-fun b!73542 () Bool)

(declare-fun res!36091 () Bool)

(assert (=> b!73542 (= e!39743 res!36091)))

(assert (=> b!73542 true))

(declare-fun b!73543 () Bool)

(declare-fun e!39747 () Formula!70)

(assert (=> b!73543 (= e!39746 (= e!39747 (rhs!1324 f!4611)))))

(declare-fun c!17750 () Bool)

(declare-fun lt!15641 () Bool)

(assert (=> b!73543 (= c!17750 (or lt!15641 (is-Or!74 (rhs!1324 f!4611))))))

(declare-fun b!73544 () Bool)

(assert (=> b!73544 (= e!39743 (nnfIsStable!0 (ite lt!15644 (lhs!1323 (rhs!1324 f!4611)) (ite (is-And!74 (rhs!1324 f!4611)) (lhs!1324 (rhs!1324 f!4611)) (lhs!1325 (rhs!1324 f!4611))))))))

(declare-fun b!73545 () Bool)

(assert (=> b!73545 (= e!39747 lt!15643)))

(declare-fun b!73546 () Bool)

(declare-fun res!36092 () Formula!70)

(assert (=> b!73546 (= e!39747 res!36092)))

(assert (=> b!73546 true))

(assert (=> b!73546 true))

(declare-fun b!73547 () Bool)

(assert (=> b!73547 (= e!39748 (nnfIsStable!0 (ite lt!15644 (rhs!1323 (rhs!1324 f!4611)) (ite (is-And!74 (rhs!1324 f!4611)) (rhs!1324 (rhs!1324 f!4611)) (ite (is-Or!74 (rhs!1324 f!4611)) (rhs!1325 (rhs!1324 f!4611)) (f!4663 (rhs!1324 f!4611)))))))))

(declare-fun b!73548 () Bool)

(assert (=> b!73548 (= e!39744 e!39746)))

(declare-fun c!17755 () Bool)

(assert (=> b!73548 (= c!17755 (or lt!15641 (is-Or!74 (rhs!1324 f!4611))))))

(assert (=> b!73548 (= lt!15641 (is-And!74 (rhs!1324 f!4611)))))

(declare-fun b!73549 () Bool)

(declare-fun res!36094 () Formula!70)

(assert (=> b!73549 (= e!39745 res!36094)))

(assert (=> b!73549 true))

(assert (= (and d!54771 c!17751) b!73547))

(assert (= (and d!54771 (not c!17751)) b!73539))

(assert (= (and d!54771 c!17752) b!73544))

(assert (= (and d!54771 (not c!17752)) b!73542))

(assert (= (and d!54771 c!17754) b!73540))

(assert (= (and d!54771 (not c!17754)) b!73549))

(assert (= (and b!73543 c!17750) b!73545))

(assert (= (and b!73543 (not c!17750)) b!73546))

(assert (= (and b!73548 c!17755) b!73543))

(assert (= (and b!73548 (not c!17755)) b!73541))

(assert (= (and d!54771 c!17753) b!73538))

(assert (= (and d!54771 (not c!17753)) b!73548))

(declare-fun m!72822 () Bool)

(assert (=> b!73541 m!72822))

(declare-fun m!72824 () Bool)

(assert (=> b!73544 m!72824))

(declare-fun m!72826 () Bool)

(assert (=> b!73547 m!72826))

(assert (=> b!73540 m!72822))

(declare-fun m!72828 () Bool)

(assert (=> d!54771 m!72828))

(assert (=> b!73511 d!54771))

(declare-fun b!73598 () Bool)

(declare-fun e!39779 () Bool)

(declare-fun lt!15672 () Bool)

(assert (=> b!73598 (= e!39779 lt!15672)))

(declare-fun b!73599 () Bool)

(declare-fun e!39782 () Bool)

(declare-fun res!36137 () Bool)

(assert (=> b!73599 (= e!39782 res!36137)))

(assert (=> b!73599 true))

(declare-fun b!73600 () Bool)

(declare-fun e!39789 () Bool)

(declare-fun res!36131 () Bool)

(assert (=> b!73600 (= e!39789 res!36131)))

(assert (=> b!73600 true))

(declare-fun lt!15669 () Bool)

(declare-fun b!73601 () Bool)

(declare-fun lt!15665 () Bool)

(declare-fun e!39788 () Bool)

(assert (=> b!73601 (= e!39788 (or (and lt!15669 lt!15665) (and (not lt!15669) (is-Implies!74 f!4625) lt!15665)))))

(assert (=> b!73601 (= lt!15665 e!39782)))

(declare-fun c!17779 () Bool)

(assert (=> b!73601 (= c!17779 (or lt!15669 (is-Implies!74 f!4625)))))

(assert (=> b!73601 (= lt!15669 (is-Or!74 f!4625))))

(declare-fun b!73602 () Bool)

(declare-fun e!39787 () Formula!70)

(declare-fun e!39777 () Formula!70)

(assert (=> b!73602 (= e!39787 e!39777)))

(declare-fun c!17785 () Bool)

(declare-fun e!39783 () Bool)

(assert (=> b!73602 (= c!17785 e!39783)))

(declare-fun res!36132 () Bool)

(assert (=> b!73602 (=> (not res!36132) (not e!39783))))

(declare-fun lt!15664 () Bool)

(assert (=> b!73602 (= res!36132 lt!15664)))

(assert (=> b!73602 (= lt!15664 (is-Or!74 f!4625))))

(declare-fun b!73603 () Bool)

(declare-fun e!39785 () Bool)

(assert (=> b!73603 (= e!39785 lt!15672)))

(declare-fun b!73604 () Bool)

(assert (=> b!73604 (= e!39789 (isNNF!0 e!39787))))

(declare-fun c!17784 () Bool)

(declare-fun lt!15670 () Bool)

(assert (=> b!73604 (= c!17784 lt!15670)))

(declare-fun b!73605 () Bool)

(declare-fun e!39784 () Bool)

(declare-fun e!39781 () Bool)

(assert (=> b!73605 (= e!39784 e!39781)))

(declare-fun res!36133 () Bool)

(assert (=> b!73605 (=> (not res!36133) (not e!39781))))

(declare-fun lt!15667 () Bool)

(assert (=> b!73605 (= res!36133 lt!15667)))

(declare-fun b!73606 () Bool)

(assert (=> b!73606 (= e!39777 (rhs!1323 f!4625))))

(declare-fun b!73607 () Bool)

(declare-fun e!39780 () Bool)

(declare-fun lt!15666 () Bool)

(assert (=> b!73607 (= e!39780 (and lt!15672 lt!15666))))

(declare-fun b!73608 () Bool)

(assert (=> b!73608 (= e!39782 lt!15672)))

(declare-fun b!73609 () Bool)

(declare-fun e!39790 () Bool)

(declare-fun res!36130 () Bool)

(assert (=> b!73609 (= e!39790 res!36130)))

(assert (=> b!73609 true))

(assert (=> b!73609 true))

(declare-fun b!73610 () Bool)

(assert (=> b!73610 (= e!39790 lt!15666)))

(declare-fun b!73611 () Bool)

(declare-fun e!39786 () Bool)

(declare-fun res!36135 () Bool)

(assert (=> b!73611 (= e!39786 res!36135)))

(assert (=> b!73611 true))

(declare-fun b!73612 () Bool)

(assert (=> b!73612 (= e!39784 (or (and (is-Not!74 f!4625) (is-Literal!68 (f!4663 f!4625))) (not (is-Not!74 f!4625))))))

(declare-fun b!73613 () Bool)

(assert (=> b!73613 (= e!39783 e!39785)))

(declare-fun c!17780 () Bool)

(assert (=> b!73613 (= c!17780 (or lt!15664 (is-Implies!74 f!4625)))))

(declare-fun b!73614 () Bool)

(declare-fun e!39778 () Bool)

(assert (=> b!73614 (= e!39778 e!39788)))

(declare-fun res!36136 () Bool)

(assert (=> b!73614 (=> (not res!36136) (not e!39788))))

(declare-fun lt!15671 () Bool)

(assert (=> b!73614 (= res!36136 (not lt!15671))))

(declare-fun b!73615 () Bool)

(assert (=> b!73615 (= e!39786 (isNNF!0 (ite lt!15671 (lhs!1324 f!4625) (ite (is-Or!74 f!4625) (lhs!1325 f!4625) (lhs!1323 f!4625)))))))

(declare-fun b!73616 () Bool)

(assert (=> b!73616 (= e!39780 e!39784)))

(declare-fun c!17781 () Bool)

(declare-fun lt!15668 () Bool)

(assert (=> b!73616 (= c!17781 (or lt!15668 (is-Implies!74 f!4625)))))

(assert (=> b!73616 (= lt!15667 e!39779)))

(declare-fun c!17782 () Bool)

(assert (=> b!73616 (= c!17782 (or lt!15668 (is-Implies!74 f!4625)))))

(assert (=> b!73616 (= lt!15668 (is-Or!74 f!4625))))

(declare-fun b!73617 () Bool)

(assert (=> b!73617 (= e!39781 e!39790)))

(declare-fun c!17783 () Bool)

(assert (=> b!73617 (= c!17783 (or (and lt!15668 lt!15667) (and (not lt!15668) (is-Implies!74 f!4625) lt!15667)))))

(declare-fun b!73618 () Bool)

(declare-fun res!36138 () Bool)

(assert (=> b!73618 (= e!39779 res!36138)))

(assert (=> b!73618 true))

(declare-fun d!54773 () Bool)

(declare-fun c!17776 () Bool)

(assert (=> d!54773 (= c!17776 lt!15671)))

(assert (=> d!54773 (= lt!15666 e!39789)))

(declare-fun c!17778 () Bool)

(assert (=> d!54773 (= c!17778 e!39778)))

(declare-fun res!36129 () Bool)

(assert (=> d!54773 (=> res!36129 e!39778)))

(assert (=> d!54773 (= res!36129 lt!15670)))

(assert (=> d!54773 (= lt!15670 (and lt!15671 lt!15672))))

(assert (=> d!54773 (= lt!15672 e!39786)))

(declare-fun c!17777 () Bool)

(assert (=> d!54773 (= c!17777 (or lt!15671 (is-Or!74 f!4625) (is-Implies!74 f!4625)))))

(assert (=> d!54773 (= lt!15671 (is-And!74 f!4625))))

(assert (=> d!54773 (= (isNNF!0 f!4625) e!39780)))

(declare-fun b!73619 () Bool)

(assert (=> b!73619 (= e!39787 (rhs!1324 f!4625))))

(declare-fun b!73620 () Bool)

(declare-fun res!36134 () Bool)

(assert (=> b!73620 (= e!39785 res!36134)))

(assert (=> b!73620 true))

(declare-fun b!73621 () Bool)

(assert (=> b!73621 (= e!39777 (rhs!1325 f!4625))))

(assert (= (and d!54773 c!17777) b!73615))

(assert (= (and d!54773 (not c!17777)) b!73611))

(assert (= (and d!54773 (not res!36129)) b!73614))

(assert (= (and b!73614 res!36136) b!73601))

(assert (= (and b!73601 c!17779) b!73608))

(assert (= (and b!73601 (not c!17779)) b!73599))

(assert (= (and b!73602 res!36132) b!73613))

(assert (= (and b!73613 c!17780) b!73603))

(assert (= (and b!73613 (not c!17780)) b!73620))

(assert (= (and b!73602 c!17785) b!73621))

(assert (= (and b!73602 (not c!17785)) b!73606))

(assert (= (and b!73604 c!17784) b!73619))

(assert (= (and b!73604 (not c!17784)) b!73602))

(assert (= (and d!54773 c!17778) b!73604))

(assert (= (and d!54773 (not c!17778)) b!73600))

(assert (= (and b!73616 c!17782) b!73598))

(assert (= (and b!73616 (not c!17782)) b!73618))

(assert (= (and b!73605 res!36133) b!73617))

(assert (= (and b!73617 c!17783) b!73610))

(assert (= (and b!73617 (not c!17783)) b!73609))

(assert (= (and b!73616 c!17781) b!73605))

(assert (= (and b!73616 (not c!17781)) b!73612))

(assert (= (and d!54773 c!17776) b!73607))

(assert (= (and d!54773 (not c!17776)) b!73616))

(declare-fun m!72830 () Bool)

(assert (=> b!73604 m!72830))

(declare-fun m!72832 () Bool)

(assert (=> b!73615 m!72832))

(assert (=> b!73513 d!54773))

(declare-fun b!73622 () Bool)

(declare-fun e!39793 () Bool)

(declare-fun lt!15681 () Bool)

(assert (=> b!73622 (= e!39793 lt!15681)))

(declare-fun b!73623 () Bool)

(declare-fun e!39796 () Bool)

(declare-fun res!36147 () Bool)

(assert (=> b!73623 (= e!39796 res!36147)))

(assert (=> b!73623 true))

(declare-fun b!73624 () Bool)

(declare-fun e!39803 () Bool)

(declare-fun res!36141 () Bool)

(assert (=> b!73624 (= e!39803 res!36141)))

(assert (=> b!73624 true))

(declare-fun lt!15674 () Bool)

(declare-fun lt!15678 () Bool)

(declare-fun b!73625 () Bool)

(declare-fun e!39802 () Bool)

(assert (=> b!73625 (= e!39802 (or (and lt!15678 lt!15674) (and (not lt!15678) (is-Implies!74 f!4611) lt!15674)))))

(assert (=> b!73625 (= lt!15674 e!39796)))

(declare-fun c!17789 () Bool)

(assert (=> b!73625 (= c!17789 (or lt!15678 (is-Implies!74 f!4611)))))

(assert (=> b!73625 (= lt!15678 (is-Or!74 f!4611))))

(declare-fun b!73626 () Bool)

(declare-fun e!39801 () Formula!70)

(declare-fun e!39791 () Formula!70)

(assert (=> b!73626 (= e!39801 e!39791)))

(declare-fun c!17795 () Bool)

(declare-fun e!39797 () Bool)

(assert (=> b!73626 (= c!17795 e!39797)))

(declare-fun res!36142 () Bool)

(assert (=> b!73626 (=> (not res!36142) (not e!39797))))

(declare-fun lt!15673 () Bool)

(assert (=> b!73626 (= res!36142 lt!15673)))

(assert (=> b!73626 (= lt!15673 (is-Or!74 f!4611))))

(declare-fun b!73627 () Bool)

(declare-fun e!39799 () Bool)

(assert (=> b!73627 (= e!39799 lt!15681)))

(declare-fun b!73628 () Bool)

(assert (=> b!73628 (= e!39803 (isNNF!0 e!39801))))

(declare-fun c!17794 () Bool)

(declare-fun lt!15679 () Bool)

(assert (=> b!73628 (= c!17794 lt!15679)))

(declare-fun b!73629 () Bool)

(declare-fun e!39798 () Bool)

(declare-fun e!39795 () Bool)

(assert (=> b!73629 (= e!39798 e!39795)))

(declare-fun res!36143 () Bool)

(assert (=> b!73629 (=> (not res!36143) (not e!39795))))

(declare-fun lt!15676 () Bool)

(assert (=> b!73629 (= res!36143 lt!15676)))

(declare-fun b!73630 () Bool)

(assert (=> b!73630 (= e!39791 (rhs!1323 f!4611))))

(declare-fun b!73631 () Bool)

(declare-fun e!39794 () Bool)

(declare-fun lt!15675 () Bool)

(assert (=> b!73631 (= e!39794 (and lt!15681 lt!15675))))

(declare-fun b!73632 () Bool)

(assert (=> b!73632 (= e!39796 lt!15681)))

(declare-fun b!73633 () Bool)

(declare-fun e!39804 () Bool)

(declare-fun res!36140 () Bool)

(assert (=> b!73633 (= e!39804 res!36140)))

(assert (=> b!73633 true))

(assert (=> b!73633 true))

(declare-fun b!73634 () Bool)

(assert (=> b!73634 (= e!39804 lt!15675)))

(declare-fun b!73635 () Bool)

(declare-fun e!39800 () Bool)

(declare-fun res!36145 () Bool)

(assert (=> b!73635 (= e!39800 res!36145)))

(assert (=> b!73635 true))

(declare-fun b!73636 () Bool)

(assert (=> b!73636 (= e!39798 (or (and (is-Not!74 f!4611) (is-Literal!68 (f!4663 f!4611))) (not (is-Not!74 f!4611))))))

(declare-fun b!73637 () Bool)

(assert (=> b!73637 (= e!39797 e!39799)))

(declare-fun c!17790 () Bool)

(assert (=> b!73637 (= c!17790 (or lt!15673 (is-Implies!74 f!4611)))))

(declare-fun b!73638 () Bool)

(declare-fun e!39792 () Bool)

(assert (=> b!73638 (= e!39792 e!39802)))

(declare-fun res!36146 () Bool)

(assert (=> b!73638 (=> (not res!36146) (not e!39802))))

(declare-fun lt!15680 () Bool)

(assert (=> b!73638 (= res!36146 (not lt!15680))))

(declare-fun b!73639 () Bool)

(assert (=> b!73639 (= e!39800 (isNNF!0 (ite lt!15680 (lhs!1324 f!4611) (ite (is-Or!74 f!4611) (lhs!1325 f!4611) (lhs!1323 f!4611)))))))

(declare-fun b!73640 () Bool)

(assert (=> b!73640 (= e!39794 e!39798)))

(declare-fun c!17791 () Bool)

(declare-fun lt!15677 () Bool)

(assert (=> b!73640 (= c!17791 (or lt!15677 (is-Implies!74 f!4611)))))

(assert (=> b!73640 (= lt!15676 e!39793)))

(declare-fun c!17792 () Bool)

(assert (=> b!73640 (= c!17792 (or lt!15677 (is-Implies!74 f!4611)))))

(assert (=> b!73640 (= lt!15677 (is-Or!74 f!4611))))

(declare-fun b!73641 () Bool)

(assert (=> b!73641 (= e!39795 e!39804)))

(declare-fun c!17793 () Bool)

(assert (=> b!73641 (= c!17793 (or (and lt!15677 lt!15676) (and (not lt!15677) (is-Implies!74 f!4611) lt!15676)))))

(declare-fun b!73642 () Bool)

(declare-fun res!36148 () Bool)

(assert (=> b!73642 (= e!39793 res!36148)))

(assert (=> b!73642 true))

(declare-fun d!54775 () Bool)

(declare-fun c!17786 () Bool)

(assert (=> d!54775 (= c!17786 lt!15680)))

(assert (=> d!54775 (= lt!15675 e!39803)))

(declare-fun c!17788 () Bool)

(assert (=> d!54775 (= c!17788 e!39792)))

(declare-fun res!36139 () Bool)

(assert (=> d!54775 (=> res!36139 e!39792)))

(assert (=> d!54775 (= res!36139 lt!15679)))

(assert (=> d!54775 (= lt!15679 (and lt!15680 lt!15681))))

(assert (=> d!54775 (= lt!15681 e!39800)))

(declare-fun c!17787 () Bool)

(assert (=> d!54775 (= c!17787 (or lt!15680 (is-Or!74 f!4611) (is-Implies!74 f!4611)))))

(assert (=> d!54775 (= lt!15680 (is-And!74 f!4611))))

(assert (=> d!54775 (= (isNNF!0 f!4611) e!39794)))

(declare-fun b!73643 () Bool)

(assert (=> b!73643 (= e!39801 (rhs!1324 f!4611))))

(declare-fun b!73644 () Bool)

(declare-fun res!36144 () Bool)

(assert (=> b!73644 (= e!39799 res!36144)))

(assert (=> b!73644 true))

(declare-fun b!73645 () Bool)

(assert (=> b!73645 (= e!39791 (rhs!1325 f!4611))))

(assert (= (and d!54775 c!17787) b!73639))

(assert (= (and d!54775 (not c!17787)) b!73635))

(assert (= (and d!54775 (not res!36139)) b!73638))

(assert (= (and b!73638 res!36146) b!73625))

(assert (= (and b!73625 c!17789) b!73632))

(assert (= (and b!73625 (not c!17789)) b!73623))

(assert (= (and b!73626 res!36142) b!73637))

(assert (= (and b!73637 c!17790) b!73627))

(assert (= (and b!73637 (not c!17790)) b!73644))

(assert (= (and b!73626 c!17795) b!73645))

(assert (= (and b!73626 (not c!17795)) b!73630))

(assert (= (and b!73628 c!17794) b!73643))

(assert (= (and b!73628 (not c!17794)) b!73626))

(assert (= (and d!54775 c!17788) b!73628))

(assert (= (and d!54775 (not c!17788)) b!73624))

(assert (= (and b!73640 c!17792) b!73622))

(assert (= (and b!73640 (not c!17792)) b!73642))

(assert (= (and b!73629 res!36143) b!73641))

(assert (= (and b!73641 c!17793) b!73634))

(assert (= (and b!73641 (not c!17793)) b!73633))

(assert (= (and b!73640 c!17791) b!73629))

(assert (= (and b!73640 (not c!17791)) b!73636))

(assert (= (and d!54775 c!17786) b!73631))

(assert (= (and d!54775 (not c!17786)) b!73640))

(declare-fun m!72834 () Bool)

(assert (=> b!73628 m!72834))

(declare-fun m!72836 () Bool)

(assert (=> b!73639 m!72836))

(assert (=> start!10192 d!54775))

(push 1)

(assert (not b!73628))

(assert (not b!73604))

(assert (not b!73615))

(assert (not b!73639))

(assert (not d!54771))

(assert (not b!73544))

(assert (not b!73540))

(assert (not b!73547))

(assert (not b!73541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

