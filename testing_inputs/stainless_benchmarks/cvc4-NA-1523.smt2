; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10328 () Bool)

(assert start!10328)

(declare-fun res!38127 () Bool)

(declare-fun e!41241 () Bool)

(assert (=> start!10328 (=> (not res!38127) (not e!41241))))

(declare-datatypes () ((Formula!92 (Implies!96 (lhs!1389 Formula!92) (rhs!1389 Formula!92)) (And!96 (lhs!1390 Formula!92) (rhs!1390 Formula!92)) (Or!96 (lhs!1391 Formula!92) (rhs!1391 Formula!92)) (Literal!90 (id!4953 (_ BitVec 32))) (Not!96 (f!4726 Formula!92)))))

(declare-fun f!4516 () Formula!92)

(assert (=> start!10328 (= res!38127 (and (not (is-And!96 f!4516)) (is-Or!96 f!4516)))))

(assert (=> start!10328 e!41241))

(assert (=> start!10328 true))

(declare-fun b!76338 () Bool)

(declare-fun res!38128 () Bool)

(assert (=> b!76338 (=> (not res!38128) (not e!41241))))

(declare-fun x$1!1026 () Formula!92)

(declare-fun simplify!0 (Formula!92) Formula!92)

(assert (=> b!76338 (= res!38128 (= x$1!1026 (Or!96 (simplify!0 (lhs!1391 f!4516)) (simplify!0 (rhs!1391 f!4516)))))))

(declare-fun b!76339 () Bool)

(declare-fun isSimplified!0 (Formula!92) Bool)

(assert (=> b!76339 (= e!41241 (not (isSimplified!0 x$1!1026)))))

(assert (= (and start!10328 res!38127) b!76338))

(assert (= (and b!76338 res!38128) b!76339))

(declare-fun m!73300 () Bool)

(assert (=> b!76338 m!73300))

(declare-fun m!73302 () Bool)

(assert (=> b!76338 m!73302))

(declare-fun m!73304 () Bool)

(assert (=> b!76339 m!73304))

(push 1)

(assert (not b!76339))

