; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10482 () Bool)

(assert start!10482)

(declare-fun res!40293 () Bool)

(declare-fun e!43173 () Bool)

(assert (=> start!10482 (=> (not res!40293) (not e!43173))))

(declare-datatypes () ((List!648 (Cons!606 (h!893 Int) (t!47635 List!648)) (Nil!608))))

(declare-fun list!1008 () List!648)

(assert (=> start!10482 (= res!40293 (not (is-Nil!608 list!1008)))))

(assert (=> start!10482 e!43173))

(assert (=> start!10482 true))

(declare-fun b!79661 () Bool)

(declare-fun res!40294 () Bool)

(assert (=> b!79661 (=> (not res!40294) (not e!43173))))

(declare-fun res!39935 () List!648)

(declare-fun par!0 (Int List!648 List!648 List!648) List!648)

(assert (=> b!79661 (= res!40294 (= res!39935 (par!0 (h!893 list!1008) Nil!608 Nil!608 (t!47635 list!1008))))))

(declare-fun b!79662 () Bool)

(declare-fun e!43172 () Bool)

(assert (=> b!79662 (= e!43173 e!43172)))

(declare-fun res!40292 () Bool)

(assert (=> b!79662 (=> res!40292 e!43172)))

(declare-fun isSorted!2 (List!648) Bool)

(assert (=> b!79662 (= res!40292 (not (isSorted!2 res!39935)))))

(declare-fun b!79663 () Bool)

(declare-fun content!111 (List!648) (Set Int))

(assert (=> b!79663 (= e!43172 (not (= (content!111 res!39935) (content!111 list!1008))))))

(assert (= (and start!10482 res!40293) b!79661))

(assert (= (and b!79661 res!40294) b!79662))

(assert (= (and b!79662 (not res!40292)) b!79663))

(declare-fun m!74304 () Bool)

(assert (=> b!79661 m!74304))

(declare-fun m!74306 () Bool)

(assert (=> b!79662 m!74306))

(declare-fun m!74308 () Bool)

(assert (=> b!79663 m!74308))

(declare-fun m!74310 () Bool)

(assert (=> b!79663 m!74310))

(push 1)

(assert (not b!79663))

(assert (not b!79662))

