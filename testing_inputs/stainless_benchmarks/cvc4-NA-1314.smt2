; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9252 () Bool)

(assert start!9252)

(declare-fun res!30882 () Bool)

(declare-fun e!35564 () Bool)

(assert (=> start!9252 (=> (not res!30882) (not e!35564))))

(declare-datatypes () ((Formula!16 (And!21 (lhs!851 Formula!16) (rhs!851 Formula!16)) (Literal!15 (id!4796 Int)) (Implies!21 (lhs!852 Formula!16) (rhs!852 Formula!16)) (Or!21 (lhs!853 Formula!16) (rhs!853 Formula!16)) (Not!21 (f!4106 Formula!16)))))

(declare-fun f!3790 () Formula!16)

(declare-fun isNNF!1 (Formula!16) Bool)

(assert (=> start!9252 (= res!30882 (isNNF!1 f!3790))))

(assert (=> start!9252 e!35564))

(assert (=> start!9252 true))

(declare-fun b!65561 () Bool)

(declare-fun res!30883 () Bool)

(assert (=> b!65561 (=> (not res!30883) (not e!35564))))

(declare-fun f!3802 () Formula!16)

(assert (=> b!65561 (= res!30883 (and (not (is-And!21 f!3790)) (not (is-Literal!15 f!3790)) (is-Implies!21 f!3790) (= f!3802 (rhs!852 f!3790))))))

(declare-fun b!65562 () Bool)

(assert (=> b!65562 (= e!35564 (not (isNNF!1 f!3802)))))

(assert (= (and start!9252 res!30882) b!65561))

(assert (= (and b!65561 res!30883) b!65562))

(declare-fun m!69477 () Bool)

(assert (=> start!9252 m!69477))

(declare-fun m!69479 () Bool)

(assert (=> b!65562 m!69479))

(push 1)

(assert (not b!65562))

