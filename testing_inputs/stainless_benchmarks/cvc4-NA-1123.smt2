; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8146 () Bool)

(assert start!8146)

(declare-fun lt!10624 () Bool)

(declare-datatypes () ((T!3692 (T!3693 (val!152 Int)))))

(declare-datatypes () ((List!454 (Cons!430 (h!667 T!3692) (t!47073 List!454)) (Nil!431))))

(declare-fun list!275 () List!454)

(declare-fun flatMap_to_zero_law!3 (List!454) Bool)

(assert (=> start!8146 (= lt!10624 (flatMap_to_zero_law!3 list!275))))

(assert (=> start!8146 false))

(assert (=> start!8146 true))

(declare-fun e!30786 () Bool)

(assert (=> start!8146 e!30786))

(declare-fun b!57911 () Bool)

(declare-fun tp_is_empty!303 () Bool)

(declare-fun tp!16236 () Bool)

(assert (=> b!57911 (= e!30786 (and tp_is_empty!303 tp!16236))))

(assert (= (and start!8146 (is-Cons!430 list!275)) b!57911))

(declare-fun m!62484 () Bool)

(assert (=> start!8146 m!62484))

(push 1)

(assert (not start!8146))

(assert (not b!57911))

(assert tp_is_empty!303)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

