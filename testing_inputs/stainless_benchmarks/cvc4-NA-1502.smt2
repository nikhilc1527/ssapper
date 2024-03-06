; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10198 () Bool)

(assert start!10198)

(declare-fun res!36153 () Bool)

(declare-fun e!39807 () Bool)

(assert (=> start!10198 (=> (not res!36153) (not e!39807))))

(declare-datatypes () ((Formula!71 (Implies!75 (lhs!1326 Formula!71) (rhs!1326 Formula!71)) (And!75 (lhs!1327 Formula!71) (rhs!1327 Formula!71)) (Or!75 (lhs!1328 Formula!71) (rhs!1328 Formula!71)) (Literal!69 (id!4932 (_ BitVec 32))) (Not!75 (f!4666 Formula!71)))))

(declare-fun f!4611 () Formula!71)

(declare-fun isNNF!0 (Formula!71) Bool)

(assert (=> start!10198 (= res!36153 (isNNF!0 f!4611))))

(assert (=> start!10198 e!39807))

(assert (=> start!10198 true))

(declare-fun b!73650 () Bool)

(declare-fun res!36154 () Bool)

(assert (=> b!73650 (=> (not res!36154) (not e!39807))))

(declare-fun f!4629 () Formula!71)

(assert (=> b!73650 (= res!36154 (and (not (is-Implies!75 f!4611)) (not (is-And!75 f!4611)) (is-Or!75 f!4611) (= f!4629 (rhs!1328 f!4611))))))

(declare-fun b!73651 () Bool)

(assert (=> b!73651 (= e!39807 (not (isNNF!0 f!4629)))))

(assert (= (and start!10198 res!36153) b!73650))

(assert (= (and b!73650 res!36154) b!73651))

(declare-fun m!72838 () Bool)

(assert (=> start!10198 m!72838))

(declare-fun m!72840 () Bool)

(assert (=> b!73651 m!72840))

(push 1)

(assert (not b!73651))

