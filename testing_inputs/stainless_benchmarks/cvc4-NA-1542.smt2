; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10426 () Bool)

(assert start!10426)

(declare-fun res!39820 () Bool)

(declare-fun e!42725 () Bool)

(assert (=> start!10426 (=> (not res!39820) (not e!42725))))

(declare-datatypes () ((Formula!111 (Implies!115 (lhs!1446 Formula!111) (rhs!1446 Formula!111)) (And!115 (lhs!1447 Formula!111) (rhs!1447 Formula!111)) (Or!115 (lhs!1448 Formula!111) (rhs!1448 Formula!111)) (Literal!109 (id!4972 (_ BitVec 32))) (Not!115 (f!4767 Formula!111)))))

(declare-fun formula!94 () Formula!111)

(declare-fun x$2!433 () Formula!111)

(assert (=> start!10426 (= res!39820 (and (not (is-And!115 formula!94)) (not (is-Or!115 formula!94)) (not (is-Implies!115 formula!94)) (or (not (is-Not!115 formula!94)) (not (is-And!115 (f!4767 formula!94)))) (or (not (is-Not!115 formula!94)) (not (is-Or!115 (f!4767 formula!94)))) (or (not (is-Not!115 formula!94)) (not (is-Implies!115 (f!4767 formula!94)))) (or (not (is-Not!115 formula!94)) (not (is-Not!115 (f!4767 formula!94)))) (is-Not!115 formula!94) (is-Literal!109 (f!4767 formula!94)) (= x$2!433 formula!94)))))

(assert (=> start!10426 e!42725))

(assert (=> start!10426 true))

(declare-fun b!79043 () Bool)

(declare-fun isNNF!0 (Formula!111) Bool)

(assert (=> b!79043 (= e!42725 (not (isNNF!0 x$2!433)))))

(assert (= (and start!10426 res!39820) b!79043))

(declare-fun m!73642 () Bool)

(assert (=> b!79043 m!73642))

(push 1)

