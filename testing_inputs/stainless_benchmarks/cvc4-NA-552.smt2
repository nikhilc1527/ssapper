; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4110 () Bool)

(assert start!4110)

(declare-fun b!32782 () Bool)

(declare-fun res!15117 () Bool)

(declare-fun e!16618 () Bool)

(assert (=> b!32782 (=> (not res!15117) (not e!16618))))

(declare-datatypes () ((T!1859 (T!1860 (val!102 Int)))))

(declare-datatypes () ((Conc!79 (CC!78 (left!723 Conc!79) (right!726 Conc!79)) (Single!78 (x!8996 T!1859)) (Empty!89))))

(declare-fun xs!586 () Conc!79)

(declare-fun y!785 () T!1859)

(declare-fun i!263 () Int)

(declare-fun instAppendUpdateAxiom!5 (Conc!79 Int T!1859) Bool)

(assert (=> b!32782 (= res!15117 (instAppendUpdateAxiom!5 xs!586 i!263 y!785))))

(declare-fun b!32783 () Bool)

(declare-fun res!15118 () Bool)

(assert (=> b!32783 (=> (not res!15118) (not e!16618))))

(declare-fun size!290 (Conc!79) Int)

(assert (=> b!32783 (= res!15118 (< i!263 (size!290 xs!586)))))

(declare-fun b!32784 () Bool)

(declare-fun res!15110 () Bool)

(assert (=> b!32784 (=> (not res!15110) (not e!16618))))

(declare-fun res!5582 () Conc!79)

(declare-fun balanced!72 (Conc!79) Bool)

(assert (=> b!32784 (= res!15110 (balanced!72 res!5582))))

(declare-fun b!32785 () Bool)

(declare-fun e!16619 () Bool)

(declare-fun tp!6817 () Bool)

(declare-fun tp!6815 () Bool)

(assert (=> b!32785 (= e!16619 (and tp!6817 tp!6815))))

(declare-fun b!32786 () Bool)

(declare-fun res!15116 () Bool)

(assert (=> b!32786 (=> (not res!15116) (not e!16618))))

(declare-fun concInv!71 (Conc!79) Bool)

(assert (=> b!32786 (= res!15116 (concInv!71 res!5582))))

(declare-fun b!32787 () Bool)

(declare-fun res!15114 () Bool)

(assert (=> b!32787 (=> (not res!15114) (not e!16618))))

(declare-fun level!62 (Conc!79) Int)

(assert (=> b!32787 (= res!15114 (= (level!62 res!5582) (level!62 xs!586)))))

(declare-fun b!32788 () Bool)

(declare-fun res!15113 () Bool)

(assert (=> b!32788 (=> (not res!15113) (not e!16618))))

(assert (=> b!32788 (= res!15113 (>= i!263 0))))

(declare-fun b!32789 () Bool)

(declare-fun res!15112 () Bool)

(assert (=> b!32789 (=> (not res!15112) (not e!16618))))

(declare-fun y!806 () T!1859)

(declare-fun i!278 () Int)

(assert (=> b!32789 (= res!15112 (and (= i!278 i!263) (= y!806 y!785)))))

(declare-fun b!32790 () Bool)

(declare-fun tp_is_empty!203 () Bool)

(assert (=> b!32790 (= e!16619 tp_is_empty!203)))

(declare-fun res!15115 () Bool)

(assert (=> start!4110 (=> (not res!15115) (not e!16618))))

(assert (=> start!4110 (= res!15115 (concInv!71 xs!586))))

(assert (=> start!4110 e!16618))

(declare-fun e!16620 () Bool)

(assert (=> start!4110 e!16620))

(assert (=> start!4110 tp_is_empty!203))

(assert (=> start!4110 e!16619))

(assert (=> start!4110 true))

(declare-fun e!16617 () Bool)

(assert (=> start!4110 e!16617))

(declare-fun b!32791 () Bool)

(declare-fun res!15123 () Bool)

(assert (=> b!32791 (=> (not res!15123) (not e!16618))))

(declare-fun update!10 (Conc!79 Int T!1859) Conc!79)

(assert (=> b!32791 (= res!15123 (= res!5582 (CC!78 (left!723 xs!586) (update!10 (right!726 xs!586) (- i!263 (size!290 (left!723 xs!586))) y!785))))))

(declare-fun b!32792 () Bool)

(declare-fun tp!6816 () Bool)

(assert (=> b!32792 (= e!16617 (and tp_is_empty!203 tp!6816))))

(declare-fun b!32793 () Bool)

(declare-fun res!15111 () Bool)

(assert (=> b!32793 (=> (not res!15111) (not e!16618))))

(declare-fun isEmpty!333 (Conc!79) Bool)

(assert (=> b!32793 (= res!15111 (not (isEmpty!333 xs!586)))))

(declare-fun b!32794 () Bool)

(declare-fun res!15119 () Bool)

