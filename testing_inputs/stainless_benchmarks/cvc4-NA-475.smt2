; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3046 () Bool)

(assert start!3046)

(declare-fun b!14662 () Bool)

(declare-fun e!8069 () Bool)

(declare-fun tp!3581 () Bool)

(declare-fun tp!3577 () Bool)

(assert (=> b!14662 (= e!8069 (and tp!3581 tp!3577))))

(declare-fun b!14663 () Bool)

(declare-fun res!5899 () Bool)

(declare-fun e!8070 () Bool)

(assert (=> b!14663 (=> (not res!5899) (not e!8070))))

(declare-datatypes () ((T!1705 (T!1706 (val!25 Int)))))

(declare-datatypes () ((Conc!7 (CC!6 (left!651 Conc!7) (right!654 Conc!7)) (Single!6 (x!8693 T!1705)) (Empty!17))))

(declare-fun xs!637 () Conc!7)

(declare-fun n!315 () Int)

(declare-datatypes () ((tuple2!98 (tuple2!99 (_1!49 Conc!7) (_2!49 Conc!7)))))

(declare-fun x$4!71 () tuple2!98)

(declare-fun split!9 (Conc!7 Int) tuple2!98)

(declare-fun size!185 (Conc!7) Int)

(assert (=> b!14663 (= res!5899 (= x$4!71 (split!9 (right!654 xs!637) (- n!315 (size!185 (left!651 xs!637))))))))

(declare-fun b!14664 () Bool)

(declare-fun e!8071 () Bool)

(declare-fun tp_is_empty!49 () Bool)

(assert (=> b!14664 (= e!8071 tp_is_empty!49)))

(declare-fun b!14665 () Bool)

(declare-fun res!5893 () Bool)

(assert (=> b!14665 (=> (not res!5893) (not e!8070))))

(assert (=> b!14665 (= res!5893 (and (not (is-Empty!17 xs!637)) (not (is-Single!6 xs!637))))))

(declare-fun b!14666 () Bool)

(declare-fun res!5897 () Bool)

(assert (=> b!14666 (=> (not res!5897) (not e!8070))))

(declare-fun balanced!7 (Conc!7) Bool)

(assert (=> b!14666 (= res!5897 (balanced!7 xs!637))))

(declare-fun b!14667 () Bool)

(declare-fun tp!3585 () Bool)

(declare-fun tp!3586 () Bool)

(assert (=> b!14667 (= e!8071 (and tp!3585 tp!3586))))

(declare-fun b!14668 () Bool)

(declare-fun e!8072 () Bool)

(assert (=> b!14668 (= e!8072 tp_is_empty!49)))

(declare-fun b!14669 () Bool)

(declare-fun e!8066 () Bool)

(assert (=> b!14669 (= e!8070 e!8066)))

(declare-fun res!5895 () Bool)

(assert (=> b!14669 (=> res!5895 e!8066)))

(declare-fun xs!665 () Conc!7)

(declare-fun concInv!6 (Conc!7) Bool)

(assert (=> b!14669 (= res!5895 (not (concInv!6 xs!665)))))

(declare-fun b!14670 () Bool)

(declare-fun e!8065 () Bool)

(declare-fun tp!3588 () Bool)

(declare-fun tp!3584 () Bool)

(assert (=> b!14670 (= e!8065 (and tp!3588 tp!3584))))

(declare-fun b!14671 () Bool)

(declare-fun res!5900 () Bool)

(assert (=> b!14671 (=> (not res!5900) (not e!8070))))

(assert (=> b!14671 (= res!5900 (> n!315 (size!185 (left!651 xs!637))))))

(declare-fun b!14672 () Bool)

(declare-fun e!8068 () Bool)

(assert (=> b!14672 (= e!8068 tp_is_empty!49)))

(declare-fun b!14673 () Bool)

(declare-fun res!5901 () Bool)

(assert (=> b!14673 (=> (not res!5901) (not e!8070))))

(assert (=> b!14673 (= res!5901 (>= n!315 (size!185 (left!651 xs!637))))))

(declare-fun b!14674 () Bool)

(declare-fun res!5896 () Bool)

(assert (=> b!14674 (=> res!5896 e!8066)))

(declare-fun ys!132 () Conc!7)

(assert (=> b!14674 (= res!5896 (not (concInv!6 ys!132)))))

(declare-fun b!14675 () Bool)

(declare-fun e!8067 () Bool)

(declare-fun tp!3580 () Bool)

(declare-fun tp!3587 () Bool)

(assert (=> b!14675 (= e!8067 (and tp!3580 tp!3587))))

(declare-fun b!14676 () Bool)

(declare-fun res!5902 () Bool)

(assert (=> b!14676 (=> res!5902 e!8066)))

(assert (=> b!14676 (= res!5902 (not (balanced!7 xs!665)))))

(declare-fun b!14677 () Bool)

(declare-fun res!5898 () Bool)

(assert (=> b!14677 (=> (not res!5898) (not e!8070))))

(declare-fun rl!34 () Conc!7)

(declare-fun rr!34 () Conc!7)

(assert (=> b!14677 (= res!5898 (and (= rl!34 (_1!49 x$4!71)) (= rr!34 (_2!49 x$4!71)) (= xs!665 (left!651 xs!637)) (= ys!132 rl!34)))))

(declare-fun b!14678 () Bool)

(declare-fun e!8073 () Bool)

(declare-fun tp!3589 () Bool)

(declare-fun tp!3583 () Bool)

