; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9494 () Bool)

(assert start!9494)

(declare-fun res!34017 () Bool)

(declare-fun e!37766 () Bool)

(assert (=> start!9494 (=> (not res!34017) (not e!37766))))

(declare-datatypes () ((Formula!54 (And!59 (lhs!965 Formula!54) (rhs!965 Formula!54)) (Literal!53 (id!4834 Int)) (Implies!59 (lhs!966 Formula!54) (rhs!966 Formula!54)) (Or!59 (lhs!967 Formula!54) (rhs!967 Formula!54)) (Not!59 (f!4217 Formula!54)))))

(declare-fun formula!50 () Formula!54)

(assert (=> start!9494 (= res!34017 (and (not (is-And!59 formula!50)) (not (is-Or!59 formula!50)) (not (is-Implies!59 formula!50)) (is-Not!59 formula!50) (is-And!59 (f!4217 formula!50))))))

(assert (=> start!9494 e!37766))

(assert (=> start!9494 true))

(declare-fun b!69794 () Bool)

(declare-fun res!34018 () Bool)

(assert (=> b!69794 (=> (not res!34018) (not e!37766))))

(declare-fun x$2!366 () Formula!54)

(declare-fun nnf!1 (Formula!54) Formula!54)

(assert (=> b!69794 (= res!34018 (= x$2!366 (Or!59 (nnf!1 (Not!59 (lhs!965 (f!4217 formula!50)))) (nnf!1 (Not!59 (rhs!965 (f!4217 formula!50)))))))))

(declare-fun b!69795 () Bool)

(declare-fun isNNF!1 (Formula!54) Bool)

(assert (=> b!69795 (= e!37766 (not (isNNF!1 x$2!366)))))

(assert (= (and start!9494 res!34017) b!69794))

(assert (= (and b!69794 res!34018) b!69795))

(declare-fun m!70513 () Bool)

(assert (=> b!69794 m!70513))

(declare-fun m!70515 () Bool)

(assert (=> b!69794 m!70515))

(declare-fun m!70517 () Bool)

(assert (=> b!69795 m!70517))

(push 1)

(assert (not b!69794))

(assert (not b!69795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!37807 () Formula!54)

(declare-fun lt!14693 () Formula!54)

(declare-fun lt!14691 () Bool)

(declare-fun lt!14698 () Formula!54)

(declare-fun b!69856 () Bool)

(assert (=> b!69856 (= e!37807 (ite lt!14691 (And!59 lt!14698 lt!14693) (ite (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) lt!14698 (Not!59 (lhs!965 (f!4217 formula!50))))))))

(declare-fun e!37803 () Formula!54)

(assert (=> b!69856 (= lt!14698 e!37803)))

(declare-fun c!16543 () Bool)

(assert (=> b!69856 (= c!16543 (or lt!14691 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69856 (= lt!14691 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))))))

(declare-fun b!69857 () Bool)

(declare-fun e!37810 () Formula!54)

(declare-fun lt!14684 () Formula!54)

(declare-fun lt!14695 () Formula!54)

(assert (=> b!69857 (= e!37810 (Or!59 lt!14684 lt!14695))))

(declare-fun b!69858 () Bool)

(declare-fun e!37799 () Formula!54)

(declare-fun res!34071 () Formula!54)

(assert (=> b!69858 (= e!37799 res!34071)))

(assert (=> b!69858 true))

(declare-fun b!69859 () Bool)

(declare-fun e!37805 () Formula!54)

(declare-fun lt!14694 () Formula!54)

(assert (=> b!69859 (= e!37805 lt!14694)))

(declare-fun b!69860 () Bool)

(declare-fun e!37798 () Formula!54)

(declare-fun lt!14687 () Formula!54)

(assert (=> b!69860 (= e!37798 (And!59 lt!14694 lt!14687))))

(declare-fun b!69861 () Bool)

(declare-fun e!37800 () Formula!54)

(declare-fun res!34078 () Formula!54)

(assert (=> b!69861 (= e!37800 res!34078)))

(assert (=> b!69861 true))

(declare-fun b!69862 () Bool)

(declare-fun lt!14683 () Formula!54)

(assert (=> b!69862 (= e!37799 lt!14683)))

(declare-fun b!69863 () Bool)

(declare-fun e!37808 () Formula!54)

(assert (=> b!69863 (= e!37808 lt!14684)))

(declare-fun b!69864 () Bool)

