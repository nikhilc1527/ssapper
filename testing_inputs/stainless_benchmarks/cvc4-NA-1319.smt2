; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9276 () Bool)

(assert start!9276)

(declare-fun b!65819 () Bool)

(declare-fun res!31086 () Bool)

(declare-fun e!35695 () Bool)

(assert (=> b!65819 (=> (not res!31086) (not e!35695))))

(declare-datatypes () ((Formula!21 (And!26 (lhs!866 Formula!21) (rhs!866 Formula!21)) (Literal!20 (id!4801 Int)) (Implies!26 (lhs!867 Formula!21) (rhs!867 Formula!21)) (Or!26 (lhs!868 Formula!21) (rhs!868 Formula!21)) (Not!26 (f!4118 Formula!21)))))

(declare-fun f!3790 () Formula!21)

(assert (=> b!65819 (= res!31086 (is-And!26 f!3790))))

(declare-fun res!31087 () Bool)

(assert (=> start!9276 (=> (not res!31087) (not e!35695))))

(declare-fun isNNF!1 (Formula!21) Bool)

(assert (=> start!9276 (= res!31087 (isNNF!1 f!3790))))

(assert (=> start!9276 e!35695))

(assert (=> start!9276 true))

(declare-fun b!65820 () Bool)

(declare-fun res!31085 () Bool)

(assert (=> b!65820 (=> (not res!31085) (not e!35695))))

(declare-fun inductVal!308 () Bool)

(declare-fun nnfIsStable!1 (Formula!21) Bool)

(assert (=> b!65820 (= res!31085 (= inductVal!308 (nnfIsStable!1 (rhs!866 f!3790))))))

(declare-fun b!65821 () Bool)

(declare-fun res!31084 () Bool)

(assert (=> b!65821 (=> (not res!31084) (not e!35695))))

(declare-fun inductVal!316 () Bool)

(assert (=> b!65821 (= res!31084 (= inductVal!316 (nnfIsStable!1 (lhs!866 f!3790))))))

(declare-fun b!65822 () Bool)

(declare-fun nnf!1 (Formula!21) Formula!21)

(assert (=> b!65822 (= e!35695 (not (= (nnf!1 f!3790) f!3790)))))

(assert (= (and start!9276 res!31087) b!65819))

(assert (= (and b!65819 res!31086) b!65820))

(assert (= (and b!65820 res!31085) b!65821))

(assert (= (and b!65821 res!31084) b!65822))

(declare-fun m!69557 () Bool)

(assert (=> start!9276 m!69557))

(declare-fun m!69559 () Bool)

(assert (=> b!65820 m!69559))

(declare-fun m!69561 () Bool)

(assert (=> b!65821 m!69561))

(declare-fun m!69563 () Bool)

(assert (=> b!65822 m!69563))

(push 1)

(assert (not start!9276))

(assert (not b!65822))

(assert (not b!65821))

