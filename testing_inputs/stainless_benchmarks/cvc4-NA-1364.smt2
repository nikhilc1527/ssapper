; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9540 () Bool)

(assert start!9540)

(declare-fun res!34533 () Bool)

(declare-fun e!38174 () Bool)

(assert (=> start!9540 (=> (not res!34533) (not e!38174))))

(declare-datatypes () ((Formula!64 (And!69 (lhs!995 Formula!64) (rhs!995 Formula!64)) (Literal!63 (id!4844 Int)) (Implies!69 (lhs!996 Formula!64) (rhs!996 Formula!64)) (Or!69 (lhs!997 Formula!64) (rhs!997 Formula!64)) (Not!69 (f!4233 Formula!64)))))

(declare-fun formula!15 () Formula!64)

(assert (=> start!9540 (= res!34533 (and (not (is-And!69 formula!15)) (not (is-Or!69 formula!15)) (not (is-Implies!69 formula!15)) (is-Not!69 formula!15)))))

(assert (=> start!9540 e!38174))

(assert (=> start!9540 true))

(declare-fun b!70586 () Bool)

(declare-fun res!34534 () Bool)

(assert (=> b!70586 (=> (not res!34534) (not e!38174))))

(declare-fun res!29383 () Int)

(declare-fun nnfMeasure!0 (Formula!64) Int)

(assert (=> b!70586 (= res!34534 (= res!29383 (+ (nnfMeasure!0 (f!4233 formula!15)) 1)))))

(declare-fun b!70587 () Bool)

(assert (=> b!70587 (= e!38174 (< res!29383 0))))

(assert (= (and start!9540 res!34533) b!70586))

(assert (= (and b!70586 res!34534) b!70587))

(declare-fun m!70641 () Bool)

(assert (=> b!70586 m!70641))

(push 1)

