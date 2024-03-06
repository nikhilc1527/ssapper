; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3130 () Bool)

(assert start!3130)

(declare-fun b!16182 () Bool)

(declare-fun e!8820 () Bool)

(declare-fun tp!3880 () Bool)

(declare-fun tp!3885 () Bool)

(assert (=> b!16182 (= e!8820 (and tp!3880 tp!3885))))

(declare-fun b!16183 () Bool)

(declare-fun res!6579 () Bool)

(declare-fun e!8816 () Bool)

(assert (=> b!16183 (=> (not res!6579) (not e!8816))))

(declare-fun n!315 () Int)

(declare-datatypes () ((T!1713 (T!1714 (val!29 Int)))))

(declare-datatypes () ((Conc!11 (CC!10 (left!655 Conc!11) (right!658 Conc!11)) (Single!10 (x!8708 T!1713)) (Empty!21))))

(declare-fun xs!637 () Conc!11)

(declare-fun size!192 (Conc!11) Int)

(assert (=> b!16183 (= res!6579 (< n!315 (size!192 (left!655 xs!637))))))

(declare-fun b!16184 () Bool)

(declare-fun tp_is_empty!57 () Bool)

(assert (=> b!16184 (= e!8820 tp_is_empty!57)))

(declare-fun b!16185 () Bool)

(declare-fun res!6577 () Bool)

(assert (=> b!16185 (=> (not res!6577) (not e!8816))))

(declare-fun lr!32 () Conc!11)

(declare-datatypes () ((tuple2!106 (tuple2!107 (_1!53 Conc!11) (_2!53 Conc!11)))))

(declare-fun res!5662 () tuple2!106)

(declare-fun ll!30 () Conc!11)

(declare-fun concatNormalized!5 (Conc!11 Conc!11) Conc!11)

(assert (=> b!16185 (= res!6577 (= res!5662 (tuple2!107 ll!30 (concatNormalized!5 lr!32 (right!658 xs!637)))))))

(declare-fun b!16186 () Bool)

(declare-fun res!6576 () Bool)

(assert (=> b!16186 (=> (not res!6576) (not e!8816))))

(declare-fun balanced!11 (Conc!11) Bool)

(assert (=> b!16186 (= res!6576 (balanced!11 xs!637))))

(declare-fun b!16187 () Bool)

(declare-fun res!6580 () Bool)

(assert (=> b!16187 (=> (not res!6580) (not e!8816))))

(declare-fun x$3!88 () tuple2!106)

(assert (=> b!16187 (= res!6580 (and (= ll!30 (_1!53 x$3!88)) (= lr!32 (_2!53 x$3!88))))))

(declare-fun b!16188 () Bool)

(declare-fun e!8817 () Bool)

(declare-fun tp!3877 () Bool)

(declare-fun tp!3879 () Bool)

(assert (=> b!16188 (= e!8817 (and tp!3877 tp!3879))))

(declare-fun b!16189 () Bool)

(declare-fun res!6573 () Bool)

(declare-fun e!8814 () Bool)

(assert (=> b!16189 (=> res!6573 e!8814)))

(declare-fun instSplitAxiom!8 (Conc!11 Int) Bool)

(assert (=> b!16189 (= res!6573 (not (instSplitAxiom!8 xs!637 n!315)))))

(declare-fun b!16190 () Bool)

(declare-fun e!8818 () Bool)

(declare-fun tp!3873 () Bool)

(declare-fun tp!3884 () Bool)

(assert (=> b!16190 (= e!8818 (and tp!3873 tp!3884))))

(declare-fun b!16191 () Bool)

(declare-fun res!6569 () Bool)

(assert (=> b!16191 (=> (not res!6569) (not e!8816))))

(assert (=> b!16191 (= res!6569 (and (not (is-Empty!21 xs!637)) (not (is-Single!10 xs!637))))))

(declare-fun b!16192 () Bool)

(declare-fun e!8819 () Bool)

(assert (=> b!16192 (= e!8819 tp_is_empty!57)))

(declare-fun b!16193 () Bool)

(declare-fun res!6572 () Bool)

(assert (=> b!16193 (=> res!6572 e!8814)))

(declare-fun level!10 (Conc!11) Int)

(assert (=> b!16193 (= res!6572 (< (level!10 xs!637) (level!10 (_1!53 res!5662))))))

(declare-fun res!6574 () Bool)

(assert (=> start!3130 (=> (not res!6574) (not e!8816))))

(declare-fun concInv!10 (Conc!11) Bool)

(assert (=> start!3130 (= res!6574 (concInv!10 xs!637))))

(assert (=> start!3130 e!8816))

(assert (=> start!3130 (and e!8819 e!8820)))

(assert (=> start!3130 e!8817))

(assert (=> start!3130 true))

(assert (=> start!3130 e!8818))

(declare-fun e!8821 () Bool)

(declare-fun e!8815 () Bool)

(assert (=> start!3130 (and e!8821 e!8815)))

(declare-fun e!8813 () Bool)

(assert (=> start!3130 e!8813))

(declare-fun b!16194 () Bool)

(declare-fun tp!3881 () Bool)

(declare-fun tp!3874 () Bool)

(assert (=> b!16194 (= e!8821 (and tp!3881 tp!3874))))

(declare-fun b!16195 () Bool)

(assert (=> b!16195 (= e!8818 tp_is_empty!57)))

(declare-fun b!16196 () Bool)

(assert (=> b!16196 (= e!8821 tp_is_empty!57)))

(declare-fun b!16197 () Bool)

(declare-fun res!6571 () Bool)

(assert (=> b!16197 (=> res!6571 e!8814)))

(assert (=> b!16197 (= res!6571 (< (level!10 xs!637) (level!10 (_2!53 res!5662))))))

(declare-fun b!16198 () Bool)

(declare-fun tp!3876 () Bool)

(declare-fun tp!3878 () Bool)

(assert (=> b!16198 (= e!8815 (and tp!3876 tp!3878))))

(declare-fun b!16199 () Bool)

(declare-fun tp!3883 () Bool)

(declare-fun tp!3886 () Bool)

(assert (=> b!16199 (= e!8819 (and tp!3883 tp!3886))))

(declare-fun b!16200 () Bool)

(declare-fun res!6570 () Bool)

(assert (=> b!16200 (=> (not res!6570) (not e!8816))))

(declare-fun split!10 (Conc!11 Int) tuple2!106)

(assert (=> b!16200 (= res!6570 (= x$3!88 (split!10 (left!655 xs!637) n!315)))))

(declare-fun b!16201 () Bool)

(assert (=> b!16201 (= e!8816 e!8814)))

(declare-fun res!6568 () Bool)

(assert (=> b!16201 (=> res!6568 e!8814)))

(assert (=> b!16201 (= res!6568 (not (concInv!10 (_1!53 res!5662))))))

(declare-fun b!16202 () Bool)

(assert (=> b!16202 (= e!8815 tp_is_empty!57)))

(declare-fun b!16203 () Bool)

(declare-fun splitCorrectness!6 (tuple2!106 Conc!11 Int) Bool)

(assert (=> b!16203 (= e!8814 (not (splitCorrectness!6 res!5662 xs!637 n!315)))))

(declare-fun b!16204 () Bool)

(declare-fun res!6581 () Bool)

(assert (=> b!16204 (=> res!6581 e!8814)))

(assert (=> b!16204 (= res!6581 (not (balanced!11 (_2!53 res!5662))))))

(declare-fun b!16205 () Bool)

(assert (=> b!16205 (= e!8817 tp_is_empty!57)))

(declare-fun b!16206 () Bool)

(declare-fun tp!3882 () Bool)

(declare-fun tp!3875 () Bool)

(assert (=> b!16206 (= e!8813 (and tp!3882 tp!3875))))

(declare-fun b!16207 () Bool)

(declare-fun res!6575 () Bool)

(assert (=> b!16207 (=> res!6575 e!8814)))

(assert (=> b!16207 (= res!6575 (not (concInv!10 (_2!53 res!5662))))))

(declare-fun b!16208 () Bool)

(assert (=> b!16208 (= e!8813 tp_is_empty!57)))

(declare-fun b!16209 () Bool)

(declare-fun res!6578 () Bool)

(assert (=> b!16209 (=> res!6578 e!8814)))

(assert (=> b!16209 (= res!6578 (not (balanced!11 (_1!53 res!5662))))))

(assert (= (and start!3130 res!6574) b!16186))

(assert (= (and b!16186 res!6576) b!16191))

(assert (= (and b!16191 res!6569) b!16183))

(assert (= (and b!16183 res!6579) b!16200))

(assert (= (and b!16200 res!6570) b!16187))

(assert (= (and b!16187 res!6580) b!16185))

(assert (= (and b!16185 res!6577) b!16201))

(assert (= (and b!16201 (not res!6568)) b!16209))

(assert (= (and b!16209 (not res!6578)) b!16207))

(assert (= (and b!16207 (not res!6575)) b!16204))

(assert (= (and b!16204 (not res!6581)) b!16193))

(assert (= (and b!16193 (not res!6572)) b!16197))

(assert (= (and b!16197 (not res!6571)) b!16189))

(assert (= (and b!16189 (not res!6573)) b!16203))

(assert (= (and start!3130 (is-CC!10 (_1!53 x$3!88))) b!16199))

(assert (= (and start!3130 (is-Single!10 (_1!53 x$3!88))) b!16192))

(assert (= (and start!3130 (is-CC!10 (_2!53 x$3!88))) b!16182))

(assert (= (and start!3130 (is-Single!10 (_2!53 x$3!88))) b!16184))

(assert (= (and start!3130 (is-CC!10 xs!637)) b!16188))

(assert (= (and start!3130 (is-Single!10 xs!637)) b!16205))

(assert (= (and start!3130 (is-CC!10 lr!32)) b!16190))

(assert (= (and start!3130 (is-Single!10 lr!32)) b!16195))

(assert (= (and start!3130 (is-CC!10 (_1!53 res!5662))) b!16194))

(assert (= (and start!3130 (is-Single!10 (_1!53 res!5662))) b!16196))

(assert (= (and start!3130 (is-CC!10 (_2!53 res!5662))) b!16198))

(assert (= (and start!3130 (is-Single!10 (_2!53 res!5662))) b!16202))

(assert (= (and start!3130 (is-CC!10 ll!30)) b!16206))

(assert (= (and start!3130 (is-Single!10 ll!30)) b!16208))

(declare-fun m!19641 () Bool)

(assert (=> b!16193 m!19641))

(declare-fun m!19643 () Bool)

(assert (=> b!16193 m!19643))

(declare-fun m!19645 () Bool)

(assert (=> b!16183 m!19645))

(declare-fun m!19647 () Bool)

(assert (=> start!3130 m!19647))

(declare-fun m!19649 () Bool)

(assert (=> b!16185 m!19649))

(declare-fun m!19651 () Bool)

(assert (=> b!16209 m!19651))

(declare-fun m!19653 () Bool)

(assert (=> b!16207 m!19653))

(declare-fun m!19655 () Bool)

(assert (=> b!16203 m!19655))

(declare-fun m!19657 () Bool)

(assert (=> b!16204 m!19657))

(declare-fun m!19659 () Bool)

(assert (=> b!16186 m!19659))

(assert (=> b!16197 m!19641))

(declare-fun m!19661 () Bool)

(assert (=> b!16197 m!19661))

(declare-fun m!19663 () Bool)

(assert (=> b!16201 m!19663))

(declare-fun m!19665 () Bool)

(assert (=> b!16189 m!19665))

(declare-fun m!19667 () Bool)

(assert (=> b!16200 m!19667))

(push 1)

(assert (not b!16186))

(assert (not b!16204))

(assert (not b!16203))

(assert (not b!16194))

(assert (not b!16201))

(assert (not b!16209))

(assert (not b!16183))

(assert tp_is_empty!57)

(assert (not b!16188))

(assert (not b!16185))

(assert (not b!16190))

(assert (not b!16199))

(assert (not b!16182))

(assert (not start!3130))

(assert (not b!16207))

(assert (not b!16189))

(assert (not b!16206))

(assert (not b!16200))

(assert (not b!16197))

(assert (not b!16193))

