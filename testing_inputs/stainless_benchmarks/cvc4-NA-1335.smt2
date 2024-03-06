; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9384 () Bool)

(assert start!9384)

(declare-fun res!32576 () Bool)

(declare-fun e!36715 () Bool)

(assert (=> start!9384 (=> (not res!32576) (not e!36715))))

(declare-datatypes () ((Formula!36 (And!41 (lhs!911 Formula!36) (rhs!911 Formula!36)) (Literal!35 (id!4816 Int)) (Implies!41 (lhs!912 Formula!36) (rhs!912 Formula!36)) (Or!41 (lhs!913 Formula!36) (rhs!913 Formula!36)) (Not!41 (f!4166 Formula!36)))))

(declare-fun f!3683 () Formula!36)

(declare-fun isSimplified!1 (Formula!36) Bool)

(assert (=> start!9384 (= res!32576 (isSimplified!1 f!3683))))

(assert (=> start!9384 e!36715))

(assert (=> start!9384 true))

(declare-fun b!67833 () Bool)

(declare-fun res!32577 () Bool)

(assert (=> b!67833 (=> (not res!32577) (not e!36715))))

(declare-fun f!3700 () Formula!36)

(assert (=> b!67833 (= res!32577 (and (not (is-And!41 f!3683)) (not (is-Literal!35 f!3683)) (is-Implies!41 f!3683) (= f!3700 (rhs!912 f!3683))))))

(declare-fun b!67834 () Bool)

(assert (=> b!67834 (= e!36715 (not (isSimplified!1 f!3700)))))

(assert (= (and start!9384 res!32576) b!67833))

(assert (= (and b!67833 res!32577) b!67834))

(declare-fun m!70109 () Bool)

(assert (=> start!9384 m!70109))

(declare-fun m!70111 () Bool)

(assert (=> b!67834 m!70111))

(push 1)

(assert (not start!9384))

