; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9298 () Bool)

(assert start!9298)

(declare-fun b!66279 () Bool)

(declare-fun res!31413 () Bool)

(declare-fun e!35923 () Bool)

(assert (=> b!66279 (=> (not res!31413) (not e!35923))))

(declare-fun inductVal!340 () Bool)

(declare-datatypes () ((Formula!24 (And!29 (lhs!875 Formula!24) (rhs!875 Formula!24)) (Literal!23 (id!4804 Int)) (Implies!29 (lhs!876 Formula!24) (rhs!876 Formula!24)) (Or!29 (lhs!877 Formula!24) (rhs!877 Formula!24)) (Not!29 (f!4126 Formula!24)))))

(declare-fun f!3790 () Formula!24)

(declare-fun nnfIsStable!1 (Formula!24) Bool)

(assert (=> b!66279 (= res!31413 (= inductVal!340 (nnfIsStable!1 (rhs!877 f!3790))))))

(declare-fun b!66281 () Bool)

(declare-fun nnf!1 (Formula!24) Formula!24)

(assert (=> b!66281 (= e!35923 (not (= (nnf!1 f!3790) f!3790)))))

(declare-fun res!31414 () Bool)

(assert (=> start!9298 (=> (not res!31414) (not e!35923))))

(declare-fun isNNF!1 (Formula!24) Bool)

(assert (=> start!9298 (= res!31414 (isNNF!1 f!3790))))

(assert (=> start!9298 e!35923))

(assert (=> start!9298 true))

(declare-fun b!66280 () Bool)

(declare-fun res!31415 () Bool)

(assert (=> b!66280 (=> (not res!31415) (not e!35923))))

(declare-fun inductVal!348 () Bool)

(assert (=> b!66280 (= res!31415 (= inductVal!348 (nnfIsStable!1 (lhs!877 f!3790))))))

(declare-fun b!66278 () Bool)

(declare-fun res!31416 () Bool)

(assert (=> b!66278 (=> (not res!31416) (not e!35923))))

(assert (=> b!66278 (= res!31416 (and (not (is-And!29 f!3790)) (not (is-Literal!23 f!3790)) (not (is-Implies!29 f!3790)) (is-Or!29 f!3790)))))

(assert (= (and start!9298 res!31414) b!66278))

(assert (= (and b!66278 res!31416) b!66279))

(assert (= (and b!66279 res!31413) b!66280))

(assert (= (and b!66280 res!31415) b!66281))

(declare-fun m!69639 () Bool)

(assert (=> b!66279 m!69639))

(declare-fun m!69641 () Bool)

(assert (=> b!66281 m!69641))

(declare-fun m!69643 () Bool)

(assert (=> start!9298 m!69643))

(declare-fun m!69645 () Bool)

(assert (=> b!66280 m!69645))

(push 1)

(assert (not b!66279))

(assert (not start!9298))

(assert (not b!66281))

