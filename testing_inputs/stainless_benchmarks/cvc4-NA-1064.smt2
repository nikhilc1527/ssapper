; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7782 () Bool)

(assert start!7782)

(assert (=> start!7782 true))

(declare-fun res!25509 () Bool)

(declare-fun e!29143 () Bool)

(assert (=> start!7782 (=> (not res!25509) (not e!29143))))

(declare-fun n!1589 () Int)

(declare-fun lambda!8609 () Int)

(declare-fun intForAll2!0 (Int Int Int) Bool)

(assert (=> start!7782 (= res!25509 (intForAll2!0 n!1589 n!1589 lambda!8609))))

(assert (=> start!7782 e!29143))

(assert (=> start!7782 true))

(declare-fun b!55333 () Bool)

(declare-fun lambda!8610 () Int)

(declare-fun invariant!0 (Int Int) Bool)

(assert (=> b!55333 (= e!29143 (not (invariant!0 n!1589 lambda!8610)))))

(assert (= (and start!7782 res!25509) b!55333))

(declare-fun m!60107 () Bool)

(assert (=> start!7782 m!60107))

(declare-fun m!60109 () Bool)

(assert (=> b!55333 m!60109))

(push 1)

(assert (not b!55333))

(assert (not start!7782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27565 () Bool)

(declare-fun d!45318 () Bool)

(assert (= bs!27565 (and d!45318 start!7782)))

(declare-fun lambda!8613 () Int)

(assert (=> bs!27565 (= lambda!8613 lambda!8609)))

(assert (=> d!45318 true))

(declare-fun order!429 () Int)

(declare-fun order!427 () Int)

(declare-fun dynLambda!898 (Int Int) Int)

(declare-fun dynLambda!899 (Int Int) Int)

(assert (=> d!45318 (< (dynLambda!898 order!427 lambda!8610) (dynLambda!899 order!429 lambda!8613))))

(assert (=> d!45318 true))

(assert (=> d!45318 (= (invariant!0 n!1589 lambda!8610) (intForAll2!0 n!1589 n!1589 lambda!8613))))

(declare-fun bs!27566 () Bool)

(assert (= bs!27566 d!45318))

(declare-fun m!60111 () Bool)

(assert (=> bs!27566 m!60111))

(assert (=> b!55333 d!45318))

(declare-fun d!45320 () Bool)

(declare-fun res!25516 () Bool)

(declare-fun e!29148 () Bool)

(assert (=> d!45320 (=> res!25516 e!29148)))

(assert (=> d!45320 (= res!25516 (or (<= n!1589 0) (<= n!1589 0)))))

(assert (=> d!45320 (= (intForAll2!0 n!1589 n!1589 lambda!8609) e!29148)))

(declare-fun b!55344 () Bool)

(declare-fun e!29149 () Bool)

(assert (=> b!55344 (= e!29148 e!29149)))

(declare-fun res!25517 () Bool)

(assert (=> b!55344 (=> (not res!25517) (not e!29149))))

(declare-fun dynLambda!900 (Int Int Int) Bool)

(assert (=> b!55344 (= res!25517 (dynLambda!900 lambda!8609 (- n!1589 1) (- n!1589 1)))))

(declare-fun b!55345 () Bool)

(declare-fun res!25518 () Bool)

(assert (=> b!55345 (=> (not res!25518) (not e!29149))))

(assert (=> b!55345 (= res!25518 (intForAll2!0 (- n!1589 1) n!1589 lambda!8609))))

(declare-fun b!55346 () Bool)

(assert (=> b!55346 (= e!29149 (intForAll2!0 n!1589 (- n!1589 1) lambda!8609))))

(assert (= (and d!45320 (not res!25516)) b!55344))

(assert (= (and b!55344 res!25517) b!55345))

(assert (= (and b!55345 res!25518) b!55346))

(declare-fun b_lambda!14649 () Bool)

(assert (=> (not b_lambda!14649) (not b!55344)))

(declare-fun m!60114 () Bool)

(assert (=> b!55344 m!60114))

(declare-fun m!60116 () Bool)

(assert (=> b!55345 m!60116))

(declare-fun m!60118 () Bool)

(assert (=> b!55346 m!60118))

(assert (=> start!7782 d!45320))

(declare-fun b_lambda!14651 () Bool)

(assert (= b_lambda!14649 (or start!7782 b_lambda!14651)))

(declare-fun bs!27567 () Bool)

(declare-fun d!45322 () Bool)

(assert (= bs!27567 (and d!45322 start!7782)))

(declare-fun smallNumbers!0 (Int Int Int Int) Bool)

(assert (=> bs!27567 (= (dynLambda!900 lambda!8609 (- n!1589 1) (- n!1589 1)) (smallNumbers!0 n!1589 lambda!8610 (- n!1589 1) (- n!1589 1)))))

(declare-fun m!60120 () Bool)

(assert (=> bs!27567 m!60120))

(assert (=> b!55344 d!45322))

(push 1)

(assert (not b_lambda!14651))

(assert (not b!55346))

(assert (not b!55345))

(assert (not d!45318))

(assert (not bs!27567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

