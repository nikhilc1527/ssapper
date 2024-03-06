; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9272 () Bool)

(assert start!9272)

(declare-fun res!31056 () Bool)

(declare-fun e!35676 () Bool)

(assert (=> start!9272 (=> (not res!31056) (not e!35676))))

(declare-datatypes () ((Formula!20 (And!25 (lhs!863 Formula!20) (rhs!863 Formula!20)) (Literal!19 (id!4800 Int)) (Implies!25 (lhs!864 Formula!20) (rhs!864 Formula!20)) (Or!25 (lhs!865 Formula!20) (rhs!865 Formula!20)) (Not!25 (f!4116 Formula!20)))))

(declare-fun f!3790 () Formula!20)

(declare-fun isNNF!1 (Formula!20) Bool)

(assert (=> start!9272 (= res!31056 (isNNF!1 f!3790))))

(assert (=> start!9272 e!35676))

(assert (=> start!9272 true))

(declare-fun b!65781 () Bool)

(declare-fun res!31057 () Bool)

(assert (=> b!65781 (=> (not res!31057) (not e!35676))))

(declare-fun f!3816 () Formula!20)

(assert (=> b!65781 (= res!31057 (and (not (is-And!25 f!3790)) (not (is-Literal!19 f!3790)) (not (is-Implies!25 f!3790)) (not (is-Or!25 f!3790)) (= f!3816 (f!4116 f!3790))))))

(declare-fun b!65782 () Bool)

(assert (=> b!65782 (= e!35676 (not (isNNF!1 f!3816)))))

(assert (= (and start!9272 res!31056) b!65781))

(assert (= (and b!65781 res!31057) b!65782))

(declare-fun m!69545 () Bool)

(assert (=> start!9272 m!69545))

(declare-fun m!69547 () Bool)

(assert (=> b!65782 m!69547))

(push 1)

(assert (not b!65782))

