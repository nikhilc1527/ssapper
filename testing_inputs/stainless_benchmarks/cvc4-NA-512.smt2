; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3556 () Bool)

(assert start!3556)

(declare-fun b!22661 () Bool)

(declare-fun e!11851 () Bool)

(declare-fun index!8 () Int)

(declare-datatypes () ((T!1779 (T!1780 (val!62 Int)))))

(declare-datatypes () ((List!347 (Cons!341 (h!255 T!1779) (t!4342 List!347)) (Nil!342))))

(declare-fun thiss!2712 () List!347)

(declare-fun size!240 (List!347) Int)

(assert (=> b!22661 (= e!11851 (>= index!8 (size!240 thiss!2712)))))

(declare-fun b!22662 () Bool)

(declare-fun e!11853 () Bool)

(declare-fun tp_is_empty!123 () Bool)

(assert (=> b!22662 (= e!11853 tp_is_empty!123)))

(declare-fun b!22663 () Bool)

(declare-fun e!11852 () Bool)

(declare-fun tp!4981 () Bool)

(assert (=> b!22663 (= e!11852 (and tp_is_empty!123 tp!4981))))

(declare-fun b!22664 () Bool)

(declare-fun e!11854 () Bool)

(assert (=> b!22664 (= e!11854 e!11851)))

(declare-fun res!9951 () Bool)

(assert (=> b!22664 (=> res!9951 e!11851)))

(assert (=> b!22664 (= res!9951 (> 0 index!8))))

(declare-fun b!22665 () Bool)

(declare-fun tp!4982 () Bool)

(declare-fun tp!4980 () Bool)

(assert (=> b!22665 (= e!11853 (and tp!4982 tp!4980))))

(declare-fun b!22666 () Bool)

(declare-fun res!9952 () Bool)

(assert (=> b!22666 (=> (not res!9952) (not e!11854))))

(declare-fun i!252 () Int)

(assert (=> b!22666 (= res!9952 (= index!8 i!252))))

(declare-fun b!22667 () Bool)

(declare-fun res!9953 () Bool)

(assert (=> b!22667 (=> (not res!9953) (not e!11854))))

(declare-datatypes () ((Conc!39 (CC!38 (left!683 Conc!39) (right!686 Conc!39)) (Single!38 (x!8823 T!1779)) (Empty!49))))

(declare-fun xs!572 () Conc!39)

(declare-fun res!5552 () T!1779)

(assert (=> b!22667 (= res!9953 (and (is-Single!38 xs!572) (= res!5552 (x!8823 xs!572))))))

(declare-fun b!22668 () Bool)

(declare-fun res!9949 () Bool)

(assert (=> b!22668 (=> (not res!9949) (not e!11854))))

(declare-fun balanced!36 (Conc!39) Bool)

(assert (=> b!22668 (= res!9949 (balanced!36 xs!572))))

(declare-fun b!22669 () Bool)

(declare-fun res!9954 () Bool)

(assert (=> b!22669 (=> (not res!9954) (not e!11854))))

(declare-fun isEmpty!298 (Conc!39) Bool)

(assert (=> b!22669 (= res!9954 (not (isEmpty!298 xs!572)))))

(declare-fun b!22670 () Bool)

(declare-fun res!9946 () Bool)

(assert (=> b!22670 (=> (not res!9946) (not e!11854))))

(assert (=> b!22670 (= res!9946 (>= i!252 0))))

(declare-fun b!22671 () Bool)

(declare-fun res!9945 () Bool)

(assert (=> b!22671 (=> (not res!9945) (not e!11854))))

(declare-fun instAppendIndexAxiom!3 (Conc!39 Int) Bool)

(assert (=> b!22671 (= res!9945 (instAppendIndexAxiom!3 xs!572 i!252))))

(declare-fun b!22672 () Bool)

(declare-fun res!9950 () Bool)

