; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10528 () Bool)

(assert start!10528)

(declare-fun m!74796 () Bool)

(assert (=> start!10528 m!74796))

(declare-fun b!80029 () Bool)

(declare-fun m!74798 () Bool)

(assert (=> b!80029 m!74798))

(declare-fun bs!38222 () Bool)

(assert (= bs!38222 (and b!80029 start!10528)))

(declare-datatypes () ((List!651 (Cons!609 (h!897 Int) (t!47638 List!651)) (Nil!611))))

(declare-fun r!611 () List!651)

(declare-fun l!1419 () List!651)

(declare-fun content!114 (List!651) (Set Int))

(assert (=> (and bs!38222 (= r!611 l!1419) (= (content!114 r!611) (content!114 l!1419))) (= true true)))

(declare-fun res!40535 () Bool)

(declare-fun e!43409 () Bool)

(assert (=> start!10528 (=> (not res!40535) (not e!43409))))

(assert (=> start!10528 (= res!40535 true)))

(assert (=> start!10528 true))

(assert (=> start!10528 e!43409))

(declare-fun b!80025 () Bool)

(declare-fun res!40536 () Bool)

(assert (=> b!80025 (=> (not res!40536) (not e!43409))))

(declare-fun x!29075 () Int)

(declare-fun ls!27 () List!651)

(declare-fun res!39943 () List!651)

(declare-fun par!0 (Int List!651 List!651 List!651) List!651)

(assert (=> b!80025 (= res!40536 (= res!39943 (par!0 x!29075 l!1419 (Cons!609 (h!897 ls!27) r!611) (t!47638 ls!27))))))

(declare-fun b!80026 () Bool)

(declare-fun e!43410 () Bool)

(assert (=> b!80026 (= e!43410 (not (= (content!114 res!39943) (insert x!29075 (union (union (content!114 l!1419) (content!114 r!611)) (content!114 ls!27))))))))

(declare-fun b!80027 () Bool)

(assert (=> b!80027 (= e!43409 e!43410)))

(declare-fun res!40537 () Bool)

(assert (=> b!80027 (=> res!40537 e!43410)))

(declare-fun isSorted!2 (List!651) Bool)

(assert (=> b!80027 (= res!40537 (not (isSorted!2 res!39943)))))

(declare-fun b!80028 () Bool)

(declare-fun res!40534 () Bool)

(assert (=> b!80028 (=> (not res!40534) (not e!43409))))

(assert (=> b!80028 (= res!40534 (and (not (is-Nil!611 ls!27)) (> (h!897 ls!27) x!29075)))))

(declare-fun res!40538 () Bool)

(assert (=> b!80029 (=> (not res!40538) (not e!43409))))

(assert (=> b!80029 (= res!40538 true)))

(assert (=> b!80029 true))

(assert (= (and start!10528 res!40535) b!80029))

(assert (= (and b!80029 res!40538) b!80028))

(assert (= (and b!80028 res!40534) b!80025))

(assert (= (and b!80025 res!40536) b!80027))

(assert (= (and b!80027 (not res!40537)) b!80026))

(declare-fun m!74800 () Bool)

(assert (=> b!80025 m!74800))

(assert (=> b!80026 m!74796))

(assert (=> b!80026 m!74798))

(declare-fun m!74802 () Bool)

(assert (=> b!80026 m!74802))

(declare-fun m!74804 () Bool)

(assert (=> b!80026 m!74804))

(declare-fun m!74806 () Bool)

(assert (=> b!80026 m!74806))

(declare-fun m!74808 () Bool)

(assert (=> b!80027 m!74808))

(push 1)

(assert (not b!80025))

(assert (not b!80029))

(assert (not b!80026))

(assert (not start!10528))

(assert (not b!80027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55325 () Bool)

(declare-fun c!20289 () Bool)

(assert (=> d!55325 (= c!20289 (is-Nil!611 l!1419))))

(declare-fun e!43413 () (Set Int))

(assert (=> d!55325 (= (content!114 l!1419) e!43413)))

(declare-fun b!80034 () Bool)

(assert (=> b!80034 (= e!43413 (as emptyset (Set Int)))))

(declare-fun b!80035 () Bool)

(assert (=> b!80035 (= e!43413 (union (insert (h!897 l!1419) (as emptyset (Set Int))) (content!114 (t!47638 l!1419))))))

(assert (= (and d!55325 c!20289) b!80034))

(assert (= (and d!55325 (not c!20289)) b!80035))

(declare-fun m!74810 () Bool)

(assert (=> b!80035 m!74810))

(declare-fun m!74812 () Bool)

(assert (=> b!80035 m!74812))

(assert (=> start!10528 d!55325))

(declare-fun d!55327 () Bool)

(declare-fun c!20290 () Bool)

(assert (=> d!55327 (= c!20290 (is-Nil!611 res!39943))))

(declare-fun e!43414 () (Set Int))

(assert (=> d!55327 (= (content!114 res!39943) e!43414)))

(declare-fun b!80036 () Bool)

(assert (=> b!80036 (= e!43414 (as emptyset (Set Int)))))

(declare-fun b!80037 () Bool)

(assert (=> b!80037 (= e!43414 (union (insert (h!897 res!39943) (as emptyset (Set Int))) (content!114 (t!47638 res!39943))))))

(assert (= (and d!55327 c!20290) b!80036))

(assert (= (and d!55327 (not c!20290)) b!80037))

(declare-fun m!74814 () Bool)

(assert (=> b!80037 m!74814))

(declare-fun m!74816 () Bool)

(assert (=> b!80037 m!74816))

(assert (=> b!80026 d!55327))

(assert (=> b!80026 d!55325))

(declare-fun d!55329 () Bool)

(declare-fun c!20291 () Bool)

(assert (=> d!55329 (= c!20291 (is-Nil!611 r!611))))

(declare-fun e!43415 () (Set Int))

(assert (=> d!55329 (= (content!114 r!611) e!43415)))

(declare-fun b!80038 () Bool)

(assert (=> b!80038 (= e!43415 (as emptyset (Set Int)))))

(declare-fun b!80039 () Bool)

(assert (=> b!80039 (= e!43415 (union (insert (h!897 r!611) (as emptyset (Set Int))) (content!114 (t!47638 r!611))))))

(assert (= (and d!55329 c!20291) b!80038))

(assert (= (and d!55329 (not c!20291)) b!80039))

(declare-fun m!74818 () Bool)

(assert (=> b!80039 m!74818))

(declare-fun m!74820 () Bool)

(assert (=> b!80039 m!74820))

(assert (=> b!80026 d!55329))

(declare-fun d!55331 () Bool)

(declare-fun c!20292 () Bool)

(assert (=> d!55331 (= c!20292 (is-Nil!611 ls!27))))

(declare-fun e!43416 () (Set Int))

(assert (=> d!55331 (= (content!114 ls!27) e!43416)))

(declare-fun b!80040 () Bool)

(assert (=> b!80040 (= e!43416 (as emptyset (Set Int)))))

(declare-fun b!80041 () Bool)

(assert (=> b!80041 (= e!43416 (union (insert (h!897 ls!27) (as emptyset (Set Int))) (content!114 (t!47638 ls!27))))))

(assert (= (and d!55331 c!20292) b!80040))

(assert (= (and d!55331 (not c!20292)) b!80041))

(declare-fun m!74822 () Bool)

(assert (=> b!80041 m!74822))

(declare-fun m!74824 () Bool)

(assert (=> b!80041 m!74824))

(assert (=> b!80026 d!55331))

(assert (=> b!80029 d!55329))

(declare-fun d!55333 () Bool)

(assert (=> d!55333 m!74796))

(declare-fun bs!38223 () Bool)

(assert (= bs!38223 (and d!55333 b!80029)))

(assert (=> (and bs!38223 (= l!1419 r!611) (= (content!114 l!1419) (content!114 r!611))) (= true true)))

(declare-fun bs!38224 () Bool)

(assert (= bs!38224 (and d!55333 start!10528)))

(assert (=> bs!38224 (= true true)))

(declare-fun bs!38225 () Bool)

(declare-fun b!80058 () Bool)

(assert (= bs!38225 (and b!80058 start!10528)))

(assert (=> bs!38225 (= true true)))

(declare-fun b!80057 () Bool)

(declare-fun m!74826 () Bool)

(assert (=> b!80057 m!74826))

(declare-fun bs!38226 () Bool)

(assert (= bs!38226 (and b!80057 b!80029)))

(assert (=> (and bs!38226 (= (Cons!609 (h!897 ls!27) r!611) r!611) (= (content!114 (Cons!609 (h!897 ls!27) r!611)) (content!114 r!611))) (= true true)))

(declare-fun bs!38227 () Bool)

(assert (= bs!38227 (and b!80057 start!10528)))

(assert (=> (and bs!38227 (= (Cons!609 (h!897 ls!27) r!611) l!1419) (= (content!114 (Cons!609 (h!897 ls!27) r!611)) (content!114 l!1419))) (= true true)))

(declare-fun bs!38228 () Bool)

(assert (= bs!38228 (and b!80057 d!55333)))

(assert (=> (and bs!38228 (= (Cons!609 (h!897 ls!27) r!611) l!1419) (= (content!114 (Cons!609 (h!897 ls!27) r!611)) (content!114 l!1419))) (= true true)))

(assert (=> (and bs!38226 (= (Cons!609 (h!897 ls!27) r!611) r!611)) (= true true)))

(declare-fun lt!18316 () List!651)

(declare-fun e!43429 () Bool)

(declare-fun b!80056 () Bool)

(assert (=> b!80056 (= e!43429 (= (content!114 lt!18316) (insert x!29075 (union (union (content!114 l!1419) (content!114 (Cons!609 (h!897 ls!27) r!611))) (content!114 (t!47638 ls!27))))))))

(declare-fun e!43427 () Bool)

(assert (=> b!80057 (= e!43427 true)))

(assert (=> b!80057 true))

(declare-fun res!40554 () Bool)

(assert (=> b!80058 (=> (not res!40554) (not e!43427))))

(assert (=> b!80058 (= res!40554 true)))

(declare-fun lt!18317 () Bool)

(declare-fun e!43428 () List!651)

(declare-fun b!80059 () Bool)

(assert (=> b!80059 (= e!43428 (par!0 x!29075 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) (t!47638 (t!47638 ls!27))))))