(assert (not b!66280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66306 () Bool)

(declare-fun e!35941 () Bool)

(declare-fun lt!12943 () Formula!24)

(assert (=> b!66306 (= e!35941 (= lt!12943 (rhs!877 f!3790)))))

(declare-fun b!66307 () Bool)

(declare-fun e!35936 () Bool)

(assert (=> b!66307 (= e!35941 e!35936)))

(declare-fun c!15018 () Bool)

(declare-fun lt!12944 () Bool)

(assert (=> b!66307 (= c!15018 (or lt!12944 (is-Or!29 (rhs!877 f!3790))))))

(declare-fun lt!12941 () Formula!24)

(declare-fun e!35937 () Formula!24)

(assert (=> b!66307 (= lt!12941 e!35937)))

(declare-fun c!15019 () Bool)

(assert (=> b!66307 (= c!15019 (or lt!12944 (is-Or!29 (rhs!877 f!3790))))))

(assert (=> b!66307 (= lt!12944 (is-Implies!29 (rhs!877 f!3790)))))

(declare-fun b!66308 () Bool)

(declare-fun e!35939 () Bool)

(declare-fun lt!12946 () Bool)

(assert (=> b!66308 (= e!35939 (nnfIsStable!1 (ite lt!12946 (rhs!875 (rhs!877 f!3790)) (ite (is-Implies!29 (rhs!877 f!3790)) (rhs!876 (rhs!877 f!3790)) (ite (is-Or!29 (rhs!877 f!3790)) (rhs!877 (rhs!877 f!3790)) (f!4126 (rhs!877 f!3790)))))))))

(declare-fun b!66309 () Bool)

(assert (=> b!66309 (= e!35936 (= (nnf!1 (rhs!877 f!3790)) (rhs!877 f!3790)))))

(declare-fun b!66310 () Bool)

(assert (=> b!66310 (= e!35936 (= lt!12941 (rhs!877 f!3790)))))

(declare-fun b!66311 () Bool)

(declare-fun res!31447 () Formula!24)

(assert (=> b!66311 (= e!35937 res!31447)))

(assert (=> b!66311 true))

(assert (=> b!66311 true))

(declare-fun b!66312 () Bool)

(declare-fun e!35940 () Bool)

(declare-fun res!31449 () Bool)

(assert (=> b!66312 (= e!35940 res!31449)))

(assert (=> b!66312 true))

(declare-fun b!66313 () Bool)

(declare-fun e!35938 () Formula!24)

(assert (=> b!66313 (= e!35938 (nnf!1 (rhs!877 f!3790)))))

(declare-fun b!66314 () Bool)

(assert (=> b!66314 (= e!35937 (nnf!1 (rhs!877 f!3790)))))

(declare-fun d!53414 () Bool)

(assert (=> d!53414 e!35941))

(declare-fun c!15023 () Bool)

(assert (=> d!53414 (= c!15023 (or lt!12946 (is-Literal!23 (rhs!877 f!3790))))))

(assert (=> d!53414 (= lt!12943 e!35938)))

(declare-fun c!15022 () Bool)

(assert (=> d!53414 (= c!15022 (or lt!12946 (is-Literal!23 (rhs!877 f!3790))))))

(declare-fun lt!12942 () Bool)

(assert (=> d!53414 (= lt!12942 e!35940)))

(declare-fun c!15021 () Bool)

(assert (=> d!53414 (= c!15021 (or lt!12946 (and (not (is-Literal!23 (rhs!877 f!3790))) (or (is-Implies!29 (rhs!877 f!3790)) (is-Or!29 (rhs!877 f!3790))))))))

(declare-fun lt!12945 () Bool)

(assert (=> d!53414 (= lt!12945 e!35939)))

(declare-fun c!15020 () Bool)

(assert (=> d!53414 (= c!15020 (or lt!12946 (not (is-Literal!23 (rhs!877 f!3790)))))))

(assert (=> d!53414 (= lt!12946 (is-And!29 (rhs!877 f!3790)))))

(assert (=> d!53414 (isNNF!1 (rhs!877 f!3790))))

(assert (=> d!53414 (= (nnfIsStable!1 (rhs!877 f!3790)) true)))

(declare-fun b!66315 () Bool)

(assert (=> b!66315 (= e!35940 (nnfIsStable!1 (ite lt!12946 (lhs!875 (rhs!877 f!3790)) (ite (is-Implies!29 (rhs!877 f!3790)) (lhs!876 (rhs!877 f!3790)) (lhs!877 (rhs!877 f!3790))))))))

(declare-fun b!66316 () Bool)

(declare-fun res!31448 () Formula!24)

(assert (=> b!66316 (= e!35938 res!31448)))

(assert (=> b!66316 true))

(declare-fun b!66317 () Bool)

(declare-fun res!31446 () Bool)

(assert (=> b!66317 (= e!35939 res!31446)))

(assert (=> b!66317 true))

(assert (= (and d!53414 c!15020) b!66308))

(assert (= (and d!53414 (not c!15020)) b!66317))

(assert (= (and d!53414 c!15021) b!66315))

(assert (= (and d!53414 (not c!15021)) b!66312))

(assert (= (and d!53414 c!15022) b!66313))

(assert (= (and d!53414 (not c!15022)) b!66316))

(assert (= (and b!66307 c!15019) b!66314))

(assert (= (and b!66307 (not c!15019)) b!66311))

(assert (= (and b!66307 c!15018) b!66310))

(assert (= (and b!66307 (not c!15018)) b!66309))

(assert (= (and d!53414 c!15023) b!66306))

(assert (= (and d!53414 (not c!15023)) b!66307))

(declare-fun m!69647 () Bool)

(assert (=> d!53414 m!69647))

(declare-fun m!69649 () Bool)

(assert (=> b!66309 m!69649))

(declare-fun m!69651 () Bool)

(assert (=> b!66308 m!69651))

(declare-fun m!69653 () Bool)

(assert (=> b!66315 m!69653))

(assert (=> b!66313 m!69649))

(assert (=> b!66314 m!69649))

(assert (=> b!66279 d!53414))

(declare-fun b!66332 () Bool)

(declare-fun e!35953 () Bool)

(declare-fun res!31462 () Bool)

(assert (=> b!66332 (= e!35953 res!31462)))

(assert (=> b!66332 true))

(assert (=> b!66332 true))

(declare-fun b!66333 () Bool)

(declare-fun e!35950 () Bool)

(declare-fun res!31463 () Bool)

(assert (=> b!66333 (= e!35950 res!31463)))

(assert (=> b!66333 true))

(declare-fun b!66334 () Bool)

(declare-fun lt!12955 () Bool)

(assert (=> b!66334 (= e!35950 (isNNF!1 (ite lt!12955 (lhs!875 f!3790) (lhs!877 f!3790))))))

(declare-fun b!66335 () Bool)

(declare-fun lt!12953 () Bool)

(assert (=> b!66335 (= e!35953 (isNNF!1 (ite lt!12953 (rhs!875 f!3790) (rhs!877 f!3790))))))

(declare-fun b!66336 () Bool)

(declare-fun e!35951 () Bool)

(declare-fun e!35952 () Bool)

(assert (=> b!66336 (= e!35951 e!35952)))

(declare-fun res!31464 () Bool)

(assert (=> b!66336 (=> (not res!31464) (not e!35952))))

(declare-fun lt!12954 () Bool)

(assert (=> b!66336 (= res!31464 lt!12954)))

(declare-fun b!66337 () Bool)

(assert (=> b!66337 (= e!35952 e!35953)))

(declare-fun c!15030 () Bool)

(assert (=> b!66337 (= c!15030 (or lt!12953 (and (not lt!12955) (is-Or!29 f!3790) lt!12954)))))

(declare-fun b!66338 () Bool)

(assert (=> b!66338 (= e!35951 (and (not (is-Implies!29 f!3790)) (or (and (is-Not!29 f!3790) (is-Literal!23 (f!4126 f!3790))) (not (is-Not!29 f!3790)))))))

(declare-fun d!53416 () Bool)

(declare-fun c!15032 () Bool)

(assert (=> d!53416 (= c!15032 (or lt!12955 (is-Or!29 f!3790)))))

(assert (=> d!53416 (= lt!12953 (and lt!12955 lt!12954))))

(assert (=> d!53416 (= lt!12954 e!35950)))

(declare-fun c!15031 () Bool)

(assert (=> d!53416 (= c!15031 (or lt!12955 (is-Or!29 f!3790)))))

(assert (=> d!53416 (= lt!12955 (is-And!29 f!3790))))

(assert (=> d!53416 (= (isNNF!1 f!3790) e!35951)))

(assert (= (and d!53416 c!15031) b!66334))

(assert (= (and d!53416 (not c!15031)) b!66333))

(assert (= (and b!66336 res!31464) b!66337))

(assert (= (and b!66337 c!15030) b!66335))

(assert (= (and b!66337 (not c!15030)) b!66332))

(assert (= (and d!53416 c!15032) b!66336))

(assert (= (and d!53416 (not c!15032)) b!66338))

(declare-fun m!69655 () Bool)

(assert (=> b!66334 m!69655))

(declare-fun m!69657 () Bool)

(assert (=> b!66335 m!69657))

(assert (=> start!9298 d!53416))

(declare-fun b!66399 () Bool)

(declare-fun e!35988 () Formula!24)

(declare-fun lt!12990 () Formula!24)

(assert (=> b!66399 (= e!35988 lt!12990)))

(declare-fun b!66400 () Bool)

(declare-fun e!35987 () Formula!24)

(declare-fun lt!12997 () Formula!24)

(assert (=> b!66400 (= e!35987 lt!12997)))

(declare-fun lt!12992 () Formula!24)

(declare-fun lt!12995 () Bool)

(declare-fun b!66401 () Bool)

(declare-fun e!35996 () Formula!24)

(declare-fun lt!13006 () Formula!24)

(assert (=> b!66401 (= e!35996 (ite lt!12995 (And!29 lt!13006 lt!12992) (ite (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790))) lt!13006 f!3790)))))

