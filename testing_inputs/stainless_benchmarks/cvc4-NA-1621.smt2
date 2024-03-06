; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11266 () Bool)

(assert start!11266)

(declare-fun b!86003 () Bool)

(declare-fun res!44735 () Bool)

(declare-fun e!46650 () Bool)

(assert (=> b!86003 (=> res!44735 e!46650)))

(declare-datatypes () ((Color!5 (Red!4) (Black!4))))

(declare-datatypes () ((Tree!102 (Empty!185) (Node!146 (color!35 Color!5) (left!1645 Tree!102) (value!6792 Int) (right!1648 Tree!102)))))

(declare-fun res!44621 () Tree!102)

(declare-fun redNodesHaveBlackChildren!0 (Tree!102) Bool)

(assert (=> b!86003 (= res!44735 (not (redNodesHaveBlackChildren!0 res!44621)))))

(declare-fun b!86004 () Bool)

(declare-fun res!44732 () Bool)

(declare-fun e!46651 () Bool)

(assert (=> b!86004 (=> (not res!44732) (not e!46651))))

(declare-fun x!30384 () Int)

(declare-fun t!48204 () Tree!102)

(declare-fun makeBlack!0 (Tree!102) Tree!102)

(declare-fun ins!0 (Int Tree!102) Tree!102)

(assert (=> b!86004 (= res!44732 (= res!44621 (makeBlack!0 (ins!0 x!30384 t!48204))))))

(declare-fun b!86005 () Bool)

(declare-fun blackBalanced!0 (Tree!102) Bool)

(assert (=> b!86005 (= e!46650 (not (blackBalanced!0 res!44621)))))

(declare-fun res!44733 () Bool)

(assert (=> start!11266 (=> (not res!44733) (not e!46651))))

(assert (=> start!11266 (= res!44733 (redNodesHaveBlackChildren!0 t!48204))))

(assert (=> start!11266 e!46651))

(assert (=> start!11266 true))

(declare-fun b!86006 () Bool)

(declare-fun res!44734 () Bool)

(assert (=> b!86006 (=> (not res!44734) (not e!46651))))

(assert (=> b!86006 (= res!44734 (blackBalanced!0 t!48204))))

(declare-fun b!86007 () Bool)

(assert (=> b!86007 (= e!46651 e!46650)))

(declare-fun res!44736 () Bool)

(assert (=> b!86007 (=> res!44736 e!46650)))

(declare-fun content!8 (Tree!102) (Set Int))

(assert (=> b!86007 (= res!44736 (not (= (content!8 res!44621) (union (content!8 t!48204) (insert x!30384 (as emptyset (Set Int)))))))))

(assert (= (and start!11266 res!44733) b!86006))

(assert (= (and b!86006 res!44734) b!86004))

(assert (= (and b!86004 res!44732) b!86007))

(assert (= (and b!86007 (not res!44736)) b!86003))

(assert (= (and b!86003 (not res!44735)) b!86005))

(declare-fun m!81792 () Bool)

(assert (=> b!86004 m!81792))

(assert (=> b!86004 m!81792))

(declare-fun m!81794 () Bool)

(assert (=> b!86004 m!81794))

(declare-fun m!81796 () Bool)

(assert (=> b!86005 m!81796))

(declare-fun m!81798 () Bool)

(assert (=> b!86006 m!81798))

(declare-fun m!81800 () Bool)

(assert (=> b!86007 m!81800))

(declare-fun m!81802 () Bool)

(assert (=> b!86007 m!81802))

(declare-fun m!81804 () Bool)

(assert (=> b!86007 m!81804))

(declare-fun m!81806 () Bool)

(assert (=> start!11266 m!81806))

(declare-fun m!81808 () Bool)

(assert (=> b!86003 m!81808))

(push 1)

(assert (not start!11266))

(assert (not b!86004))

(assert (not b!86003))

(assert (not b!86007))

(assert (not b!86005))