(assert (not b!79661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55195 () Bool)

(declare-fun c!20219 () Bool)

(assert (=> d!55195 (= c!20219 (is-Nil!608 res!39935))))

(declare-fun e!43176 () (Set Int))

(assert (=> d!55195 (= (content!111 res!39935) e!43176)))

(declare-fun b!79668 () Bool)

(assert (=> b!79668 (= e!43176 (as emptyset (Set Int)))))

(declare-fun b!79669 () Bool)

(assert (=> b!79669 (= e!43176 (union (insert (h!893 res!39935) (as emptyset (Set Int))) (content!111 (t!47635 res!39935))))))

(assert (= (and d!55195 c!20219) b!79668))

(assert (= (and d!55195 (not c!20219)) b!79669))

(declare-fun m!74312 () Bool)

(assert (=> b!79669 m!74312))

(declare-fun m!74314 () Bool)

(assert (=> b!79669 m!74314))

(assert (=> b!79663 d!55195))

(declare-fun d!55197 () Bool)

(declare-fun c!20220 () Bool)

(assert (=> d!55197 (= c!20220 (is-Nil!608 list!1008))))

(declare-fun e!43177 () (Set Int))

(assert (=> d!55197 (= (content!111 list!1008) e!43177)))

(declare-fun b!79670 () Bool)

(assert (=> b!79670 (= e!43177 (as emptyset (Set Int)))))

(declare-fun b!79671 () Bool)

(assert (=> b!79671 (= e!43177 (union (insert (h!893 list!1008) (as emptyset (Set Int))) (content!111 (t!47635 list!1008))))))

(assert (= (and d!55197 c!20220) b!79670))

(assert (= (and d!55197 (not c!20220)) b!79671))

(declare-fun m!74316 () Bool)

(assert (=> b!79671 m!74316))

(declare-fun m!74318 () Bool)

(assert (=> b!79671 m!74318))

(assert (=> b!79663 d!55197))

(declare-fun d!55199 () Bool)

(declare-fun res!40299 () Bool)

(declare-fun e!43182 () Bool)

(assert (=> d!55199 (=> res!40299 e!43182)))

(assert (=> d!55199 (= res!40299 (not (and (is-Cons!606 res!39935) (is-Cons!606 (t!47635 res!39935)))))))

(assert (=> d!55199 (= (isSorted!2 res!39935) e!43182)))

(declare-fun b!79676 () Bool)

(declare-fun e!43183 () Bool)

(assert (=> b!79676 (= e!43182 e!43183)))

(declare-fun res!40300 () Bool)

(assert (=> b!79676 (=> (not res!40300) (not e!43183))))

(assert (=> b!79676 (= res!40300 (<= (h!893 res!39935) (h!893 (t!47635 res!39935))))))

(declare-fun b!79677 () Bool)

(assert (=> b!79677 (= e!43183 (isSorted!2 (t!47635 res!39935)))))

(assert (= (and d!55199 (not res!40299)) b!79676))

(assert (= (and b!79676 res!40300) b!79677))

(declare-fun m!74320 () Bool)

(assert (=> b!79677 m!74320))

(assert (=> b!79662 d!55199))

(declare-fun d!55201 () Bool)

(declare-fun m!74322 () Bool)

(assert (=> d!55201 m!74322))

(assert true)

(declare-fun b!79692 () Bool)

(declare-fun e!43195 () Bool)

(assert (=> b!79692 (= e!43195 true)))

(assert (=> b!79692 true))

(declare-fun b!79693 () Bool)

(declare-fun e!43196 () List!648)

(declare-fun appendSorted!0 (List!648 List!648) List!648)

(declare-fun quickSort!1 (List!648) List!648)

(assert (=> b!79693 (= e!43196 (appendSorted!0 (quickSort!1 Nil!608) (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608))))))

(declare-fun b!79694 () Bool)

(declare-fun res!40315 () Bool)

(assert (=> b!79694 (=> (not res!40315) (not e!43195))))

(assert (=> b!79694 (= res!40315 true)))

(declare-fun b!79695 () Bool)

(declare-fun e!43194 () Bool)

(declare-fun lt!18260 () List!648)

(assert (=> b!79695 (= e!43194 (= (content!111 lt!18260) (insert (h!893 list!1008) (union (union (content!111 Nil!608) (content!111 Nil!608)) (content!111 (t!47635 list!1008))))))))

(declare-fun b!79696 () Bool)

(declare-fun lt!18261 () Bool)

(assert (=> b!79696 (= e!43196 (par!0 (h!893 list!1008) (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608) (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)) (t!47635 (t!47635 list!1008))))))

(assert (=> b!79696 (= lt!18261 (<= (h!893 (t!47635 list!1008)) (h!893 list!1008)))))

(assert (=> d!55201 e!43194))

(declare-fun res!40316 () Bool)

(assert (=> d!55201 (=> (not res!40316) (not e!43194))))

(assert (=> d!55201 (= res!40316 (isSorted!2 lt!18260))))

(assert (=> d!55201 (= lt!18260 e!43196)))

(declare-fun c!20223 () Bool)

(assert (=> d!55201 (= c!20223 (is-Nil!608 (t!47635 list!1008)))))

(assert (=> d!55201 e!43195))

(declare-fun res!40317 () Bool)

(assert (=> d!55201 (=> (not res!40317) (not e!43195))))

(assert (=> d!55201 (= res!40317 true)))

(assert (=> d!55201 (= (par!0 (h!893 list!1008) Nil!608 Nil!608 (t!47635 list!1008)) lt!18260)))

(assert (= (and d!55201 res!40317) b!79694))

(assert (= (and b!79694 res!40315) b!79692))

(assert (= (and d!55201 c!20223) b!79693))

(assert (= (and d!55201 (not c!20223)) b!79696))

