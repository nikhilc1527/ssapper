; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8132 () Bool)

(assert start!8132)

(declare-fun lt!10615 () Bool)

(declare-datatypes () ((T!3688 (T!3689 (val!150 Int)))))

(declare-datatypes () ((List!452 (Cons!428 (h!665 T!3688) (t!47071 List!452)) (Nil!429))))

(declare-fun list!280 () List!452)

(declare-fun right_unit_law!4 (List!452) Bool)

(assert (=> start!8132 (= lt!10615 (right_unit_law!4 list!280))))

(assert (=> start!8132 false))

(assert (=> start!8132 true))

(declare-fun e!30751 () Bool)

(assert (=> start!8132 e!30751))

(declare-fun b!57860 () Bool)

(declare-fun tp_is_empty!299 () Bool)

(declare-fun tp!16224 () Bool)

(assert (=> b!57860 (= e!30751 (and tp_is_empty!299 tp!16224))))

(assert (= (and start!8132 (is-Cons!428 list!280)) b!57860))

(declare-fun m!62400 () Bool)

(assert (=> start!8132 m!62400))

(push 1)

(assert (not start!8132))

(assert (not b!57860))

(assert tp_is_empty!299)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