(assert (=> b!32794 (=> (not res!15119) (not e!16618))))

(declare-datatypes () ((List!369 (Cons!363 (h!280 T!1859) (t!4383 List!369)) (Nil!364))))

(declare-fun thiss!2817 () List!369)

(declare-fun toList!124 (Conc!79) List!369)

(assert (=> b!32794 (= res!15119 (= thiss!2817 (toList!124 xs!586)))))

(declare-fun b!32795 () Bool)

(declare-fun res!15121 () Bool)

(assert (=> b!32795 (=> (not res!15121) (not e!16618))))

(assert (=> b!32795 (= res!15121 (not (is-Single!78 xs!586)))))

(declare-fun b!32796 () Bool)

(declare-fun e!16621 () Bool)

(assert (=> b!32796 (= e!16618 e!16621)))

(declare-fun res!15122 () Bool)

(assert (=> b!32796 (=> res!15122 e!16621)))

(assert (=> b!32796 (= res!15122 (> 0 i!278))))

(declare-fun b!32797 () Bool)

(assert (=> b!32797 (= e!16620 tp_is_empty!203)))

(declare-fun b!32798 () Bool)

(declare-fun res!15109 () Bool)

(assert (=> b!32798 (=> (not res!15109) (not e!16618))))

(assert (=> b!32798 (= res!15109 (balanced!72 xs!586))))

(declare-fun b!32799 () Bool)

(declare-fun res!15120 () Bool)

(assert (=> b!32799 (=> (not res!15120) (not e!16618))))

(assert (=> b!32799 (= res!15120 (>= i!263 (size!290 (left!723 xs!586))))))

(declare-fun b!32800 () Bool)

(declare-fun size!291 (List!369) Int)

(assert (=> b!32800 (= e!16621 (>= i!278 (size!291 thiss!2817)))))

(declare-fun b!32801 () Bool)

(declare-fun tp!6818 () Bool)

(declare-fun tp!6814 () Bool)

(assert (=> b!32801 (= e!16620 (and tp!6818 tp!6814))))

(assert (= (and start!4110 res!15115) b!32798))

(assert (= (and b!32798 res!15109) b!32793))

(assert (= (and b!32793 res!15111) b!32788))

(assert (= (and b!32788 res!15113) b!32783))

(assert (= (and b!32783 res!15118) b!32795))

(assert (= (and b!32795 res!15121) b!32799))

(assert (= (and b!32799 res!15120) b!32791))

(assert (= (and b!32791 res!15123) b!32782))

(assert (= (and b!32782 res!15117) b!32787))

(assert (= (and b!32787 res!15114) b!32786))

(assert (= (and b!32786 res!15116) b!32784))

(assert (= (and b!32784 res!15110) b!32794))

(assert (= (and b!32794 res!15119) b!32789))

(assert (= (and b!32789 res!15112) b!32796))

(assert (= (and b!32796 (not res!15122)) b!32800))

(assert (= (and start!4110 (is-CC!78 xs!586)) b!32801))

(assert (= (and start!4110 (is-Single!78 xs!586)) b!32797))

(assert (= (and start!4110 (is-CC!78 res!5582)) b!32785))

(assert (= (and start!4110 (is-Single!78 res!5582)) b!32790))

(assert (= (and start!4110 (is-Cons!363 thiss!2817)) b!32792))

(declare-fun m!35215 () Bool)

(assert (=> b!32799 m!35215))

(declare-fun m!35217 () Bool)

(assert (=> b!32783 m!35217))

(declare-fun m!35219 () Bool)

(assert (=> b!32784 m!35219))

(declare-fun m!35221 () Bool)

(assert (=> b!32794 m!35221))

(declare-fun m!35223 () Bool)

(assert (=> b!32786 m!35223))

(declare-fun m!35225 () Bool)

(assert (=> b!32800 m!35225))

(declare-fun m!35227 () Bool)

(assert (=> b!32798 m!35227))

(declare-fun m!35229 () Bool)

(assert (=> b!32793 m!35229))

(assert (=> b!32791 m!35215))

(declare-fun m!35231 () Bool)

(assert (=> b!32791 m!35231))

(declare-fun m!35233 () Bool)

(assert (=> b!32787 m!35233))

(declare-fun m!35235 () Bool)

(assert (=> b!32787 m!35235))

(declare-fun m!35237 () Bool)

(assert (=> b!32782 m!35237))

(declare-fun m!35239 () Bool)

(assert (=> start!4110 m!35239))

(push 1)

(assert (not b!32792))

(assert (not b!32784))

(assert (not b!32785))

(assert (not b!32787))

(assert tp_is_empty!203)

(assert (not b!32800))

(assert (not b!32798))

(assert (not start!4110))

(assert (not b!32786))

(assert (not b!32791))

(assert (not b!32783))

(assert (not b!32782))

(assert (not b!32801))

(assert (not b!32793))

(assert (not b!32799))

