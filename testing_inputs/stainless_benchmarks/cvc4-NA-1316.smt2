; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9262 () Bool)

(assert start!9262)

(declare-fun res!30969 () Bool)

(declare-fun e!35620 () Bool)

(assert (=> start!9262 (=> (not res!30969) (not e!35620))))

(declare-datatypes () ((Formula!18 (And!23 (lhs!857 Formula!18) (rhs!857 Formula!18)) (Literal!17 (id!4798 Int)) (Implies!23 (lhs!858 Formula!18) (rhs!858 Formula!18)) (Or!23 (lhs!859 Formula!18) (rhs!859 Formula!18)) (Not!23 (f!4111 Formula!18)))))

(declare-fun f!3790 () Formula!18)

(declare-fun isNNF!1 (Formula!18) Bool)

(assert (=> start!9262 (= res!30969 (isNNF!1 f!3790))))

(assert (=> start!9262 e!35620))

(assert (=> start!9262 true))

(declare-fun b!65671 () Bool)

(declare-fun res!30970 () Bool)

(assert (=> b!65671 (=> (not res!30970) (not e!35620))))

(declare-fun f!3809 () Formula!18)

(assert (=> b!65671 (= res!30970 (and (not (is-And!23 f!3790)) (not (is-Literal!17 f!3790)) (not (is-Implies!23 f!3790)) (is-Or!23 f!3790) (= f!3809 (rhs!859 f!3790))))))

(declare-fun b!65672 () Bool)

(assert (=> b!65672 (= e!35620 (not (isNNF!1 f!3809)))))

(assert (= (and start!9262 res!30969) b!65671))

(assert (= (and b!65671 res!30970) b!65672))

(declare-fun m!69511 () Bool)

(assert (=> start!9262 m!69511))

(declare-fun m!69513 () Bool)

(assert (=> b!65672 m!69513))

(push 1)

(assert (not b!65672))