(assert (= (and d!55201 res!40316) b!79695))

(declare-fun m!74324 () Bool)

(assert (=> b!79693 m!74324))

(assert (=> b!79693 m!74324))

(assert (=> b!79693 m!74324))

(declare-fun m!74326 () Bool)

(assert (=> b!79693 m!74326))

(declare-fun m!74328 () Bool)

(assert (=> b!79695 m!74328))

(assert (=> b!79695 m!74322))

(assert (=> b!79695 m!74322))

(declare-fun m!74330 () Bool)

(assert (=> b!79695 m!74330))

(assert (=> b!79695 m!74318))

(declare-fun m!74332 () Bool)

(assert (=> b!79696 m!74332))

(declare-fun m!74334 () Bool)

(assert (=> d!55201 m!74334))

(assert (=> b!79661 d!55201))

(push 1)

(assert (not b!79692))

(assert (not b!79693))

(assert (not b!79669))

(assert (not b!79677))

(assert (not d!55201))

(assert (not b!79671))

(assert (not b!79696))

(assert (not b!79695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55203 () Bool)

(declare-fun res!40318 () Bool)

(declare-fun e!43197 () Bool)

(assert (=> d!55203 (=> res!40318 e!43197)))

(assert (=> d!55203 (= res!40318 (not (and (is-Cons!606 (t!47635 res!39935)) (is-Cons!606 (t!47635 (t!47635 res!39935))))))))

(assert (=> d!55203 (= (isSorted!2 (t!47635 res!39935)) e!43197)))

(declare-fun b!79697 () Bool)

(declare-fun e!43198 () Bool)

(assert (=> b!79697 (= e!43197 e!43198)))

(declare-fun res!40319 () Bool)

(assert (=> b!79697 (=> (not res!40319) (not e!43198))))

(assert (=> b!79697 (= res!40319 (<= (h!893 (t!47635 res!39935)) (h!893 (t!47635 (t!47635 res!39935)))))))

(declare-fun b!79698 () Bool)

(assert (=> b!79698 (= e!43198 (isSorted!2 (t!47635 (t!47635 res!39935))))))

(assert (= (and d!55203 (not res!40318)) b!79697))

(assert (= (and b!79697 res!40319) b!79698))

(declare-fun m!74336 () Bool)

(assert (=> b!79698 m!74336))

(assert (=> b!79677 d!55203))

(declare-fun d!55205 () Bool)

(assert (=> d!55205 (= (content!111 Nil!608) (as emptyset (Set Int)))))

(assert (=> d!55201 d!55205))

(declare-fun d!55207 () Bool)

(declare-fun res!40320 () Bool)

(declare-fun e!43199 () Bool)

(assert (=> d!55207 (=> res!40320 e!43199)))

(assert (=> d!55207 (= res!40320 (not (and (is-Cons!606 lt!18260) (is-Cons!606 (t!47635 lt!18260)))))))

(assert (=> d!55207 (= (isSorted!2 lt!18260) e!43199)))

(declare-fun b!79699 () Bool)

(declare-fun e!43200 () Bool)

(assert (=> b!79699 (= e!43199 e!43200)))

(declare-fun res!40321 () Bool)

(assert (=> b!79699 (=> (not res!40321) (not e!43200))))

(assert (=> b!79699 (= res!40321 (<= (h!893 lt!18260) (h!893 (t!47635 lt!18260))))))

(declare-fun b!79700 () Bool)

(assert (=> b!79700 (= e!43200 (isSorted!2 (t!47635 lt!18260)))))

(assert (= (and d!55207 (not res!40320)) b!79699))

(assert (= (and b!79699 res!40321) b!79700))

(declare-fun m!74338 () Bool)

(assert (=> b!79700 m!74338))

(assert (=> d!55201 d!55207))

(declare-fun d!55209 () Bool)

(declare-fun m!74340 () Bool)

(assert (=> d!55209 m!74340))

(declare-fun bs!38141 () Bool)

(assert (= bs!38141 (and d!55209 d!55201)))

(assert (=> (and bs!38141 (= (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608) Nil!608) (= (content!111 (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)) (content!111 Nil!608))) (= true true)))

(declare-fun bs!38142 () Bool)

(declare-fun b!79703 () Bool)

(assert (= bs!38142 (and b!79703 b!79694)))

(assert (=> (and bs!38142 (= (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608) Nil!608)) (= true true)))

(declare-fun b!79701 () Bool)

(declare-fun m!74342 () Bool)

(assert (=> b!79701 m!74342))

(declare-fun bs!38143 () Bool)

(assert (= bs!38143 (and b!79701 d!55209)))

(assert (=> (and bs!38143 (= (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)) (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)) (= (content!111 (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608))) (content!111 (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)))) (= true true)))

