; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4762 () Bool)

(assert start!4762)

(declare-fun res!17773 () Bool)

(declare-fun e!19236 () Bool)

(assert (=> start!4762 (=> (not res!17773) (not e!19236))))

(declare-datatypes () ((Nat!28 (Zero!12) (Succ!9 (n!1090 Nat!28)))))

(declare-fun n2!375 () Nat!28)

(declare-fun n3!64 () Nat!28)

(declare-fun n1!359 () Nat!28)

(declare-fun n4!2 () Nat!28)

(declare-fun pair!0 (Nat!28 Nat!28) Nat!28)

(assert (=> start!4762 (= res!17773 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4762 e!19236))

(assert (=> start!4762 true))

(declare-fun b!37410 () Bool)

(declare-datatypes () ((tuple2!150 (tuple2!151 (_1!101 Nat!28) (_2!101 Nat!28)))))

(declare-fun project!0 (Nat!28) tuple2!150)

(assert (=> b!37410 (= e!19236 (not (= (project!0 (pair!0 n1!359 n2!375)) (project!0 (pair!0 n3!64 n4!2)))))))

(assert (= (and start!4762 res!17773) b!37410))

(declare-fun m!38691 () Bool)

(assert (=> start!4762 m!38691))

(declare-fun m!38693 () Bool)

(assert (=> start!4762 m!38693))

(assert (=> b!37410 m!38691))

(assert (=> b!37410 m!38691))

(declare-fun m!38695 () Bool)

(assert (=> b!37410 m!38695))

(assert (=> b!37410 m!38693))

(assert (=> b!37410 m!38693))

(declare-fun m!38697 () Bool)

(assert (=> b!37410 m!38697))

(push 1)

(assert (not b!37410))

(assert (not start!4762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

