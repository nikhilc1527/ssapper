; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11204 () Bool)

(assert start!11204)

(assert (=> start!11204 true))

(declare-fun bs!41050 () Bool)

(declare-fun b!85547 () Bool)

(assert (= bs!41050 (and b!85547 start!11204)))

(declare-fun lambda!10770 () Int)

(declare-fun lambda!10769 () Int)

(assert (=> bs!41050 (not (= lambda!10770 lambda!10769))))

(assert (=> b!85547 true))

(declare-fun res!44442 () Bool)

(declare-fun e!46380 () Bool)

(assert (=> start!11204 (=> (not res!44442) (not e!46380))))

(declare-datatypes () ((List!710 (Cons!667 (h!1040 Int) (t!48155 List!710)) (Nil!669))))

(declare-fun ls!63 () List!710)

(declare-fun forall!58 (List!710 Int) Bool)

(assert (=> start!11204 (= res!44442 (forall!58 ls!63 lambda!10769))))

(assert (=> start!11204 e!46380))

(assert (=> start!11204 true))

(declare-fun b!85545 () Bool)

(declare-fun res!44443 () Bool)

(assert (=> b!85545 (=> (not res!44443) (not e!46380))))

(assert (=> b!85545 (= res!44443 (is-Cons!667 ls!63))))

(declare-fun b!85546 () Bool)

(declare-fun res!44444 () Bool)

(assert (=> b!85546 (=> (not res!44444) (not e!46380))))

(declare-fun inductVal!907 () Bool)

(declare-fun x!29263 () Int)

(declare-fun forall_lt_implies_le!0 (List!710 Int) Bool)

(assert (=> b!85546 (= res!44444 (= inductVal!907 (forall_lt_implies_le!0 (t!48155 ls!63) x!29263)))))

(assert (=> b!85547 (= e!46380 (not (forall!58 ls!63 lambda!10770)))))

(assert (= (and start!11204 res!44442) b!85545))

(assert (= (and b!85545 res!44443) b!85546))

(assert (= (and b!85546 res!44444) b!85547))

(declare-fun m!81358 () Bool)

(assert (=> start!11204 m!81358))

(declare-fun m!81360 () Bool)

(assert (=> b!85546 m!81360))

(declare-fun m!81362 () Bool)

(assert (=> b!85547 m!81362))

(push 1)

(assert (not b!85547))

(assert (not b!85546))

