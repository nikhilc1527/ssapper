; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3770 () Bool)

(assert start!3770)

(declare-fun b!24627 () Bool)

(declare-fun res!10976 () Bool)

(declare-fun e!12749 () Bool)

(assert (=> b!24627 (=> res!10976 e!12749)))

(declare-datatypes () ((T!1809 (T!1810 (val!77 Int)))))

(declare-datatypes () ((Conc!54 (CC!53 (left!698 Conc!54) (right!701 Conc!54)) (Single!53 (x!8880 T!1809)) (Empty!64))))

(declare-fun res!5628 () Conc!54)

(declare-fun balanced!49 (Conc!54) Bool)

(assert (=> b!24627 (= res!10976 (not (balanced!49 res!5628)))))

(declare-fun b!24628 () Bool)

(declare-fun res!10982 () Bool)

(declare-fun e!12752 () Bool)

(assert (=> b!24628 (=> (not res!10982) (not e!12752))))

(declare-fun xs!625 () Conc!54)

(assert (=> b!24628 (= res!10982 (balanced!49 xs!625))))

(declare-fun b!24629 () Bool)

(assert (=> b!24629 (= e!12752 e!12749)))

(declare-fun res!10981 () Bool)

(assert (=> b!24629 (=> res!10981 e!12749)))

(declare-fun concInv!48 (Conc!54) Bool)

(assert (=> b!24629 (= res!10981 (not (concInv!48 res!5628)))))

(declare-fun b!24630 () Bool)

(declare-fun e!12750 () Bool)

(declare-fun tp!5341 () Bool)

(declare-fun tp!5343 () Bool)

(assert (=> b!24630 (= e!12750 (and tp!5341 tp!5343))))

(declare-fun b!24631 () Bool)

(declare-fun res!10983 () Bool)

(assert (=> b!24631 (=> (not res!10983) (not e!12752))))

(declare-fun ys!119 () Conc!54)

(assert (=> b!24631 (= res!10983 (concInv!48 ys!119))))

(declare-fun b!24632 () Bool)

(declare-fun e!12748 () Bool)

(declare-fun tp!5338 () Bool)

(declare-fun tp!5340 () Bool)

(assert (=> b!24632 (= e!12748 (and tp!5338 tp!5340))))

(declare-fun b!24633 () Bool)

(declare-fun tp_is_empty!153 () Bool)

(assert (=> b!24633 (= e!12750 tp_is_empty!153)))

(declare-fun res!10980 () Bool)

(assert (=> start!3770 (=> (not res!10980) (not e!12752))))

(assert (=> start!3770 (= res!10980 (concInv!48 xs!625))))

(assert (=> start!3770 e!12752))

(declare-fun e!12751 () Bool)

(assert (=> start!3770 e!12751))

(assert (=> start!3770 e!12748))

(assert (=> start!3770 e!12750))

(declare-fun b!24634 () Bool)

(declare-fun concatCorrectness!8 (Conc!54 Conc!54 Conc!54) Bool)

(assert (=> b!24634 (= e!12749 (not (concatCorrectness!8 res!5628 xs!625 ys!119)))))

(declare-fun b!24635 () Bool)

(declare-fun res!10978 () Bool)

(assert (=> b!24635 (=> (not res!10978) (not e!12752))))

(assert (=> b!24635 (= res!10978 (balanced!49 ys!119))))

(declare-fun b!24636 () Bool)

(declare-fun res!10977 () Bool)

(assert (=> b!24636 (=> res!10977 e!12749)))

(declare-fun lt!3829 () Int)

(declare-fun lt!3824 () Int)

(declare-fun lt!3825 () Int)

(assert (=> b!24636 (= res!10977 (> lt!3825 (+ (ite (>= lt!3829 lt!3824) lt!3829 lt!3824) 1)))))

(declare-fun level!43 (Conc!54) Int)

(assert (=> b!24636 (= lt!3824 (level!43 ys!119))))

(assert (=> b!24636 (= lt!3829 (level!43 xs!625))))

(assert (=> b!24636 (= lt!3825 (level!43 res!5628))))

(declare-fun b!24637 () Bool)

(declare-fun res!10975 () Bool)

(assert (=> b!24637 (=> res!10975 e!12749)))

(declare-fun lt!3827 () Int)

(declare-fun lt!3826 () Int)

(declare-fun lt!3828 () Int)

(assert (=> b!24637 (= res!10975 (< lt!3826 (ite (>= lt!3828 lt!3827) lt!3828 lt!3827)))))

(assert (=> b!24637 (= lt!3827 (level!43 ys!119))))

(assert (=> b!24637 (= lt!3828 (level!43 xs!625))))

(assert (=> b!24637 (= lt!3826 (level!43 res!5628))))

(declare-fun b!24638 () Bool)

(assert (=> b!24638 (= e!12751 tp_is_empty!153)))

(declare-fun b!24639 () Bool)

(assert (=> b!24639 (= e!12748 tp_is_empty!153)))

(declare-fun b!24640 () Bool)

(declare-fun res!10979 () Bool)

(assert (=> b!24640 (=> (not res!10979) (not e!12752))))

(assert (=> b!24640 (= res!10979 (and (not (is-Empty!64 ys!119)) (is-Empty!64 xs!625) (= res!5628 ys!119)))))

(declare-fun b!24641 () Bool)

(declare-fun tp!5342 () Bool)

(declare-fun tp!5339 () Bool)

(assert (=> b!24641 (= e!12751 (and tp!5342 tp!5339))))

(assert (= (and start!3770 res!10980) b!24628))

(assert (= (and b!24628 res!10982) b!24631))

(assert (= (and b!24631 res!10983) b!24635))

(assert (= (and b!24635 res!10978) b!24640))

(assert (= (and b!24640 res!10979) b!24629))

(assert (= (and b!24629 (not res!10981)) b!24627))

(assert (= (and b!24627 (not res!10976)) b!24636))

(assert (= (and b!24636 (not res!10977)) b!24637))

(assert (= (and b!24637 (not res!10975)) b!24634))

(assert (= (and start!3770 (is-CC!53 xs!625)) b!24641))

(assert (= (and start!3770 (is-Single!53 xs!625)) b!24638))

(assert (= (and start!3770 (is-CC!53 ys!119)) b!24632))

(assert (= (and start!3770 (is-Single!53 ys!119)) b!24639))

(assert (= (and start!3770 (is-CC!53 res!5628)) b!24630))

(assert (= (and start!3770 (is-Single!53 res!5628)) b!24633))

(declare-fun m!25817 () Bool)

(assert (=> b!24627 m!25817))

(declare-fun m!25819 () Bool)

(assert (=> b!24637 m!25819))

(declare-fun m!25821 () Bool)

(assert (=> b!24637 m!25821))

(declare-fun m!25823 () Bool)

(assert (=> b!24637 m!25823))

(declare-fun m!25825 () Bool)

(assert (=> b!24635 m!25825))

(declare-fun m!25827 () Bool)

(assert (=> b!24629 m!25827))

(declare-fun m!25829 () Bool)

(assert (=> b!24634 m!25829))

(assert (=> b!24636 m!25819))

(assert (=> b!24636 m!25821))

(assert (=> b!24636 m!25823))

(declare-fun m!25831 () Bool)

(assert (=> b!24628 m!25831))

(declare-fun m!25833 () Bool)

(assert (=> b!24631 m!25833))

(declare-fun m!25835 () Bool)

(assert (=> start!3770 m!25835))

(push 1)

(assert (not b!24636))

(assert (not b!24635))

(assert (not b!24628))

(assert (not b!24641))

(assert (not b!24629))

(assert (not b!24637))

(assert (not b!24627))

(assert (not b!24632))

(assert tp_is_empty!153)

(assert (not b!24630))

(assert (not b!24634))

(assert (not b!24631))

