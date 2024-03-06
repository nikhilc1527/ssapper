; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9866 () Bool)

(assert start!9866)

(declare-fun b!71449 () Bool)

(declare-fun res!34999 () Bool)

(declare-fun e!38655 () Bool)

(assert (=> b!71449 (=> (not res!34999) (not e!38655))))

(declare-datatypes () ((List!596 (Nil!554) (Cons!553 (head!963 Int) (tail!984 List!596)))))

(declare-fun list!838 () List!596)

(declare-fun reverse!1 (List!596) List!596)

(assert (=> b!71449 (= res!34999 (is-Cons!553 (reverse!1 list!838)))))

(declare-fun b!71450 () Bool)

(declare-fun res!34998 () Bool)

(assert (=> b!71450 (=> (not res!34998) (not e!38655))))

(declare-datatypes () ((ProofOps!368 (ProofOps!369 (prop!493 Bool)))))

(declare-fun thiss!9450 () ProofOps!368)

(assert (=> b!71450 (= res!34998 (= thiss!9450 (ProofOps!369 (= (reverse!1 (reverse!1 list!838)) list!838))))))

(declare-fun res!34996 () Bool)

(assert (=> start!9866 (=> (not res!34996) (not e!38655))))

(declare-fun s!2021 () Int)

(declare-fun size!4 (List!596) Int)

(assert (=> start!9866 (= res!34996 (= (size!4 list!838) s!2021))))

(assert (=> start!9866 e!38655))

(assert (=> start!9866 true))

(declare-fun b!71451 () Bool)

(declare-fun res!35000 () Bool)

(assert (=> b!71451 (=> (not res!35000) (not e!38655))))

(declare-fun list!847 () List!596)

(assert (=> b!71451 (= res!35000 (= list!847 (tail!984 list!838)))))

(declare-fun b!71452 () Bool)

(declare-fun res!34997 () Bool)

(assert (=> b!71452 (=> (not res!34997) (not e!38655))))

(declare-fun s!2022 () Int)

(assert (=> b!71452 (= res!34997 (= s!2022 (size!4 (tail!984 list!838))))))

(declare-fun b!71453 () Bool)

(declare-fun res!34995 () Bool)

(assert (=> b!71453 (=> (not res!34995) (not e!38655))))

(assert (=> b!71453 (= res!34995 (is-Cons!553 list!838))))

(declare-fun b!71454 () Bool)

(assert (=> b!71454 (= e!38655 (not (= (size!4 list!847) s!2022)))))

(assert (= (and start!9866 res!34996) b!71450))

(assert (= (and b!71450 res!34998) b!71453))

(assert (= (and b!71453 res!34995) b!71449))

(assert (= (and b!71449 res!34999) b!71452))

(assert (= (and b!71452 res!34997) b!71451))

(assert (= (and b!71451 res!35000) b!71454))

(declare-fun m!71258 () Bool)

(assert (=> b!71454 m!71258))

(declare-fun m!71260 () Bool)

(assert (=> start!9866 m!71260))

(declare-fun m!71262 () Bool)

(assert (=> b!71450 m!71262))

(assert (=> b!71450 m!71262))

(declare-fun m!71264 () Bool)

(assert (=> b!71450 m!71264))

(assert (=> b!71449 m!71262))

(declare-fun m!71266 () Bool)

(assert (=> b!71452 m!71266))

(push 1)

(assert (not start!9866))

(assert (not b!71454))

(assert (not b!71449))

(assert (not b!71452))

(assert (not b!71450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

