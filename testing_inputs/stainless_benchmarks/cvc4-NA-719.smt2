; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5128 () Bool)

(assert start!5128)

(declare-fun res!18864 () Bool)

(declare-fun e!20293 () Bool)

(assert (=> start!5128 (=> (not res!18864) (not e!20293))))

(declare-datatypes () ((Nat!80 (Zero!64) (Succ!61 (n!1163 Nat!80)))))

(declare-fun n1!376 () Nat!80)

(declare-fun n3!65 () Nat!80)

(declare-fun <=!2 (Nat!80 Nat!80) Bool)

(assert (=> start!5128 (= res!18864 (<=!2 n1!376 n3!65))))

(assert (=> start!5128 e!20293))

(assert (=> start!5128 true))

(declare-fun b!39353 () Bool)

(declare-fun res!18865 () Bool)

(assert (=> b!39353 (=> (not res!18865) (not e!20293))))

(declare-fun n2!392 () Nat!80)

(declare-fun n4!3 () Nat!80)

(assert (=> b!39353 (= res!18865 (<=!2 n2!392 n4!3))))

(declare-fun b!39354 () Bool)

(assert (=> b!39354 (= e!20293 false)))

(assert (= (and start!5128 res!18864) b!39353))

(assert (= (and b!39353 res!18865) b!39354))

(declare-fun m!40511 () Bool)

(assert (=> start!5128 m!40511))

(declare-fun m!40513 () Bool)

(assert (=> b!39353 m!40513))

(push 1)

(assert (not b!39353))

(assert (not start!5128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