(assert (not b!65820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65837 () Bool)

(declare-fun e!35707 () Bool)

(declare-fun e!35704 () Bool)

(assert (=> b!65837 (= e!35707 e!35704)))

(declare-fun res!31102 () Bool)

(assert (=> b!65837 (=> (not res!31102) (not e!35704))))

(declare-fun lt!12709 () Bool)

(assert (=> b!65837 (= res!31102 lt!12709)))

(declare-fun b!65838 () Bool)

(declare-fun e!35705 () Bool)

(assert (=> b!65838 (= e!35704 e!35705)))

(declare-fun lt!12707 () Bool)

(declare-fun c!14803 () Bool)

(declare-fun lt!12708 () Bool)

(assert (=> b!65838 (= c!14803 (or lt!12708 (and (not lt!12707) (is-Or!26 f!3790) lt!12709)))))

(declare-fun d!53394 () Bool)

(declare-fun c!14804 () Bool)

(assert (=> d!53394 (= c!14804 (or lt!12707 (is-Or!26 f!3790)))))

(assert (=> d!53394 (= lt!12708 (and lt!12707 lt!12709))))

(declare-fun e!35706 () Bool)

(assert (=> d!53394 (= lt!12709 e!35706)))

(declare-fun c!14802 () Bool)

(assert (=> d!53394 (= c!14802 (or lt!12707 (is-Or!26 f!3790)))))

(assert (=> d!53394 (= lt!12707 (is-And!26 f!3790))))

(assert (=> d!53394 (= (isNNF!1 f!3790) e!35707)))

(declare-fun b!65839 () Bool)

(declare-fun res!31101 () Bool)

(assert (=> b!65839 (= e!35705 res!31101)))

(assert (=> b!65839 true))

(assert (=> b!65839 true))

(declare-fun b!65840 () Bool)

(assert (=> b!65840 (= e!35706 (isNNF!1 (ite lt!12707 (lhs!866 f!3790) (lhs!868 f!3790))))))

(declare-fun b!65841 () Bool)

(declare-fun res!31100 () Bool)

(assert (=> b!65841 (= e!35706 res!31100)))

(assert (=> b!65841 true))

(declare-fun b!65842 () Bool)

(assert (=> b!65842 (= e!35707 (and (not (is-Implies!26 f!3790)) (or (and (is-Not!26 f!3790) (is-Literal!20 (f!4118 f!3790))) (not (is-Not!26 f!3790)))))))

(declare-fun b!65843 () Bool)

(assert (=> b!65843 (= e!35705 (isNNF!1 (ite lt!12708 (rhs!866 f!3790) (rhs!868 f!3790))))))

(assert (= (and d!53394 c!14802) b!65840))

(assert (= (and d!53394 (not c!14802)) b!65841))

(assert (= (and b!65837 res!31102) b!65838))

(assert (= (and b!65838 c!14803) b!65843))

(assert (= (and b!65838 (not c!14803)) b!65839))

(assert (= (and d!53394 c!14804) b!65837))

(assert (= (and d!53394 (not c!14804)) b!65842))

(declare-fun m!69565 () Bool)

(assert (=> b!65840 m!69565))

(declare-fun m!69567 () Bool)

(assert (=> b!65843 m!69567))

(assert (=> start!9276 d!53394))

(declare-fun b!65904 () Bool)

(declare-fun e!35752 () Formula!21)

(declare-fun lt!12760 () Formula!21)

(declare-fun lt!12749 () Formula!21)

(assert (=> b!65904 (= e!35752 (And!26 lt!12760 lt!12749))))

(declare-fun b!65905 () Bool)

(declare-fun e!35742 () Formula!21)

(declare-fun lt!12757 () Formula!21)

(declare-fun lt!12751 () Formula!21)

(assert (=> b!65905 (= e!35742 (And!26 lt!12757 lt!12751))))

(declare-fun b!65906 () Bool)

(declare-fun e!35745 () Formula!21)

(declare-fun lt!12748 () Bool)

(assert (=> b!65906 (= e!35745 (nnf!1 (ite lt!12748 (lhs!866 f!3790) (ite (is-Or!26 f!3790) (lhs!868 f!3790) (ite (is-Implies!26 f!3790) (Or!26 (Not!26 (lhs!867 f!3790)) (rhs!867 f!3790)) (ite (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (Not!26 (lhs!866 (f!4118 f!3790))) (ite (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (Not!26 (lhs!868 (f!4118 f!3790))) (ite (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))) (lhs!867 (f!4118 f!3790)) (f!4118 (f!4118 f!3790))))))))))))

(declare-fun b!65907 () Bool)

(declare-fun e!35739 () Formula!21)

(declare-fun lt!12753 () Formula!21)

(declare-fun lt!12756 () Formula!21)

(assert (=> b!65907 (= e!35739 (Or!26 lt!12753 lt!12756))))

(declare-fun b!65908 () Bool)

(declare-fun e!35751 () Formula!21)

(declare-fun e!35744 () Formula!21)

(assert (=> b!65908 (= e!35751 e!35744)))

(declare-fun c!14847 () Bool)

(declare-fun lt!12754 () Bool)

(assert (=> b!65908 (= c!14847 lt!12754)))

(declare-fun lt!12747 () Formula!21)

(declare-fun e!35747 () Formula!21)

(assert (=> b!65908 (= lt!12747 e!35747)))

(declare-fun c!14840 () Bool)

(assert (=> b!65908 (= c!14840 (or lt!12754 (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790)))))))