(assert (=> b!80059 (= lt!18317 (<= (h!897 (t!47638 ls!27)) x!29075))))

(declare-fun b!80060 () Bool)

(declare-fun appendSorted!0 (List!651 List!651) List!651)

(declare-fun quickSort!1 (List!651) List!651)

(assert (=> b!80060 (= e!43428 (appendSorted!0 (quickSort!1 l!1419) (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611)))))))

(assert (=> d!55333 e!43429))

(declare-fun res!40555 () Bool)

(assert (=> d!55333 (=> (not res!40555) (not e!43429))))

(assert (=> d!55333 (= res!40555 (isSorted!2 lt!18316))))

(assert (=> d!55333 (= lt!18316 e!43428)))

(declare-fun c!20295 () Bool)

(assert (=> d!55333 (= c!20295 (is-Nil!611 (t!47638 ls!27)))))

(assert (=> d!55333 e!43427))

(declare-fun res!40553 () Bool)

(assert (=> d!55333 (=> (not res!40553) (not e!43427))))

(assert (=> d!55333 (= res!40553 true)))

(assert (=> d!55333 (= (par!0 x!29075 l!1419 (Cons!609 (h!897 ls!27) r!611) (t!47638 ls!27)) lt!18316)))

(assert (= (and d!55333 res!40553) b!80058))

(assert (= (and b!80058 res!40554) b!80057))

(assert (= (and d!55333 c!20295) b!80060))

(assert (= (and d!55333 (not c!20295)) b!80059))

(assert (= (and d!55333 res!40555) b!80056))

(assert (=> b!80056 m!74824))

(assert (=> b!80056 m!74796))

(assert (=> b!80056 m!74826))

(declare-fun m!74828 () Bool)

(assert (=> b!80056 m!74828))

(declare-fun m!74830 () Bool)

(assert (=> b!80056 m!74830))

(declare-fun m!74832 () Bool)

(assert (=> b!80059 m!74832))

(declare-fun m!74834 () Bool)

(assert (=> b!80060 m!74834))

(declare-fun m!74836 () Bool)

(assert (=> b!80060 m!74836))

(assert (=> b!80060 m!74834))

(declare-fun m!74838 () Bool)

(assert (=> b!80060 m!74838))

(declare-fun m!74840 () Bool)

(assert (=> d!55333 m!74840))

(assert (=> b!80025 d!55333))

(declare-fun d!55335 () Bool)

(declare-fun res!40560 () Bool)

(declare-fun e!43434 () Bool)

(assert (=> d!55335 (=> res!40560 e!43434)))

(assert (=> d!55335 (= res!40560 (not (and (is-Cons!609 res!39943) (is-Cons!609 (t!47638 res!39943)))))))

(assert (=> d!55335 (= (isSorted!2 res!39943) e!43434)))

(declare-fun b!80065 () Bool)

(declare-fun e!43435 () Bool)

(assert (=> b!80065 (= e!43434 e!43435)))

(declare-fun res!40561 () Bool)

(assert (=> b!80065 (=> (not res!40561) (not e!43435))))

(assert (=> b!80065 (= res!40561 (<= (h!897 res!39943) (h!897 (t!47638 res!39943))))))

(declare-fun b!80066 () Bool)

(assert (=> b!80066 (= e!43435 (isSorted!2 (t!47638 res!39943)))))

(assert (= (and d!55335 (not res!40560)) b!80065))

(assert (= (and b!80065 res!40561) b!80066))

(declare-fun m!74842 () Bool)

(assert (=> b!80066 m!74842))

(assert (=> b!80027 d!55335))

(declare-fun bs!38229 () Bool)

(declare-fun s!2471 () Bool)

(assert (= bs!38229 (and start!10528 s!2471)))

(declare-fun contains!52 (List!651 Int) Bool)

(assert (=> bs!38229 (=> true (= (contains!52 l!1419 x!29075) (member x!29075 (content!114 l!1419))))))

(declare-fun m!74844 () Bool)

(assert (=> m!74806 m!74844))

(declare-fun m!74846 () Bool)

(assert (=> m!74806 m!74846))

(assert (=> m!74806 s!2471))

(declare-fun bs!38230 () Bool)

(declare-fun s!2473 () Bool)

(assert (= bs!38230 (and start!10528 b!80029 s!2473)))

