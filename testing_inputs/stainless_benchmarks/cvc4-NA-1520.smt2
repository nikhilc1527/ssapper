; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10308 () Bool)

(assert start!10308)

(declare-fun res!37882 () Bool)

(declare-fun e!41072 () Bool)

(assert (=> start!10308 (=> (not res!37882) (not e!41072))))

(declare-datatypes () ((Formula!89 (Implies!93 (lhs!1380 Formula!89) (rhs!1380 Formula!89)) (And!93 (lhs!1381 Formula!89) (rhs!1381 Formula!89)) (Or!93 (lhs!1382 Formula!89) (rhs!1382 Formula!89)) (Literal!87 (id!4950 (_ BitVec 32))) (Not!93 (f!4716 Formula!89)))))

(declare-fun f!4460 () Formula!89)

(declare-fun isSimplified!0 (Formula!89) Bool)

(assert (=> start!10308 (= res!37882 (isSimplified!0 f!4460))))

(assert (=> start!10308 e!41072))

(assert (=> start!10308 true))

(declare-fun b!76024 () Bool)

(declare-fun res!37883 () Bool)

(assert (=> b!76024 (=> (not res!37883) (not e!41072))))

(assert (=> b!76024 (= res!37883 (and (not (is-Implies!93 f!4460)) (not (is-And!93 f!4460)) (not (is-Or!93 f!4460)) (is-Literal!87 f!4460)))))

(declare-fun b!76025 () Bool)

(declare-fun simplify!0 (Formula!89) Formula!89)

(assert (=> b!76025 (= e!41072 (not (= (simplify!0 f!4460) f!4460)))))

(assert (= (and start!10308 res!37882) b!76024))

(assert (= (and b!76024 res!37883) b!76025))

(declare-fun m!73240 () Bool)

(assert (=> start!10308 m!73240))

(declare-fun m!73242 () Bool)

(assert (=> b!76025 m!73242))

(push 1)

(assert (not start!10308))