(assert (=> b!65908 (= lt!12754 (is-Implies!26 f!3790))))

(declare-fun b!65909 () Bool)

(assert (=> b!65909 (= e!35744 e!35739)))

(declare-fun c!14839 () Bool)

(declare-fun lt!12750 () Bool)

(assert (=> b!65909 (= c!14839 lt!12750)))

(declare-fun e!35743 () Formula!21)

(assert (=> b!65909 (= lt!12756 e!35743)))

(declare-fun c!14835 () Bool)

(assert (=> b!65909 (= c!14835 (or lt!12750 (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790)))))))

(declare-fun e!35740 () Formula!21)

(assert (=> b!65909 (= lt!12753 e!35740)))

(declare-fun c!14842 () Bool)

(assert (=> b!65909 (= c!14842 (or lt!12750 (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790)))))))

(assert (=> b!65909 (= lt!12750 (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))))))

(declare-fun lt!12752 () Formula!21)

(declare-fun b!65910 () Bool)

(declare-fun lt!12759 () Bool)

(assert (=> b!65910 (= e!35752 (ite lt!12759 (And!26 lt!12752 lt!12749) (ite (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790))) lt!12752 f!3790)))))

(declare-fun e!35738 () Formula!21)

(assert (=> b!65910 (= lt!12752 e!35738)))

(declare-fun c!14838 () Bool)

(assert (=> b!65910 (= c!14838 (or lt!12759 (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790)))))))

(assert (=> b!65910 (= lt!12759 (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))))))

(declare-fun b!65911 () Bool)

(declare-fun res!31154 () Formula!21)

(assert (=> b!65911 (= e!35738 res!31154)))

(assert (=> b!65911 true))

(assert (=> b!65911 true))

(declare-fun d!53396 () Bool)

(declare-fun lt!12746 () Formula!21)

(assert (=> d!53396 (isNNF!1 lt!12746)))

(assert (=> d!53396 (= lt!12746 e!35742)))

(declare-fun c!14841 () Bool)

(assert (=> d!53396 (= c!14841 lt!12748)))

(declare-fun e!35748 () Formula!21)

(assert (=> d!53396 (= lt!12751 e!35748)))

(declare-fun c!14848 () Bool)

(assert (=> d!53396 (= c!14848 (or lt!12748 (is-Or!26 f!3790) (and (not (is-Implies!26 f!3790)) (or (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790)))))))))

(assert (=> d!53396 (= lt!12757 e!35745)))

(declare-fun c!14844 () Bool)

(assert (=> d!53396 (= c!14844 (or lt!12748 (is-Or!26 f!3790) (is-Implies!26 f!3790) (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790)))))))

(assert (=> d!53396 (= lt!12748 (is-And!26 f!3790))))

(assert (=> d!53396 (= (nnf!1 f!3790) lt!12746)))

(declare-fun b!65912 () Bool)

(declare-fun e!35750 () Formula!21)

(assert (=> b!65912 (= e!35750 lt!12757)))

(declare-fun b!65913 () Bool)

(assert (=> b!65913 (= e!35742 e!35751)))

(declare-fun c!14843 () Bool)

(declare-fun lt!12745 () Bool)

(assert (=> b!65913 (= c!14843 lt!12745)))

(declare-fun lt!12755 () Formula!21)

(declare-fun e!35746 () Formula!21)

(assert (=> b!65913 (= lt!12755 e!35746)))

(declare-fun c!14849 () Bool)

