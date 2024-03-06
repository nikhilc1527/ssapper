; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8958 () Bool)

(assert start!8958)

(declare-fun lt!11466 () Bool)

(declare-datatypes () ((T!4421 (T!4422 (val!167 Int)))))

(declare-datatypes () ((List!562 (Cons!526 (h!759 T!4421) (t!47284 List!562)) (Nil!527))))

(declare-fun list!726 () List!562)

(declare-fun flatMap_to_zero_law!5 (List!562) Bool)

(assert (=> start!8958 (= lt!11466 (flatMap_to_zero_law!5 list!726))))

(assert (=> start!8958 false))

(assert (=> start!8958 true))

(declare-fun e!33389 () Bool)

(assert (=> start!8958 e!33389))

(declare-fun b!62291 () Bool)

(declare-fun tp_is_empty!329 () Bool)

(declare-fun tp!16336 () Bool)

(assert (=> b!62291 (= e!33389 (and tp_is_empty!329 tp!16336))))

(assert (= (and start!8958 (is-Cons!526 list!726)) b!62291))

(declare-fun m!68090 () Bool)

(assert (=> start!8958 m!68090))

(push 1)

(assert (not start!8958))

(assert (not b!62291))

(assert tp_is_empty!329)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

