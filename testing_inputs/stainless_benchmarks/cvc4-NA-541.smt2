; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3998 () Bool)

(assert start!3998)

(declare-fun b!30677 () Bool)

(declare-fun res!14095 () Bool)

(declare-fun e!15636 () Bool)

(assert (=> b!30677 (=> (not res!14095) (not e!15636))))

(declare-datatypes () ((T!1837 (T!1838 (val!91 Int)))))

(declare-datatypes () ((Conc!68 (CC!67 (left!712 Conc!68) (right!715 Conc!68)) (Single!67 (x!8961 T!1837)) (Empty!78))))

(declare-fun ys!77 () Conc!68)

(declare-fun balanced!63 (Conc!68) Bool)

(assert (=> b!30677 (= res!14095 (balanced!63 ys!77))))

(declare-fun b!30678 () Bool)

(declare-fun res!14091 () Bool)

(declare-fun e!15635 () Bool)

(assert (=> b!30678 (=> (not res!14091) (not e!15635))))

(declare-fun res!5547 () Conc!68)

(declare-fun concInv!62 (Conc!68) Bool)

(assert (=> b!30678 (= res!14091 (concInv!62 res!5547))))

(declare-fun b!30679 () Bool)

(declare-fun e!15634 () Bool)

(declare-fun tp!6429 () Bool)

(declare-fun tp!6426 () Bool)

(assert (=> b!30679 (= e!15634 (and tp!6429 tp!6426))))

(declare-fun b!30680 () Bool)

(declare-fun e!15637 () Bool)

(declare-fun tp!6427 () Bool)

(declare-fun tp!6424 () Bool)

(assert (=> b!30680 (= e!15637 (and tp!6427 tp!6424))))

(declare-fun b!30681 () Bool)

(declare-fun res!14092 () Bool)

(assert (=> b!30681 (=> (not res!14092) (not e!15636))))

(declare-fun diff!6 () Int)

(declare-fun xs!533 () Conc!68)

(declare-fun level!56 (Conc!68) Int)

(assert (=> b!30681 (= res!14092 (= diff!6 (- (level!56 ys!77) (level!56 xs!533))))))

(declare-fun b!30682 () Bool)

(declare-fun tp_is_empty!181 () Bool)

(assert (=> b!30682 (= e!15634 tp_is_empty!181)))

(declare-fun b!30683 () Bool)

(declare-fun e!15632 () Bool)

(declare-fun tp!6422 () Bool)

(declare-fun tp!6428 () Bool)

(assert (=> b!30683 (= e!15632 (and tp!6422 tp!6428))))

(declare-fun b!30684 () Bool)

(declare-fun e!15633 () Bool)

(assert (=> b!30684 (= e!15633 tp_is_empty!181)))

(declare-fun b!30685 () Bool)

(declare-fun res!14085 () Bool)

(assert (=> b!30685 (=> (not res!14085) (not e!15636))))

(assert (=> b!30685 (= res!14085 (balanced!63 xs!533))))

(declare-fun b!30686 () Bool)

(assert (=> b!30686 (= e!15632 tp_is_empty!181)))

(declare-fun b!30687 () Bool)

(declare-fun res!14093 () Bool)

(assert (=> b!30687 (=> (not res!14093) (not e!15636))))

(declare-fun isEmpty!324 (Conc!68) Bool)

(assert (=> b!30687 (= res!14093 (not (isEmpty!324 xs!533)))))

(declare-fun b!30688 () Bool)

(assert (=> b!30688 (= e!15637 tp_is_empty!181)))

(declare-fun b!30689 () Bool)

(declare-fun res!14094 () Bool)

(assert (=> b!30689 (=> (not res!14094) (not e!15636))))

(declare-fun nll!6 () Conc!68)

(assert (=> b!30689 (= res!14094 (= res!5547 (CC!67 nll!6 (CC!67 (right!715 (left!712 ys!77)) (right!715 ys!77)))))))

(declare-fun b!30690 () Bool)

(declare-fun res!14096 () Bool)

(assert (=> b!30690 (=> (not res!14096) (not e!15636))))

(assert (=> b!30690 (= res!14096 (concInv!62 ys!77))))

(declare-fun b!30691 () Bool)

(declare-fun res!14083 () Bool)

(assert (=> b!30691 (=> (not res!14083) (not e!15636))))

(declare-fun concatNonEmpty!19 (Conc!68 Conc!68) Conc!68)

(assert (=> b!30691 (= res!14083 (= nll!6 (concatNonEmpty!19 xs!533 (left!712 (left!712 ys!77)))))))

(declare-fun b!30692 () Bool)

(declare-fun res!14087 () Bool)

(assert (=> b!30692 (=> (not res!14087) (not e!15635))))

(declare-fun appendAssocInst!16 (Conc!68 Conc!68) Bool)

(assert (=> b!30692 (= res!14087 (appendAssocInst!16 xs!533 ys!77))))

(declare-fun b!30693 () Bool)

(declare-fun res!14088 () Bool)

(assert (=> b!30693 (=> (not res!14088) (not e!15635))))

(assert (=> b!30693 (= res!14088 (balanced!63 res!5547))))

(declare-fun b!30694 () Bool)

(declare-fun res!14086 () Bool)

(assert (=> b!30694 (=> (not res!14086) (not e!15636))))

(assert (=> b!30694 (= res!14086 (not (isEmpty!324 ys!77)))))

(declare-fun b!30695 () Bool)

(declare-fun tp!6423 () Bool)

(declare-fun tp!6425 () Bool)

(assert (=> b!30695 (= e!15633 (and tp!6423 tp!6425))))

(declare-fun res!14097 () Bool)

(assert (=> start!3998 (=> (not res!14097) (not e!15636))))

(assert (=> start!3998 (= res!14097 (concInv!62 xs!533))))

(assert (=> start!3998 e!15636))

(assert (=> start!3998 true))

(assert (=> start!3998 e!15637))

(assert (=> start!3998 e!15633))

(assert (=> start!3998 e!15634))

(assert (=> start!3998 e!15632))

(declare-fun b!30696 () Bool)

(assert (=> b!30696 (= e!15636 (not e!15635))))

(declare-fun res!14089 () Bool)

(assert (=> b!30696 (=> (not res!14089) (not e!15635))))

(declare-fun lt!5717 () Int)

(declare-fun lt!5718 () Int)

(declare-fun lt!5719 () Int)

(assert (=> b!30696 (= res!14089 (<= lt!5718 (+ (ite (>= lt!5717 lt!5719) lt!5717 lt!5719) 1)))))

(assert (=> b!30696 (= lt!5719 (level!56 ys!77))))

(assert (=> b!30696 (= lt!5717 (level!56 xs!533))))

(assert (=> b!30696 (= lt!5718 (level!56 res!5547))))

(assert (=> b!30696 (is-CC!67 res!5547)))

(declare-fun b!30697 () Bool)

(declare-fun res!14082 () Bool)

(assert (=> b!30697 (=> (not res!14082) (not e!15636))))

(assert (=> b!30697 (= res!14082 (< (level!56 (right!715 ys!77)) (level!56 (left!712 ys!77))))))

(declare-fun b!30698 () Bool)

(declare-fun concatCorrectness!16 (Conc!68 Conc!68 Conc!68) Bool)

(assert (=> b!30698 (= e!15635 (concatCorrectness!16 res!5547 xs!533 ys!77))))

(declare-fun b!30699 () Bool)

(declare-fun res!14090 () Bool)

(assert (=> b!30699 (=> (not res!14090) (not e!15635))))

(declare-fun lt!5715 () Int)

(declare-fun lt!5716 () Int)

(declare-fun lt!5720 () Int)

(assert (=> b!30699 (= res!14090 (>= lt!5715 (ite (>= lt!5720 lt!5716) lt!5720 lt!5716)))))

(assert (=> b!30699 (= lt!5716 (level!56 ys!77))))

(assert (=> b!30699 (= lt!5720 (level!56 xs!533))))

(assert (=> b!30699 (= lt!5715 (level!56 res!5547))))

(declare-fun b!30700 () Bool)

(declare-fun res!14084 () Bool)

(assert (=> b!30700 (=> (not res!14084) (not e!15636))))

(assert (=> b!30700 (= res!14084 (not (= (level!56 nll!6) (- (level!56 ys!77) 3))))))

(declare-fun b!30701 () Bool)

(declare-fun res!14081 () Bool)

(assert (=> b!30701 (=> (not res!14081) (not e!15636))))

(assert (=> b!30701 (= res!14081 (and (or (< diff!6 (- 1)) (> diff!6 1)) (>= diff!6 (- 1))))))

(assert (= (and start!3998 res!14097) b!30685))

(assert (= (and b!30685 res!14085) b!30690))

(assert (= (and b!30690 res!14096) b!30677))

(assert (= (and b!30677 res!14095) b!30687))

(assert (= (and b!30687 res!14093) b!30694))

(assert (= (and b!30694 res!14086) b!30681))

(assert (= (and b!30681 res!14092) b!30701))

(assert (= (and b!30701 res!14081) b!30697))

(assert (= (and b!30697 res!14082) b!30691))

(assert (= (and b!30691 res!14083) b!30700))

(assert (= (and b!30700 res!14084) b!30689))

(assert (= (and b!30689 res!14094) b!30696))

(assert (= (and b!30696 res!14089) b!30699))

(assert (= (and b!30699 res!14090) b!30678))

(assert (= (and b!30678 res!14091) b!30693))

(assert (= (and b!30693 res!14088) b!30692))

(assert (= (and b!30692 res!14087) b!30698))

(assert (= (and start!3998 (is-CC!67 res!5547)) b!30680))

(assert (= (and start!3998 (is-Single!67 res!5547)) b!30688))

(assert (= (and start!3998 (is-CC!67 ys!77)) b!30695))

(assert (= (and start!3998 (is-Single!67 ys!77)) b!30684))

(assert (= (and start!3998 (is-CC!67 nll!6)) b!30679))

(assert (= (and start!3998 (is-Single!67 nll!6)) b!30682))

(assert (= (and start!3998 (is-CC!67 xs!533)) b!30683))

(assert (= (and start!3998 (is-Single!67 xs!533)) b!30686))

(declare-fun m!33041 () Bool)

(assert (=> b!30692 m!33041))

(declare-fun m!33043 () Bool)

(assert (=> b!30700 m!33043))

(declare-fun m!33045 () Bool)

(assert (=> b!30700 m!33045))

(declare-fun m!33047 () Bool)

(assert (=> b!30697 m!33047))

(declare-fun m!33049 () Bool)

(assert (=> b!30697 m!33049))

(assert (=> b!30696 m!33045))

(declare-fun m!33051 () Bool)

(assert (=> b!30696 m!33051))

(declare-fun m!33053 () Bool)

(assert (=> b!30696 m!33053))

(declare-fun m!33055 () Bool)

(assert (=> b!30690 m!33055))

(declare-fun m!33057 () Bool)

(assert (=> b!30685 m!33057))

(declare-fun m!33059 () Bool)

(assert (=> start!3998 m!33059))

(declare-fun m!33061 () Bool)

(assert (=> b!30698 m!33061))

(declare-fun m!33063 () Bool)

(assert (=> b!30677 m!33063))

(declare-fun m!33065 () Bool)

(assert (=> b!30678 m!33065))

(declare-fun m!33067 () Bool)

(assert (=> b!30694 m!33067))

(declare-fun m!33069 () Bool)

(assert (=> b!30693 m!33069))

(declare-fun m!33071 () Bool)

(assert (=> b!30691 m!33071))

(declare-fun m!33073 () Bool)

(assert (=> b!30687 m!33073))

(assert (=> b!30681 m!33045))

(assert (=> b!30681 m!33051))

(assert (=> b!30699 m!33045))

(assert (=> b!30699 m!33051))

(assert (=> b!30699 m!33053))

(push 1)

(assert (not b!30699))

(assert (not b!30691))

(assert (not b!30690))

(assert (not b!30694))

(assert (not b!30692))

(assert (not b!30697))

(assert (not b!30681))

(assert (not b!30693))

(assert (not b!30696))

(assert (not b!30687))

(assert (not b!30695))

(assert (not b!30685))

(assert (not b!30680))

(assert (not b!30700))

(assert (not b!30678))

(assert (not start!3998))

(assert (not b!30683))

(assert (not b!30679))

(assert (not b!30677))

(assert tp_is_empty!181)

(assert (not b!30698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!15983 () Bool)

(declare-datatypes () ((List!364 (Cons!358 (h!275 T!1837) (t!4378 List!364)) (Nil!359))))

(declare-fun toList!119 (Conc!68) List!364)

(declare-fun ++!44 (List!364 List!364) List!364)

(assert (=> d!15983 (= (concatCorrectness!16 res!5547 xs!533 ys!77) (= (toList!119 res!5547) (++!44 (toList!119 xs!533) (toList!119 ys!77))))))

(declare-fun bs!5108 () Bool)

(assert (= bs!5108 d!15983))

(declare-fun m!33075 () Bool)

(assert (=> bs!5108 m!33075))

(declare-fun m!33077 () Bool)

(assert (=> bs!5108 m!33077))

(declare-fun m!33079 () Bool)

(assert (=> bs!5108 m!33079))

(declare-fun m!33081 () Bool)

(assert (=> bs!5108 m!33081))

(assert (=> bs!5108 m!33075))

(assert (=> bs!5108 m!33077))

(assert (=> b!30698 d!15983))

(declare-fun b!30720 () Bool)

(declare-fun e!15664 () Bool)

(declare-fun e!15657 () Bool)

(assert (=> b!30720 (= e!15664 e!15657)))

(declare-fun res!14119 () Bool)

(assert (=> b!30720 (=> (not res!14119) (not e!15657))))

(declare-fun appendAssoc!12 (List!364 List!364 List!364) Bool)

(assert (=> b!30720 (= res!14119 (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))

(declare-fun b!30721 () Bool)

(declare-fun e!15663 () Bool)

(assert (=> b!30721 (= e!15663 (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))

(declare-fun b!30722 () Bool)

(declare-fun e!15660 () Bool)

(declare-fun e!15656 () Bool)

(assert (=> b!30722 (= e!15660 e!15656)))

(declare-fun res!14125 () Bool)

(assert (=> b!30722 (=> (not res!14125) (not e!15656))))

(assert (=> b!30722 (= res!14125 (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))

(declare-fun d!15985 () Bool)

(declare-fun e!15658 () Bool)

(assert (=> d!15985 e!15658))

(declare-fun res!14124 () Bool)

(assert (=> d!15985 (=> (not res!14124) (not e!15658))))

(assert (=> d!15985 (= res!14124 e!15660)))

(declare-fun res!14117 () Bool)

(assert (=> d!15985 (=> res!14117 e!15660)))

(assert (=> d!15985 (= res!14117 (not (is-CC!67 xs!533)))))

(assert (=> d!15985 (= (appendAssocInst!16 xs!533 ys!77) true)))

(declare-fun b!30723 () Bool)

(declare-fun e!15659 () Bool)

(assert (=> b!30723 (= e!15656 e!15659)))

(declare-fun res!14122 () Bool)

(assert (=> b!30723 (=> res!14122 e!15659)))

(assert (=> b!30723 (= res!14122 (not (is-CC!67 (right!715 xs!533))))))

(declare-fun b!30724 () Bool)

(declare-fun e!15661 () Bool)

(declare-fun e!15662 () Bool)

(assert (=> b!30724 (= e!15661 e!15662)))

(declare-fun res!14120 () Bool)

(assert (=> b!30724 (=> (not res!14120) (not e!15662))))

(assert (=> b!30724 (= res!14120 (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))

(declare-fun b!30725 () Bool)

(assert (=> b!30725 (= e!15659 e!15663)))

(declare-fun res!14118 () Bool)

(assert (=> b!30725 (=> (not res!14118) (not e!15663))))

(assert (=> b!30725 (= res!14118 (appendAssoc!12 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))

(declare-fun b!30726 () Bool)

(assert (=> b!30726 (= e!15662 (appendAssoc!12 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))

(declare-fun b!30727 () Bool)

(assert (=> b!30727 (= e!15657 e!15661)))

(declare-fun res!14123 () Bool)

(assert (=> b!30727 (=> res!14123 e!15661)))

(assert (=> b!30727 (= res!14123 (not (is-CC!67 (left!712 ys!77))))))

(declare-fun b!30728 () Bool)

(assert (=> b!30728 (= e!15658 e!15664)))

(declare-fun res!14121 () Bool)

(assert (=> b!30728 (=> res!14121 e!15664)))

(assert (=> b!30728 (= res!14121 (not (is-CC!67 ys!77)))))

(assert (= (and d!15985 (not res!14117)) b!30722))

(assert (= (and b!30722 res!14125) b!30723))

(assert (= (and b!30723 (not res!14122)) b!30725))

(assert (= (and b!30725 res!14118) b!30721))

(assert (= (and d!15985 res!14124) b!30728))

(assert (= (and b!30728 (not res!14121)) b!30720))

(assert (= (and b!30720 res!14119) b!30727))

(assert (= (and b!30727 (not res!14123)) b!30724))

(assert (= (and b!30724 res!14120) b!30726))

(assert (=> b!30724 m!33075))

(declare-fun m!33083 () Bool)

(assert (=> b!30724 m!33083))

(declare-fun m!33085 () Bool)

(assert (=> b!30724 m!33085))

(assert (=> b!30724 m!33075))

(assert (=> b!30724 m!33083))

(assert (=> b!30724 m!33085))

(declare-fun m!33087 () Bool)

(assert (=> b!30724 m!33087))

(declare-fun m!33089 () Bool)

(assert (=> b!30725 m!33089))

(declare-fun m!33091 () Bool)

(assert (=> b!30725 m!33091))

(assert (=> b!30725 m!33077))

(assert (=> b!30725 m!33089))

(assert (=> b!30725 m!33091))

(assert (=> b!30725 m!33077))

(declare-fun m!33093 () Bool)

(assert (=> b!30725 m!33093))

(assert (=> b!30721 m!33089))

(assert (=> b!30721 m!33077))

(declare-fun m!33095 () Bool)

(assert (=> b!30721 m!33095))

(assert (=> b!30721 m!33095))

(assert (=> b!30721 m!33089))

(declare-fun m!33097 () Bool)

(assert (=> b!30721 m!33097))

(declare-fun m!33099 () Bool)

(assert (=> b!30721 m!33099))

(assert (=> b!30721 m!33091))

(assert (=> b!30721 m!33091))

(assert (=> b!30721 m!33077))

(assert (=> b!30721 m!33097))

(assert (=> b!30722 m!33095))

(declare-fun m!33101 () Bool)

(assert (=> b!30722 m!33101))

(assert (=> b!30722 m!33077))

(assert (=> b!30722 m!33095))

(assert (=> b!30722 m!33101))

(assert (=> b!30722 m!33077))

(declare-fun m!33103 () Bool)

(assert (=> b!30722 m!33103))

(assert (=> b!30726 m!33085))

(assert (=> b!30726 m!33083))

(declare-fun m!33105 () Bool)

(assert (=> b!30726 m!33105))

(assert (=> b!30726 m!33085))

(declare-fun m!33107 () Bool)

(assert (=> b!30726 m!33107))

(declare-fun m!33109 () Bool)

(assert (=> b!30726 m!33109))

(assert (=> b!30726 m!33075))

(assert (=> b!30726 m!33107))

(assert (=> b!30726 m!33075))

(assert (=> b!30726 m!33083))

(assert (=> b!30726 m!33105))

(assert (=> b!30720 m!33075))

(declare-fun m!33111 () Bool)

(assert (=> b!30720 m!33111))

(assert (=> b!30720 m!33107))

(assert (=> b!30720 m!33075))

(assert (=> b!30720 m!33111))

(assert (=> b!30720 m!33107))

(declare-fun m!33113 () Bool)

(assert (=> b!30720 m!33113))

(assert (=> b!30692 d!15985))

(declare-fun b!30734 () Bool)

(declare-fun e!15667 () Int)

(declare-fun lt!5729 () Int)

(declare-fun lt!5727 () Int)

(assert (=> b!30734 (= e!15667 (+ 1 (ite (>= lt!5729 lt!5727) lt!5729 lt!5727)))))

(assert (=> b!30734 (= lt!5727 (level!56 (right!715 ys!77)))))

(assert (=> b!30734 (= lt!5729 (level!56 (left!712 ys!77)))))

(declare-fun d!15987 () Bool)

(declare-fun lt!5728 () Int)

(assert (=> d!15987 (>= lt!5728 0)))

(assert (=> d!15987 (= lt!5728 e!15667)))

(declare-fun c!6710 () Bool)

(assert (=> d!15987 (= c!6710 (or (is-Empty!78 ys!77) (is-Single!67 ys!77)))))

(assert (=> d!15987 (= (level!56 ys!77) lt!5728)))

(declare-fun b!30733 () Bool)

(assert (=> b!30733 (= e!15667 0)))

(assert (= (and d!15987 c!6710) b!30733))

(assert (= (and d!15987 (not c!6710)) b!30734))

(assert (=> b!30734 m!33047))

(assert (=> b!30734 m!33049))

(assert (=> b!30681 d!15987))

(declare-fun b!30736 () Bool)

(declare-fun e!15668 () Int)

(declare-fun lt!5732 () Int)

(declare-fun lt!5730 () Int)

(assert (=> b!30736 (= e!15668 (+ 1 (ite (>= lt!5732 lt!5730) lt!5732 lt!5730)))))

(assert (=> b!30736 (= lt!5730 (level!56 (right!715 xs!533)))))

(assert (=> b!30736 (= lt!5732 (level!56 (left!712 xs!533)))))

(declare-fun d!15989 () Bool)

(declare-fun lt!5731 () Int)

(assert (=> d!15989 (>= lt!5731 0)))

(assert (=> d!15989 (= lt!5731 e!15668)))

(declare-fun c!6711 () Bool)

(assert (=> d!15989 (= c!6711 (or (is-Empty!78 xs!533) (is-Single!67 xs!533)))))

(assert (=> d!15989 (= (level!56 xs!533) lt!5731)))

(declare-fun b!30735 () Bool)

(assert (=> b!30735 (= e!15668 0)))

(assert (= (and d!15989 c!6711) b!30735))

(assert (= (and d!15989 (not c!6711)) b!30736))

(declare-fun m!33115 () Bool)

(assert (=> b!30736 m!33115))

(declare-fun m!33117 () Bool)

(assert (=> b!30736 m!33117))

(assert (=> b!30681 d!15989))

(declare-fun b!30738 () Bool)

(declare-fun e!15669 () Int)

(declare-fun lt!5735 () Int)

(declare-fun lt!5733 () Int)

(assert (=> b!30738 (= e!15669 (+ 1 (ite (>= lt!5735 lt!5733) lt!5735 lt!5733)))))

(assert (=> b!30738 (= lt!5733 (level!56 (right!715 nll!6)))))

(assert (=> b!30738 (= lt!5735 (level!56 (left!712 nll!6)))))

(declare-fun d!15991 () Bool)

(declare-fun lt!5734 () Int)

(assert (=> d!15991 (>= lt!5734 0)))

(assert (=> d!15991 (= lt!5734 e!15669)))

(declare-fun c!6712 () Bool)

(assert (=> d!15991 (= c!6712 (or (is-Empty!78 nll!6) (is-Single!67 nll!6)))))

(assert (=> d!15991 (= (level!56 nll!6) lt!5734)))

(declare-fun b!30737 () Bool)

(assert (=> b!30737 (= e!15669 0)))

(assert (= (and d!15991 c!6712) b!30737))

(assert (= (and d!15991 (not c!6712)) b!30738))

(declare-fun m!33119 () Bool)

(assert (=> b!30738 m!33119))

(declare-fun m!33121 () Bool)

(assert (=> b!30738 m!33121))

(assert (=> b!30700 d!15991))

(assert (=> b!30700 d!15987))

(declare-fun d!15993 () Bool)

(assert (=> d!15993 (= (isEmpty!324 xs!533) (= xs!533 Empty!78))))

(assert (=> b!30687 d!15993))

(declare-fun b!30750 () Bool)

(declare-fun e!15674 () Bool)

(assert (=> b!30750 (= e!15674 (concInv!62 (right!715 ys!77)))))

(declare-fun b!30747 () Bool)

(declare-fun e!15675 () Bool)

(assert (=> b!30747 (= e!15675 e!15674)))

(declare-fun res!14135 () Bool)

(assert (=> b!30747 (=> (not res!14135) (not e!15674))))

(assert (=> b!30747 (= res!14135 (not (isEmpty!324 (left!712 ys!77))))))

(declare-fun b!30748 () Bool)

(declare-fun res!14137 () Bool)

(assert (=> b!30748 (=> (not res!14137) (not e!15674))))

(assert (=> b!30748 (= res!14137 (not (isEmpty!324 (right!715 ys!77))))))

(declare-fun b!30749 () Bool)

(declare-fun res!14134 () Bool)

(assert (=> b!30749 (=> (not res!14134) (not e!15674))))

(assert (=> b!30749 (= res!14134 (concInv!62 (left!712 ys!77)))))

(declare-fun d!15995 () Bool)

(declare-fun res!14136 () Bool)

(assert (=> d!15995 (=> res!14136 e!15675)))

(assert (=> d!15995 (= res!14136 (not (is-CC!67 ys!77)))))

(assert (=> d!15995 (= (concInv!62 ys!77) e!15675)))

(assert (= (and d!15995 (not res!14136)) b!30747))

(assert (= (and b!30747 res!14135) b!30748))

(assert (= (and b!30748 res!14137) b!30749))

(assert (= (and b!30749 res!14134) b!30750))

(declare-fun m!33123 () Bool)

(assert (=> b!30750 m!33123))

(declare-fun m!33125 () Bool)

(assert (=> b!30747 m!33125))

(declare-fun m!33127 () Bool)

(assert (=> b!30748 m!33127))

(declare-fun m!33129 () Bool)

(assert (=> b!30749 m!33129))

(assert (=> b!30690 d!15995))

(assert (=> b!30696 d!15987))

(assert (=> b!30696 d!15989))

(declare-fun b!30752 () Bool)

(declare-fun e!15676 () Int)

(declare-fun lt!5738 () Int)

(declare-fun lt!5736 () Int)

(assert (=> b!30752 (= e!15676 (+ 1 (ite (>= lt!5738 lt!5736) lt!5738 lt!5736)))))

(assert (=> b!30752 (= lt!5736 (level!56 (right!715 res!5547)))))

(assert (=> b!30752 (= lt!5738 (level!56 (left!712 res!5547)))))

(declare-fun d!15997 () Bool)

(declare-fun lt!5737 () Int)

(assert (=> d!15997 (>= lt!5737 0)))

(assert (=> d!15997 (= lt!5737 e!15676)))

(declare-fun c!6713 () Bool)

(assert (=> d!15997 (= c!6713 (or (is-Empty!78 res!5547) (is-Single!67 res!5547)))))

(assert (=> d!15997 (= (level!56 res!5547) lt!5737)))

(declare-fun b!30751 () Bool)

(assert (=> b!30751 (= e!15676 0)))

(assert (= (and d!15997 c!6713) b!30751))

(assert (= (and d!15997 (not c!6713)) b!30752))

(declare-fun m!33131 () Bool)

(assert (=> b!30752 m!33131))

(declare-fun m!33133 () Bool)

(assert (=> b!30752 m!33133))

(assert (=> b!30696 d!15997))

(declare-fun d!15999 () Bool)

(assert (=> d!15999 (= (isEmpty!324 ys!77) (= ys!77 Empty!78))))

(assert (=> b!30694 d!15999))

(declare-fun b!30756 () Bool)

(declare-fun e!15677 () Bool)

(assert (=> b!30756 (= e!15677 (concInv!62 (right!715 xs!533)))))

(declare-fun b!30753 () Bool)

(declare-fun e!15678 () Bool)

(assert (=> b!30753 (= e!15678 e!15677)))

(declare-fun res!14139 () Bool)

(assert (=> b!30753 (=> (not res!14139) (not e!15677))))

(assert (=> b!30753 (= res!14139 (not (isEmpty!324 (left!712 xs!533))))))

(declare-fun b!30754 () Bool)

(declare-fun res!14141 () Bool)

(assert (=> b!30754 (=> (not res!14141) (not e!15677))))

(assert (=> b!30754 (= res!14141 (not (isEmpty!324 (right!715 xs!533))))))

(declare-fun b!30755 () Bool)

(declare-fun res!14138 () Bool)

(assert (=> b!30755 (=> (not res!14138) (not e!15677))))

(assert (=> b!30755 (= res!14138 (concInv!62 (left!712 xs!533)))))

(declare-fun d!16001 () Bool)

(declare-fun res!14140 () Bool)

(assert (=> d!16001 (=> res!14140 e!15678)))

(assert (=> d!16001 (= res!14140 (not (is-CC!67 xs!533)))))

(assert (=> d!16001 (= (concInv!62 xs!533) e!15678)))

(assert (= (and d!16001 (not res!14140)) b!30753))

(assert (= (and b!30753 res!14139) b!30754))

(assert (= (and b!30754 res!14141) b!30755))

(assert (= (and b!30755 res!14138) b!30756))

(declare-fun m!33135 () Bool)

(assert (=> b!30756 m!33135))

(declare-fun m!33137 () Bool)

(assert (=> b!30753 m!33137))

(declare-fun m!33139 () Bool)

(assert (=> b!30754 m!33139))

(declare-fun m!33141 () Bool)

(assert (=> b!30755 m!33141))

(assert (=> start!3998 d!16001))

(declare-fun b!30766 () Bool)

(declare-fun res!14151 () Bool)

(declare-fun e!15684 () Bool)

(assert (=> b!30766 (=> (not res!14151) (not e!15684))))

(assert (=> b!30766 (= res!14151 (<= (- (level!56 (left!712 ys!77)) (level!56 (right!715 ys!77))) 1))))

(declare-fun b!30768 () Bool)

(assert (=> b!30768 (= e!15684 (balanced!63 (right!715 ys!77)))))

(declare-fun b!30767 () Bool)

(declare-fun res!14153 () Bool)

(assert (=> b!30767 (=> (not res!14153) (not e!15684))))

(assert (=> b!30767 (= res!14153 (balanced!63 (left!712 ys!77)))))

(declare-fun d!16003 () Bool)

(declare-fun res!14150 () Bool)

(declare-fun e!15683 () Bool)

(assert (=> d!16003 (=> res!14150 e!15683)))

(assert (=> d!16003 (= res!14150 (not (is-CC!67 ys!77)))))

(assert (=> d!16003 (= (balanced!63 ys!77) e!15683)))

(declare-fun b!30765 () Bool)

(assert (=> b!30765 (= e!15683 e!15684)))

(declare-fun res!14152 () Bool)

(assert (=> b!30765 (=> (not res!14152) (not e!15684))))

(assert (=> b!30765 (= res!14152 (>= (- (level!56 (left!712 ys!77)) (level!56 (right!715 ys!77))) (- 1)))))

(assert (= (and d!16003 (not res!14150)) b!30765))

(assert (= (and b!30765 res!14152) b!30766))

(assert (= (and b!30766 res!14151) b!30767))

(assert (= (and b!30767 res!14153) b!30768))

(assert (=> b!30766 m!33049))

(assert (=> b!30766 m!33047))

(declare-fun m!33143 () Bool)

(assert (=> b!30768 m!33143))

(declare-fun m!33145 () Bool)

(assert (=> b!30767 m!33145))

(assert (=> b!30765 m!33049))

(assert (=> b!30765 m!33047))

(assert (=> b!30677 d!16003))

(declare-fun b!30770 () Bool)

(declare-fun e!15685 () Int)

(declare-fun lt!5741 () Int)

(declare-fun lt!5739 () Int)

(assert (=> b!30770 (= e!15685 (+ 1 (ite (>= lt!5741 lt!5739) lt!5741 lt!5739)))))

(assert (=> b!30770 (= lt!5739 (level!56 (right!715 (right!715 ys!77))))))

(assert (=> b!30770 (= lt!5741 (level!56 (left!712 (right!715 ys!77))))))

(declare-fun d!16005 () Bool)

(declare-fun lt!5740 () Int)

(assert (=> d!16005 (>= lt!5740 0)))

(assert (=> d!16005 (= lt!5740 e!15685)))

(declare-fun c!6714 () Bool)

(assert (=> d!16005 (= c!6714 (or (is-Empty!78 (right!715 ys!77)) (is-Single!67 (right!715 ys!77))))))

(assert (=> d!16005 (= (level!56 (right!715 ys!77)) lt!5740)))

(declare-fun b!30769 () Bool)

(assert (=> b!30769 (= e!15685 0)))

(assert (= (and d!16005 c!6714) b!30769))

(assert (= (and d!16005 (not c!6714)) b!30770))

(declare-fun m!33147 () Bool)

(assert (=> b!30770 m!33147))

(declare-fun m!33149 () Bool)

(assert (=> b!30770 m!33149))

(assert (=> b!30697 d!16005))

(declare-fun b!30772 () Bool)

(declare-fun e!15686 () Int)

(declare-fun lt!5744 () Int)

(declare-fun lt!5742 () Int)

(assert (=> b!30772 (= e!15686 (+ 1 (ite (>= lt!5744 lt!5742) lt!5744 lt!5742)))))

(assert (=> b!30772 (= lt!5742 (level!56 (right!715 (left!712 ys!77))))))

(assert (=> b!30772 (= lt!5744 (level!56 (left!712 (left!712 ys!77))))))

(declare-fun d!16007 () Bool)

(declare-fun lt!5743 () Int)

(assert (=> d!16007 (>= lt!5743 0)))

(assert (=> d!16007 (= lt!5743 e!15686)))

(declare-fun c!6715 () Bool)

(assert (=> d!16007 (= c!6715 (or (is-Empty!78 (left!712 ys!77)) (is-Single!67 (left!712 ys!77))))))

(assert (=> d!16007 (= (level!56 (left!712 ys!77)) lt!5743)))

(declare-fun b!30771 () Bool)

(assert (=> b!30771 (= e!15686 0)))

(assert (= (and d!16007 c!6715) b!30771))

(assert (= (and d!16007 (not c!6715)) b!30772))

(declare-fun m!33151 () Bool)

(assert (=> b!30772 m!33151))

(declare-fun m!33153 () Bool)

(assert (=> b!30772 m!33153))

(assert (=> b!30697 d!16007))

(declare-fun b!30776 () Bool)

(declare-fun e!15687 () Bool)

(assert (=> b!30776 (= e!15687 (concInv!62 (right!715 res!5547)))))

(declare-fun b!30773 () Bool)

(declare-fun e!15688 () Bool)

(assert (=> b!30773 (= e!15688 e!15687)))

(declare-fun res!14155 () Bool)

(assert (=> b!30773 (=> (not res!14155) (not e!15687))))

(assert (=> b!30773 (= res!14155 (not (isEmpty!324 (left!712 res!5547))))))

(declare-fun b!30774 () Bool)

(declare-fun res!14157 () Bool)

(assert (=> b!30774 (=> (not res!14157) (not e!15687))))

(assert (=> b!30774 (= res!14157 (not (isEmpty!324 (right!715 res!5547))))))

(declare-fun b!30775 () Bool)

(declare-fun res!14154 () Bool)

(assert (=> b!30775 (=> (not res!14154) (not e!15687))))

(assert (=> b!30775 (= res!14154 (concInv!62 (left!712 res!5547)))))

(declare-fun d!16009 () Bool)

(declare-fun res!14156 () Bool)

(assert (=> d!16009 (=> res!14156 e!15688)))

(assert (=> d!16009 (= res!14156 (not (is-CC!67 res!5547)))))

(assert (=> d!16009 (= (concInv!62 res!5547) e!15688)))

(assert (= (and d!16009 (not res!14156)) b!30773))

(assert (= (and b!30773 res!14155) b!30774))

(assert (= (and b!30774 res!14157) b!30775))

(assert (= (and b!30775 res!14154) b!30776))

(declare-fun m!33155 () Bool)

(assert (=> b!30776 m!33155))

(declare-fun m!33157 () Bool)

(assert (=> b!30773 m!33157))

(declare-fun m!33159 () Bool)

(assert (=> b!30774 m!33159))

(declare-fun m!33161 () Bool)

(assert (=> b!30775 m!33161))

(assert (=> b!30678 d!16009))

(declare-fun b!30819 () Bool)

(declare-fun res!14221 () Bool)

(declare-fun e!15712 () Bool)

(assert (=> b!30819 (=> (not res!14221) (not e!15712))))

(assert (=> b!30819 (= res!14221 (balanced!63 (left!712 (left!712 ys!77))))))

(declare-fun b!30820 () Bool)

(declare-fun res!14216 () Bool)

(declare-fun e!15707 () Bool)

(assert (=> b!30820 (=> (not res!14216) (not e!15707))))

(declare-fun lt!5777 () Conc!68)

(assert (=> b!30820 (= res!14216 (balanced!63 lt!5777))))

(declare-fun b!30821 () Bool)

(declare-fun e!15709 () Conc!68)

(declare-fun res!14219 () Conc!68)

(assert (=> b!30821 (= e!15709 res!14219)))

(assert (=> b!30821 true))

(declare-fun e!15708 () Bool)

(assert (=> b!30821 e!15708))

(declare-fun b!30822 () Bool)

(declare-fun res!14213 () Bool)

(assert (=> b!30822 (=> (not res!14213) (not e!15707))))

(declare-fun lt!5779 () Int)

(declare-fun lt!5791 () Int)

(declare-fun lt!5792 () Int)

(assert (=> b!30822 (= res!14213 (>= lt!5779 (ite (>= lt!5791 lt!5792) lt!5791 lt!5792)))))

(assert (=> b!30822 (= lt!5792 (level!56 (left!712 (left!712 ys!77))))))

(assert (=> b!30822 (= lt!5791 (level!56 xs!533))))

(assert (=> b!30822 (= lt!5779 (level!56 lt!5777))))

(declare-fun b!30823 () Bool)

(declare-fun e!15713 () Bool)

(assert (=> b!30823 (= e!15713 e!15707)))

(declare-fun res!14217 () Bool)

(assert (=> b!30823 (=> (not res!14217) (not e!15707))))

(declare-fun lt!5784 () Int)

(declare-fun lt!5789 () Int)

(declare-fun lt!5783 () Int)

(assert (=> b!30823 (= res!14217 (<= lt!5789 (+ (ite (>= lt!5783 lt!5784) lt!5783 lt!5784) 1)))))

(assert (=> b!30823 (= lt!5784 (level!56 (left!712 (left!712 ys!77))))))

(assert (=> b!30823 (= lt!5783 (level!56 xs!533))))

(assert (=> b!30823 (= lt!5789 (level!56 lt!5777))))

(declare-fun b!30824 () Bool)

(declare-fun lt!5790 () Int)

(declare-fun lt!5782 () Int)

(declare-fun lt!5788 () Bool)

(assert (=> b!30824 (= e!15709 (concatNonEmpty!19 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun e!15711 () Int)

(declare-fun b!30825 () Bool)

(declare-fun lt!5780 () Bool)

(assert (=> b!30825 (= e!15711 (level!56 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))

(declare-fun b!30826 () Bool)

(assert (=> b!30826 (= e!15712 (not (isEmpty!324 (left!712 (left!712 ys!77)))))))

(declare-fun b!30827 () Bool)

(declare-fun res!14220 () Bool)

(assert (=> b!30827 (=> (not res!14220) (not e!15712))))

(assert (=> b!30827 (= res!14220 (not (isEmpty!324 xs!533)))))

(declare-fun b!30828 () Bool)

(assert (=> b!30828 (= e!15708 tp_is_empty!181)))

(declare-fun b!30829 () Bool)

(declare-fun res!14222 () Int)

(assert (=> b!30829 (= e!15711 res!14222)))

(assert (=> b!30829 true))

(assert (=> b!30829 true))

(declare-fun b!30830 () Bool)

(declare-fun tp!6434 () Bool)

(declare-fun tp!6435 () Bool)

(assert (=> b!30830 (= e!15708 (and tp!6434 tp!6435))))

(declare-fun b!30831 () Bool)

(declare-fun res!14218 () Bool)

(assert (=> b!30831 (=> (not res!14218) (not e!15707))))

(assert (=> b!30831 (= res!14218 (appendAssocInst!16 xs!533 (left!712 (left!712 ys!77))))))

(declare-fun b!30832 () Bool)

(declare-fun e!15714 () Conc!68)

(assert (=> b!30832 (= e!15714 (CC!67 xs!533 (left!712 (left!712 ys!77))))))

(declare-fun d!16011 () Bool)

(assert (=> d!16011 e!15713))

(declare-fun res!14215 () Bool)

(assert (=> d!16011 (=> (not res!14215) (not e!15713))))

(assert (=> d!16011 (= res!14215 (is-CC!67 lt!5777))))

(assert (=> d!16011 (= lt!5777 e!15714)))

(declare-fun c!6726 () Bool)

(declare-fun lt!5787 () Int)

(assert (=> d!16011 (= c!6726 (and (>= lt!5787 (- 1)) (<= lt!5787 1)))))

(assert (=> d!16011 (= lt!5787 (- (level!56 (left!712 (left!712 ys!77))) (level!56 xs!533)))))

(assert (=> d!16011 e!15712))

(declare-fun res!14224 () Bool)

(assert (=> d!16011 (=> (not res!14224) (not e!15712))))

(declare-fun e!15710 () Bool)

(assert (=> d!16011 (= res!14224 e!15710)))

(declare-fun res!14223 () Bool)

(assert (=> d!16011 (=> (not res!14223) (not e!15710))))

(assert (=> d!16011 (= res!14223 (concInv!62 xs!533))))

(assert (=> d!16011 (= (concatNonEmpty!19 xs!533 (left!712 (left!712 ys!77))) lt!5777)))

(declare-fun b!30833 () Bool)

(declare-fun res!14214 () Bool)

(assert (=> b!30833 (=> (not res!14214) (not e!15707))))

(assert (=> b!30833 (= res!14214 (concInv!62 lt!5777))))

(declare-fun lt!5781 () Int)

(declare-fun lt!5786 () Bool)

(declare-fun lt!5778 () Int)

(declare-fun b!30834 () Bool)

(declare-fun lt!5785 () Conc!68)

(assert (=> b!30834 (= e!15714 (ite lt!5786 (let ((res!14161 lt!5785)) (ite (>= lt!5790 lt!5782) (CC!67 (left!712 xs!533) res!14161) (ite (= lt!5781 (- lt!5778 3)) (CC!67 (left!712 xs!533) (CC!67 (left!712 (right!715 xs!533)) res!14161)) (CC!67 (CC!67 (left!712 xs!533) (left!712 (right!715 xs!533))) res!14161)))) (let ((res!14164 lt!5785)) (ite (>= lt!5790 lt!5782) (CC!67 res!14164 (right!715 (left!712 (left!712 ys!77)))) (ite (= lt!5781 (- lt!5778 3)) (CC!67 (CC!67 res!14164 (right!715 (left!712 (left!712 (left!712 ys!77))))) (right!715 (left!712 (left!712 ys!77)))) (CC!67 res!14164 (CC!67 (right!715 (left!712 (left!712 (left!712 ys!77)))) (right!715 (left!712 (left!712 ys!77))))))))))))

(assert (=> b!30834 (= lt!5778 e!15711)))

(declare-fun c!6727 () Bool)

(assert (=> b!30834 (= c!6727 (or lt!5780 (and (not lt!5786) (not (>= lt!5790 lt!5782)))))))

(assert (=> b!30834 (= lt!5780 (and lt!5786 (not (>= lt!5790 lt!5782))))))

(declare-fun e!15715 () Int)

(assert (=> b!30834 (= lt!5781 e!15715)))

(declare-fun c!6724 () Bool)

(assert (=> b!30834 (= c!6724 (or (and lt!5786 (not (>= lt!5790 lt!5782))) (and (not lt!5786) (not (>= lt!5790 lt!5782)))))))

(assert (=> b!30834 (= lt!5785 e!15709)))

(declare-fun c!6725 () Bool)

(assert (=> b!30834 (= c!6725 (or lt!5788 (not lt!5786)))))

(assert (=> b!30834 (= lt!5788 lt!5786)))

(assert (=> b!30834 (= lt!5782 (level!56 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> b!30834 (= lt!5790 (level!56 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))

(assert (=> b!30834 (= lt!5786 (< lt!5787 (- 1)))))

(declare-fun b!30835 () Bool)

(declare-fun res!14225 () Bool)

(assert (=> b!30835 (=> (not res!14225) (not e!15712))))

(assert (=> b!30835 (= res!14225 (concInv!62 (left!712 (left!712 ys!77))))))

(declare-fun b!30836 () Bool)

(assert (=> b!30836 (= e!15710 (balanced!63 xs!533))))

(declare-fun b!30837 () Bool)

(declare-fun res!14212 () Int)

(assert (=> b!30837 (= e!15715 res!14212)))

(assert (=> b!30837 true))

(declare-fun b!30838 () Bool)

(assert (=> b!30838 (= e!15707 (concatCorrectness!16 lt!5777 xs!533 (left!712 (left!712 ys!77))))))

(declare-fun b!30839 () Bool)

(assert (=> b!30839 (= e!15715 (level!56 lt!5785))))

(assert (= (and d!16011 res!14223) b!30836))

(assert (= (and d!16011 res!14224) b!30835))

(assert (= (and b!30835 res!14225) b!30819))

(assert (= (and b!30819 res!14221) b!30827))

(assert (= (and b!30827 res!14220) b!30826))

(assert (= (and b!30821 (is-CC!67 res!14219)) b!30830))

(assert (= (and b!30821 (is-Single!67 res!14219)) b!30828))

(assert (= (and b!30834 c!6725) b!30824))

(assert (= (and b!30834 (not c!6725)) b!30821))

(assert (= (and b!30834 c!6724) b!30839))

(assert (= (and b!30834 (not c!6724)) b!30837))

(assert (= (and b!30834 c!6727) b!30825))

(assert (= (and b!30834 (not c!6727)) b!30829))

(assert (= (and d!16011 c!6726) b!30832))

(assert (= (and d!16011 (not c!6726)) b!30834))

(assert (= (and d!16011 res!14215) b!30823))

(assert (= (and b!30823 res!14217) b!30822))

(assert (= (and b!30822 res!14213) b!30833))

(assert (= (and b!30833 res!14214) b!30820))

(assert (= (and b!30820 res!14216) b!30831))

(assert (= (and b!30831 res!14218) b!30838))

(declare-fun m!33163 () Bool)

(assert (=> b!30831 m!33163))

(declare-fun m!33165 () Bool)

(assert (=> b!30833 m!33165))

(assert (=> d!16011 m!33153))

(assert (=> d!16011 m!33051))

(assert (=> d!16011 m!33059))

(declare-fun m!33167 () Bool)

(assert (=> b!30838 m!33167))

(assert (=> b!30836 m!33057))

(declare-fun m!33169 () Bool)

(assert (=> b!30819 m!33169))

(declare-fun m!33171 () Bool)

(assert (=> b!30834 m!33171))

(declare-fun m!33173 () Bool)

(assert (=> b!30834 m!33173))

(declare-fun m!33175 () Bool)

(assert (=> b!30839 m!33175))

(declare-fun m!33177 () Bool)

(assert (=> b!30826 m!33177))

(declare-fun m!33179 () Bool)

(assert (=> b!30825 m!33179))

(assert (=> b!30827 m!33073))

(declare-fun m!33181 () Bool)

(assert (=> b!30820 m!33181))

(declare-fun m!33183 () Bool)

(assert (=> b!30824 m!33183))

(declare-fun m!33185 () Bool)

(assert (=> b!30835 m!33185))

(assert (=> b!30823 m!33153))

(assert (=> b!30823 m!33051))

(declare-fun m!33187 () Bool)

(assert (=> b!30823 m!33187))

(assert (=> b!30822 m!33153))

(assert (=> b!30822 m!33051))

(assert (=> b!30822 m!33187))

(assert (=> b!30691 d!16011))

(declare-fun b!30841 () Bool)

(declare-fun res!14227 () Bool)

(declare-fun e!15717 () Bool)

(assert (=> b!30841 (=> (not res!14227) (not e!15717))))

(assert (=> b!30841 (= res!14227 (<= (- (level!56 (left!712 res!5547)) (level!56 (right!715 res!5547))) 1))))

(declare-fun b!30843 () Bool)

(assert (=> b!30843 (= e!15717 (balanced!63 (right!715 res!5547)))))

(declare-fun b!30842 () Bool)

(declare-fun res!14229 () Bool)

(assert (=> b!30842 (=> (not res!14229) (not e!15717))))

(assert (=> b!30842 (= res!14229 (balanced!63 (left!712 res!5547)))))

(declare-fun d!16013 () Bool)

(declare-fun res!14226 () Bool)

(declare-fun e!15716 () Bool)

(assert (=> d!16013 (=> res!14226 e!15716)))

(assert (=> d!16013 (= res!14226 (not (is-CC!67 res!5547)))))

(assert (=> d!16013 (= (balanced!63 res!5547) e!15716)))

(declare-fun b!30840 () Bool)

(assert (=> b!30840 (= e!15716 e!15717)))

(declare-fun res!14228 () Bool)

(assert (=> b!30840 (=> (not res!14228) (not e!15717))))

(assert (=> b!30840 (= res!14228 (>= (- (level!56 (left!712 res!5547)) (level!56 (right!715 res!5547))) (- 1)))))

(assert (= (and d!16013 (not res!14226)) b!30840))

(assert (= (and b!30840 res!14228) b!30841))

(assert (= (and b!30841 res!14227) b!30842))

(assert (= (and b!30842 res!14229) b!30843))

(assert (=> b!30841 m!33133))

(assert (=> b!30841 m!33131))

(declare-fun m!33189 () Bool)

(assert (=> b!30843 m!33189))

(declare-fun m!33191 () Bool)

(assert (=> b!30842 m!33191))

(assert (=> b!30840 m!33133))

(assert (=> b!30840 m!33131))

(assert (=> b!30693 d!16013))

(assert (=> b!30699 d!15987))

(assert (=> b!30699 d!15989))

(assert (=> b!30699 d!15997))

(declare-fun b!30845 () Bool)

(declare-fun res!14231 () Bool)

(declare-fun e!15719 () Bool)

(assert (=> b!30845 (=> (not res!14231) (not e!15719))))

(assert (=> b!30845 (= res!14231 (<= (- (level!56 (left!712 xs!533)) (level!56 (right!715 xs!533))) 1))))

(declare-fun b!30847 () Bool)

(assert (=> b!30847 (= e!15719 (balanced!63 (right!715 xs!533)))))

(declare-fun b!30846 () Bool)

(declare-fun res!14233 () Bool)

(assert (=> b!30846 (=> (not res!14233) (not e!15719))))

(assert (=> b!30846 (= res!14233 (balanced!63 (left!712 xs!533)))))

(declare-fun d!16015 () Bool)

(declare-fun res!14230 () Bool)

(declare-fun e!15718 () Bool)

(assert (=> d!16015 (=> res!14230 e!15718)))

(assert (=> d!16015 (= res!14230 (not (is-CC!67 xs!533)))))

(assert (=> d!16015 (= (balanced!63 xs!533) e!15718)))

(declare-fun b!30844 () Bool)

(assert (=> b!30844 (= e!15718 e!15719)))

(declare-fun res!14232 () Bool)

(assert (=> b!30844 (=> (not res!14232) (not e!15719))))

(assert (=> b!30844 (= res!14232 (>= (- (level!56 (left!712 xs!533)) (level!56 (right!715 xs!533))) (- 1)))))

(assert (= (and d!16015 (not res!14230)) b!30844))

(assert (= (and b!30844 res!14232) b!30845))

(assert (= (and b!30845 res!14231) b!30846))

(assert (= (and b!30846 res!14233) b!30847))

(assert (=> b!30845 m!33117))

(assert (=> b!30845 m!33115))

(declare-fun m!33193 () Bool)

(assert (=> b!30847 m!33193))

(declare-fun m!33195 () Bool)

(assert (=> b!30846 m!33195))

(assert (=> b!30844 m!33117))

(assert (=> b!30844 m!33115))

(assert (=> b!30685 d!16015))

(declare-fun b!30854 () Bool)

(declare-fun e!15722 () Bool)

(declare-fun tp!6440 () Bool)

(declare-fun tp!6441 () Bool)

(assert (=> b!30854 (= e!15722 (and tp!6440 tp!6441))))

(declare-fun b!30855 () Bool)

(assert (=> b!30855 (= e!15722 tp_is_empty!181)))

(assert (=> b!30679 (= tp!6429 e!15722)))

(assert (= (and b!30679 (is-CC!67 (left!712 nll!6))) b!30854))

(assert (= (and b!30679 (is-Single!67 (left!712 nll!6))) b!30855))

(declare-fun b!30856 () Bool)

(declare-fun e!15723 () Bool)

(declare-fun tp!6442 () Bool)

(declare-fun tp!6443 () Bool)

(assert (=> b!30856 (= e!15723 (and tp!6442 tp!6443))))

(declare-fun b!30857 () Bool)

(assert (=> b!30857 (= e!15723 tp_is_empty!181)))

(assert (=> b!30679 (= tp!6426 e!15723)))

(assert (= (and b!30679 (is-CC!67 (right!715 nll!6))) b!30856))

(assert (= (and b!30679 (is-Single!67 (right!715 nll!6))) b!30857))

(declare-fun b!30858 () Bool)

(declare-fun e!15724 () Bool)

(declare-fun tp!6444 () Bool)

(declare-fun tp!6445 () Bool)

(assert (=> b!30858 (= e!15724 (and tp!6444 tp!6445))))

(declare-fun b!30859 () Bool)

(assert (=> b!30859 (= e!15724 tp_is_empty!181)))

(assert (=> b!30683 (= tp!6422 e!15724)))

(assert (= (and b!30683 (is-CC!67 (left!712 xs!533))) b!30858))

(assert (= (and b!30683 (is-Single!67 (left!712 xs!533))) b!30859))

(declare-fun b!30860 () Bool)

(declare-fun e!15725 () Bool)

(declare-fun tp!6446 () Bool)

(declare-fun tp!6447 () Bool)

(assert (=> b!30860 (= e!15725 (and tp!6446 tp!6447))))

(declare-fun b!30861 () Bool)

(assert (=> b!30861 (= e!15725 tp_is_empty!181)))

(assert (=> b!30683 (= tp!6428 e!15725)))

(assert (= (and b!30683 (is-CC!67 (right!715 xs!533))) b!30860))

(assert (= (and b!30683 (is-Single!67 (right!715 xs!533))) b!30861))

(declare-fun b!30862 () Bool)

(declare-fun e!15726 () Bool)

(declare-fun tp!6448 () Bool)

(declare-fun tp!6449 () Bool)

(assert (=> b!30862 (= e!15726 (and tp!6448 tp!6449))))

(declare-fun b!30863 () Bool)

(assert (=> b!30863 (= e!15726 tp_is_empty!181)))

(assert (=> b!30695 (= tp!6423 e!15726)))

(assert (= (and b!30695 (is-CC!67 (left!712 ys!77))) b!30862))

(assert (= (and b!30695 (is-Single!67 (left!712 ys!77))) b!30863))

(declare-fun b!30864 () Bool)

(declare-fun e!15727 () Bool)

(declare-fun tp!6450 () Bool)

(declare-fun tp!6451 () Bool)

(assert (=> b!30864 (= e!15727 (and tp!6450 tp!6451))))

(declare-fun b!30865 () Bool)

(assert (=> b!30865 (= e!15727 tp_is_empty!181)))

(assert (=> b!30695 (= tp!6425 e!15727)))

(assert (= (and b!30695 (is-CC!67 (right!715 ys!77))) b!30864))

(assert (= (and b!30695 (is-Single!67 (right!715 ys!77))) b!30865))

(declare-fun b!30866 () Bool)

(declare-fun e!15728 () Bool)

(declare-fun tp!6452 () Bool)

(declare-fun tp!6453 () Bool)

(assert (=> b!30866 (= e!15728 (and tp!6452 tp!6453))))

(declare-fun b!30867 () Bool)

(assert (=> b!30867 (= e!15728 tp_is_empty!181)))

(assert (=> b!30680 (= tp!6427 e!15728)))

(assert (= (and b!30680 (is-CC!67 (left!712 res!5547))) b!30866))

(assert (= (and b!30680 (is-Single!67 (left!712 res!5547))) b!30867))

(declare-fun b!30868 () Bool)

(declare-fun e!15729 () Bool)

(declare-fun tp!6454 () Bool)

(declare-fun tp!6455 () Bool)

(assert (=> b!30868 (= e!15729 (and tp!6454 tp!6455))))

(declare-fun b!30869 () Bool)

(assert (=> b!30869 (= e!15729 tp_is_empty!181)))

(assert (=> b!30680 (= tp!6424 e!15729)))

(assert (= (and b!30680 (is-CC!67 (right!715 res!5547))) b!30868))

(assert (= (and b!30680 (is-Single!67 (right!715 res!5547))) b!30869))

(push 1)

(assert (not b!30819))

(assert (not b!30833))

(assert (not b!30724))

(assert (not b!30830))

(assert (not b!30767))

(assert (not b!30838))

(assert (not b!30765))

(assert (not b!30734))

(assert (not b!30844))

(assert (not b!30755))

(assert (not b!30722))

(assert (not b!30826))

(assert (not b!30820))

(assert (not b!30754))

(assert (not b!30752))

(assert (not b!30862))

(assert (not b!30860))

(assert (not b!30856))

(assert (not b!30835))

(assert (not b!30750))

(assert (not b!30768))

(assert (not b!30775))

(assert (not d!15983))

(assert (not b!30747))

(assert (not b!30864))

(assert (not b!30836))

(assert (not b!30766))

(assert (not b!30842))

(assert (not b!30725))

(assert (not b!30822))

(assert (not b!30770))

(assert (not b!30841))

(assert (not b!30756))

(assert (not b!30776))

(assert (not b!30840))

(assert (not b!30847))

(assert (not b!30866))

(assert (not b!30854))

(assert (not b!30772))

(assert (not b!30753))

(assert (not b!30825))

(assert (not b!30726))

(assert (not b!30773))

(assert (not b!30736))

(assert (not b!30839))

(assert (not b!30868))

(assert (not b!30774))

(assert (not b!30721))

(assert (not d!16011))

(assert (not b!30831))

(assert (not b!30843))

(assert (not b!30738))

(assert (not b!30858))

(assert (not b!30720))

(assert (not b!30824))

(assert (not b!30846))

(assert (not b!30749))

(assert (not b!30827))

(assert (not b!30834))

(assert (not b!30823))

(assert (not b!30748))

(assert (not b!30845))

(assert tp_is_empty!181)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!30871 () Bool)

(declare-fun e!15730 () Int)

(declare-fun lt!5795 () Int)

(declare-fun lt!5793 () Int)

(assert (=> b!30871 (= e!15730 (+ 1 (ite (>= lt!5795 lt!5793) lt!5795 lt!5793)))))

(assert (=> b!30871 (= lt!5793 (level!56 (right!715 (left!712 (left!712 ys!77)))))))

(assert (=> b!30871 (= lt!5795 (level!56 (left!712 (left!712 (left!712 ys!77)))))))

(declare-fun d!16017 () Bool)

(declare-fun lt!5794 () Int)

(assert (=> d!16017 (>= lt!5794 0)))

(assert (=> d!16017 (= lt!5794 e!15730)))

(declare-fun c!6728 () Bool)

(assert (=> d!16017 (= c!6728 (or (is-Empty!78 (left!712 (left!712 ys!77))) (is-Single!67 (left!712 (left!712 ys!77)))))))

(assert (=> d!16017 (= (level!56 (left!712 (left!712 ys!77))) lt!5794)))

(declare-fun b!30870 () Bool)

(assert (=> b!30870 (= e!15730 0)))

(assert (= (and d!16017 c!6728) b!30870))

(assert (= (and d!16017 (not c!6728)) b!30871))

(declare-fun m!33197 () Bool)

(assert (=> b!30871 m!33197))

(declare-fun m!33199 () Bool)

(assert (=> b!30871 m!33199))

(assert (=> d!16011 d!16017))

(assert (=> d!16011 d!15989))

(assert (=> d!16011 d!16001))

(declare-fun d!16019 () Bool)

(assert (=> d!16019 (= (isEmpty!324 (left!712 res!5547)) (= (left!712 res!5547) Empty!78))))

(assert (=> b!30773 d!16019))

(declare-fun b!30873 () Bool)

(declare-fun res!14235 () Bool)

(declare-fun e!15732 () Bool)

(assert (=> b!30873 (=> (not res!14235) (not e!15732))))

(assert (=> b!30873 (= res!14235 (<= (- (level!56 (left!712 (right!715 xs!533))) (level!56 (right!715 (right!715 xs!533)))) 1))))

(declare-fun b!30875 () Bool)

(assert (=> b!30875 (= e!15732 (balanced!63 (right!715 (right!715 xs!533))))))

(declare-fun b!30874 () Bool)

(declare-fun res!14237 () Bool)

(assert (=> b!30874 (=> (not res!14237) (not e!15732))))

(assert (=> b!30874 (= res!14237 (balanced!63 (left!712 (right!715 xs!533))))))

(declare-fun d!16021 () Bool)

(declare-fun res!14234 () Bool)

(declare-fun e!15731 () Bool)

(assert (=> d!16021 (=> res!14234 e!15731)))

(assert (=> d!16021 (= res!14234 (not (is-CC!67 (right!715 xs!533))))))

(assert (=> d!16021 (= (balanced!63 (right!715 xs!533)) e!15731)))

(declare-fun b!30872 () Bool)

(assert (=> b!30872 (= e!15731 e!15732)))

(declare-fun res!14236 () Bool)

(assert (=> b!30872 (=> (not res!14236) (not e!15732))))

(assert (=> b!30872 (= res!14236 (>= (- (level!56 (left!712 (right!715 xs!533))) (level!56 (right!715 (right!715 xs!533)))) (- 1)))))

(assert (= (and d!16021 (not res!14234)) b!30872))

(assert (= (and b!30872 res!14236) b!30873))

(assert (= (and b!30873 res!14235) b!30874))

(assert (= (and b!30874 res!14237) b!30875))

(declare-fun m!33201 () Bool)

(assert (=> b!30873 m!33201))

(declare-fun m!33203 () Bool)

(assert (=> b!30873 m!33203))

(declare-fun m!33205 () Bool)

(assert (=> b!30875 m!33205))

(declare-fun m!33207 () Bool)

(assert (=> b!30874 m!33207))

(assert (=> b!30872 m!33201))

(assert (=> b!30872 m!33203))

(assert (=> b!30847 d!16021))

(declare-fun b!30877 () Bool)

(declare-fun e!15733 () Int)

(declare-fun lt!5798 () Int)

(declare-fun lt!5796 () Int)

(assert (=> b!30877 (= e!15733 (+ 1 (ite (>= lt!5798 lt!5796) lt!5798 lt!5796)))))

(assert (=> b!30877 (= lt!5796 (level!56 (right!715 (right!715 (left!712 ys!77)))))))

(assert (=> b!30877 (= lt!5798 (level!56 (left!712 (right!715 (left!712 ys!77)))))))

(declare-fun d!16023 () Bool)

(declare-fun lt!5797 () Int)

(assert (=> d!16023 (>= lt!5797 0)))

(assert (=> d!16023 (= lt!5797 e!15733)))

(declare-fun c!6729 () Bool)

(assert (=> d!16023 (= c!6729 (or (is-Empty!78 (right!715 (left!712 ys!77))) (is-Single!67 (right!715 (left!712 ys!77)))))))

(assert (=> d!16023 (= (level!56 (right!715 (left!712 ys!77))) lt!5797)))

(declare-fun b!30876 () Bool)

(assert (=> b!30876 (= e!15733 0)))

(assert (= (and d!16023 c!6729) b!30876))

(assert (= (and d!16023 (not c!6729)) b!30877))

(declare-fun m!33209 () Bool)

(assert (=> b!30877 m!33209))

(declare-fun m!33211 () Bool)

(assert (=> b!30877 m!33211))

(assert (=> b!30772 d!16023))

(assert (=> b!30772 d!16017))

(declare-fun b!30878 () Bool)

(declare-fun res!14247 () Bool)

(declare-fun e!15739 () Bool)

(assert (=> b!30878 (=> (not res!14247) (not e!15739))))

(assert (=> b!30878 (= res!14247 (balanced!63 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun b!30879 () Bool)

(declare-fun res!14242 () Bool)

(declare-fun e!15734 () Bool)

(assert (=> b!30879 (=> (not res!14242) (not e!15734))))

(declare-fun lt!5799 () Conc!68)

(assert (=> b!30879 (= res!14242 (balanced!63 lt!5799))))

(declare-fun b!30880 () Bool)

(declare-fun e!15736 () Conc!68)

(declare-fun res!14245 () Conc!68)

(assert (=> b!30880 (= e!15736 res!14245)))

(assert (=> b!30880 true))

(declare-fun e!15735 () Bool)

(assert (=> b!30880 e!15735))

(declare-fun b!30881 () Bool)

(declare-fun res!14239 () Bool)

(assert (=> b!30881 (=> (not res!14239) (not e!15734))))

(declare-fun lt!5801 () Int)

(declare-fun lt!5813 () Int)

(declare-fun lt!5814 () Int)

(assert (=> b!30881 (= res!14239 (>= lt!5801 (ite (>= lt!5813 lt!5814) lt!5813 lt!5814)))))

(assert (=> b!30881 (= lt!5814 (level!56 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> b!30881 (= lt!5813 (level!56 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))

(assert (=> b!30881 (= lt!5801 (level!56 lt!5799))))

(declare-fun b!30882 () Bool)

(declare-fun e!15740 () Bool)

(assert (=> b!30882 (= e!15740 e!15734)))

(declare-fun res!14243 () Bool)

(assert (=> b!30882 (=> (not res!14243) (not e!15734))))

(declare-fun lt!5811 () Int)

(declare-fun lt!5805 () Int)

(declare-fun lt!5806 () Int)

(assert (=> b!30882 (= res!14243 (<= lt!5811 (+ (ite (>= lt!5805 lt!5806) lt!5805 lt!5806) 1)))))

(assert (=> b!30882 (= lt!5806 (level!56 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> b!30882 (= lt!5805 (level!56 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))

(assert (=> b!30882 (= lt!5811 (level!56 lt!5799))))

(declare-fun lt!5810 () Bool)

(declare-fun lt!5812 () Int)

(declare-fun b!30883 () Bool)

(declare-fun lt!5804 () Int)

(assert (=> b!30883 (= e!15736 (concatNonEmpty!19 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(declare-fun e!15738 () Int)

(declare-fun b!30884 () Bool)

(declare-fun lt!5802 () Bool)

(assert (=> b!30884 (= e!15738 (level!56 (ite lt!5802 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun b!30885 () Bool)

(assert (=> b!30885 (= e!15739 (not (isEmpty!324 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun b!30886 () Bool)

(declare-fun res!14246 () Bool)

(assert (=> b!30886 (=> (not res!14246) (not e!15739))))

(assert (=> b!30886 (= res!14246 (not (isEmpty!324 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun b!30887 () Bool)

(assert (=> b!30887 (= e!15735 tp_is_empty!181)))

(declare-fun b!30888 () Bool)

(declare-fun res!14248 () Int)

(assert (=> b!30888 (= e!15738 res!14248)))

(assert (=> b!30888 true))

(assert (=> b!30888 true))

(declare-fun b!30889 () Bool)

(declare-fun tp!6456 () Bool)

(declare-fun tp!6457 () Bool)

(assert (=> b!30889 (= e!15735 (and tp!6456 tp!6457))))

(declare-fun b!30890 () Bool)

(declare-fun res!14244 () Bool)

(assert (=> b!30890 (=> (not res!14244) (not e!15734))))

(assert (=> b!30890 (= res!14244 (appendAssocInst!16 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun e!15741 () Conc!68)

(declare-fun b!30891 () Bool)

(assert (=> b!30891 (= e!15741 (CC!67 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16025 () Bool)

(assert (=> d!16025 e!15740))

(declare-fun res!14241 () Bool)

(assert (=> d!16025 (=> (not res!14241) (not e!15740))))

(assert (=> d!16025 (= res!14241 (is-CC!67 lt!5799))))

(assert (=> d!16025 (= lt!5799 e!15741)))

(declare-fun c!6732 () Bool)

(declare-fun lt!5809 () Int)

(assert (=> d!16025 (= c!6732 (and (>= lt!5809 (- 1)) (<= lt!5809 1)))))

(assert (=> d!16025 (= lt!5809 (- (level!56 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (level!56 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> d!16025 e!15739))

(declare-fun res!14250 () Bool)

(assert (=> d!16025 (=> (not res!14250) (not e!15739))))

(declare-fun e!15737 () Bool)

(assert (=> d!16025 (= res!14250 e!15737)))

(declare-fun res!14249 () Bool)

(assert (=> d!16025 (=> (not res!14249) (not e!15737))))

(assert (=> d!16025 (= res!14249 (concInv!62 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))

(assert (=> d!16025 (= (concatNonEmpty!19 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) lt!5799)))

(declare-fun b!30892 () Bool)

(declare-fun res!14240 () Bool)

(assert (=> b!30892 (=> (not res!14240) (not e!15734))))

(assert (=> b!30892 (= res!14240 (concInv!62 lt!5799))))

(declare-fun b!30893 () Bool)

(declare-fun lt!5803 () Int)

(declare-fun lt!5800 () Int)

(declare-fun lt!5807 () Conc!68)

(declare-fun lt!5808 () Bool)

(assert (=> b!30893 (= e!15741 (ite lt!5808 (let ((res!14161 lt!5807)) (ite (>= lt!5812 lt!5804) (CC!67 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) res!14161) (ite (= lt!5803 (- lt!5800 3)) (CC!67 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (CC!67 (left!712 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) res!14161)) (CC!67 (CC!67 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) res!14161)))) (let ((res!14164 lt!5807)) (ite (>= lt!5812 lt!5804) (CC!67 res!14164 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (ite (= lt!5803 (- lt!5800 3)) (CC!67 (CC!67 res!14164 (right!715 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (CC!67 res!14164 (CC!67 (right!715 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))))

(assert (=> b!30893 (= lt!5800 e!15738)))

(declare-fun c!6733 () Bool)

(assert (=> b!30893 (= c!6733 (or lt!5802 (and (not lt!5808) (not (>= lt!5812 lt!5804)))))))

(assert (=> b!30893 (= lt!5802 (and lt!5808 (not (>= lt!5812 lt!5804))))))

(declare-fun e!15742 () Int)

(assert (=> b!30893 (= lt!5803 e!15742)))

(declare-fun c!6730 () Bool)

(assert (=> b!30893 (= c!6730 (or (and lt!5808 (not (>= lt!5812 lt!5804))) (and (not lt!5808) (not (>= lt!5812 lt!5804)))))))

(assert (=> b!30893 (= lt!5807 e!15736)))

(declare-fun c!6731 () Bool)

(assert (=> b!30893 (= c!6731 (or lt!5810 (not lt!5808)))))

(assert (=> b!30893 (= lt!5810 lt!5808)))

(assert (=> b!30893 (= lt!5804 (level!56 (ite lt!5808 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(assert (=> b!30893 (= lt!5812 (level!56 (ite lt!5808 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(assert (=> b!30893 (= lt!5808 (< lt!5809 (- 1)))))

(declare-fun b!30894 () Bool)

(declare-fun res!14251 () Bool)

(assert (=> b!30894 (=> (not res!14251) (not e!15739))))

(assert (=> b!30894 (= res!14251 (concInv!62 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun b!30895 () Bool)

(assert (=> b!30895 (= e!15737 (balanced!63 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))

(declare-fun b!30896 () Bool)

(declare-fun res!14238 () Int)

(assert (=> b!30896 (= e!15742 res!14238)))

(assert (=> b!30896 true))

(declare-fun b!30897 () Bool)

(assert (=> b!30897 (= e!15734 (concatCorrectness!16 lt!5799 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun b!30898 () Bool)

(assert (=> b!30898 (= e!15742 (level!56 lt!5807))))

(assert (= (and d!16025 res!14249) b!30895))

(assert (= (and d!16025 res!14250) b!30894))

(assert (= (and b!30894 res!14251) b!30878))

(assert (= (and b!30878 res!14247) b!30886))

(assert (= (and b!30886 res!14246) b!30885))

(assert (= (and b!30880 (is-CC!67 res!14245)) b!30889))

(assert (= (and b!30880 (is-Single!67 res!14245)) b!30887))

(assert (= (and b!30893 c!6731) b!30883))

(assert (= (and b!30893 (not c!6731)) b!30880))

(assert (= (and b!30893 c!6730) b!30898))

(assert (= (and b!30893 (not c!6730)) b!30896))

(assert (= (and b!30893 c!6733) b!30884))

(assert (= (and b!30893 (not c!6733)) b!30888))

(assert (= (and d!16025 c!6732) b!30891))

(assert (= (and d!16025 (not c!6732)) b!30893))

(assert (= (and d!16025 res!14241) b!30882))

(assert (= (and b!30882 res!14243) b!30881))

(assert (= (and b!30881 res!14239) b!30892))

(assert (= (and b!30892 res!14240) b!30879))

(assert (= (and b!30879 res!14242) b!30890))

(assert (= (and b!30890 res!14244) b!30897))

(declare-fun m!33213 () Bool)

(assert (=> b!30890 m!33213))

(declare-fun m!33215 () Bool)

(assert (=> b!30892 m!33215))

(declare-fun m!33217 () Bool)

(assert (=> d!16025 m!33217))

(declare-fun m!33219 () Bool)

(assert (=> d!16025 m!33219))

(declare-fun m!33221 () Bool)

(assert (=> d!16025 m!33221))

(declare-fun m!33223 () Bool)

(assert (=> b!30897 m!33223))

(declare-fun m!33225 () Bool)

(assert (=> b!30895 m!33225))

(declare-fun m!33227 () Bool)

(assert (=> b!30878 m!33227))

(declare-fun m!33229 () Bool)

(assert (=> b!30893 m!33229))

(declare-fun m!33231 () Bool)

(assert (=> b!30893 m!33231))

(declare-fun m!33233 () Bool)

(assert (=> b!30898 m!33233))

(declare-fun m!33235 () Bool)

(assert (=> b!30885 m!33235))

(declare-fun m!33237 () Bool)

(assert (=> b!30884 m!33237))

(declare-fun m!33239 () Bool)

(assert (=> b!30886 m!33239))

(declare-fun m!33241 () Bool)

(assert (=> b!30879 m!33241))

(declare-fun m!33243 () Bool)

(assert (=> b!30883 m!33243))

(declare-fun m!33245 () Bool)

(assert (=> b!30894 m!33245))

(assert (=> b!30882 m!33217))

(assert (=> b!30882 m!33219))

(declare-fun m!33247 () Bool)

(assert (=> b!30882 m!33247))

(assert (=> b!30881 m!33217))

(assert (=> b!30881 m!33219))

(assert (=> b!30881 m!33247))

(assert (=> b!30824 d!16025))

(declare-fun b!30900 () Bool)

(declare-fun e!15743 () Int)

(declare-fun lt!5817 () Int)

(declare-fun lt!5815 () Int)

(assert (=> b!30900 (= e!15743 (+ 1 (ite (>= lt!5817 lt!5815) lt!5817 lt!5815)))))

(assert (=> b!30900 (= lt!5815 (level!56 (right!715 lt!5785)))))

(assert (=> b!30900 (= lt!5817 (level!56 (left!712 lt!5785)))))

(declare-fun d!16027 () Bool)

(declare-fun lt!5816 () Int)

(assert (=> d!16027 (>= lt!5816 0)))

(assert (=> d!16027 (= lt!5816 e!15743)))

(declare-fun c!6734 () Bool)

(assert (=> d!16027 (= c!6734 (or (is-Empty!78 lt!5785) (is-Single!67 lt!5785)))))

(assert (=> d!16027 (= (level!56 lt!5785) lt!5816)))

(declare-fun b!30899 () Bool)

(assert (=> b!30899 (= e!15743 0)))

(assert (= (and d!16027 c!6734) b!30899))

(assert (= (and d!16027 (not c!6734)) b!30900))

(declare-fun m!33249 () Bool)

(assert (=> b!30900 m!33249))

(declare-fun m!33251 () Bool)

(assert (=> b!30900 m!33251))

(assert (=> b!30839 d!16027))

(declare-fun b!30902 () Bool)

(declare-fun e!15744 () Int)

(declare-fun lt!5820 () Int)

(declare-fun lt!5818 () Int)

(assert (=> b!30902 (= e!15744 (+ 1 (ite (>= lt!5820 lt!5818) lt!5820 lt!5818)))))

(assert (=> b!30902 (= lt!5818 (level!56 (right!715 (left!712 xs!533))))))

(assert (=> b!30902 (= lt!5820 (level!56 (left!712 (left!712 xs!533))))))

(declare-fun d!16029 () Bool)

(declare-fun lt!5819 () Int)

(assert (=> d!16029 (>= lt!5819 0)))

(assert (=> d!16029 (= lt!5819 e!15744)))

(declare-fun c!6735 () Bool)

(assert (=> d!16029 (= c!6735 (or (is-Empty!78 (left!712 xs!533)) (is-Single!67 (left!712 xs!533))))))

(assert (=> d!16029 (= (level!56 (left!712 xs!533)) lt!5819)))

(declare-fun b!30901 () Bool)

(assert (=> b!30901 (= e!15744 0)))

(assert (= (and d!16029 c!6735) b!30901))

(assert (= (and d!16029 (not c!6735)) b!30902))

(declare-fun m!33253 () Bool)

(assert (=> b!30902 m!33253))

(declare-fun m!33255 () Bool)

(assert (=> b!30902 m!33255))

(assert (=> b!30845 d!16029))

(declare-fun b!30904 () Bool)

(declare-fun e!15745 () Int)

(declare-fun lt!5823 () Int)

(declare-fun lt!5821 () Int)

(assert (=> b!30904 (= e!15745 (+ 1 (ite (>= lt!5823 lt!5821) lt!5823 lt!5821)))))

(assert (=> b!30904 (= lt!5821 (level!56 (right!715 (right!715 xs!533))))))

(assert (=> b!30904 (= lt!5823 (level!56 (left!712 (right!715 xs!533))))))

(declare-fun d!16031 () Bool)

(declare-fun lt!5822 () Int)

(assert (=> d!16031 (>= lt!5822 0)))

(assert (=> d!16031 (= lt!5822 e!15745)))

(declare-fun c!6736 () Bool)

(assert (=> d!16031 (= c!6736 (or (is-Empty!78 (right!715 xs!533)) (is-Single!67 (right!715 xs!533))))))

(assert (=> d!16031 (= (level!56 (right!715 xs!533)) lt!5822)))

(declare-fun b!30903 () Bool)

(assert (=> b!30903 (= e!15745 0)))

(assert (= (and d!16031 c!6736) b!30903))

(assert (= (and d!16031 (not c!6736)) b!30904))

(assert (=> b!30904 m!33203))

(assert (=> b!30904 m!33201))

(assert (=> b!30845 d!16031))

(declare-fun b!30908 () Bool)

(declare-fun e!15746 () Bool)

(assert (=> b!30908 (= e!15746 (concInv!62 (right!715 (right!715 res!5547))))))

(declare-fun b!30905 () Bool)

(declare-fun e!15747 () Bool)

(assert (=> b!30905 (= e!15747 e!15746)))

(declare-fun res!14253 () Bool)

(assert (=> b!30905 (=> (not res!14253) (not e!15746))))

(assert (=> b!30905 (= res!14253 (not (isEmpty!324 (left!712 (right!715 res!5547)))))))

(declare-fun b!30906 () Bool)

(declare-fun res!14255 () Bool)

(assert (=> b!30906 (=> (not res!14255) (not e!15746))))

(assert (=> b!30906 (= res!14255 (not (isEmpty!324 (right!715 (right!715 res!5547)))))))

(declare-fun b!30907 () Bool)

(declare-fun res!14252 () Bool)

(assert (=> b!30907 (=> (not res!14252) (not e!15746))))

(assert (=> b!30907 (= res!14252 (concInv!62 (left!712 (right!715 res!5547))))))

(declare-fun d!16033 () Bool)

(declare-fun res!14254 () Bool)

(assert (=> d!16033 (=> res!14254 e!15747)))

(assert (=> d!16033 (= res!14254 (not (is-CC!67 (right!715 res!5547))))))

(assert (=> d!16033 (= (concInv!62 (right!715 res!5547)) e!15747)))

(assert (= (and d!16033 (not res!14254)) b!30905))

(assert (= (and b!30905 res!14253) b!30906))

(assert (= (and b!30906 res!14255) b!30907))

(assert (= (and b!30907 res!14252) b!30908))

(declare-fun m!33257 () Bool)

(assert (=> b!30908 m!33257))

(declare-fun m!33259 () Bool)

(assert (=> b!30905 m!33259))

(declare-fun m!33261 () Bool)

(assert (=> b!30906 m!33261))

(declare-fun m!33263 () Bool)

(assert (=> b!30907 m!33263))

(assert (=> b!30776 d!16033))

(assert (=> b!30766 d!16007))

(assert (=> b!30766 d!16005))

(declare-fun b!30910 () Bool)

(declare-fun e!15748 () Int)

(declare-fun lt!5826 () Int)

(declare-fun lt!5824 () Int)

(assert (=> b!30910 (= e!15748 (+ 1 (ite (>= lt!5826 lt!5824) lt!5826 lt!5824)))))

(assert (=> b!30910 (= lt!5824 (level!56 (right!715 (left!712 res!5547))))))

(assert (=> b!30910 (= lt!5826 (level!56 (left!712 (left!712 res!5547))))))

(declare-fun d!16035 () Bool)

(declare-fun lt!5825 () Int)

(assert (=> d!16035 (>= lt!5825 0)))

(assert (=> d!16035 (= lt!5825 e!15748)))

(declare-fun c!6737 () Bool)

(assert (=> d!16035 (= c!6737 (or (is-Empty!78 (left!712 res!5547)) (is-Single!67 (left!712 res!5547))))))

(assert (=> d!16035 (= (level!56 (left!712 res!5547)) lt!5825)))

(declare-fun b!30909 () Bool)

(assert (=> b!30909 (= e!15748 0)))

(assert (= (and d!16035 c!6737) b!30909))

(assert (= (and d!16035 (not c!6737)) b!30910))

(declare-fun m!33265 () Bool)

(assert (=> b!30910 m!33265))

(declare-fun m!33267 () Bool)

(assert (=> b!30910 m!33267))

(assert (=> b!30840 d!16035))

(declare-fun b!30912 () Bool)

(declare-fun e!15749 () Int)

(declare-fun lt!5829 () Int)

(declare-fun lt!5827 () Int)

(assert (=> b!30912 (= e!15749 (+ 1 (ite (>= lt!5829 lt!5827) lt!5829 lt!5827)))))

(assert (=> b!30912 (= lt!5827 (level!56 (right!715 (right!715 res!5547))))))

(assert (=> b!30912 (= lt!5829 (level!56 (left!712 (right!715 res!5547))))))

(declare-fun d!16037 () Bool)

(declare-fun lt!5828 () Int)

(assert (=> d!16037 (>= lt!5828 0)))

(assert (=> d!16037 (= lt!5828 e!15749)))

(declare-fun c!6738 () Bool)

(assert (=> d!16037 (= c!6738 (or (is-Empty!78 (right!715 res!5547)) (is-Single!67 (right!715 res!5547))))))

(assert (=> d!16037 (= (level!56 (right!715 res!5547)) lt!5828)))

(declare-fun b!30911 () Bool)

(assert (=> b!30911 (= e!15749 0)))

(assert (= (and d!16037 c!6738) b!30911))

(assert (= (and d!16037 (not c!6738)) b!30912))

(declare-fun m!33269 () Bool)

(assert (=> b!30912 m!33269))

(declare-fun m!33271 () Bool)

(assert (=> b!30912 m!33271))

(assert (=> b!30840 d!16037))

(declare-fun b!30916 () Bool)

(declare-fun e!15750 () Bool)

(assert (=> b!30916 (= e!15750 (concInv!62 (right!715 (right!715 xs!533))))))

(declare-fun b!30913 () Bool)

(declare-fun e!15751 () Bool)

(assert (=> b!30913 (= e!15751 e!15750)))

(declare-fun res!14257 () Bool)

(assert (=> b!30913 (=> (not res!14257) (not e!15750))))

(assert (=> b!30913 (= res!14257 (not (isEmpty!324 (left!712 (right!715 xs!533)))))))

(declare-fun b!30914 () Bool)

(declare-fun res!14259 () Bool)

(assert (=> b!30914 (=> (not res!14259) (not e!15750))))

(assert (=> b!30914 (= res!14259 (not (isEmpty!324 (right!715 (right!715 xs!533)))))))

(declare-fun b!30915 () Bool)

(declare-fun res!14256 () Bool)

(assert (=> b!30915 (=> (not res!14256) (not e!15750))))

(assert (=> b!30915 (= res!14256 (concInv!62 (left!712 (right!715 xs!533))))))

(declare-fun d!16039 () Bool)

(declare-fun res!14258 () Bool)

(assert (=> d!16039 (=> res!14258 e!15751)))

(assert (=> d!16039 (= res!14258 (not (is-CC!67 (right!715 xs!533))))))

(assert (=> d!16039 (= (concInv!62 (right!715 xs!533)) e!15751)))

(assert (= (and d!16039 (not res!14258)) b!30913))

(assert (= (and b!30913 res!14257) b!30914))

(assert (= (and b!30914 res!14259) b!30915))

(assert (= (and b!30915 res!14256) b!30916))

(declare-fun m!33273 () Bool)

(assert (=> b!30916 m!33273))

(declare-fun m!33275 () Bool)

(assert (=> b!30913 m!33275))

(declare-fun m!33277 () Bool)

(assert (=> b!30914 m!33277))

(declare-fun m!33279 () Bool)

(assert (=> b!30915 m!33279))

(assert (=> b!30756 d!16039))

(declare-fun b!30918 () Bool)

(declare-fun e!15752 () Int)

(declare-fun lt!5832 () Int)

(declare-fun lt!5830 () Int)

(assert (=> b!30918 (= e!15752 (+ 1 (ite (>= lt!5832 lt!5830) lt!5832 lt!5830)))))

(assert (=> b!30918 (= lt!5830 (level!56 (right!715 (right!715 (right!715 ys!77)))))))

(assert (=> b!30918 (= lt!5832 (level!56 (left!712 (right!715 (right!715 ys!77)))))))

(declare-fun d!16041 () Bool)

(declare-fun lt!5831 () Int)

(assert (=> d!16041 (>= lt!5831 0)))

(assert (=> d!16041 (= lt!5831 e!15752)))

(declare-fun c!6739 () Bool)

(assert (=> d!16041 (= c!6739 (or (is-Empty!78 (right!715 (right!715 ys!77))) (is-Single!67 (right!715 (right!715 ys!77)))))))

(assert (=> d!16041 (= (level!56 (right!715 (right!715 ys!77))) lt!5831)))

(declare-fun b!30917 () Bool)

(assert (=> b!30917 (= e!15752 0)))

(assert (= (and d!16041 c!6739) b!30917))

(assert (= (and d!16041 (not c!6739)) b!30918))

(declare-fun m!33281 () Bool)

(assert (=> b!30918 m!33281))

(declare-fun m!33283 () Bool)

(assert (=> b!30918 m!33283))

(assert (=> b!30770 d!16041))

(declare-fun b!30920 () Bool)

(declare-fun e!15753 () Int)

(declare-fun lt!5835 () Int)

(declare-fun lt!5833 () Int)

(assert (=> b!30920 (= e!15753 (+ 1 (ite (>= lt!5835 lt!5833) lt!5835 lt!5833)))))

(assert (=> b!30920 (= lt!5833 (level!56 (right!715 (left!712 (right!715 ys!77)))))))

(assert (=> b!30920 (= lt!5835 (level!56 (left!712 (left!712 (right!715 ys!77)))))))

(declare-fun d!16043 () Bool)

(declare-fun lt!5834 () Int)

(assert (=> d!16043 (>= lt!5834 0)))

(assert (=> d!16043 (= lt!5834 e!15753)))

(declare-fun c!6740 () Bool)

(assert (=> d!16043 (= c!6740 (or (is-Empty!78 (left!712 (right!715 ys!77))) (is-Single!67 (left!712 (right!715 ys!77)))))))

(assert (=> d!16043 (= (level!56 (left!712 (right!715 ys!77))) lt!5834)))

(declare-fun b!30919 () Bool)

(assert (=> b!30919 (= e!15753 0)))

(assert (= (and d!16043 c!6740) b!30919))

(assert (= (and d!16043 (not c!6740)) b!30920))

(declare-fun m!33285 () Bool)

(assert (=> b!30920 m!33285))

(declare-fun m!33287 () Bool)

(assert (=> b!30920 m!33287))

(assert (=> b!30770 d!16043))

(declare-fun b!30924 () Bool)

(declare-fun e!15754 () Bool)

(assert (=> b!30924 (= e!15754 (concInv!62 (right!715 (left!712 (left!712 ys!77)))))))

(declare-fun b!30921 () Bool)

(declare-fun e!15755 () Bool)

(assert (=> b!30921 (= e!15755 e!15754)))

(declare-fun res!14261 () Bool)

(assert (=> b!30921 (=> (not res!14261) (not e!15754))))

(assert (=> b!30921 (= res!14261 (not (isEmpty!324 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun b!30922 () Bool)

(declare-fun res!14263 () Bool)

(assert (=> b!30922 (=> (not res!14263) (not e!15754))))

(assert (=> b!30922 (= res!14263 (not (isEmpty!324 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun b!30923 () Bool)

(declare-fun res!14260 () Bool)

(assert (=> b!30923 (=> (not res!14260) (not e!15754))))

(assert (=> b!30923 (= res!14260 (concInv!62 (left!712 (left!712 (left!712 ys!77)))))))

(declare-fun d!16045 () Bool)

(declare-fun res!14262 () Bool)

(assert (=> d!16045 (=> res!14262 e!15755)))

(assert (=> d!16045 (= res!14262 (not (is-CC!67 (left!712 (left!712 ys!77)))))))

(assert (=> d!16045 (= (concInv!62 (left!712 (left!712 ys!77))) e!15755)))

(assert (= (and d!16045 (not res!14262)) b!30921))

(assert (= (and b!30921 res!14261) b!30922))

(assert (= (and b!30922 res!14263) b!30923))

(assert (= (and b!30923 res!14260) b!30924))

(declare-fun m!33289 () Bool)

(assert (=> b!30924 m!33289))

(declare-fun m!33291 () Bool)

(assert (=> b!30921 m!33291))

(declare-fun m!33293 () Bool)

(assert (=> b!30922 m!33293))

(declare-fun m!33295 () Bool)

(assert (=> b!30923 m!33295))

(assert (=> b!30835 d!16045))

(assert (=> b!30822 d!16017))

(assert (=> b!30822 d!15989))

(declare-fun b!30926 () Bool)

(declare-fun e!15756 () Int)

(declare-fun lt!5838 () Int)

(declare-fun lt!5836 () Int)

(assert (=> b!30926 (= e!15756 (+ 1 (ite (>= lt!5838 lt!5836) lt!5838 lt!5836)))))

(assert (=> b!30926 (= lt!5836 (level!56 (right!715 lt!5777)))))

(assert (=> b!30926 (= lt!5838 (level!56 (left!712 lt!5777)))))

(declare-fun d!16047 () Bool)

(declare-fun lt!5837 () Int)

(assert (=> d!16047 (>= lt!5837 0)))

(assert (=> d!16047 (= lt!5837 e!15756)))

(declare-fun c!6741 () Bool)

(assert (=> d!16047 (= c!6741 (or (is-Empty!78 lt!5777) (is-Single!67 lt!5777)))))

(assert (=> d!16047 (= (level!56 lt!5777) lt!5837)))

(declare-fun b!30925 () Bool)

(assert (=> b!30925 (= e!15756 0)))

(assert (= (and d!16047 c!6741) b!30925))

(assert (= (and d!16047 (not c!6741)) b!30926))

(declare-fun m!33297 () Bool)

(assert (=> b!30926 m!33297))

(declare-fun m!33299 () Bool)

(assert (=> b!30926 m!33299))

(assert (=> b!30822 d!16047))

(assert (=> b!30841 d!16035))

(assert (=> b!30841 d!16037))

(declare-fun d!16049 () Bool)

(assert (=> d!16049 (= (isEmpty!324 (right!715 res!5547)) (= (right!715 res!5547) Empty!78))))

(assert (=> b!30774 d!16049))

(declare-fun b!30935 () Bool)

(declare-fun e!15761 () List!364)

(assert (=> b!30935 (= e!15761 Nil!359)))

(declare-fun b!30937 () Bool)

(declare-fun e!15762 () List!364)

(assert (=> b!30937 (= e!15762 (Cons!358 (x!8961 ys!77) Nil!359))))

(declare-fun b!30938 () Bool)

(assert (=> b!30938 (= e!15762 (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))

(declare-fun d!16051 () Bool)

(declare-fun lt!5841 () List!364)

(declare-fun size!277 (List!364) Int)

(declare-fun size!278 (Conc!68) Int)

(assert (=> d!16051 (= (size!277 lt!5841) (size!278 ys!77))))

(assert (=> d!16051 (= lt!5841 e!15761)))

(declare-fun c!6746 () Bool)

(assert (=> d!16051 (= c!6746 (is-Empty!78 ys!77))))

(assert (=> d!16051 (= (toList!119 ys!77) lt!5841)))

(declare-fun b!30936 () Bool)

(assert (=> b!30936 (= e!15761 e!15762)))

(declare-fun c!6747 () Bool)

(assert (=> b!30936 (= c!6747 (is-Single!67 ys!77))))

(assert (= (and b!30936 c!6747) b!30937))

(assert (= (and b!30936 (not c!6747)) b!30938))

(assert (= (and d!16051 c!6746) b!30935))

(assert (= (and d!16051 (not c!6746)) b!30936))

(assert (=> b!30938 m!33111))

(assert (=> b!30938 m!33107))

(assert (=> b!30938 m!33111))

(assert (=> b!30938 m!33107))

(declare-fun m!33301 () Bool)

(assert (=> b!30938 m!33301))

(declare-fun m!33303 () Bool)

(assert (=> d!16051 m!33303))

(declare-fun m!33305 () Bool)

(assert (=> d!16051 m!33305))

(assert (=> b!30721 d!16051))

(declare-fun b!30939 () Bool)

(declare-fun e!15763 () List!364)

(assert (=> b!30939 (= e!15763 Nil!359)))

(declare-fun b!30941 () Bool)

(declare-fun e!15764 () List!364)

(assert (=> b!30941 (= e!15764 (Cons!358 (x!8961 (right!715 (right!715 xs!533))) Nil!359))))

(declare-fun b!30942 () Bool)

(assert (=> b!30942 (= e!15764 (++!44 (toList!119 (left!712 (right!715 (right!715 xs!533)))) (toList!119 (right!715 (right!715 (right!715 xs!533))))))))

(declare-fun d!16053 () Bool)

(declare-fun lt!5842 () List!364)

(assert (=> d!16053 (= (size!277 lt!5842) (size!278 (right!715 (right!715 xs!533))))))

(assert (=> d!16053 (= lt!5842 e!15763)))

(declare-fun c!6748 () Bool)

(assert (=> d!16053 (= c!6748 (is-Empty!78 (right!715 (right!715 xs!533))))))

(assert (=> d!16053 (= (toList!119 (right!715 (right!715 xs!533))) lt!5842)))

(declare-fun b!30940 () Bool)

(assert (=> b!30940 (= e!15763 e!15764)))

(declare-fun c!6749 () Bool)

(assert (=> b!30940 (= c!6749 (is-Single!67 (right!715 (right!715 xs!533))))))

(assert (= (and b!30940 c!6749) b!30941))

(assert (= (and b!30940 (not c!6749)) b!30942))

(assert (= (and d!16053 c!6748) b!30939))

(assert (= (and d!16053 (not c!6748)) b!30940))

(declare-fun m!33307 () Bool)

(assert (=> b!30942 m!33307))

(declare-fun m!33309 () Bool)

(assert (=> b!30942 m!33309))

(assert (=> b!30942 m!33307))

(assert (=> b!30942 m!33309))

(declare-fun m!33311 () Bool)

(assert (=> b!30942 m!33311))

(declare-fun m!33313 () Bool)

(assert (=> d!16053 m!33313))

(declare-fun m!33315 () Bool)

(assert (=> d!16053 m!33315))

(assert (=> b!30721 d!16053))

(declare-fun b!30943 () Bool)

(declare-fun e!15765 () List!364)

(assert (=> b!30943 (= e!15765 Nil!359)))

(declare-fun b!30945 () Bool)

(declare-fun e!15766 () List!364)

(assert (=> b!30945 (= e!15766 (Cons!358 (x!8961 (left!712 (right!715 xs!533))) Nil!359))))

(declare-fun b!30946 () Bool)

(assert (=> b!30946 (= e!15766 (++!44 (toList!119 (left!712 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (left!712 (right!715 xs!533))))))))

(declare-fun d!16055 () Bool)

(declare-fun lt!5843 () List!364)

(assert (=> d!16055 (= (size!277 lt!5843) (size!278 (left!712 (right!715 xs!533))))))

(assert (=> d!16055 (= lt!5843 e!15765)))

(declare-fun c!6750 () Bool)

(assert (=> d!16055 (= c!6750 (is-Empty!78 (left!712 (right!715 xs!533))))))

(assert (=> d!16055 (= (toList!119 (left!712 (right!715 xs!533))) lt!5843)))

(declare-fun b!30944 () Bool)

(assert (=> b!30944 (= e!15765 e!15766)))

(declare-fun c!6751 () Bool)

(assert (=> b!30944 (= c!6751 (is-Single!67 (left!712 (right!715 xs!533))))))

(assert (= (and b!30944 c!6751) b!30945))

(assert (= (and b!30944 (not c!6751)) b!30946))

(assert (= (and d!16055 c!6750) b!30943))

(assert (= (and d!16055 (not c!6750)) b!30944))

(declare-fun m!33317 () Bool)

(assert (=> b!30946 m!33317))

(declare-fun m!33319 () Bool)

(assert (=> b!30946 m!33319))

(assert (=> b!30946 m!33317))

(assert (=> b!30946 m!33319))

(declare-fun m!33321 () Bool)

(assert (=> b!30946 m!33321))

(declare-fun m!33323 () Bool)

(assert (=> d!16055 m!33323))

(declare-fun m!33325 () Bool)

(assert (=> d!16055 m!33325))

(assert (=> b!30721 d!16055))

(declare-fun d!16057 () Bool)

(declare-fun e!15772 () Bool)

(assert (=> d!16057 e!15772))

(declare-fun res!14271 () Bool)

(assert (=> d!16057 (=> (not res!14271) (not e!15772))))

(declare-fun lt!5846 () List!364)

(declare-fun content!74 (List!364) (Set T!1837))

(assert (=> d!16057 (= res!14271 (= (content!74 lt!5846) (union (content!74 (toList!119 (right!715 (right!715 xs!533)))) (content!74 (toList!119 ys!77)))))))

(declare-fun e!15771 () List!364)

(assert (=> d!16057 (= lt!5846 e!15771)))

(declare-fun c!6754 () Bool)

(assert (=> d!16057 (= c!6754 (is-Nil!359 (toList!119 (right!715 (right!715 xs!533)))))))

(assert (=> d!16057 (= (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)) lt!5846)))

(declare-fun b!30956 () Bool)

(assert (=> b!30956 (= e!15771 (Cons!358 (h!275 (toList!119 (right!715 (right!715 xs!533)))) (++!44 (t!4378 (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77))))))

(declare-fun b!30955 () Bool)

(assert (=> b!30955 (= e!15771 (toList!119 ys!77))))

(declare-fun b!30957 () Bool)

(declare-fun res!14270 () Bool)

(assert (=> b!30957 (=> (not res!14270) (not e!15772))))

(assert (=> b!30957 (= res!14270 (= (size!277 lt!5846) (+ (size!277 (toList!119 (right!715 (right!715 xs!533)))) (size!277 (toList!119 ys!77)))))))

(declare-fun b!30958 () Bool)

(assert (=> b!30958 (= e!15772 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!5846 (toList!119 (right!715 (right!715 xs!533))))))))

(assert (= (and d!16057 c!6754) b!30955))

(assert (= (and d!16057 (not c!6754)) b!30956))

(assert (= (and d!16057 res!14271) b!30957))

(assert (= (and b!30957 res!14270) b!30958))

(declare-fun m!33327 () Bool)

(assert (=> d!16057 m!33327))

(assert (=> d!16057 m!33091))

(declare-fun m!33329 () Bool)

(assert (=> d!16057 m!33329))

(assert (=> d!16057 m!33077))

(declare-fun m!33331 () Bool)

(assert (=> d!16057 m!33331))

(assert (=> b!30956 m!33077))

(declare-fun m!33333 () Bool)

(assert (=> b!30956 m!33333))

(declare-fun m!33335 () Bool)

(assert (=> b!30957 m!33335))

(assert (=> b!30957 m!33091))

(declare-fun m!33337 () Bool)

(assert (=> b!30957 m!33337))

(assert (=> b!30957 m!33077))

(declare-fun m!33339 () Bool)

(assert (=> b!30957 m!33339))

(assert (=> b!30721 d!16057))

(declare-fun b!30963 () Bool)

(declare-fun e!15775 () Bool)

(assert (=> b!30963 (= e!15775 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun lt!5849 () Bool)

(assert (=> b!30963 (= lt!5849 (appendAssoc!12 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))

(declare-fun d!16059 () Bool)

(assert (=> d!16059 e!15775))

(declare-fun c!6757 () Bool)

(assert (=> d!16059 (= c!6757 (is-Cons!358 (toList!119 (left!712 xs!533))))))

(assert (=> d!16059 (= (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) true)))

(declare-fun b!30964 () Bool)

(assert (=> b!30964 (= e!15775 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(assert (= (and d!16059 c!6757) b!30963))

(assert (= (and d!16059 (not c!6757)) b!30964))

(assert (=> b!30963 m!33089))

(assert (=> b!30963 m!33097))

(declare-fun m!33341 () Bool)

(assert (=> b!30963 m!33341))

(assert (=> b!30963 m!33095))

(declare-fun m!33343 () Bool)

(assert (=> b!30963 m!33343))

(declare-fun m!33345 () Bool)

(assert (=> b!30963 m!33345))

(assert (=> b!30963 m!33095))

(assert (=> b!30963 m!33089))

(declare-fun m!33347 () Bool)

(assert (=> b!30963 m!33347))

(assert (=> b!30963 m!33089))

(assert (=> b!30963 m!33097))

(assert (=> b!30963 m!33343))

(assert (=> b!30963 m!33347))

(assert (=> b!30963 m!33097))

(declare-fun m!33349 () Bool)

(assert (=> b!30963 m!33349))

(assert (=> b!30964 m!33095))

(assert (=> b!30964 m!33089))

(assert (=> b!30964 m!33347))

(assert (=> b!30964 m!33347))

(assert (=> b!30964 m!33097))

(assert (=> b!30964 m!33349))

(assert (=> b!30964 m!33089))

(assert (=> b!30964 m!33097))

(assert (=> b!30964 m!33343))

(assert (=> b!30964 m!33095))

(assert (=> b!30964 m!33343))

(assert (=> b!30964 m!33345))

(assert (=> b!30721 d!16059))

(declare-fun b!30965 () Bool)

(declare-fun e!15776 () List!364)

(assert (=> b!30965 (= e!15776 Nil!359)))

(declare-fun b!30967 () Bool)

(declare-fun e!15777 () List!364)

(assert (=> b!30967 (= e!15777 (Cons!358 (x!8961 (left!712 xs!533)) Nil!359))))

(declare-fun b!30968 () Bool)

(assert (=> b!30968 (= e!15777 (++!44 (toList!119 (left!712 (left!712 xs!533))) (toList!119 (right!715 (left!712 xs!533)))))))

(declare-fun d!16061 () Bool)

(declare-fun lt!5850 () List!364)

(assert (=> d!16061 (= (size!277 lt!5850) (size!278 (left!712 xs!533)))))

(assert (=> d!16061 (= lt!5850 e!15776)))

(declare-fun c!6758 () Bool)

(assert (=> d!16061 (= c!6758 (is-Empty!78 (left!712 xs!533)))))

(assert (=> d!16061 (= (toList!119 (left!712 xs!533)) lt!5850)))

(declare-fun b!30966 () Bool)

(assert (=> b!30966 (= e!15776 e!15777)))

(declare-fun c!6759 () Bool)

(assert (=> b!30966 (= c!6759 (is-Single!67 (left!712 xs!533)))))

(assert (= (and b!30966 c!6759) b!30967))

(assert (= (and b!30966 (not c!6759)) b!30968))

(assert (= (and d!16061 c!6758) b!30965))

(assert (= (and d!16061 (not c!6758)) b!30966))

(declare-fun m!33351 () Bool)

(assert (=> b!30968 m!33351))

(declare-fun m!33353 () Bool)

(assert (=> b!30968 m!33353))

(assert (=> b!30968 m!33351))

(assert (=> b!30968 m!33353))

(declare-fun m!33355 () Bool)

(assert (=> b!30968 m!33355))

(declare-fun m!33357 () Bool)

(assert (=> d!16061 m!33357))

(declare-fun m!33359 () Bool)

(assert (=> d!16061 m!33359))

(assert (=> b!30721 d!16061))

(declare-fun b!30970 () Bool)

(declare-fun res!14273 () Bool)

(declare-fun e!15779 () Bool)

(assert (=> b!30970 (=> (not res!14273) (not e!15779))))

(assert (=> b!30970 (= res!14273 (<= (- (level!56 (left!712 (right!715 res!5547))) (level!56 (right!715 (right!715 res!5547)))) 1))))

(declare-fun b!30972 () Bool)

(assert (=> b!30972 (= e!15779 (balanced!63 (right!715 (right!715 res!5547))))))

(declare-fun b!30971 () Bool)

(declare-fun res!14275 () Bool)

(assert (=> b!30971 (=> (not res!14275) (not e!15779))))

(assert (=> b!30971 (= res!14275 (balanced!63 (left!712 (right!715 res!5547))))))

(declare-fun d!16063 () Bool)

(declare-fun res!14272 () Bool)

(declare-fun e!15778 () Bool)

(assert (=> d!16063 (=> res!14272 e!15778)))

(assert (=> d!16063 (= res!14272 (not (is-CC!67 (right!715 res!5547))))))

(assert (=> d!16063 (= (balanced!63 (right!715 res!5547)) e!15778)))

(declare-fun b!30969 () Bool)

(assert (=> b!30969 (= e!15778 e!15779)))

(declare-fun res!14274 () Bool)

(assert (=> b!30969 (=> (not res!14274) (not e!15779))))

(assert (=> b!30969 (= res!14274 (>= (- (level!56 (left!712 (right!715 res!5547))) (level!56 (right!715 (right!715 res!5547)))) (- 1)))))

(assert (= (and d!16063 (not res!14272)) b!30969))

(assert (= (and b!30969 res!14274) b!30970))

(assert (= (and b!30970 res!14273) b!30971))

(assert (= (and b!30971 res!14275) b!30972))

(assert (=> b!30970 m!33271))

(assert (=> b!30970 m!33269))

(declare-fun m!33361 () Bool)

(assert (=> b!30972 m!33361))

(declare-fun m!33363 () Bool)

(assert (=> b!30971 m!33363))

(assert (=> b!30969 m!33271))

(assert (=> b!30969 m!33269))

(assert (=> b!30843 d!16063))

(declare-fun b!30974 () Bool)

(declare-fun res!14277 () Bool)

(declare-fun e!15781 () Bool)

(assert (=> b!30974 (=> (not res!14277) (not e!15781))))

(assert (=> b!30974 (= res!14277 (<= (- (level!56 (left!712 (left!712 xs!533))) (level!56 (right!715 (left!712 xs!533)))) 1))))

(declare-fun b!30976 () Bool)

(assert (=> b!30976 (= e!15781 (balanced!63 (right!715 (left!712 xs!533))))))

(declare-fun b!30975 () Bool)

(declare-fun res!14279 () Bool)

(assert (=> b!30975 (=> (not res!14279) (not e!15781))))

(assert (=> b!30975 (= res!14279 (balanced!63 (left!712 (left!712 xs!533))))))

(declare-fun d!16065 () Bool)

(declare-fun res!14276 () Bool)

(declare-fun e!15780 () Bool)

(assert (=> d!16065 (=> res!14276 e!15780)))

(assert (=> d!16065 (= res!14276 (not (is-CC!67 (left!712 xs!533))))))

(assert (=> d!16065 (= (balanced!63 (left!712 xs!533)) e!15780)))

(declare-fun b!30973 () Bool)

(assert (=> b!30973 (= e!15780 e!15781)))

(declare-fun res!14278 () Bool)

(assert (=> b!30973 (=> (not res!14278) (not e!15781))))

(assert (=> b!30973 (= res!14278 (>= (- (level!56 (left!712 (left!712 xs!533))) (level!56 (right!715 (left!712 xs!533)))) (- 1)))))

(assert (= (and d!16065 (not res!14276)) b!30973))

(assert (= (and b!30973 res!14278) b!30974))

(assert (= (and b!30974 res!14277) b!30975))

(assert (= (and b!30975 res!14279) b!30976))

(assert (=> b!30974 m!33255))

(assert (=> b!30974 m!33253))

(declare-fun m!33365 () Bool)

(assert (=> b!30976 m!33365))

(declare-fun m!33367 () Bool)

(assert (=> b!30975 m!33367))

(assert (=> b!30973 m!33255))

(assert (=> b!30973 m!33253))

(assert (=> b!30846 d!16065))

(declare-fun b!30977 () Bool)

(declare-fun e!15782 () Bool)

(assert (=> b!30977 (= e!15782 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun lt!5851 () Bool)

(assert (=> b!30977 (= lt!5851 (appendAssoc!12 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))

(declare-fun d!16067 () Bool)

(assert (=> d!16067 e!15782))

(declare-fun c!6760 () Bool)

(assert (=> d!16067 (= c!6760 (is-Cons!358 (toList!119 xs!533)))))

(assert (=> d!16067 (= (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))) true)))

(declare-fun b!30978 () Bool)

(assert (=> b!30978 (= e!15782 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))))

(assert (= (and d!16067 c!6760) b!30977))

(assert (= (and d!16067 (not c!6760)) b!30978))

(assert (=> b!30977 m!33083))

(assert (=> b!30977 m!33085))

(declare-fun m!33369 () Bool)

(assert (=> b!30977 m!33369))

(assert (=> b!30977 m!33075))

(declare-fun m!33371 () Bool)

(assert (=> b!30977 m!33371))

(declare-fun m!33373 () Bool)

(assert (=> b!30977 m!33373))

(assert (=> b!30977 m!33075))

(assert (=> b!30977 m!33083))

(assert (=> b!30977 m!33105))

(assert (=> b!30977 m!33083))

(assert (=> b!30977 m!33085))

(assert (=> b!30977 m!33371))

(assert (=> b!30977 m!33105))

(assert (=> b!30977 m!33085))

(declare-fun m!33375 () Bool)

(assert (=> b!30977 m!33375))

(assert (=> b!30978 m!33075))

(assert (=> b!30978 m!33083))

(assert (=> b!30978 m!33105))

(assert (=> b!30978 m!33105))

(assert (=> b!30978 m!33085))

(assert (=> b!30978 m!33375))

(assert (=> b!30978 m!33083))

(assert (=> b!30978 m!33085))

(assert (=> b!30978 m!33371))

(assert (=> b!30978 m!33075))

(assert (=> b!30978 m!33371))

(assert (=> b!30978 m!33373))

(assert (=> b!30724 d!16067))

(declare-fun b!30979 () Bool)

(declare-fun e!15783 () List!364)

(assert (=> b!30979 (= e!15783 Nil!359)))

(declare-fun b!30981 () Bool)

(declare-fun e!15784 () List!364)

(assert (=> b!30981 (= e!15784 (Cons!358 (x!8961 xs!533) Nil!359))))

(declare-fun b!30982 () Bool)

(assert (=> b!30982 (= e!15784 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))))))

(declare-fun d!16069 () Bool)

(declare-fun lt!5852 () List!364)

(assert (=> d!16069 (= (size!277 lt!5852) (size!278 xs!533))))

(assert (=> d!16069 (= lt!5852 e!15783)))

(declare-fun c!6761 () Bool)

(assert (=> d!16069 (= c!6761 (is-Empty!78 xs!533))))

(assert (=> d!16069 (= (toList!119 xs!533) lt!5852)))

(declare-fun b!30980 () Bool)

(assert (=> b!30980 (= e!15783 e!15784)))

(declare-fun c!6762 () Bool)

(assert (=> b!30980 (= c!6762 (is-Single!67 xs!533))))

(assert (= (and b!30980 c!6762) b!30981))

(assert (= (and b!30980 (not c!6762)) b!30982))

(assert (= (and d!16069 c!6761) b!30979))

(assert (= (and d!16069 (not c!6761)) b!30980))

(assert (=> b!30982 m!33095))

(assert (=> b!30982 m!33101))

(assert (=> b!30982 m!33095))

(assert (=> b!30982 m!33101))

(declare-fun m!33377 () Bool)

(assert (=> b!30982 m!33377))

(declare-fun m!33379 () Bool)

(assert (=> d!16069 m!33379))

(declare-fun m!33381 () Bool)

(assert (=> d!16069 m!33381))

(assert (=> b!30724 d!16069))

(declare-fun b!30983 () Bool)

(declare-fun e!15785 () List!364)

(assert (=> b!30983 (= e!15785 Nil!359)))

(declare-fun b!30985 () Bool)

(declare-fun e!15786 () List!364)

(assert (=> b!30985 (= e!15786 (Cons!358 (x!8961 (left!712 (left!712 ys!77))) Nil!359))))

(declare-fun b!30986 () Bool)

(assert (=> b!30986 (= e!15786 (++!44 (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun d!16071 () Bool)

(declare-fun lt!5853 () List!364)

(assert (=> d!16071 (= (size!277 lt!5853) (size!278 (left!712 (left!712 ys!77))))))

(assert (=> d!16071 (= lt!5853 e!15785)))

(declare-fun c!6763 () Bool)

(assert (=> d!16071 (= c!6763 (is-Empty!78 (left!712 (left!712 ys!77))))))

(assert (=> d!16071 (= (toList!119 (left!712 (left!712 ys!77))) lt!5853)))

(declare-fun b!30984 () Bool)

(assert (=> b!30984 (= e!15785 e!15786)))

(declare-fun c!6764 () Bool)

(assert (=> b!30984 (= c!6764 (is-Single!67 (left!712 (left!712 ys!77))))))

(assert (= (and b!30984 c!6764) b!30985))

(assert (= (and b!30984 (not c!6764)) b!30986))

(assert (= (and d!16071 c!6763) b!30983))

(assert (= (and d!16071 (not c!6763)) b!30984))

(declare-fun m!33383 () Bool)

(assert (=> b!30986 m!33383))

(declare-fun m!33385 () Bool)

(assert (=> b!30986 m!33385))

(assert (=> b!30986 m!33383))

(assert (=> b!30986 m!33385))

(declare-fun m!33387 () Bool)

(assert (=> b!30986 m!33387))

(declare-fun m!33389 () Bool)

(assert (=> d!16071 m!33389))

(declare-fun m!33391 () Bool)

(assert (=> d!16071 m!33391))

(assert (=> b!30724 d!16071))

(declare-fun b!30987 () Bool)

(declare-fun e!15787 () List!364)

(assert (=> b!30987 (= e!15787 Nil!359)))

(declare-fun b!30989 () Bool)

(declare-fun e!15788 () List!364)

(assert (=> b!30989 (= e!15788 (Cons!358 (x!8961 (right!715 (left!712 ys!77))) Nil!359))))

(declare-fun b!30990 () Bool)

(assert (=> b!30990 (= e!15788 (++!44 (toList!119 (left!712 (right!715 (left!712 ys!77)))) (toList!119 (right!715 (right!715 (left!712 ys!77))))))))

(declare-fun d!16073 () Bool)

(declare-fun lt!5854 () List!364)

(assert (=> d!16073 (= (size!277 lt!5854) (size!278 (right!715 (left!712 ys!77))))))

(assert (=> d!16073 (= lt!5854 e!15787)))

(declare-fun c!6765 () Bool)

(assert (=> d!16073 (= c!6765 (is-Empty!78 (right!715 (left!712 ys!77))))))

(assert (=> d!16073 (= (toList!119 (right!715 (left!712 ys!77))) lt!5854)))

(declare-fun b!30988 () Bool)

(assert (=> b!30988 (= e!15787 e!15788)))

(declare-fun c!6766 () Bool)

(assert (=> b!30988 (= c!6766 (is-Single!67 (right!715 (left!712 ys!77))))))

(assert (= (and b!30988 c!6766) b!30989))

(assert (= (and b!30988 (not c!6766)) b!30990))

(assert (= (and d!16073 c!6765) b!30987))

(assert (= (and d!16073 (not c!6765)) b!30988))

(declare-fun m!33393 () Bool)

(assert (=> b!30990 m!33393))

(declare-fun m!33395 () Bool)

(assert (=> b!30990 m!33395))

(assert (=> b!30990 m!33393))

(assert (=> b!30990 m!33395))

(declare-fun m!33397 () Bool)

(assert (=> b!30990 m!33397))

(declare-fun m!33399 () Bool)

(assert (=> d!16073 m!33399))

(declare-fun m!33401 () Bool)

(assert (=> d!16073 m!33401))

(assert (=> b!30724 d!16073))

(declare-fun d!16075 () Bool)

(assert (=> d!16075 (= (isEmpty!324 (left!712 xs!533)) (= (left!712 xs!533) Empty!78))))

(assert (=> b!30753 d!16075))

(assert (=> b!30765 d!16007))

(assert (=> b!30765 d!16005))

(declare-fun d!16077 () Bool)

(assert (=> d!16077 (= (isEmpty!324 (left!712 (left!712 ys!77))) (= (left!712 (left!712 ys!77)) Empty!78))))

(assert (=> b!30826 d!16077))

(declare-fun d!16079 () Bool)

(assert (=> d!16079 (= (isEmpty!324 (right!715 ys!77)) (= (right!715 ys!77) Empty!78))))

(assert (=> b!30748 d!16079))

(assert (=> b!30736 d!16031))

(assert (=> b!30736 d!16029))

(declare-fun b!30991 () Bool)

(declare-fun e!15797 () Bool)

(declare-fun e!15790 () Bool)

(assert (=> b!30991 (= e!15797 e!15790)))

(declare-fun res!14282 () Bool)

(assert (=> b!30991 (=> (not res!14282) (not e!15790))))

(assert (=> b!30991 (= res!14282 (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun b!30992 () Bool)

(declare-fun e!15796 () Bool)

(assert (=> b!30992 (= e!15796 (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))))))

(declare-fun b!30993 () Bool)

(declare-fun e!15793 () Bool)

(declare-fun e!15789 () Bool)

(assert (=> b!30993 (= e!15793 e!15789)))

(declare-fun res!14288 () Bool)

(assert (=> b!30993 (=> (not res!14288) (not e!15789))))

(assert (=> b!30993 (= res!14288 (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)) (toList!119 (left!712 (left!712 ys!77)))))))

(declare-fun d!16081 () Bool)

(declare-fun e!15791 () Bool)

(assert (=> d!16081 e!15791))

(declare-fun res!14287 () Bool)

(assert (=> d!16081 (=> (not res!14287) (not e!15791))))

(assert (=> d!16081 (= res!14287 e!15793)))

(declare-fun res!14280 () Bool)

(assert (=> d!16081 (=> res!14280 e!15793)))

(assert (=> d!16081 (= res!14280 (not (is-CC!67 xs!533)))))

(assert (=> d!16081 (= (appendAssocInst!16 xs!533 (left!712 (left!712 ys!77))) true)))

(declare-fun b!30994 () Bool)

(declare-fun e!15792 () Bool)

(assert (=> b!30994 (= e!15789 e!15792)))

(declare-fun res!14285 () Bool)

(assert (=> b!30994 (=> res!14285 e!15792)))

(assert (=> b!30994 (= res!14285 (not (is-CC!67 (right!715 xs!533))))))

(declare-fun b!30995 () Bool)

(declare-fun e!15794 () Bool)

(declare-fun e!15795 () Bool)

(assert (=> b!30995 (= e!15794 e!15795)))

(declare-fun res!14283 () Bool)

(assert (=> b!30995 (=> (not res!14283) (not e!15795))))

(assert (=> b!30995 (= res!14283 (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))))))

(declare-fun b!30996 () Bool)

(assert (=> b!30996 (= e!15792 e!15796)))

(declare-fun res!14281 () Bool)

(assert (=> b!30996 (=> (not res!14281) (not e!15796))))

(assert (=> b!30996 (= res!14281 (appendAssoc!12 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))))))

(declare-fun b!30997 () Bool)

(assert (=> b!30997 (= e!15795 (appendAssoc!12 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun b!30998 () Bool)

(assert (=> b!30998 (= e!15790 e!15794)))

(declare-fun res!14286 () Bool)

(assert (=> b!30998 (=> res!14286 e!15794)))

(assert (=> b!30998 (= res!14286 (not (is-CC!67 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun b!30999 () Bool)

(assert (=> b!30999 (= e!15791 e!15797)))

(declare-fun res!14284 () Bool)

(assert (=> b!30999 (=> res!14284 e!15797)))

(assert (=> b!30999 (= res!14284 (not (is-CC!67 (left!712 (left!712 ys!77)))))))

(assert (= (and d!16081 (not res!14280)) b!30993))

(assert (= (and b!30993 res!14288) b!30994))

(assert (= (and b!30994 (not res!14285)) b!30996))

(assert (= (and b!30996 res!14281) b!30992))

(assert (= (and d!16081 res!14287) b!30999))

(assert (= (and b!30999 (not res!14284)) b!30991))

(assert (= (and b!30991 res!14282) b!30998))

(assert (= (and b!30998 (not res!14286)) b!30995))

(assert (= (and b!30995 res!14283) b!30997))

(assert (=> b!30995 m!33075))

(declare-fun m!33403 () Bool)

(assert (=> b!30995 m!33403))

(declare-fun m!33405 () Bool)

(assert (=> b!30995 m!33405))

(assert (=> b!30995 m!33075))

(assert (=> b!30995 m!33403))

(assert (=> b!30995 m!33405))

(declare-fun m!33407 () Bool)

(assert (=> b!30995 m!33407))

(assert (=> b!30996 m!33089))

(assert (=> b!30996 m!33091))

(assert (=> b!30996 m!33083))

(assert (=> b!30996 m!33089))

(assert (=> b!30996 m!33091))

(assert (=> b!30996 m!33083))

(declare-fun m!33409 () Bool)

(assert (=> b!30996 m!33409))

(assert (=> b!30992 m!33089))

(assert (=> b!30992 m!33083))

(assert (=> b!30992 m!33095))

(assert (=> b!30992 m!33095))

(assert (=> b!30992 m!33089))

(declare-fun m!33411 () Bool)

(assert (=> b!30992 m!33411))

(declare-fun m!33413 () Bool)

(assert (=> b!30992 m!33413))

(assert (=> b!30992 m!33091))

(assert (=> b!30992 m!33091))

(assert (=> b!30992 m!33083))

(assert (=> b!30992 m!33411))

(assert (=> b!30993 m!33095))

(assert (=> b!30993 m!33101))

(assert (=> b!30993 m!33083))

(assert (=> b!30993 m!33095))

(assert (=> b!30993 m!33101))

(assert (=> b!30993 m!33083))

(declare-fun m!33415 () Bool)

(assert (=> b!30993 m!33415))

(assert (=> b!30997 m!33405))

(assert (=> b!30997 m!33403))

(declare-fun m!33417 () Bool)

(assert (=> b!30997 m!33417))

(assert (=> b!30997 m!33405))

(assert (=> b!30997 m!33385))

(declare-fun m!33419 () Bool)

(assert (=> b!30997 m!33419))

(assert (=> b!30997 m!33075))

(assert (=> b!30997 m!33385))

(assert (=> b!30997 m!33075))

(assert (=> b!30997 m!33403))

(assert (=> b!30997 m!33417))

(assert (=> b!30991 m!33075))

(assert (=> b!30991 m!33383))

(assert (=> b!30991 m!33385))

(assert (=> b!30991 m!33075))

(assert (=> b!30991 m!33383))

(assert (=> b!30991 m!33385))

(declare-fun m!33421 () Bool)

(assert (=> b!30991 m!33421))

(assert (=> b!30831 d!16081))

(declare-fun d!16083 () Bool)

(assert (=> d!16083 (= (isEmpty!324 (right!715 xs!533)) (= (right!715 xs!533) Empty!78))))

(assert (=> b!30754 d!16083))

(declare-fun b!31001 () Bool)

(declare-fun res!14290 () Bool)

(declare-fun e!15799 () Bool)

(assert (=> b!31001 (=> (not res!14290) (not e!15799))))

(assert (=> b!31001 (= res!14290 (<= (- (level!56 (left!712 (left!712 ys!77))) (level!56 (right!715 (left!712 ys!77)))) 1))))

(declare-fun b!31003 () Bool)

(assert (=> b!31003 (= e!15799 (balanced!63 (right!715 (left!712 ys!77))))))

(declare-fun b!31002 () Bool)

(declare-fun res!14292 () Bool)

(assert (=> b!31002 (=> (not res!14292) (not e!15799))))

(assert (=> b!31002 (= res!14292 (balanced!63 (left!712 (left!712 ys!77))))))

(declare-fun d!16085 () Bool)

(declare-fun res!14289 () Bool)

(declare-fun e!15798 () Bool)

(assert (=> d!16085 (=> res!14289 e!15798)))

(assert (=> d!16085 (= res!14289 (not (is-CC!67 (left!712 ys!77))))))

(assert (=> d!16085 (= (balanced!63 (left!712 ys!77)) e!15798)))

(declare-fun b!31000 () Bool)

(assert (=> b!31000 (= e!15798 e!15799)))

(declare-fun res!14291 () Bool)

(assert (=> b!31000 (=> (not res!14291) (not e!15799))))

(assert (=> b!31000 (= res!14291 (>= (- (level!56 (left!712 (left!712 ys!77))) (level!56 (right!715 (left!712 ys!77)))) (- 1)))))

(assert (= (and d!16085 (not res!14289)) b!31000))

(assert (= (and b!31000 res!14291) b!31001))

(assert (= (and b!31001 res!14290) b!31002))

(assert (= (and b!31002 res!14292) b!31003))

(assert (=> b!31001 m!33153))

(assert (=> b!31001 m!33151))

(declare-fun m!33423 () Bool)

(assert (=> b!31003 m!33423))

(assert (=> b!31002 m!33169))

(assert (=> b!31000 m!33153))

(assert (=> b!31000 m!33151))

(assert (=> b!30767 d!16085))

(declare-fun b!31004 () Bool)

(declare-fun e!15800 () Bool)

(assert (=> b!31004 (= e!15800 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))) (toList!119 ys!77)) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))))

(declare-fun lt!5855 () Bool)

(assert (=> b!31004 (= lt!5855 (appendAssoc!12 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))

(declare-fun d!16087 () Bool)

(assert (=> d!16087 e!15800))

(declare-fun c!6767 () Bool)

(assert (=> d!16087 (= c!6767 (is-Cons!358 (toList!119 (left!712 xs!533))))))

(assert (=> d!16087 (= (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)) (toList!119 ys!77)) true)))

(declare-fun b!31005 () Bool)

(assert (=> b!31005 (= e!15800 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))) (toList!119 ys!77)) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))))

(assert (= (and d!16087 c!6767) b!31004))

(assert (= (and d!16087 (not c!6767)) b!31005))

(assert (=> b!31004 m!33101))

(assert (=> b!31004 m!33077))

(declare-fun m!33425 () Bool)

(assert (=> b!31004 m!33425))

(assert (=> b!31004 m!33095))

(declare-fun m!33427 () Bool)

(assert (=> b!31004 m!33427))

(declare-fun m!33429 () Bool)

(assert (=> b!31004 m!33429))

(assert (=> b!31004 m!33095))

(assert (=> b!31004 m!33101))

(assert (=> b!31004 m!33377))

(assert (=> b!31004 m!33101))

(assert (=> b!31004 m!33077))

(assert (=> b!31004 m!33427))

(assert (=> b!31004 m!33377))

(assert (=> b!31004 m!33077))

(declare-fun m!33431 () Bool)

(assert (=> b!31004 m!33431))

(assert (=> b!31005 m!33095))

(assert (=> b!31005 m!33101))

(assert (=> b!31005 m!33377))

(assert (=> b!31005 m!33377))

(assert (=> b!31005 m!33077))

(assert (=> b!31005 m!33431))

(assert (=> b!31005 m!33101))

(assert (=> b!31005 m!33077))

(assert (=> b!31005 m!33427))

(assert (=> b!31005 m!33095))

(assert (=> b!31005 m!33427))

(assert (=> b!31005 m!33429))

(assert (=> b!30722 d!16087))

(assert (=> b!30722 d!16061))

(declare-fun b!31006 () Bool)

(declare-fun e!15801 () List!364)

(assert (=> b!31006 (= e!15801 Nil!359)))

(declare-fun b!31008 () Bool)

(declare-fun e!15802 () List!364)

(assert (=> b!31008 (= e!15802 (Cons!358 (x!8961 (right!715 xs!533)) Nil!359))))

(declare-fun b!31009 () Bool)

(assert (=> b!31009 (= e!15802 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))))))

(declare-fun d!16089 () Bool)

(declare-fun lt!5856 () List!364)

(assert (=> d!16089 (= (size!277 lt!5856) (size!278 (right!715 xs!533)))))

(assert (=> d!16089 (= lt!5856 e!15801)))

(declare-fun c!6768 () Bool)

(assert (=> d!16089 (= c!6768 (is-Empty!78 (right!715 xs!533)))))

(assert (=> d!16089 (= (toList!119 (right!715 xs!533)) lt!5856)))

(declare-fun b!31007 () Bool)

(assert (=> b!31007 (= e!15801 e!15802)))

(declare-fun c!6769 () Bool)

(assert (=> b!31007 (= c!6769 (is-Single!67 (right!715 xs!533)))))

(assert (= (and b!31007 c!6769) b!31008))

(assert (= (and b!31007 (not c!6769)) b!31009))

(assert (= (and d!16089 c!6768) b!31006))

(assert (= (and d!16089 (not c!6768)) b!31007))

(assert (=> b!31009 m!33089))

(assert (=> b!31009 m!33091))

(assert (=> b!31009 m!33089))

(assert (=> b!31009 m!33091))

(declare-fun m!33433 () Bool)

(assert (=> b!31009 m!33433))

(declare-fun m!33435 () Bool)

(assert (=> d!16089 m!33435))

(declare-fun m!33437 () Bool)

(assert (=> d!16089 m!33437))

(assert (=> b!30722 d!16089))

(assert (=> b!30722 d!16051))

(declare-fun b!31011 () Bool)

(declare-fun e!15803 () Int)

(declare-fun lt!5859 () Int)

(declare-fun lt!5857 () Int)

(assert (=> b!31011 (= e!15803 (+ 1 (ite (>= lt!5859 lt!5857) lt!5859 lt!5857)))))

(assert (=> b!31011 (= lt!5857 (level!56 (right!715 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))))))

(assert (=> b!31011 (= lt!5859 (level!56 (left!712 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))))))

(declare-fun d!16091 () Bool)

(declare-fun lt!5858 () Int)

(assert (=> d!16091 (>= lt!5858 0)))

(assert (=> d!16091 (= lt!5858 e!15803)))

(declare-fun c!6770 () Bool)

(assert (=> d!16091 (= c!6770 (or (is-Empty!78 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))) (is-Single!67 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))))))

(assert (=> d!16091 (= (level!56 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))) lt!5858)))

(declare-fun b!31010 () Bool)

(assert (=> b!31010 (= e!15803 0)))

(assert (= (and d!16091 c!6770) b!31010))

(assert (= (and d!16091 (not c!6770)) b!31011))

(declare-fun m!33439 () Bool)

(assert (=> b!31011 m!33439))

(declare-fun m!33441 () Bool)

(assert (=> b!31011 m!33441))

(assert (=> b!30825 d!16091))

(declare-fun b!31015 () Bool)

(declare-fun e!15804 () Bool)

(assert (=> b!31015 (= e!15804 (concInv!62 (right!715 (right!715 ys!77))))))

(declare-fun b!31012 () Bool)

(declare-fun e!15805 () Bool)

(assert (=> b!31012 (= e!15805 e!15804)))

(declare-fun res!14294 () Bool)

(assert (=> b!31012 (=> (not res!14294) (not e!15804))))

(assert (=> b!31012 (= res!14294 (not (isEmpty!324 (left!712 (right!715 ys!77)))))))

(declare-fun b!31013 () Bool)

(declare-fun res!14296 () Bool)

(assert (=> b!31013 (=> (not res!14296) (not e!15804))))

(assert (=> b!31013 (= res!14296 (not (isEmpty!324 (right!715 (right!715 ys!77)))))))

(declare-fun b!31014 () Bool)

(declare-fun res!14293 () Bool)

(assert (=> b!31014 (=> (not res!14293) (not e!15804))))

(assert (=> b!31014 (= res!14293 (concInv!62 (left!712 (right!715 ys!77))))))

(declare-fun d!16093 () Bool)

(declare-fun res!14295 () Bool)

(assert (=> d!16093 (=> res!14295 e!15805)))

(assert (=> d!16093 (= res!14295 (not (is-CC!67 (right!715 ys!77))))))

(assert (=> d!16093 (= (concInv!62 (right!715 ys!77)) e!15805)))

(assert (= (and d!16093 (not res!14295)) b!31012))

(assert (= (and b!31012 res!14294) b!31013))

(assert (= (and b!31013 res!14296) b!31014))

(assert (= (and b!31014 res!14293) b!31015))

(declare-fun m!33443 () Bool)

(assert (=> b!31015 m!33443))

(declare-fun m!33445 () Bool)

(assert (=> b!31012 m!33445))

(declare-fun m!33447 () Bool)

(assert (=> b!31013 m!33447))

(declare-fun m!33449 () Bool)

(assert (=> b!31014 m!33449))

(assert (=> b!30750 d!16093))

(declare-fun b!31019 () Bool)

(declare-fun e!15806 () Bool)

(assert (=> b!31019 (= e!15806 (concInv!62 (right!715 (left!712 res!5547))))))

(declare-fun b!31016 () Bool)

(declare-fun e!15807 () Bool)

(assert (=> b!31016 (= e!15807 e!15806)))

(declare-fun res!14298 () Bool)

(assert (=> b!31016 (=> (not res!14298) (not e!15806))))

(assert (=> b!31016 (= res!14298 (not (isEmpty!324 (left!712 (left!712 res!5547)))))))

(declare-fun b!31017 () Bool)

(declare-fun res!14300 () Bool)

(assert (=> b!31017 (=> (not res!14300) (not e!15806))))

(assert (=> b!31017 (= res!14300 (not (isEmpty!324 (right!715 (left!712 res!5547)))))))

(declare-fun b!31018 () Bool)

(declare-fun res!14297 () Bool)

(assert (=> b!31018 (=> (not res!14297) (not e!15806))))

(assert (=> b!31018 (= res!14297 (concInv!62 (left!712 (left!712 res!5547))))))

(declare-fun d!16095 () Bool)

(declare-fun res!14299 () Bool)

(assert (=> d!16095 (=> res!14299 e!15807)))

(assert (=> d!16095 (= res!14299 (not (is-CC!67 (left!712 res!5547))))))

(assert (=> d!16095 (= (concInv!62 (left!712 res!5547)) e!15807)))

(assert (= (and d!16095 (not res!14299)) b!31016))

(assert (= (and b!31016 res!14298) b!31017))

(assert (= (and b!31017 res!14300) b!31018))

(assert (= (and b!31018 res!14297) b!31019))

(declare-fun m!33451 () Bool)

(assert (=> b!31019 m!33451))

(declare-fun m!33453 () Bool)

(assert (=> b!31016 m!33453))

(declare-fun m!33455 () Bool)

(assert (=> b!31017 m!33455))

(declare-fun m!33457 () Bool)

(assert (=> b!31018 m!33457))

(assert (=> b!30775 d!16095))

(assert (=> b!30836 d!16015))

(declare-fun d!16097 () Bool)

(assert (=> d!16097 (= (isEmpty!324 (left!712 ys!77)) (= (left!712 ys!77) Empty!78))))

(assert (=> b!30747 d!16097))

(declare-fun b!31021 () Bool)

(declare-fun e!15808 () Int)

(declare-fun lt!5862 () Int)

(declare-fun lt!5860 () Int)

(assert (=> b!31021 (= e!15808 (+ 1 (ite (>= lt!5862 lt!5860) lt!5862 lt!5860)))))

(assert (=> b!31021 (= lt!5860 (level!56 (right!715 (right!715 nll!6))))))

(assert (=> b!31021 (= lt!5862 (level!56 (left!712 (right!715 nll!6))))))

(declare-fun d!16099 () Bool)

(declare-fun lt!5861 () Int)

(assert (=> d!16099 (>= lt!5861 0)))

(assert (=> d!16099 (= lt!5861 e!15808)))

(declare-fun c!6771 () Bool)

(assert (=> d!16099 (= c!6771 (or (is-Empty!78 (right!715 nll!6)) (is-Single!67 (right!715 nll!6))))))

(assert (=> d!16099 (= (level!56 (right!715 nll!6)) lt!5861)))

(declare-fun b!31020 () Bool)

(assert (=> b!31020 (= e!15808 0)))

(assert (= (and d!16099 c!6771) b!31020))

(assert (= (and d!16099 (not c!6771)) b!31021))

(declare-fun m!33459 () Bool)

(assert (=> b!31021 m!33459))

(declare-fun m!33461 () Bool)

(assert (=> b!31021 m!33461))

(assert (=> b!30738 d!16099))

(declare-fun b!31023 () Bool)

(declare-fun e!15809 () Int)

(declare-fun lt!5865 () Int)

(declare-fun lt!5863 () Int)

(assert (=> b!31023 (= e!15809 (+ 1 (ite (>= lt!5865 lt!5863) lt!5865 lt!5863)))))

(assert (=> b!31023 (= lt!5863 (level!56 (right!715 (left!712 nll!6))))))

(assert (=> b!31023 (= lt!5865 (level!56 (left!712 (left!712 nll!6))))))

(declare-fun d!16101 () Bool)

(declare-fun lt!5864 () Int)

(assert (=> d!16101 (>= lt!5864 0)))

(assert (=> d!16101 (= lt!5864 e!15809)))

(declare-fun c!6772 () Bool)

(assert (=> d!16101 (= c!6772 (or (is-Empty!78 (left!712 nll!6)) (is-Single!67 (left!712 nll!6))))))

(assert (=> d!16101 (= (level!56 (left!712 nll!6)) lt!5864)))

(declare-fun b!31022 () Bool)

(assert (=> b!31022 (= e!15809 0)))

(assert (= (and d!16101 c!6772) b!31022))

(assert (= (and d!16101 (not c!6772)) b!31023))

(declare-fun m!33463 () Bool)

(assert (=> b!31023 m!33463))

(declare-fun m!33465 () Bool)

(assert (=> b!31023 m!33465))

(assert (=> b!30738 d!16101))

(declare-fun b!31027 () Bool)

(declare-fun e!15810 () Bool)

(assert (=> b!31027 (= e!15810 (concInv!62 (right!715 (left!712 ys!77))))))

(declare-fun b!31024 () Bool)

(declare-fun e!15811 () Bool)

(assert (=> b!31024 (= e!15811 e!15810)))

(declare-fun res!14302 () Bool)

(assert (=> b!31024 (=> (not res!14302) (not e!15810))))

(assert (=> b!31024 (= res!14302 (not (isEmpty!324 (left!712 (left!712 ys!77)))))))

(declare-fun b!31025 () Bool)

(declare-fun res!14304 () Bool)

(assert (=> b!31025 (=> (not res!14304) (not e!15810))))

(assert (=> b!31025 (= res!14304 (not (isEmpty!324 (right!715 (left!712 ys!77)))))))

(declare-fun b!31026 () Bool)

(declare-fun res!14301 () Bool)

(assert (=> b!31026 (=> (not res!14301) (not e!15810))))

(assert (=> b!31026 (= res!14301 (concInv!62 (left!712 (left!712 ys!77))))))

(declare-fun d!16103 () Bool)

(declare-fun res!14303 () Bool)

(assert (=> d!16103 (=> res!14303 e!15811)))

(assert (=> d!16103 (= res!14303 (not (is-CC!67 (left!712 ys!77))))))

(assert (=> d!16103 (= (concInv!62 (left!712 ys!77)) e!15811)))

(assert (= (and d!16103 (not res!14303)) b!31024))

(assert (= (and b!31024 res!14302) b!31025))

(assert (= (and b!31025 res!14304) b!31026))

(assert (= (and b!31026 res!14301) b!31027))

(declare-fun m!33467 () Bool)

(assert (=> b!31027 m!33467))

(assert (=> b!31024 m!33177))

(declare-fun m!33469 () Bool)

(assert (=> b!31025 m!33469))

(assert (=> b!31026 m!33185))

(assert (=> b!30749 d!16103))

(declare-fun b!31029 () Bool)

(declare-fun res!14306 () Bool)

(declare-fun e!15813 () Bool)

(assert (=> b!31029 (=> (not res!14306) (not e!15813))))

(assert (=> b!31029 (= res!14306 (<= (- (level!56 (left!712 (left!712 res!5547))) (level!56 (right!715 (left!712 res!5547)))) 1))))

(declare-fun b!31031 () Bool)

(assert (=> b!31031 (= e!15813 (balanced!63 (right!715 (left!712 res!5547))))))

(declare-fun b!31030 () Bool)

(declare-fun res!14308 () Bool)

(assert (=> b!31030 (=> (not res!14308) (not e!15813))))

(assert (=> b!31030 (= res!14308 (balanced!63 (left!712 (left!712 res!5547))))))

(declare-fun d!16105 () Bool)

(declare-fun res!14305 () Bool)

(declare-fun e!15812 () Bool)

(assert (=> d!16105 (=> res!14305 e!15812)))

(assert (=> d!16105 (= res!14305 (not (is-CC!67 (left!712 res!5547))))))

(assert (=> d!16105 (= (balanced!63 (left!712 res!5547)) e!15812)))

(declare-fun b!31028 () Bool)

(assert (=> b!31028 (= e!15812 e!15813)))

(declare-fun res!14307 () Bool)

(assert (=> b!31028 (=> (not res!14307) (not e!15813))))

(assert (=> b!31028 (= res!14307 (>= (- (level!56 (left!712 (left!712 res!5547))) (level!56 (right!715 (left!712 res!5547)))) (- 1)))))

(assert (= (and d!16105 (not res!14305)) b!31028))

(assert (= (and b!31028 res!14307) b!31029))

(assert (= (and b!31029 res!14306) b!31030))

(assert (= (and b!31030 res!14308) b!31031))

(assert (=> b!31029 m!33267))

(assert (=> b!31029 m!33265))

(declare-fun m!33471 () Bool)

(assert (=> b!31031 m!33471))

(declare-fun m!33473 () Bool)

(assert (=> b!31030 m!33473))

(assert (=> b!31028 m!33267))

(assert (=> b!31028 m!33265))

(assert (=> b!30842 d!16105))

(assert (=> b!30827 d!15993))

(declare-fun b!31033 () Bool)

(declare-fun e!15814 () Int)

(declare-fun lt!5868 () Int)

(declare-fun lt!5866 () Int)

(assert (=> b!31033 (= e!15814 (+ 1 (ite (>= lt!5868 lt!5866) lt!5868 lt!5866)))))

(assert (=> b!31033 (= lt!5866 (level!56 (right!715 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))))))

(assert (=> b!31033 (= lt!5868 (level!56 (left!712 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16107 () Bool)

(declare-fun lt!5867 () Int)

(assert (=> d!16107 (>= lt!5867 0)))

(assert (=> d!16107 (= lt!5867 e!15814)))

(declare-fun c!6773 () Bool)

(assert (=> d!16107 (= c!6773 (or (is-Empty!78 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))) (is-Single!67 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))))))

(assert (=> d!16107 (= (level!56 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))) lt!5867)))

(declare-fun b!31032 () Bool)

(assert (=> b!31032 (= e!15814 0)))

(assert (= (and d!16107 c!6773) b!31032))

(assert (= (and d!16107 (not c!6773)) b!31033))

(declare-fun m!33475 () Bool)

(assert (=> b!31033 m!33475))

(declare-fun m!33477 () Bool)

(assert (=> b!31033 m!33477))

(assert (=> b!30834 d!16107))

(declare-fun b!31035 () Bool)

(declare-fun e!15815 () Int)

(declare-fun lt!5871 () Int)

(declare-fun lt!5869 () Int)

(assert (=> b!31035 (= e!15815 (+ 1 (ite (>= lt!5871 lt!5869) lt!5871 lt!5869)))))

(assert (=> b!31035 (= lt!5869 (level!56 (right!715 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))))))

(assert (=> b!31035 (= lt!5871 (level!56 (left!712 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16109 () Bool)

(declare-fun lt!5870 () Int)

(assert (=> d!16109 (>= lt!5870 0)))

(assert (=> d!16109 (= lt!5870 e!15815)))

(declare-fun c!6774 () Bool)

(assert (=> d!16109 (= c!6774 (or (is-Empty!78 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))) (is-Single!67 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))))))

(assert (=> d!16109 (= (level!56 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))) lt!5870)))

(declare-fun b!31034 () Bool)

(assert (=> b!31034 (= e!15815 0)))

(assert (= (and d!16109 c!6774) b!31034))

(assert (= (and d!16109 (not c!6774)) b!31035))

(declare-fun m!33479 () Bool)

(assert (=> b!31035 m!33479))

(declare-fun m!33481 () Bool)

(assert (=> b!31035 m!33481))

(assert (=> b!30834 d!16109))

(assert (=> b!30752 d!16037))

(assert (=> b!30752 d!16035))

(assert (=> d!15983 d!16069))

(declare-fun b!31036 () Bool)

(declare-fun e!15816 () List!364)

(assert (=> b!31036 (= e!15816 Nil!359)))

(declare-fun b!31038 () Bool)

(declare-fun e!15817 () List!364)

(assert (=> b!31038 (= e!15817 (Cons!358 (x!8961 res!5547) Nil!359))))

(declare-fun b!31039 () Bool)

(assert (=> b!31039 (= e!15817 (++!44 (toList!119 (left!712 res!5547)) (toList!119 (right!715 res!5547))))))

(declare-fun d!16111 () Bool)

(declare-fun lt!5872 () List!364)

(assert (=> d!16111 (= (size!277 lt!5872) (size!278 res!5547))))

(assert (=> d!16111 (= lt!5872 e!15816)))

(declare-fun c!6775 () Bool)

(assert (=> d!16111 (= c!6775 (is-Empty!78 res!5547))))

(assert (=> d!16111 (= (toList!119 res!5547) lt!5872)))

(declare-fun b!31037 () Bool)

(assert (=> b!31037 (= e!15816 e!15817)))

(declare-fun c!6776 () Bool)

(assert (=> b!31037 (= c!6776 (is-Single!67 res!5547))))

(assert (= (and b!31037 c!6776) b!31038))

(assert (= (and b!31037 (not c!6776)) b!31039))

(assert (= (and d!16111 c!6775) b!31036))

(assert (= (and d!16111 (not c!6775)) b!31037))

(declare-fun m!33483 () Bool)

(assert (=> b!31039 m!33483))

(declare-fun m!33485 () Bool)

(assert (=> b!31039 m!33485))

(assert (=> b!31039 m!33483))

(assert (=> b!31039 m!33485))

(declare-fun m!33487 () Bool)

(assert (=> b!31039 m!33487))

(declare-fun m!33489 () Bool)

(assert (=> d!16111 m!33489))

(declare-fun m!33491 () Bool)

(assert (=> d!16111 m!33491))

(assert (=> d!15983 d!16111))

(declare-fun d!16113 () Bool)

(declare-fun e!15819 () Bool)

(assert (=> d!16113 e!15819))

(declare-fun res!14310 () Bool)

(assert (=> d!16113 (=> (not res!14310) (not e!15819))))

(declare-fun lt!5873 () List!364)

(assert (=> d!16113 (= res!14310 (= (content!74 lt!5873) (union (content!74 (toList!119 xs!533)) (content!74 (toList!119 ys!77)))))))

(declare-fun e!15818 () List!364)

(assert (=> d!16113 (= lt!5873 e!15818)))

(declare-fun c!6777 () Bool)

(assert (=> d!16113 (= c!6777 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16113 (= (++!44 (toList!119 xs!533) (toList!119 ys!77)) lt!5873)))

(declare-fun b!31041 () Bool)

(assert (=> b!31041 (= e!15818 (Cons!358 (h!275 (toList!119 xs!533)) (++!44 (t!4378 (toList!119 xs!533)) (toList!119 ys!77))))))

(declare-fun b!31040 () Bool)

(assert (=> b!31040 (= e!15818 (toList!119 ys!77))))

(declare-fun b!31042 () Bool)

(declare-fun res!14309 () Bool)

(assert (=> b!31042 (=> (not res!14309) (not e!15819))))

(assert (=> b!31042 (= res!14309 (= (size!277 lt!5873) (+ (size!277 (toList!119 xs!533)) (size!277 (toList!119 ys!77)))))))

(declare-fun b!31043 () Bool)

(assert (=> b!31043 (= e!15819 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!5873 (toList!119 xs!533))))))

(assert (= (and d!16113 c!6777) b!31040))

(assert (= (and d!16113 (not c!6777)) b!31041))

(assert (= (and d!16113 res!14310) b!31042))

(assert (= (and b!31042 res!14309) b!31043))

(declare-fun m!33493 () Bool)

(assert (=> d!16113 m!33493))

(assert (=> d!16113 m!33075))

(declare-fun m!33495 () Bool)

(assert (=> d!16113 m!33495))

(assert (=> d!16113 m!33077))

(assert (=> d!16113 m!33331))

(assert (=> b!31041 m!33077))

(declare-fun m!33497 () Bool)

(assert (=> b!31041 m!33497))

(declare-fun m!33499 () Bool)

(assert (=> b!31042 m!33499))

(assert (=> b!31042 m!33075))

(declare-fun m!33501 () Bool)

(assert (=> b!31042 m!33501))

(assert (=> b!31042 m!33077))

(assert (=> b!31042 m!33339))

(assert (=> d!15983 d!16113))

(assert (=> d!15983 d!16051))

(declare-fun b!31047 () Bool)

(declare-fun e!15820 () Bool)

(assert (=> b!31047 (= e!15820 (concInv!62 (right!715 (left!712 xs!533))))))

(declare-fun b!31044 () Bool)

(declare-fun e!15821 () Bool)

(assert (=> b!31044 (= e!15821 e!15820)))

(declare-fun res!14312 () Bool)

(assert (=> b!31044 (=> (not res!14312) (not e!15820))))

(assert (=> b!31044 (= res!14312 (not (isEmpty!324 (left!712 (left!712 xs!533)))))))

(declare-fun b!31045 () Bool)

(declare-fun res!14314 () Bool)

(assert (=> b!31045 (=> (not res!14314) (not e!15820))))

(assert (=> b!31045 (= res!14314 (not (isEmpty!324 (right!715 (left!712 xs!533)))))))

(declare-fun b!31046 () Bool)

(declare-fun res!14311 () Bool)

(assert (=> b!31046 (=> (not res!14311) (not e!15820))))

(assert (=> b!31046 (= res!14311 (concInv!62 (left!712 (left!712 xs!533))))))

(declare-fun d!16115 () Bool)

(declare-fun res!14313 () Bool)

(assert (=> d!16115 (=> res!14313 e!15821)))

(assert (=> d!16115 (= res!14313 (not (is-CC!67 (left!712 xs!533))))))

(assert (=> d!16115 (= (concInv!62 (left!712 xs!533)) e!15821)))

(assert (= (and d!16115 (not res!14313)) b!31044))

(assert (= (and b!31044 res!14312) b!31045))

(assert (= (and b!31045 res!14314) b!31046))

(assert (= (and b!31046 res!14311) b!31047))

(declare-fun m!33503 () Bool)

(assert (=> b!31047 m!33503))

(declare-fun m!33505 () Bool)

(assert (=> b!31044 m!33505))

(declare-fun m!33507 () Bool)

(assert (=> b!31045 m!33507))

(declare-fun m!33509 () Bool)

(assert (=> b!31046 m!33509))

(assert (=> b!30755 d!16115))

(assert (=> b!30726 d!16071))

(declare-fun b!31048 () Bool)

(declare-fun e!15822 () List!364)

(assert (=> b!31048 (= e!15822 Nil!359)))

(declare-fun b!31050 () Bool)

(declare-fun e!15823 () List!364)

(assert (=> b!31050 (= e!15823 (Cons!358 (x!8961 (right!715 ys!77)) Nil!359))))

(declare-fun b!31051 () Bool)

(assert (=> b!31051 (= e!15823 (++!44 (toList!119 (left!712 (right!715 ys!77))) (toList!119 (right!715 (right!715 ys!77)))))))

(declare-fun d!16117 () Bool)

(declare-fun lt!5874 () List!364)

(assert (=> d!16117 (= (size!277 lt!5874) (size!278 (right!715 ys!77)))))

(assert (=> d!16117 (= lt!5874 e!15822)))

(declare-fun c!6778 () Bool)

(assert (=> d!16117 (= c!6778 (is-Empty!78 (right!715 ys!77)))))

(assert (=> d!16117 (= (toList!119 (right!715 ys!77)) lt!5874)))

(declare-fun b!31049 () Bool)

(assert (=> b!31049 (= e!15822 e!15823)))

(declare-fun c!6779 () Bool)

(assert (=> b!31049 (= c!6779 (is-Single!67 (right!715 ys!77)))))

(assert (= (and b!31049 c!6779) b!31050))

(assert (= (and b!31049 (not c!6779)) b!31051))

(assert (= (and d!16117 c!6778) b!31048))

(assert (= (and d!16117 (not c!6778)) b!31049))

(declare-fun m!33511 () Bool)

(assert (=> b!31051 m!33511))

(declare-fun m!33513 () Bool)

(assert (=> b!31051 m!33513))

(assert (=> b!31051 m!33511))

(assert (=> b!31051 m!33513))

(declare-fun m!33515 () Bool)

(assert (=> b!31051 m!33515))

(declare-fun m!33517 () Bool)

(assert (=> d!16117 m!33517))

(declare-fun m!33519 () Bool)

(assert (=> d!16117 m!33519))

(assert (=> b!30726 d!16117))

(assert (=> b!30726 d!16073))

(assert (=> b!30726 d!16069))

(declare-fun d!16119 () Bool)

(declare-fun e!15825 () Bool)

(assert (=> d!16119 e!15825))

(declare-fun res!14316 () Bool)

(assert (=> d!16119 (=> (not res!14316) (not e!15825))))

(declare-fun lt!5875 () List!364)

(assert (=> d!16119 (= res!14316 (= (content!74 lt!5875) (union (content!74 (toList!119 xs!533)) (content!74 (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun e!15824 () List!364)

(assert (=> d!16119 (= lt!5875 e!15824)))

(declare-fun c!6780 () Bool)

(assert (=> d!16119 (= c!6780 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16119 (= (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) lt!5875)))

(declare-fun b!31053 () Bool)

(assert (=> b!31053 (= e!15824 (Cons!358 (h!275 (toList!119 xs!533)) (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 ys!77))))))))

(declare-fun b!31052 () Bool)

(assert (=> b!31052 (= e!15824 (toList!119 (left!712 (left!712 ys!77))))))

(declare-fun b!31054 () Bool)

(declare-fun res!14315 () Bool)

(assert (=> b!31054 (=> (not res!14315) (not e!15825))))

(assert (=> b!31054 (= res!14315 (= (size!277 lt!5875) (+ (size!277 (toList!119 xs!533)) (size!277 (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31055 () Bool)

(assert (=> b!31055 (= e!15825 (or (not (= (toList!119 (left!712 (left!712 ys!77))) Nil!359)) (= lt!5875 (toList!119 xs!533))))))

(assert (= (and d!16119 c!6780) b!31052))

(assert (= (and d!16119 (not c!6780)) b!31053))

(assert (= (and d!16119 res!14316) b!31054))

(assert (= (and b!31054 res!14315) b!31055))

(declare-fun m!33521 () Bool)

(assert (=> d!16119 m!33521))

(assert (=> d!16119 m!33075))

(assert (=> d!16119 m!33495))

(assert (=> d!16119 m!33083))

(declare-fun m!33523 () Bool)

(assert (=> d!16119 m!33523))

(assert (=> b!31053 m!33083))

(declare-fun m!33525 () Bool)

(assert (=> b!31053 m!33525))

(declare-fun m!33527 () Bool)

(assert (=> b!31054 m!33527))

(assert (=> b!31054 m!33075))

(assert (=> b!31054 m!33501))

(assert (=> b!31054 m!33083))

(declare-fun m!33529 () Bool)

(assert (=> b!31054 m!33529))

(assert (=> b!30726 d!16119))

(declare-fun b!31056 () Bool)

(declare-fun e!15826 () Bool)

(assert (=> b!31056 (= e!15826 (= (++!44 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (toList!119 (right!715 ys!77))) (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))))

(declare-fun lt!5876 () Bool)

(assert (=> b!31056 (= lt!5876 (appendAssoc!12 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))

(declare-fun d!16121 () Bool)

(assert (=> d!16121 e!15826))

(declare-fun c!6781 () Bool)

(assert (=> d!16121 (= c!6781 (is-Cons!358 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))))))

(assert (=> d!16121 (= (appendAssoc!12 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))) true)))

(declare-fun b!31057 () Bool)

(assert (=> b!31057 (= e!15826 (= (++!44 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (toList!119 (right!715 ys!77))) (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))))

(assert (= (and d!16121 c!6781) b!31056))

(assert (= (and d!16121 (not c!6781)) b!31057))

(assert (=> b!31056 m!33085))

(assert (=> b!31056 m!33107))

(declare-fun m!33531 () Bool)

(assert (=> b!31056 m!33531))

(assert (=> b!31056 m!33105))

(declare-fun m!33533 () Bool)

(assert (=> b!31056 m!33533))

(declare-fun m!33535 () Bool)

(assert (=> b!31056 m!33535))

(assert (=> b!31056 m!33105))

(assert (=> b!31056 m!33085))

(assert (=> b!31056 m!33375))

(assert (=> b!31056 m!33085))

(assert (=> b!31056 m!33107))

(assert (=> b!31056 m!33533))

(assert (=> b!31056 m!33375))

(assert (=> b!31056 m!33107))

(declare-fun m!33537 () Bool)

(assert (=> b!31056 m!33537))

(assert (=> b!31057 m!33105))

(assert (=> b!31057 m!33085))

(assert (=> b!31057 m!33375))

(assert (=> b!31057 m!33375))

(assert (=> b!31057 m!33107))

(assert (=> b!31057 m!33537))

(assert (=> b!31057 m!33085))

(assert (=> b!31057 m!33107))

(assert (=> b!31057 m!33533))

(assert (=> b!31057 m!33105))

(assert (=> b!31057 m!33533))

(assert (=> b!31057 m!33535))

(assert (=> b!30726 d!16121))

(declare-fun d!16123 () Bool)

(assert (=> d!16123 (= (concatCorrectness!16 lt!5777 xs!533 (left!712 (left!712 ys!77))) (= (toList!119 lt!5777) (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))))))

(declare-fun bs!5109 () Bool)

(assert (= bs!5109 d!16123))

(assert (=> bs!5109 m!33075))

(assert (=> bs!5109 m!33083))

(assert (=> bs!5109 m!33105))

(declare-fun m!33539 () Bool)

(assert (=> bs!5109 m!33539))

(assert (=> bs!5109 m!33075))

(assert (=> bs!5109 m!33083))

(assert (=> b!30838 d!16123))

(declare-fun b!31059 () Bool)

(declare-fun res!14318 () Bool)

(declare-fun e!15828 () Bool)

(assert (=> b!31059 (=> (not res!14318) (not e!15828))))

(assert (=> b!31059 (= res!14318 (<= (- (level!56 (left!712 lt!5777)) (level!56 (right!715 lt!5777))) 1))))

(declare-fun b!31061 () Bool)

(assert (=> b!31061 (= e!15828 (balanced!63 (right!715 lt!5777)))))

(declare-fun b!31060 () Bool)

(declare-fun res!14320 () Bool)

(assert (=> b!31060 (=> (not res!14320) (not e!15828))))

(assert (=> b!31060 (= res!14320 (balanced!63 (left!712 lt!5777)))))

(declare-fun d!16125 () Bool)

(declare-fun res!14317 () Bool)

(declare-fun e!15827 () Bool)

(assert (=> d!16125 (=> res!14317 e!15827)))

(assert (=> d!16125 (= res!14317 (not (is-CC!67 lt!5777)))))

(assert (=> d!16125 (= (balanced!63 lt!5777) e!15827)))

(declare-fun b!31058 () Bool)

(assert (=> b!31058 (= e!15827 e!15828)))

(declare-fun res!14319 () Bool)

(assert (=> b!31058 (=> (not res!14319) (not e!15828))))

(assert (=> b!31058 (= res!14319 (>= (- (level!56 (left!712 lt!5777)) (level!56 (right!715 lt!5777))) (- 1)))))

(assert (= (and d!16125 (not res!14317)) b!31058))

(assert (= (and b!31058 res!14319) b!31059))

(assert (= (and b!31059 res!14318) b!31060))

(assert (= (and b!31060 res!14320) b!31061))

(assert (=> b!31059 m!33299))

(assert (=> b!31059 m!33297))

(declare-fun m!33541 () Bool)

(assert (=> b!31061 m!33541))

(declare-fun m!33543 () Bool)

(assert (=> b!31060 m!33543))

(assert (=> b!31058 m!33299))

(assert (=> b!31058 m!33297))

(assert (=> b!30820 d!16125))

(declare-fun b!31062 () Bool)

(declare-fun e!15829 () Bool)

(assert (=> b!31062 (= e!15829 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77))) (toList!119 (right!715 ys!77))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))))

(declare-fun lt!5877 () Bool)

(assert (=> b!31062 (= lt!5877 (appendAssoc!12 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))

(declare-fun d!16127 () Bool)

(assert (=> d!16127 e!15829))

(declare-fun c!6782 () Bool)

(assert (=> d!16127 (= c!6782 (is-Cons!358 (toList!119 xs!533)))))

(assert (=> d!16127 (= (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))) true)))

(declare-fun b!31063 () Bool)

(assert (=> b!31063 (= e!15829 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77))) (toList!119 (right!715 ys!77))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))))

(assert (= (and d!16127 c!6782) b!31062))

(assert (= (and d!16127 (not c!6782)) b!31063))

(assert (=> b!31062 m!33111))

(assert (=> b!31062 m!33107))

(declare-fun m!33545 () Bool)

(assert (=> b!31062 m!33545))

(assert (=> b!31062 m!33075))

(assert (=> b!31062 m!33301))

(declare-fun m!33547 () Bool)

(assert (=> b!31062 m!33547))

(assert (=> b!31062 m!33075))

(assert (=> b!31062 m!33111))

(declare-fun m!33549 () Bool)

(assert (=> b!31062 m!33549))

(assert (=> b!31062 m!33111))

(assert (=> b!31062 m!33107))

(assert (=> b!31062 m!33301))

(assert (=> b!31062 m!33549))

(assert (=> b!31062 m!33107))

(declare-fun m!33551 () Bool)

(assert (=> b!31062 m!33551))

(assert (=> b!31063 m!33075))

(assert (=> b!31063 m!33111))

(assert (=> b!31063 m!33549))

(assert (=> b!31063 m!33549))

(assert (=> b!31063 m!33107))

(assert (=> b!31063 m!33551))

(assert (=> b!31063 m!33111))

(assert (=> b!31063 m!33107))

(assert (=> b!31063 m!33301))

(assert (=> b!31063 m!33075))

(assert (=> b!31063 m!33301))

(assert (=> b!31063 m!33547))

(assert (=> b!30720 d!16127))

(assert (=> b!30720 d!16069))

(declare-fun b!31064 () Bool)

(declare-fun e!15830 () List!364)

(assert (=> b!31064 (= e!15830 Nil!359)))

(declare-fun b!31066 () Bool)

(declare-fun e!15831 () List!364)

(assert (=> b!31066 (= e!15831 (Cons!358 (x!8961 (left!712 ys!77)) Nil!359))))

(declare-fun b!31067 () Bool)

(assert (=> b!31067 (= e!15831 (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))

(declare-fun d!16129 () Bool)

(declare-fun lt!5878 () List!364)

(assert (=> d!16129 (= (size!277 lt!5878) (size!278 (left!712 ys!77)))))

(assert (=> d!16129 (= lt!5878 e!15830)))

(declare-fun c!6783 () Bool)

(assert (=> d!16129 (= c!6783 (is-Empty!78 (left!712 ys!77)))))

(assert (=> d!16129 (= (toList!119 (left!712 ys!77)) lt!5878)))

(declare-fun b!31065 () Bool)

(assert (=> b!31065 (= e!15830 e!15831)))

(declare-fun c!6784 () Bool)

(assert (=> b!31065 (= c!6784 (is-Single!67 (left!712 ys!77)))))

(assert (= (and b!31065 c!6784) b!31066))

(assert (= (and b!31065 (not c!6784)) b!31067))

(assert (= (and d!16129 c!6783) b!31064))

(assert (= (and d!16129 (not c!6783)) b!31065))

(assert (=> b!31067 m!33083))

(assert (=> b!31067 m!33085))

(assert (=> b!31067 m!33083))

(assert (=> b!31067 m!33085))

(assert (=> b!31067 m!33371))

(declare-fun m!33553 () Bool)

(assert (=> d!16129 m!33553))

(declare-fun m!33555 () Bool)

(assert (=> d!16129 m!33555))

(assert (=> b!30720 d!16129))

(assert (=> b!30720 d!16117))

(declare-fun b!31068 () Bool)

(declare-fun e!15832 () Bool)

(assert (=> b!31068 (= e!15832 (= (++!44 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))

(declare-fun lt!5879 () Bool)

(assert (=> b!31068 (= lt!5879 (appendAssoc!12 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))

(declare-fun d!16131 () Bool)

(assert (=> d!16131 e!15832))

(declare-fun c!6785 () Bool)

(assert (=> d!16131 (= c!6785 (is-Cons!358 (toList!119 (left!712 (right!715 xs!533)))))))

(assert (=> d!16131 (= (appendAssoc!12 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)) true)))

(declare-fun b!31069 () Bool)

(assert (=> b!31069 (= e!15832 (= (++!44 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))

(assert (= (and d!16131 c!6785) b!31068))

(assert (= (and d!16131 (not c!6785)) b!31069))

(assert (=> b!31068 m!33091))

(assert (=> b!31068 m!33077))

(declare-fun m!33557 () Bool)

(assert (=> b!31068 m!33557))

(assert (=> b!31068 m!33089))

(assert (=> b!31068 m!33097))

(assert (=> b!31068 m!33343))

(assert (=> b!31068 m!33089))

(assert (=> b!31068 m!33091))

(assert (=> b!31068 m!33433))

(assert (=> b!31068 m!33091))

(assert (=> b!31068 m!33077))

(assert (=> b!31068 m!33097))

(assert (=> b!31068 m!33433))

(assert (=> b!31068 m!33077))

(declare-fun m!33559 () Bool)

(assert (=> b!31068 m!33559))

(assert (=> b!31069 m!33089))

(assert (=> b!31069 m!33091))

(assert (=> b!31069 m!33433))

(assert (=> b!31069 m!33433))

(assert (=> b!31069 m!33077))

(assert (=> b!31069 m!33559))

(assert (=> b!31069 m!33091))

(assert (=> b!31069 m!33077))

(assert (=> b!31069 m!33097))

(assert (=> b!31069 m!33089))

(assert (=> b!31069 m!33097))

(assert (=> b!31069 m!33343))

(assert (=> b!30725 d!16131))

(assert (=> b!30725 d!16055))

(assert (=> b!30725 d!16053))

(assert (=> b!30725 d!16051))

(assert (=> b!30823 d!16017))

(assert (=> b!30823 d!15989))

(assert (=> b!30823 d!16047))

(declare-fun b!31071 () Bool)

(declare-fun res!14322 () Bool)

(declare-fun e!15834 () Bool)

(assert (=> b!31071 (=> (not res!14322) (not e!15834))))

(assert (=> b!31071 (= res!14322 (<= (- (level!56 (left!712 (right!715 ys!77))) (level!56 (right!715 (right!715 ys!77)))) 1))))

(declare-fun b!31073 () Bool)

(assert (=> b!31073 (= e!15834 (balanced!63 (right!715 (right!715 ys!77))))))

(declare-fun b!31072 () Bool)

(declare-fun res!14324 () Bool)

(assert (=> b!31072 (=> (not res!14324) (not e!15834))))

(assert (=> b!31072 (= res!14324 (balanced!63 (left!712 (right!715 ys!77))))))

(declare-fun d!16133 () Bool)

(declare-fun res!14321 () Bool)

(declare-fun e!15833 () Bool)

(assert (=> d!16133 (=> res!14321 e!15833)))

(assert (=> d!16133 (= res!14321 (not (is-CC!67 (right!715 ys!77))))))

(assert (=> d!16133 (= (balanced!63 (right!715 ys!77)) e!15833)))

(declare-fun b!31070 () Bool)

(assert (=> b!31070 (= e!15833 e!15834)))

(declare-fun res!14323 () Bool)

(assert (=> b!31070 (=> (not res!14323) (not e!15834))))

(assert (=> b!31070 (= res!14323 (>= (- (level!56 (left!712 (right!715 ys!77))) (level!56 (right!715 (right!715 ys!77)))) (- 1)))))

(assert (= (and d!16133 (not res!14321)) b!31070))

(assert (= (and b!31070 res!14323) b!31071))

(assert (= (and b!31071 res!14322) b!31072))

(assert (= (and b!31072 res!14324) b!31073))

(assert (=> b!31071 m!33149))

(assert (=> b!31071 m!33147))

(declare-fun m!33561 () Bool)

(assert (=> b!31073 m!33561))

(declare-fun m!33563 () Bool)

(assert (=> b!31072 m!33563))

(assert (=> b!31070 m!33149))

(assert (=> b!31070 m!33147))

(assert (=> b!30768 d!16133))

(declare-fun b!31077 () Bool)

(declare-fun e!15835 () Bool)

(assert (=> b!31077 (= e!15835 (concInv!62 (right!715 lt!5777)))))

(declare-fun b!31074 () Bool)

(declare-fun e!15836 () Bool)

(assert (=> b!31074 (= e!15836 e!15835)))

(declare-fun res!14326 () Bool)

(assert (=> b!31074 (=> (not res!14326) (not e!15835))))

(assert (=> b!31074 (= res!14326 (not (isEmpty!324 (left!712 lt!5777))))))

(declare-fun b!31075 () Bool)

(declare-fun res!14328 () Bool)

(assert (=> b!31075 (=> (not res!14328) (not e!15835))))

(assert (=> b!31075 (= res!14328 (not (isEmpty!324 (right!715 lt!5777))))))

(declare-fun b!31076 () Bool)

(declare-fun res!14325 () Bool)

(assert (=> b!31076 (=> (not res!14325) (not e!15835))))

(assert (=> b!31076 (= res!14325 (concInv!62 (left!712 lt!5777)))))

(declare-fun d!16135 () Bool)

(declare-fun res!14327 () Bool)

(assert (=> d!16135 (=> res!14327 e!15836)))

(assert (=> d!16135 (= res!14327 (not (is-CC!67 lt!5777)))))

(assert (=> d!16135 (= (concInv!62 lt!5777) e!15836)))

(assert (= (and d!16135 (not res!14327)) b!31074))

(assert (= (and b!31074 res!14326) b!31075))

(assert (= (and b!31075 res!14328) b!31076))

(assert (= (and b!31076 res!14325) b!31077))

(declare-fun m!33565 () Bool)

(assert (=> b!31077 m!33565))

(declare-fun m!33567 () Bool)

(assert (=> b!31074 m!33567))

(declare-fun m!33569 () Bool)

(assert (=> b!31075 m!33569))

(declare-fun m!33571 () Bool)

(assert (=> b!31076 m!33571))

(assert (=> b!30833 d!16135))

(assert (=> b!30844 d!16029))

(assert (=> b!30844 d!16031))

(assert (=> b!30734 d!16005))

(assert (=> b!30734 d!16007))

(declare-fun b!31079 () Bool)

(declare-fun res!14330 () Bool)

(declare-fun e!15838 () Bool)

(assert (=> b!31079 (=> (not res!14330) (not e!15838))))

(assert (=> b!31079 (= res!14330 (<= (- (level!56 (left!712 (left!712 (left!712 ys!77)))) (level!56 (right!715 (left!712 (left!712 ys!77))))) 1))))

(declare-fun b!31081 () Bool)

(assert (=> b!31081 (= e!15838 (balanced!63 (right!715 (left!712 (left!712 ys!77)))))))

(declare-fun b!31080 () Bool)

(declare-fun res!14332 () Bool)

(assert (=> b!31080 (=> (not res!14332) (not e!15838))))

(assert (=> b!31080 (= res!14332 (balanced!63 (left!712 (left!712 (left!712 ys!77)))))))

(declare-fun d!16137 () Bool)

(declare-fun res!14329 () Bool)

(declare-fun e!15837 () Bool)

(assert (=> d!16137 (=> res!14329 e!15837)))

(assert (=> d!16137 (= res!14329 (not (is-CC!67 (left!712 (left!712 ys!77)))))))

(assert (=> d!16137 (= (balanced!63 (left!712 (left!712 ys!77))) e!15837)))

(declare-fun b!31078 () Bool)

(assert (=> b!31078 (= e!15837 e!15838)))

(declare-fun res!14331 () Bool)

(assert (=> b!31078 (=> (not res!14331) (not e!15838))))

(assert (=> b!31078 (= res!14331 (>= (- (level!56 (left!712 (left!712 (left!712 ys!77)))) (level!56 (right!715 (left!712 (left!712 ys!77))))) (- 1)))))

(assert (= (and d!16137 (not res!14329)) b!31078))

(assert (= (and b!31078 res!14331) b!31079))

(assert (= (and b!31079 res!14330) b!31080))

(assert (= (and b!31080 res!14332) b!31081))

(assert (=> b!31079 m!33199))

(assert (=> b!31079 m!33197))

(declare-fun m!33573 () Bool)

(assert (=> b!31081 m!33573))

(declare-fun m!33575 () Bool)

(assert (=> b!31080 m!33575))

(assert (=> b!31078 m!33199))

(assert (=> b!31078 m!33197))

(assert (=> b!30819 d!16137))

(declare-fun b!31082 () Bool)

(declare-fun e!15839 () Bool)

(declare-fun tp!6458 () Bool)

(declare-fun tp!6459 () Bool)

(assert (=> b!31082 (= e!15839 (and tp!6458 tp!6459))))

(declare-fun b!31083 () Bool)

(assert (=> b!31083 (= e!15839 tp_is_empty!181)))

(assert (=> b!30864 (= tp!6450 e!15839)))

(assert (= (and b!30864 (is-CC!67 (left!712 (right!715 ys!77)))) b!31082))

(assert (= (and b!30864 (is-Single!67 (left!712 (right!715 ys!77)))) b!31083))

(declare-fun b!31084 () Bool)

(declare-fun e!15840 () Bool)

(declare-fun tp!6460 () Bool)

(declare-fun tp!6461 () Bool)

(assert (=> b!31084 (= e!15840 (and tp!6460 tp!6461))))

(declare-fun b!31085 () Bool)

(assert (=> b!31085 (= e!15840 tp_is_empty!181)))

(assert (=> b!30864 (= tp!6451 e!15840)))

(assert (= (and b!30864 (is-CC!67 (right!715 (right!715 ys!77)))) b!31084))

(assert (= (and b!30864 (is-Single!67 (right!715 (right!715 ys!77)))) b!31085))

(declare-fun b!31086 () Bool)

(declare-fun e!15841 () Bool)

(declare-fun tp!6462 () Bool)

(declare-fun tp!6463 () Bool)

(assert (=> b!31086 (= e!15841 (and tp!6462 tp!6463))))

(declare-fun b!31087 () Bool)

(assert (=> b!31087 (= e!15841 tp_is_empty!181)))

(assert (=> b!30860 (= tp!6446 e!15841)))

(assert (= (and b!30860 (is-CC!67 (left!712 (right!715 xs!533)))) b!31086))

(assert (= (and b!30860 (is-Single!67 (left!712 (right!715 xs!533)))) b!31087))

(declare-fun b!31088 () Bool)

(declare-fun e!15842 () Bool)

(declare-fun tp!6464 () Bool)

(declare-fun tp!6465 () Bool)

(assert (=> b!31088 (= e!15842 (and tp!6464 tp!6465))))

(declare-fun b!31089 () Bool)

(assert (=> b!31089 (= e!15842 tp_is_empty!181)))

(assert (=> b!30860 (= tp!6447 e!15842)))

(assert (= (and b!30860 (is-CC!67 (right!715 (right!715 xs!533)))) b!31088))

(assert (= (and b!30860 (is-Single!67 (right!715 (right!715 xs!533)))) b!31089))

(declare-fun b!31090 () Bool)

(declare-fun e!15843 () Bool)

(declare-fun tp!6466 () Bool)

(declare-fun tp!6467 () Bool)

(assert (=> b!31090 (= e!15843 (and tp!6466 tp!6467))))

(declare-fun b!31091 () Bool)

(assert (=> b!31091 (= e!15843 tp_is_empty!181)))

(assert (=> b!30856 (= tp!6442 e!15843)))

(assert (= (and b!30856 (is-CC!67 (left!712 (right!715 nll!6)))) b!31090))

(assert (= (and b!30856 (is-Single!67 (left!712 (right!715 nll!6)))) b!31091))

(declare-fun b!31092 () Bool)

(declare-fun e!15844 () Bool)

(declare-fun tp!6468 () Bool)

(declare-fun tp!6469 () Bool)

(assert (=> b!31092 (= e!15844 (and tp!6468 tp!6469))))

(declare-fun b!31093 () Bool)

(assert (=> b!31093 (= e!15844 tp_is_empty!181)))

(assert (=> b!30856 (= tp!6443 e!15844)))

(assert (= (and b!30856 (is-CC!67 (right!715 (right!715 nll!6)))) b!31092))

(assert (= (and b!30856 (is-Single!67 (right!715 (right!715 nll!6)))) b!31093))

(declare-fun b!31094 () Bool)

(declare-fun e!15845 () Bool)

(declare-fun tp!6470 () Bool)

(declare-fun tp!6471 () Bool)

(assert (=> b!31094 (= e!15845 (and tp!6470 tp!6471))))

(declare-fun b!31095 () Bool)

(assert (=> b!31095 (= e!15845 tp_is_empty!181)))

(assert (=> b!30866 (= tp!6452 e!15845)))

(assert (= (and b!30866 (is-CC!67 (left!712 (left!712 res!5547)))) b!31094))

(assert (= (and b!30866 (is-Single!67 (left!712 (left!712 res!5547)))) b!31095))

(declare-fun b!31096 () Bool)

(declare-fun e!15846 () Bool)

(declare-fun tp!6472 () Bool)

(declare-fun tp!6473 () Bool)

(assert (=> b!31096 (= e!15846 (and tp!6472 tp!6473))))

(declare-fun b!31097 () Bool)

(assert (=> b!31097 (= e!15846 tp_is_empty!181)))

(assert (=> b!30866 (= tp!6453 e!15846)))

(assert (= (and b!30866 (is-CC!67 (right!715 (left!712 res!5547)))) b!31096))

(assert (= (and b!30866 (is-Single!67 (right!715 (left!712 res!5547)))) b!31097))

(declare-fun b!31098 () Bool)

(declare-fun e!15847 () Bool)

(declare-fun tp!6474 () Bool)

(declare-fun tp!6475 () Bool)

(assert (=> b!31098 (= e!15847 (and tp!6474 tp!6475))))

(declare-fun b!31099 () Bool)

(assert (=> b!31099 (= e!15847 tp_is_empty!181)))

(assert (=> b!30868 (= tp!6454 e!15847)))

(assert (= (and b!30868 (is-CC!67 (left!712 (right!715 res!5547)))) b!31098))

(assert (= (and b!30868 (is-Single!67 (left!712 (right!715 res!5547)))) b!31099))

(declare-fun b!31100 () Bool)

(declare-fun e!15848 () Bool)

(declare-fun tp!6476 () Bool)

(declare-fun tp!6477 () Bool)

(assert (=> b!31100 (= e!15848 (and tp!6476 tp!6477))))

(declare-fun b!31101 () Bool)

(assert (=> b!31101 (= e!15848 tp_is_empty!181)))

(assert (=> b!30868 (= tp!6455 e!15848)))

(assert (= (and b!30868 (is-CC!67 (right!715 (right!715 res!5547)))) b!31100))

(assert (= (and b!30868 (is-Single!67 (right!715 (right!715 res!5547)))) b!31101))

(declare-fun b!31102 () Bool)

(declare-fun e!15849 () Bool)

(declare-fun tp!6478 () Bool)

(declare-fun tp!6479 () Bool)

(assert (=> b!31102 (= e!15849 (and tp!6478 tp!6479))))

(declare-fun b!31103 () Bool)

(assert (=> b!31103 (= e!15849 tp_is_empty!181)))

(assert (=> b!30862 (= tp!6448 e!15849)))

(assert (= (and b!30862 (is-CC!67 (left!712 (left!712 ys!77)))) b!31102))

(assert (= (and b!30862 (is-Single!67 (left!712 (left!712 ys!77)))) b!31103))

(declare-fun b!31104 () Bool)

(declare-fun e!15850 () Bool)

(declare-fun tp!6480 () Bool)

(declare-fun tp!6481 () Bool)

(assert (=> b!31104 (= e!15850 (and tp!6480 tp!6481))))

(declare-fun b!31105 () Bool)

(assert (=> b!31105 (= e!15850 tp_is_empty!181)))

(assert (=> b!30862 (= tp!6449 e!15850)))

(assert (= (and b!30862 (is-CC!67 (right!715 (left!712 ys!77)))) b!31104))

(assert (= (and b!30862 (is-Single!67 (right!715 (left!712 ys!77)))) b!31105))

(declare-fun b!31106 () Bool)

(declare-fun e!15851 () Bool)

(declare-fun tp!6482 () Bool)

(declare-fun tp!6483 () Bool)

(assert (=> b!31106 (= e!15851 (and tp!6482 tp!6483))))

(declare-fun b!31107 () Bool)

(assert (=> b!31107 (= e!15851 tp_is_empty!181)))

(assert (=> b!30858 (= tp!6444 e!15851)))

(assert (= (and b!30858 (is-CC!67 (left!712 (left!712 xs!533)))) b!31106))

(assert (= (and b!30858 (is-Single!67 (left!712 (left!712 xs!533)))) b!31107))

(declare-fun b!31108 () Bool)

(declare-fun e!15852 () Bool)

(declare-fun tp!6484 () Bool)

(declare-fun tp!6485 () Bool)

(assert (=> b!31108 (= e!15852 (and tp!6484 tp!6485))))

(declare-fun b!31109 () Bool)

(assert (=> b!31109 (= e!15852 tp_is_empty!181)))

(assert (=> b!30858 (= tp!6445 e!15852)))

(assert (= (and b!30858 (is-CC!67 (right!715 (left!712 xs!533)))) b!31108))

(assert (= (and b!30858 (is-Single!67 (right!715 (left!712 xs!533)))) b!31109))

(declare-fun b!31110 () Bool)

(declare-fun e!15853 () Bool)

(declare-fun tp!6486 () Bool)

(declare-fun tp!6487 () Bool)

(assert (=> b!31110 (= e!15853 (and tp!6486 tp!6487))))

(declare-fun b!31111 () Bool)

(assert (=> b!31111 (= e!15853 tp_is_empty!181)))

(assert (=> b!30854 (= tp!6440 e!15853)))

(assert (= (and b!30854 (is-CC!67 (left!712 (left!712 nll!6)))) b!31110))

(assert (= (and b!30854 (is-Single!67 (left!712 (left!712 nll!6)))) b!31111))

(declare-fun b!31112 () Bool)

(declare-fun e!15854 () Bool)

(declare-fun tp!6488 () Bool)

(declare-fun tp!6489 () Bool)

(assert (=> b!31112 (= e!15854 (and tp!6488 tp!6489))))

(declare-fun b!31113 () Bool)

(assert (=> b!31113 (= e!15854 tp_is_empty!181)))

(assert (=> b!30854 (= tp!6441 e!15854)))

(assert (= (and b!30854 (is-CC!67 (right!715 (left!712 nll!6)))) b!31112))

(assert (= (and b!30854 (is-Single!67 (right!715 (left!712 nll!6)))) b!31113))

(declare-fun b!31114 () Bool)

(declare-fun e!15855 () Bool)

(declare-fun tp!6490 () Bool)

(declare-fun tp!6491 () Bool)

(assert (=> b!31114 (= e!15855 (and tp!6490 tp!6491))))

(declare-fun b!31115 () Bool)

(assert (=> b!31115 (= e!15855 tp_is_empty!181)))

(assert (=> b!30830 (= tp!6434 e!15855)))

(assert (= (and b!30830 (is-CC!67 (left!712 res!14219))) b!31114))

(assert (= (and b!30830 (is-Single!67 (left!712 res!14219))) b!31115))

(declare-fun b!31116 () Bool)

(declare-fun e!15856 () Bool)

(declare-fun tp!6492 () Bool)

(declare-fun tp!6493 () Bool)

(assert (=> b!31116 (= e!15856 (and tp!6492 tp!6493))))

(declare-fun b!31117 () Bool)

(assert (=> b!31117 (= e!15856 tp_is_empty!181)))

(assert (=> b!30830 (= tp!6435 e!15856)))

(assert (= (and b!30830 (is-CC!67 (right!715 res!14219))) b!31116))

(assert (= (and b!30830 (is-Single!67 (right!715 res!14219))) b!31117))

(push 1)

(assert (not b!31073))

(assert (not b!30874))

(assert (not b!30924))

(assert (not b!30982))

(assert (not b!30884))

(assert (not d!16071))

(assert (not b!30883))

(assert (not d!16061))

(assert (not b!30914))

(assert (not b!30921))

(assert (not b!31058))

(assert (not b!30886))

(assert (not b!31041))

(assert (not b!31044))

(assert (not b!31077))

(assert (not b!30877))

(assert (not b!31042))

(assert (not b!31074))

(assert (not b!31079))

(assert (not d!16051))

(assert (not b!30906))

(assert (not b!30926))

(assert (not b!30996))

(assert (not b!31012))

(assert (not b!30907))

(assert (not b!31084))

(assert (not b!30942))

(assert (not b!30872))

(assert (not b!30894))

(assert (not b!30997))

(assert (not b!30889))

(assert (not d!16057))

(assert (not d!16113))

(assert (not b!30938))

(assert (not b!30975))

(assert (not b!31104))

(assert (not b!31082))

(assert (not b!30993))

(assert (not b!30976))

(assert (not b!31009))

(assert (not b!30992))

(assert (not b!31021))

(assert (not b!30892))

(assert (not b!31002))

(assert (not b!31063))

(assert (not b!31075))

(assert (not b!30898))

(assert (not b!31031))

(assert (not d!16025))

(assert (not b!31053))

(assert (not b!30910))

(assert (not b!31100))

(assert (not b!31054))

(assert (not b!30875))

(assert (not b!31030))

(assert (not b!30946))

(assert (not b!30923))

(assert (not b!30991))

(assert (not d!16073))

(assert (not b!30972))

(assert (not b!31071))

(assert (not b!31028))

(assert (not b!30973))

(assert (not b!31088))

(assert (not b!31110))

(assert (not b!31081))

(assert (not b!31019))

(assert (not b!31070))

(assert (not b!30890))

(assert (not b!31112))

(assert (not b!31039))

(assert (not b!31096))

(assert (not b!30913))

(assert (not b!31098))

(assert (not b!30882))

(assert (not b!30879))

(assert (not b!30881))

(assert (not b!30956))

(assert (not b!30897))

(assert (not b!31046))

(assert (not d!16129))

(assert (not b!31001))

(assert (not b!30916))

(assert (not b!31069))

(assert (not b!30893))

(assert (not b!31106))

(assert (not d!16089))

(assert (not b!31102))

(assert (not b!31005))

(assert (not b!30969))

(assert (not b!31026))

(assert (not b!31086))

(assert (not b!30986))

(assert (not b!31017))

(assert (not b!30990))

(assert (not d!16117))

(assert (not b!30918))

(assert (not b!31094))

(assert (not b!31023))

(assert (not b!30971))

(assert (not b!31059))

(assert (not b!30970))

(assert (not b!31072))

(assert (not b!31062))

(assert (not b!30977))

(assert (not b!31016))

(assert (not b!30885))

(assert (not b!31114))

(assert (not b!30963))

(assert (not b!30871))

(assert (not b!30908))

(assert (not b!31090))

(assert (not b!31076))

(assert (not b!31067))

(assert (not b!30968))

(assert (not b!31056))

(assert (not b!31061))

(assert (not b!31024))

(assert (not b!31018))

(assert (not b!31051))

(assert (not b!30915))

(assert (not b!30964))

(assert (not b!31035))

(assert (not b!31116))

(assert (not b!31013))

(assert (not d!16053))

(assert (not b!31078))

(assert (not b!31003))

(assert (not b!30978))

(assert (not b!31004))

(assert (not b!31108))

(assert (not b!30895))

(assert (not d!16055))

(assert (not b!31080))

(assert (not b!30905))

(assert (not b!30900))

(assert (not b!31015))

(assert (not b!30912))

(assert (not b!31029))

(assert (not b!31011))

(assert (not b!31000))

(assert (not b!30904))

(assert (not b!31068))

(assert (not b!30974))

(assert (not b!30922))

(assert (not b!30878))

(assert (not b!31027))

(assert (not d!16123))

(assert (not b!31060))

(assert (not b!30957))

(assert (not b!31033))

(assert (not d!16111))

(assert (not b!31014))

(assert (not d!16069))

(assert (not d!16119))

(assert (not b!31092))

(assert (not b!31047))

(assert (not b!30995))

(assert (not b!30902))

(assert (not b!30920))

(assert (not b!31045))

(assert (not b!31025))

(assert (not b!30873))

(assert (not b!31057))

(assert tp_is_empty!181)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16139 () Bool)

(assert (=> d!16139 (= (isEmpty!324 (right!715 (right!715 res!5547))) (= (right!715 (right!715 res!5547)) Empty!78))))

(assert (=> b!30906 d!16139))

(declare-fun b!31119 () Bool)

(declare-fun res!14334 () Bool)

(declare-fun e!15858 () Bool)

(assert (=> b!31119 (=> (not res!14334) (not e!15858))))

(assert (=> b!31119 (= res!14334 (<= (- (level!56 (left!712 (right!715 (right!715 xs!533)))) (level!56 (right!715 (right!715 (right!715 xs!533))))) 1))))

(declare-fun b!31121 () Bool)

(assert (=> b!31121 (= e!15858 (balanced!63 (right!715 (right!715 (right!715 xs!533)))))))

(declare-fun b!31120 () Bool)

(declare-fun res!14336 () Bool)

(assert (=> b!31120 (=> (not res!14336) (not e!15858))))

(assert (=> b!31120 (= res!14336 (balanced!63 (left!712 (right!715 (right!715 xs!533)))))))

(declare-fun d!16141 () Bool)

(declare-fun res!14333 () Bool)

(declare-fun e!15857 () Bool)

(assert (=> d!16141 (=> res!14333 e!15857)))

(assert (=> d!16141 (= res!14333 (not (is-CC!67 (right!715 (right!715 xs!533)))))))

(assert (=> d!16141 (= (balanced!63 (right!715 (right!715 xs!533))) e!15857)))

(declare-fun b!31118 () Bool)

(assert (=> b!31118 (= e!15857 e!15858)))

(declare-fun res!14335 () Bool)

(assert (=> b!31118 (=> (not res!14335) (not e!15858))))

(assert (=> b!31118 (= res!14335 (>= (- (level!56 (left!712 (right!715 (right!715 xs!533)))) (level!56 (right!715 (right!715 (right!715 xs!533))))) (- 1)))))

(assert (= (and d!16141 (not res!14333)) b!31118))

(assert (= (and b!31118 res!14335) b!31119))

(assert (= (and b!31119 res!14334) b!31120))

(assert (= (and b!31120 res!14336) b!31121))

(declare-fun m!33577 () Bool)

(assert (=> b!31119 m!33577))

(declare-fun m!33579 () Bool)

(assert (=> b!31119 m!33579))

(declare-fun m!33581 () Bool)

(assert (=> b!31121 m!33581))

(declare-fun m!33583 () Bool)

(assert (=> b!31120 m!33583))

(assert (=> b!31118 m!33577))

(assert (=> b!31118 m!33579))

(assert (=> b!30875 d!16141))

(declare-fun b!31123 () Bool)

(declare-fun res!14338 () Bool)

(declare-fun e!15860 () Bool)

(assert (=> b!31123 (=> (not res!14338) (not e!15860))))

(assert (=> b!31123 (= res!14338 (<= (- (level!56 (left!712 (right!715 (right!715 res!5547)))) (level!56 (right!715 (right!715 (right!715 res!5547))))) 1))))

(declare-fun b!31125 () Bool)

(assert (=> b!31125 (= e!15860 (balanced!63 (right!715 (right!715 (right!715 res!5547)))))))

(declare-fun b!31124 () Bool)

(declare-fun res!14340 () Bool)

(assert (=> b!31124 (=> (not res!14340) (not e!15860))))

(assert (=> b!31124 (= res!14340 (balanced!63 (left!712 (right!715 (right!715 res!5547)))))))

(declare-fun d!16143 () Bool)

(declare-fun res!14337 () Bool)

(declare-fun e!15859 () Bool)

(assert (=> d!16143 (=> res!14337 e!15859)))

(assert (=> d!16143 (= res!14337 (not (is-CC!67 (right!715 (right!715 res!5547)))))))

(assert (=> d!16143 (= (balanced!63 (right!715 (right!715 res!5547))) e!15859)))

(declare-fun b!31122 () Bool)

(assert (=> b!31122 (= e!15859 e!15860)))

(declare-fun res!14339 () Bool)

(assert (=> b!31122 (=> (not res!14339) (not e!15860))))

(assert (=> b!31122 (= res!14339 (>= (- (level!56 (left!712 (right!715 (right!715 res!5547)))) (level!56 (right!715 (right!715 (right!715 res!5547))))) (- 1)))))

(assert (= (and d!16143 (not res!14337)) b!31122))

(assert (= (and b!31122 res!14339) b!31123))

(assert (= (and b!31123 res!14338) b!31124))

(assert (= (and b!31124 res!14340) b!31125))

(declare-fun m!33585 () Bool)

(assert (=> b!31123 m!33585))

(declare-fun m!33587 () Bool)

(assert (=> b!31123 m!33587))

(declare-fun m!33589 () Bool)

(assert (=> b!31125 m!33589))

(declare-fun m!33591 () Bool)

(assert (=> b!31124 m!33591))

(assert (=> b!31122 m!33585))

(assert (=> b!31122 m!33587))

(assert (=> b!30972 d!16143))

(assert (=> b!31024 d!16077))

(declare-fun d!16145 () Bool)

(assert (=> d!16145 (= (isEmpty!324 (right!715 (left!712 xs!533))) (= (right!715 (left!712 xs!533)) Empty!78))))

(assert (=> b!31045 d!16145))

(declare-fun b!31127 () Bool)

(declare-fun e!15861 () Int)

(declare-fun lt!5882 () Int)

(declare-fun lt!5880 () Int)

(assert (=> b!31127 (= e!15861 (+ 1 (ite (>= lt!5882 lt!5880) lt!5882 lt!5880)))))

(assert (=> b!31127 (= lt!5880 (level!56 (right!715 (right!715 (right!715 res!5547)))))))

(assert (=> b!31127 (= lt!5882 (level!56 (left!712 (right!715 (right!715 res!5547)))))))

(declare-fun d!16147 () Bool)

(declare-fun lt!5881 () Int)

(assert (=> d!16147 (>= lt!5881 0)))

(assert (=> d!16147 (= lt!5881 e!15861)))

(declare-fun c!6786 () Bool)

(assert (=> d!16147 (= c!6786 (or (is-Empty!78 (right!715 (right!715 res!5547))) (is-Single!67 (right!715 (right!715 res!5547)))))))

(assert (=> d!16147 (= (level!56 (right!715 (right!715 res!5547))) lt!5881)))

(declare-fun b!31126 () Bool)

(assert (=> b!31126 (= e!15861 0)))

(assert (= (and d!16147 c!6786) b!31126))

(assert (= (and d!16147 (not c!6786)) b!31127))

(assert (=> b!31127 m!33587))

(assert (=> b!31127 m!33585))

(assert (=> b!30912 d!16147))

(declare-fun b!31129 () Bool)

(declare-fun e!15862 () Int)

(declare-fun lt!5885 () Int)

(declare-fun lt!5883 () Int)

(assert (=> b!31129 (= e!15862 (+ 1 (ite (>= lt!5885 lt!5883) lt!5885 lt!5883)))))

(assert (=> b!31129 (= lt!5883 (level!56 (right!715 (left!712 (right!715 res!5547)))))))

(assert (=> b!31129 (= lt!5885 (level!56 (left!712 (left!712 (right!715 res!5547)))))))

(declare-fun d!16149 () Bool)

(declare-fun lt!5884 () Int)

(assert (=> d!16149 (>= lt!5884 0)))

(assert (=> d!16149 (= lt!5884 e!15862)))

(declare-fun c!6787 () Bool)

(assert (=> d!16149 (= c!6787 (or (is-Empty!78 (left!712 (right!715 res!5547))) (is-Single!67 (left!712 (right!715 res!5547)))))))

(assert (=> d!16149 (= (level!56 (left!712 (right!715 res!5547))) lt!5884)))

(declare-fun b!31128 () Bool)

(assert (=> b!31128 (= e!15862 0)))

(assert (= (and d!16149 c!6787) b!31128))

(assert (= (and d!16149 (not c!6787)) b!31129))

(declare-fun m!33593 () Bool)

(assert (=> b!31129 m!33593))

(declare-fun m!33595 () Bool)

(assert (=> b!31129 m!33595))

(assert (=> b!30912 d!16149))

(declare-fun d!16151 () Bool)

(declare-fun lt!5888 () Int)

(assert (=> d!16151 (>= lt!5888 0)))

(declare-fun e!15865 () Int)

(assert (=> d!16151 (= lt!5888 e!15865)))

(declare-fun c!6790 () Bool)

(assert (=> d!16151 (= c!6790 (is-Nil!359 lt!5872))))

(assert (=> d!16151 (= (size!277 lt!5872) lt!5888)))

(declare-fun b!31134 () Bool)

(assert (=> b!31134 (= e!15865 0)))

(declare-fun b!31135 () Bool)

(assert (=> b!31135 (= e!15865 (+ 1 (size!277 (t!4378 lt!5872))))))

(assert (= (and d!16151 c!6790) b!31134))

(assert (= (and d!16151 (not c!6790)) b!31135))

(declare-fun m!33597 () Bool)

(assert (=> b!31135 m!33597))

(assert (=> d!16111 d!16151))

(declare-fun d!16153 () Bool)

(declare-fun lt!5891 () Int)

(assert (=> d!16153 (>= lt!5891 0)))

(declare-fun e!15870 () Int)

(assert (=> d!16153 (= lt!5891 e!15870)))

(declare-fun c!6795 () Bool)

(assert (=> d!16153 (= c!6795 (is-Empty!78 res!5547))))

(assert (=> d!16153 (= (size!278 res!5547) lt!5891)))

(declare-fun b!31145 () Bool)

(declare-fun e!15871 () Int)

(assert (=> b!31145 (= e!15870 e!15871)))

(declare-fun c!6796 () Bool)

(assert (=> b!31145 (= c!6796 (is-Single!67 res!5547))))

(declare-fun b!31147 () Bool)

(assert (=> b!31147 (= e!15871 (+ (size!278 (left!712 res!5547)) (size!278 (right!715 res!5547))))))

(declare-fun b!31146 () Bool)

(assert (=> b!31146 (= e!15871 1)))

(declare-fun b!31144 () Bool)

(assert (=> b!31144 (= e!15870 0)))

(assert (= (and b!31145 c!6796) b!31146))

(assert (= (and b!31145 (not c!6796)) b!31147))

(assert (= (and d!16153 c!6795) b!31144))

(assert (= (and d!16153 (not c!6795)) b!31145))

(declare-fun m!33599 () Bool)

(assert (=> b!31147 m!33599))

(declare-fun m!33601 () Bool)

(assert (=> b!31147 m!33601))

(assert (=> d!16111 d!16153))

(declare-fun b!31151 () Bool)

(declare-fun e!15872 () Bool)

(assert (=> b!31151 (= e!15872 (concInv!62 (right!715 (left!712 lt!5777))))))

(declare-fun b!31148 () Bool)

(declare-fun e!15873 () Bool)

(assert (=> b!31148 (= e!15873 e!15872)))

(declare-fun res!14342 () Bool)

(assert (=> b!31148 (=> (not res!14342) (not e!15872))))

(assert (=> b!31148 (= res!14342 (not (isEmpty!324 (left!712 (left!712 lt!5777)))))))

(declare-fun b!31149 () Bool)

(declare-fun res!14344 () Bool)

(assert (=> b!31149 (=> (not res!14344) (not e!15872))))

(assert (=> b!31149 (= res!14344 (not (isEmpty!324 (right!715 (left!712 lt!5777)))))))

(declare-fun b!31150 () Bool)

(declare-fun res!14341 () Bool)

(assert (=> b!31150 (=> (not res!14341) (not e!15872))))

(assert (=> b!31150 (= res!14341 (concInv!62 (left!712 (left!712 lt!5777))))))

(declare-fun d!16155 () Bool)

(declare-fun res!14343 () Bool)

(assert (=> d!16155 (=> res!14343 e!15873)))

(assert (=> d!16155 (= res!14343 (not (is-CC!67 (left!712 lt!5777))))))

(assert (=> d!16155 (= (concInv!62 (left!712 lt!5777)) e!15873)))

(assert (= (and d!16155 (not res!14343)) b!31148))

(assert (= (and b!31148 res!14342) b!31149))

(assert (= (and b!31149 res!14344) b!31150))

(assert (= (and b!31150 res!14341) b!31151))

(declare-fun m!33603 () Bool)

(assert (=> b!31151 m!33603))

(declare-fun m!33605 () Bool)

(assert (=> b!31148 m!33605))

(declare-fun m!33607 () Bool)

(assert (=> b!31149 m!33607))

(declare-fun m!33609 () Bool)

(assert (=> b!31150 m!33609))

(assert (=> b!31076 d!16155))

(declare-fun d!16157 () Bool)

(declare-fun lt!5892 () Int)

(assert (=> d!16157 (>= lt!5892 0)))

(declare-fun e!15874 () Int)

(assert (=> d!16157 (= lt!5892 e!15874)))

(declare-fun c!6797 () Bool)

(assert (=> d!16157 (= c!6797 (is-Nil!359 lt!5875))))

(assert (=> d!16157 (= (size!277 lt!5875) lt!5892)))

(declare-fun b!31152 () Bool)

(assert (=> b!31152 (= e!15874 0)))

(declare-fun b!31153 () Bool)

(assert (=> b!31153 (= e!15874 (+ 1 (size!277 (t!4378 lt!5875))))))

(assert (= (and d!16157 c!6797) b!31152))

(assert (= (and d!16157 (not c!6797)) b!31153))

(declare-fun m!33611 () Bool)

(assert (=> b!31153 m!33611))

(assert (=> b!31054 d!16157))

(declare-fun d!16159 () Bool)

(declare-fun lt!5893 () Int)

(assert (=> d!16159 (>= lt!5893 0)))

(declare-fun e!15875 () Int)

(assert (=> d!16159 (= lt!5893 e!15875)))

(declare-fun c!6798 () Bool)

(assert (=> d!16159 (= c!6798 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16159 (= (size!277 (toList!119 xs!533)) lt!5893)))

(declare-fun b!31154 () Bool)

(assert (=> b!31154 (= e!15875 0)))

(declare-fun b!31155 () Bool)

(assert (=> b!31155 (= e!15875 (+ 1 (size!277 (t!4378 (toList!119 xs!533)))))))

(assert (= (and d!16159 c!6798) b!31154))

(assert (= (and d!16159 (not c!6798)) b!31155))

(declare-fun m!33613 () Bool)

(assert (=> b!31155 m!33613))

(assert (=> b!31054 d!16159))

(declare-fun d!16161 () Bool)

(declare-fun lt!5894 () Int)

(assert (=> d!16161 (>= lt!5894 0)))

(declare-fun e!15876 () Int)

(assert (=> d!16161 (= lt!5894 e!15876)))

(declare-fun c!6799 () Bool)

(assert (=> d!16161 (= c!6799 (is-Nil!359 (toList!119 (left!712 (left!712 ys!77)))))))

(assert (=> d!16161 (= (size!277 (toList!119 (left!712 (left!712 ys!77)))) lt!5894)))

(declare-fun b!31156 () Bool)

(assert (=> b!31156 (= e!15876 0)))

(declare-fun b!31157 () Bool)

(assert (=> b!31157 (= e!15876 (+ 1 (size!277 (t!4378 (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16161 c!6799) b!31156))

(assert (= (and d!16161 (not c!6799)) b!31157))

(declare-fun m!33615 () Bool)

(assert (=> b!31157 m!33615))

(assert (=> b!31054 d!16161))

(declare-fun b!31158 () Bool)

(declare-fun e!15885 () Bool)

(declare-fun e!15878 () Bool)

(assert (=> b!31158 (= e!15885 e!15878)))

(declare-fun res!14347 () Bool)

(assert (=> b!31158 (=> (not res!14347) (not e!15878))))

(assert (=> b!31158 (= res!14347 (appendAssoc!12 (toList!119 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (toList!119 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (toList!119 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun b!31159 () Bool)

(declare-fun e!15884 () Bool)

(assert (=> b!31159 (= e!15884 (appendAssoc!12 (toList!119 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (toList!119 (left!712 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (++!44 (toList!119 (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (toList!119 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun b!31160 () Bool)

(declare-fun e!15881 () Bool)

(declare-fun e!15877 () Bool)

(assert (=> b!31160 (= e!15881 e!15877)))

(declare-fun res!14353 () Bool)

(assert (=> b!31160 (=> (not res!14353) (not e!15877))))

(assert (=> b!31160 (= res!14353 (appendAssoc!12 (toList!119 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (toList!119 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (toList!119 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun d!16163 () Bool)

(declare-fun e!15879 () Bool)

(assert (=> d!16163 e!15879))

(declare-fun res!14352 () Bool)

(assert (=> d!16163 (=> (not res!14352) (not e!15879))))

(assert (=> d!16163 (= res!14352 e!15881)))

(declare-fun res!14345 () Bool)

(assert (=> d!16163 (=> res!14345 e!15881)))

(assert (=> d!16163 (= res!14345 (not (is-CC!67 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> d!16163 (= (appendAssocInst!16 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) true)))

(declare-fun b!31161 () Bool)

(declare-fun e!15880 () Bool)

(assert (=> b!31161 (= e!15877 e!15880)))

(declare-fun res!14350 () Bool)

(assert (=> b!31161 (=> res!14350 e!15880)))

(assert (=> b!31161 (= res!14350 (not (is-CC!67 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))))

(declare-fun b!31162 () Bool)

(declare-fun e!15882 () Bool)

(declare-fun e!15883 () Bool)

(assert (=> b!31162 (= e!15882 e!15883)))

(declare-fun res!14348 () Bool)

(assert (=> b!31162 (=> (not res!14348) (not e!15883))))

(assert (=> b!31162 (= res!14348 (appendAssoc!12 (toList!119 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (toList!119 (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) (toList!119 (right!715 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(declare-fun b!31163 () Bool)

(assert (=> b!31163 (= e!15880 e!15884)))

(declare-fun res!14346 () Bool)

(assert (=> b!31163 (=> (not res!14346) (not e!15884))))

(assert (=> b!31163 (= res!14346 (appendAssoc!12 (toList!119 (left!712 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (toList!119 (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (toList!119 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun b!31164 () Bool)

(assert (=> b!31164 (= e!15883 (appendAssoc!12 (++!44 (toList!119 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (toList!119 (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))) (toList!119 (right!715 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) (toList!119 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun b!31165 () Bool)

(assert (=> b!31165 (= e!15878 e!15882)))

(declare-fun res!14351 () Bool)

(assert (=> b!31165 (=> res!14351 e!15882)))

(assert (=> b!31165 (= res!14351 (not (is-CC!67 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun b!31166 () Bool)

(assert (=> b!31166 (= e!15879 e!15885)))

(declare-fun res!14349 () Bool)

(assert (=> b!31166 (=> res!14349 e!15885)))

(assert (=> b!31166 (= res!14349 (not (is-CC!67 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(assert (= (and d!16163 (not res!14345)) b!31160))

(assert (= (and b!31160 res!14353) b!31161))

(assert (= (and b!31161 (not res!14350)) b!31163))

(assert (= (and b!31163 res!14346) b!31159))

(assert (= (and d!16163 res!14352) b!31166))

(assert (= (and b!31166 (not res!14349)) b!31158))

(assert (= (and b!31158 res!14347) b!31165))

(assert (= (and b!31165 (not res!14351)) b!31162))

(assert (= (and b!31162 res!14348) b!31164))

(declare-fun m!33617 () Bool)

(assert (=> b!31162 m!33617))

(declare-fun m!33619 () Bool)

(assert (=> b!31162 m!33619))

(declare-fun m!33621 () Bool)

(assert (=> b!31162 m!33621))

(assert (=> b!31162 m!33617))

(assert (=> b!31162 m!33619))

(assert (=> b!31162 m!33621))

(declare-fun m!33623 () Bool)

(assert (=> b!31162 m!33623))

(declare-fun m!33625 () Bool)

(assert (=> b!31163 m!33625))

(declare-fun m!33627 () Bool)

(assert (=> b!31163 m!33627))

(declare-fun m!33629 () Bool)

(assert (=> b!31163 m!33629))

(assert (=> b!31163 m!33625))

(assert (=> b!31163 m!33627))

(assert (=> b!31163 m!33629))

(declare-fun m!33631 () Bool)

(assert (=> b!31163 m!33631))

(assert (=> b!31159 m!33625))

(assert (=> b!31159 m!33629))

(declare-fun m!33633 () Bool)

(assert (=> b!31159 m!33633))

(assert (=> b!31159 m!33633))

(assert (=> b!31159 m!33625))

(declare-fun m!33635 () Bool)

(assert (=> b!31159 m!33635))

(declare-fun m!33637 () Bool)

(assert (=> b!31159 m!33637))

(assert (=> b!31159 m!33627))

(assert (=> b!31159 m!33627))

(assert (=> b!31159 m!33629))

(assert (=> b!31159 m!33635))

(assert (=> b!31160 m!33633))

(declare-fun m!33639 () Bool)

(assert (=> b!31160 m!33639))

(assert (=> b!31160 m!33629))

(assert (=> b!31160 m!33633))

(assert (=> b!31160 m!33639))

(assert (=> b!31160 m!33629))

(declare-fun m!33641 () Bool)

(assert (=> b!31160 m!33641))

(assert (=> b!31164 m!33621))

(assert (=> b!31164 m!33619))

(declare-fun m!33643 () Bool)

(assert (=> b!31164 m!33643))

(assert (=> b!31164 m!33621))

(declare-fun m!33645 () Bool)

(assert (=> b!31164 m!33645))

(declare-fun m!33647 () Bool)

(assert (=> b!31164 m!33647))

(assert (=> b!31164 m!33617))

(assert (=> b!31164 m!33645))

(assert (=> b!31164 m!33617))

(assert (=> b!31164 m!33619))

(assert (=> b!31164 m!33643))

(assert (=> b!31158 m!33617))

(declare-fun m!33649 () Bool)

(assert (=> b!31158 m!33649))

(assert (=> b!31158 m!33645))

(assert (=> b!31158 m!33617))

(assert (=> b!31158 m!33649))

(assert (=> b!31158 m!33645))

(declare-fun m!33651 () Bool)

(assert (=> b!31158 m!33651))

(assert (=> b!30890 d!16163))

(declare-fun b!31170 () Bool)

(declare-fun e!15886 () Bool)

(assert (=> b!31170 (= e!15886 (concInv!62 (right!715 (left!712 (right!715 res!5547)))))))

(declare-fun b!31167 () Bool)

(declare-fun e!15887 () Bool)

(assert (=> b!31167 (= e!15887 e!15886)))

(declare-fun res!14355 () Bool)

(assert (=> b!31167 (=> (not res!14355) (not e!15886))))

(assert (=> b!31167 (= res!14355 (not (isEmpty!324 (left!712 (left!712 (right!715 res!5547))))))))

(declare-fun b!31168 () Bool)

(declare-fun res!14357 () Bool)

(assert (=> b!31168 (=> (not res!14357) (not e!15886))))

(assert (=> b!31168 (= res!14357 (not (isEmpty!324 (right!715 (left!712 (right!715 res!5547))))))))

(declare-fun b!31169 () Bool)

(declare-fun res!14354 () Bool)

(assert (=> b!31169 (=> (not res!14354) (not e!15886))))

(assert (=> b!31169 (= res!14354 (concInv!62 (left!712 (left!712 (right!715 res!5547)))))))

(declare-fun d!16165 () Bool)

(declare-fun res!14356 () Bool)

(assert (=> d!16165 (=> res!14356 e!15887)))

(assert (=> d!16165 (= res!14356 (not (is-CC!67 (left!712 (right!715 res!5547)))))))

(assert (=> d!16165 (= (concInv!62 (left!712 (right!715 res!5547))) e!15887)))

(assert (= (and d!16165 (not res!14356)) b!31167))

(assert (= (and b!31167 res!14355) b!31168))

(assert (= (and b!31168 res!14357) b!31169))

(assert (= (and b!31169 res!14354) b!31170))

(declare-fun m!33653 () Bool)

(assert (=> b!31170 m!33653))

(declare-fun m!33655 () Bool)

(assert (=> b!31167 m!33655))

(declare-fun m!33657 () Bool)

(assert (=> b!31168 m!33657))

(declare-fun m!33659 () Bool)

(assert (=> b!31169 m!33659))

(assert (=> b!30907 d!16165))

(declare-fun d!16167 () Bool)

(declare-fun e!15889 () Bool)

(assert (=> d!16167 e!15889))

(declare-fun res!14359 () Bool)

(assert (=> d!16167 (=> (not res!14359) (not e!15889))))

(declare-fun lt!5895 () List!364)

(assert (=> d!16167 (= res!14359 (= (content!74 lt!5895) (union (content!74 (t!4378 (toList!119 xs!533))) (content!74 (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun e!15888 () List!364)

(assert (=> d!16167 (= lt!5895 e!15888)))

(declare-fun c!6800 () Bool)

(assert (=> d!16167 (= c!6800 (is-Nil!359 (t!4378 (toList!119 xs!533))))))

(assert (=> d!16167 (= (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 ys!77)))) lt!5895)))

(declare-fun b!31172 () Bool)

(assert (=> b!31172 (= e!15888 (Cons!358 (h!275 (t!4378 (toList!119 xs!533))) (++!44 (t!4378 (t!4378 (toList!119 xs!533))) (toList!119 (left!712 (left!712 ys!77))))))))

(declare-fun b!31171 () Bool)

(assert (=> b!31171 (= e!15888 (toList!119 (left!712 (left!712 ys!77))))))

(declare-fun b!31173 () Bool)

(declare-fun res!14358 () Bool)

(assert (=> b!31173 (=> (not res!14358) (not e!15889))))

(assert (=> b!31173 (= res!14358 (= (size!277 lt!5895) (+ (size!277 (t!4378 (toList!119 xs!533))) (size!277 (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31174 () Bool)

(assert (=> b!31174 (= e!15889 (or (not (= (toList!119 (left!712 (left!712 ys!77))) Nil!359)) (= lt!5895 (t!4378 (toList!119 xs!533)))))))

(assert (= (and d!16167 c!6800) b!31171))

(assert (= (and d!16167 (not c!6800)) b!31172))

(assert (= (and d!16167 res!14359) b!31173))

(assert (= (and b!31173 res!14358) b!31174))

(declare-fun m!33661 () Bool)

(assert (=> d!16167 m!33661))

(declare-fun m!33663 () Bool)

(assert (=> d!16167 m!33663))

(assert (=> d!16167 m!33083))

(assert (=> d!16167 m!33523))

(assert (=> b!31172 m!33083))

(declare-fun m!33665 () Bool)

(assert (=> b!31172 m!33665))

(declare-fun m!33667 () Bool)

(assert (=> b!31173 m!33667))

(assert (=> b!31173 m!33613))

(assert (=> b!31173 m!33083))

(assert (=> b!31173 m!33529))

(assert (=> b!31053 d!16167))

(declare-fun b!31176 () Bool)

(declare-fun e!15890 () Int)

(declare-fun lt!5898 () Int)

(declare-fun lt!5896 () Int)

(assert (=> b!31176 (= e!15890 (+ 1 (ite (>= lt!5898 lt!5896) lt!5898 lt!5896)))))

(assert (=> b!31176 (= lt!5896 (level!56 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(assert (=> b!31176 (= lt!5898 (level!56 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun d!16169 () Bool)

(declare-fun lt!5897 () Int)

(assert (=> d!16169 (>= lt!5897 0)))

(assert (=> d!16169 (= lt!5897 e!15890)))

(declare-fun c!6801 () Bool)

(assert (=> d!16169 (= c!6801 (or (is-Empty!78 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (is-Single!67 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(assert (=> d!16169 (= (level!56 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) lt!5897)))

(declare-fun b!31175 () Bool)

(assert (=> b!31175 (= e!15890 0)))

(assert (= (and d!16169 c!6801) b!31175))

(assert (= (and d!16169 (not c!6801)) b!31176))

(declare-fun m!33669 () Bool)

(assert (=> b!31176 m!33669))

(declare-fun m!33671 () Bool)

(assert (=> b!31176 m!33671))

(assert (=> d!16025 d!16169))

(declare-fun b!31178 () Bool)

(declare-fun e!15891 () Int)

(declare-fun lt!5901 () Int)

(declare-fun lt!5899 () Int)

(assert (=> b!31178 (= e!15891 (+ 1 (ite (>= lt!5901 lt!5899) lt!5901 lt!5899)))))

(assert (=> b!31178 (= lt!5899 (level!56 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> b!31178 (= lt!5901 (level!56 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun d!16171 () Bool)

(declare-fun lt!5900 () Int)

(assert (=> d!16171 (>= lt!5900 0)))

(assert (=> d!16171 (= lt!5900 e!15891)))

(declare-fun c!6802 () Bool)

(assert (=> d!16171 (= c!6802 (or (is-Empty!78 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (is-Single!67 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> d!16171 (= (level!56 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) lt!5900)))

(declare-fun b!31177 () Bool)

(assert (=> b!31177 (= e!15891 0)))

(assert (= (and d!16171 c!6802) b!31177))

(assert (= (and d!16171 (not c!6802)) b!31178))

(declare-fun m!33673 () Bool)

(assert (=> b!31178 m!33673))

(declare-fun m!33675 () Bool)

(assert (=> b!31178 m!33675))

(assert (=> d!16025 d!16171))

(declare-fun b!31182 () Bool)

(declare-fun e!15892 () Bool)

(assert (=> b!31182 (= e!15892 (concInv!62 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun b!31179 () Bool)

(declare-fun e!15893 () Bool)

(assert (=> b!31179 (= e!15893 e!15892)))

(declare-fun res!14361 () Bool)

(assert (=> b!31179 (=> (not res!14361) (not e!15892))))

(assert (=> b!31179 (= res!14361 (not (isEmpty!324 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))))

(declare-fun b!31180 () Bool)

(declare-fun res!14363 () Bool)

(assert (=> b!31180 (=> (not res!14363) (not e!15892))))

(assert (=> b!31180 (= res!14363 (not (isEmpty!324 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))))

(declare-fun b!31181 () Bool)

(declare-fun res!14360 () Bool)

(assert (=> b!31181 (=> (not res!14360) (not e!15892))))

(assert (=> b!31181 (= res!14360 (concInv!62 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun d!16173 () Bool)

(declare-fun res!14362 () Bool)

(assert (=> d!16173 (=> res!14362 e!15893)))

(assert (=> d!16173 (= res!14362 (not (is-CC!67 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> d!16173 (= (concInv!62 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) e!15893)))

(assert (= (and d!16173 (not res!14362)) b!31179))

(assert (= (and b!31179 res!14361) b!31180))

(assert (= (and b!31180 res!14363) b!31181))

(assert (= (and b!31181 res!14360) b!31182))

(declare-fun m!33677 () Bool)

(assert (=> b!31182 m!33677))

(declare-fun m!33679 () Bool)

(assert (=> b!31179 m!33679))

(declare-fun m!33681 () Bool)

(assert (=> b!31180 m!33681))

(declare-fun m!33683 () Bool)

(assert (=> b!31181 m!33683))

(assert (=> d!16025 d!16173))

(declare-fun b!31184 () Bool)

(declare-fun res!14365 () Bool)

(declare-fun e!15895 () Bool)

(assert (=> b!31184 (=> (not res!14365) (not e!15895))))

(assert (=> b!31184 (= res!14365 (<= (- (level!56 (left!712 (right!715 (left!712 ys!77)))) (level!56 (right!715 (right!715 (left!712 ys!77))))) 1))))

(declare-fun b!31186 () Bool)

(assert (=> b!31186 (= e!15895 (balanced!63 (right!715 (right!715 (left!712 ys!77)))))))

(declare-fun b!31185 () Bool)

(declare-fun res!14367 () Bool)

(assert (=> b!31185 (=> (not res!14367) (not e!15895))))

(assert (=> b!31185 (= res!14367 (balanced!63 (left!712 (right!715 (left!712 ys!77)))))))

(declare-fun d!16175 () Bool)

(declare-fun res!14364 () Bool)

(declare-fun e!15894 () Bool)

(assert (=> d!16175 (=> res!14364 e!15894)))

(assert (=> d!16175 (= res!14364 (not (is-CC!67 (right!715 (left!712 ys!77)))))))

(assert (=> d!16175 (= (balanced!63 (right!715 (left!712 ys!77))) e!15894)))

(declare-fun b!31183 () Bool)

(assert (=> b!31183 (= e!15894 e!15895)))

(declare-fun res!14366 () Bool)

(assert (=> b!31183 (=> (not res!14366) (not e!15895))))

(assert (=> b!31183 (= res!14366 (>= (- (level!56 (left!712 (right!715 (left!712 ys!77)))) (level!56 (right!715 (right!715 (left!712 ys!77))))) (- 1)))))

(assert (= (and d!16175 (not res!14364)) b!31183))

(assert (= (and b!31183 res!14366) b!31184))

(assert (= (and b!31184 res!14365) b!31185))

(assert (= (and b!31185 res!14367) b!31186))

(assert (=> b!31184 m!33211))

(assert (=> b!31184 m!33209))

(declare-fun m!33685 () Bool)

(assert (=> b!31186 m!33685))

(declare-fun m!33687 () Bool)

(assert (=> b!31185 m!33687))

(assert (=> b!31183 m!33211))

(assert (=> b!31183 m!33209))

(assert (=> b!31003 d!16175))

(declare-fun b!31188 () Bool)

(declare-fun e!15896 () Int)

(declare-fun lt!5904 () Int)

(declare-fun lt!5902 () Int)

(assert (=> b!31188 (= e!15896 (+ 1 (ite (>= lt!5904 lt!5902) lt!5904 lt!5902)))))

(assert (=> b!31188 (= lt!5902 (level!56 (right!715 (ite lt!5808 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(assert (=> b!31188 (= lt!5904 (level!56 (left!712 (ite lt!5808 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(declare-fun d!16177 () Bool)

(declare-fun lt!5903 () Int)

(assert (=> d!16177 (>= lt!5903 0)))

(assert (=> d!16177 (= lt!5903 e!15896)))

(declare-fun c!6803 () Bool)

(assert (=> d!16177 (= c!6803 (or (is-Empty!78 (ite lt!5808 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) (is-Single!67 (ite lt!5808 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(assert (=> d!16177 (= (level!56 (ite lt!5808 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) lt!5903)))

(declare-fun b!31187 () Bool)

(assert (=> b!31187 (= e!15896 0)))

(assert (= (and d!16177 c!6803) b!31187))

(assert (= (and d!16177 (not c!6803)) b!31188))

(declare-fun m!33689 () Bool)

(assert (=> b!31188 m!33689))

(declare-fun m!33691 () Bool)

(assert (=> b!31188 m!33691))

(assert (=> b!30893 d!16177))

(declare-fun b!31190 () Bool)

(declare-fun e!15897 () Int)

(declare-fun lt!5907 () Int)

(declare-fun lt!5905 () Int)

(assert (=> b!31190 (= e!15897 (+ 1 (ite (>= lt!5907 lt!5905) lt!5907 lt!5905)))))

(assert (=> b!31190 (= lt!5905 (level!56 (right!715 (ite lt!5808 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(assert (=> b!31190 (= lt!5907 (level!56 (left!712 (ite lt!5808 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(declare-fun d!16179 () Bool)

(declare-fun lt!5906 () Int)

(assert (=> d!16179 (>= lt!5906 0)))

(assert (=> d!16179 (= lt!5906 e!15897)))

(declare-fun c!6804 () Bool)

(assert (=> d!16179 (= c!6804 (or (is-Empty!78 (ite lt!5808 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) (is-Single!67 (ite lt!5808 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))

(assert (=> d!16179 (= (level!56 (ite lt!5808 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) lt!5906)))

(declare-fun b!31189 () Bool)

(assert (=> b!31189 (= e!15897 0)))

(assert (= (and d!16179 c!6804) b!31189))

(assert (= (and d!16179 (not c!6804)) b!31190))

(declare-fun m!33693 () Bool)

(assert (=> b!31190 m!33693))

(declare-fun m!33695 () Bool)

(assert (=> b!31190 m!33695))

(assert (=> b!30893 d!16179))

(declare-fun d!16181 () Bool)

(declare-fun e!15899 () Bool)

(assert (=> d!16181 e!15899))

(declare-fun res!14369 () Bool)

(assert (=> d!16181 (=> (not res!14369) (not e!15899))))

(declare-fun lt!5908 () List!364)

(assert (=> d!16181 (= res!14369 (= (content!74 lt!5908) (union (content!74 (toList!119 (left!712 (left!712 (left!712 ys!77))))) (content!74 (toList!119 (right!715 (left!712 (left!712 ys!77))))))))))

(declare-fun e!15898 () List!364)

(assert (=> d!16181 (= lt!5908 e!15898)))

(declare-fun c!6805 () Bool)

(assert (=> d!16181 (= c!6805 (is-Nil!359 (toList!119 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16181 (= (++!44 (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) lt!5908)))

(declare-fun b!31192 () Bool)

(assert (=> b!31192 (= e!15898 (Cons!358 (h!275 (toList!119 (left!712 (left!712 (left!712 ys!77))))) (++!44 (t!4378 (toList!119 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31191 () Bool)

(assert (=> b!31191 (= e!15898 (toList!119 (right!715 (left!712 (left!712 ys!77)))))))

(declare-fun b!31193 () Bool)

(declare-fun res!14368 () Bool)

(assert (=> b!31193 (=> (not res!14368) (not e!15899))))

(assert (=> b!31193 (= res!14368 (= (size!277 lt!5908) (+ (size!277 (toList!119 (left!712 (left!712 (left!712 ys!77))))) (size!277 (toList!119 (right!715 (left!712 (left!712 ys!77))))))))))

(declare-fun b!31194 () Bool)

(assert (=> b!31194 (= e!15899 (or (not (= (toList!119 (right!715 (left!712 (left!712 ys!77)))) Nil!359)) (= lt!5908 (toList!119 (left!712 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16181 c!6805) b!31191))

(assert (= (and d!16181 (not c!6805)) b!31192))

(assert (= (and d!16181 res!14369) b!31193))

(assert (= (and b!31193 res!14368) b!31194))

(declare-fun m!33697 () Bool)

(assert (=> d!16181 m!33697))

(assert (=> d!16181 m!33383))

(declare-fun m!33699 () Bool)

(assert (=> d!16181 m!33699))

(assert (=> d!16181 m!33385))

(declare-fun m!33701 () Bool)

(assert (=> d!16181 m!33701))

(assert (=> b!31192 m!33385))

(declare-fun m!33703 () Bool)

(assert (=> b!31192 m!33703))

(declare-fun m!33705 () Bool)

(assert (=> b!31193 m!33705))

(assert (=> b!31193 m!33383))

(declare-fun m!33707 () Bool)

(assert (=> b!31193 m!33707))

(assert (=> b!31193 m!33385))

(declare-fun m!33709 () Bool)

(assert (=> b!31193 m!33709))

(assert (=> b!30986 d!16181))

(declare-fun b!31195 () Bool)

(declare-fun e!15900 () List!364)

(assert (=> b!31195 (= e!15900 Nil!359)))

(declare-fun b!31197 () Bool)

(declare-fun e!15901 () List!364)

(assert (=> b!31197 (= e!15901 (Cons!358 (x!8961 (left!712 (left!712 (left!712 ys!77)))) Nil!359))))

(declare-fun b!31198 () Bool)

(assert (=> b!31198 (= e!15901 (++!44 (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16183 () Bool)

(declare-fun lt!5909 () List!364)

(assert (=> d!16183 (= (size!277 lt!5909) (size!278 (left!712 (left!712 (left!712 ys!77)))))))

(assert (=> d!16183 (= lt!5909 e!15900)))

(declare-fun c!6806 () Bool)

(assert (=> d!16183 (= c!6806 (is-Empty!78 (left!712 (left!712 (left!712 ys!77)))))))

(assert (=> d!16183 (= (toList!119 (left!712 (left!712 (left!712 ys!77)))) lt!5909)))

(declare-fun b!31196 () Bool)

(assert (=> b!31196 (= e!15900 e!15901)))

(declare-fun c!6807 () Bool)

(assert (=> b!31196 (= c!6807 (is-Single!67 (left!712 (left!712 (left!712 ys!77)))))))

(assert (= (and b!31196 c!6807) b!31197))

(assert (= (and b!31196 (not c!6807)) b!31198))

(assert (= (and d!16183 c!6806) b!31195))

(assert (= (and d!16183 (not c!6806)) b!31196))

(assert (=> b!31198 m!33403))

(assert (=> b!31198 m!33405))

(assert (=> b!31198 m!33403))

(assert (=> b!31198 m!33405))

(declare-fun m!33711 () Bool)

(assert (=> b!31198 m!33711))

(declare-fun m!33713 () Bool)

(assert (=> d!16183 m!33713))

(declare-fun m!33715 () Bool)

(assert (=> d!16183 m!33715))

(assert (=> b!30986 d!16183))

(declare-fun b!31199 () Bool)

(declare-fun e!15902 () List!364)

(assert (=> b!31199 (= e!15902 Nil!359)))

(declare-fun b!31201 () Bool)

(declare-fun e!15903 () List!364)

(assert (=> b!31201 (= e!15903 (Cons!358 (x!8961 (right!715 (left!712 (left!712 ys!77)))) Nil!359))))

(declare-fun b!31202 () Bool)

(assert (=> b!31202 (= e!15903 (++!44 (toList!119 (left!712 (right!715 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (right!715 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16185 () Bool)

(declare-fun lt!5910 () List!364)

(assert (=> d!16185 (= (size!277 lt!5910) (size!278 (right!715 (left!712 (left!712 ys!77)))))))

(assert (=> d!16185 (= lt!5910 e!15902)))

(declare-fun c!6808 () Bool)

(assert (=> d!16185 (= c!6808 (is-Empty!78 (right!715 (left!712 (left!712 ys!77)))))))

(assert (=> d!16185 (= (toList!119 (right!715 (left!712 (left!712 ys!77)))) lt!5910)))

(declare-fun b!31200 () Bool)

(assert (=> b!31200 (= e!15902 e!15903)))

(declare-fun c!6809 () Bool)

(assert (=> b!31200 (= c!6809 (is-Single!67 (right!715 (left!712 (left!712 ys!77)))))))

(assert (= (and b!31200 c!6809) b!31201))

(assert (= (and b!31200 (not c!6809)) b!31202))

(assert (= (and d!16185 c!6808) b!31199))

(assert (= (and d!16185 (not c!6808)) b!31200))

(declare-fun m!33717 () Bool)

(assert (=> b!31202 m!33717))

(declare-fun m!33719 () Bool)

(assert (=> b!31202 m!33719))

(assert (=> b!31202 m!33717))

(assert (=> b!31202 m!33719))

(declare-fun m!33721 () Bool)

(assert (=> b!31202 m!33721))

(declare-fun m!33723 () Bool)

(assert (=> d!16185 m!33723))

(declare-fun m!33725 () Bool)

(assert (=> d!16185 m!33725))

(assert (=> b!30986 d!16185))

(declare-fun b!31204 () Bool)

(declare-fun e!15904 () Int)

(declare-fun lt!5913 () Int)

(declare-fun lt!5911 () Int)

(assert (=> b!31204 (= e!15904 (+ 1 (ite (>= lt!5913 lt!5911) lt!5913 lt!5911)))))

(assert (=> b!31204 (= lt!5911 (level!56 (right!715 (right!715 lt!5785))))))

(assert (=> b!31204 (= lt!5913 (level!56 (left!712 (right!715 lt!5785))))))

(declare-fun d!16187 () Bool)

(declare-fun lt!5912 () Int)

(assert (=> d!16187 (>= lt!5912 0)))

(assert (=> d!16187 (= lt!5912 e!15904)))

(declare-fun c!6810 () Bool)

(assert (=> d!16187 (= c!6810 (or (is-Empty!78 (right!715 lt!5785)) (is-Single!67 (right!715 lt!5785))))))

(assert (=> d!16187 (= (level!56 (right!715 lt!5785)) lt!5912)))

(declare-fun b!31203 () Bool)

(assert (=> b!31203 (= e!15904 0)))

(assert (= (and d!16187 c!6810) b!31203))

(assert (= (and d!16187 (not c!6810)) b!31204))

(declare-fun m!33727 () Bool)

(assert (=> b!31204 m!33727))

(declare-fun m!33729 () Bool)

(assert (=> b!31204 m!33729))

(assert (=> b!30900 d!16187))

(declare-fun b!31206 () Bool)

(declare-fun e!15905 () Int)

(declare-fun lt!5916 () Int)

(declare-fun lt!5914 () Int)

(assert (=> b!31206 (= e!15905 (+ 1 (ite (>= lt!5916 lt!5914) lt!5916 lt!5914)))))

(assert (=> b!31206 (= lt!5914 (level!56 (right!715 (left!712 lt!5785))))))

(assert (=> b!31206 (= lt!5916 (level!56 (left!712 (left!712 lt!5785))))))

(declare-fun d!16189 () Bool)

(declare-fun lt!5915 () Int)

(assert (=> d!16189 (>= lt!5915 0)))

(assert (=> d!16189 (= lt!5915 e!15905)))

(declare-fun c!6811 () Bool)

(assert (=> d!16189 (= c!6811 (or (is-Empty!78 (left!712 lt!5785)) (is-Single!67 (left!712 lt!5785))))))

(assert (=> d!16189 (= (level!56 (left!712 lt!5785)) lt!5915)))

(declare-fun b!31205 () Bool)

(assert (=> b!31205 (= e!15905 0)))

(assert (= (and d!16189 c!6811) b!31205))

(assert (= (and d!16189 (not c!6811)) b!31206))

(declare-fun m!33731 () Bool)

(assert (=> b!31206 m!33731))

(declare-fun m!33733 () Bool)

(assert (=> b!31206 m!33733))

(assert (=> b!30900 d!16189))

(declare-fun b!31208 () Bool)

(declare-fun res!14371 () Bool)

(declare-fun e!15907 () Bool)

(assert (=> b!31208 (=> (not res!14371) (not e!15907))))

(assert (=> b!31208 (= res!14371 (<= (- (level!56 (left!712 (left!712 (left!712 (left!712 ys!77))))) (level!56 (right!715 (left!712 (left!712 (left!712 ys!77)))))) 1))))

(declare-fun b!31210 () Bool)

(assert (=> b!31210 (= e!15907 (balanced!63 (right!715 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun b!31209 () Bool)

(declare-fun res!14373 () Bool)

(assert (=> b!31209 (=> (not res!14373) (not e!15907))))

(assert (=> b!31209 (= res!14373 (balanced!63 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun d!16191 () Bool)

(declare-fun res!14370 () Bool)

(declare-fun e!15906 () Bool)

(assert (=> d!16191 (=> res!14370 e!15906)))

(assert (=> d!16191 (= res!14370 (not (is-CC!67 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16191 (= (balanced!63 (left!712 (left!712 (left!712 ys!77)))) e!15906)))

(declare-fun b!31207 () Bool)

(assert (=> b!31207 (= e!15906 e!15907)))

(declare-fun res!14372 () Bool)

(assert (=> b!31207 (=> (not res!14372) (not e!15907))))

(assert (=> b!31207 (= res!14372 (>= (- (level!56 (left!712 (left!712 (left!712 (left!712 ys!77))))) (level!56 (right!715 (left!712 (left!712 (left!712 ys!77)))))) (- 1)))))

(assert (= (and d!16191 (not res!14370)) b!31207))

(assert (= (and b!31207 res!14372) b!31208))

(assert (= (and b!31208 res!14371) b!31209))

(assert (= (and b!31209 res!14373) b!31210))

(declare-fun m!33735 () Bool)

(assert (=> b!31208 m!33735))

(declare-fun m!33737 () Bool)

(assert (=> b!31208 m!33737))

(declare-fun m!33739 () Bool)

(assert (=> b!31210 m!33739))

(declare-fun m!33741 () Bool)

(assert (=> b!31209 m!33741))

(assert (=> b!31207 m!33735))

(assert (=> b!31207 m!33737))

(assert (=> b!31080 d!16191))

(declare-fun d!16193 () Bool)

(assert (=> d!16193 (= (isEmpty!324 (right!715 (left!712 res!5547))) (= (right!715 (left!712 res!5547)) Empty!78))))

(assert (=> b!31017 d!16193))

(declare-fun b!31212 () Bool)

(declare-fun res!14375 () Bool)

(declare-fun e!15909 () Bool)

(assert (=> b!31212 (=> (not res!14375) (not e!15909))))

(assert (=> b!31212 (= res!14375 (<= (- (level!56 (left!712 (right!715 (left!712 res!5547)))) (level!56 (right!715 (right!715 (left!712 res!5547))))) 1))))

(declare-fun b!31214 () Bool)

(assert (=> b!31214 (= e!15909 (balanced!63 (right!715 (right!715 (left!712 res!5547)))))))

(declare-fun b!31213 () Bool)

(declare-fun res!14377 () Bool)

(assert (=> b!31213 (=> (not res!14377) (not e!15909))))

(assert (=> b!31213 (= res!14377 (balanced!63 (left!712 (right!715 (left!712 res!5547)))))))

(declare-fun d!16195 () Bool)

(declare-fun res!14374 () Bool)

(declare-fun e!15908 () Bool)

(assert (=> d!16195 (=> res!14374 e!15908)))

(assert (=> d!16195 (= res!14374 (not (is-CC!67 (right!715 (left!712 res!5547)))))))

(assert (=> d!16195 (= (balanced!63 (right!715 (left!712 res!5547))) e!15908)))

(declare-fun b!31211 () Bool)

(assert (=> b!31211 (= e!15908 e!15909)))

(declare-fun res!14376 () Bool)

(assert (=> b!31211 (=> (not res!14376) (not e!15909))))

(assert (=> b!31211 (= res!14376 (>= (- (level!56 (left!712 (right!715 (left!712 res!5547)))) (level!56 (right!715 (right!715 (left!712 res!5547))))) (- 1)))))

(assert (= (and d!16195 (not res!14374)) b!31211))

(assert (= (and b!31211 res!14376) b!31212))

(assert (= (and b!31212 res!14375) b!31213))

(assert (= (and b!31213 res!14377) b!31214))

(declare-fun m!33743 () Bool)

(assert (=> b!31212 m!33743))

(declare-fun m!33745 () Bool)

(assert (=> b!31212 m!33745))

(declare-fun m!33747 () Bool)

(assert (=> b!31214 m!33747))

(declare-fun m!33749 () Bool)

(assert (=> b!31213 m!33749))

(assert (=> b!31211 m!33743))

(assert (=> b!31211 m!33745))

(assert (=> b!31031 d!16195))

(declare-fun d!16197 () Bool)

(assert (=> d!16197 (= (isEmpty!324 (left!712 (right!715 ys!77))) (= (left!712 (right!715 ys!77)) Empty!78))))

(assert (=> b!31012 d!16197))

(declare-fun b!31216 () Bool)

(declare-fun res!14379 () Bool)

(declare-fun e!15911 () Bool)

(assert (=> b!31216 (=> (not res!14379) (not e!15911))))

(assert (=> b!31216 (= res!14379 (<= (- (level!56 (left!712 (left!712 (right!715 xs!533)))) (level!56 (right!715 (left!712 (right!715 xs!533))))) 1))))

(declare-fun b!31218 () Bool)

(assert (=> b!31218 (= e!15911 (balanced!63 (right!715 (left!712 (right!715 xs!533)))))))

(declare-fun b!31217 () Bool)

(declare-fun res!14381 () Bool)

(assert (=> b!31217 (=> (not res!14381) (not e!15911))))

(assert (=> b!31217 (= res!14381 (balanced!63 (left!712 (left!712 (right!715 xs!533)))))))

(declare-fun d!16199 () Bool)

(declare-fun res!14378 () Bool)

(declare-fun e!15910 () Bool)

(assert (=> d!16199 (=> res!14378 e!15910)))

(assert (=> d!16199 (= res!14378 (not (is-CC!67 (left!712 (right!715 xs!533)))))))

(assert (=> d!16199 (= (balanced!63 (left!712 (right!715 xs!533))) e!15910)))

(declare-fun b!31215 () Bool)

(assert (=> b!31215 (= e!15910 e!15911)))

(declare-fun res!14380 () Bool)

(assert (=> b!31215 (=> (not res!14380) (not e!15911))))

(assert (=> b!31215 (= res!14380 (>= (- (level!56 (left!712 (left!712 (right!715 xs!533)))) (level!56 (right!715 (left!712 (right!715 xs!533))))) (- 1)))))

(assert (= (and d!16199 (not res!14378)) b!31215))

(assert (= (and b!31215 res!14380) b!31216))

(assert (= (and b!31216 res!14379) b!31217))

(assert (= (and b!31217 res!14381) b!31218))

(declare-fun m!33751 () Bool)

(assert (=> b!31216 m!33751))

(declare-fun m!33753 () Bool)

(assert (=> b!31216 m!33753))

(declare-fun m!33755 () Bool)

(assert (=> b!31218 m!33755))

(declare-fun m!33757 () Bool)

(assert (=> b!31217 m!33757))

(assert (=> b!31215 m!33751))

(assert (=> b!31215 m!33753))

(assert (=> b!30874 d!16199))

(declare-fun b!31220 () Bool)

(declare-fun res!14383 () Bool)

(declare-fun e!15913 () Bool)

(assert (=> b!31220 (=> (not res!14383) (not e!15913))))

(assert (=> b!31220 (= res!14383 (<= (- (level!56 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (level!56 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) 1))))

(declare-fun b!31222 () Bool)

(assert (=> b!31222 (= e!15913 (balanced!63 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun b!31221 () Bool)

(declare-fun res!14385 () Bool)

(assert (=> b!31221 (=> (not res!14385) (not e!15913))))

(assert (=> b!31221 (= res!14385 (balanced!63 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun d!16201 () Bool)

(declare-fun res!14382 () Bool)

(declare-fun e!15912 () Bool)

(assert (=> d!16201 (=> res!14382 e!15912)))

(assert (=> d!16201 (= res!14382 (not (is-CC!67 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> d!16201 (= (balanced!63 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) e!15912)))

(declare-fun b!31219 () Bool)

(assert (=> b!31219 (= e!15912 e!15913)))

(declare-fun res!14384 () Bool)

(assert (=> b!31219 (=> (not res!14384) (not e!15913))))

(assert (=> b!31219 (= res!14384 (>= (- (level!56 (left!712 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (level!56 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (- 1)))))

(assert (= (and d!16201 (not res!14382)) b!31219))

(assert (= (and b!31219 res!14384) b!31220))

(assert (= (and b!31220 res!14383) b!31221))

(assert (= (and b!31221 res!14385) b!31222))

(assert (=> b!31220 m!33675))

(assert (=> b!31220 m!33673))

(declare-fun m!33759 () Bool)

(assert (=> b!31222 m!33759))

(declare-fun m!33761 () Bool)

(assert (=> b!31221 m!33761))

(assert (=> b!31219 m!33675))

(assert (=> b!31219 m!33673))

(assert (=> b!30895 d!16201))

(declare-fun b!31226 () Bool)

(declare-fun e!15914 () Bool)

(assert (=> b!31226 (= e!15914 (concInv!62 (right!715 (left!712 (right!715 ys!77)))))))

(declare-fun b!31223 () Bool)

(declare-fun e!15915 () Bool)

(assert (=> b!31223 (= e!15915 e!15914)))

(declare-fun res!14387 () Bool)

(assert (=> b!31223 (=> (not res!14387) (not e!15914))))

(assert (=> b!31223 (= res!14387 (not (isEmpty!324 (left!712 (left!712 (right!715 ys!77))))))))

(declare-fun b!31224 () Bool)

(declare-fun res!14389 () Bool)

(assert (=> b!31224 (=> (not res!14389) (not e!15914))))

(assert (=> b!31224 (= res!14389 (not (isEmpty!324 (right!715 (left!712 (right!715 ys!77))))))))

(declare-fun b!31225 () Bool)

(declare-fun res!14386 () Bool)

(assert (=> b!31225 (=> (not res!14386) (not e!15914))))

(assert (=> b!31225 (= res!14386 (concInv!62 (left!712 (left!712 (right!715 ys!77)))))))

(declare-fun d!16203 () Bool)

(declare-fun res!14388 () Bool)

(assert (=> d!16203 (=> res!14388 e!15915)))

(assert (=> d!16203 (= res!14388 (not (is-CC!67 (left!712 (right!715 ys!77)))))))

(assert (=> d!16203 (= (concInv!62 (left!712 (right!715 ys!77))) e!15915)))

(assert (= (and d!16203 (not res!14388)) b!31223))

(assert (= (and b!31223 res!14387) b!31224))

(assert (= (and b!31224 res!14389) b!31225))

(assert (= (and b!31225 res!14386) b!31226))

(declare-fun m!33763 () Bool)

(assert (=> b!31226 m!33763))

(declare-fun m!33765 () Bool)

(assert (=> b!31223 m!33765))

(declare-fun m!33767 () Bool)

(assert (=> b!31224 m!33767))

(declare-fun m!33769 () Bool)

(assert (=> b!31225 m!33769))

(assert (=> b!31014 d!16203))

(declare-fun b!31228 () Bool)

(declare-fun e!15916 () Int)

(declare-fun lt!5919 () Int)

(declare-fun lt!5917 () Int)

(assert (=> b!31228 (= e!15916 (+ 1 (ite (>= lt!5919 lt!5917) lt!5919 lt!5917)))))

(assert (=> b!31228 (= lt!5917 (level!56 (right!715 (right!715 (left!712 (left!712 ys!77))))))))

(assert (=> b!31228 (= lt!5919 (level!56 (left!712 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun d!16205 () Bool)

(declare-fun lt!5918 () Int)

(assert (=> d!16205 (>= lt!5918 0)))

(assert (=> d!16205 (= lt!5918 e!15916)))

(declare-fun c!6812 () Bool)

(assert (=> d!16205 (= c!6812 (or (is-Empty!78 (right!715 (left!712 (left!712 ys!77)))) (is-Single!67 (right!715 (left!712 (left!712 ys!77))))))))

(assert (=> d!16205 (= (level!56 (right!715 (left!712 (left!712 ys!77)))) lt!5918)))

(declare-fun b!31227 () Bool)

(assert (=> b!31227 (= e!15916 0)))

(assert (= (and d!16205 c!6812) b!31227))

(assert (= (and d!16205 (not c!6812)) b!31228))

(declare-fun m!33771 () Bool)

(assert (=> b!31228 m!33771))

(declare-fun m!33773 () Bool)

(assert (=> b!31228 m!33773))

(assert (=> b!30871 d!16205))

(declare-fun b!31230 () Bool)

(declare-fun e!15917 () Int)

(declare-fun lt!5922 () Int)

(declare-fun lt!5920 () Int)

(assert (=> b!31230 (= e!15917 (+ 1 (ite (>= lt!5922 lt!5920) lt!5922 lt!5920)))))

(assert (=> b!31230 (= lt!5920 (level!56 (right!715 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> b!31230 (= lt!5922 (level!56 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun d!16207 () Bool)

(declare-fun lt!5921 () Int)

(assert (=> d!16207 (>= lt!5921 0)))

(assert (=> d!16207 (= lt!5921 e!15917)))

(declare-fun c!6813 () Bool)

(assert (=> d!16207 (= c!6813 (or (is-Empty!78 (left!712 (left!712 (left!712 ys!77)))) (is-Single!67 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16207 (= (level!56 (left!712 (left!712 (left!712 ys!77)))) lt!5921)))

(declare-fun b!31229 () Bool)

(assert (=> b!31229 (= e!15917 0)))

(assert (= (and d!16207 c!6813) b!31229))

(assert (= (and d!16207 (not c!6813)) b!31230))

(assert (=> b!31230 m!33737))

(assert (=> b!31230 m!33735))

(assert (=> b!30871 d!16207))

(declare-fun b!31232 () Bool)

(declare-fun e!15918 () Int)

(declare-fun lt!5925 () Int)

(declare-fun lt!5923 () Int)

(assert (=> b!31232 (= e!15918 (+ 1 (ite (>= lt!5925 lt!5923) lt!5925 lt!5923)))))

(assert (=> b!31232 (= lt!5923 (level!56 (right!715 (left!712 (left!712 xs!533)))))))

(assert (=> b!31232 (= lt!5925 (level!56 (left!712 (left!712 (left!712 xs!533)))))))

(declare-fun d!16209 () Bool)

(declare-fun lt!5924 () Int)

(assert (=> d!16209 (>= lt!5924 0)))

(assert (=> d!16209 (= lt!5924 e!15918)))

(declare-fun c!6814 () Bool)

(assert (=> d!16209 (= c!6814 (or (is-Empty!78 (left!712 (left!712 xs!533))) (is-Single!67 (left!712 (left!712 xs!533)))))))

(assert (=> d!16209 (= (level!56 (left!712 (left!712 xs!533))) lt!5924)))

(declare-fun b!31231 () Bool)

(assert (=> b!31231 (= e!15918 0)))

(assert (= (and d!16209 c!6814) b!31231))

(assert (= (and d!16209 (not c!6814)) b!31232))

(declare-fun m!33775 () Bool)

(assert (=> b!31232 m!33775))

(declare-fun m!33777 () Bool)

(assert (=> b!31232 m!33777))

(assert (=> b!30974 d!16209))

(declare-fun b!31234 () Bool)

(declare-fun e!15919 () Int)

(declare-fun lt!5928 () Int)

(declare-fun lt!5926 () Int)

(assert (=> b!31234 (= e!15919 (+ 1 (ite (>= lt!5928 lt!5926) lt!5928 lt!5926)))))

(assert (=> b!31234 (= lt!5926 (level!56 (right!715 (right!715 (left!712 xs!533)))))))

(assert (=> b!31234 (= lt!5928 (level!56 (left!712 (right!715 (left!712 xs!533)))))))

(declare-fun d!16211 () Bool)

(declare-fun lt!5927 () Int)

(assert (=> d!16211 (>= lt!5927 0)))

(assert (=> d!16211 (= lt!5927 e!15919)))

(declare-fun c!6815 () Bool)

(assert (=> d!16211 (= c!6815 (or (is-Empty!78 (right!715 (left!712 xs!533))) (is-Single!67 (right!715 (left!712 xs!533)))))))

(assert (=> d!16211 (= (level!56 (right!715 (left!712 xs!533))) lt!5927)))

(declare-fun b!31233 () Bool)

(assert (=> b!31233 (= e!15919 0)))

(assert (= (and d!16211 c!6815) b!31233))

(assert (= (and d!16211 (not c!6815)) b!31234))

(declare-fun m!33779 () Bool)

(assert (=> b!31234 m!33779))

(declare-fun m!33781 () Bool)

(assert (=> b!31234 m!33781))

(assert (=> b!30974 d!16211))

(declare-fun d!16213 () Bool)

(declare-fun c!6818 () Bool)

(assert (=> d!16213 (= c!6818 (is-Nil!359 lt!5875))))

(declare-fun e!15922 () (Set T!1837))

(assert (=> d!16213 (= (content!74 lt!5875) e!15922)))

(declare-fun b!31239 () Bool)

(assert (=> b!31239 (= e!15922 (as emptyset (Set T!1837)))))

(declare-fun b!31240 () Bool)

(assert (=> b!31240 (= e!15922 (union (insert (h!275 lt!5875) (as emptyset (Set T!1837))) (content!74 (t!4378 lt!5875))))))

(assert (= (and d!16213 c!6818) b!31239))

(assert (= (and d!16213 (not c!6818)) b!31240))

(declare-fun m!33783 () Bool)

(assert (=> b!31240 m!33783))

(declare-fun m!33785 () Bool)

(assert (=> b!31240 m!33785))

(assert (=> d!16119 d!16213))

(declare-fun d!16215 () Bool)

(declare-fun c!6819 () Bool)

(assert (=> d!16215 (= c!6819 (is-Nil!359 (toList!119 xs!533)))))

(declare-fun e!15923 () (Set T!1837))

(assert (=> d!16215 (= (content!74 (toList!119 xs!533)) e!15923)))

(declare-fun b!31241 () Bool)

(assert (=> b!31241 (= e!15923 (as emptyset (Set T!1837)))))

(declare-fun b!31242 () Bool)

(assert (=> b!31242 (= e!15923 (union (insert (h!275 (toList!119 xs!533)) (as emptyset (Set T!1837))) (content!74 (t!4378 (toList!119 xs!533)))))))

(assert (= (and d!16215 c!6819) b!31241))

(assert (= (and d!16215 (not c!6819)) b!31242))

(declare-fun m!33787 () Bool)

(assert (=> b!31242 m!33787))

(assert (=> b!31242 m!33663))

(assert (=> d!16119 d!16215))

(declare-fun d!16217 () Bool)

(declare-fun c!6820 () Bool)

(assert (=> d!16217 (= c!6820 (is-Nil!359 (toList!119 (left!712 (left!712 ys!77)))))))

(declare-fun e!15924 () (Set T!1837))

(assert (=> d!16217 (= (content!74 (toList!119 (left!712 (left!712 ys!77)))) e!15924)))

(declare-fun b!31243 () Bool)

(assert (=> b!31243 (= e!15924 (as emptyset (Set T!1837)))))

(declare-fun b!31244 () Bool)

(assert (=> b!31244 (= e!15924 (union (insert (h!275 (toList!119 (left!712 (left!712 ys!77)))) (as emptyset (Set T!1837))) (content!74 (t!4378 (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16217 c!6820) b!31243))

(assert (= (and d!16217 (not c!6820)) b!31244))

(declare-fun m!33789 () Bool)

(assert (=> b!31244 m!33789))

(declare-fun m!33791 () Bool)

(assert (=> b!31244 m!33791))

(assert (=> d!16119 d!16217))

(declare-fun b!31246 () Bool)

(declare-fun e!15925 () Int)

(declare-fun lt!5931 () Int)

(declare-fun lt!5929 () Int)

(assert (=> b!31246 (= e!15925 (+ 1 (ite (>= lt!5931 lt!5929) lt!5931 lt!5929)))))

(assert (=> b!31246 (= lt!5929 (level!56 (right!715 (right!715 (right!715 (left!712 ys!77))))))))

(assert (=> b!31246 (= lt!5931 (level!56 (left!712 (right!715 (right!715 (left!712 ys!77))))))))

(declare-fun d!16219 () Bool)

(declare-fun lt!5930 () Int)

(assert (=> d!16219 (>= lt!5930 0)))

(assert (=> d!16219 (= lt!5930 e!15925)))

(declare-fun c!6821 () Bool)

(assert (=> d!16219 (= c!6821 (or (is-Empty!78 (right!715 (right!715 (left!712 ys!77)))) (is-Single!67 (right!715 (right!715 (left!712 ys!77))))))))

(assert (=> d!16219 (= (level!56 (right!715 (right!715 (left!712 ys!77)))) lt!5930)))

(declare-fun b!31245 () Bool)

(assert (=> b!31245 (= e!15925 0)))

(assert (= (and d!16219 c!6821) b!31245))

(assert (= (and d!16219 (not c!6821)) b!31246))

(declare-fun m!33793 () Bool)

(assert (=> b!31246 m!33793))

(declare-fun m!33795 () Bool)

(assert (=> b!31246 m!33795))

(assert (=> b!30877 d!16219))

(declare-fun b!31248 () Bool)

(declare-fun e!15926 () Int)

(declare-fun lt!5934 () Int)

(declare-fun lt!5932 () Int)

(assert (=> b!31248 (= e!15926 (+ 1 (ite (>= lt!5934 lt!5932) lt!5934 lt!5932)))))

(assert (=> b!31248 (= lt!5932 (level!56 (right!715 (left!712 (right!715 (left!712 ys!77))))))))

(assert (=> b!31248 (= lt!5934 (level!56 (left!712 (left!712 (right!715 (left!712 ys!77))))))))

(declare-fun d!16221 () Bool)

(declare-fun lt!5933 () Int)

(assert (=> d!16221 (>= lt!5933 0)))

(assert (=> d!16221 (= lt!5933 e!15926)))

(declare-fun c!6822 () Bool)

(assert (=> d!16221 (= c!6822 (or (is-Empty!78 (left!712 (right!715 (left!712 ys!77)))) (is-Single!67 (left!712 (right!715 (left!712 ys!77))))))))

(assert (=> d!16221 (= (level!56 (left!712 (right!715 (left!712 ys!77)))) lt!5933)))

(declare-fun b!31247 () Bool)

(assert (=> b!31247 (= e!15926 0)))

(assert (= (and d!16221 c!6822) b!31247))

(assert (= (and d!16221 (not c!6822)) b!31248))

(declare-fun m!33797 () Bool)

(assert (=> b!31248 m!33797))

(declare-fun m!33799 () Bool)

(assert (=> b!31248 m!33799))

(assert (=> b!30877 d!16221))

(assert (=> b!31001 d!16017))

(assert (=> b!31001 d!16023))

(declare-fun b!31249 () Bool)

(declare-fun e!15927 () Bool)

(assert (=> b!31249 (= e!15927 (= (++!44 (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (++!44 (t!4378 (toList!119 xs!533)) (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun lt!5935 () Bool)

(assert (=> b!31249 (= lt!5935 (appendAssoc!12 (t!4378 (t!4378 (toList!119 xs!533))) (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))

(declare-fun d!16223 () Bool)

(assert (=> d!16223 e!15927))

(declare-fun c!6823 () Bool)

(assert (=> d!16223 (= c!6823 (is-Cons!358 (t!4378 (toList!119 xs!533))))))

(assert (=> d!16223 (= (appendAssoc!12 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))) true)))

(declare-fun b!31250 () Bool)

(assert (=> b!31250 (= e!15927 (= (++!44 (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (++!44 (t!4378 (toList!119 xs!533)) (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))))

(assert (= (and d!16223 c!6823) b!31249))

(assert (= (and d!16223 (not c!6823)) b!31250))

(assert (=> b!31249 m!33083))

(assert (=> b!31249 m!33085))

(declare-fun m!33801 () Bool)

(assert (=> b!31249 m!33801))

(assert (=> b!31249 m!33371))

(declare-fun m!33803 () Bool)

(assert (=> b!31249 m!33803))

(assert (=> b!31249 m!33083))

(assert (=> b!31249 m!33525))

(assert (=> b!31249 m!33083))

(assert (=> b!31249 m!33085))

(assert (=> b!31249 m!33371))

(assert (=> b!31249 m!33525))

(assert (=> b!31249 m!33085))

(declare-fun m!33805 () Bool)

(assert (=> b!31249 m!33805))

(assert (=> b!31250 m!33083))

(assert (=> b!31250 m!33525))

(assert (=> b!31250 m!33525))

(assert (=> b!31250 m!33085))

(assert (=> b!31250 m!33805))

(assert (=> b!31250 m!33083))

(assert (=> b!31250 m!33085))

(assert (=> b!31250 m!33371))

(assert (=> b!31250 m!33371))

(assert (=> b!31250 m!33803))

(assert (=> b!30977 d!16223))

(declare-fun d!16225 () Bool)

(declare-fun e!15929 () Bool)

(assert (=> d!16225 e!15929))

(declare-fun res!14391 () Bool)

(assert (=> d!16225 (=> (not res!14391) (not e!15929))))

(declare-fun lt!5936 () List!364)

(assert (=> d!16225 (= res!14391 (= (content!74 lt!5936) (union (content!74 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (content!74 (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun e!15928 () List!364)

(assert (=> d!16225 (= lt!5936 e!15928)))

(declare-fun c!6824 () Bool)

(assert (=> d!16225 (= c!6824 (is-Nil!359 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))))))

(assert (=> d!16225 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) lt!5936)))

(declare-fun b!31252 () Bool)

(assert (=> b!31252 (= e!15928 (Cons!358 (h!275 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 ys!77))))))))

(declare-fun b!31251 () Bool)

(assert (=> b!31251 (= e!15928 (toList!119 (right!715 (left!712 ys!77))))))

(declare-fun b!31253 () Bool)

(declare-fun res!14390 () Bool)

(assert (=> b!31253 (=> (not res!14390) (not e!15929))))

(assert (=> b!31253 (= res!14390 (= (size!277 lt!5936) (+ (size!277 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (size!277 (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun b!31254 () Bool)

(assert (=> b!31254 (= e!15929 (or (not (= (toList!119 (right!715 (left!712 ys!77))) Nil!359)) (= lt!5936 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16225 c!6824) b!31251))

(assert (= (and d!16225 (not c!6824)) b!31252))

(assert (= (and d!16225 res!14391) b!31253))

(assert (= (and b!31253 res!14390) b!31254))

(declare-fun m!33807 () Bool)

(assert (=> d!16225 m!33807))

(assert (=> d!16225 m!33105))

(declare-fun m!33809 () Bool)

(assert (=> d!16225 m!33809))

(assert (=> d!16225 m!33085))

(declare-fun m!33811 () Bool)

(assert (=> d!16225 m!33811))

(assert (=> b!31252 m!33085))

(declare-fun m!33813 () Bool)

(assert (=> b!31252 m!33813))

(declare-fun m!33815 () Bool)

(assert (=> b!31253 m!33815))

(assert (=> b!31253 m!33105))

(declare-fun m!33817 () Bool)

(assert (=> b!31253 m!33817))

(assert (=> b!31253 m!33085))

(declare-fun m!33819 () Bool)

(assert (=> b!31253 m!33819))

(assert (=> b!30977 d!16225))

(declare-fun d!16227 () Bool)

(declare-fun e!15931 () Bool)

(assert (=> d!16227 e!15931))

(declare-fun res!14393 () Bool)

(assert (=> d!16227 (=> (not res!14393) (not e!15931))))

(declare-fun lt!5937 () List!364)

(assert (=> d!16227 (= res!14393 (= (content!74 lt!5937) (union (content!74 (toList!119 (left!712 (left!712 ys!77)))) (content!74 (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun e!15930 () List!364)

(assert (=> d!16227 (= lt!5937 e!15930)))

(declare-fun c!6825 () Bool)

(assert (=> d!16227 (= c!6825 (is-Nil!359 (toList!119 (left!712 (left!712 ys!77)))))))

(assert (=> d!16227 (= (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))) lt!5937)))

(declare-fun b!31256 () Bool)

(assert (=> b!31256 (= e!15930 (Cons!358 (h!275 (toList!119 (left!712 (left!712 ys!77)))) (++!44 (t!4378 (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))))))))

(declare-fun b!31255 () Bool)

(assert (=> b!31255 (= e!15930 (toList!119 (right!715 (left!712 ys!77))))))

(declare-fun b!31257 () Bool)

(declare-fun res!14392 () Bool)

(assert (=> b!31257 (=> (not res!14392) (not e!15931))))

(assert (=> b!31257 (= res!14392 (= (size!277 lt!5937) (+ (size!277 (toList!119 (left!712 (left!712 ys!77)))) (size!277 (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun b!31258 () Bool)

(assert (=> b!31258 (= e!15931 (or (not (= (toList!119 (right!715 (left!712 ys!77))) Nil!359)) (= lt!5937 (toList!119 (left!712 (left!712 ys!77))))))))

(assert (= (and d!16227 c!6825) b!31255))

(assert (= (and d!16227 (not c!6825)) b!31256))

(assert (= (and d!16227 res!14393) b!31257))

(assert (= (and b!31257 res!14392) b!31258))

(declare-fun m!33821 () Bool)

(assert (=> d!16227 m!33821))

(assert (=> d!16227 m!33083))

(assert (=> d!16227 m!33523))

(assert (=> d!16227 m!33085))

(assert (=> d!16227 m!33811))

(assert (=> b!31256 m!33085))

(declare-fun m!33823 () Bool)

(assert (=> b!31256 m!33823))

(declare-fun m!33825 () Bool)

(assert (=> b!31257 m!33825))

(assert (=> b!31257 m!33083))

(assert (=> b!31257 m!33529))

(assert (=> b!31257 m!33085))

(assert (=> b!31257 m!33819))

(assert (=> b!30977 d!16227))

(declare-fun d!16229 () Bool)

(declare-fun e!15933 () Bool)

(assert (=> d!16229 e!15933))

(declare-fun res!14395 () Bool)

(assert (=> d!16229 (=> (not res!14395) (not e!15933))))

(declare-fun lt!5938 () List!364)

(assert (=> d!16229 (= res!14395 (= (content!74 lt!5938) (union (content!74 (toList!119 xs!533)) (content!74 (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77))))))))))

(declare-fun e!15932 () List!364)

(assert (=> d!16229 (= lt!5938 e!15932)))

(declare-fun c!6826 () Bool)

(assert (=> d!16229 (= c!6826 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16229 (= (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77))))) lt!5938)))

(declare-fun b!31260 () Bool)

(assert (=> b!31260 (= e!15932 (Cons!358 (h!275 (toList!119 xs!533)) (++!44 (t!4378 (toList!119 xs!533)) (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))))

(declare-fun b!31259 () Bool)

(assert (=> b!31259 (= e!15932 (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))))))

(declare-fun b!31261 () Bool)

(declare-fun res!14394 () Bool)

(assert (=> b!31261 (=> (not res!14394) (not e!15933))))

(assert (=> b!31261 (= res!14394 (= (size!277 lt!5938) (+ (size!277 (toList!119 xs!533)) (size!277 (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77))))))))))

(declare-fun b!31262 () Bool)

(assert (=> b!31262 (= e!15933 (or (not (= (++!44 (toList!119 (left!712 (left!712 ys!77))) (toList!119 (right!715 (left!712 ys!77)))) Nil!359)) (= lt!5938 (toList!119 xs!533))))))

(assert (= (and d!16229 c!6826) b!31259))

(assert (= (and d!16229 (not c!6826)) b!31260))

(assert (= (and d!16229 res!14395) b!31261))

(assert (= (and b!31261 res!14394) b!31262))

(declare-fun m!33827 () Bool)

(assert (=> d!16229 m!33827))

(assert (=> d!16229 m!33075))

(assert (=> d!16229 m!33495))

(assert (=> d!16229 m!33371))

(declare-fun m!33829 () Bool)

(assert (=> d!16229 m!33829))

(assert (=> b!31260 m!33371))

(assert (=> b!31260 m!33803))

(declare-fun m!33831 () Bool)

(assert (=> b!31261 m!33831))

(assert (=> b!31261 m!33075))

(assert (=> b!31261 m!33501))

(assert (=> b!31261 m!33371))

(declare-fun m!33833 () Bool)

(assert (=> b!31261 m!33833))

(assert (=> b!30977 d!16229))

(assert (=> b!30977 d!16119))

(declare-fun b!31266 () Bool)

(declare-fun e!15934 () Bool)

(assert (=> b!31266 (= e!15934 (concInv!62 (right!715 (right!715 (left!712 ys!77)))))))

(declare-fun b!31263 () Bool)

(declare-fun e!15935 () Bool)

(assert (=> b!31263 (= e!15935 e!15934)))

(declare-fun res!14397 () Bool)

(assert (=> b!31263 (=> (not res!14397) (not e!15934))))

(assert (=> b!31263 (= res!14397 (not (isEmpty!324 (left!712 (right!715 (left!712 ys!77))))))))

(declare-fun b!31264 () Bool)

(declare-fun res!14399 () Bool)

(assert (=> b!31264 (=> (not res!14399) (not e!15934))))

(assert (=> b!31264 (= res!14399 (not (isEmpty!324 (right!715 (right!715 (left!712 ys!77))))))))

(declare-fun b!31265 () Bool)

(declare-fun res!14396 () Bool)

(assert (=> b!31265 (=> (not res!14396) (not e!15934))))

(assert (=> b!31265 (= res!14396 (concInv!62 (left!712 (right!715 (left!712 ys!77)))))))

(declare-fun d!16231 () Bool)

(declare-fun res!14398 () Bool)

(assert (=> d!16231 (=> res!14398 e!15935)))

(assert (=> d!16231 (= res!14398 (not (is-CC!67 (right!715 (left!712 ys!77)))))))

(assert (=> d!16231 (= (concInv!62 (right!715 (left!712 ys!77))) e!15935)))

(assert (= (and d!16231 (not res!14398)) b!31263))

(assert (= (and b!31263 res!14397) b!31264))

(assert (= (and b!31264 res!14399) b!31265))

(assert (= (and b!31265 res!14396) b!31266))

(declare-fun m!33835 () Bool)

(assert (=> b!31266 m!33835))

(declare-fun m!33837 () Bool)

(assert (=> b!31263 m!33837))

(declare-fun m!33839 () Bool)

(assert (=> b!31264 m!33839))

(declare-fun m!33841 () Bool)

(assert (=> b!31265 m!33841))

(assert (=> b!31027 d!16231))

(declare-fun d!16233 () Bool)

(declare-fun e!15937 () Bool)

(assert (=> d!16233 e!15937))

(declare-fun res!14401 () Bool)

(assert (=> d!16233 (=> (not res!14401) (not e!15937))))

(declare-fun lt!5939 () List!364)

(assert (=> d!16233 (= res!14401 (= (content!74 lt!5939) (union (content!74 (toList!119 (left!712 (left!712 (right!715 xs!533))))) (content!74 (toList!119 (right!715 (left!712 (right!715 xs!533))))))))))

(declare-fun e!15936 () List!364)

(assert (=> d!16233 (= lt!5939 e!15936)))

(declare-fun c!6827 () Bool)

(assert (=> d!16233 (= c!6827 (is-Nil!359 (toList!119 (left!712 (left!712 (right!715 xs!533))))))))

(assert (=> d!16233 (= (++!44 (toList!119 (left!712 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (left!712 (right!715 xs!533))))) lt!5939)))

(declare-fun b!31268 () Bool)

(assert (=> b!31268 (= e!15936 (Cons!358 (h!275 (toList!119 (left!712 (left!712 (right!715 xs!533))))) (++!44 (t!4378 (toList!119 (left!712 (left!712 (right!715 xs!533))))) (toList!119 (right!715 (left!712 (right!715 xs!533)))))))))

(declare-fun b!31267 () Bool)

(assert (=> b!31267 (= e!15936 (toList!119 (right!715 (left!712 (right!715 xs!533)))))))

(declare-fun b!31269 () Bool)

(declare-fun res!14400 () Bool)

(assert (=> b!31269 (=> (not res!14400) (not e!15937))))

(assert (=> b!31269 (= res!14400 (= (size!277 lt!5939) (+ (size!277 (toList!119 (left!712 (left!712 (right!715 xs!533))))) (size!277 (toList!119 (right!715 (left!712 (right!715 xs!533))))))))))

(declare-fun b!31270 () Bool)

(assert (=> b!31270 (= e!15937 (or (not (= (toList!119 (right!715 (left!712 (right!715 xs!533)))) Nil!359)) (= lt!5939 (toList!119 (left!712 (left!712 (right!715 xs!533)))))))))

(assert (= (and d!16233 c!6827) b!31267))

(assert (= (and d!16233 (not c!6827)) b!31268))

(assert (= (and d!16233 res!14401) b!31269))

(assert (= (and b!31269 res!14400) b!31270))

(declare-fun m!33843 () Bool)

(assert (=> d!16233 m!33843))

(assert (=> d!16233 m!33317))

(declare-fun m!33845 () Bool)

(assert (=> d!16233 m!33845))

(assert (=> d!16233 m!33319))

(declare-fun m!33847 () Bool)

(assert (=> d!16233 m!33847))

(assert (=> b!31268 m!33319))

(declare-fun m!33849 () Bool)

(assert (=> b!31268 m!33849))

(declare-fun m!33851 () Bool)

(assert (=> b!31269 m!33851))

(assert (=> b!31269 m!33317))

(declare-fun m!33853 () Bool)

(assert (=> b!31269 m!33853))

(assert (=> b!31269 m!33319))

(declare-fun m!33855 () Bool)

(assert (=> b!31269 m!33855))

(assert (=> b!30946 d!16233))

(declare-fun b!31271 () Bool)

(declare-fun e!15938 () List!364)

(assert (=> b!31271 (= e!15938 Nil!359)))

(declare-fun b!31273 () Bool)

(declare-fun e!15939 () List!364)

(assert (=> b!31273 (= e!15939 (Cons!358 (x!8961 (left!712 (left!712 (right!715 xs!533)))) Nil!359))))

(declare-fun b!31274 () Bool)

(assert (=> b!31274 (= e!15939 (++!44 (toList!119 (left!712 (left!712 (left!712 (right!715 xs!533))))) (toList!119 (right!715 (left!712 (left!712 (right!715 xs!533)))))))))

(declare-fun d!16235 () Bool)

(declare-fun lt!5940 () List!364)

(assert (=> d!16235 (= (size!277 lt!5940) (size!278 (left!712 (left!712 (right!715 xs!533)))))))

(assert (=> d!16235 (= lt!5940 e!15938)))

(declare-fun c!6828 () Bool)

(assert (=> d!16235 (= c!6828 (is-Empty!78 (left!712 (left!712 (right!715 xs!533)))))))

(assert (=> d!16235 (= (toList!119 (left!712 (left!712 (right!715 xs!533)))) lt!5940)))

(declare-fun b!31272 () Bool)

(assert (=> b!31272 (= e!15938 e!15939)))

(declare-fun c!6829 () Bool)

(assert (=> b!31272 (= c!6829 (is-Single!67 (left!712 (left!712 (right!715 xs!533)))))))

(assert (= (and b!31272 c!6829) b!31273))

(assert (= (and b!31272 (not c!6829)) b!31274))

(assert (= (and d!16235 c!6828) b!31271))

(assert (= (and d!16235 (not c!6828)) b!31272))

(declare-fun m!33857 () Bool)

(assert (=> b!31274 m!33857))

(declare-fun m!33859 () Bool)

(assert (=> b!31274 m!33859))

(assert (=> b!31274 m!33857))

(assert (=> b!31274 m!33859))

(declare-fun m!33861 () Bool)

(assert (=> b!31274 m!33861))

(declare-fun m!33863 () Bool)

(assert (=> d!16235 m!33863))

(declare-fun m!33865 () Bool)

(assert (=> d!16235 m!33865))

(assert (=> b!30946 d!16235))

(declare-fun b!31275 () Bool)

(declare-fun e!15940 () List!364)

(assert (=> b!31275 (= e!15940 Nil!359)))

(declare-fun b!31277 () Bool)

(declare-fun e!15941 () List!364)

(assert (=> b!31277 (= e!15941 (Cons!358 (x!8961 (right!715 (left!712 (right!715 xs!533)))) Nil!359))))

(declare-fun b!31278 () Bool)

(assert (=> b!31278 (= e!15941 (++!44 (toList!119 (left!712 (right!715 (left!712 (right!715 xs!533))))) (toList!119 (right!715 (right!715 (left!712 (right!715 xs!533)))))))))

(declare-fun d!16237 () Bool)

(declare-fun lt!5941 () List!364)

(assert (=> d!16237 (= (size!277 lt!5941) (size!278 (right!715 (left!712 (right!715 xs!533)))))))

(assert (=> d!16237 (= lt!5941 e!15940)))

(declare-fun c!6830 () Bool)

(assert (=> d!16237 (= c!6830 (is-Empty!78 (right!715 (left!712 (right!715 xs!533)))))))

(assert (=> d!16237 (= (toList!119 (right!715 (left!712 (right!715 xs!533)))) lt!5941)))

(declare-fun b!31276 () Bool)

(assert (=> b!31276 (= e!15940 e!15941)))

(declare-fun c!6831 () Bool)

(assert (=> b!31276 (= c!6831 (is-Single!67 (right!715 (left!712 (right!715 xs!533)))))))

(assert (= (and b!31276 c!6831) b!31277))

(assert (= (and b!31276 (not c!6831)) b!31278))

(assert (= (and d!16237 c!6830) b!31275))

(assert (= (and d!16237 (not c!6830)) b!31276))

(declare-fun m!33867 () Bool)

(assert (=> b!31278 m!33867))

(declare-fun m!33869 () Bool)

(assert (=> b!31278 m!33869))

(assert (=> b!31278 m!33867))

(assert (=> b!31278 m!33869))

(declare-fun m!33871 () Bool)

(assert (=> b!31278 m!33871))

(declare-fun m!33873 () Bool)

(assert (=> d!16237 m!33873))

(declare-fun m!33875 () Bool)

(assert (=> d!16237 m!33875))

(assert (=> b!30946 d!16237))

(declare-fun b!31280 () Bool)

(declare-fun e!15942 () Int)

(declare-fun lt!5944 () Int)

(declare-fun lt!5942 () Int)

(assert (=> b!31280 (= e!15942 (+ 1 (ite (>= lt!5944 lt!5942) lt!5944 lt!5942)))))

(assert (=> b!31280 (= lt!5942 (level!56 (right!715 (right!715 (right!715 xs!533)))))))

(assert (=> b!31280 (= lt!5944 (level!56 (left!712 (right!715 (right!715 xs!533)))))))

(declare-fun d!16239 () Bool)

(declare-fun lt!5943 () Int)

(assert (=> d!16239 (>= lt!5943 0)))

(assert (=> d!16239 (= lt!5943 e!15942)))

(declare-fun c!6832 () Bool)

(assert (=> d!16239 (= c!6832 (or (is-Empty!78 (right!715 (right!715 xs!533))) (is-Single!67 (right!715 (right!715 xs!533)))))))

(assert (=> d!16239 (= (level!56 (right!715 (right!715 xs!533))) lt!5943)))

(declare-fun b!31279 () Bool)

(assert (=> b!31279 (= e!15942 0)))

(assert (= (and d!16239 c!6832) b!31279))

(assert (= (and d!16239 (not c!6832)) b!31280))

(assert (=> b!31280 m!33579))

(assert (=> b!31280 m!33577))

(assert (=> b!30904 d!16239))

(declare-fun b!31282 () Bool)

(declare-fun e!15943 () Int)

(declare-fun lt!5947 () Int)

(declare-fun lt!5945 () Int)

(assert (=> b!31282 (= e!15943 (+ 1 (ite (>= lt!5947 lt!5945) lt!5947 lt!5945)))))

(assert (=> b!31282 (= lt!5945 (level!56 (right!715 (left!712 (right!715 xs!533)))))))

(assert (=> b!31282 (= lt!5947 (level!56 (left!712 (left!712 (right!715 xs!533)))))))

(declare-fun d!16241 () Bool)

(declare-fun lt!5946 () Int)

(assert (=> d!16241 (>= lt!5946 0)))

(assert (=> d!16241 (= lt!5946 e!15943)))

(declare-fun c!6833 () Bool)

(assert (=> d!16241 (= c!6833 (or (is-Empty!78 (left!712 (right!715 xs!533))) (is-Single!67 (left!712 (right!715 xs!533)))))))

(assert (=> d!16241 (= (level!56 (left!712 (right!715 xs!533))) lt!5946)))

(declare-fun b!31281 () Bool)

(assert (=> b!31281 (= e!15943 0)))

(assert (= (and d!16241 c!6833) b!31281))

(assert (= (and d!16241 (not c!6833)) b!31282))

(assert (=> b!31282 m!33753))

(assert (=> b!31282 m!33751))

(assert (=> b!30904 d!16241))

(declare-fun d!16243 () Bool)

(declare-fun lt!5948 () Int)

(assert (=> d!16243 (>= lt!5948 0)))

(declare-fun e!15944 () Int)

(assert (=> d!16243 (= lt!5948 e!15944)))

(declare-fun c!6834 () Bool)

(assert (=> d!16243 (= c!6834 (is-Nil!359 lt!5874))))

(assert (=> d!16243 (= (size!277 lt!5874) lt!5948)))

(declare-fun b!31283 () Bool)

(assert (=> b!31283 (= e!15944 0)))

(declare-fun b!31284 () Bool)

(assert (=> b!31284 (= e!15944 (+ 1 (size!277 (t!4378 lt!5874))))))

(assert (= (and d!16243 c!6834) b!31283))

(assert (= (and d!16243 (not c!6834)) b!31284))

(declare-fun m!33877 () Bool)

(assert (=> b!31284 m!33877))

(assert (=> d!16117 d!16243))

(declare-fun d!16245 () Bool)

(declare-fun lt!5949 () Int)

(assert (=> d!16245 (>= lt!5949 0)))

(declare-fun e!15945 () Int)

(assert (=> d!16245 (= lt!5949 e!15945)))

(declare-fun c!6835 () Bool)

(assert (=> d!16245 (= c!6835 (is-Empty!78 (right!715 ys!77)))))

(assert (=> d!16245 (= (size!278 (right!715 ys!77)) lt!5949)))

(declare-fun b!31286 () Bool)

(declare-fun e!15946 () Int)

(assert (=> b!31286 (= e!15945 e!15946)))

(declare-fun c!6836 () Bool)

(assert (=> b!31286 (= c!6836 (is-Single!67 (right!715 ys!77)))))

(declare-fun b!31288 () Bool)

(assert (=> b!31288 (= e!15946 (+ (size!278 (left!712 (right!715 ys!77))) (size!278 (right!715 (right!715 ys!77)))))))

(declare-fun b!31287 () Bool)

(assert (=> b!31287 (= e!15946 1)))

(declare-fun b!31285 () Bool)

(assert (=> b!31285 (= e!15945 0)))

(assert (= (and b!31286 c!6836) b!31287))

(assert (= (and b!31286 (not c!6836)) b!31288))

(assert (= (and d!16245 c!6835) b!31285))

(assert (= (and d!16245 (not c!6835)) b!31286))

(declare-fun m!33879 () Bool)

(assert (=> b!31288 m!33879))

(declare-fun m!33881 () Bool)

(assert (=> b!31288 m!33881))

(assert (=> d!16117 d!16245))

(declare-fun d!16247 () Bool)

(declare-fun e!15948 () Bool)

(assert (=> d!16247 e!15948))

(declare-fun res!14403 () Bool)

(assert (=> d!16247 (=> (not res!14403) (not e!15948))))

(declare-fun lt!5950 () List!364)

(assert (=> d!16247 (= res!14403 (= (content!74 lt!5950) (union (content!74 (toList!119 (left!712 (right!715 ys!77)))) (content!74 (toList!119 (right!715 (right!715 ys!77)))))))))

(declare-fun e!15947 () List!364)

(assert (=> d!16247 (= lt!5950 e!15947)))

(declare-fun c!6837 () Bool)

(assert (=> d!16247 (= c!6837 (is-Nil!359 (toList!119 (left!712 (right!715 ys!77)))))))

(assert (=> d!16247 (= (++!44 (toList!119 (left!712 (right!715 ys!77))) (toList!119 (right!715 (right!715 ys!77)))) lt!5950)))

(declare-fun b!31290 () Bool)

(assert (=> b!31290 (= e!15947 (Cons!358 (h!275 (toList!119 (left!712 (right!715 ys!77)))) (++!44 (t!4378 (toList!119 (left!712 (right!715 ys!77)))) (toList!119 (right!715 (right!715 ys!77))))))))

(declare-fun b!31289 () Bool)

(assert (=> b!31289 (= e!15947 (toList!119 (right!715 (right!715 ys!77))))))

(declare-fun b!31291 () Bool)

(declare-fun res!14402 () Bool)

(assert (=> b!31291 (=> (not res!14402) (not e!15948))))

(assert (=> b!31291 (= res!14402 (= (size!277 lt!5950) (+ (size!277 (toList!119 (left!712 (right!715 ys!77)))) (size!277 (toList!119 (right!715 (right!715 ys!77)))))))))

(declare-fun b!31292 () Bool)

(assert (=> b!31292 (= e!15948 (or (not (= (toList!119 (right!715 (right!715 ys!77))) Nil!359)) (= lt!5950 (toList!119 (left!712 (right!715 ys!77))))))))

(assert (= (and d!16247 c!6837) b!31289))

(assert (= (and d!16247 (not c!6837)) b!31290))

(assert (= (and d!16247 res!14403) b!31291))

(assert (= (and b!31291 res!14402) b!31292))

(declare-fun m!33883 () Bool)

(assert (=> d!16247 m!33883))

(assert (=> d!16247 m!33511))

(declare-fun m!33885 () Bool)

(assert (=> d!16247 m!33885))

(assert (=> d!16247 m!33513))

(declare-fun m!33887 () Bool)

(assert (=> d!16247 m!33887))

(assert (=> b!31290 m!33513))

(declare-fun m!33889 () Bool)

(assert (=> b!31290 m!33889))

(declare-fun m!33891 () Bool)

(assert (=> b!31291 m!33891))

(assert (=> b!31291 m!33511))

(declare-fun m!33893 () Bool)

(assert (=> b!31291 m!33893))

(assert (=> b!31291 m!33513))

(declare-fun m!33895 () Bool)

(assert (=> b!31291 m!33895))

(assert (=> b!31051 d!16247))

(declare-fun b!31293 () Bool)

(declare-fun e!15949 () List!364)

(assert (=> b!31293 (= e!15949 Nil!359)))

(declare-fun b!31295 () Bool)

(declare-fun e!15950 () List!364)

(assert (=> b!31295 (= e!15950 (Cons!358 (x!8961 (left!712 (right!715 ys!77))) Nil!359))))

(declare-fun b!31296 () Bool)

(assert (=> b!31296 (= e!15950 (++!44 (toList!119 (left!712 (left!712 (right!715 ys!77)))) (toList!119 (right!715 (left!712 (right!715 ys!77))))))))

(declare-fun d!16249 () Bool)

(declare-fun lt!5951 () List!364)

(assert (=> d!16249 (= (size!277 lt!5951) (size!278 (left!712 (right!715 ys!77))))))

(assert (=> d!16249 (= lt!5951 e!15949)))

(declare-fun c!6838 () Bool)

(assert (=> d!16249 (= c!6838 (is-Empty!78 (left!712 (right!715 ys!77))))))

(assert (=> d!16249 (= (toList!119 (left!712 (right!715 ys!77))) lt!5951)))

(declare-fun b!31294 () Bool)

(assert (=> b!31294 (= e!15949 e!15950)))

(declare-fun c!6839 () Bool)

(assert (=> b!31294 (= c!6839 (is-Single!67 (left!712 (right!715 ys!77))))))

(assert (= (and b!31294 c!6839) b!31295))

(assert (= (and b!31294 (not c!6839)) b!31296))

(assert (= (and d!16249 c!6838) b!31293))

(assert (= (and d!16249 (not c!6838)) b!31294))

(declare-fun m!33897 () Bool)

(assert (=> b!31296 m!33897))

(declare-fun m!33899 () Bool)

(assert (=> b!31296 m!33899))

(assert (=> b!31296 m!33897))

(assert (=> b!31296 m!33899))

(declare-fun m!33901 () Bool)

(assert (=> b!31296 m!33901))

(declare-fun m!33903 () Bool)

(assert (=> d!16249 m!33903))

(assert (=> d!16249 m!33879))

(assert (=> b!31051 d!16249))

(declare-fun b!31297 () Bool)

(declare-fun e!15951 () List!364)

(assert (=> b!31297 (= e!15951 Nil!359)))

(declare-fun b!31299 () Bool)

(declare-fun e!15952 () List!364)

(assert (=> b!31299 (= e!15952 (Cons!358 (x!8961 (right!715 (right!715 ys!77))) Nil!359))))

(declare-fun b!31300 () Bool)

(assert (=> b!31300 (= e!15952 (++!44 (toList!119 (left!712 (right!715 (right!715 ys!77)))) (toList!119 (right!715 (right!715 (right!715 ys!77))))))))

(declare-fun d!16251 () Bool)

(declare-fun lt!5952 () List!364)

(assert (=> d!16251 (= (size!277 lt!5952) (size!278 (right!715 (right!715 ys!77))))))

(assert (=> d!16251 (= lt!5952 e!15951)))

(declare-fun c!6840 () Bool)

(assert (=> d!16251 (= c!6840 (is-Empty!78 (right!715 (right!715 ys!77))))))

(assert (=> d!16251 (= (toList!119 (right!715 (right!715 ys!77))) lt!5952)))

(declare-fun b!31298 () Bool)

(assert (=> b!31298 (= e!15951 e!15952)))

(declare-fun c!6841 () Bool)

(assert (=> b!31298 (= c!6841 (is-Single!67 (right!715 (right!715 ys!77))))))

(assert (= (and b!31298 c!6841) b!31299))

(assert (= (and b!31298 (not c!6841)) b!31300))

(assert (= (and d!16251 c!6840) b!31297))

(assert (= (and d!16251 (not c!6840)) b!31298))

(declare-fun m!33905 () Bool)

(assert (=> b!31300 m!33905))

(declare-fun m!33907 () Bool)

(assert (=> b!31300 m!33907))

(assert (=> b!31300 m!33905))

(assert (=> b!31300 m!33907))

(declare-fun m!33909 () Bool)

(assert (=> b!31300 m!33909))

(declare-fun m!33911 () Bool)

(assert (=> d!16251 m!33911))

(assert (=> d!16251 m!33881))

(assert (=> b!31051 d!16251))

(assert (=> b!31067 d!16227))

(assert (=> b!31067 d!16071))

(assert (=> b!31067 d!16073))

(declare-fun b!31302 () Bool)

(declare-fun e!15953 () Int)

(declare-fun lt!5955 () Int)

(declare-fun lt!5953 () Int)

(assert (=> b!31302 (= e!15953 (+ 1 (ite (>= lt!5955 lt!5953) lt!5955 lt!5953)))))

(assert (=> b!31302 (= lt!5953 (level!56 (right!715 lt!5807)))))

(assert (=> b!31302 (= lt!5955 (level!56 (left!712 lt!5807)))))

(declare-fun d!16253 () Bool)

(declare-fun lt!5954 () Int)

(assert (=> d!16253 (>= lt!5954 0)))

(assert (=> d!16253 (= lt!5954 e!15953)))

(declare-fun c!6842 () Bool)

(assert (=> d!16253 (= c!6842 (or (is-Empty!78 lt!5807) (is-Single!67 lt!5807)))))

(assert (=> d!16253 (= (level!56 lt!5807) lt!5954)))

(declare-fun b!31301 () Bool)

(assert (=> b!31301 (= e!15953 0)))

(assert (= (and d!16253 c!6842) b!31301))

(assert (= (and d!16253 (not c!6842)) b!31302))

(declare-fun m!33913 () Bool)

(assert (=> b!31302 m!33913))

(declare-fun m!33915 () Bool)

(assert (=> b!31302 m!33915))

(assert (=> b!30898 d!16253))

(declare-fun b!31304 () Bool)

(declare-fun res!14405 () Bool)

(declare-fun e!15955 () Bool)

(assert (=> b!31304 (=> (not res!14405) (not e!15955))))

(assert (=> b!31304 (= res!14405 (<= (- (level!56 (left!712 (left!712 (right!715 ys!77)))) (level!56 (right!715 (left!712 (right!715 ys!77))))) 1))))

(declare-fun b!31306 () Bool)

(assert (=> b!31306 (= e!15955 (balanced!63 (right!715 (left!712 (right!715 ys!77)))))))

(declare-fun b!31305 () Bool)

(declare-fun res!14407 () Bool)

(assert (=> b!31305 (=> (not res!14407) (not e!15955))))

(assert (=> b!31305 (= res!14407 (balanced!63 (left!712 (left!712 (right!715 ys!77)))))))

(declare-fun d!16255 () Bool)

(declare-fun res!14404 () Bool)

(declare-fun e!15954 () Bool)

(assert (=> d!16255 (=> res!14404 e!15954)))

(assert (=> d!16255 (= res!14404 (not (is-CC!67 (left!712 (right!715 ys!77)))))))

(assert (=> d!16255 (= (balanced!63 (left!712 (right!715 ys!77))) e!15954)))

(declare-fun b!31303 () Bool)

(assert (=> b!31303 (= e!15954 e!15955)))

(declare-fun res!14406 () Bool)

(assert (=> b!31303 (=> (not res!14406) (not e!15955))))

(assert (=> b!31303 (= res!14406 (>= (- (level!56 (left!712 (left!712 (right!715 ys!77)))) (level!56 (right!715 (left!712 (right!715 ys!77))))) (- 1)))))

(assert (= (and d!16255 (not res!14404)) b!31303))

(assert (= (and b!31303 res!14406) b!31304))

(assert (= (and b!31304 res!14405) b!31305))

(assert (= (and b!31305 res!14407) b!31306))

(assert (=> b!31304 m!33287))

(assert (=> b!31304 m!33285))

(declare-fun m!33917 () Bool)

(assert (=> b!31306 m!33917))

(declare-fun m!33919 () Bool)

(assert (=> b!31305 m!33919))

(assert (=> b!31303 m!33287))

(assert (=> b!31303 m!33285))

(assert (=> b!31072 d!16255))

(declare-fun b!31308 () Bool)

(declare-fun res!14409 () Bool)

(declare-fun e!15957 () Bool)

(assert (=> b!31308 (=> (not res!14409) (not e!15957))))

(assert (=> b!31308 (= res!14409 (<= (- (level!56 (left!712 lt!5799)) (level!56 (right!715 lt!5799))) 1))))

(declare-fun b!31310 () Bool)

(assert (=> b!31310 (= e!15957 (balanced!63 (right!715 lt!5799)))))

(declare-fun b!31309 () Bool)

(declare-fun res!14411 () Bool)

(assert (=> b!31309 (=> (not res!14411) (not e!15957))))

(assert (=> b!31309 (= res!14411 (balanced!63 (left!712 lt!5799)))))

(declare-fun d!16257 () Bool)

(declare-fun res!14408 () Bool)

(declare-fun e!15956 () Bool)

(assert (=> d!16257 (=> res!14408 e!15956)))

(assert (=> d!16257 (= res!14408 (not (is-CC!67 lt!5799)))))

(assert (=> d!16257 (= (balanced!63 lt!5799) e!15956)))

(declare-fun b!31307 () Bool)

(assert (=> b!31307 (= e!15956 e!15957)))

(declare-fun res!14410 () Bool)

(assert (=> b!31307 (=> (not res!14410) (not e!15957))))

(assert (=> b!31307 (= res!14410 (>= (- (level!56 (left!712 lt!5799)) (level!56 (right!715 lt!5799))) (- 1)))))

(assert (= (and d!16257 (not res!14408)) b!31307))

(assert (= (and b!31307 res!14410) b!31308))

(assert (= (and b!31308 res!14409) b!31309))

(assert (= (and b!31309 res!14411) b!31310))

(declare-fun m!33921 () Bool)

(assert (=> b!31308 m!33921))

(declare-fun m!33923 () Bool)

(assert (=> b!31308 m!33923))

(declare-fun m!33925 () Bool)

(assert (=> b!31310 m!33925))

(declare-fun m!33927 () Bool)

(assert (=> b!31309 m!33927))

(assert (=> b!31307 m!33921))

(assert (=> b!31307 m!33923))

(assert (=> b!30879 d!16257))

(declare-fun d!16259 () Bool)

(declare-fun lt!5956 () Int)

(assert (=> d!16259 (>= lt!5956 0)))

(declare-fun e!15958 () Int)

(assert (=> d!16259 (= lt!5956 e!15958)))

(declare-fun c!6843 () Bool)

(assert (=> d!16259 (= c!6843 (is-Nil!359 lt!5853))))

(assert (=> d!16259 (= (size!277 lt!5853) lt!5956)))

(declare-fun b!31311 () Bool)

(assert (=> b!31311 (= e!15958 0)))

(declare-fun b!31312 () Bool)

(assert (=> b!31312 (= e!15958 (+ 1 (size!277 (t!4378 lt!5853))))))

(assert (= (and d!16259 c!6843) b!31311))

(assert (= (and d!16259 (not c!6843)) b!31312))

(declare-fun m!33929 () Bool)

(assert (=> b!31312 m!33929))

(assert (=> d!16071 d!16259))

(declare-fun d!16261 () Bool)

(declare-fun lt!5957 () Int)

(assert (=> d!16261 (>= lt!5957 0)))

(declare-fun e!15959 () Int)

(assert (=> d!16261 (= lt!5957 e!15959)))

(declare-fun c!6844 () Bool)

(assert (=> d!16261 (= c!6844 (is-Empty!78 (left!712 (left!712 ys!77))))))

(assert (=> d!16261 (= (size!278 (left!712 (left!712 ys!77))) lt!5957)))

(declare-fun b!31314 () Bool)

(declare-fun e!15960 () Int)

(assert (=> b!31314 (= e!15959 e!15960)))

(declare-fun c!6845 () Bool)

(assert (=> b!31314 (= c!6845 (is-Single!67 (left!712 (left!712 ys!77))))))

(declare-fun b!31316 () Bool)

(assert (=> b!31316 (= e!15960 (+ (size!278 (left!712 (left!712 (left!712 ys!77)))) (size!278 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun b!31315 () Bool)

(assert (=> b!31315 (= e!15960 1)))

(declare-fun b!31313 () Bool)

(assert (=> b!31313 (= e!15959 0)))

(assert (= (and b!31314 c!6845) b!31315))

(assert (= (and b!31314 (not c!6845)) b!31316))

(assert (= (and d!16261 c!6844) b!31313))

(assert (= (and d!16261 (not c!6844)) b!31314))

(assert (=> b!31316 m!33715))

(assert (=> b!31316 m!33725))

(assert (=> d!16071 d!16261))

(declare-fun b!31318 () Bool)

(declare-fun res!14413 () Bool)

(declare-fun e!15962 () Bool)

(assert (=> b!31318 (=> (not res!14413) (not e!15962))))

(assert (=> b!31318 (= res!14413 (<= (- (level!56 (left!712 (right!715 (left!712 xs!533)))) (level!56 (right!715 (right!715 (left!712 xs!533))))) 1))))

(declare-fun b!31320 () Bool)

(assert (=> b!31320 (= e!15962 (balanced!63 (right!715 (right!715 (left!712 xs!533)))))))

(declare-fun b!31319 () Bool)

(declare-fun res!14415 () Bool)

(assert (=> b!31319 (=> (not res!14415) (not e!15962))))

(assert (=> b!31319 (= res!14415 (balanced!63 (left!712 (right!715 (left!712 xs!533)))))))

(declare-fun d!16263 () Bool)

(declare-fun res!14412 () Bool)

(declare-fun e!15961 () Bool)

(assert (=> d!16263 (=> res!14412 e!15961)))

(assert (=> d!16263 (= res!14412 (not (is-CC!67 (right!715 (left!712 xs!533)))))))

(assert (=> d!16263 (= (balanced!63 (right!715 (left!712 xs!533))) e!15961)))

(declare-fun b!31317 () Bool)

(assert (=> b!31317 (= e!15961 e!15962)))

(declare-fun res!14414 () Bool)

(assert (=> b!31317 (=> (not res!14414) (not e!15962))))

(assert (=> b!31317 (= res!14414 (>= (- (level!56 (left!712 (right!715 (left!712 xs!533)))) (level!56 (right!715 (right!715 (left!712 xs!533))))) (- 1)))))

(assert (= (and d!16263 (not res!14412)) b!31317))

(assert (= (and b!31317 res!14414) b!31318))

(assert (= (and b!31318 res!14413) b!31319))

(assert (= (and b!31319 res!14415) b!31320))

(assert (=> b!31318 m!33781))

(assert (=> b!31318 m!33779))

(declare-fun m!33931 () Bool)

(assert (=> b!31320 m!33931))

(declare-fun m!33933 () Bool)

(assert (=> b!31319 m!33933))

(assert (=> b!31317 m!33781))

(assert (=> b!31317 m!33779))

(assert (=> b!30976 d!16263))

(declare-fun d!16265 () Bool)

(declare-fun lt!5958 () Int)

(assert (=> d!16265 (>= lt!5958 0)))

(declare-fun e!15963 () Int)

(assert (=> d!16265 (= lt!5958 e!15963)))

(declare-fun c!6846 () Bool)

(assert (=> d!16265 (= c!6846 (is-Nil!359 lt!5842))))

(assert (=> d!16265 (= (size!277 lt!5842) lt!5958)))

(declare-fun b!31321 () Bool)

(assert (=> b!31321 (= e!15963 0)))

(declare-fun b!31322 () Bool)

(assert (=> b!31322 (= e!15963 (+ 1 (size!277 (t!4378 lt!5842))))))

(assert (= (and d!16265 c!6846) b!31321))

(assert (= (and d!16265 (not c!6846)) b!31322))

(declare-fun m!33935 () Bool)

(assert (=> b!31322 m!33935))

(assert (=> d!16053 d!16265))

(declare-fun d!16267 () Bool)

(declare-fun lt!5959 () Int)

(assert (=> d!16267 (>= lt!5959 0)))

(declare-fun e!15964 () Int)

(assert (=> d!16267 (= lt!5959 e!15964)))

(declare-fun c!6847 () Bool)

(assert (=> d!16267 (= c!6847 (is-Empty!78 (right!715 (right!715 xs!533))))))

(assert (=> d!16267 (= (size!278 (right!715 (right!715 xs!533))) lt!5959)))

(declare-fun b!31324 () Bool)

(declare-fun e!15965 () Int)

(assert (=> b!31324 (= e!15964 e!15965)))

(declare-fun c!6848 () Bool)

(assert (=> b!31324 (= c!6848 (is-Single!67 (right!715 (right!715 xs!533))))))

(declare-fun b!31326 () Bool)

(assert (=> b!31326 (= e!15965 (+ (size!278 (left!712 (right!715 (right!715 xs!533)))) (size!278 (right!715 (right!715 (right!715 xs!533))))))))

(declare-fun b!31325 () Bool)

(assert (=> b!31325 (= e!15965 1)))

(declare-fun b!31323 () Bool)

(assert (=> b!31323 (= e!15964 0)))

(assert (= (and b!31324 c!6848) b!31325))

(assert (= (and b!31324 (not c!6848)) b!31326))

(assert (= (and d!16267 c!6847) b!31323))

(assert (= (and d!16267 (not c!6847)) b!31324))

(declare-fun m!33937 () Bool)

(assert (=> b!31326 m!33937))

(declare-fun m!33939 () Bool)

(assert (=> b!31326 m!33939))

(assert (=> d!16053 d!16267))

(assert (=> b!30978 d!16225))

(assert (=> b!30978 d!16119))

(assert (=> b!30978 d!16229))

(assert (=> b!30978 d!16227))

(declare-fun e!15966 () Bool)

(declare-fun b!31330 () Bool)

(assert (=> b!31330 (= e!15966 (concInv!62 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun b!31327 () Bool)

(declare-fun e!15967 () Bool)

(assert (=> b!31327 (= e!15967 e!15966)))

(declare-fun res!14417 () Bool)

(assert (=> b!31327 (=> (not res!14417) (not e!15966))))

(assert (=> b!31327 (= res!14417 (not (isEmpty!324 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun b!31328 () Bool)

(declare-fun res!14419 () Bool)

(assert (=> b!31328 (=> (not res!14419) (not e!15966))))

(assert (=> b!31328 (= res!14419 (not (isEmpty!324 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun b!31329 () Bool)

(declare-fun res!14416 () Bool)

(assert (=> b!31329 (=> (not res!14416) (not e!15966))))

(assert (=> b!31329 (= res!14416 (concInv!62 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun d!16269 () Bool)

(declare-fun res!14418 () Bool)

(assert (=> d!16269 (=> res!14418 e!15967)))

(assert (=> d!16269 (= res!14418 (not (is-CC!67 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(assert (=> d!16269 (= (concInv!62 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) e!15967)))

(assert (= (and d!16269 (not res!14418)) b!31327))

(assert (= (and b!31327 res!14417) b!31328))

(assert (= (and b!31328 res!14419) b!31329))

(assert (= (and b!31329 res!14416) b!31330))

(declare-fun m!33941 () Bool)

(assert (=> b!31330 m!33941))

(declare-fun m!33943 () Bool)

(assert (=> b!31327 m!33943))

(declare-fun m!33945 () Bool)

(assert (=> b!31328 m!33945))

(declare-fun m!33947 () Bool)

(assert (=> b!31329 m!33947))

(assert (=> b!30894 d!16269))

(declare-fun d!16271 () Bool)

(declare-fun e!15969 () Bool)

(assert (=> d!16271 e!15969))

(declare-fun res!14421 () Bool)

(assert (=> d!16271 (=> (not res!14421) (not e!15969))))

(declare-fun lt!5960 () List!364)

(assert (=> d!16271 (= res!14421 (= (content!74 lt!5960) (union (content!74 (toList!119 (left!712 xs!533))) (content!74 (toList!119 (right!715 xs!533))))))))

(declare-fun e!15968 () List!364)

(assert (=> d!16271 (= lt!5960 e!15968)))

(declare-fun c!6849 () Bool)

(assert (=> d!16271 (= c!6849 (is-Nil!359 (toList!119 (left!712 xs!533))))))

(assert (=> d!16271 (= (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))) lt!5960)))

(declare-fun b!31332 () Bool)

(assert (=> b!31332 (= e!15968 (Cons!358 (h!275 (toList!119 (left!712 xs!533))) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (right!715 xs!533)))))))

(declare-fun b!31331 () Bool)

(assert (=> b!31331 (= e!15968 (toList!119 (right!715 xs!533)))))

(declare-fun b!31333 () Bool)

(declare-fun res!14420 () Bool)

(assert (=> b!31333 (=> (not res!14420) (not e!15969))))

(assert (=> b!31333 (= res!14420 (= (size!277 lt!5960) (+ (size!277 (toList!119 (left!712 xs!533))) (size!277 (toList!119 (right!715 xs!533))))))))

(declare-fun b!31334 () Bool)

(assert (=> b!31334 (= e!15969 (or (not (= (toList!119 (right!715 xs!533)) Nil!359)) (= lt!5960 (toList!119 (left!712 xs!533)))))))

(assert (= (and d!16271 c!6849) b!31331))

(assert (= (and d!16271 (not c!6849)) b!31332))

(assert (= (and d!16271 res!14421) b!31333))

(assert (= (and b!31333 res!14420) b!31334))

(declare-fun m!33949 () Bool)

(assert (=> d!16271 m!33949))

(assert (=> d!16271 m!33095))

(declare-fun m!33951 () Bool)

(assert (=> d!16271 m!33951))

(assert (=> d!16271 m!33101))

(declare-fun m!33953 () Bool)

(assert (=> d!16271 m!33953))

(assert (=> b!31332 m!33101))

(declare-fun m!33955 () Bool)

(assert (=> b!31332 m!33955))

(declare-fun m!33957 () Bool)

(assert (=> b!31333 m!33957))

(assert (=> b!31333 m!33095))

(declare-fun m!33959 () Bool)

(assert (=> b!31333 m!33959))

(assert (=> b!31333 m!33101))

(declare-fun m!33961 () Bool)

(assert (=> b!31333 m!33961))

(assert (=> b!30982 d!16271))

(assert (=> b!30982 d!16061))

(assert (=> b!30982 d!16089))

(assert (=> b!31026 d!16045))

(assert (=> b!30902 d!16211))

(assert (=> b!30902 d!16209))

(declare-fun d!16273 () Bool)

(assert (=> d!16273 (= (isEmpty!324 (left!712 (right!715 res!5547))) (= (left!712 (right!715 res!5547)) Empty!78))))

(assert (=> b!30905 d!16273))

(declare-fun b!31336 () Bool)

(declare-fun res!14423 () Bool)

(declare-fun e!15971 () Bool)

(assert (=> b!31336 (=> (not res!14423) (not e!15971))))

(assert (=> b!31336 (= res!14423 (<= (- (level!56 (left!712 (right!715 (right!715 ys!77)))) (level!56 (right!715 (right!715 (right!715 ys!77))))) 1))))

(declare-fun b!31338 () Bool)

(assert (=> b!31338 (= e!15971 (balanced!63 (right!715 (right!715 (right!715 ys!77)))))))

(declare-fun b!31337 () Bool)

(declare-fun res!14425 () Bool)

(assert (=> b!31337 (=> (not res!14425) (not e!15971))))

(assert (=> b!31337 (= res!14425 (balanced!63 (left!712 (right!715 (right!715 ys!77)))))))

(declare-fun d!16275 () Bool)

(declare-fun res!14422 () Bool)

(declare-fun e!15970 () Bool)

(assert (=> d!16275 (=> res!14422 e!15970)))

(assert (=> d!16275 (= res!14422 (not (is-CC!67 (right!715 (right!715 ys!77)))))))

(assert (=> d!16275 (= (balanced!63 (right!715 (right!715 ys!77))) e!15970)))

(declare-fun b!31335 () Bool)

(assert (=> b!31335 (= e!15970 e!15971)))

(declare-fun res!14424 () Bool)

(assert (=> b!31335 (=> (not res!14424) (not e!15971))))

(assert (=> b!31335 (= res!14424 (>= (- (level!56 (left!712 (right!715 (right!715 ys!77)))) (level!56 (right!715 (right!715 (right!715 ys!77))))) (- 1)))))

(assert (= (and d!16275 (not res!14422)) b!31335))

(assert (= (and b!31335 res!14424) b!31336))

(assert (= (and b!31336 res!14423) b!31337))

(assert (= (and b!31337 res!14425) b!31338))

(assert (=> b!31336 m!33283))

(assert (=> b!31336 m!33281))

(declare-fun m!33963 () Bool)

(assert (=> b!31338 m!33963))

(declare-fun m!33965 () Bool)

(assert (=> b!31337 m!33965))

(assert (=> b!31335 m!33283))

(assert (=> b!31335 m!33281))

(assert (=> b!31073 d!16275))

(declare-fun b!31342 () Bool)

(declare-fun e!15972 () Bool)

(assert (=> b!31342 (= e!15972 (concInv!62 (right!715 (right!715 (right!715 ys!77)))))))

(declare-fun b!31339 () Bool)

(declare-fun e!15973 () Bool)

(assert (=> b!31339 (= e!15973 e!15972)))

(declare-fun res!14427 () Bool)

(assert (=> b!31339 (=> (not res!14427) (not e!15972))))

(assert (=> b!31339 (= res!14427 (not (isEmpty!324 (left!712 (right!715 (right!715 ys!77))))))))

(declare-fun b!31340 () Bool)

(declare-fun res!14429 () Bool)

(assert (=> b!31340 (=> (not res!14429) (not e!15972))))

(assert (=> b!31340 (= res!14429 (not (isEmpty!324 (right!715 (right!715 (right!715 ys!77))))))))

(declare-fun b!31341 () Bool)

(declare-fun res!14426 () Bool)

(assert (=> b!31341 (=> (not res!14426) (not e!15972))))

(assert (=> b!31341 (= res!14426 (concInv!62 (left!712 (right!715 (right!715 ys!77)))))))

(declare-fun d!16277 () Bool)

(declare-fun res!14428 () Bool)

(assert (=> d!16277 (=> res!14428 e!15973)))

(assert (=> d!16277 (= res!14428 (not (is-CC!67 (right!715 (right!715 ys!77)))))))

(assert (=> d!16277 (= (concInv!62 (right!715 (right!715 ys!77))) e!15973)))

(assert (= (and d!16277 (not res!14428)) b!31339))

(assert (= (and b!31339 res!14427) b!31340))

(assert (= (and b!31340 res!14429) b!31341))

(assert (= (and b!31341 res!14426) b!31342))

(declare-fun m!33967 () Bool)

(assert (=> b!31342 m!33967))

(declare-fun m!33969 () Bool)

(assert (=> b!31339 m!33969))

(declare-fun m!33971 () Bool)

(assert (=> b!31340 m!33971))

(declare-fun m!33973 () Bool)

(assert (=> b!31341 m!33973))

(assert (=> b!31015 d!16277))

(declare-fun b!31344 () Bool)

(declare-fun res!14431 () Bool)

(declare-fun e!15975 () Bool)

(assert (=> b!31344 (=> (not res!14431) (not e!15975))))

(assert (=> b!31344 (= res!14431 (<= (- (level!56 (left!712 (right!715 lt!5777))) (level!56 (right!715 (right!715 lt!5777)))) 1))))

(declare-fun b!31346 () Bool)

(assert (=> b!31346 (= e!15975 (balanced!63 (right!715 (right!715 lt!5777))))))

(declare-fun b!31345 () Bool)

(declare-fun res!14433 () Bool)

(assert (=> b!31345 (=> (not res!14433) (not e!15975))))

(assert (=> b!31345 (= res!14433 (balanced!63 (left!712 (right!715 lt!5777))))))

(declare-fun d!16279 () Bool)

(declare-fun res!14430 () Bool)

(declare-fun e!15974 () Bool)

(assert (=> d!16279 (=> res!14430 e!15974)))

(assert (=> d!16279 (= res!14430 (not (is-CC!67 (right!715 lt!5777))))))

(assert (=> d!16279 (= (balanced!63 (right!715 lt!5777)) e!15974)))

(declare-fun b!31343 () Bool)

(assert (=> b!31343 (= e!15974 e!15975)))

(declare-fun res!14432 () Bool)

(assert (=> b!31343 (=> (not res!14432) (not e!15975))))

(assert (=> b!31343 (= res!14432 (>= (- (level!56 (left!712 (right!715 lt!5777))) (level!56 (right!715 (right!715 lt!5777)))) (- 1)))))

(assert (= (and d!16279 (not res!14430)) b!31343))

(assert (= (and b!31343 res!14432) b!31344))

(assert (= (and b!31344 res!14431) b!31345))

(assert (= (and b!31345 res!14433) b!31346))

(declare-fun m!33975 () Bool)

(assert (=> b!31344 m!33975))

(declare-fun m!33977 () Bool)

(assert (=> b!31344 m!33977))

(declare-fun m!33979 () Bool)

(assert (=> b!31346 m!33979))

(declare-fun m!33981 () Bool)

(assert (=> b!31345 m!33981))

(assert (=> b!31343 m!33975))

(assert (=> b!31343 m!33977))

(assert (=> b!31061 d!16279))

(declare-fun b!31348 () Bool)

(declare-fun e!15976 () Int)

(declare-fun lt!5963 () Int)

(declare-fun lt!5961 () Int)

(assert (=> b!31348 (= e!15976 (+ 1 (ite (>= lt!5963 lt!5961) lt!5963 lt!5961)))))

(assert (=> b!31348 (= lt!5961 (level!56 (right!715 (right!715 (left!712 nll!6)))))))

(assert (=> b!31348 (= lt!5963 (level!56 (left!712 (right!715 (left!712 nll!6)))))))

(declare-fun d!16281 () Bool)

(declare-fun lt!5962 () Int)

(assert (=> d!16281 (>= lt!5962 0)))

(assert (=> d!16281 (= lt!5962 e!15976)))

(declare-fun c!6850 () Bool)

(assert (=> d!16281 (= c!6850 (or (is-Empty!78 (right!715 (left!712 nll!6))) (is-Single!67 (right!715 (left!712 nll!6)))))))

(assert (=> d!16281 (= (level!56 (right!715 (left!712 nll!6))) lt!5962)))

(declare-fun b!31347 () Bool)

(assert (=> b!31347 (= e!15976 0)))

(assert (= (and d!16281 c!6850) b!31347))

(assert (= (and d!16281 (not c!6850)) b!31348))

(declare-fun m!33983 () Bool)

(assert (=> b!31348 m!33983))

(declare-fun m!33985 () Bool)

(assert (=> b!31348 m!33985))

(assert (=> b!31023 d!16281))

(declare-fun b!31350 () Bool)

(declare-fun e!15977 () Int)

(declare-fun lt!5966 () Int)

(declare-fun lt!5964 () Int)

(assert (=> b!31350 (= e!15977 (+ 1 (ite (>= lt!5966 lt!5964) lt!5966 lt!5964)))))

(assert (=> b!31350 (= lt!5964 (level!56 (right!715 (left!712 (left!712 nll!6)))))))

(assert (=> b!31350 (= lt!5966 (level!56 (left!712 (left!712 (left!712 nll!6)))))))

(declare-fun d!16283 () Bool)

(declare-fun lt!5965 () Int)

(assert (=> d!16283 (>= lt!5965 0)))

(assert (=> d!16283 (= lt!5965 e!15977)))

(declare-fun c!6851 () Bool)

(assert (=> d!16283 (= c!6851 (or (is-Empty!78 (left!712 (left!712 nll!6))) (is-Single!67 (left!712 (left!712 nll!6)))))))

(assert (=> d!16283 (= (level!56 (left!712 (left!712 nll!6))) lt!5965)))

(declare-fun b!31349 () Bool)

(assert (=> b!31349 (= e!15977 0)))

(assert (= (and d!16283 c!6851) b!31349))

(assert (= (and d!16283 (not c!6851)) b!31350))

(declare-fun m!33987 () Bool)

(assert (=> b!31350 m!33987))

(declare-fun m!33989 () Bool)

(assert (=> b!31350 m!33989))

(assert (=> b!31023 d!16283))

(assert (=> b!30973 d!16209))

(assert (=> b!30973 d!16211))

(assert (=> b!30873 d!16241))

(assert (=> b!30873 d!16239))

(declare-fun b!31354 () Bool)

(declare-fun e!15978 () Bool)

(assert (=> b!31354 (= e!15978 (concInv!62 (right!715 (right!715 (right!715 res!5547)))))))

(declare-fun b!31351 () Bool)

(declare-fun e!15979 () Bool)

(assert (=> b!31351 (= e!15979 e!15978)))

(declare-fun res!14435 () Bool)

(assert (=> b!31351 (=> (not res!14435) (not e!15978))))

(assert (=> b!31351 (= res!14435 (not (isEmpty!324 (left!712 (right!715 (right!715 res!5547))))))))

(declare-fun b!31352 () Bool)

(declare-fun res!14437 () Bool)

(assert (=> b!31352 (=> (not res!14437) (not e!15978))))

(assert (=> b!31352 (= res!14437 (not (isEmpty!324 (right!715 (right!715 (right!715 res!5547))))))))

(declare-fun b!31353 () Bool)

(declare-fun res!14434 () Bool)

(assert (=> b!31353 (=> (not res!14434) (not e!15978))))

(assert (=> b!31353 (= res!14434 (concInv!62 (left!712 (right!715 (right!715 res!5547)))))))

(declare-fun d!16285 () Bool)

(declare-fun res!14436 () Bool)

(assert (=> d!16285 (=> res!14436 e!15979)))

(assert (=> d!16285 (= res!14436 (not (is-CC!67 (right!715 (right!715 res!5547)))))))

(assert (=> d!16285 (= (concInv!62 (right!715 (right!715 res!5547))) e!15979)))

(assert (= (and d!16285 (not res!14436)) b!31351))

(assert (= (and b!31351 res!14435) b!31352))

(assert (= (and b!31352 res!14437) b!31353))

(assert (= (and b!31353 res!14434) b!31354))

(declare-fun m!33991 () Bool)

(assert (=> b!31354 m!33991))

(declare-fun m!33993 () Bool)

(assert (=> b!31351 m!33993))

(declare-fun m!33995 () Bool)

(assert (=> b!31352 m!33995))

(declare-fun m!33997 () Bool)

(assert (=> b!31353 m!33997))

(assert (=> b!30908 d!16285))

(declare-fun d!16287 () Bool)

(declare-fun e!15981 () Bool)

(assert (=> d!16287 e!15981))

(declare-fun res!14439 () Bool)

(assert (=> d!16287 (=> (not res!14439) (not e!15981))))

(declare-fun lt!5967 () List!364)

(assert (=> d!16287 (= res!14439 (= (content!74 lt!5967) (union (content!74 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))))) (content!74 (toList!119 ys!77)))))))

(declare-fun e!15980 () List!364)

(assert (=> d!16287 (= lt!5967 e!15980)))

(declare-fun c!6852 () Bool)

(assert (=> d!16287 (= c!6852 (is-Nil!359 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))))))))

(assert (=> d!16287 (= (++!44 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77)) lt!5967)))

(declare-fun b!31356 () Bool)

(assert (=> b!31356 (= e!15980 (Cons!358 (h!275 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))))) (++!44 (t!4378 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))))) (toList!119 ys!77))))))

(declare-fun b!31355 () Bool)

(assert (=> b!31355 (= e!15980 (toList!119 ys!77))))

(declare-fun b!31357 () Bool)

(declare-fun res!14438 () Bool)

(assert (=> b!31357 (=> (not res!14438) (not e!15981))))

(assert (=> b!31357 (= res!14438 (= (size!277 lt!5967) (+ (size!277 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))))) (size!277 (toList!119 ys!77)))))))

(declare-fun b!31358 () Bool)

(assert (=> b!31358 (= e!15981 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!5967 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))))))))

(assert (= (and d!16287 c!6852) b!31355))

(assert (= (and d!16287 (not c!6852)) b!31356))

(assert (= (and d!16287 res!14439) b!31357))

(assert (= (and b!31357 res!14438) b!31358))

(declare-fun m!33999 () Bool)

(assert (=> d!16287 m!33999))

(assert (=> d!16287 m!33433))

(declare-fun m!34001 () Bool)

(assert (=> d!16287 m!34001))

(assert (=> d!16287 m!33077))

(assert (=> d!16287 m!33331))

(assert (=> b!31356 m!33077))

(declare-fun m!34003 () Bool)

(assert (=> b!31356 m!34003))

(declare-fun m!34005 () Bool)

(assert (=> b!31357 m!34005))

(assert (=> b!31357 m!33433))

(declare-fun m!34007 () Bool)

(assert (=> b!31357 m!34007))

(assert (=> b!31357 m!33077))

(assert (=> b!31357 m!33339))

(assert (=> b!31069 d!16287))

(declare-fun d!16289 () Bool)

(declare-fun e!15983 () Bool)

(assert (=> d!16289 e!15983))

(declare-fun res!14441 () Bool)

(assert (=> d!16289 (=> (not res!14441) (not e!15983))))

(declare-fun lt!5968 () List!364)

(assert (=> d!16289 (= res!14441 (= (content!74 lt!5968) (union (content!74 (toList!119 (left!712 (right!715 xs!533)))) (content!74 (toList!119 (right!715 (right!715 xs!533)))))))))

(declare-fun e!15982 () List!364)

(assert (=> d!16289 (= lt!5968 e!15982)))

(declare-fun c!6853 () Bool)

(assert (=> d!16289 (= c!6853 (is-Nil!359 (toList!119 (left!712 (right!715 xs!533)))))))

(assert (=> d!16289 (= (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))) lt!5968)))

(declare-fun b!31360 () Bool)

(assert (=> b!31360 (= e!15982 (Cons!358 (h!275 (toList!119 (left!712 (right!715 xs!533)))) (++!44 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (right!715 xs!533))))))))

(declare-fun b!31359 () Bool)

(assert (=> b!31359 (= e!15982 (toList!119 (right!715 (right!715 xs!533))))))

(declare-fun b!31361 () Bool)

(declare-fun res!14440 () Bool)

(assert (=> b!31361 (=> (not res!14440) (not e!15983))))

(assert (=> b!31361 (= res!14440 (= (size!277 lt!5968) (+ (size!277 (toList!119 (left!712 (right!715 xs!533)))) (size!277 (toList!119 (right!715 (right!715 xs!533)))))))))

(declare-fun b!31362 () Bool)

(assert (=> b!31362 (= e!15983 (or (not (= (toList!119 (right!715 (right!715 xs!533))) Nil!359)) (= lt!5968 (toList!119 (left!712 (right!715 xs!533))))))))

(assert (= (and d!16289 c!6853) b!31359))

(assert (= (and d!16289 (not c!6853)) b!31360))

(assert (= (and d!16289 res!14441) b!31361))

(assert (= (and b!31361 res!14440) b!31362))

(declare-fun m!34009 () Bool)

(assert (=> d!16289 m!34009))

(assert (=> d!16289 m!33089))

(declare-fun m!34011 () Bool)

(assert (=> d!16289 m!34011))

(assert (=> d!16289 m!33091))

(assert (=> d!16289 m!33329))

(assert (=> b!31360 m!33091))

(declare-fun m!34013 () Bool)

(assert (=> b!31360 m!34013))

(declare-fun m!34015 () Bool)

(assert (=> b!31361 m!34015))

(assert (=> b!31361 m!33089))

(declare-fun m!34017 () Bool)

(assert (=> b!31361 m!34017))

(assert (=> b!31361 m!33091))

(assert (=> b!31361 m!33337))

(assert (=> b!31069 d!16289))

(declare-fun d!16291 () Bool)

(declare-fun e!15985 () Bool)

(assert (=> d!16291 e!15985))

(declare-fun res!14443 () Bool)

(assert (=> d!16291 (=> (not res!14443) (not e!15985))))

(declare-fun lt!5969 () List!364)

(assert (=> d!16291 (= res!14443 (= (content!74 lt!5969) (union (content!74 (toList!119 (left!712 (right!715 xs!533)))) (content!74 (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun e!15984 () List!364)

(assert (=> d!16291 (= lt!5969 e!15984)))

(declare-fun c!6854 () Bool)

(assert (=> d!16291 (= c!6854 (is-Nil!359 (toList!119 (left!712 (right!715 xs!533)))))))

(assert (=> d!16291 (= (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) lt!5969)))

(declare-fun b!31364 () Bool)

(assert (=> b!31364 (= e!15984 (Cons!358 (h!275 (toList!119 (left!712 (right!715 xs!533)))) (++!44 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))

(declare-fun b!31363 () Bool)

(assert (=> b!31363 (= e!15984 (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))

(declare-fun b!31365 () Bool)

(declare-fun res!14442 () Bool)

(assert (=> b!31365 (=> (not res!14442) (not e!15985))))

(assert (=> b!31365 (= res!14442 (= (size!277 lt!5969) (+ (size!277 (toList!119 (left!712 (right!715 xs!533)))) (size!277 (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun b!31366 () Bool)

(assert (=> b!31366 (= e!15985 (or (not (= (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)) Nil!359)) (= lt!5969 (toList!119 (left!712 (right!715 xs!533))))))))

(assert (= (and d!16291 c!6854) b!31363))

(assert (= (and d!16291 (not c!6854)) b!31364))

(assert (= (and d!16291 res!14443) b!31365))

(assert (= (and b!31365 res!14442) b!31366))

(declare-fun m!34019 () Bool)

(assert (=> d!16291 m!34019))

(assert (=> d!16291 m!33089))

(assert (=> d!16291 m!34011))

(assert (=> d!16291 m!33097))

(declare-fun m!34021 () Bool)

(assert (=> d!16291 m!34021))

(assert (=> b!31364 m!33097))

(declare-fun m!34023 () Bool)

(assert (=> b!31364 m!34023))

(declare-fun m!34025 () Bool)

(assert (=> b!31365 m!34025))

(assert (=> b!31365 m!33089))

(assert (=> b!31365 m!34017))

(assert (=> b!31365 m!33097))

(declare-fun m!34027 () Bool)

(assert (=> b!31365 m!34027))

(assert (=> b!31069 d!16291))

(assert (=> b!31069 d!16057))

(declare-fun b!31367 () Bool)

(declare-fun e!15986 () Bool)

(assert (=> b!31367 (= e!15986 (= (++!44 (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 ys!77))) (toList!119 (right!715 ys!77))) (++!44 (t!4378 (toList!119 xs!533)) (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))))

(declare-fun lt!5970 () Bool)

(assert (=> b!31367 (= lt!5970 (appendAssoc!12 (t!4378 (t!4378 (toList!119 xs!533))) (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))

(declare-fun d!16293 () Bool)

(assert (=> d!16293 e!15986))

(declare-fun c!6855 () Bool)

(assert (=> d!16293 (= c!6855 (is-Cons!358 (t!4378 (toList!119 xs!533))))))

(assert (=> d!16293 (= (appendAssoc!12 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))) true)))

(declare-fun b!31368 () Bool)

(assert (=> b!31368 (= e!15986 (= (++!44 (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 ys!77))) (toList!119 (right!715 ys!77))) (++!44 (t!4378 (toList!119 xs!533)) (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))))

(assert (= (and d!16293 c!6855) b!31367))

(assert (= (and d!16293 (not c!6855)) b!31368))

(assert (=> b!31367 m!33111))

(assert (=> b!31367 m!33107))

(declare-fun m!34029 () Bool)

(assert (=> b!31367 m!34029))

(assert (=> b!31367 m!33301))

(declare-fun m!34031 () Bool)

(assert (=> b!31367 m!34031))

(assert (=> b!31367 m!33111))

(declare-fun m!34033 () Bool)

(assert (=> b!31367 m!34033))

(assert (=> b!31367 m!33111))

(assert (=> b!31367 m!33107))

(assert (=> b!31367 m!33301))

(assert (=> b!31367 m!34033))

(assert (=> b!31367 m!33107))

(declare-fun m!34035 () Bool)

(assert (=> b!31367 m!34035))

(assert (=> b!31368 m!33111))

(assert (=> b!31368 m!34033))

(assert (=> b!31368 m!34033))

(assert (=> b!31368 m!33107))

(assert (=> b!31368 m!34035))

(assert (=> b!31368 m!33111))

(assert (=> b!31368 m!33107))

(assert (=> b!31368 m!33301))

(assert (=> b!31368 m!33301))

(assert (=> b!31368 m!34031))

(assert (=> b!31062 d!16293))

(declare-fun d!16295 () Bool)

(declare-fun e!15988 () Bool)

(assert (=> d!16295 e!15988))

(declare-fun res!14445 () Bool)

(assert (=> d!16295 (=> (not res!14445) (not e!15988))))

(declare-fun lt!5971 () List!364)

(assert (=> d!16295 (= res!14445 (= (content!74 lt!5971) (union (content!74 (toList!119 (left!712 ys!77))) (content!74 (toList!119 (right!715 ys!77))))))))

(declare-fun e!15987 () List!364)

(assert (=> d!16295 (= lt!5971 e!15987)))

(declare-fun c!6856 () Bool)

(assert (=> d!16295 (= c!6856 (is-Nil!359 (toList!119 (left!712 ys!77))))))

(assert (=> d!16295 (= (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))) lt!5971)))

(declare-fun b!31370 () Bool)

(assert (=> b!31370 (= e!15987 (Cons!358 (h!275 (toList!119 (left!712 ys!77))) (++!44 (t!4378 (toList!119 (left!712 ys!77))) (toList!119 (right!715 ys!77)))))))

(declare-fun b!31369 () Bool)

(assert (=> b!31369 (= e!15987 (toList!119 (right!715 ys!77)))))

(declare-fun b!31371 () Bool)

(declare-fun res!14444 () Bool)

(assert (=> b!31371 (=> (not res!14444) (not e!15988))))

(assert (=> b!31371 (= res!14444 (= (size!277 lt!5971) (+ (size!277 (toList!119 (left!712 ys!77))) (size!277 (toList!119 (right!715 ys!77))))))))

(declare-fun b!31372 () Bool)

(assert (=> b!31372 (= e!15988 (or (not (= (toList!119 (right!715 ys!77)) Nil!359)) (= lt!5971 (toList!119 (left!712 ys!77)))))))

(assert (= (and d!16295 c!6856) b!31369))

(assert (= (and d!16295 (not c!6856)) b!31370))

(assert (= (and d!16295 res!14445) b!31371))

(assert (= (and b!31371 res!14444) b!31372))

(declare-fun m!34037 () Bool)

(assert (=> d!16295 m!34037))

(assert (=> d!16295 m!33111))

(declare-fun m!34039 () Bool)

(assert (=> d!16295 m!34039))

(assert (=> d!16295 m!33107))

(declare-fun m!34041 () Bool)

(assert (=> d!16295 m!34041))

(assert (=> b!31370 m!33107))

(declare-fun m!34043 () Bool)

(assert (=> b!31370 m!34043))

(declare-fun m!34045 () Bool)

(assert (=> b!31371 m!34045))

(assert (=> b!31371 m!33111))

(declare-fun m!34047 () Bool)

(assert (=> b!31371 m!34047))

(assert (=> b!31371 m!33107))

(declare-fun m!34049 () Bool)

(assert (=> b!31371 m!34049))

(assert (=> b!31062 d!16295))

(declare-fun d!16297 () Bool)

(declare-fun e!15990 () Bool)

(assert (=> d!16297 e!15990))

(declare-fun res!14447 () Bool)

(assert (=> d!16297 (=> (not res!14447) (not e!15990))))

(declare-fun lt!5972 () List!364)

(assert (=> d!16297 (= res!14447 (= (content!74 lt!5972) (union (content!74 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77)))) (content!74 (toList!119 (right!715 ys!77))))))))

(declare-fun e!15989 () List!364)

(assert (=> d!16297 (= lt!5972 e!15989)))

(declare-fun c!6857 () Bool)

(assert (=> d!16297 (= c!6857 (is-Nil!359 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77)))))))

(assert (=> d!16297 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77))) (toList!119 (right!715 ys!77))) lt!5972)))

(declare-fun b!31374 () Bool)

(assert (=> b!31374 (= e!15989 (Cons!358 (h!275 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77)))) (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77)))) (toList!119 (right!715 ys!77)))))))

(declare-fun b!31373 () Bool)

(assert (=> b!31373 (= e!15989 (toList!119 (right!715 ys!77)))))

(declare-fun b!31375 () Bool)

(declare-fun res!14446 () Bool)

(assert (=> b!31375 (=> (not res!14446) (not e!15990))))

(assert (=> b!31375 (= res!14446 (= (size!277 lt!5972) (+ (size!277 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77)))) (size!277 (toList!119 (right!715 ys!77))))))))

(declare-fun b!31376 () Bool)

(assert (=> b!31376 (= e!15990 (or (not (= (toList!119 (right!715 ys!77)) Nil!359)) (= lt!5972 (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77))))))))

(assert (= (and d!16297 c!6857) b!31373))

(assert (= (and d!16297 (not c!6857)) b!31374))

(assert (= (and d!16297 res!14447) b!31375))

(assert (= (and b!31375 res!14446) b!31376))

(declare-fun m!34051 () Bool)

(assert (=> d!16297 m!34051))

(assert (=> d!16297 m!33549))

(declare-fun m!34053 () Bool)

(assert (=> d!16297 m!34053))

(assert (=> d!16297 m!33107))

(assert (=> d!16297 m!34041))

(assert (=> b!31374 m!33107))

(declare-fun m!34055 () Bool)

(assert (=> b!31374 m!34055))

(declare-fun m!34057 () Bool)

(assert (=> b!31375 m!34057))

(assert (=> b!31375 m!33549))

(declare-fun m!34059 () Bool)

(assert (=> b!31375 m!34059))

(assert (=> b!31375 m!33107))

(assert (=> b!31375 m!34049))

(assert (=> b!31062 d!16297))

(declare-fun d!16299 () Bool)

(declare-fun e!15992 () Bool)

(assert (=> d!16299 e!15992))

(declare-fun res!14449 () Bool)

(assert (=> d!16299 (=> (not res!14449) (not e!15992))))

(declare-fun lt!5973 () List!364)

(assert (=> d!16299 (= res!14449 (= (content!74 lt!5973) (union (content!74 (toList!119 xs!533)) (content!74 (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77)))))))))

(declare-fun e!15991 () List!364)

(assert (=> d!16299 (= lt!5973 e!15991)))

(declare-fun c!6858 () Bool)

(assert (=> d!16299 (= c!6858 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16299 (= (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77)))) lt!5973)))

(declare-fun b!31378 () Bool)

(assert (=> b!31378 (= e!15991 (Cons!358 (h!275 (toList!119 xs!533)) (++!44 (t!4378 (toList!119 xs!533)) (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))))

(declare-fun b!31377 () Bool)

(assert (=> b!31377 (= e!15991 (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))))))

(declare-fun b!31379 () Bool)

(declare-fun res!14448 () Bool)

(assert (=> b!31379 (=> (not res!14448) (not e!15992))))

(assert (=> b!31379 (= res!14448 (= (size!277 lt!5973) (+ (size!277 (toList!119 xs!533)) (size!277 (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77)))))))))

(declare-fun b!31380 () Bool)

(assert (=> b!31380 (= e!15992 (or (not (= (++!44 (toList!119 (left!712 ys!77)) (toList!119 (right!715 ys!77))) Nil!359)) (= lt!5973 (toList!119 xs!533))))))

(assert (= (and d!16299 c!6858) b!31377))

(assert (= (and d!16299 (not c!6858)) b!31378))

(assert (= (and d!16299 res!14449) b!31379))

(assert (= (and b!31379 res!14448) b!31380))

(declare-fun m!34061 () Bool)

(assert (=> d!16299 m!34061))

(assert (=> d!16299 m!33075))

(assert (=> d!16299 m!33495))

(assert (=> d!16299 m!33301))

(declare-fun m!34063 () Bool)

(assert (=> d!16299 m!34063))

(assert (=> b!31378 m!33301))

(assert (=> b!31378 m!34031))

(declare-fun m!34065 () Bool)

(assert (=> b!31379 m!34065))

(assert (=> b!31379 m!33075))

(assert (=> b!31379 m!33501))

(assert (=> b!31379 m!33301))

(declare-fun m!34067 () Bool)

(assert (=> b!31379 m!34067))

(assert (=> b!31062 d!16299))

(declare-fun d!16301 () Bool)

(declare-fun e!15994 () Bool)

(assert (=> d!16301 e!15994))

(declare-fun res!14451 () Bool)

(assert (=> d!16301 (=> (not res!14451) (not e!15994))))

(declare-fun lt!5974 () List!364)

(assert (=> d!16301 (= res!14451 (= (content!74 lt!5974) (union (content!74 (toList!119 xs!533)) (content!74 (toList!119 (left!712 ys!77))))))))

(declare-fun e!15993 () List!364)

(assert (=> d!16301 (= lt!5974 e!15993)))

(declare-fun c!6859 () Bool)

(assert (=> d!16301 (= c!6859 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16301 (= (++!44 (toList!119 xs!533) (toList!119 (left!712 ys!77))) lt!5974)))

(declare-fun b!31382 () Bool)

(assert (=> b!31382 (= e!15993 (Cons!358 (h!275 (toList!119 xs!533)) (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 ys!77)))))))

(declare-fun b!31381 () Bool)

(assert (=> b!31381 (= e!15993 (toList!119 (left!712 ys!77)))))

(declare-fun b!31383 () Bool)

(declare-fun res!14450 () Bool)

(assert (=> b!31383 (=> (not res!14450) (not e!15994))))

(assert (=> b!31383 (= res!14450 (= (size!277 lt!5974) (+ (size!277 (toList!119 xs!533)) (size!277 (toList!119 (left!712 ys!77))))))))

(declare-fun b!31384 () Bool)

(assert (=> b!31384 (= e!15994 (or (not (= (toList!119 (left!712 ys!77)) Nil!359)) (= lt!5974 (toList!119 xs!533))))))

(assert (= (and d!16301 c!6859) b!31381))

(assert (= (and d!16301 (not c!6859)) b!31382))

(assert (= (and d!16301 res!14451) b!31383))

(assert (= (and b!31383 res!14450) b!31384))

(declare-fun m!34069 () Bool)

(assert (=> d!16301 m!34069))

(assert (=> d!16301 m!33075))

(assert (=> d!16301 m!33495))

(assert (=> d!16301 m!33111))

(assert (=> d!16301 m!34039))

(assert (=> b!31382 m!33111))

(assert (=> b!31382 m!34033))

(declare-fun m!34071 () Bool)

(assert (=> b!31383 m!34071))

(assert (=> b!31383 m!33075))

(assert (=> b!31383 m!33501))

(assert (=> b!31383 m!33111))

(assert (=> b!31383 m!34047))

(assert (=> b!31062 d!16301))

(assert (=> b!31009 d!16289))

(assert (=> b!31009 d!16055))

(assert (=> b!31009 d!16053))

(declare-fun b!31388 () Bool)

(declare-fun e!15995 () Bool)

(assert (=> b!31388 (= e!15995 (concInv!62 (right!715 (right!715 lt!5777))))))

(declare-fun b!31385 () Bool)

(declare-fun e!15996 () Bool)

(assert (=> b!31385 (= e!15996 e!15995)))

(declare-fun res!14453 () Bool)

(assert (=> b!31385 (=> (not res!14453) (not e!15995))))

(assert (=> b!31385 (= res!14453 (not (isEmpty!324 (left!712 (right!715 lt!5777)))))))

(declare-fun b!31386 () Bool)

(declare-fun res!14455 () Bool)

(assert (=> b!31386 (=> (not res!14455) (not e!15995))))

(assert (=> b!31386 (= res!14455 (not (isEmpty!324 (right!715 (right!715 lt!5777)))))))

(declare-fun b!31387 () Bool)

(declare-fun res!14452 () Bool)

(assert (=> b!31387 (=> (not res!14452) (not e!15995))))

(assert (=> b!31387 (= res!14452 (concInv!62 (left!712 (right!715 lt!5777))))))

(declare-fun d!16303 () Bool)

(declare-fun res!14454 () Bool)

(assert (=> d!16303 (=> res!14454 e!15996)))

(assert (=> d!16303 (= res!14454 (not (is-CC!67 (right!715 lt!5777))))))

(assert (=> d!16303 (= (concInv!62 (right!715 lt!5777)) e!15996)))

(assert (= (and d!16303 (not res!14454)) b!31385))

(assert (= (and b!31385 res!14453) b!31386))

(assert (= (and b!31386 res!14455) b!31387))

(assert (= (and b!31387 res!14452) b!31388))

(declare-fun m!34073 () Bool)

(assert (=> b!31388 m!34073))

(declare-fun m!34075 () Bool)

(assert (=> b!31385 m!34075))

(declare-fun m!34077 () Bool)

(assert (=> b!31386 m!34077))

(declare-fun m!34079 () Bool)

(assert (=> b!31387 m!34079))

(assert (=> b!31077 d!16303))

(declare-fun d!16305 () Bool)

(declare-fun lt!5975 () Int)

(assert (=> d!16305 (>= lt!5975 0)))

(declare-fun e!15997 () Int)

(assert (=> d!16305 (= lt!5975 e!15997)))

(declare-fun c!6860 () Bool)

(assert (=> d!16305 (= c!6860 (is-Nil!359 lt!5854))))

(assert (=> d!16305 (= (size!277 lt!5854) lt!5975)))

(declare-fun b!31389 () Bool)

(assert (=> b!31389 (= e!15997 0)))

(declare-fun b!31390 () Bool)

(assert (=> b!31390 (= e!15997 (+ 1 (size!277 (t!4378 lt!5854))))))

(assert (= (and d!16305 c!6860) b!31389))

(assert (= (and d!16305 (not c!6860)) b!31390))

(declare-fun m!34081 () Bool)

(assert (=> b!31390 m!34081))

(assert (=> d!16073 d!16305))

(declare-fun d!16307 () Bool)

(declare-fun lt!5976 () Int)

(assert (=> d!16307 (>= lt!5976 0)))

(declare-fun e!15998 () Int)

(assert (=> d!16307 (= lt!5976 e!15998)))

(declare-fun c!6861 () Bool)

(assert (=> d!16307 (= c!6861 (is-Empty!78 (right!715 (left!712 ys!77))))))

(assert (=> d!16307 (= (size!278 (right!715 (left!712 ys!77))) lt!5976)))

(declare-fun b!31392 () Bool)

(declare-fun e!15999 () Int)

(assert (=> b!31392 (= e!15998 e!15999)))

(declare-fun c!6862 () Bool)

(assert (=> b!31392 (= c!6862 (is-Single!67 (right!715 (left!712 ys!77))))))

(declare-fun b!31394 () Bool)

(assert (=> b!31394 (= e!15999 (+ (size!278 (left!712 (right!715 (left!712 ys!77)))) (size!278 (right!715 (right!715 (left!712 ys!77))))))))

(declare-fun b!31393 () Bool)

(assert (=> b!31393 (= e!15999 1)))

(declare-fun b!31391 () Bool)

(assert (=> b!31391 (= e!15998 0)))

(assert (= (and b!31392 c!6862) b!31393))

(assert (= (and b!31392 (not c!6862)) b!31394))

(assert (= (and d!16307 c!6861) b!31391))

(assert (= (and d!16307 (not c!6861)) b!31392))

(declare-fun m!34083 () Bool)

(assert (=> b!31394 m!34083))

(declare-fun m!34085 () Bool)

(assert (=> b!31394 m!34085))

(assert (=> d!16073 d!16307))

(declare-fun b!31398 () Bool)

(declare-fun e!16000 () Bool)

(assert (=> b!31398 (= e!16000 (concInv!62 (right!715 (right!715 (left!712 res!5547)))))))

(declare-fun b!31395 () Bool)

(declare-fun e!16001 () Bool)

(assert (=> b!31395 (= e!16001 e!16000)))

(declare-fun res!14457 () Bool)

(assert (=> b!31395 (=> (not res!14457) (not e!16000))))

(assert (=> b!31395 (= res!14457 (not (isEmpty!324 (left!712 (right!715 (left!712 res!5547))))))))

(declare-fun b!31396 () Bool)

(declare-fun res!14459 () Bool)

(assert (=> b!31396 (=> (not res!14459) (not e!16000))))

(assert (=> b!31396 (= res!14459 (not (isEmpty!324 (right!715 (right!715 (left!712 res!5547))))))))

(declare-fun b!31397 () Bool)

(declare-fun res!14456 () Bool)

(assert (=> b!31397 (=> (not res!14456) (not e!16000))))

(assert (=> b!31397 (= res!14456 (concInv!62 (left!712 (right!715 (left!712 res!5547)))))))

(declare-fun d!16309 () Bool)

(declare-fun res!14458 () Bool)

(assert (=> d!16309 (=> res!14458 e!16001)))

(assert (=> d!16309 (= res!14458 (not (is-CC!67 (right!715 (left!712 res!5547)))))))

(assert (=> d!16309 (= (concInv!62 (right!715 (left!712 res!5547))) e!16001)))

(assert (= (and d!16309 (not res!14458)) b!31395))

(assert (= (and b!31395 res!14457) b!31396))

(assert (= (and b!31396 res!14459) b!31397))

(assert (= (and b!31397 res!14456) b!31398))

(declare-fun m!34087 () Bool)

(assert (=> b!31398 m!34087))

(declare-fun m!34089 () Bool)

(assert (=> b!31395 m!34089))

(declare-fun m!34091 () Bool)

(assert (=> b!31396 m!34091))

(declare-fun m!34093 () Bool)

(assert (=> b!31397 m!34093))

(assert (=> b!31019 d!16309))

(declare-fun b!31400 () Bool)

(declare-fun res!14461 () Bool)

(declare-fun e!16003 () Bool)

(assert (=> b!31400 (=> (not res!14461) (not e!16003))))

(assert (=> b!31400 (= res!14461 (<= (- (level!56 (left!712 (left!712 (right!715 res!5547)))) (level!56 (right!715 (left!712 (right!715 res!5547))))) 1))))

(declare-fun b!31402 () Bool)

(assert (=> b!31402 (= e!16003 (balanced!63 (right!715 (left!712 (right!715 res!5547)))))))

(declare-fun b!31401 () Bool)

(declare-fun res!14463 () Bool)

(assert (=> b!31401 (=> (not res!14463) (not e!16003))))

(assert (=> b!31401 (= res!14463 (balanced!63 (left!712 (left!712 (right!715 res!5547)))))))

(declare-fun d!16311 () Bool)

(declare-fun res!14460 () Bool)

(declare-fun e!16002 () Bool)

(assert (=> d!16311 (=> res!14460 e!16002)))

(assert (=> d!16311 (= res!14460 (not (is-CC!67 (left!712 (right!715 res!5547)))))))

(assert (=> d!16311 (= (balanced!63 (left!712 (right!715 res!5547))) e!16002)))

(declare-fun b!31399 () Bool)

(assert (=> b!31399 (= e!16002 e!16003)))

(declare-fun res!14462 () Bool)

(assert (=> b!31399 (=> (not res!14462) (not e!16003))))

(assert (=> b!31399 (= res!14462 (>= (- (level!56 (left!712 (left!712 (right!715 res!5547)))) (level!56 (right!715 (left!712 (right!715 res!5547))))) (- 1)))))

(assert (= (and d!16311 (not res!14460)) b!31399))

(assert (= (and b!31399 res!14462) b!31400))

(assert (= (and b!31400 res!14461) b!31401))

(assert (= (and b!31401 res!14463) b!31402))

(assert (=> b!31400 m!33595))

(assert (=> b!31400 m!33593))

(declare-fun m!34095 () Bool)

(assert (=> b!31402 m!34095))

(declare-fun m!34097 () Bool)

(assert (=> b!31401 m!34097))

(assert (=> b!31399 m!33595))

(assert (=> b!31399 m!33593))

(assert (=> b!30971 d!16311))

(assert (=> b!30970 d!16149))

(assert (=> b!30970 d!16147))

(declare-fun d!16313 () Bool)

(declare-fun lt!5977 () Int)

(assert (=> d!16313 (>= lt!5977 0)))

(declare-fun e!16004 () Int)

(assert (=> d!16313 (= lt!5977 e!16004)))

(declare-fun c!6863 () Bool)

(assert (=> d!16313 (= c!6863 (is-Nil!359 lt!5856))))

(assert (=> d!16313 (= (size!277 lt!5856) lt!5977)))

(declare-fun b!31403 () Bool)

(assert (=> b!31403 (= e!16004 0)))

(declare-fun b!31404 () Bool)

(assert (=> b!31404 (= e!16004 (+ 1 (size!277 (t!4378 lt!5856))))))

(assert (= (and d!16313 c!6863) b!31403))

(assert (= (and d!16313 (not c!6863)) b!31404))

(declare-fun m!34099 () Bool)

(assert (=> b!31404 m!34099))

(assert (=> d!16089 d!16313))

(declare-fun d!16315 () Bool)

(declare-fun lt!5978 () Int)

(assert (=> d!16315 (>= lt!5978 0)))

(declare-fun e!16005 () Int)

(assert (=> d!16315 (= lt!5978 e!16005)))

(declare-fun c!6864 () Bool)

(assert (=> d!16315 (= c!6864 (is-Empty!78 (right!715 xs!533)))))

(assert (=> d!16315 (= (size!278 (right!715 xs!533)) lt!5978)))

(declare-fun b!31406 () Bool)

(declare-fun e!16006 () Int)

(assert (=> b!31406 (= e!16005 e!16006)))

(declare-fun c!6865 () Bool)

(assert (=> b!31406 (= c!6865 (is-Single!67 (right!715 xs!533)))))

(declare-fun b!31408 () Bool)

(assert (=> b!31408 (= e!16006 (+ (size!278 (left!712 (right!715 xs!533))) (size!278 (right!715 (right!715 xs!533)))))))

(declare-fun b!31407 () Bool)

(assert (=> b!31407 (= e!16006 1)))

(declare-fun b!31405 () Bool)

(assert (=> b!31405 (= e!16005 0)))

(assert (= (and b!31406 c!6865) b!31407))

(assert (= (and b!31406 (not c!6865)) b!31408))

(assert (= (and d!16315 c!6864) b!31405))

(assert (= (and d!16315 (not c!6864)) b!31406))

(assert (=> b!31408 m!33325))

(assert (=> b!31408 m!33315))

(assert (=> d!16089 d!16315))

(declare-fun d!16317 () Bool)

(declare-fun lt!5979 () Int)

(assert (=> d!16317 (>= lt!5979 0)))

(declare-fun e!16007 () Int)

(assert (=> d!16317 (= lt!5979 e!16007)))

(declare-fun c!6866 () Bool)

(assert (=> d!16317 (= c!6866 (is-Nil!359 lt!5878))))

(assert (=> d!16317 (= (size!277 lt!5878) lt!5979)))

(declare-fun b!31409 () Bool)

(assert (=> b!31409 (= e!16007 0)))

(declare-fun b!31410 () Bool)

(assert (=> b!31410 (= e!16007 (+ 1 (size!277 (t!4378 lt!5878))))))

(assert (= (and d!16317 c!6866) b!31409))

(assert (= (and d!16317 (not c!6866)) b!31410))

(declare-fun m!34101 () Bool)

(assert (=> b!31410 m!34101))

(assert (=> d!16129 d!16317))

(declare-fun d!16319 () Bool)

(declare-fun lt!5980 () Int)

(assert (=> d!16319 (>= lt!5980 0)))

(declare-fun e!16008 () Int)

(assert (=> d!16319 (= lt!5980 e!16008)))

(declare-fun c!6867 () Bool)

(assert (=> d!16319 (= c!6867 (is-Empty!78 (left!712 ys!77)))))

(assert (=> d!16319 (= (size!278 (left!712 ys!77)) lt!5980)))

(declare-fun b!31412 () Bool)

(declare-fun e!16009 () Int)

(assert (=> b!31412 (= e!16008 e!16009)))

(declare-fun c!6868 () Bool)

(assert (=> b!31412 (= c!6868 (is-Single!67 (left!712 ys!77)))))

(declare-fun b!31414 () Bool)

(assert (=> b!31414 (= e!16009 (+ (size!278 (left!712 (left!712 ys!77))) (size!278 (right!715 (left!712 ys!77)))))))

(declare-fun b!31413 () Bool)

(assert (=> b!31413 (= e!16009 1)))

(declare-fun b!31411 () Bool)

(assert (=> b!31411 (= e!16008 0)))

(assert (= (and b!31412 c!6868) b!31413))

(assert (= (and b!31412 (not c!6868)) b!31414))

(assert (= (and d!16319 c!6867) b!31411))

(assert (= (and d!16319 (not c!6867)) b!31412))

(assert (=> b!31414 m!33391))

(assert (=> b!31414 m!33401))

(assert (=> d!16129 d!16319))

(declare-fun d!16321 () Bool)

(declare-fun e!16011 () Bool)

(assert (=> d!16321 e!16011))

(declare-fun res!14465 () Bool)

(assert (=> d!16321 (=> (not res!14465) (not e!16011))))

(declare-fun lt!5981 () List!364)

(assert (=> d!16321 (= res!14465 (= (content!74 lt!5981) (union (content!74 (toList!119 (left!712 res!5547))) (content!74 (toList!119 (right!715 res!5547))))))))

(declare-fun e!16010 () List!364)

(assert (=> d!16321 (= lt!5981 e!16010)))

(declare-fun c!6869 () Bool)

(assert (=> d!16321 (= c!6869 (is-Nil!359 (toList!119 (left!712 res!5547))))))

(assert (=> d!16321 (= (++!44 (toList!119 (left!712 res!5547)) (toList!119 (right!715 res!5547))) lt!5981)))

(declare-fun b!31416 () Bool)

(assert (=> b!31416 (= e!16010 (Cons!358 (h!275 (toList!119 (left!712 res!5547))) (++!44 (t!4378 (toList!119 (left!712 res!5547))) (toList!119 (right!715 res!5547)))))))

(declare-fun b!31415 () Bool)

(assert (=> b!31415 (= e!16010 (toList!119 (right!715 res!5547)))))

(declare-fun b!31417 () Bool)

(declare-fun res!14464 () Bool)

(assert (=> b!31417 (=> (not res!14464) (not e!16011))))

(assert (=> b!31417 (= res!14464 (= (size!277 lt!5981) (+ (size!277 (toList!119 (left!712 res!5547))) (size!277 (toList!119 (right!715 res!5547))))))))

(declare-fun b!31418 () Bool)

(assert (=> b!31418 (= e!16011 (or (not (= (toList!119 (right!715 res!5547)) Nil!359)) (= lt!5981 (toList!119 (left!712 res!5547)))))))

(assert (= (and d!16321 c!6869) b!31415))

(assert (= (and d!16321 (not c!6869)) b!31416))

(assert (= (and d!16321 res!14465) b!31417))

(assert (= (and b!31417 res!14464) b!31418))

(declare-fun m!34103 () Bool)

(assert (=> d!16321 m!34103))

(assert (=> d!16321 m!33483))

(declare-fun m!34105 () Bool)

(assert (=> d!16321 m!34105))

(assert (=> d!16321 m!33485))

(declare-fun m!34107 () Bool)

(assert (=> d!16321 m!34107))

(assert (=> b!31416 m!33485))

(declare-fun m!34109 () Bool)

(assert (=> b!31416 m!34109))

(declare-fun m!34111 () Bool)

(assert (=> b!31417 m!34111))

(assert (=> b!31417 m!33483))

(declare-fun m!34113 () Bool)

(assert (=> b!31417 m!34113))

(assert (=> b!31417 m!33485))

(declare-fun m!34115 () Bool)

(assert (=> b!31417 m!34115))

(assert (=> b!31039 d!16321))

(declare-fun b!31419 () Bool)

(declare-fun e!16012 () List!364)

(assert (=> b!31419 (= e!16012 Nil!359)))

(declare-fun b!31421 () Bool)

(declare-fun e!16013 () List!364)

(assert (=> b!31421 (= e!16013 (Cons!358 (x!8961 (left!712 res!5547)) Nil!359))))

(declare-fun b!31422 () Bool)

(assert (=> b!31422 (= e!16013 (++!44 (toList!119 (left!712 (left!712 res!5547))) (toList!119 (right!715 (left!712 res!5547)))))))

(declare-fun d!16323 () Bool)

(declare-fun lt!5982 () List!364)

(assert (=> d!16323 (= (size!277 lt!5982) (size!278 (left!712 res!5547)))))

(assert (=> d!16323 (= lt!5982 e!16012)))

(declare-fun c!6870 () Bool)

(assert (=> d!16323 (= c!6870 (is-Empty!78 (left!712 res!5547)))))

(assert (=> d!16323 (= (toList!119 (left!712 res!5547)) lt!5982)))

(declare-fun b!31420 () Bool)

(assert (=> b!31420 (= e!16012 e!16013)))

(declare-fun c!6871 () Bool)

(assert (=> b!31420 (= c!6871 (is-Single!67 (left!712 res!5547)))))

(assert (= (and b!31420 c!6871) b!31421))

(assert (= (and b!31420 (not c!6871)) b!31422))

(assert (= (and d!16323 c!6870) b!31419))

(assert (= (and d!16323 (not c!6870)) b!31420))

(declare-fun m!34117 () Bool)

(assert (=> b!31422 m!34117))

(declare-fun m!34119 () Bool)

(assert (=> b!31422 m!34119))

(assert (=> b!31422 m!34117))

(assert (=> b!31422 m!34119))

(declare-fun m!34121 () Bool)

(assert (=> b!31422 m!34121))

(declare-fun m!34123 () Bool)

(assert (=> d!16323 m!34123))

(assert (=> d!16323 m!33599))

(assert (=> b!31039 d!16323))

(declare-fun b!31423 () Bool)

(declare-fun e!16014 () List!364)

(assert (=> b!31423 (= e!16014 Nil!359)))

(declare-fun b!31425 () Bool)

(declare-fun e!16015 () List!364)

(assert (=> b!31425 (= e!16015 (Cons!358 (x!8961 (right!715 res!5547)) Nil!359))))

(declare-fun b!31426 () Bool)

(assert (=> b!31426 (= e!16015 (++!44 (toList!119 (left!712 (right!715 res!5547))) (toList!119 (right!715 (right!715 res!5547)))))))

(declare-fun d!16325 () Bool)

(declare-fun lt!5983 () List!364)

(assert (=> d!16325 (= (size!277 lt!5983) (size!278 (right!715 res!5547)))))

(assert (=> d!16325 (= lt!5983 e!16014)))

(declare-fun c!6872 () Bool)

(assert (=> d!16325 (= c!6872 (is-Empty!78 (right!715 res!5547)))))

(assert (=> d!16325 (= (toList!119 (right!715 res!5547)) lt!5983)))

(declare-fun b!31424 () Bool)

(assert (=> b!31424 (= e!16014 e!16015)))

(declare-fun c!6873 () Bool)

(assert (=> b!31424 (= c!6873 (is-Single!67 (right!715 res!5547)))))

(assert (= (and b!31424 c!6873) b!31425))

(assert (= (and b!31424 (not c!6873)) b!31426))

(assert (= (and d!16325 c!6872) b!31423))

(assert (= (and d!16325 (not c!6872)) b!31424))

(declare-fun m!34125 () Bool)

(assert (=> b!31426 m!34125))

(declare-fun m!34127 () Bool)

(assert (=> b!31426 m!34127))

(assert (=> b!31426 m!34125))

(assert (=> b!31426 m!34127))

(declare-fun m!34129 () Bool)

(assert (=> b!31426 m!34129))

(declare-fun m!34131 () Bool)

(assert (=> d!16325 m!34131))

(assert (=> d!16325 m!33601))

(assert (=> b!31039 d!16325))

(declare-fun b!31428 () Bool)

(declare-fun e!16016 () Int)

(declare-fun lt!5986 () Int)

(declare-fun lt!5984 () Int)

(assert (=> b!31428 (= e!16016 (+ 1 (ite (>= lt!5986 lt!5984) lt!5986 lt!5984)))))

(assert (=> b!31428 (= lt!5984 (level!56 (right!715 (right!715 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))))

(assert (=> b!31428 (= lt!5986 (level!56 (left!712 (right!715 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16327 () Bool)

(declare-fun lt!5985 () Int)

(assert (=> d!16327 (>= lt!5985 0)))

(assert (=> d!16327 (= lt!5985 e!16016)))

(declare-fun c!6874 () Bool)

(assert (=> d!16327 (= c!6874 (or (is-Empty!78 (right!715 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))) (is-Single!67 (right!715 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))))

(assert (=> d!16327 (= (level!56 (right!715 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))) lt!5985)))

(declare-fun b!31427 () Bool)

(assert (=> b!31427 (= e!16016 0)))

(assert (= (and d!16327 c!6874) b!31427))

(assert (= (and d!16327 (not c!6874)) b!31428))

(declare-fun m!34133 () Bool)

(assert (=> b!31428 m!34133))

(declare-fun m!34135 () Bool)

(assert (=> b!31428 m!34135))

(assert (=> b!31035 d!16327))

(declare-fun b!31430 () Bool)

(declare-fun e!16017 () Int)

(declare-fun lt!5989 () Int)

(declare-fun lt!5987 () Int)

(assert (=> b!31430 (= e!16017 (+ 1 (ite (>= lt!5989 lt!5987) lt!5989 lt!5987)))))

(assert (=> b!31430 (= lt!5987 (level!56 (right!715 (left!712 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))))

(assert (=> b!31430 (= lt!5989 (level!56 (left!712 (left!712 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16329 () Bool)

(declare-fun lt!5988 () Int)

(assert (=> d!16329 (>= lt!5988 0)))

(assert (=> d!16329 (= lt!5988 e!16017)))

(declare-fun c!6875 () Bool)

(assert (=> d!16329 (= c!6875 (or (is-Empty!78 (left!712 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))) (is-Single!67 (left!712 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77))))))))))

(assert (=> d!16329 (= (level!56 (left!712 (ite lt!5786 (left!712 xs!533) (right!715 (left!712 (left!712 ys!77)))))) lt!5988)))

(declare-fun b!31429 () Bool)

(assert (=> b!31429 (= e!16017 0)))

(assert (= (and d!16329 c!6875) b!31429))

(assert (= (and d!16329 (not c!6875)) b!31430))

(declare-fun m!34137 () Bool)

(assert (=> b!31430 m!34137))

(declare-fun m!34139 () Bool)

(assert (=> b!31430 m!34139))

(assert (=> b!31035 d!16329))

(declare-fun d!16331 () Bool)

(declare-fun e!16019 () Bool)

(assert (=> d!16331 e!16019))

(declare-fun res!14467 () Bool)

(assert (=> d!16331 (=> (not res!14467) (not e!16019))))

(declare-fun lt!5990 () List!364)

(assert (=> d!16331 (= res!14467 (= (content!74 lt!5990) (union (content!74 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)))) (content!74 (toList!119 ys!77)))))))

(declare-fun e!16018 () List!364)

(assert (=> d!16331 (= lt!5990 e!16018)))

(declare-fun c!6876 () Bool)

(assert (=> d!16331 (= c!6876 (is-Nil!359 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)))))))

(assert (=> d!16331 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))) (toList!119 ys!77)) lt!5990)))

(declare-fun b!31432 () Bool)

(assert (=> b!31432 (= e!16018 (Cons!358 (h!275 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)))) (++!44 (t!4378 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)))) (toList!119 ys!77))))))

(declare-fun b!31431 () Bool)

(assert (=> b!31431 (= e!16018 (toList!119 ys!77))))

(declare-fun b!31433 () Bool)

(declare-fun res!14466 () Bool)

(assert (=> b!31433 (=> (not res!14466) (not e!16019))))

(assert (=> b!31433 (= res!14466 (= (size!277 lt!5990) (+ (size!277 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)))) (size!277 (toList!119 ys!77)))))))

(declare-fun b!31434 () Bool)

(assert (=> b!31434 (= e!16019 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!5990 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))))))))

(assert (= (and d!16331 c!6876) b!31431))

(assert (= (and d!16331 (not c!6876)) b!31432))

(assert (= (and d!16331 res!14467) b!31433))

(assert (= (and b!31433 res!14466) b!31434))

(declare-fun m!34141 () Bool)

(assert (=> d!16331 m!34141))

(assert (=> d!16331 m!33377))

(declare-fun m!34143 () Bool)

(assert (=> d!16331 m!34143))

(assert (=> d!16331 m!33077))

(assert (=> d!16331 m!33331))

(assert (=> b!31432 m!33077))

(declare-fun m!34145 () Bool)

(assert (=> b!31432 m!34145))

(declare-fun m!34147 () Bool)

(assert (=> b!31433 m!34147))

(assert (=> b!31433 m!33377))

(declare-fun m!34149 () Bool)

(assert (=> b!31433 m!34149))

(assert (=> b!31433 m!33077))

(assert (=> b!31433 m!33339))

(assert (=> b!31005 d!16331))

(assert (=> b!31005 d!16271))

(declare-fun d!16333 () Bool)

(declare-fun e!16021 () Bool)

(assert (=> d!16333 e!16021))

(declare-fun res!14469 () Bool)

(assert (=> d!16333 (=> (not res!14469) (not e!16021))))

(declare-fun lt!5991 () List!364)

(assert (=> d!16333 (= res!14469 (= (content!74 lt!5991) (union (content!74 (toList!119 (left!712 xs!533))) (content!74 (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77))))))))

(declare-fun e!16020 () List!364)

(assert (=> d!16333 (= lt!5991 e!16020)))

(declare-fun c!6877 () Bool)

(assert (=> d!16333 (= c!6877 (is-Nil!359 (toList!119 (left!712 xs!533))))))

(assert (=> d!16333 (= (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77))) lt!5991)))

(declare-fun b!31436 () Bool)

(assert (=> b!31436 (= e!16020 (Cons!358 (h!275 (toList!119 (left!712 xs!533))) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))))

(declare-fun b!31435 () Bool)

(assert (=> b!31435 (= e!16020 (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))

(declare-fun b!31437 () Bool)

(declare-fun res!14468 () Bool)

(assert (=> b!31437 (=> (not res!14468) (not e!16021))))

(assert (=> b!31437 (= res!14468 (= (size!277 lt!5991) (+ (size!277 (toList!119 (left!712 xs!533))) (size!277 (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77))))))))

(declare-fun b!31438 () Bool)

(assert (=> b!31438 (= e!16021 (or (not (= (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)) Nil!359)) (= lt!5991 (toList!119 (left!712 xs!533)))))))

(assert (= (and d!16333 c!6877) b!31435))

(assert (= (and d!16333 (not c!6877)) b!31436))

(assert (= (and d!16333 res!14469) b!31437))

(assert (= (and b!31437 res!14468) b!31438))

(declare-fun m!34151 () Bool)

(assert (=> d!16333 m!34151))

(assert (=> d!16333 m!33095))

(assert (=> d!16333 m!33951))

(assert (=> d!16333 m!33427))

(declare-fun m!34153 () Bool)

(assert (=> d!16333 m!34153))

(assert (=> b!31436 m!33427))

(declare-fun m!34155 () Bool)

(assert (=> b!31436 m!34155))

(declare-fun m!34157 () Bool)

(assert (=> b!31437 m!34157))

(assert (=> b!31437 m!33095))

(assert (=> b!31437 m!33959))

(assert (=> b!31437 m!33427))

(declare-fun m!34159 () Bool)

(assert (=> b!31437 m!34159))

(assert (=> b!31005 d!16333))

(declare-fun d!16335 () Bool)

(declare-fun e!16023 () Bool)

(assert (=> d!16335 e!16023))

(declare-fun res!14471 () Bool)

(assert (=> d!16335 (=> (not res!14471) (not e!16023))))

(declare-fun lt!5992 () List!364)

(assert (=> d!16335 (= res!14471 (= (content!74 lt!5992) (union (content!74 (toList!119 (right!715 xs!533))) (content!74 (toList!119 ys!77)))))))

(declare-fun e!16022 () List!364)

(assert (=> d!16335 (= lt!5992 e!16022)))

(declare-fun c!6878 () Bool)

(assert (=> d!16335 (= c!6878 (is-Nil!359 (toList!119 (right!715 xs!533))))))

(assert (=> d!16335 (= (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)) lt!5992)))

(declare-fun b!31440 () Bool)

(assert (=> b!31440 (= e!16022 (Cons!358 (h!275 (toList!119 (right!715 xs!533))) (++!44 (t!4378 (toList!119 (right!715 xs!533))) (toList!119 ys!77))))))

(declare-fun b!31439 () Bool)

(assert (=> b!31439 (= e!16022 (toList!119 ys!77))))

(declare-fun b!31441 () Bool)

(declare-fun res!14470 () Bool)

(assert (=> b!31441 (=> (not res!14470) (not e!16023))))

(assert (=> b!31441 (= res!14470 (= (size!277 lt!5992) (+ (size!277 (toList!119 (right!715 xs!533))) (size!277 (toList!119 ys!77)))))))

(declare-fun b!31442 () Bool)

(assert (=> b!31442 (= e!16023 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!5992 (toList!119 (right!715 xs!533)))))))

(assert (= (and d!16335 c!6878) b!31439))

(assert (= (and d!16335 (not c!6878)) b!31440))

(assert (= (and d!16335 res!14471) b!31441))

(assert (= (and b!31441 res!14470) b!31442))

(declare-fun m!34161 () Bool)

(assert (=> d!16335 m!34161))

(assert (=> d!16335 m!33101))

(assert (=> d!16335 m!33953))

(assert (=> d!16335 m!33077))

(assert (=> d!16335 m!33331))

(assert (=> b!31440 m!33077))

(declare-fun m!34163 () Bool)

(assert (=> b!31440 m!34163))

(declare-fun m!34165 () Bool)

(assert (=> b!31441 m!34165))

(assert (=> b!31441 m!33101))

(assert (=> b!31441 m!33961))

(assert (=> b!31441 m!33077))

(assert (=> b!31441 m!33339))

(assert (=> b!31005 d!16335))

(declare-fun d!16337 () Bool)

(assert (=> d!16337 (= (isEmpty!324 (left!712 (left!712 (left!712 ys!77)))) (= (left!712 (left!712 (left!712 ys!77))) Empty!78))))

(assert (=> b!30921 d!16337))

(declare-fun b!31444 () Bool)

(declare-fun e!16024 () Int)

(declare-fun lt!5995 () Int)

(declare-fun lt!5993 () Int)

(assert (=> b!31444 (= e!16024 (+ 1 (ite (>= lt!5995 lt!5993) lt!5995 lt!5993)))))

(assert (=> b!31444 (= lt!5993 (level!56 (right!715 (right!715 (right!715 nll!6)))))))

(assert (=> b!31444 (= lt!5995 (level!56 (left!712 (right!715 (right!715 nll!6)))))))

(declare-fun d!16339 () Bool)

(declare-fun lt!5994 () Int)

(assert (=> d!16339 (>= lt!5994 0)))

(assert (=> d!16339 (= lt!5994 e!16024)))

(declare-fun c!6879 () Bool)

(assert (=> d!16339 (= c!6879 (or (is-Empty!78 (right!715 (right!715 nll!6))) (is-Single!67 (right!715 (right!715 nll!6)))))))

(assert (=> d!16339 (= (level!56 (right!715 (right!715 nll!6))) lt!5994)))

(declare-fun b!31443 () Bool)

(assert (=> b!31443 (= e!16024 0)))

(assert (= (and d!16339 c!6879) b!31443))

(assert (= (and d!16339 (not c!6879)) b!31444))

(declare-fun m!34167 () Bool)

(assert (=> b!31444 m!34167))

(declare-fun m!34169 () Bool)

(assert (=> b!31444 m!34169))

(assert (=> b!31021 d!16339))

(declare-fun b!31446 () Bool)

(declare-fun e!16025 () Int)

(declare-fun lt!5998 () Int)

(declare-fun lt!5996 () Int)

(assert (=> b!31446 (= e!16025 (+ 1 (ite (>= lt!5998 lt!5996) lt!5998 lt!5996)))))

(assert (=> b!31446 (= lt!5996 (level!56 (right!715 (left!712 (right!715 nll!6)))))))

(assert (=> b!31446 (= lt!5998 (level!56 (left!712 (left!712 (right!715 nll!6)))))))

(declare-fun d!16341 () Bool)

(declare-fun lt!5997 () Int)

(assert (=> d!16341 (>= lt!5997 0)))

(assert (=> d!16341 (= lt!5997 e!16025)))

(declare-fun c!6880 () Bool)

(assert (=> d!16341 (= c!6880 (or (is-Empty!78 (left!712 (right!715 nll!6))) (is-Single!67 (left!712 (right!715 nll!6)))))))

(assert (=> d!16341 (= (level!56 (left!712 (right!715 nll!6))) lt!5997)))

(declare-fun b!31445 () Bool)

(assert (=> b!31445 (= e!16025 0)))

(assert (= (and d!16341 c!6880) b!31445))

(assert (= (and d!16341 (not c!6880)) b!31446))

(declare-fun m!34171 () Bool)

(assert (=> b!31446 m!34171))

(declare-fun m!34173 () Bool)

(assert (=> b!31446 m!34173))

(assert (=> b!31021 d!16341))

(declare-fun b!31447 () Bool)

(declare-fun e!16026 () Bool)

(assert (=> b!31447 (= e!16026 (= (++!44 (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 ys!77)))) (toList!119 (right!715 ys!77))) (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))))

(declare-fun lt!5999 () Bool)

(assert (=> b!31447 (= lt!5999 (appendAssoc!12 (t!4378 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))

(declare-fun d!16343 () Bool)

(assert (=> d!16343 e!16026))

(declare-fun c!6881 () Bool)

(assert (=> d!16343 (= c!6881 (is-Cons!358 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (=> d!16343 (= (appendAssoc!12 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))) true)))

(declare-fun b!31448 () Bool)

(assert (=> b!31448 (= e!16026 (= (++!44 (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 ys!77)))) (toList!119 (right!715 ys!77))) (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))))

(assert (= (and d!16343 c!6881) b!31447))

(assert (= (and d!16343 (not c!6881)) b!31448))

(assert (=> b!31447 m!33085))

(assert (=> b!31447 m!33107))

(declare-fun m!34175 () Bool)

(assert (=> b!31447 m!34175))

(assert (=> b!31447 m!33533))

(declare-fun m!34177 () Bool)

(assert (=> b!31447 m!34177))

(assert (=> b!31447 m!33085))

(assert (=> b!31447 m!33813))

(assert (=> b!31447 m!33085))

(assert (=> b!31447 m!33107))

(assert (=> b!31447 m!33533))

(assert (=> b!31447 m!33813))

(assert (=> b!31447 m!33107))

(declare-fun m!34179 () Bool)

(assert (=> b!31447 m!34179))

(assert (=> b!31448 m!33085))

(assert (=> b!31448 m!33813))

(assert (=> b!31448 m!33813))

(assert (=> b!31448 m!33107))

(assert (=> b!31448 m!34179))

(assert (=> b!31448 m!33085))

(assert (=> b!31448 m!33107))

(assert (=> b!31448 m!33533))

(assert (=> b!31448 m!33533))

(assert (=> b!31448 m!34177))

(assert (=> b!31056 d!16343))

(declare-fun d!16345 () Bool)

(declare-fun e!16028 () Bool)

(assert (=> d!16345 e!16028))

(declare-fun res!14473 () Bool)

(assert (=> d!16345 (=> (not res!14473) (not e!16028))))

(declare-fun lt!6000 () List!364)

(assert (=> d!16345 (= res!14473 (= (content!74 lt!6000) (union (content!74 (toList!119 (right!715 (left!712 ys!77)))) (content!74 (toList!119 (right!715 ys!77))))))))

(declare-fun e!16027 () List!364)

(assert (=> d!16345 (= lt!6000 e!16027)))

(declare-fun c!6882 () Bool)

(assert (=> d!16345 (= c!6882 (is-Nil!359 (toList!119 (right!715 (left!712 ys!77)))))))

(assert (=> d!16345 (= (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))) lt!6000)))

(declare-fun b!31450 () Bool)

(assert (=> b!31450 (= e!16027 (Cons!358 (h!275 (toList!119 (right!715 (left!712 ys!77)))) (++!44 (t!4378 (toList!119 (right!715 (left!712 ys!77)))) (toList!119 (right!715 ys!77)))))))

(declare-fun b!31449 () Bool)

(assert (=> b!31449 (= e!16027 (toList!119 (right!715 ys!77)))))

(declare-fun b!31451 () Bool)

(declare-fun res!14472 () Bool)

(assert (=> b!31451 (=> (not res!14472) (not e!16028))))

(assert (=> b!31451 (= res!14472 (= (size!277 lt!6000) (+ (size!277 (toList!119 (right!715 (left!712 ys!77)))) (size!277 (toList!119 (right!715 ys!77))))))))

(declare-fun b!31452 () Bool)

(assert (=> b!31452 (= e!16028 (or (not (= (toList!119 (right!715 ys!77)) Nil!359)) (= lt!6000 (toList!119 (right!715 (left!712 ys!77))))))))

(assert (= (and d!16345 c!6882) b!31449))

(assert (= (and d!16345 (not c!6882)) b!31450))

(assert (= (and d!16345 res!14473) b!31451))

(assert (= (and b!31451 res!14472) b!31452))

(declare-fun m!34181 () Bool)

(assert (=> d!16345 m!34181))

(assert (=> d!16345 m!33085))

(assert (=> d!16345 m!33811))

(assert (=> d!16345 m!33107))

(assert (=> d!16345 m!34041))

(assert (=> b!31450 m!33107))

(declare-fun m!34183 () Bool)

(assert (=> b!31450 m!34183))

(declare-fun m!34185 () Bool)

(assert (=> b!31451 m!34185))

(assert (=> b!31451 m!33085))

(assert (=> b!31451 m!33819))

(assert (=> b!31451 m!33107))

(assert (=> b!31451 m!34049))

(assert (=> b!31056 d!16345))

(assert (=> b!31056 d!16225))

(declare-fun d!16347 () Bool)

(declare-fun e!16030 () Bool)

(assert (=> d!16347 e!16030))

(declare-fun res!14475 () Bool)

(assert (=> d!16347 (=> (not res!14475) (not e!16030))))

(declare-fun lt!6001 () List!364)

(assert (=> d!16347 (= res!14475 (= (content!74 lt!6001) (union (content!74 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))))) (content!74 (toList!119 (right!715 ys!77))))))))

(declare-fun e!16029 () List!364)

(assert (=> d!16347 (= lt!6001 e!16029)))

(declare-fun c!6883 () Bool)

(assert (=> d!16347 (= c!6883 (is-Nil!359 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))))))))

(assert (=> d!16347 (= (++!44 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))) (toList!119 (right!715 ys!77))) lt!6001)))

(declare-fun b!31454 () Bool)

(assert (=> b!31454 (= e!16029 (Cons!358 (h!275 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))))) (++!44 (t!4378 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))))) (toList!119 (right!715 ys!77)))))))

(declare-fun b!31453 () Bool)

(assert (=> b!31453 (= e!16029 (toList!119 (right!715 ys!77)))))

(declare-fun b!31455 () Bool)

(declare-fun res!14474 () Bool)

(assert (=> b!31455 (=> (not res!14474) (not e!16030))))

(assert (=> b!31455 (= res!14474 (= (size!277 lt!6001) (+ (size!277 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77))))) (size!277 (toList!119 (right!715 ys!77))))))))

(declare-fun b!31456 () Bool)

(assert (=> b!31456 (= e!16030 (or (not (= (toList!119 (right!715 ys!77)) Nil!359)) (= lt!6001 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 ys!77)))))))))

(assert (= (and d!16347 c!6883) b!31453))

(assert (= (and d!16347 (not c!6883)) b!31454))

(assert (= (and d!16347 res!14475) b!31455))

(assert (= (and b!31455 res!14474) b!31456))

(declare-fun m!34187 () Bool)

(assert (=> d!16347 m!34187))

(assert (=> d!16347 m!33375))

(declare-fun m!34189 () Bool)

(assert (=> d!16347 m!34189))

(assert (=> d!16347 m!33107))

(assert (=> d!16347 m!34041))

(assert (=> b!31454 m!33107))

(declare-fun m!34191 () Bool)

(assert (=> b!31454 m!34191))

(declare-fun m!34193 () Bool)

(assert (=> b!31455 m!34193))

(assert (=> b!31455 m!33375))

(declare-fun m!34195 () Bool)

(assert (=> b!31455 m!34195))

(assert (=> b!31455 m!33107))

(assert (=> b!31455 m!34049))

(assert (=> b!31056 d!16347))

(declare-fun d!16349 () Bool)

(declare-fun e!16032 () Bool)

(assert (=> d!16349 e!16032))

(declare-fun res!14477 () Bool)

(assert (=> d!16349 (=> (not res!14477) (not e!16032))))

(declare-fun lt!6002 () List!364)

(assert (=> d!16349 (= res!14477 (= (content!74 lt!6002) (union (content!74 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (content!74 (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77)))))))))

(declare-fun e!16031 () List!364)

(assert (=> d!16349 (= lt!6002 e!16031)))

(declare-fun c!6884 () Bool)

(assert (=> d!16349 (= c!6884 (is-Nil!359 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))))))

(assert (=> d!16349 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77)))) lt!6002)))

(declare-fun b!31458 () Bool)

(assert (=> b!31458 (= e!16031 (Cons!358 (h!275 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))))

(declare-fun b!31457 () Bool)

(assert (=> b!31457 (= e!16031 (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))))))

(declare-fun b!31459 () Bool)

(declare-fun res!14476 () Bool)

(assert (=> b!31459 (=> (not res!14476) (not e!16032))))

(assert (=> b!31459 (= res!14476 (= (size!277 lt!6002) (+ (size!277 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77))))) (size!277 (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77)))))))))

(declare-fun b!31460 () Bool)

(assert (=> b!31460 (= e!16032 (or (not (= (++!44 (toList!119 (right!715 (left!712 ys!77))) (toList!119 (right!715 ys!77))) Nil!359)) (= lt!6002 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16349 c!6884) b!31457))

(assert (= (and d!16349 (not c!6884)) b!31458))

(assert (= (and d!16349 res!14477) b!31459))

(assert (= (and b!31459 res!14476) b!31460))

(declare-fun m!34197 () Bool)

(assert (=> d!16349 m!34197))

(assert (=> d!16349 m!33105))

(assert (=> d!16349 m!33809))

(assert (=> d!16349 m!33533))

(declare-fun m!34199 () Bool)

(assert (=> d!16349 m!34199))

(assert (=> b!31458 m!33533))

(assert (=> b!31458 m!34177))

(declare-fun m!34201 () Bool)

(assert (=> b!31459 m!34201))

(assert (=> b!31459 m!33105))

(assert (=> b!31459 m!33817))

(assert (=> b!31459 m!33533))

(declare-fun m!34203 () Bool)

(assert (=> b!31459 m!34203))

(assert (=> b!31056 d!16349))

(declare-fun d!16351 () Bool)

(assert (=> d!16351 (= (isEmpty!324 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (= (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) Empty!78))))

(assert (=> b!30885 d!16351))

(declare-fun d!16353 () Bool)

(declare-fun c!6885 () Bool)

(assert (=> d!16353 (= c!6885 (is-Nil!359 lt!5846))))

(declare-fun e!16033 () (Set T!1837))

(assert (=> d!16353 (= (content!74 lt!5846) e!16033)))

(declare-fun b!31461 () Bool)

(assert (=> b!31461 (= e!16033 (as emptyset (Set T!1837)))))

(declare-fun b!31462 () Bool)

(assert (=> b!31462 (= e!16033 (union (insert (h!275 lt!5846) (as emptyset (Set T!1837))) (content!74 (t!4378 lt!5846))))))

(assert (= (and d!16353 c!6885) b!31461))

(assert (= (and d!16353 (not c!6885)) b!31462))

(declare-fun m!34205 () Bool)

(assert (=> b!31462 m!34205))

(declare-fun m!34207 () Bool)

(assert (=> b!31462 m!34207))

(assert (=> d!16057 d!16353))

(declare-fun d!16355 () Bool)

(declare-fun c!6886 () Bool)

(assert (=> d!16355 (= c!6886 (is-Nil!359 (toList!119 (right!715 (right!715 xs!533)))))))

(declare-fun e!16034 () (Set T!1837))

(assert (=> d!16355 (= (content!74 (toList!119 (right!715 (right!715 xs!533)))) e!16034)))

(declare-fun b!31463 () Bool)

(assert (=> b!31463 (= e!16034 (as emptyset (Set T!1837)))))

(declare-fun b!31464 () Bool)

(assert (=> b!31464 (= e!16034 (union (insert (h!275 (toList!119 (right!715 (right!715 xs!533)))) (as emptyset (Set T!1837))) (content!74 (t!4378 (toList!119 (right!715 (right!715 xs!533)))))))))

(assert (= (and d!16355 c!6886) b!31463))

(assert (= (and d!16355 (not c!6886)) b!31464))

(declare-fun m!34209 () Bool)

(assert (=> b!31464 m!34209))

(declare-fun m!34211 () Bool)

(assert (=> b!31464 m!34211))

(assert (=> d!16057 d!16355))

(declare-fun d!16357 () Bool)

(declare-fun c!6887 () Bool)

(assert (=> d!16357 (= c!6887 (is-Nil!359 (toList!119 ys!77)))))

(declare-fun e!16035 () (Set T!1837))

(assert (=> d!16357 (= (content!74 (toList!119 ys!77)) e!16035)))

(declare-fun b!31465 () Bool)

(assert (=> b!31465 (= e!16035 (as emptyset (Set T!1837)))))

(declare-fun b!31466 () Bool)

(assert (=> b!31466 (= e!16035 (union (insert (h!275 (toList!119 ys!77)) (as emptyset (Set T!1837))) (content!74 (t!4378 (toList!119 ys!77)))))))

(assert (= (and d!16357 c!6887) b!31465))

(assert (= (and d!16357 (not c!6887)) b!31466))

(declare-fun m!34213 () Bool)

(assert (=> b!31466 m!34213))

(declare-fun m!34215 () Bool)

(assert (=> b!31466 m!34215))

(assert (=> d!16057 d!16357))

(declare-fun b!31468 () Bool)

(declare-fun res!14479 () Bool)

(declare-fun e!16037 () Bool)

(assert (=> b!31468 (=> (not res!14479) (not e!16037))))

(assert (=> b!31468 (= res!14479 (<= (- (level!56 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (level!56 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) 1))))

(declare-fun b!31470 () Bool)

(assert (=> b!31470 (= e!16037 (balanced!63 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun b!31469 () Bool)

(declare-fun res!14481 () Bool)

(assert (=> b!31469 (=> (not res!14481) (not e!16037))))

(assert (=> b!31469 (= res!14481 (balanced!63 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun d!16359 () Bool)

(declare-fun res!14478 () Bool)

(declare-fun e!16036 () Bool)

(assert (=> d!16359 (=> res!14478 e!16036)))

(assert (=> d!16359 (= res!14478 (not (is-CC!67 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(assert (=> d!16359 (= (balanced!63 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) e!16036)))

(declare-fun b!31467 () Bool)

(assert (=> b!31467 (= e!16036 e!16037)))

(declare-fun res!14480 () Bool)

(assert (=> b!31467 (=> (not res!14480) (not e!16037))))

(assert (=> b!31467 (= res!14480 (>= (- (level!56 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (level!56 (right!715 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))) (- 1)))))

(assert (= (and d!16359 (not res!14478)) b!31467))

(assert (= (and b!31467 res!14480) b!31468))

(assert (= (and b!31468 res!14479) b!31469))

(assert (= (and b!31469 res!14481) b!31470))

(assert (=> b!31468 m!33671))

(assert (=> b!31468 m!33669))

(declare-fun m!34217 () Bool)

(assert (=> b!31470 m!34217))

(declare-fun m!34219 () Bool)

(assert (=> b!31469 m!34219))

(assert (=> b!31467 m!33671))

(assert (=> b!31467 m!33669))

(assert (=> b!30878 d!16359))

(declare-fun b!31472 () Bool)

(declare-fun e!16038 () Int)

(declare-fun lt!6005 () Int)

(declare-fun lt!6003 () Int)

(assert (=> b!31472 (= e!16038 (+ 1 (ite (>= lt!6005 lt!6003) lt!6005 lt!6003)))))

(assert (=> b!31472 (= lt!6003 (level!56 (right!715 (ite lt!5802 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(assert (=> b!31472 (= lt!6005 (level!56 (left!712 (ite lt!5802 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun d!16361 () Bool)

(declare-fun lt!6004 () Int)

(assert (=> d!16361 (>= lt!6004 0)))

(assert (=> d!16361 (= lt!6004 e!16038)))

(declare-fun c!6888 () Bool)

(assert (=> d!16361 (= c!6888 (or (is-Empty!78 (ite lt!5802 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) (is-Single!67 (ite lt!5802 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(assert (=> d!16361 (= (level!56 (ite lt!5802 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))) lt!6004)))

(declare-fun b!31471 () Bool)

(assert (=> b!31471 (= e!16038 0)))

(assert (= (and d!16361 c!6888) b!31471))

(assert (= (and d!16361 (not c!6888)) b!31472))

(declare-fun m!34221 () Bool)

(assert (=> b!31472 m!34221))

(declare-fun m!34223 () Bool)

(assert (=> b!31472 m!34223))

(assert (=> b!30884 d!16361))

(declare-fun d!16363 () Bool)

(declare-fun c!6889 () Bool)

(assert (=> d!16363 (= c!6889 (is-Nil!359 lt!5873))))

(declare-fun e!16039 () (Set T!1837))

(assert (=> d!16363 (= (content!74 lt!5873) e!16039)))

(declare-fun b!31473 () Bool)

(assert (=> b!31473 (= e!16039 (as emptyset (Set T!1837)))))

(declare-fun b!31474 () Bool)

(assert (=> b!31474 (= e!16039 (union (insert (h!275 lt!5873) (as emptyset (Set T!1837))) (content!74 (t!4378 lt!5873))))))

(assert (= (and d!16363 c!6889) b!31473))

(assert (= (and d!16363 (not c!6889)) b!31474))

(declare-fun m!34225 () Bool)

(assert (=> b!31474 m!34225))

(declare-fun m!34227 () Bool)

(assert (=> b!31474 m!34227))

(assert (=> d!16113 d!16363))

(assert (=> d!16113 d!16215))

(assert (=> d!16113 d!16357))

(declare-fun b!31476 () Bool)

(declare-fun e!16040 () Int)

(declare-fun lt!6008 () Int)

(declare-fun lt!6006 () Int)

(assert (=> b!31476 (= e!16040 (+ 1 (ite (>= lt!6008 lt!6006) lt!6008 lt!6006)))))

(assert (=> b!31476 (= lt!6006 (level!56 (right!715 (right!715 lt!5777))))))

(assert (=> b!31476 (= lt!6008 (level!56 (left!712 (right!715 lt!5777))))))

(declare-fun d!16365 () Bool)

(declare-fun lt!6007 () Int)

(assert (=> d!16365 (>= lt!6007 0)))

(assert (=> d!16365 (= lt!6007 e!16040)))

(declare-fun c!6890 () Bool)

(assert (=> d!16365 (= c!6890 (or (is-Empty!78 (right!715 lt!5777)) (is-Single!67 (right!715 lt!5777))))))

(assert (=> d!16365 (= (level!56 (right!715 lt!5777)) lt!6007)))

(declare-fun b!31475 () Bool)

(assert (=> b!31475 (= e!16040 0)))

(assert (= (and d!16365 c!6890) b!31475))

(assert (= (and d!16365 (not c!6890)) b!31476))

(assert (=> b!31476 m!33977))

(assert (=> b!31476 m!33975))

(assert (=> b!30926 d!16365))

(declare-fun b!31478 () Bool)

(declare-fun e!16041 () Int)

(declare-fun lt!6011 () Int)

(declare-fun lt!6009 () Int)

(assert (=> b!31478 (= e!16041 (+ 1 (ite (>= lt!6011 lt!6009) lt!6011 lt!6009)))))

(assert (=> b!31478 (= lt!6009 (level!56 (right!715 (left!712 lt!5777))))))

(assert (=> b!31478 (= lt!6011 (level!56 (left!712 (left!712 lt!5777))))))

(declare-fun d!16367 () Bool)

(declare-fun lt!6010 () Int)

(assert (=> d!16367 (>= lt!6010 0)))

(assert (=> d!16367 (= lt!6010 e!16041)))

(declare-fun c!6891 () Bool)

(assert (=> d!16367 (= c!6891 (or (is-Empty!78 (left!712 lt!5777)) (is-Single!67 (left!712 lt!5777))))))

(assert (=> d!16367 (= (level!56 (left!712 lt!5777)) lt!6010)))

(declare-fun b!31477 () Bool)

(assert (=> b!31477 (= e!16041 0)))

(assert (= (and d!16367 c!6891) b!31477))

(assert (= (and d!16367 (not c!6891)) b!31478))

(declare-fun m!34229 () Bool)

(assert (=> b!31478 m!34229))

(declare-fun m!34231 () Bool)

(assert (=> b!31478 m!34231))

(assert (=> b!30926 d!16367))

(declare-fun b!31479 () Bool)

(declare-fun e!16042 () Bool)

(assert (=> b!31479 (= e!16042 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))))

(declare-fun lt!6012 () Bool)

(assert (=> b!31479 (= lt!6012 (appendAssoc!12 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun d!16369 () Bool)

(assert (=> d!16369 e!16042))

(declare-fun c!6892 () Bool)

(assert (=> d!16369 (= c!6892 (is-Cons!358 (toList!119 xs!533)))))

(assert (=> d!16369 (= (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) true)))

(declare-fun b!31480 () Bool)

(assert (=> b!31480 (= e!16042 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 (left!712 ys!77)))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))))

(assert (= (and d!16369 c!6892) b!31479))

(assert (= (and d!16369 (not c!6892)) b!31480))

(assert (=> b!31479 m!33383))

(assert (=> b!31479 m!33385))

(declare-fun m!34233 () Bool)

(assert (=> b!31479 m!34233))

(assert (=> b!31479 m!33075))

(assert (=> b!31479 m!33387))

(declare-fun m!34235 () Bool)

(assert (=> b!31479 m!34235))

(assert (=> b!31479 m!33075))

(assert (=> b!31479 m!33383))

(declare-fun m!34237 () Bool)

(assert (=> b!31479 m!34237))

(assert (=> b!31479 m!33383))

(assert (=> b!31479 m!33385))

(assert (=> b!31479 m!33387))

(assert (=> b!31479 m!34237))

(assert (=> b!31479 m!33385))

(declare-fun m!34239 () Bool)

(assert (=> b!31479 m!34239))

(assert (=> b!31480 m!33075))

(assert (=> b!31480 m!33383))

(assert (=> b!31480 m!34237))

(assert (=> b!31480 m!34237))

(assert (=> b!31480 m!33385))

(assert (=> b!31480 m!34239))

(assert (=> b!31480 m!33383))

(assert (=> b!31480 m!33385))

(assert (=> b!31480 m!33387))

(assert (=> b!31480 m!33075))

(assert (=> b!31480 m!33387))

(assert (=> b!31480 m!34235))

(assert (=> b!30991 d!16369))

(assert (=> b!30991 d!16069))

(assert (=> b!30991 d!16183))

(assert (=> b!30991 d!16185))

(declare-fun b!31482 () Bool)

(declare-fun res!14483 () Bool)

(declare-fun e!16044 () Bool)

(assert (=> b!31482 (=> (not res!14483) (not e!16044))))

(assert (=> b!31482 (= res!14483 (<= (- (level!56 (left!712 (left!712 (left!712 xs!533)))) (level!56 (right!715 (left!712 (left!712 xs!533))))) 1))))

(declare-fun b!31484 () Bool)

(assert (=> b!31484 (= e!16044 (balanced!63 (right!715 (left!712 (left!712 xs!533)))))))

(declare-fun b!31483 () Bool)

(declare-fun res!14485 () Bool)

(assert (=> b!31483 (=> (not res!14485) (not e!16044))))

(assert (=> b!31483 (= res!14485 (balanced!63 (left!712 (left!712 (left!712 xs!533)))))))

(declare-fun d!16371 () Bool)

(declare-fun res!14482 () Bool)

(declare-fun e!16043 () Bool)

(assert (=> d!16371 (=> res!14482 e!16043)))

(assert (=> d!16371 (= res!14482 (not (is-CC!67 (left!712 (left!712 xs!533)))))))

(assert (=> d!16371 (= (balanced!63 (left!712 (left!712 xs!533))) e!16043)))

(declare-fun b!31481 () Bool)

(assert (=> b!31481 (= e!16043 e!16044)))

(declare-fun res!14484 () Bool)

(assert (=> b!31481 (=> (not res!14484) (not e!16044))))

(assert (=> b!31481 (= res!14484 (>= (- (level!56 (left!712 (left!712 (left!712 xs!533)))) (level!56 (right!715 (left!712 (left!712 xs!533))))) (- 1)))))

(assert (= (and d!16371 (not res!14482)) b!31481))

(assert (= (and b!31481 res!14484) b!31482))

(assert (= (and b!31482 res!14483) b!31483))

(assert (= (and b!31483 res!14485) b!31484))

(assert (=> b!31482 m!33777))

(assert (=> b!31482 m!33775))

(declare-fun m!34241 () Bool)

(assert (=> b!31484 m!34241))

(declare-fun m!34243 () Bool)

(assert (=> b!31483 m!34243))

(assert (=> b!31481 m!33777))

(assert (=> b!31481 m!33775))

(assert (=> b!30975 d!16371))

(assert (=> b!31070 d!16043))

(assert (=> b!31070 d!16041))

(declare-fun d!16373 () Bool)

(assert (=> d!16373 (= (isEmpty!324 (left!712 (right!715 xs!533))) (= (left!712 (right!715 xs!533)) Empty!78))))

(assert (=> b!30913 d!16373))

(declare-fun b!31486 () Bool)

(declare-fun e!16045 () Int)

(declare-fun lt!6015 () Int)

(declare-fun lt!6013 () Int)

(assert (=> b!31486 (= e!16045 (+ 1 (ite (>= lt!6015 lt!6013) lt!6015 lt!6013)))))

(assert (=> b!31486 (= lt!6013 (level!56 (right!715 (right!715 (left!712 (right!715 ys!77))))))))

(assert (=> b!31486 (= lt!6015 (level!56 (left!712 (right!715 (left!712 (right!715 ys!77))))))))

(declare-fun d!16375 () Bool)

(declare-fun lt!6014 () Int)

(assert (=> d!16375 (>= lt!6014 0)))

(assert (=> d!16375 (= lt!6014 e!16045)))

(declare-fun c!6893 () Bool)

(assert (=> d!16375 (= c!6893 (or (is-Empty!78 (right!715 (left!712 (right!715 ys!77)))) (is-Single!67 (right!715 (left!712 (right!715 ys!77))))))))

(assert (=> d!16375 (= (level!56 (right!715 (left!712 (right!715 ys!77)))) lt!6014)))

(declare-fun b!31485 () Bool)

(assert (=> b!31485 (= e!16045 0)))

(assert (= (and d!16375 c!6893) b!31485))

(assert (= (and d!16375 (not c!6893)) b!31486))

(declare-fun m!34245 () Bool)

(assert (=> b!31486 m!34245))

(declare-fun m!34247 () Bool)

(assert (=> b!31486 m!34247))

(assert (=> b!30920 d!16375))

(declare-fun b!31488 () Bool)

(declare-fun e!16046 () Int)

(declare-fun lt!6018 () Int)

(declare-fun lt!6016 () Int)

(assert (=> b!31488 (= e!16046 (+ 1 (ite (>= lt!6018 lt!6016) lt!6018 lt!6016)))))

(assert (=> b!31488 (= lt!6016 (level!56 (right!715 (left!712 (left!712 (right!715 ys!77))))))))

(assert (=> b!31488 (= lt!6018 (level!56 (left!712 (left!712 (left!712 (right!715 ys!77))))))))

(declare-fun d!16377 () Bool)

(declare-fun lt!6017 () Int)

(assert (=> d!16377 (>= lt!6017 0)))

(assert (=> d!16377 (= lt!6017 e!16046)))

(declare-fun c!6894 () Bool)

(assert (=> d!16377 (= c!6894 (or (is-Empty!78 (left!712 (left!712 (right!715 ys!77)))) (is-Single!67 (left!712 (left!712 (right!715 ys!77))))))))

(assert (=> d!16377 (= (level!56 (left!712 (left!712 (right!715 ys!77)))) lt!6017)))

(declare-fun b!31487 () Bool)

(assert (=> b!31487 (= e!16046 0)))

(assert (= (and d!16377 c!6894) b!31487))

(assert (= (and d!16377 (not c!6894)) b!31488))

(declare-fun m!34249 () Bool)

(assert (=> b!31488 m!34249))

(declare-fun m!34251 () Bool)

(assert (=> b!31488 m!34251))

(assert (=> b!30920 d!16377))

(declare-fun d!16379 () Bool)

(assert (=> d!16379 (= (isEmpty!324 (right!715 (left!712 (left!712 ys!77)))) (= (right!715 (left!712 (left!712 ys!77))) Empty!78))))

(assert (=> b!30922 d!16379))

(assert (=> d!16123 d!16069))

(declare-fun b!31489 () Bool)

(declare-fun e!16047 () List!364)

(assert (=> b!31489 (= e!16047 Nil!359)))

(declare-fun b!31491 () Bool)

(declare-fun e!16048 () List!364)

(assert (=> b!31491 (= e!16048 (Cons!358 (x!8961 lt!5777) Nil!359))))

(declare-fun b!31492 () Bool)

(assert (=> b!31492 (= e!16048 (++!44 (toList!119 (left!712 lt!5777)) (toList!119 (right!715 lt!5777))))))

(declare-fun d!16381 () Bool)

(declare-fun lt!6019 () List!364)

(assert (=> d!16381 (= (size!277 lt!6019) (size!278 lt!5777))))

(assert (=> d!16381 (= lt!6019 e!16047)))

(declare-fun c!6895 () Bool)

(assert (=> d!16381 (= c!6895 (is-Empty!78 lt!5777))))

(assert (=> d!16381 (= (toList!119 lt!5777) lt!6019)))

(declare-fun b!31490 () Bool)

(assert (=> b!31490 (= e!16047 e!16048)))

(declare-fun c!6896 () Bool)

(assert (=> b!31490 (= c!6896 (is-Single!67 lt!5777))))

(assert (= (and b!31490 c!6896) b!31491))

(assert (= (and b!31490 (not c!6896)) b!31492))

(assert (= (and d!16381 c!6895) b!31489))

(assert (= (and d!16381 (not c!6895)) b!31490))

(declare-fun m!34253 () Bool)

(assert (=> b!31492 m!34253))

(declare-fun m!34255 () Bool)

(assert (=> b!31492 m!34255))

(assert (=> b!31492 m!34253))

(assert (=> b!31492 m!34255))

(declare-fun m!34257 () Bool)

(assert (=> b!31492 m!34257))

(declare-fun m!34259 () Bool)

(assert (=> d!16381 m!34259))

(declare-fun m!34261 () Bool)

(assert (=> d!16381 m!34261))

(assert (=> d!16123 d!16381))

(assert (=> d!16123 d!16119))

(assert (=> d!16123 d!16071))

(declare-fun d!16383 () Bool)

(declare-fun lt!6020 () Int)

(assert (=> d!16383 (>= lt!6020 0)))

(declare-fun e!16049 () Int)

(assert (=> d!16383 (= lt!6020 e!16049)))

(declare-fun c!6897 () Bool)

(assert (=> d!16383 (= c!6897 (is-Nil!359 lt!5841))))

(assert (=> d!16383 (= (size!277 lt!5841) lt!6020)))

(declare-fun b!31493 () Bool)

(assert (=> b!31493 (= e!16049 0)))

(declare-fun b!31494 () Bool)

(assert (=> b!31494 (= e!16049 (+ 1 (size!277 (t!4378 lt!5841))))))

(assert (= (and d!16383 c!6897) b!31493))

(assert (= (and d!16383 (not c!6897)) b!31494))

(declare-fun m!34263 () Bool)

(assert (=> b!31494 m!34263))

(assert (=> d!16051 d!16383))

(declare-fun d!16385 () Bool)

(declare-fun lt!6021 () Int)

(assert (=> d!16385 (>= lt!6021 0)))

(declare-fun e!16050 () Int)

(assert (=> d!16385 (= lt!6021 e!16050)))

(declare-fun c!6898 () Bool)

(assert (=> d!16385 (= c!6898 (is-Empty!78 ys!77))))

(assert (=> d!16385 (= (size!278 ys!77) lt!6021)))

(declare-fun b!31496 () Bool)

(declare-fun e!16051 () Int)

(assert (=> b!31496 (= e!16050 e!16051)))

(declare-fun c!6899 () Bool)

(assert (=> b!31496 (= c!6899 (is-Single!67 ys!77))))

(declare-fun b!31498 () Bool)

(assert (=> b!31498 (= e!16051 (+ (size!278 (left!712 ys!77)) (size!278 (right!715 ys!77))))))

(declare-fun b!31497 () Bool)

(assert (=> b!31497 (= e!16051 1)))

(declare-fun b!31495 () Bool)

(assert (=> b!31495 (= e!16050 0)))

(assert (= (and b!31496 c!6899) b!31497))

(assert (= (and b!31496 (not c!6899)) b!31498))

(assert (= (and d!16385 c!6898) b!31495))

(assert (= (and d!16385 (not c!6898)) b!31496))

(assert (=> b!31498 m!33555))

(assert (=> b!31498 m!33519))

(assert (=> d!16051 d!16385))

(declare-fun d!16387 () Bool)

(declare-fun lt!6022 () Int)

(assert (=> d!16387 (>= lt!6022 0)))

(declare-fun e!16052 () Int)

(assert (=> d!16387 (= lt!6022 e!16052)))

(declare-fun c!6900 () Bool)

(assert (=> d!16387 (= c!6900 (is-Nil!359 lt!5852))))

(assert (=> d!16387 (= (size!277 lt!5852) lt!6022)))

(declare-fun b!31499 () Bool)

(assert (=> b!31499 (= e!16052 0)))

(declare-fun b!31500 () Bool)

(assert (=> b!31500 (= e!16052 (+ 1 (size!277 (t!4378 lt!5852))))))

(assert (= (and d!16387 c!6900) b!31499))

(assert (= (and d!16387 (not c!6900)) b!31500))

(declare-fun m!34265 () Bool)

(assert (=> b!31500 m!34265))

(assert (=> d!16069 d!16387))

(declare-fun d!16389 () Bool)

(declare-fun lt!6023 () Int)

(assert (=> d!16389 (>= lt!6023 0)))

(declare-fun e!16053 () Int)

(assert (=> d!16389 (= lt!6023 e!16053)))

(declare-fun c!6901 () Bool)

(assert (=> d!16389 (= c!6901 (is-Empty!78 xs!533))))

(assert (=> d!16389 (= (size!278 xs!533) lt!6023)))

(declare-fun b!31502 () Bool)

(declare-fun e!16054 () Int)

(assert (=> b!31502 (= e!16053 e!16054)))

(declare-fun c!6902 () Bool)

(assert (=> b!31502 (= c!6902 (is-Single!67 xs!533))))

(declare-fun b!31504 () Bool)

(assert (=> b!31504 (= e!16054 (+ (size!278 (left!712 xs!533)) (size!278 (right!715 xs!533))))))

(declare-fun b!31503 () Bool)

(assert (=> b!31503 (= e!16054 1)))

(declare-fun b!31501 () Bool)

(assert (=> b!31501 (= e!16053 0)))

(assert (= (and b!31502 c!6902) b!31503))

(assert (= (and b!31502 (not c!6902)) b!31504))

(assert (= (and d!16389 c!6901) b!31501))

(assert (= (and d!16389 (not c!6901)) b!31502))

(assert (=> b!31504 m!33359))

(assert (=> b!31504 m!33437))

(assert (=> d!16069 d!16389))

(declare-fun d!16391 () Bool)

(declare-fun e!16056 () Bool)

(assert (=> d!16391 e!16056))

(declare-fun res!14487 () Bool)

(assert (=> d!16391 (=> (not res!14487) (not e!16056))))

(declare-fun lt!6024 () List!364)

(assert (=> d!16391 (= res!14487 (= (content!74 lt!6024) (union (content!74 (toList!119 (left!712 (right!715 (left!712 ys!77))))) (content!74 (toList!119 (right!715 (right!715 (left!712 ys!77))))))))))

(declare-fun e!16055 () List!364)

(assert (=> d!16391 (= lt!6024 e!16055)))

(declare-fun c!6903 () Bool)

(assert (=> d!16391 (= c!6903 (is-Nil!359 (toList!119 (left!712 (right!715 (left!712 ys!77))))))))

(assert (=> d!16391 (= (++!44 (toList!119 (left!712 (right!715 (left!712 ys!77)))) (toList!119 (right!715 (right!715 (left!712 ys!77))))) lt!6024)))

(declare-fun b!31506 () Bool)

(assert (=> b!31506 (= e!16055 (Cons!358 (h!275 (toList!119 (left!712 (right!715 (left!712 ys!77))))) (++!44 (t!4378 (toList!119 (left!712 (right!715 (left!712 ys!77))))) (toList!119 (right!715 (right!715 (left!712 ys!77)))))))))

(declare-fun b!31505 () Bool)

(assert (=> b!31505 (= e!16055 (toList!119 (right!715 (right!715 (left!712 ys!77)))))))

(declare-fun b!31507 () Bool)

(declare-fun res!14486 () Bool)

(assert (=> b!31507 (=> (not res!14486) (not e!16056))))

(assert (=> b!31507 (= res!14486 (= (size!277 lt!6024) (+ (size!277 (toList!119 (left!712 (right!715 (left!712 ys!77))))) (size!277 (toList!119 (right!715 (right!715 (left!712 ys!77))))))))))

(declare-fun b!31508 () Bool)

(assert (=> b!31508 (= e!16056 (or (not (= (toList!119 (right!715 (right!715 (left!712 ys!77)))) Nil!359)) (= lt!6024 (toList!119 (left!712 (right!715 (left!712 ys!77)))))))))

(assert (= (and d!16391 c!6903) b!31505))

(assert (= (and d!16391 (not c!6903)) b!31506))

(assert (= (and d!16391 res!14487) b!31507))

(assert (= (and b!31507 res!14486) b!31508))

(declare-fun m!34267 () Bool)

(assert (=> d!16391 m!34267))

(assert (=> d!16391 m!33393))

(declare-fun m!34269 () Bool)

(assert (=> d!16391 m!34269))

(assert (=> d!16391 m!33395))

(declare-fun m!34271 () Bool)

(assert (=> d!16391 m!34271))

(assert (=> b!31506 m!33395))

(declare-fun m!34273 () Bool)

(assert (=> b!31506 m!34273))

(declare-fun m!34275 () Bool)

(assert (=> b!31507 m!34275))

(assert (=> b!31507 m!33393))

(declare-fun m!34277 () Bool)

(assert (=> b!31507 m!34277))

(assert (=> b!31507 m!33395))

(declare-fun m!34279 () Bool)

(assert (=> b!31507 m!34279))

(assert (=> b!30990 d!16391))

(declare-fun b!31509 () Bool)

(declare-fun e!16057 () List!364)

(assert (=> b!31509 (= e!16057 Nil!359)))

(declare-fun b!31511 () Bool)

(declare-fun e!16058 () List!364)

(assert (=> b!31511 (= e!16058 (Cons!358 (x!8961 (left!712 (right!715 (left!712 ys!77)))) Nil!359))))

(declare-fun b!31512 () Bool)

(assert (=> b!31512 (= e!16058 (++!44 (toList!119 (left!712 (left!712 (right!715 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (right!715 (left!712 ys!77)))))))))

(declare-fun d!16393 () Bool)

(declare-fun lt!6025 () List!364)

(assert (=> d!16393 (= (size!277 lt!6025) (size!278 (left!712 (right!715 (left!712 ys!77)))))))

(assert (=> d!16393 (= lt!6025 e!16057)))

(declare-fun c!6904 () Bool)

(assert (=> d!16393 (= c!6904 (is-Empty!78 (left!712 (right!715 (left!712 ys!77)))))))

(assert (=> d!16393 (= (toList!119 (left!712 (right!715 (left!712 ys!77)))) lt!6025)))

(declare-fun b!31510 () Bool)

(assert (=> b!31510 (= e!16057 e!16058)))

(declare-fun c!6905 () Bool)

(assert (=> b!31510 (= c!6905 (is-Single!67 (left!712 (right!715 (left!712 ys!77)))))))

(assert (= (and b!31510 c!6905) b!31511))

(assert (= (and b!31510 (not c!6905)) b!31512))

(assert (= (and d!16393 c!6904) b!31509))

(assert (= (and d!16393 (not c!6904)) b!31510))

(declare-fun m!34281 () Bool)

(assert (=> b!31512 m!34281))

(declare-fun m!34283 () Bool)

(assert (=> b!31512 m!34283))

(assert (=> b!31512 m!34281))

(assert (=> b!31512 m!34283))

(declare-fun m!34285 () Bool)

(assert (=> b!31512 m!34285))

(declare-fun m!34287 () Bool)

(assert (=> d!16393 m!34287))

(assert (=> d!16393 m!34083))

(assert (=> b!30990 d!16393))

(declare-fun b!31513 () Bool)

(declare-fun e!16059 () List!364)

(assert (=> b!31513 (= e!16059 Nil!359)))

(declare-fun b!31515 () Bool)

(declare-fun e!16060 () List!364)

(assert (=> b!31515 (= e!16060 (Cons!358 (x!8961 (right!715 (right!715 (left!712 ys!77)))) Nil!359))))

(declare-fun b!31516 () Bool)

(assert (=> b!31516 (= e!16060 (++!44 (toList!119 (left!712 (right!715 (right!715 (left!712 ys!77))))) (toList!119 (right!715 (right!715 (right!715 (left!712 ys!77)))))))))

(declare-fun d!16395 () Bool)

(declare-fun lt!6026 () List!364)

(assert (=> d!16395 (= (size!277 lt!6026) (size!278 (right!715 (right!715 (left!712 ys!77)))))))

(assert (=> d!16395 (= lt!6026 e!16059)))

(declare-fun c!6906 () Bool)

(assert (=> d!16395 (= c!6906 (is-Empty!78 (right!715 (right!715 (left!712 ys!77)))))))

(assert (=> d!16395 (= (toList!119 (right!715 (right!715 (left!712 ys!77)))) lt!6026)))

(declare-fun b!31514 () Bool)

(assert (=> b!31514 (= e!16059 e!16060)))

(declare-fun c!6907 () Bool)

(assert (=> b!31514 (= c!6907 (is-Single!67 (right!715 (right!715 (left!712 ys!77)))))))

(assert (= (and b!31514 c!6907) b!31515))

(assert (= (and b!31514 (not c!6907)) b!31516))

(assert (= (and d!16395 c!6906) b!31513))

(assert (= (and d!16395 (not c!6906)) b!31514))

(declare-fun m!34289 () Bool)

(assert (=> b!31516 m!34289))

(declare-fun m!34291 () Bool)

(assert (=> b!31516 m!34291))

(assert (=> b!31516 m!34289))

(assert (=> b!31516 m!34291))

(declare-fun m!34293 () Bool)

(assert (=> b!31516 m!34293))

(declare-fun m!34295 () Bool)

(assert (=> d!16395 m!34295))

(assert (=> d!16395 m!34085))

(assert (=> b!30990 d!16395))

(declare-fun b!31517 () Bool)

(declare-fun e!16061 () Bool)

(assert (=> b!31517 (= e!16061 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (right!715 xs!533)) (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun lt!6027 () Bool)

(assert (=> b!31517 (= lt!6027 (appendAssoc!12 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (right!715 xs!533)) (toList!119 (left!712 (left!712 ys!77)))))))

(declare-fun d!16397 () Bool)

(assert (=> d!16397 e!16061))

(declare-fun c!6908 () Bool)

(assert (=> d!16397 (= c!6908 (is-Cons!358 (toList!119 (left!712 xs!533))))))

(assert (=> d!16397 (= (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533)) (toList!119 (left!712 (left!712 ys!77)))) true)))

(declare-fun b!31518 () Bool)

(assert (=> b!31518 (= e!16061 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (right!715 xs!533)) (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16397 c!6908) b!31517))

(assert (= (and d!16397 (not c!6908)) b!31518))

(assert (=> b!31517 m!33101))

(assert (=> b!31517 m!33083))

(declare-fun m!34297 () Bool)

(assert (=> b!31517 m!34297))

(assert (=> b!31517 m!33095))

(declare-fun m!34299 () Bool)

(assert (=> b!31517 m!34299))

(declare-fun m!34301 () Bool)

(assert (=> b!31517 m!34301))

(assert (=> b!31517 m!33095))

(assert (=> b!31517 m!33101))

(assert (=> b!31517 m!33377))

(assert (=> b!31517 m!33101))

(assert (=> b!31517 m!33083))

(assert (=> b!31517 m!34299))

(assert (=> b!31517 m!33377))

(assert (=> b!31517 m!33083))

(declare-fun m!34303 () Bool)

(assert (=> b!31517 m!34303))

(assert (=> b!31518 m!33095))

(assert (=> b!31518 m!33101))

(assert (=> b!31518 m!33377))

(assert (=> b!31518 m!33377))

(assert (=> b!31518 m!33083))

(assert (=> b!31518 m!34303))

(assert (=> b!31518 m!33101))

(assert (=> b!31518 m!33083))

(assert (=> b!31518 m!34299))

(assert (=> b!31518 m!33095))

(assert (=> b!31518 m!34299))

(assert (=> b!31518 m!34301))

(assert (=> b!30993 d!16397))

(assert (=> b!30993 d!16061))

(assert (=> b!30993 d!16089))

(assert (=> b!30993 d!16071))

(assert (=> b!30881 d!16169))

(assert (=> b!30881 d!16171))

(declare-fun b!31520 () Bool)

(declare-fun e!16062 () Int)

(declare-fun lt!6030 () Int)

(declare-fun lt!6028 () Int)

(assert (=> b!31520 (= e!16062 (+ 1 (ite (>= lt!6030 lt!6028) lt!6030 lt!6028)))))

(assert (=> b!31520 (= lt!6028 (level!56 (right!715 lt!5799)))))

(assert (=> b!31520 (= lt!6030 (level!56 (left!712 lt!5799)))))

(declare-fun d!16399 () Bool)

(declare-fun lt!6029 () Int)

(assert (=> d!16399 (>= lt!6029 0)))

(assert (=> d!16399 (= lt!6029 e!16062)))

(declare-fun c!6909 () Bool)

(assert (=> d!16399 (= c!6909 (or (is-Empty!78 lt!5799) (is-Single!67 lt!5799)))))

(assert (=> d!16399 (= (level!56 lt!5799) lt!6029)))

(declare-fun b!31519 () Bool)

(assert (=> b!31519 (= e!16062 0)))

(assert (= (and d!16399 c!6909) b!31519))

(assert (= (and d!16399 (not c!6909)) b!31520))

(assert (=> b!31520 m!33923))

(assert (=> b!31520 m!33921))

(assert (=> b!30881 d!16399))

(declare-fun b!31521 () Bool)

(declare-fun res!14497 () Bool)

(declare-fun e!16068 () Bool)

(assert (=> b!31521 (=> (not res!14497) (not e!16068))))

(assert (=> b!31521 (= res!14497 (balanced!63 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(declare-fun b!31522 () Bool)

(declare-fun res!14492 () Bool)

(declare-fun e!16063 () Bool)

(assert (=> b!31522 (=> (not res!14492) (not e!16063))))

(declare-fun lt!6031 () Conc!68)

(assert (=> b!31522 (= res!14492 (balanced!63 lt!6031))))

(declare-fun b!31523 () Bool)

(declare-fun e!16065 () Conc!68)

(declare-fun res!14495 () Conc!68)

(assert (=> b!31523 (= e!16065 res!14495)))

(assert (=> b!31523 true))

(declare-fun e!16064 () Bool)

(assert (=> b!31523 e!16064))

(declare-fun b!31524 () Bool)

(declare-fun res!14489 () Bool)

(assert (=> b!31524 (=> (not res!14489) (not e!16063))))

(declare-fun lt!6046 () Int)

(declare-fun lt!6033 () Int)

(declare-fun lt!6045 () Int)

(assert (=> b!31524 (= res!14489 (>= lt!6033 (ite (>= lt!6045 lt!6046) lt!6045 lt!6046)))))

(assert (=> b!31524 (= lt!6046 (level!56 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(assert (=> b!31524 (= lt!6045 (level!56 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> b!31524 (= lt!6033 (level!56 lt!6031))))

(declare-fun b!31525 () Bool)

(declare-fun e!16069 () Bool)

(assert (=> b!31525 (= e!16069 e!16063)))

(declare-fun res!14493 () Bool)

(assert (=> b!31525 (=> (not res!14493) (not e!16063))))

(declare-fun lt!6038 () Int)

(declare-fun lt!6037 () Int)

(declare-fun lt!6043 () Int)

(assert (=> b!31525 (= res!14493 (<= lt!6043 (+ (ite (>= lt!6037 lt!6038) lt!6037 lt!6038) 1)))))

(assert (=> b!31525 (= lt!6038 (level!56 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(assert (=> b!31525 (= lt!6037 (level!56 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> b!31525 (= lt!6043 (level!56 lt!6031))))

(declare-fun lt!6036 () Int)

(declare-fun lt!6042 () Bool)

(declare-fun lt!6044 () Int)

(declare-fun b!31526 () Bool)

(assert (=> b!31526 (= e!16065 (concatNonEmpty!19 (ite lt!6042 (ite (>= lt!6044 lt!6036) (right!715 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (right!715 (right!715 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))) (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (ite lt!6042 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))) (ite (>= lt!6044 lt!6036) (left!712 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))) (left!712 (left!712 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))))))

(declare-fun b!31527 () Bool)

(declare-fun lt!6034 () Bool)

(declare-fun e!16067 () Int)

(assert (=> b!31527 (= e!16067 (level!56 (ite lt!6034 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))))

(declare-fun b!31528 () Bool)

(assert (=> b!31528 (= e!16068 (not (isEmpty!324 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))))))

(declare-fun b!31529 () Bool)

(declare-fun res!14496 () Bool)

(assert (=> b!31529 (=> (not res!14496) (not e!16068))))

(assert (=> b!31529 (= res!14496 (not (isEmpty!324 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))))

(declare-fun b!31530 () Bool)

(assert (=> b!31530 (= e!16064 tp_is_empty!181)))

(declare-fun b!31531 () Bool)

(declare-fun res!14498 () Int)

(assert (=> b!31531 (= e!16067 res!14498)))

(assert (=> b!31531 true))

(assert (=> b!31531 true))

(declare-fun b!31532 () Bool)

(declare-fun tp!6494 () Bool)

(declare-fun tp!6495 () Bool)

(assert (=> b!31532 (= e!16064 (and tp!6494 tp!6495))))

(declare-fun b!31533 () Bool)

(declare-fun res!14494 () Bool)

(assert (=> b!31533 (=> (not res!14494) (not e!16063))))

(assert (=> b!31533 (= res!14494 (appendAssocInst!16 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(declare-fun e!16070 () Conc!68)

(declare-fun b!31534 () Bool)

(assert (=> b!31534 (= e!16070 (CC!67 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(declare-fun d!16401 () Bool)

(assert (=> d!16401 e!16069))

(declare-fun res!14491 () Bool)

(assert (=> d!16401 (=> (not res!14491) (not e!16069))))

(assert (=> d!16401 (= res!14491 (is-CC!67 lt!6031))))

(assert (=> d!16401 (= lt!6031 e!16070)))

(declare-fun c!6912 () Bool)

(declare-fun lt!6041 () Int)

(assert (=> d!16401 (= c!6912 (and (>= lt!6041 (- 1)) (<= lt!6041 1)))))

(assert (=> d!16401 (= lt!6041 (- (level!56 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))) (level!56 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))))))

(assert (=> d!16401 e!16068))

(declare-fun res!14500 () Bool)

(assert (=> d!16401 (=> (not res!14500) (not e!16068))))

(declare-fun e!16066 () Bool)

(assert (=> d!16401 (= res!14500 e!16066)))

(declare-fun res!14499 () Bool)

(assert (=> d!16401 (=> (not res!14499) (not e!16066))))

(assert (=> d!16401 (= res!14499 (concInv!62 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(assert (=> d!16401 (= (concatNonEmpty!19 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))) lt!6031)))

(declare-fun b!31535 () Bool)

(declare-fun res!14490 () Bool)

(assert (=> b!31535 (=> (not res!14490) (not e!16063))))

(assert (=> b!31535 (= res!14490 (concInv!62 lt!6031))))

(declare-fun lt!6032 () Int)

(declare-fun lt!6039 () Conc!68)

(declare-fun lt!6035 () Int)

(declare-fun b!31536 () Bool)

(declare-fun lt!6040 () Bool)

(assert (=> b!31536 (= e!16070 (ite lt!6040 (let ((res!14161 lt!6039)) (ite (>= lt!6044 lt!6036) (CC!67 (left!712 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) res!14161) (ite (= lt!6035 (- lt!6032 3)) (CC!67 (left!712 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (CC!67 (left!712 (right!715 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) res!14161)) (CC!67 (CC!67 (left!712 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (left!712 (right!715 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))) res!14161)))) (let ((res!14164 lt!6039)) (ite (>= lt!6044 lt!6036) (CC!67 res!14164 (right!715 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))) (ite (= lt!6035 (- lt!6032 3)) (CC!67 (CC!67 res!14164 (right!715 (left!712 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))) (right!715 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))) (CC!67 res!14164 (CC!67 (right!715 (left!712 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))) (right!715 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))))))))

(assert (=> b!31536 (= lt!6032 e!16067)))

(declare-fun c!6913 () Bool)

(assert (=> b!31536 (= c!6913 (or lt!6034 (and (not lt!6040) (not (>= lt!6044 lt!6036)))))))

(assert (=> b!31536 (= lt!6034 (and lt!6040 (not (>= lt!6044 lt!6036))))))

(declare-fun e!16071 () Int)

(assert (=> b!31536 (= lt!6035 e!16071)))

(declare-fun c!6910 () Bool)

(assert (=> b!31536 (= c!6910 (or (and lt!6040 (not (>= lt!6044 lt!6036))) (and (not lt!6040) (not (>= lt!6044 lt!6036)))))))

(assert (=> b!31536 (= lt!6039 e!16065)))

(declare-fun c!6911 () Bool)

(assert (=> b!31536 (= c!6911 (or lt!6042 (not lt!6040)))))

(assert (=> b!31536 (= lt!6042 lt!6040)))

(assert (=> b!31536 (= lt!6036 (level!56 (ite lt!6040 (right!715 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (left!712 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))))

(assert (=> b!31536 (= lt!6044 (level!56 (ite lt!6040 (left!712 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))) (right!715 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))))

(assert (=> b!31536 (= lt!6040 (< lt!6041 (- 1)))))

(declare-fun b!31537 () Bool)

(declare-fun res!14501 () Bool)

(assert (=> b!31537 (=> (not res!14501) (not e!16068))))

(assert (=> b!31537 (= res!14501 (concInv!62 (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(declare-fun b!31538 () Bool)

(assert (=> b!31538 (= e!16066 (balanced!63 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533))))))

(declare-fun b!31539 () Bool)

(declare-fun res!14488 () Int)

(assert (=> b!31539 (= e!16071 res!14488)))

(assert (=> b!31539 true))

(declare-fun b!31540 () Bool)

(assert (=> b!31540 (= e!16063 (concatCorrectness!16 lt!6031 (ite lt!5810 (ite (>= lt!5812 lt!5804) (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (right!715 (right!715 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)))) (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (ite lt!5810 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77)))))) (ite (>= lt!5812 lt!5804) (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (left!712 (left!712 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))))

(declare-fun b!31541 () Bool)

(assert (=> b!31541 (= e!16071 (level!56 lt!6039))))

(assert (= (and d!16401 res!14499) b!31538))

(assert (= (and d!16401 res!14500) b!31537))

(assert (= (and b!31537 res!14501) b!31521))

(assert (= (and b!31521 res!14497) b!31529))

(assert (= (and b!31529 res!14496) b!31528))

(assert (= (and b!31523 (is-CC!67 res!14495)) b!31532))

(assert (= (and b!31523 (is-Single!67 res!14495)) b!31530))

(assert (= (and b!31536 c!6911) b!31526))

(assert (= (and b!31536 (not c!6911)) b!31523))

(assert (= (and b!31536 c!6910) b!31541))

(assert (= (and b!31536 (not c!6910)) b!31539))

(assert (= (and b!31536 c!6913) b!31527))

(assert (= (and b!31536 (not c!6913)) b!31531))

(assert (= (and d!16401 c!6912) b!31534))

(assert (= (and d!16401 (not c!6912)) b!31536))

(assert (= (and d!16401 res!14491) b!31525))

(assert (= (and b!31525 res!14493) b!31524))

(assert (= (and b!31524 res!14489) b!31535))

(assert (= (and b!31535 res!14490) b!31522))

(assert (= (and b!31522 res!14492) b!31533))

(assert (= (and b!31533 res!14494) b!31540))

(declare-fun m!34305 () Bool)

(assert (=> b!31533 m!34305))

(declare-fun m!34307 () Bool)

(assert (=> b!31535 m!34307))

(declare-fun m!34309 () Bool)

(assert (=> d!16401 m!34309))

(declare-fun m!34311 () Bool)

(assert (=> d!16401 m!34311))

(declare-fun m!34313 () Bool)

(assert (=> d!16401 m!34313))

(declare-fun m!34315 () Bool)

(assert (=> b!31540 m!34315))

(declare-fun m!34317 () Bool)

(assert (=> b!31538 m!34317))

(declare-fun m!34319 () Bool)

(assert (=> b!31521 m!34319))

(declare-fun m!34321 () Bool)

(assert (=> b!31536 m!34321))

(declare-fun m!34323 () Bool)

(assert (=> b!31536 m!34323))

(declare-fun m!34325 () Bool)

(assert (=> b!31541 m!34325))

(declare-fun m!34327 () Bool)

(assert (=> b!31528 m!34327))

(declare-fun m!34329 () Bool)

(assert (=> b!31527 m!34329))

(declare-fun m!34331 () Bool)

(assert (=> b!31529 m!34331))

(declare-fun m!34333 () Bool)

(assert (=> b!31522 m!34333))

(declare-fun m!34335 () Bool)

(assert (=> b!31526 m!34335))

(declare-fun m!34337 () Bool)

(assert (=> b!31537 m!34337))

(assert (=> b!31525 m!34309))

(assert (=> b!31525 m!34311))

(declare-fun m!34339 () Bool)

(assert (=> b!31525 m!34339))

(assert (=> b!31524 m!34309))

(assert (=> b!31524 m!34311))

(assert (=> b!31524 m!34339))

(assert (=> b!30883 d!16401))

(declare-fun d!16403 () Bool)

(assert (=> d!16403 (= (concatCorrectness!16 lt!5799 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))) (= (toList!119 lt!5799) (++!44 (toList!119 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (toList!119 (ite lt!5788 (left!712 (left!712 ys!77)) (ite (>= lt!5790 lt!5782) (left!712 (left!712 (left!712 ys!77))) (left!712 (left!712 (left!712 (left!712 ys!77))))))))))))

(declare-fun bs!5110 () Bool)

(assert (= bs!5110 d!16403))

(assert (=> bs!5110 m!33617))

(assert (=> bs!5110 m!33629))

(declare-fun m!34341 () Bool)

(assert (=> bs!5110 m!34341))

(declare-fun m!34343 () Bool)

(assert (=> bs!5110 m!34343))

(assert (=> bs!5110 m!33617))

(assert (=> bs!5110 m!33629))

(assert (=> b!30897 d!16403))

(declare-fun b!31545 () Bool)

(declare-fun e!16072 () Bool)

(assert (=> b!31545 (= e!16072 (concInv!62 (right!715 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun b!31542 () Bool)

(declare-fun e!16073 () Bool)

(assert (=> b!31542 (= e!16073 e!16072)))

(declare-fun res!14503 () Bool)

(assert (=> b!31542 (=> (not res!14503) (not e!16072))))

(assert (=> b!31542 (= res!14503 (not (isEmpty!324 (left!712 (right!715 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31543 () Bool)

(declare-fun res!14505 () Bool)

(assert (=> b!31543 (=> (not res!14505) (not e!16072))))

(assert (=> b!31543 (= res!14505 (not (isEmpty!324 (right!715 (right!715 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31544 () Bool)

(declare-fun res!14502 () Bool)

(assert (=> b!31544 (=> (not res!14502) (not e!16072))))

(assert (=> b!31544 (= res!14502 (concInv!62 (left!712 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun d!16405 () Bool)

(declare-fun res!14504 () Bool)

(assert (=> d!16405 (=> res!14504 e!16073)))

(assert (=> d!16405 (= res!14504 (not (is-CC!67 (right!715 (left!712 (left!712 ys!77))))))))

(assert (=> d!16405 (= (concInv!62 (right!715 (left!712 (left!712 ys!77)))) e!16073)))

(assert (= (and d!16405 (not res!14504)) b!31542))

(assert (= (and b!31542 res!14503) b!31543))

(assert (= (and b!31543 res!14505) b!31544))

(assert (= (and b!31544 res!14502) b!31545))

(declare-fun m!34345 () Bool)

(assert (=> b!31545 m!34345))

(declare-fun m!34347 () Bool)

(assert (=> b!31542 m!34347))

(declare-fun m!34349 () Bool)

(assert (=> b!31543 m!34349))

(declare-fun m!34351 () Bool)

(assert (=> b!31544 m!34351))

(assert (=> b!30924 d!16405))

(declare-fun d!16407 () Bool)

(assert (=> d!16407 (= (isEmpty!324 (right!715 (right!715 ys!77))) (= (right!715 (right!715 ys!77)) Empty!78))))

(assert (=> b!31013 d!16407))

(declare-fun d!16409 () Bool)

(declare-fun lt!6047 () Int)

(assert (=> d!16409 (>= lt!6047 0)))

(declare-fun e!16074 () Int)

(assert (=> d!16409 (= lt!6047 e!16074)))

(declare-fun c!6914 () Bool)

(assert (=> d!16409 (= c!6914 (is-Nil!359 lt!5850))))

(assert (=> d!16409 (= (size!277 lt!5850) lt!6047)))

(declare-fun b!31546 () Bool)

(assert (=> b!31546 (= e!16074 0)))

(declare-fun b!31547 () Bool)

(assert (=> b!31547 (= e!16074 (+ 1 (size!277 (t!4378 lt!5850))))))

(assert (= (and d!16409 c!6914) b!31546))

(assert (= (and d!16409 (not c!6914)) b!31547))

(declare-fun m!34353 () Bool)

(assert (=> b!31547 m!34353))

(assert (=> d!16061 d!16409))

(declare-fun d!16411 () Bool)

(declare-fun lt!6048 () Int)

(assert (=> d!16411 (>= lt!6048 0)))

(declare-fun e!16075 () Int)

(assert (=> d!16411 (= lt!6048 e!16075)))

(declare-fun c!6915 () Bool)

(assert (=> d!16411 (= c!6915 (is-Empty!78 (left!712 xs!533)))))

(assert (=> d!16411 (= (size!278 (left!712 xs!533)) lt!6048)))

(declare-fun b!31549 () Bool)

(declare-fun e!16076 () Int)

(assert (=> b!31549 (= e!16075 e!16076)))

(declare-fun c!6916 () Bool)

(assert (=> b!31549 (= c!6916 (is-Single!67 (left!712 xs!533)))))

(declare-fun b!31551 () Bool)

(assert (=> b!31551 (= e!16076 (+ (size!278 (left!712 (left!712 xs!533))) (size!278 (right!715 (left!712 xs!533)))))))

(declare-fun b!31550 () Bool)

(assert (=> b!31550 (= e!16076 1)))

(declare-fun b!31548 () Bool)

(assert (=> b!31548 (= e!16075 0)))

(assert (= (and b!31549 c!6916) b!31550))

(assert (= (and b!31549 (not c!6916)) b!31551))

(assert (= (and d!16411 c!6915) b!31548))

(assert (= (and d!16411 (not c!6915)) b!31549))

(declare-fun m!34355 () Bool)

(assert (=> b!31551 m!34355))

(declare-fun m!34357 () Bool)

(assert (=> b!31551 m!34357))

(assert (=> d!16061 d!16411))

(declare-fun b!31553 () Bool)

(declare-fun res!14507 () Bool)

(declare-fun e!16078 () Bool)

(assert (=> b!31553 (=> (not res!14507) (not e!16078))))

(assert (=> b!31553 (= res!14507 (<= (- (level!56 (left!712 (left!712 lt!5777))) (level!56 (right!715 (left!712 lt!5777)))) 1))))

(declare-fun b!31555 () Bool)

(assert (=> b!31555 (= e!16078 (balanced!63 (right!715 (left!712 lt!5777))))))

(declare-fun b!31554 () Bool)

(declare-fun res!14509 () Bool)

(assert (=> b!31554 (=> (not res!14509) (not e!16078))))

(assert (=> b!31554 (= res!14509 (balanced!63 (left!712 (left!712 lt!5777))))))

(declare-fun d!16413 () Bool)

(declare-fun res!14506 () Bool)

(declare-fun e!16077 () Bool)

(assert (=> d!16413 (=> res!14506 e!16077)))

(assert (=> d!16413 (= res!14506 (not (is-CC!67 (left!712 lt!5777))))))

(assert (=> d!16413 (= (balanced!63 (left!712 lt!5777)) e!16077)))

(declare-fun b!31552 () Bool)

(assert (=> b!31552 (= e!16077 e!16078)))

(declare-fun res!14508 () Bool)

(assert (=> b!31552 (=> (not res!14508) (not e!16078))))

(assert (=> b!31552 (= res!14508 (>= (- (level!56 (left!712 (left!712 lt!5777))) (level!56 (right!715 (left!712 lt!5777)))) (- 1)))))

(assert (= (and d!16413 (not res!14506)) b!31552))

(assert (= (and b!31552 res!14508) b!31553))

(assert (= (and b!31553 res!14507) b!31554))

(assert (= (and b!31554 res!14509) b!31555))

(assert (=> b!31553 m!34231))

(assert (=> b!31553 m!34229))

(declare-fun m!34359 () Bool)

(assert (=> b!31555 m!34359))

(declare-fun m!34361 () Bool)

(assert (=> b!31554 m!34361))

(assert (=> b!31552 m!34231))

(assert (=> b!31552 m!34229))

(assert (=> b!31060 d!16413))

(assert (=> b!31071 d!16043))

(assert (=> b!31071 d!16041))

(assert (=> b!30992 d!16071))

(assert (=> b!30992 d!16053))

(assert (=> b!30992 d!16055))

(declare-fun d!16415 () Bool)

(declare-fun e!16080 () Bool)

(assert (=> d!16415 e!16080))

(declare-fun res!14511 () Bool)

(assert (=> d!16415 (=> (not res!14511) (not e!16080))))

(declare-fun lt!6049 () List!364)

(assert (=> d!16415 (= res!14511 (= (content!74 lt!6049) (union (content!74 (toList!119 (right!715 (right!715 xs!533)))) (content!74 (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun e!16079 () List!364)

(assert (=> d!16415 (= lt!6049 e!16079)))

(declare-fun c!6917 () Bool)

(assert (=> d!16415 (= c!6917 (is-Nil!359 (toList!119 (right!715 (right!715 xs!533)))))))

(assert (=> d!16415 (= (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))) lt!6049)))

(declare-fun b!31557 () Bool)

(assert (=> b!31557 (= e!16079 (Cons!358 (h!275 (toList!119 (right!715 (right!715 xs!533)))) (++!44 (t!4378 (toList!119 (right!715 (right!715 xs!533)))) (toList!119 (left!712 (left!712 ys!77))))))))

(declare-fun b!31556 () Bool)

(assert (=> b!31556 (= e!16079 (toList!119 (left!712 (left!712 ys!77))))))

(declare-fun b!31558 () Bool)

(declare-fun res!14510 () Bool)

(assert (=> b!31558 (=> (not res!14510) (not e!16080))))

(assert (=> b!31558 (= res!14510 (= (size!277 lt!6049) (+ (size!277 (toList!119 (right!715 (right!715 xs!533)))) (size!277 (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31559 () Bool)

(assert (=> b!31559 (= e!16080 (or (not (= (toList!119 (left!712 (left!712 ys!77))) Nil!359)) (= lt!6049 (toList!119 (right!715 (right!715 xs!533))))))))

(assert (= (and d!16415 c!6917) b!31556))

(assert (= (and d!16415 (not c!6917)) b!31557))

(assert (= (and d!16415 res!14511) b!31558))

(assert (= (and b!31558 res!14510) b!31559))

(declare-fun m!34363 () Bool)

(assert (=> d!16415 m!34363))

(assert (=> d!16415 m!33091))

(assert (=> d!16415 m!33329))

(assert (=> d!16415 m!33083))

(assert (=> d!16415 m!33523))

(assert (=> b!31557 m!33083))

(declare-fun m!34365 () Bool)

(assert (=> b!31557 m!34365))

(declare-fun m!34367 () Bool)

(assert (=> b!31558 m!34367))

(assert (=> b!31558 m!33091))

(assert (=> b!31558 m!33337))

(assert (=> b!31558 m!33083))

(assert (=> b!31558 m!33529))

(assert (=> b!30992 d!16415))

(declare-fun b!31560 () Bool)

(declare-fun e!16081 () Bool)

(assert (=> b!31560 (= e!16081 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))))))))

(declare-fun lt!6050 () Bool)

(assert (=> b!31560 (= lt!6050 (appendAssoc!12 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))))))

(declare-fun d!16417 () Bool)

(assert (=> d!16417 e!16081))

(declare-fun c!6918 () Bool)

(assert (=> d!16417 (= c!6918 (is-Cons!358 (toList!119 (left!712 xs!533))))))

(assert (=> d!16417 (= (appendAssoc!12 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))) true)))

(declare-fun b!31561 () Bool)

(assert (=> b!31561 (= e!16081 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))) (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77))))))))))

(assert (= (and d!16417 c!6918) b!31560))

(assert (= (and d!16417 (not c!6918)) b!31561))

(assert (=> b!31560 m!33089))

(assert (=> b!31560 m!33411))

(declare-fun m!34369 () Bool)

(assert (=> b!31560 m!34369))

(assert (=> b!31560 m!33095))

(declare-fun m!34371 () Bool)

(assert (=> b!31560 m!34371))

(declare-fun m!34373 () Bool)

(assert (=> b!31560 m!34373))

(assert (=> b!31560 m!33095))

(assert (=> b!31560 m!33089))

(assert (=> b!31560 m!33347))

(assert (=> b!31560 m!33089))

(assert (=> b!31560 m!33411))

(assert (=> b!31560 m!34371))

(assert (=> b!31560 m!33347))

(assert (=> b!31560 m!33411))

(declare-fun m!34375 () Bool)

(assert (=> b!31560 m!34375))

(assert (=> b!31561 m!33095))

(assert (=> b!31561 m!33089))

(assert (=> b!31561 m!33347))

(assert (=> b!31561 m!33347))

(assert (=> b!31561 m!33411))

(assert (=> b!31561 m!34375))

(assert (=> b!31561 m!33089))

(assert (=> b!31561 m!33411))

(assert (=> b!31561 m!34371))

(assert (=> b!31561 m!33095))

(assert (=> b!31561 m!34371))

(assert (=> b!31561 m!34373))

(assert (=> b!30992 d!16417))

(assert (=> b!30992 d!16061))

(declare-fun d!16419 () Bool)

(assert (=> d!16419 (= (isEmpty!324 (right!715 (left!712 ys!77))) (= (right!715 (left!712 ys!77)) Empty!78))))

(assert (=> b!31025 d!16419))

(declare-fun b!31565 () Bool)

(declare-fun e!16082 () Bool)

(assert (=> b!31565 (= e!16082 (concInv!62 (right!715 lt!5799)))))

(declare-fun b!31562 () Bool)

(declare-fun e!16083 () Bool)

(assert (=> b!31562 (= e!16083 e!16082)))

(declare-fun res!14513 () Bool)

(assert (=> b!31562 (=> (not res!14513) (not e!16082))))

(assert (=> b!31562 (= res!14513 (not (isEmpty!324 (left!712 lt!5799))))))

(declare-fun b!31563 () Bool)

(declare-fun res!14515 () Bool)

(assert (=> b!31563 (=> (not res!14515) (not e!16082))))

(assert (=> b!31563 (= res!14515 (not (isEmpty!324 (right!715 lt!5799))))))

(declare-fun b!31564 () Bool)

(declare-fun res!14512 () Bool)

(assert (=> b!31564 (=> (not res!14512) (not e!16082))))

(assert (=> b!31564 (= res!14512 (concInv!62 (left!712 lt!5799)))))

(declare-fun d!16421 () Bool)

(declare-fun res!14514 () Bool)

(assert (=> d!16421 (=> res!14514 e!16083)))

(assert (=> d!16421 (= res!14514 (not (is-CC!67 lt!5799)))))

(assert (=> d!16421 (= (concInv!62 lt!5799) e!16083)))

(assert (= (and d!16421 (not res!14514)) b!31562))

(assert (= (and b!31562 res!14513) b!31563))

(assert (= (and b!31563 res!14515) b!31564))

(assert (= (and b!31564 res!14512) b!31565))

(declare-fun m!34377 () Bool)

(assert (=> b!31565 m!34377))

(declare-fun m!34379 () Bool)

(assert (=> b!31562 m!34379))

(declare-fun m!34381 () Bool)

(assert (=> b!31563 m!34381))

(declare-fun m!34383 () Bool)

(assert (=> b!31564 m!34383))

(assert (=> b!30892 d!16421))

(declare-fun d!16423 () Bool)

(declare-fun e!16085 () Bool)

(assert (=> d!16423 e!16085))

(declare-fun res!14517 () Bool)

(assert (=> d!16423 (=> (not res!14517) (not e!16085))))

(declare-fun lt!6051 () List!364)

(assert (=> d!16423 (= res!14517 (= (content!74 lt!6051) (union (content!74 (toList!119 (left!712 (left!712 xs!533)))) (content!74 (toList!119 (right!715 (left!712 xs!533)))))))))

(declare-fun e!16084 () List!364)

(assert (=> d!16423 (= lt!6051 e!16084)))

(declare-fun c!6919 () Bool)

(assert (=> d!16423 (= c!6919 (is-Nil!359 (toList!119 (left!712 (left!712 xs!533)))))))

(assert (=> d!16423 (= (++!44 (toList!119 (left!712 (left!712 xs!533))) (toList!119 (right!715 (left!712 xs!533)))) lt!6051)))

(declare-fun b!31567 () Bool)

(assert (=> b!31567 (= e!16084 (Cons!358 (h!275 (toList!119 (left!712 (left!712 xs!533)))) (++!44 (t!4378 (toList!119 (left!712 (left!712 xs!533)))) (toList!119 (right!715 (left!712 xs!533))))))))

(declare-fun b!31566 () Bool)

(assert (=> b!31566 (= e!16084 (toList!119 (right!715 (left!712 xs!533))))))

(declare-fun b!31568 () Bool)

(declare-fun res!14516 () Bool)

(assert (=> b!31568 (=> (not res!14516) (not e!16085))))

(assert (=> b!31568 (= res!14516 (= (size!277 lt!6051) (+ (size!277 (toList!119 (left!712 (left!712 xs!533)))) (size!277 (toList!119 (right!715 (left!712 xs!533)))))))))

(declare-fun b!31569 () Bool)

(assert (=> b!31569 (= e!16085 (or (not (= (toList!119 (right!715 (left!712 xs!533))) Nil!359)) (= lt!6051 (toList!119 (left!712 (left!712 xs!533))))))))

(assert (= (and d!16423 c!6919) b!31566))

(assert (= (and d!16423 (not c!6919)) b!31567))

(assert (= (and d!16423 res!14517) b!31568))

(assert (= (and b!31568 res!14516) b!31569))

(declare-fun m!34385 () Bool)

(assert (=> d!16423 m!34385))

(assert (=> d!16423 m!33351))

(declare-fun m!34387 () Bool)

(assert (=> d!16423 m!34387))

(assert (=> d!16423 m!33353))

(declare-fun m!34389 () Bool)

(assert (=> d!16423 m!34389))

(assert (=> b!31567 m!33353))

(declare-fun m!34391 () Bool)

(assert (=> b!31567 m!34391))

(declare-fun m!34393 () Bool)

(assert (=> b!31568 m!34393))

(assert (=> b!31568 m!33351))

(declare-fun m!34395 () Bool)

(assert (=> b!31568 m!34395))

(assert (=> b!31568 m!33353))

(declare-fun m!34397 () Bool)

(assert (=> b!31568 m!34397))

(assert (=> b!30968 d!16423))

(declare-fun b!31570 () Bool)

(declare-fun e!16086 () List!364)

(assert (=> b!31570 (= e!16086 Nil!359)))

(declare-fun b!31572 () Bool)

(declare-fun e!16087 () List!364)

(assert (=> b!31572 (= e!16087 (Cons!358 (x!8961 (left!712 (left!712 xs!533))) Nil!359))))

(declare-fun b!31573 () Bool)

(assert (=> b!31573 (= e!16087 (++!44 (toList!119 (left!712 (left!712 (left!712 xs!533)))) (toList!119 (right!715 (left!712 (left!712 xs!533))))))))

(declare-fun d!16425 () Bool)

(declare-fun lt!6052 () List!364)

(assert (=> d!16425 (= (size!277 lt!6052) (size!278 (left!712 (left!712 xs!533))))))

(assert (=> d!16425 (= lt!6052 e!16086)))

(declare-fun c!6920 () Bool)

(assert (=> d!16425 (= c!6920 (is-Empty!78 (left!712 (left!712 xs!533))))))

(assert (=> d!16425 (= (toList!119 (left!712 (left!712 xs!533))) lt!6052)))

(declare-fun b!31571 () Bool)

(assert (=> b!31571 (= e!16086 e!16087)))

(declare-fun c!6921 () Bool)

(assert (=> b!31571 (= c!6921 (is-Single!67 (left!712 (left!712 xs!533))))))

(assert (= (and b!31571 c!6921) b!31572))

(assert (= (and b!31571 (not c!6921)) b!31573))

(assert (= (and d!16425 c!6920) b!31570))

(assert (= (and d!16425 (not c!6920)) b!31571))

(declare-fun m!34399 () Bool)

(assert (=> b!31573 m!34399))

(declare-fun m!34401 () Bool)

(assert (=> b!31573 m!34401))

(assert (=> b!31573 m!34399))

(assert (=> b!31573 m!34401))

(declare-fun m!34403 () Bool)

(assert (=> b!31573 m!34403))

(declare-fun m!34405 () Bool)

(assert (=> d!16425 m!34405))

(assert (=> d!16425 m!34355))

(assert (=> b!30968 d!16425))

(declare-fun b!31574 () Bool)

(declare-fun e!16088 () List!364)

(assert (=> b!31574 (= e!16088 Nil!359)))

(declare-fun b!31576 () Bool)

(declare-fun e!16089 () List!364)

(assert (=> b!31576 (= e!16089 (Cons!358 (x!8961 (right!715 (left!712 xs!533))) Nil!359))))

(declare-fun b!31577 () Bool)

(assert (=> b!31577 (= e!16089 (++!44 (toList!119 (left!712 (right!715 (left!712 xs!533)))) (toList!119 (right!715 (right!715 (left!712 xs!533))))))))

(declare-fun d!16427 () Bool)

(declare-fun lt!6053 () List!364)

(assert (=> d!16427 (= (size!277 lt!6053) (size!278 (right!715 (left!712 xs!533))))))

(assert (=> d!16427 (= lt!6053 e!16088)))

(declare-fun c!6922 () Bool)

(assert (=> d!16427 (= c!6922 (is-Empty!78 (right!715 (left!712 xs!533))))))

(assert (=> d!16427 (= (toList!119 (right!715 (left!712 xs!533))) lt!6053)))

(declare-fun b!31575 () Bool)

(assert (=> b!31575 (= e!16088 e!16089)))

(declare-fun c!6923 () Bool)

(assert (=> b!31575 (= c!6923 (is-Single!67 (right!715 (left!712 xs!533))))))

(assert (= (and b!31575 c!6923) b!31576))

(assert (= (and b!31575 (not c!6923)) b!31577))

(assert (= (and d!16427 c!6922) b!31574))

(assert (= (and d!16427 (not c!6922)) b!31575))

(declare-fun m!34407 () Bool)

(assert (=> b!31577 m!34407))

(declare-fun m!34409 () Bool)

(assert (=> b!31577 m!34409))

(assert (=> b!31577 m!34407))

(assert (=> b!31577 m!34409))

(declare-fun m!34411 () Bool)

(assert (=> b!31577 m!34411))

(declare-fun m!34413 () Bool)

(assert (=> d!16427 m!34413))

(assert (=> d!16427 m!34357))

(assert (=> b!30968 d!16427))

(declare-fun d!16429 () Bool)

(declare-fun e!16091 () Bool)

(assert (=> d!16429 e!16091))

(declare-fun res!14519 () Bool)

(assert (=> d!16429 (=> (not res!14519) (not e!16091))))

(declare-fun lt!6054 () List!364)

(assert (=> d!16429 (= res!14519 (= (content!74 lt!6054) (union (content!74 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))))) (content!74 (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun e!16090 () List!364)

(assert (=> d!16429 (= lt!6054 e!16090)))

(declare-fun c!6924 () Bool)

(assert (=> d!16429 (= c!6924 (is-Nil!359 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))))))))

(assert (=> d!16429 (= (++!44 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) lt!6054)))

(declare-fun b!31579 () Bool)

(assert (=> b!31579 (= e!16090 (Cons!358 (h!275 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))))) (++!44 (t!4378 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))

(declare-fun b!31578 () Bool)

(assert (=> b!31578 (= e!16090 (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))

(declare-fun b!31580 () Bool)

(declare-fun res!14518 () Bool)

(assert (=> b!31580 (=> (not res!14518) (not e!16091))))

(assert (=> b!31580 (= res!14518 (= (size!277 lt!6054) (+ (size!277 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533))))) (size!277 (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun b!31581 () Bool)

(assert (=> b!31581 (= e!16091 (or (not (= (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)) Nil!359)) (= lt!6054 (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))))))))

(assert (= (and d!16429 c!6924) b!31578))

(assert (= (and d!16429 (not c!6924)) b!31579))

(assert (= (and d!16429 res!14519) b!31580))

(assert (= (and b!31580 res!14518) b!31581))

(declare-fun m!34415 () Bool)

(assert (=> d!16429 m!34415))

(assert (=> d!16429 m!33347))

(declare-fun m!34417 () Bool)

(assert (=> d!16429 m!34417))

(assert (=> d!16429 m!33097))

(assert (=> d!16429 m!34021))

(assert (=> b!31579 m!33097))

(declare-fun m!34419 () Bool)

(assert (=> b!31579 m!34419))

(declare-fun m!34421 () Bool)

(assert (=> b!31580 m!34421))

(assert (=> b!31580 m!33347))

(declare-fun m!34423 () Bool)

(assert (=> b!31580 m!34423))

(assert (=> b!31580 m!33097))

(assert (=> b!31580 m!34027))

(assert (=> b!30964 d!16429))

(declare-fun d!16431 () Bool)

(declare-fun e!16093 () Bool)

(assert (=> d!16431 e!16093))

(declare-fun res!14521 () Bool)

(assert (=> d!16431 (=> (not res!14521) (not e!16093))))

(declare-fun lt!6055 () List!364)

(assert (=> d!16431 (= res!14521 (= (content!74 lt!6055) (union (content!74 (toList!119 (left!712 xs!533))) (content!74 (toList!119 (left!712 (right!715 xs!533)))))))))

(declare-fun e!16092 () List!364)

(assert (=> d!16431 (= lt!6055 e!16092)))

(declare-fun c!6925 () Bool)

(assert (=> d!16431 (= c!6925 (is-Nil!359 (toList!119 (left!712 xs!533))))))

(assert (=> d!16431 (= (++!44 (toList!119 (left!712 xs!533)) (toList!119 (left!712 (right!715 xs!533)))) lt!6055)))

(declare-fun b!31583 () Bool)

(assert (=> b!31583 (= e!16092 (Cons!358 (h!275 (toList!119 (left!712 xs!533))) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (left!712 (right!715 xs!533))))))))

(declare-fun b!31582 () Bool)

(assert (=> b!31582 (= e!16092 (toList!119 (left!712 (right!715 xs!533))))))

(declare-fun b!31584 () Bool)

(declare-fun res!14520 () Bool)

(assert (=> b!31584 (=> (not res!14520) (not e!16093))))

(assert (=> b!31584 (= res!14520 (= (size!277 lt!6055) (+ (size!277 (toList!119 (left!712 xs!533))) (size!277 (toList!119 (left!712 (right!715 xs!533)))))))))

(declare-fun b!31585 () Bool)

(assert (=> b!31585 (= e!16093 (or (not (= (toList!119 (left!712 (right!715 xs!533))) Nil!359)) (= lt!6055 (toList!119 (left!712 xs!533)))))))

(assert (= (and d!16431 c!6925) b!31582))

(assert (= (and d!16431 (not c!6925)) b!31583))

(assert (= (and d!16431 res!14521) b!31584))

(assert (= (and b!31584 res!14520) b!31585))

(declare-fun m!34425 () Bool)

(assert (=> d!16431 m!34425))

(assert (=> d!16431 m!33095))

(assert (=> d!16431 m!33951))

(assert (=> d!16431 m!33089))

(assert (=> d!16431 m!34011))

(assert (=> b!31583 m!33089))

(declare-fun m!34427 () Bool)

(assert (=> b!31583 m!34427))

(declare-fun m!34429 () Bool)

(assert (=> b!31584 m!34429))

(assert (=> b!31584 m!33095))

(assert (=> b!31584 m!33959))

(assert (=> b!31584 m!33089))

(assert (=> b!31584 m!34017))

(assert (=> b!30964 d!16431))

(declare-fun d!16433 () Bool)

(declare-fun e!16095 () Bool)

(assert (=> d!16433 e!16095))

(declare-fun res!14523 () Bool)

(assert (=> d!16433 (=> (not res!14523) (not e!16095))))

(declare-fun lt!6056 () List!364)

(assert (=> d!16433 (= res!14523 (= (content!74 lt!6056) (union (content!74 (toList!119 (left!712 xs!533))) (content!74 (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))))

(declare-fun e!16094 () List!364)

(assert (=> d!16433 (= lt!6056 e!16094)))

(declare-fun c!6926 () Bool)

(assert (=> d!16433 (= c!6926 (is-Nil!359 (toList!119 (left!712 xs!533))))))

(assert (=> d!16433 (= (++!44 (toList!119 (left!712 xs!533)) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))) lt!6056)))

(declare-fun b!31587 () Bool)

(assert (=> b!31587 (= e!16094 (Cons!358 (h!275 (toList!119 (left!712 xs!533))) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun b!31586 () Bool)

(assert (=> b!31586 (= e!16094 (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))

(declare-fun b!31588 () Bool)

(declare-fun res!14522 () Bool)

(assert (=> b!31588 (=> (not res!14522) (not e!16095))))

(assert (=> b!31588 (= res!14522 (= (size!277 lt!6056) (+ (size!277 (toList!119 (left!712 xs!533))) (size!277 (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))))

(declare-fun b!31589 () Bool)

(assert (=> b!31589 (= e!16095 (or (not (= (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) Nil!359)) (= lt!6056 (toList!119 (left!712 xs!533)))))))

(assert (= (and d!16433 c!6926) b!31586))

(assert (= (and d!16433 (not c!6926)) b!31587))

(assert (= (and d!16433 res!14523) b!31588))

(assert (= (and b!31588 res!14522) b!31589))

(declare-fun m!34431 () Bool)

(assert (=> d!16433 m!34431))

(assert (=> d!16433 m!33095))

(assert (=> d!16433 m!33951))

(assert (=> d!16433 m!33343))

(declare-fun m!34433 () Bool)

(assert (=> d!16433 m!34433))

(assert (=> b!31587 m!33343))

(declare-fun m!34435 () Bool)

(assert (=> b!31587 m!34435))

(declare-fun m!34437 () Bool)

(assert (=> b!31588 m!34437))

(assert (=> b!31588 m!33095))

(assert (=> b!31588 m!33959))

(assert (=> b!31588 m!33343))

(declare-fun m!34439 () Bool)

(assert (=> b!31588 m!34439))

(assert (=> b!30964 d!16433))

(assert (=> b!30964 d!16291))

(declare-fun b!31591 () Bool)

(declare-fun e!16096 () Int)

(declare-fun lt!6059 () Int)

(declare-fun lt!6057 () Int)

(assert (=> b!31591 (= e!16096 (+ 1 (ite (>= lt!6059 lt!6057) lt!6059 lt!6057)))))

(assert (=> b!31591 (= lt!6057 (level!56 (right!715 (right!715 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> b!31591 (= lt!6059 (level!56 (left!712 (right!715 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16435 () Bool)

(declare-fun lt!6058 () Int)

(assert (=> d!16435 (>= lt!6058 0)))

(assert (=> d!16435 (= lt!6058 e!16096)))

(declare-fun c!6927 () Bool)

(assert (=> d!16435 (= c!6927 (or (is-Empty!78 (right!715 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))) (is-Single!67 (right!715 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> d!16435 (= (level!56 (right!715 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))) lt!6058)))

(declare-fun b!31590 () Bool)

(assert (=> b!31590 (= e!16096 0)))

(assert (= (and d!16435 c!6927) b!31590))

(assert (= (and d!16435 (not c!6927)) b!31591))

(declare-fun m!34441 () Bool)

(assert (=> b!31591 m!34441))

(declare-fun m!34443 () Bool)

(assert (=> b!31591 m!34443))

(assert (=> b!31033 d!16435))

(declare-fun b!31593 () Bool)

(declare-fun e!16097 () Int)

(declare-fun lt!6062 () Int)

(declare-fun lt!6060 () Int)

(assert (=> b!31593 (= e!16097 (+ 1 (ite (>= lt!6062 lt!6060) lt!6062 lt!6060)))))

(assert (=> b!31593 (= lt!6060 (level!56 (right!715 (left!712 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> b!31593 (= lt!6062 (level!56 (left!712 (left!712 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16437 () Bool)

(declare-fun lt!6061 () Int)

(assert (=> d!16437 (>= lt!6061 0)))

(assert (=> d!16437 (= lt!6061 e!16097)))

(declare-fun c!6928 () Bool)

(assert (=> d!16437 (= c!6928 (or (is-Empty!78 (left!712 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))) (is-Single!67 (left!712 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> d!16437 (= (level!56 (left!712 (ite lt!5786 (right!715 xs!533) (left!712 (left!712 (left!712 ys!77)))))) lt!6061)))

(declare-fun b!31592 () Bool)

(assert (=> b!31592 (= e!16097 0)))

(assert (= (and d!16437 c!6928) b!31592))

(assert (= (and d!16437 (not c!6928)) b!31593))

(declare-fun m!34445 () Bool)

(assert (=> b!31593 m!34445))

(declare-fun m!34447 () Bool)

(assert (=> b!31593 m!34447))

(assert (=> b!31033 d!16437))

(declare-fun b!31594 () Bool)

(declare-fun e!16098 () Bool)

(assert (=> b!31594 (= e!16098 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun lt!6063 () Bool)

(assert (=> b!31594 (= lt!6063 (appendAssoc!12 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16439 () Bool)

(assert (=> d!16439 e!16098))

(declare-fun c!6929 () Bool)

(assert (=> d!16439 (= c!6929 (is-Cons!358 (toList!119 xs!533)))))

(assert (=> d!16439 (= (appendAssoc!12 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))) true)))

(declare-fun b!31595 () Bool)

(assert (=> b!31595 (= e!16098 (= (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))) (++!44 (toList!119 xs!533) (++!44 (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))))))))

(assert (= (and d!16439 c!6929) b!31594))

(assert (= (and d!16439 (not c!6929)) b!31595))

(assert (=> b!31594 m!33403))

(assert (=> b!31594 m!33405))

(declare-fun m!34449 () Bool)

(assert (=> b!31594 m!34449))

(assert (=> b!31594 m!33075))

(assert (=> b!31594 m!33711))

(declare-fun m!34451 () Bool)

(assert (=> b!31594 m!34451))

(assert (=> b!31594 m!33075))

(assert (=> b!31594 m!33403))

(assert (=> b!31594 m!33417))

(assert (=> b!31594 m!33403))

(assert (=> b!31594 m!33405))

(assert (=> b!31594 m!33711))

(assert (=> b!31594 m!33417))

(assert (=> b!31594 m!33405))

(declare-fun m!34453 () Bool)

(assert (=> b!31594 m!34453))

(assert (=> b!31595 m!33075))

(assert (=> b!31595 m!33403))

(assert (=> b!31595 m!33417))

(assert (=> b!31595 m!33417))

(assert (=> b!31595 m!33405))

(assert (=> b!31595 m!34453))

(assert (=> b!31595 m!33403))

(assert (=> b!31595 m!33405))

(assert (=> b!31595 m!33711))

(assert (=> b!31595 m!33075))

(assert (=> b!31595 m!33711))

(assert (=> b!31595 m!34451))

(assert (=> b!30995 d!16439))

(assert (=> b!30995 d!16069))

(declare-fun b!31596 () Bool)

(declare-fun e!16099 () List!364)

(assert (=> b!31596 (= e!16099 Nil!359)))

(declare-fun b!31598 () Bool)

(declare-fun e!16100 () List!364)

(assert (=> b!31598 (= e!16100 (Cons!358 (x!8961 (left!712 (left!712 (left!712 (left!712 ys!77))))) Nil!359))))

(declare-fun b!31599 () Bool)

(assert (=> b!31599 (= e!16100 (++!44 (toList!119 (left!712 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16441 () Bool)

(declare-fun lt!6064 () List!364)

(assert (=> d!16441 (= (size!277 lt!6064) (size!278 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16441 (= lt!6064 e!16099)))

(declare-fun c!6930 () Bool)

(assert (=> d!16441 (= c!6930 (is-Empty!78 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16441 (= (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) lt!6064)))

(declare-fun b!31597 () Bool)

(assert (=> b!31597 (= e!16099 e!16100)))

(declare-fun c!6931 () Bool)

(assert (=> b!31597 (= c!6931 (is-Single!67 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(assert (= (and b!31597 c!6931) b!31598))

(assert (= (and b!31597 (not c!6931)) b!31599))

(assert (= (and d!16441 c!6930) b!31596))

(assert (= (and d!16441 (not c!6930)) b!31597))

(declare-fun m!34455 () Bool)

(assert (=> b!31599 m!34455))

(declare-fun m!34457 () Bool)

(assert (=> b!31599 m!34457))

(assert (=> b!31599 m!34455))

(assert (=> b!31599 m!34457))

(declare-fun m!34459 () Bool)

(assert (=> b!31599 m!34459))

(declare-fun m!34461 () Bool)

(assert (=> d!16441 m!34461))

(declare-fun m!34463 () Bool)

(assert (=> d!16441 m!34463))

(assert (=> b!30995 d!16441))

(declare-fun b!31600 () Bool)

(declare-fun e!16101 () List!364)

(assert (=> b!31600 (= e!16101 Nil!359)))

(declare-fun b!31602 () Bool)

(declare-fun e!16102 () List!364)

(assert (=> b!31602 (= e!16102 (Cons!358 (x!8961 (right!715 (left!712 (left!712 (left!712 ys!77))))) Nil!359))))

(declare-fun b!31603 () Bool)

(assert (=> b!31603 (= e!16102 (++!44 (toList!119 (left!712 (right!715 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (right!715 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun d!16443 () Bool)

(declare-fun lt!6065 () List!364)

(assert (=> d!16443 (= (size!277 lt!6065) (size!278 (right!715 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16443 (= lt!6065 e!16101)))

(declare-fun c!6932 () Bool)

(assert (=> d!16443 (= c!6932 (is-Empty!78 (right!715 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16443 (= (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77))))) lt!6065)))

(declare-fun b!31601 () Bool)

(assert (=> b!31601 (= e!16101 e!16102)))

(declare-fun c!6933 () Bool)

(assert (=> b!31601 (= c!6933 (is-Single!67 (right!715 (left!712 (left!712 (left!712 ys!77))))))))

(assert (= (and b!31601 c!6933) b!31602))

(assert (= (and b!31601 (not c!6933)) b!31603))

(assert (= (and d!16443 c!6932) b!31600))

(assert (= (and d!16443 (not c!6932)) b!31601))

(declare-fun m!34465 () Bool)

(assert (=> b!31603 m!34465))

(declare-fun m!34467 () Bool)

(assert (=> b!31603 m!34467))

(assert (=> b!31603 m!34465))

(assert (=> b!31603 m!34467))

(declare-fun m!34469 () Bool)

(assert (=> b!31603 m!34469))

(declare-fun m!34471 () Bool)

(assert (=> d!16443 m!34471))

(declare-fun m!34473 () Bool)

(assert (=> d!16443 m!34473))

(assert (=> b!30995 d!16443))

(assert (=> b!31057 d!16347))

(assert (=> b!31057 d!16225))

(assert (=> b!31057 d!16349))

(assert (=> b!31057 d!16345))

(assert (=> b!31063 d!16297))

(assert (=> b!31063 d!16301))

(assert (=> b!31063 d!16299))

(assert (=> b!31063 d!16295))

(declare-fun b!31607 () Bool)

(declare-fun e!16103 () Bool)

(assert (=> b!31607 (= e!16103 (concInv!62 (right!715 (left!712 (right!715 xs!533)))))))

(declare-fun b!31604 () Bool)

(declare-fun e!16104 () Bool)

(assert (=> b!31604 (= e!16104 e!16103)))

(declare-fun res!14525 () Bool)

(assert (=> b!31604 (=> (not res!14525) (not e!16103))))

(assert (=> b!31604 (= res!14525 (not (isEmpty!324 (left!712 (left!712 (right!715 xs!533))))))))

(declare-fun b!31605 () Bool)

(declare-fun res!14527 () Bool)

(assert (=> b!31605 (=> (not res!14527) (not e!16103))))

(assert (=> b!31605 (= res!14527 (not (isEmpty!324 (right!715 (left!712 (right!715 xs!533))))))))

(declare-fun b!31606 () Bool)

(declare-fun res!14524 () Bool)

(assert (=> b!31606 (=> (not res!14524) (not e!16103))))

(assert (=> b!31606 (= res!14524 (concInv!62 (left!712 (left!712 (right!715 xs!533)))))))

(declare-fun d!16445 () Bool)

(declare-fun res!14526 () Bool)

(assert (=> d!16445 (=> res!14526 e!16104)))

(assert (=> d!16445 (= res!14526 (not (is-CC!67 (left!712 (right!715 xs!533)))))))

(assert (=> d!16445 (= (concInv!62 (left!712 (right!715 xs!533))) e!16104)))

(assert (= (and d!16445 (not res!14526)) b!31604))

(assert (= (and b!31604 res!14525) b!31605))

(assert (= (and b!31605 res!14527) b!31606))

(assert (= (and b!31606 res!14524) b!31607))

(declare-fun m!34475 () Bool)

(assert (=> b!31607 m!34475))

(declare-fun m!34477 () Bool)

(assert (=> b!31604 m!34477))

(declare-fun m!34479 () Bool)

(assert (=> b!31605 m!34479))

(declare-fun m!34481 () Bool)

(assert (=> b!31606 m!34481))

(assert (=> b!30915 d!16445))

(declare-fun b!31609 () Bool)

(declare-fun e!16105 () Int)

(declare-fun lt!6068 () Int)

(declare-fun lt!6066 () Int)

(assert (=> b!31609 (= e!16105 (+ 1 (ite (>= lt!6068 lt!6066) lt!6068 lt!6066)))))

(assert (=> b!31609 (= lt!6066 (level!56 (right!715 (left!712 (left!712 res!5547)))))))

(assert (=> b!31609 (= lt!6068 (level!56 (left!712 (left!712 (left!712 res!5547)))))))

(declare-fun d!16447 () Bool)

(declare-fun lt!6067 () Int)

(assert (=> d!16447 (>= lt!6067 0)))

(assert (=> d!16447 (= lt!6067 e!16105)))

(declare-fun c!6934 () Bool)

(assert (=> d!16447 (= c!6934 (or (is-Empty!78 (left!712 (left!712 res!5547))) (is-Single!67 (left!712 (left!712 res!5547)))))))

(assert (=> d!16447 (= (level!56 (left!712 (left!712 res!5547))) lt!6067)))

(declare-fun b!31608 () Bool)

(assert (=> b!31608 (= e!16105 0)))

(assert (= (and d!16447 c!6934) b!31608))

(assert (= (and d!16447 (not c!6934)) b!31609))

(declare-fun m!34483 () Bool)

(assert (=> b!31609 m!34483))

(declare-fun m!34485 () Bool)

(assert (=> b!31609 m!34485))

(assert (=> b!31028 d!16447))

(declare-fun b!31611 () Bool)

(declare-fun e!16106 () Int)

(declare-fun lt!6071 () Int)

(declare-fun lt!6069 () Int)

(assert (=> b!31611 (= e!16106 (+ 1 (ite (>= lt!6071 lt!6069) lt!6071 lt!6069)))))

(assert (=> b!31611 (= lt!6069 (level!56 (right!715 (right!715 (left!712 res!5547)))))))

(assert (=> b!31611 (= lt!6071 (level!56 (left!712 (right!715 (left!712 res!5547)))))))

(declare-fun d!16449 () Bool)

(declare-fun lt!6070 () Int)

(assert (=> d!16449 (>= lt!6070 0)))

(assert (=> d!16449 (= lt!6070 e!16106)))

(declare-fun c!6935 () Bool)

(assert (=> d!16449 (= c!6935 (or (is-Empty!78 (right!715 (left!712 res!5547))) (is-Single!67 (right!715 (left!712 res!5547)))))))

(assert (=> d!16449 (= (level!56 (right!715 (left!712 res!5547))) lt!6070)))

(declare-fun b!31610 () Bool)

(assert (=> b!31610 (= e!16106 0)))

(assert (= (and d!16449 c!6935) b!31610))

(assert (= (and d!16449 (not c!6935)) b!31611))

(assert (=> b!31611 m!33745))

(assert (=> b!31611 m!33743))

(assert (=> b!31028 d!16449))

(declare-fun d!16451 () Bool)

(declare-fun e!16108 () Bool)

(assert (=> d!16451 e!16108))

(declare-fun res!14529 () Bool)

(assert (=> d!16451 (=> (not res!14529) (not e!16108))))

(declare-fun lt!6072 () List!364)

(assert (=> d!16451 (= res!14529 (= (content!74 lt!6072) (union (content!74 (t!4378 (toList!119 xs!533))) (content!74 (toList!119 ys!77)))))))

(declare-fun e!16107 () List!364)

(assert (=> d!16451 (= lt!6072 e!16107)))

(declare-fun c!6936 () Bool)

(assert (=> d!16451 (= c!6936 (is-Nil!359 (t!4378 (toList!119 xs!533))))))

(assert (=> d!16451 (= (++!44 (t!4378 (toList!119 xs!533)) (toList!119 ys!77)) lt!6072)))

(declare-fun b!31613 () Bool)

(assert (=> b!31613 (= e!16107 (Cons!358 (h!275 (t!4378 (toList!119 xs!533))) (++!44 (t!4378 (t!4378 (toList!119 xs!533))) (toList!119 ys!77))))))

(declare-fun b!31612 () Bool)

(assert (=> b!31612 (= e!16107 (toList!119 ys!77))))

(declare-fun b!31614 () Bool)

(declare-fun res!14528 () Bool)

(assert (=> b!31614 (=> (not res!14528) (not e!16108))))

(assert (=> b!31614 (= res!14528 (= (size!277 lt!6072) (+ (size!277 (t!4378 (toList!119 xs!533))) (size!277 (toList!119 ys!77)))))))

(declare-fun b!31615 () Bool)

(assert (=> b!31615 (= e!16108 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!6072 (t!4378 (toList!119 xs!533)))))))

(assert (= (and d!16451 c!6936) b!31612))

(assert (= (and d!16451 (not c!6936)) b!31613))

(assert (= (and d!16451 res!14529) b!31614))

(assert (= (and b!31614 res!14528) b!31615))

(declare-fun m!34487 () Bool)

(assert (=> d!16451 m!34487))

(assert (=> d!16451 m!33663))

(assert (=> d!16451 m!33077))

(assert (=> d!16451 m!33331))

(assert (=> b!31613 m!33077))

(declare-fun m!34489 () Bool)

(assert (=> b!31613 m!34489))

(declare-fun m!34491 () Bool)

(assert (=> b!31614 m!34491))

(assert (=> b!31614 m!33613))

(assert (=> b!31614 m!33077))

(assert (=> b!31614 m!33339))

(assert (=> b!31041 d!16451))

(assert (=> b!31078 d!16207))

(assert (=> b!31078 d!16205))

(declare-fun d!16453 () Bool)

(assert (=> d!16453 (= (isEmpty!324 (right!715 (right!715 xs!533))) (= (right!715 (right!715 xs!533)) Empty!78))))

(assert (=> b!30914 d!16453))

(declare-fun b!31617 () Bool)

(declare-fun res!14531 () Bool)

(declare-fun e!16110 () Bool)

(assert (=> b!31617 (=> (not res!14531) (not e!16110))))

(assert (=> b!31617 (= res!14531 (<= (- (level!56 (left!712 (left!712 (left!712 res!5547)))) (level!56 (right!715 (left!712 (left!712 res!5547))))) 1))))

(declare-fun b!31619 () Bool)

(assert (=> b!31619 (= e!16110 (balanced!63 (right!715 (left!712 (left!712 res!5547)))))))

(declare-fun b!31618 () Bool)

(declare-fun res!14533 () Bool)

(assert (=> b!31618 (=> (not res!14533) (not e!16110))))

(assert (=> b!31618 (= res!14533 (balanced!63 (left!712 (left!712 (left!712 res!5547)))))))

(declare-fun d!16455 () Bool)

(declare-fun res!14530 () Bool)

(declare-fun e!16109 () Bool)

(assert (=> d!16455 (=> res!14530 e!16109)))

(assert (=> d!16455 (= res!14530 (not (is-CC!67 (left!712 (left!712 res!5547)))))))

(assert (=> d!16455 (= (balanced!63 (left!712 (left!712 res!5547))) e!16109)))

(declare-fun b!31616 () Bool)

(assert (=> b!31616 (= e!16109 e!16110)))

(declare-fun res!14532 () Bool)

(assert (=> b!31616 (=> (not res!14532) (not e!16110))))

(assert (=> b!31616 (= res!14532 (>= (- (level!56 (left!712 (left!712 (left!712 res!5547)))) (level!56 (right!715 (left!712 (left!712 res!5547))))) (- 1)))))

(assert (= (and d!16455 (not res!14530)) b!31616))

(assert (= (and b!31616 res!14532) b!31617))

(assert (= (and b!31617 res!14531) b!31618))

(assert (= (and b!31618 res!14533) b!31619))

(assert (=> b!31617 m!34485))

(assert (=> b!31617 m!34483))

(declare-fun m!34493 () Bool)

(assert (=> b!31619 m!34493))

(declare-fun m!34495 () Bool)

(assert (=> b!31618 m!34495))

(assert (=> b!31616 m!34485))

(assert (=> b!31616 m!34483))

(assert (=> b!31030 d!16455))

(assert (=> b!31000 d!16017))

(assert (=> b!31000 d!16023))

(declare-fun d!16457 () Bool)

(assert (=> d!16457 (= (isEmpty!324 (left!712 (left!712 xs!533))) (= (left!712 (left!712 xs!533)) Empty!78))))

(assert (=> b!31044 d!16457))

(assert (=> b!30882 d!16169))

(assert (=> b!30882 d!16171))

(assert (=> b!30882 d!16399))

(declare-fun b!31623 () Bool)

(declare-fun e!16111 () Bool)

(assert (=> b!31623 (= e!16111 (concInv!62 (right!715 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun b!31620 () Bool)

(declare-fun e!16112 () Bool)

(assert (=> b!31620 (= e!16112 e!16111)))

(declare-fun res!14535 () Bool)

(assert (=> b!31620 (=> (not res!14535) (not e!16111))))

(assert (=> b!31620 (= res!14535 (not (isEmpty!324 (left!712 (left!712 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31621 () Bool)

(declare-fun res!14537 () Bool)

(assert (=> b!31621 (=> (not res!14537) (not e!16111))))

(assert (=> b!31621 (= res!14537 (not (isEmpty!324 (right!715 (left!712 (left!712 (left!712 ys!77)))))))))

(declare-fun b!31622 () Bool)

(declare-fun res!14534 () Bool)

(assert (=> b!31622 (=> (not res!14534) (not e!16111))))

(assert (=> b!31622 (= res!14534 (concInv!62 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun d!16459 () Bool)

(declare-fun res!14536 () Bool)

(assert (=> d!16459 (=> res!14536 e!16112)))

(assert (=> d!16459 (= res!14536 (not (is-CC!67 (left!712 (left!712 (left!712 ys!77))))))))

(assert (=> d!16459 (= (concInv!62 (left!712 (left!712 (left!712 ys!77)))) e!16112)))

(assert (= (and d!16459 (not res!14536)) b!31620))

(assert (= (and b!31620 res!14535) b!31621))

(assert (= (and b!31621 res!14537) b!31622))

(assert (= (and b!31622 res!14534) b!31623))

(declare-fun m!34497 () Bool)

(assert (=> b!31623 m!34497))

(declare-fun m!34499 () Bool)

(assert (=> b!31620 m!34499))

(declare-fun m!34501 () Bool)

(assert (=> b!31621 m!34501))

(declare-fun m!34503 () Bool)

(assert (=> b!31622 m!34503))

(assert (=> b!30923 d!16459))

(assert (=> b!30872 d!16241))

(assert (=> b!30872 d!16239))

(assert (=> b!30997 d!16441))

(assert (=> b!30997 d!16443))

(declare-fun d!16461 () Bool)

(declare-fun e!16114 () Bool)

(assert (=> d!16461 e!16114))

(declare-fun res!14539 () Bool)

(assert (=> d!16461 (=> (not res!14539) (not e!16114))))

(declare-fun lt!6073 () List!364)

(assert (=> d!16461 (= res!14539 (= (content!74 lt!6073) (union (content!74 (toList!119 xs!533)) (content!74 (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun e!16113 () List!364)

(assert (=> d!16461 (= lt!6073 e!16113)))

(declare-fun c!6937 () Bool)

(assert (=> d!16461 (= c!6937 (is-Nil!359 (toList!119 xs!533)))))

(assert (=> d!16461 (= (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) lt!6073)))

(declare-fun b!31625 () Bool)

(assert (=> b!31625 (= e!16113 (Cons!358 (h!275 (toList!119 xs!533)) (++!44 (t!4378 (toList!119 xs!533)) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(declare-fun b!31624 () Bool)

(assert (=> b!31624 (= e!16113 (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))))))

(declare-fun b!31626 () Bool)

(declare-fun res!14538 () Bool)

(assert (=> b!31626 (=> (not res!14538) (not e!16114))))

(assert (=> b!31626 (= res!14538 (= (size!277 lt!6073) (+ (size!277 (toList!119 xs!533)) (size!277 (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))))))))

(declare-fun b!31627 () Bool)

(assert (=> b!31627 (= e!16114 (or (not (= (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))) Nil!359)) (= lt!6073 (toList!119 xs!533))))))

(assert (= (and d!16461 c!6937) b!31624))

(assert (= (and d!16461 (not c!6937)) b!31625))

(assert (= (and d!16461 res!14539) b!31626))

(assert (= (and b!31626 res!14538) b!31627))

(declare-fun m!34505 () Bool)

(assert (=> d!16461 m!34505))

(assert (=> d!16461 m!33075))

(assert (=> d!16461 m!33495))

(assert (=> d!16461 m!33403))

(declare-fun m!34507 () Bool)

(assert (=> d!16461 m!34507))

(assert (=> b!31625 m!33403))

(declare-fun m!34509 () Bool)

(assert (=> b!31625 m!34509))

(declare-fun m!34511 () Bool)

(assert (=> b!31626 m!34511))

(assert (=> b!31626 m!33075))

(assert (=> b!31626 m!33501))

(assert (=> b!31626 m!33403))

(declare-fun m!34513 () Bool)

(assert (=> b!31626 m!34513))

(assert (=> b!30997 d!16461))

(assert (=> b!30997 d!16185))

(assert (=> b!30997 d!16069))

(declare-fun b!31628 () Bool)

(declare-fun e!16115 () Bool)

(assert (=> b!31628 (= e!16115 (= (++!44 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (++!44 (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))))

(declare-fun lt!6074 () Bool)

(assert (=> b!31628 (= lt!6074 (appendAssoc!12 (t!4378 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun d!16463 () Bool)

(assert (=> d!16463 e!16115))

(declare-fun c!6938 () Bool)

(assert (=> d!16463 (= c!6938 (is-Cons!358 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77))))))))))

(assert (=> d!16463 (= (appendAssoc!12 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) true)))

(declare-fun b!31629 () Bool)

(assert (=> b!31629 (= e!16115 (= (++!44 (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77)))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))) (++!44 (++!44 (toList!119 xs!533) (toList!119 (left!712 (left!712 (left!712 (left!712 ys!77)))))) (++!44 (toList!119 (right!715 (left!712 (left!712 (left!712 ys!77))))) (toList!119 (right!715 (left!712 (left!712 ys!77))))))))))

(assert (= (and d!16463 c!6938) b!31628))

(assert (= (and d!16463 (not c!6938)) b!31629))

(assert (=> b!31628 m!33405))

(assert (=> b!31628 m!33385))

(declare-fun m!34515 () Bool)

(assert (=> b!31628 m!34515))

(assert (=> b!31628 m!33417))

(declare-fun m!34517 () Bool)

(assert (=> b!31628 m!34517))

(declare-fun m!34519 () Bool)

(assert (=> b!31628 m!34519))

(assert (=> b!31628 m!33417))

(assert (=> b!31628 m!33405))

(assert (=> b!31628 m!34453))

(assert (=> b!31628 m!33405))

(assert (=> b!31628 m!33385))

(assert (=> b!31628 m!34517))

(assert (=> b!31628 m!34453))

(assert (=> b!31628 m!33385))

(declare-fun m!34521 () Bool)

(assert (=> b!31628 m!34521))

(assert (=> b!31629 m!33417))

(assert (=> b!31629 m!33405))

(assert (=> b!31629 m!34453))

(assert (=> b!31629 m!34453))

(assert (=> b!31629 m!33385))

(assert (=> b!31629 m!34521))

(assert (=> b!31629 m!33405))

(assert (=> b!31629 m!33385))

(assert (=> b!31629 m!34517))

(assert (=> b!31629 m!33417))

(assert (=> b!31629 m!34517))

(assert (=> b!31629 m!34519))

(assert (=> b!30997 d!16463))

(assert (=> b!31004 d!16271))

(assert (=> b!31004 d!16335))

(assert (=> b!31004 d!16331))

(declare-fun b!31630 () Bool)

(declare-fun e!16116 () Bool)

(assert (=> b!31630 (= e!16116 (= (++!44 (++!44 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (right!715 xs!533))) (toList!119 ys!77)) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))))

(declare-fun lt!6075 () Bool)

(assert (=> b!31630 (= lt!6075 (appendAssoc!12 (t!4378 (t!4378 (toList!119 (left!712 xs!533)))) (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))

(declare-fun d!16465 () Bool)

(assert (=> d!16465 e!16116))

(declare-fun c!6939 () Bool)

(assert (=> d!16465 (= c!6939 (is-Cons!358 (t!4378 (toList!119 (left!712 xs!533)))))))

(assert (=> d!16465 (= (appendAssoc!12 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (right!715 xs!533)) (toList!119 ys!77)) true)))

(declare-fun b!31631 () Bool)

(assert (=> b!31631 (= e!16116 (= (++!44 (++!44 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (right!715 xs!533))) (toList!119 ys!77)) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (++!44 (toList!119 (right!715 xs!533)) (toList!119 ys!77)))))))

(assert (= (and d!16465 c!6939) b!31630))

(assert (= (and d!16465 (not c!6939)) b!31631))

(assert (=> b!31630 m!33101))

(assert (=> b!31630 m!33077))

(declare-fun m!34523 () Bool)

(assert (=> b!31630 m!34523))

(assert (=> b!31630 m!33427))

(assert (=> b!31630 m!34155))

(assert (=> b!31630 m!33101))

(assert (=> b!31630 m!33955))

(assert (=> b!31630 m!33101))

(assert (=> b!31630 m!33077))

(assert (=> b!31630 m!33427))

(assert (=> b!31630 m!33955))

(assert (=> b!31630 m!33077))

(declare-fun m!34525 () Bool)

(assert (=> b!31630 m!34525))

(assert (=> b!31631 m!33101))

(assert (=> b!31631 m!33955))

(assert (=> b!31631 m!33955))

(assert (=> b!31631 m!33077))

(assert (=> b!31631 m!34525))

(assert (=> b!31631 m!33101))

(assert (=> b!31631 m!33077))

(assert (=> b!31631 m!33427))

(assert (=> b!31631 m!33427))

(assert (=> b!31631 m!34155))

(assert (=> b!31004 d!16465))

(assert (=> b!31004 d!16333))

(declare-fun b!31635 () Bool)

(declare-fun e!16117 () Bool)

(assert (=> b!31635 (= e!16117 (concInv!62 (right!715 (left!712 (left!712 xs!533)))))))

(declare-fun b!31632 () Bool)

(declare-fun e!16118 () Bool)

(assert (=> b!31632 (= e!16118 e!16117)))

(declare-fun res!14541 () Bool)

(assert (=> b!31632 (=> (not res!14541) (not e!16117))))

(assert (=> b!31632 (= res!14541 (not (isEmpty!324 (left!712 (left!712 (left!712 xs!533))))))))

(declare-fun b!31633 () Bool)

(declare-fun res!14543 () Bool)

(assert (=> b!31633 (=> (not res!14543) (not e!16117))))

(assert (=> b!31633 (= res!14543 (not (isEmpty!324 (right!715 (left!712 (left!712 xs!533))))))))

(declare-fun b!31634 () Bool)

(declare-fun res!14540 () Bool)

(assert (=> b!31634 (=> (not res!14540) (not e!16117))))

(assert (=> b!31634 (= res!14540 (concInv!62 (left!712 (left!712 (left!712 xs!533)))))))

(declare-fun d!16467 () Bool)

(declare-fun res!14542 () Bool)

(assert (=> d!16467 (=> res!14542 e!16118)))

(assert (=> d!16467 (= res!14542 (not (is-CC!67 (left!712 (left!712 xs!533)))))))

(assert (=> d!16467 (= (concInv!62 (left!712 (left!712 xs!533))) e!16118)))

(assert (= (and d!16467 (not res!14542)) b!31632))

(assert (= (and b!31632 res!14541) b!31633))

(assert (= (and b!31633 res!14543) b!31634))

(assert (= (and b!31634 res!14540) b!31635))

(declare-fun m!34527 () Bool)

(assert (=> b!31635 m!34527))

(declare-fun m!34529 () Bool)

(assert (=> b!31632 m!34529))

(declare-fun m!34531 () Bool)

(assert (=> b!31633 m!34531))

(declare-fun m!34533 () Bool)

(assert (=> b!31634 m!34533))

(assert (=> b!31046 d!16467))

(declare-fun d!16469 () Bool)

(declare-fun lt!6076 () Int)

(assert (=> d!16469 (>= lt!6076 0)))

(declare-fun e!16119 () Int)

(assert (=> d!16469 (= lt!6076 e!16119)))

(declare-fun c!6940 () Bool)

(assert (=> d!16469 (= c!6940 (is-Nil!359 lt!5846))))

(assert (=> d!16469 (= (size!277 lt!5846) lt!6076)))

(declare-fun b!31636 () Bool)

(assert (=> b!31636 (= e!16119 0)))

(declare-fun b!31637 () Bool)

(assert (=> b!31637 (= e!16119 (+ 1 (size!277 (t!4378 lt!5846))))))

(assert (= (and d!16469 c!6940) b!31636))

(assert (= (and d!16469 (not c!6940)) b!31637))

(declare-fun m!34535 () Bool)

(assert (=> b!31637 m!34535))

(assert (=> b!30957 d!16469))

(declare-fun d!16471 () Bool)

(declare-fun lt!6077 () Int)

(assert (=> d!16471 (>= lt!6077 0)))

(declare-fun e!16120 () Int)

(assert (=> d!16471 (= lt!6077 e!16120)))

(declare-fun c!6941 () Bool)

(assert (=> d!16471 (= c!6941 (is-Nil!359 (toList!119 (right!715 (right!715 xs!533)))))))

(assert (=> d!16471 (= (size!277 (toList!119 (right!715 (right!715 xs!533)))) lt!6077)))

(declare-fun b!31638 () Bool)

(assert (=> b!31638 (= e!16120 0)))

(declare-fun b!31639 () Bool)

(assert (=> b!31639 (= e!16120 (+ 1 (size!277 (t!4378 (toList!119 (right!715 (right!715 xs!533)))))))))

(assert (= (and d!16471 c!6941) b!31638))

(assert (= (and d!16471 (not c!6941)) b!31639))

(declare-fun m!34537 () Bool)

(assert (=> b!31639 m!34537))

(assert (=> b!30957 d!16471))

(declare-fun d!16473 () Bool)

(declare-fun lt!6078 () Int)

(assert (=> d!16473 (>= lt!6078 0)))

(declare-fun e!16121 () Int)

(assert (=> d!16473 (= lt!6078 e!16121)))

(declare-fun c!6942 () Bool)

(assert (=> d!16473 (= c!6942 (is-Nil!359 (toList!119 ys!77)))))

(assert (=> d!16473 (= (size!277 (toList!119 ys!77)) lt!6078)))

(declare-fun b!31640 () Bool)

(assert (=> b!31640 (= e!16121 0)))

(declare-fun b!31641 () Bool)

(assert (=> b!31641 (= e!16121 (+ 1 (size!277 (t!4378 (toList!119 ys!77)))))))

(assert (= (and d!16473 c!6942) b!31640))

(assert (= (and d!16473 (not c!6942)) b!31641))

(declare-fun m!34539 () Bool)

(assert (=> b!31641 m!34539))

(assert (=> b!30957 d!16473))

(declare-fun b!31642 () Bool)

(declare-fun e!16122 () Bool)

(assert (=> b!31642 (= e!16122 (= (++!44 (++!44 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(declare-fun lt!6079 () Bool)

(assert (=> b!31642 (= lt!6079 (appendAssoc!12 (t!4378 (t!4378 (toList!119 (left!712 xs!533)))) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))

(declare-fun d!16475 () Bool)

(assert (=> d!16475 e!16122))

(declare-fun c!6943 () Bool)

(assert (=> d!16475 (= c!6943 (is-Cons!358 (t!4378 (toList!119 (left!712 xs!533)))))))

(assert (=> d!16475 (= (appendAssoc!12 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) true)))

(declare-fun b!31643 () Bool)

(assert (=> b!31643 (= e!16122 (= (++!44 (++!44 (t!4378 (toList!119 (left!712 xs!533))) (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))) (++!44 (t!4378 (toList!119 (left!712 xs!533))) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77))))))))

(assert (= (and d!16475 c!6943) b!31642))

(assert (= (and d!16475 (not c!6943)) b!31643))

(assert (=> b!31642 m!33089))

(assert (=> b!31642 m!33097))

(declare-fun m!34541 () Bool)

(assert (=> b!31642 m!34541))

(assert (=> b!31642 m!33343))

(assert (=> b!31642 m!34435))

(assert (=> b!31642 m!33089))

(assert (=> b!31642 m!34427))

(assert (=> b!31642 m!33089))

(assert (=> b!31642 m!33097))

(assert (=> b!31642 m!33343))

(assert (=> b!31642 m!34427))

(assert (=> b!31642 m!33097))

(declare-fun m!34543 () Bool)

(assert (=> b!31642 m!34543))

(assert (=> b!31643 m!33089))

(assert (=> b!31643 m!34427))

(assert (=> b!31643 m!34427))

(assert (=> b!31643 m!33097))

(assert (=> b!31643 m!34543))

(assert (=> b!31643 m!33089))

(assert (=> b!31643 m!33097))

(assert (=> b!31643 m!33343))

(assert (=> b!31643 m!33343))

(assert (=> b!31643 m!34435))

(assert (=> b!30963 d!16475))

(assert (=> b!30963 d!16291))

(assert (=> b!30963 d!16429))

(assert (=> b!30963 d!16431))

(assert (=> b!30963 d!16433))

(declare-fun d!16477 () Bool)

(declare-fun e!16124 () Bool)

(assert (=> d!16477 e!16124))

(declare-fun res!14545 () Bool)

(assert (=> d!16477 (=> (not res!14545) (not e!16124))))

(declare-fun lt!6080 () List!364)

(assert (=> d!16477 (= res!14545 (= (content!74 lt!6080) (union (content!74 (toList!119 (left!712 (right!715 (right!715 xs!533))))) (content!74 (toList!119 (right!715 (right!715 (right!715 xs!533))))))))))

(declare-fun e!16123 () List!364)

(assert (=> d!16477 (= lt!6080 e!16123)))

(declare-fun c!6944 () Bool)

(assert (=> d!16477 (= c!6944 (is-Nil!359 (toList!119 (left!712 (right!715 (right!715 xs!533))))))))

(assert (=> d!16477 (= (++!44 (toList!119 (left!712 (right!715 (right!715 xs!533)))) (toList!119 (right!715 (right!715 (right!715 xs!533))))) lt!6080)))

(declare-fun b!31645 () Bool)

(assert (=> b!31645 (= e!16123 (Cons!358 (h!275 (toList!119 (left!712 (right!715 (right!715 xs!533))))) (++!44 (t!4378 (toList!119 (left!712 (right!715 (right!715 xs!533))))) (toList!119 (right!715 (right!715 (right!715 xs!533)))))))))

(declare-fun b!31644 () Bool)

(assert (=> b!31644 (= e!16123 (toList!119 (right!715 (right!715 (right!715 xs!533)))))))

(declare-fun b!31646 () Bool)

(declare-fun res!14544 () Bool)

(assert (=> b!31646 (=> (not res!14544) (not e!16124))))

(assert (=> b!31646 (= res!14544 (= (size!277 lt!6080) (+ (size!277 (toList!119 (left!712 (right!715 (right!715 xs!533))))) (size!277 (toList!119 (right!715 (right!715 (right!715 xs!533))))))))))

(declare-fun b!31647 () Bool)

(assert (=> b!31647 (= e!16124 (or (not (= (toList!119 (right!715 (right!715 (right!715 xs!533)))) Nil!359)) (= lt!6080 (toList!119 (left!712 (right!715 (right!715 xs!533)))))))))

(assert (= (and d!16477 c!6944) b!31644))

(assert (= (and d!16477 (not c!6944)) b!31645))

(assert (= (and d!16477 res!14545) b!31646))

(assert (= (and b!31646 res!14544) b!31647))

(declare-fun m!34545 () Bool)

(assert (=> d!16477 m!34545))

(assert (=> d!16477 m!33307))

(declare-fun m!34547 () Bool)

(assert (=> d!16477 m!34547))

(assert (=> d!16477 m!33309))

(declare-fun m!34549 () Bool)

(assert (=> d!16477 m!34549))

(assert (=> b!31645 m!33309))

(declare-fun m!34551 () Bool)

(assert (=> b!31645 m!34551))

(declare-fun m!34553 () Bool)

(assert (=> b!31646 m!34553))

(assert (=> b!31646 m!33307))

(declare-fun m!34555 () Bool)

(assert (=> b!31646 m!34555))

(assert (=> b!31646 m!33309))

(declare-fun m!34557 () Bool)

(assert (=> b!31646 m!34557))

(assert (=> b!30942 d!16477))

(declare-fun b!31648 () Bool)

(declare-fun e!16125 () List!364)

(assert (=> b!31648 (= e!16125 Nil!359)))

(declare-fun b!31650 () Bool)

(declare-fun e!16126 () List!364)

(assert (=> b!31650 (= e!16126 (Cons!358 (x!8961 (left!712 (right!715 (right!715 xs!533)))) Nil!359))))

(declare-fun b!31651 () Bool)

(assert (=> b!31651 (= e!16126 (++!44 (toList!119 (left!712 (left!712 (right!715 (right!715 xs!533))))) (toList!119 (right!715 (left!712 (right!715 (right!715 xs!533)))))))))

(declare-fun d!16479 () Bool)

(declare-fun lt!6081 () List!364)

(assert (=> d!16479 (= (size!277 lt!6081) (size!278 (left!712 (right!715 (right!715 xs!533)))))))

(assert (=> d!16479 (= lt!6081 e!16125)))

(declare-fun c!6945 () Bool)

(assert (=> d!16479 (= c!6945 (is-Empty!78 (left!712 (right!715 (right!715 xs!533)))))))

(assert (=> d!16479 (= (toList!119 (left!712 (right!715 (right!715 xs!533)))) lt!6081)))

(declare-fun b!31649 () Bool)

(assert (=> b!31649 (= e!16125 e!16126)))

(declare-fun c!6946 () Bool)

(assert (=> b!31649 (= c!6946 (is-Single!67 (left!712 (right!715 (right!715 xs!533)))))))

(assert (= (and b!31649 c!6946) b!31650))

(assert (= (and b!31649 (not c!6946)) b!31651))

(assert (= (and d!16479 c!6945) b!31648))

(assert (= (and d!16479 (not c!6945)) b!31649))

(declare-fun m!34559 () Bool)

(assert (=> b!31651 m!34559))

(declare-fun m!34561 () Bool)

(assert (=> b!31651 m!34561))

(assert (=> b!31651 m!34559))

(assert (=> b!31651 m!34561))

(declare-fun m!34563 () Bool)

(assert (=> b!31651 m!34563))

(declare-fun m!34565 () Bool)

(assert (=> d!16479 m!34565))

(assert (=> d!16479 m!33937))

(assert (=> b!30942 d!16479))

(declare-fun b!31652 () Bool)

(declare-fun e!16127 () List!364)

(assert (=> b!31652 (= e!16127 Nil!359)))

(declare-fun b!31654 () Bool)

(declare-fun e!16128 () List!364)

(assert (=> b!31654 (= e!16128 (Cons!358 (x!8961 (right!715 (right!715 (right!715 xs!533)))) Nil!359))))

(declare-fun b!31655 () Bool)

(assert (=> b!31655 (= e!16128 (++!44 (toList!119 (left!712 (right!715 (right!715 (right!715 xs!533))))) (toList!119 (right!715 (right!715 (right!715 (right!715 xs!533)))))))))

(declare-fun d!16481 () Bool)

(declare-fun lt!6082 () List!364)

(assert (=> d!16481 (= (size!277 lt!6082) (size!278 (right!715 (right!715 (right!715 xs!533)))))))

(assert (=> d!16481 (= lt!6082 e!16127)))

(declare-fun c!6947 () Bool)

(assert (=> d!16481 (= c!6947 (is-Empty!78 (right!715 (right!715 (right!715 xs!533)))))))

(assert (=> d!16481 (= (toList!119 (right!715 (right!715 (right!715 xs!533)))) lt!6082)))

(declare-fun b!31653 () Bool)

(assert (=> b!31653 (= e!16127 e!16128)))

(declare-fun c!6948 () Bool)

(assert (=> b!31653 (= c!6948 (is-Single!67 (right!715 (right!715 (right!715 xs!533)))))))

(assert (= (and b!31653 c!6948) b!31654))

(assert (= (and b!31653 (not c!6948)) b!31655))

(assert (= (and d!16481 c!6947) b!31652))

(assert (= (and d!16481 (not c!6947)) b!31653))

(declare-fun m!34567 () Bool)

(assert (=> b!31655 m!34567))

(declare-fun m!34569 () Bool)

(assert (=> b!31655 m!34569))

(assert (=> b!31655 m!34567))

(assert (=> b!31655 m!34569))

(declare-fun m!34571 () Bool)

(assert (=> b!31655 m!34571))

(declare-fun m!34573 () Bool)

(assert (=> d!16481 m!34573))

(assert (=> d!16481 m!33939))

(assert (=> b!30942 d!16481))

(declare-fun d!16483 () Bool)

(assert (=> d!16483 (= (isEmpty!324 (left!712 lt!5777)) (= (left!712 lt!5777) Empty!78))))

(assert (=> b!31074 d!16483))

(assert (=> b!31058 d!16367))

(assert (=> b!31058 d!16365))

(declare-fun b!31659 () Bool)

(declare-fun e!16129 () Bool)

(assert (=> b!31659 (= e!16129 (concInv!62 (right!715 (left!712 (left!712 res!5547)))))))

(declare-fun b!31656 () Bool)

(declare-fun e!16130 () Bool)

(assert (=> b!31656 (= e!16130 e!16129)))

(declare-fun res!14547 () Bool)

(assert (=> b!31656 (=> (not res!14547) (not e!16129))))

(assert (=> b!31656 (= res!14547 (not (isEmpty!324 (left!712 (left!712 (left!712 res!5547))))))))

(declare-fun b!31657 () Bool)

(declare-fun res!14549 () Bool)

(assert (=> b!31657 (=> (not res!14549) (not e!16129))))

(assert (=> b!31657 (= res!14549 (not (isEmpty!324 (right!715 (left!712 (left!712 res!5547))))))))

(declare-fun b!31658 () Bool)

(declare-fun res!14546 () Bool)

(assert (=> b!31658 (=> (not res!14546) (not e!16129))))

(assert (=> b!31658 (= res!14546 (concInv!62 (left!712 (left!712 (left!712 res!5547)))))))

(declare-fun d!16485 () Bool)

(declare-fun res!14548 () Bool)

(assert (=> d!16485 (=> res!14548 e!16130)))

(assert (=> d!16485 (= res!14548 (not (is-CC!67 (left!712 (left!712 res!5547)))))))

(assert (=> d!16485 (= (concInv!62 (left!712 (left!712 res!5547))) e!16130)))

(assert (= (and d!16485 (not res!14548)) b!31656))

(assert (= (and b!31656 res!14547) b!31657))

(assert (= (and b!31657 res!14549) b!31658))

(assert (= (and b!31658 res!14546) b!31659))

(declare-fun m!34575 () Bool)

(assert (=> b!31659 m!34575))

(declare-fun m!34577 () Bool)

(assert (=> b!31656 m!34577))

(declare-fun m!34579 () Bool)

(assert (=> b!31657 m!34579))

(declare-fun m!34581 () Bool)

(assert (=> b!31658 m!34581))

(assert (=> b!31018 d!16485))

(declare-fun d!16487 () Bool)

(assert (=> d!16487 (= (isEmpty!324 (left!712 (left!712 res!5547))) (= (left!712 (left!712 res!5547)) Empty!78))))

(assert (=> b!31016 d!16487))

(declare-fun d!16489 () Bool)

(assert (=> d!16489 (= (isEmpty!324 (right!715 lt!5777)) (= (right!715 lt!5777) Empty!78))))

(assert (=> b!31075 d!16489))

(assert (=> b!30938 d!16295))

(assert (=> b!30938 d!16129))

(assert (=> b!30938 d!16117))

(assert (=> b!31002 d!16137))

(declare-fun b!31661 () Bool)

(declare-fun res!14551 () Bool)

(declare-fun e!16132 () Bool)

(assert (=> b!31661 (=> (not res!14551) (not e!16132))))

(assert (=> b!31661 (= res!14551 (<= (- (level!56 (left!712 (right!715 (left!712 (left!712 ys!77))))) (level!56 (right!715 (right!715 (left!712 (left!712 ys!77)))))) 1))))

(declare-fun b!31663 () Bool)

(assert (=> b!31663 (= e!16132 (balanced!63 (right!715 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun b!31662 () Bool)

(declare-fun res!14553 () Bool)

(assert (=> b!31662 (=> (not res!14553) (not e!16132))))

(assert (=> b!31662 (= res!14553 (balanced!63 (left!712 (right!715 (left!712 (left!712 ys!77))))))))

(declare-fun d!16491 () Bool)

(declare-fun res!14550 () Bool)

(declare-fun e!16131 () Bool)

(assert (=> d!16491 (=> res!14550 e!16131)))

(assert (=> d!16491 (= res!14550 (not (is-CC!67 (right!715 (left!712 (left!712 ys!77))))))))

(assert (=> d!16491 (= (balanced!63 (right!715 (left!712 (left!712 ys!77)))) e!16131)))

(declare-fun b!31660 () Bool)

(assert (=> b!31660 (= e!16131 e!16132)))

(declare-fun res!14552 () Bool)

(assert (=> b!31660 (=> (not res!14552) (not e!16132))))

(assert (=> b!31660 (= res!14552 (>= (- (level!56 (left!712 (right!715 (left!712 (left!712 ys!77))))) (level!56 (right!715 (right!715 (left!712 (left!712 ys!77)))))) (- 1)))))

(assert (= (and d!16491 (not res!14550)) b!31660))

(assert (= (and b!31660 res!14552) b!31661))

(assert (= (and b!31661 res!14551) b!31662))

(assert (= (and b!31662 res!14553) b!31663))

(assert (=> b!31661 m!33773))

(assert (=> b!31661 m!33771))

(declare-fun m!34583 () Bool)

(assert (=> b!31663 m!34583))

(declare-fun m!34585 () Bool)

(assert (=> b!31662 m!34585))

(assert (=> b!31660 m!33773))

(assert (=> b!31660 m!33771))

(assert (=> b!31081 d!16491))

(declare-fun b!31665 () Bool)

(declare-fun e!16133 () Int)

(declare-fun lt!6085 () Int)

(declare-fun lt!6083 () Int)

(assert (=> b!31665 (= e!16133 (+ 1 (ite (>= lt!6085 lt!6083) lt!6085 lt!6083)))))

(assert (=> b!31665 (= lt!6083 (level!56 (right!715 (right!715 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))))

(assert (=> b!31665 (= lt!6085 (level!56 (left!712 (right!715 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16493 () Bool)

(declare-fun lt!6084 () Int)

(assert (=> d!16493 (>= lt!6084 0)))

(assert (=> d!16493 (= lt!6084 e!16133)))

(declare-fun c!6949 () Bool)

(assert (=> d!16493 (= c!6949 (or (is-Empty!78 (right!715 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))) (is-Single!67 (right!715 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))))

(assert (=> d!16493 (= (level!56 (right!715 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))) lt!6084)))

(declare-fun b!31664 () Bool)

(assert (=> b!31664 (= e!16133 0)))

(assert (= (and d!16493 c!6949) b!31664))

(assert (= (and d!16493 (not c!6949)) b!31665))

(declare-fun m!34587 () Bool)

(assert (=> b!31665 m!34587))

(declare-fun m!34589 () Bool)

(assert (=> b!31665 m!34589))

(assert (=> b!31011 d!16493))

(declare-fun b!31667 () Bool)

(declare-fun e!16134 () Int)

(declare-fun lt!6088 () Int)

(declare-fun lt!6086 () Int)

(assert (=> b!31667 (= e!16134 (+ 1 (ite (>= lt!6088 lt!6086) lt!6088 lt!6086)))))

(assert (=> b!31667 (= lt!6086 (level!56 (right!715 (left!712 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))))

(assert (=> b!31667 (= lt!6088 (level!56 (left!712 (left!712 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))))

(declare-fun d!16495 () Bool)

(declare-fun lt!6087 () Int)

(assert (=> d!16495 (>= lt!6087 0)))

(assert (=> d!16495 (= lt!6087 e!16134)))

(declare-fun c!6950 () Bool)

(assert (=> d!16495 (= c!6950 (or (is-Empty!78 (left!712 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))) (is-Single!67 (left!712 (ite lt!5780 xs!533 (left!712 (left!712 ys!77)))))))))

(assert (=> d!16495 (= (level!56 (left!712 (ite lt!5780 xs!533 (left!712 (left!712 ys!77))))) lt!6087)))

(declare-fun b!31666 () Bool)

(assert (=> b!31666 (= e!16134 0)))

(assert (= (and d!16495 c!6950) b!31666))

(assert (= (and d!16495 (not c!6950)) b!31667))

(declare-fun m!34591 () Bool)

(assert (=> b!31667 m!34591))

(declare-fun m!34593 () Bool)

(assert (=> b!31667 m!34593))

(assert (=> b!31011 d!16495))

(assert (=> b!31079 d!16207))

(assert (=> b!31079 d!16205))

(assert (=> b!31068 d!16289))

(assert (=> b!31068 d!16291))

(declare-fun b!31668 () Bool)

(declare-fun e!16135 () Bool)

(assert (=> b!31668 (= e!16135 (= (++!44 (++!44 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77)) (++!44 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))

(declare-fun lt!6089 () Bool)

(assert (=> b!31668 (= lt!6089 (appendAssoc!12 (t!4378 (t!4378 (toList!119 (left!712 (right!715 xs!533))))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))

(declare-fun d!16497 () Bool)

(assert (=> d!16497 e!16135))

(declare-fun c!6951 () Bool)

(assert (=> d!16497 (= c!6951 (is-Cons!358 (t!4378 (toList!119 (left!712 (right!715 xs!533))))))))

(assert (=> d!16497 (= (appendAssoc!12 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)) true)))

(declare-fun b!31669 () Bool)

(assert (=> b!31669 (= e!16135 (= (++!44 (++!44 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77)) (++!44 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 ys!77)))))))

(assert (= (and d!16497 c!6951) b!31668))

(assert (= (and d!16497 (not c!6951)) b!31669))

(assert (=> b!31668 m!33091))

(assert (=> b!31668 m!33077))

(declare-fun m!34595 () Bool)

(assert (=> b!31668 m!34595))

(assert (=> b!31668 m!33097))

(assert (=> b!31668 m!34023))

(assert (=> b!31668 m!33091))

(assert (=> b!31668 m!34013))

(assert (=> b!31668 m!33091))

(assert (=> b!31668 m!33077))

(assert (=> b!31668 m!33097))

(assert (=> b!31668 m!34013))

(assert (=> b!31668 m!33077))

(declare-fun m!34597 () Bool)

(assert (=> b!31668 m!34597))

(assert (=> b!31669 m!33091))

(assert (=> b!31669 m!34013))

(assert (=> b!31669 m!34013))

(assert (=> b!31669 m!33077))

(assert (=> b!31669 m!34597))

(assert (=> b!31669 m!33091))

(assert (=> b!31669 m!33077))

(assert (=> b!31669 m!33097))

(assert (=> b!31669 m!33097))

(assert (=> b!31669 m!34023))

(assert (=> b!31068 d!16497))

(assert (=> b!31068 d!16287))

(assert (=> b!31068 d!16057))

(declare-fun b!31673 () Bool)

(declare-fun e!16136 () Bool)

(assert (=> b!31673 (= e!16136 (concInv!62 (right!715 (right!715 (right!715 xs!533)))))))

(declare-fun b!31670 () Bool)

(declare-fun e!16137 () Bool)

(assert (=> b!31670 (= e!16137 e!16136)))

(declare-fun res!14555 () Bool)

(assert (=> b!31670 (=> (not res!14555) (not e!16136))))

(assert (=> b!31670 (= res!14555 (not (isEmpty!324 (left!712 (right!715 (right!715 xs!533))))))))

(declare-fun b!31671 () Bool)

(declare-fun res!14557 () Bool)

(assert (=> b!31671 (=> (not res!14557) (not e!16136))))

(assert (=> b!31671 (= res!14557 (not (isEmpty!324 (right!715 (right!715 (right!715 xs!533))))))))

(declare-fun b!31672 () Bool)

(declare-fun res!14554 () Bool)

(assert (=> b!31672 (=> (not res!14554) (not e!16136))))

(assert (=> b!31672 (= res!14554 (concInv!62 (left!712 (right!715 (right!715 xs!533)))))))

(declare-fun d!16499 () Bool)

(declare-fun res!14556 () Bool)

(assert (=> d!16499 (=> res!14556 e!16137)))

(assert (=> d!16499 (= res!14556 (not (is-CC!67 (right!715 (right!715 xs!533)))))))

(assert (=> d!16499 (= (concInv!62 (right!715 (right!715 xs!533))) e!16137)))

(assert (= (and d!16499 (not res!14556)) b!31670))

(assert (= (and b!31670 res!14555) b!31671))

(assert (= (and b!31671 res!14557) b!31672))

(assert (= (and b!31672 res!14554) b!31673))

(declare-fun m!34599 () Bool)

(assert (=> b!31673 m!34599))

(declare-fun m!34601 () Bool)

(assert (=> b!31670 m!34601))

(declare-fun m!34603 () Bool)

(assert (=> b!31671 m!34603))

(declare-fun m!34605 () Bool)

(assert (=> b!31672 m!34605))

(assert (=> b!30916 d!16499))

(declare-fun b!31674 () Bool)

(declare-fun e!16138 () Bool)

(assert (=> b!31674 (= e!16138 (= (++!44 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))))))))

(declare-fun lt!6090 () Bool)

(assert (=> b!31674 (= lt!6090 (appendAssoc!12 (t!4378 (toList!119 (left!712 (right!715 xs!533)))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))))))

(declare-fun d!16501 () Bool)

(assert (=> d!16501 e!16138))

(declare-fun c!6952 () Bool)

(assert (=> d!16501 (= c!6952 (is-Cons!358 (toList!119 (left!712 (right!715 xs!533)))))))

(assert (=> d!16501 (= (appendAssoc!12 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))) true)))

(declare-fun b!31675 () Bool)

(assert (=> b!31675 (= e!16138 (= (++!44 (++!44 (toList!119 (left!712 (right!715 xs!533))) (toList!119 (right!715 (right!715 xs!533)))) (toList!119 (left!712 (left!712 ys!77)))) (++!44 (toList!119 (left!712 (right!715 xs!533))) (++!44 (toList!119 (right!715 (right!715 xs!533))) (toList!119 (left!712 (left!712 ys!77)))))))))

(assert (= (and d!16501 c!6952) b!31674))

(assert (= (and d!16501 (not c!6952)) b!31675))

(assert (=> b!31674 m!33091))

(assert (=> b!31674 m!33083))

(declare-fun m!34607 () Bool)

(assert (=> b!31674 m!34607))

(assert (=> b!31674 m!33089))

(assert (=> b!31674 m!33411))

(assert (=> b!31674 m!34371))

(assert (=> b!31674 m!33089))

(assert (=> b!31674 m!33091))

(assert (=> b!31674 m!33433))

(assert (=> b!31674 m!33091))

(assert (=> b!31674 m!33083))

(assert (=> b!31674 m!33411))

(assert (=> b!31674 m!33433))

(assert (=> b!31674 m!33083))

(declare-fun m!34609 () Bool)

(assert (=> b!31674 m!34609))

(assert (=> b!31675 m!33089))

(assert (=> b!31675 m!33091))

(assert (=> b!31675 m!33433))

(assert (=> b!31675 m!33433))

(assert (=> b!31675 m!33083))

(assert (=> b!31675 m!34609))

(assert (=> b!31675 m!33091))

(assert (=> b!31675 m!33083))

(assert (=> b!31675 m!33411))

(assert (=> b!31675 m!33089))

(assert (=> b!31675 m!33411))

(assert (=> b!31675 m!34371))

(assert (=> b!30996 d!16501))

(assert (=> b!30996 d!16055))

(assert (=> b!30996 d!16053))

(assert (=> b!30996 d!16071))

(declare-fun b!31679 () Bool)

(declare-fun e!16139 () Bool)

(assert (=> b!31679 (= e!16139 (concInv!62 (right!715 (right!715 (left!712 xs!533)))))))

(declare-fun b!31676 () Bool)

(declare-fun e!16140 () Bool)

(assert (=> b!31676 (= e!16140 e!16139)))

(declare-fun res!14559 () Bool)

(assert (=> b!31676 (=> (not res!14559) (not e!16139))))

(assert (=> b!31676 (= res!14559 (not (isEmpty!324 (left!712 (right!715 (left!712 xs!533))))))))

(declare-fun b!31677 () Bool)

(declare-fun res!14561 () Bool)

(assert (=> b!31677 (=> (not res!14561) (not e!16139))))

(assert (=> b!31677 (= res!14561 (not (isEmpty!324 (right!715 (right!715 (left!712 xs!533))))))))

(declare-fun b!31678 () Bool)

(declare-fun res!14558 () Bool)

(assert (=> b!31678 (=> (not res!14558) (not e!16139))))

(assert (=> b!31678 (= res!14558 (concInv!62 (left!712 (right!715 (left!712 xs!533)))))))

(declare-fun d!16503 () Bool)

(declare-fun res!14560 () Bool)

(assert (=> d!16503 (=> res!14560 e!16140)))

(assert (=> d!16503 (= res!14560 (not (is-CC!67 (right!715 (left!712 xs!533)))))))

(assert (=> d!16503 (= (concInv!62 (right!715 (left!712 xs!533))) e!16140)))

(assert (= (and d!16503 (not res!14560)) b!31676))

(assert (= (and b!31676 res!14559) b!31677))

(assert (= (and b!31677 res!14561) b!31678))

(assert (= (and b!31678 res!14558) b!31679))

(declare-fun m!34611 () Bool)

(assert (=> b!31679 m!34611))

(declare-fun m!34613 () Bool)

(assert (=> b!31676 m!34613))

(declare-fun m!34615 () Bool)

(assert (=> b!31677 m!34615))

(declare-fun m!34617 () Bool)

(assert (=> b!31678 m!34617))

(assert (=> b!31047 d!16503))

(assert (=> b!30910 d!16449))

(assert (=> b!30910 d!16447))

(assert (=> b!31059 d!16367))

(assert (=> b!31059 d!16365))

(declare-fun d!16505 () Bool)

(declare-fun lt!6091 () Int)

(assert (=> d!16505 (>= lt!6091 0)))

(declare-fun e!16141 () Int)

(assert (=> d!16505 (= lt!6091 e!16141)))

(declare-fun c!6953 () Bool)

(assert (=> d!16505 (= c!6953 (is-Nil!359 lt!5873))))

(assert (=> d!16505 (= (size!277 lt!5873) lt!6091)))

(declare-fun b!31680 () Bool)

(assert (=> b!31680 (= e!16141 0)))

(declare-fun b!31681 () Bool)

(assert (=> b!31681 (= e!16141 (+ 1 (size!277 (t!4378 lt!5873))))))

(assert (= (and d!16505 c!6953) b!31680))

(assert (= (and d!16505 (not c!6953)) b!31681))

(declare-fun m!34619 () Bool)

(assert (=> b!31681 m!34619))

(assert (=> b!31042 d!16505))

(assert (=> b!31042 d!16159))

(assert (=> b!31042 d!16473))

(assert (=> b!30969 d!16149))

(assert (=> b!30969 d!16147))

(declare-fun d!16507 () Bool)

(declare-fun lt!6092 () Int)

(assert (=> d!16507 (>= lt!6092 0)))

(declare-fun e!16142 () Int)

(assert (=> d!16507 (= lt!6092 e!16142)))

(declare-fun c!6954 () Bool)

(assert (=> d!16507 (= c!6954 (is-Nil!359 lt!5843))))

(assert (=> d!16507 (= (size!277 lt!5843) lt!6092)))

(declare-fun b!31682 () Bool)

(assert (=> b!31682 (= e!16142 0)))

(declare-fun b!31683 () Bool)

(assert (=> b!31683 (= e!16142 (+ 1 (size!277 (t!4378 lt!5843))))))

(assert (= (and d!16507 c!6954) b!31682))

(assert (= (and d!16507 (not c!6954)) b!31683))

(declare-fun m!34621 () Bool)

(assert (=> b!31683 m!34621))

(assert (=> d!16055 d!16507))

(declare-fun d!16509 () Bool)

(declare-fun lt!6093 () Int)

(assert (=> d!16509 (>= lt!6093 0)))

(declare-fun e!16143 () Int)

(assert (=> d!16509 (= lt!6093 e!16143)))

(declare-fun c!6955 () Bool)

(assert (=> d!16509 (= c!6955 (is-Empty!78 (left!712 (right!715 xs!533))))))

(assert (=> d!16509 (= (size!278 (left!712 (right!715 xs!533))) lt!6093)))

(declare-fun b!31685 () Bool)

(declare-fun e!16144 () Int)

(assert (=> b!31685 (= e!16143 e!16144)))

(declare-fun c!6956 () Bool)

(assert (=> b!31685 (= c!6956 (is-Single!67 (left!712 (right!715 xs!533))))))

(declare-fun b!31687 () Bool)

(assert (=> b!31687 (= e!16144 (+ (size!278 (left!712 (left!712 (right!715 xs!533)))) (size!278 (right!715 (left!712 (right!715 xs!533))))))))

(declare-fun b!31686 () Bool)

(assert (=> b!31686 (= e!16144 1)))

(declare-fun b!31684 () Bool)

(assert (=> b!31684 (= e!16143 0)))

(assert (= (and b!31685 c!6956) b!31686))

(assert (= (and b!31685 (not c!6956)) b!31687))

(assert (= (and d!16509 c!6955) b!31684))

(assert (= (and d!16509 (not c!6955)) b!31685))

(assert (=> b!31687 m!33865))

(assert (=> b!31687 m!33875))

(assert (=> d!16055 d!16509))

(declare-fun b!31689 () Bool)

(declare-fun e!16145 () Int)

(declare-fun lt!6096 () Int)

(declare-fun lt!6094 () Int)

(assert (=> b!31689 (= e!16145 (+ 1 (ite (>= lt!6096 lt!6094) lt!6096 lt!6094)))))

(assert (=> b!31689 (= lt!6094 (level!56 (right!715 (right!715 (right!715 (right!715 ys!77))))))))

(assert (=> b!31689 (= lt!6096 (level!56 (left!712 (right!715 (right!715 (right!715 ys!77))))))))

(declare-fun d!16511 () Bool)

(declare-fun lt!6095 () Int)

(assert (=> d!16511 (>= lt!6095 0)))

(assert (=> d!16511 (= lt!6095 e!16145)))

(declare-fun c!6957 () Bool)

(assert (=> d!16511 (= c!6957 (or (is-Empty!78 (right!715 (right!715 (right!715 ys!77)))) (is-Single!67 (right!715 (right!715 (right!715 ys!77))))))))

(assert (=> d!16511 (= (level!56 (right!715 (right!715 (right!715 ys!77)))) lt!6095)))

(declare-fun b!31688 () Bool)

(assert (=> b!31688 (= e!16145 0)))

(assert (= (and d!16511 c!6957) b!31688))

(assert (= (and d!16511 (not c!6957)) b!31689))

(declare-fun m!34623 () Bool)

(assert (=> b!31689 m!34623))

(declare-fun m!34625 () Bool)

(assert (=> b!31689 m!34625))

(assert (=> b!30918 d!16511))

(declare-fun b!31691 () Bool)

(declare-fun e!16146 () Int)

(declare-fun lt!6099 () Int)

(declare-fun lt!6097 () Int)

(assert (=> b!31691 (= e!16146 (+ 1 (ite (>= lt!6099 lt!6097) lt!6099 lt!6097)))))

(assert (=> b!31691 (= lt!6097 (level!56 (right!715 (left!712 (right!715 (right!715 ys!77))))))))

(assert (=> b!31691 (= lt!6099 (level!56 (left!712 (left!712 (right!715 (right!715 ys!77))))))))

(declare-fun d!16513 () Bool)

(declare-fun lt!6098 () Int)

(assert (=> d!16513 (>= lt!6098 0)))

(assert (=> d!16513 (= lt!6098 e!16146)))

(declare-fun c!6958 () Bool)

(assert (=> d!16513 (= c!6958 (or (is-Empty!78 (left!712 (right!715 (right!715 ys!77)))) (is-Single!67 (left!712 (right!715 (right!715 ys!77))))))))

(assert (=> d!16513 (= (level!56 (left!712 (right!715 (right!715 ys!77)))) lt!6098)))

(declare-fun b!31690 () Bool)

(assert (=> b!31690 (= e!16146 0)))

(assert (= (and d!16513 c!6958) b!31690))

(assert (= (and d!16513 (not c!6958)) b!31691))

(declare-fun m!34627 () Bool)

(assert (=> b!31691 m!34627))

(declare-fun m!34629 () Bool)

(assert (=> b!31691 m!34629))

(assert (=> b!30918 d!16513))

(declare-fun d!16515 () Bool)

(assert (=> d!16515 (= (isEmpty!324 (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533)) (= (ite lt!5788 (ite (>= lt!5790 lt!5782) (right!715 xs!533) (right!715 (right!715 xs!533))) xs!533) Empty!78))))

(assert (=> b!30886 d!16515))

(declare-fun d!16517 () Bool)

(declare-fun e!16148 () Bool)

(assert (=> d!16517 e!16148))

(declare-fun res!14563 () Bool)

(assert (=> d!16517 (=> (not res!14563) (not e!16148))))

(declare-fun lt!6100 () List!364)

(assert (=> d!16517 (= res!14563 (= (content!74 lt!6100) (union (content!74 (t!4378 (toList!119 (right!715 (right!715 xs!533))))) (content!74 (toList!119 ys!77)))))))

(declare-fun e!16147 () List!364)

(assert (=> d!16517 (= lt!6100 e!16147)))

(declare-fun c!6959 () Bool)

(assert (=> d!16517 (= c!6959 (is-Nil!359 (t!4378 (toList!119 (right!715 (right!715 xs!533))))))))

(assert (=> d!16517 (= (++!44 (t!4378 (toList!119 (right!715 (right!715 xs!533)))) (toList!119 ys!77)) lt!6100)))

(declare-fun b!31693 () Bool)

(assert (=> b!31693 (= e!16147 (Cons!358 (h!275 (t!4378 (toList!119 (right!715 (right!715 xs!533))))) (++!44 (t!4378 (t!4378 (toList!119 (right!715 (right!715 xs!533))))) (toList!119 ys!77))))))

(declare-fun b!31692 () Bool)

(assert (=> b!31692 (= e!16147 (toList!119 ys!77))))

(declare-fun b!31694 () Bool)

(declare-fun res!14562 () Bool)

(assert (=> b!31694 (=> (not res!14562) (not e!16148))))

(assert (=> b!31694 (= res!14562 (= (size!277 lt!6100) (+ (size!277 (t!4378 (toList!119 (right!715 (right!715 xs!533))))) (size!277 (toList!119 ys!77)))))))

(declare-fun b!31695 () Bool)

(assert (=> b!31695 (= e!16148 (or (not (= (toList!119 ys!77) Nil!359)) (= lt!6100 (t!4378 (toList!119 (right!715 (right!715 xs!533)))))))))

(assert (= (and d!16517 c!6959) b!31692))

(assert (= (and d!16517 (not c!6959)) b!31693))

(assert (= (and d!16517 res!14563) b!31694))

(assert (= (and b!31694 res!14562) b!31695))

(declare-fun m!34631 () Bool)

(assert (=> d!16517 m!34631))

(assert (=> d!16517 m!34211))

(assert (=> d!16517 m!33077))

(assert (=> d!16517 m!33331))

(assert (=> b!31693 m!33077))

(declare-fun m!34633 () Bool)

(assert (=> b!31693 m!34633))

(declare-fun m!34635 () Bool)

(assert (=> b!31694 m!34635))

(assert (=> b!31694 m!34537))

(assert (=> b!31694 m!33077))

(assert (=> b!31694 m!33339))

(assert (=> b!30956 d!16517))

(assert (=> b!31029 d!16447))

(assert (=> b!31029 d!16449))

(declare-fun b!31696 () Bool)

(declare-fun e!16149 () Bool)

(declare-fun tp!6496 () Bool)

(declare-fun tp!6497 () Bool)

(assert (=> b!31696 (= e!16149 (and tp!6496 tp!6497))))

(declare-fun b!31697 () Bool)

(assert (=> b!31697 (= e!16149 tp_is_empty!181)))

(assert (=> b!31096 (= tp!6472 e!16149)))

(assert (= (and b!31096 (is-CC!67 (left!712 (right!715 (left!712 res!5547))))) b!31696))

(assert (= (and b!31096 (is-Single!67 (left!712 (right!715 (left!712 res!5547))))) b!31697))

(declare-fun b!31698 () Bool)

(declare-fun e!16150 () Bool)

(declare-fun tp!6498 () Bool)

(declare-fun tp!6499 () Bool)

(assert (=> b!31698 (= e!16150 (and tp!6498 tp!6499))))

(declare-fun b!31699 () Bool)

(assert (=> b!31699 (= e!16150 tp_is_empty!181)))

(assert (=> b!31096 (= tp!6473 e!16150)))

(assert (= (and b!31096 (is-CC!67 (right!715 (right!715 (left!712 res!5547))))) b!31698))

(assert (= (and b!31096 (is-Single!67 (right!715 (right!715 (left!712 res!5547))))) b!31699))

(declare-fun b!31700 () Bool)

(declare-fun e!16151 () Bool)

(declare-fun tp!6500 () Bool)

(declare-fun tp!6501 () Bool)

(assert (=> b!31700 (= e!16151 (and tp!6500 tp!6501))))

(declare-fun b!31701 () Bool)

(assert (=> b!31701 (= e!16151 tp_is_empty!181)))

(assert (=> b!31082 (= tp!6458 e!16151)))

(assert (= (and b!31082 (is-CC!67 (left!712 (left!712 (right!715 ys!77))))) b!31700))

(assert (= (and b!31082 (is-Single!67 (left!712 (left!712 (right!715 ys!77))))) b!31701))

(declare-fun b!31702 () Bool)

(declare-fun e!16152 () Bool)

(declare-fun tp!6502 () Bool)

(declare-fun tp!6503 () Bool)

(assert (=> b!31702 (= e!16152 (and tp!6502 tp!6503))))

(declare-fun b!31703 () Bool)

(assert (=> b!31703 (= e!16152 tp_is_empty!181)))

(assert (=> b!31082 (= tp!6459 e!16152)))

(assert (= (and b!31082 (is-CC!67 (right!715 (left!712 (right!715 ys!77))))) b!31702))

(assert (= (and b!31082 (is-Single!67 (right!715 (left!712 (right!715 ys!77))))) b!31703))

(declare-fun b!31704 () Bool)

(declare-fun e!16153 () Bool)

(declare-fun tp!6504 () Bool)

(declare-fun tp!6505 () Bool)

(assert (=> b!31704 (= e!16153 (and tp!6504 tp!6505))))

(declare-fun b!31705 () Bool)

(assert (=> b!31705 (= e!16153 tp_is_empty!181)))

(assert (=> b!31084 (= tp!6460 e!16153)))

(assert (= (and b!31084 (is-CC!67 (left!712 (right!715 (right!715 ys!77))))) b!31704))

(assert (= (and b!31084 (is-Single!67 (left!712 (right!715 (right!715 ys!77))))) b!31705))

(declare-fun b!31706 () Bool)

(declare-fun e!16154 () Bool)

(declare-fun tp!6506 () Bool)

(declare-fun tp!6507 () Bool)

(assert (=> b!31706 (= e!16154 (and tp!6506 tp!6507))))

(declare-fun b!31707 () Bool)

(assert (=> b!31707 (= e!16154 tp_is_empty!181)))

(assert (=> b!31084 (= tp!6461 e!16154)))

(assert (= (and b!31084 (is-CC!67 (right!715 (right!715 (right!715 ys!77))))) b!31706))

(assert (= (and b!31084 (is-Single!67 (right!715 (right!715 (right!715 ys!77))))) b!31707))

(declare-fun b!31708 () Bool)

(declare-fun e!16155 () Bool)

(declare-fun tp!6508 () Bool)

(declare-fun tp!6509 () Bool)

(assert (=> b!31708 (= e!16155 (and tp!6508 tp!6509))))

(declare-fun b!31709 () Bool)

(assert (=> b!31709 (= e!16155 tp_is_empty!181)))

(assert (=> b!30889 (= tp!6456 e!16155)))

(assert (= (and b!30889 (is-CC!67 (left!712 res!14245))) b!31708))

(assert (= (and b!30889 (is-Single!67 (left!712 res!14245))) b!31709))

(declare-fun b!31710 () Bool)

(declare-fun e!16156 () Bool)

(declare-fun tp!6510 () Bool)

(declare-fun tp!6511 () Bool)

(assert (=> b!31710 (= e!16156 (and tp!6510 tp!6511))))

(declare-fun b!31711 () Bool)

(assert (=> b!31711 (= e!16156 tp_is_empty!181)))

(assert (=> b!30889 (= tp!6457 e!16156)))

(assert (= (and b!30889 (is-CC!67 (right!715 res!14245))) b!31710))

(assert (= (and b!30889 (is-Single!67 (right!715 res!14245))) b!31711))

(declare-fun b!31712 () Bool)

(declare-fun e!16157 () Bool)

(declare-fun tp!6512 () Bool)

(declare-fun tp!6513 () Bool)

(assert (=> b!31712 (= e!16157 (and tp!6512 tp!6513))))

(declare-fun b!31713 () Bool)

(assert (=> b!31713 (= e!16157 tp_is_empty!181)))

(assert (=> b!31112 (= tp!6488 e!16157)))

(assert (= (and b!31112 (is-CC!67 (left!712 (right!715 (left!712 nll!6))))) b!31712))

(assert (= (and b!31112 (is-Single!67 (left!712 (right!715 (left!712 nll!6))))) b!31713))

(declare-fun b!31714 () Bool)

(declare-fun e!16158 () Bool)

(declare-fun tp!6514 () Bool)

(declare-fun tp!6515 () Bool)

(assert (=> b!31714 (= e!16158 (and tp!6514 tp!6515))))

(declare-fun b!31715 () Bool)

(assert (=> b!31715 (= e!16158 tp_is_empty!181)))

(assert (=> b!31112 (= tp!6489 e!16158)))

(assert (= (and b!31112 (is-CC!67 (right!715 (right!715 (left!712 nll!6))))) b!31714))

(assert (= (and b!31112 (is-Single!67 (right!715 (right!715 (left!712 nll!6))))) b!31715))

(declare-fun b!31716 () Bool)

(declare-fun e!16159 () Bool)

(declare-fun tp!6516 () Bool)

(declare-fun tp!6517 () Bool)

(assert (=> b!31716 (= e!16159 (and tp!6516 tp!6517))))

(declare-fun b!31717 () Bool)

(assert (=> b!31717 (= e!16159 tp_is_empty!181)))

(assert (=> b!31110 (= tp!6486 e!16159)))

(assert (= (and b!31110 (is-CC!67 (left!712 (left!712 (left!712 nll!6))))) b!31716))

(assert (= (and b!31110 (is-Single!67 (left!712 (left!712 (left!712 nll!6))))) b!31717))

(declare-fun b!31718 () Bool)

(declare-fun e!16160 () Bool)

(declare-fun tp!6518 () Bool)

(declare-fun tp!6519 () Bool)

(assert (=> b!31718 (= e!16160 (and tp!6518 tp!6519))))

(declare-fun b!31719 () Bool)

(assert (=> b!31719 (= e!16160 tp_is_empty!181)))

(assert (=> b!31110 (= tp!6487 e!16160)))

(assert (= (and b!31110 (is-CC!67 (right!715 (left!712 (left!712 nll!6))))) b!31718))

(assert (= (and b!31110 (is-Single!67 (right!715 (left!712 (left!712 nll!6))))) b!31719))

(declare-fun b!31720 () Bool)

(declare-fun e!16161 () Bool)

(declare-fun tp!6520 () Bool)

(declare-fun tp!6521 () Bool)

(assert (=> b!31720 (= e!16161 (and tp!6520 tp!6521))))

(declare-fun b!31721 () Bool)

(assert (=> b!31721 (= e!16161 tp_is_empty!181)))

(assert (=> b!31116 (= tp!6492 e!16161)))

(assert (= (and b!31116 (is-CC!67 (left!712 (right!715 res!14219)))) b!31720))

(assert (= (and b!31116 (is-Single!67 (left!712 (right!715 res!14219)))) b!31721))

(declare-fun b!31722 () Bool)

(declare-fun e!16162 () Bool)

(declare-fun tp!6522 () Bool)

(declare-fun tp!6523 () Bool)

(assert (=> b!31722 (= e!16162 (and tp!6522 tp!6523))))

(declare-fun b!31723 () Bool)

(assert (=> b!31723 (= e!16162 tp_is_empty!181)))

(assert (=> b!31116 (= tp!6493 e!16162)))

(assert (= (and b!31116 (is-CC!67 (right!715 (right!715 res!14219)))) b!31722))

(assert (= (and b!31116 (is-Single!67 (right!715 (right!715 res!14219)))) b!31723))

(declare-fun b!31724 () Bool)

(declare-fun e!16163 () Bool)

(declare-fun tp!6524 () Bool)

(declare-fun tp!6525 () Bool)

(assert (=> b!31724 (= e!16163 (and tp!6524 tp!6525))))

(declare-fun b!31725 () Bool)

(assert (=> b!31725 (= e!16163 tp_is_empty!181)))

(assert (=> b!31106 (= tp!6482 e!16163)))

(assert (= (and b!31106 (is-CC!67 (left!712 (left!712 (left!712 xs!533))))) b!31724))

(assert (= (and b!31106 (is-Single!67 (left!712 (left!712 (left!712 xs!533))))) b!31725))

(declare-fun b!31726 () Bool)

(declare-fun e!16164 () Bool)

(declare-fun tp!6526 () Bool)

(declare-fun tp!6527 () Bool)

(assert (=> b!31726 (= e!16164 (and tp!6526 tp!6527))))

(declare-fun b!31727 () Bool)

(assert (=> b!31727 (= e!16164 tp_is_empty!181)))

(assert (=> b!31106 (= tp!6483 e!16164)))

(assert (= (and b!31106 (is-CC!67 (right!715 (left!712 (left!712 xs!533))))) b!31726))

(assert (= (and b!31106 (is-Single!67 (right!715 (left!712 (left!712 xs!533))))) b!31727))

(declare-fun b!31728 () Bool)

(declare-fun e!16165 () Bool)

(declare-fun tp!6528 () Bool)

(declare-fun tp!6529 () Bool)

(assert (=> b!31728 (= e!16165 (and tp!6528 tp!6529))))

(declare-fun b!31729 () Bool)

(assert (=> b!31729 (= e!16165 tp_is_empty!181)))

(assert (=> b!31086 (= tp!6462 e!16165)))

(assert (= (and b!31086 (is-CC!67 (left!712 (left!712 (right!715 xs!533))))) b!31728))

(assert (= (and b!31086 (is-Single!67 (left!712 (left!712 (right!715 xs!533))))) b!31729))

(declare-fun b!31730 () Bool)

(declare-fun e!16166 () Bool)

(declare-fun tp!6530 () Bool)

(declare-fun tp!6531 () Bool)

(assert (=> b!31730 (= e!16166 (and tp!6530 tp!6531))))

(declare-fun b!31731 () Bool)

(assert (=> b!31731 (= e!16166 tp_is_empty!181)))

(assert (=> b!31086 (= tp!6463 e!16166)))

(assert (= (and b!31086 (is-CC!67 (right!715 (left!712 (right!715 xs!533))))) b!31730))

(assert (= (and b!31086 (is-Single!67 (right!715 (left!712 (right!715 xs!533))))) b!31731))

(declare-fun b!31732 () Bool)

(declare-fun e!16167 () Bool)

(declare-fun tp!6532 () Bool)

(declare-fun tp!6533 () Bool)

(assert (=> b!31732 (= e!16167 (and tp!6532 tp!6533))))

(declare-fun b!31733 () Bool)

(assert (=> b!31733 (= e!16167 tp_is_empty!181)))

(assert (=> b!31090 (= tp!6466 e!16167)))

(assert (= (and b!31090 (is-CC!67 (left!712 (left!712 (right!715 nll!6))))) b!31732))

(assert (= (and b!31090 (is-Single!67 (left!712 (left!712 (right!715 nll!6))))) b!31733))

(declare-fun b!31734 () Bool)

(declare-fun e!16168 () Bool)

(declare-fun tp!6534 () Bool)

(declare-fun tp!6535 () Bool)

(assert (=> b!31734 (= e!16168 (and tp!6534 tp!6535))))

(declare-fun b!31735 () Bool)

(assert (=> b!31735 (= e!16168 tp_is_empty!181)))

(assert (=> b!31090 (= tp!6467 e!16168)))

(assert (= (and b!31090 (is-CC!67 (right!715 (left!712 (right!715 nll!6))))) b!31734))

(assert (= (and b!31090 (is-Single!67 (right!715 (left!712 (right!715 nll!6))))) b!31735))

(declare-fun b!31736 () Bool)

(declare-fun e!16169 () Bool)

(declare-fun tp!6536 () Bool)

(declare-fun tp!6537 () Bool)

(assert (=> b!31736 (= e!16169 (and tp!6536 tp!6537))))

(declare-fun b!31737 () Bool)

(assert (=> b!31737 (= e!16169 tp_is_empty!181)))

(assert (=> b!31092 (= tp!6468 e!16169)))

(assert (= (and b!31092 (is-CC!67 (left!712 (right!715 (right!715 nll!6))))) b!31736))

(assert (= (and b!31092 (is-Single!67 (left!712 (right!715 (right!715 nll!6))))) b!31737))

(declare-fun b!31738 () Bool)

(declare-fun e!16170 () Bool)

(declare-fun tp!6538 () Bool)

(declare-fun tp!6539 () Bool)

(assert (=> b!31738 (= e!16170 (and tp!6538 tp!6539))))

(declare-fun b!31739 () Bool)

(assert (=> b!31739 (= e!16170 tp_is_empty!181)))

(assert (=> b!31092 (= tp!6469 e!16170)))

(assert (= (and b!31092 (is-CC!67 (right!715 (right!715 (right!715 nll!6))))) b!31738))

(assert (= (and b!31092 (is-Single!67 (right!715 (right!715 (right!715 nll!6))))) b!31739))

(declare-fun b!31740 () Bool)

(declare-fun e!16171 () Bool)

(declare-fun tp!6540 () Bool)

(declare-fun tp!6541 () Bool)

(assert (=> b!31740 (= e!16171 (and tp!6540 tp!6541))))

(declare-fun b!31741 () Bool)

(assert (=> b!31741 (= e!16171 tp_is_empty!181)))

(assert (=> b!31104 (= tp!6480 e!16171)))

(assert (= (and b!31104 (is-CC!67 (left!712 (right!715 (left!712 ys!77))))) b!31740))

(assert (= (and b!31104 (is-Single!67 (left!712 (right!715 (left!712 ys!77))))) b!31741))

(declare-fun b!31742 () Bool)

(declare-fun e!16172 () Bool)

(declare-fun tp!6542 () Bool)

(declare-fun tp!6543 () Bool)

(assert (=> b!31742 (= e!16172 (and tp!6542 tp!6543))))

(declare-fun b!31743 () Bool)

(assert (=> b!31743 (= e!16172 tp_is_empty!181)))

(assert (=> b!31104 (= tp!6481 e!16172)))

(assert (= (and b!31104 (is-CC!67 (right!715 (right!715 (left!712 ys!77))))) b!31742))

(assert (= (and b!31104 (is-Single!67 (right!715 (right!715 (left!712 ys!77))))) b!31743))

(declare-fun b!31744 () Bool)

(declare-fun e!16173 () Bool)

(declare-fun tp!6544 () Bool)

(declare-fun tp!6545 () Bool)

(assert (=> b!31744 (= e!16173 (and tp!6544 tp!6545))))

(declare-fun b!31745 () Bool)

(assert (=> b!31745 (= e!16173 tp_is_empty!181)))

(assert (=> b!31114 (= tp!6490 e!16173)))

(assert (= (and b!31114 (is-CC!67 (left!712 (left!712 res!14219)))) b!31744))

(assert (= (and b!31114 (is-Single!67 (left!712 (left!712 res!14219)))) b!31745))

(declare-fun b!31746 () Bool)

(declare-fun e!16174 () Bool)

(declare-fun tp!6546 () Bool)

(declare-fun tp!6547 () Bool)

(assert (=> b!31746 (= e!16174 (and tp!6546 tp!6547))))

(declare-fun b!31747 () Bool)

(assert (=> b!31747 (= e!16174 tp_is_empty!181)))

(assert (=> b!31114 (= tp!6491 e!16174)))

(assert (= (and b!31114 (is-CC!67 (right!715 (left!712 res!14219)))) b!31746))

(assert (= (and b!31114 (is-Single!67 (right!715 (left!712 res!14219)))) b!31747))

(declare-fun b!31748 () Bool)

(declare-fun e!16175 () Bool)

(declare-fun tp!6548 () Bool)

(declare-fun tp!6549 () Bool)

(assert (=> b!31748 (= e!16175 (and tp!6548 tp!6549))))

(declare-fun b!31749 () Bool)

(assert (=> b!31749 (= e!16175 tp_is_empty!181)))

(assert (=> b!31098 (= tp!6474 e!16175)))

(assert (= (and b!31098 (is-CC!67 (left!712 (left!712 (right!715 res!5547))))) b!31748))

(assert (= (and b!31098 (is-Single!67 (left!712 (left!712 (right!715 res!5547))))) b!31749))

(declare-fun b!31750 () Bool)

(declare-fun e!16176 () Bool)

(declare-fun tp!6550 () Bool)

(declare-fun tp!6551 () Bool)

(assert (=> b!31750 (= e!16176 (and tp!6550 tp!6551))))

(declare-fun b!31751 () Bool)

(assert (=> b!31751 (= e!16176 tp_is_empty!181)))

(assert (=> b!31098 (= tp!6475 e!16176)))

(assert (= (and b!31098 (is-CC!67 (right!715 (left!712 (right!715 res!5547))))) b!31750))

(assert (= (and b!31098 (is-Single!67 (right!715 (left!712 (right!715 res!5547))))) b!31751))

(declare-fun b!31752 () Bool)

(declare-fun e!16177 () Bool)

(declare-fun tp!6552 () Bool)

(declare-fun tp!6553 () Bool)

(assert (=> b!31752 (= e!16177 (and tp!6552 tp!6553))))

(declare-fun b!31753 () Bool)

(assert (=> b!31753 (= e!16177 tp_is_empty!181)))

(assert (=> b!31088 (= tp!6464 e!16177)))

(assert (= (and b!31088 (is-CC!67 (left!712 (right!715 (right!715 xs!533))))) b!31752))

(assert (= (and b!31088 (is-Single!67 (left!712 (right!715 (right!715 xs!533))))) b!31753))

(declare-fun b!31754 () Bool)

(declare-fun e!16178 () Bool)

(declare-fun tp!6554 () Bool)

(declare-fun tp!6555 () Bool)

(assert (=> b!31754 (= e!16178 (and tp!6554 tp!6555))))

(declare-fun b!31755 () Bool)

(assert (=> b!31755 (= e!16178 tp_is_empty!181)))

(assert (=> b!31088 (= tp!6465 e!16178)))

(assert (= (and b!31088 (is-CC!67 (right!715 (right!715 (right!715 xs!533))))) b!31754))

(assert (= (and b!31088 (is-Single!67 (right!715 (right!715 (right!715 xs!533))))) b!31755))

(declare-fun b!31756 () Bool)

(declare-fun e!16179 () Bool)

(declare-fun tp!6556 () Bool)

(declare-fun tp!6557 () Bool)

(assert (=> b!31756 (= e!16179 (and tp!6556 tp!6557))))

(declare-fun b!31757 () Bool)

(assert (=> b!31757 (= e!16179 tp_is_empty!181)))

(assert (=> b!31108 (= tp!6484 e!16179)))

(assert (= (and b!31108 (is-CC!67 (left!712 (right!715 (left!712 xs!533))))) b!31756))

(assert (= (and b!31108 (is-Single!67 (left!712 (right!715 (left!712 xs!533))))) b!31757))

(declare-fun b!31758 () Bool)

(declare-fun e!16180 () Bool)

(declare-fun tp!6558 () Bool)

(declare-fun tp!6559 () Bool)

(assert (=> b!31758 (= e!16180 (and tp!6558 tp!6559))))

(declare-fun b!31759 () Bool)

(assert (=> b!31759 (= e!16180 tp_is_empty!181)))

(assert (=> b!31108 (= tp!6485 e!16180)))

(assert (= (and b!31108 (is-CC!67 (right!715 (right!715 (left!712 xs!533))))) b!31758))

(assert (= (and b!31108 (is-Single!67 (right!715 (right!715 (left!712 xs!533))))) b!31759))

(declare-fun b!31760 () Bool)

(declare-fun e!16181 () Bool)

(declare-fun tp!6560 () Bool)

(declare-fun tp!6561 () Bool)

(assert (=> b!31760 (= e!16181 (and tp!6560 tp!6561))))

(declare-fun b!31761 () Bool)

(assert (=> b!31761 (= e!16181 tp_is_empty!181)))

(assert (=> b!31102 (= tp!6478 e!16181)))

(assert (= (and b!31102 (is-CC!67 (left!712 (left!712 (left!712 ys!77))))) b!31760))

(assert (= (and b!31102 (is-Single!67 (left!712 (left!712 (left!712 ys!77))))) b!31761))

(declare-fun b!31762 () Bool)

(declare-fun e!16182 () Bool)

(declare-fun tp!6562 () Bool)

(declare-fun tp!6563 () Bool)

(assert (=> b!31762 (= e!16182 (and tp!6562 tp!6563))))

(declare-fun b!31763 () Bool)

(assert (=> b!31763 (= e!16182 tp_is_empty!181)))

(assert (=> b!31102 (= tp!6479 e!16182)))

(assert (= (and b!31102 (is-CC!67 (right!715 (left!712 (left!712 ys!77))))) b!31762))

(assert (= (and b!31102 (is-Single!67 (right!715 (left!712 (left!712 ys!77))))) b!31763))

(declare-fun b!31764 () Bool)

(declare-fun e!16183 () Bool)

(declare-fun tp!6564 () Bool)

(declare-fun tp!6565 () Bool)

(assert (=> b!31764 (= e!16183 (and tp!6564 tp!6565))))

(declare-fun b!31765 () Bool)

(assert (=> b!31765 (= e!16183 tp_is_empty!181)))

(assert (=> b!31094 (= tp!6470 e!16183)))

(assert (= (and b!31094 (is-CC!67 (left!712 (left!712 (left!712 res!5547))))) b!31764))

(assert (= (and b!31094 (is-Single!67 (left!712 (left!712 (left!712 res!5547))))) b!31765))

(declare-fun b!31766 () Bool)

(declare-fun e!16184 () Bool)

(declare-fun tp!6566 () Bool)

(declare-fun tp!6567 () Bool)

(assert (=> b!31766 (= e!16184 (and tp!6566 tp!6567))))

(declare-fun b!31767 () Bool)

(assert (=> b!31767 (= e!16184 tp_is_empty!181)))

(assert (=> b!31094 (= tp!6471 e!16184)))

(assert (= (and b!31094 (is-CC!67 (right!715 (left!712 (left!712 res!5547))))) b!31766))

(assert (= (and b!31094 (is-Single!67 (right!715 (left!712 (left!712 res!5547))))) b!31767))

(declare-fun b!31768 () Bool)

(declare-fun e!16185 () Bool)

(declare-fun tp!6568 () Bool)

(declare-fun tp!6569 () Bool)

(assert (=> b!31768 (= e!16185 (and tp!6568 tp!6569))))

(declare-fun b!31769 () Bool)

(assert (=> b!31769 (= e!16185 tp_is_empty!181)))

(assert (=> b!31100 (= tp!6476 e!16185)))

(assert (= (and b!31100 (is-CC!67 (left!712 (right!715 (right!715 res!5547))))) b!31768))

(assert (= (and b!31100 (is-Single!67 (left!712 (right!715 (right!715 res!5547))))) b!31769))

(declare-fun b!31770 () Bool)

(declare-fun e!16186 () Bool)

(declare-fun tp!6570 () Bool)

(declare-fun tp!6571 () Bool)

(assert (=> b!31770 (= e!16186 (and tp!6570 tp!6571))))

(declare-fun b!31771 () Bool)

(assert (=> b!31771 (= e!16186 tp_is_empty!181)))

(assert (=> b!31100 (= tp!6477 e!16186)))

(assert (= (and b!31100 (is-CC!67 (right!715 (right!715 (right!715 res!5547))))) b!31770))

(assert (= (and b!31100 (is-Single!67 (right!715 (right!715 (right!715 res!5547))))) b!31771))

(push 1)

(assert (not b!31760))

(assert (not b!31317))

(assert (not b!31756))

(assert (not b!31606))

(assert (not b!31458))

(assert (not b!31192))

(assert (not b!31348))

(assert (not b!31671))

(assert (not b!31202))

(assert (not d!16167))

(assert (not b!31371))

(assert (not b!31183))

(assert (not b!31563))

(assert (not b!31623))

(assert (not b!31150))

(assert (not b!31209))

(assert (not b!31383))

(assert (not b!31728))

(assert (not b!31305))

(assert (not b!31309))

(assert (not b!31167))

(assert (not b!31524))

(assert (not b!31536))

(assert (not b!31220))

(assert (not b!31676))

(assert (not b!31672))

(assert (not d!16295))

(assert (not d!16395))

(assert (not b!31312))

(assert (not b!31176))

(assert (not d!16233))

(assert (not b!31120))

(assert (not b!31588))

(assert (not b!31153))

(assert (not b!31382))

(assert (not b!31368))

(assert (not b!31689))

(assert (not b!31544))

(assert (not b!31394))

(assert (not b!31433))

(assert (not b!31224))

(assert (not b!31207))

(assert (not b!31616))

(assert (not b!31336))

(assert (not b!31658))

(assert (not b!31555))

(assert (not b!31345))

(assert (not b!31766))

(assert (not b!31708))

(assert (not b!31673))

(assert (not b!31346))

(assert (not b!31724))

(assert (not d!16227))

(assert (not b!31561))

(assert (not b!31660))

(assert (not b!31162))

(assert (not b!31681))

(assert (not b!31469))

(assert (not b!31219))

(assert (not b!31158))

(assert (not d!16347))

(assert (not b!31557))

(assert (not b!31451))

(assert (not b!31342))

(assert (not b!31278))

(assert (not b!31567))

(assert (not b!31599))

(assert (not b!31554))

(assert (not b!31609))

(assert (not b!31568))

(assert (not b!31155))

(assert (not d!16183))

(assert (not b!31216))

(assert (not b!31159))

(assert (not b!31180))

(assert (not b!31280))

(assert (not b!31532))

(assert (not b!31127))

(assert (not b!31217))

(assert (not b!31622))

(assert (not b!31218))

(assert (not b!31288))

(assert (not b!31296))

(assert (not b!31223))

(assert (not b!31642))

(assert (not b!31748))

(assert (not b!31633))

(assert (not b!31512))

(assert (not b!31320))

(assert (not b!31282))

(assert (not b!31662))

(assert (not b!31558))

(assert (not b!31332))

(assert (not b!31304))

(assert (not b!31206))

(assert (not b!31213))

(assert (not b!31333))

(assert (not b!31691))

(assert (not b!31718))

(assert (not b!31630))

(assert (not b!31683))

(assert (not b!31655))

(assert (not b!31752))

(assert (not b!31617))

(assert (not b!31390))

(assert (not b!31583))

(assert (not b!31533))

(assert (not b!31517))

(assert (not b!31352))

(assert (not b!31518))

(assert (not b!31123))

(assert (not b!31232))

(assert (not b!31379))

(assert (not b!31265))

(assert (not b!31732))

(assert (not d!16249))

(assert (not b!31481))

(assert (not b!31319))

(assert (not b!31181))

(assert (not b!31702))

(assert (not d!16415))

(assert (not b!31758))

(assert (not d!16287))

(assert (not b!31172))

(assert (not d!16479))

(assert (not b!31129))

(assert (not b!31357))

(assert (not b!31246))

(assert (not b!31595))

(assert (not b!31414))

(assert (not b!31464))

(assert (not b!31388))

(assert (not b!31614))

(assert (not b!31374))

(assert (not b!31149))

(assert (not d!16181))

(assert (not b!31341))

(assert (not b!31354))

(assert (not b!31674))

(assert (not b!31607))

(assert (not b!31625))

(assert (not b!31565))

(assert (not b!31184))

(assert (not b!31670))

(assert (not b!31637))

(assert (not b!31594))

(assert (not b!31422))

(assert (not b!31520))

(assert (not b!31754))

(assert (not b!31643))

(assert (not b!31228))

(assert (not d!16237))

(assert (not b!31361))

(assert (not b!31124))

(assert (not b!31631))

(assert (not d!16401))

(assert (not b!31397))

(assert (not b!31375))

(assert (not b!31479))

(assert (not b!31190))

(assert (not b!31212))

(assert (not b!31147))

(assert (not b!31148))

(assert (not b!31613))

(assert (not b!31522))

(assert (not b!31738))

(assert (not b!31404))

(assert (not b!31768))

(assert (not b!31441))

(assert (not b!31204))

(assert (not b!31710))

(assert (not b!31507))

(assert (not b!31579))

(assert (not b!31764))

(assert (not b!31693))

(assert (not b!31302))

(assert (not b!31604))

(assert (not b!31661))

(assert (not b!31364))

(assert (not b!31466))

(assert (not b!31326))

(assert (not b!31339))

(assert (not b!31306))

(assert (not b!31603))

(assert (not b!31242))

(assert (not b!31675))

(assert (not b!31316))

(assert (not d!16393))

(assert (not b!31310))

(assert (not b!31564))

(assert (not b!31639))

(assert (not b!31179))

(assert (not b!31541))

(assert (not b!31222))

(assert (not b!31121))

(assert (not b!31577))

(assert (not b!31669))

(assert (not d!16477))

(assert (not b!31225))

(assert (not d!16451))

(assert (not b!31698))

(assert (not d!16289))

(assert (not b!31119))

(assert (not d!16229))

(assert (not b!31360))

(assert (not d!16381))

(assert (not b!31250))

(assert (not b!31303))

(assert (not b!31526))

(assert (not b!31734))

(assert (not b!31742))

(assert (not d!16425))

(assert (not b!31337))

(assert (not b!31762))

(assert (not b!31274))

(assert (not b!31646))

(assert (not b!31356))

(assert (not b!31455))

(assert (not b!31746))

(assert (not b!31712))

(assert (not b!31284))

(assert (not b!31722))

(assert (not b!31659))

(assert (not b!31367))

(assert (not d!16481))

(assert (not d!16323))

(assert (not b!31527))

(assert (not b!31164))

(assert (not b!31387))

(assert (not b!31537))

(assert (not b!31492))

(assert (not b!31538))

(assert (not b!31215))

(assert (not b!31210))

(assert (not d!16251))

(assert (not b!31440))

(assert (not b!31351))

(assert (not b!31343))

(assert (not b!31226))

(assert (not b!31540))

(assert (not b!31353))

(assert (not b!31256))

(assert (not b!31459))

(assert (not d!16225))

(assert (not b!31504))

(assert (not b!31157))

(assert (not b!31263))

(assert (not b!31163))

(assert (not b!31446))

(assert (not b!31706))

(assert (not b!31437))

(assert (not b!31253))

(assert (not b!31621))

(assert (not b!31750))

(assert (not b!31378))

(assert (not b!31665))

(assert (not b!31700))

(assert (not d!16391))

(assert (not d!16291))

(assert (not b!31645))

(assert (not b!31370))

(assert (not b!31620))

(assert (not b!31385))

(assert (not b!31651))

(assert (not b!31417))

(assert (not b!31687))

(assert (not b!31629))

(assert (not b!31234))

(assert (not b!31252))

(assert (not b!31193))

(assert (not b!31593))

(assert (not b!31726))

(assert (not b!31178))

(assert (not b!31488))

(assert (not b!31472))

(assert (not b!31552))

(assert (not b!31160))

(assert (not d!16185))

(assert (not b!31169))

(assert (not d!16325))

(assert (not b!31444))

(assert (not b!31182))

(assert (not d!16429))

(assert (not b!31208))

(assert (not b!31663))

(assert (not b!31426))

(assert (not b!31185))

(assert (not b!31714))

(assert (not d!16345))

(assert (not b!31560))

(assert (not b!31269))

(assert (not d!16271))

(assert (not b!31584))

(assert (not d!16301))

(assert (not d!16299))

(assert (not b!31506))

(assert (not d!16441))

(assert (not b!31482))

(assert (not b!31173))

(assert (not b!31249))

(assert (not b!31679))

(assert (not b!31667))

(assert (not d!16247))

(assert (not b!31551))

(assert (not b!31307))

(assert (not b!31401))

(assert (not b!31478))

(assert (not b!31344))

(assert (not b!31340))

(assert (not d!16433))

(assert (not d!16423))

(assert (not b!31266))

(assert (not b!31335))

(assert (not b!31605))

(assert (not b!31542))

(assert (not b!31587))

(assert (not b!31308))

(assert (not b!31476))

(assert (not b!31260))

(assert (not b!31678))

(assert (not b!31261))

(assert (not b!31257))

(assert (not b!31365))

(assert (not b!31641))

(assert (not d!16443))

(assert (not b!31327))

(assert (not b!31716))

(assert (not b!31350))

(assert (not b!31322))

(assert (not b!31122))

(assert (not b!31635))

(assert (not b!31248))

(assert (not b!31450))

(assert (not b!31410))

(assert (not b!31632))

(assert (not b!31467))

(assert (not b!31470))

(assert (not b!31480))

(assert (not b!31240))

(assert (not b!31656))

(assert (not b!31634))

(assert (not b!31151))

(assert (not d!16331))

(assert (not b!31230))

(assert (not b!31198))

(assert (not b!31628))

(assert (not b!31704))

(assert (not b!31328))

(assert (not b!31521))

(assert (not b!31730))

(assert (not b!31330))

(assert (not b!31447))

(assert (not b!31626))

(assert (not d!16297))

(assert (not b!31580))

(assert (not b!31498))

(assert (not b!31454))

(assert (not b!31268))

(assert (not b!31402))

(assert (not b!31516))

(assert (not b!31591))

(assert (not b!31168))

(assert (not b!31291))

(assert (not b!31525))

(assert (not b!31395))

(assert (not b!31436))

(assert (not d!16431))

(assert (not b!31720))

(assert (not b!31290))

(assert (not b!31543))

(assert (not b!31740))

(assert (not b!31214))

(assert (not b!31211))

(assert (not b!31694))

(assert (not b!31118))

(assert (not b!31221))

(assert (not b!31462))

(assert (not b!31386))

(assert (not b!31500))

(assert (not d!16335))

(assert (not b!31486))

(assert (not b!31400))

(assert (not b!31484))

(assert (not b!31408))

(assert (not b!31770))

(assert (not b!31125))

(assert (not b!31573))

(assert (not b!31547))

(assert (not b!31396))

(assert (not b!31619))

(assert (not d!16517))

(assert (not b!31494))

(assert (not b!31535))

(assert (not b!31545))

(assert (not d!16333))

(assert (not b!31611))

(assert (not b!31736))

(assert (not d!16403))

(assert (not b!31188))

(assert (not d!16461))

(assert (not b!31696))

(assert (not b!31528))

(assert (not b!31432))

(assert (not b!31677))

(assert (not b!31483))

(assert (not b!31135))

(assert (not b!31430))

(assert (not d!16349))

(assert (not b!31553))

(assert (not b!31448))

(assert (not b!31264))

(assert (not b!31744))

(assert (not b!31318))

(assert (not b!31474))

(assert (not b!31468))

(assert (not b!31300))

(assert (not b!31529))

(assert (not d!16427))

(assert (not d!16235))

(assert (not b!31668))

(assert (not b!31186))

(assert (not b!31399))

(assert (not b!31416))

(assert (not b!31329))

(assert (not b!31170))

(assert (not b!31657))

(assert (not b!31428))

(assert (not b!31338))

(assert tp_is_empty!181)

(assert (not b!31244))

(assert (not b!31398))

(assert (not b!31618))

(assert (not d!16321))

(assert (not b!31562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