(assert (=> b!65913 (= c!14849 (or lt!12745 (and (not (is-Implies!26 f!3790)) (or (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790)))))))))

(declare-fun lt!12744 () Formula!21)

(assert (=> b!65913 (= lt!12744 e!35750)))

(declare-fun c!14836 () Bool)

(assert (=> b!65913 (= c!14836 (or lt!12745 (is-Implies!26 f!3790) (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790)))))))

(assert (=> b!65913 (= lt!12745 (is-Or!26 f!3790))))

(declare-fun b!65914 () Bool)

(declare-fun res!31162 () Formula!21)

(assert (=> b!65914 (= e!35740 res!31162)))

(assert (=> b!65914 true))

(declare-fun b!65915 () Bool)

(declare-fun res!31155 () Formula!21)

(assert (=> b!65915 (= e!35746 res!31155)))

(assert (=> b!65915 true))

(declare-fun b!65916 () Bool)

(assert (=> b!65916 (= e!35743 lt!12755)))

(declare-fun b!65917 () Bool)

(declare-fun e!35741 () Formula!21)

(assert (=> b!65917 (= e!35741 lt!12753)))

(declare-fun b!65918 () Bool)

(assert (=> b!65918 (= e!35751 (Or!26 lt!12744 lt!12755))))

(declare-fun b!65919 () Bool)

(declare-fun res!31157 () Formula!21)

(assert (=> b!65919 (= e!35750 res!31157)))

(assert (=> b!65919 true))

(declare-fun b!65920 () Bool)

(declare-fun res!31153 () Formula!21)

(assert (=> b!65920 (= e!35745 res!31153)))

(assert (=> b!65920 true))

(declare-fun b!65921 () Bool)

(declare-fun res!31158 () Formula!21)

(assert (=> b!65921 (= e!35748 res!31158)))

(assert (=> b!65921 true))

(declare-fun b!65922 () Bool)

(declare-fun res!31159 () Formula!21)

(assert (=> b!65922 (= e!35743 res!31159)))

(assert (=> b!65922 true))

(declare-fun b!65923 () Bool)

(assert (=> b!65923 (= e!35739 e!35752)))

(declare-fun c!14837 () Bool)

(declare-fun lt!12758 () Bool)

(assert (=> b!65923 (= c!14837 lt!12758)))

(declare-fun e!35749 () Formula!21)

(assert (=> b!65923 (= lt!12749 e!35749)))

(declare-fun c!14846 () Bool)

(assert (=> b!65923 (= c!14846 (or lt!12758 (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790)))))))

(assert (=> b!65923 (= lt!12760 e!35741)))

(declare-fun c!14845 () Bool)

(assert (=> b!65923 (= c!14845 (or lt!12758 (and (is-Not!26 f!3790) (is-Implies!26 (f!4118 f!3790))) (and (is-Not!26 f!3790) (is-Not!26 (f!4118 f!3790)))))))

(assert (=> b!65923 (= lt!12758 (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))))))

(declare-fun b!65924 () Bool)

(assert (=> b!65924 (= e!35748 (nnf!1 (ite lt!12748 (rhs!866 f!3790) (ite (is-Or!26 f!3790) (rhs!868 f!3790) (ite (and (is-Not!26 f!3790) (is-And!26 (f!4118 f!3790))) (Not!26 (rhs!866 (f!4118 f!3790))) (ite (and (is-Not!26 f!3790) (is-Or!26 (f!4118 f!3790))) (Not!26 (rhs!868 (f!4118 f!3790))) (Not!26 (rhs!867 (f!4118 f!3790)))))))))))

(declare-fun b!65925 () Bool)

(declare-fun res!31156 () Formula!21)

(assert (=> b!65925 (= e!35749 res!31156)))

(assert (=> b!65925 true))

(declare-fun b!65926 () Bool)

(declare-fun res!31160 () Formula!21)

(assert (=> b!65926 (= e!35741 res!31160)))

