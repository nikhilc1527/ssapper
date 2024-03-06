; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9334 () Bool)

(assert start!9334)

(declare-fun b!66870 () Bool)

(declare-fun res!31882 () Bool)

(declare-fun e!36214 () Bool)

(assert (=> b!66870 (=> (not res!31882) (not e!36214))))

(declare-fun inductVal!252 () Bool)

(declare-datatypes () ((Formula!29 (And!34 (lhs!890 Formula!29) (rhs!890 Formula!29)) (Literal!28 (id!4809 Int)) (Implies!34 (lhs!891 Formula!29) (rhs!891 Formula!29)) (Or!34 (lhs!892 Formula!29) (rhs!892 Formula!29)) (Not!34 (f!4141 Formula!29)))))

(declare-fun f!3724 () Formula!29)

(declare-fun simplifyPreservesNNF!0 (Formula!29) Bool)

(assert (=> b!66870 (= res!31882 (= inductVal!252 (simplifyPreservesNNF!0 (rhs!890 f!3724))))))

(declare-fun res!31879 () Bool)

(assert (=> start!9334 (=> (not res!31879) (not e!36214))))

(declare-fun isNNF!1 (Formula!29) Bool)

(assert (=> start!9334 (= res!31879 (isNNF!1 f!3724))))

(assert (=> start!9334 e!36214))

(assert (=> start!9334 true))

(declare-fun b!66871 () Bool)

(declare-fun res!31880 () Bool)

(assert (=> b!66871 (=> (not res!31880) (not e!36214))))

(declare-fun inductVal!260 () Bool)

(assert (=> b!66871 (= res!31880 (= inductVal!260 (simplifyPreservesNNF!0 (lhs!890 f!3724))))))

(declare-fun b!66872 () Bool)

(declare-fun simplify!1 (Formula!29) Formula!29)

(assert (=> b!66872 (= e!36214 (not (isNNF!1 (simplify!1 f!3724))))))

(declare-fun b!66869 () Bool)

(declare-fun res!31881 () Bool)

(assert (=> b!66869 (=> (not res!31881) (not e!36214))))

(assert (=> b!66869 (= res!31881 (is-And!34 f!3724))))

(assert (= (and start!9334 res!31879) b!66869))

(assert (= (and b!66869 res!31881) b!66870))

(assert (= (and b!66870 res!31882) b!66871))

(assert (= (and b!66871 res!31880) b!66872))

(declare-fun m!69781 () Bool)

(assert (=> b!66870 m!69781))

(declare-fun m!69783 () Bool)

(assert (=> start!9334 m!69783))

(declare-fun m!69785 () Bool)

(assert (=> b!66871 m!69785))

(declare-fun m!69787 () Bool)

(assert (=> b!66872 m!69787))

(assert (=> b!66872 m!69787))

(declare-fun m!69789 () Bool)

(assert (=> b!66872 m!69789))

(push 1)

(assert (not b!66872))

(assert (not b!66871))

(assert (not start!9334))