(assert (not b!79043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!79092 () Bool)

(declare-fun e!42764 () Bool)

(declare-fun res!39856 () Bool)

(assert (=> b!79092 (= e!42764 res!39856)))

(assert (=> b!79092 true))

(declare-fun b!79093 () Bool)

(declare-fun e!42759 () Bool)

(declare-fun e!42756 () Bool)

(assert (=> b!79093 (= e!42759 e!42756)))

(declare-fun res!39863 () Bool)

(assert (=> b!79093 (=> (not res!39863) (not e!42756))))

(declare-fun lt!18163 () Bool)

(assert (=> b!79093 (= res!39863 lt!18163)))

(declare-fun b!79094 () Bool)

(declare-fun e!42765 () Formula!111)

(assert (=> b!79094 (= e!42765 (rhs!1447 x$2!433))))

(declare-fun b!79095 () Bool)

(declare-fun e!42758 () Bool)

(declare-fun lt!18165 () Bool)

(assert (=> b!79095 (= e!42758 lt!18165)))

(declare-fun b!79096 () Bool)

(assert (=> b!79096 (= e!42759 (or (and (is-Not!115 x$2!433) (is-Literal!109 (f!4767 x$2!433))) (not (is-Not!115 x$2!433))))))

(declare-fun b!79097 () Bool)

(declare-fun e!42755 () Bool)

(declare-fun res!39860 () Bool)

(assert (=> b!79097 (= e!42755 res!39860)))

(assert (=> b!79097 true))

(assert (=> b!79097 true))

(declare-fun b!79098 () Bool)

(declare-fun e!42761 () Formula!111)

(assert (=> b!79098 (= e!42761 (rhs!1448 x$2!433))))

(declare-fun b!79099 () Bool)

(declare-fun e!42760 () Bool)

(declare-fun res!39857 () Bool)

(assert (=> b!79099 (= e!42760 res!39857)))

(assert (=> b!79099 true))

(declare-fun b!79100 () Bool)

(declare-fun e!42767 () Bool)

(assert (=> b!79100 (= e!42767 lt!18165)))

(declare-fun b!79101 () Bool)

(declare-fun lt!18164 () Bool)

(assert (=> b!79101 (= e!42760 (isNNF!0 (ite lt!18164 (lhs!1447 x$2!433) (ite (is-Or!115 x$2!433) (lhs!1448 x$2!433) (lhs!1446 x$2!433)))))))

(declare-fun b!79102 () Bool)

(declare-fun e!42766 () Bool)

(declare-fun lt!18162 () Bool)

(assert (=> b!79102 (= e!42766 (and lt!18165 lt!18162))))

(declare-fun d!55003 () Bool)

(declare-fun c!20116 () Bool)

(assert (=> d!55003 (= c!20116 lt!18164)))

(declare-fun e!42754 () Bool)

(assert (=> d!55003 (= lt!18162 e!42754)))

(declare-fun c!20125 () Bool)

(declare-fun e!42763 () Bool)

(assert (=> d!55003 (= c!20125 e!42763)))

(declare-fun res!39861 () Bool)

(assert (=> d!55003 (=> res!39861 e!42763)))

(declare-fun lt!18168 () Bool)

(assert (=> d!55003 (= res!39861 lt!18168)))

(assert (=> d!55003 (= lt!18168 (and lt!18164 lt!18165))))

(assert (=> d!55003 (= lt!18165 e!42760)))

(declare-fun c!20122 () Bool)

(assert (=> d!55003 (= c!20122 (or lt!18164 (is-Or!115 x$2!433) (is-Implies!115 x$2!433)))))

(assert (=> d!55003 (= lt!18164 (is-And!115 x$2!433))))

(assert (=> d!55003 (= (isNNF!0 x$2!433) e!42766)))

(declare-fun b!79103 () Bool)

(declare-fun e!42757 () Bool)

(assert (=> b!79103 (= e!42763 e!42757)))

(declare-fun res!39858 () Bool)

(assert (=> b!79103 (=> (not res!39858) (not e!42757))))

(assert (=> b!79103 (= res!39858 (not lt!18164))))

(declare-fun lt!18167 () Bool)

(declare-fun lt!18166 () Bool)

(declare-fun b!79104 () Bool)

(assert (=> b!79104 (= e!42757 (or (and lt!18166 lt!18167) (and (not lt!18166) (is-Implies!115 x$2!433) lt!18167)))))

(assert (=> b!79104 (= lt!18167 e!42764)))

(declare-fun c!20120 () Bool)

(assert (=> b!79104 (= c!20120 (or lt!18166 (is-Implies!115 x$2!433)))))

(assert (=> b!79104 (= lt!18166 (is-Or!115 x$2!433))))

(declare-fun b!79105 () Bool)

(declare-fun res!39864 () Bool)

(assert (=> b!79105 (= e!42767 res!39864)))

(assert (=> b!79105 true))

(declare-fun b!79106 () Bool)

(declare-fun e!42762 () Bool)

(assert (=> b!79106 (= e!42762 e!42767)))

(declare-fun c!20118 () Bool)

(declare-fun lt!18170 () Bool)

(assert (=> b!79106 (= c!20118 (or lt!18170 (is-Implies!115 x$2!433)))))

(declare-fun b!79107 () Bool)

(assert (=> b!79107 (= e!42761 (rhs!1446 x$2!433))))

(declare-fun b!79108 () Bool)

(assert (=> b!79108 (= e!42756 e!42755)))

(declare-fun lt!18169 () Bool)

(declare-fun c!20119 () Bool)

(assert (=> b!79108 (= c!20119 (or (and lt!18169 lt!18163) (and (not lt!18169) (is-Implies!115 x$2!433) lt!18163)))))

(declare-fun b!79109 () Bool)

(assert (=> b!79109 (= e!42755 lt!18162)))

(declare-fun b!79110 () Bool)

(assert (=> b!79110 (= e!42754 (isNNF!0 e!42765))))

(declare-fun c!20124 () Bool)

(assert (=> b!79110 (= c!20124 lt!18168)))

(declare-fun b!79111 () Bool)

(declare-fun res!39859 () Bool)

(assert (=> b!79111 (= e!42754 res!39859)))

(assert (=> b!79111 true))

(declare-fun b!79112 () Bool)

(assert (=> b!79112 (= e!42764 lt!18165)))

(declare-fun b!79113 () Bool)

(assert (=> b!79113 (= e!42765 e!42761)))

(declare-fun c!20117 () Bool)

(assert (=> b!79113 (= c!20117 e!42762)))

(declare-fun res!39855 () Bool)

(assert (=> b!79113 (=> (not res!39855) (not e!42762))))

(assert (=> b!79113 (= res!39855 lt!18170)))

(assert (=> b!79113 (= lt!18170 (is-Or!115 x$2!433))))

(declare-fun b!79114 () Bool)

(declare-fun res!39862 () Bool)

(assert (=> b!79114 (= e!42758 res!39862)))

(assert (=> b!79114 true))

(declare-fun b!79115 () Bool)

(assert (=> b!79115 (= e!42766 e!42759)))

(declare-fun c!20123 () Bool)

(assert (=> b!79115 (= c!20123 (or lt!18169 (is-Implies!115 x$2!433)))))

(assert (=> b!79115 (= lt!18163 e!42758)))

(declare-fun c!20121 () Bool)

(assert (=> b!79115 (= c!20121 (or lt!18169 (is-Implies!115 x$2!433)))))

(assert (=> b!79115 (= lt!18169 (is-Or!115 x$2!433))))

(assert (= (and d!55003 c!20122) b!79101))

(assert (= (and d!55003 (not c!20122)) b!79099))

(assert (= (and d!55003 (not res!39861)) b!79103))

(assert (= (and b!79103 res!39858) b!79104))

(assert (= (and b!79104 c!20120) b!79112))

(assert (= (and b!79104 (not c!20120)) b!79092))

(assert (= (and b!79113 res!39855) b!79106))

(assert (= (and b!79106 c!20118) b!79100))

(assert (= (and b!79106 (not c!20118)) b!79105))

(assert (= (and b!79113 c!20117) b!79098))

(assert (= (and b!79113 (not c!20117)) b!79107))

(assert (= (and b!79110 c!20124) b!79094))

(assert (= (and b!79110 (not c!20124)) b!79113))

(assert (= (and d!55003 c!20125) b!79110))

(assert (= (and d!55003 (not c!20125)) b!79111))

(assert (= (and b!79115 c!20121) b!79095))

(assert (= (and b!79115 (not c!20121)) b!79114))

(assert (= (and b!79093 res!39863) b!79108))

(assert (= (and b!79108 c!20119) b!79109))

(assert (= (and b!79108 (not c!20119)) b!79097))

(assert (= (and b!79115 c!20123) b!79093))

(assert (= (and b!79115 (not c!20123)) b!79096))

(assert (= (and d!55003 c!20116) b!79102))

(assert (= (and d!55003 (not c!20116)) b!79115))

(declare-fun m!73644 () Bool)

(assert (=> b!79101 m!73644))

(declare-fun m!73646 () Bool)

(assert (=> b!79110 m!73646))

(assert (=> b!79043 d!55003))

(push 1)

(assert (not b!79101))

(assert (not b!79110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

