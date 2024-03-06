; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4026 () Bool)

(assert start!4026)

(declare-fun b!31794 () Bool)

(declare-fun res!14579 () Bool)

(declare-fun e!16194 () Bool)

(assert (=> b!31794 (=> (not res!14579) (not e!16194))))

(declare-fun diff!6 () Int)

(declare-datatypes () ((T!1839 (T!1840 (val!92 Int)))))

(declare-datatypes () ((Conc!69 (CC!68 (left!713 Conc!69) (right!716 Conc!69)) (Single!68 (x!8967 T!1839)) (Empty!79))))

(declare-fun ys!77 () Conc!69)

(declare-fun xs!533 () Conc!69)

(declare-fun level!57 (Conc!69) Int)

(assert (=> b!31794 (= res!14579 (= diff!6 (- (level!57 ys!77) (level!57 xs!533))))))

(declare-fun b!31795 () Bool)

(declare-fun e!16193 () Bool)

(declare-fun tp_is_empty!183 () Bool)

(assert (=> b!31795 (= e!16193 tp_is_empty!183)))

(declare-fun b!31796 () Bool)

(declare-fun e!16195 () Bool)

(assert (=> b!31796 (= e!16195 tp_is_empty!183)))

(declare-fun b!31797 () Bool)

(declare-fun res!14581 () Bool)

(assert (=> b!31797 (=> (not res!14581) (not e!16194))))

(declare-fun concInv!63 (Conc!69) Bool)

(assert (=> b!31797 (= res!14581 (concInv!63 ys!77))))

(declare-fun res!14583 () Bool)

(assert (=> start!4026 (=> (not res!14583) (not e!16194))))

(assert (=> start!4026 (= res!14583 (concInv!63 xs!533))))

(assert (=> start!4026 e!16194))

(assert (=> start!4026 e!16195))

(assert (=> start!4026 e!16193))

(assert (=> start!4026 true))

(declare-fun b!31798 () Bool)

(declare-fun res!14578 () Bool)

(assert (=> b!31798 (=> (not res!14578) (not e!16194))))

(declare-fun isEmpty!325 (Conc!69) Bool)

(assert (=> b!31798 (= res!14578 (not (isEmpty!325 xs!533)))))

(declare-fun b!31799 () Bool)

(assert (=> b!31799 (= e!16194 (and (or (< diff!6 (- 1)) (> diff!6 1)) (>= diff!6 (- 1)) (not (is-CC!68 ys!77))))))

(declare-fun b!31800 () Bool)

(declare-fun tp!6581 () Bool)

(declare-fun tp!6583 () Bool)

(assert (=> b!31800 (= e!16193 (and tp!6581 tp!6583))))

(declare-fun b!31801 () Bool)

(declare-fun res!14580 () Bool)

(assert (=> b!31801 (=> (not res!14580) (not e!16194))))

(declare-fun balanced!64 (Conc!69) Bool)

(assert (=> b!31801 (= res!14580 (balanced!64 xs!533))))

(declare-fun b!31802 () Bool)

(declare-fun tp!6582 () Bool)

(declare-fun tp!6580 () Bool)

(assert (=> b!31802 (= e!16195 (and tp!6582 tp!6580))))

(declare-fun b!31803 () Bool)

(declare-fun res!14582 () Bool)

(assert (=> b!31803 (=> (not res!14582) (not e!16194))))

(assert (=> b!31803 (= res!14582 (balanced!64 ys!77))))

(declare-fun b!31804 () Bool)

(declare-fun res!14584 () Bool)

(assert (=> b!31804 (=> (not res!14584) (not e!16194))))

(assert (=> b!31804 (= res!14584 (not (isEmpty!325 ys!77)))))

(assert (= (and start!4026 res!14583) b!31801))

(assert (= (and b!31801 res!14580) b!31797))

(assert (= (and b!31797 res!14581) b!31803))

(assert (= (and b!31803 res!14582) b!31798))

(assert (= (and b!31798 res!14578) b!31804))

