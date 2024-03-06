; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9266 () Bool)

(assert start!9266)

(declare-fun b!65711 () Bool)

(declare-fun res!30999 () Bool)

(declare-fun e!35639 () Bool)

(assert (=> b!65711 (=> (not res!30999) (not e!35639))))

(declare-datatypes () ((Formula!19 (And!24 (lhs!860 Formula!19) (rhs!860 Formula!19)) (Literal!18 (id!4799 Int)) (Implies!24 (lhs!861 Formula!19) (rhs!861 Formula!19)) (Or!24 (lhs!862 Formula!19) (rhs!862 Formula!19)) (Not!24 (f!4113 Formula!19)))))

(declare-fun f!3812 () Formula!19)

(declare-fun f!3790 () Formula!19)

(assert (=> b!65711 (= res!30999 (= f!3812 (lhs!862 f!3790)))))

(declare-fun b!65712 () Bool)

(declare-fun isNNF!1 (Formula!19) Bool)

(assert (=> b!65712 (= e!35639 (not (isNNF!1 f!3812)))))

(declare-fun b!65710 () Bool)

(declare-fun res!31000 () Bool)

(assert (=> b!65710 (=> (not res!31000) (not e!35639))))

(declare-fun inductVal!340 () Bool)

(declare-fun nnfIsStable!1 (Formula!19) Bool)

(assert (=> b!65710 (= res!31000 (= inductVal!340 (nnfIsStable!1 (rhs!862 f!3790))))))

(declare-fun res!30997 () Bool)

(assert (=> start!9266 (=> (not res!30997) (not e!35639))))

(assert (=> start!9266 (= res!30997 (isNNF!1 f!3790))))

(assert (=> start!9266 e!35639))

(assert (=> start!9266 true))

(declare-fun b!65709 () Bool)

(declare-fun res!30998 () Bool)

(assert (=> b!65709 (=> (not res!30998) (not e!35639))))

(assert (=> b!65709 (= res!30998 (and (not (is-And!24 f!3790)) (not (is-Literal!18 f!3790)) (not (is-Implies!24 f!3790)) (is-Or!24 f!3790)))))

(assert (= (and start!9266 res!30997) b!65709))

(assert (= (and b!65709 res!30998) b!65710))

(assert (= (and b!65710 res!31000) b!65711))

(assert (= (and b!65711 res!30999) b!65712))

(declare-fun m!69523 () Bool)

(assert (=> b!65712 m!69523))

(declare-fun m!69525 () Bool)

(assert (=> b!65710 m!69525))

(declare-fun m!69527 () Bool)

(assert (=> start!9266 m!69527))

(push 1)

(assert (not b!65710))

(assert (not b!65712))

(assert (not start!9266))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53384 () Bool)

(declare-fun e!35652 () Bool)

(assert (=> d!53384 e!35652))

(declare-fun c!14770 () Bool)

(declare-fun lt!12676 () Bool)

(assert (=> d!53384 (= c!14770 (or lt!12676 (is-Literal!18 (rhs!862 f!3790))))))

(declare-fun lt!12671 () Formula!19)

(declare-fun e!35656 () Formula!19)

(assert (=> d!53384 (= lt!12671 e!35656)))

(declare-fun c!14767 () Bool)

(assert (=> d!53384 (= c!14767 (or lt!12676 (is-Literal!18 (rhs!862 f!3790))))))

(declare-fun lt!12672 () Bool)

(declare-fun e!35654 () Bool)

(assert (=> d!53384 (= lt!12672 e!35654)))

(declare-fun c!14769 () Bool)

(assert (=> d!53384 (= c!14769 (or lt!12676 (and (not (is-Literal!18 (rhs!862 f!3790))) (or (is-Implies!24 (rhs!862 f!3790)) (is-Or!24 (rhs!862 f!3790))))))))

(declare-fun lt!12673 () Bool)

(declare-fun e!35657 () Bool)