(assert (not start!3770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!24647 () Bool)

(declare-fun e!12755 () Int)

(declare-fun lt!3836 () Int)

(declare-fun lt!3838 () Int)

(assert (=> b!24647 (= e!12755 (+ 1 (ite (>= lt!3836 lt!3838) lt!3836 lt!3838)))))

(assert (=> b!24647 (= lt!3838 (level!43 (right!701 ys!119)))))

(assert (=> b!24647 (= lt!3836 (level!43 (left!698 ys!119)))))

(declare-fun d!13595 () Bool)

(declare-fun lt!3837 () Int)

(assert (=> d!13595 (>= lt!3837 0)))

(assert (=> d!13595 (= lt!3837 e!12755)))

(declare-fun c!5665 () Bool)

(assert (=> d!13595 (= c!5665 (or (is-Empty!64 ys!119) (is-Single!53 ys!119)))))

(assert (=> d!13595 (= (level!43 ys!119) lt!3837)))

(declare-fun b!24646 () Bool)

(assert (=> b!24646 (= e!12755 0)))

(assert (= (and d!13595 c!5665) b!24646))

(assert (= (and d!13595 (not c!5665)) b!24647))

(declare-fun m!25837 () Bool)

(assert (=> b!24647 m!25837))

(declare-fun m!25839 () Bool)

(assert (=> b!24647 m!25839))

(assert (=> b!24636 d!13595))

(declare-fun b!24649 () Bool)

(declare-fun e!12756 () Int)

(declare-fun lt!3839 () Int)

(declare-fun lt!3841 () Int)

(assert (=> b!24649 (= e!12756 (+ 1 (ite (>= lt!3839 lt!3841) lt!3839 lt!3841)))))

(assert (=> b!24649 (= lt!3841 (level!43 (right!701 xs!625)))))

(assert (=> b!24649 (= lt!3839 (level!43 (left!698 xs!625)))))

(declare-fun d!13597 () Bool)

(declare-fun lt!3840 () Int)

(assert (=> d!13597 (>= lt!3840 0)))

(assert (=> d!13597 (= lt!3840 e!12756)))

(declare-fun c!5666 () Bool)

(assert (=> d!13597 (= c!5666 (or (is-Empty!64 xs!625) (is-Single!53 xs!625)))))

(assert (=> d!13597 (= (level!43 xs!625) lt!3840)))

(declare-fun b!24648 () Bool)

(assert (=> b!24648 (= e!12756 0)))

(assert (= (and d!13597 c!5666) b!24648))

(assert (= (and d!13597 (not c!5666)) b!24649))

(declare-fun m!25841 () Bool)

(assert (=> b!24649 m!25841))

(declare-fun m!25843 () Bool)

(assert (=> b!24649 m!25843))

(assert (=> b!24636 d!13597))

(declare-fun b!24651 () Bool)

(declare-fun e!12757 () Int)

(declare-fun lt!3842 () Int)

(declare-fun lt!3844 () Int)

(assert (=> b!24651 (= e!12757 (+ 1 (ite (>= lt!3842 lt!3844) lt!3842 lt!3844)))))

(assert (=> b!24651 (= lt!3844 (level!43 (right!701 res!5628)))))

(assert (=> b!24651 (= lt!3842 (level!43 (left!698 res!5628)))))

(declare-fun d!13599 () Bool)

(declare-fun lt!3843 () Int)

(assert (=> d!13599 (>= lt!3843 0)))

(assert (=> d!13599 (= lt!3843 e!12757)))

(declare-fun c!5667 () Bool)

(assert (=> d!13599 (= c!5667 (or (is-Empty!64 res!5628) (is-Single!53 res!5628)))))

(assert (=> d!13599 (= (level!43 res!5628) lt!3843)))

(declare-fun b!24650 () Bool)

(assert (=> b!24650 (= e!12757 0)))

(assert (= (and d!13599 c!5667) b!24650))

(assert (= (and d!13599 (not c!5667)) b!24651))

(declare-fun m!25845 () Bool)

(assert (=> b!24651 m!25845))

(declare-fun m!25847 () Bool)

(assert (=> b!24651 m!25847))

(assert (=> b!24636 d!13599))

(declare-fun d!13601 () Bool)

(declare-datatypes () ((List!356 (Cons!350 (h!267 T!1809) (t!4370 List!356)) (Nil!351))))

(declare-fun toList!111 (Conc!54) List!356)

(declare-fun ++!36 (List!356 List!356) List!356)

(assert (=> d!13601 (= (concatCorrectness!8 res!5628 xs!625 ys!119) (= (toList!111 res!5628) (++!36 (toList!111 xs!625) (toList!111 ys!119))))))

(declare-fun bs!5078 () Bool)

(assert (= bs!5078 d!13601))

(declare-fun m!25849 () Bool)

(assert (=> bs!5078 m!25849))

(declare-fun m!25851 () Bool)

(assert (=> bs!5078 m!25851))

(declare-fun m!25853 () Bool)

(assert (=> bs!5078 m!25853))

(assert (=> bs!5078 m!25853))

(assert (=> bs!5078 m!25851))

(declare-fun m!25855 () Bool)

(assert (=> bs!5078 m!25855))

(assert (=> b!24634 d!13601))

(declare-fun d!13603 () Bool)

(declare-fun res!10994 () Bool)

(declare-fun e!12763 () Bool)

(assert (=> d!13603 (=> res!10994 e!12763)))

(assert (=> d!13603 (= res!10994 (not (is-CC!53 res!5628)))))

(assert (=> d!13603 (= (concInv!48 res!5628) e!12763)))

(declare-fun b!24660 () Bool)

(declare-fun e!12762 () Bool)

(assert (=> b!24660 (= e!12763 e!12762)))

(declare-fun res!10993 () Bool)

(assert (=> b!24660 (=> (not res!10993) (not e!12762))))

(declare-fun isEmpty!311 (Conc!54) Bool)

(assert (=> b!24660 (= res!10993 (not (isEmpty!311 (left!698 res!5628))))))

(declare-fun b!24663 () Bool)

(assert (=> b!24663 (= e!12762 (concInv!48 (right!701 res!5628)))))

(declare-fun b!24662 () Bool)

(declare-fun res!10996 () Bool)

(assert (=> b!24662 (=> (not res!10996) (not e!12762))))

(assert (=> b!24662 (= res!10996 (concInv!48 (left!698 res!5628)))))

(declare-fun b!24661 () Bool)

(declare-fun res!10995 () Bool)

(assert (=> b!24661 (=> (not res!10995) (not e!12762))))

(assert (=> b!24661 (= res!10995 (not (isEmpty!311 (right!701 res!5628))))))

(assert (= (and d!13603 (not res!10994)) b!24660))

(assert (= (and b!24660 res!10993) b!24661))

(assert (= (and b!24661 res!10995) b!24662))

(assert (= (and b!24662 res!10996) b!24663))

(declare-fun m!25857 () Bool)

(assert (=> b!24660 m!25857))

(declare-fun m!25859 () Bool)

(assert (=> b!24663 m!25859))

(declare-fun m!25861 () Bool)

(assert (=> b!24662 m!25861))

(declare-fun m!25863 () Bool)

(assert (=> b!24661 m!25863))

(assert (=> b!24629 d!13603))

(declare-fun d!13605 () Bool)

(declare-fun res!10998 () Bool)

(declare-fun e!12765 () Bool)

(assert (=> d!13605 (=> res!10998 e!12765)))

(assert (=> d!13605 (= res!10998 (not (is-CC!53 xs!625)))))

(assert (=> d!13605 (= (concInv!48 xs!625) e!12765)))

(declare-fun b!24664 () Bool)

(declare-fun e!12764 () Bool)

(assert (=> b!24664 (= e!12765 e!12764)))

(declare-fun res!10997 () Bool)

(assert (=> b!24664 (=> (not res!10997) (not e!12764))))

(assert (=> b!24664 (= res!10997 (not (isEmpty!311 (left!698 xs!625))))))

(declare-fun b!24667 () Bool)

(assert (=> b!24667 (= e!12764 (concInv!48 (right!701 xs!625)))))

(declare-fun b!24666 () Bool)

(declare-fun res!11000 () Bool)

(assert (=> b!24666 (=> (not res!11000) (not e!12764))))

(assert (=> b!24666 (= res!11000 (concInv!48 (left!698 xs!625)))))

(declare-fun b!24665 () Bool)

(declare-fun res!10999 () Bool)

(assert (=> b!24665 (=> (not res!10999) (not e!12764))))

(assert (=> b!24665 (= res!10999 (not (isEmpty!311 (right!701 xs!625))))))

(assert (= (and d!13605 (not res!10998)) b!24664))

(assert (= (and b!24664 res!10997) b!24665))

(assert (= (and b!24665 res!10999) b!24666))

(assert (= (and b!24666 res!11000) b!24667))

(declare-fun m!25865 () Bool)

(assert (=> b!24664 m!25865))

(declare-fun m!25867 () Bool)

(assert (=> b!24667 m!25867))

(declare-fun m!25869 () Bool)

(assert (=> b!24666 m!25869))

(declare-fun m!25871 () Bool)

(assert (=> b!24665 m!25871))

(assert (=> start!3770 d!13605))

(declare-fun b!24678 () Bool)

(declare-fun res!11011 () Bool)

(declare-fun e!12770 () Bool)

(assert (=> b!24678 (=> (not res!11011) (not e!12770))))

(assert (=> b!24678 (= res!11011 (balanced!49 (left!698 xs!625)))))

(declare-fun d!13607 () Bool)

(declare-fun res!11010 () Bool)

(declare-fun e!12771 () Bool)

(assert (=> d!13607 (=> res!11010 e!12771)))

(assert (=> d!13607 (= res!11010 (not (is-CC!53 xs!625)))))

(assert (=> d!13607 (= (balanced!49 xs!625) e!12771)))

(declare-fun b!24677 () Bool)

(declare-fun res!11012 () Bool)

(assert (=> b!24677 (=> (not res!11012) (not e!12770))))

(assert (=> b!24677 (= res!11012 (<= (- (level!43 (left!698 xs!625)) (level!43 (right!701 xs!625))) 1))))

(declare-fun b!24679 () Bool)

(assert (=> b!24679 (= e!12770 (balanced!49 (right!701 xs!625)))))

(declare-fun b!24676 () Bool)

(assert (=> b!24676 (= e!12771 e!12770)))

(declare-fun res!11009 () Bool)

(assert (=> b!24676 (=> (not res!11009) (not e!12770))))

(assert (=> b!24676 (= res!11009 (>= (- (level!43 (left!698 xs!625)) (level!43 (right!701 xs!625))) (- 1)))))

(assert (= (and d!13607 (not res!11010)) b!24676))

(assert (= (and b!24676 res!11009) b!24677))

(assert (= (and b!24677 res!11012) b!24678))

(assert (= (and b!24678 res!11011) b!24679))

(declare-fun m!25873 () Bool)

(assert (=> b!24678 m!25873))

(assert (=> b!24677 m!25843))

(assert (=> b!24677 m!25841))

(declare-fun m!25875 () Bool)

(assert (=> b!24679 m!25875))

(assert (=> b!24676 m!25843))

(assert (=> b!24676 m!25841))

(assert (=> b!24628 d!13607))

(declare-fun d!13609 () Bool)

(declare-fun res!11014 () Bool)

(declare-fun e!12773 () Bool)

(assert (=> d!13609 (=> res!11014 e!12773)))

(assert (=> d!13609 (= res!11014 (not (is-CC!53 ys!119)))))

(assert (=> d!13609 (= (concInv!48 ys!119) e!12773)))

(declare-fun b!24680 () Bool)

(declare-fun e!12772 () Bool)

(assert (=> b!24680 (= e!12773 e!12772)))

(declare-fun res!11013 () Bool)

(assert (=> b!24680 (=> (not res!11013) (not e!12772))))

(assert (=> b!24680 (= res!11013 (not (isEmpty!311 (left!698 ys!119))))))

(declare-fun b!24683 () Bool)

(assert (=> b!24683 (= e!12772 (concInv!48 (right!701 ys!119)))))

(declare-fun b!24682 () Bool)

(declare-fun res!11016 () Bool)

(assert (=> b!24682 (=> (not res!11016) (not e!12772))))

(assert (=> b!24682 (= res!11016 (concInv!48 (left!698 ys!119)))))

(declare-fun b!24681 () Bool)

(declare-fun res!11015 () Bool)

(assert (=> b!24681 (=> (not res!11015) (not e!12772))))

(assert (=> b!24681 (= res!11015 (not (isEmpty!311 (right!701 ys!119))))))

(assert (= (and d!13609 (not res!11014)) b!24680))

(assert (= (and b!24680 res!11013) b!24681))

(assert (= (and b!24681 res!11015) b!24682))

(assert (= (and b!24682 res!11016) b!24683))

(declare-fun m!25877 () Bool)

(assert (=> b!24680 m!25877))

(declare-fun m!25879 () Bool)

(assert (=> b!24683 m!25879))

(declare-fun m!25881 () Bool)

(assert (=> b!24682 m!25881))

(declare-fun m!25883 () Bool)

(assert (=> b!24681 m!25883))

(assert (=> b!24631 d!13609))

(assert (=> b!24637 d!13595))

(assert (=> b!24637 d!13597))

(assert (=> b!24637 d!13599))

(declare-fun b!24686 () Bool)

(declare-fun res!11019 () Bool)

(declare-fun e!12774 () Bool)

(assert (=> b!24686 (=> (not res!11019) (not e!12774))))

(assert (=> b!24686 (= res!11019 (balanced!49 (left!698 ys!119)))))

(declare-fun d!13611 () Bool)

(declare-fun res!11018 () Bool)

(declare-fun e!12775 () Bool)

(assert (=> d!13611 (=> res!11018 e!12775)))

(assert (=> d!13611 (= res!11018 (not (is-CC!53 ys!119)))))

(assert (=> d!13611 (= (balanced!49 ys!119) e!12775)))

(declare-fun b!24685 () Bool)

(declare-fun res!11020 () Bool)

(assert (=> b!24685 (=> (not res!11020) (not e!12774))))

(assert (=> b!24685 (= res!11020 (<= (- (level!43 (left!698 ys!119)) (level!43 (right!701 ys!119))) 1))))

(declare-fun b!24687 () Bool)

(assert (=> b!24687 (= e!12774 (balanced!49 (right!701 ys!119)))))

(declare-fun b!24684 () Bool)

(assert (=> b!24684 (= e!12775 e!12774)))

(declare-fun res!11017 () Bool)

(assert (=> b!24684 (=> (not res!11017) (not e!12774))))

(assert (=> b!24684 (= res!11017 (>= (- (level!43 (left!698 ys!119)) (level!43 (right!701 ys!119))) (- 1)))))

(assert (= (and d!13611 (not res!11018)) b!24684))

(assert (= (and b!24684 res!11017) b!24685))

(assert (= (and b!24685 res!11020) b!24686))

(assert (= (and b!24686 res!11019) b!24687))

(declare-fun m!25885 () Bool)

(assert (=> b!24686 m!25885))

(assert (=> b!24685 m!25839))

(assert (=> b!24685 m!25837))

(declare-fun m!25887 () Bool)

(assert (=> b!24687 m!25887))

(assert (=> b!24684 m!25839))

(assert (=> b!24684 m!25837))

(assert (=> b!24635 d!13611))

(declare-fun b!24690 () Bool)

(declare-fun res!11023 () Bool)

(declare-fun e!12776 () Bool)

(assert (=> b!24690 (=> (not res!11023) (not e!12776))))

(assert (=> b!24690 (= res!11023 (balanced!49 (left!698 res!5628)))))

(declare-fun d!13613 () Bool)

(declare-fun res!11022 () Bool)

(declare-fun e!12777 () Bool)

(assert (=> d!13613 (=> res!11022 e!12777)))

(assert (=> d!13613 (= res!11022 (not (is-CC!53 res!5628)))))

(assert (=> d!13613 (= (balanced!49 res!5628) e!12777)))

(declare-fun b!24689 () Bool)

(declare-fun res!11024 () Bool)

(assert (=> b!24689 (=> (not res!11024) (not e!12776))))

(assert (=> b!24689 (= res!11024 (<= (- (level!43 (left!698 res!5628)) (level!43 (right!701 res!5628))) 1))))

(declare-fun b!24691 () Bool)

(assert (=> b!24691 (= e!12776 (balanced!49 (right!701 res!5628)))))

(declare-fun b!24688 () Bool)

(assert (=> b!24688 (= e!12777 e!12776)))

(declare-fun res!11021 () Bool)

(assert (=> b!24688 (=> (not res!11021) (not e!12776))))

(assert (=> b!24688 (= res!11021 (>= (- (level!43 (left!698 res!5628)) (level!43 (right!701 res!5628))) (- 1)))))

(assert (= (and d!13613 (not res!11022)) b!24688))

(assert (= (and b!24688 res!11021) b!24689))

(assert (= (and b!24689 res!11024) b!24690))

(assert (= (and b!24690 res!11023) b!24691))

(declare-fun m!25889 () Bool)

(assert (=> b!24690 m!25889))

(assert (=> b!24689 m!25847))

(assert (=> b!24689 m!25845))

(declare-fun m!25891 () Bool)

(assert (=> b!24691 m!25891))

(assert (=> b!24688 m!25847))

(assert (=> b!24688 m!25845))

(assert (=> b!24627 d!13613))

(declare-fun b!24698 () Bool)

(declare-fun e!12780 () Bool)

(declare-fun tp!5348 () Bool)

(declare-fun tp!5349 () Bool)

(assert (=> b!24698 (= e!12780 (and tp!5348 tp!5349))))

(declare-fun b!24699 () Bool)

(assert (=> b!24699 (= e!12780 tp_is_empty!153)))

(assert (=> b!24641 (= tp!5342 e!12780)))

(assert (= (and b!24641 (is-CC!53 (left!698 xs!625))) b!24698))

(assert (= (and b!24641 (is-Single!53 (left!698 xs!625))) b!24699))

(declare-fun b!24700 () Bool)

(declare-fun e!12781 () Bool)

(declare-fun tp!5350 () Bool)

(declare-fun tp!5351 () Bool)

(assert (=> b!24700 (= e!12781 (and tp!5350 tp!5351))))

(declare-fun b!24701 () Bool)

(assert (=> b!24701 (= e!12781 tp_is_empty!153)))

(assert (=> b!24641 (= tp!5339 e!12781)))

(assert (= (and b!24641 (is-CC!53 (right!701 xs!625))) b!24700))

(assert (= (and b!24641 (is-Single!53 (right!701 xs!625))) b!24701))

(declare-fun b!24702 () Bool)

(declare-fun e!12782 () Bool)

(declare-fun tp!5352 () Bool)

(declare-fun tp!5353 () Bool)

(assert (=> b!24702 (= e!12782 (and tp!5352 tp!5353))))

(declare-fun b!24703 () Bool)

(assert (=> b!24703 (= e!12782 tp_is_empty!153)))

(assert (=> b!24630 (= tp!5341 e!12782)))

(assert (= (and b!24630 (is-CC!53 (left!698 res!5628))) b!24702))

(assert (= (and b!24630 (is-Single!53 (left!698 res!5628))) b!24703))

(declare-fun b!24704 () Bool)

(declare-fun e!12783 () Bool)

(declare-fun tp!5354 () Bool)

(declare-fun tp!5355 () Bool)

(assert (=> b!24704 (= e!12783 (and tp!5354 tp!5355))))

(declare-fun b!24705 () Bool)

(assert (=> b!24705 (= e!12783 tp_is_empty!153)))

(assert (=> b!24630 (= tp!5343 e!12783)))

(assert (= (and b!24630 (is-CC!53 (right!701 res!5628))) b!24704))

(assert (= (and b!24630 (is-Single!53 (right!701 res!5628))) b!24705))

(declare-fun b!24706 () Bool)

(declare-fun e!12784 () Bool)

(declare-fun tp!5356 () Bool)

(declare-fun tp!5357 () Bool)

(assert (=> b!24706 (= e!12784 (and tp!5356 tp!5357))))

(declare-fun b!24707 () Bool)

(assert (=> b!24707 (= e!12784 tp_is_empty!153)))

(assert (=> b!24632 (= tp!5338 e!12784)))

(assert (= (and b!24632 (is-CC!53 (left!698 ys!119))) b!24706))

(assert (= (and b!24632 (is-Single!53 (left!698 ys!119))) b!24707))

(declare-fun b!24708 () Bool)

(declare-fun e!12785 () Bool)

(declare-fun tp!5358 () Bool)

(declare-fun tp!5359 () Bool)

(assert (=> b!24708 (= e!12785 (and tp!5358 tp!5359))))

(declare-fun b!24709 () Bool)

(assert (=> b!24709 (= e!12785 tp_is_empty!153)))

(assert (=> b!24632 (= tp!5340 e!12785)))

(assert (= (and b!24632 (is-CC!53 (right!701 ys!119))) b!24708))

(assert (= (and b!24632 (is-Single!53 (right!701 ys!119))) b!24709))

(push 1)

(assert (not b!24698))

(assert (not b!24680))

(assert (not b!24685))

(assert (not b!24691))

(assert (not b!24684))

(assert (not b!24682))

(assert (not b!24679))

(assert (not b!24690))

(assert (not b!24651))

(assert (not b!24681))

(assert (not b!24708))

(assert (not b!24660))

(assert (not b!24661))

(assert (not d!13601))

(assert (not b!24688))

(assert (not b!24683))

(assert (not b!24666))

(assert (not b!24700))

(assert (not b!24664))

(assert tp_is_empty!153)

(assert (not b!24686))

(assert (not b!24706))

(assert (not b!24647))

(assert (not b!24687))

(assert (not b!24662))

(assert (not b!24677))

(assert (not b!24689))

(assert (not b!24667))

(assert (not b!24663))

(assert (not b!24702))

(assert (not b!24665))

(assert (not b!24649))

(assert (not b!24676))

(assert (not b!24704))

(assert (not b!24678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!24711 () Bool)

(declare-fun e!12786 () Int)

(declare-fun lt!3845 () Int)

(declare-fun lt!3847 () Int)

(assert (=> b!24711 (= e!12786 (+ 1 (ite (>= lt!3845 lt!3847) lt!3845 lt!3847)))))

(assert (=> b!24711 (= lt!3847 (level!43 (right!701 (left!698 ys!119))))))

(assert (=> b!24711 (= lt!3845 (level!43 (left!698 (left!698 ys!119))))))

(declare-fun d!13615 () Bool)

(declare-fun lt!3846 () Int)

(assert (=> d!13615 (>= lt!3846 0)))

(assert (=> d!13615 (= lt!3846 e!12786)))

(declare-fun c!5668 () Bool)

(assert (=> d!13615 (= c!5668 (or (is-Empty!64 (left!698 ys!119)) (is-Single!53 (left!698 ys!119))))))

(assert (=> d!13615 (= (level!43 (left!698 ys!119)) lt!3846)))

(declare-fun b!24710 () Bool)

(assert (=> b!24710 (= e!12786 0)))

(assert (= (and d!13615 c!5668) b!24710))

(assert (= (and d!13615 (not c!5668)) b!24711))

(declare-fun m!25893 () Bool)

(assert (=> b!24711 m!25893))

(declare-fun m!25895 () Bool)

(assert (=> b!24711 m!25895))

(assert (=> b!24685 d!13615))

(declare-fun b!24713 () Bool)

(declare-fun e!12787 () Int)

(declare-fun lt!3848 () Int)

(declare-fun lt!3850 () Int)

(assert (=> b!24713 (= e!12787 (+ 1 (ite (>= lt!3848 lt!3850) lt!3848 lt!3850)))))

(assert (=> b!24713 (= lt!3850 (level!43 (right!701 (right!701 ys!119))))))

(assert (=> b!24713 (= lt!3848 (level!43 (left!698 (right!701 ys!119))))))

(declare-fun d!13617 () Bool)

(declare-fun lt!3849 () Int)

(assert (=> d!13617 (>= lt!3849 0)))

(assert (=> d!13617 (= lt!3849 e!12787)))

(declare-fun c!5669 () Bool)

(assert (=> d!13617 (= c!5669 (or (is-Empty!64 (right!701 ys!119)) (is-Single!53 (right!701 ys!119))))))

(assert (=> d!13617 (= (level!43 (right!701 ys!119)) lt!3849)))

(declare-fun b!24712 () Bool)

(assert (=> b!24712 (= e!12787 0)))

(assert (= (and d!13617 c!5669) b!24712))

(assert (= (and d!13617 (not c!5669)) b!24713))

(declare-fun m!25897 () Bool)

(assert (=> b!24713 m!25897))

(declare-fun m!25899 () Bool)

(assert (=> b!24713 m!25899))

(assert (=> b!24685 d!13617))

(declare-fun d!13619 () Bool)

(declare-fun res!11026 () Bool)

(declare-fun e!12789 () Bool)

(assert (=> d!13619 (=> res!11026 e!12789)))

(assert (=> d!13619 (= res!11026 (not (is-CC!53 (right!701 ys!119))))))

(assert (=> d!13619 (= (concInv!48 (right!701 ys!119)) e!12789)))

(declare-fun b!24714 () Bool)

(declare-fun e!12788 () Bool)

(assert (=> b!24714 (= e!12789 e!12788)))

(declare-fun res!11025 () Bool)

(assert (=> b!24714 (=> (not res!11025) (not e!12788))))

(assert (=> b!24714 (= res!11025 (not (isEmpty!311 (left!698 (right!701 ys!119)))))))

(declare-fun b!24717 () Bool)

(assert (=> b!24717 (= e!12788 (concInv!48 (right!701 (right!701 ys!119))))))

(declare-fun b!24716 () Bool)

(declare-fun res!11028 () Bool)

(assert (=> b!24716 (=> (not res!11028) (not e!12788))))

(assert (=> b!24716 (= res!11028 (concInv!48 (left!698 (right!701 ys!119))))))

(declare-fun b!24715 () Bool)

(declare-fun res!11027 () Bool)

(assert (=> b!24715 (=> (not res!11027) (not e!12788))))

(assert (=> b!24715 (= res!11027 (not (isEmpty!311 (right!701 (right!701 ys!119)))))))

(assert (= (and d!13619 (not res!11026)) b!24714))

(assert (= (and b!24714 res!11025) b!24715))

(assert (= (and b!24715 res!11027) b!24716))

(assert (= (and b!24716 res!11028) b!24717))

(declare-fun m!25901 () Bool)

(assert (=> b!24714 m!25901))

(declare-fun m!25903 () Bool)

(assert (=> b!24717 m!25903))

(declare-fun m!25905 () Bool)

(assert (=> b!24716 m!25905))

(declare-fun m!25907 () Bool)

(assert (=> b!24715 m!25907))

(assert (=> b!24683 d!13619))

(declare-fun d!13621 () Bool)

(declare-fun res!11030 () Bool)

(declare-fun e!12791 () Bool)

(assert (=> d!13621 (=> res!11030 e!12791)))

(assert (=> d!13621 (= res!11030 (not (is-CC!53 (left!698 xs!625))))))

(assert (=> d!13621 (= (concInv!48 (left!698 xs!625)) e!12791)))

(declare-fun b!24718 () Bool)

(declare-fun e!12790 () Bool)

(assert (=> b!24718 (= e!12791 e!12790)))

(declare-fun res!11029 () Bool)

(assert (=> b!24718 (=> (not res!11029) (not e!12790))))

(assert (=> b!24718 (= res!11029 (not (isEmpty!311 (left!698 (left!698 xs!625)))))))

(declare-fun b!24721 () Bool)

(assert (=> b!24721 (= e!12790 (concInv!48 (right!701 (left!698 xs!625))))))

(declare-fun b!24720 () Bool)

(declare-fun res!11032 () Bool)

(assert (=> b!24720 (=> (not res!11032) (not e!12790))))

(assert (=> b!24720 (= res!11032 (concInv!48 (left!698 (left!698 xs!625))))))

(declare-fun b!24719 () Bool)

(declare-fun res!11031 () Bool)

(assert (=> b!24719 (=> (not res!11031) (not e!12790))))

(assert (=> b!24719 (= res!11031 (not (isEmpty!311 (right!701 (left!698 xs!625)))))))

(assert (= (and d!13621 (not res!11030)) b!24718))

(assert (= (and b!24718 res!11029) b!24719))

(assert (= (and b!24719 res!11031) b!24720))

(assert (= (and b!24720 res!11032) b!24721))

(declare-fun m!25909 () Bool)

(assert (=> b!24718 m!25909))

(declare-fun m!25911 () Bool)

(assert (=> b!24721 m!25911))

(declare-fun m!25913 () Bool)

(assert (=> b!24720 m!25913))

(declare-fun m!25915 () Bool)

(assert (=> b!24719 m!25915))

(assert (=> b!24666 d!13621))

(declare-fun b!24723 () Bool)

(declare-fun e!12792 () Int)

(declare-fun lt!3851 () Int)

(declare-fun lt!3853 () Int)

(assert (=> b!24723 (= e!12792 (+ 1 (ite (>= lt!3851 lt!3853) lt!3851 lt!3853)))))

(assert (=> b!24723 (= lt!3853 (level!43 (right!701 (right!701 xs!625))))))

(assert (=> b!24723 (= lt!3851 (level!43 (left!698 (right!701 xs!625))))))

(declare-fun d!13623 () Bool)

(declare-fun lt!3852 () Int)

(assert (=> d!13623 (>= lt!3852 0)))

(assert (=> d!13623 (= lt!3852 e!12792)))

(declare-fun c!5670 () Bool)

(assert (=> d!13623 (= c!5670 (or (is-Empty!64 (right!701 xs!625)) (is-Single!53 (right!701 xs!625))))))

(assert (=> d!13623 (= (level!43 (right!701 xs!625)) lt!3852)))

(declare-fun b!24722 () Bool)

(assert (=> b!24722 (= e!12792 0)))

(assert (= (and d!13623 c!5670) b!24722))

(assert (= (and d!13623 (not c!5670)) b!24723))

(declare-fun m!25917 () Bool)

(assert (=> b!24723 m!25917))

(declare-fun m!25919 () Bool)

(assert (=> b!24723 m!25919))

(assert (=> b!24649 d!13623))

(declare-fun b!24725 () Bool)

(declare-fun e!12793 () Int)

(declare-fun lt!3854 () Int)

(declare-fun lt!3856 () Int)

(assert (=> b!24725 (= e!12793 (+ 1 (ite (>= lt!3854 lt!3856) lt!3854 lt!3856)))))

(assert (=> b!24725 (= lt!3856 (level!43 (right!701 (left!698 xs!625))))))

(assert (=> b!24725 (= lt!3854 (level!43 (left!698 (left!698 xs!625))))))

(declare-fun d!13625 () Bool)

(declare-fun lt!3855 () Int)

(assert (=> d!13625 (>= lt!3855 0)))

(assert (=> d!13625 (= lt!3855 e!12793)))

(declare-fun c!5671 () Bool)

(assert (=> d!13625 (= c!5671 (or (is-Empty!64 (left!698 xs!625)) (is-Single!53 (left!698 xs!625))))))

(assert (=> d!13625 (= (level!43 (left!698 xs!625)) lt!3855)))

(declare-fun b!24724 () Bool)

(assert (=> b!24724 (= e!12793 0)))

(assert (= (and d!13625 c!5671) b!24724))

(assert (= (and d!13625 (not c!5671)) b!24725))

(declare-fun m!25921 () Bool)

(assert (=> b!24725 m!25921))

(declare-fun m!25923 () Bool)

(assert (=> b!24725 m!25923))

(assert (=> b!24649 d!13625))

(declare-fun b!24727 () Bool)

(declare-fun e!12794 () Int)

(declare-fun lt!3857 () Int)

(declare-fun lt!3859 () Int)

(assert (=> b!24727 (= e!12794 (+ 1 (ite (>= lt!3857 lt!3859) lt!3857 lt!3859)))))

(assert (=> b!24727 (= lt!3859 (level!43 (right!701 (left!698 res!5628))))))

(assert (=> b!24727 (= lt!3857 (level!43 (left!698 (left!698 res!5628))))))

(declare-fun d!13627 () Bool)

(declare-fun lt!3858 () Int)

(assert (=> d!13627 (>= lt!3858 0)))

(assert (=> d!13627 (= lt!3858 e!12794)))

(declare-fun c!5672 () Bool)

(assert (=> d!13627 (= c!5672 (or (is-Empty!64 (left!698 res!5628)) (is-Single!53 (left!698 res!5628))))))

(assert (=> d!13627 (= (level!43 (left!698 res!5628)) lt!3858)))

(declare-fun b!24726 () Bool)

(assert (=> b!24726 (= e!12794 0)))

(assert (= (and d!13627 c!5672) b!24726))

(assert (= (and d!13627 (not c!5672)) b!24727))

(declare-fun m!25925 () Bool)

(assert (=> b!24727 m!25925))

(declare-fun m!25927 () Bool)

(assert (=> b!24727 m!25927))

(assert (=> b!24689 d!13627))

(declare-fun b!24729 () Bool)

(declare-fun e!12795 () Int)

(declare-fun lt!3860 () Int)

(declare-fun lt!3862 () Int)

(assert (=> b!24729 (= e!12795 (+ 1 (ite (>= lt!3860 lt!3862) lt!3860 lt!3862)))))

(assert (=> b!24729 (= lt!3862 (level!43 (right!701 (right!701 res!5628))))))

(assert (=> b!24729 (= lt!3860 (level!43 (left!698 (right!701 res!5628))))))

(declare-fun d!13629 () Bool)

(declare-fun lt!3861 () Int)

(assert (=> d!13629 (>= lt!3861 0)))

(assert (=> d!13629 (= lt!3861 e!12795)))

(declare-fun c!5673 () Bool)

(assert (=> d!13629 (= c!5673 (or (is-Empty!64 (right!701 res!5628)) (is-Single!53 (right!701 res!5628))))))

(assert (=> d!13629 (= (level!43 (right!701 res!5628)) lt!3861)))

(declare-fun b!24728 () Bool)

(assert (=> b!24728 (= e!12795 0)))

(assert (= (and d!13629 c!5673) b!24728))

(assert (= (and d!13629 (not c!5673)) b!24729))

(declare-fun m!25929 () Bool)

(assert (=> b!24729 m!25929))

(declare-fun m!25931 () Bool)

(assert (=> b!24729 m!25931))

(assert (=> b!24689 d!13629))

(assert (=> b!24676 d!13625))

(assert (=> b!24676 d!13623))

(declare-fun d!13631 () Bool)

(assert (=> d!13631 (= (isEmpty!311 (right!701 xs!625)) (= (right!701 xs!625) Empty!64))))

(assert (=> b!24665 d!13631))

(declare-fun d!13633 () Bool)

(assert (=> d!13633 (= (isEmpty!311 (left!698 xs!625)) (= (left!698 xs!625) Empty!64))))

(assert (=> b!24664 d!13633))

(declare-fun d!13635 () Bool)

(assert (=> d!13635 (= (isEmpty!311 (right!701 ys!119)) (= (right!701 ys!119) Empty!64))))

(assert (=> b!24681 d!13635))

(declare-fun d!13637 () Bool)

(assert (=> d!13637 (= (isEmpty!311 (left!698 ys!119)) (= (left!698 ys!119) Empty!64))))

(assert (=> b!24680 d!13637))

(assert (=> b!24651 d!13629))

(assert (=> b!24651 d!13627))

(declare-fun b!24732 () Bool)

(declare-fun res!11035 () Bool)

(declare-fun e!12796 () Bool)

(assert (=> b!24732 (=> (not res!11035) (not e!12796))))

(assert (=> b!24732 (= res!11035 (balanced!49 (left!698 (right!701 xs!625))))))

(declare-fun d!13639 () Bool)

(declare-fun res!11034 () Bool)

(declare-fun e!12797 () Bool)

(assert (=> d!13639 (=> res!11034 e!12797)))

(assert (=> d!13639 (= res!11034 (not (is-CC!53 (right!701 xs!625))))))

(assert (=> d!13639 (= (balanced!49 (right!701 xs!625)) e!12797)))

(declare-fun b!24731 () Bool)

(declare-fun res!11036 () Bool)

(assert (=> b!24731 (=> (not res!11036) (not e!12796))))

(assert (=> b!24731 (= res!11036 (<= (- (level!43 (left!698 (right!701 xs!625))) (level!43 (right!701 (right!701 xs!625)))) 1))))

(declare-fun b!24733 () Bool)

(assert (=> b!24733 (= e!12796 (balanced!49 (right!701 (right!701 xs!625))))))

(declare-fun b!24730 () Bool)

(assert (=> b!24730 (= e!12797 e!12796)))

(declare-fun res!11033 () Bool)

(assert (=> b!24730 (=> (not res!11033) (not e!12796))))

(assert (=> b!24730 (= res!11033 (>= (- (level!43 (left!698 (right!701 xs!625))) (level!43 (right!701 (right!701 xs!625)))) (- 1)))))

(assert (= (and d!13639 (not res!11034)) b!24730))

(assert (= (and b!24730 res!11033) b!24731))

(assert (= (and b!24731 res!11036) b!24732))

(assert (= (and b!24732 res!11035) b!24733))

(declare-fun m!25933 () Bool)

(assert (=> b!24732 m!25933))

(assert (=> b!24731 m!25919))

(assert (=> b!24731 m!25917))

(declare-fun m!25935 () Bool)

(assert (=> b!24733 m!25935))

(assert (=> b!24730 m!25919))

(assert (=> b!24730 m!25917))

(assert (=> b!24679 d!13639))

(declare-fun b!24736 () Bool)

(declare-fun res!11039 () Bool)

(declare-fun e!12798 () Bool)

(assert (=> b!24736 (=> (not res!11039) (not e!12798))))

(assert (=> b!24736 (= res!11039 (balanced!49 (left!698 (left!698 res!5628))))))

(declare-fun d!13641 () Bool)

(declare-fun res!11038 () Bool)

(declare-fun e!12799 () Bool)

(assert (=> d!13641 (=> res!11038 e!12799)))

(assert (=> d!13641 (= res!11038 (not (is-CC!53 (left!698 res!5628))))))

(assert (=> d!13641 (= (balanced!49 (left!698 res!5628)) e!12799)))

(declare-fun b!24735 () Bool)

(declare-fun res!11040 () Bool)

(assert (=> b!24735 (=> (not res!11040) (not e!12798))))

(assert (=> b!24735 (= res!11040 (<= (- (level!43 (left!698 (left!698 res!5628))) (level!43 (right!701 (left!698 res!5628)))) 1))))

(declare-fun b!24737 () Bool)

(assert (=> b!24737 (= e!12798 (balanced!49 (right!701 (left!698 res!5628))))))

(declare-fun b!24734 () Bool)

(assert (=> b!24734 (= e!12799 e!12798)))

(declare-fun res!11037 () Bool)

(assert (=> b!24734 (=> (not res!11037) (not e!12798))))

(assert (=> b!24734 (= res!11037 (>= (- (level!43 (left!698 (left!698 res!5628))) (level!43 (right!701 (left!698 res!5628)))) (- 1)))))

(assert (= (and d!13641 (not res!11038)) b!24734))

(assert (= (and b!24734 res!11037) b!24735))

(assert (= (and b!24735 res!11040) b!24736))

(assert (= (and b!24736 res!11039) b!24737))

(declare-fun m!25937 () Bool)

(assert (=> b!24736 m!25937))

(assert (=> b!24735 m!25927))

(assert (=> b!24735 m!25925))

(declare-fun m!25939 () Bool)

(assert (=> b!24737 m!25939))

(assert (=> b!24734 m!25927))

(assert (=> b!24734 m!25925))

(assert (=> b!24690 d!13641))

(declare-fun b!24746 () Bool)

(declare-fun e!12804 () List!356)

(assert (=> b!24746 (= e!12804 (toList!111 ys!119))))

(declare-fun d!13643 () Bool)

(declare-fun e!12805 () Bool)

(assert (=> d!13643 e!12805))

(declare-fun res!11046 () Bool)

(assert (=> d!13643 (=> (not res!11046) (not e!12805))))

(declare-fun lt!3865 () List!356)

(declare-fun content!67 (List!356) (Set T!1809))

(assert (=> d!13643 (= res!11046 (= (content!67 lt!3865) (union (content!67 (toList!111 xs!625)) (content!67 (toList!111 ys!119)))))))

(assert (=> d!13643 (= lt!3865 e!12804)))

(declare-fun c!5676 () Bool)

(assert (=> d!13643 (= c!5676 (is-Nil!351 (toList!111 xs!625)))))

(assert (=> d!13643 (= (++!36 (toList!111 xs!625) (toList!111 ys!119)) lt!3865)))

(declare-fun b!24747 () Bool)

(assert (=> b!24747 (= e!12804 (Cons!350 (h!267 (toList!111 xs!625)) (++!36 (t!4370 (toList!111 xs!625)) (toList!111 ys!119))))))

(declare-fun b!24748 () Bool)

(declare-fun res!11047 () Bool)

(assert (=> b!24748 (=> (not res!11047) (not e!12805))))

(declare-fun size!263 (List!356) Int)

(assert (=> b!24748 (= res!11047 (= (size!263 lt!3865) (+ (size!263 (toList!111 xs!625)) (size!263 (toList!111 ys!119)))))))

(declare-fun b!24749 () Bool)

(assert (=> b!24749 (= e!12805 (or (not (= (toList!111 ys!119) Nil!351)) (= lt!3865 (toList!111 xs!625))))))

(assert (= (and d!13643 c!5676) b!24746))

(assert (= (and d!13643 (not c!5676)) b!24747))

(assert (= (and d!13643 res!11046) b!24748))

(assert (= (and b!24748 res!11047) b!24749))

(declare-fun m!25941 () Bool)

(assert (=> d!13643 m!25941))

(assert (=> d!13643 m!25853))

(declare-fun m!25943 () Bool)

(assert (=> d!13643 m!25943))

(assert (=> d!13643 m!25851))

(declare-fun m!25945 () Bool)

(assert (=> d!13643 m!25945))

(assert (=> b!24747 m!25851))

(declare-fun m!25947 () Bool)

(assert (=> b!24747 m!25947))

(declare-fun m!25949 () Bool)

(assert (=> b!24748 m!25949))

(assert (=> b!24748 m!25853))

(declare-fun m!25951 () Bool)

(assert (=> b!24748 m!25951))

(assert (=> b!24748 m!25851))

(declare-fun m!25953 () Bool)

(assert (=> b!24748 m!25953))

(assert (=> d!13601 d!13643))

(declare-fun b!24761 () Bool)

(declare-fun e!12810 () List!356)

(assert (=> b!24761 (= e!12810 (++!36 (toList!111 (left!698 ys!119)) (toList!111 (right!701 ys!119))))))

(declare-fun b!24758 () Bool)

(declare-fun e!12811 () List!356)

(assert (=> b!24758 (= e!12811 Nil!351)))

(declare-fun b!24759 () Bool)

(assert (=> b!24759 (= e!12811 e!12810)))

(declare-fun c!5682 () Bool)

(assert (=> b!24759 (= c!5682 (is-Single!53 ys!119))))

(declare-fun d!13645 () Bool)

(declare-fun lt!3868 () List!356)

(declare-fun size!264 (Conc!54) Int)

(assert (=> d!13645 (= (size!263 lt!3868) (size!264 ys!119))))

(assert (=> d!13645 (= lt!3868 e!12811)))

(declare-fun c!5681 () Bool)

(assert (=> d!13645 (= c!5681 (is-Empty!64 ys!119))))

(assert (=> d!13645 (= (toList!111 ys!119) lt!3868)))

(declare-fun b!24760 () Bool)

(assert (=> b!24760 (= e!12810 (Cons!350 (x!8880 ys!119) Nil!351))))

(assert (= (and b!24759 c!5682) b!24760))

(assert (= (and b!24759 (not c!5682)) b!24761))

(assert (= (and d!13645 c!5681) b!24758))

(assert (= (and d!13645 (not c!5681)) b!24759))

(declare-fun m!25955 () Bool)

(assert (=> b!24761 m!25955))

(declare-fun m!25957 () Bool)

(assert (=> b!24761 m!25957))

(assert (=> b!24761 m!25955))

(assert (=> b!24761 m!25957))

(declare-fun m!25959 () Bool)

(assert (=> b!24761 m!25959))

(declare-fun m!25961 () Bool)

(assert (=> d!13645 m!25961))

(declare-fun m!25963 () Bool)

(assert (=> d!13645 m!25963))

(assert (=> d!13601 d!13645))

(declare-fun b!24765 () Bool)

(declare-fun e!12812 () List!356)

(assert (=> b!24765 (= e!12812 (++!36 (toList!111 (left!698 xs!625)) (toList!111 (right!701 xs!625))))))

(declare-fun b!24762 () Bool)

(declare-fun e!12813 () List!356)

(assert (=> b!24762 (= e!12813 Nil!351)))

(declare-fun b!24763 () Bool)

(assert (=> b!24763 (= e!12813 e!12812)))

(declare-fun c!5684 () Bool)

(assert (=> b!24763 (= c!5684 (is-Single!53 xs!625))))

(declare-fun d!13647 () Bool)

(declare-fun lt!3869 () List!356)

(assert (=> d!13647 (= (size!263 lt!3869) (size!264 xs!625))))

(assert (=> d!13647 (= lt!3869 e!12813)))

(declare-fun c!5683 () Bool)

(assert (=> d!13647 (= c!5683 (is-Empty!64 xs!625))))

(assert (=> d!13647 (= (toList!111 xs!625) lt!3869)))

(declare-fun b!24764 () Bool)

(assert (=> b!24764 (= e!12812 (Cons!350 (x!8880 xs!625) Nil!351))))

(assert (= (and b!24763 c!5684) b!24764))

(assert (= (and b!24763 (not c!5684)) b!24765))

(assert (= (and d!13647 c!5683) b!24762))

(assert (= (and d!13647 (not c!5683)) b!24763))

(declare-fun m!25965 () Bool)

(assert (=> b!24765 m!25965))

(declare-fun m!25967 () Bool)

(assert (=> b!24765 m!25967))

(assert (=> b!24765 m!25965))

(assert (=> b!24765 m!25967))

(declare-fun m!25969 () Bool)

(assert (=> b!24765 m!25969))

(declare-fun m!25971 () Bool)

(assert (=> d!13647 m!25971))

(declare-fun m!25973 () Bool)

(assert (=> d!13647 m!25973))

(assert (=> d!13601 d!13647))

(declare-fun b!24769 () Bool)

(declare-fun e!12814 () List!356)

(assert (=> b!24769 (= e!12814 (++!36 (toList!111 (left!698 res!5628)) (toList!111 (right!701 res!5628))))))

(declare-fun b!24766 () Bool)

(declare-fun e!12815 () List!356)

(assert (=> b!24766 (= e!12815 Nil!351)))

(declare-fun b!24767 () Bool)

(assert (=> b!24767 (= e!12815 e!12814)))

(declare-fun c!5686 () Bool)

(assert (=> b!24767 (= c!5686 (is-Single!53 res!5628))))

(declare-fun d!13649 () Bool)

(declare-fun lt!3870 () List!356)

(assert (=> d!13649 (= (size!263 lt!3870) (size!264 res!5628))))

(assert (=> d!13649 (= lt!3870 e!12815)))

(declare-fun c!5685 () Bool)

(assert (=> d!13649 (= c!5685 (is-Empty!64 res!5628))))

(assert (=> d!13649 (= (toList!111 res!5628) lt!3870)))

(declare-fun b!24768 () Bool)

(assert (=> b!24768 (= e!12814 (Cons!350 (x!8880 res!5628) Nil!351))))

(assert (= (and b!24767 c!5686) b!24768))

(assert (= (and b!24767 (not c!5686)) b!24769))

(assert (= (and d!13649 c!5685) b!24766))

(assert (= (and d!13649 (not c!5685)) b!24767))

(declare-fun m!25975 () Bool)

(assert (=> b!24769 m!25975))

(declare-fun m!25977 () Bool)

(assert (=> b!24769 m!25977))

(assert (=> b!24769 m!25975))

(assert (=> b!24769 m!25977))

(declare-fun m!25979 () Bool)

(assert (=> b!24769 m!25979))

(declare-fun m!25981 () Bool)

(assert (=> d!13649 m!25981))

(declare-fun m!25983 () Bool)

(assert (=> d!13649 m!25983))

(assert (=> d!13601 d!13649))

(declare-fun d!13651 () Bool)

(declare-fun res!11050 () Bool)

(declare-fun e!12817 () Bool)

(assert (=> d!13651 (=> res!11050 e!12817)))

(assert (=> d!13651 (= res!11050 (not (is-CC!53 (left!698 res!5628))))))

(assert (=> d!13651 (= (concInv!48 (left!698 res!5628)) e!12817)))

(declare-fun b!24770 () Bool)

(declare-fun e!12816 () Bool)

(assert (=> b!24770 (= e!12817 e!12816)))

(declare-fun res!11049 () Bool)

(assert (=> b!24770 (=> (not res!11049) (not e!12816))))

(assert (=> b!24770 (= res!11049 (not (isEmpty!311 (left!698 (left!698 res!5628)))))))

(declare-fun b!24773 () Bool)

(assert (=> b!24773 (= e!12816 (concInv!48 (right!701 (left!698 res!5628))))))

(declare-fun b!24772 () Bool)

(declare-fun res!11052 () Bool)

(assert (=> b!24772 (=> (not res!11052) (not e!12816))))

(assert (=> b!24772 (= res!11052 (concInv!48 (left!698 (left!698 res!5628))))))

(declare-fun b!24771 () Bool)

(declare-fun res!11051 () Bool)

(assert (=> b!24771 (=> (not res!11051) (not e!12816))))

(assert (=> b!24771 (= res!11051 (not (isEmpty!311 (right!701 (left!698 res!5628)))))))

(assert (= (and d!13651 (not res!11050)) b!24770))

(assert (= (and b!24770 res!11049) b!24771))

(assert (= (and b!24771 res!11051) b!24772))

(assert (= (and b!24772 res!11052) b!24773))

(declare-fun m!25985 () Bool)

(assert (=> b!24770 m!25985))

(declare-fun m!25987 () Bool)

(assert (=> b!24773 m!25987))

(declare-fun m!25989 () Bool)

(assert (=> b!24772 m!25989))

(declare-fun m!25991 () Bool)

(assert (=> b!24771 m!25991))

(assert (=> b!24662 d!13651))

(assert (=> b!24688 d!13627))

(assert (=> b!24688 d!13629))

(assert (=> b!24677 d!13625))

(assert (=> b!24677 d!13623))

(declare-fun d!13653 () Bool)

(assert (=> d!13653 (= (isEmpty!311 (left!698 res!5628)) (= (left!698 res!5628) Empty!64))))

(assert (=> b!24660 d!13653))

(assert (=> b!24684 d!13615))

(assert (=> b!24684 d!13617))

(declare-fun b!24776 () Bool)

(declare-fun res!11055 () Bool)

(declare-fun e!12818 () Bool)

(assert (=> b!24776 (=> (not res!11055) (not e!12818))))

(assert (=> b!24776 (= res!11055 (balanced!49 (left!698 (right!701 ys!119))))))

(declare-fun d!13655 () Bool)

(declare-fun res!11054 () Bool)

(declare-fun e!12819 () Bool)

(assert (=> d!13655 (=> res!11054 e!12819)))

(assert (=> d!13655 (= res!11054 (not (is-CC!53 (right!701 ys!119))))))

(assert (=> d!13655 (= (balanced!49 (right!701 ys!119)) e!12819)))

(declare-fun b!24775 () Bool)

(declare-fun res!11056 () Bool)

(assert (=> b!24775 (=> (not res!11056) (not e!12818))))

(assert (=> b!24775 (= res!11056 (<= (- (level!43 (left!698 (right!701 ys!119))) (level!43 (right!701 (right!701 ys!119)))) 1))))

(declare-fun b!24777 () Bool)

(assert (=> b!24777 (= e!12818 (balanced!49 (right!701 (right!701 ys!119))))))

(declare-fun b!24774 () Bool)

(assert (=> b!24774 (= e!12819 e!12818)))

(declare-fun res!11053 () Bool)

(assert (=> b!24774 (=> (not res!11053) (not e!12818))))

(assert (=> b!24774 (= res!11053 (>= (- (level!43 (left!698 (right!701 ys!119))) (level!43 (right!701 (right!701 ys!119)))) (- 1)))))

(assert (= (and d!13655 (not res!11054)) b!24774))

(assert (= (and b!24774 res!11053) b!24775))

(assert (= (and b!24775 res!11056) b!24776))

(assert (= (and b!24776 res!11055) b!24777))

(declare-fun m!25993 () Bool)

(assert (=> b!24776 m!25993))

(assert (=> b!24775 m!25899))

(assert (=> b!24775 m!25897))

(declare-fun m!25995 () Bool)

(assert (=> b!24777 m!25995))

(assert (=> b!24774 m!25899))

(assert (=> b!24774 m!25897))

(assert (=> b!24687 d!13655))

(declare-fun b!24780 () Bool)

(declare-fun res!11059 () Bool)

(declare-fun e!12820 () Bool)

(assert (=> b!24780 (=> (not res!11059) (not e!12820))))

(assert (=> b!24780 (= res!11059 (balanced!49 (left!698 (left!698 ys!119))))))

(declare-fun d!13657 () Bool)

(declare-fun res!11058 () Bool)

(declare-fun e!12821 () Bool)

(assert (=> d!13657 (=> res!11058 e!12821)))

(assert (=> d!13657 (= res!11058 (not (is-CC!53 (left!698 ys!119))))))

(assert (=> d!13657 (= (balanced!49 (left!698 ys!119)) e!12821)))

(declare-fun b!24779 () Bool)

(declare-fun res!11060 () Bool)

(assert (=> b!24779 (=> (not res!11060) (not e!12820))))

(assert (=> b!24779 (= res!11060 (<= (- (level!43 (left!698 (left!698 ys!119))) (level!43 (right!701 (left!698 ys!119)))) 1))))

(declare-fun b!24781 () Bool)

(assert (=> b!24781 (= e!12820 (balanced!49 (right!701 (left!698 ys!119))))))

(declare-fun b!24778 () Bool)

(assert (=> b!24778 (= e!12821 e!12820)))

(declare-fun res!11057 () Bool)

(assert (=> b!24778 (=> (not res!11057) (not e!12820))))

(assert (=> b!24778 (= res!11057 (>= (- (level!43 (left!698 (left!698 ys!119))) (level!43 (right!701 (left!698 ys!119)))) (- 1)))))

(assert (= (and d!13657 (not res!11058)) b!24778))

(assert (= (and b!24778 res!11057) b!24779))

(assert (= (and b!24779 res!11060) b!24780))

(assert (= (and b!24780 res!11059) b!24781))

(declare-fun m!25997 () Bool)

(assert (=> b!24780 m!25997))

(assert (=> b!24779 m!25895))

(assert (=> b!24779 m!25893))

(declare-fun m!25999 () Bool)

(assert (=> b!24781 m!25999))

(assert (=> b!24778 m!25895))

(assert (=> b!24778 m!25893))

(assert (=> b!24686 d!13657))

(declare-fun d!13659 () Bool)

(declare-fun res!11062 () Bool)

(declare-fun e!12823 () Bool)

(assert (=> d!13659 (=> res!11062 e!12823)))

(assert (=> d!13659 (= res!11062 (not (is-CC!53 (right!701 res!5628))))))

(assert (=> d!13659 (= (concInv!48 (right!701 res!5628)) e!12823)))

(declare-fun b!24782 () Bool)

(declare-fun e!12822 () Bool)

(assert (=> b!24782 (= e!12823 e!12822)))

(declare-fun res!11061 () Bool)

(assert (=> b!24782 (=> (not res!11061) (not e!12822))))

(assert (=> b!24782 (= res!11061 (not (isEmpty!311 (left!698 (right!701 res!5628)))))))

(declare-fun b!24785 () Bool)

(assert (=> b!24785 (= e!12822 (concInv!48 (right!701 (right!701 res!5628))))))

(declare-fun b!24784 () Bool)

(declare-fun res!11064 () Bool)

(assert (=> b!24784 (=> (not res!11064) (not e!12822))))

(assert (=> b!24784 (= res!11064 (concInv!48 (left!698 (right!701 res!5628))))))

(declare-fun b!24783 () Bool)

(declare-fun res!11063 () Bool)

(assert (=> b!24783 (=> (not res!11063) (not e!12822))))

(assert (=> b!24783 (= res!11063 (not (isEmpty!311 (right!701 (right!701 res!5628)))))))

(assert (= (and d!13659 (not res!11062)) b!24782))

(assert (= (and b!24782 res!11061) b!24783))

(assert (= (and b!24783 res!11063) b!24784))

(assert (= (and b!24784 res!11064) b!24785))

(declare-fun m!26001 () Bool)

(assert (=> b!24782 m!26001))

(declare-fun m!26003 () Bool)

(assert (=> b!24785 m!26003))

(declare-fun m!26005 () Bool)

(assert (=> b!24784 m!26005))

(declare-fun m!26007 () Bool)

(assert (=> b!24783 m!26007))

(assert (=> b!24663 d!13659))

(declare-fun d!13661 () Bool)

(assert (=> d!13661 (= (isEmpty!311 (right!701 res!5628)) (= (right!701 res!5628) Empty!64))))

(assert (=> b!24661 d!13661))

(assert (=> b!24647 d!13617))

(assert (=> b!24647 d!13615))

(declare-fun b!24788 () Bool)

(declare-fun res!11067 () Bool)

(declare-fun e!12824 () Bool)

(assert (=> b!24788 (=> (not res!11067) (not e!12824))))

(assert (=> b!24788 (= res!11067 (balanced!49 (left!698 (left!698 xs!625))))))

(declare-fun d!13663 () Bool)

(declare-fun res!11066 () Bool)

(declare-fun e!12825 () Bool)

(assert (=> d!13663 (=> res!11066 e!12825)))

(assert (=> d!13663 (= res!11066 (not (is-CC!53 (left!698 xs!625))))))

(assert (=> d!13663 (= (balanced!49 (left!698 xs!625)) e!12825)))

(declare-fun b!24787 () Bool)

(declare-fun res!11068 () Bool)

(assert (=> b!24787 (=> (not res!11068) (not e!12824))))

(assert (=> b!24787 (= res!11068 (<= (- (level!43 (left!698 (left!698 xs!625))) (level!43 (right!701 (left!698 xs!625)))) 1))))

(declare-fun b!24789 () Bool)

(assert (=> b!24789 (= e!12824 (balanced!49 (right!701 (left!698 xs!625))))))

(declare-fun b!24786 () Bool)

(assert (=> b!24786 (= e!12825 e!12824)))

(declare-fun res!11065 () Bool)

(assert (=> b!24786 (=> (not res!11065) (not e!12824))))

(assert (=> b!24786 (= res!11065 (>= (- (level!43 (left!698 (left!698 xs!625))) (level!43 (right!701 (left!698 xs!625)))) (- 1)))))

(assert (= (and d!13663 (not res!11066)) b!24786))

(assert (= (and b!24786 res!11065) b!24787))

(assert (= (and b!24787 res!11068) b!24788))

(assert (= (and b!24788 res!11067) b!24789))

(declare-fun m!26009 () Bool)

(assert (=> b!24788 m!26009))

(assert (=> b!24787 m!25923))

(assert (=> b!24787 m!25921))

(declare-fun m!26011 () Bool)

(assert (=> b!24789 m!26011))

(assert (=> b!24786 m!25923))

(assert (=> b!24786 m!25921))

(assert (=> b!24678 d!13663))

(declare-fun b!24792 () Bool)

(declare-fun res!11071 () Bool)

(declare-fun e!12826 () Bool)

(assert (=> b!24792 (=> (not res!11071) (not e!12826))))

(assert (=> b!24792 (= res!11071 (balanced!49 (left!698 (right!701 res!5628))))))

(declare-fun d!13665 () Bool)

(declare-fun res!11070 () Bool)

(declare-fun e!12827 () Bool)

(assert (=> d!13665 (=> res!11070 e!12827)))

(assert (=> d!13665 (= res!11070 (not (is-CC!53 (right!701 res!5628))))))

(assert (=> d!13665 (= (balanced!49 (right!701 res!5628)) e!12827)))

(declare-fun b!24791 () Bool)

(declare-fun res!11072 () Bool)

(assert (=> b!24791 (=> (not res!11072) (not e!12826))))

(assert (=> b!24791 (= res!11072 (<= (- (level!43 (left!698 (right!701 res!5628))) (level!43 (right!701 (right!701 res!5628)))) 1))))

(declare-fun b!24793 () Bool)

(assert (=> b!24793 (= e!12826 (balanced!49 (right!701 (right!701 res!5628))))))

(declare-fun b!24790 () Bool)

(assert (=> b!24790 (= e!12827 e!12826)))

(declare-fun res!11069 () Bool)

(assert (=> b!24790 (=> (not res!11069) (not e!12826))))

(assert (=> b!24790 (= res!11069 (>= (- (level!43 (left!698 (right!701 res!5628))) (level!43 (right!701 (right!701 res!5628)))) (- 1)))))

(assert (= (and d!13665 (not res!11070)) b!24790))

(assert (= (and b!24790 res!11069) b!24791))

(assert (= (and b!24791 res!11072) b!24792))

(assert (= (and b!24792 res!11071) b!24793))

(declare-fun m!26013 () Bool)

(assert (=> b!24792 m!26013))

(assert (=> b!24791 m!25931))

(assert (=> b!24791 m!25929))

(declare-fun m!26015 () Bool)

(assert (=> b!24793 m!26015))

(assert (=> b!24790 m!25931))

(assert (=> b!24790 m!25929))

(assert (=> b!24691 d!13665))

(declare-fun d!13667 () Bool)

(declare-fun res!11074 () Bool)

(declare-fun e!12829 () Bool)

(assert (=> d!13667 (=> res!11074 e!12829)))

(assert (=> d!13667 (= res!11074 (not (is-CC!53 (right!701 xs!625))))))

(assert (=> d!13667 (= (concInv!48 (right!701 xs!625)) e!12829)))

(declare-fun b!24794 () Bool)

(declare-fun e!12828 () Bool)

(assert (=> b!24794 (= e!12829 e!12828)))

(declare-fun res!11073 () Bool)

(assert (=> b!24794 (=> (not res!11073) (not e!12828))))

(assert (=> b!24794 (= res!11073 (not (isEmpty!311 (left!698 (right!701 xs!625)))))))

(declare-fun b!24797 () Bool)

(assert (=> b!24797 (= e!12828 (concInv!48 (right!701 (right!701 xs!625))))))

(declare-fun b!24796 () Bool)

(declare-fun res!11076 () Bool)

(assert (=> b!24796 (=> (not res!11076) (not e!12828))))

(assert (=> b!24796 (= res!11076 (concInv!48 (left!698 (right!701 xs!625))))))

(declare-fun b!24795 () Bool)

(declare-fun res!11075 () Bool)

(assert (=> b!24795 (=> (not res!11075) (not e!12828))))

(assert (=> b!24795 (= res!11075 (not (isEmpty!311 (right!701 (right!701 xs!625)))))))

(assert (= (and d!13667 (not res!11074)) b!24794))

(assert (= (and b!24794 res!11073) b!24795))

(assert (= (and b!24795 res!11075) b!24796))

(assert (= (and b!24796 res!11076) b!24797))

(declare-fun m!26017 () Bool)

(assert (=> b!24794 m!26017))

(declare-fun m!26019 () Bool)

(assert (=> b!24797 m!26019))

(declare-fun m!26021 () Bool)

(assert (=> b!24796 m!26021))

(declare-fun m!26023 () Bool)

(assert (=> b!24795 m!26023))

(assert (=> b!24667 d!13667))

(declare-fun d!13669 () Bool)

(declare-fun res!11078 () Bool)

(declare-fun e!12831 () Bool)

(assert (=> d!13669 (=> res!11078 e!12831)))

(assert (=> d!13669 (= res!11078 (not (is-CC!53 (left!698 ys!119))))))

(assert (=> d!13669 (= (concInv!48 (left!698 ys!119)) e!12831)))

(declare-fun b!24798 () Bool)

(declare-fun e!12830 () Bool)

(assert (=> b!24798 (= e!12831 e!12830)))

(declare-fun res!11077 () Bool)

(assert (=> b!24798 (=> (not res!11077) (not e!12830))))

(assert (=> b!24798 (= res!11077 (not (isEmpty!311 (left!698 (left!698 ys!119)))))))

(declare-fun b!24801 () Bool)

(assert (=> b!24801 (= e!12830 (concInv!48 (right!701 (left!698 ys!119))))))

(declare-fun b!24800 () Bool)

(declare-fun res!11080 () Bool)

(assert (=> b!24800 (=> (not res!11080) (not e!12830))))

(assert (=> b!24800 (= res!11080 (concInv!48 (left!698 (left!698 ys!119))))))

(declare-fun b!24799 () Bool)

(declare-fun res!11079 () Bool)

(assert (=> b!24799 (=> (not res!11079) (not e!12830))))

(assert (=> b!24799 (= res!11079 (not (isEmpty!311 (right!701 (left!698 ys!119)))))))

(assert (= (and d!13669 (not res!11078)) b!24798))

(assert (= (and b!24798 res!11077) b!24799))

(assert (= (and b!24799 res!11079) b!24800))

(assert (= (and b!24800 res!11080) b!24801))

(declare-fun m!26025 () Bool)

(assert (=> b!24798 m!26025))

(declare-fun m!26027 () Bool)

(assert (=> b!24801 m!26027))

(declare-fun m!26029 () Bool)

(assert (=> b!24800 m!26029))

(declare-fun m!26031 () Bool)

(assert (=> b!24799 m!26031))

(assert (=> b!24682 d!13669))

(declare-fun b!24802 () Bool)

(declare-fun e!12832 () Bool)

(declare-fun tp!5360 () Bool)

(declare-fun tp!5361 () Bool)

(assert (=> b!24802 (= e!12832 (and tp!5360 tp!5361))))

(declare-fun b!24803 () Bool)

(assert (=> b!24803 (= e!12832 tp_is_empty!153)))

(assert (=> b!24702 (= tp!5352 e!12832)))

(assert (= (and b!24702 (is-CC!53 (left!698 (left!698 res!5628)))) b!24802))

(assert (= (and b!24702 (is-Single!53 (left!698 (left!698 res!5628)))) b!24803))

(declare-fun b!24804 () Bool)

(declare-fun e!12833 () Bool)

(declare-fun tp!5362 () Bool)

(declare-fun tp!5363 () Bool)

(assert (=> b!24804 (= e!12833 (and tp!5362 tp!5363))))

(declare-fun b!24805 () Bool)

(assert (=> b!24805 (= e!12833 tp_is_empty!153)))

(assert (=> b!24702 (= tp!5353 e!12833)))

(assert (= (and b!24702 (is-CC!53 (right!701 (left!698 res!5628)))) b!24804))

(assert (= (and b!24702 (is-Single!53 (right!701 (left!698 res!5628)))) b!24805))

(declare-fun b!24806 () Bool)

(declare-fun e!12834 () Bool)

(declare-fun tp!5364 () Bool)

(declare-fun tp!5365 () Bool)

(assert (=> b!24806 (= e!12834 (and tp!5364 tp!5365))))

(declare-fun b!24807 () Bool)

(assert (=> b!24807 (= e!12834 tp_is_empty!153)))

(assert (=> b!24698 (= tp!5348 e!12834)))

(assert (= (and b!24698 (is-CC!53 (left!698 (left!698 xs!625)))) b!24806))

(assert (= (and b!24698 (is-Single!53 (left!698 (left!698 xs!625)))) b!24807))

(declare-fun b!24808 () Bool)

(declare-fun e!12835 () Bool)

(declare-fun tp!5366 () Bool)

(declare-fun tp!5367 () Bool)

(assert (=> b!24808 (= e!12835 (and tp!5366 tp!5367))))

(declare-fun b!24809 () Bool)

(assert (=> b!24809 (= e!12835 tp_is_empty!153)))

(assert (=> b!24698 (= tp!5349 e!12835)))

(assert (= (and b!24698 (is-CC!53 (right!701 (left!698 xs!625)))) b!24808))

(assert (= (and b!24698 (is-Single!53 (right!701 (left!698 xs!625)))) b!24809))

(declare-fun b!24810 () Bool)

(declare-fun e!12836 () Bool)

(declare-fun tp!5368 () Bool)

(declare-fun tp!5369 () Bool)

(assert (=> b!24810 (= e!12836 (and tp!5368 tp!5369))))

(declare-fun b!24811 () Bool)

(assert (=> b!24811 (= e!12836 tp_is_empty!153)))

(assert (=> b!24700 (= tp!5350 e!12836)))

(assert (= (and b!24700 (is-CC!53 (left!698 (right!701 xs!625)))) b!24810))

(assert (= (and b!24700 (is-Single!53 (left!698 (right!701 xs!625)))) b!24811))

(declare-fun b!24812 () Bool)

(declare-fun e!12837 () Bool)

(declare-fun tp!5370 () Bool)

(declare-fun tp!5371 () Bool)

(assert (=> b!24812 (= e!12837 (and tp!5370 tp!5371))))

(declare-fun b!24813 () Bool)

(assert (=> b!24813 (= e!12837 tp_is_empty!153)))

(assert (=> b!24700 (= tp!5351 e!12837)))

(assert (= (and b!24700 (is-CC!53 (right!701 (right!701 xs!625)))) b!24812))

(assert (= (and b!24700 (is-Single!53 (right!701 (right!701 xs!625)))) b!24813))

(declare-fun b!24814 () Bool)

(declare-fun e!12838 () Bool)

(declare-fun tp!5372 () Bool)

(declare-fun tp!5373 () Bool)

(assert (=> b!24814 (= e!12838 (and tp!5372 tp!5373))))

(declare-fun b!24815 () Bool)

(assert (=> b!24815 (= e!12838 tp_is_empty!153)))

(assert (=> b!24708 (= tp!5358 e!12838)))

(assert (= (and b!24708 (is-CC!53 (left!698 (right!701 ys!119)))) b!24814))

(assert (= (and b!24708 (is-Single!53 (left!698 (right!701 ys!119)))) b!24815))

(declare-fun b!24816 () Bool)

(declare-fun e!12839 () Bool)

(declare-fun tp!5374 () Bool)

(declare-fun tp!5375 () Bool)

(assert (=> b!24816 (= e!12839 (and tp!5374 tp!5375))))

(declare-fun b!24817 () Bool)

(assert (=> b!24817 (= e!12839 tp_is_empty!153)))

(assert (=> b!24708 (= tp!5359 e!12839)))

(assert (= (and b!24708 (is-CC!53 (right!701 (right!701 ys!119)))) b!24816))

(assert (= (and b!24708 (is-Single!53 (right!701 (right!701 ys!119)))) b!24817))

(declare-fun b!24818 () Bool)

(declare-fun e!12840 () Bool)

(declare-fun tp!5376 () Bool)

(declare-fun tp!5377 () Bool)

(assert (=> b!24818 (= e!12840 (and tp!5376 tp!5377))))

(declare-fun b!24819 () Bool)

(assert (=> b!24819 (= e!12840 tp_is_empty!153)))

(assert (=> b!24706 (= tp!5356 e!12840)))

(assert (= (and b!24706 (is-CC!53 (left!698 (left!698 ys!119)))) b!24818))

(assert (= (and b!24706 (is-Single!53 (left!698 (left!698 ys!119)))) b!24819))

(declare-fun b!24820 () Bool)

(declare-fun e!12841 () Bool)

(declare-fun tp!5378 () Bool)

(declare-fun tp!5379 () Bool)

(assert (=> b!24820 (= e!12841 (and tp!5378 tp!5379))))

(declare-fun b!24821 () Bool)

(assert (=> b!24821 (= e!12841 tp_is_empty!153)))

(assert (=> b!24706 (= tp!5357 e!12841)))

(assert (= (and b!24706 (is-CC!53 (right!701 (left!698 ys!119)))) b!24820))

(assert (= (and b!24706 (is-Single!53 (right!701 (left!698 ys!119)))) b!24821))

(declare-fun b!24822 () Bool)

(declare-fun e!12842 () Bool)

(declare-fun tp!5380 () Bool)

(declare-fun tp!5381 () Bool)

(assert (=> b!24822 (= e!12842 (and tp!5380 tp!5381))))

(declare-fun b!24823 () Bool)

(assert (=> b!24823 (= e!12842 tp_is_empty!153)))

(assert (=> b!24704 (= tp!5354 e!12842)))

(assert (= (and b!24704 (is-CC!53 (left!698 (right!701 res!5628)))) b!24822))

(assert (= (and b!24704 (is-Single!53 (left!698 (right!701 res!5628)))) b!24823))

(declare-fun b!24824 () Bool)

(declare-fun e!12843 () Bool)

(declare-fun tp!5382 () Bool)

(declare-fun tp!5383 () Bool)

(assert (=> b!24824 (= e!12843 (and tp!5382 tp!5383))))

(declare-fun b!24825 () Bool)

(assert (=> b!24825 (= e!12843 tp_is_empty!153)))

(assert (=> b!24704 (= tp!5355 e!12843)))

(assert (= (and b!24704 (is-CC!53 (right!701 (right!701 res!5628)))) b!24824))

(assert (= (and b!24704 (is-Single!53 (right!701 (right!701 res!5628)))) b!24825))

(push 1)

(assert (not b!24719))

(assert (not b!24714))

(assert (not b!24782))

(assert (not d!13643))

(assert (not b!24723))

(assert (not b!24796))

(assert (not b!24780))

(assert (not b!24800))

(assert (not b!24789))

(assert (not b!24737))

(assert (not b!24711))

(assert (not b!24765))

(assert (not b!24812))

(assert (not b!24788))

(assert (not b!24785))

(assert (not b!24824))

(assert (not b!24731))

(assert (not b!24713))

(assert (not b!24802))

(assert (not b!24729))

(assert (not b!24797))

(assert (not b!24798))

(assert (not b!24783))

(assert (not b!24801))

(assert (not d!13647))

(assert (not b!24769))

(assert (not b!24771))

(assert (not b!24810))

(assert (not b!24734))

(assert (not b!24733))

(assert (not b!24776))

(assert (not b!24792))

(assert (not d!13645))

(assert (not b!24795))

(assert (not b!24794))

(assert (not b!24747))

(assert (not b!24773))

(assert (not b!24791))

(assert (not b!24770))

(assert (not b!24814))

(assert (not b!24779))

(assert (not b!24793))

(assert (not b!24718))

(assert tp_is_empty!153)

(assert (not b!24790))

(assert (not b!24727))

(assert (not b!24732))

(assert (not b!24716))

(assert (not b!24777))

(assert (not b!24761))

(assert (not b!24725))

(assert (not b!24781))

(assert (not b!24748))

(assert (not b!24778))

(assert (not b!24730))

(assert (not b!24736))

(assert (not b!24808))

(assert (not b!24822))

(assert (not b!24721))

(assert (not b!24787))

(assert (not b!24820))

(assert (not b!24715))

(assert (not b!24774))

(assert (not d!13649))

(assert (not b!24775))

(assert (not b!24799))

(assert (not b!24804))

(assert (not b!24717))

(assert (not b!24772))

(assert (not b!24720))

(assert (not b!24786))

(assert (not b!24784))

(assert (not b!24735))

(assert (not b!24816))

(assert (not b!24806))

(assert (not b!24818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