(assert (= (and b!31804 res!14584) b!31794))

(assert (= (and b!31794 res!14579) b!31799))

(assert (= (and start!4026 (is-CC!68 xs!533)) b!31802))

(assert (= (and start!4026 (is-Single!68 xs!533)) b!31796))

(assert (= (and start!4026 (is-CC!68 ys!77)) b!31800))

(assert (= (and start!4026 (is-Single!68 ys!77)) b!31795))

(declare-fun m!34637 () Bool)

(assert (=> start!4026 m!34637))

(declare-fun m!34639 () Bool)

(assert (=> b!31797 m!34639))

(declare-fun m!34641 () Bool)

(assert (=> b!31801 m!34641))

(declare-fun m!34643 () Bool)

(assert (=> b!31794 m!34643))

(declare-fun m!34645 () Bool)

(assert (=> b!31794 m!34645))

(declare-fun m!34647 () Bool)

(assert (=> b!31798 m!34647))

(declare-fun m!34649 () Bool)

(assert (=> b!31804 m!34649))

(declare-fun m!34651 () Bool)

(assert (=> b!31803 m!34651))

(push 1)

(assert tp_is_empty!183)

(assert (not b!31803))

(assert (not b!31801))

(assert (not b!31797))

(assert (not b!31804))

(assert (not b!31800))

(assert (not start!4026))

(assert (not b!31802))

(assert (not b!31794))