(declare-fun e!35989 () Formula!24)

(assert (=> b!66401 (= lt!13006 e!35989)))

(declare-fun c!15075 () Bool)

(assert (=> b!66401 (= c!15075 (or lt!12995 (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790)))))))

(assert (=> b!66401 (= lt!12995 (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))))))

(declare-fun b!66402 () Bool)

(declare-fun e!35991 () Formula!24)

(declare-fun e!35990 () Formula!24)

(assert (=> b!66402 (= e!35991 e!35990)))

(declare-fun c!15074 () Bool)

(declare-fun lt!12998 () Bool)

(assert (=> b!66402 (= c!15074 lt!12998)))

(declare-fun lt!12999 () Formula!24)

(assert (=> b!66402 (= lt!12999 e!35988)))

(declare-fun c!15066 () Bool)

(assert (=> b!66402 (= c!15066 (or lt!12998 (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790)))))))

(declare-fun lt!12996 () Formula!24)

(declare-fun e!35984 () Formula!24)

(assert (=> b!66402 (= lt!12996 e!35984)))

(declare-fun c!15077 () Bool)

(assert (=> b!66402 (= c!15077 (or lt!12998 (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790)))))))

(assert (=> b!66402 (= lt!12998 (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))))))

(declare-fun b!66403 () Bool)

