; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11256 () Bool)

(assert start!11256)

(declare-fun b!85919 () Bool)

(declare-fun e!46604 () Bool)

(declare-fun e!46603 () Bool)

(assert (=> b!85919 (= e!46604 e!46603)))

(declare-fun res!44657 () Bool)

(assert (=> b!85919 (=> res!44657 e!46603)))

(declare-datatypes () ((Color!4 (Red!3) (Black!3))))

(declare-datatypes () ((Tree!101 (Empty!184) (Node!145 (color!34 Color!4) (left!1644 Tree!101) (value!6791 Int) (right!1647 Tree!101)))))

(declare-fun n!1700 () Tree!101)

(declare-fun redDescHaveBlackChildren!0 (Tree!101) Bool)

(assert (=> b!85919 (= res!44657 (not (redDescHaveBlackChildren!0 n!1700)))))

(declare-fun b!85920 () Bool)

(declare-fun blackBalanced!0 (Tree!101) Bool)

(assert (=> b!85920 (= e!46603 (not (blackBalanced!0 n!1700)))))

(declare-fun b!85917 () Bool)

(declare-fun res!44658 () Bool)

(assert (=> b!85917 (=> (not res!44658) (not e!46604))))

(declare-fun t!48204 () Tree!101)

(assert (=> b!85917 (= res!44658 (blackBalanced!0 t!48204))))

(declare-fun b!85918 () Bool)

(declare-fun res!44660 () Bool)

(assert (=> b!85918 (=> (not res!44660) (not e!46604))))

(declare-fun x!30384 () Int)

(declare-fun ins!0 (Int Tree!101) Tree!101)

(assert (=> b!85918 (= res!44660 (= n!1700 (ins!0 x!30384 t!48204)))))

(declare-fun res!44659 () Bool)

(assert (=> start!11256 (=> (not res!44659) (not e!46604))))

(declare-fun redNodesHaveBlackChildren!0 (Tree!101) Bool)

(assert (=> start!11256 (= res!44659 (redNodesHaveBlackChildren!0 t!48204))))

(assert (=> start!11256 e!46604))

(assert (=> start!11256 true))

(assert (= (and start!11256 res!44659) b!85917))

(assert (= (and b!85917 res!44658) b!85918))

(assert (= (and b!85918 res!44660) b!85919))

(assert (= (and b!85919 (not res!44657)) b!85920))

(declare-fun m!81736 () Bool)

(assert (=> b!85917 m!81736))

(declare-fun m!81738 () Bool)

(assert (=> b!85920 m!81738))

(declare-fun m!81740 () Bool)

(assert (=> b!85918 m!81740))

(declare-fun m!81742 () Bool)

(assert (=> b!85919 m!81742))

(declare-fun m!81744 () Bool)

(assert (=> start!11256 m!81744))

(push 1)

(assert (not b!85919))

(assert (not b!85920))

(assert (not start!11256))

(assert (not b!85918))