(assert (not b!67834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67861 () Bool)

(declare-fun e!36734 () Bool)

(declare-fun lt!13641 () Bool)

(assert (=> b!67861 (= e!36734 (isSimplified!1 (ite lt!13641 (lhs!911 f!3683) (ite (is-Or!41 f!3683) (lhs!913 f!3683) (f!4166 f!3683)))))))

(declare-fun b!67862 () Bool)

(declare-fun e!36735 () Bool)

(declare-fun e!36732 () Bool)

(assert (=> b!67862 (= e!36735 e!36732)))

(declare-fun res!32607 () Bool)

(assert (=> b!67862 (=> (not res!32607) (not e!36732))))

(declare-fun lt!13640 () Bool)

(assert (=> b!67862 (= res!32607 lt!13640)))

(assert (=> b!67862 (= lt!13640 (is-Or!41 f!3683))))

(declare-fun b!67863 () Bool)

(declare-fun e!36737 () Bool)

(declare-fun res!32609 () Bool)

(assert (=> b!67863 (= e!36737 res!32609)))

(assert (=> b!67863 true))

(declare-fun b!67864 () Bool)

(declare-fun res!32605 () Bool)

(assert (=> b!67864 (= e!36734 res!32605)))

(assert (=> b!67864 true))

(declare-fun b!67865 () Bool)

(declare-fun e!36736 () Bool)

(declare-fun res!32604 () Bool)

(assert (=> b!67865 (= e!36736 res!32604)))

(assert (=> b!67865 true))

(declare-fun b!67866 () Bool)

(declare-fun e!36739 () Bool)

(declare-fun lt!13643 () Bool)

(declare-fun lt!13644 () Bool)

(assert (=> b!67866 (= e!36739 (and lt!13643 lt!13644))))

(declare-fun b!67867 () Bool)

(declare-fun lt!13639 () Bool)

(declare-fun lt!13642 () Bool)

(assert (=> b!67867 (= e!36739 (ite lt!13639 (and lt!13642 lt!13644) (and (not (is-Implies!41 f!3683)) (or (not (is-Not!41 f!3683)) lt!13642))))))

(declare-fun e!36733 () Bool)

(assert (=> b!67867 (= lt!13642 e!36733)))

(declare-fun c!15695 () Bool)

(assert (=> b!67867 (= c!15695 (or lt!13639 (and (not (is-Implies!41 f!3683)) (is-Not!41 f!3683))))))

(assert (=> b!67867 (= lt!13639 (is-Or!41 f!3683))))

(declare-fun b!67868 () Bool)

(declare-fun res!32603 () Bool)

(assert (=> b!67868 (= e!36733 res!32603)))

(assert (=> b!67868 true))

(assert (=> b!67868 true))

(declare-fun b!67869 () Bool)

(assert (=> b!67869 (= e!36732 e!36737)))

(declare-fun c!15696 () Bool)

(assert (=> b!67869 (= c!15696 (or lt!13640 (and (not (is-Implies!41 f!3683)) (is-Not!41 f!3683))))))

(declare-fun b!67870 () Bool)

(assert (=> b!67870 (= e!36733 lt!13643)))

(declare-fun b!67871 () Bool)

(declare-fun e!36738 () Bool)

(assert (=> b!67871 (= e!36738 e!36735)))

(declare-fun res!32606 () Bool)

(assert (=> b!67871 (=> (not res!32606) (not e!36735))))

(assert (=> b!67871 (= res!32606 (not lt!13641))))

(declare-fun d!53528 () Bool)

(declare-fun c!15694 () Bool)

(assert (=> d!53528 (= c!15694 lt!13641)))

(assert (=> d!53528 (= lt!13644 e!36736)))

(declare-fun c!15697 () Bool)

(assert (=> d!53528 (= c!15697 e!36738)))

(declare-fun res!32608 () Bool)

(assert (=> d!53528 (=> res!32608 e!36738)))

(declare-fun lt!13638 () Bool)

(assert (=> d!53528 (= res!32608 lt!13638)))

(assert (=> d!53528 (= lt!13638 (and lt!13641 lt!13643))))

(assert (=> d!53528 (= lt!13643 e!36734)))

(declare-fun c!15693 () Bool)

(assert (=> d!53528 (= c!15693 (or lt!13641 (is-Or!41 f!3683) (and (not (is-Implies!41 f!3683)) (is-Not!41 f!3683))))))

(assert (=> d!53528 (= lt!13641 (is-And!41 f!3683))))

(assert (=> d!53528 (= (isSimplified!1 f!3683) e!36739)))

(declare-fun b!67872 () Bool)

(assert (=> b!67872 (= e!36737 lt!13643)))

(declare-fun b!67873 () Bool)

(assert (=> b!67873 (= e!36736 (isSimplified!1 (ite lt!13638 (rhs!911 f!3683) (rhs!913 f!3683))))))

(assert (= (and d!53528 c!15693) b!67861))

(assert (= (and d!53528 (not c!15693)) b!67864))

(assert (= (and d!53528 (not res!32608)) b!67871))

(assert (= (and b!67871 res!32606) b!67862))

(assert (= (and b!67862 res!32607) b!67869))

(assert (= (and b!67869 c!15696) b!67872))

(assert (= (and b!67869 (not c!15696)) b!67863))

(assert (= (and d!53528 c!15697) b!67873))

(assert (= (and d!53528 (not c!15697)) b!67865))

(assert (= (and b!67867 c!15695) b!67870))

(assert (= (and b!67867 (not c!15695)) b!67868))

(assert (= (and d!53528 c!15694) b!67866))

(assert (= (and d!53528 (not c!15694)) b!67867))

(declare-fun m!70113 () Bool)

(assert (=> b!67861 m!70113))

(declare-fun m!70115 () Bool)

(assert (=> b!67873 m!70115))

(assert (=> start!9384 d!53528))

(declare-fun b!67874 () Bool)

(declare-fun e!36742 () Bool)

(declare-fun lt!13648 () Bool)

(assert (=> b!67874 (= e!36742 (isSimplified!1 (ite lt!13648 (lhs!911 f!3700) (ite (is-Or!41 f!3700) (lhs!913 f!3700) (f!4166 f!3700)))))))

(declare-fun b!67875 () Bool)

(declare-fun e!36743 () Bool)

(declare-fun e!36740 () Bool)

(assert (=> b!67875 (= e!36743 e!36740)))

(declare-fun res!32614 () Bool)

(assert (=> b!67875 (=> (not res!32614) (not e!36740))))

(declare-fun lt!13647 () Bool)

(assert (=> b!67875 (= res!32614 lt!13647)))

(assert (=> b!67875 (= lt!13647 (is-Or!41 f!3700))))

(declare-fun b!67876 () Bool)

(declare-fun e!36745 () Bool)

(declare-fun res!32616 () Bool)

(assert (=> b!67876 (= e!36745 res!32616)))

(assert (=> b!67876 true))

(declare-fun b!67877 () Bool)

(declare-fun res!32612 () Bool)

(assert (=> b!67877 (= e!36742 res!32612)))

(assert (=> b!67877 true))

(declare-fun b!67878 () Bool)

(declare-fun e!36744 () Bool)

(declare-fun res!32611 () Bool)

(assert (=> b!67878 (= e!36744 res!32611)))

(assert (=> b!67878 true))

(declare-fun b!67879 () Bool)

(declare-fun e!36747 () Bool)

(declare-fun lt!13650 () Bool)

(declare-fun lt!13651 () Bool)

(assert (=> b!67879 (= e!36747 (and lt!13650 lt!13651))))

(declare-fun lt!13649 () Bool)

(declare-fun b!67880 () Bool)

(declare-fun lt!13646 () Bool)

(assert (=> b!67880 (= e!36747 (ite lt!13646 (and lt!13649 lt!13651) (and (not (is-Implies!41 f!3700)) (or (not (is-Not!41 f!3700)) lt!13649))))))

(declare-fun e!36741 () Bool)

(assert (=> b!67880 (= lt!13649 e!36741)))

(declare-fun c!15700 () Bool)

(assert (=> b!67880 (= c!15700 (or lt!13646 (and (not (is-Implies!41 f!3700)) (is-Not!41 f!3700))))))

(assert (=> b!67880 (= lt!13646 (is-Or!41 f!3700))))

(declare-fun b!67881 () Bool)

(declare-fun res!32610 () Bool)

(assert (=> b!67881 (= e!36741 res!32610)))

(assert (=> b!67881 true))

(assert (=> b!67881 true))

(declare-fun b!67882 () Bool)

(assert (=> b!67882 (= e!36740 e!36745)))

(declare-fun c!15701 () Bool)

(assert (=> b!67882 (= c!15701 (or lt!13647 (and (not (is-Implies!41 f!3700)) (is-Not!41 f!3700))))))

(declare-fun b!67883 () Bool)

(assert (=> b!67883 (= e!36741 lt!13650)))

(declare-fun b!67884 () Bool)

(declare-fun e!36746 () Bool)

(assert (=> b!67884 (= e!36746 e!36743)))

(declare-fun res!32613 () Bool)

(assert (=> b!67884 (=> (not res!32613) (not e!36743))))

(assert (=> b!67884 (= res!32613 (not lt!13648))))

(declare-fun d!53530 () Bool)

(declare-fun c!15699 () Bool)

(assert (=> d!53530 (= c!15699 lt!13648)))

(assert (=> d!53530 (= lt!13651 e!36744)))

(declare-fun c!15702 () Bool)

(assert (=> d!53530 (= c!15702 e!36746)))

(declare-fun res!32615 () Bool)

(assert (=> d!53530 (=> res!32615 e!36746)))

(declare-fun lt!13645 () Bool)

(assert (=> d!53530 (= res!32615 lt!13645)))

(assert (=> d!53530 (= lt!13645 (and lt!13648 lt!13650))))

(assert (=> d!53530 (= lt!13650 e!36742)))

(declare-fun c!15698 () Bool)

(assert (=> d!53530 (= c!15698 (or lt!13648 (is-Or!41 f!3700) (and (not (is-Implies!41 f!3700)) (is-Not!41 f!3700))))))

(assert (=> d!53530 (= lt!13648 (is-And!41 f!3700))))

(assert (=> d!53530 (= (isSimplified!1 f!3700) e!36747)))

(declare-fun b!67885 () Bool)

(assert (=> b!67885 (= e!36745 lt!13650)))

(declare-fun b!67886 () Bool)

(assert (=> b!67886 (= e!36744 (isSimplified!1 (ite lt!13645 (rhs!911 f!3700) (rhs!913 f!3700))))))

(assert (= (and d!53530 c!15698) b!67874))

(assert (= (and d!53530 (not c!15698)) b!67877))

(assert (= (and d!53530 (not res!32615)) b!67884))

(assert (= (and b!67884 res!32613) b!67875))

(assert (= (and b!67875 res!32614) b!67882))

(assert (= (and b!67882 c!15701) b!67885))

(assert (= (and b!67882 (not c!15701)) b!67876))

(assert (= (and d!53530 c!15702) b!67886))

(assert (= (and d!53530 (not c!15702)) b!67878))

(assert (= (and b!67880 c!15700) b!67883))

(assert (= (and b!67880 (not c!15700)) b!67881))

(assert (= (and d!53530 c!15699) b!67879))

(assert (= (and d!53530 (not c!15699)) b!67880))

(declare-fun m!70117 () Bool)

(assert (=> b!67874 m!70117))

(declare-fun m!70119 () Bool)

(assert (=> b!67886 m!70119))

(assert (=> b!67834 d!53530))

(push 1)

(assert (not b!67874))

(assert (not b!67886))

(assert (not b!67861))

(assert (not b!67873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