(assert (not b!32794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16655 () Bool)

(declare-fun res!15132 () Bool)

(declare-fun e!16626 () Bool)

(assert (=> d!16655 (=> res!15132 e!16626)))

(assert (=> d!16655 (= res!15132 (not (is-CC!78 xs!586)))))

(assert (=> d!16655 (= (concInv!71 xs!586) e!16626)))

(declare-fun b!32813 () Bool)

(declare-fun e!16627 () Bool)

(assert (=> b!32813 (= e!16627 (concInv!71 (right!726 xs!586)))))

(declare-fun b!32811 () Bool)

(declare-fun res!15134 () Bool)

(assert (=> b!32811 (=> (not res!15134) (not e!16627))))

(assert (=> b!32811 (= res!15134 (not (isEmpty!333 (right!726 xs!586))))))

(declare-fun b!32812 () Bool)

(declare-fun res!15133 () Bool)

(assert (=> b!32812 (=> (not res!15133) (not e!16627))))

(assert (=> b!32812 (= res!15133 (concInv!71 (left!723 xs!586)))))

(declare-fun b!32810 () Bool)

(assert (=> b!32810 (= e!16626 e!16627)))

(declare-fun res!15135 () Bool)

(assert (=> b!32810 (=> (not res!15135) (not e!16627))))

(assert (=> b!32810 (= res!15135 (not (isEmpty!333 (left!723 xs!586))))))

(assert (= (and d!16655 (not res!15132)) b!32810))

(assert (= (and b!32810 res!15135) b!32811))

(assert (= (and b!32811 res!15134) b!32812))

(assert (= (and b!32812 res!15133) b!32813))

(declare-fun m!35241 () Bool)

(assert (=> b!32813 m!35241))

(declare-fun m!35243 () Bool)

(assert (=> b!32811 m!35243))

(declare-fun m!35245 () Bool)

(assert (=> b!32812 m!35245))

(declare-fun m!35247 () Bool)

(assert (=> b!32810 m!35247))

(assert (=> start!4110 d!16655))

(declare-fun b!32819 () Bool)

(declare-fun e!16630 () Int)

(declare-fun lt!6199 () Int)

(declare-fun lt!6200 () Int)

(assert (=> b!32819 (= e!16630 (+ 1 (ite (>= lt!6199 lt!6200) lt!6199 lt!6200)))))

(assert (=> b!32819 (= lt!6200 (level!62 (right!726 res!5582)))))

(assert (=> b!32819 (= lt!6199 (level!62 (left!723 res!5582)))))

(declare-fun d!16657 () Bool)

(declare-fun lt!6201 () Int)

(assert (=> d!16657 (>= lt!6201 0)))

(assert (=> d!16657 (= lt!6201 e!16630)))

(declare-fun c!7068 () Bool)

(assert (=> d!16657 (= c!7068 (or (is-Empty!89 res!5582) (is-Single!78 res!5582)))))

(assert (=> d!16657 (= (level!62 res!5582) lt!6201)))

(declare-fun b!32818 () Bool)

(assert (=> b!32818 (= e!16630 0)))

(assert (= (and d!16657 c!7068) b!32818))

(assert (= (and d!16657 (not c!7068)) b!32819))

(declare-fun m!35249 () Bool)

(assert (=> b!32819 m!35249))

(declare-fun m!35251 () Bool)

(assert (=> b!32819 m!35251))

(assert (=> b!32787 d!16657))

(declare-fun b!32821 () Bool)

(declare-fun e!16631 () Int)

(declare-fun lt!6202 () Int)

(declare-fun lt!6203 () Int)

(assert (=> b!32821 (= e!16631 (+ 1 (ite (>= lt!6202 lt!6203) lt!6202 lt!6203)))))

(assert (=> b!32821 (= lt!6203 (level!62 (right!726 xs!586)))))

(assert (=> b!32821 (= lt!6202 (level!62 (left!723 xs!586)))))

(declare-fun d!16659 () Bool)

(declare-fun lt!6204 () Int)

(assert (=> d!16659 (>= lt!6204 0)))

(assert (=> d!16659 (= lt!6204 e!16631)))

(declare-fun c!7069 () Bool)

(assert (=> d!16659 (= c!7069 (or (is-Empty!89 xs!586) (is-Single!78 xs!586)))))

(assert (=> d!16659 (= (level!62 xs!586) lt!6204)))

(declare-fun b!32820 () Bool)

(assert (=> b!32820 (= e!16631 0)))

(assert (= (and d!16659 c!7069) b!32820))

(assert (= (and d!16659 (not c!7069)) b!32821))

(declare-fun m!35253 () Bool)

(assert (=> b!32821 m!35253))

(declare-fun m!35255 () Bool)

(assert (=> b!32821 m!35255))

(assert (=> b!32787 d!16659))

(declare-fun b!32830 () Bool)

(declare-fun e!16636 () Bool)

(declare-fun e!16637 () Bool)

(assert (=> b!32830 (= e!16636 e!16637)))

(declare-fun res!15144 () Bool)

(assert (=> b!32830 (=> (not res!15144) (not e!16637))))

(assert (=> b!32830 (= res!15144 (>= (- (level!62 (left!723 res!5582)) (level!62 (right!726 res!5582))) (- 1)))))

(declare-fun b!32833 () Bool)

(assert (=> b!32833 (= e!16637 (balanced!72 (right!726 res!5582)))))

(declare-fun b!32832 () Bool)

(declare-fun res!15147 () Bool)

(assert (=> b!32832 (=> (not res!15147) (not e!16637))))

(assert (=> b!32832 (= res!15147 (balanced!72 (left!723 res!5582)))))

(declare-fun d!16661 () Bool)

(declare-fun res!15146 () Bool)

(assert (=> d!16661 (=> res!15146 e!16636)))

(assert (=> d!16661 (= res!15146 (not (is-CC!78 res!5582)))))

(assert (=> d!16661 (= (balanced!72 res!5582) e!16636)))

(declare-fun b!32831 () Bool)

(declare-fun res!15145 () Bool)

(assert (=> b!32831 (=> (not res!15145) (not e!16637))))

(assert (=> b!32831 (= res!15145 (<= (- (level!62 (left!723 res!5582)) (level!62 (right!726 res!5582))) 1))))

(assert (= (and d!16661 (not res!15146)) b!32830))

(assert (= (and b!32830 res!15144) b!32831))

(assert (= (and b!32831 res!15145) b!32832))

(assert (= (and b!32832 res!15147) b!32833))

(assert (=> b!32830 m!35251))

(assert (=> b!32830 m!35249))

(declare-fun m!35257 () Bool)

(assert (=> b!32833 m!35257))

(declare-fun m!35259 () Bool)

(assert (=> b!32832 m!35259))

(assert (=> b!32831 m!35251))

(assert (=> b!32831 m!35249))

(assert (=> b!32784 d!16661))

(declare-fun d!16663 () Bool)

(assert (=> d!16663 (= (isEmpty!333 xs!586) (= xs!586 Empty!89))))

(assert (=> b!32793 d!16663))

(declare-fun b!32834 () Bool)

(declare-fun e!16638 () Bool)

(declare-fun e!16639 () Bool)

(assert (=> b!32834 (= e!16638 e!16639)))

(declare-fun res!15148 () Bool)

(assert (=> b!32834 (=> (not res!15148) (not e!16639))))

(assert (=> b!32834 (= res!15148 (>= (- (level!62 (left!723 xs!586)) (level!62 (right!726 xs!586))) (- 1)))))

(declare-fun b!32837 () Bool)

(assert (=> b!32837 (= e!16639 (balanced!72 (right!726 xs!586)))))

(declare-fun b!32836 () Bool)

(declare-fun res!15151 () Bool)

(assert (=> b!32836 (=> (not res!15151) (not e!16639))))

(assert (=> b!32836 (= res!15151 (balanced!72 (left!723 xs!586)))))

(declare-fun d!16665 () Bool)

(declare-fun res!15150 () Bool)

(assert (=> d!16665 (=> res!15150 e!16638)))

(assert (=> d!16665 (= res!15150 (not (is-CC!78 xs!586)))))

(assert (=> d!16665 (= (balanced!72 xs!586) e!16638)))

(declare-fun b!32835 () Bool)

(declare-fun res!15149 () Bool)

(assert (=> b!32835 (=> (not res!15149) (not e!16639))))

(assert (=> b!32835 (= res!15149 (<= (- (level!62 (left!723 xs!586)) (level!62 (right!726 xs!586))) 1))))

(assert (= (and d!16665 (not res!15150)) b!32834))

(assert (= (and b!32834 res!15148) b!32835))

(assert (= (and b!32835 res!15149) b!32836))

(assert (= (and b!32836 res!15151) b!32837))

(assert (=> b!32834 m!35255))

(assert (=> b!32834 m!35253))

(declare-fun m!35261 () Bool)

(assert (=> b!32837 m!35261))

(declare-fun m!35263 () Bool)

(assert (=> b!32836 m!35263))

(assert (=> b!32835 m!35255))

(assert (=> b!32835 m!35253))

(assert (=> b!32798 d!16665))

(declare-fun b!32849 () Bool)

(declare-fun e!16644 () List!369)

(declare-fun ++!49 (List!369 List!369) List!369)

(assert (=> b!32849 (= e!16644 (++!49 (toList!124 (left!723 xs!586)) (toList!124 (right!726 xs!586))))))

(declare-fun b!32847 () Bool)

(declare-fun e!16645 () List!369)

(assert (=> b!32847 (= e!16645 e!16644)))

(declare-fun c!7074 () Bool)

(assert (=> b!32847 (= c!7074 (is-Single!78 xs!586))))

(declare-fun b!32848 () Bool)

(assert (=> b!32848 (= e!16644 (Cons!363 (x!8996 xs!586) Nil!364))))

(declare-fun b!32846 () Bool)

(assert (=> b!32846 (= e!16645 Nil!364)))

(declare-fun d!16667 () Bool)

(declare-fun lt!6207 () List!369)

(assert (=> d!16667 (= (size!291 lt!6207) (size!290 xs!586))))

(assert (=> d!16667 (= lt!6207 e!16645)))

(declare-fun c!7075 () Bool)

(assert (=> d!16667 (= c!7075 (is-Empty!89 xs!586))))

(assert (=> d!16667 (= (toList!124 xs!586) lt!6207)))

(assert (= (and b!32847 c!7074) b!32848))

(assert (= (and b!32847 (not c!7074)) b!32849))

(assert (= (and d!16667 c!7075) b!32846))

(assert (= (and d!16667 (not c!7075)) b!32847))

(declare-fun m!35265 () Bool)

(assert (=> b!32849 m!35265))

(declare-fun m!35267 () Bool)

(assert (=> b!32849 m!35267))

(assert (=> b!32849 m!35265))

(assert (=> b!32849 m!35267))

(declare-fun m!35269 () Bool)

(assert (=> b!32849 m!35269))

(declare-fun m!35271 () Bool)

(assert (=> d!16667 m!35271))

(assert (=> d!16667 m!35217))

(assert (=> b!32794 d!16667))

(declare-fun d!16669 () Bool)

(declare-fun res!15153 () Bool)

(declare-fun e!16646 () Bool)

(assert (=> d!16669 (=> res!15153 e!16646)))

(assert (=> d!16669 (= res!15153 (not (is-CC!78 res!5582)))))

(assert (=> d!16669 (= (concInv!71 res!5582) e!16646)))

(declare-fun b!32853 () Bool)

(declare-fun e!16647 () Bool)

(assert (=> b!32853 (= e!16647 (concInv!71 (right!726 res!5582)))))

(declare-fun b!32851 () Bool)

(declare-fun res!15155 () Bool)

(assert (=> b!32851 (=> (not res!15155) (not e!16647))))

(assert (=> b!32851 (= res!15155 (not (isEmpty!333 (right!726 res!5582))))))

(declare-fun b!32852 () Bool)

(declare-fun res!15154 () Bool)

(assert (=> b!32852 (=> (not res!15154) (not e!16647))))

(assert (=> b!32852 (= res!15154 (concInv!71 (left!723 res!5582)))))

(declare-fun b!32850 () Bool)

(assert (=> b!32850 (= e!16646 e!16647)))

(declare-fun res!15156 () Bool)

(assert (=> b!32850 (=> (not res!15156) (not e!16647))))

(assert (=> b!32850 (= res!15156 (not (isEmpty!333 (left!723 res!5582))))))

(assert (= (and d!16669 (not res!15153)) b!32850))

(assert (= (and b!32850 res!15156) b!32851))

(assert (= (and b!32851 res!15155) b!32852))

(assert (= (and b!32852 res!15154) b!32853))

(declare-fun m!35273 () Bool)

(assert (=> b!32853 m!35273))

(declare-fun m!35275 () Bool)

(assert (=> b!32851 m!35275))

(declare-fun m!35277 () Bool)

(assert (=> b!32852 m!35277))

(declare-fun m!35279 () Bool)

(assert (=> b!32850 m!35279))

(assert (=> b!32786 d!16669))

(declare-fun d!16671 () Bool)

(declare-fun lt!6210 () Int)

(assert (=> d!16671 (>= lt!6210 0)))

(declare-fun e!16650 () Int)

(assert (=> d!16671 (= lt!6210 e!16650)))

(declare-fun c!7078 () Bool)

(assert (=> d!16671 (= c!7078 (is-Nil!364 thiss!2817))))

(assert (=> d!16671 (= (size!291 thiss!2817) lt!6210)))

(declare-fun b!32858 () Bool)

(assert (=> b!32858 (= e!16650 0)))

(declare-fun b!32859 () Bool)

(assert (=> b!32859 (= e!16650 (+ 1 (size!291 (t!4383 thiss!2817))))))

(assert (= (and d!16671 c!7078) b!32858))

(assert (= (and d!16671 (not c!7078)) b!32859))

(declare-fun m!35281 () Bool)

(assert (=> b!32859 m!35281))

(assert (=> b!32800 d!16671))

(declare-fun d!16673 () Bool)

(declare-fun lt!6213 () Int)

(assert (=> d!16673 (>= lt!6213 0)))

(declare-fun e!16656 () Int)

(assert (=> d!16673 (= lt!6213 e!16656)))

(declare-fun c!7084 () Bool)

(assert (=> d!16673 (= c!7084 (is-Empty!89 xs!586))))

(assert (=> d!16673 (= (size!290 xs!586) lt!6213)))

(declare-fun b!32870 () Bool)

(declare-fun e!16655 () Int)

(assert (=> b!32870 (= e!16655 1)))

(declare-fun b!32869 () Bool)

(assert (=> b!32869 (= e!16656 e!16655)))

(declare-fun c!7083 () Bool)

(assert (=> b!32869 (= c!7083 (is-Single!78 xs!586))))

(declare-fun b!32871 () Bool)

(assert (=> b!32871 (= e!16655 (+ (size!290 (left!723 xs!586)) (size!290 (right!726 xs!586))))))

(declare-fun b!32868 () Bool)

(assert (=> b!32868 (= e!16656 0)))

(assert (= (and b!32869 c!7083) b!32870))

(assert (= (and b!32869 (not c!7083)) b!32871))

(assert (= (and d!16673 c!7084) b!32868))

(assert (= (and d!16673 (not c!7084)) b!32869))

(assert (=> b!32871 m!35215))

(declare-fun m!35283 () Bool)

(assert (=> b!32871 m!35283))

(assert (=> b!32783 d!16673))

(declare-fun d!16675 () Bool)

(declare-fun lt!6214 () Int)

(assert (=> d!16675 (>= lt!6214 0)))

(declare-fun e!16658 () Int)

(assert (=> d!16675 (= lt!6214 e!16658)))

(declare-fun c!7086 () Bool)

(assert (=> d!16675 (= c!7086 (is-Empty!89 (left!723 xs!586)))))

(assert (=> d!16675 (= (size!290 (left!723 xs!586)) lt!6214)))

(declare-fun b!32874 () Bool)

(declare-fun e!16657 () Int)

(assert (=> b!32874 (= e!16657 1)))

(declare-fun b!32873 () Bool)

(assert (=> b!32873 (= e!16658 e!16657)))

(declare-fun c!7085 () Bool)

(assert (=> b!32873 (= c!7085 (is-Single!78 (left!723 xs!586)))))

(declare-fun b!32875 () Bool)

(assert (=> b!32875 (= e!16657 (+ (size!290 (left!723 (left!723 xs!586))) (size!290 (right!726 (left!723 xs!586)))))))

(declare-fun b!32872 () Bool)

(assert (=> b!32872 (= e!16658 0)))

(assert (= (and b!32873 c!7085) b!32874))

(assert (= (and b!32873 (not c!7085)) b!32875))

(assert (= (and d!16675 c!7086) b!32872))

(assert (= (and d!16675 (not c!7086)) b!32873))

(declare-fun m!35285 () Bool)

(assert (=> b!32875 m!35285))

(declare-fun m!35287 () Bool)

(assert (=> b!32875 m!35287))

(assert (=> b!32799 d!16675))

(declare-fun d!16677 () Bool)

(declare-fun e!16664 () Bool)

(assert (=> d!16677 e!16664))

(declare-fun res!15162 () Bool)

(assert (=> d!16677 (=> res!15162 e!16664)))

(assert (=> d!16677 (= res!15162 (not (is-CC!78 xs!586)))))

(declare-fun e!16663 () Bool)

(assert (=> d!16677 e!16663))

(declare-fun res!15161 () Bool)

(assert (=> d!16677 (=> (not res!15161) (not e!16663))))

(assert (=> d!16677 (= res!15161 (>= i!263 0))))

(assert (=> d!16677 (= (instAppendUpdateAxiom!5 xs!586 i!263 y!785) true)))

(declare-fun b!32880 () Bool)

(assert (=> b!32880 (= e!16663 (< i!263 (size!290 xs!586)))))

(declare-fun b!32881 () Bool)

(declare-fun appendUpdate!4 (List!369 List!369 Int T!1859) Bool)

(assert (=> b!32881 (= e!16664 (appendUpdate!4 (toList!124 (left!723 xs!586)) (toList!124 (right!726 xs!586)) i!263 y!785))))

(assert (= (and d!16677 res!15161) b!32880))

(assert (= (and d!16677 (not res!15162)) b!32881))

(assert (=> b!32880 m!35217))

(assert (=> b!32881 m!35265))

(assert (=> b!32881 m!35267))

(assert (=> b!32881 m!35265))

(assert (=> b!32881 m!35267))

(declare-fun m!35289 () Bool)

(assert (=> b!32881 m!35289))

(assert (=> b!32782 d!16677))

(declare-fun b!32906 () Bool)

(declare-fun e!16679 () Conc!79)

(declare-fun e!16678 () Conc!79)

(assert (=> b!32906 (= e!16679 e!16678)))

(declare-fun c!7091 () Bool)

(assert (=> b!32906 (= c!7091 (< (- i!263 (size!290 (left!723 xs!586))) (size!290 (left!723 (right!726 xs!586)))))))

(declare-fun b!32907 () Bool)

(assert (=> b!32907 (= e!16678 (CC!78 (left!723 (right!726 xs!586)) (update!10 (right!726 (right!726 xs!586)) (- (- i!263 (size!290 (left!723 xs!586))) (size!290 (left!723 (right!726 xs!586)))) y!785)))))

(declare-fun b!32908 () Bool)

(assert (=> b!32908 (= e!16679 (Single!78 y!785))))

(declare-fun b!32909 () Bool)

(declare-fun res!15182 () Bool)

(declare-fun e!16677 () Bool)

(assert (=> b!32909 (=> (not res!15182) (not e!16677))))

(declare-fun lt!6217 () Conc!79)

(assert (=> b!32909 (= res!15182 (= (level!62 lt!6217) (level!62 (right!726 xs!586))))))

(declare-fun b!32910 () Bool)

(declare-fun updated!7 (List!369 Int T!1859) List!369)

(assert (=> b!32910 (= e!16677 (= (toList!124 lt!6217) (updated!7 (toList!124 (right!726 xs!586)) (- i!263 (size!290 (left!723 xs!586))) y!785)))))

(declare-fun b!32911 () Bool)

(declare-fun res!15186 () Bool)

(declare-fun e!16675 () Bool)

(assert (=> b!32911 (=> (not res!15186) (not e!16675))))

(assert (=> b!32911 (= res!15186 (>= (- i!263 (size!290 (left!723 xs!586))) 0))))

(declare-fun b!32912 () Bool)

(declare-fun e!16676 () Bool)

(assert (=> b!32912 (= e!16676 (balanced!72 (right!726 xs!586)))))

(declare-fun b!32913 () Bool)

(declare-fun res!15184 () Bool)

(assert (=> b!32913 (=> (not res!15184) (not e!16677))))

(assert (=> b!32913 (= res!15184 (concInv!71 lt!6217))))

(declare-fun b!32914 () Bool)

(declare-fun res!15181 () Bool)

(assert (=> b!32914 (=> (not res!15181) (not e!16675))))

(assert (=> b!32914 (= res!15181 (not (isEmpty!333 (right!726 xs!586))))))

(declare-fun b!32915 () Bool)

(declare-fun res!15185 () Bool)

(assert (=> b!32915 (=> (not res!15185) (not e!16677))))

(assert (=> b!32915 (= res!15185 (balanced!72 lt!6217))))

(declare-fun b!32916 () Bool)

(assert (=> b!32916 (= e!16678 (CC!78 (update!10 (left!723 (right!726 xs!586)) (- i!263 (size!290 (left!723 xs!586))) y!785) (right!726 (right!726 xs!586))))))

(declare-fun d!16679 () Bool)

(assert (=> d!16679 e!16677))

(declare-fun res!15187 () Bool)

(assert (=> d!16679 (=> (not res!15187) (not e!16677))))

(assert (=> d!16679 (= res!15187 (instAppendUpdateAxiom!5 (right!726 xs!586) (- i!263 (size!290 (left!723 xs!586))) y!785))))

(assert (=> d!16679 (= lt!6217 e!16679)))

(declare-fun c!7092 () Bool)

(assert (=> d!16679 (= c!7092 (is-Single!78 (right!726 xs!586)))))

(assert (=> d!16679 e!16675))

(declare-fun res!15183 () Bool)

(assert (=> d!16679 (=> (not res!15183) (not e!16675))))

(assert (=> d!16679 (= res!15183 e!16676)))

(declare-fun res!15180 () Bool)

(assert (=> d!16679 (=> (not res!15180) (not e!16676))))

(assert (=> d!16679 (= res!15180 (concInv!71 (right!726 xs!586)))))

(assert (=> d!16679 (= (update!10 (right!726 xs!586) (- i!263 (size!290 (left!723 xs!586))) y!785) lt!6217)))

(declare-fun b!32917 () Bool)

(assert (=> b!32917 (= e!16675 (< (- i!263 (size!290 (left!723 xs!586))) (size!290 (right!726 xs!586))))))

(assert (= (and d!16679 res!15180) b!32912))

(assert (= (and d!16679 res!15183) b!32914))

(assert (= (and b!32914 res!15181) b!32911))

(assert (= (and b!32911 res!15186) b!32917))

(assert (= (and b!32906 c!7091) b!32916))

(assert (= (and b!32906 (not c!7091)) b!32907))

(assert (= (and d!16679 c!7092) b!32908))

(assert (= (and d!16679 (not c!7092)) b!32906))

(assert (= (and d!16679 res!15187) b!32909))

(assert (= (and b!32909 res!15182) b!32913))

(assert (= (and b!32913 res!15184) b!32915))

(assert (= (and b!32915 res!15185) b!32910))

(assert (=> b!32914 m!35243))

(assert (=> b!32912 m!35261))

(assert (=> b!32917 m!35283))

(declare-fun m!35291 () Bool)

(assert (=> b!32909 m!35291))

(assert (=> b!32909 m!35253))

(declare-fun m!35293 () Bool)

(assert (=> b!32915 m!35293))

(declare-fun m!35295 () Bool)

(assert (=> d!16679 m!35295))

(assert (=> d!16679 m!35241))

(declare-fun m!35297 () Bool)

(assert (=> b!32906 m!35297))

(declare-fun m!35299 () Bool)

(assert (=> b!32910 m!35299))

(assert (=> b!32910 m!35267))

(assert (=> b!32910 m!35267))

(declare-fun m!35301 () Bool)

(assert (=> b!32910 m!35301))

(declare-fun m!35303 () Bool)

(assert (=> b!32913 m!35303))

(assert (=> b!32907 m!35297))

(declare-fun m!35305 () Bool)

(assert (=> b!32907 m!35305))

(declare-fun m!35307 () Bool)

(assert (=> b!32916 m!35307))

(assert (=> b!32791 d!16679))

(assert (=> b!32791 d!16675))

(declare-fun b!32922 () Bool)

(declare-fun e!16682 () Bool)

(declare-fun tp!6821 () Bool)

(assert (=> b!32922 (= e!16682 (and tp_is_empty!203 tp!6821))))

(assert (=> b!32792 (= tp!6816 e!16682)))

(assert (= (and b!32792 (is-Cons!363 (t!4383 thiss!2817))) b!32922))

(declare-fun b!32929 () Bool)

(declare-fun e!16685 () Bool)

(declare-fun tp!6826 () Bool)

(declare-fun tp!6827 () Bool)

(assert (=> b!32929 (= e!16685 (and tp!6826 tp!6827))))

(declare-fun b!32930 () Bool)

(assert (=> b!32930 (= e!16685 tp_is_empty!203)))

(assert (=> b!32801 (= tp!6818 e!16685)))

(assert (= (and b!32801 (is-CC!78 (left!723 xs!586))) b!32929))

(assert (= (and b!32801 (is-Single!78 (left!723 xs!586))) b!32930))

(declare-fun b!32931 () Bool)

(declare-fun e!16686 () Bool)

(declare-fun tp!6828 () Bool)

(declare-fun tp!6829 () Bool)

(assert (=> b!32931 (= e!16686 (and tp!6828 tp!6829))))

(declare-fun b!32932 () Bool)

(assert (=> b!32932 (= e!16686 tp_is_empty!203)))

(assert (=> b!32801 (= tp!6814 e!16686)))

(assert (= (and b!32801 (is-CC!78 (right!726 xs!586))) b!32931))

(assert (= (and b!32801 (is-Single!78 (right!726 xs!586))) b!32932))

(declare-fun b!32933 () Bool)

(declare-fun e!16687 () Bool)

(declare-fun tp!6830 () Bool)

(declare-fun tp!6831 () Bool)

(assert (=> b!32933 (= e!16687 (and tp!6830 tp!6831))))

(declare-fun b!32934 () Bool)

(assert (=> b!32934 (= e!16687 tp_is_empty!203)))

(assert (=> b!32785 (= tp!6817 e!16687)))

(assert (= (and b!32785 (is-CC!78 (left!723 res!5582))) b!32933))

(assert (= (and b!32785 (is-Single!78 (left!723 res!5582))) b!32934))

(declare-fun b!32935 () Bool)

(declare-fun e!16688 () Bool)

(declare-fun tp!6832 () Bool)

(declare-fun tp!6833 () Bool)

(assert (=> b!32935 (= e!16688 (and tp!6832 tp!6833))))

(declare-fun b!32936 () Bool)

(assert (=> b!32936 (= e!16688 tp_is_empty!203)))

(assert (=> b!32785 (= tp!6815 e!16688)))

(assert (= (and b!32785 (is-CC!78 (right!726 res!5582))) b!32935))

(assert (= (and b!32785 (is-Single!78 (right!726 res!5582))) b!32936))

(push 1)

(assert (not b!32851))

(assert (not b!32929))

(assert (not b!32914))

(assert (not b!32935))

(assert (not b!32813))

(assert (not b!32912))

(assert (not b!32837))

(assert (not b!32853))

(assert (not b!32821))

(assert (not b!32907))

(assert (not b!32915))

(assert (not b!32811))

(assert (not b!32831))

(assert (not b!32881))

(assert (not b!32871))

(assert tp_is_empty!203)

(assert (not b!32850))

(assert (not b!32910))

(assert (not b!32833))

(assert (not b!32906))

(assert (not b!32830))

(assert (not b!32836))

(assert (not b!32909))

(assert (not b!32922))

(assert (not b!32931))

(assert (not b!32916))

(assert (not b!32834))

(assert (not b!32849))

(assert (not b!32810))

(assert (not b!32917))

(assert (not b!32819))

(assert (not d!16679))

(assert (not b!32875))

(assert (not b!32859))

(assert (not b!32933))

(assert (not b!32812))

(assert (not b!32835))

(assert (not b!32913))

(assert (not d!16667))

(assert (not b!32832))

(assert (not b!32880))

(assert (not b!32852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