(assert (=> d!53384 (= lt!12673 e!35657)))

(declare-fun c!14771 () Bool)

(assert (=> d!53384 (= c!14771 (or lt!12676 (not (is-Literal!18 (rhs!862 f!3790)))))))

(assert (=> d!53384 (= lt!12676 (is-And!24 (rhs!862 f!3790)))))

(assert (=> d!53384 (isNNF!1 (rhs!862 f!3790))))

(assert (=> d!53384 (= (nnfIsStable!1 (rhs!862 f!3790)) true)))

(declare-fun b!65737 () Bool)

(declare-fun res!31030 () Bool)

(assert (=> b!65737 (= e!35657 res!31030)))

(assert (=> b!65737 true))

(declare-fun b!65738 () Bool)

(declare-fun e!35653 () Bool)

(declare-fun lt!12674 () Formula!19)

(assert (=> b!65738 (= e!35653 (= lt!12674 (rhs!862 f!3790)))))

(declare-fun b!65739 () Bool)

(declare-fun nnf!1 (Formula!19) Formula!19)

(assert (=> b!65739 (= e!35653 (= (nnf!1 (rhs!862 f!3790)) (rhs!862 f!3790)))))

(declare-fun b!65740 () Bool)

(assert (=> b!65740 (= e!35656 (nnf!1 (rhs!862 f!3790)))))

(declare-fun b!65741 () Bool)

(assert (=> b!65741 (= e!35654 (nnfIsStable!1 (ite lt!12676 (lhs!860 (rhs!862 f!3790)) (ite (is-Implies!24 (rhs!862 f!3790)) (lhs!861 (rhs!862 f!3790)) (lhs!862 (rhs!862 f!3790))))))))

(declare-fun b!65742 () Bool)

(assert (=> b!65742 (= e!35657 (nnfIsStable!1 (ite lt!12676 (rhs!860 (rhs!862 f!3790)) (ite (is-Implies!24 (rhs!862 f!3790)) (rhs!861 (rhs!862 f!3790)) (ite (is-Or!24 (rhs!862 f!3790)) (rhs!862 (rhs!862 f!3790)) (f!4113 (rhs!862 f!3790)))))))))

(declare-fun b!65743 () Bool)

(declare-fun res!31032 () Bool)

(assert (=> b!65743 (= e!35654 res!31032)))

(assert (=> b!65743 true))

(declare-fun b!65744 () Bool)

(declare-fun e!35655 () Formula!19)

(assert (=> b!65744 (= e!35655 (nnf!1 (rhs!862 f!3790)))))

(declare-fun b!65745 () Bool)

(declare-fun res!31031 () Formula!19)

(assert (=> b!65745 (= e!35656 res!31031)))

(assert (=> b!65745 true))

(declare-fun b!65746 () Bool)

(declare-fun res!31033 () Formula!19)

(assert (=> b!65746 (= e!35655 res!31033)))

(assert (=> b!65746 true))

(assert (=> b!65746 true))

(declare-fun b!65747 () Bool)

(assert (=> b!65747 (= e!35652 (= lt!12671 (rhs!862 f!3790)))))

(declare-fun b!65748 () Bool)

(assert (=> b!65748 (= e!35652 e!35653)))

(declare-fun c!14766 () Bool)

(declare-fun lt!12675 () Bool)

(assert (=> b!65748 (= c!14766 (or lt!12675 (is-Or!24 (rhs!862 f!3790))))))

(assert (=> b!65748 (= lt!12674 e!35655)))

(declare-fun c!14768 () Bool)

(assert (=> b!65748 (= c!14768 (or lt!12675 (is-Or!24 (rhs!862 f!3790))))))

(assert (=> b!65748 (= lt!12675 (is-Implies!24 (rhs!862 f!3790)))))

(assert (= (and d!53384 c!14771) b!65742))

(assert (= (and d!53384 (not c!14771)) b!65737))

(assert (= (and d!53384 c!14769) b!65741))

