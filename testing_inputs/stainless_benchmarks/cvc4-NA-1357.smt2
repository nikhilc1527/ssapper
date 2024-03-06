; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9512 () Bool)

(assert start!9512)

(declare-fun res!34290 () Bool)

(declare-fun e!37991 () Bool)

(assert (=> start!9512 (=> (not res!34290) (not e!37991))))

(declare-datatypes () ((Formula!57 (And!62 (lhs!974 Formula!57) (rhs!974 Formula!57)) (Literal!56 (id!4837 Int)) (Implies!62 (lhs!975 Formula!57) (rhs!975 Formula!57)) (Or!62 (lhs!976 Formula!57) (rhs!976 Formula!57)) (Not!62 (f!4223 Formula!57)))))

(declare-fun formula!50 () Formula!57)

(assert (=> start!9512 (= res!34290 (and (not (is-And!62 formula!50)) (not (is-Or!62 formula!50)) (not (is-Implies!62 formula!50)) (or (not (is-Not!62 formula!50)) (not (is-And!62 (f!4223 formula!50)))) (or (not (is-Not!62 formula!50)) (not (is-Or!62 (f!4223 formula!50)))) (or (not (is-Not!62 formula!50)) (not (is-Implies!62 (f!4223 formula!50)))) (is-Not!62 formula!50) (is-Not!62 (f!4223 formula!50))))))

(assert (=> start!9512 e!37991))

(assert (=> start!9512 true))

(declare-fun b!70235 () Bool)

(declare-fun res!34291 () Bool)

(assert (=> b!70235 (=> (not res!34291) (not e!37991))))

(declare-fun x$2!375 () Formula!57)

(declare-fun nnf!1 (Formula!57) Formula!57)

(assert (=> b!70235 (= res!34291 (= x$2!375 (nnf!1 (f!4223 (f!4223 formula!50)))))))

(declare-fun b!70236 () Bool)

(declare-fun isNNF!1 (Formula!57) Bool)

(assert (=> b!70236 (= e!37991 (not (isNNF!1 x$2!375)))))

(assert (= (and start!9512 res!34290) b!70235))

(assert (= (and b!70235 res!34291) b!70236))

(declare-fun m!70579 () Bool)

(assert (=> b!70235 m!70579))

(declare-fun m!70581 () Bool)

(assert (=> b!70236 m!70581))

(push 1)

(assert (not b!70235))

(assert (not b!70236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70297 () Bool)

(declare-fun e!38025 () Formula!57)

(declare-fun lt!14929 () Formula!57)

(assert (=> b!70297 (= e!38025 lt!14929)))

(declare-fun b!70298 () Bool)

(declare-fun e!38024 () Formula!57)

(declare-fun res!34345 () Formula!57)

(assert (=> b!70298 (= e!38024 res!34345)))

(assert (=> b!70298 true))

(declare-fun b!70299 () Bool)

(declare-fun e!38036 () Formula!57)

(declare-fun res!34348 () Formula!57)

(assert (=> b!70299 (= e!38036 res!34348)))

(assert (=> b!70299 true))

(declare-fun b!70300 () Bool)

(declare-fun e!38027 () Formula!57)

(declare-fun res!34347 () Formula!57)

(assert (=> b!70300 (= e!38027 res!34347)))

(assert (=> b!70300 true))

(declare-fun b!70301 () Bool)

(declare-fun e!38028 () Formula!57)

(declare-fun lt!14919 () Formula!57)

(assert (=> b!70301 (= e!38028 lt!14919)))

(declare-fun b!70302 () Bool)

(declare-fun e!38034 () Formula!57)

(declare-fun lt!14922 () Formula!57)

(assert (=> b!70302 (= e!38034 lt!14922)))

(declare-fun b!70303 () Bool)

(declare-fun lt!14923 () Formula!57)

(assert (=> b!70303 (= e!38036 lt!14923)))

(declare-fun b!70304 () Bool)

(declare-fun lt!14925 () Formula!57)

(declare-fun lt!14913 () Formula!57)

(declare-fun lt!14918 () Bool)

(declare-fun e!38030 () Formula!57)

(assert (=> b!70304 (= e!38030 (ite lt!14918 (And!62 lt!14925 lt!14913) (ite (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50))))) lt!14925 (f!4223 (f!4223 formula!50)))))))

(declare-fun e!38032 () Formula!57)

(assert (=> b!70304 (= lt!14925 e!38032)))

(declare-fun c!16760 () Bool)

(assert (=> b!70304 (= c!16760 (or lt!14918 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70304 (= lt!14918 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))))))

(declare-fun b!70305 () Bool)

(declare-fun lt!14926 () Formula!57)

(assert (=> b!70305 (= e!38027 lt!14926)))