(assert (=> bs!38230 (=> true (= (contains!52 r!611 x!29075) (member x!29075 (content!114 r!611))))))

(declare-fun m!74848 () Bool)

(assert (=> m!74806 m!74848))

(declare-fun m!74850 () Bool)

(assert (=> m!74806 m!74850))

(assert (=> m!74806 s!2473))

(push 1)

(assert (not b!80060))

(assert (not bs!38229))

(assert (not bs!38230))

(assert (not b!80037))

(assert (not b!80059))

(assert (not b!80057))

(assert (not b!80035))

(assert (not b!80041))

(assert (not b!80066))

(assert (not d!55333))

(assert (not b!80056))

(assert (not b!80039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> m!74850 s!2471))

(assert (=> m!74848 s!2471))

(assert (=> m!74846 s!2471))

(assert (=> m!74844 s!2471))

(declare-fun bs!38231 () Bool)

(declare-fun s!2475 () Bool)

(assert (= bs!38231 (and start!10528 s!2475)))

(declare-fun res!40562 () Bool)

(declare-fun e!43436 () Bool)

(assert (=> bs!38231 (=> res!40562 e!43436)))

(assert (=> bs!38231 (= res!40562 (not (contains!52 l!1419 x!29075)))))

(assert (=> bs!38231 (=> true e!43436)))

(declare-fun b!80067 () Bool)

(assert (=> b!80067 (= e!43436 (<= x!29075 x!29075))))

(assert (= (and bs!38231 (not res!40562)) b!80067))

(assert (=> m!74844 s!2475))

(assert (=> m!74848 s!2475))

(assert (=> m!74850 s!2473))

(assert (=> m!74846 s!2473))

(assert (=> m!74848 s!2473))

(assert (=> m!74844 s!2473))

(declare-fun bs!38232 () Bool)

(declare-fun s!2477 () Bool)

(assert (= bs!38232 (and start!10528 b!80029 s!2477)))

(declare-fun res!40563 () Bool)

(declare-fun e!43437 () Bool)

(assert (=> bs!38232 (=> res!40563 e!43437)))

(assert (=> bs!38232 (= res!40563 (not (contains!52 r!611 x!29075)))))

(assert (=> bs!38232 (=> true e!43437)))

(declare-fun b!80068 () Bool)

(assert (=> b!80068 (= e!43437 (< x!29075 x!29075))))

(assert (= (and bs!38232 (not res!40563)) b!80068))

(assert (=> m!74844 m!74848))

(assert (=> m!74844 s!2477))

(assert (=> m!74848 s!2477))

(declare-fun bs!38233 () Bool)

(declare-fun s!2479 () Bool)

(assert (= bs!38233 (and d!55333 s!2479)))

(assert (=> bs!38233 (=> true (= (contains!52 l!1419 x!29075) (member x!29075 (content!114 l!1419))))))

(assert (=> m!74844 m!74846))

(assert (=> m!74844 s!2479))

(assert (=> m!74848 s!2479))

(assert (=> m!74846 s!2479))

(assert (=> m!74850 s!2479))

(declare-fun bs!38234 () Bool)

(declare-fun s!2481 () Bool)

(assert (= bs!38234 (and d!55333 b!80058 s!2481)))

(declare-fun res!40564 () Bool)

(declare-fun e!43438 () Bool)

(assert (=> bs!38234 (=> res!40564 e!43438)))

(assert (=> bs!38234 (= res!40564 (not (contains!52 l!1419 x!29075)))))

(assert (=> bs!38234 (=> true e!43438)))

(declare-fun b!80069 () Bool)

(assert (=> b!80069 (= e!43438 (<= x!29075 x!29075))))

(assert (= (and bs!38234 (not res!40564)) b!80069))

(assert (=> m!74844 s!2481))

(assert (=> m!74848 s!2481))

(declare-fun bs!38235 () Bool)

(declare-fun s!2483 () Bool)

(assert (= bs!38235 (and d!55333 b!80058 b!80057 s!2483)))

(assert (=> bs!38235 (=> true (= (contains!52 (Cons!609 (h!897 ls!27) r!611) x!29075) (member x!29075 (content!114 (Cons!609 (h!897 ls!27) r!611)))))))

(declare-fun m!74852 () Bool)

(assert (=> m!74848 m!74852))

(declare-fun m!74854 () Bool)

(assert (=> m!74848 m!74854))

(assert (=> m!74848 s!2483))

(assert (=> m!74846 s!2483))

(assert (=> m!74844 s!2483))

(assert (=> m!74850 s!2483))

(declare-fun bs!38236 () Bool)

(declare-fun s!2485 () Bool)

(assert (= bs!38236 (and d!55333 b!80058 b!80057 s!2485)))

(declare-fun res!40565 () Bool)

(declare-fun e!43439 () Bool)

(assert (=> bs!38236 (=> res!40565 e!43439)))

(assert (=> bs!38236 (= res!40565 (not (contains!52 (Cons!609 (h!897 ls!27) r!611) x!29075)))))

(assert (=> bs!38236 (=> true e!43439)))

(declare-fun b!80070 () Bool)

(assert (=> b!80070 (= e!43439 (< x!29075 x!29075))))

(assert (= (and bs!38236 (not res!40565)) b!80070))

(assert (=> m!74844 m!74852))

(assert (=> m!74844 s!2485))

(assert (=> m!74848 s!2485))

(push 1)

(assert (not bs!38233))

(assert (not b!80060))

(assert (not bs!38236))

(assert (not bs!38231))

(assert (not bs!38229))

(assert (not bs!38232))

(assert (not bs!38230))

(assert (not b!80037))

(assert (not b!80059))

(assert (not b!80057))

(assert (not b!80035))

(assert (not b!80041))

(assert (not b!80066))

(assert (not bs!38234))

(assert (not d!55333))

(assert (not b!80056))

(assert (not bs!38235))

