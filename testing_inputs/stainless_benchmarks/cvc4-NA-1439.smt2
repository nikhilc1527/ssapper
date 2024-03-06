; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9870 () Bool)

(assert start!9870)

(declare-fun res!35031 () Bool)

(declare-fun e!38664 () Bool)

(assert (=> start!9870 (=> (not res!35031) (not e!38664))))

(declare-datatypes () ((List!598 (Nil!556) (Cons!555 (head!965 Int) (tail!986 List!598)))))

(declare-fun list!838 () List!598)

(declare-fun s!2021 () Int)

(declare-fun size!4 (List!598) Int)

(assert (=> start!9870 (= res!35031 (= (size!4 list!838) s!2021))))

(assert (=> start!9870 e!38664))

(assert (=> start!9870 true))

(declare-fun b!71487 () Bool)

(assert (=> b!71487 (= e!38664 false)))

(declare-fun b!71484 () Bool)

(declare-fun res!35030 () Bool)

(assert (=> b!71484 (=> (not res!35030) (not e!38664))))

(declare-datatypes () ((ProofOps!372 (ProofOps!373 (prop!495 Bool)))))

(declare-fun thiss!9450 () ProofOps!372)

(declare-fun reverse!1 (List!598) List!598)

(assert (=> b!71484 (= res!35030 (= thiss!9450 (ProofOps!373 (= (reverse!1 (reverse!1 list!838)) list!838))))))

(declare-fun b!71486 () Bool)

(declare-fun e!38663 () Bool)

(assert (=> b!71486 (= e!38663 (not (is-Cons!555 (reverse!1 list!838))))))

(declare-fun b!71485 () Bool)

(declare-fun res!35033 () Bool)

(assert (=> b!71485 (=> (not res!35033) (not e!38664))))

(assert (=> b!71485 (= res!35033 e!38663)))

(declare-fun res!35032 () Bool)

(assert (=> b!71485 (=> res!35032 e!38663)))

(assert (=> b!71485 (= res!35032 (not (is-Cons!555 list!838)))))

(assert (= (and start!9870 res!35031) b!71484))

(assert (= (and b!71484 res!35030) b!71485))

(assert (= (and b!71485 (not res!35032)) b!71486))

(assert (= (and b!71485 res!35033) b!71487))

(declare-fun m!71282 () Bool)

(assert (=> start!9870 m!71282))

(declare-fun m!71284 () Bool)

(assert (=> b!71484 m!71284))

(assert (=> b!71484 m!71284))

(declare-fun m!71286 () Bool)

(assert (=> b!71484 m!71286))

(assert (=> b!71486 m!71284))

(push 1)

(assert (not start!9870))

(assert (not b!71484))

(assert (not b!71486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