(assert (=> b!22672 (=> (not res!9950) (not e!11854))))

(declare-fun size!241 (Conc!39) Int)

(assert (=> b!22672 (= res!9950 (< i!252 (size!241 xs!572)))))

(declare-fun b!22673 () Bool)

(declare-fun res!9948 () Bool)

(assert (=> b!22673 (=> (not res!9948) (not e!11854))))

(declare-fun toList!102 (Conc!39) List!347)

(assert (=> b!22673 (= res!9948 (= thiss!2712 (toList!102 xs!572)))))

(declare-fun res!9947 () Bool)

(assert (=> start!3556 (=> (not res!9947) (not e!11854))))

(declare-fun concInv!35 (Conc!39) Bool)

(assert (=> start!3556 (= res!9947 (concInv!35 xs!572))))

(assert (=> start!3556 e!11854))

(assert (=> start!3556 tp_is_empty!123))

(assert (=> start!3556 true))

(assert (=> start!3556 e!11852))

(assert (=> start!3556 e!11853))

(assert (= (and start!3556 res!9947) b!22668))

(assert (= (and b!22668 res!9949) b!22669))

(assert (= (and b!22669 res!9954) b!22670))

(assert (= (and b!22670 res!9946) b!22672))

(assert (= (and b!22672 res!9950) b!22667))

(assert (= (and b!22667 res!9953) b!22671))

(assert (= (and b!22671 res!9945) b!22673))

(assert (= (and b!22673 res!9948) b!22666))

(assert (= (and b!22666 res!9952) b!22664))

(assert (= (and b!22664 (not res!9951)) b!22661))

(assert (= (and start!3556 (is-Cons!341 thiss!2712)) b!22663))

(assert (= (and start!3556 (is-CC!38 xs!572)) b!22665))

(assert (= (and start!3556 (is-Single!38 xs!572)) b!22662))

(declare-fun m!24601 () Bool)

(assert (=> b!22673 m!24601))

(declare-fun m!24603 () Bool)

(assert (=> b!22672 m!24603))

(declare-fun m!24605 () Bool)

(assert (=> b!22661 m!24605))

(declare-fun m!24607 () Bool)

(assert (=> start!3556 m!24607))

(declare-fun m!24609 () Bool)

(assert (=> b!22668 m!24609))

(declare-fun m!24611 () Bool)

(assert (=> b!22671 m!24611))

(declare-fun m!24613 () Bool)

(assert (=> b!22669 m!24613))

(push 1)

(assert (not b!22665))

(assert (not b!22669))

(assert (not b!22663))

(assert (not start!3556))

(assert (not b!22673))

(assert (not b!22661))

(assert (not b!22672))

(assert (not b!22671))

(assert (not b!22668))

(assert tp_is_empty!123)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!22684 () Bool)

(declare-fun res!9964 () Bool)

(declare-fun e!11859 () Bool)

(assert (=> b!22684 (=> (not res!9964) (not e!11859))))

(assert (=> b!22684 (= res!9964 (concInv!35 (left!683 xs!572)))))

(declare-fun b!22682 () Bool)

(declare-fun e!11860 () Bool)

(assert (=> b!22682 (= e!11860 e!11859)))

(declare-fun res!9965 () Bool)

(assert (=> b!22682 (=> (not res!9965) (not e!11859))))

(assert (=> b!22682 (= res!9965 (not (isEmpty!298 (left!683 xs!572))))))

(declare-fun b!22683 () Bool)

(declare-fun res!9963 () Bool)

(assert (=> b!22683 (=> (not res!9963) (not e!11859))))

(assert (=> b!22683 (= res!9963 (not (isEmpty!298 (right!686 xs!572))))))

(declare-fun d!13207 () Bool)

(declare-fun res!9966 () Bool)

(assert (=> d!13207 (=> res!9966 e!11860)))

(assert (=> d!13207 (= res!9966 (not (is-CC!38 xs!572)))))