(assert (not start!9262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65687 () Bool)

(declare-fun e!35629 () Bool)

(assert (=> b!65687 (= e!35629 (and (not (is-Implies!23 f!3809)) (or (and (is-Not!23 f!3809) (is-Literal!17 (f!4111 f!3809))) (not (is-Not!23 f!3809)))))))

(declare-fun b!65688 () Bool)

(declare-fun e!35631 () Bool)

(declare-fun res!30983 () Bool)

(assert (=> b!65688 (= e!35631 res!30983)))

(assert (=> b!65688 true))

(assert (=> b!65688 true))

(declare-fun b!65689 () Bool)

(declare-fun e!35630 () Bool)

(assert (=> b!65689 (= e!35630 e!35631)))

(declare-fun lt!12653 () Bool)

(declare-fun lt!12655 () Bool)

(declare-fun lt!12654 () Bool)

(declare-fun c!14750 () Bool)

(assert (=> b!65689 (= c!14750 (or lt!12654 (and (not lt!12653) (is-Or!23 f!3809) lt!12655)))))

(declare-fun b!65690 () Bool)

(declare-fun e!35632 () Bool)

(declare-fun res!30984 () Bool)

(assert (=> b!65690 (= e!35632 res!30984)))

(assert (=> b!65690 true))

(declare-fun b!65691 () Bool)

(assert (=> b!65691 (= e!35629 e!35630)))

(declare-fun res!30985 () Bool)

(assert (=> b!65691 (=> (not res!30985) (not e!35630))))

(assert (=> b!65691 (= res!30985 lt!12655)))

(declare-fun b!65692 () Bool)

(assert (=> b!65692 (= e!35632 (isNNF!1 (ite lt!12653 (lhs!857 f!3809) (lhs!859 f!3809))))))

(declare-fun b!65693 () Bool)

(assert (=> b!65693 (= e!35631 (isNNF!1 (ite lt!12654 (rhs!857 f!3809) (rhs!859 f!3809))))))

(declare-fun d!53380 () Bool)

(declare-fun c!14748 () Bool)

(assert (=> d!53380 (= c!14748 (or lt!12653 (is-Or!23 f!3809)))))

(assert (=> d!53380 (= lt!12654 (and lt!12653 lt!12655))))

(assert (=> d!53380 (= lt!12655 e!35632)))

(declare-fun c!14749 () Bool)

(assert (=> d!53380 (= c!14749 (or lt!12653 (is-Or!23 f!3809)))))

(assert (=> d!53380 (= lt!12653 (is-And!23 f!3809))))

(assert (=> d!53380 (= (isNNF!1 f!3809) e!35629)))

(assert (= (and d!53380 c!14749) b!65692))

(assert (= (and d!53380 (not c!14749)) b!65690))

(assert (= (and b!65691 res!30985) b!65689))

(assert (= (and b!65689 c!14750) b!65693))

(assert (= (and b!65689 (not c!14750)) b!65688))

(assert (= (and d!53380 c!14748) b!65691))

(assert (= (and d!53380 (not c!14748)) b!65687))

(declare-fun m!69515 () Bool)

(assert (=> b!65692 m!69515))

(declare-fun m!69517 () Bool)

(assert (=> b!65693 m!69517))

(assert (=> b!65672 d!53380))

(declare-fun b!65694 () Bool)

(declare-fun e!35633 () Bool)

(assert (=> b!65694 (= e!35633 (and (not (is-Implies!23 f!3790)) (or (and (is-Not!23 f!3790) (is-Literal!17 (f!4111 f!3790))) (not (is-Not!23 f!3790)))))))

(declare-fun b!65695 () Bool)

(declare-fun e!35635 () Bool)

(declare-fun res!30986 () Bool)

(assert (=> b!65695 (= e!35635 res!30986)))

(assert (=> b!65695 true))

(assert (=> b!65695 true))

(declare-fun b!65696 () Bool)

(declare-fun e!35634 () Bool)

(assert (=> b!65696 (= e!35634 e!35635)))

(declare-fun lt!12658 () Bool)

(declare-fun lt!12657 () Bool)

(declare-fun lt!12656 () Bool)

(declare-fun c!14753 () Bool)

(assert (=> b!65696 (= c!14753 (or lt!12657 (and (not lt!12656) (is-Or!23 f!3790) lt!12658)))))

(declare-fun b!65697 () Bool)

(declare-fun e!35636 () Bool)

(declare-fun res!30987 () Bool)

(assert (=> b!65697 (= e!35636 res!30987)))

(assert (=> b!65697 true))

(declare-fun b!65698 () Bool)

(assert (=> b!65698 (= e!35633 e!35634)))

(declare-fun res!30988 () Bool)

(assert (=> b!65698 (=> (not res!30988) (not e!35634))))

(assert (=> b!65698 (= res!30988 lt!12658)))

(declare-fun b!65699 () Bool)

(assert (=> b!65699 (= e!35636 (isNNF!1 (ite lt!12656 (lhs!857 f!3790) (lhs!859 f!3790))))))

(declare-fun b!65700 () Bool)

(assert (=> b!65700 (= e!35635 (isNNF!1 (ite lt!12657 (rhs!857 f!3790) (rhs!859 f!3790))))))

(declare-fun d!53382 () Bool)

(declare-fun c!14751 () Bool)

(assert (=> d!53382 (= c!14751 (or lt!12656 (is-Or!23 f!3790)))))

(assert (=> d!53382 (= lt!12657 (and lt!12656 lt!12658))))

(assert (=> d!53382 (= lt!12658 e!35636)))

(declare-fun c!14752 () Bool)

(assert (=> d!53382 (= c!14752 (or lt!12656 (is-Or!23 f!3790)))))

(assert (=> d!53382 (= lt!12656 (is-And!23 f!3790))))

(assert (=> d!53382 (= (isNNF!1 f!3790) e!35633)))

(assert (= (and d!53382 c!14752) b!65699))

(assert (= (and d!53382 (not c!14752)) b!65697))

(assert (= (and b!65698 res!30988) b!65696))

(assert (= (and b!65696 c!14753) b!65700))

(assert (= (and b!65696 (not c!14753)) b!65695))

(assert (= (and d!53382 c!14751) b!65698))

(assert (= (and d!53382 (not c!14751)) b!65694))

(declare-fun m!69519 () Bool)

(assert (=> b!65699 m!69519))

(declare-fun m!69521 () Bool)

(assert (=> b!65700 m!69521))

(assert (=> start!9262 d!53382))

(push 1)

(assert (not b!65699))

(assert (not b!65692))

(assert (not b!65700))

(assert (not b!65693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

