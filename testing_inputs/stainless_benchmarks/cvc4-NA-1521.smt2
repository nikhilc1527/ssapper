; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10314 () Bool)

(assert start!10314)

(declare-fun res!37952 () Bool)

(declare-fun e!41120 () Bool)

(assert (=> start!10314 (=> (not res!37952) (not e!41120))))

(declare-datatypes () ((Formula!90 (Implies!94 (lhs!1383 Formula!90) (rhs!1383 Formula!90)) (And!94 (lhs!1384 Formula!90) (rhs!1384 Formula!90)) (Or!94 (lhs!1385 Formula!90) (rhs!1385 Formula!90)) (Literal!88 (id!4951 (_ BitVec 32))) (Not!94 (f!4719 Formula!90)))))

(declare-fun f!4460 () Formula!90)

(declare-fun isSimplified!0 (Formula!90) Bool)

(assert (=> start!10314 (= res!37952 (isSimplified!0 f!4460))))

(assert (=> start!10314 e!41120))

(assert (=> start!10314 true))

(declare-fun b!76113 () Bool)

(declare-fun res!37953 () Bool)

(assert (=> b!76113 (=> (not res!37953) (not e!41120))))

(assert (=> b!76113 (= res!37953 (and (not (is-Implies!94 f!4460)) (not (is-And!94 f!4460)) (not (is-Or!94 f!4460)) (not (is-Literal!88 f!4460))))))

(declare-fun b!76114 () Bool)

(declare-fun res!37954 () Bool)

(assert (=> b!76114 (=> (not res!37954) (not e!41120))))

(declare-fun inductVal!729 () Bool)

(declare-fun simplifyIsStable!0 (Formula!90) Bool)

(assert (=> b!76114 (= res!37954 (= inductVal!729 (simplifyIsStable!0 (f!4719 f!4460))))))

(declare-fun b!76115 () Bool)

(declare-fun simplify!0 (Formula!90) Formula!90)

(assert (=> b!76115 (= e!41120 (not (= (simplify!0 f!4460) f!4460)))))

(assert (= (and start!10314 res!37952) b!76113))

(assert (= (and b!76113 res!37953) b!76114))

(assert (= (and b!76114 res!37954) b!76115))

(declare-fun m!73254 () Bool)

(assert (=> start!10314 m!73254))

(declare-fun m!73256 () Bool)

(assert (=> b!76114 m!73256))

(declare-fun m!73258 () Bool)

(assert (=> b!76115 m!73258))

(push 1)

(assert (not b!76114))

(assert (not start!10314))