(assert (not b!16198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!16219 () Bool)

(declare-fun res!6591 () Bool)

(declare-fun e!8826 () Bool)

(assert (=> b!16219 (=> (not res!6591) (not e!8826))))

(assert (=> b!16219 (= res!6591 (<= (- (level!10 (left!655 (_2!53 res!5662))) (level!10 (right!658 (_2!53 res!5662)))) 1))))

(declare-fun b!16221 () Bool)

(assert (=> b!16221 (= e!8826 (balanced!11 (right!658 (_2!53 res!5662))))))

(declare-fun d!11759 () Bool)

(declare-fun res!6590 () Bool)

(declare-fun e!8827 () Bool)

(assert (=> d!11759 (=> res!6590 e!8827)))

(assert (=> d!11759 (= res!6590 (not (is-CC!10 (_2!53 res!5662))))))

(assert (=> d!11759 (= (balanced!11 (_2!53 res!5662)) e!8827)))

(declare-fun b!16220 () Bool)

(declare-fun res!6592 () Bool)

(assert (=> b!16220 (=> (not res!6592) (not e!8826))))

(assert (=> b!16220 (= res!6592 (balanced!11 (left!655 (_2!53 res!5662))))))

(declare-fun b!16218 () Bool)

(assert (=> b!16218 (= e!8827 e!8826)))

(declare-fun res!6593 () Bool)

(assert (=> b!16218 (=> (not res!6593) (not e!8826))))

(assert (=> b!16218 (= res!6593 (>= (- (level!10 (left!655 (_2!53 res!5662))) (level!10 (right!658 (_2!53 res!5662)))) (- 1)))))

(assert (= (and d!11759 (not res!6590)) b!16218))

(assert (= (and b!16218 res!6593) b!16219))

(assert (= (and b!16219 res!6591) b!16220))

(assert (= (and b!16220 res!6592) b!16221))

(declare-fun m!19669 () Bool)

(assert (=> b!16219 m!19669))

(declare-fun m!19671 () Bool)

(assert (=> b!16219 m!19671))

(declare-fun m!19673 () Bool)

(assert (=> b!16221 m!19673))

(declare-fun m!19675 () Bool)

(assert (=> b!16220 m!19675))

(assert (=> b!16218 m!19669))

(assert (=> b!16218 m!19671))

(assert (=> b!16204 d!11759))

(declare-fun b!16223 () Bool)

(declare-fun res!6595 () Bool)

(declare-fun e!8828 () Bool)

(assert (=> b!16223 (=> (not res!6595) (not e!8828))))

(assert (=> b!16223 (= res!6595 (<= (- (level!10 (left!655 xs!637)) (level!10 (right!658 xs!637))) 1))))

(declare-fun b!16225 () Bool)

(assert (=> b!16225 (= e!8828 (balanced!11 (right!658 xs!637)))))

(declare-fun d!11761 () Bool)

(declare-fun res!6594 () Bool)

(declare-fun e!8829 () Bool)

(assert (=> d!11761 (=> res!6594 e!8829)))

(assert (=> d!11761 (= res!6594 (not (is-CC!10 xs!637)))))

(assert (=> d!11761 (= (balanced!11 xs!637) e!8829)))

(declare-fun b!16224 () Bool)

(declare-fun res!6596 () Bool)

(assert (=> b!16224 (=> (not res!6596) (not e!8828))))

(assert (=> b!16224 (= res!6596 (balanced!11 (left!655 xs!637)))))

(declare-fun b!16222 () Bool)

(assert (=> b!16222 (= e!8829 e!8828)))

(declare-fun res!6597 () Bool)

(assert (=> b!16222 (=> (not res!6597) (not e!8828))))

(assert (=> b!16222 (= res!6597 (>= (- (level!10 (left!655 xs!637)) (level!10 (right!658 xs!637))) (- 1)))))

(assert (= (and d!11761 (not res!6594)) b!16222))

(assert (= (and b!16222 res!6597) b!16223))

(assert (= (and b!16223 res!6595) b!16224))

(assert (= (and b!16224 res!6596) b!16225))

(declare-fun m!19677 () Bool)

(assert (=> b!16223 m!19677))

(declare-fun m!19679 () Bool)

(assert (=> b!16223 m!19679))

(declare-fun m!19681 () Bool)

(assert (=> b!16225 m!19681))

(declare-fun m!19683 () Bool)

(assert (=> b!16224 m!19683))

(assert (=> b!16222 m!19677))

(assert (=> b!16222 m!19679))

(assert (=> b!16186 d!11761))

(declare-fun b!16248 () Bool)

(declare-fun e!8842 () Conc!11)

(assert (=> b!16248 (= e!8842 (right!658 xs!637))))

(declare-fun b!16249 () Bool)

(declare-fun e!8847 () Bool)

(declare-fun lt!2337 () Conc!11)

(assert (=> b!16249 (= e!8847 (balanced!11 lt!2337))))

(declare-fun b!16250 () Bool)

(declare-fun e!8845 () Conc!11)

(assert (=> b!16250 (= e!8845 lr!32)))

(declare-fun b!16251 () Bool)

(declare-fun res!6613 () Bool)

(declare-fun e!8844 () Bool)

(assert (=> b!16251 (=> (not res!6613) (not e!8844))))

(declare-fun lt!2341 () Int)

(declare-fun lt!2335 () Int)

(declare-fun lt!2336 () Int)

(assert (=> b!16251 (= res!6613 (>= lt!2341 (ite (>= lt!2335 lt!2336) lt!2335 lt!2336)))))

(assert (=> b!16251 (= lt!2336 (level!10 (right!658 xs!637)))))

(assert (=> b!16251 (= lt!2335 (level!10 lr!32))))

(assert (=> b!16251 (= lt!2341 (level!10 lt!2337))))

(declare-fun b!16252 () Bool)

(assert (=> b!16252 (= e!8845 e!8842)))

(declare-fun c!4257 () Bool)

(assert (=> b!16252 (= c!4257 (is-Empty!21 lr!32))))

(declare-fun b!16253 () Bool)

(declare-fun concatNonEmpty!3 (Conc!11 Conc!11) Conc!11)

(assert (=> b!16253 (= e!8842 (concatNonEmpty!3 lr!32 (right!658 xs!637)))))

(declare-fun b!16254 () Bool)

(declare-fun res!6618 () Bool)

(assert (=> b!16254 (=> (not res!6618) (not e!8844))))

(declare-fun lt!2338 () Int)

(declare-fun lt!2339 () Int)

(declare-fun lt!2340 () Int)

(assert (=> b!16254 (= res!6618 (<= lt!2338 (+ (ite (>= lt!2340 lt!2339) lt!2340 lt!2339) 1)))))

(assert (=> b!16254 (= lt!2339 (level!10 (right!658 xs!637)))))

(assert (=> b!16254 (= lt!2340 (level!10 lr!32))))

(assert (=> b!16254 (= lt!2338 (level!10 lt!2337))))

(declare-fun b!16255 () Bool)

(declare-fun e!8843 () Bool)

(assert (=> b!16255 (= e!8843 (balanced!11 (right!658 xs!637)))))

(declare-fun b!16256 () Bool)

(declare-fun res!6615 () Bool)

(assert (=> b!16256 (=> (not res!6615) (not e!8843))))

(assert (=> b!16256 (= res!6615 (concInv!10 (right!658 xs!637)))))

(declare-fun d!11763 () Bool)

(assert (=> d!11763 e!8844))

(declare-fun res!6616 () Bool)

(assert (=> d!11763 (=> (not res!6616) (not e!8844))))

(assert (=> d!11763 (= res!6616 e!8847)))

(declare-fun res!6619 () Bool)

(assert (=> d!11763 (=> (not res!6619) (not e!8847))))

(assert (=> d!11763 (= res!6619 (concInv!10 lt!2337))))

(assert (=> d!11763 (= lt!2337 e!8845)))

(declare-fun c!4256 () Bool)

(assert (=> d!11763 (= c!4256 (is-Empty!21 (right!658 xs!637)))))

(assert (=> d!11763 e!8843))

(declare-fun res!6617 () Bool)

(assert (=> d!11763 (=> (not res!6617) (not e!8843))))

(declare-fun e!8846 () Bool)

(assert (=> d!11763 (= res!6617 e!8846)))

(declare-fun res!6614 () Bool)

(assert (=> d!11763 (=> (not res!6614) (not e!8846))))

(assert (=> d!11763 (= res!6614 (concInv!10 lr!32))))

(assert (=> d!11763 (= (concatNormalized!5 lr!32 (right!658 xs!637)) lt!2337)))

(declare-fun b!16257 () Bool)

(assert (=> b!16257 (= e!8846 (balanced!11 lr!32))))

(declare-fun b!16258 () Bool)

(declare-fun concatCorrectness!1 (Conc!11 Conc!11 Conc!11) Bool)

(assert (=> b!16258 (= e!8844 (concatCorrectness!1 lt!2337 lr!32 (right!658 xs!637)))))

(assert (= (and d!11763 res!6614) b!16257))

(assert (= (and d!11763 res!6617) b!16256))

(assert (= (and b!16256 res!6615) b!16255))

(assert (= (and b!16252 c!4257) b!16248))

(assert (= (and b!16252 (not c!4257)) b!16253))

(assert (= (and d!11763 c!4256) b!16250))

(assert (= (and d!11763 (not c!4256)) b!16252))

(assert (= (and d!11763 res!6619) b!16249))

(assert (= (and d!11763 res!6616) b!16254))

(assert (= (and b!16254 res!6618) b!16251))

(assert (= (and b!16251 res!6613) b!16258))

(declare-fun m!19685 () Bool)

(assert (=> b!16256 m!19685))

(declare-fun m!19687 () Bool)

(assert (=> b!16258 m!19687))

(assert (=> b!16251 m!19679))

(declare-fun m!19689 () Bool)

(assert (=> b!16251 m!19689))

(declare-fun m!19691 () Bool)

(assert (=> b!16251 m!19691))

(declare-fun m!19693 () Bool)

(assert (=> d!11763 m!19693))

(declare-fun m!19695 () Bool)

(assert (=> d!11763 m!19695))

(assert (=> b!16255 m!19681))

(declare-fun m!19697 () Bool)

(assert (=> b!16257 m!19697))

(declare-fun m!19699 () Bool)

(assert (=> b!16249 m!19699))

(assert (=> b!16254 m!19679))

(assert (=> b!16254 m!19689))

(assert (=> b!16254 m!19691))

(declare-fun m!19701 () Bool)

(assert (=> b!16253 m!19701))

(assert (=> b!16185 d!11763))

(declare-fun b!16270 () Bool)

(declare-fun e!8852 () Int)

(assert (=> b!16270 (= e!8852 (+ (size!192 (left!655 (left!655 xs!637))) (size!192 (right!658 (left!655 xs!637)))))))

(declare-fun b!16268 () Bool)

(declare-fun e!8853 () Int)

(assert (=> b!16268 (= e!8853 e!8852)))

(declare-fun c!4262 () Bool)

(assert (=> b!16268 (= c!4262 (is-Single!10 (left!655 xs!637)))))

(declare-fun b!16267 () Bool)

(assert (=> b!16267 (= e!8853 0)))

(declare-fun d!11765 () Bool)

(declare-fun lt!2344 () Int)

(assert (=> d!11765 (>= lt!2344 0)))

(assert (=> d!11765 (= lt!2344 e!8853)))

(declare-fun c!4263 () Bool)

(assert (=> d!11765 (= c!4263 (is-Empty!21 (left!655 xs!637)))))

(assert (=> d!11765 (= (size!192 (left!655 xs!637)) lt!2344)))

(declare-fun b!16269 () Bool)

(assert (=> b!16269 (= e!8852 1)))

(assert (= (and b!16268 c!4262) b!16269))

(assert (= (and b!16268 (not c!4262)) b!16270))

(assert (= (and d!11765 c!4263) b!16267))

(assert (= (and d!11765 (not c!4263)) b!16268))

(declare-fun m!19703 () Bool)

(assert (=> b!16270 m!19703))

(declare-fun m!19705 () Bool)

(assert (=> b!16270 m!19705))

(assert (=> b!16183 d!11765))

(declare-fun b!16276 () Bool)

(declare-fun e!8856 () Int)

(declare-fun lt!2351 () Int)

(declare-fun lt!2353 () Int)

(assert (=> b!16276 (= e!8856 (+ 1 (ite (>= lt!2351 lt!2353) lt!2351 lt!2353)))))

(assert (=> b!16276 (= lt!2353 (level!10 (right!658 xs!637)))))

(assert (=> b!16276 (= lt!2351 (level!10 (left!655 xs!637)))))

(declare-fun d!11767 () Bool)

(declare-fun lt!2352 () Int)

(assert (=> d!11767 (>= lt!2352 0)))

(assert (=> d!11767 (= lt!2352 e!8856)))

(declare-fun c!4266 () Bool)

(assert (=> d!11767 (= c!4266 (or (is-Empty!21 xs!637) (is-Single!10 xs!637)))))

(assert (=> d!11767 (= (level!10 xs!637) lt!2352)))

(declare-fun b!16275 () Bool)

(assert (=> b!16275 (= e!8856 0)))

(assert (= (and d!11767 c!4266) b!16275))

(assert (= (and d!11767 (not c!4266)) b!16276))

(assert (=> b!16276 m!19679))

(assert (=> b!16276 m!19677))

(assert (=> b!16197 d!11767))

(declare-fun b!16278 () Bool)

(declare-fun e!8857 () Int)

(declare-fun lt!2354 () Int)

(declare-fun lt!2356 () Int)

(assert (=> b!16278 (= e!8857 (+ 1 (ite (>= lt!2354 lt!2356) lt!2354 lt!2356)))))

(assert (=> b!16278 (= lt!2356 (level!10 (right!658 (_2!53 res!5662))))))

(assert (=> b!16278 (= lt!2354 (level!10 (left!655 (_2!53 res!5662))))))

(declare-fun d!11769 () Bool)

(declare-fun lt!2355 () Int)

(assert (=> d!11769 (>= lt!2355 0)))

(assert (=> d!11769 (= lt!2355 e!8857)))

(declare-fun c!4267 () Bool)

(assert (=> d!11769 (= c!4267 (or (is-Empty!21 (_2!53 res!5662)) (is-Single!10 (_2!53 res!5662))))))

(assert (=> d!11769 (= (level!10 (_2!53 res!5662)) lt!2355)))

(declare-fun b!16277 () Bool)

(assert (=> b!16277 (= e!8857 0)))

(assert (= (and d!11769 c!4267) b!16277))

(assert (= (and d!11769 (not c!4267)) b!16278))

(assert (=> b!16278 m!19671))

(assert (=> b!16278 m!19669))

(assert (=> b!16197 d!11769))

(declare-fun d!11771 () Bool)

(declare-fun res!6631 () Bool)

(declare-fun e!8862 () Bool)

(assert (=> d!11771 (=> res!6631 e!8862)))

(assert (=> d!11771 (= res!6631 (not (is-CC!10 xs!637)))))

(assert (=> d!11771 (= (concInv!10 xs!637) e!8862)))

(declare-fun b!16289 () Bool)

(declare-fun res!6630 () Bool)

(declare-fun e!8863 () Bool)

(assert (=> b!16289 (=> (not res!6630) (not e!8863))))

(assert (=> b!16289 (= res!6630 (concInv!10 (left!655 xs!637)))))

(declare-fun b!16290 () Bool)

(assert (=> b!16290 (= e!8863 (concInv!10 (right!658 xs!637)))))

(declare-fun b!16287 () Bool)

(assert (=> b!16287 (= e!8862 e!8863)))

(declare-fun res!6628 () Bool)

(assert (=> b!16287 (=> (not res!6628) (not e!8863))))

(declare-fun isEmpty!275 (Conc!11) Bool)

(assert (=> b!16287 (= res!6628 (not (isEmpty!275 (left!655 xs!637))))))

(declare-fun b!16288 () Bool)

(declare-fun res!6629 () Bool)

(assert (=> b!16288 (=> (not res!6629) (not e!8863))))

(assert (=> b!16288 (= res!6629 (not (isEmpty!275 (right!658 xs!637))))))

(assert (= (and d!11771 (not res!6631)) b!16287))

(assert (= (and b!16287 res!6628) b!16288))

(assert (= (and b!16288 res!6629) b!16289))

(assert (= (and b!16289 res!6630) b!16290))

(declare-fun m!19707 () Bool)

(assert (=> b!16289 m!19707))

(assert (=> b!16290 m!19685))

(declare-fun m!19709 () Bool)

(assert (=> b!16287 m!19709))

(declare-fun m!19711 () Bool)

(assert (=> b!16288 m!19711))

(assert (=> start!3130 d!11771))

(declare-fun b!16292 () Bool)

(declare-fun res!6633 () Bool)

(declare-fun e!8864 () Bool)

(assert (=> b!16292 (=> (not res!6633) (not e!8864))))

(assert (=> b!16292 (= res!6633 (<= (- (level!10 (left!655 (_1!53 res!5662))) (level!10 (right!658 (_1!53 res!5662)))) 1))))

(declare-fun b!16294 () Bool)

(assert (=> b!16294 (= e!8864 (balanced!11 (right!658 (_1!53 res!5662))))))

(declare-fun d!11773 () Bool)

(declare-fun res!6632 () Bool)

(declare-fun e!8865 () Bool)

(assert (=> d!11773 (=> res!6632 e!8865)))

(assert (=> d!11773 (= res!6632 (not (is-CC!10 (_1!53 res!5662))))))

(assert (=> d!11773 (= (balanced!11 (_1!53 res!5662)) e!8865)))

(declare-fun b!16293 () Bool)

(declare-fun res!6634 () Bool)

(assert (=> b!16293 (=> (not res!6634) (not e!8864))))

(assert (=> b!16293 (= res!6634 (balanced!11 (left!655 (_1!53 res!5662))))))

(declare-fun b!16291 () Bool)

(assert (=> b!16291 (= e!8865 e!8864)))

(declare-fun res!6635 () Bool)

(assert (=> b!16291 (=> (not res!6635) (not e!8864))))

(assert (=> b!16291 (= res!6635 (>= (- (level!10 (left!655 (_1!53 res!5662))) (level!10 (right!658 (_1!53 res!5662)))) (- 1)))))

(assert (= (and d!11773 (not res!6632)) b!16291))

(assert (= (and b!16291 res!6635) b!16292))

(assert (= (and b!16292 res!6633) b!16293))

(assert (= (and b!16293 res!6634) b!16294))

(declare-fun m!19713 () Bool)

(assert (=> b!16292 m!19713))

(declare-fun m!19715 () Bool)

(assert (=> b!16292 m!19715))

(declare-fun m!19717 () Bool)

(assert (=> b!16294 m!19717))

(declare-fun m!19719 () Bool)

(assert (=> b!16293 m!19719))

(assert (=> b!16291 m!19713))

(assert (=> b!16291 m!19715))

(assert (=> b!16209 d!11773))

(declare-fun d!11775 () Bool)

(declare-fun res!6639 () Bool)

(declare-fun e!8866 () Bool)

(assert (=> d!11775 (=> res!6639 e!8866)))

(assert (=> d!11775 (= res!6639 (not (is-CC!10 (_2!53 res!5662))))))

(assert (=> d!11775 (= (concInv!10 (_2!53 res!5662)) e!8866)))

(declare-fun b!16297 () Bool)

(declare-fun res!6638 () Bool)

(declare-fun e!8867 () Bool)

(assert (=> b!16297 (=> (not res!6638) (not e!8867))))

(assert (=> b!16297 (= res!6638 (concInv!10 (left!655 (_2!53 res!5662))))))

(declare-fun b!16298 () Bool)

(assert (=> b!16298 (= e!8867 (concInv!10 (right!658 (_2!53 res!5662))))))

(declare-fun b!16295 () Bool)

(assert (=> b!16295 (= e!8866 e!8867)))

(declare-fun res!6636 () Bool)

(assert (=> b!16295 (=> (not res!6636) (not e!8867))))

(assert (=> b!16295 (= res!6636 (not (isEmpty!275 (left!655 (_2!53 res!5662)))))))

(declare-fun b!16296 () Bool)

(declare-fun res!6637 () Bool)

(assert (=> b!16296 (=> (not res!6637) (not e!8867))))

(assert (=> b!16296 (= res!6637 (not (isEmpty!275 (right!658 (_2!53 res!5662)))))))

(assert (= (and d!11775 (not res!6639)) b!16295))

(assert (= (and b!16295 res!6636) b!16296))

(assert (= (and b!16296 res!6637) b!16297))

(assert (= (and b!16297 res!6638) b!16298))

(declare-fun m!19721 () Bool)

(assert (=> b!16297 m!19721))

(declare-fun m!19723 () Bool)

(assert (=> b!16298 m!19723))

(declare-fun m!19725 () Bool)

(assert (=> b!16295 m!19725))

(declare-fun m!19727 () Bool)

(assert (=> b!16296 m!19727))

(assert (=> b!16207 d!11775))

(assert (=> b!16193 d!11767))

(declare-fun b!16300 () Bool)

(declare-fun e!8868 () Int)

(declare-fun lt!2357 () Int)

(declare-fun lt!2359 () Int)

(assert (=> b!16300 (= e!8868 (+ 1 (ite (>= lt!2357 lt!2359) lt!2357 lt!2359)))))

(assert (=> b!16300 (= lt!2359 (level!10 (right!658 (_1!53 res!5662))))))

(assert (=> b!16300 (= lt!2357 (level!10 (left!655 (_1!53 res!5662))))))

(declare-fun d!11777 () Bool)

(declare-fun lt!2358 () Int)

(assert (=> d!11777 (>= lt!2358 0)))

(assert (=> d!11777 (= lt!2358 e!8868)))

(declare-fun c!4268 () Bool)

(assert (=> d!11777 (= c!4268 (or (is-Empty!21 (_1!53 res!5662)) (is-Single!10 (_1!53 res!5662))))))

(assert (=> d!11777 (= (level!10 (_1!53 res!5662)) lt!2358)))

(declare-fun b!16299 () Bool)

(assert (=> b!16299 (= e!8868 0)))

(assert (= (and d!11777 c!4268) b!16299))

(assert (= (and d!11777 (not c!4268)) b!16300))

(assert (=> b!16300 m!19715))

(assert (=> b!16300 m!19713))

(assert (=> b!16193 d!11777))

(declare-fun d!11779 () Bool)

(declare-fun res!6642 () Bool)

(declare-fun e!8871 () Bool)

(assert (=> d!11779 (=> (not res!6642) (not e!8871))))

(declare-datatypes () ((List!324 (Cons!318 (h!232 T!1713) (t!4291 List!324)) (Nil!319))))

(declare-fun toList!84 (Conc!11) List!324)

(declare-fun take!9 (List!324 Int) List!324)

(assert (=> d!11779 (= res!6642 (= (toList!84 (_1!53 res!5662)) (take!9 (toList!84 xs!637) n!315)))))

(assert (=> d!11779 (= (splitCorrectness!6 res!5662 xs!637 n!315) e!8871)))

(declare-fun b!16303 () Bool)

(declare-fun drop!7 (List!324 Int) List!324)

(assert (=> b!16303 (= e!8871 (= (toList!84 (_2!53 res!5662)) (drop!7 (toList!84 xs!637) n!315)))))

(assert (= (and d!11779 res!6642) b!16303))

(declare-fun m!19729 () Bool)

(assert (=> d!11779 m!19729))

(declare-fun m!19731 () Bool)

(assert (=> d!11779 m!19731))

(assert (=> d!11779 m!19731))

(declare-fun m!19733 () Bool)

(assert (=> d!11779 m!19733))

(declare-fun m!19735 () Bool)

(assert (=> b!16303 m!19735))

(assert (=> b!16303 m!19731))

(assert (=> b!16303 m!19731))

(declare-fun m!19737 () Bool)

(assert (=> b!16303 m!19737))

(assert (=> b!16203 d!11779))

(declare-fun lt!2368 () tuple2!106)

(declare-fun e!8889 () Bool)

(declare-fun b!16336 () Bool)

(assert (=> b!16336 (= e!8889 (splitCorrectness!6 lt!2368 (left!655 xs!637) n!315))))

(declare-fun b!16337 () Bool)

(declare-fun res!6666 () Bool)

(assert (=> b!16337 (=> (not res!6666) (not e!8889))))

(assert (=> b!16337 (= res!6666 (>= (level!10 (left!655 xs!637)) (level!10 (_2!53 lt!2368))))))

(declare-fun b!16338 () Bool)

(declare-fun e!8891 () tuple2!106)

(assert (=> b!16338 (= e!8891 (ite (<= n!315 0) (tuple2!107 Empty!21 (left!655 xs!637)) (tuple2!107 (left!655 xs!637) Empty!21)))))

(declare-fun b!16339 () Bool)

(declare-fun e!8894 () Bool)

(declare-fun lt!2367 () Conc!11)

(assert (=> b!16339 (= e!8894 (balanced!11 lt!2367))))

(declare-fun b!16340 () Bool)

(declare-fun e!8892 () tuple2!106)

(declare-fun e!8888 () tuple2!106)

(assert (=> b!16340 (= e!8892 e!8888)))

(declare-fun c!4277 () Bool)

(assert (=> b!16340 (= c!4277 (> n!315 (size!192 (left!655 (left!655 xs!637)))))))

(declare-fun b!16341 () Bool)

(declare-fun e!8890 () tuple2!106)

(assert (=> b!16341 (= e!8890 e!8891)))

(declare-fun c!4280 () Bool)

(assert (=> b!16341 (= c!4280 (is-Single!10 (left!655 xs!637)))))

(declare-fun b!16342 () Bool)

(declare-fun res!6661 () Bool)

(assert (=> b!16342 (=> (not res!6661) (not e!8889))))

(assert (=> b!16342 (= res!6661 (instSplitAxiom!8 (left!655 xs!637) n!315))))

(declare-fun b!16343 () Bool)

(declare-fun e!8895 () Bool)

(declare-fun lt!2366 () Conc!11)

(assert (=> b!16343 (= e!8895 (balanced!11 lt!2366))))

(declare-fun b!16344 () Bool)

(declare-fun res!6662 () Bool)

(assert (=> b!16344 (=> (not res!6662) (not e!8889))))

(assert (=> b!16344 (= res!6662 e!8895)))

(declare-fun res!6665 () Bool)

(assert (=> b!16344 (=> (not res!6665) (not e!8895))))

(assert (=> b!16344 (= res!6665 (concInv!10 lt!2366))))

(assert (=> b!16344 (= lt!2366 (_2!53 lt!2368))))

(declare-fun b!16345 () Bool)

(assert (=> b!16345 (= e!8888 (tuple2!107 (left!655 (left!655 xs!637)) (right!658 (left!655 xs!637))))))

(declare-fun b!16346 () Bool)

(assert (=> b!16346 (= e!8890 (tuple2!107 Empty!21 Empty!21))))

(declare-fun b!16347 () Bool)

(assert (=> b!16347 (= e!8888 (tuple2!107 (concatNormalized!5 (left!655 (left!655 xs!637)) (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))) (_2!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(declare-fun b!16348 () Bool)

(declare-fun e!8893 () Bool)

(assert (=> b!16348 (= e!8893 (balanced!11 (left!655 xs!637)))))

(declare-fun b!16349 () Bool)

(assert (=> b!16349 (= e!8891 e!8892)))

(declare-fun c!4278 () Bool)

(assert (=> b!16349 (= c!4278 (< n!315 (size!192 (left!655 (left!655 xs!637)))))))

(declare-fun b!16350 () Bool)

(assert (=> b!16350 (= e!8892 (tuple2!107 (_1!53 (split!10 (left!655 (left!655 xs!637)) n!315)) (concatNormalized!5 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315)) (right!658 (left!655 xs!637)))))))

(declare-fun d!11781 () Bool)

(assert (=> d!11781 e!8889))

(declare-fun res!6660 () Bool)

(assert (=> d!11781 (=> (not res!6660) (not e!8889))))

(assert (=> d!11781 (= res!6660 e!8894)))

(declare-fun res!6663 () Bool)

(assert (=> d!11781 (=> (not res!6663) (not e!8894))))

(assert (=> d!11781 (= res!6663 (concInv!10 lt!2367))))

(assert (=> d!11781 (= lt!2367 (_1!53 lt!2368))))

(assert (=> d!11781 (= lt!2368 e!8890)))

(declare-fun c!4279 () Bool)

(assert (=> d!11781 (= c!4279 (is-Empty!21 (left!655 xs!637)))))

(assert (=> d!11781 e!8893))

(declare-fun res!6667 () Bool)

(assert (=> d!11781 (=> (not res!6667) (not e!8893))))

(assert (=> d!11781 (= res!6667 (concInv!10 (left!655 xs!637)))))

(assert (=> d!11781 (= (split!10 (left!655 xs!637) n!315) lt!2368)))

(declare-fun b!16351 () Bool)

(declare-fun res!6664 () Bool)

(assert (=> b!16351 (=> (not res!6664) (not e!8889))))

(assert (=> b!16351 (= res!6664 (>= (level!10 (left!655 xs!637)) (level!10 (_1!53 lt!2368))))))

(assert (= (and d!11781 res!6667) b!16348))

(assert (= (and b!16340 c!4277) b!16347))

(assert (= (and b!16340 (not c!4277)) b!16345))

(assert (= (and b!16349 c!4278) b!16350))

(assert (= (and b!16349 (not c!4278)) b!16340))

(assert (= (and b!16341 c!4280) b!16338))

(assert (= (and b!16341 (not c!4280)) b!16349))

(assert (= (and d!11781 c!4279) b!16346))

(assert (= (and d!11781 (not c!4279)) b!16341))

(assert (= (and d!11781 res!6663) b!16339))

(assert (= (and d!11781 res!6660) b!16344))

(assert (= (and b!16344 res!6665) b!16343))

(assert (= (and b!16344 res!6662) b!16351))

(assert (= (and b!16351 res!6664) b!16337))

(assert (= (and b!16337 res!6666) b!16342))

(assert (= (and b!16342 res!6661) b!16336))

(assert (=> b!16348 m!19683))

(declare-fun m!19739 () Bool)

(assert (=> b!16350 m!19739))

(declare-fun m!19741 () Bool)

(assert (=> b!16350 m!19741))

(declare-fun m!19743 () Bool)

(assert (=> b!16343 m!19743))

(assert (=> b!16349 m!19703))

(declare-fun m!19745 () Bool)

(assert (=> b!16339 m!19745))

(declare-fun m!19747 () Bool)

(assert (=> b!16342 m!19747))

(assert (=> b!16340 m!19703))

(assert (=> b!16351 m!19677))

(declare-fun m!19749 () Bool)

(assert (=> b!16351 m!19749))

(declare-fun m!19751 () Bool)

(assert (=> b!16344 m!19751))

(assert (=> b!16347 m!19703))

(declare-fun m!19753 () Bool)

(assert (=> b!16347 m!19753))

(declare-fun m!19755 () Bool)

(assert (=> b!16347 m!19755))

(declare-fun m!19757 () Bool)

(assert (=> b!16336 m!19757))

(declare-fun m!19759 () Bool)

(assert (=> d!11781 m!19759))

(assert (=> d!11781 m!19707))

(assert (=> b!16337 m!19677))

(declare-fun m!19761 () Bool)

(assert (=> b!16337 m!19761))

(assert (=> b!16200 d!11781))

(declare-fun d!11783 () Bool)

(declare-fun res!6671 () Bool)

(declare-fun e!8896 () Bool)

(assert (=> d!11783 (=> res!6671 e!8896)))

(assert (=> d!11783 (= res!6671 (not (is-CC!10 (_1!53 res!5662))))))

(assert (=> d!11783 (= (concInv!10 (_1!53 res!5662)) e!8896)))

(declare-fun b!16354 () Bool)

(declare-fun res!6670 () Bool)

(declare-fun e!8897 () Bool)

(assert (=> b!16354 (=> (not res!6670) (not e!8897))))

(assert (=> b!16354 (= res!6670 (concInv!10 (left!655 (_1!53 res!5662))))))

(declare-fun b!16355 () Bool)

(assert (=> b!16355 (= e!8897 (concInv!10 (right!658 (_1!53 res!5662))))))

(declare-fun b!16352 () Bool)

(assert (=> b!16352 (= e!8896 e!8897)))

(declare-fun res!6668 () Bool)

(assert (=> b!16352 (=> (not res!6668) (not e!8897))))

(assert (=> b!16352 (= res!6668 (not (isEmpty!275 (left!655 (_1!53 res!5662)))))))

(declare-fun b!16353 () Bool)

(declare-fun res!6669 () Bool)

(assert (=> b!16353 (=> (not res!6669) (not e!8897))))

(assert (=> b!16353 (= res!6669 (not (isEmpty!275 (right!658 (_1!53 res!5662)))))))

(assert (= (and d!11783 (not res!6671)) b!16352))

(assert (= (and b!16352 res!6668) b!16353))

(assert (= (and b!16353 res!6669) b!16354))

(assert (= (and b!16354 res!6670) b!16355))

(declare-fun m!19763 () Bool)

(assert (=> b!16354 m!19763))

(declare-fun m!19765 () Bool)

(assert (=> b!16355 m!19765))

(declare-fun m!19767 () Bool)

(assert (=> b!16352 m!19767))

(declare-fun m!19769 () Bool)

(assert (=> b!16353 m!19769))

(assert (=> b!16201 d!11783))

(declare-fun d!11785 () Bool)

(declare-fun e!8900 () Bool)

(assert (=> d!11785 e!8900))

(declare-fun res!6674 () Bool)

(assert (=> d!11785 (=> res!6674 e!8900)))

(assert (=> d!11785 (= res!6674 (not (is-CC!10 xs!637)))))

(assert (=> d!11785 (= (instSplitAxiom!8 xs!637 n!315) true)))

(declare-fun b!16358 () Bool)

(declare-fun appendTakeDrop!5 (List!324 List!324 Int) Bool)

(assert (=> b!16358 (= e!8900 (appendTakeDrop!5 (toList!84 (left!655 xs!637)) (toList!84 (right!658 xs!637)) n!315))))

(assert (= (and d!11785 (not res!6674)) b!16358))

(declare-fun m!19771 () Bool)

(assert (=> b!16358 m!19771))

(declare-fun m!19773 () Bool)

(assert (=> b!16358 m!19773))

(assert (=> b!16358 m!19771))

(assert (=> b!16358 m!19773))

(declare-fun m!19775 () Bool)

(assert (=> b!16358 m!19775))

(assert (=> b!16189 d!11785))

(declare-fun b!16365 () Bool)

(declare-fun e!8903 () Bool)

(declare-fun tp!3891 () Bool)

(declare-fun tp!3892 () Bool)

(assert (=> b!16365 (= e!8903 (and tp!3891 tp!3892))))

(declare-fun b!16366 () Bool)

(assert (=> b!16366 (= e!8903 tp_is_empty!57)))

(assert (=> b!16190 (= tp!3873 e!8903)))

(assert (= (and b!16190 (is-CC!10 (left!655 lr!32))) b!16365))

(assert (= (and b!16190 (is-Single!10 (left!655 lr!32))) b!16366))

(declare-fun b!16367 () Bool)

(declare-fun e!8904 () Bool)

(declare-fun tp!3893 () Bool)

(declare-fun tp!3894 () Bool)

(assert (=> b!16367 (= e!8904 (and tp!3893 tp!3894))))

(declare-fun b!16368 () Bool)

(assert (=> b!16368 (= e!8904 tp_is_empty!57)))

(assert (=> b!16190 (= tp!3884 e!8904)))

(assert (= (and b!16190 (is-CC!10 (right!658 lr!32))) b!16367))

(assert (= (and b!16190 (is-Single!10 (right!658 lr!32))) b!16368))

(declare-fun b!16369 () Bool)

(declare-fun e!8905 () Bool)

(declare-fun tp!3895 () Bool)

(declare-fun tp!3896 () Bool)

(assert (=> b!16369 (= e!8905 (and tp!3895 tp!3896))))

(declare-fun b!16370 () Bool)

(assert (=> b!16370 (= e!8905 tp_is_empty!57)))

(assert (=> b!16198 (= tp!3876 e!8905)))

(assert (= (and b!16198 (is-CC!10 (left!655 (_2!53 res!5662)))) b!16369))

(assert (= (and b!16198 (is-Single!10 (left!655 (_2!53 res!5662)))) b!16370))

(declare-fun b!16371 () Bool)

(declare-fun e!8906 () Bool)

(declare-fun tp!3897 () Bool)

(declare-fun tp!3898 () Bool)

(assert (=> b!16371 (= e!8906 (and tp!3897 tp!3898))))

(declare-fun b!16372 () Bool)

(assert (=> b!16372 (= e!8906 tp_is_empty!57)))

(assert (=> b!16198 (= tp!3878 e!8906)))

(assert (= (and b!16198 (is-CC!10 (right!658 (_2!53 res!5662)))) b!16371))

(assert (= (and b!16198 (is-Single!10 (right!658 (_2!53 res!5662)))) b!16372))

(declare-fun b!16373 () Bool)

(declare-fun e!8907 () Bool)

(declare-fun tp!3899 () Bool)

(declare-fun tp!3900 () Bool)

(assert (=> b!16373 (= e!8907 (and tp!3899 tp!3900))))

(declare-fun b!16374 () Bool)

(assert (=> b!16374 (= e!8907 tp_is_empty!57)))

(assert (=> b!16199 (= tp!3883 e!8907)))

(assert (= (and b!16199 (is-CC!10 (left!655 (_1!53 x$3!88)))) b!16373))

(assert (= (and b!16199 (is-Single!10 (left!655 (_1!53 x$3!88)))) b!16374))

(declare-fun b!16375 () Bool)

(declare-fun e!8908 () Bool)

(declare-fun tp!3901 () Bool)

(declare-fun tp!3902 () Bool)

(assert (=> b!16375 (= e!8908 (and tp!3901 tp!3902))))

(declare-fun b!16376 () Bool)

(assert (=> b!16376 (= e!8908 tp_is_empty!57)))

(assert (=> b!16199 (= tp!3886 e!8908)))

(assert (= (and b!16199 (is-CC!10 (right!658 (_1!53 x$3!88)))) b!16375))

(assert (= (and b!16199 (is-Single!10 (right!658 (_1!53 x$3!88)))) b!16376))

(declare-fun b!16377 () Bool)

(declare-fun e!8909 () Bool)

(declare-fun tp!3903 () Bool)

(declare-fun tp!3904 () Bool)

(assert (=> b!16377 (= e!8909 (and tp!3903 tp!3904))))

(declare-fun b!16378 () Bool)

(assert (=> b!16378 (= e!8909 tp_is_empty!57)))

(assert (=> b!16182 (= tp!3880 e!8909)))

(assert (= (and b!16182 (is-CC!10 (left!655 (_2!53 x$3!88)))) b!16377))

(assert (= (and b!16182 (is-Single!10 (left!655 (_2!53 x$3!88)))) b!16378))

(declare-fun b!16379 () Bool)

(declare-fun e!8910 () Bool)

(declare-fun tp!3905 () Bool)

(declare-fun tp!3906 () Bool)

(assert (=> b!16379 (= e!8910 (and tp!3905 tp!3906))))

(declare-fun b!16380 () Bool)

(assert (=> b!16380 (= e!8910 tp_is_empty!57)))

(assert (=> b!16182 (= tp!3885 e!8910)))

(assert (= (and b!16182 (is-CC!10 (right!658 (_2!53 x$3!88)))) b!16379))

(assert (= (and b!16182 (is-Single!10 (right!658 (_2!53 x$3!88)))) b!16380))

(declare-fun b!16381 () Bool)

(declare-fun e!8911 () Bool)

(declare-fun tp!3907 () Bool)

(declare-fun tp!3908 () Bool)

(assert (=> b!16381 (= e!8911 (and tp!3907 tp!3908))))

(declare-fun b!16382 () Bool)

(assert (=> b!16382 (= e!8911 tp_is_empty!57)))

(assert (=> b!16206 (= tp!3882 e!8911)))

(assert (= (and b!16206 (is-CC!10 (left!655 ll!30))) b!16381))

(assert (= (and b!16206 (is-Single!10 (left!655 ll!30))) b!16382))

(declare-fun b!16383 () Bool)

(declare-fun e!8912 () Bool)

(declare-fun tp!3909 () Bool)

(declare-fun tp!3910 () Bool)

(assert (=> b!16383 (= e!8912 (and tp!3909 tp!3910))))

(declare-fun b!16384 () Bool)

(assert (=> b!16384 (= e!8912 tp_is_empty!57)))

(assert (=> b!16206 (= tp!3875 e!8912)))

(assert (= (and b!16206 (is-CC!10 (right!658 ll!30))) b!16383))

(assert (= (and b!16206 (is-Single!10 (right!658 ll!30))) b!16384))

(declare-fun b!16385 () Bool)

(declare-fun e!8913 () Bool)

(declare-fun tp!3911 () Bool)

(declare-fun tp!3912 () Bool)

(assert (=> b!16385 (= e!8913 (and tp!3911 tp!3912))))

(declare-fun b!16386 () Bool)

(assert (=> b!16386 (= e!8913 tp_is_empty!57)))

(assert (=> b!16188 (= tp!3877 e!8913)))

(assert (= (and b!16188 (is-CC!10 (left!655 xs!637))) b!16385))

(assert (= (and b!16188 (is-Single!10 (left!655 xs!637))) b!16386))

(declare-fun b!16387 () Bool)

(declare-fun e!8914 () Bool)

(declare-fun tp!3913 () Bool)

(declare-fun tp!3914 () Bool)

(assert (=> b!16387 (= e!8914 (and tp!3913 tp!3914))))

(declare-fun b!16388 () Bool)

(assert (=> b!16388 (= e!8914 tp_is_empty!57)))

(assert (=> b!16188 (= tp!3879 e!8914)))

(assert (= (and b!16188 (is-CC!10 (right!658 xs!637))) b!16387))

(assert (= (and b!16188 (is-Single!10 (right!658 xs!637))) b!16388))

(declare-fun b!16389 () Bool)

(declare-fun e!8915 () Bool)

(declare-fun tp!3915 () Bool)

(declare-fun tp!3916 () Bool)

(assert (=> b!16389 (= e!8915 (and tp!3915 tp!3916))))

(declare-fun b!16390 () Bool)

(assert (=> b!16390 (= e!8915 tp_is_empty!57)))

(assert (=> b!16194 (= tp!3881 e!8915)))

(assert (= (and b!16194 (is-CC!10 (left!655 (_1!53 res!5662)))) b!16389))

(assert (= (and b!16194 (is-Single!10 (left!655 (_1!53 res!5662)))) b!16390))

(declare-fun b!16391 () Bool)

(declare-fun e!8916 () Bool)

(declare-fun tp!3917 () Bool)

(declare-fun tp!3918 () Bool)

(assert (=> b!16391 (= e!8916 (and tp!3917 tp!3918))))

(declare-fun b!16392 () Bool)

(assert (=> b!16392 (= e!8916 tp_is_empty!57)))

(assert (=> b!16194 (= tp!3874 e!8916)))

(assert (= (and b!16194 (is-CC!10 (right!658 (_1!53 res!5662)))) b!16391))

(assert (= (and b!16194 (is-Single!10 (right!658 (_1!53 res!5662)))) b!16392))

(push 1)

(assert (not b!16336))

(assert (not b!16221))

(assert (not b!16352))

(assert (not b!16373))

(assert (not b!16288))

(assert (not b!16377))

(assert (not b!16389))

(assert (not b!16344))

(assert (not d!11781))

(assert (not b!16367))

(assert (not d!11763))

(assert (not b!16347))

(assert (not b!16391))

(assert (not b!16258))

(assert (not b!16365))

(assert (not b!16290))

(assert (not b!16298))

(assert (not b!16340))

(assert (not b!16251))

(assert (not b!16278))

(assert (not b!16385))

(assert (not b!16383))

(assert (not b!16348))

(assert (not b!16342))

(assert (not b!16255))

(assert (not b!16287))

(assert (not b!16292))

(assert (not b!16296))

(assert (not b!16253))

(assert (not b!16339))

(assert tp_is_empty!57)

(assert (not b!16257))

(assert (not b!16381))

(assert (not d!11779))

(assert (not b!16249))

(assert (not b!16349))

(assert (not b!16351))

(assert (not b!16291))

(assert (not b!16256))

(assert (not b!16222))

(assert (not b!16218))

(assert (not b!16220))

(assert (not b!16224))

(assert (not b!16343))

(assert (not b!16354))

(assert (not b!16223))

(assert (not b!16270))

(assert (not b!16276))

(assert (not b!16358))

(assert (not b!16300))

(assert (not b!16371))

(assert (not b!16387))

(assert (not b!16350))

(assert (not b!16293))

(assert (not b!16219))

(assert (not b!16303))

(assert (not b!16369))

(assert (not b!16297))

(assert (not b!16289))

(assert (not b!16379))

(assert (not b!16254))

(assert (not b!16375))

(assert (not b!16225))

(assert (not b!16337))

(assert (not b!16355))

(assert (not b!16295))

(assert (not b!16294))

(assert (not b!16353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!16394 () Bool)

(declare-fun e!8917 () Int)

(declare-fun lt!2369 () Int)

(declare-fun lt!2371 () Int)

(assert (=> b!16394 (= e!8917 (+ 1 (ite (>= lt!2369 lt!2371) lt!2369 lt!2371)))))

(assert (=> b!16394 (= lt!2371 (level!10 (right!658 (right!658 xs!637))))))

(assert (=> b!16394 (= lt!2369 (level!10 (left!655 (right!658 xs!637))))))

(declare-fun d!11787 () Bool)

(declare-fun lt!2370 () Int)

(assert (=> d!11787 (>= lt!2370 0)))

(assert (=> d!11787 (= lt!2370 e!8917)))

(declare-fun c!4281 () Bool)

(assert (=> d!11787 (= c!4281 (or (is-Empty!21 (right!658 xs!637)) (is-Single!10 (right!658 xs!637))))))

(assert (=> d!11787 (= (level!10 (right!658 xs!637)) lt!2370)))

(declare-fun b!16393 () Bool)

(assert (=> b!16393 (= e!8917 0)))

(assert (= (and d!11787 c!4281) b!16393))

(assert (= (and d!11787 (not c!4281)) b!16394))

(declare-fun m!19777 () Bool)

(assert (=> b!16394 m!19777))

(declare-fun m!19779 () Bool)

(assert (=> b!16394 m!19779))

(assert (=> b!16254 d!11787))

(declare-fun b!16396 () Bool)

(declare-fun e!8918 () Int)

(declare-fun lt!2372 () Int)

(declare-fun lt!2374 () Int)

(assert (=> b!16396 (= e!8918 (+ 1 (ite (>= lt!2372 lt!2374) lt!2372 lt!2374)))))

(assert (=> b!16396 (= lt!2374 (level!10 (right!658 lr!32)))))

(assert (=> b!16396 (= lt!2372 (level!10 (left!655 lr!32)))))

(declare-fun d!11789 () Bool)

(declare-fun lt!2373 () Int)

(assert (=> d!11789 (>= lt!2373 0)))

(assert (=> d!11789 (= lt!2373 e!8918)))

(declare-fun c!4282 () Bool)

(assert (=> d!11789 (= c!4282 (or (is-Empty!21 lr!32) (is-Single!10 lr!32)))))

(assert (=> d!11789 (= (level!10 lr!32) lt!2373)))

(declare-fun b!16395 () Bool)

(assert (=> b!16395 (= e!8918 0)))

(assert (= (and d!11789 c!4282) b!16395))

(assert (= (and d!11789 (not c!4282)) b!16396))

(declare-fun m!19781 () Bool)

(assert (=> b!16396 m!19781))

(declare-fun m!19783 () Bool)

(assert (=> b!16396 m!19783))

(assert (=> b!16254 d!11789))

(declare-fun b!16398 () Bool)

(declare-fun e!8919 () Int)

(declare-fun lt!2375 () Int)

(declare-fun lt!2377 () Int)

(assert (=> b!16398 (= e!8919 (+ 1 (ite (>= lt!2375 lt!2377) lt!2375 lt!2377)))))

(assert (=> b!16398 (= lt!2377 (level!10 (right!658 lt!2337)))))

(assert (=> b!16398 (= lt!2375 (level!10 (left!655 lt!2337)))))

(declare-fun d!11791 () Bool)

(declare-fun lt!2376 () Int)

(assert (=> d!11791 (>= lt!2376 0)))

(assert (=> d!11791 (= lt!2376 e!8919)))

(declare-fun c!4283 () Bool)

(assert (=> d!11791 (= c!4283 (or (is-Empty!21 lt!2337) (is-Single!10 lt!2337)))))

(assert (=> d!11791 (= (level!10 lt!2337) lt!2376)))

(declare-fun b!16397 () Bool)

(assert (=> b!16397 (= e!8919 0)))

(assert (= (and d!11791 c!4283) b!16397))

(assert (= (and d!11791 (not c!4283)) b!16398))

(declare-fun m!19785 () Bool)

(assert (=> b!16398 m!19785))

(declare-fun m!19787 () Bool)

(assert (=> b!16398 m!19787))

(assert (=> b!16254 d!11791))

(declare-fun b!16399 () Bool)

(declare-fun e!8920 () Conc!11)

(assert (=> b!16399 (= e!8920 (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637)))))))))

