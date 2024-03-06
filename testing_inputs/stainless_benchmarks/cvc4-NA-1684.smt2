; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11726 () Bool)

(assert start!11726)

(declare-datatypes () ((MyState!3 (A!3574) (B!618))))

(declare-fun v!2646 () MyState!3)

(assert (=> start!11726 (and (= v!2646 B!618) (not (is-B!618 v!2646)))))

(assert (=> start!11726 true))

(push 1)

(check-sat)

(pop 1)

