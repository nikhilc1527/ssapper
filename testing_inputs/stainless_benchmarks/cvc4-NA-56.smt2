; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!444 () Bool)

(assert start!444)

(declare-fun b!3638 () Bool)

(declare-fun res!1107 () Bool)

(declare-fun e!2041 () Bool)

(assert (=> b!3638 (=> (not res!1107) (not e!2041))))

(declare-datatypes () ((Unit!45 (Unit!46))))

(declare-fun tmp!10 () Unit!45)

(declare-fun Unit!47 () Unit!45)

(assert (=> b!3638 (= res!1107 (= tmp!10 Unit!47))))

(declare-datatypes () ((List!69 (Cons!69 (head!241 (_ BitVec 32)) (tail!253 List!69)) (Nil!70))))

(declare-fun front!29 () List!69)

(declare-fun rear!28 () List!69)

(declare-fun concatNil!0 (List!69) Bool)

(declare-fun concat!2 (List!69 List!69) List!69)

(declare-fun tail!158 (List!69) List!69)

(declare-fun reverse!5 (List!69) List!69)

(assert (=> b!3638 (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))

(declare-fun res!1108 () Bool)

(assert (=> start!444 (=> (not res!1108) (not e!2041))))

(declare-datatypes () ((AbsQueue!18 (Queue!17 (front!68 List!69) (rear!70 List!69)))))

(declare-fun queue!34 () AbsQueue!18)

(declare-fun isEmpty!12 (AbsQueue!18) Bool)

(assert (=> start!444 (= res!1108 (not (isEmpty!12 queue!34)))))

(assert (=> start!444 e!2041))

(assert (=> start!444 true))

(declare-fun b!3639 () Bool)

(declare-fun res!1110 () Bool)

(assert (=> b!3639 (=> (not res!1110) (not e!2041))))

(declare-fun list!133 () List!69)

(declare-fun asList!0 (AbsQueue!18) List!69)

(assert (=> b!3639 (= res!1110 (= list!133 (asList!0 queue!34)))))

(declare-fun b!3640 () Bool)

(assert (=> b!3640 (= e!2041 (= list!133 Nil!70))))

(declare-fun b!3641 () Bool)

(declare-fun res!1109 () Bool)

(assert (=> b!3641 (=> (not res!1109) (not e!2041))))

(declare-datatypes () ((tuple2!8 (tuple2!9 (_1!4 List!69) (_2!4 List!69)))))

(declare-fun x$7!13 () tuple2!8)

(declare-fun t!389 () tuple2!8)

(declare-fun res!638 () tuple2!8)

(assert (=> b!3641 (= res!1109 (and (= t!389 (tuple2!9 (front!68 queue!34) (rear!70 queue!34))) (= res!638 t!389) (= x$7!13 res!638) (= front!29 (_1!4 x$7!13)) (= rear!28 (_2!4 x$7!13))))))

(declare-fun b!3642 () Bool)

(declare-fun res!1111 () Bool)

(assert (=> b!3642 (=> (not res!1111) (not e!2041))))

(declare-fun isAmortized!0 (AbsQueue!18) Bool)

(assert (=> b!3642 (= res!1111 (isAmortized!0 queue!34))))

(assert (= (and start!444 res!1108) b!3642))

(assert (= (and b!3642 res!1111) b!3641))

(assert (= (and b!3641 res!1109) b!3638))

(assert (= (and b!3638 res!1107) b!3639))

(assert (= (and b!3639 res!1110) b!3640))

(declare-fun m!5673 () Bool)

(assert (=> b!3638 m!5673))

(declare-fun m!5675 () Bool)

(assert (=> b!3638 m!5675))

(assert (=> b!3638 m!5673))

(assert (=> b!3638 m!5675))

(declare-fun m!5677 () Bool)

(assert (=> b!3638 m!5677))

(assert (=> b!3638 m!5677))

(declare-fun m!5679 () Bool)

(assert (=> b!3638 m!5679))

(declare-fun m!5681 () Bool)

(assert (=> start!444 m!5681))

(declare-fun m!5683 () Bool)

(assert (=> b!3639 m!5683))

(declare-fun m!5685 () Bool)

(assert (=> b!3642 m!5685))

(push 1)

(assert (not b!3642))

(assert (not b!3639))

(assert (not b!3638))

(assert (not start!444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2672 () Bool)

(declare-fun size!23 (List!69) Int)

(assert (=> d!2672 (= (isAmortized!0 queue!34) (>= (size!23 (front!68 queue!34)) (size!23 (rear!70 queue!34))))))

(declare-fun bs!256 () Bool)

(assert (= bs!256 d!2672))

(declare-fun m!5687 () Bool)

(assert (=> bs!256 m!5687))

(declare-fun m!5689 () Bool)

(assert (=> bs!256 m!5689))

(assert (=> b!3642 d!2672))

(declare-fun d!2674 () Bool)

(assert (=> d!2674 (= (asList!0 queue!34) (concat!2 (front!68 queue!34) (reverse!5 (rear!70 queue!34))))))

(declare-fun bs!257 () Bool)

(assert (= bs!257 d!2674))

(declare-fun m!5691 () Bool)

(assert (=> bs!257 m!5691))

(assert (=> bs!257 m!5691))

(declare-fun m!5693 () Bool)

(assert (=> bs!257 m!5693))

(assert (=> b!3639 d!2674))

(declare-fun b!3647 () Bool)

(declare-fun e!2044 () Bool)

(assert (=> b!3647 (= e!2044 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!70) (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(declare-fun lt!1040 () Bool)

(assert (=> b!3647 (= lt!1040 (concatNil!0 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(declare-fun d!2676 () Bool)

(assert (=> d!2676 e!2044))

(declare-fun c!1330 () Bool)

(assert (=> d!2676 (= c!1330 (is-Cons!69 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (=> d!2676 (= (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) true)))

(declare-fun b!3648 () Bool)

(assert (=> b!3648 (= e!2044 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!70) (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (= (and d!2676 c!1330) b!3647))

(assert (= (and d!2676 (not c!1330)) b!3648))

(assert (=> b!3647 m!5677))

(declare-fun m!5695 () Bool)

(assert (=> b!3647 m!5695))

(declare-fun m!5697 () Bool)

(assert (=> b!3647 m!5697))

(assert (=> b!3648 m!5677))

(assert (=> b!3648 m!5695))

(assert (=> b!3638 d!2676))

(declare-fun d!2678 () Bool)

(declare-fun e!2050 () Bool)

(assert (=> d!2678 e!2050))

(declare-fun res!1115 () Bool)

(assert (=> d!2678 (=> (not res!1115) (not e!2050))))

(declare-fun lt!1043 () List!69)

(assert (=> d!2678 (= res!1115 (= (size!23 lt!1043) (+ (size!23 (tail!158 front!29)) (size!23 (reverse!5 rear!28)))))))

(declare-fun e!2049 () List!69)

(assert (=> d!2678 (= lt!1043 e!2049)))

(declare-fun c!1333 () Bool)

(assert (=> d!2678 (= c!1333 (is-Nil!70 (tail!158 front!29)))))

(assert (=> d!2678 (= (concat!2 (tail!158 front!29) (reverse!5 rear!28)) lt!1043)))

(declare-fun b!3655 () Bool)

(assert (=> b!3655 (= e!2049 (reverse!5 rear!28))))

(declare-fun b!3656 () Bool)

(assert (=> b!3656 (= e!2049 (Cons!69 (head!241 (tail!158 front!29)) (concat!2 (tail!253 (tail!158 front!29)) (reverse!5 rear!28))))))

(declare-fun b!3657 () Bool)

(declare-fun content!22 (List!69) (Set (_ BitVec 32)))

(assert (=> b!3657 (= e!2050 (= (content!22 lt!1043) (union (content!22 (tail!158 front!29)) (content!22 (reverse!5 rear!28)))))))

(assert (= (and d!2678 c!1333) b!3655))

(assert (= (and d!2678 (not c!1333)) b!3656))

(assert (= (and d!2678 res!1115) b!3657))

(declare-fun m!5699 () Bool)

(assert (=> d!2678 m!5699))

(assert (=> d!2678 m!5673))

(declare-fun m!5701 () Bool)

(assert (=> d!2678 m!5701))

(assert (=> d!2678 m!5675))

(declare-fun m!5703 () Bool)

(assert (=> d!2678 m!5703))

(assert (=> b!3656 m!5675))

(declare-fun m!5705 () Bool)

(assert (=> b!3656 m!5705))

(declare-fun m!5707 () Bool)

(assert (=> b!3657 m!5707))

(assert (=> b!3657 m!5673))

(declare-fun m!5709 () Bool)

(assert (=> b!3657 m!5709))

(assert (=> b!3657 m!5675))

(declare-fun m!5711 () Bool)

(assert (=> b!3657 m!5711))

(assert (=> b!3638 d!2678))

(declare-fun d!2680 () Bool)

(assert (=> d!2680 (= (tail!158 front!29) (tail!253 front!29))))

(assert (=> b!3638 d!2680))

(declare-fun d!2682 () Bool)

(declare-fun lt!1046 () List!69)

(assert (=> d!2682 (= (content!22 lt!1046) (content!22 rear!28))))

(declare-fun e!2053 () List!69)

(assert (=> d!2682 (= lt!1046 e!2053)))

(declare-fun c!1336 () Bool)

(assert (=> d!2682 (= c!1336 (is-Nil!70 rear!28))))

(assert (=> d!2682 (= (reverse!5 rear!28) lt!1046)))

(declare-fun b!3662 () Bool)

(assert (=> b!3662 (= e!2053 Nil!70)))

(declare-fun b!3663 () Bool)

(assert (=> b!3663 (= e!2053 (concat!2 (reverse!5 (tail!253 rear!28)) (Cons!69 (head!241 rear!28) Nil!70)))))

(assert (= (and d!2682 c!1336) b!3662))

(assert (= (and d!2682 (not c!1336)) b!3663))

(declare-fun m!5713 () Bool)

(assert (=> d!2682 m!5713))

(declare-fun m!5715 () Bool)

(assert (=> d!2682 m!5715))

(declare-fun m!5717 () Bool)

(assert (=> b!3663 m!5717))

(assert (=> b!3663 m!5717))

(declare-fun m!5719 () Bool)

(assert (=> b!3663 m!5719))

(assert (=> b!3638 d!2682))

(declare-fun d!2684 () Bool)

(assert (=> d!2684 (= (isEmpty!12 queue!34) (and (is-Nil!70 (front!68 queue!34)) (is-Nil!70 (rear!70 queue!34))))))

(assert (=> start!444 d!2684))

(push 1)

(assert (not b!3648))

(assert (not b!3656))

(assert (not b!3657))

(assert (not d!2678))

(assert (not d!2674))

(assert (not d!2672))

(assert (not d!2682))

(assert (not b!3663))

(assert (not b!3647))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2686 () Bool)

(declare-fun lt!1049 () Int)

(assert (=> d!2686 (>= lt!1049 0)))

(declare-fun e!2056 () Int)

(assert (=> d!2686 (= lt!1049 e!2056)))

(declare-fun c!1339 () Bool)

(assert (=> d!2686 (= c!1339 (is-Nil!70 lt!1043))))

(assert (=> d!2686 (= (size!23 lt!1043) lt!1049)))

(declare-fun b!3668 () Bool)

(assert (=> b!3668 (= e!2056 0)))

(declare-fun b!3669 () Bool)

(assert (=> b!3669 (= e!2056 (+ 1 (size!23 (tail!253 lt!1043))))))

(assert (= (and d!2686 c!1339) b!3668))

(assert (= (and d!2686 (not c!1339)) b!3669))

(declare-fun m!5721 () Bool)

(assert (=> b!3669 m!5721))

(assert (=> d!2678 d!2686))

(declare-fun d!2688 () Bool)

(declare-fun lt!1050 () Int)

(assert (=> d!2688 (>= lt!1050 0)))

(declare-fun e!2057 () Int)

(assert (=> d!2688 (= lt!1050 e!2057)))

(declare-fun c!1340 () Bool)

(assert (=> d!2688 (= c!1340 (is-Nil!70 (tail!158 front!29)))))

(assert (=> d!2688 (= (size!23 (tail!158 front!29)) lt!1050)))

(declare-fun b!3670 () Bool)

(assert (=> b!3670 (= e!2057 0)))

(declare-fun b!3671 () Bool)

(assert (=> b!3671 (= e!2057 (+ 1 (size!23 (tail!253 (tail!158 front!29)))))))

(assert (= (and d!2688 c!1340) b!3670))

(assert (= (and d!2688 (not c!1340)) b!3671))

(declare-fun m!5723 () Bool)

(assert (=> b!3671 m!5723))

(assert (=> d!2678 d!2688))

(declare-fun d!2690 () Bool)

(declare-fun lt!1051 () Int)

(assert (=> d!2690 (>= lt!1051 0)))

(declare-fun e!2058 () Int)

(assert (=> d!2690 (= lt!1051 e!2058)))

(declare-fun c!1341 () Bool)

(assert (=> d!2690 (= c!1341 (is-Nil!70 (reverse!5 rear!28)))))

(assert (=> d!2690 (= (size!23 (reverse!5 rear!28)) lt!1051)))

(declare-fun b!3672 () Bool)

(assert (=> b!3672 (= e!2058 0)))

(declare-fun b!3673 () Bool)

(assert (=> b!3673 (= e!2058 (+ 1 (size!23 (tail!253 (reverse!5 rear!28)))))))

(assert (= (and d!2690 c!1341) b!3672))

(assert (= (and d!2690 (not c!1341)) b!3673))

(declare-fun m!5725 () Bool)

(assert (=> b!3673 m!5725))

(assert (=> d!2678 d!2690))

(declare-fun d!2692 () Bool)

(declare-fun e!2060 () Bool)

(assert (=> d!2692 e!2060))

(declare-fun res!1117 () Bool)

(assert (=> d!2692 (=> (not res!1117) (not e!2060))))

(declare-fun lt!1052 () List!69)

(assert (=> d!2692 (= res!1117 (= (size!23 lt!1052) (+ (size!23 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (size!23 Nil!70))))))

(declare-fun e!2059 () List!69)

(assert (=> d!2692 (= lt!1052 e!2059)))

(declare-fun c!1342 () Bool)

(assert (=> d!2692 (= c!1342 (is-Nil!70 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (=> d!2692 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!70) lt!1052)))

(declare-fun b!3674 () Bool)

(assert (=> b!3674 (= e!2059 Nil!70)))

(declare-fun b!3675 () Bool)

(assert (=> b!3675 (= e!2059 (Cons!69 (head!241 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (concat!2 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!70)))))

(declare-fun b!3676 () Bool)

(assert (=> b!3676 (= e!2060 (= (content!22 lt!1052) (union (content!22 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) (content!22 Nil!70))))))

(assert (= (and d!2692 c!1342) b!3674))

(assert (= (and d!2692 (not c!1342)) b!3675))

(assert (= (and d!2692 res!1117) b!3676))

(declare-fun m!5727 () Bool)

(assert (=> d!2692 m!5727))

(assert (=> d!2692 m!5677))

(declare-fun m!5729 () Bool)

(assert (=> d!2692 m!5729))

(declare-fun m!5731 () Bool)

(assert (=> d!2692 m!5731))

(declare-fun m!5733 () Bool)

(assert (=> b!3675 m!5733))

(declare-fun m!5735 () Bool)

(assert (=> b!3676 m!5735))

(assert (=> b!3676 m!5677))

(declare-fun m!5737 () Bool)

(assert (=> b!3676 m!5737))

(declare-fun m!5739 () Bool)

(assert (=> b!3676 m!5739))

(assert (=> b!3647 d!2692))

(declare-fun b!3677 () Bool)

(declare-fun e!2061 () Bool)

(assert (=> b!3677 (= e!2061 (= (concat!2 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!70) (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(declare-fun lt!1053 () Bool)

(assert (=> b!3677 (= lt!1053 (concatNil!0 (tail!253 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))))

(declare-fun d!2694 () Bool)

(assert (=> d!2694 e!2061))

(declare-fun c!1343 () Bool)

(assert (=> d!2694 (= c!1343 (is-Cons!69 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(assert (=> d!2694 (= (concatNil!0 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))) true)))

(declare-fun b!3678 () Bool)

(assert (=> b!3678 (= e!2061 (= (concat!2 (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) Nil!70) (tail!253 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(assert (= (and d!2694 c!1343) b!3677))

(assert (= (and d!2694 (not c!1343)) b!3678))

(assert (=> b!3677 m!5733))

(declare-fun m!5741 () Bool)

(assert (=> b!3677 m!5741))

(assert (=> b!3678 m!5733))

(assert (=> b!3647 d!2694))

(assert (=> b!3648 d!2692))

(declare-fun d!2696 () Bool)

(declare-fun c!1346 () Bool)

(assert (=> d!2696 (= c!1346 (is-Nil!70 lt!1043))))

(declare-fun e!2064 () (Set (_ BitVec 32)))

(assert (=> d!2696 (= (content!22 lt!1043) e!2064)))

(declare-fun b!3683 () Bool)

(assert (=> b!3683 (= e!2064 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3684 () Bool)

(assert (=> b!3684 (= e!2064 (union (insert (head!241 lt!1043) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!253 lt!1043))))))

(assert (= (and d!2696 c!1346) b!3683))

(assert (= (and d!2696 (not c!1346)) b!3684))

(declare-fun m!5743 () Bool)

(assert (=> b!3684 m!5743))

(declare-fun m!5745 () Bool)

(assert (=> b!3684 m!5745))

(assert (=> b!3657 d!2696))

(declare-fun d!2698 () Bool)

(declare-fun c!1347 () Bool)

(assert (=> d!2698 (= c!1347 (is-Nil!70 (tail!158 front!29)))))

(declare-fun e!2065 () (Set (_ BitVec 32)))

(assert (=> d!2698 (= (content!22 (tail!158 front!29)) e!2065)))

(declare-fun b!3685 () Bool)

(assert (=> b!3685 (= e!2065 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3686 () Bool)

(assert (=> b!3686 (= e!2065 (union (insert (head!241 (tail!158 front!29)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!253 (tail!158 front!29)))))))

(assert (= (and d!2698 c!1347) b!3685))

(assert (= (and d!2698 (not c!1347)) b!3686))

(declare-fun m!5747 () Bool)

(assert (=> b!3686 m!5747))

(declare-fun m!5749 () Bool)

(assert (=> b!3686 m!5749))

(assert (=> b!3657 d!2698))

(declare-fun d!2700 () Bool)

(declare-fun c!1348 () Bool)

(assert (=> d!2700 (= c!1348 (is-Nil!70 (reverse!5 rear!28)))))

(declare-fun e!2066 () (Set (_ BitVec 32)))

(assert (=> d!2700 (= (content!22 (reverse!5 rear!28)) e!2066)))

(declare-fun b!3687 () Bool)

(assert (=> b!3687 (= e!2066 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3688 () Bool)

(assert (=> b!3688 (= e!2066 (union (insert (head!241 (reverse!5 rear!28)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!253 (reverse!5 rear!28)))))))

(assert (= (and d!2700 c!1348) b!3687))

(assert (= (and d!2700 (not c!1348)) b!3688))

(declare-fun m!5751 () Bool)

(assert (=> b!3688 m!5751))

(declare-fun m!5753 () Bool)

(assert (=> b!3688 m!5753))

(assert (=> b!3657 d!2700))

(declare-fun d!2702 () Bool)

(declare-fun e!2068 () Bool)

(assert (=> d!2702 e!2068))

(declare-fun res!1118 () Bool)

(assert (=> d!2702 (=> (not res!1118) (not e!2068))))

(declare-fun lt!1054 () List!69)

(assert (=> d!2702 (= res!1118 (= (size!23 lt!1054) (+ (size!23 (reverse!5 (tail!253 rear!28))) (size!23 (Cons!69 (head!241 rear!28) Nil!70)))))))

(declare-fun e!2067 () List!69)

(assert (=> d!2702 (= lt!1054 e!2067)))

(declare-fun c!1349 () Bool)

(assert (=> d!2702 (= c!1349 (is-Nil!70 (reverse!5 (tail!253 rear!28))))))

(assert (=> d!2702 (= (concat!2 (reverse!5 (tail!253 rear!28)) (Cons!69 (head!241 rear!28) Nil!70)) lt!1054)))

(declare-fun b!3689 () Bool)

(assert (=> b!3689 (= e!2067 (Cons!69 (head!241 rear!28) Nil!70))))

(declare-fun b!3690 () Bool)

(assert (=> b!3690 (= e!2067 (Cons!69 (head!241 (reverse!5 (tail!253 rear!28))) (concat!2 (tail!253 (reverse!5 (tail!253 rear!28))) (Cons!69 (head!241 rear!28) Nil!70))))))

(declare-fun b!3691 () Bool)

(assert (=> b!3691 (= e!2068 (= (content!22 lt!1054) (union (content!22 (reverse!5 (tail!253 rear!28))) (content!22 (Cons!69 (head!241 rear!28) Nil!70)))))))

(assert (= (and d!2702 c!1349) b!3689))

(assert (= (and d!2702 (not c!1349)) b!3690))

(assert (= (and d!2702 res!1118) b!3691))

(declare-fun m!5755 () Bool)

(assert (=> d!2702 m!5755))

(assert (=> d!2702 m!5717))

(declare-fun m!5757 () Bool)

(assert (=> d!2702 m!5757))

(declare-fun m!5759 () Bool)

(assert (=> d!2702 m!5759))

(declare-fun m!5761 () Bool)

(assert (=> b!3690 m!5761))

(declare-fun m!5763 () Bool)

(assert (=> b!3691 m!5763))

(assert (=> b!3691 m!5717))

(declare-fun m!5765 () Bool)

(assert (=> b!3691 m!5765))

(declare-fun m!5767 () Bool)

(assert (=> b!3691 m!5767))

(assert (=> b!3663 d!2702))

(declare-fun d!2704 () Bool)

(declare-fun lt!1055 () List!69)

(assert (=> d!2704 (= (content!22 lt!1055) (content!22 (tail!253 rear!28)))))

(declare-fun e!2069 () List!69)

(assert (=> d!2704 (= lt!1055 e!2069)))

(declare-fun c!1350 () Bool)

(assert (=> d!2704 (= c!1350 (is-Nil!70 (tail!253 rear!28)))))

(assert (=> d!2704 (= (reverse!5 (tail!253 rear!28)) lt!1055)))

(declare-fun b!3692 () Bool)

(assert (=> b!3692 (= e!2069 Nil!70)))

(declare-fun b!3693 () Bool)

(assert (=> b!3693 (= e!2069 (concat!2 (reverse!5 (tail!253 (tail!253 rear!28))) (Cons!69 (head!241 (tail!253 rear!28)) Nil!70)))))

(assert (= (and d!2704 c!1350) b!3692))

(assert (= (and d!2704 (not c!1350)) b!3693))

(declare-fun m!5769 () Bool)

(assert (=> d!2704 m!5769))

(declare-fun m!5771 () Bool)

(assert (=> d!2704 m!5771))

(declare-fun m!5773 () Bool)

(assert (=> b!3693 m!5773))

(assert (=> b!3693 m!5773))

(declare-fun m!5775 () Bool)

(assert (=> b!3693 m!5775))

(assert (=> b!3663 d!2704))

(declare-fun d!2706 () Bool)

(declare-fun e!2071 () Bool)

(assert (=> d!2706 e!2071))

(declare-fun res!1119 () Bool)

(assert (=> d!2706 (=> (not res!1119) (not e!2071))))

(declare-fun lt!1056 () List!69)

(assert (=> d!2706 (= res!1119 (= (size!23 lt!1056) (+ (size!23 (front!68 queue!34)) (size!23 (reverse!5 (rear!70 queue!34))))))))

(declare-fun e!2070 () List!69)

(assert (=> d!2706 (= lt!1056 e!2070)))

(declare-fun c!1351 () Bool)

(assert (=> d!2706 (= c!1351 (is-Nil!70 (front!68 queue!34)))))

(assert (=> d!2706 (= (concat!2 (front!68 queue!34) (reverse!5 (rear!70 queue!34))) lt!1056)))

(declare-fun b!3694 () Bool)

(assert (=> b!3694 (= e!2070 (reverse!5 (rear!70 queue!34)))))

(declare-fun b!3695 () Bool)

(assert (=> b!3695 (= e!2070 (Cons!69 (head!241 (front!68 queue!34)) (concat!2 (tail!253 (front!68 queue!34)) (reverse!5 (rear!70 queue!34)))))))

(declare-fun b!3696 () Bool)

(assert (=> b!3696 (= e!2071 (= (content!22 lt!1056) (union (content!22 (front!68 queue!34)) (content!22 (reverse!5 (rear!70 queue!34))))))))

(assert (= (and d!2706 c!1351) b!3694))

(assert (= (and d!2706 (not c!1351)) b!3695))

(assert (= (and d!2706 res!1119) b!3696))

(declare-fun m!5777 () Bool)

(assert (=> d!2706 m!5777))

(assert (=> d!2706 m!5687))

(assert (=> d!2706 m!5691))

(declare-fun m!5779 () Bool)

(assert (=> d!2706 m!5779))

(assert (=> b!3695 m!5691))

(declare-fun m!5781 () Bool)

(assert (=> b!3695 m!5781))

(declare-fun m!5783 () Bool)

(assert (=> b!3696 m!5783))

(declare-fun m!5785 () Bool)

(assert (=> b!3696 m!5785))

(assert (=> b!3696 m!5691))

(declare-fun m!5787 () Bool)

(assert (=> b!3696 m!5787))

(assert (=> d!2674 d!2706))

(declare-fun d!2708 () Bool)

(declare-fun lt!1057 () List!69)

(assert (=> d!2708 (= (content!22 lt!1057) (content!22 (rear!70 queue!34)))))

(declare-fun e!2072 () List!69)

(assert (=> d!2708 (= lt!1057 e!2072)))

(declare-fun c!1352 () Bool)

(assert (=> d!2708 (= c!1352 (is-Nil!70 (rear!70 queue!34)))))

(assert (=> d!2708 (= (reverse!5 (rear!70 queue!34)) lt!1057)))

(declare-fun b!3697 () Bool)

(assert (=> b!3697 (= e!2072 Nil!70)))

(declare-fun b!3698 () Bool)

(assert (=> b!3698 (= e!2072 (concat!2 (reverse!5 (tail!253 (rear!70 queue!34))) (Cons!69 (head!241 (rear!70 queue!34)) Nil!70)))))

(assert (= (and d!2708 c!1352) b!3697))

(assert (= (and d!2708 (not c!1352)) b!3698))

(declare-fun m!5789 () Bool)

(assert (=> d!2708 m!5789))

(declare-fun m!5791 () Bool)

(assert (=> d!2708 m!5791))

(declare-fun m!5793 () Bool)

(assert (=> b!3698 m!5793))

(assert (=> b!3698 m!5793))

(declare-fun m!5795 () Bool)

(assert (=> b!3698 m!5795))

(assert (=> d!2674 d!2708))

(declare-fun d!2710 () Bool)

(declare-fun lt!1058 () Int)

(assert (=> d!2710 (>= lt!1058 0)))

(declare-fun e!2073 () Int)

(assert (=> d!2710 (= lt!1058 e!2073)))

(declare-fun c!1353 () Bool)

(assert (=> d!2710 (= c!1353 (is-Nil!70 (front!68 queue!34)))))

(assert (=> d!2710 (= (size!23 (front!68 queue!34)) lt!1058)))

(declare-fun b!3699 () Bool)

(assert (=> b!3699 (= e!2073 0)))

(declare-fun b!3700 () Bool)

(assert (=> b!3700 (= e!2073 (+ 1 (size!23 (tail!253 (front!68 queue!34)))))))

(assert (= (and d!2710 c!1353) b!3699))

(assert (= (and d!2710 (not c!1353)) b!3700))

(declare-fun m!5797 () Bool)

(assert (=> b!3700 m!5797))

(assert (=> d!2672 d!2710))

(declare-fun d!2712 () Bool)

(declare-fun lt!1059 () Int)

(assert (=> d!2712 (>= lt!1059 0)))

(declare-fun e!2074 () Int)

(assert (=> d!2712 (= lt!1059 e!2074)))

(declare-fun c!1354 () Bool)

(assert (=> d!2712 (= c!1354 (is-Nil!70 (rear!70 queue!34)))))

(assert (=> d!2712 (= (size!23 (rear!70 queue!34)) lt!1059)))

(declare-fun b!3701 () Bool)

(assert (=> b!3701 (= e!2074 0)))

(declare-fun b!3702 () Bool)

(assert (=> b!3702 (= e!2074 (+ 1 (size!23 (tail!253 (rear!70 queue!34)))))))

(assert (= (and d!2712 c!1354) b!3701))

(assert (= (and d!2712 (not c!1354)) b!3702))

(declare-fun m!5799 () Bool)

(assert (=> b!3702 m!5799))

(assert (=> d!2672 d!2712))

(declare-fun d!2714 () Bool)

(declare-fun c!1355 () Bool)

(assert (=> d!2714 (= c!1355 (is-Nil!70 lt!1046))))

(declare-fun e!2075 () (Set (_ BitVec 32)))

(assert (=> d!2714 (= (content!22 lt!1046) e!2075)))

(declare-fun b!3703 () Bool)

(assert (=> b!3703 (= e!2075 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3704 () Bool)

(assert (=> b!3704 (= e!2075 (union (insert (head!241 lt!1046) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!253 lt!1046))))))

(assert (= (and d!2714 c!1355) b!3703))

(assert (= (and d!2714 (not c!1355)) b!3704))

(declare-fun m!5801 () Bool)

(assert (=> b!3704 m!5801))

(declare-fun m!5803 () Bool)

(assert (=> b!3704 m!5803))

(assert (=> d!2682 d!2714))

(declare-fun d!2716 () Bool)

(declare-fun c!1356 () Bool)

(assert (=> d!2716 (= c!1356 (is-Nil!70 rear!28))))

(declare-fun e!2076 () (Set (_ BitVec 32)))

(assert (=> d!2716 (= (content!22 rear!28) e!2076)))

(declare-fun b!3705 () Bool)

(assert (=> b!3705 (= e!2076 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3706 () Bool)

(assert (=> b!3706 (= e!2076 (union (insert (head!241 rear!28) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!253 rear!28))))))

(assert (= (and d!2716 c!1356) b!3705))

(assert (= (and d!2716 (not c!1356)) b!3706))

(declare-fun m!5805 () Bool)

(assert (=> b!3706 m!5805))

(assert (=> b!3706 m!5771))

(assert (=> d!2682 d!2716))

(declare-fun d!2718 () Bool)

(declare-fun e!2078 () Bool)

(assert (=> d!2718 e!2078))

(declare-fun res!1120 () Bool)

(assert (=> d!2718 (=> (not res!1120) (not e!2078))))

(declare-fun lt!1060 () List!69)

(assert (=> d!2718 (= res!1120 (= (size!23 lt!1060) (+ (size!23 (tail!253 (tail!158 front!29))) (size!23 (reverse!5 rear!28)))))))

(declare-fun e!2077 () List!69)

(assert (=> d!2718 (= lt!1060 e!2077)))

(declare-fun c!1357 () Bool)

(assert (=> d!2718 (= c!1357 (is-Nil!70 (tail!253 (tail!158 front!29))))))

(assert (=> d!2718 (= (concat!2 (tail!253 (tail!158 front!29)) (reverse!5 rear!28)) lt!1060)))

(declare-fun b!3707 () Bool)

(assert (=> b!3707 (= e!2077 (reverse!5 rear!28))))

(declare-fun b!3708 () Bool)

(assert (=> b!3708 (= e!2077 (Cons!69 (head!241 (tail!253 (tail!158 front!29))) (concat!2 (tail!253 (tail!253 (tail!158 front!29))) (reverse!5 rear!28))))))

(declare-fun b!3709 () Bool)

(assert (=> b!3709 (= e!2078 (= (content!22 lt!1060) (union (content!22 (tail!253 (tail!158 front!29))) (content!22 (reverse!5 rear!28)))))))

(assert (= (and d!2718 c!1357) b!3707))

(assert (= (and d!2718 (not c!1357)) b!3708))

(assert (= (and d!2718 res!1120) b!3709))

(declare-fun m!5807 () Bool)

(assert (=> d!2718 m!5807))

(assert (=> d!2718 m!5723))

(assert (=> d!2718 m!5675))

(assert (=> d!2718 m!5703))

(assert (=> b!3708 m!5675))

(declare-fun m!5809 () Bool)

(assert (=> b!3708 m!5809))

(declare-fun m!5811 () Bool)

(assert (=> b!3709 m!5811))

(assert (=> b!3709 m!5749))

(assert (=> b!3709 m!5675))

(assert (=> b!3709 m!5711))

(assert (=> b!3656 d!2718))

(push 1)

(assert (not b!3677))

(assert (not b!3675))

(assert (not b!3702))

(assert (not b!3691))

(assert (not b!3696))

(assert (not b!3709))

(assert (not b!3695))

(assert (not d!2706))

(assert (not b!3673))

(assert (not b!3704))

(assert (not d!2704))

(assert (not b!3686))

(assert (not b!3700))

(assert (not b!3693))

(assert (not b!3690))

(assert (not d!2692))

(assert (not b!3708))

(assert (not d!2718))

(assert (not b!3676))

(assert (not b!3688))

(assert (not b!3669))

(assert (not d!2702))

(assert (not b!3678))

(assert (not b!3671))

(assert (not b!3684))

(assert (not d!2708))

(assert (not b!3698))

(assert (not b!3706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

