; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12260 () Bool)

(assert start!12260)

(declare-datatypes () ((A!4114 (A!4115 (val!245 Int)))))

(declare-fun lt!20548 () A!4114)

(declare-fun y!210 () A!4114)

(declare-fun z!64 () A!4114)

(assert (=> start!12260 (= lt!20548 (ite (or (and (= y!210 (A!4115 0)) (= z!64 (A!4115 (- 1)))) (and (= y!210 (A!4115 0)) (= z!64 (A!4115 0))) (and (= y!210 (A!4115 (- 1))) (= z!64 (A!4115 0)))) (A!4115 (- 1)) (ite (and (= y!210 (A!4115 (- 1))) (= z!64 (A!4115 (- 1)))) (A!4115 1) (A!4115 (- 1)))))))

(declare-fun lt!20547 () A!4114)

(declare-fun x!793 () A!4114)

(assert (=> start!12260 (= lt!20547 (ite (or (and (= x!793 (A!4115 0)) (= y!210 (A!4115 (- 1)))) (and (= x!793 (A!4115 0)) (= y!210 (A!4115 0))) (and (= x!793 (A!4115 (- 1))) (= y!210 (A!4115 0)))) (A!4115 (- 1)) (ite (and (= x!793 (A!4115 (- 1))) (= y!210 (A!4115 (- 1)))) (A!4115 1) (A!4115 (- 1)))))))

(assert (=> start!12260 (not (= (ite (or (and (= lt!20547 (A!4115 0)) (= z!64 (A!4115 (- 1)))) (and (= lt!20547 (A!4115 0)) (= z!64 (A!4115 0))) (and (= lt!20547 (A!4115 (- 1))) (= z!64 (A!4115 0)))) (A!4115 (- 1)) (ite (and (= lt!20547 (A!4115 (- 1))) (= z!64 (A!4115 (- 1)))) (A!4115 1) (A!4115 (- 1)))) (ite (or (and (= x!793 (A!4115 0)) (= lt!20548 (A!4115 (- 1)))) (and (= x!793 (A!4115 0)) (= lt!20548 (A!4115 0))) (and (= x!793 (A!4115 (- 1))) (= lt!20548 (A!4115 0)))) (A!4115 (- 1)) (ite (and (= x!793 (A!4115 (- 1))) (= lt!20548 (A!4115 (- 1)))) (A!4115 1) (A!4115 (- 1))))))))

(declare-fun tp_is_empty!495 () Bool)

(assert (=> start!12260 tp_is_empty!495))

(push 1)

(assert tp_is_empty!495)

(check-sat)

(get-model)

(pop 1)

