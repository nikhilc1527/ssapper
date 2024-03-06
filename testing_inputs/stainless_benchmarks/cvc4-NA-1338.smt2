; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9398 () Bool)

(assert start!9398)

(declare-fun res!32755 () Bool)

(declare-fun e!36838 () Bool)

(assert (=> start!9398 (=> (not res!32755) (not e!36838))))

(declare-datatypes () ((Formula!39 (And!44 (lhs!920 Formula!39) (rhs!920 Formula!39)) (Literal!38 (id!4819 Int)) (Implies!44 (lhs!921 Formula!39) (rhs!921 Formula!39)) (Or!44 (lhs!922 Formula!39) (rhs!922 Formula!39)) (Not!44 (f!4173 Formula!39)))))

(declare-fun f!3683 () Formula!39)

(declare-fun isSimplified!1 (Formula!39) Bool)

(assert (=> start!9398 (= res!32755 (isSimplified!1 f!3683))))

(assert (=> start!9398 e!36838))

(assert (=> start!9398 true))

(declare-fun b!68053 () Bool)

(declare-fun res!32756 () Bool)

(assert (=> b!68053 (=> (not res!32756) (not e!36838))))

(assert (=> b!68053 (= res!32756 (and (not (is-And!44 f!3683)) (not (is-Literal!38 f!3683)) (not (is-Implies!44 f!3683)) (is-Or!44 f!3683)))))

(declare-fun b!68056 () Bool)

(declare-fun f!3712 () Formula!39)

(assert (=> b!68056 (= e!36838 (not (isSimplified!1 f!3712)))))

(declare-fun b!68055 () Bool)

(declare-fun res!32757 () Bool)

(assert (=> b!68055 (=> (not res!32757) (not e!36838))))

(assert (=> b!68055 (= res!32757 (= f!3712 (lhs!922 f!3683)))))

(declare-fun b!68054 () Bool)

(declare-fun res!32754 () Bool)

(assert (=> b!68054 (=> (not res!32754) (not e!36838))))

(declare-fun inductVal!228 () Bool)

(declare-fun simplifyIsStable!1 (Formula!39) Bool)

(assert (=> b!68054 (= res!32754 (= inductVal!228 (simplifyIsStable!1 (rhs!922 f!3683))))))

(assert (= (and start!9398 res!32755) b!68053))

(assert (= (and b!68053 res!32756) b!68054))

(assert (= (and b!68054 res!32754) b!68055))

(assert (= (and b!68055 res!32757) b!68056))

(declare-fun m!70155 () Bool)

(assert (=> start!9398 m!70155))

(declare-fun m!70157 () Bool)

(assert (=> b!68056 m!70157))

(declare-fun m!70159 () Bool)

(assert (=> b!68054 m!70159))

(push 1)

(assert (not b!68054))

(assert (not b!68056))