(declare-fun bs!38144 () Bool)

(assert (= bs!38144 (and b!79701 d!55201)))

(assert (=> (and bs!38144 (= (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)) Nil!608) (= (content!111 (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608))) (content!111 Nil!608))) (= true true)))

(declare-fun bs!38145 () Bool)

(assert (= bs!38145 (and b!79701 b!79692)))

(assert (=> (and bs!38145 (= (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)) Nil!608)) (= true true)))

(declare-fun e!43202 () Bool)

(assert (=> b!79701 (= e!43202 true)))

(assert (=> b!79701 true))

(declare-fun b!79702 () Bool)

(declare-fun e!43203 () List!648)

(assert (=> b!79702 (= e!43203 (appendSorted!0 (quickSort!1 (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)) (Cons!606 (h!893 list!1008) (quickSort!1 (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608))))))))

(declare-fun res!40322 () Bool)

(assert (=> b!79703 (=> (not res!40322) (not e!43202))))

(assert (=> b!79703 (= res!40322 true)))

(declare-fun b!79704 () Bool)

(declare-fun e!43201 () Bool)

(declare-fun lt!18262 () List!648)

(assert (=> b!79704 (= e!43201 (= (content!111 lt!18262) (insert (h!893 list!1008) (union (union (content!111 (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)) (content!111 (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)))) (content!111 (t!47635 (t!47635 list!1008)))))))))

(declare-fun lt!18263 () Bool)

(declare-fun b!79705 () Bool)

(assert (=> b!79705 (= e!43203 (par!0 (h!893 list!1008) (ite lt!18263 (Cons!606 (h!893 (t!47635 (t!47635 list!1008))) (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)) (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608)) (ite lt!18263 (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)) (Cons!606 (h!893 (t!47635 (t!47635 list!1008))) (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)))) (t!47635 (t!47635 (t!47635 list!1008)))))))

(assert (=> b!79705 (= lt!18263 (<= (h!893 (t!47635 (t!47635 list!1008))) (h!893 list!1008)))))

(assert (=> d!55209 e!43201))

(declare-fun res!40323 () Bool)

(assert (=> d!55209 (=> (not res!40323) (not e!43201))))

(assert (=> d!55209 (= res!40323 (isSorted!2 lt!18262))))

(assert (=> d!55209 (= lt!18262 e!43203)))

(declare-fun c!20224 () Bool)

(assert (=> d!55209 (= c!20224 (is-Nil!608 (t!47635 (t!47635 list!1008))))))

(assert (=> d!55209 e!43202))

(declare-fun res!40324 () Bool)

(assert (=> d!55209 (=> (not res!40324) (not e!43202))))

(assert (=> d!55209 (= res!40324 true)))

(assert (=> d!55209 (= (par!0 (h!893 list!1008) (ite lt!18261 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608) Nil!608) (ite lt!18261 Nil!608 (Cons!606 (h!893 (t!47635 list!1008)) Nil!608)) (t!47635 (t!47635 list!1008))) lt!18262)))

(assert (= (and d!55209 res!40324) b!79703))

(assert (= (and b!79703 res!40322) b!79701))

(assert (= (and d!55209 c!20224) b!79702))

(assert (= (and d!55209 (not c!20224)) b!79705))