(assert (not b!86006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57583 () Bool)

(declare-fun res!44745 () Bool)

(declare-fun e!46656 () Bool)

(assert (=> d!57583 (=> res!44745 e!46656)))

(assert (=> d!57583 (= res!44745 (not (is-Node!146 res!44621)))))

(assert (=> d!57583 (= (blackBalanced!0 res!44621) e!46656)))

(declare-fun b!86014 () Bool)

(declare-fun e!46657 () Bool)

(assert (=> b!86014 (= e!46656 e!46657)))

(declare-fun res!44744 () Bool)

(assert (=> b!86014 (=> (not res!44744) (not e!46657))))

(assert (=> b!86014 (= res!44744 (blackBalanced!0 (left!1645 res!44621)))))

(declare-fun b!86015 () Bool)

(declare-fun res!44743 () Bool)

(assert (=> b!86015 (=> (not res!44743) (not e!46657))))

(assert (=> b!86015 (= res!44743 (blackBalanced!0 (right!1648 res!44621)))))

(declare-fun b!86016 () Bool)

(declare-fun blackHeight!0 (Tree!102) Int)

(assert (=> b!86016 (= e!46657 (= (blackHeight!0 (left!1645 res!44621)) (blackHeight!0 (right!1648 res!44621))))))

(assert (= (and d!57583 (not res!44745)) b!86014))

(assert (= (and b!86014 res!44744) b!86015))

(assert (= (and b!86015 res!44743) b!86016))

(declare-fun m!81810 () Bool)

(assert (=> b!86014 m!81810))

(declare-fun m!81812 () Bool)

(assert (=> b!86015 m!81812))

(declare-fun m!81814 () Bool)

(assert (=> b!86016 m!81814))

(declare-fun m!81816 () Bool)

(assert (=> b!86016 m!81816))

(assert (=> b!86005 d!57583))

(declare-fun d!57585 () Bool)

(declare-fun c!21340 () Bool)

(assert (=> d!57585 (= c!21340 (is-Empty!185 res!44621))))

(declare-fun e!46660 () (Set Int))

(assert (=> d!57585 (= (content!8 res!44621) e!46660)))

(declare-fun b!86021 () Bool)

(assert (=> b!86021 (= e!46660 (as emptyset (Set Int)))))

(declare-fun b!86022 () Bool)

(assert (=> b!86022 (= e!46660 (union (union (content!8 (left!1645 res!44621)) (insert (value!6792 res!44621) (as emptyset (Set Int)))) (content!8 (right!1648 res!44621))))))

(assert (= (and d!57585 c!21340) b!86021))

(assert (= (and d!57585 (not c!21340)) b!86022))

(declare-fun m!81818 () Bool)

(assert (=> b!86022 m!81818))

(declare-fun m!81820 () Bool)

(assert (=> b!86022 m!81820))

(declare-fun m!81822 () Bool)

(assert (=> b!86022 m!81822))

(assert (=> b!86007 d!57585))

(declare-fun d!57587 () Bool)

(declare-fun c!21341 () Bool)

(assert (=> d!57587 (= c!21341 (is-Empty!185 t!48204))))

(declare-fun e!46661 () (Set Int))

(assert (=> d!57587 (= (content!8 t!48204) e!46661)))

(declare-fun b!86023 () Bool)

(assert (=> b!86023 (= e!46661 (as emptyset (Set Int)))))

(declare-fun b!86024 () Bool)

(assert (=> b!86024 (= e!46661 (union (union (content!8 (left!1645 t!48204)) (insert (value!6792 t!48204) (as emptyset (Set Int)))) (content!8 (right!1648 t!48204))))))

(assert (= (and d!57587 c!21341) b!86023))

(assert (= (and d!57587 (not c!21341)) b!86024))

(declare-fun m!81824 () Bool)

(assert (=> b!86024 m!81824))

(declare-fun m!81826 () Bool)

(assert (=> b!86024 m!81826))

(declare-fun m!81828 () Bool)

(assert (=> b!86024 m!81828))

(assert (=> b!86007 d!57587))

(declare-fun b!86039 () Bool)

(declare-fun e!46671 () Bool)

(assert (=> b!86039 (= e!46671 (redNodesHaveBlackChildren!0 (right!1648 res!44621)))))

(declare-fun b!86040 () Bool)

(declare-fun e!46670 () Bool)

(assert (=> b!86040 (= e!46670 e!46671)))

(declare-fun res!44759 () Bool)

(assert (=> b!86040 (=> (not res!44759) (not e!46671))))

(declare-fun isBlack!0 (Tree!102) Bool)

(assert (=> b!86040 (= res!44759 (isBlack!0 (left!1645 res!44621)))))

(declare-fun d!57589 () Bool)

(declare-fun res!44758 () Bool)

(declare-fun e!46672 () Bool)

(assert (=> d!57589 (=> res!44758 e!46672)))

(assert (=> d!57589 (= res!44758 (is-Empty!185 res!44621))))

(assert (=> d!57589 (= (redNodesHaveBlackChildren!0 res!44621) e!46672)))

(declare-fun b!86041 () Bool)

(declare-fun res!44757 () Bool)

(assert (=> b!86041 (=> (not res!44757) (not e!46671))))

(assert (=> b!86041 (= res!44757 (redNodesHaveBlackChildren!0 (left!1645 res!44621)))))

(declare-fun b!86042 () Bool)

(declare-fun res!44760 () Bool)

(assert (=> b!86042 (=> (not res!44760) (not e!46671))))

(assert (=> b!86042 (= res!44760 (isBlack!0 (right!1648 res!44621)))))

(declare-fun b!86043 () Bool)

(declare-fun e!46673 () Bool)

(assert (=> b!86043 (= e!46670 e!46673)))

(declare-fun res!44756 () Bool)

(assert (=> b!86043 (=> (not res!44756) (not e!46673))))

(assert (=> b!86043 (= res!44756 (redNodesHaveBlackChildren!0 (left!1645 res!44621)))))

(declare-fun b!86044 () Bool)

(assert (=> b!86044 (= e!46673 (redNodesHaveBlackChildren!0 (right!1648 res!44621)))))

(declare-fun b!86045 () Bool)

(assert (=> b!86045 (= e!46672 e!46670)))

(declare-fun c!21344 () Bool)

(assert (=> b!86045 (= c!21344 (and (is-Node!146 res!44621) (is-Black!4 (color!35 res!44621))))))

(assert (= (and d!57589 (not res!44758)) b!86045))

(assert (= (and b!86043 res!44756) b!86044))

(assert (= (and b!86040 res!44759) b!86042))

(assert (= (and b!86042 res!44760) b!86041))

(assert (= (and b!86041 res!44757) b!86039))

(assert (= (and b!86045 c!21344) b!86043))

(assert (= (and b!86045 (not c!21344)) b!86040))

(declare-fun m!81830 () Bool)

(assert (=> b!86044 m!81830))

(declare-fun m!81832 () Bool)

(assert (=> b!86041 m!81832))

(assert (=> b!86039 m!81830))

(assert (=> b!86043 m!81832))

(declare-fun m!81834 () Bool)

(assert (=> b!86040 m!81834))

(declare-fun m!81836 () Bool)

(assert (=> b!86042 m!81836))

(assert (=> b!86003 d!57589))

(declare-fun b!86046 () Bool)

(declare-fun e!46675 () Bool)

(assert (=> b!86046 (= e!46675 (redNodesHaveBlackChildren!0 (right!1648 t!48204)))))

(declare-fun b!86047 () Bool)

(declare-fun e!46674 () Bool)

(assert (=> b!86047 (= e!46674 e!46675)))

(declare-fun res!44764 () Bool)

(assert (=> b!86047 (=> (not res!44764) (not e!46675))))

(assert (=> b!86047 (= res!44764 (isBlack!0 (left!1645 t!48204)))))

(declare-fun d!57591 () Bool)

(declare-fun res!44763 () Bool)

(declare-fun e!46676 () Bool)

(assert (=> d!57591 (=> res!44763 e!46676)))

(assert (=> d!57591 (= res!44763 (is-Empty!185 t!48204))))

(assert (=> d!57591 (= (redNodesHaveBlackChildren!0 t!48204) e!46676)))

(declare-fun b!86048 () Bool)

(declare-fun res!44762 () Bool)

(assert (=> b!86048 (=> (not res!44762) (not e!46675))))

(assert (=> b!86048 (= res!44762 (redNodesHaveBlackChildren!0 (left!1645 t!48204)))))

(declare-fun b!86049 () Bool)

(declare-fun res!44765 () Bool)

(assert (=> b!86049 (=> (not res!44765) (not e!46675))))

(assert (=> b!86049 (= res!44765 (isBlack!0 (right!1648 t!48204)))))

(declare-fun b!86050 () Bool)

(declare-fun e!46677 () Bool)

(assert (=> b!86050 (= e!46674 e!46677)))

(declare-fun res!44761 () Bool)

(assert (=> b!86050 (=> (not res!44761) (not e!46677))))

(assert (=> b!86050 (= res!44761 (redNodesHaveBlackChildren!0 (left!1645 t!48204)))))

(declare-fun b!86051 () Bool)

(assert (=> b!86051 (= e!46677 (redNodesHaveBlackChildren!0 (right!1648 t!48204)))))

(declare-fun b!86052 () Bool)

(assert (=> b!86052 (= e!46676 e!46674)))

(declare-fun c!21345 () Bool)

(assert (=> b!86052 (= c!21345 (and (is-Node!146 t!48204) (is-Black!4 (color!35 t!48204))))))

(assert (= (and d!57591 (not res!44763)) b!86052))

(assert (= (and b!86050 res!44761) b!86051))

(assert (= (and b!86047 res!44764) b!86049))

(assert (= (and b!86049 res!44765) b!86048))

(assert (= (and b!86048 res!44762) b!86046))

(assert (= (and b!86052 c!21345) b!86050))

(assert (= (and b!86052 (not c!21345)) b!86047))

(declare-fun m!81838 () Bool)

(assert (=> b!86051 m!81838))

(declare-fun m!81840 () Bool)

(assert (=> b!86048 m!81840))

(assert (=> b!86046 m!81838))

(assert (=> b!86050 m!81840))

(declare-fun m!81842 () Bool)

(assert (=> b!86047 m!81842))

(declare-fun m!81844 () Bool)

(assert (=> b!86049 m!81844))

(assert (=> start!11266 d!57591))

(declare-fun d!57593 () Bool)

(declare-fun e!46683 () Bool)

(assert (=> d!57593 e!46683))

(declare-fun res!44771 () Bool)

(assert (=> d!57593 (=> (not res!44771) (not e!46683))))

(declare-fun lt!19999 () Tree!102)

(assert (=> d!57593 (= res!44771 (redNodesHaveBlackChildren!0 lt!19999))))

(assert (=> d!57593 (= lt!19999 (ite (and (is-Node!146 (ins!0 x!30384 t!48204)) (is-Red!4 (color!35 (ins!0 x!30384 t!48204)))) (Node!146 Black!4 (left!1645 (ins!0 x!30384 t!48204)) (value!6792 (ins!0 x!30384 t!48204)) (right!1648 (ins!0 x!30384 t!48204))) (ins!0 x!30384 t!48204)))))

(declare-fun e!46682 () Bool)

(assert (=> d!57593 e!46682))

(declare-fun res!44772 () Bool)

(assert (=> d!57593 (=> (not res!44772) (not e!46682))))

(declare-fun redDescHaveBlackChildren!0 (Tree!102) Bool)

(assert (=> d!57593 (= res!44772 (redDescHaveBlackChildren!0 (ins!0 x!30384 t!48204)))))

(assert (=> d!57593 (= (makeBlack!0 (ins!0 x!30384 t!48204)) lt!19999)))

(declare-fun b!86057 () Bool)

(assert (=> b!86057 (= e!46682 (blackBalanced!0 (ins!0 x!30384 t!48204)))))

(declare-fun b!86058 () Bool)

(assert (=> b!86058 (= e!46683 (blackBalanced!0 lt!19999))))

(assert (= (and d!57593 res!44772) b!86057))

(assert (= (and d!57593 res!44771) b!86058))

(declare-fun m!81846 () Bool)

(assert (=> d!57593 m!81846))

(assert (=> d!57593 m!81792))

(declare-fun m!81848 () Bool)

(assert (=> d!57593 m!81848))

(assert (=> b!86057 m!81792))

(declare-fun m!81850 () Bool)

(assert (=> b!86057 m!81850))

(declare-fun m!81852 () Bool)

(assert (=> b!86058 m!81852))

(assert (=> b!86004 d!57593))

(declare-fun b!86081 () Bool)

(declare-fun res!44798 () Bool)

(declare-fun e!46696 () Bool)

(assert (=> b!86081 (=> (not res!44798) (not e!46696))))

(declare-fun lt!20013 () Tree!102)

(declare-fun size!3 (Tree!102) Int)

(assert (=> b!86081 (= res!44798 (<= (size!3 t!48204) (size!3 lt!20013)))))

(declare-fun lt!20010 () Bool)

(declare-fun lt!20011 () Tree!102)

(declare-fun b!86082 () Bool)

(declare-fun e!46698 () Tree!102)

(declare-fun balance!0 (Color!5 Tree!102 Int Tree!102) Tree!102)

(assert (=> b!86082 (= e!46698 (balance!0 (color!35 t!48204) (ite lt!20010 lt!20011 (left!1645 t!48204)) (value!6792 t!48204) (ite lt!20010 (right!1648 t!48204) lt!20011)))))

(declare-fun b!86083 () Bool)

(declare-fun res!44795 () Bool)

(assert (=> b!86083 (=> (not res!44795) (not e!46696))))

(assert (=> b!86083 (= res!44795 (redDescHaveBlackChildren!0 lt!20013))))

(declare-fun lt!20014 () Tree!102)

(declare-fun lt!20012 () Bool)

(declare-fun b!86084 () Bool)

(declare-fun e!46697 () Tree!102)

(assert (=> b!86084 (= e!46697 (ite lt!20012 lt!20014 (ite (= x!30384 (value!6792 t!48204)) (Node!146 (color!35 t!48204) (left!1645 t!48204) (value!6792 t!48204) (right!1648 t!48204)) lt!20014)))))

(assert (=> b!86084 (= lt!20014 e!46698)))

(declare-fun c!21353 () Bool)

(assert (=> b!86084 (= c!21353 (or lt!20010 (and (not lt!20012) (not (= x!30384 (value!6792 t!48204))))))))

(assert (=> b!86084 (= lt!20010 lt!20012)))

(declare-fun e!46695 () Tree!102)

(assert (=> b!86084 (= lt!20011 e!46695)))

(declare-fun c!21352 () Bool)

(assert (=> b!86084 (= c!21352 (or lt!20012 (not (= x!30384 (value!6792 t!48204)))))))

(assert (=> b!86084 (= lt!20012 (< x!30384 (value!6792 t!48204)))))

(declare-fun b!86085 () Bool)

(declare-fun res!44797 () Tree!102)

(assert (=> b!86085 (= e!46698 res!44797)))

(assert (=> b!86085 true))

(assert (=> b!86085 true))

(declare-fun b!86086 () Bool)

(assert (=> b!86086 (= e!46695 (ins!0 x!30384 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))))))

(declare-fun b!86087 () Bool)

(declare-fun res!44799 () Tree!102)

(assert (=> b!86087 (= e!46695 res!44799)))

(assert (=> b!86087 true))

(declare-fun d!57595 () Bool)

(assert (=> d!57595 e!46696))

(declare-fun res!44794 () Bool)

(assert (=> d!57595 (=> (not res!44794) (not e!46696))))

(assert (=> d!57595 (= res!44794 (= (content!8 lt!20013) (union (content!8 t!48204) (insert x!30384 (as emptyset (Set Int))))))))

(assert (=> d!57595 (= lt!20013 e!46697)))

(declare-fun c!21354 () Bool)

(assert (=> d!57595 (= c!21354 (is-Empty!185 t!48204))))

(declare-fun e!46694 () Bool)

(assert (=> d!57595 e!46694))

(declare-fun res!44800 () Bool)

(assert (=> d!57595 (=> (not res!44800) (not e!46694))))

(assert (=> d!57595 (= res!44800 (redNodesHaveBlackChildren!0 t!48204))))

(assert (=> d!57595 (= (ins!0 x!30384 t!48204) lt!20013)))

(declare-fun b!86088 () Bool)

(assert (=> b!86088 (= e!46696 (blackBalanced!0 lt!20013))))

(declare-fun b!86089 () Bool)

(assert (=> b!86089 (= e!46694 (blackBalanced!0 t!48204))))

(declare-fun b!86090 () Bool)

(declare-fun res!44796 () Bool)

(assert (=> b!86090 (=> (not res!44796) (not e!46696))))

(assert (=> b!86090 (= res!44796 (<= (size!3 lt!20013) (+ (size!3 t!48204) 1)))))

(declare-fun b!86091 () Bool)

(assert (=> b!86091 (= e!46697 (Node!146 Red!4 Empty!185 x!30384 Empty!185))))

(assert (= (and d!57595 res!44800) b!86089))

(assert (= (and b!86084 c!21352) b!86086))