(assert (= (and d!53384 (not c!14769)) b!65743))

(assert (= (and d!53384 c!14767) b!65740))

(assert (= (and d!53384 (not c!14767)) b!65745))

(assert (= (and b!65748 c!14768) b!65744))

(assert (= (and b!65748 (not c!14768)) b!65746))

(assert (= (and b!65748 c!14766) b!65738))

(assert (= (and b!65748 (not c!14766)) b!65739))

(assert (= (and d!53384 c!14770) b!65747))

(assert (= (and d!53384 (not c!14770)) b!65748))

(declare-fun m!69529 () Bool)

(assert (=> b!65740 m!69529))

(declare-fun m!69531 () Bool)

(assert (=> b!65741 m!69531))

(declare-fun m!69533 () Bool)

(assert (=> b!65742 m!69533))

(assert (=> b!65744 m!69529))

(declare-fun m!69535 () Bool)

(assert (=> d!53384 m!69535))

(assert (=> b!65739 m!69529))

(assert (=> b!65710 d!53384))

(declare-fun b!65763 () Bool)

(declare-fun e!35666 () Bool)

(declare-fun e!35667 () Bool)

(assert (=> b!65763 (= e!35666 e!35667)))

(declare-fun c!14778 () Bool)

(declare-fun lt!12685 () Bool)

(declare-fun lt!12684 () Bool)

(declare-fun lt!12683 () Bool)

(assert (=> b!65763 (= c!14778 (or lt!12685 (and (not lt!12683) (is-Or!24 f!3812) lt!12684)))))

(declare-fun b!65764 () Bool)

(declare-fun e!35669 () Bool)

(declare-fun res!31046 () Bool)

(assert (=> b!65764 (= e!35669 res!31046)))

(assert (=> b!65764 true))

(declare-fun b!65765 () Bool)

(declare-fun e!35668 () Bool)

(assert (=> b!65765 (= e!35668 (and (not (is-Implies!24 f!3812)) (or (and (is-Not!24 f!3812) (is-Literal!18 (f!4113 f!3812))) (not (is-Not!24 f!3812)))))))

(declare-fun b!65766 () Bool)

(assert (=> b!65766 (= e!35668 e!35666)))

(declare-fun res!31047 () Bool)

(assert (=> b!65766 (=> (not res!31047) (not e!35666))))

(assert (=> b!65766 (= res!31047 lt!12684)))

(declare-fun b!65767 () Bool)

(assert (=> b!65767 (= e!35669 (isNNF!1 (ite lt!12683 (lhs!860 f!3812) (lhs!862 f!3812))))))

(declare-fun b!65768 () Bool)

(assert (=> b!65768 (= e!35667 (isNNF!1 (ite lt!12685 (rhs!860 f!3812) (rhs!862 f!3812))))))

(declare-fun d!53386 () Bool)

(declare-fun c!14779 () Bool)

(assert (=> d!53386 (= c!14779 (or lt!12683 (is-Or!24 f!3812)))))

(assert (=> d!53386 (= lt!12685 (and lt!12683 lt!12684))))

(assert (=> d!53386 (= lt!12684 e!35669)))

(declare-fun c!14780 () Bool)

(assert (=> d!53386 (= c!14780 (or lt!12683 (is-Or!24 f!3812)))))

(assert (=> d!53386 (= lt!12683 (is-And!24 f!3812))))

(assert (=> d!53386 (= (isNNF!1 f!3812) e!35668)))

(declare-fun b!65769 () Bool)

(declare-fun res!31048 () Bool)

(assert (=> b!65769 (= e!35667 res!31048)))

(assert (=> b!65769 true))

(assert (=> b!65769 true))

(assert (= (and d!53386 c!14780) b!65767))

(assert (= (and d!53386 (not c!14780)) b!65764))

(assert (= (and b!65766 res!31047) b!65763))

(assert (= (and b!65763 c!14778) b!65768))

(assert (= (and b!65763 (not c!14778)) b!65769))

