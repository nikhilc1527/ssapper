; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14264 () Bool)

(assert start!14264)

(declare-datatypes () ((P!39 (Charlie!39) (Alice!39) (Bob!39))))

(declare-datatypes () ((S!97 (S!98 (who!1706 P!39) (amount!1706 Int)))))

(declare-fun lt!21411 () S!97)

(declare-datatypes () ((List!840 (Cons!778 (h!3779 S!97) (t!51926 List!840)) (Nil!780))))

(declare-fun lt!21410 () List!840)

(assert (=> start!14264 (= lt!21411 (h!3779 lt!21410))))

(assert (=> start!14264 (= lt!21410 (Cons!778 (S!98 Charlie!39 4000) Nil!780))))

(declare-fun lt!21409 () P!39)

(assert (=> start!14264 (= lt!21409 Alice!39)))

(declare-fun size!954 (List!840) Int)

(assert (=> start!14264 (not (= (size!954 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780))) (size!954 (Cons!778 (S!98 lt!21409 0) lt!21410))))))

(declare-fun bs!42772 () Bool)

(assert (= bs!42772 start!14264))

(declare-fun m!89517 () Bool)

(assert (=> bs!42772 m!89517))

(declare-fun m!89519 () Bool)

(assert (=> bs!42772 m!89519))

(push 1)

(assert (not start!14264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61320 () Bool)

(declare-fun lt!21414 () Int)

(assert (=> d!61320 (>= lt!21414 0)))

(declare-fun e!51431 () Int)

(assert (=> d!61320 (= lt!21414 e!51431)))

(declare-fun c!23054 () Bool)

(assert (=> d!61320 (= c!23054 (is-Nil!780 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780))))))

(assert (=> d!61320 (= (size!954 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780))) lt!21414)))

(declare-fun b!93885 () Bool)

(assert (=> b!93885 (= e!51431 0)))

(declare-fun b!93886 () Bool)

(assert (=> b!93886 (= e!51431 (+ 1 (size!954 (t!51926 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780))))))))

(assert (= (and d!61320 c!23054) b!93885))

(assert (= (and d!61320 (not c!23054)) b!93886))

(declare-fun m!89521 () Bool)

(assert (=> b!93886 m!89521))

(assert (=> start!14264 d!61320))

(declare-fun d!61322 () Bool)

(declare-fun lt!21415 () Int)

(assert (=> d!61322 (>= lt!21415 0)))

(declare-fun e!51432 () Int)

(assert (=> d!61322 (= lt!21415 e!51432)))

(declare-fun c!23055 () Bool)

(assert (=> d!61322 (= c!23055 (is-Nil!780 (Cons!778 (S!98 lt!21409 0) lt!21410)))))

(assert (=> d!61322 (= (size!954 (Cons!778 (S!98 lt!21409 0) lt!21410)) lt!21415)))

(declare-fun b!93887 () Bool)

(assert (=> b!93887 (= e!51432 0)))

(declare-fun b!93888 () Bool)

(assert (=> b!93888 (= e!51432 (+ 1 (size!954 (t!51926 (Cons!778 (S!98 lt!21409 0) lt!21410)))))))

(assert (= (and d!61322 c!23055) b!93887))

(assert (= (and d!61322 (not c!23055)) b!93888))

(declare-fun m!89523 () Bool)

(assert (=> b!93888 m!89523))

(assert (=> start!14264 d!61322))

(push 1)

(assert (not b!93886))

(assert (not b!93888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61324 () Bool)

(declare-fun lt!21416 () Int)

(assert (=> d!61324 (>= lt!21416 0)))

(declare-fun e!51433 () Int)

(assert (=> d!61324 (= lt!21416 e!51433)))

(declare-fun c!23056 () Bool)

(assert (=> d!61324 (= c!23056 (is-Nil!780 (t!51926 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780)))))))

(assert (=> d!61324 (= (size!954 (t!51926 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780)))) lt!21416)))

(declare-fun b!93889 () Bool)

(assert (=> b!93889 (= e!51433 0)))

(declare-fun b!93890 () Bool)

(assert (=> b!93890 (= e!51433 (+ 1 (size!954 (t!51926 (t!51926 (Cons!778 (S!98 lt!21409 2000) (Cons!778 (S!98 (who!1706 lt!21411) (- 2000 (amount!1706 lt!21411))) Nil!780)))))))))

(assert (= (and d!61324 c!23056) b!93889))

(assert (= (and d!61324 (not c!23056)) b!93890))

(declare-fun m!89525 () Bool)

(assert (=> b!93890 m!89525))

(assert (=> b!93886 d!61324))

(declare-fun d!61326 () Bool)

(declare-fun lt!21417 () Int)

(assert (=> d!61326 (>= lt!21417 0)))

(declare-fun e!51434 () Int)

(assert (=> d!61326 (= lt!21417 e!51434)))

(declare-fun c!23057 () Bool)

(assert (=> d!61326 (= c!23057 (is-Nil!780 (t!51926 (Cons!778 (S!98 lt!21409 0) lt!21410))))))

(assert (=> d!61326 (= (size!954 (t!51926 (Cons!778 (S!98 lt!21409 0) lt!21410))) lt!21417)))

(declare-fun b!93891 () Bool)

(assert (=> b!93891 (= e!51434 0)))

(declare-fun b!93892 () Bool)

(assert (=> b!93892 (= e!51434 (+ 1 (size!954 (t!51926 (t!51926 (Cons!778 (S!98 lt!21409 0) lt!21410))))))))

(assert (= (and d!61326 c!23057) b!93891))

(assert (= (and d!61326 (not c!23057)) b!93892))

(declare-fun m!89527 () Bool)

(assert (=> b!93892 m!89527))

(assert (=> b!93888 d!61326))

(push 1)

(assert (not b!93890))

(assert (not b!93892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