(assert (not b!70586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70616 () Bool)

(declare-fun e!38192 () Int)

(declare-fun res!34565 () Int)

(assert (=> b!70616 (= e!38192 res!34565)))

(assert (=> b!70616 true))

(declare-fun b!70617 () Bool)

(declare-fun e!38189 () Int)

(declare-fun e!38193 () Int)

(assert (=> b!70617 (= e!38189 e!38193)))

(declare-fun c!16888 () Bool)

(declare-fun lt!15085 () Bool)

(assert (=> b!70617 (= c!16888 lt!15085)))

(declare-fun lt!15088 () Int)

(declare-fun e!38195 () Int)

(assert (=> b!70617 (= lt!15088 e!38195)))

(declare-fun c!16890 () Bool)

(assert (=> b!70617 (= c!16890 (or lt!15085 (is-Implies!69 (f!4233 formula!15))))))

(declare-fun lt!15087 () Int)

(assert (=> b!70617 (= lt!15087 e!38192)))

(declare-fun c!16887 () Bool)

(assert (=> b!70617 (= c!16887 (or lt!15085 (is-Implies!69 (f!4233 formula!15)) (is-Not!69 (f!4233 formula!15))))))

(assert (=> b!70617 (= lt!15085 (is-Or!69 (f!4233 formula!15)))))

(declare-fun b!70618 () Bool)

(declare-fun e!38191 () Int)

(declare-fun res!34564 () Int)

(assert (=> b!70618 (= e!38191 res!34564)))

(assert (=> b!70618 true))

(assert (=> b!70618 true))

(declare-fun b!70619 () Bool)

(assert (=> b!70619 (= e!38191 lt!15087)))

(declare-fun b!70620 () Bool)

(declare-fun e!38194 () Int)

(declare-fun lt!15089 () Bool)

(assert (=> b!70620 (= e!38194 (nnfMeasure!0 (ite lt!15089 (lhs!995 (f!4233 formula!15)) (ite (is-Or!69 (f!4233 formula!15)) (lhs!997 (f!4233 formula!15)) (ite (is-Implies!69 (f!4233 formula!15)) (lhs!996 (f!4233 formula!15)) (f!4233 (f!4233 formula!15)))))))))

(declare-fun lt!15090 () Bool)

(declare-fun b!70621 () Bool)

(declare-fun lt!15084 () Int)

(assert (=> b!70621 (= e!38193 (ite lt!15090 (+ (+ lt!15084 lt!15088) 3) (ite (is-Not!69 (f!4233 formula!15)) (+ lt!15084 1) 0)))))

(assert (=> b!70621 (= lt!15084 e!38191)))

(declare-fun c!16891 () Bool)

(assert (=> b!70621 (= c!16891 (or lt!15090 (is-Not!69 (f!4233 formula!15))))))

(assert (=> b!70621 (= lt!15090 (is-Implies!69 (f!4233 formula!15)))))

(declare-fun d!53680 () Bool)

(declare-fun lt!15091 () Int)

(assert (=> d!53680 (>= lt!15091 0)))

(assert (=> d!53680 (= lt!15091 e!38189)))

(declare-fun c!16892 () Bool)

(assert (=> d!53680 (= c!16892 lt!15089)))

(declare-fun lt!15086 () Int)

(declare-fun e!38190 () Int)

(assert (=> d!53680 (= lt!15086 e!38190)))

(declare-fun c!16886 () Bool)

(assert (=> d!53680 (= c!16886 (or lt!15089 (is-Or!69 (f!4233 formula!15)) (is-Implies!69 (f!4233 formula!15))))))

(declare-fun lt!15083 () Int)

(assert (=> d!53680 (= lt!15083 e!38194)))

(declare-fun c!16889 () Bool)

(assert (=> d!53680 (= c!16889 (or lt!15089 (is-Or!69 (f!4233 formula!15)) (is-Implies!69 (f!4233 formula!15)) (is-Not!69 (f!4233 formula!15))))))

(assert (=> d!53680 (= lt!15089 (is-And!69 (f!4233 formula!15)))))

(assert (=> d!53680 (= (nnfMeasure!0 (f!4233 formula!15)) lt!15091)))

(declare-fun b!70622 () Bool)

(declare-fun res!34561 () Int)

(assert (=> b!70622 (= e!38190 res!34561)))

(assert (=> b!70622 true))

(declare-fun b!70623 () Bool)

(assert (=> b!70623 (= e!38192 lt!15083)))

(declare-fun b!70624 () Bool)

(assert (=> b!70624 (= e!38189 (+ (+ lt!15083 lt!15086) 1))))

(declare-fun b!70625 () Bool)

(declare-fun res!34563 () Int)

(assert (=> b!70625 (= e!38194 res!34563)))

(assert (=> b!70625 true))

(declare-fun b!70626 () Bool)

(assert (=> b!70626 (= e!38193 (+ (+ lt!15087 lt!15088) 1))))

(declare-fun b!70627 () Bool)

(declare-fun res!34562 () Int)

(assert (=> b!70627 (= e!38195 res!34562)))

(assert (=> b!70627 true))

(declare-fun b!70628 () Bool)

(assert (=> b!70628 (= e!38195 lt!15086)))

(declare-fun b!70629 () Bool)

(assert (=> b!70629 (= e!38190 (nnfMeasure!0 (ite lt!15089 (rhs!995 (f!4233 formula!15)) (ite (is-Or!69 (f!4233 formula!15)) (rhs!997 (f!4233 formula!15)) (rhs!996 (f!4233 formula!15))))))))

(assert (= (and d!53680 c!16889) b!70620))

(assert (= (and d!53680 (not c!16889)) b!70625))

(assert (= (and d!53680 c!16886) b!70629))

(assert (= (and d!53680 (not c!16886)) b!70622))

(assert (= (and b!70617 c!16887) b!70623))

(assert (= (and b!70617 (not c!16887)) b!70616))

(assert (= (and b!70617 c!16890) b!70628))

(assert (= (and b!70617 (not c!16890)) b!70627))

(assert (= (and b!70621 c!16891) b!70619))

(assert (= (and b!70621 (not c!16891)) b!70618))

(assert (= (and b!70617 c!16888) b!70626))

(assert (= (and b!70617 (not c!16888)) b!70621))

(assert (= (and d!53680 c!16892) b!70624))

(assert (= (and d!53680 (not c!16892)) b!70617))

(declare-fun m!70643 () Bool)

(assert (=> b!70620 m!70643))

(declare-fun m!70645 () Bool)

(assert (=> b!70629 m!70645))

(assert (=> b!70586 d!53680))

(push 1)

(assert (not b!70620))

(assert (not b!70629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