(assert (= (and b!86084 (not c!21352)) b!86087))

(assert (= (and b!86084 c!21353) b!86082))

(assert (= (and b!86084 (not c!21353)) b!86085))

(assert (= (and d!57595 c!21354) b!86091))

(assert (= (and d!57595 (not c!21354)) b!86084))

(assert (= (and d!57595 res!44794) b!86081))

(assert (= (and b!86081 res!44798) b!86090))

(assert (= (and b!86090 res!44796) b!86083))

(assert (= (and b!86083 res!44795) b!86088))

(declare-fun m!81854 () Bool)

(assert (=> b!86082 m!81854))

(declare-fun m!81856 () Bool)

(assert (=> b!86088 m!81856))

(assert (=> b!86089 m!81798))

(declare-fun m!81858 () Bool)

(assert (=> b!86081 m!81858))

(declare-fun m!81860 () Bool)

(assert (=> b!86081 m!81860))

(assert (=> b!86090 m!81860))

(assert (=> b!86090 m!81858))

(declare-fun m!81862 () Bool)

(assert (=> b!86086 m!81862))

(declare-fun m!81864 () Bool)

(assert (=> b!86083 m!81864))

(declare-fun m!81866 () Bool)

(assert (=> d!57595 m!81866))

(assert (=> d!57595 m!81802))

(assert (=> d!57595 m!81804))

(assert (=> d!57595 m!81806))

(assert (=> b!86004 d!57595))

(declare-fun d!57597 () Bool)

(declare-fun res!44803 () Bool)

(declare-fun e!46699 () Bool)

(assert (=> d!57597 (=> res!44803 e!46699)))

(assert (=> d!57597 (= res!44803 (not (is-Node!146 t!48204)))))

(assert (=> d!57597 (= (blackBalanced!0 t!48204) e!46699)))

(declare-fun b!86092 () Bool)

(declare-fun e!46700 () Bool)

(assert (=> b!86092 (= e!46699 e!46700)))

(declare-fun res!44802 () Bool)

(assert (=> b!86092 (=> (not res!44802) (not e!46700))))

(assert (=> b!86092 (= res!44802 (blackBalanced!0 (left!1645 t!48204)))))

(declare-fun b!86093 () Bool)

(declare-fun res!44801 () Bool)

(assert (=> b!86093 (=> (not res!44801) (not e!46700))))

(assert (=> b!86093 (= res!44801 (blackBalanced!0 (right!1648 t!48204)))))

(declare-fun b!86094 () Bool)

(assert (=> b!86094 (= e!46700 (= (blackHeight!0 (left!1645 t!48204)) (blackHeight!0 (right!1648 t!48204))))))

(assert (= (and d!57597 (not res!44803)) b!86092))

(assert (= (and b!86092 res!44802) b!86093))

(assert (= (and b!86093 res!44801) b!86094))

(declare-fun m!81868 () Bool)

(assert (=> b!86092 m!81868))

(declare-fun m!81870 () Bool)

(assert (=> b!86093 m!81870))

(declare-fun m!81872 () Bool)

(assert (=> b!86094 m!81872))

(declare-fun m!81874 () Bool)

(assert (=> b!86094 m!81874))

(assert (=> b!86006 d!57597))

(push 1)

(assert (not b!86015))

(assert (not b!86088))

(assert (not b!86082))

(assert (not b!86094))

(assert (not b!86040))

(assert (not b!86044))

(assert (not b!86093))

(assert (not d!57595))

(assert (not b!86041))

(assert (not b!86022))

(assert (not b!86090))

(assert (not d!57593))

(assert (not b!86086))

(assert (not b!86058))

(assert (not b!86046))

(assert (not b!86048))

(assert (not b!86092))

(assert (not b!86083))

(assert (not b!86089))

(assert (not b!86042))

(assert (not b!86081))

(assert (not b!86024))

(assert (not b!86051))

(assert (not b!86014))

(assert (not b!86043))

(assert (not b!86047))

(assert (not b!86057))

(assert (not b!86039))

(assert (not b!86050))

(assert (not b!86049))

