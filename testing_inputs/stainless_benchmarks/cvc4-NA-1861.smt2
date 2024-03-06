; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12486 () Bool)

(assert start!12486)

(declare-fun res!48383 () Bool)

(declare-fun e!50368 () Bool)

(assert (=> start!12486 (=> (not res!48383) (not e!50368))))

(declare-datatypes () ((tuple4!20 (tuple4!21 (_1!259 (_ BitVec 32)) (_2!259 (_ BitVec 32)) (_3!35 (_ BitVec 32)) (_4!15 (_ BitVec 32))))))

(declare-fun x$3!232 () tuple4!20)

(declare-fun x3!44 () (_ BitVec 32))

(declare-fun x1!79 () (_ BitVec 32))

(declare-fun x4!24 () (_ BitVec 32))

(declare-fun x2!87 () (_ BitVec 32))

(declare-fun sort4!1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple4!20)

(assert (=> start!12486 (= res!48383 (= x$3!232 (tuple4!21 (_1!259 (sort4!1 x1!79 x2!87 x3!44 x4!24)) (_2!259 (sort4!1 x1!79 x2!87 x3!44 x4!24)) (_3!35 (sort4!1 x1!79 x2!87 x3!44 x4!24)) (_4!15 (sort4!1 x1!79 x2!87 x3!44 x4!24)))))))

(assert (=> start!12486 e!50368))

(assert (=> start!12486 true))

(declare-fun x3s!32 () (_ BitVec 32))

(declare-fun x1s!54 () (_ BitVec 32))

(declare-fun b!92025 () Bool)

(declare-datatypes () ((tuple5!10 (tuple5!11 (_1!260 (_ BitVec 32)) (_2!260 (_ BitVec 32)) (_3!36 (_ BitVec 32)) (_4!16 (_ BitVec 32)) (_5!5 (_ BitVec 32))))))

(declare-fun x$4!145 () tuple5!10)

(declare-fun x4s!5 () (_ BitVec 32))

(declare-fun x2s!54 () (_ BitVec 32))

(declare-fun x5!7 () (_ BitVec 32))

(assert (=> b!92025 (= e!50368 (and (= x1s!54 (_1!259 x$3!232)) (= x2s!54 (_2!259 x$3!232)) (= x3s!32 (_3!35 x$3!232)) (= x4s!5 (_4!15 x$3!232)) (bvsle x4s!5 x5!7) (= x$4!145 (tuple5!11 x1s!54 x2s!54 x3s!32 x4s!5 x5!7)) (or (bvsgt (_1!260 x$4!145) (_2!260 x$4!145)) (bvsgt (_2!260 x$4!145) (_3!36 x$4!145)) (bvsgt (_3!36 x$4!145) (_4!16 x$4!145)) (bvsgt (_4!16 x$4!145) (_5!5 x$4!145)) (not (= (insert (_5!5 x$4!145) (insert (_4!16 x$4!145) (insert (_3!36 x$4!145) (insert (_2!260 x$4!145) (insert (_1!260 x$4!145) (as emptyset (Set (_ BitVec 32)))))))) (insert x4!24 (insert x4!24 (insert x3!44 (insert x2!87 (insert x1!79 (as emptyset (Set (_ BitVec 32)))))))))))))))

(assert (= (and start!12486 res!48383) b!92025))

(declare-fun m!87750 () Bool)

(assert (=> start!12486 m!87750))

(declare-fun m!87752 () Bool)

(assert (=> b!92025 m!87752))

(declare-fun m!87754 () Bool)

(assert (=> b!92025 m!87754))

(declare-fun m!87756 () Bool)

(assert (=> b!92025 m!87756))

(declare-fun m!87758 () Bool)

(assert (=> b!92025 m!87758))

(declare-fun m!87760 () Bool)

(assert (=> b!92025 m!87760))

(declare-fun m!87762 () Bool)

(assert (=> b!92025 m!87762))

(declare-fun m!87764 () Bool)

(assert (=> b!92025 m!87764))

(declare-fun m!87766 () Bool)

(assert (=> b!92025 m!87766))

(declare-fun m!87768 () Bool)

(assert (=> b!92025 m!87768))

(declare-fun m!87770 () Bool)

(assert (=> b!92025 m!87770))

(push 1)

(assert (not start!12486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60402 () Bool)

(declare-fun lt!20782 () (_ BitVec 32))

(declare-datatypes () ((tuple3!40 (tuple3!41 (_1!261 (_ BitVec 32)) (_2!261 (_ BitVec 32)) (_3!37 (_ BitVec 32))))))

(declare-fun sort3!1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!40)

(assert (=> d!60402 (= lt!20782 (_3!37 (sort3!1 x1!79 x2!87 x3!44)))))

(declare-fun lt!20781 () (_ BitVec 32))

(assert (=> d!60402 (= lt!20781 (_2!261 (sort3!1 x1!79 x2!87 x3!44)))))

(declare-fun lt!20780 () (_ BitVec 32))

(assert (=> d!60402 (= lt!20780 (_1!261 (sort3!1 x1!79 x2!87 x3!44)))))

(assert (=> d!60402 (= (sort4!1 x1!79 x2!87 x3!44 x4!24) (ite (bvsle lt!20782 x4!24) (tuple4!21 lt!20780 lt!20781 lt!20782 x4!24) (ite (bvsle lt!20781 x4!24) (tuple4!21 lt!20780 lt!20781 x4!24 lt!20782) (ite (bvsle lt!20780 x4!24) (tuple4!21 lt!20780 x4!24 lt!20781 lt!20782) (tuple4!21 x4!24 lt!20780 lt!20781 lt!20782)))))))

(declare-fun bs!41950 () Bool)

(assert (= bs!41950 d!60402))

(declare-fun m!87772 () Bool)

(assert (=> bs!41950 m!87772))

(assert (=> start!12486 d!60402))

(push 1)

(assert (not d!60402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60404 () Bool)

(declare-fun lt!20788 () (_ BitVec 32))

(declare-datatypes () ((tuple2!448 (tuple2!449 (_1!262 (_ BitVec 32)) (_2!262 (_ BitVec 32))))))

(declare-fun sort2!1 ((_ BitVec 32) (_ BitVec 32)) tuple2!448)

(assert (=> d!60404 (= lt!20788 (_2!262 (sort2!1 x1!79 x2!87)))))

(declare-fun lt!20787 () (_ BitVec 32))

(assert (=> d!60404 (= lt!20787 (_1!262 (sort2!1 x1!79 x2!87)))))

(assert (=> d!60404 (= (sort3!1 x1!79 x2!87 x3!44) (ite (bvsle lt!20788 x3!44) (tuple3!41 lt!20787 lt!20788 x3!44) (ite (bvsle lt!20787 x3!44) (tuple3!41 lt!20787 x3!44 lt!20788) (tuple3!41 x3!44 lt!20787 lt!20788))))))

(declare-fun bs!41951 () Bool)

(assert (= bs!41951 d!60404))

(declare-fun m!87774 () Bool)

(assert (=> bs!41951 m!87774))

(assert (=> d!60402 d!60404))

(push 1)

(assert (not d!60404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60406 () Bool)

(assert (=> d!60406 (= (sort2!1 x1!79 x2!87) (ite (bvslt x1!79 x2!87) (tuple2!449 x1!79 x2!87) (tuple2!449 x2!87 x1!79)))))

(assert (=> d!60404 d!60406))

(push 1)

(check-sat)

(get-model)

(pop 1)

