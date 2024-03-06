; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12258 () Bool)

(assert start!12258)

(declare-datatypes () ((A!4110 (A!4111 (val!244 Int)))))

(declare-fun x!794 () A!4110)

(declare-fun y!211 () A!4110)

(assert (=> start!12258 (not (= (ite (or (and (= x!794 (A!4111 0)) (= y!211 (A!4111 (- 1)))) (and (= x!794 (A!4111 0)) (= y!211 (A!4111 0))) (and (= x!794 (A!4111 (- 1))) (= y!211 (A!4111 0)))) (A!4111 (- 1)) (ite (and (= x!794 (A!4111 (- 1))) (= y!211 (A!4111 (- 1)))) (A!4111 1) (A!4111 (- 1)))) (ite (or (and (= y!211 (A!4111 0)) (= x!794 (A!4111 (- 1)))) (and (= y!211 (A!4111 0)) (= x!794 (A!4111 0))) (and (= y!211 (A!4111 (- 1))) (= x!794 (A!4111 0)))) (A!4111 (- 1)) (ite (and (= y!211 (A!4111 (- 1))) (= x!794 (A!4111 (- 1)))) (A!4111 1) (A!4111 (- 1))))))))

(declare-fun tp_is_empty!493 () Bool)

(assert (=> start!12258 tp_is_empty!493))

(push 1)

(assert tp_is_empty!493)

(check-sat)

(pop 1)