(assert (not b!86016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!86095 () Bool)

(declare-fun e!46702 () Bool)

(assert (=> b!86095 (= e!46702 (redNodesHaveBlackChildren!0 (right!1648 (right!1648 res!44621))))))

(declare-fun b!86096 () Bool)

(declare-fun e!46701 () Bool)

(assert (=> b!86096 (= e!46701 e!46702)))

(declare-fun res!44807 () Bool)

(assert (=> b!86096 (=> (not res!44807) (not e!46702))))

(assert (=> b!86096 (= res!44807 (isBlack!0 (left!1645 (right!1648 res!44621))))))

(declare-fun d!57599 () Bool)

(declare-fun res!44806 () Bool)

(declare-fun e!46703 () Bool)

(assert (=> d!57599 (=> res!44806 e!46703)))

(assert (=> d!57599 (= res!44806 (is-Empty!185 (right!1648 res!44621)))))

(assert (=> d!57599 (= (redNodesHaveBlackChildren!0 (right!1648 res!44621)) e!46703)))

(declare-fun b!86097 () Bool)

(declare-fun res!44805 () Bool)

(assert (=> b!86097 (=> (not res!44805) (not e!46702))))

(assert (=> b!86097 (= res!44805 (redNodesHaveBlackChildren!0 (left!1645 (right!1648 res!44621))))))

(declare-fun b!86098 () Bool)

(declare-fun res!44808 () Bool)

(assert (=> b!86098 (=> (not res!44808) (not e!46702))))

(assert (=> b!86098 (= res!44808 (isBlack!0 (right!1648 (right!1648 res!44621))))))

(declare-fun b!86099 () Bool)

(declare-fun e!46704 () Bool)

(assert (=> b!86099 (= e!46701 e!46704)))

(declare-fun res!44804 () Bool)

(assert (=> b!86099 (=> (not res!44804) (not e!46704))))

(assert (=> b!86099 (= res!44804 (redNodesHaveBlackChildren!0 (left!1645 (right!1648 res!44621))))))

(declare-fun b!86100 () Bool)

(assert (=> b!86100 (= e!46704 (redNodesHaveBlackChildren!0 (right!1648 (right!1648 res!44621))))))

(declare-fun b!86101 () Bool)

(assert (=> b!86101 (= e!46703 e!46701)))

(declare-fun c!21355 () Bool)

(assert (=> b!86101 (= c!21355 (and (is-Node!146 (right!1648 res!44621)) (is-Black!4 (color!35 (right!1648 res!44621)))))))

(assert (= (and d!57599 (not res!44806)) b!86101))

(assert (= (and b!86099 res!44804) b!86100))

(assert (= (and b!86096 res!44807) b!86098))

(assert (= (and b!86098 res!44808) b!86097))

(assert (= (and b!86097 res!44805) b!86095))

(assert (= (and b!86101 c!21355) b!86099))

(assert (= (and b!86101 (not c!21355)) b!86096))

(declare-fun m!81876 () Bool)

(assert (=> b!86100 m!81876))

(declare-fun m!81878 () Bool)

(assert (=> b!86097 m!81878))

(assert (=> b!86095 m!81876))

(assert (=> b!86099 m!81878))

(declare-fun m!81880 () Bool)

(assert (=> b!86096 m!81880))

(declare-fun m!81882 () Bool)

(assert (=> b!86098 m!81882))

(assert (=> b!86039 d!57599))

(declare-fun d!57601 () Bool)

(declare-fun c!21356 () Bool)

(assert (=> d!57601 (= c!21356 (is-Empty!185 lt!20013))))

(declare-fun e!46705 () (Set Int))

(assert (=> d!57601 (= (content!8 lt!20013) e!46705)))

(declare-fun b!86102 () Bool)

(assert (=> b!86102 (= e!46705 (as emptyset (Set Int)))))

(declare-fun b!86103 () Bool)

(assert (=> b!86103 (= e!46705 (union (union (content!8 (left!1645 lt!20013)) (insert (value!6792 lt!20013) (as emptyset (Set Int)))) (content!8 (right!1648 lt!20013))))))

(assert (= (and d!57601 c!21356) b!86102))

(assert (= (and d!57601 (not c!21356)) b!86103))

(declare-fun m!81884 () Bool)

(assert (=> b!86103 m!81884))

(declare-fun m!81886 () Bool)

(assert (=> b!86103 m!81886))

(declare-fun m!81888 () Bool)

(assert (=> b!86103 m!81888))

(assert (=> d!57595 d!57601))

(assert (=> d!57595 d!57587))

(assert (=> d!57595 d!57591))

(declare-fun d!57603 () Bool)

(declare-fun res!44811 () Bool)

(declare-fun e!46706 () Bool)

(assert (=> d!57603 (=> res!44811 e!46706)))

(assert (=> d!57603 (= res!44811 (not (is-Node!146 (ins!0 x!30384 t!48204))))))

(assert (=> d!57603 (= (blackBalanced!0 (ins!0 x!30384 t!48204)) e!46706)))

(declare-fun b!86104 () Bool)

(declare-fun e!46707 () Bool)

(assert (=> b!86104 (= e!46706 e!46707)))

(declare-fun res!44810 () Bool)

(assert (=> b!86104 (=> (not res!44810) (not e!46707))))

(assert (=> b!86104 (= res!44810 (blackBalanced!0 (left!1645 (ins!0 x!30384 t!48204))))))

(declare-fun b!86105 () Bool)

(declare-fun res!44809 () Bool)

(assert (=> b!86105 (=> (not res!44809) (not e!46707))))

(assert (=> b!86105 (= res!44809 (blackBalanced!0 (right!1648 (ins!0 x!30384 t!48204))))))

(declare-fun b!86106 () Bool)

(assert (=> b!86106 (= e!46707 (= (blackHeight!0 (left!1645 (ins!0 x!30384 t!48204))) (blackHeight!0 (right!1648 (ins!0 x!30384 t!48204)))))))

(assert (= (and d!57603 (not res!44811)) b!86104))

(assert (= (and b!86104 res!44810) b!86105))

(assert (= (and b!86105 res!44809) b!86106))

(declare-fun m!81890 () Bool)

(assert (=> b!86104 m!81890))

(declare-fun m!81892 () Bool)

(assert (=> b!86105 m!81892))

(declare-fun m!81894 () Bool)

(assert (=> b!86106 m!81894))

(declare-fun m!81896 () Bool)

(assert (=> b!86106 m!81896))

(assert (=> b!86057 d!57603))

(assert (=> b!86044 d!57599))

(declare-fun d!57605 () Bool)

(declare-fun res!44816 () Bool)

(declare-fun e!46712 () Bool)

(assert (=> d!57605 (=> res!44816 e!46712)))

(assert (=> d!57605 (= res!44816 (is-Empty!185 lt!20013))))

(assert (=> d!57605 (= (redDescHaveBlackChildren!0 lt!20013) e!46712)))

(declare-fun b!86111 () Bool)

(declare-fun e!46713 () Bool)

(assert (=> b!86111 (= e!46712 e!46713)))

(declare-fun res!44817 () Bool)

(assert (=> b!86111 (=> (not res!44817) (not e!46713))))

(assert (=> b!86111 (= res!44817 (redNodesHaveBlackChildren!0 (left!1645 lt!20013)))))

(declare-fun b!86112 () Bool)

(assert (=> b!86112 (= e!46713 (redNodesHaveBlackChildren!0 (right!1648 lt!20013)))))

(assert (= (and d!57605 (not res!44816)) b!86111))

(assert (= (and b!86111 res!44817) b!86112))

(declare-fun m!81898 () Bool)

(assert (=> b!86111 m!81898))

(declare-fun m!81900 () Bool)

(assert (=> b!86112 m!81900))

(assert (=> b!86083 d!57605))

(declare-fun d!57607 () Bool)

(assert (=> d!57607 (= (isBlack!0 (right!1648 res!44621)) (or (is-Empty!185 (right!1648 res!44621)) (and (is-Node!146 (right!1648 res!44621)) (is-Black!4 (color!35 (right!1648 res!44621))))))))

(assert (=> b!86042 d!57607))

(declare-fun d!57609 () Bool)

(declare-fun res!44820 () Bool)

(declare-fun e!46714 () Bool)

(assert (=> d!57609 (=> res!44820 e!46714)))

(assert (=> d!57609 (= res!44820 (not (is-Node!146 (left!1645 res!44621))))))

(assert (=> d!57609 (= (blackBalanced!0 (left!1645 res!44621)) e!46714)))

(declare-fun b!86113 () Bool)

(declare-fun e!46715 () Bool)

(assert (=> b!86113 (= e!46714 e!46715)))

(declare-fun res!44819 () Bool)

(assert (=> b!86113 (=> (not res!44819) (not e!46715))))

(assert (=> b!86113 (= res!44819 (blackBalanced!0 (left!1645 (left!1645 res!44621))))))

(declare-fun b!86114 () Bool)

(declare-fun res!44818 () Bool)

(assert (=> b!86114 (=> (not res!44818) (not e!46715))))

(assert (=> b!86114 (= res!44818 (blackBalanced!0 (right!1648 (left!1645 res!44621))))))

(declare-fun b!86115 () Bool)

(assert (=> b!86115 (= e!46715 (= (blackHeight!0 (left!1645 (left!1645 res!44621))) (blackHeight!0 (right!1648 (left!1645 res!44621)))))))

(assert (= (and d!57609 (not res!44820)) b!86113))

(assert (= (and b!86113 res!44819) b!86114))

(assert (= (and b!86114 res!44818) b!86115))

(declare-fun m!81902 () Bool)

(assert (=> b!86113 m!81902))

(declare-fun m!81904 () Bool)

(assert (=> b!86114 m!81904))

(declare-fun m!81906 () Bool)

(assert (=> b!86115 m!81906))

(declare-fun m!81908 () Bool)

(assert (=> b!86115 m!81908))

(assert (=> b!86014 d!57609))

(declare-fun d!57611 () Bool)

(declare-fun lt!20017 () Int)

(assert (=> d!57611 (>= lt!20017 0)))

(declare-fun e!46718 () Int)

(assert (=> d!57611 (= lt!20017 e!46718)))

(declare-fun c!21359 () Bool)

(assert (=> d!57611 (= c!21359 (is-Empty!185 lt!20013))))

(assert (=> d!57611 (= (size!3 lt!20013) lt!20017)))

(declare-fun b!86120 () Bool)

(assert (=> b!86120 (= e!46718 0)))

(declare-fun b!86121 () Bool)

(assert (=> b!86121 (= e!46718 (+ (+ (size!3 (left!1645 lt!20013)) 1) (size!3 (right!1648 lt!20013))))))

(assert (= (and d!57611 c!21359) b!86120))

(assert (= (and d!57611 (not c!21359)) b!86121))

(declare-fun m!81910 () Bool)

(assert (=> b!86121 m!81910))

(declare-fun m!81912 () Bool)

(assert (=> b!86121 m!81912))

(assert (=> b!86090 d!57611))

(declare-fun d!57613 () Bool)

(declare-fun lt!20018 () Int)

(assert (=> d!57613 (>= lt!20018 0)))

(declare-fun e!46719 () Int)

(assert (=> d!57613 (= lt!20018 e!46719)))

(declare-fun c!21360 () Bool)

(assert (=> d!57613 (= c!21360 (is-Empty!185 t!48204))))

(assert (=> d!57613 (= (size!3 t!48204) lt!20018)))

(declare-fun b!86122 () Bool)

(assert (=> b!86122 (= e!46719 0)))

(declare-fun b!86123 () Bool)

(assert (=> b!86123 (= e!46719 (+ (+ (size!3 (left!1645 t!48204)) 1) (size!3 (right!1648 t!48204))))))

(assert (= (and d!57613 c!21360) b!86122))

(assert (= (and d!57613 (not c!21360)) b!86123))

(declare-fun m!81914 () Bool)

(assert (=> b!86123 m!81914))

(declare-fun m!81916 () Bool)

(assert (=> b!86123 m!81916))

(assert (=> b!86090 d!57613))

(declare-fun b!86124 () Bool)

(declare-fun e!46721 () Bool)

(assert (=> b!86124 (= e!46721 (redNodesHaveBlackChildren!0 (right!1648 (left!1645 res!44621))))))

(declare-fun b!86125 () Bool)

(declare-fun e!46720 () Bool)

(assert (=> b!86125 (= e!46720 e!46721)))

(declare-fun res!44824 () Bool)

(assert (=> b!86125 (=> (not res!44824) (not e!46721))))

(assert (=> b!86125 (= res!44824 (isBlack!0 (left!1645 (left!1645 res!44621))))))

(declare-fun d!57615 () Bool)

(declare-fun res!44823 () Bool)

(declare-fun e!46722 () Bool)

(assert (=> d!57615 (=> res!44823 e!46722)))

(assert (=> d!57615 (= res!44823 (is-Empty!185 (left!1645 res!44621)))))

(assert (=> d!57615 (= (redNodesHaveBlackChildren!0 (left!1645 res!44621)) e!46722)))

(declare-fun b!86126 () Bool)

(declare-fun res!44822 () Bool)

(assert (=> b!86126 (=> (not res!44822) (not e!46721))))

(assert (=> b!86126 (= res!44822 (redNodesHaveBlackChildren!0 (left!1645 (left!1645 res!44621))))))

(declare-fun b!86127 () Bool)

(declare-fun res!44825 () Bool)

(assert (=> b!86127 (=> (not res!44825) (not e!46721))))

(assert (=> b!86127 (= res!44825 (isBlack!0 (right!1648 (left!1645 res!44621))))))

(declare-fun b!86128 () Bool)

(declare-fun e!46723 () Bool)

(assert (=> b!86128 (= e!46720 e!46723)))

(declare-fun res!44821 () Bool)

(assert (=> b!86128 (=> (not res!44821) (not e!46723))))

(assert (=> b!86128 (= res!44821 (redNodesHaveBlackChildren!0 (left!1645 (left!1645 res!44621))))))

(declare-fun b!86129 () Bool)

(assert (=> b!86129 (= e!46723 (redNodesHaveBlackChildren!0 (right!1648 (left!1645 res!44621))))))

(declare-fun b!86130 () Bool)

(assert (=> b!86130 (= e!46722 e!46720)))

(declare-fun c!21361 () Bool)

(assert (=> b!86130 (= c!21361 (and (is-Node!146 (left!1645 res!44621)) (is-Black!4 (color!35 (left!1645 res!44621)))))))

(assert (= (and d!57615 (not res!44823)) b!86130))

(assert (= (and b!86128 res!44821) b!86129))

(assert (= (and b!86125 res!44824) b!86127))

(assert (= (and b!86127 res!44825) b!86126))

(assert (= (and b!86126 res!44822) b!86124))

(assert (= (and b!86130 c!21361) b!86128))

(assert (= (and b!86130 (not c!21361)) b!86125))

(declare-fun m!81918 () Bool)

(assert (=> b!86129 m!81918))

(declare-fun m!81920 () Bool)

(assert (=> b!86126 m!81920))

(assert (=> b!86124 m!81918))

(assert (=> b!86128 m!81920))

(declare-fun m!81922 () Bool)

(assert (=> b!86125 m!81922))

(declare-fun m!81924 () Bool)

(assert (=> b!86127 m!81924))

(assert (=> b!86043 d!57615))

(assert (=> b!86081 d!57613))

(assert (=> b!86081 d!57611))

(declare-fun b!86131 () Bool)

(declare-fun e!46725 () Bool)

(assert (=> b!86131 (= e!46725 (redNodesHaveBlackChildren!0 (right!1648 (right!1648 t!48204))))))

(declare-fun b!86132 () Bool)

(declare-fun e!46724 () Bool)

(assert (=> b!86132 (= e!46724 e!46725)))

(declare-fun res!44829 () Bool)

(assert (=> b!86132 (=> (not res!44829) (not e!46725))))

(assert (=> b!86132 (= res!44829 (isBlack!0 (left!1645 (right!1648 t!48204))))))

(declare-fun d!57617 () Bool)

(declare-fun res!44828 () Bool)

(declare-fun e!46726 () Bool)

(assert (=> d!57617 (=> res!44828 e!46726)))

(assert (=> d!57617 (= res!44828 (is-Empty!185 (right!1648 t!48204)))))

(assert (=> d!57617 (= (redNodesHaveBlackChildren!0 (right!1648 t!48204)) e!46726)))

(declare-fun b!86133 () Bool)

(declare-fun res!44827 () Bool)

(assert (=> b!86133 (=> (not res!44827) (not e!46725))))

(assert (=> b!86133 (= res!44827 (redNodesHaveBlackChildren!0 (left!1645 (right!1648 t!48204))))))

(declare-fun b!86134 () Bool)

(declare-fun res!44830 () Bool)

(assert (=> b!86134 (=> (not res!44830) (not e!46725))))

(assert (=> b!86134 (= res!44830 (isBlack!0 (right!1648 (right!1648 t!48204))))))

(declare-fun b!86135 () Bool)

(declare-fun e!46727 () Bool)

(assert (=> b!86135 (= e!46724 e!46727)))

(declare-fun res!44826 () Bool)

(assert (=> b!86135 (=> (not res!44826) (not e!46727))))

(assert (=> b!86135 (= res!44826 (redNodesHaveBlackChildren!0 (left!1645 (right!1648 t!48204))))))

(declare-fun b!86136 () Bool)

(assert (=> b!86136 (= e!46727 (redNodesHaveBlackChildren!0 (right!1648 (right!1648 t!48204))))))

(declare-fun b!86137 () Bool)

(assert (=> b!86137 (= e!46726 e!46724)))

(declare-fun c!21362 () Bool)

(assert (=> b!86137 (= c!21362 (and (is-Node!146 (right!1648 t!48204)) (is-Black!4 (color!35 (right!1648 t!48204)))))))

(assert (= (and d!57617 (not res!44828)) b!86137))

(assert (= (and b!86135 res!44826) b!86136))

(assert (= (and b!86132 res!44829) b!86134))

(assert (= (and b!86134 res!44830) b!86133))

(assert (= (and b!86133 res!44827) b!86131))

(assert (= (and b!86137 c!21362) b!86135))

(assert (= (and b!86137 (not c!21362)) b!86132))

(declare-fun m!81926 () Bool)

(assert (=> b!86136 m!81926))

(declare-fun m!81928 () Bool)

(assert (=> b!86133 m!81928))

(assert (=> b!86131 m!81926))

(assert (=> b!86135 m!81928))

(declare-fun m!81930 () Bool)

(assert (=> b!86132 m!81930))

(declare-fun m!81932 () Bool)

(assert (=> b!86134 m!81932))

(assert (=> b!86051 d!57617))

(declare-fun b!86138 () Bool)

(declare-fun res!44835 () Bool)

(declare-fun e!46730 () Bool)

(assert (=> b!86138 (=> (not res!44835) (not e!46730))))

(declare-fun lt!20022 () Tree!102)

(assert (=> b!86138 (= res!44835 (<= (size!3 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (size!3 lt!20022)))))

(declare-fun lt!20020 () Tree!102)

(declare-fun b!86139 () Bool)

(declare-fun e!46732 () Tree!102)

(declare-fun lt!20019 () Bool)

(assert (=> b!86139 (= e!46732 (balance!0 (color!35 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (ite lt!20019 lt!20020 (left!1645 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204)))) (value!6792 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (ite lt!20019 (right!1648 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) lt!20020)))))

(declare-fun b!86140 () Bool)

(declare-fun res!44832 () Bool)

(assert (=> b!86140 (=> (not res!44832) (not e!46730))))

(assert (=> b!86140 (= res!44832 (redDescHaveBlackChildren!0 lt!20022))))

(declare-fun b!86141 () Bool)

(declare-fun e!46731 () Tree!102)

(declare-fun lt!20021 () Bool)

(declare-fun lt!20023 () Tree!102)

(assert (=> b!86141 (= e!46731 (ite lt!20021 lt!20023 (ite (= x!30384 (value!6792 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204)))) (Node!146 (color!35 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (left!1645 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (value!6792 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (right!1648 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204)))) lt!20023)))))

(assert (=> b!86141 (= lt!20023 e!46732)))

(declare-fun c!21364 () Bool)

(assert (=> b!86141 (= c!21364 (or lt!20019 (and (not lt!20021) (not (= x!30384 (value!6792 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))))))))))

