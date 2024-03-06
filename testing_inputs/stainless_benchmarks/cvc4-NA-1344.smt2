; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9438 () Bool)

(assert start!9438)

(declare-fun res!33282 () Bool)

(declare-fun e!37190 () Bool)

(assert (=> start!9438 (=> (not res!33282) (not e!37190))))

(declare-datatypes () ((Formula!45 (And!50 (lhs!938 Formula!45) (rhs!938 Formula!45)) (Literal!44 (id!4825 Int)) (Implies!50 (lhs!939 Formula!45) (rhs!939 Formula!45)) (Or!50 (lhs!940 Formula!45) (rhs!940 Formula!45)) (Not!50 (f!4193 Formula!45)))))

(declare-fun f!3683 () Formula!45)

(declare-fun isSimplified!1 (Formula!45) Bool)

(assert (=> start!9438 (= res!33282 (isSimplified!1 f!3683))))

(assert (=> start!9438 e!37190))

(assert (=> start!9438 true))

(declare-fun b!68719 () Bool)

(declare-fun res!33283 () Bool)

(assert (=> b!68719 (=> (not res!33283) (not e!37190))))

(assert (=> b!68719 (= res!33283 (and (not (is-And!50 f!3683)) (not (is-Literal!44 f!3683)) (not (is-Implies!50 f!3683)) (not (is-Or!50 f!3683))))))

(declare-fun b!68720 () Bool)

(declare-fun res!33284 () Bool)

(assert (=> b!68720 (=> (not res!33284) (not e!37190))))

(declare-fun inductVal!244 () Bool)

(declare-fun simplifyIsStable!1 (Formula!45) Bool)

(assert (=> b!68720 (= res!33284 (= inductVal!244 (simplifyIsStable!1 (f!4193 f!3683))))))

(declare-fun b!68721 () Bool)

(declare-fun simplify!1 (Formula!45) Formula!45)

(assert (=> b!68721 (= e!37190 (not (= (simplify!1 f!3683) f!3683)))))

(assert (= (and start!9438 res!33282) b!68719))

(assert (= (and b!68719 res!33283) b!68720))

(assert (= (and b!68720 res!33284) b!68721))

(declare-fun m!70305 () Bool)

(assert (=> start!9438 m!70305))

(declare-fun m!70307 () Bool)

(assert (=> b!68720 m!70307))

(declare-fun m!70309 () Bool)

(assert (=> b!68721 m!70309))

(push 1)

(assert (not b!68720))

(assert (not start!9438))