(assert (not b!80039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55337 () Bool)

(declare-fun res!40566 () Bool)

(declare-fun e!43440 () Bool)

(assert (=> d!55337 (=> res!40566 e!43440)))

(assert (=> d!55337 (= res!40566 (not (and (is-Cons!609 (t!47638 res!39943)) (is-Cons!609 (t!47638 (t!47638 res!39943))))))))

(assert (=> d!55337 (= (isSorted!2 (t!47638 res!39943)) e!43440)))

(declare-fun b!80071 () Bool)

(declare-fun e!43441 () Bool)

(assert (=> b!80071 (= e!43440 e!43441)))

(declare-fun res!40567 () Bool)

(assert (=> b!80071 (=> (not res!40567) (not e!43441))))

(assert (=> b!80071 (= res!40567 (<= (h!897 (t!47638 res!39943)) (h!897 (t!47638 (t!47638 res!39943)))))))

(declare-fun b!80072 () Bool)

(assert (=> b!80072 (= e!43441 (isSorted!2 (t!47638 (t!47638 res!39943))))))

(assert (= (and d!55337 (not res!40566)) b!80071))

(assert (= (and b!80071 res!40567) b!80072))

(declare-fun m!74856 () Bool)

(assert (=> b!80072 m!74856))

(assert (=> b!80066 d!55337))

(declare-fun d!55339 () Bool)

(declare-fun c!20296 () Bool)

(assert (=> d!55339 (= c!20296 (is-Nil!611 (t!47638 r!611)))))

(declare-fun e!43442 () (Set Int))

(assert (=> d!55339 (= (content!114 (t!47638 r!611)) e!43442)))

(declare-fun b!80073 () Bool)

(assert (=> b!80073 (= e!43442 (as emptyset (Set Int)))))

(declare-fun b!80074 () Bool)

(assert (=> b!80074 (= e!43442 (union (insert (h!897 (t!47638 r!611)) (as emptyset (Set Int))) (content!114 (t!47638 (t!47638 r!611)))))))

(assert (= (and d!55339 c!20296) b!80073))

(assert (= (and d!55339 (not c!20296)) b!80074))

(declare-fun m!74858 () Bool)

(assert (=> b!80074 m!74858))

(declare-fun m!74860 () Bool)

(assert (=> b!80074 m!74860))

(assert (=> b!80039 d!55339))

(declare-fun b!80089 () Bool)

(declare-fun e!43454 () Bool)

(declare-fun e!43453 () Bool)

(assert (=> b!80089 (= e!43454 e!43453)))

(declare-fun res!40583 () Bool)

(assert (=> b!80089 (=> res!40583 e!43453)))

(declare-fun isEmpty!663 (List!651) Bool)

(assert (=> b!80089 (= res!40583 (isEmpty!663 (quickSort!1 l!1419)))))

(declare-fun lt!18320 () List!651)

(declare-fun e!43451 () Bool)

(declare-fun b!80090 () Bool)

(assert (=> b!80090 (= e!43451 (= (content!114 lt!18320) (union (content!114 (quickSort!1 l!1419)) (content!114 (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611)))))))))

(declare-fun d!55341 () Bool)

(assert (=> d!55341 e!43451))

(declare-fun res!40579 () Bool)

(assert (=> d!55341 (=> (not res!40579) (not e!43451))))

(assert (=> d!55341 (= res!40579 (isSorted!2 lt!18320))))

(declare-fun e!43452 () List!651)

(assert (=> d!55341 (= lt!18320 e!43452)))

(declare-fun c!20299 () Bool)

(assert (=> d!55341 (= c!20299 (is-Nil!611 (quickSort!1 l!1419)))))

(assert (=> d!55341 e!43454))

(declare-fun res!40580 () Bool)

(assert (=> d!55341 (=> (not res!40580) (not e!43454))))

(assert (=> d!55341 (= res!40580 (isSorted!2 (quickSort!1 l!1419)))))

(assert (=> d!55341 (= (appendSorted!0 (quickSort!1 l!1419) (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611)))) lt!18320)))

(declare-fun b!80091 () Bool)

(assert (=> b!80091 (= e!43452 (Cons!609 (h!897 (quickSort!1 l!1419)) (appendSorted!0 (t!47638 (quickSort!1 l!1419)) (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611))))))))

(declare-fun b!80092 () Bool)

(assert (=> b!80092 (= e!43452 (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611))))))

(declare-fun b!80093 () Bool)

(declare-fun last!7 (List!651) Int)

(declare-fun head!1045 (List!651) Int)

(assert (=> b!80093 (= e!43453 (<= (last!7 (quickSort!1 l!1419)) (head!1045 (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611))))))))

(declare-fun b!80094 () Bool)

(declare-fun res!40581 () Bool)

(assert (=> b!80094 (=> res!40581 e!43453)))

(assert (=> b!80094 (= res!40581 (isEmpty!663 (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611)))))))

(declare-fun b!80095 () Bool)

(declare-fun res!40582 () Bool)

(assert (=> b!80095 (=> (not res!40582) (not e!43454))))

(assert (=> b!80095 (= res!40582 (isSorted!2 (Cons!609 x!29075 (quickSort!1 (Cons!609 (h!897 ls!27) r!611)))))))

(assert (= (and d!55341 res!40580) b!80095))

(assert (= (and b!80095 res!40582) b!80089))

(assert (= (and b!80089 (not res!40583)) b!80094))

(assert (= (and b!80094 (not res!40581)) b!80093))

(assert (= (and d!55341 c!20299) b!80092))

(assert (= (and d!55341 (not c!20299)) b!80091))

(assert (= (and d!55341 res!40579) b!80090))

(declare-fun m!74862 () Bool)

(assert (=> b!80094 m!74862))

(assert (=> b!80093 m!74834))

(declare-fun m!74864 () Bool)

(assert (=> b!80093 m!74864))

(declare-fun m!74866 () Bool)

(assert (=> b!80093 m!74866))

(declare-fun m!74868 () Bool)

(assert (=> d!55341 m!74868))

(assert (=> d!55341 m!74834))

(declare-fun m!74870 () Bool)

(assert (=> d!55341 m!74870))

(declare-fun m!74872 () Bool)

(assert (=> b!80090 m!74872))

(assert (=> b!80090 m!74834))

(declare-fun m!74874 () Bool)

(assert (=> b!80090 m!74874))

(declare-fun m!74876 () Bool)

(assert (=> b!80090 m!74876))

(assert (=> b!80089 m!74834))

(declare-fun m!74878 () Bool)

(assert (=> b!80089 m!74878))

(declare-fun m!74880 () Bool)

(assert (=> b!80091 m!74880))

(declare-fun m!74882 () Bool)

(assert (=> b!80095 m!74882))

(assert (=> b!80060 d!55341))

(declare-fun d!55343 () Bool)

(declare-fun e!43460 () Bool)

(assert (=> d!55343 e!43460))

(declare-fun res!40587 () Bool)

(assert (=> d!55343 (=> (not res!40587) (not e!43460))))

(declare-fun lt!18323 () List!651)

(assert (=> d!55343 (= res!40587 (isSorted!2 lt!18323))))

(declare-fun e!43459 () List!651)

(assert (=> d!55343 (= lt!18323 e!43459)))

(declare-fun c!20302 () Bool)

(assert (=> d!55343 (= c!20302 (is-Nil!611 l!1419))))

(assert (=> d!55343 (= (quickSort!1 l!1419) lt!18323)))

(declare-fun b!80102 () Bool)

(assert (=> b!80102 (= e!43459 Nil!611)))

(declare-fun b!80103 () Bool)

(assert (=> b!80103 (= e!43459 (par!0 (h!897 l!1419) Nil!611 Nil!611 (t!47638 l!1419)))))

(declare-fun b!80104 () Bool)

(assert (=> b!80104 (= e!43460 (= (content!114 lt!18323) (content!114 l!1419)))))

(assert (= (and d!55343 c!20302) b!80102))

(assert (= (and d!55343 (not c!20302)) b!80103))

(assert (= (and d!55343 res!40587) b!80104))

(declare-fun m!74884 () Bool)

(assert (=> d!55343 m!74884))

(declare-fun m!74886 () Bool)

(assert (=> b!80103 m!74886))

(declare-fun m!74888 () Bool)

(assert (=> b!80104 m!74888))

(assert (=> b!80104 m!74796))

(assert (=> b!80060 d!55343))

(declare-fun d!55345 () Bool)

(declare-fun e!43462 () Bool)

(assert (=> d!55345 e!43462))

(declare-fun res!40588 () Bool)

(assert (=> d!55345 (=> (not res!40588) (not e!43462))))

(declare-fun lt!18324 () List!651)

(assert (=> d!55345 (= res!40588 (isSorted!2 lt!18324))))

(declare-fun e!43461 () List!651)

(assert (=> d!55345 (= lt!18324 e!43461)))

