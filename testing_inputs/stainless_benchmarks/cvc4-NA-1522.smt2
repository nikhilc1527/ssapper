; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10322 () Bool)

(assert start!10322)

(declare-fun res!38054 () Bool)

(declare-fun e!41186 () Bool)

(assert (=> start!10322 (=> (not res!38054) (not e!41186))))

(declare-datatypes () ((Formula!91 (Implies!95 (lhs!1386 Formula!91) (rhs!1386 Formula!91)) (And!95 (lhs!1387 Formula!91) (rhs!1387 Formula!91)) (Or!95 (lhs!1388 Formula!91) (rhs!1388 Formula!91)) (Literal!89 (id!4952 (_ BitVec 32))) (Not!95 (f!4723 Formula!91)))))

(declare-fun f!4516 () Formula!91)

(assert (=> start!10322 (= res!38054 (is-And!95 f!4516))))

(assert (=> start!10322 e!41186))

(assert (=> start!10322 true))

(declare-fun b!76237 () Bool)

(declare-fun res!38055 () Bool)

(assert (=> b!76237 (=> (not res!38055) (not e!41186))))

(declare-fun x$1!1023 () Formula!91)

(declare-fun simplify!0 (Formula!91) Formula!91)

(assert (=> b!76237 (= res!38055 (= x$1!1023 (And!95 (simplify!0 (lhs!1387 f!4516)) (simplify!0 (rhs!1387 f!4516)))))))

(declare-fun b!76238 () Bool)

(declare-fun isSimplified!0 (Formula!91) Bool)

(assert (=> b!76238 (= e!41186 (not (isSimplified!0 x$1!1023)))))

(assert (= (and start!10322 res!38054) b!76237))

(assert (= (and b!76237 res!38055) b!76238))

(declare-fun m!73278 () Bool)

(assert (=> b!76237 m!73278))

(declare-fun m!73280 () Bool)

(assert (=> b!76237 m!73280))

(declare-fun m!73282 () Bool)

(assert (=> b!76238 m!73282))

(push 1)

(assert (not b!76238))