(assert (not start!9252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65577 () Bool)

(declare-fun e!35575 () Bool)

(declare-fun e!35574 () Bool)

(assert (=> b!65577 (= e!35575 e!35574)))

(declare-fun c!14706 () Bool)

(declare-fun lt!12612 () Bool)

(declare-fun lt!12613 () Bool)

(declare-fun lt!12611 () Bool)

(assert (=> b!65577 (= c!14706 (or lt!12611 (and (not lt!12612) (is-Or!21 f!3802) lt!12613)))))

(declare-fun b!65578 () Bool)

(declare-fun e!35576 () Bool)

(assert (=> b!65578 (= e!35576 e!35575)))

(declare-fun res!30896 () Bool)

(assert (=> b!65578 (=> (not res!30896) (not e!35575))))

(assert (=> b!65578 (= res!30896 lt!12613)))

(declare-fun b!65579 () Bool)

(declare-fun e!35573 () Bool)

(assert (=> b!65579 (= e!35573 (isNNF!1 (ite lt!12612 (lhs!851 f!3802) (lhs!853 f!3802))))))

(declare-fun b!65580 () Bool)

(assert (=> b!65580 (= e!35576 (and (not (is-Implies!21 f!3802)) (or (and (is-Not!21 f!3802) (is-Literal!15 (f!4106 f!3802))) (not (is-Not!21 f!3802)))))))

(declare-fun d!53370 () Bool)

(declare-fun c!14708 () Bool)

(assert (=> d!53370 (= c!14708 (or lt!12612 (is-Or!21 f!3802)))))

(assert (=> d!53370 (= lt!12611 (and lt!12612 lt!12613))))

(assert (=> d!53370 (= lt!12613 e!35573)))

(declare-fun c!14707 () Bool)

(assert (=> d!53370 (= c!14707 (or lt!12612 (is-Or!21 f!3802)))))

(assert (=> d!53370 (= lt!12612 (is-And!21 f!3802))))

(assert (=> d!53370 (= (isNNF!1 f!3802) e!35576)))

(declare-fun b!65581 () Bool)

(assert (=> b!65581 (= e!35574 (isNNF!1 (ite lt!12611 (rhs!851 f!3802) (rhs!853 f!3802))))))

(declare-fun b!65582 () Bool)

(declare-fun res!30898 () Bool)

(assert (=> b!65582 (= e!35574 res!30898)))

(assert (=> b!65582 true))

(assert (=> b!65582 true))

(declare-fun b!65583 () Bool)

(declare-fun res!30897 () Bool)

(assert (=> b!65583 (= e!35573 res!30897)))

(assert (=> b!65583 true))

(assert (= (and d!53370 c!14707) b!65579))

(assert (= (and d!53370 (not c!14707)) b!65583))

(assert (= (and b!65578 res!30896) b!65577))

(assert (= (and b!65577 c!14706) b!65581))

(assert (= (and b!65577 (not c!14706)) b!65582))

(assert (= (and d!53370 c!14708) b!65578))

(assert (= (and d!53370 (not c!14708)) b!65580))

(declare-fun m!69481 () Bool)

(assert (=> b!65579 m!69481))

(declare-fun m!69483 () Bool)

(assert (=> b!65581 m!69483))

(assert (=> b!65562 d!53370))

(declare-fun b!65584 () Bool)

(declare-fun e!35579 () Bool)

(declare-fun e!35578 () Bool)

(assert (=> b!65584 (= e!35579 e!35578)))

(declare-fun lt!12614 () Bool)

(declare-fun lt!12616 () Bool)

(declare-fun c!14709 () Bool)

(declare-fun lt!12615 () Bool)

(assert (=> b!65584 (= c!14709 (or lt!12614 (and (not lt!12615) (is-Or!21 f!3790) lt!12616)))))

(declare-fun b!65585 () Bool)

(declare-fun e!35580 () Bool)

(assert (=> b!65585 (= e!35580 e!35579)))

(declare-fun res!30899 () Bool)

(assert (=> b!65585 (=> (not res!30899) (not e!35579))))

(assert (=> b!65585 (= res!30899 lt!12616)))

(declare-fun b!65586 () Bool)

(declare-fun e!35577 () Bool)

(assert (=> b!65586 (= e!35577 (isNNF!1 (ite lt!12615 (lhs!851 f!3790) (lhs!853 f!3790))))))

(declare-fun b!65587 () Bool)

(assert (=> b!65587 (= e!35580 (and (not (is-Implies!21 f!3790)) (or (and (is-Not!21 f!3790) (is-Literal!15 (f!4106 f!3790))) (not (is-Not!21 f!3790)))))))

(declare-fun d!53372 () Bool)

(declare-fun c!14711 () Bool)

(assert (=> d!53372 (= c!14711 (or lt!12615 (is-Or!21 f!3790)))))

(assert (=> d!53372 (= lt!12614 (and lt!12615 lt!12616))))

(assert (=> d!53372 (= lt!12616 e!35577)))

(declare-fun c!14710 () Bool)

(assert (=> d!53372 (= c!14710 (or lt!12615 (is-Or!21 f!3790)))))

(assert (=> d!53372 (= lt!12615 (is-And!21 f!3790))))

(assert (=> d!53372 (= (isNNF!1 f!3790) e!35580)))

(declare-fun b!65588 () Bool)

(assert (=> b!65588 (= e!35578 (isNNF!1 (ite lt!12614 (rhs!851 f!3790) (rhs!853 f!3790))))))

(declare-fun b!65589 () Bool)

(declare-fun res!30901 () Bool)

(assert (=> b!65589 (= e!35578 res!30901)))

(assert (=> b!65589 true))

(assert (=> b!65589 true))

(declare-fun b!65590 () Bool)

(declare-fun res!30900 () Bool)

(assert (=> b!65590 (= e!35577 res!30900)))

(assert (=> b!65590 true))

(assert (= (and d!53372 c!14710) b!65586))

(assert (= (and d!53372 (not c!14710)) b!65590))

(assert (= (and b!65585 res!30899) b!65584))

(assert (= (and b!65584 c!14709) b!65588))

(assert (= (and b!65584 (not c!14709)) b!65589))

(assert (= (and d!53372 c!14711) b!65585))

(assert (= (and d!53372 (not c!14711)) b!65587))

(declare-fun m!69485 () Bool)

(assert (=> b!65586 m!69485))

(declare-fun m!69487 () Bool)

(assert (=> b!65588 m!69487))

(assert (=> start!9252 d!53372))

(push 1)

(assert (not b!65586))

(assert (not b!65588))

(assert (not b!65579))

(assert (not b!65581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

