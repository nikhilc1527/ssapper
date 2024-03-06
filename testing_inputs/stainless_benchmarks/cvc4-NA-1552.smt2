; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10494 () Bool)

(assert start!10494)

(declare-fun m!74406 () Bool)

(assert (=> start!10494 m!74406))

(declare-fun b!79760 () Bool)

(declare-fun m!74408 () Bool)

(assert (=> b!79760 m!74408))

(declare-fun bs!38149 () Bool)

(assert (= bs!38149 (and b!79760 start!10494)))

(declare-datatypes () ((List!649 (Cons!607 (h!894 Int) (t!47636 List!649)) (Nil!609))))

(declare-fun r!611 () List!649)

(declare-fun l!1419 () List!649)

(declare-fun content!112 (List!649) (Set Int))

(assert (=> (and bs!38149 (= r!611 l!1419) (= (content!112 r!611) (content!112 l!1419))) (= true true)))

(declare-fun b!79756 () Bool)

(declare-fun res!40359 () Bool)

(declare-fun e!43233 () Bool)

(assert (=> b!79756 (=> (not res!40359) (not e!43233))))

(declare-fun x!29075 () Int)

(declare-fun res!39937 () List!649)

(declare-fun appendSorted!0 (List!649 List!649) List!649)

(declare-fun quickSort!1 (List!649) List!649)

(assert (=> b!79756 (= res!40359 (= res!39937 (appendSorted!0 (quickSort!1 l!1419) (Cons!607 x!29075 (quickSort!1 r!611)))))))

(declare-fun e!43234 () Bool)

(declare-fun ls!27 () List!649)

(declare-fun b!79757 () Bool)

(assert (=> b!79757 (= e!43234 (not (= (content!112 res!39937) (insert x!29075 (union (union (content!112 l!1419) (content!112 r!611)) (content!112 ls!27))))))))

(declare-fun res!40360 () Bool)

(assert (=> start!10494 (=> (not res!40360) (not e!43233))))

(assert (=> start!10494 (= res!40360 true)))

(assert (=> start!10494 true))

(assert (=> start!10494 e!43233))

(declare-fun b!79758 () Bool)

(assert (=> b!79758 (= e!43233 e!43234)))

(declare-fun res!40363 () Bool)

(assert (=> b!79758 (=> res!40363 e!43234)))

(declare-fun isSorted!2 (List!649) Bool)

(assert (=> b!79758 (= res!40363 (not (isSorted!2 res!39937)))))

(declare-fun b!79759 () Bool)

(declare-fun res!40362 () Bool)

(assert (=> b!79759 (=> (not res!40362) (not e!43233))))

(assert (=> b!79759 (= res!40362 (is-Nil!609 ls!27))))

(declare-fun res!40361 () Bool)

(assert (=> b!79760 (=> (not res!40361) (not e!43233))))

(assert (=> b!79760 (= res!40361 true)))

(assert (=> b!79760 true))

(assert (= (and start!10494 res!40360) b!79760))

(assert (= (and b!79760 res!40361) b!79759))

(assert (= (and b!79759 res!40362) b!79756))

(assert (= (and b!79756 res!40359) b!79758))

(assert (= (and b!79758 (not res!40363)) b!79757))

(declare-fun m!74410 () Bool)

(assert (=> b!79756 m!74410))

(declare-fun m!74412 () Bool)

(assert (=> b!79756 m!74412))

(assert (=> b!79756 m!74410))

(declare-fun m!74414 () Bool)

(assert (=> b!79756 m!74414))

(assert (=> b!79757 m!74406))

(assert (=> b!79757 m!74408))

(declare-fun m!74416 () Bool)

(assert (=> b!79757 m!74416))

(declare-fun m!74418 () Bool)

(assert (=> b!79757 m!74418))

(declare-fun m!74420 () Bool)

(assert (=> b!79757 m!74420))

(declare-fun m!74422 () Bool)

(assert (=> b!79758 m!74422))

(push 1)

(assert (not b!79757))

(assert (not start!10494))

(assert (not b!79758))

(assert (not b!79756))