(declare-fun c!20303 () Bool)

(assert (=> d!55345 (= c!20303 (is-Nil!611 (Cons!609 (h!897 ls!27) r!611)))))

(assert (=> d!55345 (= (quickSort!1 (Cons!609 (h!897 ls!27) r!611)) lt!18324)))

(declare-fun b!80105 () Bool)

(assert (=> b!80105 (= e!43461 Nil!611)))

(declare-fun b!80106 () Bool)

(assert (=> b!80106 (= e!43461 (par!0 (h!897 (Cons!609 (h!897 ls!27) r!611)) Nil!611 Nil!611 (t!47638 (Cons!609 (h!897 ls!27) r!611))))))

(declare-fun b!80107 () Bool)

(assert (=> b!80107 (= e!43462 (= (content!114 lt!18324) (content!114 (Cons!609 (h!897 ls!27) r!611))))))

(assert (= (and d!55345 c!20303) b!80105))

(assert (= (and d!55345 (not c!20303)) b!80106))

(assert (= (and d!55345 res!40588) b!80107))

(declare-fun m!74890 () Bool)

(assert (=> d!55345 m!74890))

(declare-fun m!74892 () Bool)

(assert (=> b!80106 m!74892))

(declare-fun m!74894 () Bool)

(assert (=> b!80107 m!74894))

(assert (=> b!80107 m!74826))

(assert (=> b!80060 d!55345))

(declare-fun d!55347 () Bool)

(declare-fun c!20304 () Bool)

(assert (=> d!55347 (= c!20304 (is-Nil!611 (t!47638 ls!27)))))

(declare-fun e!43463 () (Set Int))

(assert (=> d!55347 (= (content!114 (t!47638 ls!27)) e!43463)))

(declare-fun b!80108 () Bool)

(assert (=> b!80108 (= e!43463 (as emptyset (Set Int)))))

(declare-fun b!80109 () Bool)

(assert (=> b!80109 (= e!43463 (union (insert (h!897 (t!47638 ls!27)) (as emptyset (Set Int))) (content!114 (t!47638 (t!47638 ls!27)))))))

(assert (= (and d!55347 c!20304) b!80108))

(assert (= (and d!55347 (not c!20304)) b!80109))

(declare-fun m!74896 () Bool)

(assert (=> b!80109 m!74896))

(declare-fun m!74898 () Bool)

(assert (=> b!80109 m!74898))

(assert (=> b!80041 d!55347))

(declare-fun d!55349 () Bool)

(declare-fun c!20305 () Bool)

(assert (=> d!55349 (= c!20305 (is-Nil!611 (t!47638 l!1419)))))

(declare-fun e!43464 () (Set Int))

(assert (=> d!55349 (= (content!114 (t!47638 l!1419)) e!43464)))

(declare-fun b!80110 () Bool)

(assert (=> b!80110 (= e!43464 (as emptyset (Set Int)))))

(declare-fun b!80111 () Bool)

(assert (=> b!80111 (= e!43464 (union (insert (h!897 (t!47638 l!1419)) (as emptyset (Set Int))) (content!114 (t!47638 (t!47638 l!1419)))))))

(assert (= (and d!55349 c!20305) b!80110))

(assert (= (and d!55349 (not c!20305)) b!80111))

(declare-fun m!74900 () Bool)

(assert (=> b!80111 m!74900))

(declare-fun m!74902 () Bool)

(assert (=> b!80111 m!74902))

(assert (=> b!80035 d!55349))

(declare-fun d!55351 () Bool)

(declare-fun lt!18327 () Bool)

(assert (=> d!55351 (= lt!18327 (member x!29075 (content!114 l!1419)))))

(declare-fun e!43469 () Bool)

(assert (=> d!55351 (= lt!18327 e!43469)))

(declare-fun res!40593 () Bool)

(assert (=> d!55351 (=> (not res!40593) (not e!43469))))

(assert (=> d!55351 (= res!40593 (is-Cons!609 l!1419))))

(assert (=> d!55351 (= (contains!52 l!1419 x!29075) lt!18327)))

(declare-fun b!80116 () Bool)

(declare-fun e!43470 () Bool)

(assert (=> b!80116 (= e!43469 e!43470)))

(declare-fun res!40594 () Bool)

(assert (=> b!80116 (=> res!40594 e!43470)))

(assert (=> b!80116 (= res!40594 (= (h!897 l!1419) x!29075))))

(declare-fun b!80117 () Bool)

(assert (=> b!80117 (= e!43470 (contains!52 (t!47638 l!1419) x!29075))))

(assert (= (and d!55351 res!40593) b!80116))

(assert (= (and b!80116 (not res!40594)) b!80117))

(assert (=> d!55351 m!74796))

(assert (=> d!55351 m!74846))

(declare-fun bs!38237 () Bool)

(declare-fun m!74904 () Bool)

(assert (= bs!38237 m!74904))

(assert (=> bs!38237 s!2471))

(assert (=> bs!38237 s!2475))

(assert (=> bs!38237 s!2473))

(assert (=> bs!38237 s!2477))

(assert (=> bs!38237 s!2479))

(assert (=> bs!38237 s!2481))

(assert (=> bs!38237 s!2483))

(assert (=> bs!38237 s!2485))

(assert (=> b!80117 m!74904))

(assert (=> bs!38229 d!55351))

(declare-fun d!55353 () Bool)

(declare-fun lt!18328 () Bool)

(assert (=> d!55353 (= lt!18328 (member x!29075 (content!114 r!611)))))

(declare-fun e!43471 () Bool)

(assert (=> d!55353 (= lt!18328 e!43471)))

(declare-fun res!40595 () Bool)

(assert (=> d!55353 (=> (not res!40595) (not e!43471))))

(assert (=> d!55353 (= res!40595 (is-Cons!609 r!611))))

(assert (=> d!55353 (= (contains!52 r!611 x!29075) lt!18328)))

(declare-fun b!80118 () Bool)

(declare-fun e!43472 () Bool)

(assert (=> b!80118 (= e!43471 e!43472)))

(declare-fun res!40596 () Bool)

(assert (=> b!80118 (=> res!40596 e!43472)))

(assert (=> b!80118 (= res!40596 (= (h!897 r!611) x!29075))))

(declare-fun b!80119 () Bool)

(assert (=> b!80119 (= e!43472 (contains!52 (t!47638 r!611) x!29075))))

(assert (= (and d!55353 res!40595) b!80118))

(assert (= (and b!80118 (not res!40596)) b!80119))

(assert (=> d!55353 m!74798))

(assert (=> d!55353 m!74850))

(declare-fun bs!38238 () Bool)

(declare-fun m!74906 () Bool)

(assert (= bs!38238 m!74906))

(assert (=> bs!38238 s!2471))

(assert (=> bs!38238 s!2475))

(assert (=> bs!38238 s!2473))

(assert (=> bs!38238 s!2477))

(assert (=> bs!38238 s!2479))

(assert (=> bs!38238 s!2481))

(assert (=> bs!38238 s!2483))

(assert (=> bs!38238 s!2485))

(assert (=> b!80119 m!74906))

(assert (=> bs!38230 d!55353))

(declare-fun d!55355 () Bool)

(declare-fun m!74908 () Bool)

(assert (=> d!55355 m!74908))

(declare-fun bs!38239 () Bool)

