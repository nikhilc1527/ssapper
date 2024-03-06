; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11724 () Bool)

(assert start!11724)

(declare-datatypes () ((MyState!2 (A!3573) (B!617))))

(declare-fun v!2658 () MyState!2)

(assert (=> start!11724 (and (= v!2658 A!3573) (not (is-A!3573 v!2658)))))

(assert (=> start!11724 true))

(push 1)

(check-sat)

(pop 1)