(declare-fun e!37809 () Formula!54)

(declare-fun res!34074 () Formula!54)

(assert (=> b!69864 (= e!37809 res!34074)))

(assert (=> b!69864 true))

(declare-fun b!69865 () Bool)

(declare-fun e!37804 () Formula!54)

(declare-fun lt!14690 () Formula!54)

(assert (=> b!69865 (= e!37804 lt!14690)))

(declare-fun b!69866 () Bool)

(declare-fun e!37801 () Formula!54)

(assert (=> b!69866 (= e!37798 e!37801)))

(declare-fun c!16553 () Bool)

(declare-fun lt!14688 () Bool)

(assert (=> b!69866 (= c!16553 lt!14688)))

(declare-fun e!37802 () Formula!54)

(assert (=> b!69866 (= lt!14683 e!37802)))

(declare-fun c!16539 () Bool)

(assert (=> b!69866 (= c!16539 (or lt!14688 (and (not (is-Implies!59 (Not!59 (lhs!965 (f!4217 formula!50))))) (or (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))))

(declare-fun lt!14692 () Formula!54)

(assert (=> b!69866 (= lt!14692 e!37805)))

(declare-fun c!16551 () Bool)

(assert (=> b!69866 (= c!16551 (or lt!14688 (is-Implies!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69866 (= lt!14688 (is-Or!59 (Not!59 (lhs!965 (f!4217 formula!50)))))))

(declare-fun b!69867 () Bool)

(declare-fun lt!14697 () Bool)

(assert (=> b!69867 (= e!37809 (nnf!1 (ite lt!14697 (lhs!965 (Not!59 (lhs!965 (f!4217 formula!50)))) (ite (is-Or!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (lhs!967 (Not!59 (lhs!965 (f!4217 formula!50)))) (ite (is-Implies!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (Or!59 (Not!59 (lhs!966 (Not!59 (lhs!965 (f!4217 formula!50))))) (rhs!966 (Not!59 (lhs!965 (f!4217 formula!50))))) (ite (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (Not!59 (lhs!965 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (ite (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (Not!59 (lhs!967 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (ite (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (lhs!966 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))) (f!4217 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))))))))))))

(declare-fun b!69868 () Bool)

(declare-fun res!34077 () Formula!54)

(assert (=> b!69868 (= e!37808 res!34077)))

(assert (=> b!69868 true))

(declare-fun b!69869 () Bool)

(assert (=> b!69869 (= e!37810 e!37807)))

(declare-fun c!16540 () Bool)

(declare-fun lt!14682 () Bool)

(assert (=> b!69869 (= c!16540 lt!14682)))

(declare-fun e!37797 () Formula!54)

(assert (=> b!69869 (= lt!14693 e!37797)))

(declare-fun c!16546 () Bool)

(assert (=> b!69869 (= c!16546 (or lt!14682 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(declare-fun lt!14696 () Formula!54)

(assert (=> b!69869 (= lt!14696 e!37808)))

(declare-fun c!16549 () Bool)

(assert (=> b!69869 (= c!16549 (or lt!14682 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69869 (= lt!14682 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))))))

(declare-fun d!53642 () Bool)

(declare-fun lt!14685 () Formula!54)

(assert (=> d!53642 (isNNF!1 lt!14685)))

(assert (=> d!53642 (= lt!14685 e!37798)))

(declare-fun c!16552 () Bool)

(assert (=> d!53642 (= c!16552 lt!14697)))

(assert (=> d!53642 (= lt!14687 e!37800)))

(declare-fun c!16545 () Bool)

(assert (=> d!53642 (= c!16545 (or lt!14697 (is-Or!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (and (not (is-Implies!59 (Not!59 (lhs!965 (f!4217 formula!50))))) (or (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))))

(assert (=> d!53642 (= lt!14694 e!37809)))

(declare-fun c!16542 () Bool)

(assert (=> d!53642 (= c!16542 (or lt!14697 (is-Or!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> d!53642 (= lt!14697 (is-And!59 (Not!59 (lhs!965 (f!4217 formula!50)))))))

(assert (=> d!53642 (= (nnf!1 (Not!59 (lhs!965 (f!4217 formula!50)))) lt!14685)))

(declare-fun b!69870 () Bool)

(declare-fun e!37806 () Formula!54)

(assert (=> b!69870 (= e!37806 lt!14692)))

(declare-fun b!69871 () Bool)

(declare-fun res!34075 () Formula!54)

(assert (=> b!69871 (= e!37805 res!34075)))

(assert (=> b!69871 true))

(declare-fun b!69872 () Bool)

(assert (=> b!69872 (= e!37801 (Or!59 lt!14692 lt!14683))))

(declare-fun b!69873 () Bool)

(declare-fun res!34072 () Formula!54)

(assert (=> b!69873 (= e!37797 res!34072)))

(assert (=> b!69873 true))

(declare-fun b!69874 () Bool)

(assert (=> b!69874 (= e!37800 (nnf!1 (ite lt!14697 (rhs!965 (Not!59 (lhs!965 (f!4217 formula!50)))) (ite (is-Or!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (rhs!967 (Not!59 (lhs!965 (f!4217 formula!50)))) (ite (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (Not!59 (rhs!965 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (ite (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (Not!59 (rhs!967 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (Not!59 (rhs!966 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))))))

(declare-fun b!69875 () Bool)

(declare-fun e!37811 () Formula!54)

(declare-fun res!34069 () Formula!54)

(assert (=> b!69875 (= e!37811 res!34069)))

(assert (=> b!69875 true))

(declare-fun b!69876 () Bool)

(declare-fun res!34073 () Formula!54)

(assert (=> b!69876 (= e!37806 res!34073)))

(assert (=> b!69876 true))

(declare-fun b!69877 () Bool)

(assert (=> b!69877 (= e!37807 (And!59 lt!14696 lt!14693))))

(declare-fun b!69878 () Bool)

(assert (=> b!69878 (= e!37801 e!37804)))

(declare-fun c!16550 () Bool)

(declare-fun lt!14686 () Bool)

(assert (=> b!69878 (= c!16550 lt!14686)))

(assert (=> b!69878 (= lt!14690 e!37806)))

(declare-fun c!16541 () Bool)

(assert (=> b!69878 (= c!16541 (or lt!14686 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69878 (= lt!14686 (is-Implies!59 (Not!59 (lhs!965 (f!4217 formula!50)))))))

(declare-fun b!69879 () Bool)

(assert (=> b!69879 (= e!37797 lt!14695)))

(declare-fun b!69880 () Bool)

(declare-fun res!34076 () Formula!54)

(assert (=> b!69880 (= e!37803 res!34076)))

(assert (=> b!69880 true))

(assert (=> b!69880 true))

(declare-fun b!69881 () Bool)

(assert (=> b!69881 (= e!37811 lt!14690)))

(declare-fun b!69882 () Bool)

(assert (=> b!69882 (= e!37803 lt!14696)))

(declare-fun b!69883 () Bool)

(assert (=> b!69883 (= e!37804 e!37810)))

(declare-fun c!16544 () Bool)

(declare-fun lt!14689 () Bool)

(assert (=> b!69883 (= c!16544 lt!14689)))

(assert (=> b!69883 (= lt!14695 e!37799)))

(declare-fun c!16548 () Bool)

(assert (=> b!69883 (= c!16548 (or lt!14689 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69883 (= lt!14684 e!37811)))

(declare-fun c!16547 () Bool)

(assert (=> b!69883 (= c!16547 (or lt!14689 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69883 (= lt!14689 (and (is-Not!59 (Not!59 (lhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (lhs!965 (f!4217 formula!50)))))))))

(declare-fun b!69884 () Bool)

(declare-fun res!34070 () Formula!54)

(assert (=> b!69884 (= e!37802 res!34070)))

(assert (=> b!69884 true))

(declare-fun b!69885 () Bool)

(assert (=> b!69885 (= e!37802 lt!14687)))

(assert (= (and d!53642 c!16542) b!69867))

(assert (= (and d!53642 (not c!16542)) b!69864))

(assert (= (and d!53642 c!16545) b!69874))

(assert (= (and d!53642 (not c!16545)) b!69861))

(assert (= (and b!69866 c!16551) b!69859))

(assert (= (and b!69866 (not c!16551)) b!69871))

(assert (= (and b!69866 c!16539) b!69885))

(assert (= (and b!69866 (not c!16539)) b!69884))

(assert (= (and b!69878 c!16541) b!69870))

(assert (= (and b!69878 (not c!16541)) b!69876))

(assert (= (and b!69883 c!16547) b!69881))

(assert (= (and b!69883 (not c!16547)) b!69875))

(assert (= (and b!69883 c!16548) b!69862))

(assert (= (and b!69883 (not c!16548)) b!69858))

(assert (= (and b!69869 c!16549) b!69863))

(assert (= (and b!69869 (not c!16549)) b!69868))

(assert (= (and b!69869 c!16546) b!69879))

(assert (= (and b!69869 (not c!16546)) b!69873))

(assert (= (and b!69856 c!16543) b!69882))

(assert (= (and b!69856 (not c!16543)) b!69880))

(assert (= (and b!69869 c!16540) b!69877))

(assert (= (and b!69869 (not c!16540)) b!69856))

(assert (= (and b!69883 c!16544) b!69857))

(assert (= (and b!69883 (not c!16544)) b!69869))

(assert (= (and b!69878 c!16550) b!69865))

(assert (= (and b!69878 (not c!16550)) b!69883))

(assert (= (and b!69866 c!16553) b!69872))

(assert (= (and b!69866 (not c!16553)) b!69878))

(assert (= (and d!53642 c!16552) b!69860))

(assert (= (and d!53642 (not c!16552)) b!69866))

(declare-fun m!70519 () Bool)

(assert (=> b!69867 m!70519))

(declare-fun m!70521 () Bool)

(assert (=> d!53642 m!70521))

(declare-fun m!70523 () Bool)

(assert (=> b!69874 m!70523))

(assert (=> b!69794 d!53642))

(declare-fun b!69886 () Bool)

(declare-fun e!37822 () Formula!54)

(declare-fun lt!14708 () Bool)

(declare-fun lt!14715 () Formula!54)

(declare-fun lt!14710 () Formula!54)

(assert (=> b!69886 (= e!37822 (ite lt!14708 (And!59 lt!14715 lt!14710) (ite (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) lt!14715 (Not!59 (rhs!965 (f!4217 formula!50))))))))

(declare-fun e!37818 () Formula!54)

(assert (=> b!69886 (= lt!14715 e!37818)))

(declare-fun c!16558 () Bool)

(assert (=> b!69886 (= c!16558 (or lt!14708 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69886 (= lt!14708 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))))))

(declare-fun b!69887 () Bool)

(declare-fun e!37825 () Formula!54)

(declare-fun lt!14701 () Formula!54)

(declare-fun lt!14712 () Formula!54)

(assert (=> b!69887 (= e!37825 (Or!59 lt!14701 lt!14712))))

(declare-fun b!69888 () Bool)

(declare-fun e!37814 () Formula!54)

(declare-fun res!34081 () Formula!54)

(assert (=> b!69888 (= e!37814 res!34081)))

(assert (=> b!69888 true))

(declare-fun b!69889 () Bool)

(declare-fun e!37820 () Formula!54)

(declare-fun lt!14711 () Formula!54)

(assert (=> b!69889 (= e!37820 lt!14711)))

(declare-fun b!69890 () Bool)

(declare-fun e!37813 () Formula!54)

(declare-fun lt!14704 () Formula!54)

(assert (=> b!69890 (= e!37813 (And!59 lt!14711 lt!14704))))

(declare-fun b!69891 () Bool)

(declare-fun e!37815 () Formula!54)

(declare-fun res!34088 () Formula!54)

(assert (=> b!69891 (= e!37815 res!34088)))

(assert (=> b!69891 true))

(declare-fun b!69892 () Bool)

(declare-fun lt!14700 () Formula!54)

(assert (=> b!69892 (= e!37814 lt!14700)))

(declare-fun b!69893 () Bool)

(declare-fun e!37823 () Formula!54)

(assert (=> b!69893 (= e!37823 lt!14701)))

(declare-fun b!69894 () Bool)

(declare-fun e!37824 () Formula!54)

(declare-fun res!34084 () Formula!54)

(assert (=> b!69894 (= e!37824 res!34084)))

(assert (=> b!69894 true))

(declare-fun b!69895 () Bool)

(declare-fun e!37819 () Formula!54)

(declare-fun lt!14707 () Formula!54)

(assert (=> b!69895 (= e!37819 lt!14707)))

(declare-fun b!69896 () Bool)

(declare-fun e!37816 () Formula!54)

(assert (=> b!69896 (= e!37813 e!37816)))

(declare-fun c!16568 () Bool)

(declare-fun lt!14705 () Bool)

(assert (=> b!69896 (= c!16568 lt!14705)))

(declare-fun e!37817 () Formula!54)

(assert (=> b!69896 (= lt!14700 e!37817)))

(declare-fun c!16554 () Bool)

(assert (=> b!69896 (= c!16554 (or lt!14705 (and (not (is-Implies!59 (Not!59 (rhs!965 (f!4217 formula!50))))) (or (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))))

(declare-fun lt!14709 () Formula!54)

(assert (=> b!69896 (= lt!14709 e!37820)))

(declare-fun c!16566 () Bool)

(assert (=> b!69896 (= c!16566 (or lt!14705 (is-Implies!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69896 (= lt!14705 (is-Or!59 (Not!59 (rhs!965 (f!4217 formula!50)))))))

(declare-fun b!69897 () Bool)

(declare-fun lt!14714 () Bool)

(assert (=> b!69897 (= e!37824 (nnf!1 (ite lt!14714 (lhs!965 (Not!59 (rhs!965 (f!4217 formula!50)))) (ite (is-Or!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (lhs!967 (Not!59 (rhs!965 (f!4217 formula!50)))) (ite (is-Implies!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (Or!59 (Not!59 (lhs!966 (Not!59 (rhs!965 (f!4217 formula!50))))) (rhs!966 (Not!59 (rhs!965 (f!4217 formula!50))))) (ite (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (Not!59 (lhs!965 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (ite (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (Not!59 (lhs!967 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (ite (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (lhs!966 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))) (f!4217 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))))))))))))

(declare-fun b!69898 () Bool)

(declare-fun res!34087 () Formula!54)

(assert (=> b!69898 (= e!37823 res!34087)))

(assert (=> b!69898 true))

(declare-fun b!69899 () Bool)

(assert (=> b!69899 (= e!37825 e!37822)))

(declare-fun c!16555 () Bool)

(declare-fun lt!14699 () Bool)

(assert (=> b!69899 (= c!16555 lt!14699)))

(declare-fun e!37812 () Formula!54)

(assert (=> b!69899 (= lt!14710 e!37812)))

(declare-fun c!16561 () Bool)

(assert (=> b!69899 (= c!16561 (or lt!14699 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(declare-fun lt!14713 () Formula!54)

(assert (=> b!69899 (= lt!14713 e!37823)))

(declare-fun c!16564 () Bool)

(assert (=> b!69899 (= c!16564 (or lt!14699 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69899 (= lt!14699 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))))))

(declare-fun d!53644 () Bool)

(declare-fun lt!14702 () Formula!54)

(assert (=> d!53644 (isNNF!1 lt!14702)))

(assert (=> d!53644 (= lt!14702 e!37813)))

(declare-fun c!16567 () Bool)

(assert (=> d!53644 (= c!16567 lt!14714)))

(assert (=> d!53644 (= lt!14704 e!37815)))

(declare-fun c!16560 () Bool)

(assert (=> d!53644 (= c!16560 (or lt!14714 (is-Or!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (and (not (is-Implies!59 (Not!59 (rhs!965 (f!4217 formula!50))))) (or (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))))

(assert (=> d!53644 (= lt!14711 e!37824)))

(declare-fun c!16557 () Bool)

(assert (=> d!53644 (= c!16557 (or lt!14714 (is-Or!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> d!53644 (= lt!14714 (is-And!59 (Not!59 (rhs!965 (f!4217 formula!50)))))))

(assert (=> d!53644 (= (nnf!1 (Not!59 (rhs!965 (f!4217 formula!50)))) lt!14702)))

(declare-fun b!69900 () Bool)

(declare-fun e!37821 () Formula!54)

(assert (=> b!69900 (= e!37821 lt!14709)))

(declare-fun b!69901 () Bool)

(declare-fun res!34085 () Formula!54)

(assert (=> b!69901 (= e!37820 res!34085)))

(assert (=> b!69901 true))

(declare-fun b!69902 () Bool)

(assert (=> b!69902 (= e!37816 (Or!59 lt!14709 lt!14700))))

(declare-fun b!69903 () Bool)

(declare-fun res!34082 () Formula!54)

(assert (=> b!69903 (= e!37812 res!34082)))

(assert (=> b!69903 true))

(declare-fun b!69904 () Bool)

(assert (=> b!69904 (= e!37815 (nnf!1 (ite lt!14714 (rhs!965 (Not!59 (rhs!965 (f!4217 formula!50)))) (ite (is-Or!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (rhs!967 (Not!59 (rhs!965 (f!4217 formula!50)))) (ite (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (Not!59 (rhs!965 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (ite (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (Not!59 (rhs!967 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (Not!59 (rhs!966 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))))))

(declare-fun b!69905 () Bool)

(declare-fun e!37826 () Formula!54)

(declare-fun res!34079 () Formula!54)

(assert (=> b!69905 (= e!37826 res!34079)))

(assert (=> b!69905 true))

(declare-fun b!69906 () Bool)

(declare-fun res!34083 () Formula!54)

(assert (=> b!69906 (= e!37821 res!34083)))

(assert (=> b!69906 true))

(declare-fun b!69907 () Bool)

(assert (=> b!69907 (= e!37822 (And!59 lt!14713 lt!14710))))

(declare-fun b!69908 () Bool)

(assert (=> b!69908 (= e!37816 e!37819)))

(declare-fun c!16565 () Bool)

(declare-fun lt!14703 () Bool)

(assert (=> b!69908 (= c!16565 lt!14703)))

(assert (=> b!69908 (= lt!14707 e!37821)))

(declare-fun c!16556 () Bool)

(assert (=> b!69908 (= c!16556 (or lt!14703 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69908 (= lt!14703 (is-Implies!59 (Not!59 (rhs!965 (f!4217 formula!50)))))))

(declare-fun b!69909 () Bool)

(assert (=> b!69909 (= e!37812 lt!14712)))

(declare-fun b!69910 () Bool)

(declare-fun res!34086 () Formula!54)

(assert (=> b!69910 (= e!37818 res!34086)))

(assert (=> b!69910 true))

(assert (=> b!69910 true))

(declare-fun b!69911 () Bool)

(assert (=> b!69911 (= e!37826 lt!14707)))

(declare-fun b!69912 () Bool)

(assert (=> b!69912 (= e!37818 lt!14713)))

(declare-fun b!69913 () Bool)

(assert (=> b!69913 (= e!37819 e!37825)))

(declare-fun c!16559 () Bool)

(declare-fun lt!14706 () Bool)

(assert (=> b!69913 (= c!16559 lt!14706)))

(assert (=> b!69913 (= lt!14712 e!37814)))

(declare-fun c!16563 () Bool)

(assert (=> b!69913 (= c!16563 (or lt!14706 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69913 (= lt!14701 e!37826)))

(declare-fun c!16562 () Bool)

(assert (=> b!69913 (= c!16562 (or lt!14706 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Or!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Implies!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))) (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-Not!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50))))))))))

(assert (=> b!69913 (= lt!14706 (and (is-Not!59 (Not!59 (rhs!965 (f!4217 formula!50)))) (is-And!59 (f!4217 (Not!59 (rhs!965 (f!4217 formula!50)))))))))

(declare-fun b!69914 () Bool)

(declare-fun res!34080 () Formula!54)

(assert (=> b!69914 (= e!37817 res!34080)))

(assert (=> b!69914 true))

(declare-fun b!69915 () Bool)

(assert (=> b!69915 (= e!37817 lt!14704)))

(assert (= (and d!53644 c!16557) b!69897))

(assert (= (and d!53644 (not c!16557)) b!69894))

(assert (= (and d!53644 c!16560) b!69904))

(assert (= (and d!53644 (not c!16560)) b!69891))

(assert (= (and b!69896 c!16566) b!69889))

(assert (= (and b!69896 (not c!16566)) b!69901))

(assert (= (and b!69896 c!16554) b!69915))

(assert (= (and b!69896 (not c!16554)) b!69914))

(assert (= (and b!69908 c!16556) b!69900))

(assert (= (and b!69908 (not c!16556)) b!69906))

(assert (= (and b!69913 c!16562) b!69911))

(assert (= (and b!69913 (not c!16562)) b!69905))

(assert (= (and b!69913 c!16563) b!69892))

(assert (= (and b!69913 (not c!16563)) b!69888))

(assert (= (and b!69899 c!16564) b!69893))

(assert (= (and b!69899 (not c!16564)) b!69898))

(assert (= (and b!69899 c!16561) b!69909))

(assert (= (and b!69899 (not c!16561)) b!69903))

(assert (= (and b!69886 c!16558) b!69912))

(assert (= (and b!69886 (not c!16558)) b!69910))

(assert (= (and b!69899 c!16555) b!69907))

(assert (= (and b!69899 (not c!16555)) b!69886))

(assert (= (and b!69913 c!16559) b!69887))

(assert (= (and b!69913 (not c!16559)) b!69899))

(assert (= (and b!69908 c!16565) b!69895))

(assert (= (and b!69908 (not c!16565)) b!69913))

(assert (= (and b!69896 c!16568) b!69902))

(assert (= (and b!69896 (not c!16568)) b!69908))

(assert (= (and d!53644 c!16567) b!69890))

(assert (= (and d!53644 (not c!16567)) b!69896))

(declare-fun m!70525 () Bool)

(assert (=> b!69897 m!70525))

(declare-fun m!70527 () Bool)

(assert (=> d!53644 m!70527))

(declare-fun m!70529 () Bool)

(assert (=> b!69904 m!70529))

(assert (=> b!69794 d!53644))

(declare-fun b!69930 () Bool)

(declare-fun e!37838 () Bool)

(declare-fun e!37837 () Bool)

(assert (=> b!69930 (= e!37838 e!37837)))

(declare-fun lt!14722 () Bool)

(declare-fun c!16575 () Bool)

(declare-fun lt!14723 () Bool)

(declare-fun lt!14724 () Bool)

(assert (=> b!69930 (= c!16575 (or lt!14722 (and (not lt!14724) (is-Or!59 x$2!366) lt!14723)))))

(declare-fun b!69931 () Bool)

(declare-fun e!37836 () Bool)

(declare-fun res!34101 () Bool)

(assert (=> b!69931 (= e!37836 res!34101)))

(assert (=> b!69931 true))

(declare-fun b!69932 () Bool)

(declare-fun e!37835 () Bool)

(assert (=> b!69932 (= e!37835 e!37838)))

(declare-fun res!34103 () Bool)

(assert (=> b!69932 (=> (not res!34103) (not e!37838))))

(assert (=> b!69932 (= res!34103 lt!14723)))

(declare-fun b!69933 () Bool)

(assert (=> b!69933 (= e!37837 (isNNF!1 (ite lt!14722 (rhs!965 x$2!366) (rhs!967 x$2!366))))))

(declare-fun b!69934 () Bool)

(assert (=> b!69934 (= e!37835 (and (not (is-Implies!59 x$2!366)) (or (and (is-Not!59 x$2!366) (is-Literal!53 (f!4217 x$2!366))) (not (is-Not!59 x$2!366)))))))

(declare-fun d!53646 () Bool)

(declare-fun c!16576 () Bool)

(assert (=> d!53646 (= c!16576 (or lt!14724 (is-Or!59 x$2!366)))))

(assert (=> d!53646 (= lt!14722 (and lt!14724 lt!14723))))

(assert (=> d!53646 (= lt!14723 e!37836)))

(declare-fun c!16577 () Bool)

(assert (=> d!53646 (= c!16577 (or lt!14724 (is-Or!59 x$2!366)))))

(assert (=> d!53646 (= lt!14724 (is-And!59 x$2!366))))

(assert (=> d!53646 (= (isNNF!1 x$2!366) e!37835)))

(declare-fun b!69935 () Bool)

(assert (=> b!69935 (= e!37836 (isNNF!1 (ite lt!14724 (lhs!965 x$2!366) (lhs!967 x$2!366))))))

(declare-fun b!69936 () Bool)

(declare-fun res!34102 () Bool)

(assert (=> b!69936 (= e!37837 res!34102)))

(assert (=> b!69936 true))

(assert (=> b!69936 true))

(assert (= (and d!53646 c!16577) b!69935))

(assert (= (and d!53646 (not c!16577)) b!69931))

(assert (= (and b!69932 res!34103) b!69930))

(assert (= (and b!69930 c!16575) b!69933))

(assert (= (and b!69930 (not c!16575)) b!69936))

(assert (= (and d!53646 c!16576) b!69932))

(assert (= (and d!53646 (not c!16576)) b!69934))

(declare-fun m!70531 () Bool)

(assert (=> b!69933 m!70531))

(declare-fun m!70533 () Bool)

(assert (=> b!69935 m!70533))

(assert (=> b!69795 d!53646))

(push 1)

(assert (not b!69874))

(assert (not b!69935))

(assert (not d!53644))

(assert (not d!53642))

(assert (not b!69904))

(assert (not b!69867))

(assert (not b!69933))

(assert (not b!69897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