(declare-fun e!35995 () Formula!24)

(declare-fun res!31519 () Formula!24)

(assert (=> b!66403 (= e!35995 res!31519)))

(assert (=> b!66403 true))

(declare-fun b!66404 () Bool)

(declare-fun res!31524 () Formula!24)

(assert (=> b!66404 (= e!35984 res!31524)))

(assert (=> b!66404 true))

(declare-fun b!66405 () Bool)

(declare-fun e!35985 () Formula!24)

(declare-fun e!35994 () Formula!24)

(assert (=> b!66405 (= e!35985 e!35994)))

(declare-fun c!15063 () Bool)

(declare-fun lt!13004 () Bool)

(assert (=> b!66405 (= c!15063 lt!13004)))

(assert (=> b!66405 (= lt!12990 e!35987)))

(declare-fun c!15072 () Bool)

(assert (=> b!66405 (= c!15072 (or lt!13004 (and (not (is-Implies!29 f!3790)) (or (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790)))))))))

(declare-fun lt!13001 () Formula!24)

(declare-fun e!35993 () Formula!24)

(assert (=> b!66405 (= lt!13001 e!35993)))

(declare-fun c!15068 () Bool)

(assert (=> b!66405 (= c!15068 (or lt!13004 (is-Implies!29 f!3790) (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790)))))))