(assert (= bs!38239 (and d!55355 b!80029)))

(assert (=> (and bs!38239 (= (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) r!611) (= (content!114 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (content!114 r!611))) (= true true)))

(declare-fun bs!38240 () Bool)

(assert (= bs!38240 (and d!55355 start!10528)))

(assert (=> (and bs!38240 (= (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) l!1419) (= (content!114 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (content!114 l!1419))) (= true true)))

(declare-fun bs!38241 () Bool)

(assert (= bs!38241 (and d!55355 d!55333)))

(assert (=> (and bs!38241 (= (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) l!1419) (= (content!114 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (content!114 l!1419))) (= true true)))

(declare-fun bs!38242 () Bool)

(assert (= bs!38242 (and d!55355 b!80057)))

(assert (=> (and bs!38242 (= (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) (Cons!609 (h!897 ls!27) r!611)) (= (content!114 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (content!114 (Cons!609 (h!897 ls!27) r!611)))) (= true true)))

(declare-fun bs!38243 () Bool)

(declare-fun b!80122 () Bool)

(assert (= bs!38243 (and b!80122 b!80058)))

(assert (=> (and bs!38243 (= (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) l!1419)) (= true true)))

(declare-fun bs!38244 () Bool)

(assert (= bs!38244 (and b!80122 start!10528)))

(assert (=> (and bs!38244 (= (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) l!1419)) (= true true)))

(declare-fun b!80121 () Bool)

(declare-fun m!74910 () Bool)

(assert (=> b!80121 m!74910))

(declare-fun bs!38245 () Bool)

(assert (= bs!38245 (and b!80121 b!80029)))

(assert (=> (and bs!38245 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) r!611) (= (content!114 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611)))) (content!114 r!611))) (= true true)))

(declare-fun bs!38246 () Bool)

(assert (= bs!38246 (and b!80121 start!10528)))

(assert (=> (and bs!38246 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) l!1419) (= (content!114 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611)))) (content!114 l!1419))) (= true true)))

(declare-fun bs!38247 () Bool)

(assert (= bs!38247 (and b!80121 d!55355)))

(assert (=> (and bs!38247 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (= (content!114 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611)))) (content!114 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)))) (= true true)))

(declare-fun bs!38248 () Bool)

(assert (= bs!38248 (and b!80121 d!55333)))

(assert (=> (and bs!38248 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) l!1419) (= (content!114 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611)))) (content!114 l!1419))) (= true true)))

(declare-fun bs!38249 () Bool)

(assert (= bs!38249 (and b!80121 b!80057)))

(assert (=> (and bs!38249 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) (Cons!609 (h!897 ls!27) r!611)) (= (content!114 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611)))) (content!114 (Cons!609 (h!897 ls!27) r!611)))) (= true true)))

(assert (=> (and bs!38245 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) r!611)) (= true true)))

(assert (=> (and bs!38249 (= (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) (Cons!609 (h!897 ls!27) r!611))) (= true true)))

(declare-fun lt!18329 () List!651)

(declare-fun b!80120 () Bool)

(declare-fun e!43475 () Bool)

(assert (=> b!80120 (= e!43475 (= (content!114 lt!18329) (insert x!29075 (union (union (content!114 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (content!114 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))))) (content!114 (t!47638 (t!47638 ls!27)))))))))

(declare-fun e!43473 () Bool)

(assert (=> b!80121 (= e!43473 true)))

(assert (=> b!80121 true))

(declare-fun res!40598 () Bool)

(assert (=> b!80122 (=> (not res!40598) (not e!43473))))

(assert (=> b!80122 (= res!40598 true)))

(declare-fun e!43474 () List!651)

(declare-fun b!80123 () Bool)

(declare-fun lt!18330 () Bool)

(assert (=> b!80123 (= e!43474 (par!0 x!29075 (ite lt!18330 (Cons!609 (h!897 (t!47638 (t!47638 ls!27))) (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (ite lt!18330 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) (Cons!609 (h!897 (t!47638 (t!47638 ls!27))) (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))))) (t!47638 (t!47638 (t!47638 ls!27)))))))

(assert (=> b!80123 (= lt!18330 (<= (h!897 (t!47638 (t!47638 ls!27))) x!29075))))

(declare-fun b!80124 () Bool)

(assert (=> b!80124 (= e!43474 (appendSorted!0 (quickSort!1 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419)) (Cons!609 x!29075 (quickSort!1 (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611)))))))))

(assert (=> d!55355 e!43475))

(declare-fun res!40599 () Bool)

(assert (=> d!55355 (=> (not res!40599) (not e!43475))))

(assert (=> d!55355 (= res!40599 (isSorted!2 lt!18329))))

(assert (=> d!55355 (= lt!18329 e!43474)))

(declare-fun c!20306 () Bool)

(assert (=> d!55355 (= c!20306 (is-Nil!611 (t!47638 (t!47638 ls!27))))))

(assert (=> d!55355 e!43473))

(declare-fun res!40597 () Bool)

(assert (=> d!55355 (=> (not res!40597) (not e!43473))))

(assert (=> d!55355 (= res!40597 true)))

(assert (=> d!55355 (= (par!0 x!29075 (ite lt!18317 (Cons!609 (h!897 (t!47638 ls!27)) l!1419) l!1419) (ite lt!18317 (Cons!609 (h!897 ls!27) r!611) (Cons!609 (h!897 (t!47638 ls!27)) (Cons!609 (h!897 ls!27) r!611))) (t!47638 (t!47638 ls!27))) lt!18329)))

(assert (= (and d!55355 res!40597) b!80122))

(assert (= (and b!80122 res!40598) b!80121))

(assert (= (and d!55355 c!20306) b!80124))

(assert (= (and d!55355 (not c!20306)) b!80123))

(assert (= (and d!55355 res!40599) b!80120))

(assert (=> b!80120 m!74898))

(assert (=> b!80120 m!74908))

(assert (=> b!80120 m!74910))

(declare-fun bs!38250 () Bool)

(declare-fun m!74912 () Bool)

(assert (= bs!38250 m!74912))

(assert (=> bs!38250 s!2471))

(assert (=> bs!38250 s!2473))

(assert (=> bs!38250 s!2479))

(assert (=> bs!38250 s!2483))

(assert (=> b!80120 m!74912))

(declare-fun m!74914 () Bool)

(assert (=> b!80120 m!74914))

(declare-fun m!74916 () Bool)

(assert (=> b!80123 m!74916))

(declare-fun m!74918 () Bool)

(assert (=> b!80124 m!74918))

(declare-fun m!74920 () Bool)

(assert (=> b!80124 m!74920))

(assert (=> b!80124 m!74918))

(declare-fun m!74922 () Bool)

(assert (=> b!80124 m!74922))

(declare-fun m!74924 () Bool)

(assert (=> d!55355 m!74924))

(assert (=> b!80059 d!55355))

(assert (=> d!55333 d!55325))

(declare-fun d!55357 () Bool)

(declare-fun res!40600 () Bool)

(declare-fun e!43476 () Bool)

(assert (=> d!55357 (=> res!40600 e!43476)))

(assert (=> d!55357 (= res!40600 (not (and (is-Cons!609 lt!18316) (is-Cons!609 (t!47638 lt!18316)))))))

(assert (=> d!55357 (= (isSorted!2 lt!18316) e!43476)))

(declare-fun b!80125 () Bool)