(assert (not b!76237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76265 () Bool)

(declare-fun e!41208 () Bool)

(declare-fun lt!16861 () Bool)

(assert (=> b!76265 (= e!41208 lt!16861)))

(declare-fun b!76266 () Bool)

(declare-fun e!41206 () Bool)

(declare-fun e!41204 () Bool)

(assert (=> b!76266 (= e!41206 e!41204)))

(declare-fun res!38085 () Bool)

(assert (=> b!76266 (=> (not res!38085) (not e!41204))))

(declare-fun lt!16860 () Bool)

(assert (=> b!76266 (= res!38085 lt!16860)))

(assert (=> b!76266 (= lt!16860 (is-Or!95 x$1!1023))))

(declare-fun d!54893 () Bool)

(declare-fun c!18890 () Bool)

(declare-fun lt!16857 () Bool)

(assert (=> d!54893 (= c!18890 lt!16857)))

(declare-fun lt!16855 () Bool)

(declare-fun e!41209 () Bool)

(assert (=> d!54893 (= lt!16855 e!41209)))

(declare-fun c!18891 () Bool)

(declare-fun e!41205 () Bool)

(assert (=> d!54893 (= c!18891 e!41205)))

(declare-fun res!38081 () Bool)

(assert (=> d!54893 (=> res!38081 e!41205)))

(declare-fun lt!16859 () Bool)

(assert (=> d!54893 (= res!38081 lt!16859)))

(assert (=> d!54893 (= lt!16859 (and lt!16857 lt!16861))))

(declare-fun e!41207 () Bool)

(assert (=> d!54893 (= lt!16861 e!41207)))

(declare-fun c!18892 () Bool)

(assert (=> d!54893 (= c!18892 (or lt!16857 (is-Or!95 x$1!1023) (and (not (is-Implies!95 x$1!1023)) (is-Not!95 x$1!1023))))))

(assert (=> d!54893 (= lt!16857 (is-And!95 x$1!1023))))

(declare-fun e!41210 () Bool)

(assert (=> d!54893 (= (isSimplified!0 x$1!1023) e!41210)))

(declare-fun b!76267 () Bool)

(assert (=> b!76267 (= e!41207 (isSimplified!0 (ite lt!16857 (lhs!1387 x$1!1023) (ite (is-Or!95 x$1!1023) (lhs!1388 x$1!1023) (f!4723 x$1!1023)))))))

(declare-fun b!76268 () Bool)

(declare-fun e!41203 () Bool)

(assert (=> b!76268 (= e!41204 e!41203)))

(declare-fun c!18889 () Bool)

(assert (=> b!76268 (= c!18889 (or lt!16860 (and (not (is-Implies!95 x$1!1023)) (is-Not!95 x$1!1023))))))

(declare-fun b!76269 () Bool)

(assert (=> b!76269 (= e!41210 (and lt!16861 lt!16855))))

(declare-fun lt!16858 () Bool)

(declare-fun b!76270 () Bool)

(declare-fun lt!16856 () Bool)

(assert (=> b!76270 (= e!41210 (ite lt!16856 (and lt!16858 lt!16855) (and (not (is-Implies!95 x$1!1023)) (or (not (is-Not!95 x$1!1023)) lt!16858))))))

(assert (=> b!76270 (= lt!16858 e!41208)))

(declare-fun c!18888 () Bool)

(assert (=> b!76270 (= c!18888 (or lt!16856 (and (not (is-Implies!95 x$1!1023)) (is-Not!95 x$1!1023))))))

(assert (=> b!76270 (= lt!16856 (is-Or!95 x$1!1023))))

(declare-fun b!76271 () Bool)

(assert (=> b!76271 (= e!41205 e!41206)))

(declare-fun res!38087 () Bool)

(assert (=> b!76271 (=> (not res!38087) (not e!41206))))

(assert (=> b!76271 (= res!38087 (not lt!16857))))

(declare-fun b!76272 () Bool)

(declare-fun res!38083 () Bool)

(assert (=> b!76272 (= e!41207 res!38083)))

(assert (=> b!76272 true))

(declare-fun b!76273 () Bool)

(assert (=> b!76273 (= e!41203 lt!16861)))

(declare-fun b!76274 () Bool)

(assert (=> b!76274 (= e!41209 (isSimplified!0 (ite lt!16859 (rhs!1387 x$1!1023) (rhs!1388 x$1!1023))))))

(declare-fun b!76275 () Bool)

(declare-fun res!38086 () Bool)

(assert (=> b!76275 (= e!41208 res!38086)))

(assert (=> b!76275 true))

(assert (=> b!76275 true))

(declare-fun b!76276 () Bool)

(declare-fun res!38082 () Bool)

(assert (=> b!76276 (= e!41203 res!38082)))

(assert (=> b!76276 true))

(declare-fun b!76277 () Bool)

(declare-fun res!38084 () Bool)

(assert (=> b!76277 (= e!41209 res!38084)))

(assert (=> b!76277 true))

(assert (= (and d!54893 c!18892) b!76267))

(assert (= (and d!54893 (not c!18892)) b!76272))

(assert (= (and d!54893 (not res!38081)) b!76271))

(assert (= (and b!76271 res!38087) b!76266))

(assert (= (and b!76266 res!38085) b!76268))

(assert (= (and b!76268 c!18889) b!76273))

(assert (= (and b!76268 (not c!18889)) b!76276))

(assert (= (and d!54893 c!18891) b!76274))

(assert (= (and d!54893 (not c!18891)) b!76277))

(assert (= (and b!76270 c!18888) b!76265))

(assert (= (and b!76270 (not c!18888)) b!76275))

(assert (= (and d!54893 c!18890) b!76269))

(assert (= (and d!54893 (not c!18890)) b!76270))

(declare-fun m!73284 () Bool)

(assert (=> b!76267 m!73284))

(declare-fun m!73286 () Bool)

(assert (=> b!76274 m!73286))

(assert (=> b!76238 d!54893))

(declare-fun b!76306 () Bool)

(declare-fun e!41230 () Formula!91)

(declare-fun lt!16886 () Formula!91)

(assert (=> b!76306 (= e!41230 lt!16886)))

(declare-fun b!76307 () Bool)

(declare-fun e!41228 () Formula!91)

(declare-fun lt!16884 () Formula!91)

(declare-fun lt!16888 () Formula!91)

(assert (=> b!76307 (= e!41228 (Or!95 lt!16884 lt!16888))))

(declare-fun b!76308 () Bool)

(declare-fun e!41226 () Formula!91)

(declare-fun res!38113 () Formula!91)

(assert (=> b!76308 (= e!41226 res!38113)))

(assert (=> b!76308 true))

(assert (=> b!76308 true))

(declare-fun b!76309 () Bool)

(declare-fun e!41227 () Formula!91)

(declare-fun res!38115 () Formula!91)

(assert (=> b!76309 (= e!41227 res!38115)))

(assert (=> b!76309 true))

(declare-fun b!76310 () Bool)

(declare-fun lt!16883 () Bool)

(declare-fun lt!16885 () Formula!91)

(assert (=> b!76310 (= e!41228 (ite lt!16883 (Or!95 (Not!95 lt!16885) lt!16888) (ite (is-Not!95 (lhs!1387 f!4516)) (Not!95 lt!16885) (lhs!1387 f!4516))))))

(assert (=> b!76310 (= lt!16885 e!41226)))

(declare-fun c!18907 () Bool)

(assert (=> b!76310 (= c!18907 (or lt!16883 (is-Not!95 (lhs!1387 f!4516))))))

(assert (=> b!76310 (= lt!16883 (is-Implies!95 (lhs!1387 f!4516)))))

(declare-fun b!76311 () Bool)

(declare-fun e!41229 () Formula!91)

(declare-fun lt!16881 () Formula!91)

(assert (=> b!76311 (= e!41229 (And!95 lt!16881 lt!16886))))

(declare-fun b!76312 () Bool)

(declare-fun e!41225 () Formula!91)

(declare-fun res!38114 () Formula!91)

(assert (=> b!76312 (= e!41225 res!38114)))

(assert (=> b!76312 true))

(declare-fun b!76313 () Bool)

(declare-fun e!41231 () Formula!91)

(declare-fun res!38117 () Formula!91)

(assert (=> b!76313 (= e!41231 res!38117)))

(assert (=> b!76313 true))

(declare-fun b!76314 () Bool)

(declare-fun lt!16880 () Bool)

(assert (=> b!76314 (= e!41227 (simplify!0 (ite lt!16880 (lhs!1387 (lhs!1387 f!4516)) (ite (is-Or!95 (lhs!1387 f!4516)) (lhs!1388 (lhs!1387 f!4516)) (ite (is-Implies!95 (lhs!1387 f!4516)) (lhs!1386 (lhs!1387 f!4516)) (f!4723 (lhs!1387 f!4516)))))))))

(declare-fun b!76315 () Bool)

(assert (=> b!76315 (= e!41231 (simplify!0 (ite lt!16880 (rhs!1387 (lhs!1387 f!4516)) (ite (is-Or!95 (lhs!1387 f!4516)) (rhs!1388 (lhs!1387 f!4516)) (rhs!1386 (lhs!1387 f!4516))))))))

(declare-fun b!76316 () Bool)

(assert (=> b!76316 (= e!41229 e!41228)))

(declare-fun c!18911 () Bool)

(declare-fun lt!16882 () Bool)

(assert (=> b!76316 (= c!18911 lt!16882)))

(assert (=> b!76316 (= lt!16888 e!41230)))

(declare-fun c!18909 () Bool)

(assert (=> b!76316 (= c!18909 (or lt!16882 (is-Implies!95 (lhs!1387 f!4516))))))

(assert (=> b!76316 (= lt!16884 e!41225)))

(declare-fun c!18908 () Bool)

(assert (=> b!76316 (= c!18908 (or lt!16882 (is-Implies!95 (lhs!1387 f!4516)) (is-Not!95 (lhs!1387 f!4516))))))

(assert (=> b!76316 (= lt!16882 (is-Or!95 (lhs!1387 f!4516)))))

(declare-fun b!76317 () Bool)

(assert (=> b!76317 (= e!41225 lt!16881)))

(declare-fun d!54895 () Bool)

(declare-fun lt!16887 () Formula!91)

(assert (=> d!54895 (isSimplified!0 lt!16887)))

(assert (=> d!54895 (= lt!16887 e!41229)))

(declare-fun c!18912 () Bool)

(assert (=> d!54895 (= c!18912 lt!16880)))

(assert (=> d!54895 (= lt!16886 e!41231)))

(declare-fun c!18913 () Bool)

(assert (=> d!54895 (= c!18913 (or lt!16880 (is-Or!95 (lhs!1387 f!4516)) (is-Implies!95 (lhs!1387 f!4516))))))

(assert (=> d!54895 (= lt!16881 e!41227)))

(declare-fun c!18910 () Bool)

(assert (=> d!54895 (= c!18910 (or lt!16880 (is-Or!95 (lhs!1387 f!4516)) (is-Implies!95 (lhs!1387 f!4516)) (is-Not!95 (lhs!1387 f!4516))))))

(assert (=> d!54895 (= lt!16880 (is-And!95 (lhs!1387 f!4516)))))

(assert (=> d!54895 (= (simplify!0 (lhs!1387 f!4516)) lt!16887)))

(declare-fun b!76318 () Bool)

(declare-fun res!38116 () Formula!91)

(assert (=> b!76318 (= e!41230 res!38116)))

(assert (=> b!76318 true))

(declare-fun b!76319 () Bool)

(assert (=> b!76319 (= e!41226 lt!16884)))

(assert (= (and d!54895 c!18910) b!76314))

(assert (= (and d!54895 (not c!18910)) b!76309))

(assert (= (and d!54895 c!18913) b!76315))

(assert (= (and d!54895 (not c!18913)) b!76313))

(assert (= (and b!76316 c!18908) b!76317))

(assert (= (and b!76316 (not c!18908)) b!76312))

(assert (= (and b!76316 c!18909) b!76306))

(assert (= (and b!76316 (not c!18909)) b!76318))

(assert (= (and b!76310 c!18907) b!76319))

(assert (= (and b!76310 (not c!18907)) b!76308))

(assert (= (and b!76316 c!18911) b!76307))

(assert (= (and b!76316 (not c!18911)) b!76310))

(assert (= (and d!54895 c!18912) b!76311))

(assert (= (and d!54895 (not c!18912)) b!76316))

(declare-fun m!73288 () Bool)

(assert (=> b!76314 m!73288))

(declare-fun m!73290 () Bool)

(assert (=> b!76315 m!73290))

(declare-fun m!73292 () Bool)

(assert (=> d!54895 m!73292))

(assert (=> b!76237 d!54895))

(declare-fun b!76320 () Bool)

(declare-fun e!41237 () Formula!91)

(declare-fun lt!16895 () Formula!91)

(assert (=> b!76320 (= e!41237 lt!16895)))

(declare-fun b!76321 () Bool)

(declare-fun e!41235 () Formula!91)

(declare-fun lt!16893 () Formula!91)

(declare-fun lt!16897 () Formula!91)

(assert (=> b!76321 (= e!41235 (Or!95 lt!16893 lt!16897))))

(declare-fun b!76322 () Bool)

(declare-fun e!41233 () Formula!91)

(declare-fun res!38118 () Formula!91)

(assert (=> b!76322 (= e!41233 res!38118)))

(assert (=> b!76322 true))

(assert (=> b!76322 true))

(declare-fun b!76323 () Bool)

(declare-fun e!41234 () Formula!91)

(declare-fun res!38120 () Formula!91)

(assert (=> b!76323 (= e!41234 res!38120)))

(assert (=> b!76323 true))

(declare-fun b!76324 () Bool)

(declare-fun lt!16894 () Formula!91)

(declare-fun lt!16892 () Bool)

(assert (=> b!76324 (= e!41235 (ite lt!16892 (Or!95 (Not!95 lt!16894) lt!16897) (ite (is-Not!95 (rhs!1387 f!4516)) (Not!95 lt!16894) (rhs!1387 f!4516))))))

(assert (=> b!76324 (= lt!16894 e!41233)))

(declare-fun c!18914 () Bool)

(assert (=> b!76324 (= c!18914 (or lt!16892 (is-Not!95 (rhs!1387 f!4516))))))

(assert (=> b!76324 (= lt!16892 (is-Implies!95 (rhs!1387 f!4516)))))

(declare-fun b!76325 () Bool)

(declare-fun e!41236 () Formula!91)

(declare-fun lt!16890 () Formula!91)

(assert (=> b!76325 (= e!41236 (And!95 lt!16890 lt!16895))))

(declare-fun b!76326 () Bool)

(declare-fun e!41232 () Formula!91)

(declare-fun res!38119 () Formula!91)

(assert (=> b!76326 (= e!41232 res!38119)))

(assert (=> b!76326 true))

(declare-fun b!76327 () Bool)

(declare-fun e!41238 () Formula!91)

(declare-fun res!38122 () Formula!91)

(assert (=> b!76327 (= e!41238 res!38122)))

(assert (=> b!76327 true))

(declare-fun b!76328 () Bool)

(declare-fun lt!16889 () Bool)

(assert (=> b!76328 (= e!41234 (simplify!0 (ite lt!16889 (lhs!1387 (rhs!1387 f!4516)) (ite (is-Or!95 (rhs!1387 f!4516)) (lhs!1388 (rhs!1387 f!4516)) (ite (is-Implies!95 (rhs!1387 f!4516)) (lhs!1386 (rhs!1387 f!4516)) (f!4723 (rhs!1387 f!4516)))))))))

(declare-fun b!76329 () Bool)

(assert (=> b!76329 (= e!41238 (simplify!0 (ite lt!16889 (rhs!1387 (rhs!1387 f!4516)) (ite (is-Or!95 (rhs!1387 f!4516)) (rhs!1388 (rhs!1387 f!4516)) (rhs!1386 (rhs!1387 f!4516))))))))

(declare-fun b!76330 () Bool)

(assert (=> b!76330 (= e!41236 e!41235)))

(declare-fun c!18918 () Bool)

(declare-fun lt!16891 () Bool)

(assert (=> b!76330 (= c!18918 lt!16891)))

(assert (=> b!76330 (= lt!16897 e!41237)))

(declare-fun c!18916 () Bool)

(assert (=> b!76330 (= c!18916 (or lt!16891 (is-Implies!95 (rhs!1387 f!4516))))))

(assert (=> b!76330 (= lt!16893 e!41232)))

(declare-fun c!18915 () Bool)

(assert (=> b!76330 (= c!18915 (or lt!16891 (is-Implies!95 (rhs!1387 f!4516)) (is-Not!95 (rhs!1387 f!4516))))))

(assert (=> b!76330 (= lt!16891 (is-Or!95 (rhs!1387 f!4516)))))

(declare-fun b!76331 () Bool)

(assert (=> b!76331 (= e!41232 lt!16890)))

(declare-fun d!54897 () Bool)

(declare-fun lt!16896 () Formula!91)

(assert (=> d!54897 (isSimplified!0 lt!16896)))

(assert (=> d!54897 (= lt!16896 e!41236)))

(declare-fun c!18919 () Bool)

(assert (=> d!54897 (= c!18919 lt!16889)))

(assert (=> d!54897 (= lt!16895 e!41238)))

(declare-fun c!18920 () Bool)

(assert (=> d!54897 (= c!18920 (or lt!16889 (is-Or!95 (rhs!1387 f!4516)) (is-Implies!95 (rhs!1387 f!4516))))))

(assert (=> d!54897 (= lt!16890 e!41234)))

(declare-fun c!18917 () Bool)

(assert (=> d!54897 (= c!18917 (or lt!16889 (is-Or!95 (rhs!1387 f!4516)) (is-Implies!95 (rhs!1387 f!4516)) (is-Not!95 (rhs!1387 f!4516))))))

(assert (=> d!54897 (= lt!16889 (is-And!95 (rhs!1387 f!4516)))))

(assert (=> d!54897 (= (simplify!0 (rhs!1387 f!4516)) lt!16896)))

(declare-fun b!76332 () Bool)

(declare-fun res!38121 () Formula!91)

(assert (=> b!76332 (= e!41237 res!38121)))

(assert (=> b!76332 true))

(declare-fun b!76333 () Bool)

(assert (=> b!76333 (= e!41233 lt!16893)))

(assert (= (and d!54897 c!18917) b!76328))

(assert (= (and d!54897 (not c!18917)) b!76323))

(assert (= (and d!54897 c!18920) b!76329))

(assert (= (and d!54897 (not c!18920)) b!76327))

(assert (= (and b!76330 c!18915) b!76331))

(assert (= (and b!76330 (not c!18915)) b!76326))

(assert (= (and b!76330 c!18916) b!76320))

(assert (= (and b!76330 (not c!18916)) b!76332))

(assert (= (and b!76324 c!18914) b!76333))

(assert (= (and b!76324 (not c!18914)) b!76322))

(assert (= (and b!76330 c!18918) b!76321))

(assert (= (and b!76330 (not c!18918)) b!76324))

(assert (= (and d!54897 c!18919) b!76325))

(assert (= (and d!54897 (not c!18919)) b!76330))

(declare-fun m!73294 () Bool)

(assert (=> b!76328 m!73294))

(declare-fun m!73296 () Bool)

(assert (=> b!76329 m!73296))

(declare-fun m!73298 () Bool)

(assert (=> d!54897 m!73298))

(assert (=> b!76237 d!54897))

(push 1)

(assert (not b!76329))

(assert (not b!76314))

(assert (not b!76315))

(assert (not b!76328))

(assert (not d!54897))

(assert (not b!76267))

(assert (not b!76274))

(assert (not d!54895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