(declare-fun b!16400 () Bool)

(declare-fun e!8925 () Bool)

(declare-fun lt!2380 () Conc!11)

(assert (=> b!16400 (= e!8925 (balanced!11 lt!2380))))

(declare-fun b!16401 () Bool)

(declare-fun e!8923 () Conc!11)

(assert (=> b!16401 (= e!8923 (left!655 (left!655 xs!637)))))

(declare-fun b!16402 () Bool)

(declare-fun res!6675 () Bool)

(declare-fun e!8922 () Bool)

(assert (=> b!16402 (=> (not res!6675) (not e!8922))))

(declare-fun lt!2379 () Int)

(declare-fun lt!2384 () Int)

(declare-fun lt!2378 () Int)

(assert (=> b!16402 (= res!6675 (>= lt!2384 (ite (>= lt!2378 lt!2379) lt!2378 lt!2379)))))

(assert (=> b!16402 (= lt!2379 (level!10 (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(assert (=> b!16402 (= lt!2378 (level!10 (left!655 (left!655 xs!637))))))

(assert (=> b!16402 (= lt!2384 (level!10 lt!2380))))

(declare-fun b!16403 () Bool)

(assert (=> b!16403 (= e!8923 e!8920)))

(declare-fun c!4285 () Bool)

(assert (=> b!16403 (= c!4285 (is-Empty!21 (left!655 (left!655 xs!637))))))

(declare-fun b!16404 () Bool)

(assert (=> b!16404 (= e!8920 (concatNonEmpty!3 (left!655 (left!655 xs!637)) (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(declare-fun b!16405 () Bool)

(declare-fun res!6680 () Bool)

(assert (=> b!16405 (=> (not res!6680) (not e!8922))))

(declare-fun lt!2382 () Int)

(declare-fun lt!2381 () Int)

(declare-fun lt!2383 () Int)

(assert (=> b!16405 (= res!6680 (<= lt!2381 (+ (ite (>= lt!2383 lt!2382) lt!2383 lt!2382) 1)))))

(assert (=> b!16405 (= lt!2382 (level!10 (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(assert (=> b!16405 (= lt!2383 (level!10 (left!655 (left!655 xs!637))))))

(assert (=> b!16405 (= lt!2381 (level!10 lt!2380))))

(declare-fun b!16406 () Bool)

(declare-fun e!8921 () Bool)

(assert (=> b!16406 (= e!8921 (balanced!11 (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(declare-fun b!16407 () Bool)

(declare-fun res!6677 () Bool)

(assert (=> b!16407 (=> (not res!6677) (not e!8921))))

(assert (=> b!16407 (= res!6677 (concInv!10 (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(declare-fun d!11793 () Bool)

(assert (=> d!11793 e!8922))

(declare-fun res!6678 () Bool)

(assert (=> d!11793 (=> (not res!6678) (not e!8922))))

(assert (=> d!11793 (= res!6678 e!8925)))

(declare-fun res!6681 () Bool)

(assert (=> d!11793 (=> (not res!6681) (not e!8925))))

(assert (=> d!11793 (= res!6681 (concInv!10 lt!2380))))

(assert (=> d!11793 (= lt!2380 e!8923)))

(declare-fun c!4284 () Bool)

(assert (=> d!11793 (= c!4284 (is-Empty!21 (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(assert (=> d!11793 e!8921))

(declare-fun res!6679 () Bool)

(assert (=> d!11793 (=> (not res!6679) (not e!8921))))

(declare-fun e!8924 () Bool)

(assert (=> d!11793 (= res!6679 e!8924)))

(declare-fun res!6676 () Bool)

(assert (=> d!11793 (=> (not res!6676) (not e!8924))))

(assert (=> d!11793 (= res!6676 (concInv!10 (left!655 (left!655 xs!637))))))

(assert (=> d!11793 (= (concatNormalized!5 (left!655 (left!655 xs!637)) (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))) lt!2380)))

(declare-fun b!16408 () Bool)

(assert (=> b!16408 (= e!8924 (balanced!11 (left!655 (left!655 xs!637))))))

(declare-fun b!16409 () Bool)

(assert (=> b!16409 (= e!8922 (concatCorrectness!1 lt!2380 (left!655 (left!655 xs!637)) (_1!53 (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))))

(assert (= (and d!11793 res!6676) b!16408))

(assert (= (and d!11793 res!6679) b!16407))

(assert (= (and b!16407 res!6677) b!16406))

(assert (= (and b!16403 c!4285) b!16399))

(assert (= (and b!16403 (not c!4285)) b!16404))

(assert (= (and d!11793 c!4284) b!16401))

(assert (= (and d!11793 (not c!4284)) b!16403))

(assert (= (and d!11793 res!6681) b!16400))

(assert (= (and d!11793 res!6678) b!16405))

(assert (= (and b!16405 res!6680) b!16402))

(assert (= (and b!16402 res!6675) b!16409))

(declare-fun m!19789 () Bool)

(assert (=> b!16407 m!19789))

(declare-fun m!19791 () Bool)

(assert (=> b!16409 m!19791))

(declare-fun m!19793 () Bool)

(assert (=> b!16402 m!19793))

(declare-fun m!19795 () Bool)

(assert (=> b!16402 m!19795))

(declare-fun m!19797 () Bool)

(assert (=> b!16402 m!19797))

(declare-fun m!19799 () Bool)

(assert (=> d!11793 m!19799))

(declare-fun m!19801 () Bool)

(assert (=> d!11793 m!19801))

(declare-fun m!19803 () Bool)

(assert (=> b!16406 m!19803))

(declare-fun m!19805 () Bool)

(assert (=> b!16408 m!19805))

(declare-fun m!19807 () Bool)

(assert (=> b!16400 m!19807))

(assert (=> b!16405 m!19793))

(assert (=> b!16405 m!19795))

(assert (=> b!16405 m!19797))

(declare-fun m!19809 () Bool)

(assert (=> b!16404 m!19809))

(assert (=> b!16347 d!11793))

(declare-fun e!8927 () Bool)

(declare-fun lt!2387 () tuple2!106)

(declare-fun b!16410 () Bool)

(assert (=> b!16410 (= e!8927 (splitCorrectness!6 lt!2387 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))

(declare-fun b!16411 () Bool)

(declare-fun res!6688 () Bool)

(assert (=> b!16411 (=> (not res!6688) (not e!8927))))

(assert (=> b!16411 (= res!6688 (>= (level!10 (right!658 (left!655 xs!637))) (level!10 (_2!53 lt!2387))))))

(declare-fun b!16412 () Bool)

(declare-fun e!8929 () tuple2!106)

(assert (=> b!16412 (= e!8929 (ite (<= (- n!315 (size!192 (left!655 (left!655 xs!637)))) 0) (tuple2!107 Empty!21 (right!658 (left!655 xs!637))) (tuple2!107 (right!658 (left!655 xs!637)) Empty!21)))))

(declare-fun b!16413 () Bool)

(declare-fun e!8932 () Bool)

(declare-fun lt!2386 () Conc!11)

(assert (=> b!16413 (= e!8932 (balanced!11 lt!2386))))

(declare-fun b!16414 () Bool)

(declare-fun e!8930 () tuple2!106)

(declare-fun e!8926 () tuple2!106)

(assert (=> b!16414 (= e!8930 e!8926)))

(declare-fun c!4286 () Bool)

(assert (=> b!16414 (= c!4286 (> (- n!315 (size!192 (left!655 (left!655 xs!637)))) (size!192 (left!655 (right!658 (left!655 xs!637))))))))

(declare-fun b!16415 () Bool)

(declare-fun e!8928 () tuple2!106)

(assert (=> b!16415 (= e!8928 e!8929)))

(declare-fun c!4289 () Bool)

(assert (=> b!16415 (= c!4289 (is-Single!10 (right!658 (left!655 xs!637))))))

(declare-fun b!16416 () Bool)

(declare-fun res!6683 () Bool)

(assert (=> b!16416 (=> (not res!6683) (not e!8927))))

(assert (=> b!16416 (= res!6683 (instSplitAxiom!8 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))))))

(declare-fun b!16417 () Bool)

(declare-fun e!8933 () Bool)

(declare-fun lt!2385 () Conc!11)

(assert (=> b!16417 (= e!8933 (balanced!11 lt!2385))))

(declare-fun b!16418 () Bool)

(declare-fun res!6684 () Bool)

(assert (=> b!16418 (=> (not res!6684) (not e!8927))))

(assert (=> b!16418 (= res!6684 e!8933)))

(declare-fun res!6687 () Bool)

(assert (=> b!16418 (=> (not res!6687) (not e!8933))))

(assert (=> b!16418 (= res!6687 (concInv!10 lt!2385))))

(assert (=> b!16418 (= lt!2385 (_2!53 lt!2387))))

(declare-fun b!16419 () Bool)

(assert (=> b!16419 (= e!8926 (tuple2!107 (left!655 (right!658 (left!655 xs!637))) (right!658 (right!658 (left!655 xs!637)))))))

(declare-fun b!16420 () Bool)

(assert (=> b!16420 (= e!8928 (tuple2!107 Empty!21 Empty!21))))

(declare-fun b!16421 () Bool)

(assert (=> b!16421 (= e!8926 (tuple2!107 (concatNormalized!5 (left!655 (right!658 (left!655 xs!637))) (_1!53 (split!10 (right!658 (right!658 (left!655 xs!637))) (- (- n!315 (size!192 (left!655 (left!655 xs!637)))) (size!192 (left!655 (right!658 (left!655 xs!637)))))))) (_2!53 (split!10 (right!658 (right!658 (left!655 xs!637))) (- (- n!315 (size!192 (left!655 (left!655 xs!637)))) (size!192 (left!655 (right!658 (left!655 xs!637)))))))))))

(declare-fun b!16422 () Bool)

(declare-fun e!8931 () Bool)

(assert (=> b!16422 (= e!8931 (balanced!11 (right!658 (left!655 xs!637))))))

(declare-fun b!16423 () Bool)

(assert (=> b!16423 (= e!8929 e!8930)))

(declare-fun c!4287 () Bool)

(assert (=> b!16423 (= c!4287 (< (- n!315 (size!192 (left!655 (left!655 xs!637)))) (size!192 (left!655 (right!658 (left!655 xs!637))))))))

(declare-fun b!16424 () Bool)

(assert (=> b!16424 (= e!8930 (tuple2!107 (_1!53 (split!10 (left!655 (right!658 (left!655 xs!637))) (- n!315 (size!192 (left!655 (left!655 xs!637)))))) (concatNormalized!5 (_2!53 (split!10 (left!655 (right!658 (left!655 xs!637))) (- n!315 (size!192 (left!655 (left!655 xs!637)))))) (right!658 (right!658 (left!655 xs!637))))))))

(declare-fun d!11795 () Bool)

(assert (=> d!11795 e!8927))

(declare-fun res!6682 () Bool)

(assert (=> d!11795 (=> (not res!6682) (not e!8927))))

(assert (=> d!11795 (= res!6682 e!8932)))

(declare-fun res!6685 () Bool)

(assert (=> d!11795 (=> (not res!6685) (not e!8932))))

(assert (=> d!11795 (= res!6685 (concInv!10 lt!2386))))

(assert (=> d!11795 (= lt!2386 (_1!53 lt!2387))))

(assert (=> d!11795 (= lt!2387 e!8928)))

(declare-fun c!4288 () Bool)

(assert (=> d!11795 (= c!4288 (is-Empty!21 (right!658 (left!655 xs!637))))))

(assert (=> d!11795 e!8931))

(declare-fun res!6689 () Bool)

(assert (=> d!11795 (=> (not res!6689) (not e!8931))))

(assert (=> d!11795 (= res!6689 (concInv!10 (right!658 (left!655 xs!637))))))

(assert (=> d!11795 (= (split!10 (right!658 (left!655 xs!637)) (- n!315 (size!192 (left!655 (left!655 xs!637))))) lt!2387)))

(declare-fun b!16425 () Bool)

(declare-fun res!6686 () Bool)

(assert (=> b!16425 (=> (not res!6686) (not e!8927))))

(assert (=> b!16425 (= res!6686 (>= (level!10 (right!658 (left!655 xs!637))) (level!10 (_1!53 lt!2387))))))

(assert (= (and d!11795 res!6689) b!16422))

(assert (= (and b!16414 c!4286) b!16421))

(assert (= (and b!16414 (not c!4286)) b!16419))

(assert (= (and b!16423 c!4287) b!16424))

(assert (= (and b!16423 (not c!4287)) b!16414))

(assert (= (and b!16415 c!4289) b!16412))

(assert (= (and b!16415 (not c!4289)) b!16423))

(assert (= (and d!11795 c!4288) b!16420))

(assert (= (and d!11795 (not c!4288)) b!16415))

(assert (= (and d!11795 res!6685) b!16413))

(assert (= (and d!11795 res!6682) b!16418))

(assert (= (and b!16418 res!6687) b!16417))

(assert (= (and b!16418 res!6684) b!16425))

(assert (= (and b!16425 res!6686) b!16411))

(assert (= (and b!16411 res!6688) b!16416))

(assert (= (and b!16416 res!6683) b!16410))

(declare-fun m!19811 () Bool)

(assert (=> b!16422 m!19811))

(declare-fun m!19813 () Bool)

(assert (=> b!16424 m!19813))

(declare-fun m!19815 () Bool)

(assert (=> b!16424 m!19815))

(declare-fun m!19817 () Bool)

(assert (=> b!16417 m!19817))

(declare-fun m!19819 () Bool)

(assert (=> b!16423 m!19819))

(declare-fun m!19821 () Bool)

(assert (=> b!16413 m!19821))

(declare-fun m!19823 () Bool)

(assert (=> b!16416 m!19823))

(assert (=> b!16414 m!19819))

(declare-fun m!19825 () Bool)

(assert (=> b!16425 m!19825))

(declare-fun m!19827 () Bool)

(assert (=> b!16425 m!19827))

(declare-fun m!19829 () Bool)

(assert (=> b!16418 m!19829))

(assert (=> b!16421 m!19819))

(declare-fun m!19831 () Bool)

(assert (=> b!16421 m!19831))

(declare-fun m!19833 () Bool)

(assert (=> b!16421 m!19833))

(declare-fun m!19835 () Bool)

(assert (=> b!16410 m!19835))

(declare-fun m!19837 () Bool)

(assert (=> d!11795 m!19837))

(declare-fun m!19839 () Bool)

(assert (=> d!11795 m!19839))

(assert (=> b!16411 m!19825))

(declare-fun m!19841 () Bool)

(assert (=> b!16411 m!19841))

(assert (=> b!16347 d!11795))

(declare-fun b!16429 () Bool)

(declare-fun e!8934 () Int)

(assert (=> b!16429 (= e!8934 (+ (size!192 (left!655 (left!655 (left!655 xs!637)))) (size!192 (right!658 (left!655 (left!655 xs!637))))))))

(declare-fun b!16427 () Bool)

(declare-fun e!8935 () Int)

(assert (=> b!16427 (= e!8935 e!8934)))

(declare-fun c!4290 () Bool)

(assert (=> b!16427 (= c!4290 (is-Single!10 (left!655 (left!655 xs!637))))))

(declare-fun b!16426 () Bool)

(assert (=> b!16426 (= e!8935 0)))

(declare-fun d!11797 () Bool)

(declare-fun lt!2388 () Int)

(assert (=> d!11797 (>= lt!2388 0)))

(assert (=> d!11797 (= lt!2388 e!8935)))

(declare-fun c!4291 () Bool)

(assert (=> d!11797 (= c!4291 (is-Empty!21 (left!655 (left!655 xs!637))))))

(assert (=> d!11797 (= (size!192 (left!655 (left!655 xs!637))) lt!2388)))

(declare-fun b!16428 () Bool)

(assert (=> b!16428 (= e!8934 1)))

(assert (= (and b!16427 c!4290) b!16428))

(assert (= (and b!16427 (not c!4290)) b!16429))

(assert (= (and d!11797 c!4291) b!16426))

(assert (= (and d!11797 (not c!4291)) b!16427))

(declare-fun m!19843 () Bool)

(assert (=> b!16429 m!19843))

(declare-fun m!19845 () Bool)

(assert (=> b!16429 m!19845))

(assert (=> b!16347 d!11797))

(declare-fun d!11799 () Bool)

(declare-fun lt!2391 () List!324)

(declare-fun size!193 (List!324) Int)

(assert (=> d!11799 (= (size!193 lt!2391) (size!192 (_2!53 res!5662)))))

(declare-fun e!8941 () List!324)

(assert (=> d!11799 (= lt!2391 e!8941)))

(declare-fun c!4297 () Bool)

(assert (=> d!11799 (= c!4297 (is-Empty!21 (_2!53 res!5662)))))

(assert (=> d!11799 (= (toList!84 (_2!53 res!5662)) lt!2391)))

(declare-fun b!16441 () Bool)

(declare-fun e!8940 () List!324)

(declare-fun ++!9 (List!324 List!324) List!324)

(assert (=> b!16441 (= e!8940 (++!9 (toList!84 (left!655 (_2!53 res!5662))) (toList!84 (right!658 (_2!53 res!5662)))))))

(declare-fun b!16439 () Bool)

(assert (=> b!16439 (= e!8941 e!8940)))

(declare-fun c!4296 () Bool)

(assert (=> b!16439 (= c!4296 (is-Single!10 (_2!53 res!5662)))))

(declare-fun b!16438 () Bool)

(assert (=> b!16438 (= e!8941 Nil!319)))

(declare-fun b!16440 () Bool)

(assert (=> b!16440 (= e!8940 (Cons!318 (x!8708 (_2!53 res!5662)) Nil!319))))

(assert (= (and b!16439 c!4296) b!16440))

(assert (= (and b!16439 (not c!4296)) b!16441))

(assert (= (and d!11799 c!4297) b!16438))

(assert (= (and d!11799 (not c!4297)) b!16439))

(declare-fun m!19847 () Bool)

(assert (=> d!11799 m!19847))

(declare-fun m!19849 () Bool)

(assert (=> d!11799 m!19849))

(declare-fun m!19851 () Bool)

(assert (=> b!16441 m!19851))

(declare-fun m!19853 () Bool)

(assert (=> b!16441 m!19853))

(assert (=> b!16441 m!19851))

(assert (=> b!16441 m!19853))

(declare-fun m!19855 () Bool)

(assert (=> b!16441 m!19855))

(assert (=> b!16303 d!11799))

(declare-fun b!16460 () Bool)

(declare-fun e!8953 () Bool)

(declare-fun lt!2396 () List!324)

(declare-fun e!8952 () Int)

(assert (=> b!16460 (= e!8953 (= (size!193 lt!2396) e!8952))))

(declare-fun c!4307 () Bool)

(assert (=> b!16460 (= c!4307 (<= n!315 0))))

(declare-fun lt!2397 () Int)

(assert (=> b!16460 (= lt!2397 (size!193 (toList!84 xs!637)))))

(declare-fun b!16461 () Bool)

(declare-fun e!8956 () List!324)

(assert (=> b!16461 (= e!8956 (Cons!318 (h!232 (toList!84 xs!637)) (t!4291 (toList!84 xs!637))))))

(declare-fun b!16462 () Bool)

(declare-fun e!8954 () Int)

(assert (=> b!16462 (= e!8952 e!8954)))

(declare-fun c!4308 () Bool)

(assert (=> b!16462 (= c!4308 (>= n!315 lt!2397))))

(declare-fun b!16463 () Bool)

(declare-fun e!8955 () List!324)

(assert (=> b!16463 (= e!8955 Nil!319)))

(declare-fun b!16464 () Bool)

(assert (=> b!16464 (= e!8954 (- (size!193 (toList!84 xs!637)) n!315))))

(declare-fun b!16465 () Bool)

(assert (=> b!16465 (= e!8952 lt!2397)))

(declare-fun b!16466 () Bool)

(assert (=> b!16466 (= e!8954 0)))

(declare-fun d!11801 () Bool)

(assert (=> d!11801 e!8953))

(declare-fun res!6697 () Bool)

(assert (=> d!11801 (=> (not res!6697) (not e!8953))))

(declare-fun content!54 (List!324) (Set T!1713))

(assert (=> d!11801 (= res!6697 (subset (content!54 lt!2396) (content!54 (toList!84 xs!637))))))

(assert (=> d!11801 (= lt!2396 e!8955)))

(declare-fun c!4309 () Bool)

(assert (=> d!11801 (= c!4309 (is-Nil!319 (toList!84 xs!637)))))

(assert (=> d!11801 (= (drop!7 (toList!84 xs!637) n!315) lt!2396)))

(declare-fun b!16467 () Bool)

(assert (=> b!16467 (= e!8956 (drop!7 (t!4291 (toList!84 xs!637)) (- n!315 1)))))

(declare-fun b!16468 () Bool)

(assert (=> b!16468 (= e!8955 e!8956)))

(declare-fun c!4306 () Bool)

(assert (=> b!16468 (= c!4306 (<= n!315 0))))

(assert (= (and b!16468 c!4306) b!16461))

(assert (= (and b!16468 (not c!4306)) b!16467))

(assert (= (and d!11801 c!4309) b!16463))

(assert (= (and d!11801 (not c!4309)) b!16468))

(assert (= (and d!11801 res!6697) b!16460))

(assert (= (and b!16462 c!4308) b!16466))

(assert (= (and b!16462 (not c!4308)) b!16464))

(assert (= (and b!16460 c!4307) b!16465))

(assert (= (and b!16460 (not c!4307)) b!16462))

(declare-fun m!19857 () Bool)

(assert (=> b!16460 m!19857))

(assert (=> b!16460 m!19731))

(declare-fun m!19859 () Bool)

(assert (=> b!16460 m!19859))

(assert (=> b!16464 m!19731))

(assert (=> b!16464 m!19859))

(declare-fun m!19861 () Bool)

(assert (=> d!11801 m!19861))

(assert (=> d!11801 m!19731))

(declare-fun m!19863 () Bool)

(assert (=> d!11801 m!19863))

(declare-fun m!19865 () Bool)

(assert (=> b!16467 m!19865))

(assert (=> b!16303 d!11801))

(declare-fun d!11803 () Bool)

(declare-fun lt!2398 () List!324)

(assert (=> d!11803 (= (size!193 lt!2398) (size!192 xs!637))))

(declare-fun e!8958 () List!324)

(assert (=> d!11803 (= lt!2398 e!8958)))

(declare-fun c!4311 () Bool)

(assert (=> d!11803 (= c!4311 (is-Empty!21 xs!637))))

(assert (=> d!11803 (= (toList!84 xs!637) lt!2398)))

(declare-fun b!16472 () Bool)

(declare-fun e!8957 () List!324)

(assert (=> b!16472 (= e!8957 (++!9 (toList!84 (left!655 xs!637)) (toList!84 (right!658 xs!637))))))

(declare-fun b!16470 () Bool)

(assert (=> b!16470 (= e!8958 e!8957)))

(declare-fun c!4310 () Bool)

(assert (=> b!16470 (= c!4310 (is-Single!10 xs!637))))

(declare-fun b!16469 () Bool)

(assert (=> b!16469 (= e!8958 Nil!319)))

(declare-fun b!16471 () Bool)

(assert (=> b!16471 (= e!8957 (Cons!318 (x!8708 xs!637) Nil!319))))

(assert (= (and b!16470 c!4310) b!16471))

(assert (= (and b!16470 (not c!4310)) b!16472))

(assert (= (and d!11803 c!4311) b!16469))

(assert (= (and d!11803 (not c!4311)) b!16470))

(declare-fun m!19867 () Bool)

(assert (=> d!11803 m!19867))

(declare-fun m!19869 () Bool)

(assert (=> d!11803 m!19869))

(assert (=> b!16472 m!19771))

(assert (=> b!16472 m!19773))

(assert (=> b!16472 m!19771))

(assert (=> b!16472 m!19773))

(declare-fun m!19871 () Bool)

(assert (=> b!16472 m!19871))

(assert (=> b!16303 d!11803))

(declare-fun b!16474 () Bool)

(declare-fun e!8959 () Int)

(declare-fun lt!2399 () Int)

(declare-fun lt!2401 () Int)

(assert (=> b!16474 (= e!8959 (+ 1 (ite (>= lt!2399 lt!2401) lt!2399 lt!2401)))))

(assert (=> b!16474 (= lt!2401 (level!10 (right!658 (right!658 (_2!53 res!5662)))))))

(assert (=> b!16474 (= lt!2399 (level!10 (left!655 (right!658 (_2!53 res!5662)))))))

(declare-fun d!11805 () Bool)

(declare-fun lt!2400 () Int)

(assert (=> d!11805 (>= lt!2400 0)))

(assert (=> d!11805 (= lt!2400 e!8959)))

(declare-fun c!4312 () Bool)

(assert (=> d!11805 (= c!4312 (or (is-Empty!21 (right!658 (_2!53 res!5662))) (is-Single!10 (right!658 (_2!53 res!5662)))))))

(assert (=> d!11805 (= (level!10 (right!658 (_2!53 res!5662))) lt!2400)))

(declare-fun b!16473 () Bool)

(assert (=> b!16473 (= e!8959 0)))

(assert (= (and d!11805 c!4312) b!16473))

(assert (= (and d!11805 (not c!4312)) b!16474))

(declare-fun m!19873 () Bool)

(assert (=> b!16474 m!19873))

(declare-fun m!19875 () Bool)

(assert (=> b!16474 m!19875))

(assert (=> b!16278 d!11805))

(declare-fun b!16476 () Bool)

(declare-fun e!8960 () Int)

(declare-fun lt!2402 () Int)

(declare-fun lt!2404 () Int)

(assert (=> b!16476 (= e!8960 (+ 1 (ite (>= lt!2402 lt!2404) lt!2402 lt!2404)))))

(assert (=> b!16476 (= lt!2404 (level!10 (right!658 (left!655 (_2!53 res!5662)))))))

(assert (=> b!16476 (= lt!2402 (level!10 (left!655 (left!655 (_2!53 res!5662)))))))

(declare-fun d!11807 () Bool)

(declare-fun lt!2403 () Int)

(assert (=> d!11807 (>= lt!2403 0)))

(assert (=> d!11807 (= lt!2403 e!8960)))

(declare-fun c!4313 () Bool)

(assert (=> d!11807 (= c!4313 (or (is-Empty!21 (left!655 (_2!53 res!5662))) (is-Single!10 (left!655 (_2!53 res!5662)))))))

(assert (=> d!11807 (= (level!10 (left!655 (_2!53 res!5662))) lt!2403)))

(declare-fun b!16475 () Bool)

(assert (=> b!16475 (= e!8960 0)))

(assert (= (and d!11807 c!4313) b!16475))

(assert (= (and d!11807 (not c!4313)) b!16476))

(declare-fun m!19877 () Bool)

(assert (=> b!16476 m!19877))

(declare-fun m!19879 () Bool)

(assert (=> b!16476 m!19879))

(assert (=> b!16278 d!11807))

(declare-fun d!11809 () Bool)

(declare-fun res!6701 () Bool)

(declare-fun e!8961 () Bool)

(assert (=> d!11809 (=> res!6701 e!8961)))

(assert (=> d!11809 (= res!6701 (not (is-CC!10 (right!658 xs!637))))))

(assert (=> d!11809 (= (concInv!10 (right!658 xs!637)) e!8961)))

(declare-fun b!16479 () Bool)

(declare-fun res!6700 () Bool)

(declare-fun e!8962 () Bool)

(assert (=> b!16479 (=> (not res!6700) (not e!8962))))

(assert (=> b!16479 (= res!6700 (concInv!10 (left!655 (right!658 xs!637))))))

(declare-fun b!16480 () Bool)

(assert (=> b!16480 (= e!8962 (concInv!10 (right!658 (right!658 xs!637))))))

(declare-fun b!16477 () Bool)

(assert (=> b!16477 (= e!8961 e!8962)))

(declare-fun res!6698 () Bool)

(assert (=> b!16477 (=> (not res!6698) (not e!8962))))

(assert (=> b!16477 (= res!6698 (not (isEmpty!275 (left!655 (right!658 xs!637)))))))

(declare-fun b!16478 () Bool)

(declare-fun res!6699 () Bool)

(assert (=> b!16478 (=> (not res!6699) (not e!8962))))

(assert (=> b!16478 (= res!6699 (not (isEmpty!275 (right!658 (right!658 xs!637)))))))

(assert (= (and d!11809 (not res!6701)) b!16477))

(assert (= (and b!16477 res!6698) b!16478))

(assert (= (and b!16478 res!6699) b!16479))

(assert (= (and b!16479 res!6700) b!16480))

(declare-fun m!19881 () Bool)

(assert (=> b!16479 m!19881))

(declare-fun m!19883 () Bool)

(assert (=> b!16480 m!19883))

(declare-fun m!19885 () Bool)

(assert (=> b!16477 m!19885))

(declare-fun m!19887 () Bool)

(assert (=> b!16478 m!19887))

(assert (=> b!16256 d!11809))

(assert (=> b!16276 d!11787))

(declare-fun b!16482 () Bool)

(declare-fun e!8963 () Int)

(declare-fun lt!2405 () Int)

(declare-fun lt!2407 () Int)

(assert (=> b!16482 (= e!8963 (+ 1 (ite (>= lt!2405 lt!2407) lt!2405 lt!2407)))))

(assert (=> b!16482 (= lt!2407 (level!10 (right!658 (left!655 xs!637))))))

(assert (=> b!16482 (= lt!2405 (level!10 (left!655 (left!655 xs!637))))))

(declare-fun d!11811 () Bool)

(declare-fun lt!2406 () Int)

(assert (=> d!11811 (>= lt!2406 0)))

(assert (=> d!11811 (= lt!2406 e!8963)))

(declare-fun c!4314 () Bool)

(assert (=> d!11811 (= c!4314 (or (is-Empty!21 (left!655 xs!637)) (is-Single!10 (left!655 xs!637))))))

(assert (=> d!11811 (= (level!10 (left!655 xs!637)) lt!2406)))

(declare-fun b!16481 () Bool)

(assert (=> b!16481 (= e!8963 0)))

(assert (= (and d!11811 c!4314) b!16481))

(assert (= (and d!11811 (not c!4314)) b!16482))

(assert (=> b!16482 m!19825))

(assert (=> b!16482 m!19795))

(assert (=> b!16276 d!11811))

(declare-fun b!16503 () Bool)

(declare-fun e!8980 () List!324)

(assert (=> b!16503 (= e!8980 (take!9 (toList!84 (left!655 xs!637)) n!315))))

(declare-fun b!16504 () Bool)

(declare-fun e!8981 () List!324)

(assert (=> b!16504 (= e!8981 (toList!84 (left!655 xs!637)))))

(declare-fun e!8979 () List!324)

(declare-fun e!8976 () Bool)

(declare-fun b!16505 () Bool)

(assert (=> b!16505 (= e!8976 (= (drop!7 (++!9 (toList!84 (left!655 xs!637)) (toList!84 (right!658 xs!637))) n!315) e!8979))))

(declare-fun c!4326 () Bool)

(assert (=> b!16505 (= c!4326 (< n!315 (size!193 (toList!84 (left!655 xs!637)))))))

(declare-fun b!16506 () Bool)

(assert (=> b!16506 (= e!8980 e!8981)))

(declare-fun c!4325 () Bool)

(assert (=> b!16506 (= c!4325 (> n!315 (size!193 (toList!84 (left!655 xs!637)))))))

(declare-fun d!11813 () Bool)

(assert (=> d!11813 e!8976))

(declare-fun res!6713 () Bool)

(assert (=> d!11813 (=> (not res!6713) (not e!8976))))

(assert (=> d!11813 (= res!6713 (= (take!9 (++!9 (toList!84 (left!655 xs!637)) (toList!84 (right!658 xs!637))) n!315) e!8980))))

(declare-fun c!4324 () Bool)

(assert (=> d!11813 (= c!4324 (< n!315 (size!193 (toList!84 (left!655 xs!637)))))))

(declare-fun lt!2410 () Bool)

(declare-fun e!8977 () Bool)

(assert (=> d!11813 (= lt!2410 e!8977)))

(declare-fun res!6714 () Bool)

(assert (=> d!11813 (=> res!6714 e!8977)))

(assert (=> d!11813 (= res!6714 (or (is-Nil!319 (toList!84 (left!655 xs!637))) (<= n!315 0)))))

(assert (=> d!11813 (= (appendTakeDrop!5 (toList!84 (left!655 xs!637)) (toList!84 (right!658 xs!637)) n!315) true)))

(declare-fun b!16507 () Bool)

(assert (=> b!16507 (= e!8977 (appendTakeDrop!5 (t!4291 (toList!84 (left!655 xs!637))) (toList!84 (right!658 xs!637)) (- n!315 1)))))

(declare-fun b!16508 () Bool)

(assert (=> b!16508 (= e!8979 (++!9 (drop!7 (toList!84 (left!655 xs!637)) n!315) (toList!84 (right!658 xs!637))))))

(declare-fun b!16509 () Bool)

(declare-fun e!8978 () List!324)

(assert (=> b!16509 (= e!8978 (drop!7 (toList!84 (right!658 xs!637)) (- n!315 (size!193 (toList!84 (left!655 xs!637))))))))

(declare-fun b!16510 () Bool)

(assert (=> b!16510 (= e!8981 (++!9 (toList!84 (left!655 xs!637)) (take!9 (toList!84 (right!658 xs!637)) (- n!315 (size!193 (toList!84 (left!655 xs!637)))))))))

(declare-fun b!16511 () Bool)

(assert (=> b!16511 (= e!8978 (toList!84 (right!658 xs!637)))))

(declare-fun b!16512 () Bool)

(assert (=> b!16512 (= e!8979 e!8978)))

(declare-fun c!4323 () Bool)

(assert (=> b!16512 (= c!4323 (> n!315 (size!193 (toList!84 (left!655 xs!637)))))))

(assert (= (and d!11813 (not res!6714)) b!16507))

(assert (= (and b!16506 c!4325) b!16510))

(assert (= (and b!16506 (not c!4325)) b!16504))

(assert (= (and d!11813 c!4324) b!16503))

(assert (= (and d!11813 (not c!4324)) b!16506))

(assert (= (and d!11813 res!6713) b!16505))

(assert (= (and b!16512 c!4323) b!16509))

(assert (= (and b!16512 (not c!4323)) b!16511))

(assert (= (and b!16505 c!4326) b!16508))

(assert (= (and b!16505 (not c!4326)) b!16512))

(assert (=> b!16507 m!19773))

(declare-fun m!19889 () Bool)

(assert (=> b!16507 m!19889))

(assert (=> b!16505 m!19771))

(assert (=> b!16505 m!19773))

(assert (=> b!16505 m!19871))

(assert (=> b!16505 m!19871))

(declare-fun m!19891 () Bool)

(assert (=> b!16505 m!19891))

(assert (=> b!16505 m!19771))

(declare-fun m!19893 () Bool)

(assert (=> b!16505 m!19893))

(assert (=> b!16509 m!19771))

(assert (=> b!16509 m!19893))

(assert (=> b!16509 m!19773))

(declare-fun m!19895 () Bool)

(assert (=> b!16509 m!19895))

(assert (=> b!16506 m!19771))

(assert (=> b!16506 m!19893))

(assert (=> d!11813 m!19771))

(assert (=> d!11813 m!19773))

(assert (=> d!11813 m!19871))

(assert (=> d!11813 m!19871))

(declare-fun m!19897 () Bool)

(assert (=> d!11813 m!19897))

(assert (=> d!11813 m!19771))

(assert (=> d!11813 m!19893))

(assert (=> b!16512 m!19771))

(assert (=> b!16512 m!19893))

(assert (=> b!16508 m!19771))

(declare-fun m!19899 () Bool)

(assert (=> b!16508 m!19899))

(assert (=> b!16508 m!19899))

(assert (=> b!16508 m!19773))

(declare-fun m!19901 () Bool)

(assert (=> b!16508 m!19901))

(assert (=> b!16503 m!19771))

(declare-fun m!19903 () Bool)

(assert (=> b!16503 m!19903))

(assert (=> b!16510 m!19771))

(assert (=> b!16510 m!19893))

(assert (=> b!16510 m!19773))

(declare-fun m!19905 () Bool)

(assert (=> b!16510 m!19905))

(assert (=> b!16510 m!19771))

(assert (=> b!16510 m!19905))

(declare-fun m!19907 () Bool)

(assert (=> b!16510 m!19907))

(assert (=> b!16358 d!11813))

(declare-fun d!11815 () Bool)

(declare-fun lt!2411 () List!324)

(assert (=> d!11815 (= (size!193 lt!2411) (size!192 (left!655 xs!637)))))

(declare-fun e!8983 () List!324)

(assert (=> d!11815 (= lt!2411 e!8983)))

(declare-fun c!4328 () Bool)

(assert (=> d!11815 (= c!4328 (is-Empty!21 (left!655 xs!637)))))

(assert (=> d!11815 (= (toList!84 (left!655 xs!637)) lt!2411)))

(declare-fun b!16516 () Bool)

(declare-fun e!8982 () List!324)

(assert (=> b!16516 (= e!8982 (++!9 (toList!84 (left!655 (left!655 xs!637))) (toList!84 (right!658 (left!655 xs!637)))))))

(declare-fun b!16514 () Bool)

(assert (=> b!16514 (= e!8983 e!8982)))

(declare-fun c!4327 () Bool)

(assert (=> b!16514 (= c!4327 (is-Single!10 (left!655 xs!637)))))

(declare-fun b!16513 () Bool)

(assert (=> b!16513 (= e!8983 Nil!319)))

(declare-fun b!16515 () Bool)

(assert (=> b!16515 (= e!8982 (Cons!318 (x!8708 (left!655 xs!637)) Nil!319))))

(assert (= (and b!16514 c!4327) b!16515))

(assert (= (and b!16514 (not c!4327)) b!16516))

(assert (= (and d!11815 c!4328) b!16513))

(assert (= (and d!11815 (not c!4328)) b!16514))

(declare-fun m!19909 () Bool)

(assert (=> d!11815 m!19909))

(assert (=> d!11815 m!19645))

(declare-fun m!19911 () Bool)

(assert (=> b!16516 m!19911))

(declare-fun m!19913 () Bool)

(assert (=> b!16516 m!19913))

(assert (=> b!16516 m!19911))

(assert (=> b!16516 m!19913))

(declare-fun m!19915 () Bool)

(assert (=> b!16516 m!19915))

(assert (=> b!16358 d!11815))

(declare-fun d!11817 () Bool)

(declare-fun lt!2412 () List!324)

(assert (=> d!11817 (= (size!193 lt!2412) (size!192 (right!658 xs!637)))))

(declare-fun e!8985 () List!324)

(assert (=> d!11817 (= lt!2412 e!8985)))

(declare-fun c!4330 () Bool)

(assert (=> d!11817 (= c!4330 (is-Empty!21 (right!658 xs!637)))))

(assert (=> d!11817 (= (toList!84 (right!658 xs!637)) lt!2412)))

(declare-fun b!16520 () Bool)

(declare-fun e!8984 () List!324)

(assert (=> b!16520 (= e!8984 (++!9 (toList!84 (left!655 (right!658 xs!637))) (toList!84 (right!658 (right!658 xs!637)))))))

(declare-fun b!16518 () Bool)

(assert (=> b!16518 (= e!8985 e!8984)))

(declare-fun c!4329 () Bool)

(assert (=> b!16518 (= c!4329 (is-Single!10 (right!658 xs!637)))))

(declare-fun b!16517 () Bool)

(assert (=> b!16517 (= e!8985 Nil!319)))

(declare-fun b!16519 () Bool)

(assert (=> b!16519 (= e!8984 (Cons!318 (x!8708 (right!658 xs!637)) Nil!319))))

(assert (= (and b!16518 c!4329) b!16519))

(assert (= (and b!16518 (not c!4329)) b!16520))

(assert (= (and d!11817 c!4330) b!16517))

(assert (= (and d!11817 (not c!4330)) b!16518))

(declare-fun m!19917 () Bool)

(assert (=> d!11817 m!19917))

(declare-fun m!19919 () Bool)

(assert (=> d!11817 m!19919))

(declare-fun m!19921 () Bool)

(assert (=> b!16520 m!19921))

(declare-fun m!19923 () Bool)

(assert (=> b!16520 m!19923))

(assert (=> b!16520 m!19921))

(assert (=> b!16520 m!19923))

(declare-fun m!19925 () Bool)

(assert (=> b!16520 m!19925))

(assert (=> b!16358 d!11817))

(declare-fun d!11819 () Bool)

(assert (=> d!11819 (= (concatCorrectness!1 lt!2337 lr!32 (right!658 xs!637)) (= (toList!84 lt!2337) (++!9 (toList!84 lr!32) (toList!84 (right!658 xs!637)))))))

(declare-fun bs!5025 () Bool)

(assert (= bs!5025 d!11819))

(declare-fun m!19927 () Bool)

(assert (=> bs!5025 m!19927))

(declare-fun m!19929 () Bool)

(assert (=> bs!5025 m!19929))

(assert (=> bs!5025 m!19773))

(assert (=> bs!5025 m!19927))

(assert (=> bs!5025 m!19773))

(declare-fun m!19931 () Bool)

(assert (=> bs!5025 m!19931))

(assert (=> b!16258 d!11819))

(declare-fun b!16522 () Bool)

(declare-fun res!6717 () Bool)

(declare-fun e!8986 () Bool)

(assert (=> b!16522 (=> (not res!6717) (not e!8986))))

(assert (=> b!16522 (= res!6717 (<= (- (level!10 (left!655 lt!2337)) (level!10 (right!658 lt!2337))) 1))))

(declare-fun b!16524 () Bool)

(assert (=> b!16524 (= e!8986 (balanced!11 (right!658 lt!2337)))))

(declare-fun d!11821 () Bool)

(declare-fun res!6716 () Bool)

(declare-fun e!8987 () Bool)

(assert (=> d!11821 (=> res!6716 e!8987)))

(assert (=> d!11821 (= res!6716 (not (is-CC!10 lt!2337)))))

(assert (=> d!11821 (= (balanced!11 lt!2337) e!8987)))

(declare-fun b!16523 () Bool)

(declare-fun res!6718 () Bool)

(assert (=> b!16523 (=> (not res!6718) (not e!8986))))

(assert (=> b!16523 (= res!6718 (balanced!11 (left!655 lt!2337)))))

(declare-fun b!16521 () Bool)

(assert (=> b!16521 (= e!8987 e!8986)))

(declare-fun res!6719 () Bool)

(assert (=> b!16521 (=> (not res!6719) (not e!8986))))

(assert (=> b!16521 (= res!6719 (>= (- (level!10 (left!655 lt!2337)) (level!10 (right!658 lt!2337))) (- 1)))))

(assert (= (and d!11821 (not res!6716)) b!16521))

(assert (= (and b!16521 res!6719) b!16522))

(assert (= (and b!16522 res!6717) b!16523))

(assert (= (and b!16523 res!6718) b!16524))

(assert (=> b!16522 m!19787))

(assert (=> b!16522 m!19785))

(declare-fun m!19933 () Bool)

(assert (=> b!16524 m!19933))

(declare-fun m!19935 () Bool)

(assert (=> b!16523 m!19935))

(assert (=> b!16521 m!19787))

(assert (=> b!16521 m!19785))

(assert (=> b!16249 d!11821))

(declare-fun d!11823 () Bool)

(assert (=> d!11823 (= (isEmpty!275 (left!655 xs!637)) (= (left!655 xs!637) Empty!21))))

(assert (=> b!16287 d!11823))

(declare-fun d!11825 () Bool)

(assert (=> d!11825 (= (isEmpty!275 (left!655 (_2!53 res!5662))) (= (left!655 (_2!53 res!5662)) Empty!21))))

(assert (=> b!16295 d!11825))

(assert (=> b!16349 d!11797))

(declare-fun d!11827 () Bool)

(assert (=> d!11827 (= (isEmpty!275 (left!655 (_1!53 res!5662))) (= (left!655 (_1!53 res!5662)) Empty!21))))

(assert (=> b!16352 d!11827))

(declare-fun b!16526 () Bool)

(declare-fun res!6721 () Bool)

(declare-fun e!8988 () Bool)

(assert (=> b!16526 (=> (not res!6721) (not e!8988))))

(assert (=> b!16526 (= res!6721 (<= (- (level!10 (left!655 (right!658 (_2!53 res!5662)))) (level!10 (right!658 (right!658 (_2!53 res!5662))))) 1))))

(declare-fun b!16528 () Bool)

(assert (=> b!16528 (= e!8988 (balanced!11 (right!658 (right!658 (_2!53 res!5662)))))))

(declare-fun d!11829 () Bool)

(declare-fun res!6720 () Bool)

(declare-fun e!8989 () Bool)

(assert (=> d!11829 (=> res!6720 e!8989)))

(assert (=> d!11829 (= res!6720 (not (is-CC!10 (right!658 (_2!53 res!5662)))))))

(assert (=> d!11829 (= (balanced!11 (right!658 (_2!53 res!5662))) e!8989)))

(declare-fun b!16527 () Bool)

(declare-fun res!6722 () Bool)

(assert (=> b!16527 (=> (not res!6722) (not e!8988))))

(assert (=> b!16527 (= res!6722 (balanced!11 (left!655 (right!658 (_2!53 res!5662)))))))

(declare-fun b!16525 () Bool)

(assert (=> b!16525 (= e!8989 e!8988)))

(declare-fun res!6723 () Bool)

(assert (=> b!16525 (=> (not res!6723) (not e!8988))))

(assert (=> b!16525 (= res!6723 (>= (- (level!10 (left!655 (right!658 (_2!53 res!5662)))) (level!10 (right!658 (right!658 (_2!53 res!5662))))) (- 1)))))

(assert (= (and d!11829 (not res!6720)) b!16525))

(assert (= (and b!16525 res!6723) b!16526))

(assert (= (and b!16526 res!6721) b!16527))

(assert (= (and b!16527 res!6722) b!16528))

(assert (=> b!16526 m!19875))

(assert (=> b!16526 m!19873))

(declare-fun m!19937 () Bool)

(assert (=> b!16528 m!19937))

(declare-fun m!19939 () Bool)

(assert (=> b!16527 m!19939))

(assert (=> b!16525 m!19875))

(assert (=> b!16525 m!19873))

(assert (=> b!16221 d!11829))

(declare-fun b!16530 () Bool)

(declare-fun e!8990 () Int)

(declare-fun lt!2413 () Int)

(declare-fun lt!2415 () Int)

(assert (=> b!16530 (= e!8990 (+ 1 (ite (>= lt!2413 lt!2415) lt!2413 lt!2415)))))

(assert (=> b!16530 (= lt!2415 (level!10 (right!658 (right!658 (_1!53 res!5662)))))))

(assert (=> b!16530 (= lt!2413 (level!10 (left!655 (right!658 (_1!53 res!5662)))))))

(declare-fun d!11831 () Bool)

(declare-fun lt!2414 () Int)

(assert (=> d!11831 (>= lt!2414 0)))

(assert (=> d!11831 (= lt!2414 e!8990)))

(declare-fun c!4331 () Bool)

(assert (=> d!11831 (= c!4331 (or (is-Empty!21 (right!658 (_1!53 res!5662))) (is-Single!10 (right!658 (_1!53 res!5662)))))))

(assert (=> d!11831 (= (level!10 (right!658 (_1!53 res!5662))) lt!2414)))

(declare-fun b!16529 () Bool)

(assert (=> b!16529 (= e!8990 0)))

(assert (= (and d!11831 c!4331) b!16529))

(assert (= (and d!11831 (not c!4331)) b!16530))

(declare-fun m!19941 () Bool)

(assert (=> b!16530 m!19941))

(declare-fun m!19943 () Bool)

(assert (=> b!16530 m!19943))

(assert (=> b!16300 d!11831))

(declare-fun b!16532 () Bool)

(declare-fun e!8991 () Int)

(declare-fun lt!2416 () Int)

(declare-fun lt!2418 () Int)

(assert (=> b!16532 (= e!8991 (+ 1 (ite (>= lt!2416 lt!2418) lt!2416 lt!2418)))))

(assert (=> b!16532 (= lt!2418 (level!10 (right!658 (left!655 (_1!53 res!5662)))))))

(assert (=> b!16532 (= lt!2416 (level!10 (left!655 (left!655 (_1!53 res!5662)))))))

(declare-fun d!11833 () Bool)

(declare-fun lt!2417 () Int)

(assert (=> d!11833 (>= lt!2417 0)))

(assert (=> d!11833 (= lt!2417 e!8991)))

(declare-fun c!4332 () Bool)

(assert (=> d!11833 (= c!4332 (or (is-Empty!21 (left!655 (_1!53 res!5662))) (is-Single!10 (left!655 (_1!53 res!5662)))))))

(assert (=> d!11833 (= (level!10 (left!655 (_1!53 res!5662))) lt!2417)))

(declare-fun b!16531 () Bool)

(assert (=> b!16531 (= e!8991 0)))

(assert (= (and d!11833 c!4332) b!16531))

(assert (= (and d!11833 (not c!4332)) b!16532))

(declare-fun m!19945 () Bool)

(assert (=> b!16532 m!19945))

(declare-fun m!19947 () Bool)

(assert (=> b!16532 m!19947))

(assert (=> b!16300 d!11833))

(declare-fun b!16534 () Bool)

(declare-fun res!6725 () Bool)

(declare-fun e!8992 () Bool)

(assert (=> b!16534 (=> (not res!6725) (not e!8992))))

(assert (=> b!16534 (= res!6725 (<= (- (level!10 (left!655 lt!2366)) (level!10 (right!658 lt!2366))) 1))))

(declare-fun b!16536 () Bool)

(assert (=> b!16536 (= e!8992 (balanced!11 (right!658 lt!2366)))))

(declare-fun d!11835 () Bool)

(declare-fun res!6724 () Bool)

(declare-fun e!8993 () Bool)

(assert (=> d!11835 (=> res!6724 e!8993)))

(assert (=> d!11835 (= res!6724 (not (is-CC!10 lt!2366)))))

(assert (=> d!11835 (= (balanced!11 lt!2366) e!8993)))

(declare-fun b!16535 () Bool)

(declare-fun res!6726 () Bool)

(assert (=> b!16535 (=> (not res!6726) (not e!8992))))

(assert (=> b!16535 (= res!6726 (balanced!11 (left!655 lt!2366)))))

(declare-fun b!16533 () Bool)

(assert (=> b!16533 (= e!8993 e!8992)))

(declare-fun res!6727 () Bool)

(assert (=> b!16533 (=> (not res!6727) (not e!8992))))

(assert (=> b!16533 (= res!6727 (>= (- (level!10 (left!655 lt!2366)) (level!10 (right!658 lt!2366))) (- 1)))))

(assert (= (and d!11835 (not res!6724)) b!16533))

(assert (= (and b!16533 res!6727) b!16534))

(assert (= (and b!16534 res!6725) b!16535))

(assert (= (and b!16535 res!6726) b!16536))

(declare-fun m!19949 () Bool)

(assert (=> b!16534 m!19949))

(declare-fun m!19951 () Bool)

(assert (=> b!16534 m!19951))

(declare-fun m!19953 () Bool)

(assert (=> b!16536 m!19953))

(declare-fun m!19955 () Bool)

(assert (=> b!16535 m!19955))

(assert (=> b!16533 m!19949))

(assert (=> b!16533 m!19951))

(assert (=> b!16343 d!11835))

(declare-fun d!11837 () Bool)

(declare-fun res!6731 () Bool)

(declare-fun e!8994 () Bool)

(assert (=> d!11837 (=> res!6731 e!8994)))

(assert (=> d!11837 (= res!6731 (not (is-CC!10 lt!2337)))))

(assert (=> d!11837 (= (concInv!10 lt!2337) e!8994)))

(declare-fun b!16539 () Bool)

(declare-fun res!6730 () Bool)

(declare-fun e!8995 () Bool)

(assert (=> b!16539 (=> (not res!6730) (not e!8995))))

(assert (=> b!16539 (= res!6730 (concInv!10 (left!655 lt!2337)))))

(declare-fun b!16540 () Bool)

(assert (=> b!16540 (= e!8995 (concInv!10 (right!658 lt!2337)))))

(declare-fun b!16537 () Bool)

(assert (=> b!16537 (= e!8994 e!8995)))

(declare-fun res!6728 () Bool)

(assert (=> b!16537 (=> (not res!6728) (not e!8995))))

(assert (=> b!16537 (= res!6728 (not (isEmpty!275 (left!655 lt!2337))))))

(declare-fun b!16538 () Bool)

(declare-fun res!6729 () Bool)

(assert (=> b!16538 (=> (not res!6729) (not e!8995))))

(assert (=> b!16538 (= res!6729 (not (isEmpty!275 (right!658 lt!2337))))))

(assert (= (and d!11837 (not res!6731)) b!16537))

(assert (= (and b!16537 res!6728) b!16538))

(assert (= (and b!16538 res!6729) b!16539))

(assert (= (and b!16539 res!6730) b!16540))

(declare-fun m!19957 () Bool)

(assert (=> b!16539 m!19957))

(declare-fun m!19959 () Bool)

(assert (=> b!16540 m!19959))

(declare-fun m!19961 () Bool)

(assert (=> b!16537 m!19961))

(declare-fun m!19963 () Bool)

(assert (=> b!16538 m!19963))

(assert (=> d!11763 d!11837))

(declare-fun d!11839 () Bool)

(declare-fun res!6735 () Bool)

(declare-fun e!8996 () Bool)

(assert (=> d!11839 (=> res!6735 e!8996)))

(assert (=> d!11839 (= res!6735 (not (is-CC!10 lr!32)))))

(assert (=> d!11839 (= (concInv!10 lr!32) e!8996)))

(declare-fun b!16543 () Bool)

(declare-fun res!6734 () Bool)

(declare-fun e!8997 () Bool)

(assert (=> b!16543 (=> (not res!6734) (not e!8997))))

(assert (=> b!16543 (= res!6734 (concInv!10 (left!655 lr!32)))))

(declare-fun b!16544 () Bool)

(assert (=> b!16544 (= e!8997 (concInv!10 (right!658 lr!32)))))

(declare-fun b!16541 () Bool)

(assert (=> b!16541 (= e!8996 e!8997)))

(declare-fun res!6732 () Bool)

(assert (=> b!16541 (=> (not res!6732) (not e!8997))))

(assert (=> b!16541 (= res!6732 (not (isEmpty!275 (left!655 lr!32))))))

(declare-fun b!16542 () Bool)

(declare-fun res!6733 () Bool)

(assert (=> b!16542 (=> (not res!6733) (not e!8997))))

(assert (=> b!16542 (= res!6733 (not (isEmpty!275 (right!658 lr!32))))))

(assert (= (and d!11839 (not res!6735)) b!16541))

(assert (= (and b!16541 res!6732) b!16542))

(assert (= (and b!16542 res!6733) b!16543))

(assert (= (and b!16543 res!6734) b!16544))

(declare-fun m!19965 () Bool)

(assert (=> b!16543 m!19965))

(declare-fun m!19967 () Bool)

(assert (=> b!16544 m!19967))

(declare-fun m!19969 () Bool)

(assert (=> b!16541 m!19969))

(declare-fun m!19971 () Bool)

(assert (=> b!16542 m!19971))

(assert (=> d!11763 d!11839))

(declare-fun d!11841 () Bool)

(declare-fun res!6739 () Bool)

(declare-fun e!8998 () Bool)

(assert (=> d!11841 (=> res!6739 e!8998)))

(assert (=> d!11841 (= res!6739 (not (is-CC!10 lt!2367)))))

(assert (=> d!11841 (= (concInv!10 lt!2367) e!8998)))

(declare-fun b!16547 () Bool)

(declare-fun res!6738 () Bool)

(declare-fun e!8999 () Bool)

(assert (=> b!16547 (=> (not res!6738) (not e!8999))))

(assert (=> b!16547 (= res!6738 (concInv!10 (left!655 lt!2367)))))

(declare-fun b!16548 () Bool)

(assert (=> b!16548 (= e!8999 (concInv!10 (right!658 lt!2367)))))

(declare-fun b!16545 () Bool)

(assert (=> b!16545 (= e!8998 e!8999)))

(declare-fun res!6736 () Bool)

(assert (=> b!16545 (=> (not res!6736) (not e!8999))))

(assert (=> b!16545 (= res!6736 (not (isEmpty!275 (left!655 lt!2367))))))

(declare-fun b!16546 () Bool)

(declare-fun res!6737 () Bool)

(assert (=> b!16546 (=> (not res!6737) (not e!8999))))

(assert (=> b!16546 (= res!6737 (not (isEmpty!275 (right!658 lt!2367))))))

(assert (= (and d!11841 (not res!6739)) b!16545))

(assert (= (and b!16545 res!6736) b!16546))

(assert (= (and b!16546 res!6737) b!16547))

(assert (= (and b!16547 res!6738) b!16548))

(declare-fun m!19973 () Bool)

(assert (=> b!16547 m!19973))

(declare-fun m!19975 () Bool)

(assert (=> b!16548 m!19975))

(declare-fun m!19977 () Bool)

(assert (=> b!16545 m!19977))

(declare-fun m!19979 () Bool)

(assert (=> b!16546 m!19979))

(assert (=> d!11781 d!11841))

(declare-fun d!11843 () Bool)

(declare-fun res!6743 () Bool)

(declare-fun e!9000 () Bool)

(assert (=> d!11843 (=> res!6743 e!9000)))

(assert (=> d!11843 (= res!6743 (not (is-CC!10 (left!655 xs!637))))))

(assert (=> d!11843 (= (concInv!10 (left!655 xs!637)) e!9000)))

(declare-fun b!16551 () Bool)

(declare-fun res!6742 () Bool)

(declare-fun e!9001 () Bool)

(assert (=> b!16551 (=> (not res!6742) (not e!9001))))

(assert (=> b!16551 (= res!6742 (concInv!10 (left!655 (left!655 xs!637))))))

(declare-fun b!16552 () Bool)

(assert (=> b!16552 (= e!9001 (concInv!10 (right!658 (left!655 xs!637))))))

(declare-fun b!16549 () Bool)

(assert (=> b!16549 (= e!9000 e!9001)))

(declare-fun res!6740 () Bool)

(assert (=> b!16549 (=> (not res!6740) (not e!9001))))

(assert (=> b!16549 (= res!6740 (not (isEmpty!275 (left!655 (left!655 xs!637)))))))

(declare-fun b!16550 () Bool)

(declare-fun res!6741 () Bool)

(assert (=> b!16550 (=> (not res!6741) (not e!9001))))

(assert (=> b!16550 (= res!6741 (not (isEmpty!275 (right!658 (left!655 xs!637)))))))

(assert (= (and d!11843 (not res!6743)) b!16549))

(assert (= (and b!16549 res!6740) b!16550))

(assert (= (and b!16550 res!6741) b!16551))

(assert (= (and b!16551 res!6742) b!16552))

(assert (=> b!16551 m!19801))

(assert (=> b!16552 m!19839))

(declare-fun m!19981 () Bool)

(assert (=> b!16549 m!19981))

(declare-fun m!19983 () Bool)

(assert (=> b!16550 m!19983))

(assert (=> d!11781 d!11843))

(assert (=> b!16222 d!11811))

(assert (=> b!16222 d!11787))

(declare-fun d!11845 () Bool)

(declare-fun res!6747 () Bool)

(declare-fun e!9002 () Bool)

(assert (=> d!11845 (=> res!6747 e!9002)))

(assert (=> d!11845 (= res!6747 (not (is-CC!10 (right!658 (_1!53 res!5662)))))))

(assert (=> d!11845 (= (concInv!10 (right!658 (_1!53 res!5662))) e!9002)))

(declare-fun b!16555 () Bool)

(declare-fun res!6746 () Bool)

(declare-fun e!9003 () Bool)

(assert (=> b!16555 (=> (not res!6746) (not e!9003))))

(assert (=> b!16555 (= res!6746 (concInv!10 (left!655 (right!658 (_1!53 res!5662)))))))

(declare-fun b!16556 () Bool)

(assert (=> b!16556 (= e!9003 (concInv!10 (right!658 (right!658 (_1!53 res!5662)))))))

(declare-fun b!16553 () Bool)

(assert (=> b!16553 (= e!9002 e!9003)))

(declare-fun res!6744 () Bool)

(assert (=> b!16553 (=> (not res!6744) (not e!9003))))

(assert (=> b!16553 (= res!6744 (not (isEmpty!275 (left!655 (right!658 (_1!53 res!5662))))))))

(declare-fun b!16554 () Bool)

(declare-fun res!6745 () Bool)

(assert (=> b!16554 (=> (not res!6745) (not e!9003))))

(assert (=> b!16554 (= res!6745 (not (isEmpty!275 (right!658 (right!658 (_1!53 res!5662))))))))

(assert (= (and d!11845 (not res!6747)) b!16553))

(assert (= (and b!16553 res!6744) b!16554))

(assert (= (and b!16554 res!6745) b!16555))

(assert (= (and b!16555 res!6746) b!16556))

(declare-fun m!19985 () Bool)

(assert (=> b!16555 m!19985))

(declare-fun m!19987 () Bool)

(assert (=> b!16556 m!19987))

(declare-fun m!19989 () Bool)

(assert (=> b!16553 m!19989))

(declare-fun m!19991 () Bool)

(assert (=> b!16554 m!19991))

(assert (=> b!16355 d!11845))

(declare-fun b!16558 () Bool)

(declare-fun res!6749 () Bool)

(declare-fun e!9004 () Bool)

(assert (=> b!16558 (=> (not res!6749) (not e!9004))))

(assert (=> b!16558 (= res!6749 (<= (- (level!10 (left!655 lr!32)) (level!10 (right!658 lr!32))) 1))))

(declare-fun b!16560 () Bool)

(assert (=> b!16560 (= e!9004 (balanced!11 (right!658 lr!32)))))

(declare-fun d!11847 () Bool)

(declare-fun res!6748 () Bool)

(declare-fun e!9005 () Bool)

(assert (=> d!11847 (=> res!6748 e!9005)))

(assert (=> d!11847 (= res!6748 (not (is-CC!10 lr!32)))))

(assert (=> d!11847 (= (balanced!11 lr!32) e!9005)))

(declare-fun b!16559 () Bool)

(declare-fun res!6750 () Bool)

(assert (=> b!16559 (=> (not res!6750) (not e!9004))))

(assert (=> b!16559 (= res!6750 (balanced!11 (left!655 lr!32)))))

(declare-fun b!16557 () Bool)

(assert (=> b!16557 (= e!9005 e!9004)))

(declare-fun res!6751 () Bool)

(assert (=> b!16557 (=> (not res!6751) (not e!9004))))

(assert (=> b!16557 (= res!6751 (>= (- (level!10 (left!655 lr!32)) (level!10 (right!658 lr!32))) (- 1)))))

(assert (= (and d!11847 (not res!6748)) b!16557))

(assert (= (and b!16557 res!6751) b!16558))

(assert (= (and b!16558 res!6749) b!16559))

(assert (= (and b!16559 res!6750) b!16560))

(assert (=> b!16558 m!19783))

(assert (=> b!16558 m!19781))

(declare-fun m!19993 () Bool)

(assert (=> b!16560 m!19993))

(declare-fun m!19995 () Bool)

(assert (=> b!16559 m!19995))

(assert (=> b!16557 m!19783))

(assert (=> b!16557 m!19781))

(assert (=> b!16257 d!11847))

(declare-fun b!16562 () Bool)

(declare-fun res!6753 () Bool)

(declare-fun e!9006 () Bool)

(assert (=> b!16562 (=> (not res!6753) (not e!9006))))

(assert (=> b!16562 (= res!6753 (<= (- (level!10 (left!655 (left!655 (_1!53 res!5662)))) (level!10 (right!658 (left!655 (_1!53 res!5662))))) 1))))

(declare-fun b!16564 () Bool)

(assert (=> b!16564 (= e!9006 (balanced!11 (right!658 (left!655 (_1!53 res!5662)))))))

(declare-fun d!11849 () Bool)

(declare-fun res!6752 () Bool)

(declare-fun e!9007 () Bool)

(assert (=> d!11849 (=> res!6752 e!9007)))

(assert (=> d!11849 (= res!6752 (not (is-CC!10 (left!655 (_1!53 res!5662)))))))

(assert (=> d!11849 (= (balanced!11 (left!655 (_1!53 res!5662))) e!9007)))

(declare-fun b!16563 () Bool)

(declare-fun res!6754 () Bool)

(assert (=> b!16563 (=> (not res!6754) (not e!9006))))

(assert (=> b!16563 (= res!6754 (balanced!11 (left!655 (left!655 (_1!53 res!5662)))))))

(declare-fun b!16561 () Bool)

(assert (=> b!16561 (= e!9007 e!9006)))

(declare-fun res!6755 () Bool)

(assert (=> b!16561 (=> (not res!6755) (not e!9006))))

(assert (=> b!16561 (= res!6755 (>= (- (level!10 (left!655 (left!655 (_1!53 res!5662)))) (level!10 (right!658 (left!655 (_1!53 res!5662))))) (- 1)))))

(assert (= (and d!11849 (not res!6752)) b!16561))

(assert (= (and b!16561 res!6755) b!16562))

(assert (= (and b!16562 res!6753) b!16563))

(assert (= (and b!16563 res!6754) b!16564))

(assert (=> b!16562 m!19947))

(assert (=> b!16562 m!19945))

(declare-fun m!19997 () Bool)

(assert (=> b!16564 m!19997))

(declare-fun m!19999 () Bool)

(assert (=> b!16563 m!19999))

(assert (=> b!16561 m!19947))

(assert (=> b!16561 m!19945))

(assert (=> b!16293 d!11849))

(assert (=> b!16292 d!11833))

(assert (=> b!16292 d!11831))

(assert (=> b!16223 d!11811))

(assert (=> b!16223 d!11787))

(declare-fun d!11851 () Bool)

(declare-fun res!6759 () Bool)

(declare-fun e!9008 () Bool)

(assert (=> d!11851 (=> res!6759 e!9008)))

(assert (=> d!11851 (= res!6759 (not (is-CC!10 (right!658 (_2!53 res!5662)))))))

(assert (=> d!11851 (= (concInv!10 (right!658 (_2!53 res!5662))) e!9008)))

(declare-fun b!16567 () Bool)

(declare-fun res!6758 () Bool)

(declare-fun e!9009 () Bool)

(assert (=> b!16567 (=> (not res!6758) (not e!9009))))

(assert (=> b!16567 (= res!6758 (concInv!10 (left!655 (right!658 (_2!53 res!5662)))))))

(declare-fun b!16568 () Bool)

(assert (=> b!16568 (= e!9009 (concInv!10 (right!658 (right!658 (_2!53 res!5662)))))))

(declare-fun b!16565 () Bool)

(assert (=> b!16565 (= e!9008 e!9009)))

(declare-fun res!6756 () Bool)

(assert (=> b!16565 (=> (not res!6756) (not e!9009))))

(assert (=> b!16565 (= res!6756 (not (isEmpty!275 (left!655 (right!658 (_2!53 res!5662))))))))

(declare-fun b!16566 () Bool)

(declare-fun res!6757 () Bool)

(assert (=> b!16566 (=> (not res!6757) (not e!9009))))

(assert (=> b!16566 (= res!6757 (not (isEmpty!275 (right!658 (right!658 (_2!53 res!5662))))))))

(assert (= (and d!11851 (not res!6759)) b!16565))

(assert (= (and b!16565 res!6756) b!16566))

(assert (= (and b!16566 res!6757) b!16567))

(assert (= (and b!16567 res!6758) b!16568))

(declare-fun m!20001 () Bool)

(assert (=> b!16567 m!20001))

(declare-fun m!20003 () Bool)

(assert (=> b!16568 m!20003))

(declare-fun m!20005 () Bool)

(assert (=> b!16565 m!20005))

(declare-fun m!20007 () Bool)

(assert (=> b!16566 m!20007))

(assert (=> b!16298 d!11851))

(declare-fun d!11853 () Bool)

(declare-fun e!9010 () Bool)

(assert (=> d!11853 e!9010))

(declare-fun res!6760 () Bool)

(assert (=> d!11853 (=> res!6760 e!9010)))

(assert (=> d!11853 (= res!6760 (not (is-CC!10 (left!655 xs!637))))))

(assert (=> d!11853 (= (instSplitAxiom!8 (left!655 xs!637) n!315) true)))

(declare-fun b!16569 () Bool)

(assert (=> b!16569 (= e!9010 (appendTakeDrop!5 (toList!84 (left!655 (left!655 xs!637))) (toList!84 (right!658 (left!655 xs!637))) n!315))))

(assert (= (and d!11853 (not res!6760)) b!16569))

(assert (=> b!16569 m!19911))

(assert (=> b!16569 m!19913))

(assert (=> b!16569 m!19911))

(assert (=> b!16569 m!19913))

(declare-fun m!20009 () Bool)

(assert (=> b!16569 m!20009))

(assert (=> b!16342 d!11853))

(assert (=> b!16351 d!11811))

(declare-fun b!16571 () Bool)

(declare-fun e!9011 () Int)

(declare-fun lt!2419 () Int)

(declare-fun lt!2421 () Int)

(assert (=> b!16571 (= e!9011 (+ 1 (ite (>= lt!2419 lt!2421) lt!2419 lt!2421)))))

(assert (=> b!16571 (= lt!2421 (level!10 (right!658 (_1!53 lt!2368))))))

(assert (=> b!16571 (= lt!2419 (level!10 (left!655 (_1!53 lt!2368))))))

(declare-fun d!11855 () Bool)

(declare-fun lt!2420 () Int)

(assert (=> d!11855 (>= lt!2420 0)))

(assert (=> d!11855 (= lt!2420 e!9011)))

(declare-fun c!4333 () Bool)

(assert (=> d!11855 (= c!4333 (or (is-Empty!21 (_1!53 lt!2368)) (is-Single!10 (_1!53 lt!2368))))))

(assert (=> d!11855 (= (level!10 (_1!53 lt!2368)) lt!2420)))

(declare-fun b!16570 () Bool)

(assert (=> b!16570 (= e!9011 0)))

(assert (= (and d!11855 c!4333) b!16570))

(assert (= (and d!11855 (not c!4333)) b!16571))

(declare-fun m!20011 () Bool)

(assert (=> b!16571 m!20011))

(declare-fun m!20013 () Bool)

(assert (=> b!16571 m!20013))

(assert (=> b!16351 d!11855))

(assert (=> b!16219 d!11807))

(assert (=> b!16219 d!11805))

(assert (=> b!16291 d!11833))

(assert (=> b!16291 d!11831))

(declare-fun b!16573 () Bool)

(declare-fun res!6762 () Bool)

(declare-fun e!9012 () Bool)

(assert (=> b!16573 (=> (not res!6762) (not e!9012))))

(assert (=> b!16573 (= res!6762 (<= (- (level!10 (left!655 (right!658 xs!637))) (level!10 (right!658 (right!658 xs!637)))) 1))))

(declare-fun b!16575 () Bool)

(assert (=> b!16575 (= e!9012 (balanced!11 (right!658 (right!658 xs!637))))))

(declare-fun d!11857 () Bool)

(declare-fun res!6761 () Bool)

(declare-fun e!9013 () Bool)

(assert (=> d!11857 (=> res!6761 e!9013)))

(assert (=> d!11857 (= res!6761 (not (is-CC!10 (right!658 xs!637))))))

(assert (=> d!11857 (= (balanced!11 (right!658 xs!637)) e!9013)))

(declare-fun b!16574 () Bool)

(declare-fun res!6763 () Bool)

(assert (=> b!16574 (=> (not res!6763) (not e!9012))))

(assert (=> b!16574 (= res!6763 (balanced!11 (left!655 (right!658 xs!637))))))

(declare-fun b!16572 () Bool)

(assert (=> b!16572 (= e!9013 e!9012)))

(declare-fun res!6764 () Bool)

(assert (=> b!16572 (=> (not res!6764) (not e!9012))))

(assert (=> b!16572 (= res!6764 (>= (- (level!10 (left!655 (right!658 xs!637))) (level!10 (right!658 (right!658 xs!637)))) (- 1)))))

(assert (= (and d!11857 (not res!6761)) b!16572))

(assert (= (and b!16572 res!6764) b!16573))

(assert (= (and b!16573 res!6762) b!16574))

(assert (= (and b!16574 res!6763) b!16575))

(assert (=> b!16573 m!19779))

(assert (=> b!16573 m!19777))

(declare-fun m!20015 () Bool)

(assert (=> b!16575 m!20015))

(declare-fun m!20017 () Bool)

(assert (=> b!16574 m!20017))

(assert (=> b!16572 m!19779))

(assert (=> b!16572 m!19777))

(assert (=> b!16255 d!11857))

(assert (=> b!16337 d!11811))

(declare-fun b!16577 () Bool)

(declare-fun e!9014 () Int)

(declare-fun lt!2422 () Int)

(declare-fun lt!2424 () Int)

(assert (=> b!16577 (= e!9014 (+ 1 (ite (>= lt!2422 lt!2424) lt!2422 lt!2424)))))

(assert (=> b!16577 (= lt!2424 (level!10 (right!658 (_2!53 lt!2368))))))

(assert (=> b!16577 (= lt!2422 (level!10 (left!655 (_2!53 lt!2368))))))

(declare-fun d!11859 () Bool)

(declare-fun lt!2423 () Int)

(assert (=> d!11859 (>= lt!2423 0)))

(assert (=> d!11859 (= lt!2423 e!9014)))

(declare-fun c!4334 () Bool)

(assert (=> d!11859 (= c!4334 (or (is-Empty!21 (_2!53 lt!2368)) (is-Single!10 (_2!53 lt!2368))))))

(assert (=> d!11859 (= (level!10 (_2!53 lt!2368)) lt!2423)))

(declare-fun b!16576 () Bool)

(assert (=> b!16576 (= e!9014 0)))

(assert (= (and d!11859 c!4334) b!16576))

(assert (= (and d!11859 (not c!4334)) b!16577))

(declare-fun m!20019 () Bool)

(assert (=> b!16577 m!20019))

(declare-fun m!20021 () Bool)

(assert (=> b!16577 m!20021))

(assert (=> b!16337 d!11859))

(declare-fun d!11861 () Bool)

(assert (=> d!11861 (= (isEmpty!275 (right!658 xs!637)) (= (right!658 xs!637) Empty!21))))

(assert (=> b!16288 d!11861))

(declare-fun d!11863 () Bool)

(assert (=> d!11863 (= (isEmpty!275 (right!658 (_2!53 res!5662))) (= (right!658 (_2!53 res!5662)) Empty!21))))

(assert (=> b!16296 d!11863))

(assert (=> b!16251 d!11787))

(assert (=> b!16251 d!11789))

(assert (=> b!16251 d!11791))

(declare-fun d!11865 () Bool)

(declare-fun lt!2425 () List!324)

(assert (=> d!11865 (= (size!193 lt!2425) (size!192 (_1!53 res!5662)))))

(declare-fun e!9016 () List!324)

(assert (=> d!11865 (= lt!2425 e!9016)))

(declare-fun c!4336 () Bool)

(assert (=> d!11865 (= c!4336 (is-Empty!21 (_1!53 res!5662)))))

(assert (=> d!11865 (= (toList!84 (_1!53 res!5662)) lt!2425)))

(declare-fun b!16581 () Bool)

(declare-fun e!9015 () List!324)

(assert (=> b!16581 (= e!9015 (++!9 (toList!84 (left!655 (_1!53 res!5662))) (toList!84 (right!658 (_1!53 res!5662)))))))

(declare-fun b!16579 () Bool)

(assert (=> b!16579 (= e!9016 e!9015)))

(declare-fun c!4335 () Bool)

(assert (=> b!16579 (= c!4335 (is-Single!10 (_1!53 res!5662)))))

(declare-fun b!16578 () Bool)

(assert (=> b!16578 (= e!9016 Nil!319)))

(declare-fun b!16580 () Bool)

(assert (=> b!16580 (= e!9015 (Cons!318 (x!8708 (_1!53 res!5662)) Nil!319))))

(assert (= (and b!16579 c!4335) b!16580))

(assert (= (and b!16579 (not c!4335)) b!16581))

(assert (= (and d!11865 c!4336) b!16578))

(assert (= (and d!11865 (not c!4336)) b!16579))

(declare-fun m!20023 () Bool)

(assert (=> d!11865 m!20023))

(declare-fun m!20025 () Bool)

(assert (=> d!11865 m!20025))

(declare-fun m!20027 () Bool)

(assert (=> b!16581 m!20027))

(declare-fun m!20029 () Bool)

(assert (=> b!16581 m!20029))

(assert (=> b!16581 m!20027))

(assert (=> b!16581 m!20029))

(declare-fun m!20031 () Bool)

(assert (=> b!16581 m!20031))

(assert (=> d!11779 d!11865))

(declare-fun d!11867 () Bool)

(declare-fun e!9028 () Bool)

(assert (=> d!11867 e!9028))

(declare-fun res!6768 () Bool)

(assert (=> d!11867 (=> (not res!6768) (not e!9028))))

(declare-fun lt!2428 () List!324)

(assert (=> d!11867 (= res!6768 (subset (content!54 lt!2428) (content!54 (toList!84 xs!637))))))

(declare-fun e!9025 () List!324)

(assert (=> d!11867 (= lt!2428 e!9025)))

(declare-fun c!4345 () Bool)

(assert (=> d!11867 (= c!4345 (or (is-Nil!319 (toList!84 xs!637)) (<= n!315 0)))))

(assert (=> d!11867 (= (take!9 (toList!84 xs!637) n!315) lt!2428)))

(declare-fun b!16596 () Bool)

(declare-fun e!9027 () Int)

(assert (=> b!16596 (= e!9027 0)))

(declare-fun b!16597 () Bool)

(assert (=> b!16597 (= e!9025 (Cons!318 (h!232 (toList!84 xs!637)) (take!9 (t!4291 (toList!84 xs!637)) (- n!315 1))))))

(declare-fun b!16598 () Bool)

(declare-fun e!9026 () Int)

(assert (=> b!16598 (= e!9026 (size!193 (toList!84 xs!637)))))

(declare-fun b!16599 () Bool)

(assert (=> b!16599 (= e!9027 e!9026)))

(declare-fun c!4344 () Bool)

(assert (=> b!16599 (= c!4344 (>= n!315 (size!193 (toList!84 xs!637))))))

(declare-fun b!16600 () Bool)

(assert (=> b!16600 (= e!9025 Nil!319)))

(declare-fun b!16601 () Bool)

(assert (=> b!16601 (= e!9028 (= (size!193 lt!2428) e!9027))))

(declare-fun c!4343 () Bool)

(assert (=> b!16601 (= c!4343 (<= n!315 0))))

(declare-fun b!16602 () Bool)

(assert (=> b!16602 (= e!9026 n!315)))

(assert (= (and d!11867 c!4345) b!16600))

(assert (= (and d!11867 (not c!4345)) b!16597))

(assert (= (and d!11867 res!6768) b!16601))

(assert (= (and b!16599 c!4344) b!16598))

(assert (= (and b!16599 (not c!4344)) b!16602))

(assert (= (and b!16601 c!4343) b!16596))

(assert (= (and b!16601 (not c!4343)) b!16599))

(assert (=> b!16598 m!19731))

(assert (=> b!16598 m!19859))

(assert (=> b!16599 m!19731))

(assert (=> b!16599 m!19859))

(declare-fun m!20033 () Bool)

(assert (=> b!16601 m!20033))

(declare-fun m!20035 () Bool)

(assert (=> b!16597 m!20035))

(declare-fun m!20037 () Bool)

(assert (=> d!11867 m!20037))

(assert (=> d!11867 m!19731))

(assert (=> d!11867 m!19863))

(assert (=> d!11779 d!11867))

(assert (=> d!11779 d!11803))

(assert (=> b!16289 d!11843))

(declare-fun b!16604 () Bool)

(declare-fun res!6770 () Bool)

(declare-fun e!9029 () Bool)

(assert (=> b!16604 (=> (not res!6770) (not e!9029))))

(assert (=> b!16604 (= res!6770 (<= (- (level!10 (left!655 lt!2367)) (level!10 (right!658 lt!2367))) 1))))

(declare-fun b!16606 () Bool)

(assert (=> b!16606 (= e!9029 (balanced!11 (right!658 lt!2367)))))

(declare-fun d!11869 () Bool)

(declare-fun res!6769 () Bool)

(declare-fun e!9030 () Bool)

(assert (=> d!11869 (=> res!6769 e!9030)))

(assert (=> d!11869 (= res!6769 (not (is-CC!10 lt!2367)))))

(assert (=> d!11869 (= (balanced!11 lt!2367) e!9030)))

(declare-fun b!16605 () Bool)

(declare-fun res!6771 () Bool)

(assert (=> b!16605 (=> (not res!6771) (not e!9029))))

(assert (=> b!16605 (= res!6771 (balanced!11 (left!655 lt!2367)))))

(declare-fun b!16603 () Bool)

(assert (=> b!16603 (= e!9030 e!9029)))

(declare-fun res!6772 () Bool)

(assert (=> b!16603 (=> (not res!6772) (not e!9029))))

(assert (=> b!16603 (= res!6772 (>= (- (level!10 (left!655 lt!2367)) (level!10 (right!658 lt!2367))) (- 1)))))

(assert (= (and d!11869 (not res!6769)) b!16603))

(assert (= (and b!16603 res!6772) b!16604))

(assert (= (and b!16604 res!6770) b!16605))

(assert (= (and b!16605 res!6771) b!16606))

(declare-fun m!20039 () Bool)

(assert (=> b!16604 m!20039))

(declare-fun m!20041 () Bool)

(assert (=> b!16604 m!20041))

(declare-fun m!20043 () Bool)

(assert (=> b!16606 m!20043))

(declare-fun m!20045 () Bool)

(assert (=> b!16605 m!20045))

(assert (=> b!16603 m!20039))

(assert (=> b!16603 m!20041))

(assert (=> b!16339 d!11869))

(declare-fun d!11871 () Bool)

(declare-fun res!6776 () Bool)

(declare-fun e!9031 () Bool)

(assert (=> d!11871 (=> res!6776 e!9031)))

(assert (=> d!11871 (= res!6776 (not (is-CC!10 (left!655 (_1!53 res!5662)))))))

(assert (=> d!11871 (= (concInv!10 (left!655 (_1!53 res!5662))) e!9031)))

(declare-fun b!16609 () Bool)

(declare-fun res!6775 () Bool)

(declare-fun e!9032 () Bool)

(assert (=> b!16609 (=> (not res!6775) (not e!9032))))

(assert (=> b!16609 (= res!6775 (concInv!10 (left!655 (left!655 (_1!53 res!5662)))))))

(declare-fun b!16610 () Bool)

(assert (=> b!16610 (= e!9032 (concInv!10 (right!658 (left!655 (_1!53 res!5662)))))))

(declare-fun b!16607 () Bool)

(assert (=> b!16607 (= e!9031 e!9032)))

(declare-fun res!6773 () Bool)

(assert (=> b!16607 (=> (not res!6773) (not e!9032))))

(assert (=> b!16607 (= res!6773 (not (isEmpty!275 (left!655 (left!655 (_1!53 res!5662))))))))

(declare-fun b!16608 () Bool)

(declare-fun res!6774 () Bool)

(assert (=> b!16608 (=> (not res!6774) (not e!9032))))

(assert (=> b!16608 (= res!6774 (not (isEmpty!275 (right!658 (left!655 (_1!53 res!5662))))))))

(assert (= (and d!11871 (not res!6776)) b!16607))

(assert (= (and b!16607 res!6773) b!16608))

(assert (= (and b!16608 res!6774) b!16609))

(assert (= (and b!16609 res!6775) b!16610))

(declare-fun m!20047 () Bool)

(assert (=> b!16609 m!20047))

(declare-fun m!20049 () Bool)

(assert (=> b!16610 m!20049))

(declare-fun m!20051 () Bool)

(assert (=> b!16607 m!20051))

(declare-fun m!20053 () Bool)

(assert (=> b!16608 m!20053))

(assert (=> b!16354 d!11871))

(declare-fun b!16612 () Bool)

(declare-fun res!6778 () Bool)

(declare-fun e!9033 () Bool)

(assert (=> b!16612 (=> (not res!6778) (not e!9033))))

(assert (=> b!16612 (= res!6778 (<= (- (level!10 (left!655 (left!655 xs!637))) (level!10 (right!658 (left!655 xs!637)))) 1))))

(declare-fun b!16614 () Bool)

(assert (=> b!16614 (= e!9033 (balanced!11 (right!658 (left!655 xs!637))))))

(declare-fun d!11873 () Bool)

(declare-fun res!6777 () Bool)

(declare-fun e!9034 () Bool)

(assert (=> d!11873 (=> res!6777 e!9034)))

(assert (=> d!11873 (= res!6777 (not (is-CC!10 (left!655 xs!637))))))

(assert (=> d!11873 (= (balanced!11 (left!655 xs!637)) e!9034)))

(declare-fun b!16613 () Bool)

(declare-fun res!6779 () Bool)

(assert (=> b!16613 (=> (not res!6779) (not e!9033))))

(assert (=> b!16613 (= res!6779 (balanced!11 (left!655 (left!655 xs!637))))))

(declare-fun b!16611 () Bool)

(assert (=> b!16611 (= e!9034 e!9033)))

(declare-fun res!6780 () Bool)

(assert (=> b!16611 (=> (not res!6780) (not e!9033))))

(assert (=> b!16611 (= res!6780 (>= (- (level!10 (left!655 (left!655 xs!637))) (level!10 (right!658 (left!655 xs!637)))) (- 1)))))

(assert (= (and d!11873 (not res!6777)) b!16611))

(assert (= (and b!16611 res!6780) b!16612))

(assert (= (and b!16612 res!6778) b!16613))

(assert (= (and b!16613 res!6779) b!16614))

(assert (=> b!16612 m!19795))

(assert (=> b!16612 m!19825))

(assert (=> b!16614 m!19811))

(assert (=> b!16613 m!19805))

(assert (=> b!16611 m!19795))

(assert (=> b!16611 m!19825))

(assert (=> b!16348 d!11873))

(declare-fun lt!2472 () Int)

(declare-fun lt!2469 () Int)

(declare-fun b!16657 () Bool)

(declare-fun e!9054 () Conc!11)

(declare-fun lt!2467 () Bool)

(assert (=> b!16657 (= e!9054 (concatNonEmpty!3 (ite lt!2467 (ite (>= lt!2472 lt!2469) (right!658 lr!32) (right!658 (right!658 lr!32))) lr!32) (ite lt!2467 (right!658 xs!637) (ite (>= lt!2472 lt!2469) (left!655 (right!658 xs!637)) (left!655 (left!655 (right!658 xs!637)))))))))

(declare-fun b!16658 () Bool)

(declare-fun e!9061 () Bool)

(assert (=> b!16658 (= e!9061 (not (isEmpty!275 (right!658 xs!637))))))

(declare-fun b!16659 () Bool)

(declare-fun e!9057 () Conc!11)

(assert (=> b!16659 (= e!9057 (CC!10 lr!32 (right!658 xs!637)))))

(declare-fun b!16660 () Bool)

(declare-fun lt!2471 () Int)

(declare-fun lt!2464 () Conc!11)

(declare-fun lt!2474 () Int)

(declare-fun lt!2473 () Bool)

(assert (=> b!16660 (= e!9057 (ite lt!2473 (let ((res!6784 lt!2464)) (ite (>= lt!2472 lt!2469) (CC!10 (left!655 lr!32) res!6784) (ite (= lt!2474 (- lt!2471 3)) (CC!10 (left!655 lr!32) (CC!10 (left!655 (right!658 lr!32)) res!6784)) (CC!10 (CC!10 (left!655 lr!32) (left!655 (right!658 lr!32))) res!6784)))) (let ((res!6787 lt!2464)) (ite (>= lt!2472 lt!2469) (CC!10 res!6787 (right!658 (right!658 xs!637))) (ite (= lt!2474 (- lt!2471 3)) (CC!10 (CC!10 res!6787 (right!658 (left!655 (right!658 xs!637)))) (right!658 (right!658 xs!637))) (CC!10 res!6787 (CC!10 (right!658 (left!655 (right!658 xs!637))) (right!658 (right!658 xs!637)))))))))))

(declare-fun e!9055 () Int)

(assert (=> b!16660 (= lt!2471 e!9055)))

(declare-fun c!4357 () Bool)

(declare-fun lt!2476 () Bool)

(assert (=> b!16660 (= c!4357 (or lt!2476 (and (not lt!2473) (not (>= lt!2472 lt!2469)))))))

(assert (=> b!16660 (= lt!2476 (and lt!2473 (not (>= lt!2472 lt!2469))))))

(declare-fun e!9056 () Int)

(assert (=> b!16660 (= lt!2474 e!9056)))

(declare-fun c!4354 () Bool)

(assert (=> b!16660 (= c!4354 (or (and lt!2473 (not (>= lt!2472 lt!2469))) (and (not lt!2473) (not (>= lt!2472 lt!2469)))))))

(assert (=> b!16660 (= lt!2464 e!9054)))

(declare-fun c!4356 () Bool)

(assert (=> b!16660 (= c!4356 (or lt!2467 (not lt!2473)))))

(assert (=> b!16660 (= lt!2467 lt!2473)))

(assert (=> b!16660 (= lt!2469 (level!10 (ite lt!2473 (right!658 lr!32) (left!655 (right!658 xs!637)))))))

(assert (=> b!16660 (= lt!2472 (level!10 (ite lt!2473 (left!655 lr!32) (right!658 (right!658 xs!637)))))))

(declare-fun lt!2465 () Int)

(assert (=> b!16660 (= lt!2473 (< lt!2465 (- 1)))))

(declare-fun b!16661 () Bool)

(declare-fun res!6847 () Bool)

(assert (=> b!16661 (=> (not res!6847) (not e!9061))))

(assert (=> b!16661 (= res!6847 (concInv!10 (right!658 xs!637)))))

(declare-fun b!16662 () Bool)

(declare-fun e!9060 () Bool)

(declare-fun e!9058 () Bool)

(assert (=> b!16662 (= e!9060 e!9058)))

(declare-fun res!6846 () Bool)

(assert (=> b!16662 (=> (not res!6846) (not e!9058))))

(declare-fun lt!2468 () Int)

(declare-fun lt!2463 () Int)

(declare-fun lt!2470 () Int)

(assert (=> b!16662 (= res!6846 (<= lt!2463 (+ (ite (>= lt!2468 lt!2470) lt!2468 lt!2470) 1)))))

(assert (=> b!16662 (= lt!2470 (level!10 (right!658 xs!637)))))

(assert (=> b!16662 (= lt!2468 (level!10 lr!32))))

(declare-fun lt!2475 () Conc!11)

(assert (=> b!16662 (= lt!2463 (level!10 lt!2475))))

(declare-fun b!16663 () Bool)

(declare-fun res!6843 () Bool)

(assert (=> b!16663 (=> (not res!6843) (not e!9058))))

(declare-fun lt!2461 () Int)

(declare-fun lt!2466 () Int)

(declare-fun lt!2462 () Int)

(assert (=> b!16663 (= res!6843 (>= lt!2462 (ite (>= lt!2461 lt!2466) lt!2461 lt!2466)))))

(assert (=> b!16663 (= lt!2466 (level!10 (right!658 xs!637)))))

(assert (=> b!16663 (= lt!2461 (level!10 lr!32))))

(assert (=> b!16663 (= lt!2462 (level!10 lt!2475))))

(declare-fun b!16664 () Bool)

(declare-fun e!9059 () Bool)

(declare-fun tp!3924 () Bool)

(declare-fun tp!3923 () Bool)

(assert (=> b!16664 (= e!9059 (and tp!3924 tp!3923))))

(declare-fun d!11875 () Bool)

(assert (=> d!11875 e!9060))

(declare-fun res!6840 () Bool)

(assert (=> d!11875 (=> (not res!6840) (not e!9060))))

(assert (=> d!11875 (= res!6840 (is-CC!10 lt!2475))))

(assert (=> d!11875 (= lt!2475 e!9057)))

(declare-fun c!4355 () Bool)

(assert (=> d!11875 (= c!4355 (and (>= lt!2465 (- 1)) (<= lt!2465 1)))))

(assert (=> d!11875 (= lt!2465 (- (level!10 (right!658 xs!637)) (level!10 lr!32)))))

(assert (=> d!11875 e!9061))

(declare-fun res!6845 () Bool)

(assert (=> d!11875 (=> (not res!6845) (not e!9061))))

(declare-fun e!9053 () Bool)

(assert (=> d!11875 (= res!6845 e!9053)))

(declare-fun res!6838 () Bool)

(assert (=> d!11875 (=> (not res!6838) (not e!9053))))

(assert (=> d!11875 (= res!6838 (concInv!10 lr!32))))

(assert (=> d!11875 (= (concatNonEmpty!3 lr!32 (right!658 xs!637)) lt!2475)))

(declare-fun b!16665 () Bool)

(declare-fun res!6835 () Bool)

(assert (=> b!16665 (=> (not res!6835) (not e!9058))))

(declare-fun appendAssocInst!3 (Conc!11 Conc!11) Bool)

(assert (=> b!16665 (= res!6835 (appendAssocInst!3 lr!32 (right!658 xs!637)))))

(declare-fun b!16666 () Bool)

(assert (=> b!16666 (= e!9059 tp_is_empty!57)))

(declare-fun b!16667 () Bool)

(declare-fun res!6841 () Int)

(assert (=> b!16667 (= e!9056 res!6841)))

(assert (=> b!16667 true))

(declare-fun b!16668 () Bool)

(declare-fun res!6842 () Bool)

(assert (=> b!16668 (=> (not res!6842) (not e!9058))))

(assert (=> b!16668 (= res!6842 (concInv!10 lt!2475))))

(declare-fun b!16669 () Bool)

(assert (=> b!16669 (= e!9053 (balanced!11 lr!32))))

(declare-fun b!16670 () Bool)

(assert (=> b!16670 (= e!9058 (concatCorrectness!1 lt!2475 lr!32 (right!658 xs!637)))))

(declare-fun b!16671 () Bool)

(declare-fun res!6837 () Bool)

(assert (=> b!16671 (=> (not res!6837) (not e!9061))))

(assert (=> b!16671 (= res!6837 (balanced!11 (right!658 xs!637)))))

(declare-fun b!16672 () Bool)

(assert (=> b!16672 (= e!9055 (level!10 (ite lt!2476 lr!32 (right!658 xs!637))))))

(declare-fun b!16673 () Bool)

(assert (=> b!16673 (= e!9056 (level!10 lt!2464))))

(declare-fun b!16674 () Bool)

(declare-fun res!6844 () Bool)

(assert (=> b!16674 (=> (not res!6844) (not e!9061))))

(assert (=> b!16674 (= res!6844 (not (isEmpty!275 lr!32)))))

(declare-fun b!16675 () Bool)

(declare-fun res!6839 () Conc!11)

(assert (=> b!16675 (= e!9054 res!6839)))

(assert (=> b!16675 true))

(assert (=> b!16675 e!9059))

(declare-fun b!16676 () Bool)

(declare-fun res!6848 () Int)

(assert (=> b!16676 (= e!9055 res!6848)))

(assert (=> b!16676 true))

(assert (=> b!16676 true))

(declare-fun b!16677 () Bool)

(declare-fun res!6836 () Bool)

(assert (=> b!16677 (=> (not res!6836) (not e!9058))))

(assert (=> b!16677 (= res!6836 (balanced!11 lt!2475))))

(assert (= (and d!11875 res!6838) b!16669))

(assert (= (and d!11875 res!6845) b!16661))

(assert (= (and b!16661 res!6847) b!16671))

(assert (= (and b!16671 res!6837) b!16674))

(assert (= (and b!16674 res!6844) b!16658))

(assert (= (and b!16675 (is-CC!10 res!6839)) b!16664))

(assert (= (and b!16675 (is-Single!10 res!6839)) b!16666))

(assert (= (and b!16660 c!4356) b!16657))

(assert (= (and b!16660 (not c!4356)) b!16675))

(assert (= (and b!16660 c!4354) b!16673))

(assert (= (and b!16660 (not c!4354)) b!16667))

(assert (= (and b!16660 c!4357) b!16672))

(assert (= (and b!16660 (not c!4357)) b!16676))

(assert (= (and d!11875 c!4355) b!16659))

(assert (= (and d!11875 (not c!4355)) b!16660))

(assert (= (and d!11875 res!6840) b!16662))

(assert (= (and b!16662 res!6846) b!16663))

(assert (= (and b!16663 res!6843) b!16668))

(assert (= (and b!16668 res!6842) b!16677))

(assert (= (and b!16677 res!6836) b!16665))

(assert (= (and b!16665 res!6835) b!16670))

(assert (=> b!16663 m!19679))

(assert (=> b!16663 m!19689))

(declare-fun m!20055 () Bool)

(assert (=> b!16663 m!20055))

(assert (=> b!16671 m!19681))

(declare-fun m!20057 () Bool)

(assert (=> b!16677 m!20057))

(declare-fun m!20059 () Bool)

(assert (=> b!16672 m!20059))

(assert (=> b!16669 m!19697))

(assert (=> d!11875 m!19679))

(assert (=> d!11875 m!19689))

(assert (=> d!11875 m!19695))

(declare-fun m!20061 () Bool)

(assert (=> b!16668 m!20061))

(assert (=> b!16658 m!19711))

(declare-fun m!20063 () Bool)

(assert (=> b!16674 m!20063))

(declare-fun m!20065 () Bool)

(assert (=> b!16673 m!20065))

(declare-fun m!20067 () Bool)

(assert (=> b!16665 m!20067))

(assert (=> b!16662 m!19679))

(assert (=> b!16662 m!19689))

(assert (=> b!16662 m!20055))

(declare-fun m!20069 () Bool)

(assert (=> b!16670 m!20069))

(assert (=> b!16661 m!19685))

(declare-fun m!20071 () Bool)

(assert (=> b!16657 m!20071))

(declare-fun m!20073 () Bool)

(assert (=> b!16660 m!20073))

(declare-fun m!20075 () Bool)

(assert (=> b!16660 m!20075))

(assert (=> b!16253 d!11875))

(declare-fun d!11877 () Bool)

(declare-fun res!6852 () Bool)

(declare-fun e!9062 () Bool)

(assert (=> d!11877 (=> res!6852 e!9062)))

(assert (=> d!11877 (= res!6852 (not (is-CC!10 (left!655 (_2!53 res!5662)))))))

(assert (=> d!11877 (= (concInv!10 (left!655 (_2!53 res!5662))) e!9062)))

(declare-fun b!16680 () Bool)

(declare-fun res!6851 () Bool)

(declare-fun e!9063 () Bool)

(assert (=> b!16680 (=> (not res!6851) (not e!9063))))

(assert (=> b!16680 (= res!6851 (concInv!10 (left!655 (left!655 (_2!53 res!5662)))))))

(declare-fun b!16681 () Bool)

(assert (=> b!16681 (= e!9063 (concInv!10 (right!658 (left!655 (_2!53 res!5662)))))))

(declare-fun b!16678 () Bool)

(assert (=> b!16678 (= e!9062 e!9063)))

(declare-fun res!6849 () Bool)

(assert (=> b!16678 (=> (not res!6849) (not e!9063))))

(assert (=> b!16678 (= res!6849 (not (isEmpty!275 (left!655 (left!655 (_2!53 res!5662))))))))

(declare-fun b!16679 () Bool)

(declare-fun res!6850 () Bool)

(assert (=> b!16679 (=> (not res!6850) (not e!9063))))

(assert (=> b!16679 (= res!6850 (not (isEmpty!275 (right!658 (left!655 (_2!53 res!5662))))))))

(assert (= (and d!11877 (not res!6852)) b!16678))

(assert (= (and b!16678 res!6849) b!16679))

(assert (= (and b!16679 res!6850) b!16680))

(assert (= (and b!16680 res!6851) b!16681))

(declare-fun m!20077 () Bool)

(assert (=> b!16680 m!20077))

(declare-fun m!20079 () Bool)

(assert (=> b!16681 m!20079))

(declare-fun m!20081 () Bool)

(assert (=> b!16678 m!20081))

(declare-fun m!20083 () Bool)

(assert (=> b!16679 m!20083))

(assert (=> b!16297 d!11877))

(assert (=> b!16225 d!11857))

(declare-fun d!11879 () Bool)

(declare-fun res!6853 () Bool)

(declare-fun e!9064 () Bool)

(assert (=> d!11879 (=> (not res!6853) (not e!9064))))

(assert (=> d!11879 (= res!6853 (= (toList!84 (_1!53 lt!2368)) (take!9 (toList!84 (left!655 xs!637)) n!315)))))

(assert (=> d!11879 (= (splitCorrectness!6 lt!2368 (left!655 xs!637) n!315) e!9064)))

(declare-fun b!16682 () Bool)

(assert (=> b!16682 (= e!9064 (= (toList!84 (_2!53 lt!2368)) (drop!7 (toList!84 (left!655 xs!637)) n!315)))))

(assert (= (and d!11879 res!6853) b!16682))

(declare-fun m!20085 () Bool)

(assert (=> d!11879 m!20085))

(assert (=> d!11879 m!19771))

(assert (=> d!11879 m!19771))

(assert (=> d!11879 m!19903))

(declare-fun m!20087 () Bool)

(assert (=> b!16682 m!20087))

(assert (=> b!16682 m!19771))

(assert (=> b!16682 m!19771))

(assert (=> b!16682 m!19899))

(assert (=> b!16336 d!11879))

(declare-fun b!16684 () Bool)

(declare-fun res!6855 () Bool)

(declare-fun e!9065 () Bool)

(assert (=> b!16684 (=> (not res!6855) (not e!9065))))

(assert (=> b!16684 (= res!6855 (<= (- (level!10 (left!655 (left!655 (_2!53 res!5662)))) (level!10 (right!658 (left!655 (_2!53 res!5662))))) 1))))

(declare-fun b!16686 () Bool)

(assert (=> b!16686 (= e!9065 (balanced!11 (right!658 (left!655 (_2!53 res!5662)))))))

(declare-fun d!11881 () Bool)

(declare-fun res!6854 () Bool)

(declare-fun e!9066 () Bool)

(assert (=> d!11881 (=> res!6854 e!9066)))

(assert (=> d!11881 (= res!6854 (not (is-CC!10 (left!655 (_2!53 res!5662)))))))

(assert (=> d!11881 (= (balanced!11 (left!655 (_2!53 res!5662))) e!9066)))

(declare-fun b!16685 () Bool)

(declare-fun res!6856 () Bool)

(assert (=> b!16685 (=> (not res!6856) (not e!9065))))

(assert (=> b!16685 (= res!6856 (balanced!11 (left!655 (left!655 (_2!53 res!5662)))))))

(declare-fun b!16683 () Bool)

(assert (=> b!16683 (= e!9066 e!9065)))

(declare-fun res!6857 () Bool)

(assert (=> b!16683 (=> (not res!6857) (not e!9065))))

(assert (=> b!16683 (= res!6857 (>= (- (level!10 (left!655 (left!655 (_2!53 res!5662)))) (level!10 (right!658 (left!655 (_2!53 res!5662))))) (- 1)))))

(assert (= (and d!11881 (not res!6854)) b!16683))

(assert (= (and b!16683 res!6857) b!16684))

(assert (= (and b!16684 res!6855) b!16685))

(assert (= (and b!16685 res!6856) b!16686))

(assert (=> b!16684 m!19879))

(assert (=> b!16684 m!19877))

(declare-fun m!20089 () Bool)

(assert (=> b!16686 m!20089))

(declare-fun m!20091 () Bool)

(assert (=> b!16685 m!20091))

(assert (=> b!16683 m!19879))

(assert (=> b!16683 m!19877))

(assert (=> b!16220 d!11881))

(assert (=> b!16340 d!11797))

(declare-fun d!11883 () Bool)

(assert (=> d!11883 (= (isEmpty!275 (right!658 (_1!53 res!5662))) (= (right!658 (_1!53 res!5662)) Empty!21))))

(assert (=> b!16353 d!11883))

(assert (=> b!16218 d!11807))

(assert (=> b!16218 d!11805))

(declare-fun d!11885 () Bool)

(declare-fun res!6861 () Bool)

(declare-fun e!9067 () Bool)

(assert (=> d!11885 (=> res!6861 e!9067)))

(assert (=> d!11885 (= res!6861 (not (is-CC!10 lt!2366)))))

(assert (=> d!11885 (= (concInv!10 lt!2366) e!9067)))

(declare-fun b!16689 () Bool)

(declare-fun res!6860 () Bool)

(declare-fun e!9068 () Bool)

(assert (=> b!16689 (=> (not res!6860) (not e!9068))))

(assert (=> b!16689 (= res!6860 (concInv!10 (left!655 lt!2366)))))

(declare-fun b!16690 () Bool)

(assert (=> b!16690 (= e!9068 (concInv!10 (right!658 lt!2366)))))

(declare-fun b!16687 () Bool)

(assert (=> b!16687 (= e!9067 e!9068)))

(declare-fun res!6858 () Bool)

(assert (=> b!16687 (=> (not res!6858) (not e!9068))))

(assert (=> b!16687 (= res!6858 (not (isEmpty!275 (left!655 lt!2366))))))

(declare-fun b!16688 () Bool)

(declare-fun res!6859 () Bool)

(assert (=> b!16688 (=> (not res!6859) (not e!9068))))

(assert (=> b!16688 (= res!6859 (not (isEmpty!275 (right!658 lt!2366))))))

(assert (= (and d!11885 (not res!6861)) b!16687))

(assert (= (and b!16687 res!6858) b!16688))

(assert (= (and b!16688 res!6859) b!16689))

(assert (= (and b!16689 res!6860) b!16690))

(declare-fun m!20093 () Bool)

(assert (=> b!16689 m!20093))

(declare-fun m!20095 () Bool)

(assert (=> b!16690 m!20095))

(declare-fun m!20097 () Bool)

(assert (=> b!16687 m!20097))

(declare-fun m!20099 () Bool)

(assert (=> b!16688 m!20099))

(assert (=> b!16344 d!11885))

(assert (=> b!16290 d!11809))

(assert (=> b!16224 d!11873))

(assert (=> b!16270 d!11797))

(declare-fun b!16694 () Bool)

(declare-fun e!9069 () Int)

(assert (=> b!16694 (= e!9069 (+ (size!192 (left!655 (right!658 (left!655 xs!637)))) (size!192 (right!658 (right!658 (left!655 xs!637))))))))

(declare-fun b!16692 () Bool)

(declare-fun e!9070 () Int)

(assert (=> b!16692 (= e!9070 e!9069)))

(declare-fun c!4358 () Bool)

(assert (=> b!16692 (= c!4358 (is-Single!10 (right!658 (left!655 xs!637))))))

(declare-fun b!16691 () Bool)

(assert (=> b!16691 (= e!9070 0)))

(declare-fun d!11887 () Bool)

(declare-fun lt!2477 () Int)

(assert (=> d!11887 (>= lt!2477 0)))

(assert (=> d!11887 (= lt!2477 e!9070)))

(declare-fun c!4359 () Bool)

(assert (=> d!11887 (= c!4359 (is-Empty!21 (right!658 (left!655 xs!637))))))

(assert (=> d!11887 (= (size!192 (right!658 (left!655 xs!637))) lt!2477)))

(declare-fun b!16693 () Bool)

(assert (=> b!16693 (= e!9069 1)))

(assert (= (and b!16692 c!4358) b!16693))

(assert (= (and b!16692 (not c!4358)) b!16694))

(assert (= (and d!11887 c!4359) b!16691))

(assert (= (and d!11887 (not c!4359)) b!16692))

(assert (=> b!16694 m!19819))

(declare-fun m!20101 () Bool)

(assert (=> b!16694 m!20101))

(assert (=> b!16270 d!11887))

(declare-fun b!16696 () Bool)

(declare-fun res!6863 () Bool)

(declare-fun e!9071 () Bool)

(assert (=> b!16696 (=> (not res!6863) (not e!9071))))

(assert (=> b!16696 (= res!6863 (<= (- (level!10 (left!655 (right!658 (_1!53 res!5662)))) (level!10 (right!658 (right!658 (_1!53 res!5662))))) 1))))

(declare-fun b!16698 () Bool)

(assert (=> b!16698 (= e!9071 (balanced!11 (right!658 (right!658 (_1!53 res!5662)))))))

(declare-fun d!11889 () Bool)

(declare-fun res!6862 () Bool)

(declare-fun e!9072 () Bool)

(assert (=> d!11889 (=> res!6862 e!9072)))

(assert (=> d!11889 (= res!6862 (not (is-CC!10 (right!658 (_1!53 res!5662)))))))

(assert (=> d!11889 (= (balanced!11 (right!658 (_1!53 res!5662))) e!9072)))

(declare-fun b!16697 () Bool)

(declare-fun res!6864 () Bool)

(assert (=> b!16697 (=> (not res!6864) (not e!9071))))

(assert (=> b!16697 (= res!6864 (balanced!11 (left!655 (right!658 (_1!53 res!5662)))))))

(declare-fun b!16695 () Bool)

(assert (=> b!16695 (= e!9072 e!9071)))

(declare-fun res!6865 () Bool)

(assert (=> b!16695 (=> (not res!6865) (not e!9071))))

(assert (=> b!16695 (= res!6865 (>= (- (level!10 (left!655 (right!658 (_1!53 res!5662)))) (level!10 (right!658 (right!658 (_1!53 res!5662))))) (- 1)))))

(assert (= (and d!11889 (not res!6862)) b!16695))

(assert (= (and b!16695 res!6865) b!16696))

(assert (= (and b!16696 res!6863) b!16697))

(assert (= (and b!16697 res!6864) b!16698))

(assert (=> b!16696 m!19943))

(assert (=> b!16696 m!19941))

(declare-fun m!20103 () Bool)

(assert (=> b!16698 m!20103))

(declare-fun m!20105 () Bool)

(assert (=> b!16697 m!20105))

(assert (=> b!16695 m!19943))

(assert (=> b!16695 m!19941))

(assert (=> b!16294 d!11889))

(declare-fun lt!2480 () tuple2!106)

(declare-fun e!9074 () Bool)

(declare-fun b!16699 () Bool)

(assert (=> b!16699 (= e!9074 (splitCorrectness!6 lt!2480 (left!655 (left!655 xs!637)) n!315))))

(declare-fun b!16700 () Bool)

(declare-fun res!6872 () Bool)

(assert (=> b!16700 (=> (not res!6872) (not e!9074))))

(assert (=> b!16700 (= res!6872 (>= (level!10 (left!655 (left!655 xs!637))) (level!10 (_2!53 lt!2480))))))

(declare-fun b!16701 () Bool)

(declare-fun e!9076 () tuple2!106)

(assert (=> b!16701 (= e!9076 (ite (<= n!315 0) (tuple2!107 Empty!21 (left!655 (left!655 xs!637))) (tuple2!107 (left!655 (left!655 xs!637)) Empty!21)))))

(declare-fun b!16702 () Bool)

(declare-fun e!9079 () Bool)

(declare-fun lt!2479 () Conc!11)

(assert (=> b!16702 (= e!9079 (balanced!11 lt!2479))))

(declare-fun b!16703 () Bool)

(declare-fun e!9077 () tuple2!106)

(declare-fun e!9073 () tuple2!106)

(assert (=> b!16703 (= e!9077 e!9073)))

(declare-fun c!4360 () Bool)

(assert (=> b!16703 (= c!4360 (> n!315 (size!192 (left!655 (left!655 (left!655 xs!637))))))))

(declare-fun b!16704 () Bool)

(declare-fun e!9075 () tuple2!106)

(assert (=> b!16704 (= e!9075 e!9076)))

(declare-fun c!4363 () Bool)

(assert (=> b!16704 (= c!4363 (is-Single!10 (left!655 (left!655 xs!637))))))

(declare-fun b!16705 () Bool)

(declare-fun res!6867 () Bool)

(assert (=> b!16705 (=> (not res!6867) (not e!9074))))

(assert (=> b!16705 (= res!6867 (instSplitAxiom!8 (left!655 (left!655 xs!637)) n!315))))

(declare-fun b!16706 () Bool)

(declare-fun e!9080 () Bool)

(declare-fun lt!2478 () Conc!11)

(assert (=> b!16706 (= e!9080 (balanced!11 lt!2478))))

(declare-fun b!16707 () Bool)

(declare-fun res!6868 () Bool)

(assert (=> b!16707 (=> (not res!6868) (not e!9074))))

(assert (=> b!16707 (= res!6868 e!9080)))

(declare-fun res!6871 () Bool)

(assert (=> b!16707 (=> (not res!6871) (not e!9080))))

(assert (=> b!16707 (= res!6871 (concInv!10 lt!2478))))

(assert (=> b!16707 (= lt!2478 (_2!53 lt!2480))))

(declare-fun b!16708 () Bool)

(assert (=> b!16708 (= e!9073 (tuple2!107 (left!655 (left!655 (left!655 xs!637))) (right!658 (left!655 (left!655 xs!637)))))))

(declare-fun b!16709 () Bool)

(assert (=> b!16709 (= e!9075 (tuple2!107 Empty!21 Empty!21))))

(declare-fun b!16710 () Bool)

(assert (=> b!16710 (= e!9073 (tuple2!107 (concatNormalized!5 (left!655 (left!655 (left!655 xs!637))) (_1!53 (split!10 (right!658 (left!655 (left!655 xs!637))) (- n!315 (size!192 (left!655 (left!655 (left!655 xs!637)))))))) (_2!53 (split!10 (right!658 (left!655 (left!655 xs!637))) (- n!315 (size!192 (left!655 (left!655 (left!655 xs!637)))))))))))

(declare-fun b!16711 () Bool)

(declare-fun e!9078 () Bool)

(assert (=> b!16711 (= e!9078 (balanced!11 (left!655 (left!655 xs!637))))))

(declare-fun b!16712 () Bool)

(assert (=> b!16712 (= e!9076 e!9077)))

(declare-fun c!4361 () Bool)

(assert (=> b!16712 (= c!4361 (< n!315 (size!192 (left!655 (left!655 (left!655 xs!637))))))))

(declare-fun b!16713 () Bool)

(assert (=> b!16713 (= e!9077 (tuple2!107 (_1!53 (split!10 (left!655 (left!655 (left!655 xs!637))) n!315)) (concatNormalized!5 (_2!53 (split!10 (left!655 (left!655 (left!655 xs!637))) n!315)) (right!658 (left!655 (left!655 xs!637))))))))

(declare-fun d!11891 () Bool)

(assert (=> d!11891 e!9074))

(declare-fun res!6866 () Bool)

(assert (=> d!11891 (=> (not res!6866) (not e!9074))))

(assert (=> d!11891 (= res!6866 e!9079)))

(declare-fun res!6869 () Bool)

(assert (=> d!11891 (=> (not res!6869) (not e!9079))))

(assert (=> d!11891 (= res!6869 (concInv!10 lt!2479))))

(assert (=> d!11891 (= lt!2479 (_1!53 lt!2480))))

(assert (=> d!11891 (= lt!2480 e!9075)))

(declare-fun c!4362 () Bool)

(assert (=> d!11891 (= c!4362 (is-Empty!21 (left!655 (left!655 xs!637))))))

(assert (=> d!11891 e!9078))

(declare-fun res!6873 () Bool)

(assert (=> d!11891 (=> (not res!6873) (not e!9078))))

(assert (=> d!11891 (= res!6873 (concInv!10 (left!655 (left!655 xs!637))))))

(assert (=> d!11891 (= (split!10 (left!655 (left!655 xs!637)) n!315) lt!2480)))

(declare-fun b!16714 () Bool)

(declare-fun res!6870 () Bool)

(assert (=> b!16714 (=> (not res!6870) (not e!9074))))

(assert (=> b!16714 (= res!6870 (>= (level!10 (left!655 (left!655 xs!637))) (level!10 (_1!53 lt!2480))))))

(assert (= (and d!11891 res!6873) b!16711))

(assert (= (and b!16703 c!4360) b!16710))

(assert (= (and b!16703 (not c!4360)) b!16708))

(assert (= (and b!16712 c!4361) b!16713))

(assert (= (and b!16712 (not c!4361)) b!16703))

(assert (= (and b!16704 c!4363) b!16701))

(assert (= (and b!16704 (not c!4363)) b!16712))

(assert (= (and d!11891 c!4362) b!16709))

(assert (= (and d!11891 (not c!4362)) b!16704))

(assert (= (and d!11891 res!6869) b!16702))

(assert (= (and d!11891 res!6866) b!16707))

(assert (= (and b!16707 res!6871) b!16706))

(assert (= (and b!16707 res!6868) b!16714))

(assert (= (and b!16714 res!6870) b!16700))

(assert (= (and b!16700 res!6872) b!16705))

(assert (= (and b!16705 res!6867) b!16699))

(assert (=> b!16711 m!19805))

(declare-fun m!20107 () Bool)

(assert (=> b!16713 m!20107))

(declare-fun m!20109 () Bool)

(assert (=> b!16713 m!20109))

(declare-fun m!20111 () Bool)

(assert (=> b!16706 m!20111))

(assert (=> b!16712 m!19843))

(declare-fun m!20113 () Bool)

(assert (=> b!16702 m!20113))

(declare-fun m!20115 () Bool)

(assert (=> b!16705 m!20115))

(assert (=> b!16703 m!19843))

(assert (=> b!16714 m!19795))

(declare-fun m!20117 () Bool)

(assert (=> b!16714 m!20117))

(declare-fun m!20119 () Bool)

(assert (=> b!16707 m!20119))

(assert (=> b!16710 m!19843))

(declare-fun m!20121 () Bool)

(assert (=> b!16710 m!20121))

(declare-fun m!20123 () Bool)

(assert (=> b!16710 m!20123))

(declare-fun m!20125 () Bool)

(assert (=> b!16699 m!20125))

(declare-fun m!20127 () Bool)

(assert (=> d!11891 m!20127))

(assert (=> d!11891 m!19801))

(assert (=> b!16700 m!19795))

(declare-fun m!20129 () Bool)

(assert (=> b!16700 m!20129))

(assert (=> b!16350 d!11891))

(declare-fun b!16715 () Bool)

(declare-fun e!9081 () Conc!11)

(assert (=> b!16715 (= e!9081 (right!658 (left!655 xs!637)))))

(declare-fun b!16716 () Bool)

(declare-fun e!9086 () Bool)

(declare-fun lt!2483 () Conc!11)

(assert (=> b!16716 (= e!9086 (balanced!11 lt!2483))))

(declare-fun b!16717 () Bool)

(declare-fun e!9084 () Conc!11)

(assert (=> b!16717 (= e!9084 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315)))))

(declare-fun b!16718 () Bool)

(declare-fun res!6874 () Bool)

(declare-fun e!9083 () Bool)

(assert (=> b!16718 (=> (not res!6874) (not e!9083))))

(declare-fun lt!2481 () Int)

(declare-fun lt!2482 () Int)

(declare-fun lt!2487 () Int)

(assert (=> b!16718 (= res!6874 (>= lt!2487 (ite (>= lt!2481 lt!2482) lt!2481 lt!2482)))))

(assert (=> b!16718 (= lt!2482 (level!10 (right!658 (left!655 xs!637))))))

(assert (=> b!16718 (= lt!2481 (level!10 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315))))))

(assert (=> b!16718 (= lt!2487 (level!10 lt!2483))))

(declare-fun b!16719 () Bool)

(assert (=> b!16719 (= e!9084 e!9081)))

(declare-fun c!4365 () Bool)

(assert (=> b!16719 (= c!4365 (is-Empty!21 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315))))))

(declare-fun b!16720 () Bool)

(assert (=> b!16720 (= e!9081 (concatNonEmpty!3 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315)) (right!658 (left!655 xs!637))))))

(declare-fun b!16721 () Bool)

(declare-fun res!6879 () Bool)

(assert (=> b!16721 (=> (not res!6879) (not e!9083))))

(declare-fun lt!2484 () Int)

(declare-fun lt!2485 () Int)

(declare-fun lt!2486 () Int)

(assert (=> b!16721 (= res!6879 (<= lt!2484 (+ (ite (>= lt!2486 lt!2485) lt!2486 lt!2485) 1)))))

(assert (=> b!16721 (= lt!2485 (level!10 (right!658 (left!655 xs!637))))))

(assert (=> b!16721 (= lt!2486 (level!10 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315))))))

(assert (=> b!16721 (= lt!2484 (level!10 lt!2483))))

(declare-fun b!16722 () Bool)

(declare-fun e!9082 () Bool)

(assert (=> b!16722 (= e!9082 (balanced!11 (right!658 (left!655 xs!637))))))

(declare-fun b!16723 () Bool)

(declare-fun res!6876 () Bool)

(assert (=> b!16723 (=> (not res!6876) (not e!9082))))

(assert (=> b!16723 (= res!6876 (concInv!10 (right!658 (left!655 xs!637))))))

(declare-fun d!11893 () Bool)

(assert (=> d!11893 e!9083))

(declare-fun res!6877 () Bool)

(assert (=> d!11893 (=> (not res!6877) (not e!9083))))

(assert (=> d!11893 (= res!6877 e!9086)))

(declare-fun res!6880 () Bool)

(assert (=> d!11893 (=> (not res!6880) (not e!9086))))

(assert (=> d!11893 (= res!6880 (concInv!10 lt!2483))))

(assert (=> d!11893 (= lt!2483 e!9084)))

(declare-fun c!4364 () Bool)

(assert (=> d!11893 (= c!4364 (is-Empty!21 (right!658 (left!655 xs!637))))))

(assert (=> d!11893 e!9082))

(declare-fun res!6878 () Bool)

(assert (=> d!11893 (=> (not res!6878) (not e!9082))))

(declare-fun e!9085 () Bool)

(assert (=> d!11893 (= res!6878 e!9085)))

(declare-fun res!6875 () Bool)

(assert (=> d!11893 (=> (not res!6875) (not e!9085))))

(assert (=> d!11893 (= res!6875 (concInv!10 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315))))))

(assert (=> d!11893 (= (concatNormalized!5 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315)) (right!658 (left!655 xs!637))) lt!2483)))

(declare-fun b!16724 () Bool)

(assert (=> b!16724 (= e!9085 (balanced!11 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315))))))

(declare-fun b!16725 () Bool)

(assert (=> b!16725 (= e!9083 (concatCorrectness!1 lt!2483 (_2!53 (split!10 (left!655 (left!655 xs!637)) n!315)) (right!658 (left!655 xs!637))))))

(assert (= (and d!11893 res!6875) b!16724))

(assert (= (and d!11893 res!6878) b!16723))

(assert (= (and b!16723 res!6876) b!16722))

(assert (= (and b!16719 c!4365) b!16715))

(assert (= (and b!16719 (not c!4365)) b!16720))

(assert (= (and d!11893 c!4364) b!16717))

(assert (= (and d!11893 (not c!4364)) b!16719))

(assert (= (and d!11893 res!6880) b!16716))

(assert (= (and d!11893 res!6877) b!16721))

(assert (= (and b!16721 res!6879) b!16718))

(assert (= (and b!16718 res!6874) b!16725))

(assert (=> b!16723 m!19839))

(declare-fun m!20131 () Bool)

(assert (=> b!16725 m!20131))

(assert (=> b!16718 m!19825))

(declare-fun m!20133 () Bool)

(assert (=> b!16718 m!20133))

(declare-fun m!20135 () Bool)

(assert (=> b!16718 m!20135))

(declare-fun m!20137 () Bool)

(assert (=> d!11893 m!20137))

(declare-fun m!20139 () Bool)

(assert (=> d!11893 m!20139))

(assert (=> b!16722 m!19811))

(declare-fun m!20141 () Bool)

(assert (=> b!16724 m!20141))

(declare-fun m!20143 () Bool)

(assert (=> b!16716 m!20143))

(assert (=> b!16721 m!19825))

(assert (=> b!16721 m!20133))

(assert (=> b!16721 m!20135))

(declare-fun m!20145 () Bool)

(assert (=> b!16720 m!20145))

(assert (=> b!16350 d!11893))

(declare-fun b!16726 () Bool)

(declare-fun e!9087 () Bool)

(declare-fun tp!3925 () Bool)

(declare-fun tp!3926 () Bool)

(assert (=> b!16726 (= e!9087 (and tp!3925 tp!3926))))

(declare-fun b!16727 () Bool)

(assert (=> b!16727 (= e!9087 tp_is_empty!57)))

(assert (=> b!16387 (= tp!3913 e!9087)))

(assert (= (and b!16387 (is-CC!10 (left!655 (right!658 xs!637)))) b!16726))

(assert (= (and b!16387 (is-Single!10 (left!655 (right!658 xs!637)))) b!16727))

(declare-fun b!16728 () Bool)

(declare-fun e!9088 () Bool)

(declare-fun tp!3927 () Bool)

(declare-fun tp!3928 () Bool)

(assert (=> b!16728 (= e!9088 (and tp!3927 tp!3928))))

(declare-fun b!16729 () Bool)

(assert (=> b!16729 (= e!9088 tp_is_empty!57)))

(assert (=> b!16387 (= tp!3914 e!9088)))

(assert (= (and b!16387 (is-CC!10 (right!658 (right!658 xs!637)))) b!16728))

(assert (= (and b!16387 (is-Single!10 (right!658 (right!658 xs!637)))) b!16729))

(declare-fun b!16730 () Bool)

(declare-fun e!9089 () Bool)

(declare-fun tp!3929 () Bool)

(declare-fun tp!3930 () Bool)

(assert (=> b!16730 (= e!9089 (and tp!3929 tp!3930))))

(declare-fun b!16731 () Bool)

(assert (=> b!16731 (= e!9089 tp_is_empty!57)))

(assert (=> b!16365 (= tp!3891 e!9089)))

(assert (= (and b!16365 (is-CC!10 (left!655 (left!655 lr!32)))) b!16730))

(assert (= (and b!16365 (is-Single!10 (left!655 (left!655 lr!32)))) b!16731))

(declare-fun b!16732 () Bool)

(declare-fun e!9090 () Bool)

(declare-fun tp!3931 () Bool)

(declare-fun tp!3932 () Bool)

(assert (=> b!16732 (= e!9090 (and tp!3931 tp!3932))))

(declare-fun b!16733 () Bool)

(assert (=> b!16733 (= e!9090 tp_is_empty!57)))

(assert (=> b!16365 (= tp!3892 e!9090)))

(assert (= (and b!16365 (is-CC!10 (right!658 (left!655 lr!32)))) b!16732))

(assert (= (and b!16365 (is-Single!10 (right!658 (left!655 lr!32)))) b!16733))

(declare-fun b!16734 () Bool)

(declare-fun e!9091 () Bool)

(declare-fun tp!3933 () Bool)

(declare-fun tp!3934 () Bool)

(assert (=> b!16734 (= e!9091 (and tp!3933 tp!3934))))

(declare-fun b!16735 () Bool)

(assert (=> b!16735 (= e!9091 tp_is_empty!57)))

(assert (=> b!16377 (= tp!3903 e!9091)))

(assert (= (and b!16377 (is-CC!10 (left!655 (left!655 (_2!53 x$3!88))))) b!16734))

(assert (= (and b!16377 (is-Single!10 (left!655 (left!655 (_2!53 x$3!88))))) b!16735))

(declare-fun b!16736 () Bool)

(declare-fun e!9092 () Bool)

(declare-fun tp!3935 () Bool)

(declare-fun tp!3936 () Bool)

(assert (=> b!16736 (= e!9092 (and tp!3935 tp!3936))))

(declare-fun b!16737 () Bool)

(assert (=> b!16737 (= e!9092 tp_is_empty!57)))

(assert (=> b!16377 (= tp!3904 e!9092)))

(assert (= (and b!16377 (is-CC!10 (right!658 (left!655 (_2!53 x$3!88))))) b!16736))

(assert (= (and b!16377 (is-Single!10 (right!658 (left!655 (_2!53 x$3!88))))) b!16737))

(declare-fun b!16738 () Bool)

(declare-fun e!9093 () Bool)

(declare-fun tp!3937 () Bool)

(declare-fun tp!3938 () Bool)

(assert (=> b!16738 (= e!9093 (and tp!3937 tp!3938))))

(declare-fun b!16739 () Bool)

(assert (=> b!16739 (= e!9093 tp_is_empty!57)))

(assert (=> b!16373 (= tp!3899 e!9093)))

(assert (= (and b!16373 (is-CC!10 (left!655 (left!655 (_1!53 x$3!88))))) b!16738))

(assert (= (and b!16373 (is-Single!10 (left!655 (left!655 (_1!53 x$3!88))))) b!16739))

(declare-fun b!16740 () Bool)

(declare-fun e!9094 () Bool)

(declare-fun tp!3939 () Bool)

(declare-fun tp!3940 () Bool)

(assert (=> b!16740 (= e!9094 (and tp!3939 tp!3940))))

(declare-fun b!16741 () Bool)

(assert (=> b!16741 (= e!9094 tp_is_empty!57)))

(assert (=> b!16373 (= tp!3900 e!9094)))

(assert (= (and b!16373 (is-CC!10 (right!658 (left!655 (_1!53 x$3!88))))) b!16740))

(assert (= (and b!16373 (is-Single!10 (right!658 (left!655 (_1!53 x$3!88))))) b!16741))

(declare-fun b!16742 () Bool)

(declare-fun e!9095 () Bool)

(declare-fun tp!3941 () Bool)

(declare-fun tp!3942 () Bool)

(assert (=> b!16742 (= e!9095 (and tp!3941 tp!3942))))

(declare-fun b!16743 () Bool)

(assert (=> b!16743 (= e!9095 tp_is_empty!57)))

(assert (=> b!16379 (= tp!3905 e!9095)))

(assert (= (and b!16379 (is-CC!10 (left!655 (right!658 (_2!53 x$3!88))))) b!16742))

(assert (= (and b!16379 (is-Single!10 (left!655 (right!658 (_2!53 x$3!88))))) b!16743))

(declare-fun b!16744 () Bool)

(declare-fun e!9096 () Bool)

(declare-fun tp!3943 () Bool)

(declare-fun tp!3944 () Bool)

(assert (=> b!16744 (= e!9096 (and tp!3943 tp!3944))))

(declare-fun b!16745 () Bool)

(assert (=> b!16745 (= e!9096 tp_is_empty!57)))

(assert (=> b!16379 (= tp!3906 e!9096)))

(assert (= (and b!16379 (is-CC!10 (right!658 (right!658 (_2!53 x$3!88))))) b!16744))

(assert (= (and b!16379 (is-Single!10 (right!658 (right!658 (_2!53 x$3!88))))) b!16745))

(declare-fun b!16746 () Bool)

(declare-fun e!9097 () Bool)

(declare-fun tp!3945 () Bool)

(declare-fun tp!3946 () Bool)

(assert (=> b!16746 (= e!9097 (and tp!3945 tp!3946))))

(declare-fun b!16747 () Bool)

(assert (=> b!16747 (= e!9097 tp_is_empty!57)))

(assert (=> b!16385 (= tp!3911 e!9097)))

(assert (= (and b!16385 (is-CC!10 (left!655 (left!655 xs!637)))) b!16746))

(assert (= (and b!16385 (is-Single!10 (left!655 (left!655 xs!637)))) b!16747))

(declare-fun b!16748 () Bool)

(declare-fun e!9098 () Bool)

(declare-fun tp!3947 () Bool)

(declare-fun tp!3948 () Bool)

(assert (=> b!16748 (= e!9098 (and tp!3947 tp!3948))))

(declare-fun b!16749 () Bool)

(assert (=> b!16749 (= e!9098 tp_is_empty!57)))

(assert (=> b!16385 (= tp!3912 e!9098)))

(assert (= (and b!16385 (is-CC!10 (right!658 (left!655 xs!637)))) b!16748))

(assert (= (and b!16385 (is-Single!10 (right!658 (left!655 xs!637)))) b!16749))

(declare-fun b!16750 () Bool)

(declare-fun e!9099 () Bool)

(declare-fun tp!3949 () Bool)

(declare-fun tp!3950 () Bool)

(assert (=> b!16750 (= e!9099 (and tp!3949 tp!3950))))

(declare-fun b!16751 () Bool)

(assert (=> b!16751 (= e!9099 tp_is_empty!57)))

(assert (=> b!16389 (= tp!3915 e!9099)))

(assert (= (and b!16389 (is-CC!10 (left!655 (left!655 (_1!53 res!5662))))) b!16750))

(assert (= (and b!16389 (is-Single!10 (left!655 (left!655 (_1!53 res!5662))))) b!16751))

(declare-fun b!16752 () Bool)

(declare-fun e!9100 () Bool)

(declare-fun tp!3951 () Bool)

(declare-fun tp!3952 () Bool)

(assert (=> b!16752 (= e!9100 (and tp!3951 tp!3952))))

(declare-fun b!16753 () Bool)

(assert (=> b!16753 (= e!9100 tp_is_empty!57)))

(assert (=> b!16389 (= tp!3916 e!9100)))

(assert (= (and b!16389 (is-CC!10 (right!658 (left!655 (_1!53 res!5662))))) b!16752))

(assert (= (and b!16389 (is-Single!10 (right!658 (left!655 (_1!53 res!5662))))) b!16753))

(declare-fun b!16754 () Bool)

(declare-fun e!9101 () Bool)

(declare-fun tp!3953 () Bool)

(declare-fun tp!3954 () Bool)

(assert (=> b!16754 (= e!9101 (and tp!3953 tp!3954))))

(declare-fun b!16755 () Bool)

(assert (=> b!16755 (= e!9101 tp_is_empty!57)))

(assert (=> b!16371 (= tp!3897 e!9101)))

(assert (= (and b!16371 (is-CC!10 (left!655 (right!658 (_2!53 res!5662))))) b!16754))

(assert (= (and b!16371 (is-Single!10 (left!655 (right!658 (_2!53 res!5662))))) b!16755))

(declare-fun b!16756 () Bool)

(declare-fun e!9102 () Bool)

(declare-fun tp!3955 () Bool)

(declare-fun tp!3956 () Bool)

(assert (=> b!16756 (= e!9102 (and tp!3955 tp!3956))))

(declare-fun b!16757 () Bool)

(assert (=> b!16757 (= e!9102 tp_is_empty!57)))

(assert (=> b!16371 (= tp!3898 e!9102)))

(assert (= (and b!16371 (is-CC!10 (right!658 (right!658 (_2!53 res!5662))))) b!16756))

(assert (= (and b!16371 (is-Single!10 (right!658 (right!658 (_2!53 res!5662))))) b!16757))

(declare-fun b!16758 () Bool)

(declare-fun e!9103 () Bool)

(declare-fun tp!3957 () Bool)

(declare-fun tp!3958 () Bool)

(assert (=> b!16758 (= e!9103 (and tp!3957 tp!3958))))

(declare-fun b!16759 () Bool)

(assert (=> b!16759 (= e!9103 tp_is_empty!57)))

(assert (=> b!16391 (= tp!3917 e!9103)))

(assert (= (and b!16391 (is-CC!10 (left!655 (right!658 (_1!53 res!5662))))) b!16758))

(assert (= (and b!16391 (is-Single!10 (left!655 (right!658 (_1!53 res!5662))))) b!16759))

(declare-fun b!16760 () Bool)

(declare-fun e!9104 () Bool)

(declare-fun tp!3959 () Bool)

(declare-fun tp!3960 () Bool)

(assert (=> b!16760 (= e!9104 (and tp!3959 tp!3960))))

(declare-fun b!16761 () Bool)

(assert (=> b!16761 (= e!9104 tp_is_empty!57)))

(assert (=> b!16391 (= tp!3918 e!9104)))

(assert (= (and b!16391 (is-CC!10 (right!658 (right!658 (_1!53 res!5662))))) b!16760))

(assert (= (and b!16391 (is-Single!10 (right!658 (right!658 (_1!53 res!5662))))) b!16761))

(declare-fun b!16762 () Bool)

(declare-fun e!9105 () Bool)

(declare-fun tp!3961 () Bool)

(declare-fun tp!3962 () Bool)

(assert (=> b!16762 (= e!9105 (and tp!3961 tp!3962))))

(declare-fun b!16763 () Bool)

(assert (=> b!16763 (= e!9105 tp_is_empty!57)))

(assert (=> b!16383 (= tp!3909 e!9105)))

(assert (= (and b!16383 (is-CC!10 (left!655 (right!658 ll!30)))) b!16762))

(assert (= (and b!16383 (is-Single!10 (left!655 (right!658 ll!30)))) b!16763))

(declare-fun b!16764 () Bool)

(declare-fun e!9106 () Bool)

(declare-fun tp!3963 () Bool)

(declare-fun tp!3964 () Bool)

(assert (=> b!16764 (= e!9106 (and tp!3963 tp!3964))))

(declare-fun b!16765 () Bool)

(assert (=> b!16765 (= e!9106 tp_is_empty!57)))

(assert (=> b!16383 (= tp!3910 e!9106)))

(assert (= (and b!16383 (is-CC!10 (right!658 (right!658 ll!30)))) b!16764))

(assert (= (and b!16383 (is-Single!10 (right!658 (right!658 ll!30)))) b!16765))

(declare-fun b!16766 () Bool)

(declare-fun e!9107 () Bool)

(declare-fun tp!3965 () Bool)

(declare-fun tp!3966 () Bool)

(assert (=> b!16766 (= e!9107 (and tp!3965 tp!3966))))

(declare-fun b!16767 () Bool)

(assert (=> b!16767 (= e!9107 tp_is_empty!57)))

(assert (=> b!16369 (= tp!3895 e!9107)))

(assert (= (and b!16369 (is-CC!10 (left!655 (left!655 (_2!53 res!5662))))) b!16766))

(assert (= (and b!16369 (is-Single!10 (left!655 (left!655 (_2!53 res!5662))))) b!16767))

(declare-fun b!16768 () Bool)

(declare-fun e!9108 () Bool)

(declare-fun tp!3967 () Bool)

(declare-fun tp!3968 () Bool)

(assert (=> b!16768 (= e!9108 (and tp!3967 tp!3968))))

(declare-fun b!16769 () Bool)

(assert (=> b!16769 (= e!9108 tp_is_empty!57)))

(assert (=> b!16369 (= tp!3896 e!9108)))

(assert (= (and b!16369 (is-CC!10 (right!658 (left!655 (_2!53 res!5662))))) b!16768))

(assert (= (and b!16369 (is-Single!10 (right!658 (left!655 (_2!53 res!5662))))) b!16769))

(declare-fun b!16770 () Bool)

(declare-fun e!9109 () Bool)

(declare-fun tp!3969 () Bool)

(declare-fun tp!3970 () Bool)

(assert (=> b!16770 (= e!9109 (and tp!3969 tp!3970))))

(declare-fun b!16771 () Bool)

(assert (=> b!16771 (= e!9109 tp_is_empty!57)))

(assert (=> b!16381 (= tp!3907 e!9109)))

(assert (= (and b!16381 (is-CC!10 (left!655 (left!655 ll!30)))) b!16770))

(assert (= (and b!16381 (is-Single!10 (left!655 (left!655 ll!30)))) b!16771))

(declare-fun b!16772 () Bool)

(declare-fun e!9110 () Bool)

(declare-fun tp!3971 () Bool)

(declare-fun tp!3972 () Bool)

(assert (=> b!16772 (= e!9110 (and tp!3971 tp!3972))))

(declare-fun b!16773 () Bool)

(assert (=> b!16773 (= e!9110 tp_is_empty!57)))

(assert (=> b!16381 (= tp!3908 e!9110)))

(assert (= (and b!16381 (is-CC!10 (right!658 (left!655 ll!30)))) b!16772))

(assert (= (and b!16381 (is-Single!10 (right!658 (left!655 ll!30)))) b!16773))

(declare-fun b!16774 () Bool)

(declare-fun e!9111 () Bool)

(declare-fun tp!3973 () Bool)

(declare-fun tp!3974 () Bool)

(assert (=> b!16774 (= e!9111 (and tp!3973 tp!3974))))

(declare-fun b!16775 () Bool)

(assert (=> b!16775 (= e!9111 tp_is_empty!57)))

(assert (=> b!16367 (= tp!3893 e!9111)))

(assert (= (and b!16367 (is-CC!10 (left!655 (right!658 lr!32)))) b!16774))

(assert (= (and b!16367 (is-Single!10 (left!655 (right!658 lr!32)))) b!16775))

(declare-fun b!16776 () Bool)

(declare-fun e!9112 () Bool)

(declare-fun tp!3975 () Bool)

(declare-fun tp!3976 () Bool)

(assert (=> b!16776 (= e!9112 (and tp!3975 tp!3976))))

(declare-fun b!16777 () Bool)

(assert (=> b!16777 (= e!9112 tp_is_empty!57)))

(assert (=> b!16367 (= tp!3894 e!9112)))

(assert (= (and b!16367 (is-CC!10 (right!658 (right!658 lr!32)))) b!16776))

(assert (= (and b!16367 (is-Single!10 (right!658 (right!658 lr!32)))) b!16777))

(declare-fun b!16778 () Bool)

(declare-fun e!9113 () Bool)

(declare-fun tp!3977 () Bool)

(declare-fun tp!3978 () Bool)

(assert (=> b!16778 (= e!9113 (and tp!3977 tp!3978))))

(declare-fun b!16779 () Bool)

(assert (=> b!16779 (= e!9113 tp_is_empty!57)))

(assert (=> b!16375 (= tp!3901 e!9113)))

(assert (= (and b!16375 (is-CC!10 (left!655 (right!658 (_1!53 x$3!88))))) b!16778))

(assert (= (and b!16375 (is-Single!10 (left!655 (right!658 (_1!53 x$3!88))))) b!16779))

(declare-fun b!16780 () Bool)

(declare-fun e!9114 () Bool)

(declare-fun tp!3979 () Bool)

(declare-fun tp!3980 () Bool)

(assert (=> b!16780 (= e!9114 (and tp!3979 tp!3980))))

(declare-fun b!16781 () Bool)

(assert (=> b!16781 (= e!9114 tp_is_empty!57)))

(assert (=> b!16375 (= tp!3902 e!9114)))

(assert (= (and b!16375 (is-CC!10 (right!658 (right!658 (_1!53 x$3!88))))) b!16780))

(assert (= (and b!16375 (is-Single!10 (right!658 (right!658 (_1!53 x$3!88))))) b!16781))

(push 1)

(assert (not b!16410))

(assert (not b!16684))

(assert (not b!16712))

(assert (not b!16774))

(assert (not b!16425))

(assert (not b!16562))

(assert (not b!16661))

(assert (not b!16482))

(assert (not b!16400))

(assert (not b!16700))

(assert (not b!16608))

(assert (not b!16516))

(assert (not b!16605))

(assert (not b!16669))

(assert (not b!16559))

(assert (not b!16682))

(assert (not b!16746))

(assert (not b!16672))

(assert (not b!16685))

(assert (not b!16599))

(assert (not b!16673))

(assert (not b!16509))

(assert (not b!16411))

(assert (not b!16508))

(assert (not b!16530))

(assert (not b!16726))

(assert (not b!16565))

(assert (not d!11865))

(assert (not b!16429))

(assert (not b!16734))

(assert (not b!16547))

(assert (not b!16479))

(assert (not b!16683))

(assert (not b!16478))

(assert (not b!16538))

(assert (not b!16678))

(assert (not b!16525))

(assert (not b!16696))

(assert (not b!16574))

(assert (not b!16694))

(assert (not b!16728))

(assert (not b!16423))

(assert (not b!16724))

(assert (not b!16551))

(assert (not b!16550))

(assert (not b!16752))

(assert (not b!16604))

(assert (not d!11891))

(assert (not b!16750))

(assert (not b!16402))

(assert (not b!16535))

(assert (not b!16533))

(assert (not b!16612))

(assert (not b!16405))

(assert (not b!16660))

(assert (not b!16407))

(assert (not d!11793))

(assert (not b!16720))

(assert (not b!16512))

(assert (not b!16510))

(assert (not b!16541))

(assert (not b!16601))

(assert (not b!16409))

(assert (not b!16524))

(assert (not b!16560))

(assert (not b!16611))

(assert (not b!16658))

(assert (not b!16711))

(assert (not b!16736))

(assert (not b!16523))

(assert (not b!16681))

(assert (not b!16730))

(assert (not b!16766))

(assert (not b!16549))

(assert tp_is_empty!57)

(assert (not b!16718))

(assert (not b!16464))

(assert (not b!16607))

(assert (not b!16568))

(assert (not b!16414))

(assert (not b!16526))

(assert (not b!16567))

(assert (not b!16703))

(assert (not b!16460))

(assert (not b!16522))

(assert (not b!16748))

(assert (not b!16555))

(assert (not b!16740))

(assert (not b!16575))

(assert (not b!16543))

(assert (not b!16721))

(assert (not b!16404))

(assert (not b!16564))

(assert (not d!11817))

(assert (not d!11893))

(assert (not b!16754))

(assert (not b!16744))

(assert (not b!16572))

(assert (not b!16714))

(assert (not b!16422))

(assert (not b!16472))

(assert (not b!16725))

(assert (not b!16507))

(assert (not b!16742))

(assert (not b!16609))

(assert (not b!16758))

(assert (not b!16710))

(assert (not b!16674))

(assert (not d!11815))

(assert (not b!16764))

(assert (not b!16566))

(assert (not b!16474))

(assert (not d!11813))

(assert (not b!16606))

(assert (not b!16477))

(assert (not b!16506))

(assert (not b!16467))

(assert (not b!16686))

(assert (not b!16545))

(assert (not b!16573))

(assert (not b!16528))

(assert (not b!16662))

(assert (not b!16561))

(assert (not b!16552))

(assert (not b!16563))

(assert (not b!16665))

(assert (not b!16394))

(assert (not b!16663))

(assert (not d!11879))

(assert (not b!16670))

(assert (not b!16738))

(assert (not b!16680))

(assert (not b!16554))

(assert (not b!16424))

(assert (not b!16689))

(assert (not b!16527))

(assert (not b!16476))

(assert (not b!16534))

(assert (not b!16417))

(assert (not b!16677))

(assert (not b!16520))

(assert (not d!11867))

(assert (not b!16697))

(assert (not b!16687))

(assert (not b!16539))

(assert (not b!16553))

(assert (not b!16699))

(assert (not b!16546))

(assert (not b!16571))

(assert (not b!16698))

(assert (not b!16569))

(assert (not b!16441))

(assert (not b!16542))

(assert (not d!11803))

(assert (not b!16557))

(assert (not b!16723))

(assert (not b!16776))

(assert (not b!16671))

(assert (not b!16614))

(assert (not b!16398))

(assert (not b!16406))

(assert (not d!11801))

(assert (not b!16770))

(assert (not b!16706))

(assert (not b!16688))

(assert (not b!16558))

(assert (not b!16707))

(assert (not d!11795))

(assert (not b!16537))

(assert (not b!16544))

(assert (not b!16480))

(assert (not b!16532))

(assert (not b!16768))

(assert (not b!16521))

(assert (not b!16418))

(assert (not b!16679))

(assert (not d!11819))

(assert (not b!16536))

(assert (not b!16396))

(assert (not b!16695))

(assert (not b!16716))

(assert (not b!16778))

(assert (not b!16664))

(assert (not b!16610))

(assert (not b!16722))

(assert (not d!11875))

(assert (not b!16421))

(assert (not b!16505))

(assert (not b!16756))

(assert (not b!16705))

(assert (not b!16577))

(assert (not b!16556))

(assert (not b!16772))

(assert (not b!16540))

(assert (not b!16503))

(assert (not b!16690))

(assert (not b!16702))

(assert (not b!16416))

(assert (not b!16548))

(assert (not b!16597))

(assert (not b!16603))

(assert (not b!16668))

(assert (not b!16657))

(assert (not b!16713))

(assert (not d!11799))

(assert (not b!16613))

(assert (not b!16581))

(assert (not b!16598))

(assert (not b!16732))

(assert (not b!16780))

(assert (not b!16760))

(assert (not b!16762))

(assert (not b!16413))

(assert (not b!16408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