(assert (=> b!66405 (= lt!13004 (is-Or!29 f!3790))))

(declare-fun b!66406 () Bool)

(declare-fun res!31520 () Formula!24)

(assert (=> b!66406 (= e!35993 res!31520)))

(assert (=> b!66406 true))

(declare-fun b!66407 () Bool)

(declare-fun e!35986 () Formula!24)

(declare-fun res!31518 () Formula!24)

(assert (=> b!66407 (= e!35986 res!31518)))

(assert (=> b!66407 true))

(declare-fun b!66408 () Bool)

(declare-fun lt!12994 () Formula!24)

(assert (=> b!66408 (= e!35989 lt!12994)))

(declare-fun b!66409 () Bool)

(declare-fun e!35992 () Formula!24)

(declare-fun res!31516 () Formula!24)

(assert (=> b!66409 (= e!35992 res!31516)))

(assert (=> b!66409 true))

(declare-fun b!66410 () Bool)

(declare-fun lt!12993 () Formula!24)

(assert (=> b!66410 (= e!35993 lt!12993)))

(declare-fun b!66411 () Bool)

(declare-fun e!35998 () Formula!24)

(declare-fun res!31523 () Formula!24)

(assert (=> b!66411 (= e!35998 res!31523)))

(assert (=> b!66411 true))

(declare-fun b!66412 () Bool)

(assert (=> b!66412 (= e!35990 e!35996)))

(declare-fun c!15064 () Bool)

(declare-fun lt!13002 () Bool)

(assert (=> b!66412 (= c!15064 lt!13002)))

(assert (=> b!66412 (= lt!12992 e!35986)))

(declare-fun c!15067 () Bool)

(assert (=> b!66412 (= c!15067 (or lt!13002 (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790)))))))

(declare-fun e!35997 () Formula!24)

(assert (=> b!66412 (= lt!12994 e!35997)))

(declare-fun c!15070 () Bool)

(assert (=> b!66412 (= c!15070 (or lt!13002 (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790)))))))

(assert (=> b!66412 (= lt!13002 (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))))))

(declare-fun b!66413 () Bool)

(declare-fun res!31515 () Formula!24)

(assert (=> b!66413 (= e!35987 res!31515)))

(assert (=> b!66413 true))

(declare-fun b!66414 () Bool)

(assert (=> b!66414 (= e!35986 lt!12999)))

(declare-fun b!66415 () Bool)

(assert (=> b!66415 (= e!35994 e!35991)))

(declare-fun c!15073 () Bool)

(declare-fun lt!13000 () Bool)

(assert (=> b!66415 (= c!15073 lt!13000)))

(declare-fun lt!13003 () Formula!24)

(assert (=> b!66415 (= lt!13003 e!35998)))

(declare-fun c!15065 () Bool)

(assert (=> b!66415 (= c!15065 (or lt!13000 (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790)))))))

(assert (=> b!66415 (= lt!13000 (is-Implies!29 f!3790))))

(declare-fun b!66416 () Bool)

(declare-fun lt!12991 () Bool)