(assert (=> b!65926 true))

(declare-fun b!65927 () Bool)

(assert (=> b!65927 (= e!35747 lt!12744)))

(declare-fun b!65928 () Bool)

(assert (=> b!65928 (= e!35746 lt!12751)))

(declare-fun b!65929 () Bool)

(assert (=> b!65929 (= e!35738 lt!12760)))

(declare-fun b!65930 () Bool)

(assert (=> b!65930 (= e!35744 lt!12747)))

(declare-fun b!65931 () Bool)

(assert (=> b!65931 (= e!35749 lt!12756)))

(declare-fun b!65932 () Bool)

(declare-fun res!31161 () Formula!21)

(assert (=> b!65932 (= e!35747 res!31161)))

(assert (=> b!65932 true))

(declare-fun b!65933 () Bool)

(assert (=> b!65933 (= e!35740 lt!12747)))

(assert (= (and d!53396 c!14844) b!65906))

(assert (= (and d!53396 (not c!14844)) b!65920))

(assert (= (and d!53396 c!14848) b!65924))

(assert (= (and d!53396 (not c!14848)) b!65921))

(assert (= (and b!65913 c!14836) b!65912))

(assert (= (and b!65913 (not c!14836)) b!65919))

(assert (= (and b!65913 c!14849) b!65928))

(assert (= (and b!65913 (not c!14849)) b!65915))

(assert (= (and b!65908 c!14840) b!65927))

(assert (= (and b!65908 (not c!14840)) b!65932))

(assert (= (and b!65909 c!14842) b!65933))

(assert (= (and b!65909 (not c!14842)) b!65914))

(assert (= (and b!65909 c!14835) b!65916))

(assert (= (and b!65909 (not c!14835)) b!65922))

(assert (= (and b!65923 c!14845) b!65917))

(assert (= (and b!65923 (not c!14845)) b!65926))

(assert (= (and b!65923 c!14846) b!65931))

(assert (= (and b!65923 (not c!14846)) b!65925))

(assert (= (and b!65910 c!14838) b!65929))

(assert (= (and b!65910 (not c!14838)) b!65911))

(assert (= (and b!65923 c!14837) b!65904))

(assert (= (and b!65923 (not c!14837)) b!65910))

(assert (= (and b!65909 c!14839) b!65907))

(assert (= (and b!65909 (not c!14839)) b!65923))

(assert (= (and b!65908 c!14847) b!65930))

(assert (= (and b!65908 (not c!14847)) b!65909))

(assert (= (and b!65913 c!14843) b!65918))

(assert (= (and b!65913 (not c!14843)) b!65908))

(assert (= (and d!53396 c!14841) b!65905))

(assert (= (and d!53396 (not c!14841)) b!65913))

(declare-fun m!69569 () Bool)

(assert (=> b!65906 m!69569))

(declare-fun m!69571 () Bool)

(assert (=> d!53396 m!69571))

(declare-fun m!69573 () Bool)

(assert (=> b!65924 m!69573))

(assert (=> b!65822 d!53396))

(declare-fun b!65958 () Bool)

(declare-fun e!35766 () Bool)

(declare-fun lt!12774 () Formula!21)

(assert (=> b!65958 (= e!35766 (= lt!12774 (lhs!866 f!3790)))))

(declare-fun b!65959 () Bool)

(declare-fun e!35768 () Bool)

(declare-fun res!31195 () Bool)

(assert (=> b!65959 (= e!35768 res!31195)))

(assert (=> b!65959 true))

(declare-fun d!53398 () Bool)

(declare-fun e!35767 () Bool)

(assert (=> d!53398 e!35767))

(declare-fun c!14863 () Bool)

(declare-fun lt!12773 () Bool)

(assert (=> d!53398 (= c!14863 (or lt!12773 (is-Literal!20 (lhs!866 f!3790))))))

(declare-fun lt!12775 () Formula!21)

(declare-fun e!35770 () Formula!21)