(assert (not start!9398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53542 () Bool)

(declare-fun e!36855 () Bool)

(assert (=> d!53542 e!36855))

(declare-fun c!15774 () Bool)

(declare-fun lt!13738 () Bool)

(assert (=> d!53542 (= c!15774 (or lt!13738 (is-Literal!38 (rhs!922 f!3683))))))

(declare-fun lt!13742 () Formula!39)

(declare-fun e!36851 () Formula!39)

(assert (=> d!53542 (= lt!13742 e!36851)))

(declare-fun c!15777 () Bool)

(assert (=> d!53542 (= c!15777 (or lt!13738 (is-Literal!38 (rhs!922 f!3683))))))

(declare-fun lt!13743 () Bool)

(declare-fun e!36853 () Bool)

(assert (=> d!53542 (= lt!13743 e!36853)))

(declare-fun c!15773 () Bool)

(assert (=> d!53542 (= c!15773 (or lt!13738 (and (not (is-Literal!38 (rhs!922 f!3683))) (or (is-Implies!44 (rhs!922 f!3683)) (is-Or!44 (rhs!922 f!3683))))))))

(declare-fun lt!13740 () Bool)

(declare-fun e!36852 () Bool)

(assert (=> d!53542 (= lt!13740 e!36852)))

(declare-fun c!15775 () Bool)

(assert (=> d!53542 (= c!15775 (or lt!13738 (not (is-Literal!38 (rhs!922 f!3683)))))))

(assert (=> d!53542 (= lt!13738 (is-And!44 (rhs!922 f!3683)))))

(assert (=> d!53542 (isSimplified!1 (rhs!922 f!3683))))

(assert (=> d!53542 (= (simplifyIsStable!1 (rhs!922 f!3683)) true)))

(declare-fun b!68081 () Bool)

(assert (=> b!68081 (= e!36852 (simplifyIsStable!1 (ite lt!13738 (rhs!920 (rhs!922 f!3683)) (ite (is-Implies!44 (rhs!922 f!3683)) (rhs!921 (rhs!922 f!3683)) (ite (is-Or!44 (rhs!922 f!3683)) (rhs!922 (rhs!922 f!3683)) (f!4173 (rhs!922 f!3683)))))))))

(declare-fun b!68082 () Bool)

(declare-fun res!32790 () Formula!39)

(assert (=> b!68082 (= e!36851 res!32790)))

(assert (=> b!68082 true))

(declare-fun b!68083 () Bool)

(declare-fun e!36856 () Bool)

(assert (=> b!68083 (= e!36855 e!36856)))

(declare-fun c!15778 () Bool)

(declare-fun lt!13739 () Bool)

(assert (=> b!68083 (= c!15778 (or lt!13739 (is-Or!44 (rhs!922 f!3683))))))

(declare-fun lt!13741 () Formula!39)

(declare-fun e!36854 () Formula!39)

(assert (=> b!68083 (= lt!13741 e!36854)))

(declare-fun c!15776 () Bool)

(assert (=> b!68083 (= c!15776 (or lt!13739 (is-Or!44 (rhs!922 f!3683))))))

(assert (=> b!68083 (= lt!13739 (is-Implies!44 (rhs!922 f!3683)))))

(declare-fun b!68084 () Bool)

(assert (=> b!68084 (= e!36853 (simplifyIsStable!1 (ite lt!13738 (lhs!920 (rhs!922 f!3683)) (ite (is-Implies!44 (rhs!922 f!3683)) (lhs!921 (rhs!922 f!3683)) (lhs!922 (rhs!922 f!3683))))))))

(declare-fun b!68085 () Bool)

(declare-fun simplify!1 (Formula!39) Formula!39)

(assert (=> b!68085 (= e!36854 (simplify!1 (rhs!922 f!3683)))))

(declare-fun b!68086 () Bool)

(declare-fun res!32787 () Bool)

(assert (=> b!68086 (= e!36853 res!32787)))

(assert (=> b!68086 true))

(declare-fun b!68087 () Bool)

(assert (=> b!68087 (= e!36856 (= lt!13741 (rhs!922 f!3683)))))

(declare-fun b!68088 () Bool)

(declare-fun res!32789 () Bool)

(assert (=> b!68088 (= e!36852 res!32789)))

(assert (=> b!68088 true))

(declare-fun b!68089 () Bool)

(declare-fun res!32788 () Formula!39)

(assert (=> b!68089 (= e!36854 res!32788)))

(assert (=> b!68089 true))

(assert (=> b!68089 true))

(declare-fun b!68090 () Bool)

(assert (=> b!68090 (= e!36855 (= lt!13742 (rhs!922 f!3683)))))

(declare-fun b!68091 () Bool)

(assert (=> b!68091 (= e!36851 (simplify!1 (rhs!922 f!3683)))))

(declare-fun b!68092 () Bool)

(assert (=> b!68092 (= e!36856 (= (simplify!1 (rhs!922 f!3683)) (rhs!922 f!3683)))))

(assert (= (and d!53542 c!15775) b!68081))

(assert (= (and d!53542 (not c!15775)) b!68088))

(assert (= (and d!53542 c!15773) b!68084))

(assert (= (and d!53542 (not c!15773)) b!68086))

(assert (= (and d!53542 c!15777) b!68091))

(assert (= (and d!53542 (not c!15777)) b!68082))

(assert (= (and b!68083 c!15776) b!68085))

(assert (= (and b!68083 (not c!15776)) b!68089))

(assert (= (and b!68083 c!15778) b!68087))

(assert (= (and b!68083 (not c!15778)) b!68092))

(assert (= (and d!53542 c!15774) b!68090))

(assert (= (and d!53542 (not c!15774)) b!68083))

(declare-fun m!70161 () Bool)

(assert (=> b!68084 m!70161))

(declare-fun m!70163 () Bool)

(assert (=> b!68092 m!70163))

(declare-fun m!70165 () Bool)

(assert (=> b!68081 m!70165))

(declare-fun m!70167 () Bool)

(assert (=> d!53542 m!70167))

(assert (=> b!68085 m!70163))

(assert (=> b!68091 m!70163))

(assert (=> b!68054 d!53542))

(declare-fun b!68119 () Bool)

(declare-fun e!36880 () Bool)

(declare-fun res!32821 () Bool)

(assert (=> b!68119 (= e!36880 res!32821)))

(assert (=> b!68119 true))

(declare-fun b!68120 () Bool)

(declare-fun e!36879 () Bool)

(declare-fun lt!13759 () Bool)

(assert (=> b!68120 (= e!36879 (isSimplified!1 (ite lt!13759 (rhs!920 f!3712) (rhs!922 f!3712))))))

(declare-fun lt!13761 () Bool)

(declare-fun b!68121 () Bool)

(declare-fun lt!13762 () Bool)

(declare-fun e!36873 () Bool)

(declare-fun lt!13760 () Bool)

(assert (=> b!68121 (= e!36873 (ite lt!13761 (and lt!13760 lt!13762) (and (not (is-Implies!44 f!3712)) (or (not (is-Not!44 f!3712)) lt!13760))))))

(declare-fun e!36877 () Bool)

(assert (=> b!68121 (= lt!13760 e!36877)))

(declare-fun c!15790 () Bool)

(assert (=> b!68121 (= c!15790 (or lt!13761 (and (not (is-Implies!44 f!3712)) (is-Not!44 f!3712))))))

(assert (=> b!68121 (= lt!13761 (is-Or!44 f!3712))))

(declare-fun b!68122 () Bool)

(declare-fun e!36876 () Bool)

(declare-fun res!32818 () Bool)

(assert (=> b!68122 (= e!36876 res!32818)))

(assert (=> b!68122 true))

(declare-fun b!68123 () Bool)

(declare-fun lt!13763 () Bool)

(assert (=> b!68123 (= e!36880 lt!13763)))

(declare-fun b!68124 () Bool)

(declare-fun res!32820 () Bool)

(assert (=> b!68124 (= e!36877 res!32820)))

(assert (=> b!68124 true))

(assert (=> b!68124 true))

(declare-fun b!68125 () Bool)

(declare-fun lt!13764 () Bool)

(assert (=> b!68125 (= e!36876 (isSimplified!1 (ite lt!13764 (lhs!920 f!3712) (ite (is-Or!44 f!3712) (lhs!922 f!3712) (f!4173 f!3712)))))))

(declare-fun b!68126 () Bool)

(assert (=> b!68126 (= e!36877 lt!13763)))

(declare-fun b!68127 () Bool)

(declare-fun e!36874 () Bool)

(assert (=> b!68127 (= e!36874 e!36880)))

(declare-fun c!15793 () Bool)

(declare-fun lt!13758 () Bool)

(assert (=> b!68127 (= c!15793 (or lt!13758 (and (not (is-Implies!44 f!3712)) (is-Not!44 f!3712))))))

(declare-fun b!68128 () Bool)

(assert (=> b!68128 (= e!36873 (and lt!13763 lt!13762))))

(declare-fun b!68129 () Bool)

(declare-fun e!36875 () Bool)

(assert (=> b!68129 (= e!36875 e!36874)))

(declare-fun res!32822 () Bool)

(assert (=> b!68129 (=> (not res!32822) (not e!36874))))

(assert (=> b!68129 (= res!32822 lt!13758)))

(assert (=> b!68129 (= lt!13758 (is-Or!44 f!3712))))

(declare-fun b!68130 () Bool)

(declare-fun e!36878 () Bool)

(assert (=> b!68130 (= e!36878 e!36875)))

(declare-fun res!32816 () Bool)

(assert (=> b!68130 (=> (not res!32816) (not e!36875))))

(assert (=> b!68130 (= res!32816 (not lt!13764))))

(declare-fun d!53544 () Bool)

(declare-fun c!15791 () Bool)

(assert (=> d!53544 (= c!15791 lt!13764)))

(assert (=> d!53544 (= lt!13762 e!36879)))

(declare-fun c!15792 () Bool)

(assert (=> d!53544 (= c!15792 e!36878)))

(declare-fun res!32817 () Bool)

(assert (=> d!53544 (=> res!32817 e!36878)))

(assert (=> d!53544 (= res!32817 lt!13759)))

(assert (=> d!53544 (= lt!13759 (and lt!13764 lt!13763))))

(assert (=> d!53544 (= lt!13763 e!36876)))

(declare-fun c!15789 () Bool)

(assert (=> d!53544 (= c!15789 (or lt!13764 (is-Or!44 f!3712) (and (not (is-Implies!44 f!3712)) (is-Not!44 f!3712))))))

(assert (=> d!53544 (= lt!13764 (is-And!44 f!3712))))

(assert (=> d!53544 (= (isSimplified!1 f!3712) e!36873)))

(declare-fun b!68131 () Bool)

(declare-fun res!32819 () Bool)

(assert (=> b!68131 (= e!36879 res!32819)))

(assert (=> b!68131 true))

(assert (= (and d!53544 c!15789) b!68125))

(assert (= (and d!53544 (not c!15789)) b!68122))

(assert (= (and d!53544 (not res!32817)) b!68130))

(assert (= (and b!68130 res!32816) b!68129))

(assert (= (and b!68129 res!32822) b!68127))

(assert (= (and b!68127 c!15793) b!68123))

(assert (= (and b!68127 (not c!15793)) b!68119))

(assert (= (and d!53544 c!15792) b!68120))

(assert (= (and d!53544 (not c!15792)) b!68131))

(assert (= (and b!68121 c!15790) b!68126))

(assert (= (and b!68121 (not c!15790)) b!68124))

(assert (= (and d!53544 c!15791) b!68128))

(assert (= (and d!53544 (not c!15791)) b!68121))

(declare-fun m!70169 () Bool)

(assert (=> b!68120 m!70169))

(declare-fun m!70171 () Bool)

(assert (=> b!68125 m!70171))

(assert (=> b!68056 d!53544))

(declare-fun b!68132 () Bool)

(declare-fun e!36888 () Bool)

(declare-fun res!32828 () Bool)

(assert (=> b!68132 (= e!36888 res!32828)))

(assert (=> b!68132 true))

(declare-fun b!68133 () Bool)

(declare-fun e!36887 () Bool)

(declare-fun lt!13766 () Bool)

(assert (=> b!68133 (= e!36887 (isSimplified!1 (ite lt!13766 (rhs!920 f!3683) (rhs!922 f!3683))))))

(declare-fun b!68134 () Bool)

(declare-fun e!36881 () Bool)

(declare-fun lt!13768 () Bool)

(declare-fun lt!13767 () Bool)

(declare-fun lt!13769 () Bool)

(assert (=> b!68134 (= e!36881 (ite lt!13768 (and lt!13767 lt!13769) (and (not (is-Implies!44 f!3683)) (or (not (is-Not!44 f!3683)) lt!13767))))))

(declare-fun e!36885 () Bool)

(assert (=> b!68134 (= lt!13767 e!36885)))

(declare-fun c!15795 () Bool)

(assert (=> b!68134 (= c!15795 (or lt!13768 (and (not (is-Implies!44 f!3683)) (is-Not!44 f!3683))))))

(assert (=> b!68134 (= lt!13768 (is-Or!44 f!3683))))

(declare-fun b!68135 () Bool)

(declare-fun e!36884 () Bool)

(declare-fun res!32825 () Bool)

(assert (=> b!68135 (= e!36884 res!32825)))

(assert (=> b!68135 true))

(declare-fun b!68136 () Bool)

(declare-fun lt!13770 () Bool)

(assert (=> b!68136 (= e!36888 lt!13770)))

(declare-fun b!68137 () Bool)

(declare-fun res!32827 () Bool)

(assert (=> b!68137 (= e!36885 res!32827)))

(assert (=> b!68137 true))

(assert (=> b!68137 true))

(declare-fun b!68138 () Bool)

(declare-fun lt!13771 () Bool)

(assert (=> b!68138 (= e!36884 (isSimplified!1 (ite lt!13771 (lhs!920 f!3683) (ite (is-Or!44 f!3683) (lhs!922 f!3683) (f!4173 f!3683)))))))

(declare-fun b!68139 () Bool)

(assert (=> b!68139 (= e!36885 lt!13770)))

(declare-fun b!68140 () Bool)

(declare-fun e!36882 () Bool)

(assert (=> b!68140 (= e!36882 e!36888)))

(declare-fun c!15798 () Bool)

(declare-fun lt!13765 () Bool)

(assert (=> b!68140 (= c!15798 (or lt!13765 (and (not (is-Implies!44 f!3683)) (is-Not!44 f!3683))))))

(declare-fun b!68141 () Bool)

(assert (=> b!68141 (= e!36881 (and lt!13770 lt!13769))))

(declare-fun b!68142 () Bool)

(declare-fun e!36883 () Bool)

(assert (=> b!68142 (= e!36883 e!36882)))

(declare-fun res!32829 () Bool)

(assert (=> b!68142 (=> (not res!32829) (not e!36882))))

(assert (=> b!68142 (= res!32829 lt!13765)))

(assert (=> b!68142 (= lt!13765 (is-Or!44 f!3683))))

(declare-fun b!68143 () Bool)

(declare-fun e!36886 () Bool)

(assert (=> b!68143 (= e!36886 e!36883)))

(declare-fun res!32823 () Bool)

(assert (=> b!68143 (=> (not res!32823) (not e!36883))))

(assert (=> b!68143 (= res!32823 (not lt!13771))))

(declare-fun d!53546 () Bool)

(declare-fun c!15796 () Bool)

(assert (=> d!53546 (= c!15796 lt!13771)))

(assert (=> d!53546 (= lt!13769 e!36887)))

(declare-fun c!15797 () Bool)

(assert (=> d!53546 (= c!15797 e!36886)))

(declare-fun res!32824 () Bool)

(assert (=> d!53546 (=> res!32824 e!36886)))

(assert (=> d!53546 (= res!32824 lt!13766)))

(assert (=> d!53546 (= lt!13766 (and lt!13771 lt!13770))))

(assert (=> d!53546 (= lt!13770 e!36884)))

(declare-fun c!15794 () Bool)

(assert (=> d!53546 (= c!15794 (or lt!13771 (is-Or!44 f!3683) (and (not (is-Implies!44 f!3683)) (is-Not!44 f!3683))))))

(assert (=> d!53546 (= lt!13771 (is-And!44 f!3683))))

(assert (=> d!53546 (= (isSimplified!1 f!3683) e!36881)))

(declare-fun b!68144 () Bool)

(declare-fun res!32826 () Bool)

(assert (=> b!68144 (= e!36887 res!32826)))

(assert (=> b!68144 true))

(assert (= (and d!53546 c!15794) b!68138))

(assert (= (and d!53546 (not c!15794)) b!68135))

(assert (= (and d!53546 (not res!32824)) b!68143))

(assert (= (and b!68143 res!32823) b!68142))

(assert (= (and b!68142 res!32829) b!68140))

(assert (= (and b!68140 c!15798) b!68136))

(assert (= (and b!68140 (not c!15798)) b!68132))

(assert (= (and d!53546 c!15797) b!68133))

(assert (= (and d!53546 (not c!15797)) b!68144))

(assert (= (and b!68134 c!15795) b!68139))

(assert (= (and b!68134 (not c!15795)) b!68137))

(assert (= (and d!53546 c!15796) b!68141))

(assert (= (and d!53546 (not c!15796)) b!68134))

(declare-fun m!70173 () Bool)

(assert (=> b!68133 m!70173))

(declare-fun m!70175 () Bool)

(assert (=> b!68138 m!70175))

(assert (=> start!9398 d!53546))

(push 1)

(assert (not b!68138))

(assert (not b!68092))

(assert (not b!68091))

(assert (not b!68081))

(assert (not b!68084))

(assert (not b!68133))

(assert (not b!68085))

(assert (not d!53542))

(assert (not b!68120))

(assert (not b!68125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