(assert (not start!10198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54777 () Bool)

(declare-fun c!17823 () Bool)

(declare-fun lt!15704 () Bool)

(assert (=> d!54777 (= c!17823 lt!15704)))

(declare-fun lt!15703 () Bool)

(declare-fun e!39843 () Bool)

(assert (=> d!54777 (= lt!15703 e!39843)))

(declare-fun c!17824 () Bool)

(declare-fun e!39841 () Bool)

(assert (=> d!54777 (= c!17824 e!39841)))

(declare-fun res!36190 () Bool)

(assert (=> d!54777 (=> res!36190 e!39841)))

(declare-fun lt!15708 () Bool)

(assert (=> d!54777 (= res!36190 lt!15708)))

(declare-fun lt!15707 () Bool)

(assert (=> d!54777 (= lt!15708 (and lt!15704 lt!15707))))

(declare-fun e!39849 () Bool)

(assert (=> d!54777 (= lt!15707 e!39849)))

(declare-fun c!17825 () Bool)

(assert (=> d!54777 (= c!17825 (or lt!15704 (is-Or!75 f!4629) (is-Implies!75 f!4629)))))

(assert (=> d!54777 (= lt!15704 (is-And!75 f!4629))))

(declare-fun e!39842 () Bool)

(assert (=> d!54777 (= (isNNF!0 f!4629) e!39842)))

(declare-fun b!73700 () Bool)

(declare-fun e!39839 () Bool)

(assert (=> b!73700 (= e!39839 (or (and (is-Not!75 f!4629) (is-Literal!69 (f!4666 f!4629))) (not (is-Not!75 f!4629))))))

(declare-fun b!73701 () Bool)

(declare-fun e!39840 () Bool)

(declare-fun e!39837 () Bool)

(assert (=> b!73701 (= e!39840 e!39837)))

(declare-fun c!17817 () Bool)

(declare-fun lt!15702 () Bool)

(declare-fun lt!15706 () Bool)

(assert (=> b!73701 (= c!17817 (or (and lt!15702 lt!15706) (and (not lt!15702) (is-Implies!75 f!4629) lt!15706)))))

(declare-fun b!73702 () Bool)

(declare-fun e!39848 () Bool)

(assert (=> b!73702 (= e!39848 lt!15707)))

(declare-fun b!73703 () Bool)

(declare-fun e!39844 () Formula!71)

(assert (=> b!73703 (= e!39844 (rhs!1327 f!4629))))

(declare-fun b!73704 () Bool)

(declare-fun e!39847 () Bool)

(assert (=> b!73704 (= e!39841 e!39847)))

(declare-fun res!36192 () Bool)

(assert (=> b!73704 (=> (not res!36192) (not e!39847))))

(assert (=> b!73704 (= res!36192 (not lt!15704))))

(declare-fun b!73705 () Bool)

(assert (=> b!73705 (= e!39842 (and lt!15707 lt!15703))))

(declare-fun b!73706 () Bool)

(assert (=> b!73706 (= e!39839 e!39840)))

(declare-fun res!36191 () Bool)

(assert (=> b!73706 (=> (not res!36191) (not e!39840))))

(assert (=> b!73706 (= res!36191 lt!15706)))

(declare-fun b!73707 () Bool)

(declare-fun res!36198 () Bool)

(assert (=> b!73707 (= e!39849 res!36198)))

(assert (=> b!73707 true))

(declare-fun b!73708 () Bool)

(declare-fun res!36194 () Bool)

(assert (=> b!73708 (= e!39837 res!36194)))

(assert (=> b!73708 true))

(assert (=> b!73708 true))

(declare-fun b!73709 () Bool)

(declare-fun e!39838 () Bool)

(declare-fun e!39846 () Bool)

(assert (=> b!73709 (= e!39838 e!39846)))

(declare-fun c!17816 () Bool)

(declare-fun lt!15700 () Bool)

(assert (=> b!73709 (= c!17816 (or lt!15700 (is-Implies!75 f!4629)))))

(declare-fun b!73710 () Bool)

(declare-fun e!39836 () Bool)

(declare-fun res!36193 () Bool)

(assert (=> b!73710 (= e!39836 res!36193)))

(assert (=> b!73710 true))

(declare-fun b!73711 () Bool)

(declare-fun res!36197 () Bool)

(assert (=> b!73711 (= e!39846 res!36197)))

(assert (=> b!73711 true))

(declare-fun b!73712 () Bool)

(assert (=> b!73712 (= e!39843 (isNNF!0 e!39844))))

(declare-fun c!17818 () Bool)

(assert (=> b!73712 (= c!17818 lt!15708)))

(declare-fun b!73713 () Bool)

(assert (=> b!73713 (= e!39842 e!39839)))

(declare-fun c!17819 () Bool)

(assert (=> b!73713 (= c!17819 (or lt!15702 (is-Implies!75 f!4629)))))

(assert (=> b!73713 (= lt!15706 e!39836)))

(declare-fun c!17820 () Bool)

(assert (=> b!73713 (= c!17820 (or lt!15702 (is-Implies!75 f!4629)))))

(assert (=> b!73713 (= lt!15702 (is-Or!75 f!4629))))

(declare-fun b!73714 () Bool)

(declare-fun res!36189 () Bool)

(assert (=> b!73714 (= e!39848 res!36189)))

(assert (=> b!73714 true))

(declare-fun b!73715 () Bool)

(assert (=> b!73715 (= e!39836 lt!15707)))

(declare-fun b!73716 () Bool)

(assert (=> b!73716 (= e!39849 (isNNF!0 (ite lt!15704 (lhs!1327 f!4629) (ite (is-Or!75 f!4629) (lhs!1328 f!4629) (lhs!1326 f!4629)))))))

(declare-fun b!73717 () Bool)

(declare-fun e!39845 () Formula!71)

(assert (=> b!73717 (= e!39844 e!39845)))

(declare-fun c!17822 () Bool)

(assert (=> b!73717 (= c!17822 e!39838)))

(declare-fun res!36196 () Bool)

(assert (=> b!73717 (=> (not res!36196) (not e!39838))))

(assert (=> b!73717 (= res!36196 lt!15700)))

(assert (=> b!73717 (= lt!15700 (is-Or!75 f!4629))))

(declare-fun b!73718 () Bool)

(assert (=> b!73718 (= e!39845 (rhs!1326 f!4629))))

(declare-fun b!73719 () Bool)

(assert (=> b!73719 (= e!39845 (rhs!1328 f!4629))))

(declare-fun b!73720 () Bool)

(declare-fun res!36195 () Bool)

(assert (=> b!73720 (= e!39843 res!36195)))

(assert (=> b!73720 true))

(declare-fun b!73721 () Bool)

(assert (=> b!73721 (= e!39846 lt!15707)))

(declare-fun lt!15705 () Bool)

(declare-fun lt!15701 () Bool)

(declare-fun b!73722 () Bool)

(assert (=> b!73722 (= e!39847 (or (and lt!15705 lt!15701) (and (not lt!15705) (is-Implies!75 f!4629) lt!15701)))))

(assert (=> b!73722 (= lt!15701 e!39848)))

(declare-fun c!17821 () Bool)

(assert (=> b!73722 (= c!17821 (or lt!15705 (is-Implies!75 f!4629)))))

(assert (=> b!73722 (= lt!15705 (is-Or!75 f!4629))))

(declare-fun b!73723 () Bool)

(assert (=> b!73723 (= e!39837 lt!15703)))

(assert (= (and d!54777 c!17825) b!73716))

(assert (= (and d!54777 (not c!17825)) b!73707))

(assert (= (and d!54777 (not res!36190)) b!73704))

(assert (= (and b!73704 res!36192) b!73722))

(assert (= (and b!73722 c!17821) b!73702))

(assert (= (and b!73722 (not c!17821)) b!73714))

(assert (= (and b!73717 res!36196) b!73709))

(assert (= (and b!73709 c!17816) b!73721))

(assert (= (and b!73709 (not c!17816)) b!73711))

(assert (= (and b!73717 c!17822) b!73719))

(assert (= (and b!73717 (not c!17822)) b!73718))

(assert (= (and b!73712 c!17818) b!73703))

(assert (= (and b!73712 (not c!17818)) b!73717))

(assert (= (and d!54777 c!17824) b!73712))

(assert (= (and d!54777 (not c!17824)) b!73720))

(assert (= (and b!73713 c!17820) b!73715))

(assert (= (and b!73713 (not c!17820)) b!73710))

(assert (= (and b!73706 res!36191) b!73701))

(assert (= (and b!73701 c!17817) b!73723))

(assert (= (and b!73701 (not c!17817)) b!73708))

(assert (= (and b!73713 c!17819) b!73706))

(assert (= (and b!73713 (not c!17819)) b!73700))

(assert (= (and d!54777 c!17823) b!73705))

(assert (= (and d!54777 (not c!17823)) b!73713))

(declare-fun m!72842 () Bool)

(assert (=> b!73712 m!72842))

(declare-fun m!72844 () Bool)

(assert (=> b!73716 m!72844))

(assert (=> b!73651 d!54777))

(declare-fun d!54779 () Bool)

(declare-fun c!17833 () Bool)

(declare-fun lt!15713 () Bool)

(assert (=> d!54779 (= c!17833 lt!15713)))

(declare-fun lt!15712 () Bool)

(declare-fun e!39857 () Bool)

(assert (=> d!54779 (= lt!15712 e!39857)))

(declare-fun c!17834 () Bool)

(declare-fun e!39855 () Bool)

(assert (=> d!54779 (= c!17834 e!39855)))

(declare-fun res!36200 () Bool)

(assert (=> d!54779 (=> res!36200 e!39855)))

(declare-fun lt!15717 () Bool)

(assert (=> d!54779 (= res!36200 lt!15717)))

(declare-fun lt!15716 () Bool)

(assert (=> d!54779 (= lt!15717 (and lt!15713 lt!15716))))

(declare-fun e!39863 () Bool)

(assert (=> d!54779 (= lt!15716 e!39863)))

(declare-fun c!17835 () Bool)

(assert (=> d!54779 (= c!17835 (or lt!15713 (is-Or!75 f!4611) (is-Implies!75 f!4611)))))

(assert (=> d!54779 (= lt!15713 (is-And!75 f!4611))))

(declare-fun e!39856 () Bool)

(assert (=> d!54779 (= (isNNF!0 f!4611) e!39856)))

(declare-fun b!73724 () Bool)

(declare-fun e!39853 () Bool)

(assert (=> b!73724 (= e!39853 (or (and (is-Not!75 f!4611) (is-Literal!69 (f!4666 f!4611))) (not (is-Not!75 f!4611))))))

(declare-fun b!73725 () Bool)

(declare-fun e!39854 () Bool)

(declare-fun e!39851 () Bool)

(assert (=> b!73725 (= e!39854 e!39851)))

(declare-fun lt!15715 () Bool)

(declare-fun c!17827 () Bool)

(declare-fun lt!15711 () Bool)

(assert (=> b!73725 (= c!17827 (or (and lt!15711 lt!15715) (and (not lt!15711) (is-Implies!75 f!4611) lt!15715)))))

(declare-fun b!73726 () Bool)

(declare-fun e!39862 () Bool)

(assert (=> b!73726 (= e!39862 lt!15716)))

(declare-fun b!73727 () Bool)

(declare-fun e!39858 () Formula!71)

(assert (=> b!73727 (= e!39858 (rhs!1327 f!4611))))

(declare-fun b!73728 () Bool)

(declare-fun e!39861 () Bool)

(assert (=> b!73728 (= e!39855 e!39861)))

(declare-fun res!36202 () Bool)

(assert (=> b!73728 (=> (not res!36202) (not e!39861))))

(assert (=> b!73728 (= res!36202 (not lt!15713))))

(declare-fun b!73729 () Bool)

(assert (=> b!73729 (= e!39856 (and lt!15716 lt!15712))))

(declare-fun b!73730 () Bool)

(assert (=> b!73730 (= e!39853 e!39854)))

(declare-fun res!36201 () Bool)

(assert (=> b!73730 (=> (not res!36201) (not e!39854))))

(assert (=> b!73730 (= res!36201 lt!15715)))

(declare-fun b!73731 () Bool)

(declare-fun res!36208 () Bool)

(assert (=> b!73731 (= e!39863 res!36208)))

(assert (=> b!73731 true))

(declare-fun b!73732 () Bool)

(declare-fun res!36204 () Bool)

(assert (=> b!73732 (= e!39851 res!36204)))

(assert (=> b!73732 true))

(assert (=> b!73732 true))

(declare-fun b!73733 () Bool)

(declare-fun e!39852 () Bool)

(declare-fun e!39860 () Bool)

(assert (=> b!73733 (= e!39852 e!39860)))

(declare-fun c!17826 () Bool)

(declare-fun lt!15709 () Bool)

(assert (=> b!73733 (= c!17826 (or lt!15709 (is-Implies!75 f!4611)))))

(declare-fun b!73734 () Bool)

(declare-fun e!39850 () Bool)

(declare-fun res!36203 () Bool)

(assert (=> b!73734 (= e!39850 res!36203)))

(assert (=> b!73734 true))

(declare-fun b!73735 () Bool)

(declare-fun res!36207 () Bool)

(assert (=> b!73735 (= e!39860 res!36207)))

(assert (=> b!73735 true))

(declare-fun b!73736 () Bool)

(assert (=> b!73736 (= e!39857 (isNNF!0 e!39858))))

(declare-fun c!17828 () Bool)

(assert (=> b!73736 (= c!17828 lt!15717)))

(declare-fun b!73737 () Bool)

(assert (=> b!73737 (= e!39856 e!39853)))

(declare-fun c!17829 () Bool)

(assert (=> b!73737 (= c!17829 (or lt!15711 (is-Implies!75 f!4611)))))

(assert (=> b!73737 (= lt!15715 e!39850)))

(declare-fun c!17830 () Bool)

(assert (=> b!73737 (= c!17830 (or lt!15711 (is-Implies!75 f!4611)))))

(assert (=> b!73737 (= lt!15711 (is-Or!75 f!4611))))

(declare-fun b!73738 () Bool)

(declare-fun res!36199 () Bool)

(assert (=> b!73738 (= e!39862 res!36199)))

(assert (=> b!73738 true))

(declare-fun b!73739 () Bool)

(assert (=> b!73739 (= e!39850 lt!15716)))

(declare-fun b!73740 () Bool)

(assert (=> b!73740 (= e!39863 (isNNF!0 (ite lt!15713 (lhs!1327 f!4611) (ite (is-Or!75 f!4611) (lhs!1328 f!4611) (lhs!1326 f!4611)))))))

(declare-fun b!73741 () Bool)

(declare-fun e!39859 () Formula!71)

(assert (=> b!73741 (= e!39858 e!39859)))

(declare-fun c!17832 () Bool)

(assert (=> b!73741 (= c!17832 e!39852)))

(declare-fun res!36206 () Bool)

(assert (=> b!73741 (=> (not res!36206) (not e!39852))))

(assert (=> b!73741 (= res!36206 lt!15709)))

(assert (=> b!73741 (= lt!15709 (is-Or!75 f!4611))))

(declare-fun b!73742 () Bool)

(assert (=> b!73742 (= e!39859 (rhs!1326 f!4611))))

(declare-fun b!73743 () Bool)

(assert (=> b!73743 (= e!39859 (rhs!1328 f!4611))))

(declare-fun b!73744 () Bool)

(declare-fun res!36205 () Bool)

(assert (=> b!73744 (= e!39857 res!36205)))

(assert (=> b!73744 true))

(declare-fun b!73745 () Bool)

(assert (=> b!73745 (= e!39860 lt!15716)))

(declare-fun lt!15710 () Bool)

(declare-fun lt!15714 () Bool)

(declare-fun b!73746 () Bool)

(assert (=> b!73746 (= e!39861 (or (and lt!15714 lt!15710) (and (not lt!15714) (is-Implies!75 f!4611) lt!15710)))))

(assert (=> b!73746 (= lt!15710 e!39862)))

(declare-fun c!17831 () Bool)

(assert (=> b!73746 (= c!17831 (or lt!15714 (is-Implies!75 f!4611)))))

(assert (=> b!73746 (= lt!15714 (is-Or!75 f!4611))))

(declare-fun b!73747 () Bool)

(assert (=> b!73747 (= e!39851 lt!15712)))

(assert (= (and d!54779 c!17835) b!73740))

(assert (= (and d!54779 (not c!17835)) b!73731))

(assert (= (and d!54779 (not res!36200)) b!73728))

(assert (= (and b!73728 res!36202) b!73746))

(assert (= (and b!73746 c!17831) b!73726))

(assert (= (and b!73746 (not c!17831)) b!73738))

(assert (= (and b!73741 res!36206) b!73733))

(assert (= (and b!73733 c!17826) b!73745))

(assert (= (and b!73733 (not c!17826)) b!73735))

(assert (= (and b!73741 c!17832) b!73743))

(assert (= (and b!73741 (not c!17832)) b!73742))

(assert (= (and b!73736 c!17828) b!73727))

(assert (= (and b!73736 (not c!17828)) b!73741))

(assert (= (and d!54779 c!17834) b!73736))

(assert (= (and d!54779 (not c!17834)) b!73744))

(assert (= (and b!73737 c!17830) b!73739))

(assert (= (and b!73737 (not c!17830)) b!73734))

(assert (= (and b!73730 res!36201) b!73725))

(assert (= (and b!73725 c!17827) b!73747))

(assert (= (and b!73725 (not c!17827)) b!73732))

(assert (= (and b!73737 c!17829) b!73730))

(assert (= (and b!73737 (not c!17829)) b!73724))

(assert (= (and d!54779 c!17833) b!73729))

(assert (= (and d!54779 (not c!17833)) b!73737))

(declare-fun m!72846 () Bool)

(assert (=> b!73736 m!72846))

(declare-fun m!72848 () Bool)

(assert (=> b!73740 m!72848))

(assert (=> start!10198 d!54779))

(push 1)

(assert (not b!73736))

(assert (not b!73712))

(assert (not b!73740))

(assert (not b!73716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