(assert (=> d!13207 (= (concInv!35 xs!572) e!11860)))

(declare-fun b!22685 () Bool)

(assert (=> b!22685 (= e!11859 (concInv!35 (right!686 xs!572)))))

(assert (= (and d!13207 (not res!9966)) b!22682))

(assert (= (and b!22682 res!9965) b!22683))

(assert (= (and b!22683 res!9963) b!22684))

(assert (= (and b!22684 res!9964) b!22685))

(declare-fun m!24615 () Bool)

(assert (=> b!22684 m!24615))

(declare-fun m!24617 () Bool)

(assert (=> b!22682 m!24617))

(declare-fun m!24619 () Bool)

(assert (=> b!22683 m!24619))

(declare-fun m!24621 () Bool)

(assert (=> b!22685 m!24621))

(assert (=> start!3556 d!13207))

(declare-fun d!13209 () Bool)

(assert (=> d!13209 (= (isEmpty!298 xs!572) (= xs!572 Empty!49))))

(assert (=> b!22669 d!13209))

(declare-fun d!13211 () Bool)

(declare-fun lt!3578 () Int)

(assert (=> d!13211 (>= lt!3578 0)))

(declare-fun e!11863 () Int)

(assert (=> d!13211 (= lt!3578 e!11863)))

(declare-fun c!5376 () Bool)

(assert (=> d!13211 (= c!5376 (is-Nil!342 thiss!2712))))

(assert (=> d!13211 (= (size!240 thiss!2712) lt!3578)))

(declare-fun b!22690 () Bool)

(assert (=> b!22690 (= e!11863 0)))

(declare-fun b!22691 () Bool)

(assert (=> b!22691 (= e!11863 (+ 1 (size!240 (t!4342 thiss!2712))))))

(assert (= (and d!13211 c!5376) b!22690))

(assert (= (and d!13211 (not c!5376)) b!22691))

(declare-fun m!24623 () Bool)

(assert (=> b!22691 m!24623))

(assert (=> b!22661 d!13211))

(declare-fun d!13213 () Bool)

(declare-fun lt!3581 () List!347)

(assert (=> d!13213 (= (size!240 lt!3581) (size!241 xs!572))))

(declare-fun e!11868 () List!347)

(assert (=> d!13213 (= lt!3581 e!11868)))

(declare-fun c!5382 () Bool)

(assert (=> d!13213 (= c!5382 (is-Empty!49 xs!572))))

(assert (=> d!13213 (= (toList!102 xs!572) lt!3581)))

(declare-fun b!22702 () Bool)

(declare-fun e!11869 () List!347)

(assert (=> b!22702 (= e!11869 (Cons!341 (x!8823 xs!572) Nil!342))))

(declare-fun b!22700 () Bool)

(assert (=> b!22700 (= e!11868 Nil!342)))

(declare-fun b!22703 () Bool)

(declare-fun ++!27 (List!347 List!347) List!347)

(assert (=> b!22703 (= e!11869 (++!27 (toList!102 (left!683 xs!572)) (toList!102 (right!686 xs!572))))))

(declare-fun b!22701 () Bool)

(assert (=> b!22701 (= e!11868 e!11869)))

(declare-fun c!5381 () Bool)

(assert (=> b!22701 (= c!5381 (is-Single!38 xs!572))))

(assert (= (and b!22701 c!5381) b!22702))

(assert (= (and b!22701 (not c!5381)) b!22703))

(assert (= (and d!13213 c!5382) b!22700))

(assert (= (and d!13213 (not c!5382)) b!22701))

(declare-fun m!24625 () Bool)

(assert (=> d!13213 m!24625))

(assert (=> d!13213 m!24603))

(declare-fun m!24627 () Bool)

(assert (=> b!22703 m!24627))

(declare-fun m!24629 () Bool)

(assert (=> b!22703 m!24629))

(assert (=> b!22703 m!24627))