(declare-fun e!43477 () Bool)

(assert (=> b!80125 (= e!43476 e!43477)))

(declare-fun res!40601 () Bool)

(assert (=> b!80125 (=> (not res!40601) (not e!43477))))

(assert (=> b!80125 (= res!40601 (<= (h!897 lt!18316) (h!897 (t!47638 lt!18316))))))

(declare-fun b!80126 () Bool)

(assert (=> b!80126 (= e!43477 (isSorted!2 (t!47638 lt!18316)))))

(assert (= (and d!55357 (not res!40600)) b!80125))

(assert (= (and b!80125 res!40601) b!80126))

(declare-fun m!74926 () Bool)

(assert (=> b!80126 m!74926))

(assert (=> d!55333 d!55357))

(declare-fun d!55359 () Bool)

(declare-fun c!20307 () Bool)

(assert (=> d!55359 (= c!20307 (is-Nil!611 (t!47638 res!39943)))))

(declare-fun e!43478 () (Set Int))

(assert (=> d!55359 (= (content!114 (t!47638 res!39943)) e!43478)))

(declare-fun b!80127 () Bool)

(assert (=> b!80127 (= e!43478 (as emptyset (Set Int)))))

(declare-fun b!80128 () Bool)

(assert (=> b!80128 (= e!43478 (union (insert (h!897 (t!47638 res!39943)) (as emptyset (Set Int))) (content!114 (t!47638 (t!47638 res!39943)))))))

(assert (= (and d!55359 c!20307) b!80127))

(assert (= (and d!55359 (not c!20307)) b!80128))

(declare-fun m!74928 () Bool)

(assert (=> b!80128 m!74928))

(declare-fun m!74930 () Bool)

(assert (=> b!80128 m!74930))

(assert (=> b!80037 d!55359))

(declare-fun d!55361 () Bool)

(declare-fun c!20308 () Bool)

(assert (=> d!55361 (= c!20308 (is-Nil!611 (Cons!609 (h!897 ls!27) r!611)))))

(declare-fun e!43479 () (Set Int))

(assert (=> d!55361 (= (content!114 (Cons!609 (h!897 ls!27) r!611)) e!43479)))

(declare-fun b!80129 () Bool)

(assert (=> b!80129 (= e!43479 (as emptyset (Set Int)))))

(declare-fun b!80130 () Bool)

(assert (=> b!80130 (= e!43479 (union (insert (h!897 (Cons!609 (h!897 ls!27) r!611)) (as emptyset (Set Int))) (content!114 (t!47638 (Cons!609 (h!897 ls!27) r!611)))))))

(assert (= (and d!55361 c!20308) b!80129))

(assert (= (and d!55361 (not c!20308)) b!80130))

(declare-fun m!74932 () Bool)

(assert (=> b!80130 m!74932))

(declare-fun m!74934 () Bool)

(assert (=> b!80130 m!74934))

(assert (=> b!80057 d!55361))

(declare-fun d!55363 () Bool)

(declare-fun c!20309 () Bool)

(assert (=> d!55363 (= c!20309 (is-Nil!611 lt!18316))))

(declare-fun e!43480 () (Set Int))

(assert (=> d!55363 (= (content!114 lt!18316) e!43480)))

(declare-fun b!80131 () Bool)

(assert (=> b!80131 (= e!43480 (as emptyset (Set Int)))))

(declare-fun b!80132 () Bool)

(assert (=> b!80132 (= e!43480 (union (insert (h!897 lt!18316) (as emptyset (Set Int))) (content!114 (t!47638 lt!18316))))))

(assert (= (and d!55363 c!20309) b!80131))

(assert (= (and d!55363 (not c!20309)) b!80132))

(declare-fun m!74936 () Bool)

(assert (=> b!80132 m!74936))

(declare-fun m!74938 () Bool)

(assert (=> b!80132 m!74938))

(assert (=> b!80056 d!55363))

(assert (=> b!80056 d!55325))

(assert (=> b!80056 d!55361))

(assert (=> b!80056 d!55347))

(assert (=> m!74828 s!2471))

(assert (=> m!74854 s!2471))

(declare-fun bs!38251 () Bool)

(declare-fun s!2487 () Bool)

(assert (= bs!38251 (and start!10528 s!2487)))

(assert (=> bs!38251 (=> true (= (contains!52 l!1419 (h!897 r!611)) (member (h!897 r!611) (content!114 l!1419))))))

(declare-fun m!74940 () Bool)

(assert (=> m!74818 m!74940))

(declare-fun m!74942 () Bool)

(assert (=> m!74818 m!74942))

(assert (=> m!74818 s!2487))

(declare-fun bs!38252 () Bool)

(declare-fun s!2489 () Bool)

(assert (= bs!38252 (and start!10528 s!2489)))

(assert (=> bs!38252 (=> true (= (contains!52 l!1419 (h!897 ls!27)) (member (h!897 ls!27) (content!114 l!1419))))))

(declare-fun m!74944 () Bool)

(assert (=> m!74822 m!74944))

(declare-fun m!74946 () Bool)

(assert (=> m!74822 m!74946))

(assert (=> m!74822 s!2489))

(declare-fun bs!38253 () Bool)

(declare-fun s!2491 () Bool)

(assert (= bs!38253 (and start!10528 s!2491)))

(assert (=> bs!38253 (=> true (= (contains!52 l!1419 (h!897 l!1419)) (member (h!897 l!1419) (content!114 l!1419))))))

(declare-fun m!74948 () Bool)

(assert (=> m!74810 m!74948))

(declare-fun m!74950 () Bool)

(assert (=> m!74810 m!74950))

(assert (=> m!74810 s!2491))

(assert (=> m!74852 s!2471))

(declare-fun bs!38254 () Bool)

(declare-fun s!2493 () Bool)

(assert (= bs!38254 (and start!10528 s!2493)))

(assert (=> bs!38254 (=> true (= (contains!52 l!1419 (h!897 res!39943)) (member (h!897 res!39943) (content!114 l!1419))))))

(declare-fun m!74952 () Bool)

(assert (=> m!74814 m!74952))

(declare-fun m!74954 () Bool)

(assert (=> m!74814 m!74954))

(assert (=> m!74814 s!2493))

(assert (=> m!74852 s!2475))

(declare-fun bs!38255 () Bool)

(declare-fun s!2495 () Bool)

(assert (= bs!38255 (and start!10528 b!80029 s!2495)))

(assert (=> bs!38255 (=> true (= (contains!52 r!611 (h!897 r!611)) (member (h!897 r!611) (content!114 r!611))))))

(declare-fun m!74956 () Bool)

(assert (=> m!74818 m!74956))

(declare-fun m!74958 () Bool)

(assert (=> m!74818 m!74958))

(assert (=> m!74818 s!2495))

(assert (=> m!74852 s!2473))

(declare-fun bs!38256 () Bool)

(declare-fun s!2497 () Bool)

(assert (= bs!38256 (and start!10528 b!80029 s!2497)))

(assert (=> bs!38256 (=> true (= (contains!52 r!611 (h!897 ls!27)) (member (h!897 ls!27) (content!114 r!611))))))

(declare-fun m!74960 () Bool)

(assert (=> m!74822 m!74960))

(declare-fun m!74962 () Bool)

(assert (=> m!74822 m!74962))

(assert (=> m!74822 s!2497))