(assert (not b!85917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57573 () Bool)

(declare-fun res!44665 () Bool)

(declare-fun e!46609 () Bool)

(assert (=> d!57573 (=> res!44665 e!46609)))

(assert (=> d!57573 (= res!44665 (is-Empty!184 n!1700))))

(assert (=> d!57573 (= (redDescHaveBlackChildren!0 n!1700) e!46609)))

(declare-fun b!85925 () Bool)

(declare-fun e!46610 () Bool)

(assert (=> b!85925 (= e!46609 e!46610)))

(declare-fun res!44666 () Bool)

(assert (=> b!85925 (=> (not res!44666) (not e!46610))))

(assert (=> b!85925 (= res!44666 (redNodesHaveBlackChildren!0 (left!1644 n!1700)))))

(declare-fun b!85926 () Bool)

(assert (=> b!85926 (= e!46610 (redNodesHaveBlackChildren!0 (right!1647 n!1700)))))

(assert (= (and d!57573 (not res!44665)) b!85925))

(assert (= (and b!85925 res!44666) b!85926))

(declare-fun m!81746 () Bool)

(assert (=> b!85925 m!81746))

(declare-fun m!81748 () Bool)

(assert (=> b!85926 m!81748))

(assert (=> b!85919 d!57573))

(declare-fun d!57575 () Bool)

(declare-fun res!44675 () Bool)

(declare-fun e!46615 () Bool)

(assert (=> d!57575 (=> res!44675 e!46615)))

(assert (=> d!57575 (= res!44675 (not (is-Node!145 t!48204)))))

(assert (=> d!57575 (= (blackBalanced!0 t!48204) e!46615)))

(declare-fun b!85933 () Bool)

(declare-fun e!46616 () Bool)

(assert (=> b!85933 (= e!46615 e!46616)))

(declare-fun res!44673 () Bool)

(assert (=> b!85933 (=> (not res!44673) (not e!46616))))

(assert (=> b!85933 (= res!44673 (blackBalanced!0 (left!1644 t!48204)))))

(declare-fun b!85934 () Bool)

(declare-fun res!44674 () Bool)

(assert (=> b!85934 (=> (not res!44674) (not e!46616))))

(assert (=> b!85934 (= res!44674 (blackBalanced!0 (right!1647 t!48204)))))

(declare-fun b!85935 () Bool)

(declare-fun blackHeight!0 (Tree!101) Int)

(assert (=> b!85935 (= e!46616 (= (blackHeight!0 (left!1644 t!48204)) (blackHeight!0 (right!1647 t!48204))))))

(assert (= (and d!57575 (not res!44675)) b!85933))

(assert (= (and b!85933 res!44673) b!85934))

(assert (= (and b!85934 res!44674) b!85935))

(declare-fun m!81750 () Bool)

(assert (=> b!85933 m!81750))

(declare-fun m!81752 () Bool)

(assert (=> b!85934 m!81752))

(declare-fun m!81754 () Bool)

(assert (=> b!85935 m!81754))

(declare-fun m!81756 () Bool)

(assert (=> b!85935 m!81756))

(assert (=> b!85917 d!57575))

(declare-fun b!85958 () Bool)

(declare-fun res!44702 () Bool)

(declare-fun e!46631 () Bool)

(assert (=> b!85958 (=> (not res!44702) (not e!46631))))

(declare-fun lt!19992 () Tree!101)

(declare-fun size!3 (Tree!101) Int)

(assert (=> b!85958 (= res!44702 (<= (size!3 t!48204) (size!3 lt!19992)))))

(declare-fun lt!19993 () Bool)

(declare-fun e!46627 () Tree!101)

(declare-fun b!85959 () Bool)

(assert (=> b!85959 (= e!46627 (ins!0 x!30384 (ite lt!19993 (left!1644 t!48204) (right!1647 t!48204))))))

(declare-fun b!85960 () Bool)

(declare-fun e!46628 () Bool)

(assert (=> b!85960 (= e!46628 (blackBalanced!0 t!48204))))

(declare-fun b!85961 () Bool)

(declare-fun e!46630 () Tree!101)

(declare-fun res!44700 () Tree!101)

(assert (=> b!85961 (= e!46630 res!44700)))

(assert (=> b!85961 true))

(assert (=> b!85961 true))

(declare-fun b!85962 () Bool)

(declare-fun res!44698 () Bool)

(assert (=> b!85962 (=> (not res!44698) (not e!46631))))

(assert (=> b!85962 (= res!44698 (<= (size!3 lt!19992) (+ (size!3 t!48204) 1)))))

(declare-fun b!85963 () Bool)

(declare-fun e!46629 () Tree!101)

(assert (=> b!85963 (= e!46629 (Node!145 Red!3 Empty!184 x!30384 Empty!184))))

(declare-fun lt!19994 () Tree!101)

(declare-fun lt!19996 () Bool)

(declare-fun b!85964 () Bool)

(declare-fun balance!0 (Color!4 Tree!101 Int Tree!101) Tree!101)

(assert (=> b!85964 (= e!46630 (balance!0 (color!34 t!48204) (ite lt!19996 lt!19994 (left!1644 t!48204)) (value!6791 t!48204) (ite lt!19996 (right!1647 t!48204) lt!19994)))))

(declare-fun b!85965 () Bool)

(declare-fun res!44703 () Tree!101)

(assert (=> b!85965 (= e!46627 res!44703)))

(assert (=> b!85965 true))

(declare-fun b!85966 () Bool)

(assert (=> b!85966 (= e!46631 (blackBalanced!0 lt!19992))))

(declare-fun d!57577 () Bool)

(assert (=> d!57577 e!46631))

(declare-fun res!44697 () Bool)

(assert (=> d!57577 (=> (not res!44697) (not e!46631))))

(declare-fun content!8 (Tree!101) (Set Int))

(assert (=> d!57577 (= res!44697 (= (content!8 lt!19992) (union (content!8 t!48204) (insert x!30384 (as emptyset (Set Int))))))))

(assert (=> d!57577 (= lt!19992 e!46629)))

(declare-fun c!21333 () Bool)

(assert (=> d!57577 (= c!21333 (is-Empty!184 t!48204))))

(assert (=> d!57577 e!46628))

(declare-fun res!44701 () Bool)

(assert (=> d!57577 (=> (not res!44701) (not e!46628))))

(assert (=> d!57577 (= res!44701 (redNodesHaveBlackChildren!0 t!48204))))

(assert (=> d!57577 (= (ins!0 x!30384 t!48204) lt!19992)))

(declare-fun b!85967 () Bool)

(declare-fun lt!19995 () Tree!101)

(assert (=> b!85967 (= e!46629 (ite lt!19993 lt!19995 (ite (= x!30384 (value!6791 t!48204)) (Node!145 (color!34 t!48204) (left!1644 t!48204) (value!6791 t!48204) (right!1647 t!48204)) lt!19995)))))

(assert (=> b!85967 (= lt!19995 e!46630)))

(declare-fun c!21334 () Bool)

(assert (=> b!85967 (= c!21334 (or lt!19996 (and (not lt!19993) (not (= x!30384 (value!6791 t!48204))))))))

(assert (=> b!85967 (= lt!19996 lt!19993)))

(assert (=> b!85967 (= lt!19994 e!46627)))

(declare-fun c!21332 () Bool)

(assert (=> b!85967 (= c!21332 (or lt!19993 (not (= x!30384 (value!6791 t!48204)))))))

(assert (=> b!85967 (= lt!19993 (< x!30384 (value!6791 t!48204)))))

(declare-fun b!85968 () Bool)

(declare-fun res!44699 () Bool)

(assert (=> b!85968 (=> (not res!44699) (not e!46631))))

(assert (=> b!85968 (= res!44699 (redDescHaveBlackChildren!0 lt!19992))))

(assert (= (and d!57577 res!44701) b!85960))

(assert (= (and b!85967 c!21332) b!85959))

(assert (= (and b!85967 (not c!21332)) b!85965))

(assert (= (and b!85967 c!21334) b!85964))

(assert (= (and b!85967 (not c!21334)) b!85961))

(assert (= (and d!57577 c!21333) b!85963))

(assert (= (and d!57577 (not c!21333)) b!85967))

(assert (= (and d!57577 res!44697) b!85958))

(assert (= (and b!85958 res!44702) b!85962))

(assert (= (and b!85962 res!44698) b!85968))

(assert (= (and b!85968 res!44699) b!85966))

(declare-fun m!81758 () Bool)

(assert (=> b!85966 m!81758))

(assert (=> b!85960 m!81736))

(declare-fun m!81760 () Bool)

(assert (=> d!57577 m!81760))

(declare-fun m!81762 () Bool)

(assert (=> d!57577 m!81762))

(declare-fun m!81764 () Bool)

(assert (=> d!57577 m!81764))

(assert (=> d!57577 m!81744))

(declare-fun m!81766 () Bool)

(assert (=> b!85968 m!81766))

(declare-fun m!81768 () Bool)

(assert (=> b!85959 m!81768))

(declare-fun m!81770 () Bool)

(assert (=> b!85964 m!81770))

(declare-fun m!81772 () Bool)

(assert (=> b!85958 m!81772))

(declare-fun m!81774 () Bool)

(assert (=> b!85958 m!81774))

(assert (=> b!85962 m!81774))

(assert (=> b!85962 m!81772))

(assert (=> b!85918 d!57577))

(declare-fun d!57579 () Bool)

(declare-fun res!44706 () Bool)

(declare-fun e!46632 () Bool)

(assert (=> d!57579 (=> res!44706 e!46632)))

(assert (=> d!57579 (= res!44706 (not (is-Node!145 n!1700)))))

(assert (=> d!57579 (= (blackBalanced!0 n!1700) e!46632)))

(declare-fun b!85969 () Bool)

(declare-fun e!46633 () Bool)

(assert (=> b!85969 (= e!46632 e!46633)))

(declare-fun res!44704 () Bool)

(assert (=> b!85969 (=> (not res!44704) (not e!46633))))

(assert (=> b!85969 (= res!44704 (blackBalanced!0 (left!1644 n!1700)))))

(declare-fun b!85970 () Bool)

(declare-fun res!44705 () Bool)

(assert (=> b!85970 (=> (not res!44705) (not e!46633))))

(assert (=> b!85970 (= res!44705 (blackBalanced!0 (right!1647 n!1700)))))

(declare-fun b!85971 () Bool)

(assert (=> b!85971 (= e!46633 (= (blackHeight!0 (left!1644 n!1700)) (blackHeight!0 (right!1647 n!1700))))))

(assert (= (and d!57579 (not res!44706)) b!85969))

(assert (= (and b!85969 res!44704) b!85970))

(assert (= (and b!85970 res!44705) b!85971))

(declare-fun m!81776 () Bool)

(assert (=> b!85969 m!81776))

(declare-fun m!81778 () Bool)

(assert (=> b!85970 m!81778))

(declare-fun m!81780 () Bool)

(assert (=> b!85971 m!81780))

(declare-fun m!81782 () Bool)

(assert (=> b!85971 m!81782))

(assert (=> b!85920 d!57579))

(declare-fun b!85986 () Bool)

(declare-fun e!46645 () Bool)

(declare-fun e!46643 () Bool)

(assert (=> b!85986 (= e!46645 e!46643)))

(declare-fun res!44720 () Bool)

(assert (=> b!85986 (=> (not res!44720) (not e!46643))))

(declare-fun isBlack!0 (Tree!101) Bool)

(assert (=> b!85986 (= res!44720 (isBlack!0 (left!1644 t!48204)))))

(declare-fun b!85987 () Bool)

(declare-fun res!44718 () Bool)

(assert (=> b!85987 (=> (not res!44718) (not e!46643))))

(assert (=> b!85987 (= res!44718 (redNodesHaveBlackChildren!0 (left!1644 t!48204)))))

(declare-fun d!57581 () Bool)

(declare-fun res!44721 () Bool)

(declare-fun e!46642 () Bool)

(assert (=> d!57581 (=> res!44721 e!46642)))

(assert (=> d!57581 (= res!44721 (is-Empty!184 t!48204))))

(assert (=> d!57581 (= (redNodesHaveBlackChildren!0 t!48204) e!46642)))

(declare-fun b!85988 () Bool)

(assert (=> b!85988 (= e!46643 (redNodesHaveBlackChildren!0 (right!1647 t!48204)))))

(declare-fun b!85989 () Bool)

(assert (=> b!85989 (= e!46642 e!46645)))

(declare-fun c!21337 () Bool)

(assert (=> b!85989 (= c!21337 (and (is-Node!145 t!48204) (is-Black!3 (color!34 t!48204))))))

(declare-fun b!85990 () Bool)

(declare-fun e!46644 () Bool)

(assert (=> b!85990 (= e!46645 e!46644)))

(declare-fun res!44717 () Bool)

(assert (=> b!85990 (=> (not res!44717) (not e!46644))))

(assert (=> b!85990 (= res!44717 (redNodesHaveBlackChildren!0 (left!1644 t!48204)))))

(declare-fun b!85991 () Bool)

(assert (=> b!85991 (= e!46644 (redNodesHaveBlackChildren!0 (right!1647 t!48204)))))

(declare-fun b!85992 () Bool)

(declare-fun res!44719 () Bool)

(assert (=> b!85992 (=> (not res!44719) (not e!46643))))

(assert (=> b!85992 (= res!44719 (isBlack!0 (right!1647 t!48204)))))

(assert (= (and d!57581 (not res!44721)) b!85989))

(assert (= (and b!85990 res!44717) b!85991))

(assert (= (and b!85986 res!44720) b!85992))

(assert (= (and b!85992 res!44719) b!85987))

(assert (= (and b!85987 res!44718) b!85988))

(assert (= (and b!85989 c!21337) b!85990))

(assert (= (and b!85989 (not c!21337)) b!85986))

(declare-fun m!81784 () Bool)

(assert (=> b!85988 m!81784))

(declare-fun m!81786 () Bool)

(assert (=> b!85986 m!81786))

(declare-fun m!81788 () Bool)

(assert (=> b!85987 m!81788))

(declare-fun m!81790 () Bool)

(assert (=> b!85992 m!81790))

(assert (=> b!85990 m!81788))

(assert (=> b!85991 m!81784))

(assert (=> start!11256 d!57581))

(push 1)

(assert (not b!85926))

(assert (not b!85992))

(assert (not b!85991))

(assert (not b!85969))

(assert (not b!85970))

(assert (not b!85933))

(assert (not b!85986))

(assert (not d!57577))

(assert (not b!85988))

(assert (not b!85966))

(assert (not b!85971))

(assert (not b!85959))

(assert (not b!85960))

(assert (not b!85934))

(assert (not b!85990))

(assert (not b!85935))

(assert (not b!85964))

(assert (not b!85925))

(assert (not b!85962))

(assert (not b!85968))

(assert (not b!85987))

(assert (not b!85958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