(assert (=> d!53398 (= lt!12775 e!35770)))

(declare-fun c!14865 () Bool)

(assert (=> d!53398 (= c!14865 (or lt!12773 (is-Literal!20 (lhs!866 f!3790))))))

(declare-fun lt!12778 () Bool)

(assert (=> d!53398 (= lt!12778 e!35768)))

(declare-fun c!14867 () Bool)

(assert (=> d!53398 (= c!14867 (or lt!12773 (and (not (is-Literal!20 (lhs!866 f!3790))) (or (is-Implies!26 (lhs!866 f!3790)) (is-Or!26 (lhs!866 f!3790))))))))

(declare-fun lt!12776 () Bool)

(declare-fun e!35769 () Bool)

(assert (=> d!53398 (= lt!12776 e!35769)))

(declare-fun c!14866 () Bool)

(assert (=> d!53398 (= c!14866 (or lt!12773 (not (is-Literal!20 (lhs!866 f!3790)))))))

(assert (=> d!53398 (= lt!12773 (is-And!26 (lhs!866 f!3790)))))

(assert (=> d!53398 (isNNF!1 (lhs!866 f!3790))))

(assert (=> d!53398 (= (nnfIsStable!1 (lhs!866 f!3790)) true)))

(declare-fun b!65960 () Bool)

(declare-fun res!31194 () Bool)

(assert (=> b!65960 (= e!35769 res!31194)))

(assert (=> b!65960 true))

(declare-fun b!65961 () Bool)

(assert (=> b!65961 (= e!35766 (= (nnf!1 (lhs!866 f!3790)) (lhs!866 f!3790)))))

(declare-fun b!65962 () Bool)

(assert (=> b!65962 (= e!35767 e!35766)))

(declare-fun c!14862 () Bool)

(declare-fun lt!12777 () Bool)

(assert (=> b!65962 (= c!14862 (or lt!12777 (is-Or!26 (lhs!866 f!3790))))))

(declare-fun e!35765 () Formula!21)

(assert (=> b!65962 (= lt!12774 e!35765)))

(declare-fun c!14864 () Bool)

(assert (=> b!65962 (= c!14864 (or lt!12777 (is-Or!26 (lhs!866 f!3790))))))

(assert (=> b!65962 (= lt!12777 (is-Implies!26 (lhs!866 f!3790)))))

(declare-fun b!65963 () Bool)

(assert (=> b!65963 (= e!35770 (nnf!1 (lhs!866 f!3790)))))

(declare-fun b!65964 () Bool)

(assert (=> b!65964 (= e!35769 (nnfIsStable!1 (ite lt!12773 (rhs!866 (lhs!866 f!3790)) (ite (is-Implies!26 (lhs!866 f!3790)) (rhs!867 (lhs!866 f!3790)) (ite (is-Or!26 (lhs!866 f!3790)) (rhs!868 (lhs!866 f!3790)) (f!4118 (lhs!866 f!3790)))))))))

(declare-fun b!65965 () Bool)

(assert (=> b!65965 (= e!35765 (nnf!1 (lhs!866 f!3790)))))

(declare-fun b!65966 () Bool)

(declare-fun res!31193 () Formula!21)

(assert (=> b!65966 (= e!35770 res!31193)))

(assert (=> b!65966 true))

(declare-fun b!65967 () Bool)

(assert (=> b!65967 (= e!35767 (= lt!12775 (lhs!866 f!3790)))))

(declare-fun b!65968 () Bool)

(assert (=> b!65968 (= e!35768 (nnfIsStable!1 (ite lt!12773 (lhs!866 (lhs!866 f!3790)) (ite (is-Implies!26 (lhs!866 f!3790)) (lhs!867 (lhs!866 f!3790)) (lhs!868 (lhs!866 f!3790))))))))

(declare-fun b!65969 () Bool)

(declare-fun res!31192 () Formula!21)

(assert (=> b!65969 (= e!35765 res!31192)))