(assert (=> b!86141 (= lt!20019 lt!20021)))

(declare-fun e!46729 () Tree!102)

(assert (=> b!86141 (= lt!20020 e!46729)))

(declare-fun c!21363 () Bool)

(assert (=> b!86141 (= c!21363 (or lt!20021 (not (= x!30384 (value!6792 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204)))))))))

(assert (=> b!86141 (= lt!20021 (< x!30384 (value!6792 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204)))))))

(declare-fun b!86142 () Bool)

(declare-fun res!44834 () Tree!102)

(assert (=> b!86142 (= e!46732 res!44834)))

(assert (=> b!86142 true))

(assert (=> b!86142 true))

(declare-fun b!86143 () Bool)

(assert (=> b!86143 (= e!46729 (ins!0 x!30384 (ite lt!20021 (left!1645 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (right!1648 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))))))))

(declare-fun b!86144 () Bool)

(declare-fun res!44836 () Tree!102)

(assert (=> b!86144 (= e!46729 res!44836)))

(assert (=> b!86144 true))

(declare-fun d!57619 () Bool)

(assert (=> d!57619 e!46730))

(declare-fun res!44831 () Bool)

(assert (=> d!57619 (=> (not res!44831) (not e!46730))))

(assert (=> d!57619 (= res!44831 (= (content!8 lt!20022) (union (content!8 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) (insert x!30384 (as emptyset (Set Int))))))))

(assert (=> d!57619 (= lt!20022 e!46731)))

(declare-fun c!21365 () Bool)

(assert (=> d!57619 (= c!21365 (is-Empty!185 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))))))

(declare-fun e!46728 () Bool)

(assert (=> d!57619 e!46728))

(declare-fun res!44837 () Bool)

(assert (=> d!57619 (=> (not res!44837) (not e!46728))))

(assert (=> d!57619 (= res!44837 (redNodesHaveBlackChildren!0 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))))))

(assert (=> d!57619 (= (ins!0 x!30384 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) lt!20022)))

(declare-fun b!86145 () Bool)

(assert (=> b!86145 (= e!46730 (blackBalanced!0 lt!20022))))

(declare-fun b!86146 () Bool)

(assert (=> b!86146 (= e!46728 (blackBalanced!0 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))))))

(declare-fun b!86147 () Bool)

(declare-fun res!44833 () Bool)

(assert (=> b!86147 (=> (not res!44833) (not e!46730))))

(assert (=> b!86147 (= res!44833 (<= (size!3 lt!20022) (+ (size!3 (ite lt!20012 (left!1645 t!48204) (right!1648 t!48204))) 1)))))

(declare-fun b!86148 () Bool)

(assert (=> b!86148 (= e!46731 (Node!146 Red!4 Empty!185 x!30384 Empty!185))))

(assert (= (and d!57619 res!44837) b!86146))

(assert (= (and b!86141 c!21363) b!86143))

(assert (= (and b!86141 (not c!21363)) b!86144))

(assert (= (and b!86141 c!21364) b!86139))

(assert (= (and b!86141 (not c!21364)) b!86142))

(assert (= (and d!57619 c!21365) b!86148))

(assert (= (and d!57619 (not c!21365)) b!86141))

(assert (= (and d!57619 res!44831) b!86138))

(assert (= (and b!86138 res!44835) b!86147))

(assert (= (and b!86147 res!44833) b!86140))

(assert (= (and b!86140 res!44832) b!86145))

(declare-fun m!81934 () Bool)

(assert (=> b!86139 m!81934))

(declare-fun m!81936 () Bool)

(assert (=> b!86145 m!81936))

(declare-fun m!81938 () Bool)

(assert (=> b!86146 m!81938))

(declare-fun m!81940 () Bool)

(assert (=> b!86138 m!81940))

(declare-fun m!81942 () Bool)

(assert (=> b!86138 m!81942))

(assert (=> b!86147 m!81942))

(assert (=> b!86147 m!81940))

(declare-fun m!81944 () Bool)

(assert (=> b!86143 m!81944))

(declare-fun m!81946 () Bool)

(assert (=> b!86140 m!81946))

(declare-fun m!81948 () Bool)

(assert (=> d!57619 m!81948))

(declare-fun m!81950 () Bool)

(assert (=> d!57619 m!81950))

(assert (=> d!57619 m!81804))

(declare-fun m!81952 () Bool)

(assert (=> d!57619 m!81952))

(assert (=> b!86086 d!57619))

(declare-fun d!57621 () Bool)

(declare-fun c!21366 () Bool)

(assert (=> d!57621 (= c!21366 (is-Empty!185 (left!1645 res!44621)))))

(declare-fun e!46733 () (Set Int))

(assert (=> d!57621 (= (content!8 (left!1645 res!44621)) e!46733)))

(declare-fun b!86149 () Bool)

(assert (=> b!86149 (= e!46733 (as emptyset (Set Int)))))

(declare-fun b!86150 () Bool)

(assert (=> b!86150 (= e!46733 (union (union (content!8 (left!1645 (left!1645 res!44621))) (insert (value!6792 (left!1645 res!44621)) (as emptyset (Set Int)))) (content!8 (right!1648 (left!1645 res!44621)))))))

(assert (= (and d!57621 c!21366) b!86149))

(assert (= (and d!57621 (not c!21366)) b!86150))

(declare-fun m!81954 () Bool)

(assert (=> b!86150 m!81954))

(declare-fun m!81956 () Bool)

(assert (=> b!86150 m!81956))

(declare-fun m!81958 () Bool)

(assert (=> b!86150 m!81958))

(assert (=> b!86022 d!57621))

(declare-fun d!57623 () Bool)

(declare-fun c!21367 () Bool)

(assert (=> d!57623 (= c!21367 (is-Empty!185 (right!1648 res!44621)))))

(declare-fun e!46734 () (Set Int))

(assert (=> d!57623 (= (content!8 (right!1648 res!44621)) e!46734)))

(declare-fun b!86151 () Bool)

(assert (=> b!86151 (= e!46734 (as emptyset (Set Int)))))

(declare-fun b!86152 () Bool)

(assert (=> b!86152 (= e!46734 (union (union (content!8 (left!1645 (right!1648 res!44621))) (insert (value!6792 (right!1648 res!44621)) (as emptyset (Set Int)))) (content!8 (right!1648 (right!1648 res!44621)))))))

(assert (= (and d!57623 c!21367) b!86151))

(assert (= (and d!57623 (not c!21367)) b!86152))

(declare-fun m!81960 () Bool)

(assert (=> b!86152 m!81960))

(declare-fun m!81962 () Bool)

(assert (=> b!86152 m!81962))

(declare-fun m!81964 () Bool)

(assert (=> b!86152 m!81964))

(assert (=> b!86022 d!57623))

(declare-fun b!86158 () Bool)

(declare-fun e!46737 () Int)

(declare-fun lt!20026 () Int)

(assert (=> b!86158 (= e!46737 (ite (and (is-Node!146 (left!1645 res!44621)) (is-Black!4 (color!35 (left!1645 res!44621)))) (+ lt!20026 1) lt!20026))))

(assert (=> b!86158 (= lt!20026 (blackHeight!0 (left!1645 (left!1645 res!44621))))))