(assert (= (and d!55209 res!40323) b!79704))

(declare-fun m!74344 () Bool)

(assert (=> b!79702 m!74344))

(declare-fun m!74346 () Bool)

(assert (=> b!79702 m!74346))

(assert (=> b!79702 m!74344))

(declare-fun m!74348 () Bool)

(assert (=> b!79702 m!74348))

(declare-fun m!74350 () Bool)

(assert (=> b!79704 m!74350))

(assert (=> b!79704 m!74340))

(assert (=> b!79704 m!74342))

(declare-fun m!74352 () Bool)

(assert (=> b!79704 m!74352))

(declare-fun m!74354 () Bool)

(assert (=> b!79704 m!74354))

(declare-fun m!74356 () Bool)

(assert (=> b!79705 m!74356))

(declare-fun m!74358 () Bool)

(assert (=> d!55209 m!74358))

(assert (=> b!79696 d!55209))

(declare-fun d!55211 () Bool)

(declare-fun c!20225 () Bool)

(assert (=> d!55211 (= c!20225 (is-Nil!608 (t!47635 res!39935)))))

(declare-fun e!43204 () (Set Int))

(assert (=> d!55211 (= (content!111 (t!47635 res!39935)) e!43204)))

(declare-fun b!79706 () Bool)

(assert (=> b!79706 (= e!43204 (as emptyset (Set Int)))))

(declare-fun b!79707 () Bool)

(assert (=> b!79707 (= e!43204 (union (insert (h!893 (t!47635 res!39935)) (as emptyset (Set Int))) (content!111 (t!47635 (t!47635 res!39935)))))))

(assert (= (and d!55211 c!20225) b!79706))

(assert (= (and d!55211 (not c!20225)) b!79707))

(declare-fun m!74360 () Bool)

(assert (=> b!79707 m!74360))

(declare-fun m!74362 () Bool)

(assert (=> b!79707 m!74362))

(assert (=> b!79669 d!55211))

(declare-fun b!79722 () Bool)

(declare-fun res!40336 () Bool)

(declare-fun e!43213 () Bool)

(assert (=> b!79722 (=> (not res!40336) (not e!43213))))

(assert (=> b!79722 (= res!40336 (isSorted!2 (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608))))))

(declare-fun d!55213 () Bool)

(declare-fun e!43215 () Bool)

(assert (=> d!55213 e!43215))

(declare-fun res!40338 () Bool)

(assert (=> d!55213 (=> (not res!40338) (not e!43215))))

(declare-fun lt!18266 () List!648)

(assert (=> d!55213 (= res!40338 (isSorted!2 lt!18266))))

(declare-fun e!43214 () List!648)

(assert (=> d!55213 (= lt!18266 e!43214)))

(declare-fun c!20228 () Bool)

(assert (=> d!55213 (= c!20228 (is-Nil!608 (quickSort!1 Nil!608)))))

(assert (=> d!55213 e!43213))

(declare-fun res!40337 () Bool)

(assert (=> d!55213 (=> (not res!40337) (not e!43213))))

(assert (=> d!55213 (= res!40337 (isSorted!2 (quickSort!1 Nil!608)))))

(assert (=> d!55213 (= (appendSorted!0 (quickSort!1 Nil!608) (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608))) lt!18266)))

(declare-fun b!79723 () Bool)

(assert (=> b!79723 (= e!43214 (Cons!606 (h!893 (quickSort!1 Nil!608)) (appendSorted!0 (t!47635 (quickSort!1 Nil!608)) (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608)))))))

(declare-fun b!79724 () Bool)

(declare-fun e!43216 () Bool)

(declare-fun last!4 (List!648) Int)

(declare-fun head!1042 (List!648) Int)

(assert (=> b!79724 (= e!43216 (<= (last!4 (quickSort!1 Nil!608)) (head!1042 (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608)))))))

(declare-fun b!79725 () Bool)

(declare-fun res!40339 () Bool)

(assert (=> b!79725 (=> res!40339 e!43216)))