(assert (= (and d!53386 c!14779) b!65766))

(assert (= (and d!53386 (not c!14779)) b!65765))

(declare-fun m!69537 () Bool)

(assert (=> b!65767 m!69537))

(declare-fun m!69539 () Bool)

(assert (=> b!65768 m!69539))

(assert (=> b!65712 d!53386))

(declare-fun b!65770 () Bool)

(declare-fun e!35670 () Bool)

(declare-fun e!35671 () Bool)

(assert (=> b!65770 (= e!35670 e!35671)))

(declare-fun lt!12687 () Bool)

(declare-fun c!14781 () Bool)

(declare-fun lt!12686 () Bool)

(declare-fun lt!12688 () Bool)

(assert (=> b!65770 (= c!14781 (or lt!12688 (and (not lt!12686) (is-Or!24 f!3790) lt!12687)))))

(declare-fun b!65771 () Bool)

(declare-fun e!35673 () Bool)

(declare-fun res!31049 () Bool)

(assert (=> b!65771 (= e!35673 res!31049)))

(assert (=> b!65771 true))

(declare-fun b!65772 () Bool)

(declare-fun e!35672 () Bool)

(assert (=> b!65772 (= e!35672 (and (not (is-Implies!24 f!3790)) (or (and (is-Not!24 f!3790) (is-Literal!18 (f!4113 f!3790))) (not (is-Not!24 f!3790)))))))

(declare-fun b!65773 () Bool)

(assert (=> b!65773 (= e!35672 e!35670)))

(declare-fun res!31050 () Bool)

(assert (=> b!65773 (=> (not res!31050) (not e!35670))))

(assert (=> b!65773 (= res!31050 lt!12687)))

(declare-fun b!65774 () Bool)

(assert (=> b!65774 (= e!35673 (isNNF!1 (ite lt!12686 (lhs!860 f!3790) (lhs!862 f!3790))))))

(declare-fun b!65775 () Bool)

(assert (=> b!65775 (= e!35671 (isNNF!1 (ite lt!12688 (rhs!860 f!3790) (rhs!862 f!3790))))))

(declare-fun d!53388 () Bool)

(declare-fun c!14782 () Bool)

(assert (=> d!53388 (= c!14782 (or lt!12686 (is-Or!24 f!3790)))))

(assert (=> d!53388 (= lt!12688 (and lt!12686 lt!12687))))

(assert (=> d!53388 (= lt!12687 e!35673)))

(declare-fun c!14783 () Bool)

(assert (=> d!53388 (= c!14783 (or lt!12686 (is-Or!24 f!3790)))))

(assert (=> d!53388 (= lt!12686 (is-And!24 f!3790))))

(assert (=> d!53388 (= (isNNF!1 f!3790) e!35672)))

(declare-fun b!65776 () Bool)

(declare-fun res!31051 () Bool)

(assert (=> b!65776 (= e!35671 res!31051)))

(assert (=> b!65776 true))

(assert (=> b!65776 true))

(assert (= (and d!53388 c!14783) b!65774))

(assert (= (and d!53388 (not c!14783)) b!65771))

(assert (= (and b!65773 res!31050) b!65770))

(assert (= (and b!65770 c!14781) b!65775))

(assert (= (and b!65770 (not c!14781)) b!65776))

(assert (= (and d!53388 c!14782) b!65773))

(assert (= (and d!53388 (not c!14782)) b!65772))

(declare-fun m!69541 () Bool)

(assert (=> b!65774 m!69541))

(declare-fun m!69543 () Bool)

(assert (=> b!65775 m!69543))

(assert (=> start!9266 d!53388))

(push 1)

(assert (not b!65740))

(assert (not d!53384))

(assert (not b!65774))

(assert (not b!65739))

(assert (not b!65741))

(assert (not b!65744))

(assert (not b!65767))

(assert (not b!65775))

(assert (not b!65742))

(assert (not b!65768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