(declare-fun d!57625 () Bool)

(declare-fun c!21370 () Bool)

(assert (=> d!57625 (= c!21370 (is-Empty!185 (left!1645 res!44621)))))

(assert (=> d!57625 (= (blackHeight!0 (left!1645 res!44621)) e!46737)))

(declare-fun b!86157 () Bool)

(assert (=> b!86157 (= e!46737 1)))

(assert (= (and d!57625 c!21370) b!86157))

(assert (= (and d!57625 (not c!21370)) b!86158))

(assert (=> b!86158 m!81906))

(assert (=> b!86016 d!57625))

(declare-fun b!86160 () Bool)

(declare-fun e!46738 () Int)

(declare-fun lt!20027 () Int)

(assert (=> b!86160 (= e!46738 (ite (and (is-Node!146 (right!1648 res!44621)) (is-Black!4 (color!35 (right!1648 res!44621)))) (+ lt!20027 1) lt!20027))))

(assert (=> b!86160 (= lt!20027 (blackHeight!0 (left!1645 (right!1648 res!44621))))))

(declare-fun d!57627 () Bool)

(declare-fun c!21371 () Bool)

(assert (=> d!57627 (= c!21371 (is-Empty!185 (right!1648 res!44621)))))

(assert (=> d!57627 (= (blackHeight!0 (right!1648 res!44621)) e!46738)))

(declare-fun b!86159 () Bool)

(assert (=> b!86159 (= e!46738 1)))

(assert (= (and d!57627 c!21371) b!86159))

(assert (= (and d!57627 (not c!21371)) b!86160))

(declare-fun m!81966 () Bool)

(assert (=> b!86160 m!81966))

(assert (=> b!86016 d!57627))

(declare-fun d!57629 () Bool)

(declare-fun res!44843 () Bool)

(declare-fun e!46739 () Bool)

(assert (=> d!57629 (=> res!44843 e!46739)))

(assert (=> d!57629 (= res!44843 (not (is-Node!146 (right!1648 t!48204))))))

(assert (=> d!57629 (= (blackBalanced!0 (right!1648 t!48204)) e!46739)))

(declare-fun b!86161 () Bool)

(declare-fun e!46740 () Bool)

(assert (=> b!86161 (= e!46739 e!46740)))

(declare-fun res!44842 () Bool)

(assert (=> b!86161 (=> (not res!44842) (not e!46740))))

(assert (=> b!86161 (= res!44842 (blackBalanced!0 (left!1645 (right!1648 t!48204))))))

(declare-fun b!86162 () Bool)

(declare-fun res!44841 () Bool)

(assert (=> b!86162 (=> (not res!44841) (not e!46740))))

(assert (=> b!86162 (= res!44841 (blackBalanced!0 (right!1648 (right!1648 t!48204))))))

(declare-fun b!86163 () Bool)

(assert (=> b!86163 (= e!46740 (= (blackHeight!0 (left!1645 (right!1648 t!48204))) (blackHeight!0 (right!1648 (right!1648 t!48204)))))))

(assert (= (and d!57629 (not res!44843)) b!86161))

(assert (= (and b!86161 res!44842) b!86162))

(assert (= (and b!86162 res!44841) b!86163))

(declare-fun m!81968 () Bool)

(assert (=> b!86161 m!81968))

(declare-fun m!81970 () Bool)

(assert (=> b!86162 m!81970))

(declare-fun m!81972 () Bool)

(assert (=> b!86163 m!81972))

(declare-fun m!81974 () Bool)

(assert (=> b!86163 m!81974))

(assert (=> b!86093 d!57629))

(declare-fun b!86164 () Bool)

(declare-fun e!46742 () Bool)

(assert (=> b!86164 (= e!46742 (redNodesHaveBlackChildren!0 (right!1648 lt!19999)))))

(declare-fun b!86165 () Bool)

(declare-fun e!46741 () Bool)

(assert (=> b!86165 (= e!46741 e!46742)))

(declare-fun res!44847 () Bool)

(assert (=> b!86165 (=> (not res!44847) (not e!46742))))

(assert (=> b!86165 (= res!44847 (isBlack!0 (left!1645 lt!19999)))))

(declare-fun d!57631 () Bool)

(declare-fun res!44846 () Bool)

(declare-fun e!46743 () Bool)

(assert (=> d!57631 (=> res!44846 e!46743)))

(assert (=> d!57631 (= res!44846 (is-Empty!185 lt!19999))))

(assert (=> d!57631 (= (redNodesHaveBlackChildren!0 lt!19999) e!46743)))

(declare-fun b!86166 () Bool)

(declare-fun res!44845 () Bool)

(assert (=> b!86166 (=> (not res!44845) (not e!46742))))

(assert (=> b!86166 (= res!44845 (redNodesHaveBlackChildren!0 (left!1645 lt!19999)))))

(declare-fun b!86167 () Bool)

(declare-fun res!44848 () Bool)

(assert (=> b!86167 (=> (not res!44848) (not e!46742))))

(assert (=> b!86167 (= res!44848 (isBlack!0 (right!1648 lt!19999)))))

(declare-fun b!86168 () Bool)

(declare-fun e!46744 () Bool)

(assert (=> b!86168 (= e!46741 e!46744)))

(declare-fun res!44844 () Bool)

(assert (=> b!86168 (=> (not res!44844) (not e!46744))))

(assert (=> b!86168 (= res!44844 (redNodesHaveBlackChildren!0 (left!1645 lt!19999)))))

(declare-fun b!86169 () Bool)

(assert (=> b!86169 (= e!46744 (redNodesHaveBlackChildren!0 (right!1648 lt!19999)))))

(declare-fun b!86170 () Bool)

(assert (=> b!86170 (= e!46743 e!46741)))

(declare-fun c!21372 () Bool)

(assert (=> b!86170 (= c!21372 (and (is-Node!146 lt!19999) (is-Black!4 (color!35 lt!19999))))))

(assert (= (and d!57631 (not res!44846)) b!86170))

(assert (= (and b!86168 res!44844) b!86169))

(assert (= (and b!86165 res!44847) b!86167))

(assert (= (and b!86167 res!44848) b!86166))

(assert (= (and b!86166 res!44845) b!86164))

(assert (= (and b!86170 c!21372) b!86168))

(assert (= (and b!86170 (not c!21372)) b!86165))

(declare-fun m!81976 () Bool)

(assert (=> b!86169 m!81976))

(declare-fun m!81978 () Bool)

(assert (=> b!86166 m!81978))

(assert (=> b!86164 m!81976))

(assert (=> b!86168 m!81978))

(declare-fun m!81980 () Bool)

(assert (=> b!86165 m!81980))

(declare-fun m!81982 () Bool)

(assert (=> b!86167 m!81982))

(assert (=> d!57593 d!57631))

(declare-fun d!57633 () Bool)

(declare-fun res!44849 () Bool)

(declare-fun e!46745 () Bool)

(assert (=> d!57633 (=> res!44849 e!46745)))

(assert (=> d!57633 (= res!44849 (is-Empty!185 (ins!0 x!30384 t!48204)))))

(assert (=> d!57633 (= (redDescHaveBlackChildren!0 (ins!0 x!30384 t!48204)) e!46745)))

(declare-fun b!86171 () Bool)

(declare-fun e!46746 () Bool)

(assert (=> b!86171 (= e!46745 e!46746)))

(declare-fun res!44850 () Bool)

(assert (=> b!86171 (=> (not res!44850) (not e!46746))))

(assert (=> b!86171 (= res!44850 (redNodesHaveBlackChildren!0 (left!1645 (ins!0 x!30384 t!48204))))))

(declare-fun b!86172 () Bool)

(assert (=> b!86172 (= e!46746 (redNodesHaveBlackChildren!0 (right!1648 (ins!0 x!30384 t!48204))))))

(assert (= (and d!57633 (not res!44849)) b!86171))

(assert (= (and b!86171 res!44850) b!86172))

(declare-fun m!81984 () Bool)

(assert (=> b!86171 m!81984))

(declare-fun m!81986 () Bool)

(assert (=> b!86172 m!81986))

(assert (=> d!57593 d!57633))

(declare-fun d!57635 () Bool)

(declare-fun e!46749 () Bool)

(assert (=> d!57635 e!46749))

(declare-fun res!44854 () Bool)

(assert (=> d!57635 (=> (not res!44854) (not e!46749))))

(declare-fun lt!20030 () Tree!102)

(assert (=> d!57635 (= res!44854 (is-Node!146 lt!20030))))