(assert (=> b!14678 (= e!8073 (and tp!3589 tp!3583))))

(declare-fun b!14679 () Bool)

(declare-fun tp!3582 () Bool)

(declare-fun tp!3578 () Bool)

(assert (=> b!14679 (= e!8072 (and tp!3582 tp!3578))))

(declare-fun b!14680 () Bool)

(assert (=> b!14680 (= e!8067 tp_is_empty!49)))

(declare-fun b!14681 () Bool)

(assert (=> b!14681 (= e!8066 (not (balanced!7 ys!132)))))

(declare-fun b!14682 () Bool)

(assert (=> b!14682 (= e!8073 tp_is_empty!49)))

(declare-fun b!14683 () Bool)

(assert (=> b!14683 (= e!8065 tp_is_empty!49)))

(declare-fun b!14684 () Bool)

(assert (=> b!14684 (= e!8069 tp_is_empty!49)))

(declare-fun res!5894 () Bool)

(assert (=> start!3046 (=> (not res!5894) (not e!8070))))

(assert (=> start!3046 (= res!5894 (concInv!6 xs!637))))

(assert (=> start!3046 e!8070))

(assert (=> start!3046 e!8069))

(assert (=> start!3046 e!8065))

(assert (=> start!3046 e!8067))

(assert (=> start!3046 true))

(assert (=> start!3046 e!8071))

(assert (=> start!3046 e!8073))

(assert (=> start!3046 (and e!8068 e!8072)))

(declare-fun b!14685 () Bool)

(declare-fun tp!3590 () Bool)

(declare-fun tp!3579 () Bool)

(assert (=> b!14685 (= e!8068 (and tp!3590 tp!3579))))

(assert (= (and start!3046 res!5894) b!14666))

(assert (= (and b!14666 res!5897) b!14665))

(assert (= (and b!14665 res!5893) b!14673))

(assert (= (and b!14673 res!5901) b!14671))

(assert (= (and b!14671 res!5900) b!14663))

(assert (= (and b!14663 res!5899) b!14677))

(assert (= (and b!14677 res!5898) b!14669))

(assert (= (and b!14669 (not res!5895)) b!14676))

(assert (= (and b!14676 (not res!5902)) b!14674))

(assert (= (and b!14674 (not res!5896)) b!14681))

(assert (= (and start!3046 (is-CC!6 xs!665)) b!14662))

(assert (= (and start!3046 (is-Single!6 xs!665)) b!14684))

(assert (= (and start!3046 (is-CC!6 xs!637)) b!14670))

(assert (= (and start!3046 (is-Single!6 xs!637)) b!14683))

(assert (= (and start!3046 (is-CC!6 rl!34)) b!14675))

(assert (= (and start!3046 (is-Single!6 rl!34)) b!14680))

(assert (= (and start!3046 (is-CC!6 ys!132)) b!14667))

(assert (= (and start!3046 (is-Single!6 ys!132)) b!14664))

(assert (= (and start!3046 (is-CC!6 rr!34)) b!14678))

(assert (= (and start!3046 (is-Single!6 rr!34)) b!14682))

(assert (= (and start!3046 (is-CC!6 (_1!49 x$4!71))) b!14685))

(assert (= (and start!3046 (is-Single!6 (_1!49 x$4!71))) b!14672))

(assert (= (and start!3046 (is-CC!6 (_2!49 x$4!71))) b!14679))

(assert (= (and start!3046 (is-Single!6 (_2!49 x$4!71))) b!14668))

(declare-fun m!18299 () Bool)

(assert (=> b!14673 m!18299))

(declare-fun m!18301 () Bool)

(assert (=> b!14676 m!18301))

(assert (=> b!14671 m!18299))

(assert (=> b!14663 m!18299))

(declare-fun m!18303 () Bool)

(assert (=> b!14663 m!18303))

(declare-fun m!18305 () Bool)

(assert (=> b!14669 m!18305))

(declare-fun m!18307 () Bool)

(assert (=> b!14666 m!18307))

(declare-fun m!18309 () Bool)

(assert (=> start!3046 m!18309))

(declare-fun m!18311 () Bool)

(assert (=> b!14674 m!18311))

(declare-fun m!18313 () Bool)

(assert (=> b!14681 m!18313))

(push 1)

(assert (not b!14675))

(assert (not b!14669))

(assert (not b!14678))

(assert (not b!14676))

(assert tp_is_empty!49)

(assert (not start!3046))

(assert (not b!14671))

(assert (not b!14673))

(assert (not b!14679))

(assert (not b!14674))

(assert (not b!14670))

(assert (not b!14685))

(assert (not b!14666))

(assert (not b!14667))

(assert (not b!14663))

(assert (not b!14662))