(assert (=> m!74854 s!2473))

(declare-fun bs!38257 () Bool)

(declare-fun s!2499 () Bool)

(assert (= bs!38257 (and start!10528 b!80029 s!2499)))

(assert (=> bs!38257 (=> true (= (contains!52 r!611 (h!897 res!39943)) (member (h!897 res!39943) (content!114 r!611))))))

(declare-fun m!74964 () Bool)

(assert (=> m!74814 m!74964))

(declare-fun m!74966 () Bool)

(assert (=> m!74814 m!74966))

(assert (=> m!74814 s!2499))

(declare-fun bs!38258 () Bool)

(declare-fun s!2501 () Bool)

(assert (= bs!38258 (and start!10528 b!80029 s!2501)))

(assert (=> bs!38258 (=> true (= (contains!52 r!611 (h!897 l!1419)) (member (h!897 l!1419) (content!114 r!611))))))

(declare-fun m!74968 () Bool)

(assert (=> m!74810 m!74968))

(declare-fun m!74970 () Bool)

(assert (=> m!74810 m!74970))

(assert (=> m!74810 s!2501))

(assert (=> m!74828 s!2473))

(assert (=> m!74852 s!2477))

(assert (=> m!74852 s!2479))

(assert (=> m!74806 s!2479))

(declare-fun bs!38259 () Bool)

(declare-fun s!2503 () Bool)

(assert (= bs!38259 (and d!55333 s!2503)))

(assert (=> bs!38259 (=> true (= (contains!52 l!1419 (h!897 l!1419)) (member (h!897 l!1419) (content!114 l!1419))))))

(assert (=> m!74810 m!74948))

(assert (=> m!74810 m!74950))

(assert (=> m!74810 s!2503))

(declare-fun bs!38260 () Bool)

(declare-fun s!2505 () Bool)

(assert (= bs!38260 (and d!55333 s!2505)))

(assert (=> bs!38260 (=> true (= (contains!52 l!1419 (h!897 ls!27)) (member (h!897 ls!27) (content!114 l!1419))))))

(assert (=> m!74822 m!74944))

(assert (=> m!74822 m!74946))

(assert (=> m!74822 s!2505))

(declare-fun bs!38261 () Bool)

(declare-fun s!2507 () Bool)

(assert (= bs!38261 (and d!55333 s!2507)))

(assert (=> bs!38261 (=> true (= (contains!52 l!1419 (h!897 r!611)) (member (h!897 r!611) (content!114 l!1419))))))

(assert (=> m!74818 m!74940))

(assert (=> m!74818 m!74942))

(assert (=> m!74818 s!2507))

(assert (=> m!74854 s!2479))

(declare-fun bs!38262 () Bool)

(declare-fun s!2509 () Bool)

(assert (= bs!38262 (and d!55333 s!2509)))

(assert (=> bs!38262 (=> true (= (contains!52 l!1419 (h!897 res!39943)) (member (h!897 res!39943) (content!114 l!1419))))))

(assert (=> m!74814 m!74952))

(assert (=> m!74814 m!74954))

(assert (=> m!74814 s!2509))

(assert (=> m!74828 s!2479))

(assert (=> m!74852 s!2481))

(assert (=> m!74828 s!2483))

(declare-fun s!2511 () Bool)

(declare-fun bs!38263 () Bool)

(assert (= bs!38263 (and d!55333 b!80058 b!80057 s!2511)))

(assert (=> bs!38263 (=> true (= (contains!52 (Cons!609 (h!897 ls!27) r!611) (h!897 ls!27)) (member (h!897 ls!27) (content!114 (Cons!609 (h!897 ls!27) r!611)))))))

(declare-fun m!74972 () Bool)

(assert (=> m!74822 m!74972))

(declare-fun m!74974 () Bool)

(assert (=> m!74822 m!74974))

(assert (=> m!74822 s!2511))

(assert (=> m!74854 s!2483))

(declare-fun s!2513 () Bool)

(declare-fun bs!38264 () Bool)

(assert (= bs!38264 (and d!55333 b!80058 b!80057 s!2513)))

(assert (=> bs!38264 (=> true (= (contains!52 (Cons!609 (h!897 ls!27) r!611) (h!897 r!611)) (member (h!897 r!611) (content!114 (Cons!609 (h!897 ls!27) r!611)))))))

(declare-fun m!74976 () Bool)

(assert (=> m!74818 m!74976))

(declare-fun m!74978 () Bool)

(assert (=> m!74818 m!74978))

(assert (=> m!74818 s!2513))

(declare-fun s!2515 () Bool)

(declare-fun bs!38265 () Bool)

(assert (= bs!38265 (and d!55333 b!80058 b!80057 s!2515)))

(assert (=> bs!38265 (=> true (= (contains!52 (Cons!609 (h!897 ls!27) r!611) (h!897 l!1419)) (member (h!897 l!1419) (content!114 (Cons!609 (h!897 ls!27) r!611)))))))

(declare-fun m!74980 () Bool)

(assert (=> m!74810 m!74980))

(declare-fun m!74982 () Bool)

(assert (=> m!74810 m!74982))

(assert (=> m!74810 s!2515))

(declare-fun s!2517 () Bool)

(declare-fun bs!38266 () Bool)

(assert (= bs!38266 (and d!55333 b!80058 b!80057 s!2517)))

(assert (=> bs!38266 (=> true (= (contains!52 (Cons!609 (h!897 ls!27) r!611) (h!897 res!39943)) (member (h!897 res!39943) (content!114 (Cons!609 (h!897 ls!27) r!611)))))))

(declare-fun m!74984 () Bool)

(assert (=> m!74814 m!74984))

(declare-fun m!74986 () Bool)

(assert (=> m!74814 m!74986))

(assert (=> m!74814 s!2517))

(assert (=> m!74852 s!2483))

(assert (=> m!74806 s!2483))

(assert (=> m!74852 s!2485))

(push 1)

(assert (not d!55353))

(assert (not bs!38233))

(assert (not d!55351))

(assert (not bs!38256))

(assert (not b!80119))

(assert (not bs!38266))

(assert (not b!80103))

(assert (not bs!38264))

(assert (not d!55341))

(assert (not b!80120))

(assert (not b!80109))

(assert (not bs!38236))

(assert (not b!80093))

(assert (not bs!38231))

(assert (not b!80095))

(assert (not b!80074))

(assert (not b!80104))

(assert (not b!80089))

(assert (not bs!38255))

(assert (not b!80094))

(assert (not bs!38232))

(assert (not b!80091))

(assert (not bs!38257))

(assert (not bs!38251))

(assert (not bs!38261))

(assert (not b!80130))

(assert (not b!80111))

(assert (not bs!38252))

(assert (not d!55345))

(assert (not d!55343))

(assert (not b!80090))

(assert (not b!80121))

(assert (not bs!38259))

(assert (not b!80072))

(assert (not bs!38263))

(assert (not bs!38262))

(assert (not b!80126))

(assert (not bs!38260))

(assert (not bs!38234))

(assert (not bs!38265))

(assert (not b!80128))

(assert (not b!80123))

(assert (not d!55355))

(assert (not b!80124))

(assert (not bs!38254))

(assert (not b!80117))

(assert (not b!80107))

(assert (not b!80106))

(assert (not bs!38235))

(assert (not bs!38253))

(assert (not b!80132))

(assert (not bs!38258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