(declare-fun isEmpty!660 (List!648) Bool)

(assert (=> b!79725 (= res!40339 (isEmpty!660 (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608))))))

(declare-fun b!79726 () Bool)

(assert (=> b!79726 (= e!43213 e!43216)))

(declare-fun res!40340 () Bool)

(assert (=> b!79726 (=> res!40340 e!43216)))

(assert (=> b!79726 (= res!40340 (isEmpty!660 (quickSort!1 Nil!608)))))

(declare-fun b!79727 () Bool)

(assert (=> b!79727 (= e!43214 (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608)))))

(declare-fun b!79728 () Bool)

(assert (=> b!79728 (= e!43215 (= (content!111 lt!18266) (union (content!111 (quickSort!1 Nil!608)) (content!111 (Cons!606 (h!893 list!1008) (quickSort!1 Nil!608))))))))

(assert (= (and d!55213 res!40337) b!79722))

(assert (= (and b!79722 res!40336) b!79726))

(assert (= (and b!79726 (not res!40340)) b!79725))

(assert (= (and b!79725 (not res!40339)) b!79724))

(assert (= (and d!55213 c!20228) b!79727))

(assert (= (and d!55213 (not c!20228)) b!79723))

(assert (= (and d!55213 res!40338) b!79728))

(declare-fun m!74364 () Bool)

(assert (=> b!79725 m!74364))

(declare-fun m!74366 () Bool)

(assert (=> b!79723 m!74366))

(declare-fun m!74368 () Bool)

(assert (=> b!79728 m!74368))

(assert (=> b!79728 m!74324))

(declare-fun m!74370 () Bool)

(assert (=> b!79728 m!74370))

(declare-fun m!74372 () Bool)

(assert (=> b!79728 m!74372))

(declare-fun m!74374 () Bool)

(assert (=> d!55213 m!74374))

(assert (=> d!55213 m!74324))

(declare-fun m!74376 () Bool)

(assert (=> d!55213 m!74376))

(assert (=> b!79726 m!74324))

(declare-fun m!74378 () Bool)

(assert (=> b!79726 m!74378))

(assert (=> b!79724 m!74324))

(declare-fun m!74380 () Bool)

(assert (=> b!79724 m!74380))

(declare-fun m!74382 () Bool)

(assert (=> b!79724 m!74382))

(declare-fun m!74384 () Bool)

(assert (=> b!79722 m!74384))

(assert (=> b!79693 d!55213))

(declare-fun d!55215 () Bool)

(declare-fun e!43221 () Bool)

(assert (=> d!55215 e!43221))

(declare-fun res!40344 () Bool)

(assert (=> d!55215 (=> (not res!40344) (not e!43221))))

(declare-fun lt!18269 () List!648)

(assert (=> d!55215 (= res!40344 (isSorted!2 lt!18269))))

(declare-fun e!43222 () List!648)

(assert (=> d!55215 (= lt!18269 e!43222)))

(declare-fun c!20231 () Bool)

(assert (=> d!55215 (= c!20231 (is-Nil!608 Nil!608))))

(assert (=> d!55215 (= (quickSort!1 Nil!608) lt!18269)))

(declare-fun b!79735 () Bool)

(assert (=> b!79735 (= e!43222 Nil!608)))

(declare-fun b!79736 () Bool)

(assert (=> b!79736 (= e!43222 (par!0 (h!893 Nil!608) Nil!608 Nil!608 (t!47635 Nil!608)))))

(declare-fun b!79737 () Bool)

(assert (=> b!79737 (= e!43221 (= (content!111 lt!18269) (content!111 Nil!608)))))

(assert (= (and d!55215 c!20231) b!79735))

(assert (= (and d!55215 (not c!20231)) b!79736))

(assert (= (and d!55215 res!40344) b!79737))

(declare-fun m!74386 () Bool)

(assert (=> d!55215 m!74386))

(declare-fun m!74388 () Bool)

(assert (=> b!79736 m!74388))

(declare-fun m!74390 () Bool)