(assert (not b!68721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68746 () Bool)

(declare-fun e!37205 () Bool)

(declare-fun lt!14076 () Bool)

(assert (=> b!68746 (= e!37205 (simplifyIsStable!1 (ite lt!14076 (rhs!938 (f!4193 f!3683)) (ite (is-Implies!50 (f!4193 f!3683)) (rhs!939 (f!4193 f!3683)) (ite (is-Or!50 (f!4193 f!3683)) (rhs!940 (f!4193 f!3683)) (f!4193 (f!4193 f!3683)))))))))

(declare-fun b!68747 () Bool)

(declare-fun res!33317 () Bool)

(assert (=> b!68747 (= e!37205 res!33317)))

(assert (=> b!68747 true))

(declare-fun b!68748 () Bool)

(declare-fun e!37204 () Bool)

(assert (=> b!68748 (= e!37204 (= (simplify!1 (f!4193 f!3683)) (f!4193 f!3683)))))

(declare-fun b!68749 () Bool)

(declare-fun e!37208 () Bool)

(assert (=> b!68749 (= e!37208 e!37204)))

(declare-fun c!16050 () Bool)

(declare-fun lt!14079 () Bool)

(assert (=> b!68749 (= c!16050 (or lt!14079 (is-Or!50 (f!4193 f!3683))))))

(declare-fun lt!14078 () Formula!45)

(declare-fun e!37207 () Formula!45)

(assert (=> b!68749 (= lt!14078 e!37207)))

(declare-fun c!16052 () Bool)

(assert (=> b!68749 (= c!16052 (or lt!14079 (is-Or!50 (f!4193 f!3683))))))

(assert (=> b!68749 (= lt!14079 (is-Implies!50 (f!4193 f!3683)))))

(declare-fun d!53580 () Bool)

(assert (=> d!53580 e!37208))

(declare-fun c!16049 () Bool)

(assert (=> d!53580 (= c!16049 (or lt!14076 (is-Literal!44 (f!4193 f!3683))))))

(declare-fun lt!14081 () Formula!45)

(declare-fun e!37203 () Formula!45)

(assert (=> d!53580 (= lt!14081 e!37203)))

(declare-fun c!16048 () Bool)

(assert (=> d!53580 (= c!16048 (or lt!14076 (is-Literal!44 (f!4193 f!3683))))))

(declare-fun lt!14080 () Bool)

(declare-fun e!37206 () Bool)

(assert (=> d!53580 (= lt!14080 e!37206)))

(declare-fun c!16051 () Bool)

(assert (=> d!53580 (= c!16051 (or lt!14076 (and (not (is-Literal!44 (f!4193 f!3683))) (or (is-Implies!50 (f!4193 f!3683)) (is-Or!50 (f!4193 f!3683))))))))

(declare-fun lt!14077 () Bool)

(assert (=> d!53580 (= lt!14077 e!37205)))

(declare-fun c!16047 () Bool)

(assert (=> d!53580 (= c!16047 (or lt!14076 (not (is-Literal!44 (f!4193 f!3683)))))))

(assert (=> d!53580 (= lt!14076 (is-And!50 (f!4193 f!3683)))))

(assert (=> d!53580 (isSimplified!1 (f!4193 f!3683))))

(assert (=> d!53580 (= (simplifyIsStable!1 (f!4193 f!3683)) true)))

(declare-fun b!68750 () Bool)

(assert (=> b!68750 (= e!37208 (= lt!14081 (f!4193 f!3683)))))

(declare-fun b!68751 () Bool)

(assert (=> b!68751 (= e!37206 (simplifyIsStable!1 (ite lt!14076 (lhs!938 (f!4193 f!3683)) (ite (is-Implies!50 (f!4193 f!3683)) (lhs!939 (f!4193 f!3683)) (lhs!940 (f!4193 f!3683))))))))

(declare-fun b!68752 () Bool)

(declare-fun res!33315 () Bool)

(assert (=> b!68752 (= e!37206 res!33315)))

(assert (=> b!68752 true))

(declare-fun b!68753 () Bool)

(assert (=> b!68753 (= e!37207 (simplify!1 (f!4193 f!3683)))))

(declare-fun b!68754 () Bool)

(declare-fun res!33316 () Formula!45)

(assert (=> b!68754 (= e!37207 res!33316)))

(assert (=> b!68754 true))

(assert (=> b!68754 true))

(declare-fun b!68755 () Bool)

(assert (=> b!68755 (= e!37203 (simplify!1 (f!4193 f!3683)))))

(declare-fun b!68756 () Bool)

(assert (=> b!68756 (= e!37204 (= lt!14078 (f!4193 f!3683)))))

(declare-fun b!68757 () Bool)

(declare-fun res!33314 () Formula!45)

(assert (=> b!68757 (= e!37203 res!33314)))

(assert (=> b!68757 true))

(assert (= (and d!53580 c!16047) b!68746))

(assert (= (and d!53580 (not c!16047)) b!68747))

(assert (= (and d!53580 c!16051) b!68751))

(assert (= (and d!53580 (not c!16051)) b!68752))

(assert (= (and d!53580 c!16048) b!68755))

(assert (= (and d!53580 (not c!16048)) b!68757))

(assert (= (and b!68749 c!16052) b!68753))

(assert (= (and b!68749 (not c!16052)) b!68754))

(assert (= (and b!68749 c!16050) b!68756))

(assert (= (and b!68749 (not c!16050)) b!68748))

(assert (= (and d!53580 c!16049) b!68750))

(assert (= (and d!53580 (not c!16049)) b!68749))

(declare-fun m!70311 () Bool)

(assert (=> b!68753 m!70311))

(declare-fun m!70313 () Bool)

(assert (=> b!68746 m!70313))

(declare-fun m!70315 () Bool)

(assert (=> d!53580 m!70315))

(declare-fun m!70317 () Bool)

(assert (=> b!68751 m!70317))

(assert (=> b!68748 m!70311))

(assert (=> b!68755 m!70311))

(assert (=> b!68720 d!53580))

(declare-fun b!68784 () Bool)

(declare-fun e!37226 () Bool)

(declare-fun res!33347 () Bool)

(assert (=> b!68784 (= e!37226 res!33347)))

(assert (=> b!68784 true))

(assert (=> b!68784 true))

(declare-fun lt!14099 () Bool)

(declare-fun b!68785 () Bool)

(declare-fun lt!14101 () Bool)

(declare-fun e!37232 () Bool)

(declare-fun lt!14098 () Bool)

(assert (=> b!68785 (= e!37232 (ite lt!14101 (and lt!14099 lt!14098) (and (not (is-Implies!50 f!3683)) (or (not (is-Not!50 f!3683)) lt!14099))))))

(assert (=> b!68785 (= lt!14099 e!37226)))

(declare-fun c!16064 () Bool)

(assert (=> b!68785 (= c!16064 (or lt!14101 (and (not (is-Implies!50 f!3683)) (is-Not!50 f!3683))))))

(assert (=> b!68785 (= lt!14101 (is-Or!50 f!3683))))

(declare-fun b!68786 () Bool)

(declare-fun e!37228 () Bool)

(declare-fun res!33345 () Bool)

(assert (=> b!68786 (= e!37228 res!33345)))

(assert (=> b!68786 true))

(declare-fun b!68787 () Bool)

(declare-fun e!37230 () Bool)

(declare-fun lt!14102 () Bool)

(assert (=> b!68787 (= e!37230 (isSimplified!1 (ite lt!14102 (rhs!938 f!3683) (rhs!940 f!3683))))))

(declare-fun d!53582 () Bool)

(declare-fun c!16067 () Bool)

(declare-fun lt!14100 () Bool)

(assert (=> d!53582 (= c!16067 lt!14100)))

(assert (=> d!53582 (= lt!14098 e!37230)))

(declare-fun c!16066 () Bool)

(declare-fun e!37225 () Bool)

(assert (=> d!53582 (= c!16066 e!37225)))

(declare-fun res!33349 () Bool)

(assert (=> d!53582 (=> res!33349 e!37225)))

(assert (=> d!53582 (= res!33349 lt!14102)))

(declare-fun lt!14096 () Bool)

(assert (=> d!53582 (= lt!14102 (and lt!14100 lt!14096))))

(assert (=> d!53582 (= lt!14096 e!37228)))

(declare-fun c!16065 () Bool)

(assert (=> d!53582 (= c!16065 (or lt!14100 (is-Or!50 f!3683) (and (not (is-Implies!50 f!3683)) (is-Not!50 f!3683))))))

(assert (=> d!53582 (= lt!14100 (is-And!50 f!3683))))

(assert (=> d!53582 (= (isSimplified!1 f!3683) e!37232)))

(declare-fun b!68788 () Bool)

(declare-fun e!37227 () Bool)

(declare-fun e!37229 () Bool)

(assert (=> b!68788 (= e!37227 e!37229)))

(declare-fun c!16063 () Bool)

(declare-fun lt!14097 () Bool)

(assert (=> b!68788 (= c!16063 (or lt!14097 (and (not (is-Implies!50 f!3683)) (is-Not!50 f!3683))))))

(declare-fun b!68789 () Bool)

(assert (=> b!68789 (= e!37228 (isSimplified!1 (ite lt!14100 (lhs!938 f!3683) (ite (is-Or!50 f!3683) (lhs!940 f!3683) (f!4193 f!3683)))))))

(declare-fun b!68790 () Bool)

(declare-fun e!37231 () Bool)

(assert (=> b!68790 (= e!37231 e!37227)))

(declare-fun res!33346 () Bool)

(assert (=> b!68790 (=> (not res!33346) (not e!37227))))

(assert (=> b!68790 (= res!33346 lt!14097)))

(assert (=> b!68790 (= lt!14097 (is-Or!50 f!3683))))

(declare-fun b!68791 () Bool)

(assert (=> b!68791 (= e!37225 e!37231)))

(declare-fun res!33344 () Bool)

(assert (=> b!68791 (=> (not res!33344) (not e!37231))))

(assert (=> b!68791 (= res!33344 (not lt!14100))))

(declare-fun b!68792 () Bool)

(declare-fun res!33348 () Bool)

(assert (=> b!68792 (= e!37229 res!33348)))

(assert (=> b!68792 true))

(declare-fun b!68793 () Bool)

(assert (=> b!68793 (= e!37226 lt!14096)))

(declare-fun b!68794 () Bool)

(declare-fun res!33343 () Bool)

(assert (=> b!68794 (= e!37230 res!33343)))

(assert (=> b!68794 true))

(declare-fun b!68795 () Bool)

(assert (=> b!68795 (= e!37232 (and lt!14096 lt!14098))))

(declare-fun b!68796 () Bool)

(assert (=> b!68796 (= e!37229 lt!14096)))

(assert (= (and d!53582 c!16065) b!68789))

(assert (= (and d!53582 (not c!16065)) b!68786))

(assert (= (and d!53582 (not res!33349)) b!68791))

(assert (= (and b!68791 res!33344) b!68790))

(assert (= (and b!68790 res!33346) b!68788))

(assert (= (and b!68788 c!16063) b!68796))

(assert (= (and b!68788 (not c!16063)) b!68792))

(assert (= (and d!53582 c!16066) b!68787))

(assert (= (and d!53582 (not c!16066)) b!68794))

(assert (= (and b!68785 c!16064) b!68793))

(assert (= (and b!68785 (not c!16064)) b!68784))

(assert (= (and d!53582 c!16067) b!68795))

(assert (= (and d!53582 (not c!16067)) b!68785))

(declare-fun m!70319 () Bool)

(assert (=> b!68787 m!70319))

(declare-fun m!70321 () Bool)

(assert (=> b!68789 m!70321))

(assert (=> start!9438 d!53582))

(declare-fun b!68825 () Bool)

(declare-fun e!37248 () Formula!45)

(declare-fun res!33376 () Formula!45)

(assert (=> b!68825 (= e!37248 res!33376)))

(assert (=> b!68825 true))

(assert (=> b!68825 true))

(declare-fun b!68826 () Bool)

(declare-fun e!37249 () Formula!45)

(declare-fun res!33375 () Formula!45)

(assert (=> b!68826 (= e!37249 res!33375)))

(assert (=> b!68826 true))

(declare-fun b!68827 () Bool)

(declare-fun e!37247 () Formula!45)

(declare-fun lt!14126 () Formula!45)

(declare-fun lt!14123 () Formula!45)

(assert (=> b!68827 (= e!37247 (And!50 lt!14126 lt!14123))))

(declare-fun b!68828 () Bool)

(declare-fun e!37252 () Formula!45)

(assert (=> b!68828 (= e!37247 e!37252)))

(declare-fun c!16084 () Bool)

(declare-fun lt!14121 () Bool)

(assert (=> b!68828 (= c!16084 lt!14121)))

(declare-fun lt!14128 () Formula!45)

(assert (=> b!68828 (= lt!14128 e!37249)))

(declare-fun c!16087 () Bool)

(assert (=> b!68828 (= c!16087 (or lt!14121 (is-Implies!50 f!3683)))))

(declare-fun lt!14129 () Formula!45)

(declare-fun e!37250 () Formula!45)

(assert (=> b!68828 (= lt!14129 e!37250)))

(declare-fun c!16083 () Bool)

(assert (=> b!68828 (= c!16083 (or lt!14121 (is-Implies!50 f!3683) (is-Not!50 f!3683)))))

(assert (=> b!68828 (= lt!14121 (is-Or!50 f!3683))))

(declare-fun b!68829 () Bool)

(declare-fun e!37251 () Formula!45)

(declare-fun lt!14122 () Bool)

(assert (=> b!68829 (= e!37251 (simplify!1 (ite lt!14122 (rhs!938 f!3683) (ite (is-Or!50 f!3683) (rhs!940 f!3683) (rhs!939 f!3683)))))))

(declare-fun b!68830 () Bool)

(assert (=> b!68830 (= e!37248 lt!14129)))

(declare-fun b!68831 () Bool)

(assert (=> b!68831 (= e!37252 (Or!50 lt!14129 lt!14128))))

(declare-fun b!68832 () Bool)

(assert (=> b!68832 (= e!37249 lt!14123)))

(declare-fun b!68833 () Bool)

(declare-fun res!33378 () Formula!45)

(assert (=> b!68833 (= e!37250 res!33378)))

(assert (=> b!68833 true))

(declare-fun b!68834 () Bool)

(declare-fun e!37253 () Formula!45)

(assert (=> b!68834 (= e!37253 (simplify!1 (ite lt!14122 (lhs!938 f!3683) (ite (is-Or!50 f!3683) (lhs!940 f!3683) (ite (is-Implies!50 f!3683) (lhs!939 f!3683) (f!4193 f!3683))))))))

(declare-fun b!68835 () Bool)

(assert (=> b!68835 (= e!37250 lt!14126)))

(declare-fun d!53584 () Bool)

(declare-fun lt!14125 () Formula!45)

(assert (=> d!53584 (isSimplified!1 lt!14125)))

(assert (=> d!53584 (= lt!14125 e!37247)))

(declare-fun c!16086 () Bool)

(assert (=> d!53584 (= c!16086 lt!14122)))

(assert (=> d!53584 (= lt!14123 e!37251)))

(declare-fun c!16088 () Bool)

(assert (=> d!53584 (= c!16088 (or lt!14122 (is-Or!50 f!3683) (is-Implies!50 f!3683)))))

(assert (=> d!53584 (= lt!14126 e!37253)))

(declare-fun c!16085 () Bool)

(assert (=> d!53584 (= c!16085 (or lt!14122 (is-Or!50 f!3683) (is-Implies!50 f!3683) (is-Not!50 f!3683)))))

(assert (=> d!53584 (= lt!14122 (is-And!50 f!3683))))

(assert (=> d!53584 (= (simplify!1 f!3683) lt!14125)))

(declare-fun lt!14127 () Bool)

(declare-fun lt!14124 () Formula!45)

(declare-fun b!68836 () Bool)

(assert (=> b!68836 (= e!37252 (ite lt!14127 (Or!50 (Not!50 lt!14124) lt!14128) (ite (is-Not!50 f!3683) (Not!50 lt!14124) f!3683)))))

(assert (=> b!68836 (= lt!14124 e!37248)))

(declare-fun c!16082 () Bool)

(assert (=> b!68836 (= c!16082 (or lt!14127 (is-Not!50 f!3683)))))

(assert (=> b!68836 (= lt!14127 (is-Implies!50 f!3683))))

(declare-fun b!68837 () Bool)

(declare-fun res!33379 () Formula!45)

(assert (=> b!68837 (= e!37253 res!33379)))

(assert (=> b!68837 true))

(declare-fun b!68838 () Bool)

(declare-fun res!33377 () Formula!45)

(assert (=> b!68838 (= e!37251 res!33377)))

(assert (=> b!68838 true))

(assert (= (and d!53584 c!16085) b!68834))

(assert (= (and d!53584 (not c!16085)) b!68837))

(assert (= (and d!53584 c!16088) b!68829))

(assert (= (and d!53584 (not c!16088)) b!68838))

(assert (= (and b!68828 c!16083) b!68835))

(assert (= (and b!68828 (not c!16083)) b!68833))

(assert (= (and b!68828 c!16087) b!68832))

(assert (= (and b!68828 (not c!16087)) b!68826))

(assert (= (and b!68836 c!16082) b!68830))

(assert (= (and b!68836 (not c!16082)) b!68825))

(assert (= (and b!68828 c!16084) b!68831))

(assert (= (and b!68828 (not c!16084)) b!68836))

(assert (= (and d!53584 c!16086) b!68827))

(assert (= (and d!53584 (not c!16086)) b!68828))

(declare-fun m!70323 () Bool)

(assert (=> b!68829 m!70323))

(declare-fun m!70325 () Bool)

(assert (=> b!68834 m!70325))

(declare-fun m!70327 () Bool)

(assert (=> d!53584 m!70327))

(assert (=> b!68721 d!53584))

(push 1)

(assert (not b!68789))

(assert (not d!53584))

(assert (not b!68751))

(assert (not b!68755))

(assert (not b!68753))

(assert (not b!68829))

(assert (not b!68746))

(assert (not b!68748))

(assert (not d!53580))

(assert (not b!68834))

(assert (not b!68787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

