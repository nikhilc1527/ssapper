; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9192 () Bool)

(assert start!9192)

(declare-fun res!29716 () Bool)

(declare-fun e!34463 () Bool)

(assert (=> start!9192 (=> (not res!29716) (not e!34463))))

(declare-datatypes () ((Formula!6 (And!11 (lhs!821 Formula!6) (rhs!821 Formula!6)) (Literal!5 (id!4785 Int)) (Implies!11 (lhs!822 Formula!6) (rhs!822 Formula!6)) (Or!11 (lhs!823 Formula!6) (rhs!823 Formula!6)) (Not!11 (f!4078 Formula!6)))))

(declare-fun f!3964 () Formula!6)

(assert (=> start!9192 (= res!29716 (and (not (is-And!11 f!3964)) (not (is-Literal!5 f!3964)) (is-Implies!11 f!3964)))))

(assert (=> start!9192 e!34463))

(assert (=> start!9192 true))

(declare-fun b!63624 () Bool)

(declare-fun res!29717 () Bool)

(assert (=> b!63624 (=> (not res!29717) (not e!34463))))

(declare-fun inductVal!436 () Bool)

(declare-fun simplifySemantics!0 (Formula!6) Bool)

(assert (=> b!63624 (= res!29717 (= inductVal!436 (simplifySemantics!0 (rhs!822 f!3964))))))

(declare-fun b!63625 () Bool)

(declare-fun res!29718 () Bool)

(assert (=> b!63625 (=> (not res!29718) (not e!34463))))

(declare-fun inductVal!444 () Bool)

(assert (=> b!63625 (= res!29718 (= inductVal!444 (simplifySemantics!0 (lhs!822 f!3964))))))

(declare-fun b!63626 () Bool)

(declare-fun eval!0 (Formula!6) Bool)

(declare-fun simplify!1 (Formula!6) Formula!6)

(assert (=> b!63626 (= e!34463 (not (= (eval!0 f!3964) (eval!0 (simplify!1 f!3964)))))))

(assert (= (and start!9192 res!29716) b!63624))

(assert (= (and b!63624 res!29717) b!63625))

(assert (= (and b!63625 res!29718) b!63626))

(declare-fun m!69049 () Bool)

(assert (=> b!63624 m!69049))

(declare-fun m!69051 () Bool)

(assert (=> b!63625 m!69051))

(declare-fun m!69053 () Bool)

(assert (=> b!63626 m!69053))

(declare-fun m!69055 () Bool)

(assert (=> b!63626 m!69055))

(assert (=> b!63626 m!69055))

(declare-fun m!69057 () Bool)

(assert (=> b!63626 m!69057))

(push 1)

(assert (not b!63625))

(assert (not b!63624))

(assert (not b!63626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!63671 () Bool)

(declare-fun e!34496 () Bool)

(declare-fun lt!11847 () Bool)

(assert (=> b!63671 (= e!34496 (= lt!11847 (eval!0 (simplify!1 (lhs!822 f!3964)))))))

(declare-fun b!63672 () Bool)

(declare-fun e!34495 () Bool)

(declare-fun e!34490 () Bool)

(declare-fun e!34491 () Bool)

(assert (=> b!63672 (= e!34495 (= e!34490 e!34491))))

(declare-fun c!13924 () Bool)

(declare-fun lt!11842 () Bool)

(assert (=> b!63672 (= c!13924 (or lt!11842 (and (not lt!11842) (is-Literal!5 (lhs!822 f!3964)))))))

(declare-fun c!13928 () Bool)

(assert (=> b!63672 (= c!13928 (or lt!11842 (is-Literal!5 (lhs!822 f!3964))))))

(declare-fun b!63673 () Bool)

(declare-fun e!34493 () Bool)

(declare-fun res!29773 () Bool)

(assert (=> b!63673 (= e!34493 res!29773)))

(assert (=> b!63673 true))

(declare-fun b!63674 () Bool)

(declare-fun e!34487 () Bool)

(assert (=> b!63674 (= e!34487 (simplifySemantics!0 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!63675 () Bool)

(assert (=> b!63675 (= e!34490 (eval!0 (lhs!822 f!3964)))))

(declare-fun b!63676 () Bool)

(assert (=> b!63676 (= e!34493 (eval!0 (lhs!822 f!3964)))))

(declare-fun d!53264 () Bool)

(assert (=> d!53264 e!34495))

(declare-fun c!13930 () Bool)

(assert (=> d!53264 (= c!13930 (or lt!11842 (is-Literal!5 (lhs!822 f!3964))))))

(declare-fun lt!11845 () Formula!6)

(declare-fun e!34494 () Formula!6)

(assert (=> d!53264 (= lt!11845 e!34494)))

(declare-fun c!13929 () Bool)

(assert (=> d!53264 (= c!13929 (or lt!11842 (is-Literal!5 (lhs!822 f!3964))))))

(declare-fun lt!11839 () Bool)

(declare-fun e!34486 () Bool)

(assert (=> d!53264 (= lt!11839 e!34486)))

(declare-fun c!13927 () Bool)

(assert (=> d!53264 (= c!13927 (or lt!11842 (and (not (is-Literal!5 (lhs!822 f!3964))) (or (is-Implies!11 (lhs!822 f!3964)) (is-Or!11 (lhs!822 f!3964))))))))

(declare-fun lt!11841 () Bool)

(assert (=> d!53264 (= lt!11841 e!34487)))

(declare-fun c!13922 () Bool)

(assert (=> d!53264 (= c!13922 (or lt!11842 (not (is-Literal!5 (lhs!822 f!3964)))))))

(assert (=> d!53264 (= lt!11842 (is-And!11 (lhs!822 f!3964)))))

(assert (=> d!53264 (= (simplifySemantics!0 (lhs!822 f!3964)) true)))

(declare-fun b!63677 () Bool)

(declare-fun lt!11846 () Bool)

(declare-fun lt!11840 () Formula!6)

(assert (=> b!63677 (= e!34496 (= lt!11846 (eval!0 lt!11840)))))

(declare-fun b!63678 () Bool)

(assert (=> b!63678 (= e!34494 (simplify!1 (lhs!822 f!3964)))))

(declare-fun b!63679 () Bool)

(assert (=> b!63679 (= e!34486 (simplifySemantics!0 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun b!63680 () Bool)

(declare-fun e!34489 () Bool)

(assert (=> b!63680 (= e!34495 e!34489)))

(declare-fun c!13926 () Bool)

(declare-fun lt!11844 () Bool)

(assert (=> b!63680 (= c!13926 lt!11844)))

(declare-fun e!34492 () Bool)

(assert (=> b!63680 (= lt!11847 e!34492)))

(declare-fun c!13923 () Bool)

(declare-fun lt!11843 () Bool)

(assert (=> b!63680 (= c!13923 (or lt!11843 (and (not lt!11844) (not (is-Or!11 (lhs!822 f!3964))))))))

(assert (=> b!63680 (= lt!11843 lt!11844)))

(declare-fun e!34488 () Formula!6)

(assert (=> b!63680 (= lt!11840 e!34488)))

(declare-fun c!13920 () Bool)

(assert (=> b!63680 (= c!13920 (or lt!11844 (is-Or!11 (lhs!822 f!3964))))))

(assert (=> b!63680 (= lt!11846 e!34493)))

(declare-fun c!13921 () Bool)

(assert (=> b!63680 (= c!13921 (or lt!11844 (is-Or!11 (lhs!822 f!3964))))))

(assert (=> b!63680 (= lt!11844 (is-Implies!11 (lhs!822 f!3964)))))

(declare-fun b!63681 () Bool)

(assert (=> b!63681 (= e!34492 (eval!0 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!63682 () Bool)

(declare-fun res!29768 () Formula!6)

(assert (=> b!63682 (= e!34488 res!29768)))

(assert (=> b!63682 true))

(declare-fun b!63683 () Bool)

(assert (=> b!63683 (= e!34491 (eval!0 lt!11845))))

(declare-fun b!63684 () Bool)

(declare-fun res!29771 () Bool)

(assert (=> b!63684 (= e!34491 res!29771)))

(assert (=> b!63684 true))

(declare-fun b!63685 () Bool)

(declare-fun res!29769 () Formula!6)

(assert (=> b!63685 (= e!34494 res!29769)))

(assert (=> b!63685 true))

(declare-fun b!63686 () Bool)

(declare-fun res!29775 () Bool)

(assert (=> b!63686 (= e!34490 res!29775)))

(assert (=> b!63686 true))

(declare-fun b!63687 () Bool)

(declare-fun res!29772 () Bool)

(assert (=> b!63687 (= e!34486 res!29772)))

(assert (=> b!63687 true))

(declare-fun b!63688 () Bool)

(assert (=> b!63688 (= e!34488 (simplify!1 (lhs!822 f!3964)))))

(declare-fun b!63689 () Bool)

(assert (=> b!63689 (= e!34489 (= lt!11846 lt!11847))))

(declare-fun b!63690 () Bool)

(assert (=> b!63690 (= e!34489 e!34496)))

(declare-fun c!13925 () Bool)

(assert (=> b!63690 (= c!13925 (is-Or!11 (lhs!822 f!3964)))))

(declare-fun b!63691 () Bool)

(declare-fun res!29774 () Bool)

(assert (=> b!63691 (= e!34487 res!29774)))

(assert (=> b!63691 true))

(declare-fun b!63692 () Bool)

(declare-fun res!29770 () Bool)

(assert (=> b!63692 (= e!34492 res!29770)))

(assert (=> b!63692 true))

(assert (=> b!63692 true))

(assert (= (and d!53264 c!13922) b!63674))

(assert (= (and d!53264 (not c!13922)) b!63691))

(assert (= (and d!53264 c!13927) b!63679))

(assert (= (and d!53264 (not c!13927)) b!63687))

(assert (= (and d!53264 c!13929) b!63678))

(assert (= (and d!53264 (not c!13929)) b!63685))

(assert (= (and b!63672 c!13928) b!63675))

(assert (= (and b!63672 (not c!13928)) b!63686))

(assert (= (and b!63672 c!13924) b!63683))

(assert (= (and b!63672 (not c!13924)) b!63684))

(assert (= (and b!63680 c!13921) b!63676))

(assert (= (and b!63680 (not c!13921)) b!63673))

(assert (= (and b!63680 c!13920) b!63688))

(assert (= (and b!63680 (not c!13920)) b!63682))

(assert (= (and b!63680 c!13923) b!63681))

(assert (= (and b!63680 (not c!13923)) b!63692))

(assert (= (and b!63690 c!13925) b!63677))

(assert (= (and b!63690 (not c!13925)) b!63671))

(assert (= (and b!63680 c!13926) b!63689))

(assert (= (and b!63680 (not c!13926)) b!63690))

(assert (= (and d!53264 c!13930) b!63672))

(assert (= (and d!53264 (not c!13930)) b!63680))

(declare-fun m!69059 () Bool)

(assert (=> b!63674 m!69059))

(declare-fun m!69061 () Bool)

(assert (=> b!63683 m!69061))

(declare-fun m!69063 () Bool)

(assert (=> b!63675 m!69063))

(declare-fun m!69065 () Bool)

(assert (=> b!63688 m!69065))

(declare-fun m!69067 () Bool)

(assert (=> b!63679 m!69067))

(declare-fun m!69069 () Bool)

(assert (=> b!63681 m!69069))

(assert (=> b!63676 m!69063))

(assert (=> b!63678 m!69065))

(declare-fun m!69071 () Bool)

(assert (=> b!63677 m!69071))

(assert (=> b!63671 m!69065))

(assert (=> b!63671 m!69065))

(declare-fun m!69073 () Bool)

(assert (=> b!63671 m!69073))

(assert (=> b!63625 d!53264))

(declare-fun b!63693 () Bool)

(declare-fun e!34507 () Bool)

(declare-fun lt!11856 () Bool)

(assert (=> b!63693 (= e!34507 (= lt!11856 (eval!0 (simplify!1 (rhs!822 f!3964)))))))

(declare-fun b!63694 () Bool)

(declare-fun e!34506 () Bool)

(declare-fun e!34501 () Bool)

(declare-fun e!34502 () Bool)

(assert (=> b!63694 (= e!34506 (= e!34501 e!34502))))

(declare-fun c!13935 () Bool)

(declare-fun lt!11851 () Bool)

(assert (=> b!63694 (= c!13935 (or lt!11851 (and (not lt!11851) (is-Literal!5 (rhs!822 f!3964)))))))

(declare-fun c!13939 () Bool)

(assert (=> b!63694 (= c!13939 (or lt!11851 (is-Literal!5 (rhs!822 f!3964))))))

(declare-fun b!63695 () Bool)

(declare-fun e!34504 () Bool)

(declare-fun res!29781 () Bool)

(assert (=> b!63695 (= e!34504 res!29781)))

(assert (=> b!63695 true))

(declare-fun b!63696 () Bool)

(declare-fun e!34498 () Bool)

(assert (=> b!63696 (= e!34498 (simplifySemantics!0 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!63697 () Bool)

(assert (=> b!63697 (= e!34501 (eval!0 (rhs!822 f!3964)))))

(declare-fun b!63698 () Bool)

(assert (=> b!63698 (= e!34504 (eval!0 (rhs!822 f!3964)))))

(declare-fun d!53266 () Bool)

(assert (=> d!53266 e!34506))

(declare-fun c!13941 () Bool)

(assert (=> d!53266 (= c!13941 (or lt!11851 (is-Literal!5 (rhs!822 f!3964))))))

(declare-fun lt!11854 () Formula!6)

(declare-fun e!34505 () Formula!6)

(assert (=> d!53266 (= lt!11854 e!34505)))

(declare-fun c!13940 () Bool)

(assert (=> d!53266 (= c!13940 (or lt!11851 (is-Literal!5 (rhs!822 f!3964))))))

(declare-fun lt!11848 () Bool)

(declare-fun e!34497 () Bool)

(assert (=> d!53266 (= lt!11848 e!34497)))

(declare-fun c!13938 () Bool)

(assert (=> d!53266 (= c!13938 (or lt!11851 (and (not (is-Literal!5 (rhs!822 f!3964))) (or (is-Implies!11 (rhs!822 f!3964)) (is-Or!11 (rhs!822 f!3964))))))))

(declare-fun lt!11850 () Bool)

(assert (=> d!53266 (= lt!11850 e!34498)))

(declare-fun c!13933 () Bool)

(assert (=> d!53266 (= c!13933 (or lt!11851 (not (is-Literal!5 (rhs!822 f!3964)))))))

(assert (=> d!53266 (= lt!11851 (is-And!11 (rhs!822 f!3964)))))

(assert (=> d!53266 (= (simplifySemantics!0 (rhs!822 f!3964)) true)))

(declare-fun b!63699 () Bool)

(declare-fun lt!11855 () Bool)

(declare-fun lt!11849 () Formula!6)

(assert (=> b!63699 (= e!34507 (= lt!11855 (eval!0 lt!11849)))))

(declare-fun b!63700 () Bool)

(assert (=> b!63700 (= e!34505 (simplify!1 (rhs!822 f!3964)))))

(declare-fun b!63701 () Bool)

(assert (=> b!63701 (= e!34497 (simplifySemantics!0 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun b!63702 () Bool)

(declare-fun e!34500 () Bool)

(assert (=> b!63702 (= e!34506 e!34500)))

(declare-fun c!13937 () Bool)

(declare-fun lt!11853 () Bool)

(assert (=> b!63702 (= c!13937 lt!11853)))

(declare-fun e!34503 () Bool)

(assert (=> b!63702 (= lt!11856 e!34503)))

(declare-fun lt!11852 () Bool)

(declare-fun c!13934 () Bool)

(assert (=> b!63702 (= c!13934 (or lt!11852 (and (not lt!11853) (not (is-Or!11 (rhs!822 f!3964))))))))

(assert (=> b!63702 (= lt!11852 lt!11853)))

(declare-fun e!34499 () Formula!6)

(assert (=> b!63702 (= lt!11849 e!34499)))

(declare-fun c!13931 () Bool)

(assert (=> b!63702 (= c!13931 (or lt!11853 (is-Or!11 (rhs!822 f!3964))))))

(assert (=> b!63702 (= lt!11855 e!34504)))

(declare-fun c!13932 () Bool)

(assert (=> b!63702 (= c!13932 (or lt!11853 (is-Or!11 (rhs!822 f!3964))))))

(assert (=> b!63702 (= lt!11853 (is-Implies!11 (rhs!822 f!3964)))))

(declare-fun b!63703 () Bool)

(assert (=> b!63703 (= e!34503 (eval!0 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!63704 () Bool)

(declare-fun res!29776 () Formula!6)

(assert (=> b!63704 (= e!34499 res!29776)))

(assert (=> b!63704 true))

(declare-fun b!63705 () Bool)

(assert (=> b!63705 (= e!34502 (eval!0 lt!11854))))

(declare-fun b!63706 () Bool)

(declare-fun res!29779 () Bool)

(assert (=> b!63706 (= e!34502 res!29779)))

(assert (=> b!63706 true))

(declare-fun b!63707 () Bool)

(declare-fun res!29777 () Formula!6)

(assert (=> b!63707 (= e!34505 res!29777)))

(assert (=> b!63707 true))

(declare-fun b!63708 () Bool)

(declare-fun res!29783 () Bool)

(assert (=> b!63708 (= e!34501 res!29783)))

(assert (=> b!63708 true))

(declare-fun b!63709 () Bool)

(declare-fun res!29780 () Bool)

(assert (=> b!63709 (= e!34497 res!29780)))

(assert (=> b!63709 true))

(declare-fun b!63710 () Bool)

(assert (=> b!63710 (= e!34499 (simplify!1 (rhs!822 f!3964)))))

(declare-fun b!63711 () Bool)

(assert (=> b!63711 (= e!34500 (= lt!11855 lt!11856))))

(declare-fun b!63712 () Bool)

(assert (=> b!63712 (= e!34500 e!34507)))

(declare-fun c!13936 () Bool)

(assert (=> b!63712 (= c!13936 (is-Or!11 (rhs!822 f!3964)))))

(declare-fun b!63713 () Bool)

(declare-fun res!29782 () Bool)

(assert (=> b!63713 (= e!34498 res!29782)))

(assert (=> b!63713 true))

(declare-fun b!63714 () Bool)

(declare-fun res!29778 () Bool)

(assert (=> b!63714 (= e!34503 res!29778)))

(assert (=> b!63714 true))

(assert (=> b!63714 true))

(assert (= (and d!53266 c!13933) b!63696))

(assert (= (and d!53266 (not c!13933)) b!63713))

(assert (= (and d!53266 c!13938) b!63701))

(assert (= (and d!53266 (not c!13938)) b!63709))

(assert (= (and d!53266 c!13940) b!63700))

(assert (= (and d!53266 (not c!13940)) b!63707))

(assert (= (and b!63694 c!13939) b!63697))

(assert (= (and b!63694 (not c!13939)) b!63708))

(assert (= (and b!63694 c!13935) b!63705))

(assert (= (and b!63694 (not c!13935)) b!63706))

(assert (= (and b!63702 c!13932) b!63698))

(assert (= (and b!63702 (not c!13932)) b!63695))

(assert (= (and b!63702 c!13931) b!63710))

(assert (= (and b!63702 (not c!13931)) b!63704))

(assert (= (and b!63702 c!13934) b!63703))

(assert (= (and b!63702 (not c!13934)) b!63714))

(assert (= (and b!63712 c!13936) b!63699))

(assert (= (and b!63712 (not c!13936)) b!63693))

(assert (= (and b!63702 c!13937) b!63711))

(assert (= (and b!63702 (not c!13937)) b!63712))

(assert (= (and d!53266 c!13941) b!63694))

(assert (= (and d!53266 (not c!13941)) b!63702))

(declare-fun m!69075 () Bool)

(assert (=> b!63696 m!69075))

(declare-fun m!69077 () Bool)

(assert (=> b!63705 m!69077))

(declare-fun m!69079 () Bool)

(assert (=> b!63697 m!69079))

(declare-fun m!69081 () Bool)

(assert (=> b!63710 m!69081))

(declare-fun m!69083 () Bool)

(assert (=> b!63701 m!69083))

(declare-fun m!69085 () Bool)

(assert (=> b!63703 m!69085))

(assert (=> b!63698 m!69079))

(assert (=> b!63700 m!69081))

(declare-fun m!69087 () Bool)

(assert (=> b!63699 m!69087))

(assert (=> b!63693 m!69081))

(assert (=> b!63693 m!69081))

(declare-fun m!69089 () Bool)

(assert (=> b!63693 m!69089))

(assert (=> b!63624 d!53266))

(declare-fun b!63793 () Bool)

(declare-fun e!34557 () Bool)

(declare-fun e!34559 () Bool)

(assert (=> b!63793 (= e!34557 e!34559)))

(declare-fun res!29849 () Bool)

(assert (=> b!63793 (=> (not res!29849) (not e!34559))))

(declare-fun lt!11886 () Bool)

(assert (=> b!63793 (= res!29849 (not lt!11886))))

(declare-fun b!63794 () Bool)

(declare-fun e!34574 () Bool)

(declare-fun lt!11894 () Bool)

(assert (=> b!63794 (= e!34574 lt!11894)))

(declare-fun b!63795 () Bool)

(declare-fun e!34572 () Bool)

(assert (=> b!63795 (= e!34572 lt!11894)))

(declare-fun b!63796 () Bool)

(declare-fun e!34565 () Bool)

(assert (=> b!63796 (= e!34565 (eval!0 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!63797 () Bool)

(declare-fun e!34569 () Bool)

(declare-fun lt!11885 () Bool)

(declare-fun lt!11887 () Bool)

(assert (=> b!63797 (= e!34569 (or lt!11885 lt!11887))))

(declare-fun b!63798 () Bool)

(declare-fun e!34563 () Formula!6)

(assert (=> b!63798 (= e!34563 (rhs!823 f!3964))))

(declare-fun b!63799 () Bool)

(declare-fun e!34578 () Bool)

(declare-fun res!29848 () Bool)

(assert (=> b!63799 (= e!34578 res!29848)))

(assert (=> b!63799 true))

(declare-fun b!63800 () Bool)

(declare-fun e!34571 () Bool)

(declare-fun e!34570 () Bool)

(assert (=> b!63800 (= e!34571 e!34570)))

(declare-fun res!29843 () Bool)

(assert (=> b!63800 (=> (not res!29843) (not e!34570))))

(declare-fun lt!11889 () Bool)

(assert (=> b!63800 (= res!29843 (not lt!11889))))

(declare-fun b!63801 () Bool)

(declare-fun e!34579 () Bool)

(declare-fun e!34560 () Bool)

(assert (=> b!63801 (= e!34579 e!34560)))

(declare-fun c!13981 () Bool)

(declare-fun lt!11893 () Bool)

(assert (=> b!63801 (= c!13981 (or lt!11893 (is-Not!11 f!3964)))))

(declare-fun b!63802 () Bool)

(declare-fun e!34577 () Bool)

(declare-fun e!34567 () Bool)

(assert (=> b!63802 (= e!34577 e!34567)))

(declare-fun res!29841 () Bool)

(assert (=> b!63802 (=> (not res!29841) (not e!34567))))

(declare-fun lt!11888 () Bool)

(assert (=> b!63802 (= res!29841 (not lt!11888))))

(declare-fun b!63803 () Bool)

(declare-fun e!34556 () Bool)

(declare-fun res!29844 () Bool)

(assert (=> b!63803 (= e!34556 res!29844)))

(assert (=> b!63803 true))

(assert (=> b!63803 true))

(declare-fun b!63804 () Bool)

(declare-fun e!34566 () Bool)

(declare-fun lt!11898 () Bool)

(assert (=> b!63804 (= e!34566 lt!11898)))

(declare-fun b!63805 () Bool)

(declare-fun e!34561 () Bool)

(assert (=> b!63805 (= e!34561 lt!11894)))

(declare-fun b!63806 () Bool)

(assert (=> b!63806 (= e!34570 e!34579)))

(declare-fun res!29842 () Bool)

(assert (=> b!63806 (=> (not res!29842) (not e!34579))))

(assert (=> b!63806 (= res!29842 lt!11893)))

(assert (=> b!63806 (= lt!11893 (is-Implies!11 f!3964))))

(declare-fun b!63807 () Bool)

(declare-fun e!34575 () Bool)

(assert (=> b!63807 (= e!34569 e!34575)))

(declare-fun c!13984 () Bool)

(declare-fun lt!11896 () Bool)

(assert (=> b!63807 (= c!13984 lt!11896)))

(declare-fun lt!11892 () Bool)

(assert (=> b!63807 (= lt!11892 e!34556)))

(declare-fun c!13980 () Bool)

(assert (=> b!63807 (= c!13980 (or lt!11896 (is-Not!11 f!3964)))))

(assert (=> b!63807 (= lt!11896 (is-Implies!11 f!3964))))

(declare-fun b!63808 () Bool)

(declare-fun res!29853 () Bool)

(assert (=> b!63808 (= e!34561 res!29853)))

(assert (=> b!63808 true))

(declare-fun b!63809 () Bool)

(declare-fun e!34576 () Formula!6)

(assert (=> b!63809 (= e!34576 (rhs!821 f!3964))))

(declare-fun b!63810 () Bool)

(declare-fun e!34568 () Bool)

(assert (=> b!63810 (= e!34568 (and lt!11894 lt!11898))))

(declare-fun b!63811 () Bool)

(declare-fun lt!11895 () Bool)

(assert (=> b!63811 (= e!34578 lt!11895)))

(declare-fun b!63812 () Bool)

(declare-fun e!34573 () Bool)

(declare-fun res!29856 () Bool)

(assert (=> b!63812 (= e!34573 res!29856)))

(assert (=> b!63812 true))

(declare-fun b!63813 () Bool)

(declare-fun e!34558 () Bool)

(assert (=> b!63813 (= e!34558 (not e!34574))))

(declare-fun c!13974 () Bool)

(declare-fun lt!11891 () Bool)

(assert (=> b!63813 (= c!13974 (or lt!11891 (is-Implies!11 f!3964) (is-Not!11 f!3964)))))

(declare-fun b!63814 () Bool)

(declare-fun res!29840 () Bool)

(assert (=> b!63814 (= e!34565 res!29840)))

(assert (=> b!63814 true))

(declare-fun b!63815 () Bool)

(assert (=> b!63815 (= e!34573 (eval!0 e!34576))))

(declare-fun c!13976 () Bool)

(declare-fun lt!11890 () Bool)

(assert (=> b!63815 (= c!13976 lt!11890)))

(declare-fun b!63816 () Bool)

(assert (=> b!63816 (= e!34559 e!34577)))

(declare-fun res!29857 () Bool)

(assert (=> b!63816 (=> res!29857 e!34577)))

(assert (=> b!63816 (= res!29857 (and lt!11888 (not lt!11895)))))

(assert (=> b!63816 (= lt!11895 e!34561)))

(declare-fun c!13972 () Bool)

(assert (=> b!63816 (= c!13972 (or lt!11888 (is-Implies!11 f!3964) (is-Not!11 f!3964)))))

(assert (=> b!63816 (= lt!11888 (is-Or!11 f!3964))))

(declare-fun b!63817 () Bool)

(declare-fun res!29852 () Bool)

(assert (=> b!63817 (= e!34566 res!29852)))

(assert (=> b!63817 true))

(declare-fun b!63818 () Bool)

(assert (=> b!63818 (= e!34576 e!34563)))

(declare-fun c!13983 () Bool)

(assert (=> b!63818 (= c!13983 e!34558)))

(declare-fun res!29855 () Bool)

(assert (=> b!63818 (=> (not res!29855) (not e!34558))))

(assert (=> b!63818 (= res!29855 lt!11891)))

(assert (=> b!63818 (= lt!11891 (is-Or!11 f!3964))))

(declare-fun b!63819 () Bool)

(declare-fun res!29847 () Bool)

(assert (=> b!63819 (= e!34574 res!29847)))

(assert (=> b!63819 true))

(declare-fun b!63820 () Bool)

(assert (=> b!63820 (= e!34568 e!34569)))

(declare-fun c!13985 () Bool)

(assert (=> b!63820 (= c!13985 lt!11889)))

(assert (=> b!63820 (= lt!11887 e!34566)))

(declare-fun c!13979 () Bool)

(assert (=> b!63820 (= c!13979 e!34571)))

(declare-fun res!29851 () Bool)

(assert (=> b!63820 (=> res!29851 e!34571)))

(assert (=> b!63820 (= res!29851 (and lt!11889 (not lt!11885)))))

(assert (=> b!63820 (= lt!11885 e!34572)))

(declare-fun c!13978 () Bool)

(assert (=> b!63820 (= c!13978 (or lt!11889 (is-Implies!11 f!3964) (is-Not!11 f!3964)))))

(assert (=> b!63820 (= lt!11889 (is-Or!11 f!3964))))

(declare-fun b!63821 () Bool)

(declare-fun res!29854 () Bool)

(assert (=> b!63821 (= e!34560 res!29854)))

(assert (=> b!63821 true))

(declare-fun b!63822 () Bool)

(assert (=> b!63822 (= e!34556 lt!11885)))

(declare-fun b!63823 () Bool)

(declare-fun e!34564 () Bool)

(assert (=> b!63823 (= e!34567 e!34564)))

(declare-fun res!29845 () Bool)

(assert (=> b!63823 (=> (not res!29845) (not e!34564))))

(declare-fun lt!11897 () Bool)

(assert (=> b!63823 (= res!29845 lt!11897)))

(assert (=> b!63823 (= lt!11897 (is-Implies!11 f!3964))))

(declare-fun b!63824 () Bool)

(declare-fun e!34562 () Bool)

(assert (=> b!63824 (= e!34562 (not lt!11892))))

(declare-fun b!63825 () Bool)

(assert (=> b!63825 (= e!34575 e!34562)))

(declare-fun c!13973 () Bool)

(assert (=> b!63825 (= c!13973 (is-Not!11 f!3964))))

(declare-fun b!63826 () Bool)

(assert (=> b!63826 (= e!34575 (or (not lt!11892) lt!11887))))

(declare-fun d!53268 () Bool)

(declare-fun c!13975 () Bool)

(assert (=> d!53268 (= c!13975 lt!11886)))

(assert (=> d!53268 (= lt!11898 e!34573)))

(declare-fun c!13977 () Bool)

(assert (=> d!53268 (= c!13977 e!34557)))

(declare-fun res!29846 () Bool)

(assert (=> d!53268 (=> res!29846 e!34557)))

(assert (=> d!53268 (= res!29846 lt!11890)))

(assert (=> d!53268 (= lt!11890 (and lt!11886 lt!11894))))

(assert (=> d!53268 (= lt!11894 e!34565)))

(declare-fun c!13986 () Bool)

(assert (=> d!53268 (= c!13986 (or lt!11886 (is-Or!11 f!3964) (is-Implies!11 f!3964) (is-Not!11 f!3964)))))

(assert (=> d!53268 (= lt!11886 (is-And!11 f!3964))))

(assert (=> d!53268 (= (eval!0 f!3964) e!34568)))

(declare-fun b!63827 () Bool)

(assert (=> b!63827 (= e!34564 e!34578)))

(declare-fun c!13982 () Bool)

(assert (=> b!63827 (= c!13982 (or lt!11897 (is-Not!11 f!3964)))))

(declare-fun b!63828 () Bool)

(assert (=> b!63828 (= e!34563 (rhs!822 f!3964))))

(declare-fun b!63829 () Bool)

(declare-fun res!29850 () Bool)

(assert (=> b!63829 (= e!34572 res!29850)))

(assert (=> b!63829 true))

(declare-fun b!63830 () Bool)

(declare-fun evalLit!0 (Int) Bool)

(assert (=> b!63830 (= e!34562 (evalLit!0 (id!4785 f!3964)))))

(declare-fun b!63831 () Bool)

(assert (=> b!63831 (= e!34560 lt!11885)))

(assert (= (and d!53268 c!13986) b!63796))

(assert (= (and d!53268 (not c!13986)) b!63814))

(assert (= (and d!53268 (not res!29846)) b!63793))

(assert (= (and b!63793 res!29849) b!63816))

(assert (= (and b!63816 c!13972) b!63805))

(assert (= (and b!63816 (not c!13972)) b!63808))

(assert (= (and b!63816 (not res!29857)) b!63802))

(assert (= (and b!63802 res!29841) b!63823))

(assert (= (and b!63823 res!29845) b!63827))

(assert (= (and b!63827 c!13982) b!63811))

(assert (= (and b!63827 (not c!13982)) b!63799))

(assert (= (and b!63818 res!29855) b!63813))

(assert (= (and b!63813 c!13974) b!63794))

(assert (= (and b!63813 (not c!13974)) b!63819))

(assert (= (and b!63818 c!13983) b!63798))

(assert (= (and b!63818 (not c!13983)) b!63828))

(assert (= (and b!63815 c!13976) b!63809))

(assert (= (and b!63815 (not c!13976)) b!63818))

(assert (= (and d!53268 c!13977) b!63815))

(assert (= (and d!53268 (not c!13977)) b!63812))

(assert (= (and b!63820 c!13978) b!63795))

(assert (= (and b!63820 (not c!13978)) b!63829))

(assert (= (and b!63820 (not res!29851)) b!63800))

(assert (= (and b!63800 res!29843) b!63806))

(assert (= (and b!63806 res!29842) b!63801))

(assert (= (and b!63801 c!13981) b!63831))

(assert (= (and b!63801 (not c!13981)) b!63821))

(assert (= (and b!63820 c!13979) b!63804))

(assert (= (and b!63820 (not c!13979)) b!63817))

(assert (= (and b!63807 c!13980) b!63822))

(assert (= (and b!63807 (not c!13980)) b!63803))

(assert (= (and b!63825 c!13973) b!63824))

(assert (= (and b!63825 (not c!13973)) b!63830))

(assert (= (and b!63807 c!13984) b!63826))

(assert (= (and b!63807 (not c!13984)) b!63825))

(assert (= (and b!63820 c!13985) b!63797))

(assert (= (and b!63820 (not c!13985)) b!63807))

(assert (= (and d!53268 c!13975) b!63810))

(assert (= (and d!53268 (not c!13975)) b!63820))

(declare-fun m!69091 () Bool)

(assert (=> b!63796 m!69091))

(declare-fun m!69093 () Bool)

(assert (=> b!63815 m!69093))

(declare-fun m!69095 () Bool)

(assert (=> b!63830 m!69095))

(assert (=> b!63626 d!53268))

(declare-fun b!63832 () Bool)

(declare-fun e!34581 () Bool)

(declare-fun e!34583 () Bool)

(assert (=> b!63832 (= e!34581 e!34583)))

(declare-fun res!29867 () Bool)

(assert (=> b!63832 (=> (not res!29867) (not e!34583))))

(declare-fun lt!11900 () Bool)

(assert (=> b!63832 (= res!29867 (not lt!11900))))

(declare-fun b!63833 () Bool)

(declare-fun e!34598 () Bool)

(declare-fun lt!11908 () Bool)

(assert (=> b!63833 (= e!34598 lt!11908)))

(declare-fun b!63834 () Bool)

(declare-fun e!34596 () Bool)

(assert (=> b!63834 (= e!34596 lt!11908)))

(declare-fun b!63835 () Bool)

(declare-fun e!34589 () Bool)

(assert (=> b!63835 (= e!34589 (eval!0 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!63836 () Bool)

(declare-fun e!34593 () Bool)

(declare-fun lt!11899 () Bool)

(declare-fun lt!11901 () Bool)

(assert (=> b!63836 (= e!34593 (or lt!11899 lt!11901))))

(declare-fun b!63837 () Bool)

(declare-fun e!34587 () Formula!6)

(assert (=> b!63837 (= e!34587 (rhs!823 (simplify!1 f!3964)))))

(declare-fun b!63838 () Bool)

(declare-fun e!34602 () Bool)

(declare-fun res!29866 () Bool)

(assert (=> b!63838 (= e!34602 res!29866)))

(assert (=> b!63838 true))

(declare-fun b!63839 () Bool)

(declare-fun e!34595 () Bool)

(declare-fun e!34594 () Bool)

(assert (=> b!63839 (= e!34595 e!34594)))

(declare-fun res!29861 () Bool)

(assert (=> b!63839 (=> (not res!29861) (not e!34594))))

(declare-fun lt!11903 () Bool)

(assert (=> b!63839 (= res!29861 (not lt!11903))))

(declare-fun b!63840 () Bool)

(declare-fun e!34603 () Bool)

(declare-fun e!34584 () Bool)

(assert (=> b!63840 (= e!34603 e!34584)))

(declare-fun c!13996 () Bool)

(declare-fun lt!11907 () Bool)

(assert (=> b!63840 (= c!13996 (or lt!11907 (is-Not!11 (simplify!1 f!3964))))))

(declare-fun b!63841 () Bool)

(declare-fun e!34601 () Bool)

(declare-fun e!34591 () Bool)

(assert (=> b!63841 (= e!34601 e!34591)))

(declare-fun res!29859 () Bool)

(assert (=> b!63841 (=> (not res!29859) (not e!34591))))

(declare-fun lt!11902 () Bool)

(assert (=> b!63841 (= res!29859 (not lt!11902))))

(declare-fun b!63842 () Bool)

(declare-fun e!34580 () Bool)

(declare-fun res!29862 () Bool)

(assert (=> b!63842 (= e!34580 res!29862)))

(assert (=> b!63842 true))

(assert (=> b!63842 true))

(declare-fun b!63843 () Bool)

(declare-fun e!34590 () Bool)

(declare-fun lt!11912 () Bool)

(assert (=> b!63843 (= e!34590 lt!11912)))

(declare-fun b!63844 () Bool)

(declare-fun e!34585 () Bool)

(assert (=> b!63844 (= e!34585 lt!11908)))

(declare-fun b!63845 () Bool)

(assert (=> b!63845 (= e!34594 e!34603)))

(declare-fun res!29860 () Bool)

(assert (=> b!63845 (=> (not res!29860) (not e!34603))))

(assert (=> b!63845 (= res!29860 lt!11907)))

(assert (=> b!63845 (= lt!11907 (is-Implies!11 (simplify!1 f!3964)))))

(declare-fun b!63846 () Bool)

(declare-fun e!34599 () Bool)

(assert (=> b!63846 (= e!34593 e!34599)))

(declare-fun c!13999 () Bool)

(declare-fun lt!11910 () Bool)

(assert (=> b!63846 (= c!13999 lt!11910)))

(declare-fun lt!11906 () Bool)

(assert (=> b!63846 (= lt!11906 e!34580)))

(declare-fun c!13995 () Bool)

(assert (=> b!63846 (= c!13995 (or lt!11910 (is-Not!11 (simplify!1 f!3964))))))

(assert (=> b!63846 (= lt!11910 (is-Implies!11 (simplify!1 f!3964)))))

(declare-fun b!63847 () Bool)

(declare-fun res!29871 () Bool)

(assert (=> b!63847 (= e!34585 res!29871)))

(assert (=> b!63847 true))

(declare-fun b!63848 () Bool)

(declare-fun e!34600 () Formula!6)

(assert (=> b!63848 (= e!34600 (rhs!821 (simplify!1 f!3964)))))

(declare-fun b!63849 () Bool)

(declare-fun e!34592 () Bool)

(assert (=> b!63849 (= e!34592 (and lt!11908 lt!11912))))

(declare-fun b!63850 () Bool)

(declare-fun lt!11909 () Bool)

(assert (=> b!63850 (= e!34602 lt!11909)))

(declare-fun b!63851 () Bool)

(declare-fun e!34597 () Bool)

(declare-fun res!29874 () Bool)

(assert (=> b!63851 (= e!34597 res!29874)))

(assert (=> b!63851 true))

(declare-fun b!63852 () Bool)

(declare-fun e!34582 () Bool)

(assert (=> b!63852 (= e!34582 (not e!34598))))

(declare-fun c!13989 () Bool)

(declare-fun lt!11905 () Bool)

(assert (=> b!63852 (= c!13989 (or lt!11905 (is-Implies!11 (simplify!1 f!3964)) (is-Not!11 (simplify!1 f!3964))))))

(declare-fun b!63853 () Bool)

(declare-fun res!29858 () Bool)

(assert (=> b!63853 (= e!34589 res!29858)))

(assert (=> b!63853 true))

(declare-fun b!63854 () Bool)

(assert (=> b!63854 (= e!34597 (eval!0 e!34600))))

(declare-fun c!13991 () Bool)

(declare-fun lt!11904 () Bool)

(assert (=> b!63854 (= c!13991 lt!11904)))

(declare-fun b!63855 () Bool)

(assert (=> b!63855 (= e!34583 e!34601)))

(declare-fun res!29875 () Bool)

(assert (=> b!63855 (=> res!29875 e!34601)))

(assert (=> b!63855 (= res!29875 (and lt!11902 (not lt!11909)))))

(assert (=> b!63855 (= lt!11909 e!34585)))

(declare-fun c!13987 () Bool)

(assert (=> b!63855 (= c!13987 (or lt!11902 (is-Implies!11 (simplify!1 f!3964)) (is-Not!11 (simplify!1 f!3964))))))

(assert (=> b!63855 (= lt!11902 (is-Or!11 (simplify!1 f!3964)))))

(declare-fun b!63856 () Bool)

(declare-fun res!29870 () Bool)

(assert (=> b!63856 (= e!34590 res!29870)))

(assert (=> b!63856 true))

(declare-fun b!63857 () Bool)

(assert (=> b!63857 (= e!34600 e!34587)))

(declare-fun c!13998 () Bool)

(assert (=> b!63857 (= c!13998 e!34582)))

(declare-fun res!29873 () Bool)

(assert (=> b!63857 (=> (not res!29873) (not e!34582))))

(assert (=> b!63857 (= res!29873 lt!11905)))

(assert (=> b!63857 (= lt!11905 (is-Or!11 (simplify!1 f!3964)))))

(declare-fun b!63858 () Bool)

(declare-fun res!29865 () Bool)

(assert (=> b!63858 (= e!34598 res!29865)))

(assert (=> b!63858 true))

(declare-fun b!63859 () Bool)

(assert (=> b!63859 (= e!34592 e!34593)))

(declare-fun c!14000 () Bool)

(assert (=> b!63859 (= c!14000 lt!11903)))

(assert (=> b!63859 (= lt!11901 e!34590)))

(declare-fun c!13994 () Bool)

(assert (=> b!63859 (= c!13994 e!34595)))

(declare-fun res!29869 () Bool)

(assert (=> b!63859 (=> res!29869 e!34595)))

(assert (=> b!63859 (= res!29869 (and lt!11903 (not lt!11899)))))

(assert (=> b!63859 (= lt!11899 e!34596)))

(declare-fun c!13993 () Bool)

(assert (=> b!63859 (= c!13993 (or lt!11903 (is-Implies!11 (simplify!1 f!3964)) (is-Not!11 (simplify!1 f!3964))))))

(assert (=> b!63859 (= lt!11903 (is-Or!11 (simplify!1 f!3964)))))

(declare-fun b!63860 () Bool)

(declare-fun res!29872 () Bool)

(assert (=> b!63860 (= e!34584 res!29872)))

(assert (=> b!63860 true))

(declare-fun b!63861 () Bool)

(assert (=> b!63861 (= e!34580 lt!11899)))

(declare-fun b!63862 () Bool)

(declare-fun e!34588 () Bool)

(assert (=> b!63862 (= e!34591 e!34588)))

(declare-fun res!29863 () Bool)

(assert (=> b!63862 (=> (not res!29863) (not e!34588))))

(declare-fun lt!11911 () Bool)

(assert (=> b!63862 (= res!29863 lt!11911)))

(assert (=> b!63862 (= lt!11911 (is-Implies!11 (simplify!1 f!3964)))))

(declare-fun b!63863 () Bool)

(declare-fun e!34586 () Bool)

(assert (=> b!63863 (= e!34586 (not lt!11906))))

(declare-fun b!63864 () Bool)

(assert (=> b!63864 (= e!34599 e!34586)))

(declare-fun c!13988 () Bool)

(assert (=> b!63864 (= c!13988 (is-Not!11 (simplify!1 f!3964)))))

(declare-fun b!63865 () Bool)

(assert (=> b!63865 (= e!34599 (or (not lt!11906) lt!11901))))

(declare-fun d!53270 () Bool)

(declare-fun c!13990 () Bool)

(assert (=> d!53270 (= c!13990 lt!11900)))

(assert (=> d!53270 (= lt!11912 e!34597)))

(declare-fun c!13992 () Bool)

(assert (=> d!53270 (= c!13992 e!34581)))

(declare-fun res!29864 () Bool)

(assert (=> d!53270 (=> res!29864 e!34581)))

(assert (=> d!53270 (= res!29864 lt!11904)))

(assert (=> d!53270 (= lt!11904 (and lt!11900 lt!11908))))

(assert (=> d!53270 (= lt!11908 e!34589)))

(declare-fun c!14001 () Bool)

(assert (=> d!53270 (= c!14001 (or lt!11900 (is-Or!11 (simplify!1 f!3964)) (is-Implies!11 (simplify!1 f!3964)) (is-Not!11 (simplify!1 f!3964))))))

(assert (=> d!53270 (= lt!11900 (is-And!11 (simplify!1 f!3964)))))

(assert (=> d!53270 (= (eval!0 (simplify!1 f!3964)) e!34592)))

(declare-fun b!63866 () Bool)

(assert (=> b!63866 (= e!34588 e!34602)))

(declare-fun c!13997 () Bool)

(assert (=> b!63866 (= c!13997 (or lt!11911 (is-Not!11 (simplify!1 f!3964))))))

(declare-fun b!63867 () Bool)

(assert (=> b!63867 (= e!34587 (rhs!822 (simplify!1 f!3964)))))

(declare-fun b!63868 () Bool)

(declare-fun res!29868 () Bool)

(assert (=> b!63868 (= e!34596 res!29868)))

(assert (=> b!63868 true))

(declare-fun b!63869 () Bool)

(assert (=> b!63869 (= e!34586 (evalLit!0 (id!4785 (simplify!1 f!3964))))))

(declare-fun b!63870 () Bool)

(assert (=> b!63870 (= e!34584 lt!11899)))

(assert (= (and d!53270 c!14001) b!63835))

(assert (= (and d!53270 (not c!14001)) b!63853))

(assert (= (and d!53270 (not res!29864)) b!63832))

(assert (= (and b!63832 res!29867) b!63855))

(assert (= (and b!63855 c!13987) b!63844))

(assert (= (and b!63855 (not c!13987)) b!63847))

(assert (= (and b!63855 (not res!29875)) b!63841))

(assert (= (and b!63841 res!29859) b!63862))

(assert (= (and b!63862 res!29863) b!63866))

(assert (= (and b!63866 c!13997) b!63850))

(assert (= (and b!63866 (not c!13997)) b!63838))

(assert (= (and b!63857 res!29873) b!63852))

(assert (= (and b!63852 c!13989) b!63833))

(assert (= (and b!63852 (not c!13989)) b!63858))

(assert (= (and b!63857 c!13998) b!63837))

(assert (= (and b!63857 (not c!13998)) b!63867))

(assert (= (and b!63854 c!13991) b!63848))

(assert (= (and b!63854 (not c!13991)) b!63857))

(assert (= (and d!53270 c!13992) b!63854))

(assert (= (and d!53270 (not c!13992)) b!63851))

(assert (= (and b!63859 c!13993) b!63834))

(assert (= (and b!63859 (not c!13993)) b!63868))

(assert (= (and b!63859 (not res!29869)) b!63839))

(assert (= (and b!63839 res!29861) b!63845))

(assert (= (and b!63845 res!29860) b!63840))

(assert (= (and b!63840 c!13996) b!63870))

(assert (= (and b!63840 (not c!13996)) b!63860))

(assert (= (and b!63859 c!13994) b!63843))

(assert (= (and b!63859 (not c!13994)) b!63856))

(assert (= (and b!63846 c!13995) b!63861))

(assert (= (and b!63846 (not c!13995)) b!63842))

(assert (= (and b!63864 c!13988) b!63863))

(assert (= (and b!63864 (not c!13988)) b!63869))

(assert (= (and b!63846 c!13999) b!63865))

(assert (= (and b!63846 (not c!13999)) b!63864))

(assert (= (and b!63859 c!14000) b!63836))

(assert (= (and b!63859 (not c!14000)) b!63846))

(assert (= (and d!53270 c!13990) b!63849))

(assert (= (and d!53270 (not c!13990)) b!63859))

(declare-fun m!69097 () Bool)

(assert (=> b!63835 m!69097))

(declare-fun m!69099 () Bool)

(assert (=> b!63854 m!69099))

(declare-fun m!69101 () Bool)

(assert (=> b!63869 m!69101))

(assert (=> b!63626 d!53270))

(declare-fun b!63899 () Bool)

(declare-fun e!34624 () Formula!6)

(declare-fun lt!11933 () Bool)

(assert (=> b!63899 (= e!34624 (simplify!1 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))))))

(declare-fun b!63900 () Bool)

(declare-fun res!29903 () Formula!6)

(assert (=> b!63900 (= e!34624 res!29903)))

(assert (=> b!63900 true))

(declare-fun b!63901 () Bool)

(declare-fun e!34623 () Formula!6)

(declare-fun res!29901 () Formula!6)

(assert (=> b!63901 (= e!34623 res!29901)))

(assert (=> b!63901 true))

(declare-fun b!63902 () Bool)

(declare-fun e!34619 () Formula!6)

(declare-fun res!29905 () Formula!6)

(assert (=> b!63902 (= e!34619 res!29905)))

(assert (=> b!63902 true))

(assert (=> b!63902 true))

(declare-fun b!63903 () Bool)

(assert (=> b!63903 (= e!34623 (simplify!1 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!63904 () Bool)

(declare-fun e!34618 () Formula!6)

(declare-fun lt!11935 () Formula!6)

(assert (=> b!63904 (= e!34618 lt!11935)))

(declare-fun b!63905 () Bool)

(declare-fun e!34622 () Formula!6)

(declare-fun e!34621 () Formula!6)

(assert (=> b!63905 (= e!34622 e!34621)))

(declare-fun c!14017 () Bool)

(declare-fun lt!11937 () Bool)

(assert (=> b!63905 (= c!14017 lt!11937)))

(declare-fun lt!11938 () Formula!6)

(declare-fun e!34620 () Formula!6)

(assert (=> b!63905 (= lt!11938 e!34620)))

(declare-fun c!14022 () Bool)

(assert (=> b!63905 (= c!14022 (or lt!11937 (is-Implies!11 f!3964)))))

(declare-fun lt!11939 () Formula!6)

(assert (=> b!63905 (= lt!11939 e!34618)))

(declare-fun c!14019 () Bool)

(assert (=> b!63905 (= c!14019 (or lt!11937 (is-Implies!11 f!3964) (is-Not!11 f!3964)))))

(assert (=> b!63905 (= lt!11937 (is-Or!11 f!3964))))

(declare-fun b!63906 () Bool)

(assert (=> b!63906 (= e!34621 (Or!11 lt!11939 lt!11938))))

(declare-fun d!53272 () Bool)

(declare-fun lt!11932 () Formula!6)

(declare-fun isSimplified!1 (Formula!6) Bool)

(assert (=> d!53272 (isSimplified!1 lt!11932)))

(assert (=> d!53272 (= lt!11932 e!34622)))

(declare-fun c!14020 () Bool)

(assert (=> d!53272 (= c!14020 lt!11933)))

(declare-fun lt!11934 () Formula!6)

(assert (=> d!53272 (= lt!11934 e!34624)))

(declare-fun c!14021 () Bool)

(assert (=> d!53272 (= c!14021 (or lt!11933 (is-Or!11 f!3964) (is-Implies!11 f!3964)))))

(assert (=> d!53272 (= lt!11935 e!34623)))

(declare-fun c!14016 () Bool)

(assert (=> d!53272 (= c!14016 (or lt!11933 (is-Or!11 f!3964) (is-Implies!11 f!3964) (is-Not!11 f!3964)))))

(assert (=> d!53272 (= lt!11933 (is-And!11 f!3964))))

(assert (=> d!53272 (= (simplify!1 f!3964) lt!11932)))

(declare-fun b!63907 () Bool)

(assert (=> b!63907 (= e!34620 lt!11934)))

(declare-fun b!63908 () Bool)

(declare-fun res!29904 () Formula!6)

(assert (=> b!63908 (= e!34620 res!29904)))

(assert (=> b!63908 true))

(declare-fun b!63909 () Bool)

(assert (=> b!63909 (= e!34622 (And!11 lt!11935 lt!11934))))

(declare-fun b!63910 () Bool)

(declare-fun res!29902 () Formula!6)

(assert (=> b!63910 (= e!34618 res!29902)))

(assert (=> b!63910 true))

(declare-fun lt!11936 () Formula!6)

(declare-fun lt!11931 () Bool)

(declare-fun b!63911 () Bool)

(assert (=> b!63911 (= e!34621 (ite lt!11931 (Or!11 (Not!11 lt!11936) lt!11938) (ite (is-Not!11 f!3964) (Not!11 lt!11936) f!3964)))))

(assert (=> b!63911 (= lt!11936 e!34619)))

(declare-fun c!14018 () Bool)

(assert (=> b!63911 (= c!14018 (or lt!11931 (is-Not!11 f!3964)))))

(assert (=> b!63911 (= lt!11931 (is-Implies!11 f!3964))))

(declare-fun b!63912 () Bool)

(assert (=> b!63912 (= e!34619 lt!11939)))

(assert (= (and d!53272 c!14016) b!63903))

(assert (= (and d!53272 (not c!14016)) b!63901))

(assert (= (and d!53272 c!14021) b!63899))

(assert (= (and d!53272 (not c!14021)) b!63900))

(assert (= (and b!63905 c!14019) b!63904))

(assert (= (and b!63905 (not c!14019)) b!63910))

(assert (= (and b!63905 c!14022) b!63907))

(assert (= (and b!63905 (not c!14022)) b!63908))

(assert (= (and b!63911 c!14018) b!63912))

(assert (= (and b!63911 (not c!14018)) b!63902))

(assert (= (and b!63905 c!14017) b!63906))

(assert (= (and b!63905 (not c!14017)) b!63911))

(assert (= (and d!53272 c!14020) b!63909))

(assert (= (and d!53272 (not c!14020)) b!63905))

(declare-fun m!69103 () Bool)

(assert (=> b!63899 m!69103))

(declare-fun m!69105 () Bool)

(assert (=> b!63903 m!69105))

(declare-fun m!69107 () Bool)

(assert (=> d!53272 m!69107))

(assert (=> b!63626 d!53272))

(push 1)

(assert (not b!63688))

(assert (not b!63698))

(assert (not b!63701))

(assert (not b!63693))

(assert (not b!63830))

(assert (not b!63676))

(assert (not b!63703))

(assert (not b!63681))

(assert (not b!63700))

(assert (not b!63815))

(assert (not b!63796))

(assert (not b!63677))

(assert (not b!63705))

(assert (not b!63671))

(assert (not b!63699))

(assert (not d!53272))

(assert (not b!63899))

(assert (not b!63675))

(assert (not b!63697))

(assert (not b!63683))

(assert (not b!63679))

(assert (not b!63696))

(assert (not b!63869))

(assert (not b!63835))

(assert (not b!63854))

(assert (not b!63678))

(assert (not b!63674))

(assert (not b!63903))

(assert (not b!63710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!63913 () Bool)

(declare-fun e!34626 () Bool)

(declare-fun e!34628 () Bool)

(assert (=> b!63913 (= e!34626 e!34628)))

(declare-fun res!29915 () Bool)

(assert (=> b!63913 (=> (not res!29915) (not e!34628))))

(declare-fun lt!11941 () Bool)

(assert (=> b!63913 (= res!29915 (not lt!11941))))

(declare-fun b!63914 () Bool)

(declare-fun e!34643 () Bool)

(declare-fun lt!11949 () Bool)

(assert (=> b!63914 (= e!34643 lt!11949)))

(declare-fun b!63915 () Bool)

(declare-fun e!34641 () Bool)

(assert (=> b!63915 (= e!34641 lt!11949)))

(declare-fun b!63916 () Bool)

(declare-fun e!34634 () Bool)

(assert (=> b!63916 (= e!34634 (eval!0 (ite lt!11941 (lhs!821 (simplify!1 (lhs!822 f!3964))) (ite (is-Or!11 (simplify!1 (lhs!822 f!3964))) (lhs!823 (simplify!1 (lhs!822 f!3964))) (ite (is-Implies!11 (simplify!1 (lhs!822 f!3964))) (lhs!822 (simplify!1 (lhs!822 f!3964))) (f!4078 (simplify!1 (lhs!822 f!3964))))))))))

(declare-fun b!63917 () Bool)

(declare-fun e!34638 () Bool)

(declare-fun lt!11940 () Bool)

(declare-fun lt!11942 () Bool)

(assert (=> b!63917 (= e!34638 (or lt!11940 lt!11942))))

(declare-fun b!63918 () Bool)

(declare-fun e!34632 () Formula!6)

(assert (=> b!63918 (= e!34632 (rhs!823 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63919 () Bool)

(declare-fun e!34647 () Bool)

(declare-fun res!29914 () Bool)

(assert (=> b!63919 (= e!34647 res!29914)))

(assert (=> b!63919 true))

(declare-fun b!63920 () Bool)

(declare-fun e!34640 () Bool)

(declare-fun e!34639 () Bool)

(assert (=> b!63920 (= e!34640 e!34639)))

(declare-fun res!29909 () Bool)

(assert (=> b!63920 (=> (not res!29909) (not e!34639))))

(declare-fun lt!11944 () Bool)

(assert (=> b!63920 (= res!29909 (not lt!11944))))

(declare-fun b!63921 () Bool)

(declare-fun e!34648 () Bool)

(declare-fun e!34629 () Bool)

(assert (=> b!63921 (= e!34648 e!34629)))

(declare-fun c!14032 () Bool)

(declare-fun lt!11948 () Bool)

(assert (=> b!63921 (= c!14032 (or lt!11948 (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(declare-fun b!63922 () Bool)

(declare-fun e!34646 () Bool)

(declare-fun e!34636 () Bool)

(assert (=> b!63922 (= e!34646 e!34636)))

(declare-fun res!29907 () Bool)

(assert (=> b!63922 (=> (not res!29907) (not e!34636))))

(declare-fun lt!11943 () Bool)

(assert (=> b!63922 (= res!29907 (not lt!11943))))

(declare-fun b!63923 () Bool)

(declare-fun e!34625 () Bool)

(declare-fun res!29910 () Bool)

(assert (=> b!63923 (= e!34625 res!29910)))

(assert (=> b!63923 true))

(assert (=> b!63923 true))

(declare-fun b!63924 () Bool)

(declare-fun e!34635 () Bool)

(declare-fun lt!11953 () Bool)

(assert (=> b!63924 (= e!34635 lt!11953)))

(declare-fun b!63925 () Bool)

(declare-fun e!34630 () Bool)

(assert (=> b!63925 (= e!34630 lt!11949)))

(declare-fun b!63926 () Bool)

(assert (=> b!63926 (= e!34639 e!34648)))

(declare-fun res!29908 () Bool)

(assert (=> b!63926 (=> (not res!29908) (not e!34648))))

(assert (=> b!63926 (= res!29908 lt!11948)))

(assert (=> b!63926 (= lt!11948 (is-Implies!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63927 () Bool)

(declare-fun e!34644 () Bool)

(assert (=> b!63927 (= e!34638 e!34644)))

(declare-fun c!14035 () Bool)

(declare-fun lt!11951 () Bool)

(assert (=> b!63927 (= c!14035 lt!11951)))

(declare-fun lt!11947 () Bool)

(assert (=> b!63927 (= lt!11947 e!34625)))

(declare-fun c!14031 () Bool)

(assert (=> b!63927 (= c!14031 (or lt!11951 (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(assert (=> b!63927 (= lt!11951 (is-Implies!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63928 () Bool)

(declare-fun res!29919 () Bool)

(assert (=> b!63928 (= e!34630 res!29919)))

(assert (=> b!63928 true))

(declare-fun b!63929 () Bool)

(declare-fun e!34645 () Formula!6)

(assert (=> b!63929 (= e!34645 (rhs!821 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63930 () Bool)

(declare-fun e!34637 () Bool)

(assert (=> b!63930 (= e!34637 (and lt!11949 lt!11953))))

(declare-fun b!63931 () Bool)

(declare-fun lt!11950 () Bool)

(assert (=> b!63931 (= e!34647 lt!11950)))

(declare-fun b!63932 () Bool)

(declare-fun e!34642 () Bool)

(declare-fun res!29922 () Bool)

(assert (=> b!63932 (= e!34642 res!29922)))

(assert (=> b!63932 true))

(declare-fun b!63933 () Bool)

(declare-fun e!34627 () Bool)

(assert (=> b!63933 (= e!34627 (not e!34643))))

(declare-fun c!14025 () Bool)

(declare-fun lt!11946 () Bool)

(assert (=> b!63933 (= c!14025 (or lt!11946 (is-Implies!11 (simplify!1 (lhs!822 f!3964))) (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(declare-fun b!63934 () Bool)

(declare-fun res!29906 () Bool)

(assert (=> b!63934 (= e!34634 res!29906)))

(assert (=> b!63934 true))

(declare-fun b!63935 () Bool)

(assert (=> b!63935 (= e!34642 (eval!0 e!34645))))

(declare-fun c!14027 () Bool)

(declare-fun lt!11945 () Bool)

(assert (=> b!63935 (= c!14027 lt!11945)))

(declare-fun b!63936 () Bool)

(assert (=> b!63936 (= e!34628 e!34646)))

(declare-fun res!29923 () Bool)

(assert (=> b!63936 (=> res!29923 e!34646)))

(assert (=> b!63936 (= res!29923 (and lt!11943 (not lt!11950)))))

(assert (=> b!63936 (= lt!11950 e!34630)))

(declare-fun c!14023 () Bool)

(assert (=> b!63936 (= c!14023 (or lt!11943 (is-Implies!11 (simplify!1 (lhs!822 f!3964))) (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(assert (=> b!63936 (= lt!11943 (is-Or!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63937 () Bool)

(declare-fun res!29918 () Bool)

(assert (=> b!63937 (= e!34635 res!29918)))

(assert (=> b!63937 true))

(declare-fun b!63938 () Bool)

(assert (=> b!63938 (= e!34645 e!34632)))

(declare-fun c!14034 () Bool)

(assert (=> b!63938 (= c!14034 e!34627)))

(declare-fun res!29921 () Bool)

(assert (=> b!63938 (=> (not res!29921) (not e!34627))))

(assert (=> b!63938 (= res!29921 lt!11946)))

(assert (=> b!63938 (= lt!11946 (is-Or!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63939 () Bool)

(declare-fun res!29913 () Bool)

(assert (=> b!63939 (= e!34643 res!29913)))

(assert (=> b!63939 true))

(declare-fun b!63940 () Bool)

(assert (=> b!63940 (= e!34637 e!34638)))

(declare-fun c!14036 () Bool)

(assert (=> b!63940 (= c!14036 lt!11944)))

(assert (=> b!63940 (= lt!11942 e!34635)))

(declare-fun c!14030 () Bool)

(assert (=> b!63940 (= c!14030 e!34640)))

(declare-fun res!29917 () Bool)

(assert (=> b!63940 (=> res!29917 e!34640)))

(assert (=> b!63940 (= res!29917 (and lt!11944 (not lt!11940)))))

(assert (=> b!63940 (= lt!11940 e!34641)))

(declare-fun c!14029 () Bool)

(assert (=> b!63940 (= c!14029 (or lt!11944 (is-Implies!11 (simplify!1 (lhs!822 f!3964))) (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(assert (=> b!63940 (= lt!11944 (is-Or!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63941 () Bool)

(declare-fun res!29920 () Bool)

(assert (=> b!63941 (= e!34629 res!29920)))

(assert (=> b!63941 true))

(declare-fun b!63942 () Bool)

(assert (=> b!63942 (= e!34625 lt!11940)))

(declare-fun b!63943 () Bool)

(declare-fun e!34633 () Bool)

(assert (=> b!63943 (= e!34636 e!34633)))

(declare-fun res!29911 () Bool)

(assert (=> b!63943 (=> (not res!29911) (not e!34633))))

(declare-fun lt!11952 () Bool)

(assert (=> b!63943 (= res!29911 lt!11952)))

(assert (=> b!63943 (= lt!11952 (is-Implies!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63944 () Bool)

(declare-fun e!34631 () Bool)

(assert (=> b!63944 (= e!34631 (not lt!11947))))

(declare-fun b!63945 () Bool)

(assert (=> b!63945 (= e!34644 e!34631)))

(declare-fun c!14024 () Bool)

(assert (=> b!63945 (= c!14024 (is-Not!11 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63946 () Bool)

(assert (=> b!63946 (= e!34644 (or (not lt!11947) lt!11942))))

(declare-fun d!53274 () Bool)

(declare-fun c!14026 () Bool)

(assert (=> d!53274 (= c!14026 lt!11941)))

(assert (=> d!53274 (= lt!11953 e!34642)))

(declare-fun c!14028 () Bool)

(assert (=> d!53274 (= c!14028 e!34626)))

(declare-fun res!29912 () Bool)

(assert (=> d!53274 (=> res!29912 e!34626)))

(assert (=> d!53274 (= res!29912 lt!11945)))

(assert (=> d!53274 (= lt!11945 (and lt!11941 lt!11949))))

(assert (=> d!53274 (= lt!11949 e!34634)))

(declare-fun c!14037 () Bool)

(assert (=> d!53274 (= c!14037 (or lt!11941 (is-Or!11 (simplify!1 (lhs!822 f!3964))) (is-Implies!11 (simplify!1 (lhs!822 f!3964))) (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(assert (=> d!53274 (= lt!11941 (is-And!11 (simplify!1 (lhs!822 f!3964))))))

(assert (=> d!53274 (= (eval!0 (simplify!1 (lhs!822 f!3964))) e!34637)))

(declare-fun b!63947 () Bool)

(assert (=> b!63947 (= e!34633 e!34647)))

(declare-fun c!14033 () Bool)

(assert (=> b!63947 (= c!14033 (or lt!11952 (is-Not!11 (simplify!1 (lhs!822 f!3964)))))))

(declare-fun b!63948 () Bool)

(assert (=> b!63948 (= e!34632 (rhs!822 (simplify!1 (lhs!822 f!3964))))))

(declare-fun b!63949 () Bool)

(declare-fun res!29916 () Bool)

(assert (=> b!63949 (= e!34641 res!29916)))

(assert (=> b!63949 true))

(declare-fun b!63950 () Bool)

(assert (=> b!63950 (= e!34631 (evalLit!0 (id!4785 (simplify!1 (lhs!822 f!3964)))))))

(declare-fun b!63951 () Bool)

(assert (=> b!63951 (= e!34629 lt!11940)))

(assert (= (and d!53274 c!14037) b!63916))

(assert (= (and d!53274 (not c!14037)) b!63934))

(assert (= (and d!53274 (not res!29912)) b!63913))

(assert (= (and b!63913 res!29915) b!63936))

(assert (= (and b!63936 c!14023) b!63925))

(assert (= (and b!63936 (not c!14023)) b!63928))

(assert (= (and b!63936 (not res!29923)) b!63922))

(assert (= (and b!63922 res!29907) b!63943))

(assert (= (and b!63943 res!29911) b!63947))

(assert (= (and b!63947 c!14033) b!63931))

(assert (= (and b!63947 (not c!14033)) b!63919))

(assert (= (and b!63938 res!29921) b!63933))

(assert (= (and b!63933 c!14025) b!63914))

(assert (= (and b!63933 (not c!14025)) b!63939))

(assert (= (and b!63938 c!14034) b!63918))

(assert (= (and b!63938 (not c!14034)) b!63948))

(assert (= (and b!63935 c!14027) b!63929))

(assert (= (and b!63935 (not c!14027)) b!63938))

(assert (= (and d!53274 c!14028) b!63935))

(assert (= (and d!53274 (not c!14028)) b!63932))

(assert (= (and b!63940 c!14029) b!63915))

(assert (= (and b!63940 (not c!14029)) b!63949))

(assert (= (and b!63940 (not res!29917)) b!63920))

(assert (= (and b!63920 res!29909) b!63926))

(assert (= (and b!63926 res!29908) b!63921))

(assert (= (and b!63921 c!14032) b!63951))

(assert (= (and b!63921 (not c!14032)) b!63941))

(assert (= (and b!63940 c!14030) b!63924))

(assert (= (and b!63940 (not c!14030)) b!63937))

(assert (= (and b!63927 c!14031) b!63942))

(assert (= (and b!63927 (not c!14031)) b!63923))

(assert (= (and b!63945 c!14024) b!63944))

(assert (= (and b!63945 (not c!14024)) b!63950))

(assert (= (and b!63927 c!14035) b!63946))

(assert (= (and b!63927 (not c!14035)) b!63945))

(assert (= (and b!63940 c!14036) b!63917))

(assert (= (and b!63940 (not c!14036)) b!63927))

(assert (= (and d!53274 c!14026) b!63930))

(assert (= (and d!53274 (not c!14026)) b!63940))

(declare-fun m!69109 () Bool)

(assert (=> b!63916 m!69109))

(declare-fun m!69111 () Bool)

(assert (=> b!63935 m!69111))

(declare-fun m!69113 () Bool)

(assert (=> b!63950 m!69113))

(assert (=> b!63671 d!53274))

(declare-fun b!63952 () Bool)

(declare-fun e!34655 () Formula!6)

(declare-fun lt!11956 () Bool)

(assert (=> b!63952 (= e!34655 (simplify!1 (ite lt!11956 (rhs!821 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964))))))))

(declare-fun b!63953 () Bool)

(declare-fun res!29926 () Formula!6)

(assert (=> b!63953 (= e!34655 res!29926)))

(assert (=> b!63953 true))

(declare-fun b!63954 () Bool)

(declare-fun e!34654 () Formula!6)

(declare-fun res!29924 () Formula!6)

(assert (=> b!63954 (= e!34654 res!29924)))

(assert (=> b!63954 true))

(declare-fun b!63955 () Bool)

(declare-fun e!34650 () Formula!6)

(declare-fun res!29928 () Formula!6)

(assert (=> b!63955 (= e!34650 res!29928)))

(assert (=> b!63955 true))

(assert (=> b!63955 true))

(declare-fun b!63956 () Bool)

(assert (=> b!63956 (= e!34654 (simplify!1 (ite lt!11956 (lhs!821 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!63957 () Bool)

(declare-fun e!34649 () Formula!6)

(declare-fun lt!11958 () Formula!6)

(assert (=> b!63957 (= e!34649 lt!11958)))

(declare-fun b!63958 () Bool)

(declare-fun e!34653 () Formula!6)

(declare-fun e!34652 () Formula!6)

(assert (=> b!63958 (= e!34653 e!34652)))

(declare-fun c!14039 () Bool)

(declare-fun lt!11960 () Bool)

(assert (=> b!63958 (= c!14039 lt!11960)))

(declare-fun lt!11961 () Formula!6)

(declare-fun e!34651 () Formula!6)

(assert (=> b!63958 (= lt!11961 e!34651)))

(declare-fun c!14044 () Bool)

(assert (=> b!63958 (= c!14044 (or lt!11960 (is-Implies!11 (lhs!822 f!3964))))))

(declare-fun lt!11962 () Formula!6)

(assert (=> b!63958 (= lt!11962 e!34649)))

(declare-fun c!14041 () Bool)

(assert (=> b!63958 (= c!14041 (or lt!11960 (is-Implies!11 (lhs!822 f!3964)) (is-Not!11 (lhs!822 f!3964))))))

(assert (=> b!63958 (= lt!11960 (is-Or!11 (lhs!822 f!3964)))))

(declare-fun b!63959 () Bool)

(assert (=> b!63959 (= e!34652 (Or!11 lt!11962 lt!11961))))

(declare-fun d!53276 () Bool)

(declare-fun lt!11955 () Formula!6)

(assert (=> d!53276 (isSimplified!1 lt!11955)))

(assert (=> d!53276 (= lt!11955 e!34653)))

(declare-fun c!14042 () Bool)

(assert (=> d!53276 (= c!14042 lt!11956)))

(declare-fun lt!11957 () Formula!6)

(assert (=> d!53276 (= lt!11957 e!34655)))

(declare-fun c!14043 () Bool)

(assert (=> d!53276 (= c!14043 (or lt!11956 (is-Or!11 (lhs!822 f!3964)) (is-Implies!11 (lhs!822 f!3964))))))

(assert (=> d!53276 (= lt!11958 e!34654)))

(declare-fun c!14038 () Bool)

(assert (=> d!53276 (= c!14038 (or lt!11956 (is-Or!11 (lhs!822 f!3964)) (is-Implies!11 (lhs!822 f!3964)) (is-Not!11 (lhs!822 f!3964))))))

(assert (=> d!53276 (= lt!11956 (is-And!11 (lhs!822 f!3964)))))

(assert (=> d!53276 (= (simplify!1 (lhs!822 f!3964)) lt!11955)))

(declare-fun b!63960 () Bool)

(assert (=> b!63960 (= e!34651 lt!11957)))

(declare-fun b!63961 () Bool)

(declare-fun res!29927 () Formula!6)

(assert (=> b!63961 (= e!34651 res!29927)))

(assert (=> b!63961 true))

(declare-fun b!63962 () Bool)

(assert (=> b!63962 (= e!34653 (And!11 lt!11958 lt!11957))))

(declare-fun b!63963 () Bool)

(declare-fun res!29925 () Formula!6)

(assert (=> b!63963 (= e!34649 res!29925)))

(assert (=> b!63963 true))

(declare-fun b!63964 () Bool)

(declare-fun lt!11954 () Bool)

(declare-fun lt!11959 () Formula!6)

(assert (=> b!63964 (= e!34652 (ite lt!11954 (Or!11 (Not!11 lt!11959) lt!11961) (ite (is-Not!11 (lhs!822 f!3964)) (Not!11 lt!11959) (lhs!822 f!3964))))))

(assert (=> b!63964 (= lt!11959 e!34650)))

(declare-fun c!14040 () Bool)

(assert (=> b!63964 (= c!14040 (or lt!11954 (is-Not!11 (lhs!822 f!3964))))))

(assert (=> b!63964 (= lt!11954 (is-Implies!11 (lhs!822 f!3964)))))

(declare-fun b!63965 () Bool)

(assert (=> b!63965 (= e!34650 lt!11962)))

(assert (= (and d!53276 c!14038) b!63956))

(assert (= (and d!53276 (not c!14038)) b!63954))

(assert (= (and d!53276 c!14043) b!63952))

(assert (= (and d!53276 (not c!14043)) b!63953))

(assert (= (and b!63958 c!14041) b!63957))

(assert (= (and b!63958 (not c!14041)) b!63963))

(assert (= (and b!63958 c!14044) b!63960))

(assert (= (and b!63958 (not c!14044)) b!63961))

(assert (= (and b!63964 c!14040) b!63965))

(assert (= (and b!63964 (not c!14040)) b!63955))

(assert (= (and b!63958 c!14039) b!63959))

(assert (= (and b!63958 (not c!14039)) b!63964))

(assert (= (and d!53276 c!14042) b!63962))

(assert (= (and d!53276 (not c!14042)) b!63958))

(declare-fun m!69115 () Bool)

(assert (=> b!63952 m!69115))

(declare-fun m!69117 () Bool)

(assert (=> b!63956 m!69117))

(declare-fun m!69119 () Bool)

(assert (=> d!53276 m!69119))

(assert (=> b!63671 d!53276))

(declare-fun e!34666 () Bool)

(declare-fun lt!11971 () Bool)

(declare-fun b!63966 () Bool)

(assert (=> b!63966 (= e!34666 (= lt!11971 (eval!0 (simplify!1 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))))

(declare-fun b!63967 () Bool)

(declare-fun e!34665 () Bool)

(declare-fun e!34660 () Bool)

(declare-fun e!34661 () Bool)

(assert (=> b!63967 (= e!34665 (= e!34660 e!34661))))

(declare-fun c!14049 () Bool)

(declare-fun lt!11966 () Bool)

(assert (=> b!63967 (= c!14049 (or lt!11966 (and (not lt!11966) (is-Literal!5 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))))

(declare-fun c!14053 () Bool)

(assert (=> b!63967 (= c!14053 (or lt!11966 (is-Literal!5 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))

(declare-fun b!63968 () Bool)

(declare-fun e!34663 () Bool)

(declare-fun res!29934 () Bool)

(assert (=> b!63968 (= e!34663 res!29934)))

(assert (=> b!63968 true))

(declare-fun e!34657 () Bool)

(declare-fun b!63969 () Bool)

(assert (=> b!63969 (= e!34657 (simplifySemantics!0 (ite lt!11966 (rhs!821 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (ite (is-Implies!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (rhs!822 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (ite (is-Or!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (rhs!823 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (f!4078 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))))))

(declare-fun b!63970 () Bool)

(assert (=> b!63970 (= e!34660 (eval!0 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun b!63971 () Bool)

(assert (=> b!63971 (= e!34663 (eval!0 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun d!53278 () Bool)

(assert (=> d!53278 e!34665))

(declare-fun c!14055 () Bool)

(assert (=> d!53278 (= c!14055 (or lt!11966 (is-Literal!5 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))

(declare-fun lt!11969 () Formula!6)

(declare-fun e!34664 () Formula!6)

(assert (=> d!53278 (= lt!11969 e!34664)))

(declare-fun c!14054 () Bool)

(assert (=> d!53278 (= c!14054 (or lt!11966 (is-Literal!5 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))

(declare-fun lt!11963 () Bool)

(declare-fun e!34656 () Bool)

(assert (=> d!53278 (= lt!11963 e!34656)))

(declare-fun c!14052 () Bool)

(assert (=> d!53278 (= c!14052 (or lt!11966 (and (not (is-Literal!5 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))) (or (is-Implies!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (is-Or!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))))

(declare-fun lt!11965 () Bool)

(assert (=> d!53278 (= lt!11965 e!34657)))

(declare-fun c!14047 () Bool)

(assert (=> d!53278 (= c!14047 (or lt!11966 (not (is-Literal!5 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))))

(assert (=> d!53278 (= lt!11966 (is-And!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(assert (=> d!53278 (= (simplifySemantics!0 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) true)))

(declare-fun b!63972 () Bool)

(declare-fun lt!11970 () Bool)

(declare-fun lt!11964 () Formula!6)

(assert (=> b!63972 (= e!34666 (= lt!11970 (eval!0 lt!11964)))))

(declare-fun b!63973 () Bool)

(assert (=> b!63973 (= e!34664 (simplify!1 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun b!63974 () Bool)

(assert (=> b!63974 (= e!34656 (simplifySemantics!0 (ite lt!11966 (lhs!821 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (ite (is-Implies!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (lhs!822 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))) (lhs!823 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))))

(declare-fun b!63975 () Bool)

(declare-fun e!34659 () Bool)

(assert (=> b!63975 (= e!34665 e!34659)))

(declare-fun c!14051 () Bool)

(declare-fun lt!11968 () Bool)

(assert (=> b!63975 (= c!14051 lt!11968)))

(declare-fun e!34662 () Bool)

(assert (=> b!63975 (= lt!11971 e!34662)))

(declare-fun c!14048 () Bool)

(declare-fun lt!11967 () Bool)

(assert (=> b!63975 (= c!14048 (or lt!11967 (and (not lt!11968) (not (is-Or!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))))

(assert (=> b!63975 (= lt!11967 lt!11968)))

(declare-fun e!34658 () Formula!6)

(assert (=> b!63975 (= lt!11964 e!34658)))

(declare-fun c!14045 () Bool)

(assert (=> b!63975 (= c!14045 (or lt!11968 (is-Or!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))

(assert (=> b!63975 (= lt!11970 e!34663)))

(declare-fun c!14046 () Bool)

(assert (=> b!63975 (= c!14046 (or lt!11968 (is-Or!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))

(assert (=> b!63975 (= lt!11968 (is-Implies!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun b!63976 () Bool)

(assert (=> b!63976 (= e!34662 (eval!0 (ite lt!11967 lt!11964 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)))))))))

(declare-fun b!63977 () Bool)

(declare-fun res!29929 () Formula!6)

(assert (=> b!63977 (= e!34658 res!29929)))

(assert (=> b!63977 true))

(declare-fun b!63978 () Bool)

(assert (=> b!63978 (= e!34661 (eval!0 lt!11969))))

(declare-fun b!63979 () Bool)

(declare-fun res!29932 () Bool)

(assert (=> b!63979 (= e!34661 res!29932)))

(assert (=> b!63979 true))

(declare-fun b!63980 () Bool)

(declare-fun res!29930 () Formula!6)

(assert (=> b!63980 (= e!34664 res!29930)))

(assert (=> b!63980 true))

(declare-fun b!63981 () Bool)

(declare-fun res!29936 () Bool)

(assert (=> b!63981 (= e!34660 res!29936)))

(assert (=> b!63981 true))

(declare-fun b!63982 () Bool)

(declare-fun res!29933 () Bool)

(assert (=> b!63982 (= e!34656 res!29933)))

(assert (=> b!63982 true))

(declare-fun b!63983 () Bool)

(assert (=> b!63983 (= e!34658 (simplify!1 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun b!63984 () Bool)

(assert (=> b!63984 (= e!34659 (= lt!11970 lt!11971))))

(declare-fun b!63985 () Bool)

(assert (=> b!63985 (= e!34659 e!34666)))

(declare-fun c!14050 () Bool)

(assert (=> b!63985 (= c!14050 (is-Or!11 (ite lt!11842 (lhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964))))))))

(declare-fun b!63986 () Bool)

(declare-fun res!29935 () Bool)

(assert (=> b!63986 (= e!34657 res!29935)))

(assert (=> b!63986 true))

(declare-fun b!63987 () Bool)

(declare-fun res!29931 () Bool)

(assert (=> b!63987 (= e!34662 res!29931)))

(assert (=> b!63987 true))

(assert (=> b!63987 true))

(assert (= (and d!53278 c!14047) b!63969))

(assert (= (and d!53278 (not c!14047)) b!63986))

(assert (= (and d!53278 c!14052) b!63974))

(assert (= (and d!53278 (not c!14052)) b!63982))

(assert (= (and d!53278 c!14054) b!63973))

(assert (= (and d!53278 (not c!14054)) b!63980))

(assert (= (and b!63967 c!14053) b!63970))

(assert (= (and b!63967 (not c!14053)) b!63981))

(assert (= (and b!63967 c!14049) b!63978))

(assert (= (and b!63967 (not c!14049)) b!63979))

(assert (= (and b!63975 c!14046) b!63971))

(assert (= (and b!63975 (not c!14046)) b!63968))

(assert (= (and b!63975 c!14045) b!63983))

(assert (= (and b!63975 (not c!14045)) b!63977))

(assert (= (and b!63975 c!14048) b!63976))

(assert (= (and b!63975 (not c!14048)) b!63987))

(assert (= (and b!63985 c!14050) b!63972))

(assert (= (and b!63985 (not c!14050)) b!63966))

(assert (= (and b!63975 c!14051) b!63984))

(assert (= (and b!63975 (not c!14051)) b!63985))

(assert (= (and d!53278 c!14055) b!63967))

(assert (= (and d!53278 (not c!14055)) b!63975))

(declare-fun m!69121 () Bool)

(assert (=> b!63969 m!69121))

(declare-fun m!69123 () Bool)

(assert (=> b!63978 m!69123))

(declare-fun m!69125 () Bool)

(assert (=> b!63970 m!69125))

(declare-fun m!69127 () Bool)

(assert (=> b!63983 m!69127))

(declare-fun m!69129 () Bool)

(assert (=> b!63974 m!69129))

(declare-fun m!69131 () Bool)

(assert (=> b!63976 m!69131))

(assert (=> b!63971 m!69125))

(assert (=> b!63973 m!69127))

(declare-fun m!69133 () Bool)

(assert (=> b!63972 m!69133))

(assert (=> b!63966 m!69127))

(assert (=> b!63966 m!69127))

(declare-fun m!69135 () Bool)

(assert (=> b!63966 m!69135))

(assert (=> b!63679 d!53278))

(declare-fun b!63988 () Bool)

(declare-fun e!34668 () Bool)

(declare-fun e!34670 () Bool)

(assert (=> b!63988 (= e!34668 e!34670)))

(declare-fun res!29946 () Bool)

(assert (=> b!63988 (=> (not res!29946) (not e!34670))))

(declare-fun lt!11973 () Bool)

(assert (=> b!63988 (= res!29946 (not lt!11973))))

(declare-fun b!63989 () Bool)

(declare-fun e!34685 () Bool)

(declare-fun lt!11981 () Bool)

(assert (=> b!63989 (= e!34685 lt!11981)))

(declare-fun b!63990 () Bool)

(declare-fun e!34683 () Bool)

(assert (=> b!63990 (= e!34683 lt!11981)))

(declare-fun b!63991 () Bool)

(declare-fun e!34676 () Bool)

(assert (=> b!63991 (= e!34676 (eval!0 (ite lt!11973 (lhs!821 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (lhs!823 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (lhs!822 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!63992 () Bool)

(declare-fun e!34680 () Bool)

(declare-fun lt!11972 () Bool)

(declare-fun lt!11974 () Bool)

(assert (=> b!63992 (= e!34680 (or lt!11972 lt!11974))))

(declare-fun b!63993 () Bool)

(declare-fun e!34674 () Formula!6)

(assert (=> b!63993 (= e!34674 (rhs!823 (lhs!822 f!3964)))))

(declare-fun b!63994 () Bool)

(declare-fun e!34689 () Bool)

(declare-fun res!29945 () Bool)

(assert (=> b!63994 (= e!34689 res!29945)))

(assert (=> b!63994 true))

(declare-fun b!63995 () Bool)

(declare-fun e!34682 () Bool)

(declare-fun e!34681 () Bool)

(assert (=> b!63995 (= e!34682 e!34681)))

(declare-fun res!29940 () Bool)

(assert (=> b!63995 (=> (not res!29940) (not e!34681))))

(declare-fun lt!11976 () Bool)

(assert (=> b!63995 (= res!29940 (not lt!11976))))

(declare-fun b!63996 () Bool)

(declare-fun e!34690 () Bool)

(declare-fun e!34671 () Bool)

(assert (=> b!63996 (= e!34690 e!34671)))

(declare-fun c!14065 () Bool)

(declare-fun lt!11980 () Bool)

(assert (=> b!63996 (= c!14065 (or lt!11980 (is-Not!11 (lhs!822 f!3964))))))

(declare-fun b!63997 () Bool)

(declare-fun e!34688 () Bool)

(declare-fun e!34678 () Bool)

(assert (=> b!63997 (= e!34688 e!34678)))

(declare-fun res!29938 () Bool)

(assert (=> b!63997 (=> (not res!29938) (not e!34678))))

(declare-fun lt!11975 () Bool)

(assert (=> b!63997 (= res!29938 (not lt!11975))))

(declare-fun b!63998 () Bool)

(declare-fun e!34667 () Bool)

(declare-fun res!29941 () Bool)

(assert (=> b!63998 (= e!34667 res!29941)))

(assert (=> b!63998 true))

(assert (=> b!63998 true))

(declare-fun b!63999 () Bool)

(declare-fun e!34677 () Bool)

(declare-fun lt!11985 () Bool)

(assert (=> b!63999 (= e!34677 lt!11985)))

(declare-fun b!64000 () Bool)

(declare-fun e!34672 () Bool)

(assert (=> b!64000 (= e!34672 lt!11981)))

(declare-fun b!64001 () Bool)

(assert (=> b!64001 (= e!34681 e!34690)))

(declare-fun res!29939 () Bool)

(assert (=> b!64001 (=> (not res!29939) (not e!34690))))

(assert (=> b!64001 (= res!29939 lt!11980)))

(assert (=> b!64001 (= lt!11980 (is-Implies!11 (lhs!822 f!3964)))))

(declare-fun b!64002 () Bool)

(declare-fun e!34686 () Bool)

(assert (=> b!64002 (= e!34680 e!34686)))

(declare-fun c!14068 () Bool)

(declare-fun lt!11983 () Bool)

(assert (=> b!64002 (= c!14068 lt!11983)))

(declare-fun lt!11979 () Bool)

(assert (=> b!64002 (= lt!11979 e!34667)))

(declare-fun c!14064 () Bool)

(assert (=> b!64002 (= c!14064 (or lt!11983 (is-Not!11 (lhs!822 f!3964))))))

(assert (=> b!64002 (= lt!11983 (is-Implies!11 (lhs!822 f!3964)))))

(declare-fun b!64003 () Bool)

(declare-fun res!29950 () Bool)

(assert (=> b!64003 (= e!34672 res!29950)))

(assert (=> b!64003 true))

(declare-fun b!64004 () Bool)

(declare-fun e!34687 () Formula!6)

(assert (=> b!64004 (= e!34687 (rhs!821 (lhs!822 f!3964)))))

(declare-fun b!64005 () Bool)

(declare-fun e!34679 () Bool)

(assert (=> b!64005 (= e!34679 (and lt!11981 lt!11985))))

(declare-fun b!64006 () Bool)

(declare-fun lt!11982 () Bool)

(assert (=> b!64006 (= e!34689 lt!11982)))

(declare-fun b!64007 () Bool)

(declare-fun e!34684 () Bool)

(declare-fun res!29953 () Bool)

(assert (=> b!64007 (= e!34684 res!29953)))

(assert (=> b!64007 true))

(declare-fun b!64008 () Bool)

(declare-fun e!34669 () Bool)

(assert (=> b!64008 (= e!34669 (not e!34685))))

(declare-fun c!14058 () Bool)

(declare-fun lt!11978 () Bool)

(assert (=> b!64008 (= c!14058 (or lt!11978 (is-Implies!11 (lhs!822 f!3964)) (is-Not!11 (lhs!822 f!3964))))))

(declare-fun b!64009 () Bool)

(declare-fun res!29937 () Bool)

(assert (=> b!64009 (= e!34676 res!29937)))

(assert (=> b!64009 true))

(declare-fun b!64010 () Bool)

(assert (=> b!64010 (= e!34684 (eval!0 e!34687))))

(declare-fun c!14060 () Bool)

(declare-fun lt!11977 () Bool)

(assert (=> b!64010 (= c!14060 lt!11977)))

(declare-fun b!64011 () Bool)

(assert (=> b!64011 (= e!34670 e!34688)))

(declare-fun res!29954 () Bool)

(assert (=> b!64011 (=> res!29954 e!34688)))

(assert (=> b!64011 (= res!29954 (and lt!11975 (not lt!11982)))))

(assert (=> b!64011 (= lt!11982 e!34672)))

(declare-fun c!14056 () Bool)

(assert (=> b!64011 (= c!14056 (or lt!11975 (is-Implies!11 (lhs!822 f!3964)) (is-Not!11 (lhs!822 f!3964))))))

(assert (=> b!64011 (= lt!11975 (is-Or!11 (lhs!822 f!3964)))))

(declare-fun b!64012 () Bool)

(declare-fun res!29949 () Bool)

(assert (=> b!64012 (= e!34677 res!29949)))

(assert (=> b!64012 true))

(declare-fun b!64013 () Bool)

(assert (=> b!64013 (= e!34687 e!34674)))

(declare-fun c!14067 () Bool)

(assert (=> b!64013 (= c!14067 e!34669)))

(declare-fun res!29952 () Bool)

(assert (=> b!64013 (=> (not res!29952) (not e!34669))))

(assert (=> b!64013 (= res!29952 lt!11978)))

(assert (=> b!64013 (= lt!11978 (is-Or!11 (lhs!822 f!3964)))))

(declare-fun b!64014 () Bool)

(declare-fun res!29944 () Bool)

(assert (=> b!64014 (= e!34685 res!29944)))

(assert (=> b!64014 true))

(declare-fun b!64015 () Bool)

(assert (=> b!64015 (= e!34679 e!34680)))

(declare-fun c!14069 () Bool)

(assert (=> b!64015 (= c!14069 lt!11976)))

(assert (=> b!64015 (= lt!11974 e!34677)))

(declare-fun c!14063 () Bool)

(assert (=> b!64015 (= c!14063 e!34682)))

(declare-fun res!29948 () Bool)

(assert (=> b!64015 (=> res!29948 e!34682)))

(assert (=> b!64015 (= res!29948 (and lt!11976 (not lt!11972)))))

(assert (=> b!64015 (= lt!11972 e!34683)))

(declare-fun c!14062 () Bool)

(assert (=> b!64015 (= c!14062 (or lt!11976 (is-Implies!11 (lhs!822 f!3964)) (is-Not!11 (lhs!822 f!3964))))))

(assert (=> b!64015 (= lt!11976 (is-Or!11 (lhs!822 f!3964)))))

(declare-fun b!64016 () Bool)

(declare-fun res!29951 () Bool)

(assert (=> b!64016 (= e!34671 res!29951)))

(assert (=> b!64016 true))

(declare-fun b!64017 () Bool)

(assert (=> b!64017 (= e!34667 lt!11972)))

(declare-fun b!64018 () Bool)

(declare-fun e!34675 () Bool)

(assert (=> b!64018 (= e!34678 e!34675)))

(declare-fun res!29942 () Bool)

(assert (=> b!64018 (=> (not res!29942) (not e!34675))))

(declare-fun lt!11984 () Bool)

(assert (=> b!64018 (= res!29942 lt!11984)))

(assert (=> b!64018 (= lt!11984 (is-Implies!11 (lhs!822 f!3964)))))

(declare-fun b!64019 () Bool)

(declare-fun e!34673 () Bool)

(assert (=> b!64019 (= e!34673 (not lt!11979))))

(declare-fun b!64020 () Bool)

(assert (=> b!64020 (= e!34686 e!34673)))

(declare-fun c!14057 () Bool)

(assert (=> b!64020 (= c!14057 (is-Not!11 (lhs!822 f!3964)))))

(declare-fun b!64021 () Bool)

(assert (=> b!64021 (= e!34686 (or (not lt!11979) lt!11974))))

(declare-fun d!53280 () Bool)

(declare-fun c!14059 () Bool)

(assert (=> d!53280 (= c!14059 lt!11973)))

(assert (=> d!53280 (= lt!11985 e!34684)))

(declare-fun c!14061 () Bool)

(assert (=> d!53280 (= c!14061 e!34668)))

(declare-fun res!29943 () Bool)

(assert (=> d!53280 (=> res!29943 e!34668)))

(assert (=> d!53280 (= res!29943 lt!11977)))

(assert (=> d!53280 (= lt!11977 (and lt!11973 lt!11981))))

(assert (=> d!53280 (= lt!11981 e!34676)))

(declare-fun c!14070 () Bool)

(assert (=> d!53280 (= c!14070 (or lt!11973 (is-Or!11 (lhs!822 f!3964)) (is-Implies!11 (lhs!822 f!3964)) (is-Not!11 (lhs!822 f!3964))))))

(assert (=> d!53280 (= lt!11973 (is-And!11 (lhs!822 f!3964)))))

(assert (=> d!53280 (= (eval!0 (lhs!822 f!3964)) e!34679)))

(declare-fun b!64022 () Bool)

(assert (=> b!64022 (= e!34675 e!34689)))

(declare-fun c!14066 () Bool)

(assert (=> b!64022 (= c!14066 (or lt!11984 (is-Not!11 (lhs!822 f!3964))))))

(declare-fun b!64023 () Bool)

(assert (=> b!64023 (= e!34674 (rhs!822 (lhs!822 f!3964)))))

(declare-fun b!64024 () Bool)

(declare-fun res!29947 () Bool)

(assert (=> b!64024 (= e!34683 res!29947)))

(assert (=> b!64024 true))

(declare-fun b!64025 () Bool)

(assert (=> b!64025 (= e!34673 (evalLit!0 (id!4785 (lhs!822 f!3964))))))

(declare-fun b!64026 () Bool)

(assert (=> b!64026 (= e!34671 lt!11972)))

(assert (= (and d!53280 c!14070) b!63991))

(assert (= (and d!53280 (not c!14070)) b!64009))

(assert (= (and d!53280 (not res!29943)) b!63988))

(assert (= (and b!63988 res!29946) b!64011))

(assert (= (and b!64011 c!14056) b!64000))

(assert (= (and b!64011 (not c!14056)) b!64003))

(assert (= (and b!64011 (not res!29954)) b!63997))

(assert (= (and b!63997 res!29938) b!64018))

(assert (= (and b!64018 res!29942) b!64022))

(assert (= (and b!64022 c!14066) b!64006))

(assert (= (and b!64022 (not c!14066)) b!63994))

(assert (= (and b!64013 res!29952) b!64008))

(assert (= (and b!64008 c!14058) b!63989))

(assert (= (and b!64008 (not c!14058)) b!64014))

(assert (= (and b!64013 c!14067) b!63993))

(assert (= (and b!64013 (not c!14067)) b!64023))

(assert (= (and b!64010 c!14060) b!64004))

(assert (= (and b!64010 (not c!14060)) b!64013))

(assert (= (and d!53280 c!14061) b!64010))

(assert (= (and d!53280 (not c!14061)) b!64007))

(assert (= (and b!64015 c!14062) b!63990))

(assert (= (and b!64015 (not c!14062)) b!64024))

(assert (= (and b!64015 (not res!29948)) b!63995))

(assert (= (and b!63995 res!29940) b!64001))

(assert (= (and b!64001 res!29939) b!63996))

(assert (= (and b!63996 c!14065) b!64026))

(assert (= (and b!63996 (not c!14065)) b!64016))

(assert (= (and b!64015 c!14063) b!63999))

(assert (= (and b!64015 (not c!14063)) b!64012))

(assert (= (and b!64002 c!14064) b!64017))

(assert (= (and b!64002 (not c!14064)) b!63998))

(assert (= (and b!64020 c!14057) b!64019))

(assert (= (and b!64020 (not c!14057)) b!64025))

(assert (= (and b!64002 c!14068) b!64021))

(assert (= (and b!64002 (not c!14068)) b!64020))

(assert (= (and b!64015 c!14069) b!63992))

(assert (= (and b!64015 (not c!14069)) b!64002))

(assert (= (and d!53280 c!14059) b!64005))

(assert (= (and d!53280 (not c!14059)) b!64015))

(declare-fun m!69137 () Bool)

(assert (=> b!63991 m!69137))

(declare-fun m!69139 () Bool)

(assert (=> b!64010 m!69139))

(declare-fun m!69141 () Bool)

(assert (=> b!64025 m!69141))

(assert (=> b!63675 d!53280))

(declare-fun d!53282 () Bool)

(assert (=> d!53282 (= (evalLit!0 (id!4785 f!3964)) (= (id!4785 f!3964) 42))))

(assert (=> b!63830 d!53282))

(declare-fun b!64027 () Bool)

(declare-fun e!34692 () Bool)

(declare-fun e!34694 () Bool)

(assert (=> b!64027 (= e!34692 e!34694)))

(declare-fun res!29964 () Bool)

(assert (=> b!64027 (=> (not res!29964) (not e!34694))))

(declare-fun lt!11987 () Bool)

(assert (=> b!64027 (= res!29964 (not lt!11987))))

(declare-fun b!64028 () Bool)

(declare-fun e!34709 () Bool)

(declare-fun lt!11995 () Bool)

(assert (=> b!64028 (= e!34709 lt!11995)))

(declare-fun b!64029 () Bool)

(declare-fun e!34707 () Bool)

(assert (=> b!64029 (= e!34707 lt!11995)))

(declare-fun b!64030 () Bool)

(declare-fun e!34700 () Bool)

(assert (=> b!64030 (= e!34700 (eval!0 (ite lt!11987 (lhs!821 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (ite (is-Or!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (lhs!823 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (ite (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (lhs!822 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (f!4078 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))))))

(declare-fun b!64031 () Bool)

(declare-fun e!34704 () Bool)

(declare-fun lt!11986 () Bool)

(declare-fun lt!11988 () Bool)

(assert (=> b!64031 (= e!34704 (or lt!11986 lt!11988))))

(declare-fun b!64032 () Bool)

(declare-fun e!34698 () Formula!6)

(assert (=> b!64032 (= e!34698 (rhs!823 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64033 () Bool)

(declare-fun e!34713 () Bool)

(declare-fun res!29963 () Bool)

(assert (=> b!64033 (= e!34713 res!29963)))

(assert (=> b!64033 true))

(declare-fun b!64034 () Bool)

(declare-fun e!34706 () Bool)

(declare-fun e!34705 () Bool)

(assert (=> b!64034 (= e!34706 e!34705)))

(declare-fun res!29958 () Bool)

(assert (=> b!64034 (=> (not res!29958) (not e!34705))))

(declare-fun lt!11990 () Bool)

(assert (=> b!64034 (= res!29958 (not lt!11990))))

(declare-fun b!64035 () Bool)

(declare-fun e!34714 () Bool)

(declare-fun e!34695 () Bool)

(assert (=> b!64035 (= e!34714 e!34695)))

(declare-fun c!14080 () Bool)

(declare-fun lt!11994 () Bool)

(assert (=> b!64035 (= c!14080 (or lt!11994 (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(declare-fun b!64036 () Bool)

(declare-fun e!34712 () Bool)

(declare-fun e!34702 () Bool)

(assert (=> b!64036 (= e!34712 e!34702)))

(declare-fun res!29956 () Bool)

(assert (=> b!64036 (=> (not res!29956) (not e!34702))))

(declare-fun lt!11989 () Bool)

(assert (=> b!64036 (= res!29956 (not lt!11989))))

(declare-fun b!64037 () Bool)

(declare-fun e!34691 () Bool)

(declare-fun res!29959 () Bool)

(assert (=> b!64037 (= e!34691 res!29959)))

(assert (=> b!64037 true))

(assert (=> b!64037 true))

(declare-fun b!64038 () Bool)

(declare-fun e!34701 () Bool)

(declare-fun lt!11999 () Bool)

(assert (=> b!64038 (= e!34701 lt!11999)))

(declare-fun b!64039 () Bool)

(declare-fun e!34696 () Bool)

(assert (=> b!64039 (= e!34696 lt!11995)))

(declare-fun b!64040 () Bool)

(assert (=> b!64040 (= e!34705 e!34714)))

(declare-fun res!29957 () Bool)

(assert (=> b!64040 (=> (not res!29957) (not e!34714))))

(assert (=> b!64040 (= res!29957 lt!11994)))

(assert (=> b!64040 (= lt!11994 (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64041 () Bool)

(declare-fun e!34710 () Bool)

(assert (=> b!64041 (= e!34704 e!34710)))

(declare-fun c!14083 () Bool)

(declare-fun lt!11997 () Bool)

(assert (=> b!64041 (= c!14083 lt!11997)))

(declare-fun lt!11993 () Bool)

(assert (=> b!64041 (= lt!11993 e!34691)))

(declare-fun c!14079 () Bool)

(assert (=> b!64041 (= c!14079 (or lt!11997 (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(assert (=> b!64041 (= lt!11997 (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64042 () Bool)

(declare-fun res!29968 () Bool)

(assert (=> b!64042 (= e!34696 res!29968)))

(assert (=> b!64042 true))

(declare-fun b!64043 () Bool)

(declare-fun e!34711 () Formula!6)

(assert (=> b!64043 (= e!34711 (rhs!821 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64044 () Bool)

(declare-fun e!34703 () Bool)

(assert (=> b!64044 (= e!34703 (and lt!11995 lt!11999))))

(declare-fun b!64045 () Bool)

(declare-fun lt!11996 () Bool)

(assert (=> b!64045 (= e!34713 lt!11996)))

(declare-fun b!64046 () Bool)

(declare-fun e!34708 () Bool)

(declare-fun res!29971 () Bool)

(assert (=> b!64046 (= e!34708 res!29971)))

(assert (=> b!64046 true))

(declare-fun b!64047 () Bool)

(declare-fun e!34693 () Bool)

(assert (=> b!64047 (= e!34693 (not e!34709))))

(declare-fun c!14073 () Bool)

(declare-fun lt!11992 () Bool)

(assert (=> b!64047 (= c!14073 (or lt!11992 (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(declare-fun b!64048 () Bool)

(declare-fun res!29955 () Bool)

(assert (=> b!64048 (= e!34700 res!29955)))

(assert (=> b!64048 true))

(declare-fun b!64049 () Bool)

(assert (=> b!64049 (= e!34708 (eval!0 e!34711))))

(declare-fun c!14075 () Bool)

(declare-fun lt!11991 () Bool)

(assert (=> b!64049 (= c!14075 lt!11991)))

(declare-fun b!64050 () Bool)

(assert (=> b!64050 (= e!34694 e!34712)))

(declare-fun res!29972 () Bool)

(assert (=> b!64050 (=> res!29972 e!34712)))

(assert (=> b!64050 (= res!29972 (and lt!11989 (not lt!11996)))))

(assert (=> b!64050 (= lt!11996 e!34696)))

(declare-fun c!14071 () Bool)

(assert (=> b!64050 (= c!14071 (or lt!11989 (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(assert (=> b!64050 (= lt!11989 (is-Or!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64051 () Bool)

(declare-fun res!29967 () Bool)

(assert (=> b!64051 (= e!34701 res!29967)))

(assert (=> b!64051 true))

(declare-fun b!64052 () Bool)

(assert (=> b!64052 (= e!34711 e!34698)))

(declare-fun c!14082 () Bool)

(assert (=> b!64052 (= c!14082 e!34693)))

(declare-fun res!29970 () Bool)

(assert (=> b!64052 (=> (not res!29970) (not e!34693))))

(assert (=> b!64052 (= res!29970 lt!11992)))

(assert (=> b!64052 (= lt!11992 (is-Or!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64053 () Bool)

(declare-fun res!29962 () Bool)

(assert (=> b!64053 (= e!34709 res!29962)))

(assert (=> b!64053 true))

(declare-fun b!64054 () Bool)

(assert (=> b!64054 (= e!34703 e!34704)))

(declare-fun c!14084 () Bool)

(assert (=> b!64054 (= c!14084 lt!11990)))

(assert (=> b!64054 (= lt!11988 e!34701)))

(declare-fun c!14078 () Bool)

(assert (=> b!64054 (= c!14078 e!34706)))

(declare-fun res!29966 () Bool)

(assert (=> b!64054 (=> res!29966 e!34706)))

(assert (=> b!64054 (= res!29966 (and lt!11990 (not lt!11986)))))

(assert (=> b!64054 (= lt!11986 e!34707)))

(declare-fun c!14077 () Bool)

(assert (=> b!64054 (= c!14077 (or lt!11990 (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(assert (=> b!64054 (= lt!11990 (is-Or!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64055 () Bool)

(declare-fun res!29969 () Bool)

(assert (=> b!64055 (= e!34695 res!29969)))

(assert (=> b!64055 true))

(declare-fun b!64056 () Bool)

(assert (=> b!64056 (= e!34691 lt!11986)))

(declare-fun b!64057 () Bool)

(declare-fun e!34699 () Bool)

(assert (=> b!64057 (= e!34702 e!34699)))

(declare-fun res!29960 () Bool)

(assert (=> b!64057 (=> (not res!29960) (not e!34699))))

(declare-fun lt!11998 () Bool)

(assert (=> b!64057 (= res!29960 lt!11998)))

(assert (=> b!64057 (= lt!11998 (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64058 () Bool)

(declare-fun e!34697 () Bool)

(assert (=> b!64058 (= e!34697 (not lt!11993))))

(declare-fun b!64059 () Bool)

(assert (=> b!64059 (= e!34710 e!34697)))

(declare-fun c!14072 () Bool)

(assert (=> b!64059 (= c!14072 (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64060 () Bool)

(assert (=> b!64060 (= e!34710 (or (not lt!11993) lt!11988))))

(declare-fun d!53284 () Bool)

(declare-fun c!14074 () Bool)

(assert (=> d!53284 (= c!14074 lt!11987)))

(assert (=> d!53284 (= lt!11999 e!34708)))

(declare-fun c!14076 () Bool)

(assert (=> d!53284 (= c!14076 e!34692)))

(declare-fun res!29961 () Bool)

(assert (=> d!53284 (=> res!29961 e!34692)))

(assert (=> d!53284 (= res!29961 lt!11991)))

(assert (=> d!53284 (= lt!11991 (and lt!11987 lt!11995))))

(assert (=> d!53284 (= lt!11995 e!34700)))

(declare-fun c!14085 () Bool)

(assert (=> d!53284 (= c!14085 (or lt!11987 (is-Or!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (is-Implies!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))) (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(assert (=> d!53284 (= lt!11987 (is-And!11 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(assert (=> d!53284 (= (eval!0 (ite lt!11843 lt!11840 (lhs!822 f!3964))) e!34703)))

(declare-fun b!64061 () Bool)

(assert (=> b!64061 (= e!34699 e!34713)))

(declare-fun c!14081 () Bool)

(assert (=> b!64061 (= c!14081 (or lt!11998 (is-Not!11 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(declare-fun b!64062 () Bool)

(assert (=> b!64062 (= e!34698 (rhs!822 (ite lt!11843 lt!11840 (lhs!822 f!3964))))))

(declare-fun b!64063 () Bool)

(declare-fun res!29965 () Bool)

(assert (=> b!64063 (= e!34707 res!29965)))

(assert (=> b!64063 true))

(declare-fun b!64064 () Bool)

(assert (=> b!64064 (= e!34697 (evalLit!0 (id!4785 (ite lt!11843 lt!11840 (lhs!822 f!3964)))))))

(declare-fun b!64065 () Bool)

(assert (=> b!64065 (= e!34695 lt!11986)))

(assert (= (and d!53284 c!14085) b!64030))

(assert (= (and d!53284 (not c!14085)) b!64048))

(assert (= (and d!53284 (not res!29961)) b!64027))

(assert (= (and b!64027 res!29964) b!64050))

(assert (= (and b!64050 c!14071) b!64039))

(assert (= (and b!64050 (not c!14071)) b!64042))

(assert (= (and b!64050 (not res!29972)) b!64036))

(assert (= (and b!64036 res!29956) b!64057))

(assert (= (and b!64057 res!29960) b!64061))

(assert (= (and b!64061 c!14081) b!64045))

(assert (= (and b!64061 (not c!14081)) b!64033))

(assert (= (and b!64052 res!29970) b!64047))

(assert (= (and b!64047 c!14073) b!64028))

(assert (= (and b!64047 (not c!14073)) b!64053))

(assert (= (and b!64052 c!14082) b!64032))

(assert (= (and b!64052 (not c!14082)) b!64062))

(assert (= (and b!64049 c!14075) b!64043))

(assert (= (and b!64049 (not c!14075)) b!64052))

(assert (= (and d!53284 c!14076) b!64049))

(assert (= (and d!53284 (not c!14076)) b!64046))

(assert (= (and b!64054 c!14077) b!64029))

(assert (= (and b!64054 (not c!14077)) b!64063))

(assert (= (and b!64054 (not res!29966)) b!64034))

(assert (= (and b!64034 res!29958) b!64040))

(assert (= (and b!64040 res!29957) b!64035))

(assert (= (and b!64035 c!14080) b!64065))

(assert (= (and b!64035 (not c!14080)) b!64055))

(assert (= (and b!64054 c!14078) b!64038))

(assert (= (and b!64054 (not c!14078)) b!64051))

(assert (= (and b!64041 c!14079) b!64056))

(assert (= (and b!64041 (not c!14079)) b!64037))

(assert (= (and b!64059 c!14072) b!64058))

(assert (= (and b!64059 (not c!14072)) b!64064))

(assert (= (and b!64041 c!14083) b!64060))

(assert (= (and b!64041 (not c!14083)) b!64059))

(assert (= (and b!64054 c!14084) b!64031))

(assert (= (and b!64054 (not c!14084)) b!64041))

(assert (= (and d!53284 c!14074) b!64044))

(assert (= (and d!53284 (not c!14074)) b!64054))

(declare-fun m!69143 () Bool)

(assert (=> b!64030 m!69143))

(declare-fun m!69145 () Bool)

(assert (=> b!64049 m!69145))

(declare-fun m!69147 () Bool)

(assert (=> b!64064 m!69147))

(assert (=> b!63681 d!53284))

(assert (=> b!63676 d!53280))

(assert (=> b!63688 d!53276))

(declare-fun b!64066 () Bool)

(declare-fun e!34716 () Bool)

(declare-fun e!34718 () Bool)

(assert (=> b!64066 (= e!34716 e!34718)))

(declare-fun res!29982 () Bool)

(assert (=> b!64066 (=> (not res!29982) (not e!34718))))

(declare-fun lt!12001 () Bool)

(assert (=> b!64066 (= res!29982 (not lt!12001))))

(declare-fun b!64067 () Bool)

(declare-fun e!34733 () Bool)

(declare-fun lt!12009 () Bool)

(assert (=> b!64067 (= e!34733 lt!12009)))

(declare-fun b!64068 () Bool)

(declare-fun e!34731 () Bool)

(assert (=> b!64068 (= e!34731 lt!12009)))

(declare-fun e!34724 () Bool)

(declare-fun b!64069 () Bool)

(assert (=> b!64069 (= e!34724 (eval!0 (ite lt!12001 (lhs!821 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (ite (is-Or!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (lhs!823 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (ite (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (lhs!822 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (f!4078 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))))))

(declare-fun b!64070 () Bool)

(declare-fun e!34728 () Bool)

(declare-fun lt!12000 () Bool)

(declare-fun lt!12002 () Bool)

(assert (=> b!64070 (= e!34728 (or lt!12000 lt!12002))))

(declare-fun b!64071 () Bool)

(declare-fun e!34722 () Formula!6)

(assert (=> b!64071 (= e!34722 (rhs!823 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64072 () Bool)

(declare-fun e!34737 () Bool)

(declare-fun res!29981 () Bool)

(assert (=> b!64072 (= e!34737 res!29981)))

(assert (=> b!64072 true))

(declare-fun b!64073 () Bool)

(declare-fun e!34730 () Bool)

(declare-fun e!34729 () Bool)

(assert (=> b!64073 (= e!34730 e!34729)))

(declare-fun res!29976 () Bool)

(assert (=> b!64073 (=> (not res!29976) (not e!34729))))

(declare-fun lt!12004 () Bool)

(assert (=> b!64073 (= res!29976 (not lt!12004))))

(declare-fun b!64074 () Bool)

(declare-fun e!34738 () Bool)

(declare-fun e!34719 () Bool)

(assert (=> b!64074 (= e!34738 e!34719)))

(declare-fun c!14095 () Bool)

(declare-fun lt!12008 () Bool)

(assert (=> b!64074 (= c!14095 (or lt!12008 (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(declare-fun b!64075 () Bool)

(declare-fun e!34736 () Bool)

(declare-fun e!34726 () Bool)

(assert (=> b!64075 (= e!34736 e!34726)))

(declare-fun res!29974 () Bool)

(assert (=> b!64075 (=> (not res!29974) (not e!34726))))

(declare-fun lt!12003 () Bool)

(assert (=> b!64075 (= res!29974 (not lt!12003))))

(declare-fun b!64076 () Bool)

(declare-fun e!34715 () Bool)

(declare-fun res!29977 () Bool)

(assert (=> b!64076 (= e!34715 res!29977)))

(assert (=> b!64076 true))

(assert (=> b!64076 true))

(declare-fun b!64077 () Bool)

(declare-fun e!34725 () Bool)

(declare-fun lt!12013 () Bool)

(assert (=> b!64077 (= e!34725 lt!12013)))

(declare-fun b!64078 () Bool)

(declare-fun e!34720 () Bool)

(assert (=> b!64078 (= e!34720 lt!12009)))

(declare-fun b!64079 () Bool)

(assert (=> b!64079 (= e!34729 e!34738)))

(declare-fun res!29975 () Bool)

(assert (=> b!64079 (=> (not res!29975) (not e!34738))))

(assert (=> b!64079 (= res!29975 lt!12008)))

(assert (=> b!64079 (= lt!12008 (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64080 () Bool)

(declare-fun e!34734 () Bool)

(assert (=> b!64080 (= e!34728 e!34734)))

(declare-fun c!14098 () Bool)

(declare-fun lt!12011 () Bool)

(assert (=> b!64080 (= c!14098 lt!12011)))

(declare-fun lt!12007 () Bool)

(assert (=> b!64080 (= lt!12007 e!34715)))

(declare-fun c!14094 () Bool)

(assert (=> b!64080 (= c!14094 (or lt!12011 (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> b!64080 (= lt!12011 (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64081 () Bool)

(declare-fun res!29986 () Bool)

(assert (=> b!64081 (= e!34720 res!29986)))

(assert (=> b!64081 true))

(declare-fun b!64082 () Bool)

(declare-fun e!34735 () Formula!6)

(assert (=> b!64082 (= e!34735 (rhs!821 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64083 () Bool)

(declare-fun e!34727 () Bool)

(assert (=> b!64083 (= e!34727 (and lt!12009 lt!12013))))

(declare-fun b!64084 () Bool)

(declare-fun lt!12010 () Bool)

(assert (=> b!64084 (= e!34737 lt!12010)))

(declare-fun b!64085 () Bool)

(declare-fun e!34732 () Bool)

(declare-fun res!29989 () Bool)

(assert (=> b!64085 (= e!34732 res!29989)))

(assert (=> b!64085 true))

(declare-fun b!64086 () Bool)

(declare-fun e!34717 () Bool)

(assert (=> b!64086 (= e!34717 (not e!34733))))

(declare-fun lt!12006 () Bool)

(declare-fun c!14088 () Bool)

(assert (=> b!64086 (= c!14088 (or lt!12006 (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(declare-fun b!64087 () Bool)

(declare-fun res!29973 () Bool)

(assert (=> b!64087 (= e!34724 res!29973)))

(assert (=> b!64087 true))

(declare-fun b!64088 () Bool)

(assert (=> b!64088 (= e!34732 (eval!0 e!34735))))

(declare-fun c!14090 () Bool)

(declare-fun lt!12005 () Bool)

(assert (=> b!64088 (= c!14090 lt!12005)))

(declare-fun b!64089 () Bool)

(assert (=> b!64089 (= e!34718 e!34736)))

(declare-fun res!29990 () Bool)

(assert (=> b!64089 (=> res!29990 e!34736)))

(assert (=> b!64089 (= res!29990 (and lt!12003 (not lt!12010)))))

(assert (=> b!64089 (= lt!12010 e!34720)))

(declare-fun c!14086 () Bool)

(assert (=> b!64089 (= c!14086 (or lt!12003 (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> b!64089 (= lt!12003 (is-Or!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64090 () Bool)

(declare-fun res!29985 () Bool)

(assert (=> b!64090 (= e!34725 res!29985)))

(assert (=> b!64090 true))

(declare-fun b!64091 () Bool)

(assert (=> b!64091 (= e!34735 e!34722)))

(declare-fun c!14097 () Bool)

(assert (=> b!64091 (= c!14097 e!34717)))

(declare-fun res!29988 () Bool)

(assert (=> b!64091 (=> (not res!29988) (not e!34717))))

(assert (=> b!64091 (= res!29988 lt!12006)))

(assert (=> b!64091 (= lt!12006 (is-Or!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64092 () Bool)

(declare-fun res!29980 () Bool)

(assert (=> b!64092 (= e!34733 res!29980)))

(assert (=> b!64092 true))

(declare-fun b!64093 () Bool)

(assert (=> b!64093 (= e!34727 e!34728)))

(declare-fun c!14099 () Bool)

(assert (=> b!64093 (= c!14099 lt!12004)))

(assert (=> b!64093 (= lt!12002 e!34725)))

(declare-fun c!14093 () Bool)

(assert (=> b!64093 (= c!14093 e!34730)))

(declare-fun res!29984 () Bool)

(assert (=> b!64093 (=> res!29984 e!34730)))

(assert (=> b!64093 (= res!29984 (and lt!12004 (not lt!12000)))))

(assert (=> b!64093 (= lt!12000 e!34731)))

(declare-fun c!14092 () Bool)

(assert (=> b!64093 (= c!14092 (or lt!12004 (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> b!64093 (= lt!12004 (is-Or!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64094 () Bool)

(declare-fun res!29987 () Bool)

(assert (=> b!64094 (= e!34719 res!29987)))

(assert (=> b!64094 true))

(declare-fun b!64095 () Bool)

(assert (=> b!64095 (= e!34715 lt!12000)))

(declare-fun b!64096 () Bool)

(declare-fun e!34723 () Bool)

(assert (=> b!64096 (= e!34726 e!34723)))

(declare-fun res!29978 () Bool)

(assert (=> b!64096 (=> (not res!29978) (not e!34723))))

(declare-fun lt!12012 () Bool)

(assert (=> b!64096 (= res!29978 lt!12012)))

(assert (=> b!64096 (= lt!12012 (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64097 () Bool)

(declare-fun e!34721 () Bool)

(assert (=> b!64097 (= e!34721 (not lt!12007))))

(declare-fun b!64098 () Bool)

(assert (=> b!64098 (= e!34734 e!34721)))

(declare-fun c!14087 () Bool)

(assert (=> b!64098 (= c!14087 (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64099 () Bool)

(assert (=> b!64099 (= e!34734 (or (not lt!12007) lt!12002))))

(declare-fun d!53286 () Bool)

(declare-fun c!14089 () Bool)

(assert (=> d!53286 (= c!14089 lt!12001)))

(assert (=> d!53286 (= lt!12013 e!34732)))

(declare-fun c!14091 () Bool)

(assert (=> d!53286 (= c!14091 e!34716)))

(declare-fun res!29979 () Bool)

(assert (=> d!53286 (=> res!29979 e!34716)))

(assert (=> d!53286 (= res!29979 lt!12005)))

(assert (=> d!53286 (= lt!12005 (and lt!12001 lt!12009))))

(assert (=> d!53286 (= lt!12009 e!34724)))

(declare-fun c!14100 () Bool)

(assert (=> d!53286 (= c!14100 (or lt!12001 (is-Or!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Implies!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> d!53286 (= lt!12001 (is-And!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(assert (=> d!53286 (= (eval!0 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) e!34727)))

(declare-fun b!64100 () Bool)

(assert (=> b!64100 (= e!34723 e!34737)))

(declare-fun c!14096 () Bool)

(assert (=> b!64100 (= c!14096 (or lt!12012 (is-Not!11 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(declare-fun b!64101 () Bool)

(assert (=> b!64101 (= e!34722 (rhs!822 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64102 () Bool)

(declare-fun res!29983 () Bool)

(assert (=> b!64102 (= e!34731 res!29983)))

(assert (=> b!64102 true))

(declare-fun b!64103 () Bool)

(assert (=> b!64103 (= e!34721 (evalLit!0 (id!4785 (ite lt!11886 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(declare-fun b!64104 () Bool)

(assert (=> b!64104 (= e!34719 lt!12000)))

(assert (= (and d!53286 c!14100) b!64069))

(assert (= (and d!53286 (not c!14100)) b!64087))

(assert (= (and d!53286 (not res!29979)) b!64066))

(assert (= (and b!64066 res!29982) b!64089))

(assert (= (and b!64089 c!14086) b!64078))

(assert (= (and b!64089 (not c!14086)) b!64081))

(assert (= (and b!64089 (not res!29990)) b!64075))

(assert (= (and b!64075 res!29974) b!64096))

(assert (= (and b!64096 res!29978) b!64100))

(assert (= (and b!64100 c!14096) b!64084))

(assert (= (and b!64100 (not c!14096)) b!64072))

(assert (= (and b!64091 res!29988) b!64086))

(assert (= (and b!64086 c!14088) b!64067))

(assert (= (and b!64086 (not c!14088)) b!64092))

(assert (= (and b!64091 c!14097) b!64071))

(assert (= (and b!64091 (not c!14097)) b!64101))

(assert (= (and b!64088 c!14090) b!64082))

(assert (= (and b!64088 (not c!14090)) b!64091))

(assert (= (and d!53286 c!14091) b!64088))

(assert (= (and d!53286 (not c!14091)) b!64085))

(assert (= (and b!64093 c!14092) b!64068))

(assert (= (and b!64093 (not c!14092)) b!64102))

(assert (= (and b!64093 (not res!29984)) b!64073))

(assert (= (and b!64073 res!29976) b!64079))

(assert (= (and b!64079 res!29975) b!64074))

(assert (= (and b!64074 c!14095) b!64104))

(assert (= (and b!64074 (not c!14095)) b!64094))

(assert (= (and b!64093 c!14093) b!64077))

(assert (= (and b!64093 (not c!14093)) b!64090))

(assert (= (and b!64080 c!14094) b!64095))

(assert (= (and b!64080 (not c!14094)) b!64076))

(assert (= (and b!64098 c!14087) b!64097))

(assert (= (and b!64098 (not c!14087)) b!64103))

(assert (= (and b!64080 c!14098) b!64099))

(assert (= (and b!64080 (not c!14098)) b!64098))

(assert (= (and b!64093 c!14099) b!64070))

(assert (= (and b!64093 (not c!14099)) b!64080))

(assert (= (and d!53286 c!14089) b!64083))

(assert (= (and d!53286 (not c!14089)) b!64093))

(declare-fun m!69149 () Bool)

(assert (=> b!64069 m!69149))

(declare-fun m!69151 () Bool)

(assert (=> b!64088 m!69151))

(declare-fun m!69153 () Bool)

(assert (=> b!64103 m!69153))

(assert (=> b!63796 d!53286))

(declare-fun b!64105 () Bool)

(declare-fun e!34740 () Bool)

(declare-fun e!34742 () Bool)

(assert (=> b!64105 (= e!34740 e!34742)))

(declare-fun res!30000 () Bool)

(assert (=> b!64105 (=> (not res!30000) (not e!34742))))

(declare-fun lt!12015 () Bool)

(assert (=> b!64105 (= res!30000 (not lt!12015))))

(declare-fun b!64106 () Bool)

(declare-fun e!34757 () Bool)

(declare-fun lt!12023 () Bool)

(assert (=> b!64106 (= e!34757 lt!12023)))

(declare-fun b!64107 () Bool)

(declare-fun e!34755 () Bool)

(assert (=> b!64107 (= e!34755 lt!12023)))

(declare-fun b!64108 () Bool)

(declare-fun e!34748 () Bool)

(assert (=> b!64108 (= e!34748 (eval!0 (ite lt!12015 (lhs!821 e!34600) (ite (is-Or!11 e!34600) (lhs!823 e!34600) (ite (is-Implies!11 e!34600) (lhs!822 e!34600) (f!4078 e!34600))))))))

(declare-fun b!64109 () Bool)

(declare-fun e!34752 () Bool)

(declare-fun lt!12014 () Bool)

(declare-fun lt!12016 () Bool)

(assert (=> b!64109 (= e!34752 (or lt!12014 lt!12016))))

(declare-fun b!64110 () Bool)

(declare-fun e!34746 () Formula!6)

(assert (=> b!64110 (= e!34746 (rhs!823 e!34600))))

(declare-fun b!64111 () Bool)

(declare-fun e!34761 () Bool)

(declare-fun res!29999 () Bool)

(assert (=> b!64111 (= e!34761 res!29999)))

(assert (=> b!64111 true))

(declare-fun b!64112 () Bool)

(declare-fun e!34754 () Bool)

(declare-fun e!34753 () Bool)

(assert (=> b!64112 (= e!34754 e!34753)))

(declare-fun res!29994 () Bool)

(assert (=> b!64112 (=> (not res!29994) (not e!34753))))

(declare-fun lt!12018 () Bool)

(assert (=> b!64112 (= res!29994 (not lt!12018))))

(declare-fun b!64113 () Bool)

(declare-fun e!34762 () Bool)

(declare-fun e!34743 () Bool)

(assert (=> b!64113 (= e!34762 e!34743)))

(declare-fun c!14110 () Bool)

(declare-fun lt!12022 () Bool)

(assert (=> b!64113 (= c!14110 (or lt!12022 (is-Not!11 e!34600)))))

(declare-fun b!64114 () Bool)

(declare-fun e!34760 () Bool)

(declare-fun e!34750 () Bool)

(assert (=> b!64114 (= e!34760 e!34750)))

(declare-fun res!29992 () Bool)

(assert (=> b!64114 (=> (not res!29992) (not e!34750))))

(declare-fun lt!12017 () Bool)

(assert (=> b!64114 (= res!29992 (not lt!12017))))

(declare-fun b!64115 () Bool)

(declare-fun e!34739 () Bool)

(declare-fun res!29995 () Bool)

(assert (=> b!64115 (= e!34739 res!29995)))

(assert (=> b!64115 true))

(assert (=> b!64115 true))

(declare-fun b!64116 () Bool)

(declare-fun e!34749 () Bool)

(declare-fun lt!12027 () Bool)

(assert (=> b!64116 (= e!34749 lt!12027)))

(declare-fun b!64117 () Bool)

(declare-fun e!34744 () Bool)

(assert (=> b!64117 (= e!34744 lt!12023)))

(declare-fun b!64118 () Bool)

(assert (=> b!64118 (= e!34753 e!34762)))

(declare-fun res!29993 () Bool)

(assert (=> b!64118 (=> (not res!29993) (not e!34762))))

(assert (=> b!64118 (= res!29993 lt!12022)))

(assert (=> b!64118 (= lt!12022 (is-Implies!11 e!34600))))

(declare-fun b!64119 () Bool)

(declare-fun e!34758 () Bool)

(assert (=> b!64119 (= e!34752 e!34758)))

(declare-fun c!14113 () Bool)

(declare-fun lt!12025 () Bool)

(assert (=> b!64119 (= c!14113 lt!12025)))

(declare-fun lt!12021 () Bool)

(assert (=> b!64119 (= lt!12021 e!34739)))

(declare-fun c!14109 () Bool)

(assert (=> b!64119 (= c!14109 (or lt!12025 (is-Not!11 e!34600)))))

(assert (=> b!64119 (= lt!12025 (is-Implies!11 e!34600))))

(declare-fun b!64120 () Bool)

(declare-fun res!30004 () Bool)

(assert (=> b!64120 (= e!34744 res!30004)))

(assert (=> b!64120 true))

(declare-fun b!64121 () Bool)

(declare-fun e!34759 () Formula!6)

(assert (=> b!64121 (= e!34759 (rhs!821 e!34600))))

(declare-fun b!64122 () Bool)

(declare-fun e!34751 () Bool)

(assert (=> b!64122 (= e!34751 (and lt!12023 lt!12027))))

(declare-fun b!64123 () Bool)

(declare-fun lt!12024 () Bool)

(assert (=> b!64123 (= e!34761 lt!12024)))

(declare-fun b!64124 () Bool)

(declare-fun e!34756 () Bool)

(declare-fun res!30007 () Bool)

(assert (=> b!64124 (= e!34756 res!30007)))

(assert (=> b!64124 true))

(declare-fun b!64125 () Bool)

(declare-fun e!34741 () Bool)

(assert (=> b!64125 (= e!34741 (not e!34757))))

(declare-fun c!14103 () Bool)

(declare-fun lt!12020 () Bool)

(assert (=> b!64125 (= c!14103 (or lt!12020 (is-Implies!11 e!34600) (is-Not!11 e!34600)))))

(declare-fun b!64126 () Bool)

(declare-fun res!29991 () Bool)

(assert (=> b!64126 (= e!34748 res!29991)))

(assert (=> b!64126 true))

(declare-fun b!64127 () Bool)

(assert (=> b!64127 (= e!34756 (eval!0 e!34759))))

(declare-fun c!14105 () Bool)

(declare-fun lt!12019 () Bool)

(assert (=> b!64127 (= c!14105 lt!12019)))

(declare-fun b!64128 () Bool)

(assert (=> b!64128 (= e!34742 e!34760)))

(declare-fun res!30008 () Bool)

(assert (=> b!64128 (=> res!30008 e!34760)))

(assert (=> b!64128 (= res!30008 (and lt!12017 (not lt!12024)))))

(assert (=> b!64128 (= lt!12024 e!34744)))

(declare-fun c!14101 () Bool)

(assert (=> b!64128 (= c!14101 (or lt!12017 (is-Implies!11 e!34600) (is-Not!11 e!34600)))))

(assert (=> b!64128 (= lt!12017 (is-Or!11 e!34600))))

(declare-fun b!64129 () Bool)

(declare-fun res!30003 () Bool)

(assert (=> b!64129 (= e!34749 res!30003)))

(assert (=> b!64129 true))

(declare-fun b!64130 () Bool)

(assert (=> b!64130 (= e!34759 e!34746)))

(declare-fun c!14112 () Bool)

(assert (=> b!64130 (= c!14112 e!34741)))

(declare-fun res!30006 () Bool)

(assert (=> b!64130 (=> (not res!30006) (not e!34741))))

(assert (=> b!64130 (= res!30006 lt!12020)))

(assert (=> b!64130 (= lt!12020 (is-Or!11 e!34600))))

(declare-fun b!64131 () Bool)

(declare-fun res!29998 () Bool)

(assert (=> b!64131 (= e!34757 res!29998)))

(assert (=> b!64131 true))

(declare-fun b!64132 () Bool)

(assert (=> b!64132 (= e!34751 e!34752)))

(declare-fun c!14114 () Bool)

(assert (=> b!64132 (= c!14114 lt!12018)))

(assert (=> b!64132 (= lt!12016 e!34749)))

(declare-fun c!14108 () Bool)

(assert (=> b!64132 (= c!14108 e!34754)))

(declare-fun res!30002 () Bool)

(assert (=> b!64132 (=> res!30002 e!34754)))

(assert (=> b!64132 (= res!30002 (and lt!12018 (not lt!12014)))))

(assert (=> b!64132 (= lt!12014 e!34755)))

(declare-fun c!14107 () Bool)

(assert (=> b!64132 (= c!14107 (or lt!12018 (is-Implies!11 e!34600) (is-Not!11 e!34600)))))

(assert (=> b!64132 (= lt!12018 (is-Or!11 e!34600))))

(declare-fun b!64133 () Bool)

(declare-fun res!30005 () Bool)

(assert (=> b!64133 (= e!34743 res!30005)))

(assert (=> b!64133 true))

(declare-fun b!64134 () Bool)

(assert (=> b!64134 (= e!34739 lt!12014)))

(declare-fun b!64135 () Bool)

(declare-fun e!34747 () Bool)

(assert (=> b!64135 (= e!34750 e!34747)))

(declare-fun res!29996 () Bool)

(assert (=> b!64135 (=> (not res!29996) (not e!34747))))

(declare-fun lt!12026 () Bool)

(assert (=> b!64135 (= res!29996 lt!12026)))

(assert (=> b!64135 (= lt!12026 (is-Implies!11 e!34600))))

(declare-fun b!64136 () Bool)

(declare-fun e!34745 () Bool)

(assert (=> b!64136 (= e!34745 (not lt!12021))))

(declare-fun b!64137 () Bool)

(assert (=> b!64137 (= e!34758 e!34745)))

(declare-fun c!14102 () Bool)

(assert (=> b!64137 (= c!14102 (is-Not!11 e!34600))))

(declare-fun b!64138 () Bool)

(assert (=> b!64138 (= e!34758 (or (not lt!12021) lt!12016))))

(declare-fun d!53288 () Bool)

(declare-fun c!14104 () Bool)

(assert (=> d!53288 (= c!14104 lt!12015)))

(assert (=> d!53288 (= lt!12027 e!34756)))

(declare-fun c!14106 () Bool)

(assert (=> d!53288 (= c!14106 e!34740)))

(declare-fun res!29997 () Bool)

(assert (=> d!53288 (=> res!29997 e!34740)))

(assert (=> d!53288 (= res!29997 lt!12019)))

(assert (=> d!53288 (= lt!12019 (and lt!12015 lt!12023))))

(assert (=> d!53288 (= lt!12023 e!34748)))

(declare-fun c!14115 () Bool)

(assert (=> d!53288 (= c!14115 (or lt!12015 (is-Or!11 e!34600) (is-Implies!11 e!34600) (is-Not!11 e!34600)))))

(assert (=> d!53288 (= lt!12015 (is-And!11 e!34600))))

(assert (=> d!53288 (= (eval!0 e!34600) e!34751)))

(declare-fun b!64139 () Bool)

(assert (=> b!64139 (= e!34747 e!34761)))

(declare-fun c!14111 () Bool)

(assert (=> b!64139 (= c!14111 (or lt!12026 (is-Not!11 e!34600)))))

(declare-fun b!64140 () Bool)

(assert (=> b!64140 (= e!34746 (rhs!822 e!34600))))

(declare-fun b!64141 () Bool)

(declare-fun res!30001 () Bool)

(assert (=> b!64141 (= e!34755 res!30001)))

(assert (=> b!64141 true))

(declare-fun b!64142 () Bool)

(assert (=> b!64142 (= e!34745 (evalLit!0 (id!4785 e!34600)))))

(declare-fun b!64143 () Bool)

(assert (=> b!64143 (= e!34743 lt!12014)))

(assert (= (and d!53288 c!14115) b!64108))

(assert (= (and d!53288 (not c!14115)) b!64126))

(assert (= (and d!53288 (not res!29997)) b!64105))

(assert (= (and b!64105 res!30000) b!64128))

(assert (= (and b!64128 c!14101) b!64117))

(assert (= (and b!64128 (not c!14101)) b!64120))

(assert (= (and b!64128 (not res!30008)) b!64114))

(assert (= (and b!64114 res!29992) b!64135))

(assert (= (and b!64135 res!29996) b!64139))

(assert (= (and b!64139 c!14111) b!64123))

(assert (= (and b!64139 (not c!14111)) b!64111))

(assert (= (and b!64130 res!30006) b!64125))

(assert (= (and b!64125 c!14103) b!64106))

(assert (= (and b!64125 (not c!14103)) b!64131))

(assert (= (and b!64130 c!14112) b!64110))

(assert (= (and b!64130 (not c!14112)) b!64140))

(assert (= (and b!64127 c!14105) b!64121))

(assert (= (and b!64127 (not c!14105)) b!64130))

(assert (= (and d!53288 c!14106) b!64127))

(assert (= (and d!53288 (not c!14106)) b!64124))

(assert (= (and b!64132 c!14107) b!64107))

(assert (= (and b!64132 (not c!14107)) b!64141))

(assert (= (and b!64132 (not res!30002)) b!64112))

(assert (= (and b!64112 res!29994) b!64118))

(assert (= (and b!64118 res!29993) b!64113))

(assert (= (and b!64113 c!14110) b!64143))

(assert (= (and b!64113 (not c!14110)) b!64133))

(assert (= (and b!64132 c!14108) b!64116))

(assert (= (and b!64132 (not c!14108)) b!64129))

(assert (= (and b!64119 c!14109) b!64134))

(assert (= (and b!64119 (not c!14109)) b!64115))

(assert (= (and b!64137 c!14102) b!64136))

(assert (= (and b!64137 (not c!14102)) b!64142))

(assert (= (and b!64119 c!14113) b!64138))

(assert (= (and b!64119 (not c!14113)) b!64137))

(assert (= (and b!64132 c!14114) b!64109))

(assert (= (and b!64132 (not c!14114)) b!64119))

(assert (= (and d!53288 c!14104) b!64122))

(assert (= (and d!53288 (not c!14104)) b!64132))

(declare-fun m!69155 () Bool)

(assert (=> b!64108 m!69155))

(declare-fun m!69157 () Bool)

(assert (=> b!64127 m!69157))

(declare-fun m!69159 () Bool)

(assert (=> b!64142 m!69159))

(assert (=> b!63854 d!53288))

(declare-fun b!64144 () Bool)

(declare-fun e!34764 () Bool)

(declare-fun e!34766 () Bool)

(assert (=> b!64144 (= e!34764 e!34766)))

(declare-fun res!30018 () Bool)

(assert (=> b!64144 (=> (not res!30018) (not e!34766))))

(declare-fun lt!12029 () Bool)

(assert (=> b!64144 (= res!30018 (not lt!12029))))

(declare-fun b!64145 () Bool)

(declare-fun e!34781 () Bool)

(declare-fun lt!12037 () Bool)

(assert (=> b!64145 (= e!34781 lt!12037)))

(declare-fun b!64146 () Bool)

(declare-fun e!34779 () Bool)

(assert (=> b!64146 (= e!34779 lt!12037)))

(declare-fun b!64147 () Bool)

(declare-fun e!34772 () Bool)

(assert (=> b!64147 (= e!34772 (eval!0 (ite lt!12029 (lhs!821 e!34576) (ite (is-Or!11 e!34576) (lhs!823 e!34576) (ite (is-Implies!11 e!34576) (lhs!822 e!34576) (f!4078 e!34576))))))))

(declare-fun b!64148 () Bool)

(declare-fun e!34776 () Bool)

(declare-fun lt!12028 () Bool)

(declare-fun lt!12030 () Bool)

(assert (=> b!64148 (= e!34776 (or lt!12028 lt!12030))))

(declare-fun b!64149 () Bool)

(declare-fun e!34770 () Formula!6)

(assert (=> b!64149 (= e!34770 (rhs!823 e!34576))))

(declare-fun b!64150 () Bool)

(declare-fun e!34785 () Bool)

(declare-fun res!30017 () Bool)

(assert (=> b!64150 (= e!34785 res!30017)))

(assert (=> b!64150 true))

(declare-fun b!64151 () Bool)

(declare-fun e!34778 () Bool)

(declare-fun e!34777 () Bool)

(assert (=> b!64151 (= e!34778 e!34777)))

(declare-fun res!30012 () Bool)

(assert (=> b!64151 (=> (not res!30012) (not e!34777))))

(declare-fun lt!12032 () Bool)

(assert (=> b!64151 (= res!30012 (not lt!12032))))

(declare-fun b!64152 () Bool)

(declare-fun e!34786 () Bool)

(declare-fun e!34767 () Bool)

(assert (=> b!64152 (= e!34786 e!34767)))

(declare-fun c!14125 () Bool)

(declare-fun lt!12036 () Bool)

(assert (=> b!64152 (= c!14125 (or lt!12036 (is-Not!11 e!34576)))))

(declare-fun b!64153 () Bool)

(declare-fun e!34784 () Bool)

(declare-fun e!34774 () Bool)

(assert (=> b!64153 (= e!34784 e!34774)))

(declare-fun res!30010 () Bool)

(assert (=> b!64153 (=> (not res!30010) (not e!34774))))

(declare-fun lt!12031 () Bool)

(assert (=> b!64153 (= res!30010 (not lt!12031))))

(declare-fun b!64154 () Bool)

(declare-fun e!34763 () Bool)

(declare-fun res!30013 () Bool)

(assert (=> b!64154 (= e!34763 res!30013)))

(assert (=> b!64154 true))

(assert (=> b!64154 true))

(declare-fun b!64155 () Bool)

(declare-fun e!34773 () Bool)

(declare-fun lt!12041 () Bool)

(assert (=> b!64155 (= e!34773 lt!12041)))

(declare-fun b!64156 () Bool)

(declare-fun e!34768 () Bool)

(assert (=> b!64156 (= e!34768 lt!12037)))

(declare-fun b!64157 () Bool)

(assert (=> b!64157 (= e!34777 e!34786)))

(declare-fun res!30011 () Bool)

(assert (=> b!64157 (=> (not res!30011) (not e!34786))))

(assert (=> b!64157 (= res!30011 lt!12036)))

(assert (=> b!64157 (= lt!12036 (is-Implies!11 e!34576))))

(declare-fun b!64158 () Bool)

(declare-fun e!34782 () Bool)

(assert (=> b!64158 (= e!34776 e!34782)))

(declare-fun c!14128 () Bool)

(declare-fun lt!12039 () Bool)

(assert (=> b!64158 (= c!14128 lt!12039)))

(declare-fun lt!12035 () Bool)

(assert (=> b!64158 (= lt!12035 e!34763)))

(declare-fun c!14124 () Bool)

(assert (=> b!64158 (= c!14124 (or lt!12039 (is-Not!11 e!34576)))))

(assert (=> b!64158 (= lt!12039 (is-Implies!11 e!34576))))

(declare-fun b!64159 () Bool)

(declare-fun res!30022 () Bool)

(assert (=> b!64159 (= e!34768 res!30022)))

(assert (=> b!64159 true))

(declare-fun b!64160 () Bool)

(declare-fun e!34783 () Formula!6)

(assert (=> b!64160 (= e!34783 (rhs!821 e!34576))))

(declare-fun b!64161 () Bool)

(declare-fun e!34775 () Bool)

(assert (=> b!64161 (= e!34775 (and lt!12037 lt!12041))))

(declare-fun b!64162 () Bool)

(declare-fun lt!12038 () Bool)

(assert (=> b!64162 (= e!34785 lt!12038)))

(declare-fun b!64163 () Bool)

(declare-fun e!34780 () Bool)

(declare-fun res!30025 () Bool)

(assert (=> b!64163 (= e!34780 res!30025)))

(assert (=> b!64163 true))

(declare-fun b!64164 () Bool)

(declare-fun e!34765 () Bool)

(assert (=> b!64164 (= e!34765 (not e!34781))))

(declare-fun c!14118 () Bool)

(declare-fun lt!12034 () Bool)

(assert (=> b!64164 (= c!14118 (or lt!12034 (is-Implies!11 e!34576) (is-Not!11 e!34576)))))

(declare-fun b!64165 () Bool)

(declare-fun res!30009 () Bool)

(assert (=> b!64165 (= e!34772 res!30009)))

(assert (=> b!64165 true))

(declare-fun b!64166 () Bool)

(assert (=> b!64166 (= e!34780 (eval!0 e!34783))))

(declare-fun c!14120 () Bool)

(declare-fun lt!12033 () Bool)

(assert (=> b!64166 (= c!14120 lt!12033)))

(declare-fun b!64167 () Bool)

(assert (=> b!64167 (= e!34766 e!34784)))

(declare-fun res!30026 () Bool)

(assert (=> b!64167 (=> res!30026 e!34784)))

(assert (=> b!64167 (= res!30026 (and lt!12031 (not lt!12038)))))

(assert (=> b!64167 (= lt!12038 e!34768)))

(declare-fun c!14116 () Bool)

(assert (=> b!64167 (= c!14116 (or lt!12031 (is-Implies!11 e!34576) (is-Not!11 e!34576)))))

(assert (=> b!64167 (= lt!12031 (is-Or!11 e!34576))))

(declare-fun b!64168 () Bool)

(declare-fun res!30021 () Bool)

(assert (=> b!64168 (= e!34773 res!30021)))

(assert (=> b!64168 true))

(declare-fun b!64169 () Bool)

(assert (=> b!64169 (= e!34783 e!34770)))

(declare-fun c!14127 () Bool)

(assert (=> b!64169 (= c!14127 e!34765)))

(declare-fun res!30024 () Bool)

(assert (=> b!64169 (=> (not res!30024) (not e!34765))))

(assert (=> b!64169 (= res!30024 lt!12034)))

(assert (=> b!64169 (= lt!12034 (is-Or!11 e!34576))))

(declare-fun b!64170 () Bool)

(declare-fun res!30016 () Bool)

(assert (=> b!64170 (= e!34781 res!30016)))

(assert (=> b!64170 true))

(declare-fun b!64171 () Bool)

(assert (=> b!64171 (= e!34775 e!34776)))

(declare-fun c!14129 () Bool)

(assert (=> b!64171 (= c!14129 lt!12032)))

(assert (=> b!64171 (= lt!12030 e!34773)))

(declare-fun c!14123 () Bool)

(assert (=> b!64171 (= c!14123 e!34778)))

(declare-fun res!30020 () Bool)

(assert (=> b!64171 (=> res!30020 e!34778)))

(assert (=> b!64171 (= res!30020 (and lt!12032 (not lt!12028)))))

(assert (=> b!64171 (= lt!12028 e!34779)))

(declare-fun c!14122 () Bool)

(assert (=> b!64171 (= c!14122 (or lt!12032 (is-Implies!11 e!34576) (is-Not!11 e!34576)))))

(assert (=> b!64171 (= lt!12032 (is-Or!11 e!34576))))

(declare-fun b!64172 () Bool)

(declare-fun res!30023 () Bool)

(assert (=> b!64172 (= e!34767 res!30023)))

(assert (=> b!64172 true))

(declare-fun b!64173 () Bool)

(assert (=> b!64173 (= e!34763 lt!12028)))

(declare-fun b!64174 () Bool)

(declare-fun e!34771 () Bool)

(assert (=> b!64174 (= e!34774 e!34771)))

(declare-fun res!30014 () Bool)

(assert (=> b!64174 (=> (not res!30014) (not e!34771))))

(declare-fun lt!12040 () Bool)

(assert (=> b!64174 (= res!30014 lt!12040)))

(assert (=> b!64174 (= lt!12040 (is-Implies!11 e!34576))))

(declare-fun b!64175 () Bool)

(declare-fun e!34769 () Bool)

(assert (=> b!64175 (= e!34769 (not lt!12035))))

(declare-fun b!64176 () Bool)

(assert (=> b!64176 (= e!34782 e!34769)))

(declare-fun c!14117 () Bool)

(assert (=> b!64176 (= c!14117 (is-Not!11 e!34576))))

(declare-fun b!64177 () Bool)

(assert (=> b!64177 (= e!34782 (or (not lt!12035) lt!12030))))

(declare-fun d!53290 () Bool)

(declare-fun c!14119 () Bool)

(assert (=> d!53290 (= c!14119 lt!12029)))

(assert (=> d!53290 (= lt!12041 e!34780)))

(declare-fun c!14121 () Bool)

(assert (=> d!53290 (= c!14121 e!34764)))

(declare-fun res!30015 () Bool)

(assert (=> d!53290 (=> res!30015 e!34764)))

(assert (=> d!53290 (= res!30015 lt!12033)))

(assert (=> d!53290 (= lt!12033 (and lt!12029 lt!12037))))

(assert (=> d!53290 (= lt!12037 e!34772)))

(declare-fun c!14130 () Bool)

(assert (=> d!53290 (= c!14130 (or lt!12029 (is-Or!11 e!34576) (is-Implies!11 e!34576) (is-Not!11 e!34576)))))

(assert (=> d!53290 (= lt!12029 (is-And!11 e!34576))))

(assert (=> d!53290 (= (eval!0 e!34576) e!34775)))

(declare-fun b!64178 () Bool)

(assert (=> b!64178 (= e!34771 e!34785)))

(declare-fun c!14126 () Bool)

(assert (=> b!64178 (= c!14126 (or lt!12040 (is-Not!11 e!34576)))))

(declare-fun b!64179 () Bool)

(assert (=> b!64179 (= e!34770 (rhs!822 e!34576))))

(declare-fun b!64180 () Bool)

(declare-fun res!30019 () Bool)

(assert (=> b!64180 (= e!34779 res!30019)))

(assert (=> b!64180 true))

(declare-fun b!64181 () Bool)

(assert (=> b!64181 (= e!34769 (evalLit!0 (id!4785 e!34576)))))

(declare-fun b!64182 () Bool)

(assert (=> b!64182 (= e!34767 lt!12028)))

(assert (= (and d!53290 c!14130) b!64147))

(assert (= (and d!53290 (not c!14130)) b!64165))

(assert (= (and d!53290 (not res!30015)) b!64144))

(assert (= (and b!64144 res!30018) b!64167))

(assert (= (and b!64167 c!14116) b!64156))

(assert (= (and b!64167 (not c!14116)) b!64159))

(assert (= (and b!64167 (not res!30026)) b!64153))

(assert (= (and b!64153 res!30010) b!64174))

(assert (= (and b!64174 res!30014) b!64178))

(assert (= (and b!64178 c!14126) b!64162))

(assert (= (and b!64178 (not c!14126)) b!64150))

(assert (= (and b!64169 res!30024) b!64164))

(assert (= (and b!64164 c!14118) b!64145))

(assert (= (and b!64164 (not c!14118)) b!64170))

(assert (= (and b!64169 c!14127) b!64149))

(assert (= (and b!64169 (not c!14127)) b!64179))

(assert (= (and b!64166 c!14120) b!64160))

(assert (= (and b!64166 (not c!14120)) b!64169))

(assert (= (and d!53290 c!14121) b!64166))

(assert (= (and d!53290 (not c!14121)) b!64163))

(assert (= (and b!64171 c!14122) b!64146))

(assert (= (and b!64171 (not c!14122)) b!64180))

(assert (= (and b!64171 (not res!30020)) b!64151))

(assert (= (and b!64151 res!30012) b!64157))

(assert (= (and b!64157 res!30011) b!64152))

(assert (= (and b!64152 c!14125) b!64182))

(assert (= (and b!64152 (not c!14125)) b!64172))

(assert (= (and b!64171 c!14123) b!64155))

(assert (= (and b!64171 (not c!14123)) b!64168))

(assert (= (and b!64158 c!14124) b!64173))

(assert (= (and b!64158 (not c!14124)) b!64154))

(assert (= (and b!64176 c!14117) b!64175))

(assert (= (and b!64176 (not c!14117)) b!64181))

(assert (= (and b!64158 c!14128) b!64177))

(assert (= (and b!64158 (not c!14128)) b!64176))

(assert (= (and b!64171 c!14129) b!64148))

(assert (= (and b!64171 (not c!14129)) b!64158))

(assert (= (and d!53290 c!14119) b!64161))

(assert (= (and d!53290 (not c!14119)) b!64171))

(declare-fun m!69161 () Bool)

(assert (=> b!64147 m!69161))

(declare-fun m!69163 () Bool)

(assert (=> b!64166 m!69163))

(declare-fun m!69165 () Bool)

(assert (=> b!64181 m!69165))

(assert (=> b!63815 d!53290))

(declare-fun e!34797 () Bool)

(declare-fun lt!12050 () Bool)

(declare-fun b!64183 () Bool)

(assert (=> b!64183 (= e!34797 (= lt!12050 (eval!0 (simplify!1 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))))

(declare-fun b!64184 () Bool)

(declare-fun e!34796 () Bool)

(declare-fun e!34791 () Bool)

(declare-fun e!34792 () Bool)

(assert (=> b!64184 (= e!34796 (= e!34791 e!34792))))

(declare-fun c!14135 () Bool)

(declare-fun lt!12045 () Bool)

(assert (=> b!64184 (= c!14135 (or lt!12045 (and (not lt!12045) (is-Literal!5 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))))

(declare-fun c!14139 () Bool)

(assert (=> b!64184 (= c!14139 (or lt!12045 (is-Literal!5 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))

(declare-fun b!64185 () Bool)

(declare-fun e!34794 () Bool)

(declare-fun res!30032 () Bool)

(assert (=> b!64185 (= e!34794 res!30032)))

(assert (=> b!64185 true))

(declare-fun e!34788 () Bool)

(declare-fun b!64186 () Bool)

(assert (=> b!64186 (= e!34788 (simplifySemantics!0 (ite lt!12045 (rhs!821 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (ite (is-Implies!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (rhs!822 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (ite (is-Or!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (rhs!823 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (f!4078 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))))))

(declare-fun b!64187 () Bool)

(assert (=> b!64187 (= e!34791 (eval!0 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64188 () Bool)

(assert (=> b!64188 (= e!34794 (eval!0 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun d!53292 () Bool)

(assert (=> d!53292 e!34796))

(declare-fun c!14141 () Bool)

(assert (=> d!53292 (= c!14141 (or lt!12045 (is-Literal!5 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))

(declare-fun lt!12048 () Formula!6)

(declare-fun e!34795 () Formula!6)

(assert (=> d!53292 (= lt!12048 e!34795)))

(declare-fun c!14140 () Bool)

(assert (=> d!53292 (= c!14140 (or lt!12045 (is-Literal!5 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))

(declare-fun lt!12042 () Bool)

(declare-fun e!34787 () Bool)

(assert (=> d!53292 (= lt!12042 e!34787)))

(declare-fun c!14138 () Bool)

(assert (=> d!53292 (= c!14138 (or lt!12045 (and (not (is-Literal!5 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))) (or (is-Implies!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (is-Or!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))))

(declare-fun lt!12044 () Bool)

(assert (=> d!53292 (= lt!12044 e!34788)))

(declare-fun c!14133 () Bool)

(assert (=> d!53292 (= c!14133 (or lt!12045 (not (is-Literal!5 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))))

(assert (=> d!53292 (= lt!12045 (is-And!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(assert (=> d!53292 (= (simplifySemantics!0 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) true)))

(declare-fun b!64189 () Bool)

(declare-fun lt!12049 () Bool)

(declare-fun lt!12043 () Formula!6)

(assert (=> b!64189 (= e!34797 (= lt!12049 (eval!0 lt!12043)))))

(declare-fun b!64190 () Bool)

(assert (=> b!64190 (= e!34795 (simplify!1 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64191 () Bool)

(assert (=> b!64191 (= e!34787 (simplifySemantics!0 (ite lt!12045 (lhs!821 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (ite (is-Implies!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (lhs!822 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))) (lhs!823 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))))

(declare-fun b!64192 () Bool)

(declare-fun e!34790 () Bool)

(assert (=> b!64192 (= e!34796 e!34790)))

(declare-fun c!14137 () Bool)

(declare-fun lt!12047 () Bool)

(assert (=> b!64192 (= c!14137 lt!12047)))

(declare-fun e!34793 () Bool)

(assert (=> b!64192 (= lt!12050 e!34793)))

(declare-fun lt!12046 () Bool)

(declare-fun c!14134 () Bool)

(assert (=> b!64192 (= c!14134 (or lt!12046 (and (not lt!12047) (not (is-Or!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))))

(assert (=> b!64192 (= lt!12046 lt!12047)))

(declare-fun e!34789 () Formula!6)

(assert (=> b!64192 (= lt!12043 e!34789)))

(declare-fun c!14131 () Bool)

(assert (=> b!64192 (= c!14131 (or lt!12047 (is-Or!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))

(assert (=> b!64192 (= lt!12049 e!34794)))

(declare-fun c!14132 () Bool)

(assert (=> b!64192 (= c!14132 (or lt!12047 (is-Or!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))

(assert (=> b!64192 (= lt!12047 (is-Implies!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64193 () Bool)

(assert (=> b!64193 (= e!34793 (eval!0 (ite lt!12046 lt!12043 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964))))))))))

(declare-fun b!64194 () Bool)

(declare-fun res!30027 () Formula!6)

(assert (=> b!64194 (= e!34789 res!30027)))

(assert (=> b!64194 true))

(declare-fun b!64195 () Bool)

(assert (=> b!64195 (= e!34792 (eval!0 lt!12048))))

(declare-fun b!64196 () Bool)

(declare-fun res!30030 () Bool)

(assert (=> b!64196 (= e!34792 res!30030)))

(assert (=> b!64196 true))

(declare-fun b!64197 () Bool)

(declare-fun res!30028 () Formula!6)

(assert (=> b!64197 (= e!34795 res!30028)))

(assert (=> b!64197 true))

(declare-fun b!64198 () Bool)

(declare-fun res!30034 () Bool)

(assert (=> b!64198 (= e!34791 res!30034)))

(assert (=> b!64198 true))

(declare-fun b!64199 () Bool)

(declare-fun res!30031 () Bool)

(assert (=> b!64199 (= e!34787 res!30031)))

(assert (=> b!64199 true))

(declare-fun b!64200 () Bool)

(assert (=> b!64200 (= e!34789 (simplify!1 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64201 () Bool)

(assert (=> b!64201 (= e!34790 (= lt!12049 lt!12050))))

(declare-fun b!64202 () Bool)

(assert (=> b!64202 (= e!34790 e!34797)))

(declare-fun c!14136 () Bool)

(assert (=> b!64202 (= c!14136 (is-Or!11 (ite lt!11851 (rhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64203 () Bool)

(declare-fun res!30033 () Bool)

(assert (=> b!64203 (= e!34788 res!30033)))

(assert (=> b!64203 true))

(declare-fun b!64204 () Bool)

(declare-fun res!30029 () Bool)

(assert (=> b!64204 (= e!34793 res!30029)))

(assert (=> b!64204 true))

(assert (=> b!64204 true))

(assert (= (and d!53292 c!14133) b!64186))

(assert (= (and d!53292 (not c!14133)) b!64203))

(assert (= (and d!53292 c!14138) b!64191))

(assert (= (and d!53292 (not c!14138)) b!64199))

(assert (= (and d!53292 c!14140) b!64190))

(assert (= (and d!53292 (not c!14140)) b!64197))

(assert (= (and b!64184 c!14139) b!64187))

(assert (= (and b!64184 (not c!14139)) b!64198))

(assert (= (and b!64184 c!14135) b!64195))

(assert (= (and b!64184 (not c!14135)) b!64196))

(assert (= (and b!64192 c!14132) b!64188))

(assert (= (and b!64192 (not c!14132)) b!64185))

(assert (= (and b!64192 c!14131) b!64200))

(assert (= (and b!64192 (not c!14131)) b!64194))

(assert (= (and b!64192 c!14134) b!64193))

(assert (= (and b!64192 (not c!14134)) b!64204))

(assert (= (and b!64202 c!14136) b!64189))

(assert (= (and b!64202 (not c!14136)) b!64183))

(assert (= (and b!64192 c!14137) b!64201))

(assert (= (and b!64192 (not c!14137)) b!64202))

(assert (= (and d!53292 c!14141) b!64184))

(assert (= (and d!53292 (not c!14141)) b!64192))

(declare-fun m!69167 () Bool)

(assert (=> b!64186 m!69167))

(declare-fun m!69169 () Bool)

(assert (=> b!64195 m!69169))

(declare-fun m!69171 () Bool)

(assert (=> b!64187 m!69171))

(declare-fun m!69173 () Bool)

(assert (=> b!64200 m!69173))

(declare-fun m!69175 () Bool)

(assert (=> b!64191 m!69175))

(declare-fun m!69177 () Bool)

(assert (=> b!64193 m!69177))

(assert (=> b!64188 m!69171))

(assert (=> b!64190 m!69173))

(declare-fun m!69179 () Bool)

(assert (=> b!64189 m!69179))

(assert (=> b!64183 m!69173))

(assert (=> b!64183 m!69173))

(declare-fun m!69181 () Bool)

(assert (=> b!64183 m!69181))

(assert (=> b!63696 d!53292))

(declare-fun b!64205 () Bool)

(declare-fun e!34804 () Formula!6)

(declare-fun lt!12053 () Bool)

(assert (=> b!64205 (= e!34804 (simplify!1 (ite lt!12053 (rhs!821 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (rhs!823 (rhs!822 f!3964)) (rhs!822 (rhs!822 f!3964))))))))

(declare-fun b!64206 () Bool)

(declare-fun res!30037 () Formula!6)

(assert (=> b!64206 (= e!34804 res!30037)))

(assert (=> b!64206 true))

(declare-fun b!64207 () Bool)

(declare-fun e!34803 () Formula!6)

(declare-fun res!30035 () Formula!6)

(assert (=> b!64207 (= e!34803 res!30035)))

(assert (=> b!64207 true))

(declare-fun b!64208 () Bool)

(declare-fun e!34799 () Formula!6)

(declare-fun res!30039 () Formula!6)

(assert (=> b!64208 (= e!34799 res!30039)))

(assert (=> b!64208 true))

(assert (=> b!64208 true))

(declare-fun b!64209 () Bool)

(assert (=> b!64209 (= e!34803 (simplify!1 (ite lt!12053 (lhs!821 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64210 () Bool)

(declare-fun e!34798 () Formula!6)

(declare-fun lt!12055 () Formula!6)

(assert (=> b!64210 (= e!34798 lt!12055)))

(declare-fun b!64211 () Bool)

(declare-fun e!34802 () Formula!6)

(declare-fun e!34801 () Formula!6)

(assert (=> b!64211 (= e!34802 e!34801)))

(declare-fun c!14143 () Bool)

(declare-fun lt!12057 () Bool)

(assert (=> b!64211 (= c!14143 lt!12057)))

(declare-fun lt!12058 () Formula!6)

(declare-fun e!34800 () Formula!6)

(assert (=> b!64211 (= lt!12058 e!34800)))

(declare-fun c!14148 () Bool)

(assert (=> b!64211 (= c!14148 (or lt!12057 (is-Implies!11 (rhs!822 f!3964))))))

(declare-fun lt!12059 () Formula!6)

(assert (=> b!64211 (= lt!12059 e!34798)))

(declare-fun c!14145 () Bool)

(assert (=> b!64211 (= c!14145 (or lt!12057 (is-Implies!11 (rhs!822 f!3964)) (is-Not!11 (rhs!822 f!3964))))))

(assert (=> b!64211 (= lt!12057 (is-Or!11 (rhs!822 f!3964)))))

(declare-fun b!64212 () Bool)

(assert (=> b!64212 (= e!34801 (Or!11 lt!12059 lt!12058))))

(declare-fun d!53294 () Bool)

(declare-fun lt!12052 () Formula!6)

(assert (=> d!53294 (isSimplified!1 lt!12052)))

(assert (=> d!53294 (= lt!12052 e!34802)))

(declare-fun c!14146 () Bool)

(assert (=> d!53294 (= c!14146 lt!12053)))

(declare-fun lt!12054 () Formula!6)

(assert (=> d!53294 (= lt!12054 e!34804)))

(declare-fun c!14147 () Bool)

(assert (=> d!53294 (= c!14147 (or lt!12053 (is-Or!11 (rhs!822 f!3964)) (is-Implies!11 (rhs!822 f!3964))))))

(assert (=> d!53294 (= lt!12055 e!34803)))

(declare-fun c!14142 () Bool)

(assert (=> d!53294 (= c!14142 (or lt!12053 (is-Or!11 (rhs!822 f!3964)) (is-Implies!11 (rhs!822 f!3964)) (is-Not!11 (rhs!822 f!3964))))))

(assert (=> d!53294 (= lt!12053 (is-And!11 (rhs!822 f!3964)))))

(assert (=> d!53294 (= (simplify!1 (rhs!822 f!3964)) lt!12052)))

(declare-fun b!64213 () Bool)

(assert (=> b!64213 (= e!34800 lt!12054)))

(declare-fun b!64214 () Bool)

(declare-fun res!30038 () Formula!6)

(assert (=> b!64214 (= e!34800 res!30038)))

(assert (=> b!64214 true))

(declare-fun b!64215 () Bool)

(assert (=> b!64215 (= e!34802 (And!11 lt!12055 lt!12054))))

(declare-fun b!64216 () Bool)

(declare-fun res!30036 () Formula!6)

(assert (=> b!64216 (= e!34798 res!30036)))

(assert (=> b!64216 true))

(declare-fun lt!12051 () Bool)

(declare-fun lt!12056 () Formula!6)

(declare-fun b!64217 () Bool)

(assert (=> b!64217 (= e!34801 (ite lt!12051 (Or!11 (Not!11 lt!12056) lt!12058) (ite (is-Not!11 (rhs!822 f!3964)) (Not!11 lt!12056) (rhs!822 f!3964))))))

(assert (=> b!64217 (= lt!12056 e!34799)))

(declare-fun c!14144 () Bool)

(assert (=> b!64217 (= c!14144 (or lt!12051 (is-Not!11 (rhs!822 f!3964))))))

(assert (=> b!64217 (= lt!12051 (is-Implies!11 (rhs!822 f!3964)))))

(declare-fun b!64218 () Bool)

(assert (=> b!64218 (= e!34799 lt!12059)))

(assert (= (and d!53294 c!14142) b!64209))

(assert (= (and d!53294 (not c!14142)) b!64207))

(assert (= (and d!53294 c!14147) b!64205))

(assert (= (and d!53294 (not c!14147)) b!64206))

(assert (= (and b!64211 c!14145) b!64210))

(assert (= (and b!64211 (not c!14145)) b!64216))

(assert (= (and b!64211 c!14148) b!64213))

(assert (= (and b!64211 (not c!14148)) b!64214))

(assert (= (and b!64217 c!14144) b!64218))

(assert (= (and b!64217 (not c!14144)) b!64208))

(assert (= (and b!64211 c!14143) b!64212))

(assert (= (and b!64211 (not c!14143)) b!64217))

(assert (= (and d!53294 c!14146) b!64215))

(assert (= (and d!53294 (not c!14146)) b!64211))

(declare-fun m!69183 () Bool)

(assert (=> b!64205 m!69183))

(declare-fun m!69185 () Bool)

(assert (=> b!64209 m!69185))

(declare-fun m!69187 () Bool)

(assert (=> d!53294 m!69187))

(assert (=> b!63710 d!53294))

(assert (=> b!63700 d!53294))

(declare-fun b!64219 () Bool)

(declare-fun e!34806 () Bool)

(declare-fun e!34808 () Bool)

(assert (=> b!64219 (= e!34806 e!34808)))

(declare-fun res!30049 () Bool)

(assert (=> b!64219 (=> (not res!30049) (not e!34808))))

(declare-fun lt!12061 () Bool)

(assert (=> b!64219 (= res!30049 (not lt!12061))))

(declare-fun b!64220 () Bool)

(declare-fun e!34823 () Bool)

(declare-fun lt!12069 () Bool)

(assert (=> b!64220 (= e!34823 lt!12069)))

(declare-fun b!64221 () Bool)

(declare-fun e!34821 () Bool)

(assert (=> b!64221 (= e!34821 lt!12069)))

(declare-fun b!64222 () Bool)

(declare-fun e!34814 () Bool)

(assert (=> b!64222 (= e!34814 (eval!0 (ite lt!12061 (lhs!821 lt!11854) (ite (is-Or!11 lt!11854) (lhs!823 lt!11854) (ite (is-Implies!11 lt!11854) (lhs!822 lt!11854) (f!4078 lt!11854))))))))

(declare-fun b!64223 () Bool)

(declare-fun e!34818 () Bool)

(declare-fun lt!12060 () Bool)

(declare-fun lt!12062 () Bool)

(assert (=> b!64223 (= e!34818 (or lt!12060 lt!12062))))

(declare-fun b!64224 () Bool)

(declare-fun e!34812 () Formula!6)

(assert (=> b!64224 (= e!34812 (rhs!823 lt!11854))))

(declare-fun b!64225 () Bool)

(declare-fun e!34827 () Bool)

(declare-fun res!30048 () Bool)

(assert (=> b!64225 (= e!34827 res!30048)))

(assert (=> b!64225 true))

(declare-fun b!64226 () Bool)

(declare-fun e!34820 () Bool)

(declare-fun e!34819 () Bool)

(assert (=> b!64226 (= e!34820 e!34819)))

(declare-fun res!30043 () Bool)

(assert (=> b!64226 (=> (not res!30043) (not e!34819))))

(declare-fun lt!12064 () Bool)

(assert (=> b!64226 (= res!30043 (not lt!12064))))

(declare-fun b!64227 () Bool)

(declare-fun e!34828 () Bool)

(declare-fun e!34809 () Bool)

(assert (=> b!64227 (= e!34828 e!34809)))

(declare-fun c!14158 () Bool)

(declare-fun lt!12068 () Bool)

(assert (=> b!64227 (= c!14158 (or lt!12068 (is-Not!11 lt!11854)))))

(declare-fun b!64228 () Bool)

(declare-fun e!34826 () Bool)

(declare-fun e!34816 () Bool)

(assert (=> b!64228 (= e!34826 e!34816)))

(declare-fun res!30041 () Bool)

(assert (=> b!64228 (=> (not res!30041) (not e!34816))))

(declare-fun lt!12063 () Bool)

(assert (=> b!64228 (= res!30041 (not lt!12063))))

(declare-fun b!64229 () Bool)

(declare-fun e!34805 () Bool)

(declare-fun res!30044 () Bool)

(assert (=> b!64229 (= e!34805 res!30044)))

(assert (=> b!64229 true))

(assert (=> b!64229 true))

(declare-fun b!64230 () Bool)

(declare-fun e!34815 () Bool)

(declare-fun lt!12073 () Bool)

(assert (=> b!64230 (= e!34815 lt!12073)))

(declare-fun b!64231 () Bool)

(declare-fun e!34810 () Bool)

(assert (=> b!64231 (= e!34810 lt!12069)))

(declare-fun b!64232 () Bool)

(assert (=> b!64232 (= e!34819 e!34828)))

(declare-fun res!30042 () Bool)

(assert (=> b!64232 (=> (not res!30042) (not e!34828))))

(assert (=> b!64232 (= res!30042 lt!12068)))

(assert (=> b!64232 (= lt!12068 (is-Implies!11 lt!11854))))

(declare-fun b!64233 () Bool)

(declare-fun e!34824 () Bool)

(assert (=> b!64233 (= e!34818 e!34824)))

(declare-fun c!14161 () Bool)

(declare-fun lt!12071 () Bool)

(assert (=> b!64233 (= c!14161 lt!12071)))

(declare-fun lt!12067 () Bool)

(assert (=> b!64233 (= lt!12067 e!34805)))

(declare-fun c!14157 () Bool)

(assert (=> b!64233 (= c!14157 (or lt!12071 (is-Not!11 lt!11854)))))

(assert (=> b!64233 (= lt!12071 (is-Implies!11 lt!11854))))

(declare-fun b!64234 () Bool)

(declare-fun res!30053 () Bool)

(assert (=> b!64234 (= e!34810 res!30053)))

(assert (=> b!64234 true))

(declare-fun b!64235 () Bool)

(declare-fun e!34825 () Formula!6)

(assert (=> b!64235 (= e!34825 (rhs!821 lt!11854))))

(declare-fun b!64236 () Bool)

(declare-fun e!34817 () Bool)

(assert (=> b!64236 (= e!34817 (and lt!12069 lt!12073))))

(declare-fun b!64237 () Bool)

(declare-fun lt!12070 () Bool)

(assert (=> b!64237 (= e!34827 lt!12070)))

(declare-fun b!64238 () Bool)

(declare-fun e!34822 () Bool)

(declare-fun res!30056 () Bool)

(assert (=> b!64238 (= e!34822 res!30056)))

(assert (=> b!64238 true))

(declare-fun b!64239 () Bool)

(declare-fun e!34807 () Bool)

(assert (=> b!64239 (= e!34807 (not e!34823))))

(declare-fun c!14151 () Bool)

(declare-fun lt!12066 () Bool)

(assert (=> b!64239 (= c!14151 (or lt!12066 (is-Implies!11 lt!11854) (is-Not!11 lt!11854)))))

(declare-fun b!64240 () Bool)

(declare-fun res!30040 () Bool)

(assert (=> b!64240 (= e!34814 res!30040)))

(assert (=> b!64240 true))

(declare-fun b!64241 () Bool)

(assert (=> b!64241 (= e!34822 (eval!0 e!34825))))

(declare-fun c!14153 () Bool)

(declare-fun lt!12065 () Bool)

(assert (=> b!64241 (= c!14153 lt!12065)))

(declare-fun b!64242 () Bool)

(assert (=> b!64242 (= e!34808 e!34826)))

(declare-fun res!30057 () Bool)

(assert (=> b!64242 (=> res!30057 e!34826)))

(assert (=> b!64242 (= res!30057 (and lt!12063 (not lt!12070)))))

(assert (=> b!64242 (= lt!12070 e!34810)))

(declare-fun c!14149 () Bool)

(assert (=> b!64242 (= c!14149 (or lt!12063 (is-Implies!11 lt!11854) (is-Not!11 lt!11854)))))

(assert (=> b!64242 (= lt!12063 (is-Or!11 lt!11854))))

(declare-fun b!64243 () Bool)

(declare-fun res!30052 () Bool)

(assert (=> b!64243 (= e!34815 res!30052)))

(assert (=> b!64243 true))

(declare-fun b!64244 () Bool)

(assert (=> b!64244 (= e!34825 e!34812)))

(declare-fun c!14160 () Bool)

(assert (=> b!64244 (= c!14160 e!34807)))

(declare-fun res!30055 () Bool)

(assert (=> b!64244 (=> (not res!30055) (not e!34807))))

(assert (=> b!64244 (= res!30055 lt!12066)))

(assert (=> b!64244 (= lt!12066 (is-Or!11 lt!11854))))

(declare-fun b!64245 () Bool)

(declare-fun res!30047 () Bool)

(assert (=> b!64245 (= e!34823 res!30047)))

(assert (=> b!64245 true))

(declare-fun b!64246 () Bool)

(assert (=> b!64246 (= e!34817 e!34818)))

(declare-fun c!14162 () Bool)

(assert (=> b!64246 (= c!14162 lt!12064)))

(assert (=> b!64246 (= lt!12062 e!34815)))

(declare-fun c!14156 () Bool)

(assert (=> b!64246 (= c!14156 e!34820)))

(declare-fun res!30051 () Bool)

(assert (=> b!64246 (=> res!30051 e!34820)))

(assert (=> b!64246 (= res!30051 (and lt!12064 (not lt!12060)))))

(assert (=> b!64246 (= lt!12060 e!34821)))

(declare-fun c!14155 () Bool)

(assert (=> b!64246 (= c!14155 (or lt!12064 (is-Implies!11 lt!11854) (is-Not!11 lt!11854)))))

(assert (=> b!64246 (= lt!12064 (is-Or!11 lt!11854))))

(declare-fun b!64247 () Bool)

(declare-fun res!30054 () Bool)

(assert (=> b!64247 (= e!34809 res!30054)))

(assert (=> b!64247 true))

(declare-fun b!64248 () Bool)

(assert (=> b!64248 (= e!34805 lt!12060)))

(declare-fun b!64249 () Bool)

(declare-fun e!34813 () Bool)

(assert (=> b!64249 (= e!34816 e!34813)))

(declare-fun res!30045 () Bool)

(assert (=> b!64249 (=> (not res!30045) (not e!34813))))

(declare-fun lt!12072 () Bool)

(assert (=> b!64249 (= res!30045 lt!12072)))

(assert (=> b!64249 (= lt!12072 (is-Implies!11 lt!11854))))

(declare-fun b!64250 () Bool)

(declare-fun e!34811 () Bool)

(assert (=> b!64250 (= e!34811 (not lt!12067))))

(declare-fun b!64251 () Bool)

(assert (=> b!64251 (= e!34824 e!34811)))

(declare-fun c!14150 () Bool)

(assert (=> b!64251 (= c!14150 (is-Not!11 lt!11854))))

(declare-fun b!64252 () Bool)

(assert (=> b!64252 (= e!34824 (or (not lt!12067) lt!12062))))

(declare-fun d!53296 () Bool)

(declare-fun c!14152 () Bool)

(assert (=> d!53296 (= c!14152 lt!12061)))

(assert (=> d!53296 (= lt!12073 e!34822)))

(declare-fun c!14154 () Bool)

(assert (=> d!53296 (= c!14154 e!34806)))

(declare-fun res!30046 () Bool)

(assert (=> d!53296 (=> res!30046 e!34806)))

(assert (=> d!53296 (= res!30046 lt!12065)))

(assert (=> d!53296 (= lt!12065 (and lt!12061 lt!12069))))

(assert (=> d!53296 (= lt!12069 e!34814)))

(declare-fun c!14163 () Bool)

(assert (=> d!53296 (= c!14163 (or lt!12061 (is-Or!11 lt!11854) (is-Implies!11 lt!11854) (is-Not!11 lt!11854)))))

(assert (=> d!53296 (= lt!12061 (is-And!11 lt!11854))))

(assert (=> d!53296 (= (eval!0 lt!11854) e!34817)))

(declare-fun b!64253 () Bool)

(assert (=> b!64253 (= e!34813 e!34827)))

(declare-fun c!14159 () Bool)

(assert (=> b!64253 (= c!14159 (or lt!12072 (is-Not!11 lt!11854)))))

(declare-fun b!64254 () Bool)

(assert (=> b!64254 (= e!34812 (rhs!822 lt!11854))))

(declare-fun b!64255 () Bool)

(declare-fun res!30050 () Bool)

(assert (=> b!64255 (= e!34821 res!30050)))

(assert (=> b!64255 true))

(declare-fun b!64256 () Bool)

(assert (=> b!64256 (= e!34811 (evalLit!0 (id!4785 lt!11854)))))

(declare-fun b!64257 () Bool)

(assert (=> b!64257 (= e!34809 lt!12060)))

(assert (= (and d!53296 c!14163) b!64222))

(assert (= (and d!53296 (not c!14163)) b!64240))

(assert (= (and d!53296 (not res!30046)) b!64219))

(assert (= (and b!64219 res!30049) b!64242))

(assert (= (and b!64242 c!14149) b!64231))

(assert (= (and b!64242 (not c!14149)) b!64234))

(assert (= (and b!64242 (not res!30057)) b!64228))

(assert (= (and b!64228 res!30041) b!64249))

(assert (= (and b!64249 res!30045) b!64253))

(assert (= (and b!64253 c!14159) b!64237))

(assert (= (and b!64253 (not c!14159)) b!64225))

(assert (= (and b!64244 res!30055) b!64239))

(assert (= (and b!64239 c!14151) b!64220))

(assert (= (and b!64239 (not c!14151)) b!64245))

(assert (= (and b!64244 c!14160) b!64224))

(assert (= (and b!64244 (not c!14160)) b!64254))

(assert (= (and b!64241 c!14153) b!64235))

(assert (= (and b!64241 (not c!14153)) b!64244))

(assert (= (and d!53296 c!14154) b!64241))

(assert (= (and d!53296 (not c!14154)) b!64238))

(assert (= (and b!64246 c!14155) b!64221))

(assert (= (and b!64246 (not c!14155)) b!64255))

(assert (= (and b!64246 (not res!30051)) b!64226))

(assert (= (and b!64226 res!30043) b!64232))

(assert (= (and b!64232 res!30042) b!64227))

(assert (= (and b!64227 c!14158) b!64257))

(assert (= (and b!64227 (not c!14158)) b!64247))

(assert (= (and b!64246 c!14156) b!64230))

(assert (= (and b!64246 (not c!14156)) b!64243))

(assert (= (and b!64233 c!14157) b!64248))

(assert (= (and b!64233 (not c!14157)) b!64229))

(assert (= (and b!64251 c!14150) b!64250))

(assert (= (and b!64251 (not c!14150)) b!64256))

(assert (= (and b!64233 c!14161) b!64252))

(assert (= (and b!64233 (not c!14161)) b!64251))

(assert (= (and b!64246 c!14162) b!64223))

(assert (= (and b!64246 (not c!14162)) b!64233))

(assert (= (and d!53296 c!14152) b!64236))

(assert (= (and d!53296 (not c!14152)) b!64246))

(declare-fun m!69189 () Bool)

(assert (=> b!64222 m!69189))

(declare-fun m!69191 () Bool)

(assert (=> b!64241 m!69191))

(declare-fun m!69193 () Bool)

(assert (=> b!64256 m!69193))

(assert (=> b!63705 d!53296))

(assert (=> b!63678 d!53276))

(declare-fun b!64258 () Bool)

(declare-fun e!34830 () Bool)

(declare-fun e!34832 () Bool)

(assert (=> b!64258 (= e!34830 e!34832)))

(declare-fun res!30067 () Bool)

(assert (=> b!64258 (=> (not res!30067) (not e!34832))))

(declare-fun lt!12075 () Bool)

(assert (=> b!64258 (= res!30067 (not lt!12075))))

(declare-fun b!64259 () Bool)

(declare-fun e!34847 () Bool)

(declare-fun lt!12083 () Bool)

(assert (=> b!64259 (= e!34847 lt!12083)))

(declare-fun b!64260 () Bool)

(declare-fun e!34845 () Bool)

(assert (=> b!64260 (= e!34845 lt!12083)))

(declare-fun b!64261 () Bool)

(declare-fun e!34838 () Bool)

(assert (=> b!64261 (= e!34838 (eval!0 (ite lt!12075 (lhs!821 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (ite (is-Or!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (lhs!823 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (ite (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (lhs!822 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (f!4078 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))))))

(declare-fun b!64262 () Bool)

(declare-fun e!34842 () Bool)

(declare-fun lt!12074 () Bool)

(declare-fun lt!12076 () Bool)

(assert (=> b!64262 (= e!34842 (or lt!12074 lt!12076))))

(declare-fun b!64263 () Bool)

(declare-fun e!34836 () Formula!6)

(assert (=> b!64263 (= e!34836 (rhs!823 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64264 () Bool)

(declare-fun e!34851 () Bool)

(declare-fun res!30066 () Bool)

(assert (=> b!64264 (= e!34851 res!30066)))

(assert (=> b!64264 true))

(declare-fun b!64265 () Bool)

(declare-fun e!34844 () Bool)

(declare-fun e!34843 () Bool)

(assert (=> b!64265 (= e!34844 e!34843)))

(declare-fun res!30061 () Bool)

(assert (=> b!64265 (=> (not res!30061) (not e!34843))))

(declare-fun lt!12078 () Bool)

(assert (=> b!64265 (= res!30061 (not lt!12078))))

(declare-fun b!64266 () Bool)

(declare-fun e!34852 () Bool)

(declare-fun e!34833 () Bool)

(assert (=> b!64266 (= e!34852 e!34833)))

(declare-fun lt!12082 () Bool)

(declare-fun c!14173 () Bool)

(assert (=> b!64266 (= c!14173 (or lt!12082 (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(declare-fun b!64267 () Bool)

(declare-fun e!34850 () Bool)

(declare-fun e!34840 () Bool)

(assert (=> b!64267 (= e!34850 e!34840)))

(declare-fun res!30059 () Bool)

(assert (=> b!64267 (=> (not res!30059) (not e!34840))))

(declare-fun lt!12077 () Bool)

(assert (=> b!64267 (= res!30059 (not lt!12077))))

(declare-fun b!64268 () Bool)

(declare-fun e!34829 () Bool)

(declare-fun res!30062 () Bool)

(assert (=> b!64268 (= e!34829 res!30062)))

(assert (=> b!64268 true))

(assert (=> b!64268 true))

(declare-fun b!64269 () Bool)

(declare-fun e!34839 () Bool)

(declare-fun lt!12087 () Bool)

(assert (=> b!64269 (= e!34839 lt!12087)))

(declare-fun b!64270 () Bool)

(declare-fun e!34834 () Bool)

(assert (=> b!64270 (= e!34834 lt!12083)))

(declare-fun b!64271 () Bool)

(assert (=> b!64271 (= e!34843 e!34852)))

(declare-fun res!30060 () Bool)

(assert (=> b!64271 (=> (not res!30060) (not e!34852))))

(assert (=> b!64271 (= res!30060 lt!12082)))

(assert (=> b!64271 (= lt!12082 (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64272 () Bool)

(declare-fun e!34848 () Bool)

(assert (=> b!64272 (= e!34842 e!34848)))

(declare-fun c!14176 () Bool)

(declare-fun lt!12085 () Bool)

(assert (=> b!64272 (= c!14176 lt!12085)))

(declare-fun lt!12081 () Bool)

(assert (=> b!64272 (= lt!12081 e!34829)))

(declare-fun c!14172 () Bool)

(assert (=> b!64272 (= c!14172 (or lt!12085 (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(assert (=> b!64272 (= lt!12085 (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64273 () Bool)

(declare-fun res!30071 () Bool)

(assert (=> b!64273 (= e!34834 res!30071)))

(assert (=> b!64273 true))

(declare-fun b!64274 () Bool)

(declare-fun e!34849 () Formula!6)

(assert (=> b!64274 (= e!34849 (rhs!821 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64275 () Bool)

(declare-fun e!34841 () Bool)

(assert (=> b!64275 (= e!34841 (and lt!12083 lt!12087))))

(declare-fun b!64276 () Bool)

(declare-fun lt!12084 () Bool)

(assert (=> b!64276 (= e!34851 lt!12084)))

(declare-fun b!64277 () Bool)

(declare-fun e!34846 () Bool)

(declare-fun res!30074 () Bool)

(assert (=> b!64277 (= e!34846 res!30074)))

(assert (=> b!64277 true))

(declare-fun b!64278 () Bool)

(declare-fun e!34831 () Bool)

(assert (=> b!64278 (= e!34831 (not e!34847))))

(declare-fun lt!12080 () Bool)

(declare-fun c!14166 () Bool)

(assert (=> b!64278 (= c!14166 (or lt!12080 (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(declare-fun b!64279 () Bool)

(declare-fun res!30058 () Bool)

(assert (=> b!64279 (= e!34838 res!30058)))

(assert (=> b!64279 true))

(declare-fun b!64280 () Bool)

(assert (=> b!64280 (= e!34846 (eval!0 e!34849))))

(declare-fun c!14168 () Bool)

(declare-fun lt!12079 () Bool)

(assert (=> b!64280 (= c!14168 lt!12079)))

(declare-fun b!64281 () Bool)

(assert (=> b!64281 (= e!34832 e!34850)))

(declare-fun res!30075 () Bool)

(assert (=> b!64281 (=> res!30075 e!34850)))

(assert (=> b!64281 (= res!30075 (and lt!12077 (not lt!12084)))))

(assert (=> b!64281 (= lt!12084 e!34834)))

(declare-fun c!14164 () Bool)

(assert (=> b!64281 (= c!14164 (or lt!12077 (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(assert (=> b!64281 (= lt!12077 (is-Or!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64282 () Bool)

(declare-fun res!30070 () Bool)

(assert (=> b!64282 (= e!34839 res!30070)))

(assert (=> b!64282 true))

(declare-fun b!64283 () Bool)

(assert (=> b!64283 (= e!34849 e!34836)))

(declare-fun c!14175 () Bool)

(assert (=> b!64283 (= c!14175 e!34831)))

(declare-fun res!30073 () Bool)

(assert (=> b!64283 (=> (not res!30073) (not e!34831))))

(assert (=> b!64283 (= res!30073 lt!12080)))

(assert (=> b!64283 (= lt!12080 (is-Or!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64284 () Bool)

(declare-fun res!30065 () Bool)

(assert (=> b!64284 (= e!34847 res!30065)))

(assert (=> b!64284 true))

(declare-fun b!64285 () Bool)

(assert (=> b!64285 (= e!34841 e!34842)))

(declare-fun c!14177 () Bool)

(assert (=> b!64285 (= c!14177 lt!12078)))

(assert (=> b!64285 (= lt!12076 e!34839)))

(declare-fun c!14171 () Bool)

(assert (=> b!64285 (= c!14171 e!34844)))

(declare-fun res!30069 () Bool)

(assert (=> b!64285 (=> res!30069 e!34844)))

(assert (=> b!64285 (= res!30069 (and lt!12078 (not lt!12074)))))

(assert (=> b!64285 (= lt!12074 e!34845)))

(declare-fun c!14170 () Bool)

(assert (=> b!64285 (= c!14170 (or lt!12078 (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(assert (=> b!64285 (= lt!12078 (is-Or!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64286 () Bool)

(declare-fun res!30072 () Bool)

(assert (=> b!64286 (= e!34833 res!30072)))

(assert (=> b!64286 true))

(declare-fun b!64287 () Bool)

(assert (=> b!64287 (= e!34829 lt!12074)))

(declare-fun b!64288 () Bool)

(declare-fun e!34837 () Bool)

(assert (=> b!64288 (= e!34840 e!34837)))

(declare-fun res!30063 () Bool)

(assert (=> b!64288 (=> (not res!30063) (not e!34837))))

(declare-fun lt!12086 () Bool)

(assert (=> b!64288 (= res!30063 lt!12086)))

(assert (=> b!64288 (= lt!12086 (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64289 () Bool)

(declare-fun e!34835 () Bool)

(assert (=> b!64289 (= e!34835 (not lt!12081))))

(declare-fun b!64290 () Bool)

(assert (=> b!64290 (= e!34848 e!34835)))

(declare-fun c!14165 () Bool)

(assert (=> b!64290 (= c!14165 (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64291 () Bool)

(assert (=> b!64291 (= e!34848 (or (not lt!12081) lt!12076))))

(declare-fun d!53298 () Bool)

(declare-fun c!14167 () Bool)

(assert (=> d!53298 (= c!14167 lt!12075)))

(assert (=> d!53298 (= lt!12087 e!34846)))

(declare-fun c!14169 () Bool)

(assert (=> d!53298 (= c!14169 e!34830)))

(declare-fun res!30064 () Bool)

(assert (=> d!53298 (=> res!30064 e!34830)))

(assert (=> d!53298 (= res!30064 lt!12079)))

(assert (=> d!53298 (= lt!12079 (and lt!12075 lt!12083))))

(assert (=> d!53298 (= lt!12083 e!34838)))

(declare-fun c!14178 () Bool)

(assert (=> d!53298 (= c!14178 (or lt!12075 (is-Or!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (is-Implies!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))) (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(assert (=> d!53298 (= lt!12075 (is-And!11 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(assert (=> d!53298 (= (eval!0 (ite lt!11852 lt!11849 (rhs!822 f!3964))) e!34841)))

(declare-fun b!64292 () Bool)

(assert (=> b!64292 (= e!34837 e!34851)))

(declare-fun c!14174 () Bool)

(assert (=> b!64292 (= c!14174 (or lt!12086 (is-Not!11 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(declare-fun b!64293 () Bool)

(assert (=> b!64293 (= e!34836 (rhs!822 (ite lt!11852 lt!11849 (rhs!822 f!3964))))))

(declare-fun b!64294 () Bool)

(declare-fun res!30068 () Bool)

(assert (=> b!64294 (= e!34845 res!30068)))

(assert (=> b!64294 true))

(declare-fun b!64295 () Bool)

(assert (=> b!64295 (= e!34835 (evalLit!0 (id!4785 (ite lt!11852 lt!11849 (rhs!822 f!3964)))))))

(declare-fun b!64296 () Bool)

(assert (=> b!64296 (= e!34833 lt!12074)))

(assert (= (and d!53298 c!14178) b!64261))

(assert (= (and d!53298 (not c!14178)) b!64279))

(assert (= (and d!53298 (not res!30064)) b!64258))

(assert (= (and b!64258 res!30067) b!64281))

(assert (= (and b!64281 c!14164) b!64270))

(assert (= (and b!64281 (not c!14164)) b!64273))

(assert (= (and b!64281 (not res!30075)) b!64267))

(assert (= (and b!64267 res!30059) b!64288))

(assert (= (and b!64288 res!30063) b!64292))

(assert (= (and b!64292 c!14174) b!64276))

(assert (= (and b!64292 (not c!14174)) b!64264))

(assert (= (and b!64283 res!30073) b!64278))

(assert (= (and b!64278 c!14166) b!64259))

(assert (= (and b!64278 (not c!14166)) b!64284))

(assert (= (and b!64283 c!14175) b!64263))

(assert (= (and b!64283 (not c!14175)) b!64293))

(assert (= (and b!64280 c!14168) b!64274))

(assert (= (and b!64280 (not c!14168)) b!64283))

(assert (= (and d!53298 c!14169) b!64280))

(assert (= (and d!53298 (not c!14169)) b!64277))

(assert (= (and b!64285 c!14170) b!64260))

(assert (= (and b!64285 (not c!14170)) b!64294))

(assert (= (and b!64285 (not res!30069)) b!64265))

(assert (= (and b!64265 res!30061) b!64271))

(assert (= (and b!64271 res!30060) b!64266))

(assert (= (and b!64266 c!14173) b!64296))

(assert (= (and b!64266 (not c!14173)) b!64286))

(assert (= (and b!64285 c!14171) b!64269))

(assert (= (and b!64285 (not c!14171)) b!64282))

(assert (= (and b!64272 c!14172) b!64287))

(assert (= (and b!64272 (not c!14172)) b!64268))

(assert (= (and b!64290 c!14165) b!64289))

(assert (= (and b!64290 (not c!14165)) b!64295))

(assert (= (and b!64272 c!14176) b!64291))

(assert (= (and b!64272 (not c!14176)) b!64290))

(assert (= (and b!64285 c!14177) b!64262))

(assert (= (and b!64285 (not c!14177)) b!64272))

(assert (= (and d!53298 c!14167) b!64275))

(assert (= (and d!53298 (not c!14167)) b!64285))

(declare-fun m!69195 () Bool)

(assert (=> b!64261 m!69195))

(declare-fun m!69197 () Bool)

(assert (=> b!64280 m!69197))

(declare-fun m!69199 () Bool)

(assert (=> b!64295 m!69199))

(assert (=> b!63703 d!53298))

(declare-fun lt!12096 () Bool)

(declare-fun e!34863 () Bool)

(declare-fun b!64297 () Bool)

(assert (=> b!64297 (= e!34863 (= lt!12096 (eval!0 (simplify!1 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))))

(declare-fun b!64298 () Bool)

(declare-fun e!34862 () Bool)

(declare-fun e!34857 () Bool)

(declare-fun e!34858 () Bool)

(assert (=> b!64298 (= e!34862 (= e!34857 e!34858))))

(declare-fun c!14183 () Bool)

(declare-fun lt!12091 () Bool)

(assert (=> b!64298 (= c!14183 (or lt!12091 (and (not lt!12091) (is-Literal!5 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))))

(declare-fun c!14187 () Bool)

(assert (=> b!64298 (= c!14187 (or lt!12091 (is-Literal!5 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))

(declare-fun b!64299 () Bool)

(declare-fun e!34860 () Bool)

(declare-fun res!30081 () Bool)

(assert (=> b!64299 (= e!34860 res!30081)))

(assert (=> b!64299 true))

(declare-fun e!34854 () Bool)

(declare-fun b!64300 () Bool)

(assert (=> b!64300 (= e!34854 (simplifySemantics!0 (ite lt!12091 (rhs!821 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (ite (is-Implies!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (rhs!822 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (ite (is-Or!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (rhs!823 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (f!4078 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))))))

(declare-fun b!64301 () Bool)

(assert (=> b!64301 (= e!34857 (eval!0 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun b!64302 () Bool)

(assert (=> b!64302 (= e!34860 (eval!0 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun d!53300 () Bool)

(assert (=> d!53300 e!34862))

(declare-fun c!14189 () Bool)

(assert (=> d!53300 (= c!14189 (or lt!12091 (is-Literal!5 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))

(declare-fun lt!12094 () Formula!6)

(declare-fun e!34861 () Formula!6)

(assert (=> d!53300 (= lt!12094 e!34861)))

(declare-fun c!14188 () Bool)

(assert (=> d!53300 (= c!14188 (or lt!12091 (is-Literal!5 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))

(declare-fun lt!12088 () Bool)

(declare-fun e!34853 () Bool)

(assert (=> d!53300 (= lt!12088 e!34853)))

(declare-fun c!14186 () Bool)

(assert (=> d!53300 (= c!14186 (or lt!12091 (and (not (is-Literal!5 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))) (or (is-Implies!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (is-Or!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))))

(declare-fun lt!12090 () Bool)

(assert (=> d!53300 (= lt!12090 e!34854)))

(declare-fun c!14181 () Bool)

(assert (=> d!53300 (= c!14181 (or lt!12091 (not (is-Literal!5 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))))

(assert (=> d!53300 (= lt!12091 (is-And!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(assert (=> d!53300 (= (simplifySemantics!0 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) true)))

(declare-fun b!64303 () Bool)

(declare-fun lt!12095 () Bool)

(declare-fun lt!12089 () Formula!6)

(assert (=> b!64303 (= e!34863 (= lt!12095 (eval!0 lt!12089)))))

(declare-fun b!64304 () Bool)

(assert (=> b!64304 (= e!34861 (simplify!1 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun b!64305 () Bool)

(assert (=> b!64305 (= e!34853 (simplifySemantics!0 (ite lt!12091 (lhs!821 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (ite (is-Implies!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (lhs!822 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))) (lhs!823 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))))

(declare-fun b!64306 () Bool)

(declare-fun e!34856 () Bool)

(assert (=> b!64306 (= e!34862 e!34856)))

(declare-fun c!14185 () Bool)

(declare-fun lt!12093 () Bool)

(assert (=> b!64306 (= c!14185 lt!12093)))

(declare-fun e!34859 () Bool)

(assert (=> b!64306 (= lt!12096 e!34859)))

(declare-fun c!14182 () Bool)

(declare-fun lt!12092 () Bool)

(assert (=> b!64306 (= c!14182 (or lt!12092 (and (not lt!12093) (not (is-Or!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))))

(assert (=> b!64306 (= lt!12092 lt!12093)))

(declare-fun e!34855 () Formula!6)

(assert (=> b!64306 (= lt!12089 e!34855)))

(declare-fun c!14179 () Bool)

(assert (=> b!64306 (= c!14179 (or lt!12093 (is-Or!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))

(assert (=> b!64306 (= lt!12095 e!34860)))

(declare-fun c!14180 () Bool)

(assert (=> b!64306 (= c!14180 (or lt!12093 (is-Or!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))

(assert (=> b!64306 (= lt!12093 (is-Implies!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun b!64307 () Bool)

(assert (=> b!64307 (= e!34859 (eval!0 (ite lt!12092 lt!12089 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)))))))))

(declare-fun b!64308 () Bool)

(declare-fun res!30076 () Formula!6)

(assert (=> b!64308 (= e!34855 res!30076)))

(assert (=> b!64308 true))

(declare-fun b!64309 () Bool)

(assert (=> b!64309 (= e!34858 (eval!0 lt!12094))))

(declare-fun b!64310 () Bool)

(declare-fun res!30079 () Bool)

(assert (=> b!64310 (= e!34858 res!30079)))

(assert (=> b!64310 true))

(declare-fun b!64311 () Bool)

(declare-fun res!30077 () Formula!6)

(assert (=> b!64311 (= e!34861 res!30077)))

(assert (=> b!64311 true))

(declare-fun b!64312 () Bool)

(declare-fun res!30083 () Bool)

(assert (=> b!64312 (= e!34857 res!30083)))

(assert (=> b!64312 true))

(declare-fun b!64313 () Bool)

(declare-fun res!30080 () Bool)

(assert (=> b!64313 (= e!34853 res!30080)))

(assert (=> b!64313 true))

(declare-fun b!64314 () Bool)

(assert (=> b!64314 (= e!34855 (simplify!1 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun b!64315 () Bool)

(assert (=> b!64315 (= e!34856 (= lt!12095 lt!12096))))

(declare-fun b!64316 () Bool)

(assert (=> b!64316 (= e!34856 e!34863)))

(declare-fun c!14184 () Bool)

(assert (=> b!64316 (= c!14184 (is-Or!11 (ite lt!11851 (lhs!821 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964))))))))

(declare-fun b!64317 () Bool)

(declare-fun res!30082 () Bool)

(assert (=> b!64317 (= e!34854 res!30082)))

(assert (=> b!64317 true))

(declare-fun b!64318 () Bool)

(declare-fun res!30078 () Bool)

(assert (=> b!64318 (= e!34859 res!30078)))

(assert (=> b!64318 true))

(assert (=> b!64318 true))

(assert (= (and d!53300 c!14181) b!64300))

(assert (= (and d!53300 (not c!14181)) b!64317))

(assert (= (and d!53300 c!14186) b!64305))

(assert (= (and d!53300 (not c!14186)) b!64313))

(assert (= (and d!53300 c!14188) b!64304))

(assert (= (and d!53300 (not c!14188)) b!64311))

(assert (= (and b!64298 c!14187) b!64301))

(assert (= (and b!64298 (not c!14187)) b!64312))

(assert (= (and b!64298 c!14183) b!64309))

(assert (= (and b!64298 (not c!14183)) b!64310))

(assert (= (and b!64306 c!14180) b!64302))

(assert (= (and b!64306 (not c!14180)) b!64299))

(assert (= (and b!64306 c!14179) b!64314))

(assert (= (and b!64306 (not c!14179)) b!64308))

(assert (= (and b!64306 c!14182) b!64307))

(assert (= (and b!64306 (not c!14182)) b!64318))

(assert (= (and b!64316 c!14184) b!64303))

(assert (= (and b!64316 (not c!14184)) b!64297))

(assert (= (and b!64306 c!14185) b!64315))

(assert (= (and b!64306 (not c!14185)) b!64316))

(assert (= (and d!53300 c!14189) b!64298))

(assert (= (and d!53300 (not c!14189)) b!64306))

(declare-fun m!69201 () Bool)

(assert (=> b!64300 m!69201))

(declare-fun m!69203 () Bool)

(assert (=> b!64309 m!69203))

(declare-fun m!69205 () Bool)

(assert (=> b!64301 m!69205))

(declare-fun m!69207 () Bool)

(assert (=> b!64314 m!69207))

(declare-fun m!69209 () Bool)

(assert (=> b!64305 m!69209))

(declare-fun m!69211 () Bool)

(assert (=> b!64307 m!69211))

(assert (=> b!64302 m!69205))

(assert (=> b!64304 m!69207))

(declare-fun m!69213 () Bool)

(assert (=> b!64303 m!69213))

(assert (=> b!64297 m!69207))

(assert (=> b!64297 m!69207))

(declare-fun m!69215 () Bool)

(assert (=> b!64297 m!69215))

(assert (=> b!63701 d!53300))

(declare-fun lt!12105 () Bool)

(declare-fun b!64319 () Bool)

(declare-fun e!34874 () Bool)

(assert (=> b!64319 (= e!34874 (= lt!12105 (eval!0 (simplify!1 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))))

(declare-fun b!64320 () Bool)

(declare-fun e!34873 () Bool)

(declare-fun e!34868 () Bool)

(declare-fun e!34869 () Bool)

(assert (=> b!64320 (= e!34873 (= e!34868 e!34869))))

(declare-fun lt!12100 () Bool)

(declare-fun c!14194 () Bool)

(assert (=> b!64320 (= c!14194 (or lt!12100 (and (not lt!12100) (is-Literal!5 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))))

(declare-fun c!14198 () Bool)

(assert (=> b!64320 (= c!14198 (or lt!12100 (is-Literal!5 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))

(declare-fun b!64321 () Bool)

(declare-fun e!34871 () Bool)

(declare-fun res!30089 () Bool)

(assert (=> b!64321 (= e!34871 res!30089)))

(assert (=> b!64321 true))

(declare-fun e!34865 () Bool)

(declare-fun b!64322 () Bool)

(assert (=> b!64322 (= e!34865 (simplifySemantics!0 (ite lt!12100 (rhs!821 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (ite (is-Implies!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (rhs!822 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (ite (is-Or!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (rhs!823 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (f!4078 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))))))

(declare-fun b!64323 () Bool)

(assert (=> b!64323 (= e!34868 (eval!0 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!64324 () Bool)

(assert (=> b!64324 (= e!34871 (eval!0 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun d!53302 () Bool)

(assert (=> d!53302 e!34873))

(declare-fun c!14200 () Bool)

(assert (=> d!53302 (= c!14200 (or lt!12100 (is-Literal!5 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))

(declare-fun lt!12103 () Formula!6)

(declare-fun e!34872 () Formula!6)

(assert (=> d!53302 (= lt!12103 e!34872)))

(declare-fun c!14199 () Bool)

(assert (=> d!53302 (= c!14199 (or lt!12100 (is-Literal!5 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))

(declare-fun lt!12097 () Bool)

(declare-fun e!34864 () Bool)

(assert (=> d!53302 (= lt!12097 e!34864)))

(declare-fun c!14197 () Bool)

(assert (=> d!53302 (= c!14197 (or lt!12100 (and (not (is-Literal!5 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))) (or (is-Implies!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (is-Or!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))))

(declare-fun lt!12099 () Bool)

(assert (=> d!53302 (= lt!12099 e!34865)))

(declare-fun c!14192 () Bool)

(assert (=> d!53302 (= c!14192 (or lt!12100 (not (is-Literal!5 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))))

(assert (=> d!53302 (= lt!12100 (is-And!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(assert (=> d!53302 (= (simplifySemantics!0 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) true)))

(declare-fun b!64325 () Bool)

(declare-fun lt!12104 () Bool)

(declare-fun lt!12098 () Formula!6)

(assert (=> b!64325 (= e!34874 (= lt!12104 (eval!0 lt!12098)))))

(declare-fun b!64326 () Bool)

(assert (=> b!64326 (= e!34872 (simplify!1 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!64327 () Bool)

(assert (=> b!64327 (= e!34864 (simplifySemantics!0 (ite lt!12100 (lhs!821 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (ite (is-Implies!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (lhs!822 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))) (lhs!823 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))))

(declare-fun b!64328 () Bool)

(declare-fun e!34867 () Bool)

(assert (=> b!64328 (= e!34873 e!34867)))

(declare-fun c!14196 () Bool)

(declare-fun lt!12102 () Bool)

(assert (=> b!64328 (= c!14196 lt!12102)))

(declare-fun e!34870 () Bool)

(assert (=> b!64328 (= lt!12105 e!34870)))

(declare-fun lt!12101 () Bool)

(declare-fun c!14193 () Bool)

(assert (=> b!64328 (= c!14193 (or lt!12101 (and (not lt!12102) (not (is-Or!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))))

(assert (=> b!64328 (= lt!12101 lt!12102)))

(declare-fun e!34866 () Formula!6)

(assert (=> b!64328 (= lt!12098 e!34866)))

(declare-fun c!14190 () Bool)

(assert (=> b!64328 (= c!14190 (or lt!12102 (is-Or!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))

(assert (=> b!64328 (= lt!12104 e!34871)))

(declare-fun c!14191 () Bool)

(assert (=> b!64328 (= c!14191 (or lt!12102 (is-Or!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))

(assert (=> b!64328 (= lt!12102 (is-Implies!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!64329 () Bool)

(assert (=> b!64329 (= e!34870 (eval!0 (ite lt!12101 lt!12098 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964))))))))))

(declare-fun b!64330 () Bool)

(declare-fun res!30084 () Formula!6)

(assert (=> b!64330 (= e!34866 res!30084)))

(assert (=> b!64330 true))

(declare-fun b!64331 () Bool)

(assert (=> b!64331 (= e!34869 (eval!0 lt!12103))))

(declare-fun b!64332 () Bool)

(declare-fun res!30087 () Bool)

(assert (=> b!64332 (= e!34869 res!30087)))

(assert (=> b!64332 true))

(declare-fun b!64333 () Bool)

(declare-fun res!30085 () Formula!6)

(assert (=> b!64333 (= e!34872 res!30085)))

(assert (=> b!64333 true))

(declare-fun b!64334 () Bool)

(declare-fun res!30091 () Bool)

(assert (=> b!64334 (= e!34868 res!30091)))

(assert (=> b!64334 true))

(declare-fun b!64335 () Bool)

(declare-fun res!30088 () Bool)

(assert (=> b!64335 (= e!34864 res!30088)))

(assert (=> b!64335 true))

(declare-fun b!64336 () Bool)

(assert (=> b!64336 (= e!34866 (simplify!1 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!64337 () Bool)

(assert (=> b!64337 (= e!34867 (= lt!12104 lt!12105))))

(declare-fun b!64338 () Bool)

(assert (=> b!64338 (= e!34867 e!34874)))

(declare-fun c!14195 () Bool)

(assert (=> b!64338 (= c!14195 (is-Or!11 (ite lt!11842 (rhs!821 (lhs!822 f!3964)) (ite (is-Implies!11 (lhs!822 f!3964)) (rhs!822 (lhs!822 f!3964)) (ite (is-Or!11 (lhs!822 f!3964)) (rhs!823 (lhs!822 f!3964)) (f!4078 (lhs!822 f!3964)))))))))

(declare-fun b!64339 () Bool)

(declare-fun res!30090 () Bool)

(assert (=> b!64339 (= e!34865 res!30090)))

(assert (=> b!64339 true))

(declare-fun b!64340 () Bool)

(declare-fun res!30086 () Bool)

(assert (=> b!64340 (= e!34870 res!30086)))

(assert (=> b!64340 true))

(assert (=> b!64340 true))

(assert (= (and d!53302 c!14192) b!64322))

(assert (= (and d!53302 (not c!14192)) b!64339))

(assert (= (and d!53302 c!14197) b!64327))

(assert (= (and d!53302 (not c!14197)) b!64335))

(assert (= (and d!53302 c!14199) b!64326))

(assert (= (and d!53302 (not c!14199)) b!64333))

(assert (= (and b!64320 c!14198) b!64323))

(assert (= (and b!64320 (not c!14198)) b!64334))

(assert (= (and b!64320 c!14194) b!64331))

(assert (= (and b!64320 (not c!14194)) b!64332))

(assert (= (and b!64328 c!14191) b!64324))

(assert (= (and b!64328 (not c!14191)) b!64321))

(assert (= (and b!64328 c!14190) b!64336))

(assert (= (and b!64328 (not c!14190)) b!64330))

(assert (= (and b!64328 c!14193) b!64329))

(assert (= (and b!64328 (not c!14193)) b!64340))

(assert (= (and b!64338 c!14195) b!64325))

(assert (= (and b!64338 (not c!14195)) b!64319))

(assert (= (and b!64328 c!14196) b!64337))

(assert (= (and b!64328 (not c!14196)) b!64338))

(assert (= (and d!53302 c!14200) b!64320))

(assert (= (and d!53302 (not c!14200)) b!64328))

(declare-fun m!69217 () Bool)

(assert (=> b!64322 m!69217))

(declare-fun m!69219 () Bool)

(assert (=> b!64331 m!69219))

(declare-fun m!69221 () Bool)

(assert (=> b!64323 m!69221))

(declare-fun m!69223 () Bool)

(assert (=> b!64336 m!69223))

(declare-fun m!69225 () Bool)

(assert (=> b!64327 m!69225))

(declare-fun m!69227 () Bool)

(assert (=> b!64329 m!69227))

(assert (=> b!64324 m!69221))

(assert (=> b!64326 m!69223))

(declare-fun m!69229 () Bool)

(assert (=> b!64325 m!69229))

(assert (=> b!64319 m!69223))

(assert (=> b!64319 m!69223))

(declare-fun m!69231 () Bool)

(assert (=> b!64319 m!69231))

(assert (=> b!63674 d!53302))

(declare-fun b!64341 () Bool)

(declare-fun e!34876 () Bool)

(declare-fun e!34878 () Bool)

(assert (=> b!64341 (= e!34876 e!34878)))

(declare-fun res!30101 () Bool)

(assert (=> b!64341 (=> (not res!30101) (not e!34878))))

(declare-fun lt!12107 () Bool)

(assert (=> b!64341 (= res!30101 (not lt!12107))))

(declare-fun b!64342 () Bool)

(declare-fun e!34893 () Bool)

(declare-fun lt!12115 () Bool)

(assert (=> b!64342 (= e!34893 lt!12115)))

(declare-fun b!64343 () Bool)

(declare-fun e!34891 () Bool)

(assert (=> b!64343 (= e!34891 lt!12115)))

(declare-fun b!64344 () Bool)

(declare-fun e!34884 () Bool)

(assert (=> b!64344 (= e!34884 (eval!0 (ite lt!12107 (lhs!821 (rhs!822 f!3964)) (ite (is-Or!11 (rhs!822 f!3964)) (lhs!823 (rhs!822 f!3964)) (ite (is-Implies!11 (rhs!822 f!3964)) (lhs!822 (rhs!822 f!3964)) (f!4078 (rhs!822 f!3964)))))))))

(declare-fun b!64345 () Bool)

(declare-fun e!34888 () Bool)

(declare-fun lt!12106 () Bool)

(declare-fun lt!12108 () Bool)

(assert (=> b!64345 (= e!34888 (or lt!12106 lt!12108))))

(declare-fun b!64346 () Bool)

(declare-fun e!34882 () Formula!6)

(assert (=> b!64346 (= e!34882 (rhs!823 (rhs!822 f!3964)))))

(declare-fun b!64347 () Bool)

(declare-fun e!34897 () Bool)

(declare-fun res!30100 () Bool)

(assert (=> b!64347 (= e!34897 res!30100)))

(assert (=> b!64347 true))

(declare-fun b!64348 () Bool)

(declare-fun e!34890 () Bool)

(declare-fun e!34889 () Bool)

(assert (=> b!64348 (= e!34890 e!34889)))

(declare-fun res!30095 () Bool)

(assert (=> b!64348 (=> (not res!30095) (not e!34889))))

(declare-fun lt!12110 () Bool)

(assert (=> b!64348 (= res!30095 (not lt!12110))))

(declare-fun b!64349 () Bool)

(declare-fun e!34898 () Bool)

(declare-fun e!34879 () Bool)

(assert (=> b!64349 (= e!34898 e!34879)))

(declare-fun c!14210 () Bool)

(declare-fun lt!12114 () Bool)

(assert (=> b!64349 (= c!14210 (or lt!12114 (is-Not!11 (rhs!822 f!3964))))))

(declare-fun b!64350 () Bool)

(declare-fun e!34896 () Bool)

(declare-fun e!34886 () Bool)

(assert (=> b!64350 (= e!34896 e!34886)))

(declare-fun res!30093 () Bool)

(assert (=> b!64350 (=> (not res!30093) (not e!34886))))

(declare-fun lt!12109 () Bool)

(assert (=> b!64350 (= res!30093 (not lt!12109))))

(declare-fun b!64351 () Bool)

(declare-fun e!34875 () Bool)

(declare-fun res!30096 () Bool)

(assert (=> b!64351 (= e!34875 res!30096)))

(assert (=> b!64351 true))

(assert (=> b!64351 true))

(declare-fun b!64352 () Bool)

(declare-fun e!34885 () Bool)

(declare-fun lt!12119 () Bool)

(assert (=> b!64352 (= e!34885 lt!12119)))

(declare-fun b!64353 () Bool)

(declare-fun e!34880 () Bool)

(assert (=> b!64353 (= e!34880 lt!12115)))

(declare-fun b!64354 () Bool)

(assert (=> b!64354 (= e!34889 e!34898)))

(declare-fun res!30094 () Bool)

(assert (=> b!64354 (=> (not res!30094) (not e!34898))))

(assert (=> b!64354 (= res!30094 lt!12114)))

(assert (=> b!64354 (= lt!12114 (is-Implies!11 (rhs!822 f!3964)))))

(declare-fun b!64355 () Bool)

(declare-fun e!34894 () Bool)

(assert (=> b!64355 (= e!34888 e!34894)))

(declare-fun c!14213 () Bool)

(declare-fun lt!12117 () Bool)

(assert (=> b!64355 (= c!14213 lt!12117)))

(declare-fun lt!12113 () Bool)

(assert (=> b!64355 (= lt!12113 e!34875)))

(declare-fun c!14209 () Bool)

(assert (=> b!64355 (= c!14209 (or lt!12117 (is-Not!11 (rhs!822 f!3964))))))

(assert (=> b!64355 (= lt!12117 (is-Implies!11 (rhs!822 f!3964)))))

(declare-fun b!64356 () Bool)

(declare-fun res!30105 () Bool)

(assert (=> b!64356 (= e!34880 res!30105)))

(assert (=> b!64356 true))

(declare-fun b!64357 () Bool)

(declare-fun e!34895 () Formula!6)

(assert (=> b!64357 (= e!34895 (rhs!821 (rhs!822 f!3964)))))

(declare-fun b!64358 () Bool)

(declare-fun e!34887 () Bool)

(assert (=> b!64358 (= e!34887 (and lt!12115 lt!12119))))

(declare-fun b!64359 () Bool)

(declare-fun lt!12116 () Bool)

(assert (=> b!64359 (= e!34897 lt!12116)))

(declare-fun b!64360 () Bool)

(declare-fun e!34892 () Bool)

(declare-fun res!30108 () Bool)

(assert (=> b!64360 (= e!34892 res!30108)))

(assert (=> b!64360 true))

(declare-fun b!64361 () Bool)

(declare-fun e!34877 () Bool)

(assert (=> b!64361 (= e!34877 (not e!34893))))

(declare-fun c!14203 () Bool)

(declare-fun lt!12112 () Bool)

(assert (=> b!64361 (= c!14203 (or lt!12112 (is-Implies!11 (rhs!822 f!3964)) (is-Not!11 (rhs!822 f!3964))))))

(declare-fun b!64362 () Bool)

(declare-fun res!30092 () Bool)

(assert (=> b!64362 (= e!34884 res!30092)))

(assert (=> b!64362 true))

(declare-fun b!64363 () Bool)

(assert (=> b!64363 (= e!34892 (eval!0 e!34895))))

(declare-fun c!14205 () Bool)

(declare-fun lt!12111 () Bool)

(assert (=> b!64363 (= c!14205 lt!12111)))

(declare-fun b!64364 () Bool)

(assert (=> b!64364 (= e!34878 e!34896)))

(declare-fun res!30109 () Bool)

(assert (=> b!64364 (=> res!30109 e!34896)))

(assert (=> b!64364 (= res!30109 (and lt!12109 (not lt!12116)))))

(assert (=> b!64364 (= lt!12116 e!34880)))

(declare-fun c!14201 () Bool)

(assert (=> b!64364 (= c!14201 (or lt!12109 (is-Implies!11 (rhs!822 f!3964)) (is-Not!11 (rhs!822 f!3964))))))

(assert (=> b!64364 (= lt!12109 (is-Or!11 (rhs!822 f!3964)))))

(declare-fun b!64365 () Bool)

(declare-fun res!30104 () Bool)

(assert (=> b!64365 (= e!34885 res!30104)))

(assert (=> b!64365 true))

(declare-fun b!64366 () Bool)

(assert (=> b!64366 (= e!34895 e!34882)))

(declare-fun c!14212 () Bool)

(assert (=> b!64366 (= c!14212 e!34877)))

(declare-fun res!30107 () Bool)

(assert (=> b!64366 (=> (not res!30107) (not e!34877))))

(assert (=> b!64366 (= res!30107 lt!12112)))

(assert (=> b!64366 (= lt!12112 (is-Or!11 (rhs!822 f!3964)))))

(declare-fun b!64367 () Bool)

(declare-fun res!30099 () Bool)

(assert (=> b!64367 (= e!34893 res!30099)))

(assert (=> b!64367 true))

(declare-fun b!64368 () Bool)

(assert (=> b!64368 (= e!34887 e!34888)))

(declare-fun c!14214 () Bool)

(assert (=> b!64368 (= c!14214 lt!12110)))

(assert (=> b!64368 (= lt!12108 e!34885)))

(declare-fun c!14208 () Bool)

(assert (=> b!64368 (= c!14208 e!34890)))

(declare-fun res!30103 () Bool)

(assert (=> b!64368 (=> res!30103 e!34890)))

(assert (=> b!64368 (= res!30103 (and lt!12110 (not lt!12106)))))

(assert (=> b!64368 (= lt!12106 e!34891)))

(declare-fun c!14207 () Bool)

(assert (=> b!64368 (= c!14207 (or lt!12110 (is-Implies!11 (rhs!822 f!3964)) (is-Not!11 (rhs!822 f!3964))))))

(assert (=> b!64368 (= lt!12110 (is-Or!11 (rhs!822 f!3964)))))

(declare-fun b!64369 () Bool)

(declare-fun res!30106 () Bool)

(assert (=> b!64369 (= e!34879 res!30106)))

(assert (=> b!64369 true))

(declare-fun b!64370 () Bool)

(assert (=> b!64370 (= e!34875 lt!12106)))

(declare-fun b!64371 () Bool)

(declare-fun e!34883 () Bool)

(assert (=> b!64371 (= e!34886 e!34883)))

(declare-fun res!30097 () Bool)

(assert (=> b!64371 (=> (not res!30097) (not e!34883))))

(declare-fun lt!12118 () Bool)

(assert (=> b!64371 (= res!30097 lt!12118)))

(assert (=> b!64371 (= lt!12118 (is-Implies!11 (rhs!822 f!3964)))))

(declare-fun b!64372 () Bool)

(declare-fun e!34881 () Bool)

(assert (=> b!64372 (= e!34881 (not lt!12113))))

(declare-fun b!64373 () Bool)

(assert (=> b!64373 (= e!34894 e!34881)))

(declare-fun c!14202 () Bool)

(assert (=> b!64373 (= c!14202 (is-Not!11 (rhs!822 f!3964)))))

(declare-fun b!64374 () Bool)

(assert (=> b!64374 (= e!34894 (or (not lt!12113) lt!12108))))

(declare-fun d!53304 () Bool)

(declare-fun c!14204 () Bool)

(assert (=> d!53304 (= c!14204 lt!12107)))

(assert (=> d!53304 (= lt!12119 e!34892)))

(declare-fun c!14206 () Bool)

(assert (=> d!53304 (= c!14206 e!34876)))

(declare-fun res!30098 () Bool)

(assert (=> d!53304 (=> res!30098 e!34876)))

(assert (=> d!53304 (= res!30098 lt!12111)))

(assert (=> d!53304 (= lt!12111 (and lt!12107 lt!12115))))

(assert (=> d!53304 (= lt!12115 e!34884)))

(declare-fun c!14215 () Bool)

(assert (=> d!53304 (= c!14215 (or lt!12107 (is-Or!11 (rhs!822 f!3964)) (is-Implies!11 (rhs!822 f!3964)) (is-Not!11 (rhs!822 f!3964))))))

(assert (=> d!53304 (= lt!12107 (is-And!11 (rhs!822 f!3964)))))

(assert (=> d!53304 (= (eval!0 (rhs!822 f!3964)) e!34887)))

(declare-fun b!64375 () Bool)

(assert (=> b!64375 (= e!34883 e!34897)))

(declare-fun c!14211 () Bool)

(assert (=> b!64375 (= c!14211 (or lt!12118 (is-Not!11 (rhs!822 f!3964))))))

(declare-fun b!64376 () Bool)

(assert (=> b!64376 (= e!34882 (rhs!822 (rhs!822 f!3964)))))

(declare-fun b!64377 () Bool)

(declare-fun res!30102 () Bool)

(assert (=> b!64377 (= e!34891 res!30102)))

(assert (=> b!64377 true))

(declare-fun b!64378 () Bool)

(assert (=> b!64378 (= e!34881 (evalLit!0 (id!4785 (rhs!822 f!3964))))))

(declare-fun b!64379 () Bool)

(assert (=> b!64379 (= e!34879 lt!12106)))

(assert (= (and d!53304 c!14215) b!64344))

(assert (= (and d!53304 (not c!14215)) b!64362))

(assert (= (and d!53304 (not res!30098)) b!64341))

(assert (= (and b!64341 res!30101) b!64364))

(assert (= (and b!64364 c!14201) b!64353))

(assert (= (and b!64364 (not c!14201)) b!64356))

(assert (= (and b!64364 (not res!30109)) b!64350))

(assert (= (and b!64350 res!30093) b!64371))

(assert (= (and b!64371 res!30097) b!64375))

(assert (= (and b!64375 c!14211) b!64359))

(assert (= (and b!64375 (not c!14211)) b!64347))

(assert (= (and b!64366 res!30107) b!64361))

(assert (= (and b!64361 c!14203) b!64342))

(assert (= (and b!64361 (not c!14203)) b!64367))

(assert (= (and b!64366 c!14212) b!64346))

(assert (= (and b!64366 (not c!14212)) b!64376))

(assert (= (and b!64363 c!14205) b!64357))

(assert (= (and b!64363 (not c!14205)) b!64366))

(assert (= (and d!53304 c!14206) b!64363))

(assert (= (and d!53304 (not c!14206)) b!64360))

(assert (= (and b!64368 c!14207) b!64343))

(assert (= (and b!64368 (not c!14207)) b!64377))

(assert (= (and b!64368 (not res!30103)) b!64348))

(assert (= (and b!64348 res!30095) b!64354))

(assert (= (and b!64354 res!30094) b!64349))

(assert (= (and b!64349 c!14210) b!64379))

(assert (= (and b!64349 (not c!14210)) b!64369))

(assert (= (and b!64368 c!14208) b!64352))

(assert (= (and b!64368 (not c!14208)) b!64365))

(assert (= (and b!64355 c!14209) b!64370))

(assert (= (and b!64355 (not c!14209)) b!64351))

(assert (= (and b!64373 c!14202) b!64372))

(assert (= (and b!64373 (not c!14202)) b!64378))

(assert (= (and b!64355 c!14213) b!64374))

(assert (= (and b!64355 (not c!14213)) b!64373))

(assert (= (and b!64368 c!14214) b!64345))

(assert (= (and b!64368 (not c!14214)) b!64355))

(assert (= (and d!53304 c!14204) b!64358))

(assert (= (and d!53304 (not c!14204)) b!64368))

(declare-fun m!69233 () Bool)

(assert (=> b!64344 m!69233))

(declare-fun m!69235 () Bool)

(assert (=> b!64363 m!69235))

(declare-fun m!69237 () Bool)

(assert (=> b!64378 m!69237))

(assert (=> b!63697 d!53304))

(declare-fun b!64380 () Bool)

(declare-fun e!34900 () Bool)

(declare-fun e!34902 () Bool)

(assert (=> b!64380 (= e!34900 e!34902)))

(declare-fun res!30119 () Bool)

(assert (=> b!64380 (=> (not res!30119) (not e!34902))))

(declare-fun lt!12121 () Bool)

(assert (=> b!64380 (= res!30119 (not lt!12121))))

(declare-fun b!64381 () Bool)

(declare-fun e!34917 () Bool)

(declare-fun lt!12129 () Bool)

(assert (=> b!64381 (= e!34917 lt!12129)))

(declare-fun b!64382 () Bool)

(declare-fun e!34915 () Bool)

(assert (=> b!64382 (= e!34915 lt!12129)))

(declare-fun b!64383 () Bool)

(declare-fun e!34908 () Bool)

(assert (=> b!64383 (= e!34908 (eval!0 (ite lt!12121 (lhs!821 lt!11845) (ite (is-Or!11 lt!11845) (lhs!823 lt!11845) (ite (is-Implies!11 lt!11845) (lhs!822 lt!11845) (f!4078 lt!11845))))))))

(declare-fun b!64384 () Bool)

(declare-fun e!34912 () Bool)

(declare-fun lt!12120 () Bool)

(declare-fun lt!12122 () Bool)

(assert (=> b!64384 (= e!34912 (or lt!12120 lt!12122))))

(declare-fun b!64385 () Bool)

(declare-fun e!34906 () Formula!6)

(assert (=> b!64385 (= e!34906 (rhs!823 lt!11845))))

(declare-fun b!64386 () Bool)

(declare-fun e!34921 () Bool)

(declare-fun res!30118 () Bool)

(assert (=> b!64386 (= e!34921 res!30118)))

(assert (=> b!64386 true))

(declare-fun b!64387 () Bool)

(declare-fun e!34914 () Bool)

(declare-fun e!34913 () Bool)

(assert (=> b!64387 (= e!34914 e!34913)))

(declare-fun res!30113 () Bool)

(assert (=> b!64387 (=> (not res!30113) (not e!34913))))

(declare-fun lt!12124 () Bool)

(assert (=> b!64387 (= res!30113 (not lt!12124))))

(declare-fun b!64388 () Bool)

(declare-fun e!34922 () Bool)

(declare-fun e!34903 () Bool)

(assert (=> b!64388 (= e!34922 e!34903)))

(declare-fun c!14225 () Bool)

(declare-fun lt!12128 () Bool)

(assert (=> b!64388 (= c!14225 (or lt!12128 (is-Not!11 lt!11845)))))

(declare-fun b!64389 () Bool)

(declare-fun e!34920 () Bool)

(declare-fun e!34910 () Bool)

(assert (=> b!64389 (= e!34920 e!34910)))

(declare-fun res!30111 () Bool)

(assert (=> b!64389 (=> (not res!30111) (not e!34910))))

(declare-fun lt!12123 () Bool)

(assert (=> b!64389 (= res!30111 (not lt!12123))))

(declare-fun b!64390 () Bool)

(declare-fun e!34899 () Bool)

(declare-fun res!30114 () Bool)

(assert (=> b!64390 (= e!34899 res!30114)))

(assert (=> b!64390 true))

(assert (=> b!64390 true))

(declare-fun b!64391 () Bool)

(declare-fun e!34909 () Bool)

(declare-fun lt!12133 () Bool)

(assert (=> b!64391 (= e!34909 lt!12133)))

(declare-fun b!64392 () Bool)

(declare-fun e!34904 () Bool)

(assert (=> b!64392 (= e!34904 lt!12129)))

(declare-fun b!64393 () Bool)

(assert (=> b!64393 (= e!34913 e!34922)))

(declare-fun res!30112 () Bool)

(assert (=> b!64393 (=> (not res!30112) (not e!34922))))

(assert (=> b!64393 (= res!30112 lt!12128)))

(assert (=> b!64393 (= lt!12128 (is-Implies!11 lt!11845))))

(declare-fun b!64394 () Bool)

(declare-fun e!34918 () Bool)

(assert (=> b!64394 (= e!34912 e!34918)))

(declare-fun c!14228 () Bool)

(declare-fun lt!12131 () Bool)

(assert (=> b!64394 (= c!14228 lt!12131)))

(declare-fun lt!12127 () Bool)

(assert (=> b!64394 (= lt!12127 e!34899)))

(declare-fun c!14224 () Bool)

(assert (=> b!64394 (= c!14224 (or lt!12131 (is-Not!11 lt!11845)))))

(assert (=> b!64394 (= lt!12131 (is-Implies!11 lt!11845))))

(declare-fun b!64395 () Bool)

(declare-fun res!30123 () Bool)

(assert (=> b!64395 (= e!34904 res!30123)))

(assert (=> b!64395 true))

(declare-fun b!64396 () Bool)

(declare-fun e!34919 () Formula!6)

(assert (=> b!64396 (= e!34919 (rhs!821 lt!11845))))

(declare-fun b!64397 () Bool)

(declare-fun e!34911 () Bool)

(assert (=> b!64397 (= e!34911 (and lt!12129 lt!12133))))

(declare-fun b!64398 () Bool)

(declare-fun lt!12130 () Bool)

(assert (=> b!64398 (= e!34921 lt!12130)))

(declare-fun b!64399 () Bool)

(declare-fun e!34916 () Bool)

(declare-fun res!30126 () Bool)

(assert (=> b!64399 (= e!34916 res!30126)))

(assert (=> b!64399 true))

(declare-fun b!64400 () Bool)

(declare-fun e!34901 () Bool)

(assert (=> b!64400 (= e!34901 (not e!34917))))

(declare-fun c!14218 () Bool)

(declare-fun lt!12126 () Bool)

(assert (=> b!64400 (= c!14218 (or lt!12126 (is-Implies!11 lt!11845) (is-Not!11 lt!11845)))))

(declare-fun b!64401 () Bool)

(declare-fun res!30110 () Bool)

(assert (=> b!64401 (= e!34908 res!30110)))

(assert (=> b!64401 true))

(declare-fun b!64402 () Bool)

(assert (=> b!64402 (= e!34916 (eval!0 e!34919))))

(declare-fun c!14220 () Bool)

(declare-fun lt!12125 () Bool)

(assert (=> b!64402 (= c!14220 lt!12125)))

(declare-fun b!64403 () Bool)

(assert (=> b!64403 (= e!34902 e!34920)))

(declare-fun res!30127 () Bool)

(assert (=> b!64403 (=> res!30127 e!34920)))

(assert (=> b!64403 (= res!30127 (and lt!12123 (not lt!12130)))))

(assert (=> b!64403 (= lt!12130 e!34904)))

(declare-fun c!14216 () Bool)

(assert (=> b!64403 (= c!14216 (or lt!12123 (is-Implies!11 lt!11845) (is-Not!11 lt!11845)))))

(assert (=> b!64403 (= lt!12123 (is-Or!11 lt!11845))))

(declare-fun b!64404 () Bool)

(declare-fun res!30122 () Bool)

(assert (=> b!64404 (= e!34909 res!30122)))

(assert (=> b!64404 true))

(declare-fun b!64405 () Bool)

(assert (=> b!64405 (= e!34919 e!34906)))

(declare-fun c!14227 () Bool)

(assert (=> b!64405 (= c!14227 e!34901)))

(declare-fun res!30125 () Bool)

(assert (=> b!64405 (=> (not res!30125) (not e!34901))))

(assert (=> b!64405 (= res!30125 lt!12126)))

(assert (=> b!64405 (= lt!12126 (is-Or!11 lt!11845))))

(declare-fun b!64406 () Bool)

(declare-fun res!30117 () Bool)

(assert (=> b!64406 (= e!34917 res!30117)))

(assert (=> b!64406 true))

(declare-fun b!64407 () Bool)

(assert (=> b!64407 (= e!34911 e!34912)))

(declare-fun c!14229 () Bool)

(assert (=> b!64407 (= c!14229 lt!12124)))

(assert (=> b!64407 (= lt!12122 e!34909)))

(declare-fun c!14223 () Bool)

(assert (=> b!64407 (= c!14223 e!34914)))

(declare-fun res!30121 () Bool)

(assert (=> b!64407 (=> res!30121 e!34914)))

(assert (=> b!64407 (= res!30121 (and lt!12124 (not lt!12120)))))

(assert (=> b!64407 (= lt!12120 e!34915)))

(declare-fun c!14222 () Bool)

(assert (=> b!64407 (= c!14222 (or lt!12124 (is-Implies!11 lt!11845) (is-Not!11 lt!11845)))))

(assert (=> b!64407 (= lt!12124 (is-Or!11 lt!11845))))

(declare-fun b!64408 () Bool)

(declare-fun res!30124 () Bool)

(assert (=> b!64408 (= e!34903 res!30124)))

(assert (=> b!64408 true))

(declare-fun b!64409 () Bool)

(assert (=> b!64409 (= e!34899 lt!12120)))

(declare-fun b!64410 () Bool)

(declare-fun e!34907 () Bool)

(assert (=> b!64410 (= e!34910 e!34907)))

(declare-fun res!30115 () Bool)

(assert (=> b!64410 (=> (not res!30115) (not e!34907))))

(declare-fun lt!12132 () Bool)

(assert (=> b!64410 (= res!30115 lt!12132)))

(assert (=> b!64410 (= lt!12132 (is-Implies!11 lt!11845))))

(declare-fun b!64411 () Bool)

(declare-fun e!34905 () Bool)

(assert (=> b!64411 (= e!34905 (not lt!12127))))

(declare-fun b!64412 () Bool)

(assert (=> b!64412 (= e!34918 e!34905)))

(declare-fun c!14217 () Bool)

(assert (=> b!64412 (= c!14217 (is-Not!11 lt!11845))))

(declare-fun b!64413 () Bool)

(assert (=> b!64413 (= e!34918 (or (not lt!12127) lt!12122))))

(declare-fun d!53306 () Bool)

(declare-fun c!14219 () Bool)

(assert (=> d!53306 (= c!14219 lt!12121)))

(assert (=> d!53306 (= lt!12133 e!34916)))

(declare-fun c!14221 () Bool)

(assert (=> d!53306 (= c!14221 e!34900)))

(declare-fun res!30116 () Bool)

(assert (=> d!53306 (=> res!30116 e!34900)))

(assert (=> d!53306 (= res!30116 lt!12125)))

(assert (=> d!53306 (= lt!12125 (and lt!12121 lt!12129))))

(assert (=> d!53306 (= lt!12129 e!34908)))

(declare-fun c!14230 () Bool)

(assert (=> d!53306 (= c!14230 (or lt!12121 (is-Or!11 lt!11845) (is-Implies!11 lt!11845) (is-Not!11 lt!11845)))))

(assert (=> d!53306 (= lt!12121 (is-And!11 lt!11845))))

(assert (=> d!53306 (= (eval!0 lt!11845) e!34911)))

(declare-fun b!64414 () Bool)

(assert (=> b!64414 (= e!34907 e!34921)))

(declare-fun c!14226 () Bool)

(assert (=> b!64414 (= c!14226 (or lt!12132 (is-Not!11 lt!11845)))))

(declare-fun b!64415 () Bool)

(assert (=> b!64415 (= e!34906 (rhs!822 lt!11845))))

(declare-fun b!64416 () Bool)

(declare-fun res!30120 () Bool)

(assert (=> b!64416 (= e!34915 res!30120)))

(assert (=> b!64416 true))

(declare-fun b!64417 () Bool)

(assert (=> b!64417 (= e!34905 (evalLit!0 (id!4785 lt!11845)))))

(declare-fun b!64418 () Bool)

(assert (=> b!64418 (= e!34903 lt!12120)))

(assert (= (and d!53306 c!14230) b!64383))

(assert (= (and d!53306 (not c!14230)) b!64401))

(assert (= (and d!53306 (not res!30116)) b!64380))

(assert (= (and b!64380 res!30119) b!64403))

(assert (= (and b!64403 c!14216) b!64392))

(assert (= (and b!64403 (not c!14216)) b!64395))

(assert (= (and b!64403 (not res!30127)) b!64389))

(assert (= (and b!64389 res!30111) b!64410))

(assert (= (and b!64410 res!30115) b!64414))

(assert (= (and b!64414 c!14226) b!64398))

(assert (= (and b!64414 (not c!14226)) b!64386))

(assert (= (and b!64405 res!30125) b!64400))

(assert (= (and b!64400 c!14218) b!64381))

(assert (= (and b!64400 (not c!14218)) b!64406))

(assert (= (and b!64405 c!14227) b!64385))

(assert (= (and b!64405 (not c!14227)) b!64415))

(assert (= (and b!64402 c!14220) b!64396))

(assert (= (and b!64402 (not c!14220)) b!64405))

(assert (= (and d!53306 c!14221) b!64402))

(assert (= (and d!53306 (not c!14221)) b!64399))

(assert (= (and b!64407 c!14222) b!64382))

(assert (= (and b!64407 (not c!14222)) b!64416))

(assert (= (and b!64407 (not res!30121)) b!64387))

(assert (= (and b!64387 res!30113) b!64393))

(assert (= (and b!64393 res!30112) b!64388))

(assert (= (and b!64388 c!14225) b!64418))

(assert (= (and b!64388 (not c!14225)) b!64408))

(assert (= (and b!64407 c!14223) b!64391))

(assert (= (and b!64407 (not c!14223)) b!64404))

(assert (= (and b!64394 c!14224) b!64409))

(assert (= (and b!64394 (not c!14224)) b!64390))

(assert (= (and b!64412 c!14217) b!64411))

(assert (= (and b!64412 (not c!14217)) b!64417))

(assert (= (and b!64394 c!14228) b!64413))

(assert (= (and b!64394 (not c!14228)) b!64412))

(assert (= (and b!64407 c!14229) b!64384))

(assert (= (and b!64407 (not c!14229)) b!64394))

(assert (= (and d!53306 c!14219) b!64397))

(assert (= (and d!53306 (not c!14219)) b!64407))

(declare-fun m!69239 () Bool)

(assert (=> b!64383 m!69239))

(declare-fun m!69241 () Bool)

(assert (=> b!64402 m!69241))

(declare-fun m!69243 () Bool)

(assert (=> b!64417 m!69243))

(assert (=> b!63683 d!53306))

(declare-fun b!64419 () Bool)

(declare-fun e!34924 () Bool)

(declare-fun e!34926 () Bool)

(assert (=> b!64419 (= e!34924 e!34926)))

(declare-fun res!30137 () Bool)

(assert (=> b!64419 (=> (not res!30137) (not e!34926))))

(declare-fun lt!12135 () Bool)

(assert (=> b!64419 (= res!30137 (not lt!12135))))

(declare-fun b!64420 () Bool)

(declare-fun e!34941 () Bool)

(declare-fun lt!12143 () Bool)

(assert (=> b!64420 (= e!34941 lt!12143)))

(declare-fun b!64421 () Bool)

(declare-fun e!34939 () Bool)

(assert (=> b!64421 (= e!34939 lt!12143)))

(declare-fun b!64422 () Bool)

(declare-fun e!34932 () Bool)

(assert (=> b!64422 (= e!34932 (eval!0 (ite lt!12135 (lhs!821 (simplify!1 (rhs!822 f!3964))) (ite (is-Or!11 (simplify!1 (rhs!822 f!3964))) (lhs!823 (simplify!1 (rhs!822 f!3964))) (ite (is-Implies!11 (simplify!1 (rhs!822 f!3964))) (lhs!822 (simplify!1 (rhs!822 f!3964))) (f!4078 (simplify!1 (rhs!822 f!3964))))))))))

(declare-fun b!64423 () Bool)

(declare-fun e!34936 () Bool)

(declare-fun lt!12134 () Bool)

(declare-fun lt!12136 () Bool)

(assert (=> b!64423 (= e!34936 (or lt!12134 lt!12136))))

(declare-fun b!64424 () Bool)

(declare-fun e!34930 () Formula!6)

(assert (=> b!64424 (= e!34930 (rhs!823 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64425 () Bool)

(declare-fun e!34945 () Bool)

(declare-fun res!30136 () Bool)

(assert (=> b!64425 (= e!34945 res!30136)))

(assert (=> b!64425 true))

(declare-fun b!64426 () Bool)

(declare-fun e!34938 () Bool)

(declare-fun e!34937 () Bool)

(assert (=> b!64426 (= e!34938 e!34937)))

(declare-fun res!30131 () Bool)

(assert (=> b!64426 (=> (not res!30131) (not e!34937))))

(declare-fun lt!12138 () Bool)

(assert (=> b!64426 (= res!30131 (not lt!12138))))

(declare-fun b!64427 () Bool)

(declare-fun e!34946 () Bool)

(declare-fun e!34927 () Bool)

(assert (=> b!64427 (= e!34946 e!34927)))

(declare-fun c!14240 () Bool)

(declare-fun lt!12142 () Bool)

(assert (=> b!64427 (= c!14240 (or lt!12142 (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(declare-fun b!64428 () Bool)

(declare-fun e!34944 () Bool)

(declare-fun e!34934 () Bool)

(assert (=> b!64428 (= e!34944 e!34934)))

(declare-fun res!30129 () Bool)

(assert (=> b!64428 (=> (not res!30129) (not e!34934))))

(declare-fun lt!12137 () Bool)

(assert (=> b!64428 (= res!30129 (not lt!12137))))

(declare-fun b!64429 () Bool)

(declare-fun e!34923 () Bool)

(declare-fun res!30132 () Bool)

(assert (=> b!64429 (= e!34923 res!30132)))

(assert (=> b!64429 true))

(assert (=> b!64429 true))

(declare-fun b!64430 () Bool)

(declare-fun e!34933 () Bool)

(declare-fun lt!12147 () Bool)

(assert (=> b!64430 (= e!34933 lt!12147)))

(declare-fun b!64431 () Bool)

(declare-fun e!34928 () Bool)

(assert (=> b!64431 (= e!34928 lt!12143)))

(declare-fun b!64432 () Bool)

(assert (=> b!64432 (= e!34937 e!34946)))

(declare-fun res!30130 () Bool)

(assert (=> b!64432 (=> (not res!30130) (not e!34946))))

(assert (=> b!64432 (= res!30130 lt!12142)))

(assert (=> b!64432 (= lt!12142 (is-Implies!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64433 () Bool)

(declare-fun e!34942 () Bool)

(assert (=> b!64433 (= e!34936 e!34942)))

(declare-fun c!14243 () Bool)

(declare-fun lt!12145 () Bool)

(assert (=> b!64433 (= c!14243 lt!12145)))

(declare-fun lt!12141 () Bool)

(assert (=> b!64433 (= lt!12141 e!34923)))

(declare-fun c!14239 () Bool)

(assert (=> b!64433 (= c!14239 (or lt!12145 (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(assert (=> b!64433 (= lt!12145 (is-Implies!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64434 () Bool)

(declare-fun res!30141 () Bool)

(assert (=> b!64434 (= e!34928 res!30141)))

(assert (=> b!64434 true))

(declare-fun b!64435 () Bool)

(declare-fun e!34943 () Formula!6)

(assert (=> b!64435 (= e!34943 (rhs!821 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64436 () Bool)

(declare-fun e!34935 () Bool)

(assert (=> b!64436 (= e!34935 (and lt!12143 lt!12147))))

(declare-fun b!64437 () Bool)

(declare-fun lt!12144 () Bool)

(assert (=> b!64437 (= e!34945 lt!12144)))

(declare-fun b!64438 () Bool)

(declare-fun e!34940 () Bool)

(declare-fun res!30144 () Bool)

(assert (=> b!64438 (= e!34940 res!30144)))

(assert (=> b!64438 true))

(declare-fun b!64439 () Bool)

(declare-fun e!34925 () Bool)

(assert (=> b!64439 (= e!34925 (not e!34941))))

(declare-fun c!14233 () Bool)

(declare-fun lt!12140 () Bool)

(assert (=> b!64439 (= c!14233 (or lt!12140 (is-Implies!11 (simplify!1 (rhs!822 f!3964))) (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(declare-fun b!64440 () Bool)

(declare-fun res!30128 () Bool)

(assert (=> b!64440 (= e!34932 res!30128)))

(assert (=> b!64440 true))

(declare-fun b!64441 () Bool)

(assert (=> b!64441 (= e!34940 (eval!0 e!34943))))

(declare-fun c!14235 () Bool)

(declare-fun lt!12139 () Bool)

(assert (=> b!64441 (= c!14235 lt!12139)))

(declare-fun b!64442 () Bool)

(assert (=> b!64442 (= e!34926 e!34944)))

(declare-fun res!30145 () Bool)

(assert (=> b!64442 (=> res!30145 e!34944)))

(assert (=> b!64442 (= res!30145 (and lt!12137 (not lt!12144)))))

(assert (=> b!64442 (= lt!12144 e!34928)))

(declare-fun c!14231 () Bool)

(assert (=> b!64442 (= c!14231 (or lt!12137 (is-Implies!11 (simplify!1 (rhs!822 f!3964))) (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(assert (=> b!64442 (= lt!12137 (is-Or!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64443 () Bool)

(declare-fun res!30140 () Bool)

(assert (=> b!64443 (= e!34933 res!30140)))

(assert (=> b!64443 true))

(declare-fun b!64444 () Bool)

(assert (=> b!64444 (= e!34943 e!34930)))

(declare-fun c!14242 () Bool)

(assert (=> b!64444 (= c!14242 e!34925)))

(declare-fun res!30143 () Bool)

(assert (=> b!64444 (=> (not res!30143) (not e!34925))))

(assert (=> b!64444 (= res!30143 lt!12140)))

(assert (=> b!64444 (= lt!12140 (is-Or!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64445 () Bool)

(declare-fun res!30135 () Bool)

(assert (=> b!64445 (= e!34941 res!30135)))

(assert (=> b!64445 true))

(declare-fun b!64446 () Bool)

(assert (=> b!64446 (= e!34935 e!34936)))

(declare-fun c!14244 () Bool)

(assert (=> b!64446 (= c!14244 lt!12138)))

(assert (=> b!64446 (= lt!12136 e!34933)))

(declare-fun c!14238 () Bool)

(assert (=> b!64446 (= c!14238 e!34938)))

(declare-fun res!30139 () Bool)

(assert (=> b!64446 (=> res!30139 e!34938)))

(assert (=> b!64446 (= res!30139 (and lt!12138 (not lt!12134)))))

(assert (=> b!64446 (= lt!12134 e!34939)))

(declare-fun c!14237 () Bool)

(assert (=> b!64446 (= c!14237 (or lt!12138 (is-Implies!11 (simplify!1 (rhs!822 f!3964))) (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(assert (=> b!64446 (= lt!12138 (is-Or!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64447 () Bool)

(declare-fun res!30142 () Bool)

(assert (=> b!64447 (= e!34927 res!30142)))

(assert (=> b!64447 true))

(declare-fun b!64448 () Bool)

(assert (=> b!64448 (= e!34923 lt!12134)))

(declare-fun b!64449 () Bool)

(declare-fun e!34931 () Bool)

(assert (=> b!64449 (= e!34934 e!34931)))

(declare-fun res!30133 () Bool)

(assert (=> b!64449 (=> (not res!30133) (not e!34931))))

(declare-fun lt!12146 () Bool)

(assert (=> b!64449 (= res!30133 lt!12146)))

(assert (=> b!64449 (= lt!12146 (is-Implies!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64450 () Bool)

(declare-fun e!34929 () Bool)

(assert (=> b!64450 (= e!34929 (not lt!12141))))

(declare-fun b!64451 () Bool)

(assert (=> b!64451 (= e!34942 e!34929)))

(declare-fun c!14232 () Bool)

(assert (=> b!64451 (= c!14232 (is-Not!11 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64452 () Bool)

(assert (=> b!64452 (= e!34942 (or (not lt!12141) lt!12136))))

(declare-fun d!53308 () Bool)

(declare-fun c!14234 () Bool)

(assert (=> d!53308 (= c!14234 lt!12135)))

(assert (=> d!53308 (= lt!12147 e!34940)))

(declare-fun c!14236 () Bool)

(assert (=> d!53308 (= c!14236 e!34924)))

(declare-fun res!30134 () Bool)

(assert (=> d!53308 (=> res!30134 e!34924)))

(assert (=> d!53308 (= res!30134 lt!12139)))

(assert (=> d!53308 (= lt!12139 (and lt!12135 lt!12143))))

(assert (=> d!53308 (= lt!12143 e!34932)))

(declare-fun c!14245 () Bool)

(assert (=> d!53308 (= c!14245 (or lt!12135 (is-Or!11 (simplify!1 (rhs!822 f!3964))) (is-Implies!11 (simplify!1 (rhs!822 f!3964))) (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(assert (=> d!53308 (= lt!12135 (is-And!11 (simplify!1 (rhs!822 f!3964))))))

(assert (=> d!53308 (= (eval!0 (simplify!1 (rhs!822 f!3964))) e!34935)))

(declare-fun b!64453 () Bool)

(assert (=> b!64453 (= e!34931 e!34945)))

(declare-fun c!14241 () Bool)

(assert (=> b!64453 (= c!14241 (or lt!12146 (is-Not!11 (simplify!1 (rhs!822 f!3964)))))))

(declare-fun b!64454 () Bool)

(assert (=> b!64454 (= e!34930 (rhs!822 (simplify!1 (rhs!822 f!3964))))))

(declare-fun b!64455 () Bool)

(declare-fun res!30138 () Bool)

(assert (=> b!64455 (= e!34939 res!30138)))

(assert (=> b!64455 true))

(declare-fun b!64456 () Bool)

(assert (=> b!64456 (= e!34929 (evalLit!0 (id!4785 (simplify!1 (rhs!822 f!3964)))))))

(declare-fun b!64457 () Bool)

(assert (=> b!64457 (= e!34927 lt!12134)))

(assert (= (and d!53308 c!14245) b!64422))

(assert (= (and d!53308 (not c!14245)) b!64440))

(assert (= (and d!53308 (not res!30134)) b!64419))

(assert (= (and b!64419 res!30137) b!64442))

(assert (= (and b!64442 c!14231) b!64431))

(assert (= (and b!64442 (not c!14231)) b!64434))

(assert (= (and b!64442 (not res!30145)) b!64428))

(assert (= (and b!64428 res!30129) b!64449))

(assert (= (and b!64449 res!30133) b!64453))

(assert (= (and b!64453 c!14241) b!64437))

(assert (= (and b!64453 (not c!14241)) b!64425))

(assert (= (and b!64444 res!30143) b!64439))

(assert (= (and b!64439 c!14233) b!64420))

(assert (= (and b!64439 (not c!14233)) b!64445))

(assert (= (and b!64444 c!14242) b!64424))

(assert (= (and b!64444 (not c!14242)) b!64454))

(assert (= (and b!64441 c!14235) b!64435))

(assert (= (and b!64441 (not c!14235)) b!64444))

(assert (= (and d!53308 c!14236) b!64441))

(assert (= (and d!53308 (not c!14236)) b!64438))

(assert (= (and b!64446 c!14237) b!64421))

(assert (= (and b!64446 (not c!14237)) b!64455))

(assert (= (and b!64446 (not res!30139)) b!64426))

(assert (= (and b!64426 res!30131) b!64432))

(assert (= (and b!64432 res!30130) b!64427))

(assert (= (and b!64427 c!14240) b!64457))

(assert (= (and b!64427 (not c!14240)) b!64447))

(assert (= (and b!64446 c!14238) b!64430))

(assert (= (and b!64446 (not c!14238)) b!64443))

(assert (= (and b!64433 c!14239) b!64448))

(assert (= (and b!64433 (not c!14239)) b!64429))

(assert (= (and b!64451 c!14232) b!64450))

(assert (= (and b!64451 (not c!14232)) b!64456))

(assert (= (and b!64433 c!14243) b!64452))

(assert (= (and b!64433 (not c!14243)) b!64451))

(assert (= (and b!64446 c!14244) b!64423))

(assert (= (and b!64446 (not c!14244)) b!64433))

(assert (= (and d!53308 c!14234) b!64436))

(assert (= (and d!53308 (not c!14234)) b!64446))

(declare-fun m!69245 () Bool)

(assert (=> b!64422 m!69245))

(declare-fun m!69247 () Bool)

(assert (=> b!64441 m!69247))

(declare-fun m!69249 () Bool)

(assert (=> b!64456 m!69249))

(assert (=> b!63693 d!53308))

(assert (=> b!63693 d!53294))

(declare-fun b!64458 () Bool)

(declare-fun e!34953 () Formula!6)

(declare-fun lt!12150 () Bool)

(assert (=> b!64458 (= e!34953 (simplify!1 (ite lt!12150 (rhs!821 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (ite (is-Or!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (rhs!823 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (rhs!822 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))))

(declare-fun b!64459 () Bool)

(declare-fun res!30148 () Formula!6)

(assert (=> b!64459 (= e!34953 res!30148)))

(assert (=> b!64459 true))

(declare-fun b!64460 () Bool)

(declare-fun e!34952 () Formula!6)

(declare-fun res!30146 () Formula!6)

(assert (=> b!64460 (= e!34952 res!30146)))

(assert (=> b!64460 true))

(declare-fun b!64461 () Bool)

(declare-fun e!34948 () Formula!6)

(declare-fun res!30150 () Formula!6)

(assert (=> b!64461 (= e!34948 res!30150)))

(assert (=> b!64461 true))

(assert (=> b!64461 true))

(declare-fun b!64462 () Bool)

(assert (=> b!64462 (= e!34952 (simplify!1 (ite lt!12150 (lhs!821 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (ite (is-Or!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (lhs!823 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (ite (is-Implies!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (lhs!822 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (f!4078 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))))))

(declare-fun b!64463 () Bool)

(declare-fun e!34947 () Formula!6)

(declare-fun lt!12152 () Formula!6)

(assert (=> b!64463 (= e!34947 lt!12152)))

(declare-fun b!64464 () Bool)

(declare-fun e!34951 () Formula!6)

(declare-fun e!34950 () Formula!6)

(assert (=> b!64464 (= e!34951 e!34950)))

(declare-fun c!14247 () Bool)

(declare-fun lt!12154 () Bool)

(assert (=> b!64464 (= c!14247 lt!12154)))

(declare-fun lt!12155 () Formula!6)

(declare-fun e!34949 () Formula!6)

(assert (=> b!64464 (= lt!12155 e!34949)))

(declare-fun c!14252 () Bool)

(assert (=> b!64464 (= c!14252 (or lt!12154 (is-Implies!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(declare-fun lt!12156 () Formula!6)

(assert (=> b!64464 (= lt!12156 e!34947)))

(declare-fun c!14249 () Bool)

(assert (=> b!64464 (= c!14249 (or lt!12154 (is-Implies!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Not!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> b!64464 (= lt!12154 (is-Or!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64465 () Bool)

(assert (=> b!64465 (= e!34950 (Or!11 lt!12156 lt!12155))))

(declare-fun d!53310 () Bool)

(declare-fun lt!12149 () Formula!6)

(assert (=> d!53310 (isSimplified!1 lt!12149)))

(assert (=> d!53310 (= lt!12149 e!34951)))

(declare-fun c!14250 () Bool)

(assert (=> d!53310 (= c!14250 lt!12150)))

(declare-fun lt!12151 () Formula!6)

(assert (=> d!53310 (= lt!12151 e!34953)))

(declare-fun c!14251 () Bool)

(assert (=> d!53310 (= c!14251 (or lt!12150 (is-Or!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Implies!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> d!53310 (= lt!12152 e!34952)))

(declare-fun c!14246 () Bool)

(assert (=> d!53310 (= c!14246 (or lt!12150 (is-Or!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Implies!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (is-Not!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> d!53310 (= lt!12150 (is-And!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(assert (=> d!53310 (= (simplify!1 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) lt!12149)))

(declare-fun b!64466 () Bool)

(assert (=> b!64466 (= e!34949 lt!12151)))

(declare-fun b!64467 () Bool)

(declare-fun res!30149 () Formula!6)

(assert (=> b!64467 (= e!34949 res!30149)))

(assert (=> b!64467 true))

(declare-fun b!64468 () Bool)

(assert (=> b!64468 (= e!34951 (And!11 lt!12152 lt!12151))))

(declare-fun b!64469 () Bool)

(declare-fun res!30147 () Formula!6)

(assert (=> b!64469 (= e!34947 res!30147)))

(assert (=> b!64469 true))

(declare-fun lt!12148 () Bool)

(declare-fun b!64470 () Bool)

(declare-fun lt!12153 () Formula!6)

(assert (=> b!64470 (= e!34950 (ite lt!12148 (Or!11 (Not!11 lt!12153) lt!12155) (ite (is-Not!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))) (Not!11 lt!12153) (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> b!64470 (= lt!12153 e!34948)))

(declare-fun c!14248 () Bool)

(assert (=> b!64470 (= c!14248 (or lt!12148 (is-Not!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964)))))))))

(assert (=> b!64470 (= lt!12148 (is-Implies!11 (ite lt!11933 (lhs!821 f!3964) (ite (is-Or!11 f!3964) (lhs!823 f!3964) (ite (is-Implies!11 f!3964) (lhs!822 f!3964) (f!4078 f!3964))))))))

(declare-fun b!64471 () Bool)

(assert (=> b!64471 (= e!34948 lt!12156)))

(assert (= (and d!53310 c!14246) b!64462))

(assert (= (and d!53310 (not c!14246)) b!64460))

(assert (= (and d!53310 c!14251) b!64458))

(assert (= (and d!53310 (not c!14251)) b!64459))

(assert (= (and b!64464 c!14249) b!64463))

(assert (= (and b!64464 (not c!14249)) b!64469))

(assert (= (and b!64464 c!14252) b!64466))

(assert (= (and b!64464 (not c!14252)) b!64467))

(assert (= (and b!64470 c!14248) b!64471))

(assert (= (and b!64470 (not c!14248)) b!64461))

(assert (= (and b!64464 c!14247) b!64465))

(assert (= (and b!64464 (not c!14247)) b!64470))

(assert (= (and d!53310 c!14250) b!64468))

(assert (= (and d!53310 (not c!14250)) b!64464))

(declare-fun m!69251 () Bool)

(assert (=> b!64458 m!69251))

(declare-fun m!69253 () Bool)

(assert (=> b!64462 m!69253))

(declare-fun m!69255 () Bool)

(assert (=> d!53310 m!69255))

(assert (=> b!63903 d!53310))

(declare-fun d!53312 () Bool)

(assert (=> d!53312 (= (evalLit!0 (id!4785 (simplify!1 f!3964))) (= (id!4785 (simplify!1 f!3964)) 42))))

(assert (=> b!63869 d!53312))

(declare-fun b!64472 () Bool)

(declare-fun e!34955 () Bool)

(declare-fun e!34957 () Bool)

(assert (=> b!64472 (= e!34955 e!34957)))

(declare-fun res!30160 () Bool)

(assert (=> b!64472 (=> (not res!30160) (not e!34957))))

(declare-fun lt!12158 () Bool)

(assert (=> b!64472 (= res!30160 (not lt!12158))))

(declare-fun b!64473 () Bool)

(declare-fun e!34972 () Bool)

(declare-fun lt!12166 () Bool)

(assert (=> b!64473 (= e!34972 lt!12166)))

(declare-fun b!64474 () Bool)

(declare-fun e!34970 () Bool)

(assert (=> b!64474 (= e!34970 lt!12166)))

(declare-fun b!64475 () Bool)

(declare-fun e!34963 () Bool)

(assert (=> b!64475 (= e!34963 (eval!0 (ite lt!12158 (lhs!821 lt!11849) (ite (is-Or!11 lt!11849) (lhs!823 lt!11849) (ite (is-Implies!11 lt!11849) (lhs!822 lt!11849) (f!4078 lt!11849))))))))

(declare-fun b!64476 () Bool)

(declare-fun e!34967 () Bool)

(declare-fun lt!12157 () Bool)

(declare-fun lt!12159 () Bool)

(assert (=> b!64476 (= e!34967 (or lt!12157 lt!12159))))

(declare-fun b!64477 () Bool)

(declare-fun e!34961 () Formula!6)

(assert (=> b!64477 (= e!34961 (rhs!823 lt!11849))))

(declare-fun b!64478 () Bool)

(declare-fun e!34976 () Bool)

(declare-fun res!30159 () Bool)

(assert (=> b!64478 (= e!34976 res!30159)))

(assert (=> b!64478 true))

(declare-fun b!64479 () Bool)

(declare-fun e!34969 () Bool)

(declare-fun e!34968 () Bool)

(assert (=> b!64479 (= e!34969 e!34968)))

(declare-fun res!30154 () Bool)

(assert (=> b!64479 (=> (not res!30154) (not e!34968))))

(declare-fun lt!12161 () Bool)

(assert (=> b!64479 (= res!30154 (not lt!12161))))

(declare-fun b!64480 () Bool)

(declare-fun e!34977 () Bool)

(declare-fun e!34958 () Bool)

(assert (=> b!64480 (= e!34977 e!34958)))

(declare-fun c!14262 () Bool)

(declare-fun lt!12165 () Bool)

(assert (=> b!64480 (= c!14262 (or lt!12165 (is-Not!11 lt!11849)))))

(declare-fun b!64481 () Bool)

(declare-fun e!34975 () Bool)

(declare-fun e!34965 () Bool)

(assert (=> b!64481 (= e!34975 e!34965)))

(declare-fun res!30152 () Bool)

(assert (=> b!64481 (=> (not res!30152) (not e!34965))))

(declare-fun lt!12160 () Bool)

(assert (=> b!64481 (= res!30152 (not lt!12160))))

(declare-fun b!64482 () Bool)

(declare-fun e!34954 () Bool)

(declare-fun res!30155 () Bool)

(assert (=> b!64482 (= e!34954 res!30155)))

(assert (=> b!64482 true))

(assert (=> b!64482 true))

(declare-fun b!64483 () Bool)

(declare-fun e!34964 () Bool)

(declare-fun lt!12170 () Bool)

(assert (=> b!64483 (= e!34964 lt!12170)))

(declare-fun b!64484 () Bool)

(declare-fun e!34959 () Bool)

(assert (=> b!64484 (= e!34959 lt!12166)))

(declare-fun b!64485 () Bool)

(assert (=> b!64485 (= e!34968 e!34977)))

(declare-fun res!30153 () Bool)

(assert (=> b!64485 (=> (not res!30153) (not e!34977))))

(assert (=> b!64485 (= res!30153 lt!12165)))

(assert (=> b!64485 (= lt!12165 (is-Implies!11 lt!11849))))

(declare-fun b!64486 () Bool)

(declare-fun e!34973 () Bool)

(assert (=> b!64486 (= e!34967 e!34973)))

(declare-fun c!14265 () Bool)

(declare-fun lt!12168 () Bool)

(assert (=> b!64486 (= c!14265 lt!12168)))

(declare-fun lt!12164 () Bool)

(assert (=> b!64486 (= lt!12164 e!34954)))

(declare-fun c!14261 () Bool)

(assert (=> b!64486 (= c!14261 (or lt!12168 (is-Not!11 lt!11849)))))

(assert (=> b!64486 (= lt!12168 (is-Implies!11 lt!11849))))

(declare-fun b!64487 () Bool)

(declare-fun res!30164 () Bool)

(assert (=> b!64487 (= e!34959 res!30164)))

(assert (=> b!64487 true))

(declare-fun b!64488 () Bool)

(declare-fun e!34974 () Formula!6)

(assert (=> b!64488 (= e!34974 (rhs!821 lt!11849))))

(declare-fun b!64489 () Bool)

(declare-fun e!34966 () Bool)

(assert (=> b!64489 (= e!34966 (and lt!12166 lt!12170))))

(declare-fun b!64490 () Bool)

(declare-fun lt!12167 () Bool)

(assert (=> b!64490 (= e!34976 lt!12167)))

(declare-fun b!64491 () Bool)

(declare-fun e!34971 () Bool)

(declare-fun res!30167 () Bool)

(assert (=> b!64491 (= e!34971 res!30167)))

(assert (=> b!64491 true))

(declare-fun b!64492 () Bool)

(declare-fun e!34956 () Bool)

(assert (=> b!64492 (= e!34956 (not e!34972))))

(declare-fun c!14255 () Bool)

(declare-fun lt!12163 () Bool)

(assert (=> b!64492 (= c!14255 (or lt!12163 (is-Implies!11 lt!11849) (is-Not!11 lt!11849)))))

(declare-fun b!64493 () Bool)

(declare-fun res!30151 () Bool)

(assert (=> b!64493 (= e!34963 res!30151)))

(assert (=> b!64493 true))

(declare-fun b!64494 () Bool)

(assert (=> b!64494 (= e!34971 (eval!0 e!34974))))

(declare-fun c!14257 () Bool)

(declare-fun lt!12162 () Bool)

(assert (=> b!64494 (= c!14257 lt!12162)))

(declare-fun b!64495 () Bool)

(assert (=> b!64495 (= e!34957 e!34975)))

(declare-fun res!30168 () Bool)

(assert (=> b!64495 (=> res!30168 e!34975)))

(assert (=> b!64495 (= res!30168 (and lt!12160 (not lt!12167)))))

(assert (=> b!64495 (= lt!12167 e!34959)))

(declare-fun c!14253 () Bool)

(assert (=> b!64495 (= c!14253 (or lt!12160 (is-Implies!11 lt!11849) (is-Not!11 lt!11849)))))

(assert (=> b!64495 (= lt!12160 (is-Or!11 lt!11849))))

(declare-fun b!64496 () Bool)

(declare-fun res!30163 () Bool)

(assert (=> b!64496 (= e!34964 res!30163)))

(assert (=> b!64496 true))

(declare-fun b!64497 () Bool)

(assert (=> b!64497 (= e!34974 e!34961)))

(declare-fun c!14264 () Bool)

(assert (=> b!64497 (= c!14264 e!34956)))

(declare-fun res!30166 () Bool)

(assert (=> b!64497 (=> (not res!30166) (not e!34956))))

(assert (=> b!64497 (= res!30166 lt!12163)))

(assert (=> b!64497 (= lt!12163 (is-Or!11 lt!11849))))

(declare-fun b!64498 () Bool)

(declare-fun res!30158 () Bool)

(assert (=> b!64498 (= e!34972 res!30158)))

(assert (=> b!64498 true))

(declare-fun b!64499 () Bool)

(assert (=> b!64499 (= e!34966 e!34967)))

(declare-fun c!14266 () Bool)

(assert (=> b!64499 (= c!14266 lt!12161)))

(assert (=> b!64499 (= lt!12159 e!34964)))

(declare-fun c!14260 () Bool)

(assert (=> b!64499 (= c!14260 e!34969)))

(declare-fun res!30162 () Bool)

(assert (=> b!64499 (=> res!30162 e!34969)))

(assert (=> b!64499 (= res!30162 (and lt!12161 (not lt!12157)))))

(assert (=> b!64499 (= lt!12157 e!34970)))

(declare-fun c!14259 () Bool)

(assert (=> b!64499 (= c!14259 (or lt!12161 (is-Implies!11 lt!11849) (is-Not!11 lt!11849)))))

(assert (=> b!64499 (= lt!12161 (is-Or!11 lt!11849))))

(declare-fun b!64500 () Bool)

(declare-fun res!30165 () Bool)

(assert (=> b!64500 (= e!34958 res!30165)))

(assert (=> b!64500 true))

(declare-fun b!64501 () Bool)

(assert (=> b!64501 (= e!34954 lt!12157)))

(declare-fun b!64502 () Bool)

(declare-fun e!34962 () Bool)

(assert (=> b!64502 (= e!34965 e!34962)))

(declare-fun res!30156 () Bool)

(assert (=> b!64502 (=> (not res!30156) (not e!34962))))

(declare-fun lt!12169 () Bool)

(assert (=> b!64502 (= res!30156 lt!12169)))

(assert (=> b!64502 (= lt!12169 (is-Implies!11 lt!11849))))

(declare-fun b!64503 () Bool)

(declare-fun e!34960 () Bool)

(assert (=> b!64503 (= e!34960 (not lt!12164))))

(declare-fun b!64504 () Bool)

(assert (=> b!64504 (= e!34973 e!34960)))

(declare-fun c!14254 () Bool)

(assert (=> b!64504 (= c!14254 (is-Not!11 lt!11849))))

(declare-fun b!64505 () Bool)

(assert (=> b!64505 (= e!34973 (or (not lt!12164) lt!12159))))

(declare-fun d!53314 () Bool)

(declare-fun c!14256 () Bool)

(assert (=> d!53314 (= c!14256 lt!12158)))

(assert (=> d!53314 (= lt!12170 e!34971)))

(declare-fun c!14258 () Bool)

(assert (=> d!53314 (= c!14258 e!34955)))

(declare-fun res!30157 () Bool)

(assert (=> d!53314 (=> res!30157 e!34955)))

(assert (=> d!53314 (= res!30157 lt!12162)))

(assert (=> d!53314 (= lt!12162 (and lt!12158 lt!12166))))

(assert (=> d!53314 (= lt!12166 e!34963)))

(declare-fun c!14267 () Bool)

(assert (=> d!53314 (= c!14267 (or lt!12158 (is-Or!11 lt!11849) (is-Implies!11 lt!11849) (is-Not!11 lt!11849)))))

(assert (=> d!53314 (= lt!12158 (is-And!11 lt!11849))))

(assert (=> d!53314 (= (eval!0 lt!11849) e!34966)))

(declare-fun b!64506 () Bool)

(assert (=> b!64506 (= e!34962 e!34976)))

(declare-fun c!14263 () Bool)

(assert (=> b!64506 (= c!14263 (or lt!12169 (is-Not!11 lt!11849)))))

(declare-fun b!64507 () Bool)

(assert (=> b!64507 (= e!34961 (rhs!822 lt!11849))))

(declare-fun b!64508 () Bool)

(declare-fun res!30161 () Bool)

(assert (=> b!64508 (= e!34970 res!30161)))

(assert (=> b!64508 true))

(declare-fun b!64509 () Bool)

(assert (=> b!64509 (= e!34960 (evalLit!0 (id!4785 lt!11849)))))

(declare-fun b!64510 () Bool)

(assert (=> b!64510 (= e!34958 lt!12157)))

(assert (= (and d!53314 c!14267) b!64475))

(assert (= (and d!53314 (not c!14267)) b!64493))

(assert (= (and d!53314 (not res!30157)) b!64472))

(assert (= (and b!64472 res!30160) b!64495))

(assert (= (and b!64495 c!14253) b!64484))

(assert (= (and b!64495 (not c!14253)) b!64487))

(assert (= (and b!64495 (not res!30168)) b!64481))

(assert (= (and b!64481 res!30152) b!64502))

(assert (= (and b!64502 res!30156) b!64506))

(assert (= (and b!64506 c!14263) b!64490))

(assert (= (and b!64506 (not c!14263)) b!64478))

(assert (= (and b!64497 res!30166) b!64492))

(assert (= (and b!64492 c!14255) b!64473))

(assert (= (and b!64492 (not c!14255)) b!64498))

(assert (= (and b!64497 c!14264) b!64477))

(assert (= (and b!64497 (not c!14264)) b!64507))

(assert (= (and b!64494 c!14257) b!64488))

(assert (= (and b!64494 (not c!14257)) b!64497))

(assert (= (and d!53314 c!14258) b!64494))

(assert (= (and d!53314 (not c!14258)) b!64491))

(assert (= (and b!64499 c!14259) b!64474))

(assert (= (and b!64499 (not c!14259)) b!64508))

(assert (= (and b!64499 (not res!30162)) b!64479))

(assert (= (and b!64479 res!30154) b!64485))

(assert (= (and b!64485 res!30153) b!64480))

(assert (= (and b!64480 c!14262) b!64510))

(assert (= (and b!64480 (not c!14262)) b!64500))

(assert (= (and b!64499 c!14260) b!64483))

(assert (= (and b!64499 (not c!14260)) b!64496))

(assert (= (and b!64486 c!14261) b!64501))

(assert (= (and b!64486 (not c!14261)) b!64482))

(assert (= (and b!64504 c!14254) b!64503))

(assert (= (and b!64504 (not c!14254)) b!64509))

(assert (= (and b!64486 c!14265) b!64505))

(assert (= (and b!64486 (not c!14265)) b!64504))

(assert (= (and b!64499 c!14266) b!64476))

(assert (= (and b!64499 (not c!14266)) b!64486))

(assert (= (and d!53314 c!14256) b!64489))

(assert (= (and d!53314 (not c!14256)) b!64499))

(declare-fun m!69257 () Bool)

(assert (=> b!64475 m!69257))

(declare-fun m!69259 () Bool)

(assert (=> b!64494 m!69259))

(declare-fun m!69261 () Bool)

(assert (=> b!64509 m!69261))

(assert (=> b!63699 d!53314))

(declare-fun b!64511 () Bool)

(declare-fun e!34984 () Formula!6)

(declare-fun lt!12173 () Bool)

(assert (=> b!64511 (= e!34984 (simplify!1 (ite lt!12173 (rhs!821 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (ite (is-Or!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (rhs!823 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (rhs!822 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))))

(declare-fun b!64512 () Bool)

(declare-fun res!30171 () Formula!6)

(assert (=> b!64512 (= e!34984 res!30171)))

(assert (=> b!64512 true))

(declare-fun b!64513 () Bool)

(declare-fun e!34983 () Formula!6)

(declare-fun res!30169 () Formula!6)

(assert (=> b!64513 (= e!34983 res!30169)))

(assert (=> b!64513 true))

(declare-fun b!64514 () Bool)

(declare-fun e!34979 () Formula!6)

(declare-fun res!30173 () Formula!6)

(assert (=> b!64514 (= e!34979 res!30173)))

(assert (=> b!64514 true))

(assert (=> b!64514 true))

(declare-fun b!64515 () Bool)

(assert (=> b!64515 (= e!34983 (simplify!1 (ite lt!12173 (lhs!821 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (ite (is-Or!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (lhs!823 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (ite (is-Implies!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (lhs!822 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (f!4078 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))))))))))

(declare-fun b!64516 () Bool)

(declare-fun e!34978 () Formula!6)

(declare-fun lt!12175 () Formula!6)

(assert (=> b!64516 (= e!34978 lt!12175)))

(declare-fun b!64517 () Bool)

(declare-fun e!34982 () Formula!6)

(declare-fun e!34981 () Formula!6)

(assert (=> b!64517 (= e!34982 e!34981)))

(declare-fun c!14269 () Bool)

(declare-fun lt!12177 () Bool)

(assert (=> b!64517 (= c!14269 lt!12177)))

(declare-fun lt!12178 () Formula!6)

(declare-fun e!34980 () Formula!6)

(assert (=> b!64517 (= lt!12178 e!34980)))

(declare-fun c!14274 () Bool)

(assert (=> b!64517 (= c!14274 (or lt!12177 (is-Implies!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))

(declare-fun lt!12179 () Formula!6)

(assert (=> b!64517 (= lt!12179 e!34978)))

(declare-fun c!14271 () Bool)

(assert (=> b!64517 (= c!14271 (or lt!12177 (is-Implies!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (is-Not!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))

(assert (=> b!64517 (= lt!12177 (is-Or!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))))))

(declare-fun b!64518 () Bool)

(assert (=> b!64518 (= e!34981 (Or!11 lt!12179 lt!12178))))

(declare-fun d!53316 () Bool)

(declare-fun lt!12172 () Formula!6)

(assert (=> d!53316 (isSimplified!1 lt!12172)))

(assert (=> d!53316 (= lt!12172 e!34982)))

(declare-fun c!14272 () Bool)

(assert (=> d!53316 (= c!14272 lt!12173)))

(declare-fun lt!12174 () Formula!6)

(assert (=> d!53316 (= lt!12174 e!34984)))

(declare-fun c!14273 () Bool)

(assert (=> d!53316 (= c!14273 (or lt!12173 (is-Or!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (is-Implies!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))

(assert (=> d!53316 (= lt!12175 e!34983)))

(declare-fun c!14268 () Bool)

(assert (=> d!53316 (= c!14268 (or lt!12173 (is-Or!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (is-Implies!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (is-Not!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))

(assert (=> d!53316 (= lt!12173 (is-And!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))))))

(assert (=> d!53316 (= (simplify!1 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) lt!12172)))

(declare-fun b!64519 () Bool)

(assert (=> b!64519 (= e!34980 lt!12174)))

(declare-fun b!64520 () Bool)

(declare-fun res!30172 () Formula!6)

(assert (=> b!64520 (= e!34980 res!30172)))

(assert (=> b!64520 true))

(declare-fun b!64521 () Bool)

(assert (=> b!64521 (= e!34982 (And!11 lt!12175 lt!12174))))

(declare-fun b!64522 () Bool)

(declare-fun res!30170 () Formula!6)

(assert (=> b!64522 (= e!34978 res!30170)))

(assert (=> b!64522 true))

(declare-fun b!64523 () Bool)

(declare-fun lt!12176 () Formula!6)

(declare-fun lt!12171 () Bool)

(assert (=> b!64523 (= e!34981 (ite lt!12171 (Or!11 (Not!11 lt!12176) lt!12178) (ite (is-Not!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))) (Not!11 lt!12176) (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))

(assert (=> b!64523 (= lt!12176 e!34979)))

(declare-fun c!14270 () Bool)

(assert (=> b!64523 (= c!14270 (or lt!12171 (is-Not!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964))))))))

(assert (=> b!64523 (= lt!12171 (is-Implies!11 (ite lt!11933 (rhs!821 f!3964) (ite (is-Or!11 f!3964) (rhs!823 f!3964) (rhs!822 f!3964)))))))

(declare-fun b!64524 () Bool)

(assert (=> b!64524 (= e!34979 lt!12179)))

(assert (= (and d!53316 c!14268) b!64515))

(assert (= (and d!53316 (not c!14268)) b!64513))

(assert (= (and d!53316 c!14273) b!64511))

(assert (= (and d!53316 (not c!14273)) b!64512))

(assert (= (and b!64517 c!14271) b!64516))

(assert (= (and b!64517 (not c!14271)) b!64522))

(assert (= (and b!64517 c!14274) b!64519))

(assert (= (and b!64517 (not c!14274)) b!64520))

(assert (= (and b!64523 c!14270) b!64524))

(assert (= (and b!64523 (not c!14270)) b!64514))

(assert (= (and b!64517 c!14269) b!64518))

(assert (= (and b!64517 (not c!14269)) b!64523))

(assert (= (and d!53316 c!14272) b!64521))

(assert (= (and d!53316 (not c!14272)) b!64517))

(declare-fun m!69263 () Bool)

(assert (=> b!64511 m!69263))

(declare-fun m!69265 () Bool)

(assert (=> b!64515 m!69265))

(declare-fun m!69267 () Bool)

(assert (=> d!53316 m!69267))

(assert (=> b!63899 d!53316))

(declare-fun b!64525 () Bool)

(declare-fun e!34986 () Bool)

(declare-fun e!34988 () Bool)

(assert (=> b!64525 (= e!34986 e!34988)))

(declare-fun res!30183 () Bool)

(assert (=> b!64525 (=> (not res!30183) (not e!34988))))

(declare-fun lt!12181 () Bool)

(assert (=> b!64525 (= res!30183 (not lt!12181))))

(declare-fun b!64526 () Bool)

(declare-fun e!35003 () Bool)

(declare-fun lt!12189 () Bool)

(assert (=> b!64526 (= e!35003 lt!12189)))

(declare-fun b!64527 () Bool)

(declare-fun e!35001 () Bool)

(assert (=> b!64527 (= e!35001 lt!12189)))

(declare-fun b!64528 () Bool)

(declare-fun e!34994 () Bool)

(assert (=> b!64528 (= e!34994 (eval!0 (ite lt!12181 (lhs!821 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (ite (is-Or!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (lhs!823 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (ite (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (lhs!822 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (f!4078 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))))))

(declare-fun b!64529 () Bool)

(declare-fun e!34998 () Bool)

(declare-fun lt!12180 () Bool)

(declare-fun lt!12182 () Bool)

(assert (=> b!64529 (= e!34998 (or lt!12180 lt!12182))))

(declare-fun b!64530 () Bool)

(declare-fun e!34992 () Formula!6)

(assert (=> b!64530 (= e!34992 (rhs!823 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64531 () Bool)

(declare-fun e!35007 () Bool)

(declare-fun res!30182 () Bool)

(assert (=> b!64531 (= e!35007 res!30182)))

(assert (=> b!64531 true))

(declare-fun b!64532 () Bool)

(declare-fun e!35000 () Bool)

(declare-fun e!34999 () Bool)

(assert (=> b!64532 (= e!35000 e!34999)))

(declare-fun res!30177 () Bool)

(assert (=> b!64532 (=> (not res!30177) (not e!34999))))

(declare-fun lt!12184 () Bool)

(assert (=> b!64532 (= res!30177 (not lt!12184))))

(declare-fun b!64533 () Bool)

(declare-fun e!35008 () Bool)

(declare-fun e!34989 () Bool)

(assert (=> b!64533 (= e!35008 e!34989)))

(declare-fun lt!12188 () Bool)

(declare-fun c!14284 () Bool)

(assert (=> b!64533 (= c!14284 (or lt!12188 (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(declare-fun b!64534 () Bool)

(declare-fun e!35006 () Bool)

(declare-fun e!34996 () Bool)

(assert (=> b!64534 (= e!35006 e!34996)))

(declare-fun res!30175 () Bool)

(assert (=> b!64534 (=> (not res!30175) (not e!34996))))

(declare-fun lt!12183 () Bool)

(assert (=> b!64534 (= res!30175 (not lt!12183))))

(declare-fun b!64535 () Bool)

(declare-fun e!34985 () Bool)

(declare-fun res!30178 () Bool)

(assert (=> b!64535 (= e!34985 res!30178)))

(assert (=> b!64535 true))

(assert (=> b!64535 true))

(declare-fun b!64536 () Bool)

(declare-fun e!34995 () Bool)

(declare-fun lt!12193 () Bool)

(assert (=> b!64536 (= e!34995 lt!12193)))

(declare-fun b!64537 () Bool)

(declare-fun e!34990 () Bool)

(assert (=> b!64537 (= e!34990 lt!12189)))

(declare-fun b!64538 () Bool)

(assert (=> b!64538 (= e!34999 e!35008)))

(declare-fun res!30176 () Bool)

(assert (=> b!64538 (=> (not res!30176) (not e!35008))))

(assert (=> b!64538 (= res!30176 lt!12188)))

(assert (=> b!64538 (= lt!12188 (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64539 () Bool)

(declare-fun e!35004 () Bool)

(assert (=> b!64539 (= e!34998 e!35004)))

(declare-fun c!14287 () Bool)

(declare-fun lt!12191 () Bool)

(assert (=> b!64539 (= c!14287 lt!12191)))

(declare-fun lt!12187 () Bool)

(assert (=> b!64539 (= lt!12187 e!34985)))

(declare-fun c!14283 () Bool)

(assert (=> b!64539 (= c!14283 (or lt!12191 (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(assert (=> b!64539 (= lt!12191 (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64540 () Bool)

(declare-fun res!30187 () Bool)

(assert (=> b!64540 (= e!34990 res!30187)))

(assert (=> b!64540 true))

(declare-fun b!64541 () Bool)

(declare-fun e!35005 () Formula!6)

(assert (=> b!64541 (= e!35005 (rhs!821 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64542 () Bool)

(declare-fun e!34997 () Bool)

(assert (=> b!64542 (= e!34997 (and lt!12189 lt!12193))))

(declare-fun b!64543 () Bool)

(declare-fun lt!12190 () Bool)

(assert (=> b!64543 (= e!35007 lt!12190)))

(declare-fun b!64544 () Bool)

(declare-fun e!35002 () Bool)

(declare-fun res!30190 () Bool)

(assert (=> b!64544 (= e!35002 res!30190)))

(assert (=> b!64544 true))

(declare-fun b!64545 () Bool)

(declare-fun e!34987 () Bool)

(assert (=> b!64545 (= e!34987 (not e!35003))))

(declare-fun c!14277 () Bool)

(declare-fun lt!12186 () Bool)

(assert (=> b!64545 (= c!14277 (or lt!12186 (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(declare-fun b!64546 () Bool)

(declare-fun res!30174 () Bool)

(assert (=> b!64546 (= e!34994 res!30174)))

(assert (=> b!64546 true))

(declare-fun b!64547 () Bool)

(assert (=> b!64547 (= e!35002 (eval!0 e!35005))))

(declare-fun c!14279 () Bool)

(declare-fun lt!12185 () Bool)

(assert (=> b!64547 (= c!14279 lt!12185)))

(declare-fun b!64548 () Bool)

(assert (=> b!64548 (= e!34988 e!35006)))

(declare-fun res!30191 () Bool)

(assert (=> b!64548 (=> res!30191 e!35006)))

(assert (=> b!64548 (= res!30191 (and lt!12183 (not lt!12190)))))

(assert (=> b!64548 (= lt!12190 e!34990)))

(declare-fun c!14275 () Bool)

(assert (=> b!64548 (= c!14275 (or lt!12183 (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(assert (=> b!64548 (= lt!12183 (is-Or!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64549 () Bool)

(declare-fun res!30186 () Bool)

(assert (=> b!64549 (= e!34995 res!30186)))

(assert (=> b!64549 true))

(declare-fun b!64550 () Bool)

(assert (=> b!64550 (= e!35005 e!34992)))

(declare-fun c!14286 () Bool)

(assert (=> b!64550 (= c!14286 e!34987)))

(declare-fun res!30189 () Bool)

(assert (=> b!64550 (=> (not res!30189) (not e!34987))))

(assert (=> b!64550 (= res!30189 lt!12186)))

(assert (=> b!64550 (= lt!12186 (is-Or!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64551 () Bool)

(declare-fun res!30181 () Bool)

(assert (=> b!64551 (= e!35003 res!30181)))

(assert (=> b!64551 true))

(declare-fun b!64552 () Bool)

(assert (=> b!64552 (= e!34997 e!34998)))

(declare-fun c!14288 () Bool)

(assert (=> b!64552 (= c!14288 lt!12184)))

(assert (=> b!64552 (= lt!12182 e!34995)))

(declare-fun c!14282 () Bool)

(assert (=> b!64552 (= c!14282 e!35000)))

(declare-fun res!30185 () Bool)

(assert (=> b!64552 (=> res!30185 e!35000)))

(assert (=> b!64552 (= res!30185 (and lt!12184 (not lt!12180)))))

(assert (=> b!64552 (= lt!12180 e!35001)))

(declare-fun c!14281 () Bool)

(assert (=> b!64552 (= c!14281 (or lt!12184 (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(assert (=> b!64552 (= lt!12184 (is-Or!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64553 () Bool)

(declare-fun res!30188 () Bool)

(assert (=> b!64553 (= e!34989 res!30188)))

(assert (=> b!64553 true))

(declare-fun b!64554 () Bool)

(assert (=> b!64554 (= e!34985 lt!12180)))

(declare-fun b!64555 () Bool)

(declare-fun e!34993 () Bool)

(assert (=> b!64555 (= e!34996 e!34993)))

(declare-fun res!30179 () Bool)

(assert (=> b!64555 (=> (not res!30179) (not e!34993))))

(declare-fun lt!12192 () Bool)

(assert (=> b!64555 (= res!30179 lt!12192)))

(assert (=> b!64555 (= lt!12192 (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64556 () Bool)

(declare-fun e!34991 () Bool)

(assert (=> b!64556 (= e!34991 (not lt!12187))))

(declare-fun b!64557 () Bool)

(assert (=> b!64557 (= e!35004 e!34991)))

(declare-fun c!14276 () Bool)

(assert (=> b!64557 (= c!14276 (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64558 () Bool)

(assert (=> b!64558 (= e!35004 (or (not lt!12187) lt!12182))))

(declare-fun d!53318 () Bool)

(declare-fun c!14278 () Bool)

(assert (=> d!53318 (= c!14278 lt!12181)))

(assert (=> d!53318 (= lt!12193 e!35002)))

(declare-fun c!14280 () Bool)

(assert (=> d!53318 (= c!14280 e!34986)))

(declare-fun res!30180 () Bool)

(assert (=> d!53318 (=> res!30180 e!34986)))

(assert (=> d!53318 (= res!30180 lt!12185)))

(assert (=> d!53318 (= lt!12185 (and lt!12181 lt!12189))))

(assert (=> d!53318 (= lt!12189 e!34994)))

(declare-fun c!14289 () Bool)

(assert (=> d!53318 (= c!14289 (or lt!12181 (is-Or!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (is-Implies!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(assert (=> d!53318 (= lt!12181 (is-And!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(assert (=> d!53318 (= (eval!0 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))) e!34997)))

(declare-fun b!64559 () Bool)

(assert (=> b!64559 (= e!34993 e!35007)))

(declare-fun c!14285 () Bool)

(assert (=> b!64559 (= c!14285 (or lt!12192 (is-Not!11 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(declare-fun b!64560 () Bool)

(assert (=> b!64560 (= e!34992 (rhs!822 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964)))))))))

(declare-fun b!64561 () Bool)

(declare-fun res!30184 () Bool)

(assert (=> b!64561 (= e!35001 res!30184)))

(assert (=> b!64561 true))

(declare-fun b!64562 () Bool)

(assert (=> b!64562 (= e!34991 (evalLit!0 (id!4785 (ite lt!11900 (lhs!821 (simplify!1 f!3964)) (ite (is-Or!11 (simplify!1 f!3964)) (lhs!823 (simplify!1 f!3964)) (ite (is-Implies!11 (simplify!1 f!3964)) (lhs!822 (simplify!1 f!3964)) (f!4078 (simplify!1 f!3964))))))))))

(declare-fun b!64563 () Bool)

(assert (=> b!64563 (= e!34989 lt!12180)))

(assert (= (and d!53318 c!14289) b!64528))

(assert (= (and d!53318 (not c!14289)) b!64546))

(assert (= (and d!53318 (not res!30180)) b!64525))

(assert (= (and b!64525 res!30183) b!64548))

(assert (= (and b!64548 c!14275) b!64537))

(assert (= (and b!64548 (not c!14275)) b!64540))

(assert (= (and b!64548 (not res!30191)) b!64534))

(assert (= (and b!64534 res!30175) b!64555))

(assert (= (and b!64555 res!30179) b!64559))

(assert (= (and b!64559 c!14285) b!64543))

(assert (= (and b!64559 (not c!14285)) b!64531))

(assert (= (and b!64550 res!30189) b!64545))

(assert (= (and b!64545 c!14277) b!64526))

(assert (= (and b!64545 (not c!14277)) b!64551))

(assert (= (and b!64550 c!14286) b!64530))

(assert (= (and b!64550 (not c!14286)) b!64560))

(assert (= (and b!64547 c!14279) b!64541))

(assert (= (and b!64547 (not c!14279)) b!64550))

(assert (= (and d!53318 c!14280) b!64547))

(assert (= (and d!53318 (not c!14280)) b!64544))

(assert (= (and b!64552 c!14281) b!64527))

(assert (= (and b!64552 (not c!14281)) b!64561))

(assert (= (and b!64552 (not res!30185)) b!64532))

(assert (= (and b!64532 res!30177) b!64538))

(assert (= (and b!64538 res!30176) b!64533))

(assert (= (and b!64533 c!14284) b!64563))

(assert (= (and b!64533 (not c!14284)) b!64553))

(assert (= (and b!64552 c!14282) b!64536))

(assert (= (and b!64552 (not c!14282)) b!64549))

(assert (= (and b!64539 c!14283) b!64554))

(assert (= (and b!64539 (not c!14283)) b!64535))

(assert (= (and b!64557 c!14276) b!64556))

(assert (= (and b!64557 (not c!14276)) b!64562))

(assert (= (and b!64539 c!14287) b!64558))

(assert (= (and b!64539 (not c!14287)) b!64557))

(assert (= (and b!64552 c!14288) b!64529))

(assert (= (and b!64552 (not c!14288)) b!64539))

(assert (= (and d!53318 c!14278) b!64542))

(assert (= (and d!53318 (not c!14278)) b!64552))

(declare-fun m!69269 () Bool)

(assert (=> b!64528 m!69269))

(declare-fun m!69271 () Bool)

(assert (=> b!64547 m!69271))

(declare-fun m!69273 () Bool)

(assert (=> b!64562 m!69273))

(assert (=> b!63835 d!53318))

(assert (=> b!63698 d!53304))

(declare-fun b!64564 () Bool)

(declare-fun e!35010 () Bool)

(declare-fun e!35012 () Bool)

(assert (=> b!64564 (= e!35010 e!35012)))

(declare-fun res!30201 () Bool)

(assert (=> b!64564 (=> (not res!30201) (not e!35012))))

(declare-fun lt!12195 () Bool)

(assert (=> b!64564 (= res!30201 (not lt!12195))))

(declare-fun b!64565 () Bool)

(declare-fun e!35027 () Bool)

(declare-fun lt!12203 () Bool)

(assert (=> b!64565 (= e!35027 lt!12203)))

(declare-fun b!64566 () Bool)

(declare-fun e!35025 () Bool)

(assert (=> b!64566 (= e!35025 lt!12203)))

(declare-fun b!64567 () Bool)

(declare-fun e!35018 () Bool)

(assert (=> b!64567 (= e!35018 (eval!0 (ite lt!12195 (lhs!821 lt!11840) (ite (is-Or!11 lt!11840) (lhs!823 lt!11840) (ite (is-Implies!11 lt!11840) (lhs!822 lt!11840) (f!4078 lt!11840))))))))

(declare-fun b!64568 () Bool)

(declare-fun e!35022 () Bool)

(declare-fun lt!12194 () Bool)

(declare-fun lt!12196 () Bool)

(assert (=> b!64568 (= e!35022 (or lt!12194 lt!12196))))

(declare-fun b!64569 () Bool)

(declare-fun e!35016 () Formula!6)

(assert (=> b!64569 (= e!35016 (rhs!823 lt!11840))))

(declare-fun b!64570 () Bool)

(declare-fun e!35031 () Bool)

(declare-fun res!30200 () Bool)

(assert (=> b!64570 (= e!35031 res!30200)))

(assert (=> b!64570 true))

(declare-fun b!64571 () Bool)

(declare-fun e!35024 () Bool)

(declare-fun e!35023 () Bool)

(assert (=> b!64571 (= e!35024 e!35023)))

(declare-fun res!30195 () Bool)

(assert (=> b!64571 (=> (not res!30195) (not e!35023))))

(declare-fun lt!12198 () Bool)

(assert (=> b!64571 (= res!30195 (not lt!12198))))

(declare-fun b!64572 () Bool)

(declare-fun e!35032 () Bool)

(declare-fun e!35013 () Bool)

(assert (=> b!64572 (= e!35032 e!35013)))

(declare-fun c!14299 () Bool)

(declare-fun lt!12202 () Bool)

(assert (=> b!64572 (= c!14299 (or lt!12202 (is-Not!11 lt!11840)))))

(declare-fun b!64573 () Bool)

(declare-fun e!35030 () Bool)

(declare-fun e!35020 () Bool)

(assert (=> b!64573 (= e!35030 e!35020)))

(declare-fun res!30193 () Bool)

(assert (=> b!64573 (=> (not res!30193) (not e!35020))))

(declare-fun lt!12197 () Bool)

(assert (=> b!64573 (= res!30193 (not lt!12197))))

(declare-fun b!64574 () Bool)

(declare-fun e!35009 () Bool)

(declare-fun res!30196 () Bool)

(assert (=> b!64574 (= e!35009 res!30196)))

(assert (=> b!64574 true))

(assert (=> b!64574 true))

(declare-fun b!64575 () Bool)

(declare-fun e!35019 () Bool)

(declare-fun lt!12207 () Bool)

(assert (=> b!64575 (= e!35019 lt!12207)))

(declare-fun b!64576 () Bool)

(declare-fun e!35014 () Bool)

(assert (=> b!64576 (= e!35014 lt!12203)))

(declare-fun b!64577 () Bool)

(assert (=> b!64577 (= e!35023 e!35032)))

(declare-fun res!30194 () Bool)

(assert (=> b!64577 (=> (not res!30194) (not e!35032))))

(assert (=> b!64577 (= res!30194 lt!12202)))

(assert (=> b!64577 (= lt!12202 (is-Implies!11 lt!11840))))

(declare-fun b!64578 () Bool)

(declare-fun e!35028 () Bool)

(assert (=> b!64578 (= e!35022 e!35028)))

(declare-fun c!14302 () Bool)

(declare-fun lt!12205 () Bool)

(assert (=> b!64578 (= c!14302 lt!12205)))

(declare-fun lt!12201 () Bool)

(assert (=> b!64578 (= lt!12201 e!35009)))

(declare-fun c!14298 () Bool)

(assert (=> b!64578 (= c!14298 (or lt!12205 (is-Not!11 lt!11840)))))

(assert (=> b!64578 (= lt!12205 (is-Implies!11 lt!11840))))

(declare-fun b!64579 () Bool)

(declare-fun res!30205 () Bool)

(assert (=> b!64579 (= e!35014 res!30205)))

(assert (=> b!64579 true))

(declare-fun b!64580 () Bool)

(declare-fun e!35029 () Formula!6)

(assert (=> b!64580 (= e!35029 (rhs!821 lt!11840))))

(declare-fun b!64581 () Bool)

(declare-fun e!35021 () Bool)

(assert (=> b!64581 (= e!35021 (and lt!12203 lt!12207))))

(declare-fun b!64582 () Bool)

(declare-fun lt!12204 () Bool)

(assert (=> b!64582 (= e!35031 lt!12204)))

(declare-fun b!64583 () Bool)

(declare-fun e!35026 () Bool)

(declare-fun res!30208 () Bool)

(assert (=> b!64583 (= e!35026 res!30208)))

(assert (=> b!64583 true))

(declare-fun b!64584 () Bool)

(declare-fun e!35011 () Bool)

(assert (=> b!64584 (= e!35011 (not e!35027))))

(declare-fun c!14292 () Bool)

(declare-fun lt!12200 () Bool)

(assert (=> b!64584 (= c!14292 (or lt!12200 (is-Implies!11 lt!11840) (is-Not!11 lt!11840)))))

(declare-fun b!64585 () Bool)

(declare-fun res!30192 () Bool)

(assert (=> b!64585 (= e!35018 res!30192)))

(assert (=> b!64585 true))

(declare-fun b!64586 () Bool)

(assert (=> b!64586 (= e!35026 (eval!0 e!35029))))

(declare-fun c!14294 () Bool)

(declare-fun lt!12199 () Bool)

(assert (=> b!64586 (= c!14294 lt!12199)))

(declare-fun b!64587 () Bool)

(assert (=> b!64587 (= e!35012 e!35030)))

(declare-fun res!30209 () Bool)

(assert (=> b!64587 (=> res!30209 e!35030)))

(assert (=> b!64587 (= res!30209 (and lt!12197 (not lt!12204)))))

(assert (=> b!64587 (= lt!12204 e!35014)))

(declare-fun c!14290 () Bool)

(assert (=> b!64587 (= c!14290 (or lt!12197 (is-Implies!11 lt!11840) (is-Not!11 lt!11840)))))

(assert (=> b!64587 (= lt!12197 (is-Or!11 lt!11840))))

(declare-fun b!64588 () Bool)

(declare-fun res!30204 () Bool)

(assert (=> b!64588 (= e!35019 res!30204)))

(assert (=> b!64588 true))

(declare-fun b!64589 () Bool)

(assert (=> b!64589 (= e!35029 e!35016)))

(declare-fun c!14301 () Bool)

(assert (=> b!64589 (= c!14301 e!35011)))

(declare-fun res!30207 () Bool)

(assert (=> b!64589 (=> (not res!30207) (not e!35011))))

(assert (=> b!64589 (= res!30207 lt!12200)))

(assert (=> b!64589 (= lt!12200 (is-Or!11 lt!11840))))

(declare-fun b!64590 () Bool)

(declare-fun res!30199 () Bool)

(assert (=> b!64590 (= e!35027 res!30199)))

(assert (=> b!64590 true))

(declare-fun b!64591 () Bool)

(assert (=> b!64591 (= e!35021 e!35022)))

(declare-fun c!14303 () Bool)

(assert (=> b!64591 (= c!14303 lt!12198)))

(assert (=> b!64591 (= lt!12196 e!35019)))

(declare-fun c!14297 () Bool)

(assert (=> b!64591 (= c!14297 e!35024)))

(declare-fun res!30203 () Bool)

(assert (=> b!64591 (=> res!30203 e!35024)))

(assert (=> b!64591 (= res!30203 (and lt!12198 (not lt!12194)))))

(assert (=> b!64591 (= lt!12194 e!35025)))

(declare-fun c!14296 () Bool)

(assert (=> b!64591 (= c!14296 (or lt!12198 (is-Implies!11 lt!11840) (is-Not!11 lt!11840)))))

(assert (=> b!64591 (= lt!12198 (is-Or!11 lt!11840))))

(declare-fun b!64592 () Bool)

(declare-fun res!30206 () Bool)

(assert (=> b!64592 (= e!35013 res!30206)))

(assert (=> b!64592 true))

(declare-fun b!64593 () Bool)

(assert (=> b!64593 (= e!35009 lt!12194)))

(declare-fun b!64594 () Bool)

(declare-fun e!35017 () Bool)

(assert (=> b!64594 (= e!35020 e!35017)))

(declare-fun res!30197 () Bool)

(assert (=> b!64594 (=> (not res!30197) (not e!35017))))

(declare-fun lt!12206 () Bool)

(assert (=> b!64594 (= res!30197 lt!12206)))

(assert (=> b!64594 (= lt!12206 (is-Implies!11 lt!11840))))

(declare-fun b!64595 () Bool)

(declare-fun e!35015 () Bool)

(assert (=> b!64595 (= e!35015 (not lt!12201))))

(declare-fun b!64596 () Bool)

(assert (=> b!64596 (= e!35028 e!35015)))

(declare-fun c!14291 () Bool)

(assert (=> b!64596 (= c!14291 (is-Not!11 lt!11840))))

(declare-fun b!64597 () Bool)

(assert (=> b!64597 (= e!35028 (or (not lt!12201) lt!12196))))

(declare-fun d!53320 () Bool)

(declare-fun c!14293 () Bool)

(assert (=> d!53320 (= c!14293 lt!12195)))

(assert (=> d!53320 (= lt!12207 e!35026)))

(declare-fun c!14295 () Bool)

(assert (=> d!53320 (= c!14295 e!35010)))

(declare-fun res!30198 () Bool)

(assert (=> d!53320 (=> res!30198 e!35010)))

(assert (=> d!53320 (= res!30198 lt!12199)))

(assert (=> d!53320 (= lt!12199 (and lt!12195 lt!12203))))

(assert (=> d!53320 (= lt!12203 e!35018)))

(declare-fun c!14304 () Bool)

(assert (=> d!53320 (= c!14304 (or lt!12195 (is-Or!11 lt!11840) (is-Implies!11 lt!11840) (is-Not!11 lt!11840)))))

(assert (=> d!53320 (= lt!12195 (is-And!11 lt!11840))))

(assert (=> d!53320 (= (eval!0 lt!11840) e!35021)))

(declare-fun b!64598 () Bool)

(assert (=> b!64598 (= e!35017 e!35031)))

(declare-fun c!14300 () Bool)

(assert (=> b!64598 (= c!14300 (or lt!12206 (is-Not!11 lt!11840)))))

(declare-fun b!64599 () Bool)

(assert (=> b!64599 (= e!35016 (rhs!822 lt!11840))))

(declare-fun b!64600 () Bool)

(declare-fun res!30202 () Bool)

(assert (=> b!64600 (= e!35025 res!30202)))

(assert (=> b!64600 true))

(declare-fun b!64601 () Bool)

(assert (=> b!64601 (= e!35015 (evalLit!0 (id!4785 lt!11840)))))

(declare-fun b!64602 () Bool)

(assert (=> b!64602 (= e!35013 lt!12194)))

(assert (= (and d!53320 c!14304) b!64567))

(assert (= (and d!53320 (not c!14304)) b!64585))

(assert (= (and d!53320 (not res!30198)) b!64564))

(assert (= (and b!64564 res!30201) b!64587))

(assert (= (and b!64587 c!14290) b!64576))

(assert (= (and b!64587 (not c!14290)) b!64579))

(assert (= (and b!64587 (not res!30209)) b!64573))

(assert (= (and b!64573 res!30193) b!64594))

(assert (= (and b!64594 res!30197) b!64598))

(assert (= (and b!64598 c!14300) b!64582))

(assert (= (and b!64598 (not c!14300)) b!64570))

(assert (= (and b!64589 res!30207) b!64584))

(assert (= (and b!64584 c!14292) b!64565))

(assert (= (and b!64584 (not c!14292)) b!64590))

(assert (= (and b!64589 c!14301) b!64569))

(assert (= (and b!64589 (not c!14301)) b!64599))

(assert (= (and b!64586 c!14294) b!64580))

(assert (= (and b!64586 (not c!14294)) b!64589))

(assert (= (and d!53320 c!14295) b!64586))

(assert (= (and d!53320 (not c!14295)) b!64583))

(assert (= (and b!64591 c!14296) b!64566))

(assert (= (and b!64591 (not c!14296)) b!64600))

(assert (= (and b!64591 (not res!30203)) b!64571))

(assert (= (and b!64571 res!30195) b!64577))

(assert (= (and b!64577 res!30194) b!64572))

(assert (= (and b!64572 c!14299) b!64602))

(assert (= (and b!64572 (not c!14299)) b!64592))

(assert (= (and b!64591 c!14297) b!64575))

(assert (= (and b!64591 (not c!14297)) b!64588))

(assert (= (and b!64578 c!14298) b!64593))

(assert (= (and b!64578 (not c!14298)) b!64574))

(assert (= (and b!64596 c!14291) b!64595))

(assert (= (and b!64596 (not c!14291)) b!64601))

(assert (= (and b!64578 c!14302) b!64597))

(assert (= (and b!64578 (not c!14302)) b!64596))

(assert (= (and b!64591 c!14303) b!64568))

(assert (= (and b!64591 (not c!14303)) b!64578))

(assert (= (and d!53320 c!14293) b!64581))

(assert (= (and d!53320 (not c!14293)) b!64591))

(declare-fun m!69275 () Bool)

(assert (=> b!64567 m!69275))

(declare-fun m!69277 () Bool)

(assert (=> b!64586 m!69277))

(declare-fun m!69279 () Bool)

(assert (=> b!64601 m!69279))

(assert (=> b!63677 d!53320))

(declare-fun b!64629 () Bool)

(declare-fun e!35056 () Bool)

(declare-fun lt!12223 () Bool)

(assert (=> b!64629 (= e!35056 (isSimplified!1 (ite lt!12223 (lhs!821 lt!11932) (ite (is-Or!11 lt!11932) (lhs!823 lt!11932) (f!4078 lt!11932)))))))

(declare-fun b!64630 () Bool)

(declare-fun e!35051 () Bool)

(declare-fun res!30236 () Bool)

(assert (=> b!64630 (= e!35051 res!30236)))

(assert (=> b!64630 true))

(declare-fun b!64631 () Bool)

(declare-fun e!35049 () Bool)

(declare-fun lt!12222 () Bool)

(declare-fun lt!12225 () Bool)

(assert (=> b!64631 (= e!35049 (and lt!12222 lt!12225))))

(declare-fun d!53322 () Bool)

(declare-fun c!14315 () Bool)

(assert (=> d!53322 (= c!14315 lt!12223)))

(assert (=> d!53322 (= lt!12225 e!35051)))

(declare-fun c!14317 () Bool)

(declare-fun e!35055 () Bool)

(assert (=> d!53322 (= c!14317 e!35055)))

(declare-fun res!30241 () Bool)

(assert (=> d!53322 (=> res!30241 e!35055)))

(declare-fun lt!12227 () Bool)

(assert (=> d!53322 (= res!30241 lt!12227)))

(assert (=> d!53322 (= lt!12227 (and lt!12223 lt!12222))))

(assert (=> d!53322 (= lt!12222 e!35056)))

(declare-fun c!14316 () Bool)

(assert (=> d!53322 (= c!14316 (or lt!12223 (is-Or!11 lt!11932) (and (not (is-Implies!11 lt!11932)) (is-Not!11 lt!11932))))))

(assert (=> d!53322 (= lt!12223 (is-And!11 lt!11932))))

(assert (=> d!53322 (= (isSimplified!1 lt!11932) e!35049)))

(declare-fun b!64632 () Bool)

(assert (=> b!64632 (= e!35051 (isSimplified!1 (ite lt!12227 (rhs!821 lt!11932) (rhs!823 lt!11932))))))

(declare-fun b!64633 () Bool)

(declare-fun e!35054 () Bool)

(declare-fun res!30238 () Bool)

(assert (=> b!64633 (= e!35054 res!30238)))

(assert (=> b!64633 true))

(assert (=> b!64633 true))

(declare-fun b!64634 () Bool)

(declare-fun lt!12226 () Bool)

(declare-fun lt!12224 () Bool)

(assert (=> b!64634 (= e!35049 (ite lt!12224 (and lt!12226 lt!12225) (and (not (is-Implies!11 lt!11932)) (or (not (is-Not!11 lt!11932)) lt!12226))))))

(assert (=> b!64634 (= lt!12226 e!35054)))

(declare-fun c!14318 () Bool)

(assert (=> b!64634 (= c!14318 (or lt!12224 (and (not (is-Implies!11 lt!11932)) (is-Not!11 lt!11932))))))

(assert (=> b!64634 (= lt!12224 (is-Or!11 lt!11932))))

(declare-fun b!64635 () Bool)

(declare-fun e!35050 () Bool)

(assert (=> b!64635 (= e!35055 e!35050)))

(declare-fun res!30237 () Bool)

(assert (=> b!64635 (=> (not res!30237) (not e!35050))))

(assert (=> b!64635 (= res!30237 (not lt!12223))))

(declare-fun b!64636 () Bool)

(assert (=> b!64636 (= e!35054 lt!12222)))

(declare-fun b!64637 () Bool)

(declare-fun res!30235 () Bool)

(assert (=> b!64637 (= e!35056 res!30235)))

(assert (=> b!64637 true))

(declare-fun b!64638 () Bool)

(declare-fun e!35052 () Bool)

(declare-fun e!35053 () Bool)

(assert (=> b!64638 (= e!35052 e!35053)))

(declare-fun c!14319 () Bool)

(declare-fun lt!12228 () Bool)

(assert (=> b!64638 (= c!14319 (or lt!12228 (and (not (is-Implies!11 lt!11932)) (is-Not!11 lt!11932))))))

(declare-fun b!64639 () Bool)

(declare-fun res!30240 () Bool)

(assert (=> b!64639 (= e!35053 res!30240)))

(assert (=> b!64639 true))

(declare-fun b!64640 () Bool)

(assert (=> b!64640 (= e!35050 e!35052)))

(declare-fun res!30239 () Bool)

(assert (=> b!64640 (=> (not res!30239) (not e!35052))))

(assert (=> b!64640 (= res!30239 lt!12228)))

(assert (=> b!64640 (= lt!12228 (is-Or!11 lt!11932))))

(declare-fun b!64641 () Bool)

(assert (=> b!64641 (= e!35053 lt!12222)))

(assert (= (and d!53322 c!14316) b!64629))

(assert (= (and d!53322 (not c!14316)) b!64637))

(assert (= (and d!53322 (not res!30241)) b!64635))

(assert (= (and b!64635 res!30237) b!64640))

(assert (= (and b!64640 res!30239) b!64638))

(assert (= (and b!64638 c!14319) b!64641))

(assert (= (and b!64638 (not c!14319)) b!64639))

(assert (= (and d!53322 c!14317) b!64632))

(assert (= (and d!53322 (not c!14317)) b!64630))

(assert (= (and b!64634 c!14318) b!64636))

(assert (= (and b!64634 (not c!14318)) b!64633))

(assert (= (and d!53322 c!14315) b!64631))

(assert (= (and d!53322 (not c!14315)) b!64634))

(declare-fun m!69281 () Bool)

(assert (=> b!64629 m!69281))

(declare-fun m!69283 () Bool)

(assert (=> b!64632 m!69283))

(assert (=> d!53272 d!53322))

(push 1)

(assert (not b!64205))

(assert (not b!64475))

(assert (not b!63991))

(assert (not b!64456))

(assert (not b!63969))

(assert (not b!64417))

(assert (not b!64200))

(assert (not b!64494))

(assert (not b!64458))

(assert (not b!64383))

(assert (not b!64088))

(assert (not b!63956))

(assert (not b!64327))

(assert (not b!64629))

(assert (not b!64183))

(assert (not b!64586))

(assert (not b!64301))

(assert (not b!63966))

(assert (not b!64547))

(assert (not b!64336))

(assert (not b!64300))

(assert (not b!64189))

(assert (not b!64241))

(assert (not b!64324))

(assert (not b!63978))

(assert (not b!64103))

(assert (not b!64303))

(assert (not d!53276))

(assert (not b!64302))

(assert (not b!64069))

(assert (not b!64010))

(assert (not b!63916))

(assert (not b!63935))

(assert (not b!64193))

(assert (not d!53310))

(assert (not b!64326))

(assert (not b!64528))

(assert (not b!64462))

(assert (not b!64030))

(assert (not b!64632))

(assert (not b!64191))

(assert (not b!64378))

(assert (not b!64562))

(assert (not b!64331))

(assert (not b!64188))

(assert (not b!64209))

(assert (not b!64441))

(assert (not b!64314))

(assert (not b!64190))

(assert (not b!63972))

(assert (not b!64307))

(assert (not b!64322))

(assert (not b!64329))

(assert (not b!64323))

(assert (not b!64181))

(assert (not b!64304))

(assert (not b!64325))

(assert (not b!64309))

(assert (not b!63976))

(assert (not b!64319))

(assert (not b!63952))

(assert (not b!64344))

(assert (not b!64402))

(assert (not b!64025))

(assert (not b!64305))

(assert (not b!63983))

(assert (not b!64049))

(assert (not b!64261))

(assert (not b!64422))

(assert (not b!64280))

(assert (not b!64064))

(assert (not b!64363))

(assert (not b!64515))

(assert (not b!64187))

(assert (not b!64509))

(assert (not b!64147))

(assert (not b!64295))

(assert (not b!64256))

(assert (not b!64195))

(assert (not b!64127))

(assert (not b!63971))

(assert (not b!64142))

(assert (not b!64166))

(assert (not b!64297))

(assert (not b!63973))

(assert (not b!64601))

(assert (not b!63970))

(assert (not b!64511))

(assert (not b!63950))

(assert (not d!53294))

(assert (not b!64108))

(assert (not b!63974))

(assert (not b!64186))

(assert (not d!53316))

(assert (not b!64567))

(assert (not b!64222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