(assert (not start!11204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57385 () Bool)

(declare-fun res!44449 () Bool)

(declare-fun e!46385 () Bool)

(assert (=> d!57385 (=> res!44449 e!46385)))

(assert (=> d!57385 (= res!44449 (is-Nil!669 ls!63))))

(assert (=> d!57385 (= (forall!58 ls!63 lambda!10770) e!46385)))

(declare-fun b!85554 () Bool)

(declare-fun e!46386 () Bool)

(assert (=> b!85554 (= e!46385 e!46386)))

(declare-fun res!44450 () Bool)

(assert (=> b!85554 (=> (not res!44450) (not e!46386))))

(declare-fun dynLambda!1019 (Int Int) Bool)

(assert (=> b!85554 (= res!44450 (dynLambda!1019 lambda!10770 (h!1040 ls!63)))))

(declare-fun b!85555 () Bool)

(assert (=> b!85555 (= e!46386 (forall!58 (t!48155 ls!63) lambda!10770))))

(assert (= (and d!57385 (not res!44449)) b!85554))

(assert (= (and b!85554 res!44450) b!85555))

(declare-fun b_lambda!16867 () Bool)

(assert (=> (not b_lambda!16867) (not b!85554)))

(declare-fun m!81364 () Bool)

(assert (=> b!85554 m!81364))

(declare-fun m!81366 () Bool)

(assert (=> b!85555 m!81366))

(assert (=> b!85547 d!57385))

(declare-fun bs!41051 () Bool)

(declare-fun d!57387 () Bool)

(assert (= bs!41051 (and d!57387 start!11204)))

(declare-fun lambda!10777 () Int)

(assert (=> bs!41051 (= lambda!10777 lambda!10769)))

(declare-fun bs!41052 () Bool)

(assert (= bs!41052 (and d!57387 b!85547)))

(assert (=> bs!41052 (not (= lambda!10777 lambda!10770))))

(assert (=> d!57387 true))

(declare-fun bs!41053 () Bool)

(declare-fun b!85560 () Bool)

(assert (= bs!41053 (and b!85560 start!11204)))

(declare-fun lambda!10778 () Int)

(assert (=> bs!41053 (not (= lambda!10778 lambda!10769))))

(declare-fun bs!41054 () Bool)

(assert (= bs!41054 (and b!85560 b!85547)))

(assert (=> bs!41054 (= lambda!10778 lambda!10770)))

(declare-fun bs!41055 () Bool)

(assert (= bs!41055 (and b!85560 d!57387)))

(assert (=> bs!41055 (not (= lambda!10778 lambda!10777))))

(assert (=> b!85560 true))

(declare-fun bs!41056 () Bool)

(declare-fun b!85561 () Bool)

(assert (= bs!41056 (and b!85561 start!11204)))

(declare-fun lambda!10779 () Int)

(assert (=> bs!41056 (not (= lambda!10779 lambda!10769))))

(declare-fun bs!41057 () Bool)

(assert (= bs!41057 (and b!85561 b!85547)))

(assert (=> bs!41057 (= lambda!10779 lambda!10770)))

(declare-fun bs!41058 () Bool)

(assert (= bs!41058 (and b!85561 d!57387)))

(assert (=> bs!41058 (not (= lambda!10779 lambda!10777))))

(declare-fun bs!41059 () Bool)

(assert (= bs!41059 (and b!85561 b!85560)))

(assert (=> bs!41059 (= lambda!10779 lambda!10778)))

(assert (=> b!85561 true))

(declare-fun e!46389 () Bool)

(assert (=> d!57387 e!46389))

(declare-fun c!21229 () Bool)

(assert (=> d!57387 (= c!21229 (is-Cons!667 (t!48155 ls!63)))))

(assert (=> d!57387 (forall!58 (t!48155 ls!63) lambda!10777)))

(assert (=> d!57387 (= (forall_lt_implies_le!0 (t!48155 ls!63) x!29263) true)))

(assert (=> b!85560 (= e!46389 (forall!58 (t!48155 ls!63) lambda!10778))))

(declare-fun lt!19916 () Bool)

(assert (=> b!85560 (= lt!19916 (forall_lt_implies_le!0 (t!48155 (t!48155 ls!63)) x!29263))))

(assert (=> b!85561 (= e!46389 (forall!58 (t!48155 ls!63) lambda!10779))))

(assert (= (and d!57387 c!21229) b!85560))

(assert (= (and d!57387 (not c!21229)) b!85561))

(declare-fun m!81368 () Bool)

(assert (=> d!57387 m!81368))

(declare-fun m!81370 () Bool)

(assert (=> b!85560 m!81370))

(declare-fun m!81372 () Bool)

(assert (=> b!85560 m!81372))

(declare-fun m!81374 () Bool)

(assert (=> b!85561 m!81374))

(assert (=> b!85546 d!57387))

(declare-fun d!57389 () Bool)

(declare-fun res!44451 () Bool)

(declare-fun e!46390 () Bool)

(assert (=> d!57389 (=> res!44451 e!46390)))

(assert (=> d!57389 (= res!44451 (is-Nil!669 ls!63))))

(assert (=> d!57389 (= (forall!58 ls!63 lambda!10769) e!46390)))

(declare-fun b!85562 () Bool)

(declare-fun e!46391 () Bool)

(assert (=> b!85562 (= e!46390 e!46391)))

(declare-fun res!44452 () Bool)

(assert (=> b!85562 (=> (not res!44452) (not e!46391))))

(assert (=> b!85562 (= res!44452 (dynLambda!1019 lambda!10769 (h!1040 ls!63)))))

(declare-fun b!85563 () Bool)

(assert (=> b!85563 (= e!46391 (forall!58 (t!48155 ls!63) lambda!10769))))

(assert (= (and d!57389 (not res!44451)) b!85562))

(assert (= (and b!85562 res!44452) b!85563))

(declare-fun b_lambda!16869 () Bool)

(assert (=> (not b_lambda!16869) (not b!85562)))

(declare-fun m!81376 () Bool)

(assert (=> b!85562 m!81376))

(declare-fun m!81378 () Bool)

(assert (=> b!85563 m!81378))

(assert (=> start!11204 d!57389))

(declare-fun b_lambda!16871 () Bool)

(assert (= b_lambda!16869 (or start!11204 b_lambda!16871)))

(declare-fun bs!41060 () Bool)

(declare-fun d!57391 () Bool)

(assert (= bs!41060 (and d!57391 start!11204)))

(assert (=> bs!41060 (= (dynLambda!1019 lambda!10769 (h!1040 ls!63)) (< (h!1040 ls!63) x!29263))))

(assert (=> b!85562 d!57391))

(declare-fun b_lambda!16873 () Bool)

(assert (= b_lambda!16867 (or b!85547 b_lambda!16873)))

(declare-fun bs!41061 () Bool)

(declare-fun d!57393 () Bool)

(assert (= bs!41061 (and d!57393 b!85547)))

(assert (=> bs!41061 (= (dynLambda!1019 lambda!10770 (h!1040 ls!63)) (<= (h!1040 ls!63) x!29263))))

(assert (=> b!85554 d!57393))

(push 1)

(assert (not b!85563))

(assert (not b_lambda!16873))

(assert (not d!57387))

(assert (not b!85555))

(assert (not b_lambda!16871))

(assert (not b!85561))

(assert (not b!85560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