(assert (=> b!65969 true))

(assert (=> b!65969 true))

(assert (= (and d!53398 c!14866) b!65964))

(assert (= (and d!53398 (not c!14866)) b!65960))

(assert (= (and d!53398 c!14867) b!65968))

(assert (= (and d!53398 (not c!14867)) b!65959))

(assert (= (and d!53398 c!14865) b!65963))

(assert (= (and d!53398 (not c!14865)) b!65966))

(assert (= (and b!65962 c!14864) b!65965))

(assert (= (and b!65962 (not c!14864)) b!65969))

(assert (= (and b!65962 c!14862) b!65958))

(assert (= (and b!65962 (not c!14862)) b!65961))

(assert (= (and d!53398 c!14863) b!65967))

(assert (= (and d!53398 (not c!14863)) b!65962))

(declare-fun m!69575 () Bool)

(assert (=> b!65963 m!69575))

(assert (=> b!65961 m!69575))

(declare-fun m!69577 () Bool)

(assert (=> b!65964 m!69577))

(assert (=> b!65965 m!69575))

(declare-fun m!69579 () Bool)

(assert (=> b!65968 m!69579))

(declare-fun m!69581 () Bool)

(assert (=> d!53398 m!69581))

(assert (=> b!65821 d!53398))

(declare-fun b!65970 () Bool)

(declare-fun e!35772 () Bool)

(declare-fun lt!12780 () Formula!21)

(assert (=> b!65970 (= e!35772 (= lt!12780 (rhs!866 f!3790)))))

(declare-fun b!65971 () Bool)

(declare-fun e!35774 () Bool)

(declare-fun res!31199 () Bool)

(assert (=> b!65971 (= e!35774 res!31199)))

(assert (=> b!65971 true))

(declare-fun d!53400 () Bool)

(declare-fun e!35773 () Bool)

(assert (=> d!53400 e!35773))

(declare-fun c!14869 () Bool)

(declare-fun lt!12779 () Bool)

(assert (=> d!53400 (= c!14869 (or lt!12779 (is-Literal!20 (rhs!866 f!3790))))))

(declare-fun lt!12781 () Formula!21)

(declare-fun e!35776 () Formula!21)

(assert (=> d!53400 (= lt!12781 e!35776)))

(declare-fun c!14871 () Bool)

(assert (=> d!53400 (= c!14871 (or lt!12779 (is-Literal!20 (rhs!866 f!3790))))))

(declare-fun lt!12784 () Bool)

(assert (=> d!53400 (= lt!12784 e!35774)))

(declare-fun c!14873 () Bool)

(assert (=> d!53400 (= c!14873 (or lt!12779 (and (not (is-Literal!20 (rhs!866 f!3790))) (or (is-Implies!26 (rhs!866 f!3790)) (is-Or!26 (rhs!866 f!3790))))))))

(declare-fun lt!12782 () Bool)

(declare-fun e!35775 () Bool)

(assert (=> d!53400 (= lt!12782 e!35775)))

(declare-fun c!14872 () Bool)

(assert (=> d!53400 (= c!14872 (or lt!12779 (not (is-Literal!20 (rhs!866 f!3790)))))))

(assert (=> d!53400 (= lt!12779 (is-And!26 (rhs!866 f!3790)))))

(assert (=> d!53400 (isNNF!1 (rhs!866 f!3790))))

(assert (=> d!53400 (= (nnfIsStable!1 (rhs!866 f!3790)) true)))

(declare-fun b!65972 () Bool)

(declare-fun res!31198 () Bool)

(assert (=> b!65972 (= e!35775 res!31198)))

(assert (=> b!65972 true))

(declare-fun b!65973 () Bool)

(assert (=> b!65973 (= e!35772 (= (nnf!1 (rhs!866 f!3790)) (rhs!866 f!3790)))))

(declare-fun b!65974 () Bool)

(assert (=> b!65974 (= e!35773 e!35772)))

(declare-fun c!14868 () Bool)