(assert (not b!14681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!11307 () Bool)

(declare-fun lt!2071 () Int)

(assert (=> d!11307 (>= lt!2071 0)))

(declare-fun e!8078 () Int)

(assert (=> d!11307 (= lt!2071 e!8078)))

(declare-fun c!3965 () Bool)

(assert (=> d!11307 (= c!3965 (is-Empty!17 (left!651 xs!637)))))

(assert (=> d!11307 (= (size!185 (left!651 xs!637)) lt!2071)))

(declare-fun b!14696 () Bool)

(declare-fun e!8079 () Int)

(assert (=> b!14696 (= e!8079 1)))

(declare-fun b!14694 () Bool)

(assert (=> b!14694 (= e!8078 0)))

(declare-fun b!14695 () Bool)

(assert (=> b!14695 (= e!8078 e!8079)))

(declare-fun c!3966 () Bool)

(assert (=> b!14695 (= c!3966 (is-Single!6 (left!651 xs!637)))))

(declare-fun b!14697 () Bool)

(assert (=> b!14697 (= e!8079 (+ (size!185 (left!651 (left!651 xs!637))) (size!185 (right!654 (left!651 xs!637)))))))

(assert (= (and b!14695 c!3966) b!14696))

(assert (= (and b!14695 (not c!3966)) b!14697))

(assert (= (and d!11307 c!3965) b!14694))

(assert (= (and d!11307 (not c!3965)) b!14695))

(declare-fun m!18315 () Bool)

(assert (=> b!14697 m!18315))

(declare-fun m!18317 () Bool)

(assert (=> b!14697 m!18317))

(assert (=> b!14673 d!11307))

(declare-fun b!14706 () Bool)

(declare-fun e!8085 () Bool)

(declare-fun e!8084 () Bool)

(assert (=> b!14706 (= e!8085 e!8084)))

(declare-fun res!5911 () Bool)

(assert (=> b!14706 (=> (not res!5911) (not e!8084))))

(declare-fun level!6 (Conc!7) Int)

(assert (=> b!14706 (= res!5911 (>= (- (level!6 (left!651 xs!665)) (level!6 (right!654 xs!665))) (- 1)))))

(declare-fun b!14708 () Bool)

(declare-fun res!5913 () Bool)

(assert (=> b!14708 (=> (not res!5913) (not e!8084))))

(assert (=> b!14708 (= res!5913 (balanced!7 (left!651 xs!665)))))

(declare-fun b!14709 () Bool)

(assert (=> b!14709 (= e!8084 (balanced!7 (right!654 xs!665)))))

(declare-fun d!11309 () Bool)

(declare-fun res!5914 () Bool)

(assert (=> d!11309 (=> res!5914 e!8085)))

(assert (=> d!11309 (= res!5914 (not (is-CC!6 xs!665)))))

(assert (=> d!11309 (= (balanced!7 xs!665) e!8085)))

(declare-fun b!14707 () Bool)

(declare-fun res!5912 () Bool)

(assert (=> b!14707 (=> (not res!5912) (not e!8084))))

(assert (=> b!14707 (= res!5912 (<= (- (level!6 (left!651 xs!665)) (level!6 (right!654 xs!665))) 1))))

(assert (= (and d!11309 (not res!5914)) b!14706))

(assert (= (and b!14706 res!5911) b!14707))

(assert (= (and b!14707 res!5912) b!14708))

(assert (= (and b!14708 res!5913) b!14709))

(declare-fun m!18319 () Bool)

(assert (=> b!14706 m!18319))

(declare-fun m!18321 () Bool)

(assert (=> b!14706 m!18321))

(declare-fun m!18323 () Bool)

(assert (=> b!14708 m!18323))

(declare-fun m!18325 () Bool)

(assert (=> b!14709 m!18325))

(assert (=> b!14707 m!18319))

(assert (=> b!14707 m!18321))

(assert (=> b!14676 d!11309))

(declare-fun b!14718 () Bool)

(declare-fun e!8090 () Bool)

(declare-fun e!8091 () Bool)

(assert (=> b!14718 (= e!8090 e!8091)))

(declare-fun res!5923 () Bool)

(assert (=> b!14718 (=> (not res!5923) (not e!8091))))

(declare-fun isEmpty!271 (Conc!7) Bool)

(assert (=> b!14718 (= res!5923 (not (isEmpty!271 (left!651 ys!132))))))

(declare-fun b!14721 () Bool)

(assert (=> b!14721 (= e!8091 (concInv!6 (right!654 ys!132)))))

(declare-fun b!14719 () Bool)

(declare-fun res!5924 () Bool)

(assert (=> b!14719 (=> (not res!5924) (not e!8091))))

(assert (=> b!14719 (= res!5924 (not (isEmpty!271 (right!654 ys!132))))))

(declare-fun d!11311 () Bool)

(declare-fun res!5925 () Bool)

(assert (=> d!11311 (=> res!5925 e!8090)))

(assert (=> d!11311 (= res!5925 (not (is-CC!6 ys!132)))))

(assert (=> d!11311 (= (concInv!6 ys!132) e!8090)))

(declare-fun b!14720 () Bool)

(declare-fun res!5926 () Bool)

(assert (=> b!14720 (=> (not res!5926) (not e!8091))))

(assert (=> b!14720 (= res!5926 (concInv!6 (left!651 ys!132)))))

(assert (= (and d!11311 (not res!5925)) b!14718))

(assert (= (and b!14718 res!5923) b!14719))

(assert (= (and b!14719 res!5924) b!14720))

(assert (= (and b!14720 res!5926) b!14721))

(declare-fun m!18327 () Bool)

(assert (=> b!14718 m!18327))

(declare-fun m!18329 () Bool)

(assert (=> b!14721 m!18329))

(declare-fun m!18331 () Bool)

(assert (=> b!14719 m!18331))

(declare-fun m!18333 () Bool)

(assert (=> b!14720 m!18333))

(assert (=> b!14674 d!11311))

(declare-fun b!14722 () Bool)

(declare-fun e!8093 () Bool)

(declare-fun e!8092 () Bool)

(assert (=> b!14722 (= e!8093 e!8092)))

(declare-fun res!5927 () Bool)

(assert (=> b!14722 (=> (not res!5927) (not e!8092))))

(assert (=> b!14722 (= res!5927 (>= (- (level!6 (left!651 ys!132)) (level!6 (right!654 ys!132))) (- 1)))))

(declare-fun b!14724 () Bool)

(declare-fun res!5929 () Bool)

(assert (=> b!14724 (=> (not res!5929) (not e!8092))))

(assert (=> b!14724 (= res!5929 (balanced!7 (left!651 ys!132)))))

(declare-fun b!14725 () Bool)

(assert (=> b!14725 (= e!8092 (balanced!7 (right!654 ys!132)))))

(declare-fun d!11313 () Bool)

(declare-fun res!5930 () Bool)

(assert (=> d!11313 (=> res!5930 e!8093)))

(assert (=> d!11313 (= res!5930 (not (is-CC!6 ys!132)))))

(assert (=> d!11313 (= (balanced!7 ys!132) e!8093)))

(declare-fun b!14723 () Bool)

(declare-fun res!5928 () Bool)

(assert (=> b!14723 (=> (not res!5928) (not e!8092))))

(assert (=> b!14723 (= res!5928 (<= (- (level!6 (left!651 ys!132)) (level!6 (right!654 ys!132))) 1))))

(assert (= (and d!11313 (not res!5930)) b!14722))

(assert (= (and b!14722 res!5927) b!14723))

(assert (= (and b!14723 res!5928) b!14724))

(assert (= (and b!14724 res!5929) b!14725))

(declare-fun m!18335 () Bool)

(assert (=> b!14722 m!18335))

(declare-fun m!18337 () Bool)

(assert (=> b!14722 m!18337))

(declare-fun m!18339 () Bool)

(assert (=> b!14724 m!18339))

(declare-fun m!18341 () Bool)

(assert (=> b!14725 m!18341))

(assert (=> b!14723 m!18335))

(assert (=> b!14723 m!18337))

(assert (=> b!14681 d!11313))

(declare-fun b!14726 () Bool)

(declare-fun e!8095 () Bool)

(declare-fun e!8094 () Bool)

(assert (=> b!14726 (= e!8095 e!8094)))

(declare-fun res!5931 () Bool)

(assert (=> b!14726 (=> (not res!5931) (not e!8094))))

(assert (=> b!14726 (= res!5931 (>= (- (level!6 (left!651 xs!637)) (level!6 (right!654 xs!637))) (- 1)))))

(declare-fun b!14728 () Bool)

(declare-fun res!5933 () Bool)

(assert (=> b!14728 (=> (not res!5933) (not e!8094))))

(assert (=> b!14728 (= res!5933 (balanced!7 (left!651 xs!637)))))

(declare-fun b!14729 () Bool)

(assert (=> b!14729 (= e!8094 (balanced!7 (right!654 xs!637)))))

(declare-fun d!11315 () Bool)

(declare-fun res!5934 () Bool)

(assert (=> d!11315 (=> res!5934 e!8095)))

(assert (=> d!11315 (= res!5934 (not (is-CC!6 xs!637)))))

(assert (=> d!11315 (= (balanced!7 xs!637) e!8095)))

(declare-fun b!14727 () Bool)

(declare-fun res!5932 () Bool)

(assert (=> b!14727 (=> (not res!5932) (not e!8094))))

(assert (=> b!14727 (= res!5932 (<= (- (level!6 (left!651 xs!637)) (level!6 (right!654 xs!637))) 1))))

(assert (= (and d!11315 (not res!5934)) b!14726))

(assert (= (and b!14726 res!5931) b!14727))

(assert (= (and b!14727 res!5932) b!14728))

(assert (= (and b!14728 res!5933) b!14729))

(declare-fun m!18343 () Bool)

(assert (=> b!14726 m!18343))

(declare-fun m!18345 () Bool)

(assert (=> b!14726 m!18345))

(declare-fun m!18347 () Bool)

(assert (=> b!14728 m!18347))

(declare-fun m!18349 () Bool)

(assert (=> b!14729 m!18349))

(assert (=> b!14727 m!18343))

(assert (=> b!14727 m!18345))

(assert (=> b!14666 d!11315))

(assert (=> b!14671 d!11307))

(declare-fun b!14762 () Bool)

(declare-fun e!8118 () tuple2!98)

(declare-fun concatNormalized!4 (Conc!7 Conc!7) Conc!7)

(assert (=> b!14762 (= e!8118 (tuple2!99 (_1!49 (split!9 (left!651 (right!654 xs!637)) (- n!315 (size!185 (left!651 xs!637))))) (concatNormalized!4 (_2!49 (split!9 (left!651 (right!654 xs!637)) (- n!315 (size!185 (left!651 xs!637))))) (right!654 (right!654 xs!637)))))))

(declare-fun b!14763 () Bool)

(declare-fun res!5953 () Bool)

(declare-fun e!8117 () Bool)

(assert (=> b!14763 (=> (not res!5953) (not e!8117))))

(declare-fun lt!2078 () tuple2!98)

(assert (=> b!14763 (= res!5953 (>= (level!6 (right!654 xs!637)) (level!6 (_1!49 lt!2078))))))

(declare-fun b!14764 () Bool)

(declare-fun e!8112 () tuple2!98)

(assert (=> b!14764 (= e!8112 (tuple2!99 Empty!17 Empty!17))))

(declare-fun b!14765 () Bool)

(declare-fun e!8116 () tuple2!98)

(assert (=> b!14765 (= e!8116 (ite (<= (- n!315 (size!185 (left!651 xs!637))) 0) (tuple2!99 Empty!17 (right!654 xs!637)) (tuple2!99 (right!654 xs!637) Empty!17)))))

(declare-fun b!14766 () Bool)

(assert (=> b!14766 (= e!8116 e!8118)))

(declare-fun c!3977 () Bool)

(assert (=> b!14766 (= c!3977 (< (- n!315 (size!185 (left!651 xs!637))) (size!185 (left!651 (right!654 xs!637)))))))

(declare-fun b!14767 () Bool)

(declare-fun e!8115 () tuple2!98)

(assert (=> b!14767 (= e!8118 e!8115)))

(declare-fun c!3978 () Bool)

(assert (=> b!14767 (= c!3978 (> (- n!315 (size!185 (left!651 xs!637))) (size!185 (left!651 (right!654 xs!637)))))))

(declare-fun b!14768 () Bool)

(assert (=> b!14768 (= e!8115 (tuple2!99 (concatNormalized!4 (left!651 (right!654 xs!637)) (_1!49 (split!9 (right!654 (right!654 xs!637)) (- (- n!315 (size!185 (left!651 xs!637))) (size!185 (left!651 (right!654 xs!637))))))) (_2!49 (split!9 (right!654 (right!654 xs!637)) (- (- n!315 (size!185 (left!651 xs!637))) (size!185 (left!651 (right!654 xs!637))))))))))

(declare-fun b!14769 () Bool)

(assert (=> b!14769 (= e!8115 (tuple2!99 (left!651 (right!654 xs!637)) (right!654 (right!654 xs!637))))))

(declare-fun b!14770 () Bool)

(declare-fun res!5959 () Bool)

(assert (=> b!14770 (=> (not res!5959) (not e!8117))))

(declare-fun e!8119 () Bool)

(assert (=> b!14770 (= res!5959 e!8119)))

(declare-fun res!5952 () Bool)

(assert (=> b!14770 (=> (not res!5952) (not e!8119))))

(declare-fun lt!2079 () Conc!7)

(assert (=> b!14770 (= res!5952 (concInv!6 lt!2079))))

(assert (=> b!14770 (= lt!2079 (_2!49 lt!2078))))

(declare-fun b!14771 () Bool)

(declare-fun res!5958 () Bool)

(assert (=> b!14771 (=> (not res!5958) (not e!8117))))

(assert (=> b!14771 (= res!5958 (>= (level!6 (right!654 xs!637)) (level!6 (_2!49 lt!2078))))))

(declare-fun b!14772 () Bool)

(declare-fun res!5957 () Bool)

(assert (=> b!14772 (=> (not res!5957) (not e!8117))))

(declare-fun instSplitAxiom!4 (Conc!7 Int) Bool)

(assert (=> b!14772 (= res!5957 (instSplitAxiom!4 (right!654 xs!637) (- n!315 (size!185 (left!651 xs!637)))))))

(declare-fun b!14773 () Bool)

(declare-fun e!8113 () Bool)

(assert (=> b!14773 (= e!8113 (balanced!7 (right!654 xs!637)))))

(declare-fun b!14774 () Bool)

(assert (=> b!14774 (= e!8112 e!8116)))

(declare-fun c!3975 () Bool)

(assert (=> b!14774 (= c!3975 (is-Single!6 (right!654 xs!637)))))

(declare-fun b!14775 () Bool)

(declare-fun e!8114 () Bool)

(declare-fun lt!2080 () Conc!7)

(assert (=> b!14775 (= e!8114 (balanced!7 lt!2080))))

(declare-fun d!11317 () Bool)

(assert (=> d!11317 e!8117))

(declare-fun res!5954 () Bool)

(assert (=> d!11317 (=> (not res!5954) (not e!8117))))

(assert (=> d!11317 (= res!5954 e!8114)))

(declare-fun res!5956 () Bool)

(assert (=> d!11317 (=> (not res!5956) (not e!8114))))

(assert (=> d!11317 (= res!5956 (concInv!6 lt!2080))))

(assert (=> d!11317 (= lt!2080 (_1!49 lt!2078))))

(assert (=> d!11317 (= lt!2078 e!8112)))

(declare-fun c!3976 () Bool)

(assert (=> d!11317 (= c!3976 (is-Empty!17 (right!654 xs!637)))))

(assert (=> d!11317 e!8113))

(declare-fun res!5955 () Bool)

(assert (=> d!11317 (=> (not res!5955) (not e!8113))))

(assert (=> d!11317 (= res!5955 (concInv!6 (right!654 xs!637)))))

(assert (=> d!11317 (= (split!9 (right!654 xs!637) (- n!315 (size!185 (left!651 xs!637)))) lt!2078)))

(declare-fun b!14776 () Bool)

(declare-fun splitCorrectness!2 (tuple2!98 Conc!7 Int) Bool)

(assert (=> b!14776 (= e!8117 (splitCorrectness!2 lt!2078 (right!654 xs!637) (- n!315 (size!185 (left!651 xs!637)))))))

(declare-fun b!14777 () Bool)

(assert (=> b!14777 (= e!8119 (balanced!7 lt!2079))))

(assert (= (and d!11317 res!5955) b!14773))

(assert (= (and b!14767 c!3978) b!14768))

(assert (= (and b!14767 (not c!3978)) b!14769))

(assert (= (and b!14766 c!3977) b!14762))

(assert (= (and b!14766 (not c!3977)) b!14767))

(assert (= (and b!14774 c!3975) b!14765))

(assert (= (and b!14774 (not c!3975)) b!14766))

(assert (= (and d!11317 c!3976) b!14764))

(assert (= (and d!11317 (not c!3976)) b!14774))

(assert (= (and d!11317 res!5956) b!14775))

(assert (= (and d!11317 res!5954) b!14770))

(assert (= (and b!14770 res!5952) b!14777))

(assert (= (and b!14770 res!5959) b!14763))

(assert (= (and b!14763 res!5953) b!14771))

(assert (= (and b!14771 res!5958) b!14772))

(assert (= (and b!14772 res!5957) b!14776))

(assert (=> b!14773 m!18349))

(declare-fun m!18351 () Bool)

(assert (=> b!14770 m!18351))

(assert (=> b!14771 m!18345))

(declare-fun m!18353 () Bool)

(assert (=> b!14771 m!18353))

(declare-fun m!18355 () Bool)

(assert (=> b!14775 m!18355))

(declare-fun m!18357 () Bool)

(assert (=> b!14772 m!18357))

(declare-fun m!18359 () Bool)

(assert (=> b!14777 m!18359))

(declare-fun m!18361 () Bool)

(assert (=> d!11317 m!18361))

(declare-fun m!18363 () Bool)

(assert (=> d!11317 m!18363))

(declare-fun m!18365 () Bool)

(assert (=> b!14768 m!18365))

(declare-fun m!18367 () Bool)

(assert (=> b!14768 m!18367))

(declare-fun m!18369 () Bool)

(assert (=> b!14768 m!18369))

(assert (=> b!14763 m!18345))

(declare-fun m!18371 () Bool)

(assert (=> b!14763 m!18371))

(declare-fun m!18373 () Bool)

(assert (=> b!14762 m!18373))

(declare-fun m!18375 () Bool)

(assert (=> b!14762 m!18375))

(declare-fun m!18377 () Bool)

(assert (=> b!14776 m!18377))

(assert (=> b!14766 m!18365))

(assert (=> b!14767 m!18365))

(assert (=> b!14663 d!11317))

(assert (=> b!14663 d!11307))

(declare-fun b!14778 () Bool)

(declare-fun e!8120 () Bool)

(declare-fun e!8121 () Bool)

(assert (=> b!14778 (= e!8120 e!8121)))

(declare-fun res!5960 () Bool)

(assert (=> b!14778 (=> (not res!5960) (not e!8121))))

(assert (=> b!14778 (= res!5960 (not (isEmpty!271 (left!651 xs!665))))))

(declare-fun b!14781 () Bool)

(assert (=> b!14781 (= e!8121 (concInv!6 (right!654 xs!665)))))

(declare-fun b!14779 () Bool)

(declare-fun res!5961 () Bool)

(assert (=> b!14779 (=> (not res!5961) (not e!8121))))

(assert (=> b!14779 (= res!5961 (not (isEmpty!271 (right!654 xs!665))))))

(declare-fun d!11319 () Bool)

(declare-fun res!5962 () Bool)

(assert (=> d!11319 (=> res!5962 e!8120)))

(assert (=> d!11319 (= res!5962 (not (is-CC!6 xs!665)))))

(assert (=> d!11319 (= (concInv!6 xs!665) e!8120)))

(declare-fun b!14780 () Bool)

(declare-fun res!5963 () Bool)

(assert (=> b!14780 (=> (not res!5963) (not e!8121))))

(assert (=> b!14780 (= res!5963 (concInv!6 (left!651 xs!665)))))

(assert (= (and d!11319 (not res!5962)) b!14778))

(assert (= (and b!14778 res!5960) b!14779))

(assert (= (and b!14779 res!5961) b!14780))

(assert (= (and b!14780 res!5963) b!14781))

(declare-fun m!18379 () Bool)

(assert (=> b!14778 m!18379))

(declare-fun m!18381 () Bool)

(assert (=> b!14781 m!18381))

(declare-fun m!18383 () Bool)

(assert (=> b!14779 m!18383))

(declare-fun m!18385 () Bool)

(assert (=> b!14780 m!18385))

(assert (=> b!14669 d!11319))

(declare-fun b!14782 () Bool)

(declare-fun e!8122 () Bool)

(declare-fun e!8123 () Bool)

(assert (=> b!14782 (= e!8122 e!8123)))

(declare-fun res!5964 () Bool)

(assert (=> b!14782 (=> (not res!5964) (not e!8123))))

(assert (=> b!14782 (= res!5964 (not (isEmpty!271 (left!651 xs!637))))))

(declare-fun b!14785 () Bool)

(assert (=> b!14785 (= e!8123 (concInv!6 (right!654 xs!637)))))

(declare-fun b!14783 () Bool)

(declare-fun res!5965 () Bool)

(assert (=> b!14783 (=> (not res!5965) (not e!8123))))

(assert (=> b!14783 (= res!5965 (not (isEmpty!271 (right!654 xs!637))))))

(declare-fun d!11321 () Bool)

(declare-fun res!5966 () Bool)

(assert (=> d!11321 (=> res!5966 e!8122)))

(assert (=> d!11321 (= res!5966 (not (is-CC!6 xs!637)))))

(assert (=> d!11321 (= (concInv!6 xs!637) e!8122)))

(declare-fun b!14784 () Bool)

(declare-fun res!5967 () Bool)

(assert (=> b!14784 (=> (not res!5967) (not e!8123))))

(assert (=> b!14784 (= res!5967 (concInv!6 (left!651 xs!637)))))

(assert (= (and d!11321 (not res!5966)) b!14782))

(assert (= (and b!14782 res!5964) b!14783))

(assert (= (and b!14783 res!5965) b!14784))

(assert (= (and b!14784 res!5967) b!14785))

(declare-fun m!18387 () Bool)

(assert (=> b!14782 m!18387))

(assert (=> b!14785 m!18363))

(declare-fun m!18389 () Bool)

(assert (=> b!14783 m!18389))

(declare-fun m!18391 () Bool)

(assert (=> b!14784 m!18391))

(assert (=> start!3046 d!11321))

(declare-fun b!14792 () Bool)

(declare-fun e!8126 () Bool)

(declare-fun tp!3595 () Bool)

(declare-fun tp!3596 () Bool)

(assert (=> b!14792 (= e!8126 (and tp!3595 tp!3596))))

(declare-fun b!14793 () Bool)

(assert (=> b!14793 (= e!8126 tp_is_empty!49)))

(assert (=> b!14678 (= tp!3589 e!8126)))

(assert (= (and b!14678 (is-CC!6 (left!651 rr!34))) b!14792))

(assert (= (and b!14678 (is-Single!6 (left!651 rr!34))) b!14793))

(declare-fun b!14794 () Bool)

(declare-fun e!8127 () Bool)

(declare-fun tp!3597 () Bool)

(declare-fun tp!3598 () Bool)

(assert (=> b!14794 (= e!8127 (and tp!3597 tp!3598))))

(declare-fun b!14795 () Bool)

(assert (=> b!14795 (= e!8127 tp_is_empty!49)))

(assert (=> b!14678 (= tp!3583 e!8127)))

(assert (= (and b!14678 (is-CC!6 (right!654 rr!34))) b!14794))

(assert (= (and b!14678 (is-Single!6 (right!654 rr!34))) b!14795))

(declare-fun b!14796 () Bool)

(declare-fun e!8128 () Bool)

(declare-fun tp!3599 () Bool)

(declare-fun tp!3600 () Bool)

(assert (=> b!14796 (= e!8128 (and tp!3599 tp!3600))))

(declare-fun b!14797 () Bool)

(assert (=> b!14797 (= e!8128 tp_is_empty!49)))

(assert (=> b!14667 (= tp!3585 e!8128)))

(assert (= (and b!14667 (is-CC!6 (left!651 ys!132))) b!14796))

(assert (= (and b!14667 (is-Single!6 (left!651 ys!132))) b!14797))

(declare-fun b!14798 () Bool)

(declare-fun e!8129 () Bool)

(declare-fun tp!3601 () Bool)

(declare-fun tp!3602 () Bool)

(assert (=> b!14798 (= e!8129 (and tp!3601 tp!3602))))

(declare-fun b!14799 () Bool)

(assert (=> b!14799 (= e!8129 tp_is_empty!49)))

(assert (=> b!14667 (= tp!3586 e!8129)))

(assert (= (and b!14667 (is-CC!6 (right!654 ys!132))) b!14798))

(assert (= (and b!14667 (is-Single!6 (right!654 ys!132))) b!14799))

(declare-fun b!14800 () Bool)

(declare-fun e!8130 () Bool)

(declare-fun tp!3603 () Bool)

(declare-fun tp!3604 () Bool)

(assert (=> b!14800 (= e!8130 (and tp!3603 tp!3604))))

(declare-fun b!14801 () Bool)

(assert (=> b!14801 (= e!8130 tp_is_empty!49)))

(assert (=> b!14662 (= tp!3581 e!8130)))

(assert (= (and b!14662 (is-CC!6 (left!651 xs!665))) b!14800))

(assert (= (and b!14662 (is-Single!6 (left!651 xs!665))) b!14801))

(declare-fun b!14802 () Bool)

(declare-fun e!8131 () Bool)

(declare-fun tp!3605 () Bool)

(declare-fun tp!3606 () Bool)

(assert (=> b!14802 (= e!8131 (and tp!3605 tp!3606))))

(declare-fun b!14803 () Bool)

(assert (=> b!14803 (= e!8131 tp_is_empty!49)))

(assert (=> b!14662 (= tp!3577 e!8131)))

(assert (= (and b!14662 (is-CC!6 (right!654 xs!665))) b!14802))

(assert (= (and b!14662 (is-Single!6 (right!654 xs!665))) b!14803))

(declare-fun b!14804 () Bool)

(declare-fun e!8132 () Bool)

(declare-fun tp!3607 () Bool)

(declare-fun tp!3608 () Bool)

(assert (=> b!14804 (= e!8132 (and tp!3607 tp!3608))))

(declare-fun b!14805 () Bool)

(assert (=> b!14805 (= e!8132 tp_is_empty!49)))

(assert (=> b!14685 (= tp!3590 e!8132)))

(assert (= (and b!14685 (is-CC!6 (left!651 (_1!49 x$4!71)))) b!14804))

(assert (= (and b!14685 (is-Single!6 (left!651 (_1!49 x$4!71)))) b!14805))

(declare-fun b!14806 () Bool)

(declare-fun e!8133 () Bool)

(declare-fun tp!3609 () Bool)

(declare-fun tp!3610 () Bool)

(assert (=> b!14806 (= e!8133 (and tp!3609 tp!3610))))

(declare-fun b!14807 () Bool)

(assert (=> b!14807 (= e!8133 tp_is_empty!49)))

(assert (=> b!14685 (= tp!3579 e!8133)))

(assert (= (and b!14685 (is-CC!6 (right!654 (_1!49 x$4!71)))) b!14806))

(assert (= (and b!14685 (is-Single!6 (right!654 (_1!49 x$4!71)))) b!14807))

(declare-fun b!14808 () Bool)

(declare-fun e!8134 () Bool)

(declare-fun tp!3611 () Bool)

(declare-fun tp!3612 () Bool)

(assert (=> b!14808 (= e!8134 (and tp!3611 tp!3612))))

(declare-fun b!14809 () Bool)

(assert (=> b!14809 (= e!8134 tp_is_empty!49)))

(assert (=> b!14679 (= tp!3582 e!8134)))

(assert (= (and b!14679 (is-CC!6 (left!651 (_2!49 x$4!71)))) b!14808))

(assert (= (and b!14679 (is-Single!6 (left!651 (_2!49 x$4!71)))) b!14809))

(declare-fun b!14810 () Bool)

(declare-fun e!8135 () Bool)

(declare-fun tp!3613 () Bool)

(declare-fun tp!3614 () Bool)

(assert (=> b!14810 (= e!8135 (and tp!3613 tp!3614))))

(declare-fun b!14811 () Bool)

(assert (=> b!14811 (= e!8135 tp_is_empty!49)))

(assert (=> b!14679 (= tp!3578 e!8135)))

(assert (= (and b!14679 (is-CC!6 (right!654 (_2!49 x$4!71)))) b!14810))

(assert (= (and b!14679 (is-Single!6 (right!654 (_2!49 x$4!71)))) b!14811))

(declare-fun b!14812 () Bool)

(declare-fun e!8136 () Bool)

(declare-fun tp!3615 () Bool)

(declare-fun tp!3616 () Bool)

(assert (=> b!14812 (= e!8136 (and tp!3615 tp!3616))))

(declare-fun b!14813 () Bool)

(assert (=> b!14813 (= e!8136 tp_is_empty!49)))

(assert (=> b!14670 (= tp!3588 e!8136)))

(assert (= (and b!14670 (is-CC!6 (left!651 xs!637))) b!14812))

(assert (= (and b!14670 (is-Single!6 (left!651 xs!637))) b!14813))

(declare-fun b!14814 () Bool)

(declare-fun e!8137 () Bool)

(declare-fun tp!3617 () Bool)

(declare-fun tp!3618 () Bool)

(assert (=> b!14814 (= e!8137 (and tp!3617 tp!3618))))

(declare-fun b!14815 () Bool)

(assert (=> b!14815 (= e!8137 tp_is_empty!49)))

(assert (=> b!14670 (= tp!3584 e!8137)))

(assert (= (and b!14670 (is-CC!6 (right!654 xs!637))) b!14814))

(assert (= (and b!14670 (is-Single!6 (right!654 xs!637))) b!14815))

(declare-fun b!14816 () Bool)

(declare-fun e!8138 () Bool)

(declare-fun tp!3619 () Bool)

(declare-fun tp!3620 () Bool)

(assert (=> b!14816 (= e!8138 (and tp!3619 tp!3620))))

(declare-fun b!14817 () Bool)

(assert (=> b!14817 (= e!8138 tp_is_empty!49)))

(assert (=> b!14675 (= tp!3580 e!8138)))

(assert (= (and b!14675 (is-CC!6 (left!651 rl!34))) b!14816))

(assert (= (and b!14675 (is-Single!6 (left!651 rl!34))) b!14817))

(declare-fun b!14818 () Bool)

(declare-fun e!8139 () Bool)

(declare-fun tp!3621 () Bool)

(declare-fun tp!3622 () Bool)

(assert (=> b!14818 (= e!8139 (and tp!3621 tp!3622))))

(declare-fun b!14819 () Bool)

(assert (=> b!14819 (= e!8139 tp_is_empty!49)))

(assert (=> b!14675 (= tp!3587 e!8139)))

(assert (= (and b!14675 (is-CC!6 (right!654 rl!34))) b!14818))

(assert (= (and b!14675 (is-Single!6 (right!654 rl!34))) b!14819))

(push 1)

(assert (not b!14724))

(assert (not b!14708))

(assert (not b!14771))

(assert (not b!14722))

(assert (not b!14721))

(assert (not b!14706))

(assert (not b!14720))

(assert (not b!14796))

(assert (not b!14763))

(assert (not b!14780))

(assert (not b!14762))

(assert (not b!14729))

(assert (not b!14814))

(assert (not b!14777))

(assert (not b!14768))

(assert (not b!14772))

(assert (not b!14800))

(assert tp_is_empty!49)

(assert (not b!14773))

(assert (not b!14778))

(assert (not b!14808))

(assert (not b!14794))

(assert (not b!14798))

(assert (not b!14709))

(assert (not b!14779))

(assert (not b!14802))

(assert (not b!14728))

(assert (not d!11317))

(assert (not b!14781))

(assert (not b!14806))

(assert (not b!14770))

(assert (not b!14726))

(assert (not b!14816))

(assert (not b!14776))

(assert (not b!14792))

(assert (not b!14810))

(assert (not b!14804))

(assert (not b!14785))

(assert (not b!14727))

(assert (not b!14697))

(assert (not b!14818))

(assert (not b!14725))

(assert (not b!14784))

(assert (not b!14718))

(assert (not b!14812))

(assert (not b!14783))

(assert (not b!14782))

(assert (not b!14766))

(assert (not b!14707))

(assert (not b!14719))

(assert (not b!14767))

(assert (not b!14723))

(assert (not b!14775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

