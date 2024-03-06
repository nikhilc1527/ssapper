; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8960 () Bool)

(assert start!8960)

(declare-fun lt!11469 () Bool)

(declare-datatypes () ((T!4423 (T!4424 (val!168 Int)))))

(declare-datatypes () ((List!563 (Cons!527 (h!760 T!4423) (t!47285 List!563)) (Nil!528))))

(declare-fun list!681 () List!563)

(declare-fun right_unit_law!6 (List!563) Bool)

(assert (=> start!8960 (= lt!11469 (right_unit_law!6 list!681))))

(assert (=> start!8960 false))

(assert (=> start!8960 true))

(declare-fun e!33392 () Bool)

(assert (=> start!8960 e!33392))

(declare-fun b!62294 () Bool)

(declare-fun tp_is_empty!331 () Bool)

(declare-fun tp!16339 () Bool)

(assert (=> b!62294 (= e!33392 (and tp_is_empty!331 tp!16339))))

(assert (= (and start!8960 (is-Cons!527 list!681)) b!62294))

(declare-fun m!68092 () Bool)

(assert (=> start!8960 m!68092))

(push 1)

(assert (not start!8960))

(assert (not b!62294))

(assert tp_is_empty!331)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