(assert (=> b!22703 m!24629))

(declare-fun m!24631 () Bool)

(assert (=> b!22703 m!24631))

(assert (=> b!22673 d!13213))

(declare-fun d!13215 () Bool)

(declare-fun res!9977 () Bool)

(declare-fun e!11874 () Bool)

(assert (=> d!13215 (=> res!9977 e!11874)))

(assert (=> d!13215 (= res!9977 (not (is-CC!38 xs!572)))))

(assert (=> d!13215 (= (balanced!36 xs!572) e!11874)))

(declare-fun b!22712 () Bool)

(declare-fun e!11875 () Bool)

(assert (=> b!22712 (= e!11874 e!11875)))

(declare-fun res!9978 () Bool)

(assert (=> b!22712 (=> (not res!9978) (not e!11875))))

(declare-fun level!32 (Conc!39) Int)

(assert (=> b!22712 (= res!9978 (>= (- (level!32 (left!683 xs!572)) (level!32 (right!686 xs!572))) (- 1)))))

(declare-fun b!22713 () Bool)

(declare-fun res!9979 () Bool)

(assert (=> b!22713 (=> (not res!9979) (not e!11875))))

(assert (=> b!22713 (= res!9979 (<= (- (level!32 (left!683 xs!572)) (level!32 (right!686 xs!572))) 1))))

(declare-fun b!22715 () Bool)

(assert (=> b!22715 (= e!11875 (balanced!36 (right!686 xs!572)))))

(declare-fun b!22714 () Bool)

(declare-fun res!9976 () Bool)

(assert (=> b!22714 (=> (not res!9976) (not e!11875))))

(assert (=> b!22714 (= res!9976 (balanced!36 (left!683 xs!572)))))

(assert (= (and d!13215 (not res!9977)) b!22712))

(assert (= (and b!22712 res!9978) b!22713))

(assert (= (and b!22713 res!9979) b!22714))

(assert (= (and b!22714 res!9976) b!22715))

(declare-fun m!24633 () Bool)

(assert (=> b!22712 m!24633))

(declare-fun m!24635 () Bool)

(assert (=> b!22712 m!24635))

(assert (=> b!22713 m!24633))

(assert (=> b!22713 m!24635))

(declare-fun m!24637 () Bool)

(assert (=> b!22715 m!24637))

(declare-fun m!24639 () Bool)

(assert (=> b!22714 m!24639))

(assert (=> b!22668 d!13215))

(declare-fun b!22724 () Bool)

(declare-fun e!11880 () Int)

(assert (=> b!22724 (= e!11880 0)))

(declare-fun b!22725 () Bool)

(declare-fun e!11881 () Int)

(assert (=> b!22725 (= e!11880 e!11881)))

(declare-fun c!5388 () Bool)

(assert (=> b!22725 (= c!5388 (is-Single!38 xs!572))))

(declare-fun b!22727 () Bool)

(assert (=> b!22727 (= e!11881 (+ (size!241 (left!683 xs!572)) (size!241 (right!686 xs!572))))))

(declare-fun d!13217 () Bool)

(declare-fun lt!3584 () Int)

(assert (=> d!13217 (>= lt!3584 0)))

(assert (=> d!13217 (= lt!3584 e!11880)))

(declare-fun c!5387 () Bool)

(assert (=> d!13217 (= c!5387 (is-Empty!49 xs!572))))

(assert (=> d!13217 (= (size!241 xs!572) lt!3584)))

(declare-fun b!22726 () Bool)

(assert (=> b!22726 (= e!11881 1)))

(assert (= (and b!22725 c!5388) b!22726))

(assert (= (and b!22725 (not c!5388)) b!22727))

(assert (= (and d!13217 c!5387) b!22724))

(assert (= (and d!13217 (not c!5387)) b!22725))

(declare-fun m!24641 () Bool)

(assert (=> b!22727 m!24641))

(declare-fun m!24643 () Bool)

