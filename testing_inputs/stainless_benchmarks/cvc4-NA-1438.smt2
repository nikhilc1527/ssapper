; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9868 () Bool)

(assert start!9868)

(declare-fun res!35016 () Bool)

(declare-fun e!38658 () Bool)

(assert (=> start!9868 (=> (not res!35016) (not e!38658))))

(declare-datatypes () ((List!597 (Nil!555) (Cons!554 (head!964 Int) (tail!985 List!597)))))

(declare-fun list!838 () List!597)

(declare-fun s!2021 () Int)

(declare-fun size!4 (List!597) Int)

(assert (=> start!9868 (= res!35016 (= (size!4 list!838) s!2021))))

(assert (=> start!9868 e!38658))

(assert (=> start!9868 true))

(declare-fun b!71469 () Bool)

(declare-fun res!35017 () Bool)

(assert (=> b!71469 (=> (not res!35017) (not e!38658))))

(declare-fun reverse!1 (List!597) List!597)

(assert (=> b!71469 (= res!35017 (is-Cons!554 (reverse!1 list!838)))))

(declare-fun b!71470 () Bool)

(declare-fun res!35020 () Bool)

(assert (=> b!71470 (=> (not res!35020) (not e!38658))))

(declare-fun s!2024 () Int)

(assert (=> b!71470 (= res!35020 (= s!2024 (size!4 (tail!985 (reverse!1 list!838)))))))

(declare-fun b!71471 () Bool)

(declare-fun res!35019 () Bool)

(assert (=> b!71471 (=> (not res!35019) (not e!38658))))

(declare-fun list!851 () List!597)

(assert (=> b!71471 (= res!35019 (= list!851 (tail!985 (reverse!1 list!838))))))

(declare-fun b!71472 () Bool)

(assert (=> b!71472 (= e!38658 (not (= (size!4 list!851) s!2024)))))

(declare-fun b!71473 () Bool)

(declare-fun res!35018 () Bool)

(assert (=> b!71473 (=> (not res!35018) (not e!38658))))

(assert (=> b!71473 (= res!35018 (is-Cons!554 list!838))))

(declare-fun b!71474 () Bool)

(declare-fun res!35015 () Bool)

(assert (=> b!71474 (=> (not res!35015) (not e!38658))))

(declare-fun reverse_reverse_equivalence!0 (Int List!597) Bool)

(assert (=> b!71474 (= res!35015 (reverse_reverse_equivalence!0 (size!4 (tail!985 list!838)) (tail!985 list!838)))))

(declare-fun b!71475 () Bool)

(declare-fun res!35021 () Bool)

(assert (=> b!71475 (=> (not res!35021) (not e!38658))))

(declare-datatypes () ((ProofOps!370 (ProofOps!371 (prop!494 Bool)))))

(declare-fun thiss!9450 () ProofOps!370)

(assert (=> b!71475 (= res!35021 (= thiss!9450 (ProofOps!371 (= (reverse!1 (reverse!1 list!838)) list!838))))))

(assert (= (and start!9868 res!35016) b!71475))

(assert (= (and b!71475 res!35021) b!71473))

(assert (= (and b!71473 res!35018) b!71469))

(assert (= (and b!71469 res!35017) b!71474))

(assert (= (and b!71474 res!35015) b!71470))

(assert (= (and b!71470 res!35020) b!71471))

(assert (= (and b!71471 res!35019) b!71472))

(declare-fun m!71268 () Bool)

(assert (=> b!71472 m!71268))

(declare-fun m!71270 () Bool)

(assert (=> b!71469 m!71270))

(declare-fun m!71272 () Bool)

(assert (=> start!9868 m!71272))

(assert (=> b!71471 m!71270))

(assert (=> b!71475 m!71270))

(assert (=> b!71475 m!71270))

(declare-fun m!71274 () Bool)

(assert (=> b!71475 m!71274))

(declare-fun m!71276 () Bool)

(assert (=> b!71474 m!71276))

(assert (=> b!71474 m!71276))

(declare-fun m!71278 () Bool)

(assert (=> b!71474 m!71278))

(assert (=> b!71470 m!71270))

(declare-fun m!71280 () Bool)

(assert (=> b!71470 m!71280))

(push 1)

(assert (not b!71469))

(assert (not b!71474))

(assert (not b!71471))

(assert (not b!71472))

(assert (not b!71475))

(assert (not start!9868))

(assert (not b!71470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