(declare-fun b!70306 () Bool)

(declare-fun e!38029 () Formula!57)

(declare-fun res!34342 () Formula!57)

(assert (=> b!70306 (= e!38029 res!34342)))

(assert (=> b!70306 true))

(declare-fun b!70307 () Bool)

(declare-fun e!38026 () Formula!57)

(declare-fun e!38033 () Formula!57)

(assert (=> b!70307 (= e!38026 e!38033)))

(declare-fun c!16756 () Bool)

(declare-fun lt!14916 () Bool)

(assert (=> b!70307 (= c!16756 lt!14916)))

(declare-fun lt!14921 () Formula!57)

(assert (=> b!70307 (= lt!14921 e!38036)))

(declare-fun c!16755 () Bool)

(assert (=> b!70307 (= c!16755 (or lt!14916 (and (not (is-Implies!62 (f!4223 (f!4223 formula!50)))) (or (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))))

(assert (=> b!70307 (= lt!14929 e!38027)))

(declare-fun c!16746 () Bool)

(assert (=> b!70307 (= c!16746 (or lt!14916 (is-Implies!62 (f!4223 (f!4223 formula!50))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70307 (= lt!14916 (is-Or!62 (f!4223 (f!4223 formula!50))))))

(declare-fun b!70308 () Bool)

(declare-fun e!38031 () Formula!57)

(declare-fun lt!14928 () Formula!57)

(assert (=> b!70308 (= e!38031 lt!14928)))

(declare-fun b!70309 () Bool)

(declare-fun res!34346 () Formula!57)

(assert (=> b!70309 (= e!38031 res!34346)))

(assert (=> b!70309 true))

(declare-fun b!70310 () Bool)

(declare-fun e!38022 () Formula!57)

(assert (=> b!70310 (= e!38022 (Or!62 lt!14922 lt!14928))))

(declare-fun b!70311 () Bool)

(assert (=> b!70311 (= e!38028 e!38022)))

(declare-fun c!16748 () Bool)

(declare-fun lt!14927 () Bool)

(assert (=> b!70311 (= c!16748 lt!14927)))

(assert (=> b!70311 (= lt!14928 e!38029)))

(declare-fun c!16751 () Bool)

(assert (=> b!70311 (= c!16751 (or lt!14927 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70311 (= lt!14922 e!38024)))

(declare-fun c!16758 () Bool)

(assert (=> b!70311 (= c!16758 (or lt!14927 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70311 (= lt!14927 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))))))

(declare-fun b!70312 () Bool)

(declare-fun e!38035 () Formula!57)

(declare-fun res!34343 () Formula!57)

(assert (=> b!70312 (= e!38035 res!34343)))

(assert (=> b!70312 true))

(declare-fun d!53660 () Bool)

(declare-fun lt!14924 () Formula!57)

(assert (=> d!53660 (isNNF!1 lt!14924)))

(assert (=> d!53660 (= lt!14924 e!38026)))

(declare-fun c!16750 () Bool)

(declare-fun lt!14915 () Bool)

(assert (=> d!53660 (= c!16750 lt!14915)))

(declare-fun e!38023 () Formula!57)

(assert (=> d!53660 (= lt!14923 e!38023)))

(declare-fun c!16759 () Bool)

(assert (=> d!53660 (= c!16759 (or lt!14915 (is-Or!62 (f!4223 (f!4223 formula!50))) (and (not (is-Implies!62 (f!4223 (f!4223 formula!50)))) (or (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))))

(assert (=> d!53660 (= lt!14926 e!38035)))

(declare-fun c!16752 () Bool)

(assert (=> d!53660 (= c!16752 (or lt!14915 (is-Or!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 formula!50))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> d!53660 (= lt!14915 (is-And!62 (f!4223 (f!4223 formula!50))))))

(assert (=> d!53660 (= (nnf!1 (f!4223 (f!4223 formula!50))) lt!14924)))

(declare-fun b!70313 () Bool)

(assert (=> b!70313 (= e!38026 (And!62 lt!14926 lt!14923))))

(declare-fun b!70314 () Bool)

(assert (=> b!70314 (= e!38029 lt!14921)))

(declare-fun b!70315 () Bool)

(declare-fun res!34350 () Formula!57)

(assert (=> b!70315 (= e!38032 res!34350)))

(assert (=> b!70315 true))

(assert (=> b!70315 true))

(declare-fun b!70316 () Bool)

(declare-fun res!34351 () Formula!57)

(assert (=> b!70316 (= e!38025 res!34351)))

(assert (=> b!70316 true))

(declare-fun b!70317 () Bool)

(assert (=> b!70317 (= e!38035 (nnf!1 (ite lt!14915 (lhs!974 (f!4223 (f!4223 formula!50))) (ite (is-Or!62 (f!4223 (f!4223 formula!50))) (lhs!976 (f!4223 (f!4223 formula!50))) (ite (is-Implies!62 (f!4223 (f!4223 formula!50))) (Or!62 (Not!62 (lhs!975 (f!4223 (f!4223 formula!50)))) (rhs!975 (f!4223 (f!4223 formula!50)))) (ite (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (Not!62 (lhs!974 (f!4223 (f!4223 (f!4223 formula!50))))) (ite (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (Not!62 (lhs!976 (f!4223 (f!4223 (f!4223 formula!50))))) (ite (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))) (lhs!975 (f!4223 (f!4223 (f!4223 formula!50)))) (f!4223 (f!4223 (f!4223 (f!4223 formula!50))))))))))))))

(declare-fun b!70318 () Bool)

(declare-fun lt!14914 () Formula!57)

(assert (=> b!70318 (= e!38032 lt!14914)))

(declare-fun b!70319 () Bool)

(assert (=> b!70319 (= e!38030 (And!62 lt!14914 lt!14913))))

(declare-fun b!70320 () Bool)

(declare-fun res!34344 () Formula!57)

(assert (=> b!70320 (= e!38023 res!34344)))

(assert (=> b!70320 true))

(declare-fun b!70321 () Bool)

(declare-fun res!34349 () Formula!57)

(assert (=> b!70321 (= e!38034 res!34349)))

(assert (=> b!70321 true))

(declare-fun b!70322 () Bool)

(assert (=> b!70322 (= e!38022 e!38030)))

(declare-fun c!16753 () Bool)

(declare-fun lt!14920 () Bool)

(assert (=> b!70322 (= c!16753 lt!14920)))

(assert (=> b!70322 (= lt!14913 e!38031)))

(declare-fun c!16749 () Bool)

(assert (=> b!70322 (= c!16749 (or lt!14920 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70322 (= lt!14914 e!38034)))

(declare-fun c!16747 () Bool)

(assert (=> b!70322 (= c!16747 (or lt!14920 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70322 (= lt!14920 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))))))

(declare-fun b!70323 () Bool)

(assert (=> b!70323 (= e!38033 e!38028)))

(declare-fun c!16757 () Bool)

(declare-fun lt!14917 () Bool)

(assert (=> b!70323 (= c!16757 lt!14917)))

(assert (=> b!70323 (= lt!14919 e!38025)))

(declare-fun c!16754 () Bool)

(assert (=> b!70323 (= c!16754 (or lt!14917 (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Implies!62 (f!4223 (f!4223 (f!4223 formula!50))))) (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Not!62 (f!4223 (f!4223 (f!4223 formula!50)))))))))

(assert (=> b!70323 (= lt!14917 (is-Implies!62 (f!4223 (f!4223 formula!50))))))

(declare-fun b!70324 () Bool)

(assert (=> b!70324 (= e!38033 (Or!62 lt!14929 lt!14921))))

(declare-fun b!70325 () Bool)

(assert (=> b!70325 (= e!38024 lt!14919)))

(declare-fun b!70326 () Bool)

(assert (=> b!70326 (= e!38023 (nnf!1 (ite lt!14915 (rhs!974 (f!4223 (f!4223 formula!50))) (ite (is-Or!62 (f!4223 (f!4223 formula!50))) (rhs!976 (f!4223 (f!4223 formula!50))) (ite (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-And!62 (f!4223 (f!4223 (f!4223 formula!50))))) (Not!62 (rhs!974 (f!4223 (f!4223 (f!4223 formula!50))))) (ite (and (is-Not!62 (f!4223 (f!4223 formula!50))) (is-Or!62 (f!4223 (f!4223 (f!4223 formula!50))))) (Not!62 (rhs!976 (f!4223 (f!4223 (f!4223 formula!50))))) (Not!62 (rhs!975 (f!4223 (f!4223 (f!4223 formula!50)))))))))))))

(assert (= (and d!53660 c!16752) b!70317))

(assert (= (and d!53660 (not c!16752)) b!70312))

(assert (= (and d!53660 c!16759) b!70326))

(assert (= (and d!53660 (not c!16759)) b!70320))

(assert (= (and b!70307 c!16746) b!70305))

(assert (= (and b!70307 (not c!16746)) b!70300))

(assert (= (and b!70307 c!16755) b!70303))

(assert (= (and b!70307 (not c!16755)) b!70299))

(assert (= (and b!70323 c!16754) b!70297))

(assert (= (and b!70323 (not c!16754)) b!70316))

(assert (= (and b!70311 c!16758) b!70325))

(assert (= (and b!70311 (not c!16758)) b!70298))

(assert (= (and b!70311 c!16751) b!70314))

(assert (= (and b!70311 (not c!16751)) b!70306))

(assert (= (and b!70322 c!16747) b!70302))

(assert (= (and b!70322 (not c!16747)) b!70321))

(assert (= (and b!70322 c!16749) b!70308))

(assert (= (and b!70322 (not c!16749)) b!70309))

(assert (= (and b!70304 c!16760) b!70318))

(assert (= (and b!70304 (not c!16760)) b!70315))

(assert (= (and b!70322 c!16753) b!70319))

(assert (= (and b!70322 (not c!16753)) b!70304))

(assert (= (and b!70311 c!16748) b!70310))

(assert (= (and b!70311 (not c!16748)) b!70322))

(assert (= (and b!70323 c!16757) b!70301))

(assert (= (and b!70323 (not c!16757)) b!70311))

(assert (= (and b!70307 c!16756) b!70324))

(assert (= (and b!70307 (not c!16756)) b!70323))

(assert (= (and d!53660 c!16750) b!70313))

(assert (= (and d!53660 (not c!16750)) b!70307))

(declare-fun m!70583 () Bool)

(assert (=> d!53660 m!70583))

(declare-fun m!70585 () Bool)

(assert (=> b!70317 m!70585))

(declare-fun m!70587 () Bool)

(assert (=> b!70326 m!70587))

(assert (=> b!70235 d!53660))

(declare-fun b!70341 () Bool)

(declare-fun e!38045 () Bool)

(declare-fun res!34365 () Bool)

(assert (=> b!70341 (= e!38045 res!34365)))

(assert (=> b!70341 true))

(assert (=> b!70341 true))

(declare-fun d!53662 () Bool)

(declare-fun c!16768 () Bool)

(declare-fun lt!14936 () Bool)

(assert (=> d!53662 (= c!16768 (or lt!14936 (is-Or!62 x$2!375)))))

(declare-fun lt!14937 () Bool)

(declare-fun lt!14938 () Bool)

(assert (=> d!53662 (= lt!14937 (and lt!14936 lt!14938))))

(declare-fun e!38048 () Bool)

(assert (=> d!53662 (= lt!14938 e!38048)))

(declare-fun c!16769 () Bool)

(assert (=> d!53662 (= c!16769 (or lt!14936 (is-Or!62 x$2!375)))))

(assert (=> d!53662 (= lt!14936 (is-And!62 x$2!375))))

(declare-fun e!38046 () Bool)

(assert (=> d!53662 (= (isNNF!1 x$2!375) e!38046)))

(declare-fun b!70342 () Bool)

(declare-fun e!38047 () Bool)

(assert (=> b!70342 (= e!38046 e!38047)))

(declare-fun res!34366 () Bool)

(assert (=> b!70342 (=> (not res!34366) (not e!38047))))

(assert (=> b!70342 (= res!34366 lt!14938)))

(declare-fun b!70343 () Bool)

(assert (=> b!70343 (= e!38047 e!38045)))

(declare-fun c!16767 () Bool)

(assert (=> b!70343 (= c!16767 (or lt!14937 (and (not lt!14936) (is-Or!62 x$2!375) lt!14938)))))

(declare-fun b!70344 () Bool)

(assert (=> b!70344 (= e!38045 (isNNF!1 (ite lt!14937 (rhs!974 x$2!375) (rhs!976 x$2!375))))))

(declare-fun b!70345 () Bool)

(assert (=> b!70345 (= e!38046 (and (not (is-Implies!62 x$2!375)) (or (and (is-Not!62 x$2!375) (is-Literal!56 (f!4223 x$2!375))) (not (is-Not!62 x$2!375)))))))

(declare-fun b!70346 () Bool)

(assert (=> b!70346 (= e!38048 (isNNF!1 (ite lt!14936 (lhs!974 x$2!375) (lhs!976 x$2!375))))))

(declare-fun b!70347 () Bool)

(declare-fun res!34364 () Bool)

(assert (=> b!70347 (= e!38048 res!34364)))

(assert (=> b!70347 true))

(assert (= (and d!53662 c!16769) b!70346))

(assert (= (and d!53662 (not c!16769)) b!70347))

(assert (= (and b!70342 res!34366) b!70343))

(assert (= (and b!70343 c!16767) b!70344))

(assert (= (and b!70343 (not c!16767)) b!70341))

(assert (= (and d!53662 c!16768) b!70342))

(assert (= (and d!53662 (not c!16768)) b!70345))

(declare-fun m!70589 () Bool)

(assert (=> b!70344 m!70589))

(declare-fun m!70591 () Bool)

(assert (=> b!70346 m!70591))

(assert (=> b!70236 d!53662))

(push 1)

(assert (not b!70317))

(assert (not d!53660))

(assert (not b!70326))

(assert (not b!70344))

(assert (not b!70346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