(assert (=> b!66416 (= e!35995 (nnf!1 (ite lt!12991 (rhs!875 f!3790) (ite (is-Or!29 f!3790) (rhs!877 f!3790) (ite (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (Not!29 (rhs!875 (f!4126 f!3790))) (ite (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (Not!29 (rhs!877 (f!4126 f!3790))) (Not!29 (rhs!876 (f!4126 f!3790)))))))))))

(declare-fun b!66417 () Bool)

(assert (=> b!66417 (= e!35992 (nnf!1 (ite lt!12991 (lhs!875 f!3790) (ite (is-Or!29 f!3790) (lhs!877 f!3790) (ite (is-Implies!29 f!3790) (Or!29 (Not!29 (lhs!876 f!3790)) (rhs!876 f!3790)) (ite (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (Not!29 (lhs!875 (f!4126 f!3790))) (ite (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (Not!29 (lhs!877 (f!4126 f!3790))) (ite (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))) (lhs!876 (f!4126 f!3790)) (f!4126 (f!4126 f!3790))))))))))))

(declare-fun b!66418 () Bool)

(declare-fun res!31517 () Formula!24)

(assert (=> b!66418 (= e!35989 res!31517)))

(assert (=> b!66418 true))

(assert (=> b!66418 true))

(declare-fun b!66419 () Bool)

(assert (=> b!66419 (= e!35991 lt!13003)))

(declare-fun b!66420 () Bool)

(assert (=> b!66420 (= e!35990 (Or!29 lt!12996 lt!12999))))

(declare-fun b!66421 () Bool)

(declare-fun res!31522 () Formula!24)

(assert (=> b!66421 (= e!35997 res!31522)))

(assert (=> b!66421 true))

(declare-fun b!66422 () Bool)

(assert (=> b!66422 (= e!35985 (And!29 lt!12993 lt!12997))))

(declare-fun b!66423 () Bool)

(assert (=> b!66423 (= e!35998 lt!13001)))

(declare-fun b!66424 () Bool)

(assert (=> b!66424 (= e!35996 (And!29 lt!12994 lt!12992))))

(declare-fun b!66425 () Bool)

(assert (=> b!66425 (= e!35997 lt!12996)))

(declare-fun b!66426 () Bool)

(assert (=> b!66426 (= e!35984 lt!13003)))

(declare-fun b!66427 () Bool)

(assert (=> b!66427 (= e!35994 (Or!29 lt!13001 lt!12990))))

(declare-fun b!66428 () Bool)

(declare-fun res!31521 () Formula!24)

(assert (=> b!66428 (= e!35988 res!31521)))

(assert (=> b!66428 true))

(declare-fun d!53418 () Bool)

(declare-fun lt!13005 () Formula!24)

(assert (=> d!53418 (isNNF!1 lt!13005)))

(assert (=> d!53418 (= lt!13005 e!35985)))

(declare-fun c!15071 () Bool)

(assert (=> d!53418 (= c!15071 lt!12991)))

(assert (=> d!53418 (= lt!12997 e!35995)))

(declare-fun c!15069 () Bool)

(assert (=> d!53418 (= c!15069 (or lt!12991 (is-Or!29 f!3790) (and (not (is-Implies!29 f!3790)) (or (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790)))))))))

(assert (=> d!53418 (= lt!12993 e!35992)))

(declare-fun c!15076 () Bool)

(assert (=> d!53418 (= c!15076 (or lt!12991 (is-Or!29 f!3790) (is-Implies!29 f!3790) (and (is-Not!29 f!3790) (is-And!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Or!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Implies!29 (f!4126 f!3790))) (and (is-Not!29 f!3790) (is-Not!29 (f!4126 f!3790)))))))

(assert (=> d!53418 (= lt!12991 (is-And!29 f!3790))))

(assert (=> d!53418 (= (nnf!1 f!3790) lt!13005)))

(assert (= (and d!53418 c!15076) b!66417))

(assert (= (and d!53418 (not c!15076)) b!66409))

(assert (= (and d!53418 c!15069) b!66416))

(assert (= (and d!53418 (not c!15069)) b!66403))

(assert (= (and b!66405 c!15068) b!66410))

(assert (= (and b!66405 (not c!15068)) b!66406))

(assert (= (and b!66405 c!15072) b!66400))

(assert (= (and b!66405 (not c!15072)) b!66413))

(assert (= (and b!66415 c!15065) b!66423))

(assert (= (and b!66415 (not c!15065)) b!66411))

(assert (= (and b!66402 c!15077) b!66426))

(assert (= (and b!66402 (not c!15077)) b!66404))

(assert (= (and b!66402 c!15066) b!66399))

(assert (= (and b!66402 (not c!15066)) b!66428))

(assert (= (and b!66412 c!15070) b!66425))