(declare-fun lt!12783 () Bool)

(assert (=> b!65974 (= c!14868 (or lt!12783 (is-Or!26 (rhs!866 f!3790))))))

(declare-fun e!35771 () Formula!21)

(assert (=> b!65974 (= lt!12780 e!35771)))

(declare-fun c!14870 () Bool)

(assert (=> b!65974 (= c!14870 (or lt!12783 (is-Or!26 (rhs!866 f!3790))))))

(assert (=> b!65974 (= lt!12783 (is-Implies!26 (rhs!866 f!3790)))))

(declare-fun b!65975 () Bool)

(assert (=> b!65975 (= e!35776 (nnf!1 (rhs!866 f!3790)))))

(declare-fun b!65976 () Bool)

(assert (=> b!65976 (= e!35775 (nnfIsStable!1 (ite lt!12779 (rhs!866 (rhs!866 f!3790)) (ite (is-Implies!26 (rhs!866 f!3790)) (rhs!867 (rhs!866 f!3790)) (ite (is-Or!26 (rhs!866 f!3790)) (rhs!868 (rhs!866 f!3790)) (f!4118 (rhs!866 f!3790)))))))))

(declare-fun b!65977 () Bool)

(assert (=> b!65977 (= e!35771 (nnf!1 (rhs!866 f!3790)))))

(declare-fun b!65978 () Bool)

(declare-fun res!31197 () Formula!21)

(assert (=> b!65978 (= e!35776 res!31197)))

(assert (=> b!65978 true))

(declare-fun b!65979 () Bool)

(assert (=> b!65979 (= e!35773 (= lt!12781 (rhs!866 f!3790)))))

(declare-fun b!65980 () Bool)

(assert (=> b!65980 (= e!35774 (nnfIsStable!1 (ite lt!12779 (lhs!866 (rhs!866 f!3790)) (ite (is-Implies!26 (rhs!866 f!3790)) (lhs!867 (rhs!866 f!3790)) (lhs!868 (rhs!866 f!3790))))))))

(declare-fun b!65981 () Bool)

(declare-fun res!31196 () Formula!21)

(assert (=> b!65981 (= e!35771 res!31196)))

(assert (=> b!65981 true))

(assert (=> b!65981 true))

(assert (= (and d!53400 c!14872) b!65976))

(assert (= (and d!53400 (not c!14872)) b!65972))

(assert (= (and d!53400 c!14873) b!65980))

(assert (= (and d!53400 (not c!14873)) b!65971))

(assert (= (and d!53400 c!14871) b!65975))

(assert (= (and d!53400 (not c!14871)) b!65978))

(assert (= (and b!65974 c!14870) b!65977))

(assert (= (and b!65974 (not c!14870)) b!65981))

(assert (= (and b!65974 c!14868) b!65970))

(assert (= (and b!65974 (not c!14868)) b!65973))

(assert (= (and d!53400 c!14869) b!65979))

(assert (= (and d!53400 (not c!14869)) b!65974))

(declare-fun m!69583 () Bool)

(assert (=> b!65975 m!69583))

(assert (=> b!65973 m!69583))

(declare-fun m!69585 () Bool)

(assert (=> b!65976 m!69585))

(assert (=> b!65977 m!69583))

(declare-fun m!69587 () Bool)

(assert (=> b!65980 m!69587))

(declare-fun m!69589 () Bool)

(assert (=> d!53400 m!69589))

(assert (=> b!65820 d!53400))

(push 1)

(assert (not b!65965))

(assert (not b!65906))

(assert (not b!65924))

(assert (not d!53396))

(assert (not b!65961))

(assert (not d!53400))

(assert (not b!65840))

(assert (not b!65975))

(assert (not b!65968))

(assert (not b!65976))

(assert (not b!65977))

(assert (not b!65843))

(assert (not b!65980))

(assert (not b!65964))

(assert (not b!65963))

(assert (not b!65973))

(assert (not d!53398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