(assert (not start!9272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65797 () Bool)

(declare-fun e!35688 () Bool)

(declare-fun res!31072 () Bool)

(assert (=> b!65797 (= e!35688 res!31072)))

(assert (=> b!65797 true))

(declare-fun b!65798 () Bool)

(declare-fun e!35687 () Bool)

(assert (=> b!65798 (= e!35687 (and (not (is-Implies!25 f!3816)) (or (and (is-Not!25 f!3816) (is-Literal!19 (f!4116 f!3816))) (not (is-Not!25 f!3816)))))))

(declare-fun b!65799 () Bool)

(declare-fun e!35685 () Bool)

(declare-fun lt!12696 () Bool)

(assert (=> b!65799 (= e!35685 (isNNF!1 (ite lt!12696 (rhs!863 f!3816) (rhs!865 f!3816))))))

(declare-fun b!65800 () Bool)

(declare-fun lt!12695 () Bool)

(assert (=> b!65800 (= e!35688 (isNNF!1 (ite lt!12695 (lhs!863 f!3816) (lhs!865 f!3816))))))

(declare-fun b!65801 () Bool)

(declare-fun e!35686 () Bool)

(assert (=> b!65801 (= e!35687 e!35686)))

(declare-fun res!31071 () Bool)

(assert (=> b!65801 (=> (not res!31071) (not e!35686))))

(declare-fun lt!12697 () Bool)

(assert (=> b!65801 (= res!31071 lt!12697)))

(declare-fun b!65802 () Bool)

(declare-fun res!31070 () Bool)

(assert (=> b!65802 (= e!35685 res!31070)))

(assert (=> b!65802 true))

(assert (=> b!65802 true))

(declare-fun b!65803 () Bool)

(assert (=> b!65803 (= e!35686 e!35685)))

(declare-fun c!14792 () Bool)

(assert (=> b!65803 (= c!14792 (or lt!12696 (and (not lt!12695) (is-Or!25 f!3816) lt!12697)))))

(declare-fun d!53390 () Bool)

(declare-fun c!14791 () Bool)

(assert (=> d!53390 (= c!14791 (or lt!12695 (is-Or!25 f!3816)))))

(assert (=> d!53390 (= lt!12696 (and lt!12695 lt!12697))))

(assert (=> d!53390 (= lt!12697 e!35688)))

(declare-fun c!14790 () Bool)

(assert (=> d!53390 (= c!14790 (or lt!12695 (is-Or!25 f!3816)))))

(assert (=> d!53390 (= lt!12695 (is-And!25 f!3816))))

(assert (=> d!53390 (= (isNNF!1 f!3816) e!35687)))

(assert (= (and d!53390 c!14790) b!65800))

(assert (= (and d!53390 (not c!14790)) b!65797))

(assert (= (and b!65801 res!31071) b!65803))

(assert (= (and b!65803 c!14792) b!65799))

(assert (= (and b!65803 (not c!14792)) b!65802))

(assert (= (and d!53390 c!14791) b!65801))

(assert (= (and d!53390 (not c!14791)) b!65798))

(declare-fun m!69549 () Bool)

(assert (=> b!65799 m!69549))

(declare-fun m!69551 () Bool)

(assert (=> b!65800 m!69551))

(assert (=> b!65782 d!53390))

(declare-fun b!65804 () Bool)

(declare-fun e!35692 () Bool)

(declare-fun res!31075 () Bool)

(assert (=> b!65804 (= e!35692 res!31075)))

(assert (=> b!65804 true))

(declare-fun b!65805 () Bool)

(declare-fun e!35691 () Bool)

(assert (=> b!65805 (= e!35691 (and (not (is-Implies!25 f!3790)) (or (and (is-Not!25 f!3790) (is-Literal!19 (f!4116 f!3790))) (not (is-Not!25 f!3790)))))))

(declare-fun b!65806 () Bool)

(declare-fun e!35689 () Bool)

(declare-fun lt!12699 () Bool)

(assert (=> b!65806 (= e!35689 (isNNF!1 (ite lt!12699 (rhs!863 f!3790) (rhs!865 f!3790))))))

(declare-fun b!65807 () Bool)

(declare-fun lt!12698 () Bool)

(assert (=> b!65807 (= e!35692 (isNNF!1 (ite lt!12698 (lhs!863 f!3790) (lhs!865 f!3790))))))

(declare-fun b!65808 () Bool)

(declare-fun e!35690 () Bool)

(assert (=> b!65808 (= e!35691 e!35690)))

(declare-fun res!31074 () Bool)

(assert (=> b!65808 (=> (not res!31074) (not e!35690))))

(declare-fun lt!12700 () Bool)

(assert (=> b!65808 (= res!31074 lt!12700)))

(declare-fun b!65809 () Bool)

(declare-fun res!31073 () Bool)

(assert (=> b!65809 (= e!35689 res!31073)))

(assert (=> b!65809 true))

(assert (=> b!65809 true))

(declare-fun b!65810 () Bool)

(assert (=> b!65810 (= e!35690 e!35689)))

(declare-fun c!14795 () Bool)

(assert (=> b!65810 (= c!14795 (or lt!12699 (and (not lt!12698) (is-Or!25 f!3790) lt!12700)))))

(declare-fun d!53392 () Bool)

(declare-fun c!14794 () Bool)

(assert (=> d!53392 (= c!14794 (or lt!12698 (is-Or!25 f!3790)))))

(assert (=> d!53392 (= lt!12699 (and lt!12698 lt!12700))))

(assert (=> d!53392 (= lt!12700 e!35692)))

(declare-fun c!14793 () Bool)

(assert (=> d!53392 (= c!14793 (or lt!12698 (is-Or!25 f!3790)))))

(assert (=> d!53392 (= lt!12698 (is-And!25 f!3790))))

(assert (=> d!53392 (= (isNNF!1 f!3790) e!35691)))

(assert (= (and d!53392 c!14793) b!65807))

(assert (= (and d!53392 (not c!14793)) b!65804))

(assert (= (and b!65808 res!31074) b!65810))

(assert (= (and b!65810 c!14795) b!65806))

(assert (= (and b!65810 (not c!14795)) b!65809))

(assert (= (and d!53392 c!14794) b!65808))

(assert (= (and d!53392 (not c!14794)) b!65805))

(declare-fun m!69553 () Bool)

(assert (=> b!65806 m!69553))

(declare-fun m!69555 () Bool)

(assert (=> b!65807 m!69555))

(assert (=> start!9272 d!53392))

(push 1)

(assert (not b!65807))

(assert (not b!65800))

(assert (not b!65806))

(assert (not b!65799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