(assert (= (and b!66412 (not c!15070)) b!66421))

(assert (= (and b!66412 c!15067) b!66414))

(assert (= (and b!66412 (not c!15067)) b!66407))

(assert (= (and b!66401 c!15075) b!66408))

(assert (= (and b!66401 (not c!15075)) b!66418))

(assert (= (and b!66412 c!15064) b!66424))

(assert (= (and b!66412 (not c!15064)) b!66401))

(assert (= (and b!66402 c!15074) b!66420))

(assert (= (and b!66402 (not c!15074)) b!66412))

(assert (= (and b!66415 c!15073) b!66419))

(assert (= (and b!66415 (not c!15073)) b!66402))

(assert (= (and b!66405 c!15063) b!66427))

(assert (= (and b!66405 (not c!15063)) b!66415))

(assert (= (and d!53418 c!15071) b!66422))

(assert (= (and d!53418 (not c!15071)) b!66405))

(declare-fun m!69659 () Bool)

(assert (=> b!66416 m!69659))

(declare-fun m!69661 () Bool)

(assert (=> b!66417 m!69661))

(declare-fun m!69663 () Bool)

(assert (=> d!53418 m!69663))

(assert (=> b!66281 d!53418))

(declare-fun b!66429 () Bool)

(declare-fun e!36004 () Bool)

(declare-fun lt!13009 () Formula!24)

(assert (=> b!66429 (= e!36004 (= lt!13009 (lhs!877 f!3790)))))

(declare-fun b!66430 () Bool)

(declare-fun e!35999 () Bool)

(assert (=> b!66430 (= e!36004 e!35999)))

(declare-fun c!15078 () Bool)

(declare-fun lt!13010 () Bool)

(assert (=> b!66430 (= c!15078 (or lt!13010 (is-Or!29 (lhs!877 f!3790))))))

(declare-fun lt!13007 () Formula!24)

(declare-fun e!36000 () Formula!24)

(assert (=> b!66430 (= lt!13007 e!36000)))

(declare-fun c!15079 () Bool)

(assert (=> b!66430 (= c!15079 (or lt!13010 (is-Or!29 (lhs!877 f!3790))))))

(assert (=> b!66430 (= lt!13010 (is-Implies!29 (lhs!877 f!3790)))))

(declare-fun b!66431 () Bool)

(declare-fun e!36002 () Bool)

(declare-fun lt!13012 () Bool)

(assert (=> b!66431 (= e!36002 (nnfIsStable!1 (ite lt!13012 (rhs!875 (lhs!877 f!3790)) (ite (is-Implies!29 (lhs!877 f!3790)) (rhs!876 (lhs!877 f!3790)) (ite (is-Or!29 (lhs!877 f!3790)) (rhs!877 (lhs!877 f!3790)) (f!4126 (lhs!877 f!3790)))))))))

(declare-fun b!66432 () Bool)

(assert (=> b!66432 (= e!35999 (= (nnf!1 (lhs!877 f!3790)) (lhs!877 f!3790)))))

(declare-fun b!66433 () Bool)

(assert (=> b!66433 (= e!35999 (= lt!13007 (lhs!877 f!3790)))))

(declare-fun b!66434 () Bool)

(declare-fun res!31526 () Formula!24)

(assert (=> b!66434 (= e!36000 res!31526)))

(assert (=> b!66434 true))

(assert (=> b!66434 true))

(declare-fun b!66435 () Bool)

(declare-fun e!36003 () Bool)

(declare-fun res!31528 () Bool)

(assert (=> b!66435 (= e!36003 res!31528)))

(assert (=> b!66435 true))

(declare-fun b!66436 () Bool)

(declare-fun e!36001 () Formula!24)

(assert (=> b!66436 (= e!36001 (nnf!1 (lhs!877 f!3790)))))

(declare-fun b!66437 () Bool)

(assert (=> b!66437 (= e!36000 (nnf!1 (lhs!877 f!3790)))))