(assert (not b!66870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53446 () Bool)

(declare-fun c!15270 () Bool)

(declare-fun lt!13188 () Bool)

(assert (=> d!53446 (= c!15270 (or lt!13188 (is-Or!34 (simplify!1 f!3724))))))

(declare-fun lt!13187 () Bool)

(declare-fun lt!13189 () Bool)

(assert (=> d!53446 (= lt!13187 (and lt!13188 lt!13189))))

(declare-fun e!36225 () Bool)

(assert (=> d!53446 (= lt!13189 e!36225)))

(declare-fun c!15272 () Bool)

(assert (=> d!53446 (= c!15272 (or lt!13188 (is-Or!34 (simplify!1 f!3724))))))

(assert (=> d!53446 (= lt!13188 (is-And!34 (simplify!1 f!3724)))))

(declare-fun e!36224 () Bool)

(assert (=> d!53446 (= (isNNF!1 (simplify!1 f!3724)) e!36224)))

(declare-fun b!66887 () Bool)

(declare-fun e!36226 () Bool)

(declare-fun res!31896 () Bool)

(assert (=> b!66887 (= e!36226 res!31896)))

(assert (=> b!66887 true))

(assert (=> b!66887 true))

(declare-fun b!66888 () Bool)

(declare-fun e!36223 () Bool)

(assert (=> b!66888 (= e!36223 e!36226)))

(declare-fun c!15271 () Bool)

(assert (=> b!66888 (= c!15271 (or lt!13187 (and (not lt!13188) (is-Or!34 (simplify!1 f!3724)) lt!13189)))))

(declare-fun b!66889 () Bool)

(assert (=> b!66889 (= e!36226 (isNNF!1 (ite lt!13187 (rhs!890 (simplify!1 f!3724)) (rhs!892 (simplify!1 f!3724)))))))

(declare-fun b!66890 () Bool)

(assert (=> b!66890 (= e!36224 (and (not (is-Implies!34 (simplify!1 f!3724))) (or (and (is-Not!34 (simplify!1 f!3724)) (is-Literal!28 (f!4141 (simplify!1 f!3724)))) (not (is-Not!34 (simplify!1 f!3724))))))))

(declare-fun b!66891 () Bool)

(assert (=> b!66891 (= e!36225 (isNNF!1 (ite lt!13188 (lhs!890 (simplify!1 f!3724)) (lhs!892 (simplify!1 f!3724)))))))

(declare-fun b!66892 () Bool)

(declare-fun res!31897 () Bool)

(assert (=> b!66892 (= e!36225 res!31897)))

(assert (=> b!66892 true))

(declare-fun b!66893 () Bool)

(assert (=> b!66893 (= e!36224 e!36223)))

(declare-fun res!31895 () Bool)

(assert (=> b!66893 (=> (not res!31895) (not e!36223))))

(assert (=> b!66893 (= res!31895 lt!13189)))

(assert (= (and d!53446 c!15272) b!66891))

(assert (= (and d!53446 (not c!15272)) b!66892))

(assert (= (and b!66893 res!31895) b!66888))

(assert (= (and b!66888 c!15271) b!66889))

(assert (= (and b!66888 (not c!15271)) b!66887))

(assert (= (and d!53446 c!15270) b!66893))

(assert (= (and d!53446 (not c!15270)) b!66890))

(declare-fun m!69791 () Bool)

(assert (=> b!66889 m!69791))

(declare-fun m!69793 () Bool)

(assert (=> b!66891 m!69793))

(assert (=> b!66872 d!53446))

(declare-fun d!53448 () Bool)

(declare-fun lt!13215 () Formula!29)

(declare-fun isSimplified!1 (Formula!29) Bool)

(assert (=> d!53448 (isSimplified!1 lt!13215)))

(declare-fun e!36241 () Formula!29)

(assert (=> d!53448 (= lt!13215 e!36241)))

(declare-fun c!15292 () Bool)

(declare-fun lt!13213 () Bool)

(assert (=> d!53448 (= c!15292 lt!13213)))

(declare-fun lt!13212 () Formula!29)

(declare-fun e!36247 () Formula!29)

(assert (=> d!53448 (= lt!13212 e!36247)))

(declare-fun c!15290 () Bool)

(assert (=> d!53448 (= c!15290 (or lt!13213 (is-Or!34 f!3724) (is-Implies!34 f!3724)))))

(declare-fun lt!13209 () Formula!29)

(declare-fun e!36243 () Formula!29)

(assert (=> d!53448 (= lt!13209 e!36243)))

(declare-fun c!15293 () Bool)

(assert (=> d!53448 (= c!15293 (or lt!13213 (is-Or!34 f!3724) (is-Implies!34 f!3724) (is-Not!34 f!3724)))))

(assert (=> d!53448 (= lt!13213 (is-And!34 f!3724))))

(assert (=> d!53448 (= (simplify!1 f!3724) lt!13215)))

(declare-fun lt!13211 () Formula!29)

(declare-fun b!66922 () Bool)

(declare-fun lt!13214 () Bool)

(declare-fun lt!13208 () Formula!29)

(declare-fun e!36242 () Formula!29)

(assert (=> b!66922 (= e!36242 (ite lt!13214 (Or!34 (Not!34 lt!13211) lt!13208) (ite (is-Not!34 f!3724) (Not!34 lt!13211) f!3724)))))

(declare-fun e!36245 () Formula!29)

(assert (=> b!66922 (= lt!13211 e!36245)))

(declare-fun c!15289 () Bool)

(assert (=> b!66922 (= c!15289 (or lt!13214 (is-Not!34 f!3724)))))

(assert (=> b!66922 (= lt!13214 (is-Implies!34 f!3724))))

(declare-fun b!66923 () Bool)

(assert (=> b!66923 (= e!36243 (simplify!1 (ite lt!13213 (lhs!890 f!3724) (ite (is-Or!34 f!3724) (lhs!892 f!3724) (ite (is-Implies!34 f!3724) (lhs!891 f!3724) (f!4141 f!3724))))))))

(declare-fun b!66924 () Bool)

(assert (=> b!66924 (= e!36247 (simplify!1 (ite lt!13213 (rhs!890 f!3724) (ite (is-Or!34 f!3724) (rhs!892 f!3724) (rhs!891 f!3724)))))))

(declare-fun b!66925 () Bool)

(declare-fun res!31927 () Formula!29)

(assert (=> b!66925 (= e!36243 res!31927)))

(assert (=> b!66925 true))

(declare-fun b!66926 () Bool)

(declare-fun lt!13210 () Formula!29)

(assert (=> b!66926 (= e!36242 (Or!34 lt!13210 lt!13208))))

(declare-fun b!66927 () Bool)

(assert (=> b!66927 (= e!36241 (And!34 lt!13209 lt!13212))))

(declare-fun b!66928 () Bool)

(declare-fun e!36246 () Formula!29)

(declare-fun res!31925 () Formula!29)

(assert (=> b!66928 (= e!36246 res!31925)))

(assert (=> b!66928 true))

(declare-fun b!66929 () Bool)

(declare-fun e!36244 () Formula!29)

(declare-fun res!31924 () Formula!29)

(assert (=> b!66929 (= e!36244 res!31924)))

(assert (=> b!66929 true))

(declare-fun b!66930 () Bool)

(assert (=> b!66930 (= e!36245 lt!13210)))

(declare-fun b!66931 () Bool)

(assert (=> b!66931 (= e!36244 lt!13212)))

(declare-fun b!66932 () Bool)

(declare-fun res!31923 () Formula!29)

(assert (=> b!66932 (= e!36247 res!31923)))

(assert (=> b!66932 true))

(declare-fun b!66933 () Bool)

(declare-fun res!31926 () Formula!29)

(assert (=> b!66933 (= e!36245 res!31926)))

(assert (=> b!66933 true))

(assert (=> b!66933 true))

(declare-fun b!66934 () Bool)

(assert (=> b!66934 (= e!36246 lt!13209)))

(declare-fun b!66935 () Bool)

(assert (=> b!66935 (= e!36241 e!36242)))

(declare-fun c!15287 () Bool)

(declare-fun lt!13216 () Bool)

(assert (=> b!66935 (= c!15287 lt!13216)))

(assert (=> b!66935 (= lt!13208 e!36244)))

(declare-fun c!15288 () Bool)

(assert (=> b!66935 (= c!15288 (or lt!13216 (is-Implies!34 f!3724)))))

(assert (=> b!66935 (= lt!13210 e!36246)))

(declare-fun c!15291 () Bool)

(assert (=> b!66935 (= c!15291 (or lt!13216 (is-Implies!34 f!3724) (is-Not!34 f!3724)))))

(assert (=> b!66935 (= lt!13216 (is-Or!34 f!3724))))

(assert (= (and d!53448 c!15293) b!66923))

(assert (= (and d!53448 (not c!15293)) b!66925))

(assert (= (and d!53448 c!15290) b!66924))

(assert (= (and d!53448 (not c!15290)) b!66932))

(assert (= (and b!66935 c!15291) b!66934))

(assert (= (and b!66935 (not c!15291)) b!66928))

(assert (= (and b!66935 c!15288) b!66931))

(assert (= (and b!66935 (not c!15288)) b!66929))

(assert (= (and b!66922 c!15289) b!66930))

(assert (= (and b!66922 (not c!15289)) b!66933))

(assert (= (and b!66935 c!15287) b!66926))

(assert (= (and b!66935 (not c!15287)) b!66922))

(assert (= (and d!53448 c!15292) b!66927))

(assert (= (and d!53448 (not c!15292)) b!66935))

(declare-fun m!69795 () Bool)

(assert (=> d!53448 m!69795))

(declare-fun m!69797 () Bool)

(assert (=> b!66923 m!69797))

(declare-fun m!69799 () Bool)

(assert (=> b!66924 m!69799))

(assert (=> b!66872 d!53448))

(declare-fun b!66968 () Bool)

(declare-fun e!36270 () Formula!29)

(assert (=> b!66968 (= e!36270 (simplify!1 (lhs!890 f!3724)))))

(declare-fun b!66969 () Bool)

(declare-fun e!36267 () Bool)

(declare-fun lt!13233 () Bool)

(assert (=> b!66969 (= e!36267 (simplifyPreservesNNF!0 (ite lt!13233 (rhs!890 (lhs!890 f!3724)) (ite (is-Implies!34 (lhs!890 f!3724)) (rhs!891 (lhs!890 f!3724)) (ite (is-Or!34 (lhs!890 f!3724)) (rhs!892 (lhs!890 f!3724)) (f!4141 (lhs!890 f!3724)))))))))

(declare-fun b!66970 () Bool)

(declare-fun res!31968 () Bool)

(assert (=> b!66970 (= e!36267 res!31968)))

(assert (=> b!66970 true))

(declare-fun b!66971 () Bool)

(declare-fun e!36268 () Bool)

(declare-fun lt!13230 () Formula!29)

(assert (=> b!66971 (= e!36268 (isNNF!1 lt!13230))))

(declare-fun b!66972 () Bool)

(declare-fun e!36271 () Formula!29)

(declare-fun res!31967 () Formula!29)

(assert (=> b!66972 (= e!36271 res!31967)))

(assert (=> b!66972 true))

(declare-fun b!66973 () Bool)

(declare-fun res!31970 () Formula!29)

(assert (=> b!66973 (= e!36270 res!31970)))

(assert (=> b!66973 true))

(declare-fun d!53450 () Bool)

(declare-fun e!36266 () Bool)

(assert (=> d!53450 e!36266))

(declare-fun c!15317 () Bool)

(assert (=> d!53450 (= c!15317 (or lt!13233 (is-Literal!28 (lhs!890 f!3724))))))

(declare-fun lt!13232 () Formula!29)

(assert (=> d!53450 (= lt!13232 e!36271)))

(declare-fun c!15314 () Bool)

(assert (=> d!53450 (= c!15314 (or lt!13233 (is-Literal!28 (lhs!890 f!3724))))))

(declare-fun lt!13234 () Bool)

(declare-fun e!36264 () Bool)

(assert (=> d!53450 (= lt!13234 e!36264)))

(declare-fun c!15316 () Bool)

(assert (=> d!53450 (= c!15316 (or lt!13233 (and (not (is-Literal!28 (lhs!890 f!3724))) (or (is-Implies!34 (lhs!890 f!3724)) (is-Or!34 (lhs!890 f!3724))))))))

(declare-fun lt!13231 () Bool)

(assert (=> d!53450 (= lt!13231 e!36267)))

(declare-fun c!15315 () Bool)

(assert (=> d!53450 (= c!15315 (or lt!13233 (not (is-Literal!28 (lhs!890 f!3724)))))))

(assert (=> d!53450 (= lt!13233 (is-And!34 (lhs!890 f!3724)))))

(assert (=> d!53450 (isNNF!1 (lhs!890 f!3724))))

(assert (=> d!53450 (= (simplifyPreservesNNF!0 (lhs!890 f!3724)) true)))

(declare-fun b!66974 () Bool)

(assert (=> b!66974 (= e!36271 (simplify!1 (lhs!890 f!3724)))))

(declare-fun b!66975 () Bool)

(declare-fun e!36265 () Bool)

(assert (=> b!66975 (= e!36265 e!36268)))

(declare-fun c!15311 () Bool)

(declare-fun lt!13229 () Bool)

(assert (=> b!66975 (= c!15311 (or lt!13229 (and (not lt!13229) (is-Or!34 (lhs!890 f!3724)))))))

(declare-fun b!66976 () Bool)

(assert (=> b!66976 (= e!36266 e!36265)))

(declare-fun c!15313 () Bool)

(assert (=> b!66976 (= c!15313 (or lt!13229 (is-Or!34 (lhs!890 f!3724))))))

(assert (=> b!66976 (= lt!13230 e!36270)))

(declare-fun c!15312 () Bool)

(assert (=> b!66976 (= c!15312 (or lt!13229 (is-Or!34 (lhs!890 f!3724))))))

(assert (=> b!66976 (= lt!13229 (is-Implies!34 (lhs!890 f!3724)))))

(declare-fun b!66977 () Bool)

(declare-fun e!36269 () Bool)

(declare-fun res!31971 () Bool)

(assert (=> b!66977 (= e!36269 res!31971)))

(assert (=> b!66977 true))

(declare-fun b!66978 () Bool)

(assert (=> b!66978 (= e!36266 e!36269)))

(declare-fun c!15310 () Bool)

(assert (=> b!66978 (= c!15310 (or lt!13233 (and (not lt!13233) (is-Literal!28 (lhs!890 f!3724)))))))

(declare-fun b!66979 () Bool)

(assert (=> b!66979 (= e!36264 (simplifyPreservesNNF!0 (ite lt!13233 (lhs!890 (lhs!890 f!3724)) (ite (is-Implies!34 (lhs!890 f!3724)) (lhs!891 (lhs!890 f!3724)) (lhs!892 (lhs!890 f!3724))))))))

(declare-fun b!66980 () Bool)

(assert (=> b!66980 (= e!36269 (isNNF!1 lt!13232))))

(declare-fun b!66981 () Bool)

(declare-fun res!31969 () Bool)

(assert (=> b!66981 (= e!36264 res!31969)))

(assert (=> b!66981 true))

(declare-fun b!66982 () Bool)

(assert (=> b!66982 (= e!36265 (isNNF!1 (simplify!1 (lhs!890 f!3724))))))

(declare-fun b!66983 () Bool)

(declare-fun res!31972 () Bool)

(assert (=> b!66983 (= e!36268 res!31972)))

(assert (=> b!66983 true))

(assert (=> b!66983 true))

(assert (= (and d!53450 c!15315) b!66969))

(assert (= (and d!53450 (not c!15315)) b!66970))

(assert (= (and d!53450 c!15316) b!66979))

(assert (= (and d!53450 (not c!15316)) b!66981))

(assert (= (and d!53450 c!15314) b!66974))

(assert (= (and d!53450 (not c!15314)) b!66972))

(assert (= (and b!66978 c!15310) b!66980))

(assert (= (and b!66978 (not c!15310)) b!66977))

(assert (= (and b!66976 c!15312) b!66968))

(assert (= (and b!66976 (not c!15312)) b!66973))

(assert (= (and b!66975 c!15311) b!66971))

(assert (= (and b!66975 (not c!15311)) b!66983))

(assert (= (and b!66976 c!15313) b!66975))

(assert (= (and b!66976 (not c!15313)) b!66982))

(assert (= (and d!53450 c!15317) b!66978))

(assert (= (and d!53450 (not c!15317)) b!66976))

(declare-fun m!69801 () Bool)

(assert (=> b!66982 m!69801))

(assert (=> b!66982 m!69801))

(declare-fun m!69803 () Bool)

(assert (=> b!66982 m!69803))

(declare-fun m!69805 () Bool)

(assert (=> b!66980 m!69805))

(declare-fun m!69807 () Bool)

(assert (=> d!53450 m!69807))

(declare-fun m!69809 () Bool)

(assert (=> b!66979 m!69809))

(assert (=> b!66968 m!69801))

(assert (=> b!66974 m!69801))

(declare-fun m!69811 () Bool)

(assert (=> b!66969 m!69811))

(declare-fun m!69813 () Bool)

(assert (=> b!66971 m!69813))

(assert (=> b!66871 d!53450))

(declare-fun d!53452 () Bool)

(declare-fun c!15318 () Bool)

(declare-fun lt!13236 () Bool)

(assert (=> d!53452 (= c!15318 (or lt!13236 (is-Or!34 f!3724)))))

(declare-fun lt!13235 () Bool)

(declare-fun lt!13237 () Bool)

(assert (=> d!53452 (= lt!13235 (and lt!13236 lt!13237))))

(declare-fun e!36274 () Bool)

(assert (=> d!53452 (= lt!13237 e!36274)))

(declare-fun c!15320 () Bool)

(assert (=> d!53452 (= c!15320 (or lt!13236 (is-Or!34 f!3724)))))

(assert (=> d!53452 (= lt!13236 (is-And!34 f!3724))))

(declare-fun e!36273 () Bool)

(assert (=> d!53452 (= (isNNF!1 f!3724) e!36273)))

(declare-fun b!66984 () Bool)

(declare-fun e!36275 () Bool)

(declare-fun res!31974 () Bool)

(assert (=> b!66984 (= e!36275 res!31974)))

(assert (=> b!66984 true))

(assert (=> b!66984 true))

(declare-fun b!66985 () Bool)

(declare-fun e!36272 () Bool)

(assert (=> b!66985 (= e!36272 e!36275)))

(declare-fun c!15319 () Bool)

(assert (=> b!66985 (= c!15319 (or lt!13235 (and (not lt!13236) (is-Or!34 f!3724) lt!13237)))))

(declare-fun b!66986 () Bool)

(assert (=> b!66986 (= e!36275 (isNNF!1 (ite lt!13235 (rhs!890 f!3724) (rhs!892 f!3724))))))

(declare-fun b!66987 () Bool)

(assert (=> b!66987 (= e!36273 (and (not (is-Implies!34 f!3724)) (or (and (is-Not!34 f!3724) (is-Literal!28 (f!4141 f!3724))) (not (is-Not!34 f!3724)))))))

(declare-fun b!66988 () Bool)

(assert (=> b!66988 (= e!36274 (isNNF!1 (ite lt!13236 (lhs!890 f!3724) (lhs!892 f!3724))))))

(declare-fun b!66989 () Bool)

(declare-fun res!31975 () Bool)

(assert (=> b!66989 (= e!36274 res!31975)))

(assert (=> b!66989 true))

(declare-fun b!66990 () Bool)

(assert (=> b!66990 (= e!36273 e!36272)))

(declare-fun res!31973 () Bool)

(assert (=> b!66990 (=> (not res!31973) (not e!36272))))

(assert (=> b!66990 (= res!31973 lt!13237)))

(assert (= (and d!53452 c!15320) b!66988))

(assert (= (and d!53452 (not c!15320)) b!66989))

(assert (= (and b!66990 res!31973) b!66985))

(assert (= (and b!66985 c!15319) b!66986))

(assert (= (and b!66985 (not c!15319)) b!66984))

(assert (= (and d!53452 c!15318) b!66990))

(assert (= (and d!53452 (not c!15318)) b!66987))

(declare-fun m!69815 () Bool)

(assert (=> b!66986 m!69815))

(declare-fun m!69817 () Bool)

(assert (=> b!66988 m!69817))

(assert (=> start!9334 d!53452))

(declare-fun b!66991 () Bool)

(declare-fun e!36282 () Formula!29)

(assert (=> b!66991 (= e!36282 (simplify!1 (rhs!890 f!3724)))))

(declare-fun b!66992 () Bool)

(declare-fun e!36279 () Bool)

(declare-fun lt!13242 () Bool)

(assert (=> b!66992 (= e!36279 (simplifyPreservesNNF!0 (ite lt!13242 (rhs!890 (rhs!890 f!3724)) (ite (is-Implies!34 (rhs!890 f!3724)) (rhs!891 (rhs!890 f!3724)) (ite (is-Or!34 (rhs!890 f!3724)) (rhs!892 (rhs!890 f!3724)) (f!4141 (rhs!890 f!3724)))))))))

(declare-fun b!66993 () Bool)

(declare-fun res!31977 () Bool)

(assert (=> b!66993 (= e!36279 res!31977)))

(assert (=> b!66993 true))

(declare-fun b!66994 () Bool)

(declare-fun e!36280 () Bool)

(declare-fun lt!13239 () Formula!29)

(assert (=> b!66994 (= e!36280 (isNNF!1 lt!13239))))

(declare-fun b!66995 () Bool)

(declare-fun e!36283 () Formula!29)

(declare-fun res!31976 () Formula!29)

(assert (=> b!66995 (= e!36283 res!31976)))

(assert (=> b!66995 true))

(declare-fun b!66996 () Bool)

(declare-fun res!31979 () Formula!29)

(assert (=> b!66996 (= e!36282 res!31979)))

(assert (=> b!66996 true))

(declare-fun d!53454 () Bool)

(declare-fun e!36278 () Bool)

(assert (=> d!53454 e!36278))

(declare-fun c!15328 () Bool)

(assert (=> d!53454 (= c!15328 (or lt!13242 (is-Literal!28 (rhs!890 f!3724))))))

(declare-fun lt!13241 () Formula!29)

(assert (=> d!53454 (= lt!13241 e!36283)))

(declare-fun c!15325 () Bool)

(assert (=> d!53454 (= c!15325 (or lt!13242 (is-Literal!28 (rhs!890 f!3724))))))

(declare-fun lt!13243 () Bool)

(declare-fun e!36276 () Bool)

(assert (=> d!53454 (= lt!13243 e!36276)))

(declare-fun c!15327 () Bool)

(assert (=> d!53454 (= c!15327 (or lt!13242 (and (not (is-Literal!28 (rhs!890 f!3724))) (or (is-Implies!34 (rhs!890 f!3724)) (is-Or!34 (rhs!890 f!3724))))))))

(declare-fun lt!13240 () Bool)

(assert (=> d!53454 (= lt!13240 e!36279)))

(declare-fun c!15326 () Bool)

(assert (=> d!53454 (= c!15326 (or lt!13242 (not (is-Literal!28 (rhs!890 f!3724)))))))

(assert (=> d!53454 (= lt!13242 (is-And!34 (rhs!890 f!3724)))))

(assert (=> d!53454 (isNNF!1 (rhs!890 f!3724))))

(assert (=> d!53454 (= (simplifyPreservesNNF!0 (rhs!890 f!3724)) true)))

(declare-fun b!66997 () Bool)

(assert (=> b!66997 (= e!36283 (simplify!1 (rhs!890 f!3724)))))

(declare-fun b!66998 () Bool)

(declare-fun e!36277 () Bool)

(assert (=> b!66998 (= e!36277 e!36280)))

(declare-fun c!15322 () Bool)

(declare-fun lt!13238 () Bool)

(assert (=> b!66998 (= c!15322 (or lt!13238 (and (not lt!13238) (is-Or!34 (rhs!890 f!3724)))))))

(declare-fun b!66999 () Bool)

(assert (=> b!66999 (= e!36278 e!36277)))

(declare-fun c!15324 () Bool)

(assert (=> b!66999 (= c!15324 (or lt!13238 (is-Or!34 (rhs!890 f!3724))))))

(assert (=> b!66999 (= lt!13239 e!36282)))

(declare-fun c!15323 () Bool)

(assert (=> b!66999 (= c!15323 (or lt!13238 (is-Or!34 (rhs!890 f!3724))))))

(assert (=> b!66999 (= lt!13238 (is-Implies!34 (rhs!890 f!3724)))))

(declare-fun b!67000 () Bool)

(declare-fun e!36281 () Bool)

(declare-fun res!31980 () Bool)

(assert (=> b!67000 (= e!36281 res!31980)))

(assert (=> b!67000 true))

(declare-fun b!67001 () Bool)

(assert (=> b!67001 (= e!36278 e!36281)))

(declare-fun c!15321 () Bool)

(assert (=> b!67001 (= c!15321 (or lt!13242 (and (not lt!13242) (is-Literal!28 (rhs!890 f!3724)))))))

(declare-fun b!67002 () Bool)

(assert (=> b!67002 (= e!36276 (simplifyPreservesNNF!0 (ite lt!13242 (lhs!890 (rhs!890 f!3724)) (ite (is-Implies!34 (rhs!890 f!3724)) (lhs!891 (rhs!890 f!3724)) (lhs!892 (rhs!890 f!3724))))))))

(declare-fun b!67003 () Bool)

(assert (=> b!67003 (= e!36281 (isNNF!1 lt!13241))))

(declare-fun b!67004 () Bool)

(declare-fun res!31978 () Bool)

(assert (=> b!67004 (= e!36276 res!31978)))

(assert (=> b!67004 true))

(declare-fun b!67005 () Bool)

(assert (=> b!67005 (= e!36277 (isNNF!1 (simplify!1 (rhs!890 f!3724))))))

(declare-fun b!67006 () Bool)

(declare-fun res!31981 () Bool)

(assert (=> b!67006 (= e!36280 res!31981)))

(assert (=> b!67006 true))

(assert (=> b!67006 true))

(assert (= (and d!53454 c!15326) b!66992))

(assert (= (and d!53454 (not c!15326)) b!66993))

(assert (= (and d!53454 c!15327) b!67002))

(assert (= (and d!53454 (not c!15327)) b!67004))

(assert (= (and d!53454 c!15325) b!66997))

(assert (= (and d!53454 (not c!15325)) b!66995))

(assert (= (and b!67001 c!15321) b!67003))

(assert (= (and b!67001 (not c!15321)) b!67000))

(assert (= (and b!66999 c!15323) b!66991))

(assert (= (and b!66999 (not c!15323)) b!66996))

(assert (= (and b!66998 c!15322) b!66994))

(assert (= (and b!66998 (not c!15322)) b!67006))

(assert (= (and b!66999 c!15324) b!66998))

(assert (= (and b!66999 (not c!15324)) b!67005))

(assert (= (and d!53454 c!15328) b!67001))

(assert (= (and d!53454 (not c!15328)) b!66999))

(declare-fun m!69819 () Bool)

(assert (=> b!67005 m!69819))

(assert (=> b!67005 m!69819))

(declare-fun m!69821 () Bool)

(assert (=> b!67005 m!69821))

(declare-fun m!69823 () Bool)

(assert (=> b!67003 m!69823))

(declare-fun m!69825 () Bool)

(assert (=> d!53454 m!69825))

(declare-fun m!69827 () Bool)

(assert (=> b!67002 m!69827))

(assert (=> b!66991 m!69819))

(assert (=> b!66997 m!69819))

(declare-fun m!69829 () Bool)

(assert (=> b!66992 m!69829))

(declare-fun m!69831 () Bool)

(assert (=> b!66994 m!69831))

(assert (=> b!66870 d!53454))

(push 1)

(assert (not b!66980))

(assert (not b!66924))

(assert (not b!66923))

(assert (not b!66971))

(assert (not b!66969))

(assert (not b!67003))

(assert (not d!53450))

(assert (not b!66979))

(assert (not b!66986))

(assert (not b!66997))

(assert (not b!66889))

(assert (not b!66982))

(assert (not d!53448))

(assert (not b!66988))

(assert (not b!66994))

(assert (not b!66968))

(assert (not b!67002))

(assert (not d!53454))

(assert (not b!66974))

(assert (not b!66992))

(assert (not b!66891))

(assert (not b!67005))

(assert (not b!66991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