(assert (not b!79760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55221 () Bool)

(declare-fun c!20236 () Bool)

(assert (=> d!55221 (= c!20236 (is-Nil!609 l!1419))))

(declare-fun e!43237 () (Set Int))

(assert (=> d!55221 (= (content!112 l!1419) e!43237)))

(declare-fun b!79765 () Bool)

(assert (=> b!79765 (= e!43237 (as emptyset (Set Int)))))

(declare-fun b!79766 () Bool)

(assert (=> b!79766 (= e!43237 (union (insert (h!894 l!1419) (as emptyset (Set Int))) (content!112 (t!47636 l!1419))))))

(assert (= (and d!55221 c!20236) b!79765))

(assert (= (and d!55221 (not c!20236)) b!79766))

(declare-fun m!74424 () Bool)

(assert (=> b!79766 m!74424))

(declare-fun m!74426 () Bool)

(assert (=> b!79766 m!74426))

(assert (=> start!10494 d!55221))

(declare-fun d!55223 () Bool)

(declare-fun c!20237 () Bool)

(assert (=> d!55223 (= c!20237 (is-Nil!609 res!39937))))

(declare-fun e!43238 () (Set Int))

(assert (=> d!55223 (= (content!112 res!39937) e!43238)))

(declare-fun b!79767 () Bool)

(assert (=> b!79767 (= e!43238 (as emptyset (Set Int)))))

(declare-fun b!79768 () Bool)

(assert (=> b!79768 (= e!43238 (union (insert (h!894 res!39937) (as emptyset (Set Int))) (content!112 (t!47636 res!39937))))))

(assert (= (and d!55223 c!20237) b!79767))

(assert (= (and d!55223 (not c!20237)) b!79768))

(declare-fun m!74428 () Bool)

(assert (=> b!79768 m!74428))

(declare-fun m!74430 () Bool)

(assert (=> b!79768 m!74430))

(assert (=> b!79757 d!55223))

(assert (=> b!79757 d!55221))

(declare-fun d!55225 () Bool)

(declare-fun c!20238 () Bool)

(assert (=> d!55225 (= c!20238 (is-Nil!609 r!611))))

(declare-fun e!43239 () (Set Int))

(assert (=> d!55225 (= (content!112 r!611) e!43239)))

(declare-fun b!79769 () Bool)

(assert (=> b!79769 (= e!43239 (as emptyset (Set Int)))))

(declare-fun b!79770 () Bool)

(assert (=> b!79770 (= e!43239 (union (insert (h!894 r!611) (as emptyset (Set Int))) (content!112 (t!47636 r!611))))))

(assert (= (and d!55225 c!20238) b!79769))

(assert (= (and d!55225 (not c!20238)) b!79770))

(declare-fun m!74432 () Bool)

(assert (=> b!79770 m!74432))

(declare-fun m!74434 () Bool)

(assert (=> b!79770 m!74434))

(assert (=> b!79757 d!55225))

(declare-fun d!55227 () Bool)

(declare-fun c!20239 () Bool)

(assert (=> d!55227 (= c!20239 (is-Nil!609 ls!27))))

(declare-fun e!43240 () (Set Int))

(assert (=> d!55227 (= (content!112 ls!27) e!43240)))

(declare-fun b!79771 () Bool)

(assert (=> b!79771 (= e!43240 (as emptyset (Set Int)))))

(declare-fun b!79772 () Bool)

(assert (=> b!79772 (= e!43240 (union (insert (h!894 ls!27) (as emptyset (Set Int))) (content!112 (t!47636 ls!27))))))

(assert (= (and d!55227 c!20239) b!79771))

(assert (= (and d!55227 (not c!20239)) b!79772))

(declare-fun m!74436 () Bool)

(assert (=> b!79772 m!74436))

(declare-fun m!74438 () Bool)

(assert (=> b!79772 m!74438))

(assert (=> b!79757 d!55227))

(assert (=> b!79760 d!55225))

(declare-fun e!43250 () Bool)

(declare-fun b!79787 () Bool)

(declare-fun last!5 (List!649) Int)

(declare-fun head!1043 (List!649) Int)

(assert (=> b!79787 (= e!43250 (<= (last!5 (quickSort!1 l!1419)) (head!1043 (Cons!607 x!29075 (quickSort!1 r!611)))))))

(declare-fun b!79788 () Bool)

(declare-fun e!43252 () Bool)

(assert (=> b!79788 (= e!43252 e!43250)))

(declare-fun res!40375 () Bool)

(assert (=> b!79788 (=> res!40375 e!43250)))

(declare-fun isEmpty!661 (List!649) Bool)

(assert (=> b!79788 (= res!40375 (isEmpty!661 (quickSort!1 l!1419)))))

(declare-fun b!79789 () Bool)

(declare-fun res!40377 () Bool)

(assert (=> b!79789 (=> (not res!40377) (not e!43252))))

(assert (=> b!79789 (= res!40377 (isSorted!2 (Cons!607 x!29075 (quickSort!1 r!611))))))

(declare-fun b!79790 () Bool)

(declare-fun e!43249 () List!649)

(assert (=> b!79790 (= e!43249 (Cons!607 x!29075 (quickSort!1 r!611)))))

(declare-fun b!79791 () Bool)

(declare-fun res!40379 () Bool)

(assert (=> b!79791 (=> res!40379 e!43250)))

(assert (=> b!79791 (= res!40379 (isEmpty!661 (Cons!607 x!29075 (quickSort!1 r!611))))))

(declare-fun e!43251 () Bool)

(declare-fun b!79792 () Bool)

(declare-fun lt!18272 () List!649)

(assert (=> b!79792 (= e!43251 (= (content!112 lt!18272) (union (content!112 (quickSort!1 l!1419)) (content!112 (Cons!607 x!29075 (quickSort!1 r!611))))))))

(declare-fun b!79793 () Bool)

(assert (=> b!79793 (= e!43249 (Cons!607 (h!894 (quickSort!1 l!1419)) (appendSorted!0 (t!47636 (quickSort!1 l!1419)) (Cons!607 x!29075 (quickSort!1 r!611)))))))

(declare-fun d!55229 () Bool)

(assert (=> d!55229 e!43251))

(declare-fun res!40376 () Bool)

(assert (=> d!55229 (=> (not res!40376) (not e!43251))))

(assert (=> d!55229 (= res!40376 (isSorted!2 lt!18272))))

(assert (=> d!55229 (= lt!18272 e!43249)))

(declare-fun c!20242 () Bool)

(assert (=> d!55229 (= c!20242 (is-Nil!609 (quickSort!1 l!1419)))))

(assert (=> d!55229 e!43252))

(declare-fun res!40378 () Bool)

(assert (=> d!55229 (=> (not res!40378) (not e!43252))))

(assert (=> d!55229 (= res!40378 (isSorted!2 (quickSort!1 l!1419)))))

(assert (=> d!55229 (= (appendSorted!0 (quickSort!1 l!1419) (Cons!607 x!29075 (quickSort!1 r!611))) lt!18272)))

(assert (= (and d!55229 res!40378) b!79789))

(assert (= (and b!79789 res!40377) b!79788))

(assert (= (and b!79788 (not res!40375)) b!79791))

(assert (= (and b!79791 (not res!40379)) b!79787))

(assert (= (and d!55229 c!20242) b!79790))

(assert (= (and d!55229 (not c!20242)) b!79793))

(assert (= (and d!55229 res!40376) b!79792))

(declare-fun m!74440 () Bool)

(assert (=> b!79791 m!74440))

(declare-fun m!74442 () Bool)

(assert (=> b!79793 m!74442))

(declare-fun m!74444 () Bool)

(assert (=> b!79792 m!74444))

(assert (=> b!79792 m!74410))

(declare-fun m!74446 () Bool)

(assert (=> b!79792 m!74446))

(declare-fun m!74448 () Bool)

(assert (=> b!79792 m!74448))

(assert (=> b!79787 m!74410))

(declare-fun m!74450 () Bool)

(assert (=> b!79787 m!74450))

(declare-fun m!74452 () Bool)

(assert (=> b!79787 m!74452))

(assert (=> b!79788 m!74410))

(declare-fun m!74454 () Bool)

(assert (=> b!79788 m!74454))

(declare-fun m!74456 () Bool)

(assert (=> d!55229 m!74456))

(assert (=> d!55229 m!74410))

(declare-fun m!74458 () Bool)

(assert (=> d!55229 m!74458))

(declare-fun m!74460 () Bool)

(assert (=> b!79789 m!74460))

(assert (=> b!79756 d!55229))

(declare-fun d!55231 () Bool)

(declare-fun e!43258 () Bool)

(assert (=> d!55231 e!43258))

(declare-fun res!40383 () Bool)

(assert (=> d!55231 (=> (not res!40383) (not e!43258))))

(declare-fun lt!18275 () List!649)

(assert (=> d!55231 (= res!40383 (isSorted!2 lt!18275))))

(declare-fun e!43257 () List!649)

(assert (=> d!55231 (= lt!18275 e!43257)))

(declare-fun c!20245 () Bool)

(assert (=> d!55231 (= c!20245 (is-Nil!609 l!1419))))

(assert (=> d!55231 (= (quickSort!1 l!1419) lt!18275)))

(declare-fun b!79800 () Bool)

(assert (=> b!79800 (= e!43257 Nil!609)))

(declare-fun b!79801 () Bool)

(declare-fun par!0 (Int List!649 List!649 List!649) List!649)

(assert (=> b!79801 (= e!43257 (par!0 (h!894 l!1419) Nil!609 Nil!609 (t!47636 l!1419)))))

(declare-fun b!79802 () Bool)

(assert (=> b!79802 (= e!43258 (= (content!112 lt!18275) (content!112 l!1419)))))

(assert (= (and d!55231 c!20245) b!79800))

(assert (= (and d!55231 (not c!20245)) b!79801))

(assert (= (and d!55231 res!40383) b!79802))

(declare-fun m!74462 () Bool)

(assert (=> d!55231 m!74462))

(declare-fun m!74464 () Bool)

(assert (=> b!79801 m!74464))

(declare-fun m!74466 () Bool)

(assert (=> b!79802 m!74466))

(assert (=> b!79802 m!74406))

(assert (=> b!79756 d!55231))

(declare-fun d!55233 () Bool)

(declare-fun e!43260 () Bool)

(assert (=> d!55233 e!43260))

(declare-fun res!40384 () Bool)

(assert (=> d!55233 (=> (not res!40384) (not e!43260))))

(declare-fun lt!18276 () List!649)

(assert (=> d!55233 (= res!40384 (isSorted!2 lt!18276))))

(declare-fun e!43259 () List!649)

(assert (=> d!55233 (= lt!18276 e!43259)))

(declare-fun c!20246 () Bool)

(assert (=> d!55233 (= c!20246 (is-Nil!609 r!611))))

(assert (=> d!55233 (= (quickSort!1 r!611) lt!18276)))

(declare-fun b!79803 () Bool)

(assert (=> b!79803 (= e!43259 Nil!609)))

(declare-fun b!79804 () Bool)

(assert (=> b!79804 (= e!43259 (par!0 (h!894 r!611) Nil!609 Nil!609 (t!47636 r!611)))))

(declare-fun b!79805 () Bool)

(assert (=> b!79805 (= e!43260 (= (content!112 lt!18276) (content!112 r!611)))))

(assert (= (and d!55233 c!20246) b!79803))

(assert (= (and d!55233 (not c!20246)) b!79804))

(assert (= (and d!55233 res!40384) b!79805))

(declare-fun m!74468 () Bool)

(assert (=> d!55233 m!74468))

(declare-fun m!74470 () Bool)

(assert (=> b!79804 m!74470))

(declare-fun m!74472 () Bool)

(assert (=> b!79805 m!74472))

(assert (=> b!79805 m!74408))

(assert (=> b!79756 d!55233))

(declare-fun d!55235 () Bool)

(declare-fun res!40389 () Bool)

(declare-fun e!43265 () Bool)

(assert (=> d!55235 (=> res!40389 e!43265)))

(assert (=> d!55235 (= res!40389 (not (and (is-Cons!607 res!39937) (is-Cons!607 (t!47636 res!39937)))))))

(assert (=> d!55235 (= (isSorted!2 res!39937) e!43265)))

(declare-fun b!79810 () Bool)

(declare-fun e!43266 () Bool)

(assert (=> b!79810 (= e!43265 e!43266)))

(declare-fun res!40390 () Bool)

(assert (=> b!79810 (=> (not res!40390) (not e!43266))))

(assert (=> b!79810 (= res!40390 (<= (h!894 res!39937) (h!894 (t!47636 res!39937))))))

(declare-fun b!79811 () Bool)

(assert (=> b!79811 (= e!43266 (isSorted!2 (t!47636 res!39937)))))

(assert (= (and d!55235 (not res!40389)) b!79810))

(assert (= (and b!79810 res!40390) b!79811))

(declare-fun m!74474 () Bool)

(assert (=> b!79811 m!74474))

(assert (=> b!79758 d!55235))

(declare-fun bs!38150 () Bool)

(declare-fun s!2399 () Bool)

(assert (= bs!38150 (and start!10494 s!2399)))

(declare-fun contains!50 (List!649 Int) Bool)

(assert (=> bs!38150 (=> true (= (contains!50 l!1419 x!29075) (member x!29075 (content!112 l!1419))))))

(declare-fun m!74476 () Bool)

(assert (=> m!74420 m!74476))

(declare-fun m!74478 () Bool)

(assert (=> m!74420 m!74478))

(assert (=> m!74420 s!2399))

(declare-fun bs!38151 () Bool)

(declare-fun s!2401 () Bool)

(assert (= bs!38151 (and start!10494 b!79760 s!2401)))

(assert (=> bs!38151 (=> true (= (contains!50 r!611 x!29075) (member x!29075 (content!112 r!611))))))

(declare-fun m!74480 () Bool)

(assert (=> m!74420 m!74480))

(declare-fun m!74482 () Bool)

(assert (=> m!74420 m!74482))

(assert (=> m!74420 s!2401))

(push 1)

(assert (not b!79766))

(assert (not b!79805))

(assert (not b!79791))

(assert (not b!79804))

(assert (not b!79792))

(assert (not b!79789))

(assert (not b!79801))

(assert (not b!79787))

(assert (not b!79793))

(assert (not b!79788))

(assert (not bs!38151))

(assert (not b!79802))

(assert (not b!79770))

(assert (not b!79811))

(assert (not b!79768))

(assert (not b!79772))

(assert (not d!55233))

(assert (not d!55231))

(assert (not d!55229))

(assert (not bs!38150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> m!74482 s!2399))

(assert (=> m!74476 s!2399))

(assert (=> m!74478 s!2399))

(assert (=> m!74480 s!2399))

(declare-fun bs!38152 () Bool)

(declare-fun s!2403 () Bool)

(assert (= bs!38152 (and start!10494 s!2403)))

(declare-fun res!40391 () Bool)

(declare-fun e!43267 () Bool)

(assert (=> bs!38152 (=> res!40391 e!43267)))

(assert (=> bs!38152 (= res!40391 (not (contains!50 l!1419 x!29075)))))

(assert (=> bs!38152 (=> true e!43267)))

(declare-fun b!79812 () Bool)

(assert (=> b!79812 (= e!43267 (<= x!29075 x!29075))))

(assert (= (and bs!38152 (not res!40391)) b!79812))

(assert (=> m!74476 s!2403))

(assert (=> m!74480 s!2403))

(assert (=> m!74482 s!2401))

(assert (=> m!74476 s!2401))

(assert (=> m!74478 s!2401))

(assert (=> m!74480 s!2401))

(declare-fun bs!38153 () Bool)

(declare-fun s!2405 () Bool)

(assert (= bs!38153 (and start!10494 b!79760 s!2405)))

(declare-fun res!40392 () Bool)

(declare-fun e!43268 () Bool)

(assert (=> bs!38153 (=> res!40392 e!43268)))

(assert (=> bs!38153 (= res!40392 (not (contains!50 r!611 x!29075)))))

(assert (=> bs!38153 (=> true e!43268)))

(declare-fun b!79813 () Bool)

(assert (=> b!79813 (= e!43268 (< x!29075 x!29075))))

(assert (= (and bs!38153 (not res!40392)) b!79813))

(assert (=> m!74476 m!74480))

(assert (=> m!74476 s!2405))

(assert (=> m!74480 s!2405))

(push 1)

(assert (not b!79766))

(assert (not b!79805))

(assert (not b!79791))

(assert (not b!79804))

(assert (not b!79792))

(assert (not b!79789))

(assert (not b!79801))

(assert (not b!79787))

(assert (not b!79793))

(assert (not b!79788))

(assert (not bs!38151))

(assert (not b!79802))

(assert (not b!79770))

(assert (not b!79811))

(assert (not b!79768))

(assert (not b!79772))

(assert (not bs!38153))

(assert (not d!55233))

(assert (not d!55231))

(assert (not d!55229))

(assert (not bs!38152))

(assert (not bs!38150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55237 () Bool)

(declare-fun c!20247 () Bool)

(assert (=> d!55237 (= c!20247 (is-Nil!609 (t!47636 res!39937)))))

(declare-fun e!43269 () (Set Int))

(assert (=> d!55237 (= (content!112 (t!47636 res!39937)) e!43269)))

(declare-fun b!79814 () Bool)

(assert (=> b!79814 (= e!43269 (as emptyset (Set Int)))))

(declare-fun b!79815 () Bool)

(assert (=> b!79815 (= e!43269 (union (insert (h!894 (t!47636 res!39937)) (as emptyset (Set Int))) (content!112 (t!47636 (t!47636 res!39937)))))))

(assert (= (and d!55237 c!20247) b!79814))

(assert (= (and d!55237 (not c!20247)) b!79815))

(declare-fun m!74484 () Bool)

(assert (=> b!79815 m!74484))

(declare-fun m!74486 () Bool)

(assert (=> b!79815 m!74486))

(assert (=> b!79768 d!55237))

(declare-fun e!43271 () Bool)

(declare-fun b!79816 () Bool)

(assert (=> b!79816 (= e!43271 (<= (last!5 (t!47636 (quickSort!1 l!1419))) (head!1043 (Cons!607 x!29075 (quickSort!1 r!611)))))))

(declare-fun b!79817 () Bool)

(declare-fun e!43273 () Bool)

(assert (=> b!79817 (= e!43273 e!43271)))

(declare-fun res!40393 () Bool)

(assert (=> b!79817 (=> res!40393 e!43271)))

(assert (=> b!79817 (= res!40393 (isEmpty!661 (t!47636 (quickSort!1 l!1419))))))

(declare-fun b!79818 () Bool)

(declare-fun res!40395 () Bool)

(assert (=> b!79818 (=> (not res!40395) (not e!43273))))

(assert (=> b!79818 (= res!40395 (isSorted!2 (Cons!607 x!29075 (quickSort!1 r!611))))))

(declare-fun b!79819 () Bool)

(declare-fun e!43270 () List!649)

(assert (=> b!79819 (= e!43270 (Cons!607 x!29075 (quickSort!1 r!611)))))

(declare-fun b!79820 () Bool)

(declare-fun res!40397 () Bool)

(assert (=> b!79820 (=> res!40397 e!43271)))

(assert (=> b!79820 (= res!40397 (isEmpty!661 (Cons!607 x!29075 (quickSort!1 r!611))))))

(declare-fun lt!18277 () List!649)

(declare-fun e!43272 () Bool)

(declare-fun b!79821 () Bool)

(assert (=> b!79821 (= e!43272 (= (content!112 lt!18277) (union (content!112 (t!47636 (quickSort!1 l!1419))) (content!112 (Cons!607 x!29075 (quickSort!1 r!611))))))))

(declare-fun b!79822 () Bool)

(assert (=> b!79822 (= e!43270 (Cons!607 (h!894 (t!47636 (quickSort!1 l!1419))) (appendSorted!0 (t!47636 (t!47636 (quickSort!1 l!1419))) (Cons!607 x!29075 (quickSort!1 r!611)))))))

(declare-fun d!55239 () Bool)

(assert (=> d!55239 e!43272))

(declare-fun res!40394 () Bool)

(assert (=> d!55239 (=> (not res!40394) (not e!43272))))

(assert (=> d!55239 (= res!40394 (isSorted!2 lt!18277))))

(assert (=> d!55239 (= lt!18277 e!43270)))

(declare-fun c!20248 () Bool)

(assert (=> d!55239 (= c!20248 (is-Nil!609 (t!47636 (quickSort!1 l!1419))))))

(assert (=> d!55239 e!43273))

(declare-fun res!40396 () Bool)

(assert (=> d!55239 (=> (not res!40396) (not e!43273))))

(assert (=> d!55239 (= res!40396 (isSorted!2 (t!47636 (quickSort!1 l!1419))))))

(assert (=> d!55239 (= (appendSorted!0 (t!47636 (quickSort!1 l!1419)) (Cons!607 x!29075 (quickSort!1 r!611))) lt!18277)))

(assert (= (and d!55239 res!40396) b!79818))

(assert (= (and b!79818 res!40395) b!79817))

(assert (= (and b!79817 (not res!40393)) b!79820))

(assert (= (and b!79820 (not res!40397)) b!79816))

(assert (= (and d!55239 c!20248) b!79819))

(assert (= (and d!55239 (not c!20248)) b!79822))

(assert (= (and d!55239 res!40394) b!79821))

(assert (=> b!79820 m!74440))

(declare-fun m!74488 () Bool)

(assert (=> b!79822 m!74488))

(declare-fun m!74490 () Bool)

(assert (=> b!79821 m!74490))

(declare-fun m!74492 () Bool)

(assert (=> b!79821 m!74492))

(assert (=> b!79821 m!74448))

(declare-fun m!74494 () Bool)

(assert (=> b!79816 m!74494))

(assert (=> b!79816 m!74452))

(declare-fun m!74496 () Bool)

(assert (=> b!79817 m!74496))

(declare-fun m!74498 () Bool)

(assert (=> d!55239 m!74498))

(declare-fun m!74500 () Bool)

(assert (=> d!55239 m!74500))

(assert (=> b!79818 m!74460))

(assert (=> b!79793 d!55239))

(declare-fun d!55241 () Bool)

(declare-fun lt!18280 () Int)

(assert (=> d!55241 (contains!50 (quickSort!1 l!1419) lt!18280)))

(declare-fun e!43276 () Int)

(assert (=> d!55241 (= lt!18280 e!43276)))

(declare-fun c!20251 () Bool)

(assert (=> d!55241 (= c!20251 (and (is-Cons!607 (quickSort!1 l!1419)) (is-Nil!609 (t!47636 (quickSort!1 l!1419)))))))

(assert (=> d!55241 (not (isEmpty!661 (quickSort!1 l!1419)))))

(assert (=> d!55241 (= (last!5 (quickSort!1 l!1419)) lt!18280)))

(declare-fun b!79827 () Bool)

(assert (=> b!79827 (= e!43276 (h!894 (quickSort!1 l!1419)))))

(declare-fun b!79828 () Bool)

(assert (=> b!79828 (= e!43276 (last!5 (t!47636 (quickSort!1 l!1419))))))

(assert (= (and d!55241 c!20251) b!79827))

(assert (= (and d!55241 (not c!20251)) b!79828))

(assert (=> d!55241 m!74410))

(declare-fun m!74502 () Bool)

(assert (=> d!55241 m!74502))

(assert (=> d!55241 m!74410))

(assert (=> d!55241 m!74454))

(assert (=> b!79828 m!74494))

(assert (=> b!79787 d!55241))

(declare-fun d!55243 () Bool)

(assert (=> d!55243 (= (head!1043 (Cons!607 x!29075 (quickSort!1 r!611))) (h!894 (Cons!607 x!29075 (quickSort!1 r!611))))))

(assert (=> b!79787 d!55243))

(declare-fun d!55245 () Bool)

(assert (=> d!55245 (= (isEmpty!661 (Cons!607 x!29075 (quickSort!1 r!611))) (is-Nil!609 (Cons!607 x!29075 (quickSort!1 r!611))))))

(assert (=> b!79791 d!55245))

(declare-fun d!55247 () Bool)

(declare-fun res!40398 () Bool)

(declare-fun e!43277 () Bool)

(assert (=> d!55247 (=> res!40398 e!43277)))

(assert (=> d!55247 (= res!40398 (not (and (is-Cons!607 (Cons!607 x!29075 (quickSort!1 r!611))) (is-Cons!607 (t!47636 (Cons!607 x!29075 (quickSort!1 r!611)))))))))

(assert (=> d!55247 (= (isSorted!2 (Cons!607 x!29075 (quickSort!1 r!611))) e!43277)))

(declare-fun b!79829 () Bool)

(declare-fun e!43278 () Bool)

(assert (=> b!79829 (= e!43277 e!43278)))

(declare-fun res!40399 () Bool)

(assert (=> b!79829 (=> (not res!40399) (not e!43278))))

(assert (=> b!79829 (= res!40399 (<= (h!894 (Cons!607 x!29075 (quickSort!1 r!611))) (h!894 (t!47636 (Cons!607 x!29075 (quickSort!1 r!611))))))))

(declare-fun b!79830 () Bool)

(assert (=> b!79830 (= e!43278 (isSorted!2 (t!47636 (Cons!607 x!29075 (quickSort!1 r!611)))))))

(assert (= (and d!55247 (not res!40398)) b!79829))

(assert (= (and b!79829 res!40399) b!79830))

(declare-fun m!74504 () Bool)

(assert (=> b!79830 m!74504))

(assert (=> b!79789 d!55247))

(declare-fun d!55249 () Bool)

(declare-fun c!20252 () Bool)

(assert (=> d!55249 (= c!20252 (is-Nil!609 lt!18272))))

(declare-fun e!43279 () (Set Int))

(assert (=> d!55249 (= (content!112 lt!18272) e!43279)))

(declare-fun b!79831 () Bool)

(assert (=> b!79831 (= e!43279 (as emptyset (Set Int)))))

(declare-fun b!79832 () Bool)

(assert (=> b!79832 (= e!43279 (union (insert (h!894 lt!18272) (as emptyset (Set Int))) (content!112 (t!47636 lt!18272))))))

(assert (= (and d!55249 c!20252) b!79831))

(assert (= (and d!55249 (not c!20252)) b!79832))

(declare-fun m!74506 () Bool)

(assert (=> b!79832 m!74506))

(declare-fun m!74508 () Bool)

(assert (=> b!79832 m!74508))

(assert (=> b!79792 d!55249))

(declare-fun d!55251 () Bool)

(declare-fun c!20253 () Bool)

(assert (=> d!55251 (= c!20253 (is-Nil!609 (quickSort!1 l!1419)))))

(declare-fun e!43280 () (Set Int))

(assert (=> d!55251 (= (content!112 (quickSort!1 l!1419)) e!43280)))

(declare-fun b!79833 () Bool)

(assert (=> b!79833 (= e!43280 (as emptyset (Set Int)))))

(declare-fun b!79834 () Bool)

(assert (=> b!79834 (= e!43280 (union (insert (h!894 (quickSort!1 l!1419)) (as emptyset (Set Int))) (content!112 (t!47636 (quickSort!1 l!1419)))))))

(assert (= (and d!55251 c!20253) b!79833))

(assert (= (and d!55251 (not c!20253)) b!79834))

(declare-fun m!74510 () Bool)

(assert (=> b!79834 m!74510))

(assert (=> b!79834 m!74492))

(assert (=> b!79792 d!55251))

(declare-fun d!55253 () Bool)

(declare-fun c!20254 () Bool)

(assert (=> d!55253 (= c!20254 (is-Nil!609 (Cons!607 x!29075 (quickSort!1 r!611))))))

(declare-fun e!43281 () (Set Int))

(assert (=> d!55253 (= (content!112 (Cons!607 x!29075 (quickSort!1 r!611))) e!43281)))

(declare-fun b!79835 () Bool)

(assert (=> b!79835 (= e!43281 (as emptyset (Set Int)))))

(declare-fun b!79836 () Bool)

(assert (=> b!79836 (= e!43281 (union (insert (h!894 (Cons!607 x!29075 (quickSort!1 r!611))) (as emptyset (Set Int))) (content!112 (t!47636 (Cons!607 x!29075 (quickSort!1 r!611))))))))

(assert (= (and d!55253 c!20254) b!79835))

(assert (= (and d!55253 (not c!20254)) b!79836))

(declare-fun m!74512 () Bool)

(assert (=> b!79836 m!74512))

(declare-fun m!74514 () Bool)

(assert (=> b!79836 m!74514))

(assert (=> b!79792 d!55253))

(declare-fun d!55255 () Bool)

(declare-fun c!20255 () Bool)

(assert (=> d!55255 (= c!20255 (is-Nil!609 lt!18275))))

(declare-fun e!43282 () (Set Int))

(assert (=> d!55255 (= (content!112 lt!18275) e!43282)))

(declare-fun b!79837 () Bool)

(assert (=> b!79837 (= e!43282 (as emptyset (Set Int)))))

(declare-fun b!79838 () Bool)

(assert (=> b!79838 (= e!43282 (union (insert (h!894 lt!18275) (as emptyset (Set Int))) (content!112 (t!47636 lt!18275))))))

(assert (= (and d!55255 c!20255) b!79837))

(assert (= (and d!55255 (not c!20255)) b!79838))

(declare-fun m!74516 () Bool)

(assert (=> b!79838 m!74516))

(declare-fun m!74518 () Bool)

(assert (=> b!79838 m!74518))

(assert (=> b!79802 d!55255))

(assert (=> b!79802 d!55221))

(declare-fun d!55257 () Bool)

(declare-fun lt!18283 () Bool)

(assert (=> d!55257 (= lt!18283 (member x!29075 (content!112 l!1419)))))

(declare-fun e!43288 () Bool)

(assert (=> d!55257 (= lt!18283 e!43288)))

(declare-fun res!40405 () Bool)

(assert (=> d!55257 (=> (not res!40405) (not e!43288))))

(assert (=> d!55257 (= res!40405 (is-Cons!607 l!1419))))

(assert (=> d!55257 (= (contains!50 l!1419 x!29075) lt!18283)))

(declare-fun b!79843 () Bool)

(declare-fun e!43287 () Bool)

(assert (=> b!79843 (= e!43288 e!43287)))

(declare-fun res!40404 () Bool)

(assert (=> b!79843 (=> res!40404 e!43287)))

(assert (=> b!79843 (= res!40404 (= (h!894 l!1419) x!29075))))

(declare-fun b!79844 () Bool)

(assert (=> b!79844 (= e!43287 (contains!50 (t!47636 l!1419) x!29075))))

(assert (= (and d!55257 res!40405) b!79843))

(assert (= (and b!79843 (not res!40404)) b!79844))

(assert (=> d!55257 m!74406))

(assert (=> d!55257 m!74478))

(declare-fun bs!38154 () Bool)

(declare-fun m!74520 () Bool)

(assert (= bs!38154 m!74520))

(assert (=> bs!38154 s!2399))

(assert (=> bs!38154 s!2403))

(assert (=> bs!38154 s!2401))

(assert (=> bs!38154 s!2405))

(assert (=> b!79844 m!74520))

(assert (=> bs!38150 d!55257))

(declare-fun d!55259 () Bool)

(declare-fun res!40406 () Bool)

(declare-fun e!43289 () Bool)

(assert (=> d!55259 (=> res!40406 e!43289)))

(assert (=> d!55259 (= res!40406 (not (and (is-Cons!607 (t!47636 res!39937)) (is-Cons!607 (t!47636 (t!47636 res!39937))))))))

(assert (=> d!55259 (= (isSorted!2 (t!47636 res!39937)) e!43289)))

(declare-fun b!79845 () Bool)

(declare-fun e!43290 () Bool)

(assert (=> b!79845 (= e!43289 e!43290)))

(declare-fun res!40407 () Bool)

(assert (=> b!79845 (=> (not res!40407) (not e!43290))))

(assert (=> b!79845 (= res!40407 (<= (h!894 (t!47636 res!39937)) (h!894 (t!47636 (t!47636 res!39937)))))))

(declare-fun b!79846 () Bool)

(assert (=> b!79846 (= e!43290 (isSorted!2 (t!47636 (t!47636 res!39937))))))

(assert (= (and d!55259 (not res!40406)) b!79845))

(assert (= (and b!79845 res!40407) b!79846))

(declare-fun m!74522 () Bool)

(assert (=> b!79846 m!74522))

(assert (=> b!79811 d!55259))

(declare-fun d!55261 () Bool)

(declare-fun c!20256 () Bool)

(assert (=> d!55261 (= c!20256 (is-Nil!609 lt!18276))))

(declare-fun e!43291 () (Set Int))

(assert (=> d!55261 (= (content!112 lt!18276) e!43291)))

(declare-fun b!79847 () Bool)

(assert (=> b!79847 (= e!43291 (as emptyset (Set Int)))))

(declare-fun b!79848 () Bool)

(assert (=> b!79848 (= e!43291 (union (insert (h!894 lt!18276) (as emptyset (Set Int))) (content!112 (t!47636 lt!18276))))))

(assert (= (and d!55261 c!20256) b!79847))

(assert (= (and d!55261 (not c!20256)) b!79848))

(declare-fun m!74524 () Bool)

(assert (=> b!79848 m!74524))

(declare-fun m!74526 () Bool)

(assert (=> b!79848 m!74526))

(assert (=> b!79805 d!55261))

(assert (=> b!79805 d!55225))

(declare-fun d!55263 () Bool)

(declare-fun c!20257 () Bool)

(assert (=> d!55263 (= c!20257 (is-Nil!609 (t!47636 l!1419)))))

(declare-fun e!43292 () (Set Int))

(assert (=> d!55263 (= (content!112 (t!47636 l!1419)) e!43292)))

(declare-fun b!79849 () Bool)

(assert (=> b!79849 (= e!43292 (as emptyset (Set Int)))))

(declare-fun b!79850 () Bool)

(assert (=> b!79850 (= e!43292 (union (insert (h!894 (t!47636 l!1419)) (as emptyset (Set Int))) (content!112 (t!47636 (t!47636 l!1419)))))))

(assert (= (and d!55263 c!20257) b!79849))

(assert (= (and d!55263 (not c!20257)) b!79850))

(declare-fun m!74528 () Bool)

(assert (=> b!79850 m!74528))

(declare-fun m!74530 () Bool)

(assert (=> b!79850 m!74530))

(assert (=> b!79766 d!55263))

(declare-fun d!55265 () Bool)

(declare-fun lt!18284 () Bool)

(assert (=> d!55265 (= lt!18284 (member x!29075 (content!112 r!611)))))

(declare-fun e!43294 () Bool)

(assert (=> d!55265 (= lt!18284 e!43294)))

(declare-fun res!40409 () Bool)

(assert (=> d!55265 (=> (not res!40409) (not e!43294))))

(assert (=> d!55265 (= res!40409 (is-Cons!607 r!611))))

(assert (=> d!55265 (= (contains!50 r!611 x!29075) lt!18284)))

(declare-fun b!79851 () Bool)

(declare-fun e!43293 () Bool)

(assert (=> b!79851 (= e!43294 e!43293)))

(declare-fun res!40408 () Bool)

(assert (=> b!79851 (=> res!40408 e!43293)))

(assert (=> b!79851 (= res!40408 (= (h!894 r!611) x!29075))))

(declare-fun b!79852 () Bool)

(assert (=> b!79852 (= e!43293 (contains!50 (t!47636 r!611) x!29075))))

(assert (= (and d!55265 res!40409) b!79851))

(assert (= (and b!79851 (not res!40408)) b!79852))

(assert (=> d!55265 m!74408))

(assert (=> d!55265 m!74482))

(declare-fun bs!38155 () Bool)

(declare-fun m!74532 () Bool)

(assert (= bs!38155 m!74532))

(assert (=> bs!38155 s!2399))

(assert (=> bs!38155 s!2403))

(assert (=> bs!38155 s!2401))

(assert (=> bs!38155 s!2405))

(assert (=> b!79852 m!74532))

(assert (=> bs!38151 d!55265))

(declare-fun d!55267 () Bool)

(declare-fun c!20258 () Bool)

(assert (=> d!55267 (= c!20258 (is-Nil!609 (t!47636 ls!27)))))

(declare-fun e!43295 () (Set Int))

(assert (=> d!55267 (= (content!112 (t!47636 ls!27)) e!43295)))

(declare-fun b!79853 () Bool)

(assert (=> b!79853 (= e!43295 (as emptyset (Set Int)))))

(declare-fun b!79854 () Bool)

(assert (=> b!79854 (= e!43295 (union (insert (h!894 (t!47636 ls!27)) (as emptyset (Set Int))) (content!112 (t!47636 (t!47636 ls!27)))))))

(assert (= (and d!55267 c!20258) b!79853))

(assert (= (and d!55267 (not c!20258)) b!79854))

(declare-fun m!74534 () Bool)

(assert (=> b!79854 m!74534))

(declare-fun m!74536 () Bool)

(assert (=> b!79854 m!74536))

(assert (=> b!79772 d!55267))

(declare-fun d!55269 () Bool)

(declare-fun m!74538 () Bool)

(assert (=> d!55269 m!74538))

(declare-fun bs!38156 () Bool)

(assert (= bs!38156 (and d!55269 b!79760)))

(assert (=> (and bs!38156 (= Nil!609 r!611) (= (content!112 Nil!609) (content!112 r!611))) (= true true)))

(declare-fun bs!38157 () Bool)

(assert (= bs!38157 (and d!55269 start!10494)))

(assert (=> (and bs!38157 (= Nil!609 l!1419) (= (content!112 Nil!609) (content!112 l!1419))) (= true true)))

(declare-fun bs!38158 () Bool)

(declare-fun b!79870 () Bool)

(assert (= bs!38158 (and b!79870 start!10494)))

(assert (=> (and bs!38158 (= Nil!609 l!1419) (= (h!894 r!611) x!29075)) (= true true)))

(assert true)

(declare-fun bs!38159 () Bool)

(declare-fun b!79869 () Bool)

(assert (= bs!38159 (and b!79869 b!79760)))

(assert (=> (and bs!38159 (= Nil!609 r!611) (= (h!894 r!611) x!29075)) (= true true)))

(declare-fun e!43306 () Bool)

(assert (=> b!79869 (= e!43306 true)))

(assert (=> b!79869 true))

(declare-fun res!40425 () Bool)

(assert (=> b!79870 (=> (not res!40425) (not e!43306))))

(assert (=> b!79870 (= res!40425 true)))

(declare-fun b!79871 () Bool)

(declare-fun e!43308 () Bool)

(declare-fun lt!18290 () List!649)

(assert (=> b!79871 (= e!43308 (= (content!112 lt!18290) (insert (h!894 r!611) (union (union (content!112 Nil!609) (content!112 Nil!609)) (content!112 (t!47636 r!611))))))))

(assert (=> d!55269 e!43308))

(declare-fun res!40426 () Bool)

(assert (=> d!55269 (=> (not res!40426) (not e!43308))))

(assert (=> d!55269 (= res!40426 (isSorted!2 lt!18290))))

(declare-fun e!43307 () List!649)

(assert (=> d!55269 (= lt!18290 e!43307)))

(declare-fun c!20261 () Bool)

(assert (=> d!55269 (= c!20261 (is-Nil!609 (t!47636 r!611)))))

(assert (=> d!55269 e!43306))

(declare-fun res!40424 () Bool)

(assert (=> d!55269 (=> (not res!40424) (not e!43306))))

(assert (=> d!55269 (= res!40424 true)))

(assert (=> d!55269 (= (par!0 (h!894 r!611) Nil!609 Nil!609 (t!47636 r!611)) lt!18290)))

(declare-fun b!79872 () Bool)

(declare-fun lt!18289 () Bool)

(assert (=> b!79872 (= e!43307 (par!0 (h!894 r!611) (ite lt!18289 (Cons!607 (h!894 (t!47636 r!611)) Nil!609) Nil!609) (ite lt!18289 Nil!609 (Cons!607 (h!894 (t!47636 r!611)) Nil!609)) (t!47636 (t!47636 r!611))))))

(assert (=> b!79872 (= lt!18289 (<= (h!894 (t!47636 r!611)) (h!894 r!611)))))

(declare-fun b!79873 () Bool)

(assert (=> b!79873 (= e!43307 (appendSorted!0 (quickSort!1 Nil!609) (Cons!607 (h!894 r!611) (quickSort!1 Nil!609))))))

(assert (= (and d!55269 res!40424) b!79870))

(assert (= (and b!79870 res!40425) b!79869))

(assert (= (and d!55269 c!20261) b!79873))

(assert (= (and d!55269 (not c!20261)) b!79872))

(assert (= (and d!55269 res!40426) b!79871))

(declare-fun m!74540 () Bool)

(assert (=> b!79871 m!74540))

(assert (=> b!79871 m!74434))

(assert (=> b!79871 m!74538))

(declare-fun m!74542 () Bool)

(assert (=> b!79871 m!74542))

(assert (=> b!79871 m!74538))

(declare-fun m!74544 () Bool)

(assert (=> d!55269 m!74544))

(declare-fun m!74546 () Bool)

(assert (=> b!79872 m!74546))

(declare-fun m!74548 () Bool)

(assert (=> b!79873 m!74548))

(assert (=> b!79873 m!74548))

(assert (=> b!79873 m!74548))

(declare-fun m!74550 () Bool)

(assert (=> b!79873 m!74550))

(assert (=> b!79804 d!55269))

(declare-fun d!55271 () Bool)

(declare-fun res!40427 () Bool)

(declare-fun e!43309 () Bool)

(assert (=> d!55271 (=> res!40427 e!43309)))

(assert (=> d!55271 (= res!40427 (not (and (is-Cons!607 lt!18275) (is-Cons!607 (t!47636 lt!18275)))))))

(assert (=> d!55271 (= (isSorted!2 lt!18275) e!43309)))

(declare-fun b!79874 () Bool)

(declare-fun e!43310 () Bool)

(assert (=> b!79874 (= e!43309 e!43310)))

(declare-fun res!40428 () Bool)

(assert (=> b!79874 (=> (not res!40428) (not e!43310))))

(assert (=> b!79874 (= res!40428 (<= (h!894 lt!18275) (h!894 (t!47636 lt!18275))))))

(declare-fun b!79875 () Bool)

(assert (=> b!79875 (= e!43310 (isSorted!2 (t!47636 lt!18275)))))

(assert (= (and d!55271 (not res!40427)) b!79874))

(assert (= (and b!79874 res!40428) b!79875))

(declare-fun m!74552 () Bool)

(assert (=> b!79875 m!74552))

(assert (=> d!55231 d!55271))

(declare-fun d!55273 () Bool)

(declare-fun res!40429 () Bool)

(declare-fun e!43311 () Bool)

(assert (=> d!55273 (=> res!40429 e!43311)))

(assert (=> d!55273 (= res!40429 (not (and (is-Cons!607 lt!18272) (is-Cons!607 (t!47636 lt!18272)))))))

(assert (=> d!55273 (= (isSorted!2 lt!18272) e!43311)))

(declare-fun b!79876 () Bool)

(declare-fun e!43312 () Bool)

(assert (=> b!79876 (= e!43311 e!43312)))

(declare-fun res!40430 () Bool)

(assert (=> b!79876 (=> (not res!40430) (not e!43312))))

(assert (=> b!79876 (= res!40430 (<= (h!894 lt!18272) (h!894 (t!47636 lt!18272))))))

(declare-fun b!79877 () Bool)

(assert (=> b!79877 (= e!43312 (isSorted!2 (t!47636 lt!18272)))))

(assert (= (and d!55273 (not res!40429)) b!79876))

(assert (= (and b!79876 res!40430) b!79877))

(declare-fun m!74554 () Bool)

(assert (=> b!79877 m!74554))

(assert (=> d!55229 d!55273))

(declare-fun d!55275 () Bool)

(declare-fun res!40431 () Bool)

(declare-fun e!43313 () Bool)

(assert (=> d!55275 (=> res!40431 e!43313)))

(assert (=> d!55275 (= res!40431 (not (and (is-Cons!607 (quickSort!1 l!1419)) (is-Cons!607 (t!47636 (quickSort!1 l!1419))))))))

(assert (=> d!55275 (= (isSorted!2 (quickSort!1 l!1419)) e!43313)))

(declare-fun b!79878 () Bool)

(declare-fun e!43314 () Bool)

(assert (=> b!79878 (= e!43313 e!43314)))

(declare-fun res!40432 () Bool)

(assert (=> b!79878 (=> (not res!40432) (not e!43314))))

(assert (=> b!79878 (= res!40432 (<= (h!894 (quickSort!1 l!1419)) (h!894 (t!47636 (quickSort!1 l!1419)))))))

(declare-fun b!79879 () Bool)

(assert (=> b!79879 (= e!43314 (isSorted!2 (t!47636 (quickSort!1 l!1419))))))

(assert (= (and d!55275 (not res!40431)) b!79878))

(assert (= (and b!79878 res!40432) b!79879))

(assert (=> b!79879 m!74500))

(assert (=> d!55229 d!55275))

(declare-fun d!55277 () Bool)

(declare-fun res!40433 () Bool)

(declare-fun e!43315 () Bool)

(assert (=> d!55277 (=> res!40433 e!43315)))

(assert (=> d!55277 (= res!40433 (not (and (is-Cons!607 lt!18276) (is-Cons!607 (t!47636 lt!18276)))))))

(assert (=> d!55277 (= (isSorted!2 lt!18276) e!43315)))

(declare-fun b!79880 () Bool)

(declare-fun e!43316 () Bool)

(assert (=> b!79880 (= e!43315 e!43316)))

(declare-fun res!40434 () Bool)

(assert (=> b!79880 (=> (not res!40434) (not e!43316))))

(assert (=> b!79880 (= res!40434 (<= (h!894 lt!18276) (h!894 (t!47636 lt!18276))))))

(declare-fun b!79881 () Bool)

(assert (=> b!79881 (= e!43316 (isSorted!2 (t!47636 lt!18276)))))

(assert (= (and d!55277 (not res!40433)) b!79880))

(assert (= (and b!79880 res!40434) b!79881))

(declare-fun m!74556 () Bool)

(assert (=> b!79881 m!74556))

(assert (=> d!55233 d!55277))

(declare-fun d!55279 () Bool)

(declare-fun c!20262 () Bool)

(assert (=> d!55279 (= c!20262 (is-Nil!609 (t!47636 r!611)))))

(declare-fun e!43317 () (Set Int))

(assert (=> d!55279 (= (content!112 (t!47636 r!611)) e!43317)))

(declare-fun b!79882 () Bool)

(assert (=> b!79882 (= e!43317 (as emptyset (Set Int)))))

(declare-fun b!79883 () Bool)

(assert (=> b!79883 (= e!43317 (union (insert (h!894 (t!47636 r!611)) (as emptyset (Set Int))) (content!112 (t!47636 (t!47636 r!611)))))))

(assert (= (and d!55279 c!20262) b!79882))

(assert (= (and d!55279 (not c!20262)) b!79883))

(declare-fun m!74558 () Bool)

(assert (=> b!79883 m!74558))

(declare-fun m!74560 () Bool)

(assert (=> b!79883 m!74560))

(assert (=> b!79770 d!55279))

(declare-fun d!55281 () Bool)

(assert (=> d!55281 (= (isEmpty!661 (quickSort!1 l!1419)) (is-Nil!609 (quickSort!1 l!1419)))))

(assert (=> b!79788 d!55281))

(declare-fun d!55283 () Bool)

(assert (=> d!55283 m!74538))

(declare-fun bs!38160 () Bool)

(assert (= bs!38160 (and d!55283 b!79760)))

(assert (=> (and bs!38160 (= Nil!609 r!611) (= (content!112 Nil!609) (content!112 r!611))) (= true true)))

(declare-fun bs!38161 () Bool)

(assert (= bs!38161 (and d!55283 start!10494)))

(assert (=> (and bs!38161 (= Nil!609 l!1419) (= (content!112 Nil!609) (content!112 l!1419))) (= true true)))

(declare-fun bs!38162 () Bool)

(assert (= bs!38162 (and d!55283 d!55269)))

(assert (=> bs!38162 (= true true)))

(declare-fun bs!38163 () Bool)

(declare-fun b!79885 () Bool)

(assert (= bs!38163 (and b!79885 start!10494)))

(assert (=> (and bs!38163 (= Nil!609 l!1419) (= (h!894 l!1419) x!29075)) (= true true)))

(declare-fun bs!38164 () Bool)

(assert (= bs!38164 (and b!79885 b!79870)))

(assert (=> (and bs!38164 (= (h!894 l!1419) (h!894 r!611))) (= true true)))

(assert true)

(declare-fun bs!38165 () Bool)

(declare-fun b!79884 () Bool)

(assert (= bs!38165 (and b!79884 b!79760)))

(assert (=> (and bs!38165 (= Nil!609 r!611) (= (h!894 l!1419) x!29075)) (= true true)))

(declare-fun bs!38166 () Bool)

(assert (= bs!38166 (and b!79884 b!79869)))

(assert (=> (and bs!38166 (= (h!894 l!1419) (h!894 r!611))) (= true true)))

(declare-fun e!43318 () Bool)

(assert (=> b!79884 (= e!43318 true)))

(assert (=> b!79884 true))

(declare-fun res!40436 () Bool)

(assert (=> b!79885 (=> (not res!40436) (not e!43318))))

(assert (=> b!79885 (= res!40436 true)))

(declare-fun b!79886 () Bool)

(declare-fun e!43320 () Bool)

(declare-fun lt!18292 () List!649)

(assert (=> b!79886 (= e!43320 (= (content!112 lt!18292) (insert (h!894 l!1419) (union (union (content!112 Nil!609) (content!112 Nil!609)) (content!112 (t!47636 l!1419))))))))

(assert (=> d!55283 e!43320))

(declare-fun res!40437 () Bool)

(assert (=> d!55283 (=> (not res!40437) (not e!43320))))

(assert (=> d!55283 (= res!40437 (isSorted!2 lt!18292))))

(declare-fun e!43319 () List!649)

(assert (=> d!55283 (= lt!18292 e!43319)))

(declare-fun c!20263 () Bool)

(assert (=> d!55283 (= c!20263 (is-Nil!609 (t!47636 l!1419)))))

(assert (=> d!55283 e!43318))

(declare-fun res!40435 () Bool)

(assert (=> d!55283 (=> (not res!40435) (not e!43318))))

(assert (=> d!55283 (= res!40435 true)))

(assert (=> d!55283 (= (par!0 (h!894 l!1419) Nil!609 Nil!609 (t!47636 l!1419)) lt!18292)))

(declare-fun b!79887 () Bool)

(declare-fun lt!18291 () Bool)

(assert (=> b!79887 (= e!43319 (par!0 (h!894 l!1419) (ite lt!18291 (Cons!607 (h!894 (t!47636 l!1419)) Nil!609) Nil!609) (ite lt!18291 Nil!609 (Cons!607 (h!894 (t!47636 l!1419)) Nil!609)) (t!47636 (t!47636 l!1419))))))

(assert (=> b!79887 (= lt!18291 (<= (h!894 (t!47636 l!1419)) (h!894 l!1419)))))

(declare-fun b!79888 () Bool)

(assert (=> b!79888 (= e!43319 (appendSorted!0 (quickSort!1 Nil!609) (Cons!607 (h!894 l!1419) (quickSort!1 Nil!609))))))

(assert (= (and d!55283 res!40435) b!79885))

(assert (= (and b!79885 res!40436) b!79884))

(assert (= (and d!55283 c!20263) b!79888))

(assert (= (and d!55283 (not c!20263)) b!79887))

(assert (= (and d!55283 res!40437) b!79886))

(declare-fun m!74562 () Bool)

(assert (=> b!79886 m!74562))

(assert (=> b!79886 m!74426))

(assert (=> b!79886 m!74538))

(declare-fun m!74564 () Bool)

(assert (=> b!79886 m!74564))

(assert (=> b!79886 m!74538))

(declare-fun m!74566 () Bool)

(assert (=> d!55283 m!74566))

(declare-fun m!74568 () Bool)

(assert (=> b!79887 m!74568))

(assert (=> b!79888 m!74548))

(assert (=> b!79888 m!74548))

(assert (=> b!79888 m!74548))

(declare-fun m!74570 () Bool)

(assert (=> b!79888 m!74570))

(assert (=> b!79801 d!55283))

(declare-fun bs!38167 () Bool)

(declare-fun s!2407 () Bool)

(assert (= bs!38167 (and start!10494 s!2407)))

(assert (=> bs!38167 (=> true (= (contains!50 l!1419 (h!894 res!39937)) (member (h!894 res!39937) (content!112 l!1419))))))

(declare-fun m!74572 () Bool)

(assert (=> m!74428 m!74572))

(declare-fun m!74574 () Bool)

(assert (=> m!74428 m!74574))

(assert (=> m!74428 s!2407))

(declare-fun bs!38168 () Bool)

(declare-fun s!2409 () Bool)

(assert (= bs!38168 (and start!10494 s!2409)))

(assert (=> bs!38168 (=> true (= (contains!50 l!1419 (h!894 ls!27)) (member (h!894 ls!27) (content!112 l!1419))))))

(declare-fun m!74576 () Bool)

(assert (=> m!74436 m!74576))

(declare-fun m!74578 () Bool)

(assert (=> m!74436 m!74578))

(assert (=> m!74436 s!2409))

(declare-fun bs!38169 () Bool)

(declare-fun s!2411 () Bool)

(assert (= bs!38169 (and start!10494 s!2411)))

(assert (=> bs!38169 (=> true (= (contains!50 l!1419 (h!894 l!1419)) (member (h!894 l!1419) (content!112 l!1419))))))

(declare-fun m!74580 () Bool)

(assert (=> m!74424 m!74580))

(declare-fun m!74582 () Bool)

(assert (=> m!74424 m!74582))

(assert (=> m!74424 s!2411))

(declare-fun bs!38170 () Bool)

(declare-fun s!2413 () Bool)

(assert (= bs!38170 (and start!10494 s!2413)))

(assert (=> bs!38170 (=> true (= (contains!50 l!1419 (h!894 r!611)) (member (h!894 r!611) (content!112 l!1419))))))

(declare-fun m!74584 () Bool)

(assert (=> m!74432 m!74584))

(declare-fun m!74586 () Bool)

(assert (=> m!74432 m!74586))

(assert (=> m!74432 s!2413))

(declare-fun bs!38171 () Bool)

(declare-fun s!2415 () Bool)

(assert (= bs!38171 (and start!10494 b!79760 s!2415)))

(assert (=> bs!38171 (=> true (= (contains!50 r!611 (h!894 res!39937)) (member (h!894 res!39937) (content!112 r!611))))))

(declare-fun m!74588 () Bool)

(assert (=> m!74428 m!74588))

(declare-fun m!74590 () Bool)

(assert (=> m!74428 m!74590))

(assert (=> m!74428 s!2415))

(declare-fun bs!38172 () Bool)

(declare-fun s!2417 () Bool)

(assert (= bs!38172 (and start!10494 b!79760 s!2417)))

(assert (=> bs!38172 (=> true (= (contains!50 r!611 (h!894 l!1419)) (member (h!894 l!1419) (content!112 r!611))))))

(declare-fun m!74592 () Bool)

(assert (=> m!74424 m!74592))

(declare-fun m!74594 () Bool)

(assert (=> m!74424 m!74594))

(assert (=> m!74424 s!2417))

(declare-fun bs!38173 () Bool)

(declare-fun s!2419 () Bool)

(assert (= bs!38173 (and start!10494 b!79760 s!2419)))

(assert (=> bs!38173 (=> true (= (contains!50 r!611 (h!894 r!611)) (member (h!894 r!611) (content!112 r!611))))))

(declare-fun m!74596 () Bool)

(assert (=> m!74432 m!74596))

(declare-fun m!74598 () Bool)

(assert (=> m!74432 m!74598))

(assert (=> m!74432 s!2419))

(declare-fun bs!38174 () Bool)

(declare-fun s!2421 () Bool)

(assert (= bs!38174 (and start!10494 b!79760 s!2421)))

(assert (=> bs!38174 (=> true (= (contains!50 r!611 (h!894 ls!27)) (member (h!894 ls!27) (content!112 r!611))))))

(declare-fun m!74600 () Bool)

(assert (=> m!74436 m!74600))

(declare-fun m!74602 () Bool)

(assert (=> m!74436 m!74602))

(assert (=> m!74436 s!2421))

(push 1)

(assert (not b!79887))

(assert (not b!79884))

(assert (not d!55283))

(assert (not b!79850))

(assert (not b!79846))

(assert (not b!79886))

(assert (not b!79875))

(assert (not b!79844))

(assert (not b!79815))

(assert (not bs!38170))

(assert (not b!79834))

(assert (not d!55241))

(assert (not bs!38168))

(assert (not b!79879))

(assert (not b!79877))

(assert (not b!79883))

(assert (not d!55269))

(assert (not b!79822))

(assert (not b!79830))

(assert (not d!55257))

(assert (not b!79881))

(assert (not b!79820))

(assert (not bs!38167))

(assert (not b!79871))

(assert (not b!79832))

(assert (not b!79838))

(assert (not bs!38172))

(assert (not b!79854))

(assert (not b!79873))

(assert (not bs!38169))

(assert (not b!79848))

(assert (not b!79817))

(assert (not d!55239))

(assert (not bs!38173))

(assert (not b!79821))

(assert (not d!55265))

(assert (not bs!38171))

(assert (not b!79872))

(assert (not b!79852))

(assert (not b!79828))

(assert (not b!79818))

(assert (not bs!38153))

(assert (not b!79888))

(assert (not b!79836))

(assert (not bs!38152))

(assert (not b!79816))

(assert (not bs!38174))

(assert (not b!79869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