(assert (not b!76025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76052 () Bool)

(declare-fun e!41091 () Bool)

(declare-fun res!37909 () Bool)

(assert (=> b!76052 (= e!41091 res!37909)))

(assert (=> b!76052 true))

(declare-fun b!76053 () Bool)

(declare-fun e!41095 () Bool)

(declare-fun e!41093 () Bool)

(assert (=> b!76053 (= e!41095 e!41093)))

(declare-fun res!37914 () Bool)

(assert (=> b!76053 (=> (not res!37914) (not e!41093))))

(declare-fun lt!16749 () Bool)

(assert (=> b!76053 (= res!37914 (not lt!16749))))

(declare-fun b!76054 () Bool)

(declare-fun e!41092 () Bool)

(declare-fun lt!16746 () Bool)

(assert (=> b!76054 (= e!41092 (isSimplified!0 (ite lt!16746 (rhs!1381 f!4460) (rhs!1382 f!4460))))))

(declare-fun b!76055 () Bool)

(declare-fun res!37911 () Bool)

(assert (=> b!76055 (= e!41092 res!37911)))

(assert (=> b!76055 true))

(declare-fun b!76056 () Bool)

(declare-fun e!41096 () Bool)

(assert (=> b!76056 (= e!41093 e!41096)))

(declare-fun res!37915 () Bool)

(assert (=> b!76056 (=> (not res!37915) (not e!41096))))

(declare-fun lt!16745 () Bool)

(assert (=> b!76056 (= res!37915 lt!16745)))

(assert (=> b!76056 (= lt!16745 (is-Or!93 f!4460))))

(declare-fun b!76057 () Bool)

(assert (=> b!76057 (= e!41096 e!41091)))

(declare-fun c!18802 () Bool)

(assert (=> b!76057 (= c!18802 (or lt!16745 (and (not (is-Implies!93 f!4460)) (is-Not!93 f!4460))))))

(declare-fun b!76058 () Bool)

(declare-fun e!41094 () Bool)

(assert (=> b!76058 (= e!41094 (isSimplified!0 (ite lt!16749 (lhs!1381 f!4460) (ite (is-Or!93 f!4460) (lhs!1382 f!4460) (f!4716 f!4460)))))))

(declare-fun b!76059 () Bool)

(declare-fun e!41089 () Bool)

(declare-fun lt!16744 () Bool)

(declare-fun lt!16748 () Bool)

(assert (=> b!76059 (= e!41089 (and lt!16744 lt!16748))))

(declare-fun b!76060 () Bool)

(declare-fun e!41090 () Bool)

(declare-fun res!37913 () Bool)

(assert (=> b!76060 (= e!41090 res!37913)))

(assert (=> b!76060 true))

(assert (=> b!76060 true))

(declare-fun b!76061 () Bool)

(assert (=> b!76061 (= e!41091 lt!16744)))

(declare-fun d!54883 () Bool)

(declare-fun c!18800 () Bool)

(assert (=> d!54883 (= c!18800 lt!16749)))

(assert (=> d!54883 (= lt!16748 e!41092)))

(declare-fun c!18798 () Bool)

(assert (=> d!54883 (= c!18798 e!41095)))

(declare-fun res!37910 () Bool)

(assert (=> d!54883 (=> res!37910 e!41095)))

(assert (=> d!54883 (= res!37910 lt!16746)))

(assert (=> d!54883 (= lt!16746 (and lt!16749 lt!16744))))

(assert (=> d!54883 (= lt!16744 e!41094)))

(declare-fun c!18799 () Bool)

(assert (=> d!54883 (= c!18799 (or lt!16749 (is-Or!93 f!4460) (and (not (is-Implies!93 f!4460)) (is-Not!93 f!4460))))))

(assert (=> d!54883 (= lt!16749 (is-And!93 f!4460))))

(assert (=> d!54883 (= (isSimplified!0 f!4460) e!41089)))

(declare-fun b!76062 () Bool)

(declare-fun res!37912 () Bool)

(assert (=> b!76062 (= e!41094 res!37912)))

(assert (=> b!76062 true))

(declare-fun b!76063 () Bool)

(assert (=> b!76063 (= e!41090 lt!16744)))

(declare-fun lt!16750 () Bool)

(declare-fun lt!16747 () Bool)

(declare-fun b!76064 () Bool)

(assert (=> b!76064 (= e!41089 (ite lt!16750 (and lt!16747 lt!16748) (and (not (is-Implies!93 f!4460)) (or (not (is-Not!93 f!4460)) lt!16747))))))

(assert (=> b!76064 (= lt!16747 e!41090)))

(declare-fun c!18801 () Bool)

(assert (=> b!76064 (= c!18801 (or lt!16750 (and (not (is-Implies!93 f!4460)) (is-Not!93 f!4460))))))

(assert (=> b!76064 (= lt!16750 (is-Or!93 f!4460))))

(assert (= (and d!54883 c!18799) b!76058))

(assert (= (and d!54883 (not c!18799)) b!76062))

(assert (= (and d!54883 (not res!37910)) b!76053))

(assert (= (and b!76053 res!37914) b!76056))

(assert (= (and b!76056 res!37915) b!76057))

(assert (= (and b!76057 c!18802) b!76061))

(assert (= (and b!76057 (not c!18802)) b!76052))

(assert (= (and d!54883 c!18798) b!76054))

(assert (= (and d!54883 (not c!18798)) b!76055))

(assert (= (and b!76064 c!18801) b!76063))

(assert (= (and b!76064 (not c!18801)) b!76060))

(assert (= (and d!54883 c!18800) b!76059))

(assert (= (and d!54883 (not c!18800)) b!76064))

(declare-fun m!73244 () Bool)

(assert (=> b!76054 m!73244))

(declare-fun m!73246 () Bool)

(assert (=> b!76058 m!73246))

(assert (=> start!10308 d!54883))

(declare-fun b!76093 () Bool)

(declare-fun e!41114 () Formula!89)

(declare-fun lt!16773 () Formula!89)

(assert (=> b!76093 (= e!41114 lt!16773)))

(declare-fun b!76094 () Bool)

(declare-fun e!41115 () Formula!89)

(declare-fun res!37943 () Formula!89)

(assert (=> b!76094 (= e!41115 res!37943)))

(assert (=> b!76094 true))

(declare-fun b!76095 () Bool)

(declare-fun e!41112 () Formula!89)

(declare-fun lt!16777 () Formula!89)

(declare-fun lt!16776 () Formula!89)

(assert (=> b!76095 (= e!41112 (And!93 lt!16777 lt!16776))))

(declare-fun b!76096 () Bool)

(declare-fun e!41117 () Formula!89)

(assert (=> b!76096 (= e!41117 lt!16776)))

(declare-fun b!76097 () Bool)

(declare-fun lt!16770 () Formula!89)

(declare-fun lt!16772 () Bool)

(declare-fun e!41113 () Formula!89)

(declare-fun lt!16769 () Formula!89)

(assert (=> b!76097 (= e!41113 (ite lt!16772 (Or!93 (Not!93 lt!16769) lt!16770) (ite (is-Not!93 f!4460) (Not!93 lt!16769) f!4460)))))

(assert (=> b!76097 (= lt!16769 e!41114)))

(declare-fun c!18820 () Bool)

(assert (=> b!76097 (= c!18820 (or lt!16772 (is-Not!93 f!4460)))))

(assert (=> b!76097 (= lt!16772 (is-Implies!93 f!4460))))

(declare-fun b!76098 () Bool)

(declare-fun e!41111 () Formula!89)

(declare-fun res!37944 () Formula!89)

(assert (=> b!76098 (= e!41111 res!37944)))

(assert (=> b!76098 true))

(declare-fun b!76099 () Bool)

(declare-fun lt!16775 () Bool)

(assert (=> b!76099 (= e!41115 (simplify!0 (ite lt!16775 (rhs!1381 f!4460) (ite (is-Or!93 f!4460) (rhs!1382 f!4460) (rhs!1380 f!4460)))))))

(declare-fun d!54885 () Bool)

(declare-fun lt!16774 () Formula!89)

(assert (=> d!54885 (isSimplified!0 lt!16774)))

(assert (=> d!54885 (= lt!16774 e!41112)))

(declare-fun c!18819 () Bool)

(assert (=> d!54885 (= c!18819 lt!16775)))

(assert (=> d!54885 (= lt!16776 e!41115)))

(declare-fun c!18821 () Bool)

(assert (=> d!54885 (= c!18821 (or lt!16775 (is-Or!93 f!4460) (is-Implies!93 f!4460)))))

(declare-fun e!41116 () Formula!89)

(assert (=> d!54885 (= lt!16777 e!41116)))

(declare-fun c!18822 () Bool)

(assert (=> d!54885 (= c!18822 (or lt!16775 (is-Or!93 f!4460) (is-Implies!93 f!4460) (is-Not!93 f!4460)))))

(assert (=> d!54885 (= lt!16775 (is-And!93 f!4460))))

(assert (=> d!54885 (= (simplify!0 f!4460) lt!16774)))

(declare-fun b!76100 () Bool)

(declare-fun res!37942 () Formula!89)

(assert (=> b!76100 (= e!41114 res!37942)))

(assert (=> b!76100 true))

(assert (=> b!76100 true))

(declare-fun b!76101 () Bool)

(assert (=> b!76101 (= e!41111 lt!16777)))

(declare-fun b!76102 () Bool)

(assert (=> b!76102 (= e!41116 (simplify!0 (ite lt!16775 (lhs!1381 f!4460) (ite (is-Or!93 f!4460) (lhs!1382 f!4460) (ite (is-Implies!93 f!4460) (lhs!1380 f!4460) (f!4716 f!4460))))))))

(declare-fun b!76103 () Bool)

(assert (=> b!76103 (= e!41113 (Or!93 lt!16773 lt!16770))))

(declare-fun b!76104 () Bool)

(assert (=> b!76104 (= e!41112 e!41113)))

(declare-fun c!18823 () Bool)

(declare-fun lt!16771 () Bool)

(assert (=> b!76104 (= c!18823 lt!16771)))

(assert (=> b!76104 (= lt!16770 e!41117)))

(declare-fun c!18817 () Bool)

(assert (=> b!76104 (= c!18817 (or lt!16771 (is-Implies!93 f!4460)))))

(assert (=> b!76104 (= lt!16773 e!41111)))

(declare-fun c!18818 () Bool)

(assert (=> b!76104 (= c!18818 (or lt!16771 (is-Implies!93 f!4460) (is-Not!93 f!4460)))))

(assert (=> b!76104 (= lt!16771 (is-Or!93 f!4460))))

(declare-fun b!76105 () Bool)

(declare-fun res!37945 () Formula!89)

(assert (=> b!76105 (= e!41116 res!37945)))

(assert (=> b!76105 true))

(declare-fun b!76106 () Bool)

(declare-fun res!37941 () Formula!89)

(assert (=> b!76106 (= e!41117 res!37941)))

(assert (=> b!76106 true))

(assert (= (and d!54885 c!18822) b!76102))

(assert (= (and d!54885 (not c!18822)) b!76105))

(assert (= (and d!54885 c!18821) b!76099))

(assert (= (and d!54885 (not c!18821)) b!76094))

(assert (= (and b!76104 c!18818) b!76101))

(assert (= (and b!76104 (not c!18818)) b!76098))

(assert (= (and b!76104 c!18817) b!76096))

(assert (= (and b!76104 (not c!18817)) b!76106))

(assert (= (and b!76097 c!18820) b!76093))

(assert (= (and b!76097 (not c!18820)) b!76100))

(assert (= (and b!76104 c!18823) b!76103))

(assert (= (and b!76104 (not c!18823)) b!76097))

(assert (= (and d!54885 c!18819) b!76095))

(assert (= (and d!54885 (not c!18819)) b!76104))

(declare-fun m!73248 () Bool)

(assert (=> b!76099 m!73248))

(declare-fun m!73250 () Bool)

(assert (=> d!54885 m!73250))

(declare-fun m!73252 () Bool)

(assert (=> b!76102 m!73252))

(assert (=> b!76025 d!54885))

(push 1)

(assert (not b!76054))

(assert (not b!76099))

(assert (not d!54885))

(assert (not b!76058))

(assert (not b!76102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

