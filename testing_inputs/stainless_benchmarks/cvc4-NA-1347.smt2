; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9454 () Bool)

(assert start!9454)

(declare-fun res!33457 () Bool)

(declare-fun e!37311 () Bool)

(assert (=> start!9454 (=> (not res!33457) (not e!37311))))

(declare-datatypes () ((Formula!47 (And!52 (lhs!944 Formula!47) (rhs!944 Formula!47)) (Literal!46 (id!4827 Int)) (Implies!52 (lhs!945 Formula!47) (rhs!945 Formula!47)) (Or!52 (lhs!946 Formula!47) (rhs!946 Formula!47)) (Not!52 (f!4200 Formula!47)))))

(declare-fun f!3853 () Formula!47)

(assert (=> start!9454 (= res!33457 (and (not (is-And!52 f!3853)) (is-Or!52 f!3853)))))

(assert (=> start!9454 e!37311))

(assert (=> start!9454 true))

(declare-fun b!68944 () Bool)

(declare-fun res!33458 () Bool)

(assert (=> b!68944 (=> (not res!33458) (not e!37311))))

(declare-fun x$1!888 () Formula!47)

(declare-fun simplify!1 (Formula!47) Formula!47)

(assert (=> b!68944 (= res!33458 (= x$1!888 (Or!52 (simplify!1 (lhs!946 f!3853)) (simplify!1 (rhs!946 f!3853)))))))

(declare-fun b!68945 () Bool)

(declare-fun isSimplified!1 (Formula!47) Bool)

(assert (=> b!68945 (= e!37311 (not (isSimplified!1 x$1!888)))))

(assert (= (and start!9454 res!33457) b!68944))

(assert (= (and b!68944 res!33458) b!68945))

(declare-fun m!70351 () Bool)

(assert (=> b!68944 m!70351))

(declare-fun m!70353 () Bool)

(assert (=> b!68944 m!70353))

(declare-fun m!70355 () Bool)

(assert (=> b!68945 m!70355))

(push 1)

(assert (not b!68945))

