; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3508 () Bool)

(assert start!3508)

(declare-fun b!22084 () Bool)

(declare-fun res!9717 () Bool)

(declare-fun e!11538 () Bool)

(assert (=> b!22084 (=> (not res!9717) (not e!11538))))

(declare-fun i!298 () Int)

(declare-datatypes () ((T!1761 (T!1762 (val!53 Int)))))

(declare-datatypes () ((Conc!35 (CC!34 (left!679 Conc!35) (right!682 Conc!35)) (Single!34 (x!8807 T!1761)) (Empty!45))))

(declare-fun xs!604 () Conc!35)

(declare-fun size!229 (Conc!35) Int)

(assert (=> b!22084 (= res!9717 (<= i!298 (size!229 xs!604)))))

(declare-fun b!22085 () Bool)

(declare-fun e!11537 () Bool)

(declare-fun tp!4858 () Bool)

(declare-fun tp!4857 () Bool)

(assert (=> b!22085 (= e!11537 (and tp!4858 tp!4857))))

(declare-fun res!9719 () Bool)

(assert (=> start!3508 (=> (not res!9719) (not e!11538))))

(declare-fun concInv!33 (Conc!35) Bool)

(assert (=> start!3508 (= res!9719 (concInv!33 xs!604))))

(assert (=> start!3508 e!11538))

(assert (=> start!3508 e!11537))

(assert (=> start!3508 true))

(declare-fun b!22086 () Bool)

(declare-fun tp_is_empty!105 () Bool)

(assert (=> b!22086 (= e!11537 tp_is_empty!105)))

(declare-fun b!22087 () Bool)

(declare-fun res!9718 () Bool)

(assert (=> b!22087 (=> (not res!9718) (not e!11538))))

(assert (=> b!22087 (= res!9718 (>= i!298 0))))

(declare-fun b!22088 () Bool)

(assert (=> b!22088 (= e!11538 false)))

(declare-fun b!22089 () Bool)

(declare-fun res!9720 () Bool)

(assert (=> b!22089 (=> (not res!9720) (not e!11538))))

(declare-fun balanced!34 (Conc!35) Bool)

(assert (=> b!22089 (= res!9720 (balanced!34 xs!604))))

(assert (= (and start!3508 res!9719) b!22089))

(assert (= (and b!22089 res!9720) b!22087))

(assert (= (and b!22087 res!9718) b!22084))

(assert (= (and b!22084 res!9717) b!22088))

(assert (= (and start!3508 (is-CC!34 xs!604)) b!22085))

(assert (= (and start!3508 (is-Single!34 xs!604)) b!22086))

(declare-fun m!24267 () Bool)

(assert (=> b!22084 m!24267))

(declare-fun m!24269 () Bool)

(assert (=> start!3508 m!24269))

(declare-fun m!24271 () Bool)

(assert (=> b!22089 m!24271))

(push 1)

(assert (not b!22084))

(assert (not b!22085))

(assert tp_is_empty!105)

(assert (not start!3508))

(assert (not b!22089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

