; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4772 () Bool)

(assert start!4772)

(declare-fun res!17788 () Bool)

(declare-fun e!19242 () Bool)

(assert (=> start!4772 (=> (not res!17788) (not e!19242))))

(declare-datatypes () ((Nat!30 (Zero!14) (Succ!11 (n!1093 Nat!30)))))

(declare-fun n2!375 () Nat!30)

(declare-fun n3!64 () Nat!30)

(declare-fun n1!359 () Nat!30)

(declare-fun n4!2 () Nat!30)

(declare-fun pair!0 (Nat!30 Nat!30) Nat!30)

(assert (=> start!4772 (= res!17788 (not (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2))))))

(assert (=> start!4772 e!19242))

(assert (=> start!4772 true))

(declare-fun b!37426 () Bool)

(declare-datatypes () ((tuple2!154 (tuple2!155 (_1!103 Nat!30) (_2!103 Nat!30)))))

(assert (=> b!37426 (= e!19242 (= (tuple2!155 n1!359 n2!375) (tuple2!155 n3!64 n4!2)))))

(assert (= (and start!4772 res!17788) b!37426))

(declare-fun m!38743 () Bool)

(assert (=> start!4772 m!38743))

(declare-fun m!38745 () Bool)

(assert (=> start!4772 m!38745))

(push 1)

(assert (not start!4772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