(assert (not b!76338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!41261 () Bool)

(declare-fun b!76366 () Bool)

(declare-fun lt!16914 () Bool)

(declare-fun lt!16913 () Bool)

(declare-fun lt!16917 () Bool)

(assert (=> b!76366 (= e!41261 (ite lt!16913 (and lt!16917 lt!16914) (and (not (is-Implies!96 x$1!1026)) (or (not (is-Not!96 x$1!1026)) lt!16917))))))

(declare-fun e!41265 () Bool)

(assert (=> b!76366 (= lt!16917 e!41265)))

(declare-fun c!18932 () Bool)

(assert (=> b!76366 (= c!18932 (or lt!16913 (and (not (is-Implies!96 x$1!1026)) (is-Not!96 x$1!1026))))))

(assert (=> b!76366 (= lt!16913 (is-Or!96 x$1!1026))))

(declare-fun b!76367 () Bool)

(declare-fun e!41260 () Bool)

(declare-fun e!41263 () Bool)

(assert (=> b!76367 (= e!41260 e!41263)))

(declare-fun c!18933 () Bool)

(declare-fun lt!16915 () Bool)

(assert (=> b!76367 (= c!18933 (or lt!16915 (and (not (is-Implies!96 x$1!1026)) (is-Not!96 x$1!1026))))))

(declare-fun b!76368 () Bool)

(declare-fun lt!16916 () Bool)

(assert (=> b!76368 (= e!41263 lt!16916)))

(declare-fun b!76369 () Bool)

(declare-fun e!41259 () Bool)

(declare-fun res!38160 () Bool)

(assert (=> b!76369 (= e!41259 res!38160)))

(assert (=> b!76369 true))

(declare-fun b!76370 () Bool)

(declare-fun e!41264 () Bool)

(declare-fun res!38154 () Bool)

(assert (=> b!76370 (= e!41264 res!38154)))

(assert (=> b!76370 true))

(declare-fun b!76371 () Bool)

(declare-fun lt!16912 () Bool)

(assert (=> b!76371 (= e!41264 (isSimplified!0 (ite lt!16912 (lhs!1390 x$1!1026) (ite (is-Or!96 x$1!1026) (lhs!1391 x$1!1026) (f!4726 x$1!1026)))))))

(declare-fun b!76372 () Bool)

(declare-fun res!38155 () Bool)

(assert (=> b!76372 (= e!41263 res!38155)))

(assert (=> b!76372 true))

(declare-fun b!76373 () Bool)

(assert (=> b!76373 (= e!41265 lt!16916)))

(declare-fun d!54899 () Bool)

(declare-fun c!18931 () Bool)

(assert (=> d!54899 (= c!18931 lt!16912)))

(assert (=> d!54899 (= lt!16914 e!41259)))

(declare-fun c!18935 () Bool)

(declare-fun e!41262 () Bool)

(assert (=> d!54899 (= c!18935 e!41262)))

(declare-fun res!38157 () Bool)

(assert (=> d!54899 (=> res!38157 e!41262)))

(declare-fun lt!16918 () Bool)

(assert (=> d!54899 (= res!38157 lt!16918)))

(assert (=> d!54899 (= lt!16918 (and lt!16912 lt!16916))))

(assert (=> d!54899 (= lt!16916 e!41264)))

(declare-fun c!18934 () Bool)

(assert (=> d!54899 (= c!18934 (or lt!16912 (is-Or!96 x$1!1026) (and (not (is-Implies!96 x$1!1026)) (is-Not!96 x$1!1026))))))

(assert (=> d!54899 (= lt!16912 (is-And!96 x$1!1026))))

(assert (=> d!54899 (= (isSimplified!0 x$1!1026) e!41261)))

(declare-fun b!76374 () Bool)

(assert (=> b!76374 (= e!41259 (isSimplified!0 (ite lt!16918 (rhs!1390 x$1!1026) (rhs!1391 x$1!1026))))))

(declare-fun b!76375 () Bool)

(declare-fun e!41258 () Bool)

(assert (=> b!76375 (= e!41262 e!41258)))

(declare-fun res!38156 () Bool)

(assert (=> b!76375 (=> (not res!38156) (not e!41258))))

(assert (=> b!76375 (= res!38156 (not lt!16912))))

(declare-fun b!76376 () Bool)

(assert (=> b!76376 (= e!41258 e!41260)))

(declare-fun res!38158 () Bool)

(assert (=> b!76376 (=> (not res!38158) (not e!41260))))

(assert (=> b!76376 (= res!38158 lt!16915)))

(assert (=> b!76376 (= lt!16915 (is-Or!96 x$1!1026))))

(declare-fun b!76377 () Bool)

(declare-fun res!38159 () Bool)

(assert (=> b!76377 (= e!41265 res!38159)))

(assert (=> b!76377 true))

(assert (=> b!76377 true))

(declare-fun b!76378 () Bool)

(assert (=> b!76378 (= e!41261 (and lt!16916 lt!16914))))

(assert (= (and d!54899 c!18934) b!76371))

(assert (= (and d!54899 (not c!18934)) b!76370))

(assert (= (and d!54899 (not res!38157)) b!76375))

(assert (= (and b!76375 res!38156) b!76376))

(assert (= (and b!76376 res!38158) b!76367))

(assert (= (and b!76367 c!18933) b!76368))

(assert (= (and b!76367 (not c!18933)) b!76372))

(assert (= (and d!54899 c!18935) b!76374))

(assert (= (and d!54899 (not c!18935)) b!76369))

(assert (= (and b!76366 c!18932) b!76373))

(assert (= (and b!76366 (not c!18932)) b!76377))

(assert (= (and d!54899 c!18931) b!76378))

(assert (= (and d!54899 (not c!18931)) b!76366))

(declare-fun m!73306 () Bool)

(assert (=> b!76371 m!73306))

(declare-fun m!73308 () Bool)

(assert (=> b!76374 m!73308))

(assert (=> b!76339 d!54899))

(declare-fun b!76407 () Bool)

(declare-fun e!41281 () Formula!92)

(declare-fun lt!16941 () Formula!92)

(assert (=> b!76407 (= e!41281 lt!16941)))

(declare-fun b!76408 () Bool)

(declare-fun e!41283 () Formula!92)

(declare-fun lt!16940 () Formula!92)

(declare-fun lt!16939 () Formula!92)

(assert (=> b!76408 (= e!41283 (And!96 lt!16940 lt!16939))))

(declare-fun b!76409 () Bool)

(declare-fun e!41286 () Formula!92)

(declare-fun lt!16945 () Bool)

(assert (=> b!76409 (= e!41286 (simplify!0 (ite lt!16945 (lhs!1390 (lhs!1391 f!4516)) (ite (is-Or!96 (lhs!1391 f!4516)) (lhs!1391 (lhs!1391 f!4516)) (ite (is-Implies!96 (lhs!1391 f!4516)) (lhs!1389 (lhs!1391 f!4516)) (f!4726 (lhs!1391 f!4516)))))))))

(declare-fun b!76410 () Bool)

(declare-fun e!41284 () Formula!92)

(declare-fun res!38186 () Formula!92)

(assert (=> b!76410 (= e!41284 res!38186)))

(assert (=> b!76410 true))

(declare-fun b!76411 () Bool)

(declare-fun e!41280 () Formula!92)

(assert (=> b!76411 (= e!41283 e!41280)))

(declare-fun c!18951 () Bool)

(declare-fun lt!16943 () Bool)

(assert (=> b!76411 (= c!18951 lt!16943)))

(declare-fun lt!16944 () Formula!92)

(assert (=> b!76411 (= lt!16944 e!41284)))

(declare-fun c!18950 () Bool)

(assert (=> b!76411 (= c!18950 (or lt!16943 (is-Implies!96 (lhs!1391 f!4516))))))

(declare-fun e!41285 () Formula!92)

(assert (=> b!76411 (= lt!16941 e!41285)))

(declare-fun c!18956 () Bool)

(assert (=> b!76411 (= c!18956 (or lt!16943 (is-Implies!96 (lhs!1391 f!4516)) (is-Not!96 (lhs!1391 f!4516))))))

(assert (=> b!76411 (= lt!16943 (is-Or!96 (lhs!1391 f!4516)))))

(declare-fun b!76412 () Bool)

(declare-fun res!38187 () Formula!92)

(assert (=> b!76412 (= e!41286 res!38187)))

(assert (=> b!76412 true))

(declare-fun b!76413 () Bool)

(declare-fun res!38189 () Formula!92)

(assert (=> b!76413 (= e!41285 res!38189)))

(assert (=> b!76413 true))

(declare-fun b!76414 () Bool)

(assert (=> b!76414 (= e!41284 lt!16939)))

(declare-fun b!76415 () Bool)

(assert (=> b!76415 (= e!41285 lt!16940)))

(declare-fun b!76416 () Bool)

(declare-fun e!41282 () Formula!92)

(assert (=> b!76416 (= e!41282 (simplify!0 (ite lt!16945 (rhs!1390 (lhs!1391 f!4516)) (ite (is-Or!96 (lhs!1391 f!4516)) (rhs!1391 (lhs!1391 f!4516)) (rhs!1389 (lhs!1391 f!4516))))))))

(declare-fun lt!16937 () Bool)

(declare-fun lt!16942 () Formula!92)

(declare-fun b!76417 () Bool)

(assert (=> b!76417 (= e!41280 (ite lt!16937 (Or!96 (Not!96 lt!16942) lt!16944) (ite (is-Not!96 (lhs!1391 f!4516)) (Not!96 lt!16942) (lhs!1391 f!4516))))))

(assert (=> b!76417 (= lt!16942 e!41281)))

(declare-fun c!18953 () Bool)

(assert (=> b!76417 (= c!18953 (or lt!16937 (is-Not!96 (lhs!1391 f!4516))))))

(assert (=> b!76417 (= lt!16937 (is-Implies!96 (lhs!1391 f!4516)))))

(declare-fun b!76418 () Bool)

(declare-fun res!38188 () Formula!92)

(assert (=> b!76418 (= e!41282 res!38188)))

(assert (=> b!76418 true))

(declare-fun b!76419 () Bool)

(assert (=> b!76419 (= e!41280 (Or!96 lt!16941 lt!16944))))

(declare-fun b!76420 () Bool)

(declare-fun res!38190 () Formula!92)

(assert (=> b!76420 (= e!41281 res!38190)))

(assert (=> b!76420 true))

(assert (=> b!76420 true))

(declare-fun d!54901 () Bool)

(declare-fun lt!16938 () Formula!92)

(assert (=> d!54901 (isSimplified!0 lt!16938)))

(assert (=> d!54901 (= lt!16938 e!41283)))

(declare-fun c!18955 () Bool)

(assert (=> d!54901 (= c!18955 lt!16945)))

(assert (=> d!54901 (= lt!16939 e!41282)))

(declare-fun c!18954 () Bool)

(assert (=> d!54901 (= c!18954 (or lt!16945 (is-Or!96 (lhs!1391 f!4516)) (is-Implies!96 (lhs!1391 f!4516))))))

(assert (=> d!54901 (= lt!16940 e!41286)))

(declare-fun c!18952 () Bool)

(assert (=> d!54901 (= c!18952 (or lt!16945 (is-Or!96 (lhs!1391 f!4516)) (is-Implies!96 (lhs!1391 f!4516)) (is-Not!96 (lhs!1391 f!4516))))))

(assert (=> d!54901 (= lt!16945 (is-And!96 (lhs!1391 f!4516)))))

(assert (=> d!54901 (= (simplify!0 (lhs!1391 f!4516)) lt!16938)))

(assert (= (and d!54901 c!18952) b!76409))

(assert (= (and d!54901 (not c!18952)) b!76412))

(assert (= (and d!54901 c!18954) b!76416))

(assert (= (and d!54901 (not c!18954)) b!76418))

(assert (= (and b!76411 c!18956) b!76415))

(assert (= (and b!76411 (not c!18956)) b!76413))

(assert (= (and b!76411 c!18950) b!76414))

(assert (= (and b!76411 (not c!18950)) b!76410))

(assert (= (and b!76417 c!18953) b!76407))

(assert (= (and b!76417 (not c!18953)) b!76420))

(assert (= (and b!76411 c!18951) b!76419))

(assert (= (and b!76411 (not c!18951)) b!76417))

(assert (= (and d!54901 c!18955) b!76408))

(assert (= (and d!54901 (not c!18955)) b!76411))

(declare-fun m!73310 () Bool)

(assert (=> b!76409 m!73310))

(declare-fun m!73312 () Bool)

(assert (=> b!76416 m!73312))

(declare-fun m!73314 () Bool)

(assert (=> d!54901 m!73314))

(assert (=> b!76338 d!54901))

(declare-fun b!76421 () Bool)

(declare-fun e!41288 () Formula!92)

(declare-fun lt!16950 () Formula!92)

(assert (=> b!76421 (= e!41288 lt!16950)))

(declare-fun b!76422 () Bool)

(declare-fun e!41290 () Formula!92)

(declare-fun lt!16949 () Formula!92)

(declare-fun lt!16948 () Formula!92)

(assert (=> b!76422 (= e!41290 (And!96 lt!16949 lt!16948))))

(declare-fun b!76423 () Bool)

(declare-fun e!41293 () Formula!92)

(declare-fun lt!16954 () Bool)

(assert (=> b!76423 (= e!41293 (simplify!0 (ite lt!16954 (lhs!1390 (rhs!1391 f!4516)) (ite (is-Or!96 (rhs!1391 f!4516)) (lhs!1391 (rhs!1391 f!4516)) (ite (is-Implies!96 (rhs!1391 f!4516)) (lhs!1389 (rhs!1391 f!4516)) (f!4726 (rhs!1391 f!4516)))))))))

(declare-fun b!76424 () Bool)

(declare-fun e!41291 () Formula!92)

(declare-fun res!38191 () Formula!92)

(assert (=> b!76424 (= e!41291 res!38191)))

(assert (=> b!76424 true))

(declare-fun b!76425 () Bool)

(declare-fun e!41287 () Formula!92)

(assert (=> b!76425 (= e!41290 e!41287)))

(declare-fun c!18958 () Bool)

(declare-fun lt!16952 () Bool)

(assert (=> b!76425 (= c!18958 lt!16952)))

(declare-fun lt!16953 () Formula!92)

(assert (=> b!76425 (= lt!16953 e!41291)))

(declare-fun c!18957 () Bool)

(assert (=> b!76425 (= c!18957 (or lt!16952 (is-Implies!96 (rhs!1391 f!4516))))))

(declare-fun e!41292 () Formula!92)

(assert (=> b!76425 (= lt!16950 e!41292)))

(declare-fun c!18963 () Bool)

(assert (=> b!76425 (= c!18963 (or lt!16952 (is-Implies!96 (rhs!1391 f!4516)) (is-Not!96 (rhs!1391 f!4516))))))

(assert (=> b!76425 (= lt!16952 (is-Or!96 (rhs!1391 f!4516)))))

(declare-fun b!76426 () Bool)

(declare-fun res!38192 () Formula!92)

(assert (=> b!76426 (= e!41293 res!38192)))

(assert (=> b!76426 true))

(declare-fun b!76427 () Bool)

(declare-fun res!38194 () Formula!92)

(assert (=> b!76427 (= e!41292 res!38194)))

(assert (=> b!76427 true))

(declare-fun b!76428 () Bool)

(assert (=> b!76428 (= e!41291 lt!16948)))

(declare-fun b!76429 () Bool)

(assert (=> b!76429 (= e!41292 lt!16949)))

(declare-fun b!76430 () Bool)

(declare-fun e!41289 () Formula!92)

(assert (=> b!76430 (= e!41289 (simplify!0 (ite lt!16954 (rhs!1390 (rhs!1391 f!4516)) (ite (is-Or!96 (rhs!1391 f!4516)) (rhs!1391 (rhs!1391 f!4516)) (rhs!1389 (rhs!1391 f!4516))))))))

(declare-fun b!76431 () Bool)

(declare-fun lt!16951 () Formula!92)

(declare-fun lt!16946 () Bool)

(assert (=> b!76431 (= e!41287 (ite lt!16946 (Or!96 (Not!96 lt!16951) lt!16953) (ite (is-Not!96 (rhs!1391 f!4516)) (Not!96 lt!16951) (rhs!1391 f!4516))))))

(assert (=> b!76431 (= lt!16951 e!41288)))

(declare-fun c!18960 () Bool)

(assert (=> b!76431 (= c!18960 (or lt!16946 (is-Not!96 (rhs!1391 f!4516))))))

(assert (=> b!76431 (= lt!16946 (is-Implies!96 (rhs!1391 f!4516)))))

(declare-fun b!76432 () Bool)

(declare-fun res!38193 () Formula!92)

(assert (=> b!76432 (= e!41289 res!38193)))

(assert (=> b!76432 true))

(declare-fun b!76433 () Bool)

(assert (=> b!76433 (= e!41287 (Or!96 lt!16950 lt!16953))))

(declare-fun b!76434 () Bool)

(declare-fun res!38195 () Formula!92)

(assert (=> b!76434 (= e!41288 res!38195)))

(assert (=> b!76434 true))

(assert (=> b!76434 true))

(declare-fun d!54903 () Bool)

(declare-fun lt!16947 () Formula!92)

(assert (=> d!54903 (isSimplified!0 lt!16947)))

(assert (=> d!54903 (= lt!16947 e!41290)))

(declare-fun c!18962 () Bool)

(assert (=> d!54903 (= c!18962 lt!16954)))

(assert (=> d!54903 (= lt!16948 e!41289)))

(declare-fun c!18961 () Bool)

(assert (=> d!54903 (= c!18961 (or lt!16954 (is-Or!96 (rhs!1391 f!4516)) (is-Implies!96 (rhs!1391 f!4516))))))

(assert (=> d!54903 (= lt!16949 e!41293)))

(declare-fun c!18959 () Bool)

(assert (=> d!54903 (= c!18959 (or lt!16954 (is-Or!96 (rhs!1391 f!4516)) (is-Implies!96 (rhs!1391 f!4516)) (is-Not!96 (rhs!1391 f!4516))))))

(assert (=> d!54903 (= lt!16954 (is-And!96 (rhs!1391 f!4516)))))

(assert (=> d!54903 (= (simplify!0 (rhs!1391 f!4516)) lt!16947)))

(assert (= (and d!54903 c!18959) b!76423))

(assert (= (and d!54903 (not c!18959)) b!76426))

(assert (= (and d!54903 c!18961) b!76430))

(assert (= (and d!54903 (not c!18961)) b!76432))

(assert (= (and b!76425 c!18963) b!76429))

(assert (= (and b!76425 (not c!18963)) b!76427))

(assert (= (and b!76425 c!18957) b!76428))

(assert (= (and b!76425 (not c!18957)) b!76424))

(assert (= (and b!76431 c!18960) b!76421))

(assert (= (and b!76431 (not c!18960)) b!76434))

(assert (= (and b!76425 c!18958) b!76433))

(assert (= (and b!76425 (not c!18958)) b!76431))

(assert (= (and d!54903 c!18962) b!76422))

(assert (= (and d!54903 (not c!18962)) b!76425))

(declare-fun m!73316 () Bool)

(assert (=> b!76423 m!73316))

(declare-fun m!73318 () Bool)

(assert (=> b!76430 m!73318))

(declare-fun m!73320 () Bool)

(assert (=> d!54903 m!73320))

(assert (=> b!76338 d!54903))

(push 1)

(assert (not b!76430))

(assert (not b!76374))

(assert (not b!76423))

(assert (not b!76416))

(assert (not b!76371))

(assert (not b!76409))

(assert (not d!54901))

(assert (not d!54903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

