; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11178 () Bool)

(assert start!11178)

(declare-fun b_free!7431 () Bool)

(declare-fun b_next!39615 () Bool)

(assert (=> start!11178 (= b_free!7431 (not b_next!39615))))

(declare-fun tp!17059 () Bool)

(declare-fun b_and!59127 () Bool)

(assert (=> start!11178 (= tp!17059 b_and!59127)))

(declare-fun res!44369 () Bool)

(declare-fun e!46321 () Bool)

(assert (=> start!11178 (=> (not res!44369) (not e!46321))))

(declare-datatypes () ((List!705 (Cons!662 (h!1035 Int) (t!48148 List!705)) (Nil!664))))

(declare-fun ls!66 () List!705)

(assert (=> start!11178 (= res!44369 (not (is-Cons!662 ls!66)))))

(assert (=> start!11178 e!46321))

(assert (=> start!11178 true))

(assert (=> start!11178 tp!17059))

(declare-fun b!85451 () Bool)

(declare-fun res!44368 () Bool)

(assert (=> b!85451 (=> (not res!44368) (not e!46321))))

(declare-fun p!802 () Int)

(declare-fun forall!53 (List!705 Int) Bool)

(assert (=> b!85451 (= res!44368 (forall!53 ls!66 p!802))))

(declare-fun b!85452 () Bool)

(declare-fun res!44370 () Bool)

(assert (=> b!85452 (=> (not res!44370) (not e!46321))))

(declare-fun isEmpty!697 (List!705) Bool)

(assert (=> b!85452 (= res!44370 (not (isEmpty!697 ls!66)))))

(declare-fun b!85453 () Bool)

(declare-fun dynLambda!1014 (Int Int) Bool)

(declare-fun last!33 (List!705) Int)

(assert (=> b!85453 (= e!46321 (not (dynLambda!1014 p!802 (last!33 ls!66))))))

(assert (= (and start!11178 res!44369) b!85451))

(assert (= (and b!85451 res!44368) b!85452))

(assert (= (and b!85452 res!44370) b!85453))

(declare-fun b_lambda!16827 () Bool)

(assert (=> (not b_lambda!16827) (not b!85453)))

(declare-fun t!48147 () Bool)

(declare-fun tb!46371 () Bool)

(assert (=> (and start!11178 (= p!802 p!802) t!48147) tb!46371))

(declare-fun result!46801 () Bool)

(assert (=> tb!46371 (= result!46801 true)))

(assert (=> b!85453 t!48147))

(declare-fun b_and!59129 () Bool)

(assert (= b_and!59127 (and (=> t!48147 result!46801) b_and!59129)))

(declare-fun m!81284 () Bool)

(assert (=> b!85451 m!81284))

(declare-fun m!81286 () Bool)

(assert (=> b!85452 m!81286))

(declare-fun m!81288 () Bool)

(assert (=> b!85453 m!81288))

(assert (=> b!85453 m!81288))

(declare-fun m!81290 () Bool)

(assert (=> b!85453 m!81290))

(push 1)

(assert (not b!85452))

(assert (not b!85453))

(assert (not b_lambda!16827))

(assert (not b_next!39615))

(assert (not b!85451))

(assert b_and!59129)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59129)

(assert (not b_next!39615))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!16829 () Bool)

(assert (= b_lambda!16827 (or (and start!11178 b_free!7431) b_lambda!16829)))

(push 1)

(assert (not b!85452))

(assert (not b!85453))

(assert (not b_lambda!16829))

(assert (not b_next!39615))

(assert (not b!85451))

(assert b_and!59129)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59129)

(assert (not b_next!39615))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57345 () Bool)

(assert (=> d!57345 (= (isEmpty!697 ls!66) (is-Nil!664 ls!66))))

(assert (=> b!85452 d!57345))

(declare-fun d!57347 () Bool)

(declare-fun res!44375 () Bool)

(declare-fun e!46326 () Bool)

(assert (=> d!57347 (=> res!44375 e!46326)))

(assert (=> d!57347 (= res!44375 (is-Nil!664 ls!66))))

(assert (=> d!57347 (= (forall!53 ls!66 p!802) e!46326)))

(declare-fun b!85458 () Bool)

(declare-fun e!46327 () Bool)

(assert (=> b!85458 (= e!46326 e!46327)))

(declare-fun res!44376 () Bool)

(assert (=> b!85458 (=> (not res!44376) (not e!46327))))

(assert (=> b!85458 (= res!44376 (dynLambda!1014 p!802 (h!1035 ls!66)))))

(declare-fun b!85459 () Bool)

(assert (=> b!85459 (= e!46327 (forall!53 (t!48148 ls!66) p!802))))

(assert (= (and d!57347 (not res!44375)) b!85458))

(assert (= (and b!85458 res!44376) b!85459))

(declare-fun b_lambda!16831 () Bool)

(assert (=> (not b_lambda!16831) (not b!85458)))

(declare-fun t!48150 () Bool)

(declare-fun tb!46373 () Bool)

(assert (=> (and start!11178 (= p!802 p!802) t!48150) tb!46373))

(declare-fun result!46803 () Bool)

(assert (=> tb!46373 (= result!46803 true)))

(assert (=> b!85458 t!48150))

(declare-fun b_and!59131 () Bool)

(assert (= b_and!59129 (and (=> t!48150 result!46803) b_and!59131)))

(declare-fun m!81292 () Bool)

(assert (=> b!85458 m!81292))

(declare-fun m!81294 () Bool)

(assert (=> b!85459 m!81294))

(assert (=> b!85451 d!57347))

(declare-fun d!57349 () Bool)

(declare-fun lt!19910 () Int)

(declare-fun contains!62 (List!705 Int) Bool)

(assert (=> d!57349 (contains!62 ls!66 lt!19910)))

(declare-fun e!46330 () Int)

(assert (=> d!57349 (= lt!19910 e!46330)))

(declare-fun c!21223 () Bool)

(assert (=> d!57349 (= c!21223 (and (is-Cons!662 ls!66) (is-Nil!664 (t!48148 ls!66))))))

(assert (=> d!57349 (not (isEmpty!697 ls!66))))

(assert (=> d!57349 (= (last!33 ls!66) lt!19910)))

(declare-fun b!85464 () Bool)

(assert (=> b!85464 (= e!46330 (h!1035 ls!66))))

(declare-fun b!85465 () Bool)

(assert (=> b!85465 (= e!46330 (last!33 (t!48148 ls!66)))))

(assert (= (and d!57349 c!21223) b!85464))

(assert (= (and d!57349 (not c!21223)) b!85465))

(declare-fun m!81296 () Bool)

(assert (=> d!57349 m!81296))

(assert (=> d!57349 m!81286))

(declare-fun m!81298 () Bool)

(assert (=> b!85465 m!81298))

(assert (=> b!85453 d!57349))

(declare-fun b_lambda!16833 () Bool)

(assert (= b_lambda!16831 (or (and start!11178 b_free!7431) b_lambda!16833)))

(push 1)

(assert (not b_lambda!16829))

(assert (not b_next!39615))

(assert (not b!85459))

(assert b_and!59131)

(assert (not b!85465))

(assert (not d!57349))

(assert (not b_lambda!16833))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59131)

(assert (not b_next!39615))

(check-sat)

(pop 1)