(declare-fun d!53420 () Bool)

(assert (=> d!53420 e!36004))

(declare-fun c!15083 () Bool)

(assert (=> d!53420 (= c!15083 (or lt!13012 (is-Literal!23 (lhs!877 f!3790))))))

(assert (=> d!53420 (= lt!13009 e!36001)))

(declare-fun c!15082 () Bool)

(assert (=> d!53420 (= c!15082 (or lt!13012 (is-Literal!23 (lhs!877 f!3790))))))

(declare-fun lt!13008 () Bool)

(assert (=> d!53420 (= lt!13008 e!36003)))

(declare-fun c!15081 () Bool)

(assert (=> d!53420 (= c!15081 (or lt!13012 (and (not (is-Literal!23 (lhs!877 f!3790))) (or (is-Implies!29 (lhs!877 f!3790)) (is-Or!29 (lhs!877 f!3790))))))))

(declare-fun lt!13011 () Bool)

(assert (=> d!53420 (= lt!13011 e!36002)))

(declare-fun c!15080 () Bool)

(assert (=> d!53420 (= c!15080 (or lt!13012 (not (is-Literal!23 (lhs!877 f!3790)))))))

(assert (=> d!53420 (= lt!13012 (is-And!29 (lhs!877 f!3790)))))

(assert (=> d!53420 (isNNF!1 (lhs!877 f!3790))))

(assert (=> d!53420 (= (nnfIsStable!1 (lhs!877 f!3790)) true)))

(declare-fun b!66438 () Bool)

(assert (=> b!66438 (= e!36003 (nnfIsStable!1 (ite lt!13012 (lhs!875 (lhs!877 f!3790)) (ite (is-Implies!29 (lhs!877 f!3790)) (lhs!876 (lhs!877 f!3790)) (lhs!877 (lhs!877 f!3790))))))))

(declare-fun b!66439 () Bool)

(declare-fun res!31527 () Formula!24)

(assert (=> b!66439 (= e!36001 res!31527)))

(assert (=> b!66439 true))

(declare-fun b!66440 () Bool)

(declare-fun res!31525 () Bool)

(assert (=> b!66440 (= e!36002 res!31525)))

(assert (=> b!66440 true))

(assert (= (and d!53420 c!15080) b!66431))

(assert (= (and d!53420 (not c!15080)) b!66440))

(assert (= (and d!53420 c!15081) b!66438))

(assert (= (and d!53420 (not c!15081)) b!66435))

(assert (= (and d!53420 c!15082) b!66436))

(assert (= (and d!53420 (not c!15082)) b!66439))

(assert (= (and b!66430 c!15079) b!66437))

(assert (= (and b!66430 (not c!15079)) b!66434))

(assert (= (and b!66430 c!15078) b!66433))

(assert (= (and b!66430 (not c!15078)) b!66432))

(assert (= (and d!53420 c!15083) b!66429))

(assert (= (and d!53420 (not c!15083)) b!66430))

(declare-fun m!69665 () Bool)

(assert (=> d!53420 m!69665))

(declare-fun m!69667 () Bool)

(assert (=> b!66432 m!69667))

(declare-fun m!69669 () Bool)

(assert (=> b!66431 m!69669))

(declare-fun m!69671 () Bool)

(assert (=> b!66438 m!69671))

(assert (=> b!66436 m!69667))

(assert (=> b!66437 m!69667))

(assert (=> b!66280 d!53420))

(push 1)

(assert (not b!66308))

(assert (not d!53414))

(assert (not b!66432))

(assert (not b!66431))

(assert (not b!66438))

(assert (not b!66334))

(assert (not b!66437))

(assert (not d!53418))

(assert (not b!66309))

(assert (not b!66315))

(assert (not b!66417))

(assert (not b!66416))

(assert (not b!66335))

(assert (not d!53420))

(assert (not b!66313))

(assert (not b!66314))

(assert (not b!66436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