(assert (=> d!57635 (= lt!20030 (ite (and (is-Black!4 (color!35 t!48204)) (is-Node!146 (ite lt!20010 lt!20011 (left!1645 t!48204))) (is-Red!4 (color!35 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (is-Node!146 (left!1645 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (is-Red!4 (color!35 (left!1645 (ite lt!20010 lt!20011 (left!1645 t!48204)))))) (Node!146 Red!4 (Node!146 Black!4 (left!1645 (left!1645 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (value!6792 (left!1645 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (right!1648 (left!1645 (ite lt!20010 lt!20011 (left!1645 t!48204))))) (value!6792 (ite lt!20010 lt!20011 (left!1645 t!48204))) (Node!146 Black!4 (right!1648 (ite lt!20010 lt!20011 (left!1645 t!48204))) (value!6792 t!48204) (ite lt!20010 (right!1648 t!48204) lt!20011))) (ite (and (is-Black!4 (color!35 t!48204)) (is-Node!146 (ite lt!20010 lt!20011 (left!1645 t!48204))) (is-Red!4 (color!35 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (is-Node!146 (right!1648 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (is-Red!4 (color!35 (right!1648 (ite lt!20010 lt!20011 (left!1645 t!48204)))))) (Node!146 Red!4 (Node!146 Black!4 (left!1645 (ite lt!20010 lt!20011 (left!1645 t!48204))) (value!6792 (ite lt!20010 lt!20011 (left!1645 t!48204))) (left!1645 (right!1648 (ite lt!20010 lt!20011 (left!1645 t!48204))))) (value!6792 (right!1648 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (Node!146 Black!4 (right!1648 (right!1648 (ite lt!20010 lt!20011 (left!1645 t!48204)))) (value!6792 t!48204) (ite lt!20010 (right!1648 t!48204) lt!20011))) (ite (and (is-Black!4 (color!35 t!48204)) (is-Node!146 (ite lt!20010 (right!1648 t!48204) lt!20011)) (is-Red!4 (color!35 (ite lt!20010 (right!1648 t!48204) lt!20011))) (is-Node!146 (left!1645 (ite lt!20010 (right!1648 t!48204) lt!20011))) (is-Red!4 (color!35 (left!1645 (ite lt!20010 (right!1648 t!48204) lt!20011))))) (Node!146 Red!4 (Node!146 Black!4 (ite lt!20010 lt!20011 (left!1645 t!48204)) (value!6792 t!48204) (left!1645 (left!1645 (ite lt!20010 (right!1648 t!48204) lt!20011)))) (value!6792 (left!1645 (ite lt!20010 (right!1648 t!48204) lt!20011))) (Node!146 Black!4 (right!1648 (left!1645 (ite lt!20010 (right!1648 t!48204) lt!20011))) (value!6792 (ite lt!20010 (right!1648 t!48204) lt!20011)) (right!1648 (ite lt!20010 (right!1648 t!48204) lt!20011)))) (ite (and (is-Black!4 (color!35 t!48204)) (is-Node!146 (ite lt!20010 (right!1648 t!48204) lt!20011)) (is-Red!4 (color!35 (ite lt!20010 (right!1648 t!48204) lt!20011))) (is-Node!146 (right!1648 (ite lt!20010 (right!1648 t!48204) lt!20011))) (is-Red!4 (color!35 (right!1648 (ite lt!20010 (right!1648 t!48204) lt!20011))))) (Node!146 Red!4 (Node!146 Black!4 (ite lt!20010 lt!20011 (left!1645 t!48204)) (value!6792 t!48204) (left!1645 (ite lt!20010 (right!1648 t!48204) lt!20011))) (value!6792 (ite lt!20010 (right!1648 t!48204) lt!20011)) (Node!146 Black!4 (left!1645 (right!1648 (ite lt!20010 (right!1648 t!48204) lt!20011))) (value!6792 (right!1648 (ite lt!20010 (right!1648 t!48204) lt!20011))) (right!1648 (right!1648 (ite lt!20010 (right!1648 t!48204) lt!20011))))) (Node!146 (color!35 t!48204) (ite lt!20010 lt!20011 (left!1645 t!48204)) (value!6792 t!48204) (ite lt!20010 (right!1648 t!48204) lt!20011)))))))))

(assert (=> d!57635 (= (balance!0 (color!35 t!48204) (ite lt!20010 lt!20011 (left!1645 t!48204)) (value!6792 t!48204) (ite lt!20010 (right!1648 t!48204) lt!20011)) lt!20030)))

(declare-fun b!86176 () Bool)

(assert (=> b!86176 (= e!46749 (= (content!8 lt!20030) (content!8 (Node!146 (color!35 t!48204) (ite lt!20010 lt!20011 (left!1645 t!48204)) (value!6792 t!48204) (ite lt!20010 (right!1648 t!48204) lt!20011)))))))

(assert (= (and d!57635 res!44854) b!86176))

(declare-fun m!81988 () Bool)

(assert (=> b!86176 m!81988))

(declare-fun m!81990 () Bool)

(assert (=> b!86176 m!81990))

(assert (=> b!86082 d!57635))

(assert (=> b!86041 d!57615))

(assert (=> b!86046 d!57617))

(declare-fun d!57637 () Bool)

(declare-fun res!44857 () Bool)

(declare-fun e!46750 () Bool)

(assert (=> d!57637 (=> res!44857 e!46750)))

(assert (=> d!57637 (= res!44857 (not (is-Node!146 (right!1648 res!44621))))))

(assert (=> d!57637 (= (blackBalanced!0 (right!1648 res!44621)) e!46750)))

(declare-fun b!86177 () Bool)

(declare-fun e!46751 () Bool)

(assert (=> b!86177 (= e!46750 e!46751)))

(declare-fun res!44856 () Bool)

(assert (=> b!86177 (=> (not res!44856) (not e!46751))))

(assert (=> b!86177 (= res!44856 (blackBalanced!0 (left!1645 (right!1648 res!44621))))))

(declare-fun b!86178 () Bool)

(declare-fun res!44855 () Bool)

(assert (=> b!86178 (=> (not res!44855) (not e!46751))))

(assert (=> b!86178 (= res!44855 (blackBalanced!0 (right!1648 (right!1648 res!44621))))))

(declare-fun b!86179 () Bool)

(assert (=> b!86179 (= e!46751 (= (blackHeight!0 (left!1645 (right!1648 res!44621))) (blackHeight!0 (right!1648 (right!1648 res!44621)))))))

(assert (= (and d!57637 (not res!44857)) b!86177))

(assert (= (and b!86177 res!44856) b!86178))

(assert (= (and b!86178 res!44855) b!86179))

(declare-fun m!81992 () Bool)

(assert (=> b!86177 m!81992))

(declare-fun m!81994 () Bool)

(assert (=> b!86178 m!81994))

(assert (=> b!86179 m!81966))

(declare-fun m!81996 () Bool)

(assert (=> b!86179 m!81996))

(assert (=> b!86015 d!57637))

(declare-fun d!57639 () Bool)

(declare-fun res!44860 () Bool)

(declare-fun e!46752 () Bool)

(assert (=> d!57639 (=> res!44860 e!46752)))

(assert (=> d!57639 (= res!44860 (not (is-Node!146 (left!1645 t!48204))))))

(assert (=> d!57639 (= (blackBalanced!0 (left!1645 t!48204)) e!46752)))

(declare-fun b!86180 () Bool)

(declare-fun e!46753 () Bool)

(assert (=> b!86180 (= e!46752 e!46753)))

(declare-fun res!44859 () Bool)

(assert (=> b!86180 (=> (not res!44859) (not e!46753))))

(assert (=> b!86180 (= res!44859 (blackBalanced!0 (left!1645 (left!1645 t!48204))))))

(declare-fun b!86181 () Bool)

(declare-fun res!44858 () Bool)

(assert (=> b!86181 (=> (not res!44858) (not e!46753))))

(assert (=> b!86181 (= res!44858 (blackBalanced!0 (right!1648 (left!1645 t!48204))))))

(declare-fun b!86182 () Bool)

(assert (=> b!86182 (= e!46753 (= (blackHeight!0 (left!1645 (left!1645 t!48204))) (blackHeight!0 (right!1648 (left!1645 t!48204)))))))

(assert (= (and d!57639 (not res!44860)) b!86180))

(assert (= (and b!86180 res!44859) b!86181))

(assert (= (and b!86181 res!44858) b!86182))

(declare-fun m!81998 () Bool)

(assert (=> b!86180 m!81998))

(declare-fun m!82000 () Bool)

(assert (=> b!86181 m!82000))

(declare-fun m!82002 () Bool)

(assert (=> b!86182 m!82002))

(declare-fun m!82004 () Bool)

(assert (=> b!86182 m!82004))

(assert (=> b!86092 d!57639))

(declare-fun b!86183 () Bool)

(declare-fun e!46755 () Bool)

(assert (=> b!86183 (= e!46755 (redNodesHaveBlackChildren!0 (right!1648 (left!1645 t!48204))))))

(declare-fun b!86184 () Bool)

(declare-fun e!46754 () Bool)

(assert (=> b!86184 (= e!46754 e!46755)))

(declare-fun res!44864 () Bool)

(assert (=> b!86184 (=> (not res!44864) (not e!46755))))

(assert (=> b!86184 (= res!44864 (isBlack!0 (left!1645 (left!1645 t!48204))))))

(declare-fun d!57641 () Bool)

(declare-fun res!44863 () Bool)

(declare-fun e!46756 () Bool)

(assert (=> d!57641 (=> res!44863 e!46756)))

(assert (=> d!57641 (= res!44863 (is-Empty!185 (left!1645 t!48204)))))

(assert (=> d!57641 (= (redNodesHaveBlackChildren!0 (left!1645 t!48204)) e!46756)))

(declare-fun b!86185 () Bool)

(declare-fun res!44862 () Bool)

(assert (=> b!86185 (=> (not res!44862) (not e!46755))))

(assert (=> b!86185 (= res!44862 (redNodesHaveBlackChildren!0 (left!1645 (left!1645 t!48204))))))

(declare-fun b!86186 () Bool)

(declare-fun res!44865 () Bool)

(assert (=> b!86186 (=> (not res!44865) (not e!46755))))

(assert (=> b!86186 (= res!44865 (isBlack!0 (right!1648 (left!1645 t!48204))))))

(declare-fun b!86187 () Bool)

(declare-fun e!46757 () Bool)

(assert (=> b!86187 (= e!46754 e!46757)))

(declare-fun res!44861 () Bool)

(assert (=> b!86187 (=> (not res!44861) (not e!46757))))

(assert (=> b!86187 (= res!44861 (redNodesHaveBlackChildren!0 (left!1645 (left!1645 t!48204))))))

(declare-fun b!86188 () Bool)

(assert (=> b!86188 (= e!46757 (redNodesHaveBlackChildren!0 (right!1648 (left!1645 t!48204))))))

(declare-fun b!86189 () Bool)

(assert (=> b!86189 (= e!46756 e!46754)))

(declare-fun c!21374 () Bool)

(assert (=> b!86189 (= c!21374 (and (is-Node!146 (left!1645 t!48204)) (is-Black!4 (color!35 (left!1645 t!48204)))))))

(assert (= (and d!57641 (not res!44863)) b!86189))

(assert (= (and b!86187 res!44861) b!86188))

(assert (= (and b!86184 res!44864) b!86186))

(assert (= (and b!86186 res!44865) b!86185))

(assert (= (and b!86185 res!44862) b!86183))

(assert (= (and b!86189 c!21374) b!86187))

(assert (= (and b!86189 (not c!21374)) b!86184))

(declare-fun m!82006 () Bool)

(assert (=> b!86188 m!82006))

(declare-fun m!82008 () Bool)

(assert (=> b!86185 m!82008))

(assert (=> b!86183 m!82006))

(assert (=> b!86187 m!82008))

(declare-fun m!82010 () Bool)

(assert (=> b!86184 m!82010))

(declare-fun m!82012 () Bool)

(assert (=> b!86186 m!82012))

(assert (=> b!86050 d!57641))

(declare-fun d!57643 () Bool)

(declare-fun res!44868 () Bool)

(declare-fun e!46758 () Bool)

(assert (=> d!57643 (=> res!44868 e!46758)))

(assert (=> d!57643 (= res!44868 (not (is-Node!146 lt!19999)))))

(assert (=> d!57643 (= (blackBalanced!0 lt!19999) e!46758)))

(declare-fun b!86190 () Bool)

(declare-fun e!46759 () Bool)

(assert (=> b!86190 (= e!46758 e!46759)))

(declare-fun res!44867 () Bool)

(assert (=> b!86190 (=> (not res!44867) (not e!46759))))

(assert (=> b!86190 (= res!44867 (blackBalanced!0 (left!1645 lt!19999)))))

(declare-fun b!86191 () Bool)

(declare-fun res!44866 () Bool)

(assert (=> b!86191 (=> (not res!44866) (not e!46759))))

(assert (=> b!86191 (= res!44866 (blackBalanced!0 (right!1648 lt!19999)))))

(declare-fun b!86192 () Bool)

(assert (=> b!86192 (= e!46759 (= (blackHeight!0 (left!1645 lt!19999)) (blackHeight!0 (right!1648 lt!19999))))))

(assert (= (and d!57643 (not res!44868)) b!86190))

(assert (= (and b!86190 res!44867) b!86191))

(assert (= (and b!86191 res!44866) b!86192))

(declare-fun m!82014 () Bool)

(assert (=> b!86190 m!82014))

(declare-fun m!82016 () Bool)

(assert (=> b!86191 m!82016))

(declare-fun m!82018 () Bool)

(assert (=> b!86192 m!82018))

(declare-fun m!82020 () Bool)

(assert (=> b!86192 m!82020))

(assert (=> b!86058 d!57643))

(assert (=> b!86048 d!57641))

(declare-fun d!57645 () Bool)

(assert (=> d!57645 (= (isBlack!0 (left!1645 t!48204)) (or (is-Empty!185 (left!1645 t!48204)) (and (is-Node!146 (left!1645 t!48204)) (is-Black!4 (color!35 (left!1645 t!48204))))))))

(assert (=> b!86047 d!57645))

(declare-fun d!57647 () Bool)

(declare-fun c!21375 () Bool)

(assert (=> d!57647 (= c!21375 (is-Empty!185 (left!1645 t!48204)))))

(declare-fun e!46760 () (Set Int))

(assert (=> d!57647 (= (content!8 (left!1645 t!48204)) e!46760)))

(declare-fun b!86193 () Bool)

(assert (=> b!86193 (= e!46760 (as emptyset (Set Int)))))

(declare-fun b!86194 () Bool)

(assert (=> b!86194 (= e!46760 (union (union (content!8 (left!1645 (left!1645 t!48204))) (insert (value!6792 (left!1645 t!48204)) (as emptyset (Set Int)))) (content!8 (right!1648 (left!1645 t!48204)))))))

(assert (= (and d!57647 c!21375) b!86193))

(assert (= (and d!57647 (not c!21375)) b!86194))

(declare-fun m!82022 () Bool)

(assert (=> b!86194 m!82022))

(declare-fun m!82024 () Bool)

(assert (=> b!86194 m!82024))

(declare-fun m!82026 () Bool)

(assert (=> b!86194 m!82026))

(assert (=> b!86024 d!57647))

(declare-fun d!57649 () Bool)

(declare-fun c!21376 () Bool)

(assert (=> d!57649 (= c!21376 (is-Empty!185 (right!1648 t!48204)))))

(declare-fun e!46761 () (Set Int))

(assert (=> d!57649 (= (content!8 (right!1648 t!48204)) e!46761)))

(declare-fun b!86195 () Bool)

(assert (=> b!86195 (= e!46761 (as emptyset (Set Int)))))

(declare-fun b!86196 () Bool)

(assert (=> b!86196 (= e!46761 (union (union (content!8 (left!1645 (right!1648 t!48204))) (insert (value!6792 (right!1648 t!48204)) (as emptyset (Set Int)))) (content!8 (right!1648 (right!1648 t!48204)))))))

(assert (= (and d!57649 c!21376) b!86195))

(assert (= (and d!57649 (not c!21376)) b!86196))

(declare-fun m!82028 () Bool)

(assert (=> b!86196 m!82028))

(declare-fun m!82030 () Bool)

(assert (=> b!86196 m!82030))

(declare-fun m!82032 () Bool)

(assert (=> b!86196 m!82032))

(assert (=> b!86024 d!57649))

(declare-fun b!86198 () Bool)

(declare-fun e!46762 () Int)

(declare-fun lt!20031 () Int)

(assert (=> b!86198 (= e!46762 (ite (and (is-Node!146 (left!1645 t!48204)) (is-Black!4 (color!35 (left!1645 t!48204)))) (+ lt!20031 1) lt!20031))))

(assert (=> b!86198 (= lt!20031 (blackHeight!0 (left!1645 (left!1645 t!48204))))))

(declare-fun d!57651 () Bool)

(declare-fun c!21377 () Bool)

(assert (=> d!57651 (= c!21377 (is-Empty!185 (left!1645 t!48204)))))

(assert (=> d!57651 (= (blackHeight!0 (left!1645 t!48204)) e!46762)))

(declare-fun b!86197 () Bool)

(assert (=> b!86197 (= e!46762 1)))

(assert (= (and d!57651 c!21377) b!86197))

(assert (= (and d!57651 (not c!21377)) b!86198))

(assert (=> b!86198 m!82002))

(assert (=> b!86094 d!57651))

(declare-fun b!86200 () Bool)

(declare-fun e!46763 () Int)

(declare-fun lt!20032 () Int)

(assert (=> b!86200 (= e!46763 (ite (and (is-Node!146 (right!1648 t!48204)) (is-Black!4 (color!35 (right!1648 t!48204)))) (+ lt!20032 1) lt!20032))))

(assert (=> b!86200 (= lt!20032 (blackHeight!0 (left!1645 (right!1648 t!48204))))))

(declare-fun d!57653 () Bool)

(declare-fun c!21378 () Bool)

(assert (=> d!57653 (= c!21378 (is-Empty!185 (right!1648 t!48204)))))

(assert (=> d!57653 (= (blackHeight!0 (right!1648 t!48204)) e!46763)))

(declare-fun b!86199 () Bool)

(assert (=> b!86199 (= e!46763 1)))

(assert (= (and d!57653 c!21378) b!86199))

(assert (= (and d!57653 (not c!21378)) b!86200))

(assert (=> b!86200 m!81972))

(assert (=> b!86094 d!57653))

(assert (=> b!86089 d!57597))

(declare-fun d!57655 () Bool)

(declare-fun res!44871 () Bool)

(declare-fun e!46764 () Bool)

(assert (=> d!57655 (=> res!44871 e!46764)))

(assert (=> d!57655 (= res!44871 (not (is-Node!146 lt!20013)))))

(assert (=> d!57655 (= (blackBalanced!0 lt!20013) e!46764)))

(declare-fun b!86201 () Bool)

(declare-fun e!46765 () Bool)

(assert (=> b!86201 (= e!46764 e!46765)))

(declare-fun res!44870 () Bool)

(assert (=> b!86201 (=> (not res!44870) (not e!46765))))

(assert (=> b!86201 (= res!44870 (blackBalanced!0 (left!1645 lt!20013)))))

(declare-fun b!86202 () Bool)

(declare-fun res!44869 () Bool)

(assert (=> b!86202 (=> (not res!44869) (not e!46765))))

(assert (=> b!86202 (= res!44869 (blackBalanced!0 (right!1648 lt!20013)))))

(declare-fun b!86203 () Bool)

(assert (=> b!86203 (= e!46765 (= (blackHeight!0 (left!1645 lt!20013)) (blackHeight!0 (right!1648 lt!20013))))))

(assert (= (and d!57655 (not res!44871)) b!86201))

(assert (= (and b!86201 res!44870) b!86202))

(assert (= (and b!86202 res!44869) b!86203))

(declare-fun m!82034 () Bool)

(assert (=> b!86201 m!82034))

(declare-fun m!82036 () Bool)

(assert (=> b!86202 m!82036))

(declare-fun m!82038 () Bool)

(assert (=> b!86203 m!82038))

(declare-fun m!82040 () Bool)

(assert (=> b!86203 m!82040))

(assert (=> b!86088 d!57655))

(declare-fun d!57657 () Bool)

(assert (=> d!57657 (= (isBlack!0 (left!1645 res!44621)) (or (is-Empty!185 (left!1645 res!44621)) (and (is-Node!146 (left!1645 res!44621)) (is-Black!4 (color!35 (left!1645 res!44621))))))))

(assert (=> b!86040 d!57657))

(declare-fun d!57659 () Bool)

(assert (=> d!57659 (= (isBlack!0 (right!1648 t!48204)) (or (is-Empty!185 (right!1648 t!48204)) (and (is-Node!146 (right!1648 t!48204)) (is-Black!4 (color!35 (right!1648 t!48204))))))))

(assert (=> b!86049 d!57659))

(push 1)

(assert (not b!86181))

(assert (not b!86126))

(assert (not b!86190))

(assert (not b!86176))

(assert (not b!86104))

(assert (not b!86135))

(assert (not b!86165))

(assert (not b!86138))

(assert (not b!86152))

(assert (not b!86123))

(assert (not b!86147))

(assert (not b!86125))

(assert (not b!86203))

(assert (not b!86164))

(assert (not b!86095))

(assert (not b!86113))

(assert (not b!86163))

(assert (not b!86111))

(assert (not b!86146))

(assert (not b!86114))

(assert (not b!86132))

(assert (not b!86186))

(assert (not b!86158))

(assert (not b!86124))

(assert (not b!86136))

(assert (not b!86180))

(assert (not b!86171))

(assert (not b!86183))

(assert (not b!86194))

(assert (not b!86182))

(assert (not b!86112))

(assert (not b!86196))

(assert (not b!86191))

(assert (not b!86198))

(assert (not b!86134))

(assert (not b!86167))

(assert (not b!86103))

(assert (not b!86200))

(assert (not b!86139))

(assert (not b!86166))

(assert (not b!86168))

(assert (not b!86127))

(assert (not b!86145))

(assert (not b!86184))

(assert (not b!86099))

(assert (not b!86106))

(assert (not b!86133))

(assert (not b!86140))

(assert (not b!86131))

(assert (not b!86097))

(assert (not b!86121))

(assert (not b!86129))

(assert (not b!86202))

(assert (not b!86162))

(assert (not b!86188))

(assert (not b!86179))

(assert (not b!86177))

(assert (not b!86098))

(assert (not b!86143))

(assert (not b!86201))

(assert (not b!86185))

(assert (not b!86192))

(assert (not b!86172))

(assert (not b!86178))

(assert (not b!86096))

(assert (not b!86128))

(assert (not b!86160))

(assert (not b!86105))

(assert (not b!86187))

(assert (not b!86161))

(assert (not d!57619))

(assert (not b!86169))

(assert (not b!86115))

(assert (not b!86150))

(assert (not b!86100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

