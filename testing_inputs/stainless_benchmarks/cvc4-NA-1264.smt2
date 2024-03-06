; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8964 () Bool)

(assert start!8964)

(declare-fun b!62324 () Bool)

(declare-fun e!33415 () Bool)

(declare-fun tp_is_empty!339 () Bool)

(declare-fun tp!16362 () Bool)

(assert (=> b!62324 (= e!33415 (and tp_is_empty!339 tp!16362))))

(declare-fun b!62325 () Bool)

(declare-fun e!33416 () Bool)

(declare-fun tp!16363 () Bool)

(assert (=> b!62325 (= e!33416 (and tp_is_empty!339 tp!16363))))

(declare-fun b!62326 () Bool)

(declare-fun e!33413 () Bool)

(declare-fun tp!16361 () Bool)

(assert (=> b!62326 (= e!33413 (and tp_is_empty!339 tp!16361))))

(declare-datatypes () ((T!4427 (T!4428 (val!172 Int)))))

(declare-datatypes () ((List!567 (Cons!531 (h!764 T!4427) (t!47289 List!567)) (Nil!532))))

(declare-fun res!28969 () List!567)

(declare-fun b!62327 () Bool)

(declare-fun e!33414 () Bool)

(declare-fun l2!371 () List!567)

(declare-fun l1!378 () List!567)

(assert (=> b!62327 (= e!33414 (and (not (= res!28969 l1!378)) (= l2!371 Nil!532)))))

(declare-fun b!62328 () Bool)

(declare-fun res!28986 () Bool)

(assert (=> b!62328 (=> (not res!28986) (not e!33414))))

(declare-fun append!164 (List!567 List!567) List!567)

(assert (=> b!62328 (= res!28986 (= res!28969 (Cons!531 (h!764 l1!378) (append!164 (t!47289 l1!378) l2!371))))))

(declare-fun res!28987 () Bool)

(assert (=> start!8964 (=> (not res!28987) (not e!33414))))

(assert (=> start!8964 (= res!28987 (is-Cons!531 l1!378))))

(assert (=> start!8964 e!33414))

(assert (=> start!8964 e!33416))

(assert (=> start!8964 e!33413))

(assert (=> start!8964 e!33415))

(assert (= (and start!8964 res!28987) b!62328))

(assert (= (and b!62328 res!28986) b!62327))

(assert (= (and start!8964 (is-Cons!531 l1!378)) b!62325))

(assert (= (and start!8964 (is-Cons!531 res!28969)) b!62326))

(assert (= (and start!8964 (is-Cons!531 l2!371)) b!62324))

(declare-fun m!68112 () Bool)

(assert (=> b!62328 m!68112))

(push 1)

(assert tp_is_empty!339)

(assert (not b!62328))

(assert (not b!62325))

(assert (not b!62326))

(assert (not b!62324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52724 () Bool)

(declare-fun lt!11472 () List!567)

(assert (=> d!52724 (or (= lt!11472 (t!47289 l1!378)) (not (= l2!371 Nil!532)))))

(declare-fun e!33419 () List!567)

(assert (=> d!52724 (= lt!11472 e!33419)))

(declare-fun c!13639 () Bool)

(assert (=> d!52724 (= c!13639 (is-Cons!531 (t!47289 l1!378)))))

(assert (=> d!52724 (= (append!164 (t!47289 l1!378) l2!371) lt!11472)))

(declare-fun b!62333 () Bool)

(assert (=> b!62333 (= e!33419 (Cons!531 (h!764 (t!47289 l1!378)) (append!164 (t!47289 (t!47289 l1!378)) l2!371)))))

(declare-fun b!62334 () Bool)

(assert (=> b!62334 (= e!33419 l2!371)))

(assert (= (and d!52724 c!13639) b!62333))

(assert (= (and d!52724 (not c!13639)) b!62334))

(declare-fun m!68114 () Bool)

(assert (=> b!62333 m!68114))

(assert (=> b!62328 d!52724))

(declare-fun b!62339 () Bool)

(declare-fun e!33422 () Bool)

(declare-fun tp!16366 () Bool)

(assert (=> b!62339 (= e!33422 (and tp_is_empty!339 tp!16366))))

(assert (=> b!62324 (= tp!16362 e!33422)))

(assert (= (and b!62324 (is-Cons!531 (t!47289 l2!371))) b!62339))

(declare-fun b!62340 () Bool)

(declare-fun e!33423 () Bool)

(declare-fun tp!16367 () Bool)

(assert (=> b!62340 (= e!33423 (and tp_is_empty!339 tp!16367))))

(assert (=> b!62326 (= tp!16361 e!33423)))

(assert (= (and b!62326 (is-Cons!531 (t!47289 res!28969))) b!62340))

(declare-fun b!62341 () Bool)

(declare-fun e!33424 () Bool)

(declare-fun tp!16368 () Bool)

(assert (=> b!62341 (= e!33424 (and tp_is_empty!339 tp!16368))))

(assert (=> b!62325 (= tp!16363 e!33424)))

(assert (= (and b!62325 (is-Cons!531 (t!47289 l1!378))) b!62341))

(push 1)

(assert tp_is_empty!339)

(assert (not b!62341))

(assert (not b!62333))

(assert (not b!62339))

(assert (not b!62340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