(assert (not b!68944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68972 () Bool)

(declare-fun e!37335 () Bool)

(declare-fun e!37328 () Bool)

(assert (=> b!68972 (= e!37335 e!37328)))

(declare-fun res!33486 () Bool)

(assert (=> b!68972 (=> (not res!33486) (not e!37328))))

(declare-fun lt!14206 () Bool)

(assert (=> b!68972 (= res!33486 (not lt!14206))))

(declare-fun b!68973 () Bool)

(declare-fun e!37333 () Bool)

(declare-fun res!33487 () Bool)

(assert (=> b!68973 (= e!37333 res!33487)))

(assert (=> b!68973 true))

(declare-fun b!68974 () Bool)

(declare-fun e!37329 () Bool)

(declare-fun res!33485 () Bool)

(assert (=> b!68974 (= e!37329 res!33485)))

(assert (=> b!68974 true))

(assert (=> b!68974 true))

(declare-fun b!68975 () Bool)

(declare-fun e!37330 () Bool)

(declare-fun lt!14204 () Bool)

(assert (=> b!68975 (= e!37330 lt!14204)))

(declare-fun b!68976 () Bool)

(declare-fun e!37332 () Bool)

(assert (=> b!68976 (= e!37328 e!37332)))

(declare-fun res!33488 () Bool)

(assert (=> b!68976 (=> (not res!33488) (not e!37332))))

(declare-fun lt!14202 () Bool)

(assert (=> b!68976 (= res!33488 lt!14202)))

(assert (=> b!68976 (= lt!14202 (is-Or!52 x$1!888))))

(declare-fun b!68977 () Bool)

(assert (=> b!68977 (= e!37333 (isSimplified!1 (ite lt!14206 (lhs!944 x$1!888) (ite (is-Or!52 x$1!888) (lhs!946 x$1!888) (f!4200 x$1!888)))))))

(declare-fun b!68978 () Bool)

(declare-fun e!37331 () Bool)

(declare-fun lt!14207 () Bool)

(assert (=> b!68978 (= e!37331 (isSimplified!1 (ite lt!14207 (rhs!944 x$1!888) (rhs!946 x$1!888))))))

(declare-fun b!68979 () Bool)

(declare-fun res!33489 () Bool)

(assert (=> b!68979 (= e!37330 res!33489)))

(assert (=> b!68979 true))

(declare-fun b!68980 () Bool)

(declare-fun e!37334 () Bool)

(declare-fun lt!14205 () Bool)

(assert (=> b!68980 (= e!37334 (and lt!14204 lt!14205))))

(declare-fun b!68981 () Bool)

(assert (=> b!68981 (= e!37332 e!37330)))

(declare-fun c!16144 () Bool)

(assert (=> b!68981 (= c!16144 (or lt!14202 (and (not (is-Implies!52 x$1!888)) (is-Not!52 x$1!888))))))

(declare-fun b!68982 () Bool)

(assert (=> b!68982 (= e!37329 lt!14204)))

(declare-fun lt!14201 () Bool)

(declare-fun b!68983 () Bool)

(declare-fun lt!14203 () Bool)

(assert (=> b!68983 (= e!37334 (ite lt!14203 (and lt!14201 lt!14205) (and (not (is-Implies!52 x$1!888)) (or (not (is-Not!52 x$1!888)) lt!14201))))))

(assert (=> b!68983 (= lt!14201 e!37329)))

(declare-fun c!16142 () Bool)

(assert (=> b!68983 (= c!16142 (or lt!14203 (and (not (is-Implies!52 x$1!888)) (is-Not!52 x$1!888))))))

(assert (=> b!68983 (= lt!14203 (is-Or!52 x$1!888))))

(declare-fun b!68984 () Bool)

(declare-fun res!33484 () Bool)

(assert (=> b!68984 (= e!37331 res!33484)))

(assert (=> b!68984 true))

(declare-fun d!53592 () Bool)

(declare-fun c!16146 () Bool)

(assert (=> d!53592 (= c!16146 lt!14206)))

(assert (=> d!53592 (= lt!14205 e!37331)))

(declare-fun c!16143 () Bool)

(assert (=> d!53592 (= c!16143 e!37335)))

(declare-fun res!33490 () Bool)

(assert (=> d!53592 (=> res!33490 e!37335)))

(assert (=> d!53592 (= res!33490 lt!14207)))

(assert (=> d!53592 (= lt!14207 (and lt!14206 lt!14204))))

(assert (=> d!53592 (= lt!14204 e!37333)))

(declare-fun c!16145 () Bool)

(assert (=> d!53592 (= c!16145 (or lt!14206 (is-Or!52 x$1!888) (and (not (is-Implies!52 x$1!888)) (is-Not!52 x$1!888))))))

(assert (=> d!53592 (= lt!14206 (is-And!52 x$1!888))))

(assert (=> d!53592 (= (isSimplified!1 x$1!888) e!37334)))

(assert (= (and d!53592 c!16145) b!68977))

(assert (= (and d!53592 (not c!16145)) b!68973))

(assert (= (and d!53592 (not res!33490)) b!68972))

(assert (= (and b!68972 res!33486) b!68976))

(assert (= (and b!68976 res!33488) b!68981))

(assert (= (and b!68981 c!16144) b!68975))

(assert (= (and b!68981 (not c!16144)) b!68979))

(assert (= (and d!53592 c!16143) b!68978))

(assert (= (and d!53592 (not c!16143)) b!68984))

(assert (= (and b!68983 c!16142) b!68982))

(assert (= (and b!68983 (not c!16142)) b!68974))

(assert (= (and d!53592 c!16146) b!68980))

(assert (= (and d!53592 (not c!16146)) b!68983))

(declare-fun m!70357 () Bool)

(assert (=> b!68977 m!70357))

(declare-fun m!70359 () Bool)

(assert (=> b!68978 m!70359))

(assert (=> b!68945 d!53592))

(declare-fun b!69013 () Bool)

(declare-fun e!37350 () Formula!47)

(declare-fun lt!14227 () Formula!47)

(assert (=> b!69013 (= e!37350 lt!14227)))

(declare-fun b!69014 () Bool)

(declare-fun e!37355 () Formula!47)

(declare-fun lt!14230 () Formula!47)

(assert (=> b!69014 (= e!37355 lt!14230)))

(declare-fun b!69015 () Bool)

(declare-fun e!37356 () Formula!47)

(declare-fun lt!14229 () Formula!47)

(declare-fun lt!14231 () Formula!47)

(assert (=> b!69015 (= e!37356 (Or!52 lt!14229 lt!14231))))

(declare-fun d!53594 () Bool)

(declare-fun lt!14234 () Formula!47)

(assert (=> d!53594 (isSimplified!1 lt!14234)))

(declare-fun e!37354 () Formula!47)

(assert (=> d!53594 (= lt!14234 e!37354)))

(declare-fun c!16165 () Bool)

(declare-fun lt!14232 () Bool)

(assert (=> d!53594 (= c!16165 lt!14232)))

(declare-fun e!37353 () Formula!47)

(assert (=> d!53594 (= lt!14230 e!37353)))

(declare-fun c!16161 () Bool)

(assert (=> d!53594 (= c!16161 (or lt!14232 (is-Or!52 (lhs!946 f!3853)) (is-Implies!52 (lhs!946 f!3853))))))

(declare-fun e!37352 () Formula!47)

(assert (=> d!53594 (= lt!14227 e!37352)))

(declare-fun c!16166 () Bool)

(assert (=> d!53594 (= c!16166 (or lt!14232 (is-Or!52 (lhs!946 f!3853)) (is-Implies!52 (lhs!946 f!3853)) (is-Not!52 (lhs!946 f!3853))))))

(assert (=> d!53594 (= lt!14232 (is-And!52 (lhs!946 f!3853)))))

(assert (=> d!53594 (= (simplify!1 (lhs!946 f!3853)) lt!14234)))

(declare-fun b!69016 () Bool)

(assert (=> b!69016 (= e!37354 e!37356)))

(declare-fun c!16163 () Bool)

(declare-fun lt!14233 () Bool)

(assert (=> b!69016 (= c!16163 lt!14233)))

(assert (=> b!69016 (= lt!14231 e!37355)))

(declare-fun c!16167 () Bool)

(assert (=> b!69016 (= c!16167 (or lt!14233 (is-Implies!52 (lhs!946 f!3853))))))

(assert (=> b!69016 (= lt!14229 e!37350)))

(declare-fun c!16162 () Bool)

(assert (=> b!69016 (= c!16162 (or lt!14233 (is-Implies!52 (lhs!946 f!3853)) (is-Not!52 (lhs!946 f!3853))))))

(assert (=> b!69016 (= lt!14233 (is-Or!52 (lhs!946 f!3853)))))

(declare-fun b!69017 () Bool)

(declare-fun res!33520 () Formula!47)

(assert (=> b!69017 (= e!37352 res!33520)))

(assert (=> b!69017 true))

(declare-fun b!69018 () Bool)

(declare-fun e!37351 () Formula!47)

(declare-fun res!33516 () Formula!47)

(assert (=> b!69018 (= e!37351 res!33516)))

(assert (=> b!69018 true))

(assert (=> b!69018 true))

(declare-fun b!69019 () Bool)

(declare-fun res!33518 () Formula!47)

(assert (=> b!69019 (= e!37355 res!33518)))

(assert (=> b!69019 true))

(declare-fun b!69020 () Bool)

(assert (=> b!69020 (= e!37353 (simplify!1 (ite lt!14232 (rhs!944 (lhs!946 f!3853)) (ite (is-Or!52 (lhs!946 f!3853)) (rhs!946 (lhs!946 f!3853)) (rhs!945 (lhs!946 f!3853))))))))

(declare-fun b!69021 () Bool)

(assert (=> b!69021 (= e!37354 (And!52 lt!14227 lt!14230))))

(declare-fun b!69022 () Bool)

(assert (=> b!69022 (= e!37351 lt!14229)))

(declare-fun b!69023 () Bool)

(declare-fun res!33519 () Formula!47)

(assert (=> b!69023 (= e!37350 res!33519)))

(assert (=> b!69023 true))

(declare-fun b!69024 () Bool)

(declare-fun res!33517 () Formula!47)

(assert (=> b!69024 (= e!37353 res!33517)))

(assert (=> b!69024 true))

(declare-fun b!69025 () Bool)

(assert (=> b!69025 (= e!37352 (simplify!1 (ite lt!14232 (lhs!944 (lhs!946 f!3853)) (ite (is-Or!52 (lhs!946 f!3853)) (lhs!946 (lhs!946 f!3853)) (ite (is-Implies!52 (lhs!946 f!3853)) (lhs!945 (lhs!946 f!3853)) (f!4200 (lhs!946 f!3853)))))))))

(declare-fun lt!14228 () Formula!47)

(declare-fun b!69026 () Bool)

(declare-fun lt!14226 () Bool)

(assert (=> b!69026 (= e!37356 (ite lt!14226 (Or!52 (Not!52 lt!14228) lt!14231) (ite (is-Not!52 (lhs!946 f!3853)) (Not!52 lt!14228) (lhs!946 f!3853))))))

(assert (=> b!69026 (= lt!14228 e!37351)))

(declare-fun c!16164 () Bool)

(assert (=> b!69026 (= c!16164 (or lt!14226 (is-Not!52 (lhs!946 f!3853))))))

(assert (=> b!69026 (= lt!14226 (is-Implies!52 (lhs!946 f!3853)))))

(assert (= (and d!53594 c!16166) b!69025))

(assert (= (and d!53594 (not c!16166)) b!69017))

(assert (= (and d!53594 c!16161) b!69020))

(assert (= (and d!53594 (not c!16161)) b!69024))

(assert (= (and b!69016 c!16162) b!69013))

(assert (= (and b!69016 (not c!16162)) b!69023))

(assert (= (and b!69016 c!16167) b!69014))

(assert (= (and b!69016 (not c!16167)) b!69019))

(assert (= (and b!69026 c!16164) b!69022))

(assert (= (and b!69026 (not c!16164)) b!69018))

(assert (= (and b!69016 c!16163) b!69015))

(assert (= (and b!69016 (not c!16163)) b!69026))

(assert (= (and d!53594 c!16165) b!69021))

(assert (= (and d!53594 (not c!16165)) b!69016))

(declare-fun m!70361 () Bool)

(assert (=> d!53594 m!70361))

(declare-fun m!70363 () Bool)

(assert (=> b!69020 m!70363))

(declare-fun m!70365 () Bool)

(assert (=> b!69025 m!70365))

(assert (=> b!68944 d!53594))

(declare-fun b!69027 () Bool)

(declare-fun e!37357 () Formula!47)

(declare-fun lt!14236 () Formula!47)

(assert (=> b!69027 (= e!37357 lt!14236)))

(declare-fun b!69028 () Bool)

(declare-fun e!37362 () Formula!47)

(declare-fun lt!14239 () Formula!47)

(assert (=> b!69028 (= e!37362 lt!14239)))

(declare-fun b!69029 () Bool)

(declare-fun e!37363 () Formula!47)

(declare-fun lt!14238 () Formula!47)

(declare-fun lt!14240 () Formula!47)

(assert (=> b!69029 (= e!37363 (Or!52 lt!14238 lt!14240))))

(declare-fun d!53596 () Bool)

(declare-fun lt!14243 () Formula!47)

(assert (=> d!53596 (isSimplified!1 lt!14243)))

(declare-fun e!37361 () Formula!47)

(assert (=> d!53596 (= lt!14243 e!37361)))

(declare-fun c!16172 () Bool)

(declare-fun lt!14241 () Bool)

(assert (=> d!53596 (= c!16172 lt!14241)))

(declare-fun e!37360 () Formula!47)

(assert (=> d!53596 (= lt!14239 e!37360)))

(declare-fun c!16168 () Bool)

(assert (=> d!53596 (= c!16168 (or lt!14241 (is-Or!52 (rhs!946 f!3853)) (is-Implies!52 (rhs!946 f!3853))))))

(declare-fun e!37359 () Formula!47)

(assert (=> d!53596 (= lt!14236 e!37359)))

(declare-fun c!16173 () Bool)

(assert (=> d!53596 (= c!16173 (or lt!14241 (is-Or!52 (rhs!946 f!3853)) (is-Implies!52 (rhs!946 f!3853)) (is-Not!52 (rhs!946 f!3853))))))

(assert (=> d!53596 (= lt!14241 (is-And!52 (rhs!946 f!3853)))))

(assert (=> d!53596 (= (simplify!1 (rhs!946 f!3853)) lt!14243)))

(declare-fun b!69030 () Bool)

(assert (=> b!69030 (= e!37361 e!37363)))

(declare-fun c!16170 () Bool)

(declare-fun lt!14242 () Bool)

(assert (=> b!69030 (= c!16170 lt!14242)))

(assert (=> b!69030 (= lt!14240 e!37362)))

(declare-fun c!16174 () Bool)

(assert (=> b!69030 (= c!16174 (or lt!14242 (is-Implies!52 (rhs!946 f!3853))))))

(assert (=> b!69030 (= lt!14238 e!37357)))

(declare-fun c!16169 () Bool)

(assert (=> b!69030 (= c!16169 (or lt!14242 (is-Implies!52 (rhs!946 f!3853)) (is-Not!52 (rhs!946 f!3853))))))

(assert (=> b!69030 (= lt!14242 (is-Or!52 (rhs!946 f!3853)))))

(declare-fun b!69031 () Bool)

(declare-fun res!33525 () Formula!47)

(assert (=> b!69031 (= e!37359 res!33525)))

(assert (=> b!69031 true))

(declare-fun b!69032 () Bool)

(declare-fun e!37358 () Formula!47)

(declare-fun res!33521 () Formula!47)

(assert (=> b!69032 (= e!37358 res!33521)))

(assert (=> b!69032 true))

(assert (=> b!69032 true))

(declare-fun b!69033 () Bool)

(declare-fun res!33523 () Formula!47)

(assert (=> b!69033 (= e!37362 res!33523)))

(assert (=> b!69033 true))

(declare-fun b!69034 () Bool)

(assert (=> b!69034 (= e!37360 (simplify!1 (ite lt!14241 (rhs!944 (rhs!946 f!3853)) (ite (is-Or!52 (rhs!946 f!3853)) (rhs!946 (rhs!946 f!3853)) (rhs!945 (rhs!946 f!3853))))))))

(declare-fun b!69035 () Bool)

(assert (=> b!69035 (= e!37361 (And!52 lt!14236 lt!14239))))

(declare-fun b!69036 () Bool)

(assert (=> b!69036 (= e!37358 lt!14238)))

(declare-fun b!69037 () Bool)

(declare-fun res!33524 () Formula!47)

(assert (=> b!69037 (= e!37357 res!33524)))

(assert (=> b!69037 true))

(declare-fun b!69038 () Bool)

(declare-fun res!33522 () Formula!47)

(assert (=> b!69038 (= e!37360 res!33522)))

(assert (=> b!69038 true))

(declare-fun b!69039 () Bool)

(assert (=> b!69039 (= e!37359 (simplify!1 (ite lt!14241 (lhs!944 (rhs!946 f!3853)) (ite (is-Or!52 (rhs!946 f!3853)) (lhs!946 (rhs!946 f!3853)) (ite (is-Implies!52 (rhs!946 f!3853)) (lhs!945 (rhs!946 f!3853)) (f!4200 (rhs!946 f!3853)))))))))

(declare-fun b!69040 () Bool)

(declare-fun lt!14235 () Bool)

(declare-fun lt!14237 () Formula!47)

(assert (=> b!69040 (= e!37363 (ite lt!14235 (Or!52 (Not!52 lt!14237) lt!14240) (ite (is-Not!52 (rhs!946 f!3853)) (Not!52 lt!14237) (rhs!946 f!3853))))))

(assert (=> b!69040 (= lt!14237 e!37358)))

(declare-fun c!16171 () Bool)

(assert (=> b!69040 (= c!16171 (or lt!14235 (is-Not!52 (rhs!946 f!3853))))))

(assert (=> b!69040 (= lt!14235 (is-Implies!52 (rhs!946 f!3853)))))

(assert (= (and d!53596 c!16173) b!69039))

(assert (= (and d!53596 (not c!16173)) b!69031))

(assert (= (and d!53596 c!16168) b!69034))

(assert (= (and d!53596 (not c!16168)) b!69038))

(assert (= (and b!69030 c!16169) b!69027))

(assert (= (and b!69030 (not c!16169)) b!69037))

(assert (= (and b!69030 c!16174) b!69028))

(assert (= (and b!69030 (not c!16174)) b!69033))

(assert (= (and b!69040 c!16171) b!69036))

(assert (= (and b!69040 (not c!16171)) b!69032))

(assert (= (and b!69030 c!16170) b!69029))

(assert (= (and b!69030 (not c!16170)) b!69040))

(assert (= (and d!53596 c!16172) b!69035))

(assert (= (and d!53596 (not c!16172)) b!69030))

(declare-fun m!70367 () Bool)

(assert (=> d!53596 m!70367))

(declare-fun m!70369 () Bool)

(assert (=> b!69034 m!70369))

(declare-fun m!70371 () Bool)

(assert (=> b!69039 m!70371))

(assert (=> b!68944 d!53596))

(push 1)

(assert (not d!53594))

(assert (not b!69020))

(assert (not b!69025))

(assert (not b!69039))

(assert (not d!53596))

(assert (not b!68977))

(assert (not b!69034))

(assert (not b!68978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