(assert (=> b!79737 m!74390))

(assert (=> b!79737 m!74322))

(assert (=> b!79693 d!55215))

(declare-fun d!55217 () Bool)

(declare-fun c!20232 () Bool)

(assert (=> d!55217 (= c!20232 (is-Nil!608 (t!47635 list!1008)))))

(declare-fun e!43223 () (Set Int))

(assert (=> d!55217 (= (content!111 (t!47635 list!1008)) e!43223)))

(declare-fun b!79738 () Bool)

(assert (=> b!79738 (= e!43223 (as emptyset (Set Int)))))

(declare-fun b!79739 () Bool)

(assert (=> b!79739 (= e!43223 (union (insert (h!893 (t!47635 list!1008)) (as emptyset (Set Int))) (content!111 (t!47635 (t!47635 list!1008)))))))

(assert (= (and d!55217 c!20232) b!79738))

(assert (= (and d!55217 (not c!20232)) b!79739))

(declare-fun m!74392 () Bool)

(assert (=> b!79739 m!74392))

(assert (=> b!79739 m!74354))

(assert (=> b!79671 d!55217))

(assert (=> b!79692 d!55205))

(declare-fun d!55219 () Bool)

(declare-fun c!20233 () Bool)

(assert (=> d!55219 (= c!20233 (is-Nil!608 lt!18260))))

(declare-fun e!43224 () (Set Int))

(assert (=> d!55219 (= (content!111 lt!18260) e!43224)))

(declare-fun b!79740 () Bool)

(assert (=> b!79740 (= e!43224 (as emptyset (Set Int)))))

(declare-fun b!79741 () Bool)

(assert (=> b!79741 (= e!43224 (union (insert (h!893 lt!18260) (as emptyset (Set Int))) (content!111 (t!47635 lt!18260))))))

(assert (= (and d!55219 c!20233) b!79740))

(assert (= (and d!55219 (not c!20233)) b!79741))

(declare-fun m!74394 () Bool)

(assert (=> b!79741 m!74394))

(declare-fun m!74396 () Bool)

(assert (=> b!79741 m!74396))

(assert (=> b!79695 d!55219))

(assert (=> b!79695 d!55205))

(assert (=> b!79695 d!55217))

(declare-fun bs!38146 () Bool)

(declare-fun s!2395 () Bool)

(assert (= bs!38146 (and d!55201 s!2395)))

(declare-fun contains!49 (List!648 Int) Bool)

(assert (=> bs!38146 (=> true (= (contains!49 Nil!608 (h!893 list!1008)) (member (h!893 list!1008) (content!111 Nil!608))))))

(declare-fun m!74398 () Bool)

(assert (=> m!74328 m!74398))

(declare-fun m!74400 () Bool)

(assert (=> m!74328 m!74400))

(assert (=> m!74328 s!2395))

(assert (=> m!74316 s!2395))

(declare-fun bs!38147 () Bool)

(declare-fun s!2397 () Bool)

(assert (= bs!38147 (and d!55201 s!2397)))

(assert (=> bs!38147 (=> true (= (contains!49 Nil!608 (h!893 res!39935)) (member (h!893 res!39935) (content!111 Nil!608))))))

(declare-fun m!74402 () Bool)

(assert (=> m!74312 m!74402))

(declare-fun m!74404 () Bool)

(assert (=> m!74312 m!74404))

(assert (=> m!74312 s!2397))

(push 1)

(assert (not b!79704))

(assert (not b!79739))

(assert (not b!79741))

(assert (not b!79707))

(assert (not d!55215))

(assert (not b!79724))

(assert (not bs!38146))

(assert (not d!55213))

(assert (not b!79702))

(assert (not b!79725))

(assert (not b!79737))

(assert (not b!79698))

(assert (not b!79728))

(assert (not d!55209))

(assert (not b!79723))

(assert (not b!79705))

(assert (not bs!38147))

(assert (not b!79701))

(assert (not b!79736))

(assert (not b!79726))

(assert (not b!79722))

(assert (not b!79700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