(assert (not b!31798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16519 () Bool)

(declare-fun res!14596 () Bool)

(declare-fun e!16200 () Bool)

(assert (=> d!16519 (=> res!14596 e!16200)))

(assert (=> d!16519 (= res!14596 (not (is-CC!68 xs!533)))))

(assert (=> d!16519 (= (balanced!64 xs!533) e!16200)))

(declare-fun b!31816 () Bool)

(declare-fun e!16201 () Bool)

(assert (=> b!31816 (= e!16201 (balanced!64 (right!716 xs!533)))))

(declare-fun b!31814 () Bool)

(declare-fun res!14594 () Bool)

(assert (=> b!31814 (=> (not res!14594) (not e!16201))))

(assert (=> b!31814 (= res!14594 (<= (- (level!57 (left!713 xs!533)) (level!57 (right!716 xs!533))) 1))))

(declare-fun b!31813 () Bool)

(assert (=> b!31813 (= e!16200 e!16201)))

(declare-fun res!14595 () Bool)

(assert (=> b!31813 (=> (not res!14595) (not e!16201))))

(assert (=> b!31813 (= res!14595 (>= (- (level!57 (left!713 xs!533)) (level!57 (right!716 xs!533))) (- 1)))))

(declare-fun b!31815 () Bool)

(declare-fun res!14593 () Bool)

(assert (=> b!31815 (=> (not res!14593) (not e!16201))))

(assert (=> b!31815 (= res!14593 (balanced!64 (left!713 xs!533)))))

(assert (= (and d!16519 (not res!14596)) b!31813))

(assert (= (and b!31813 res!14595) b!31814))

(assert (= (and b!31814 res!14594) b!31815))

(assert (= (and b!31815 res!14593) b!31816))

(declare-fun m!34653 () Bool)

(assert (=> b!31816 m!34653))

(declare-fun m!34655 () Bool)

(assert (=> b!31814 m!34655))

(declare-fun m!34657 () Bool)

(assert (=> b!31814 m!34657))

(assert (=> b!31813 m!34655))

(assert (=> b!31813 m!34657))

(declare-fun m!34659 () Bool)

(assert (=> b!31815 m!34659))

(assert (=> b!31801 d!16519))

(declare-fun d!16521 () Bool)

(declare-fun res!14600 () Bool)

(declare-fun e!16202 () Bool)

(assert (=> d!16521 (=> res!14600 e!16202)))

(assert (=> d!16521 (= res!14600 (not (is-CC!68 ys!77)))))

(assert (=> d!16521 (= (balanced!64 ys!77) e!16202)))

(declare-fun b!31820 () Bool)

(declare-fun e!16203 () Bool)

(assert (=> b!31820 (= e!16203 (balanced!64 (right!716 ys!77)))))

(declare-fun b!31818 () Bool)

(declare-fun res!14598 () Bool)

(assert (=> b!31818 (=> (not res!14598) (not e!16203))))

(assert (=> b!31818 (= res!14598 (<= (- (level!57 (left!713 ys!77)) (level!57 (right!716 ys!77))) 1))))

(declare-fun b!31817 () Bool)

(assert (=> b!31817 (= e!16202 e!16203)))

(declare-fun res!14599 () Bool)

(assert (=> b!31817 (=> (not res!14599) (not e!16203))))

(assert (=> b!31817 (= res!14599 (>= (- (level!57 (left!713 ys!77)) (level!57 (right!716 ys!77))) (- 1)))))

(declare-fun b!31819 () Bool)

(declare-fun res!14597 () Bool)

(assert (=> b!31819 (=> (not res!14597) (not e!16203))))

(assert (=> b!31819 (= res!14597 (balanced!64 (left!713 ys!77)))))

(assert (= (and d!16521 (not res!14600)) b!31817))

(assert (= (and b!31817 res!14599) b!31818))

(assert (= (and b!31818 res!14598) b!31819))

(assert (= (and b!31819 res!14597) b!31820))

(declare-fun m!34661 () Bool)

(assert (=> b!31820 m!34661))

(declare-fun m!34663 () Bool)

(assert (=> b!31818 m!34663))

(declare-fun m!34665 () Bool)

(assert (=> b!31818 m!34665))

(assert (=> b!31817 m!34663))

(assert (=> b!31817 m!34665))

(declare-fun m!34667 () Bool)

(assert (=> b!31819 m!34667))

(assert (=> b!31803 d!16521))

(declare-fun d!16523 () Bool)

(assert (=> d!16523 (= (isEmpty!325 xs!533) (= xs!533 Empty!79))))

(assert (=> b!31798 d!16523))

(declare-fun d!16525 () Bool)

(assert (=> d!16525 (= (isEmpty!325 ys!77) (= ys!77 Empty!79))))

(assert (=> b!31804 d!16525))

(declare-fun b!31829 () Bool)

(declare-fun e!16208 () Bool)

(declare-fun e!16209 () Bool)

(assert (=> b!31829 (= e!16208 e!16209)))

(declare-fun res!14610 () Bool)

(assert (=> b!31829 (=> (not res!14610) (not e!16209))))

(assert (=> b!31829 (= res!14610 (not (isEmpty!325 (left!713 ys!77))))))

(declare-fun b!31832 () Bool)

(assert (=> b!31832 (= e!16209 (concInv!63 (right!716 ys!77)))))

(declare-fun b!31830 () Bool)

(declare-fun res!14609 () Bool)

(assert (=> b!31830 (=> (not res!14609) (not e!16209))))

(assert (=> b!31830 (= res!14609 (not (isEmpty!325 (right!716 ys!77))))))

(declare-fun b!31831 () Bool)

(declare-fun res!14612 () Bool)

(assert (=> b!31831 (=> (not res!14612) (not e!16209))))

(assert (=> b!31831 (= res!14612 (concInv!63 (left!713 ys!77)))))

(declare-fun d!16527 () Bool)

(declare-fun res!14611 () Bool)

(assert (=> d!16527 (=> res!14611 e!16208)))

(assert (=> d!16527 (= res!14611 (not (is-CC!68 ys!77)))))

(assert (=> d!16527 (= (concInv!63 ys!77) e!16208)))

(assert (= (and d!16527 (not res!14611)) b!31829))

(assert (= (and b!31829 res!14610) b!31830))

(assert (= (and b!31830 res!14609) b!31831))

(assert (= (and b!31831 res!14612) b!31832))

(declare-fun m!34669 () Bool)

(assert (=> b!31829 m!34669))

(declare-fun m!34671 () Bool)

(assert (=> b!31832 m!34671))

(declare-fun m!34673 () Bool)

(assert (=> b!31830 m!34673))

(declare-fun m!34675 () Bool)

(assert (=> b!31831 m!34675))

(assert (=> b!31797 d!16527))

(declare-fun b!31838 () Bool)

(declare-fun e!16212 () Int)

(declare-fun lt!6107 () Int)

(declare-fun lt!6108 () Int)

(assert (=> b!31838 (= e!16212 (+ 1 (ite (>= lt!6107 lt!6108) lt!6107 lt!6108)))))

(assert (=> b!31838 (= lt!6108 (level!57 (right!716 ys!77)))))

(assert (=> b!31838 (= lt!6107 (level!57 (left!713 ys!77)))))

(declare-fun d!16529 () Bool)

(declare-fun lt!6109 () Int)

(assert (=> d!16529 (>= lt!6109 0)))

(assert (=> d!16529 (= lt!6109 e!16212)))

(declare-fun c!6962 () Bool)

(assert (=> d!16529 (= c!6962 (or (is-Empty!79 ys!77) (is-Single!68 ys!77)))))

(assert (=> d!16529 (= (level!57 ys!77) lt!6109)))

(declare-fun b!31837 () Bool)

(assert (=> b!31837 (= e!16212 0)))

(assert (= (and d!16529 c!6962) b!31837))

(assert (= (and d!16529 (not c!6962)) b!31838))

(assert (=> b!31838 m!34665))

(assert (=> b!31838 m!34663))

(assert (=> b!31794 d!16529))

(declare-fun b!31840 () Bool)

(declare-fun e!16213 () Int)

(declare-fun lt!6110 () Int)

(declare-fun lt!6111 () Int)

(assert (=> b!31840 (= e!16213 (+ 1 (ite (>= lt!6110 lt!6111) lt!6110 lt!6111)))))

(assert (=> b!31840 (= lt!6111 (level!57 (right!716 xs!533)))))

(assert (=> b!31840 (= lt!6110 (level!57 (left!713 xs!533)))))

(declare-fun d!16531 () Bool)

(declare-fun lt!6112 () Int)

(assert (=> d!16531 (>= lt!6112 0)))

(assert (=> d!16531 (= lt!6112 e!16213)))

(declare-fun c!6963 () Bool)

(assert (=> d!16531 (= c!6963 (or (is-Empty!79 xs!533) (is-Single!68 xs!533)))))

(assert (=> d!16531 (= (level!57 xs!533) lt!6112)))

(declare-fun b!31839 () Bool)

(assert (=> b!31839 (= e!16213 0)))

(assert (= (and d!16531 c!6963) b!31839))

(assert (= (and d!16531 (not c!6963)) b!31840))

(assert (=> b!31840 m!34657))

(assert (=> b!31840 m!34655))

(assert (=> b!31794 d!16531))

(declare-fun b!31841 () Bool)

(declare-fun e!16214 () Bool)

(declare-fun e!16215 () Bool)

(assert (=> b!31841 (= e!16214 e!16215)))

(declare-fun res!14614 () Bool)

(assert (=> b!31841 (=> (not res!14614) (not e!16215))))

(assert (=> b!31841 (= res!14614 (not (isEmpty!325 (left!713 xs!533))))))

(declare-fun b!31844 () Bool)

(assert (=> b!31844 (= e!16215 (concInv!63 (right!716 xs!533)))))

(declare-fun b!31842 () Bool)

(declare-fun res!14613 () Bool)

(assert (=> b!31842 (=> (not res!14613) (not e!16215))))

(assert (=> b!31842 (= res!14613 (not (isEmpty!325 (right!716 xs!533))))))

(declare-fun b!31843 () Bool)

(declare-fun res!14616 () Bool)

(assert (=> b!31843 (=> (not res!14616) (not e!16215))))

(assert (=> b!31843 (= res!14616 (concInv!63 (left!713 xs!533)))))

(declare-fun d!16533 () Bool)

(declare-fun res!14615 () Bool)

(assert (=> d!16533 (=> res!14615 e!16214)))

(assert (=> d!16533 (= res!14615 (not (is-CC!68 xs!533)))))

(assert (=> d!16533 (= (concInv!63 xs!533) e!16214)))

(assert (= (and d!16533 (not res!14615)) b!31841))

(assert (= (and b!31841 res!14614) b!31842))

(assert (= (and b!31842 res!14613) b!31843))

(assert (= (and b!31843 res!14616) b!31844))

(declare-fun m!34677 () Bool)

(assert (=> b!31841 m!34677))

(declare-fun m!34679 () Bool)

(assert (=> b!31844 m!34679))

(declare-fun m!34681 () Bool)

(assert (=> b!31842 m!34681))

(declare-fun m!34683 () Bool)

(assert (=> b!31843 m!34683))

(assert (=> start!4026 d!16533))

(declare-fun b!31851 () Bool)

(declare-fun e!16218 () Bool)

(declare-fun tp!6588 () Bool)

(declare-fun tp!6589 () Bool)

(assert (=> b!31851 (= e!16218 (and tp!6588 tp!6589))))

(declare-fun b!31852 () Bool)

(assert (=> b!31852 (= e!16218 tp_is_empty!183)))

(assert (=> b!31800 (= tp!6581 e!16218)))

(assert (= (and b!31800 (is-CC!68 (left!713 ys!77))) b!31851))

(assert (= (and b!31800 (is-Single!68 (left!713 ys!77))) b!31852))

(declare-fun b!31853 () Bool)

(declare-fun e!16219 () Bool)

(declare-fun tp!6590 () Bool)

(declare-fun tp!6591 () Bool)

(assert (=> b!31853 (= e!16219 (and tp!6590 tp!6591))))

(declare-fun b!31854 () Bool)

(assert (=> b!31854 (= e!16219 tp_is_empty!183)))

(assert (=> b!31800 (= tp!6583 e!16219)))

(assert (= (and b!31800 (is-CC!68 (right!716 ys!77))) b!31853))

(assert (= (and b!31800 (is-Single!68 (right!716 ys!77))) b!31854))

(declare-fun b!31855 () Bool)

(declare-fun e!16220 () Bool)

(declare-fun tp!6592 () Bool)

(declare-fun tp!6593 () Bool)

(assert (=> b!31855 (= e!16220 (and tp!6592 tp!6593))))

(declare-fun b!31856 () Bool)

(assert (=> b!31856 (= e!16220 tp_is_empty!183)))

(assert (=> b!31802 (= tp!6582 e!16220)))

(assert (= (and b!31802 (is-CC!68 (left!713 xs!533))) b!31855))

(assert (= (and b!31802 (is-Single!68 (left!713 xs!533))) b!31856))

(declare-fun b!31857 () Bool)

(declare-fun e!16221 () Bool)

(declare-fun tp!6594 () Bool)

(declare-fun tp!6595 () Bool)

(assert (=> b!31857 (= e!16221 (and tp!6594 tp!6595))))

(declare-fun b!31858 () Bool)

(assert (=> b!31858 (= e!16221 tp_is_empty!183)))

(assert (=> b!31802 (= tp!6580 e!16221)))

(assert (= (and b!31802 (is-CC!68 (right!716 xs!533))) b!31857))

(assert (= (and b!31802 (is-Single!68 (right!716 xs!533))) b!31858))

(push 1)

(assert (not b!31818))

(assert tp_is_empty!183)

(assert (not b!31851))

(assert (not b!31853))

(assert (not b!31857))

(assert (not b!31813))

(assert (not b!31816))

(assert (not b!31832))

(assert (not b!31838))

(assert (not b!31830))

(assert (not b!31855))

(assert (not b!31820))

(assert (not b!31817))

(assert (not b!31843))

(assert (not b!31815))

(assert (not b!31829))

(assert (not b!31841))

(assert (not b!31819))

(assert (not b!31814))

(assert (not b!31840))

(assert (not b!31842))

(assert (not b!31831))

(assert (not b!31844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