(assert (not b!76115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76140 () Bool)

(declare-fun e!41133 () Bool)

(declare-fun e!41136 () Bool)

(assert (=> b!76140 (= e!41133 e!41136)))

(declare-fun c!18841 () Bool)

(declare-fun lt!16789 () Bool)

(assert (=> b!76140 (= c!18841 (or lt!16789 (is-Or!94 (f!4719 f!4460))))))

(assert (=> b!76140 (= lt!16789 (is-And!94 (f!4719 f!4460)))))

(declare-fun d!54887 () Bool)

(assert (=> d!54887 e!41133))

(declare-fun c!18837 () Bool)

(declare-fun lt!16790 () Bool)

(assert (=> d!54887 (= c!18837 lt!16790)))

(declare-fun lt!16788 () Formula!90)

(declare-fun e!41137 () Formula!90)

(assert (=> d!54887 (= lt!16788 e!41137)))

(declare-fun c!18838 () Bool)

(assert (=> d!54887 (= c!18838 (or lt!16790 (is-And!94 (f!4719 f!4460)) (is-Or!94 (f!4719 f!4460))))))

(declare-fun lt!16791 () Bool)

(declare-fun e!41134 () Bool)

(assert (=> d!54887 (= lt!16791 e!41134)))

(declare-fun c!18840 () Bool)

(assert (=> d!54887 (= c!18840 (or lt!16790 (is-And!94 (f!4719 f!4460)) (is-Or!94 (f!4719 f!4460))))))

(declare-fun lt!16792 () Bool)

(declare-fun e!41138 () Bool)

(assert (=> d!54887 (= lt!16792 e!41138)))

(declare-fun c!18839 () Bool)

(assert (=> d!54887 (= c!18839 (or lt!16790 (is-And!94 (f!4719 f!4460)) (is-Or!94 (f!4719 f!4460)) (not (is-Literal!88 (f!4719 f!4460)))))))

(assert (=> d!54887 (= lt!16790 (is-Implies!94 (f!4719 f!4460)))))

(assert (=> d!54887 (isSimplified!0 (f!4719 f!4460))))

(assert (=> d!54887 (= (simplifyIsStable!0 (f!4719 f!4460)) true)))

(declare-fun b!76141 () Bool)

(assert (=> b!76141 (= e!41138 (simplifyIsStable!0 (ite lt!16790 (rhs!1383 (f!4719 f!4460)) (ite (is-And!94 (f!4719 f!4460)) (rhs!1384 (f!4719 f!4460)) (ite (is-Or!94 (f!4719 f!4460)) (rhs!1385 (f!4719 f!4460)) (f!4719 (f!4719 f!4460)))))))))

(declare-fun b!76142 () Bool)

(declare-fun res!37984 () Formula!90)

(assert (=> b!76142 (= e!41137 res!37984)))

(assert (=> b!76142 true))

(declare-fun b!76143 () Bool)

(assert (=> b!76143 (= e!41134 (simplifyIsStable!0 (ite lt!16790 (lhs!1383 (f!4719 f!4460)) (ite (is-And!94 (f!4719 f!4460)) (lhs!1384 (f!4719 f!4460)) (lhs!1385 (f!4719 f!4460))))))))

(declare-fun b!76144 () Bool)

(declare-fun e!41135 () Formula!90)

(declare-fun res!37985 () Formula!90)

(assert (=> b!76144 (= e!41135 res!37985)))

(assert (=> b!76144 true))

(assert (=> b!76144 true))

(declare-fun b!76145 () Bool)

(declare-fun res!37987 () Bool)

(assert (=> b!76145 (= e!41138 res!37987)))

(assert (=> b!76145 true))

(declare-fun b!76146 () Bool)

(assert (=> b!76146 (= e!41133 (= lt!16788 (f!4719 f!4460)))))

(declare-fun b!76147 () Bool)

(assert (=> b!76147 (= e!41135 lt!16788)))

(declare-fun b!76148 () Bool)

(assert (=> b!76148 (= e!41136 (= e!41135 (f!4719 f!4460)))))

(declare-fun c!18836 () Bool)

(assert (=> b!76148 (= c!18836 (or lt!16789 (is-Or!94 (f!4719 f!4460))))))

(declare-fun b!76149 () Bool)

(assert (=> b!76149 (= e!41137 (simplify!0 (f!4719 f!4460)))))

(declare-fun b!76150 () Bool)

(assert (=> b!76150 (= e!41136 (= (simplify!0 (f!4719 f!4460)) (f!4719 f!4460)))))

(declare-fun b!76151 () Bool)

(declare-fun res!37986 () Bool)

(assert (=> b!76151 (= e!41134 res!37986)))

(assert (=> b!76151 true))

(assert (= (and d!54887 c!18839) b!76141))

(assert (= (and d!54887 (not c!18839)) b!76145))

(assert (= (and d!54887 c!18840) b!76143))

(assert (= (and d!54887 (not c!18840)) b!76151))

(assert (= (and d!54887 c!18838) b!76149))

(assert (= (and d!54887 (not c!18838)) b!76142))

(assert (= (and b!76148 c!18836) b!76147))

(assert (= (and b!76148 (not c!18836)) b!76144))

(assert (= (and b!76140 c!18841) b!76148))

(assert (= (and b!76140 (not c!18841)) b!76150))

(assert (= (and d!54887 c!18837) b!76146))

(assert (= (and d!54887 (not c!18837)) b!76140))

(declare-fun m!73260 () Bool)

(assert (=> b!76150 m!73260))

(declare-fun m!73262 () Bool)

(assert (=> d!54887 m!73262))

(assert (=> b!76149 m!73260))

(declare-fun m!73264 () Bool)

(assert (=> b!76141 m!73264))

(declare-fun m!73266 () Bool)

(assert (=> b!76143 m!73266))

(assert (=> b!76114 d!54887))

(declare-fun lt!16810 () Bool)

(declare-fun lt!16813 () Bool)

(declare-fun lt!16811 () Bool)

(declare-fun e!41160 () Bool)

(declare-fun b!76178 () Bool)

(assert (=> b!76178 (= e!41160 (ite lt!16810 (and lt!16813 lt!16811) (and (not (is-Implies!94 f!4460)) (or (not (is-Not!94 f!4460)) lt!16813))))))

(declare-fun e!41161 () Bool)

(assert (=> b!76178 (= lt!16813 e!41161)))

(declare-fun c!18854 () Bool)

(assert (=> b!76178 (= c!18854 (or lt!16810 (and (not (is-Implies!94 f!4460)) (is-Not!94 f!4460))))))

(assert (=> b!76178 (= lt!16810 (is-Or!94 f!4460))))

(declare-fun b!76179 () Bool)

(declare-fun e!41157 () Bool)

(declare-fun e!41158 () Bool)

(assert (=> b!76179 (= e!41157 e!41158)))

(declare-fun res!38019 () Bool)

(assert (=> b!76179 (=> (not res!38019) (not e!41158))))

(declare-fun lt!16809 () Bool)

(assert (=> b!76179 (= res!38019 (not lt!16809))))

(declare-fun b!76180 () Bool)

(declare-fun e!41156 () Bool)

(declare-fun res!38015 () Bool)

(assert (=> b!76180 (= e!41156 res!38015)))

(assert (=> b!76180 true))

(declare-fun b!76181 () Bool)

(declare-fun res!38013 () Bool)

(assert (=> b!76181 (= e!41161 res!38013)))

(assert (=> b!76181 true))

(assert (=> b!76181 true))

(declare-fun b!76182 () Bool)

(declare-fun e!41155 () Bool)

(declare-fun lt!16808 () Bool)

(assert (=> b!76182 (= e!41155 (isSimplified!0 (ite lt!16808 (rhs!1384 f!4460) (rhs!1385 f!4460))))))

(declare-fun b!76183 () Bool)

(declare-fun lt!16812 () Bool)

(assert (=> b!76183 (= e!41156 lt!16812)))

(declare-fun b!76184 () Bool)

(assert (=> b!76184 (= e!41160 (and lt!16812 lt!16811))))

(declare-fun b!76185 () Bool)

(declare-fun e!41162 () Bool)

(assert (=> b!76185 (= e!41162 (isSimplified!0 (ite lt!16809 (lhs!1384 f!4460) (ite (is-Or!94 f!4460) (lhs!1385 f!4460) (f!4719 f!4460)))))))

(declare-fun b!76186 () Bool)

(declare-fun e!41159 () Bool)

(assert (=> b!76186 (= e!41158 e!41159)))

(declare-fun res!38018 () Bool)

(assert (=> b!76186 (=> (not res!38018) (not e!41159))))

(declare-fun lt!16807 () Bool)

(assert (=> b!76186 (= res!38018 lt!16807)))

(assert (=> b!76186 (= lt!16807 (is-Or!94 f!4460))))

(declare-fun b!76187 () Bool)

(declare-fun res!38014 () Bool)

(assert (=> b!76187 (= e!41155 res!38014)))

(assert (=> b!76187 true))

(declare-fun d!54889 () Bool)

(declare-fun c!18856 () Bool)

(assert (=> d!54889 (= c!18856 lt!16809)))

(assert (=> d!54889 (= lt!16811 e!41155)))

(declare-fun c!18855 () Bool)

(assert (=> d!54889 (= c!18855 e!41157)))

(declare-fun res!38016 () Bool)

(assert (=> d!54889 (=> res!38016 e!41157)))

(assert (=> d!54889 (= res!38016 lt!16808)))

(assert (=> d!54889 (= lt!16808 (and lt!16809 lt!16812))))

(assert (=> d!54889 (= lt!16812 e!41162)))

(declare-fun c!18853 () Bool)

(assert (=> d!54889 (= c!18853 (or lt!16809 (is-Or!94 f!4460) (and (not (is-Implies!94 f!4460)) (is-Not!94 f!4460))))))

(assert (=> d!54889 (= lt!16809 (is-And!94 f!4460))))

(assert (=> d!54889 (= (isSimplified!0 f!4460) e!41160)))

(declare-fun b!76188 () Bool)

(assert (=> b!76188 (= e!41161 lt!16812)))

(declare-fun b!76189 () Bool)

(assert (=> b!76189 (= e!41159 e!41156)))

(declare-fun c!18852 () Bool)

(assert (=> b!76189 (= c!18852 (or lt!16807 (and (not (is-Implies!94 f!4460)) (is-Not!94 f!4460))))))

(declare-fun b!76190 () Bool)

(declare-fun res!38017 () Bool)

(assert (=> b!76190 (= e!41162 res!38017)))

(assert (=> b!76190 true))

(assert (= (and d!54889 c!18853) b!76185))

(assert (= (and d!54889 (not c!18853)) b!76190))

(assert (= (and d!54889 (not res!38016)) b!76179))

(assert (= (and b!76179 res!38019) b!76186))

(assert (= (and b!76186 res!38018) b!76189))

(assert (= (and b!76189 c!18852) b!76183))

(assert (= (and b!76189 (not c!18852)) b!76180))

(assert (= (and d!54889 c!18855) b!76182))

(assert (= (and d!54889 (not c!18855)) b!76187))

(assert (= (and b!76178 c!18854) b!76188))

(assert (= (and b!76178 (not c!18854)) b!76181))

(assert (= (and d!54889 c!18856) b!76184))

(assert (= (and d!54889 (not c!18856)) b!76178))

(declare-fun m!73268 () Bool)

(assert (=> b!76182 m!73268))

(declare-fun m!73270 () Bool)

(assert (=> b!76185 m!73270))

(assert (=> start!10314 d!54889))

(declare-fun b!76219 () Bool)

(declare-fun e!41179 () Formula!90)

(declare-fun lt!16838 () Bool)

(assert (=> b!76219 (= e!41179 (simplify!0 (ite lt!16838 (rhs!1384 f!4460) (ite (is-Or!94 f!4460) (rhs!1385 f!4460) (rhs!1383 f!4460)))))))

(declare-fun b!76220 () Bool)

(declare-fun e!41180 () Formula!90)

(declare-fun lt!16837 () Formula!90)

(assert (=> b!76220 (= e!41180 lt!16837)))

(declare-fun b!76221 () Bool)

(declare-fun e!41183 () Formula!90)

(declare-fun e!41178 () Formula!90)

(assert (=> b!76221 (= e!41183 e!41178)))

(declare-fun c!18877 () Bool)

(declare-fun lt!16834 () Bool)

(assert (=> b!76221 (= c!18877 lt!16834)))

(declare-fun lt!16833 () Formula!90)

(declare-fun e!41181 () Formula!90)

(assert (=> b!76221 (= lt!16833 e!41181)))

(declare-fun c!18873 () Bool)

(assert (=> b!76221 (= c!18873 (or lt!16834 (is-Implies!94 f!4460)))))

(declare-fun lt!16832 () Formula!90)

(assert (=> b!76221 (= lt!16832 e!41180)))

(declare-fun c!18871 () Bool)

(assert (=> b!76221 (= c!18871 (or lt!16834 (is-Implies!94 f!4460) (is-Not!94 f!4460)))))

(assert (=> b!76221 (= lt!16834 (is-Or!94 f!4460))))

(declare-fun b!76222 () Bool)

(declare-fun e!41177 () Formula!90)

(declare-fun res!38047 () Formula!90)

(assert (=> b!76222 (= e!41177 res!38047)))

(assert (=> b!76222 true))

(declare-fun b!76223 () Bool)

(declare-fun lt!16835 () Formula!90)

(assert (=> b!76223 (= e!41181 lt!16835)))

(declare-fun b!76224 () Bool)

(assert (=> b!76224 (= e!41183 (And!94 lt!16837 lt!16835))))

(declare-fun b!76225 () Bool)

(declare-fun res!38046 () Formula!90)

(assert (=> b!76225 (= e!41179 res!38046)))

(assert (=> b!76225 true))

(declare-fun b!76226 () Bool)

(assert (=> b!76226 (= e!41177 (simplify!0 (ite lt!16838 (lhs!1384 f!4460) (ite (is-Or!94 f!4460) (lhs!1385 f!4460) (ite (is-Implies!94 f!4460) (lhs!1383 f!4460) (f!4719 f!4460))))))))

(declare-fun b!76227 () Bool)

(declare-fun e!41182 () Formula!90)

(assert (=> b!76227 (= e!41182 lt!16832)))

(declare-fun d!54891 () Bool)

(declare-fun lt!16840 () Formula!90)

(assert (=> d!54891 (isSimplified!0 lt!16840)))

(assert (=> d!54891 (= lt!16840 e!41183)))

(declare-fun c!18875 () Bool)

(assert (=> d!54891 (= c!18875 lt!16838)))

(assert (=> d!54891 (= lt!16835 e!41179)))

(declare-fun c!18876 () Bool)

(assert (=> d!54891 (= c!18876 (or lt!16838 (is-Or!94 f!4460) (is-Implies!94 f!4460)))))

(assert (=> d!54891 (= lt!16837 e!41177)))

(declare-fun c!18874 () Bool)

(assert (=> d!54891 (= c!18874 (or lt!16838 (is-Or!94 f!4460) (is-Implies!94 f!4460) (is-Not!94 f!4460)))))

(assert (=> d!54891 (= lt!16838 (is-And!94 f!4460))))

(assert (=> d!54891 (= (simplify!0 f!4460) lt!16840)))

(declare-fun b!76228 () Bool)

(declare-fun res!38049 () Formula!90)

(assert (=> b!76228 (= e!41180 res!38049)))

(assert (=> b!76228 true))

(declare-fun b!76229 () Bool)

(declare-fun res!38045 () Formula!90)

(assert (=> b!76229 (= e!41182 res!38045)))

(assert (=> b!76229 true))

(assert (=> b!76229 true))

(declare-fun b!76230 () Bool)

(declare-fun lt!16839 () Bool)

(declare-fun lt!16836 () Formula!90)

(assert (=> b!76230 (= e!41178 (ite lt!16839 (Or!94 (Not!94 lt!16836) lt!16833) (ite (is-Not!94 f!4460) (Not!94 lt!16836) f!4460)))))

(assert (=> b!76230 (= lt!16836 e!41182)))

(declare-fun c!18872 () Bool)

(assert (=> b!76230 (= c!18872 (or lt!16839 (is-Not!94 f!4460)))))

(assert (=> b!76230 (= lt!16839 (is-Implies!94 f!4460))))

(declare-fun b!76231 () Bool)

(declare-fun res!38048 () Formula!90)

(assert (=> b!76231 (= e!41181 res!38048)))

(assert (=> b!76231 true))

(declare-fun b!76232 () Bool)

(assert (=> b!76232 (= e!41178 (Or!94 lt!16832 lt!16833))))

(assert (= (and d!54891 c!18874) b!76226))

(assert (= (and d!54891 (not c!18874)) b!76222))

(assert (= (and d!54891 c!18876) b!76219))

(assert (= (and d!54891 (not c!18876)) b!76225))

(assert (= (and b!76221 c!18871) b!76220))

(assert (= (and b!76221 (not c!18871)) b!76228))

(assert (= (and b!76221 c!18873) b!76223))

(assert (= (and b!76221 (not c!18873)) b!76231))

(assert (= (and b!76230 c!18872) b!76227))

(assert (= (and b!76230 (not c!18872)) b!76229))

(assert (= (and b!76221 c!18877) b!76232))

(assert (= (and b!76221 (not c!18877)) b!76230))

(assert (= (and d!54891 c!18875) b!76224))

(assert (= (and d!54891 (not c!18875)) b!76221))

(declare-fun m!73272 () Bool)

(assert (=> b!76219 m!73272))

(declare-fun m!73274 () Bool)

(assert (=> b!76226 m!73274))

(declare-fun m!73276 () Bool)

(assert (=> d!54891 m!73276))

(assert (=> b!76115 d!54891))

(push 1)

(assert (not d!54887))

(assert (not b!76182))

(assert (not b!76150))

(assert (not b!76226))

(assert (not b!76143))

(assert (not d!54891))

(assert (not b!76149))

(assert (not b!76185))

(assert (not b!76219))

(assert (not b!76141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