(assert (=> b!22727 m!24643))

(assert (=> b!22672 d!13217))

(declare-fun d!13219 () Bool)

(declare-fun e!11887 () Bool)

(assert (=> d!13219 e!11887))

(declare-fun res!9985 () Bool)

(assert (=> d!13219 (=> res!9985 e!11887)))

(assert (=> d!13219 (= res!9985 (not (is-CC!38 xs!572)))))

(declare-fun e!11886 () Bool)

(assert (=> d!13219 e!11886))

(declare-fun res!9984 () Bool)

(assert (=> d!13219 (=> (not res!9984) (not e!11886))))

(assert (=> d!13219 (= res!9984 (<= 0 i!252))))

(assert (=> d!13219 (= (instAppendIndexAxiom!3 xs!572 i!252) true)))

(declare-fun b!22732 () Bool)

(assert (=> b!22732 (= e!11886 (< i!252 (size!241 xs!572)))))

(declare-fun b!22733 () Bool)

(declare-fun appendIndex!2 (List!347 List!347 Int) Bool)

(assert (=> b!22733 (= e!11887 (appendIndex!2 (toList!102 (left!683 xs!572)) (toList!102 (right!686 xs!572)) i!252))))

(assert (= (and d!13219 res!9984) b!22732))

(assert (= (and d!13219 (not res!9985)) b!22733))

(assert (=> b!22732 m!24603))

(assert (=> b!22733 m!24627))

(assert (=> b!22733 m!24629))

(assert (=> b!22733 m!24627))

(assert (=> b!22733 m!24629))

(declare-fun m!24645 () Bool)

(assert (=> b!22733 m!24645))

(assert (=> b!22671 d!13219))

(declare-fun b!22740 () Bool)

(declare-fun e!11890 () Bool)

(declare-fun tp!4987 () Bool)

(declare-fun tp!4988 () Bool)

(assert (=> b!22740 (= e!11890 (and tp!4987 tp!4988))))

(declare-fun b!22741 () Bool)

(assert (=> b!22741 (= e!11890 tp_is_empty!123)))

(assert (=> b!22665 (= tp!4982 e!11890)))

(assert (= (and b!22665 (is-CC!38 (left!683 xs!572))) b!22740))

(assert (= (and b!22665 (is-Single!38 (left!683 xs!572))) b!22741))

(declare-fun b!22742 () Bool)

(declare-fun e!11891 () Bool)

(declare-fun tp!4989 () Bool)

(declare-fun tp!4990 () Bool)

(assert (=> b!22742 (= e!11891 (and tp!4989 tp!4990))))

(declare-fun b!22743 () Bool)

(assert (=> b!22743 (= e!11891 tp_is_empty!123)))

(assert (=> b!22665 (= tp!4980 e!11891)))

(assert (= (and b!22665 (is-CC!38 (right!686 xs!572))) b!22742))

(assert (= (and b!22665 (is-Single!38 (right!686 xs!572))) b!22743))

(declare-fun b!22748 () Bool)

(declare-fun e!11894 () Bool)

(declare-fun tp!4993 () Bool)

(assert (=> b!22748 (= e!11894 (and tp_is_empty!123 tp!4993))))

(assert (=> b!22663 (= tp!4981 e!11894)))

(assert (= (and b!22663 (is-Cons!341 (t!4342 thiss!2712))) b!22748))

(push 1)

(assert (not b!22685))

(assert (not b!22683))

(assert (not b!22713))

(assert (not b!22727))

(assert (not b!22732))

(assert (not b!22712))

(assert (not b!22714))

(assert (not b!22684))

(assert (not b!22733))

(assert (not b!22740))

(assert (not b!22748))

(assert (not b!22715))

(assert (not b!22691))

(assert tp_is_empty!123)

(assert (not b!22682))

(assert (not d!13213))

(assert (not b!22742))

(assert (not b!22703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

