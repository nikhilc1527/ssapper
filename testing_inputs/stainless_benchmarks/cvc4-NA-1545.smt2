; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10436 () Bool)

(assert start!10436)

(declare-fun res!39921 () Bool)

(declare-fun e!42815 () Bool)

(assert (=> start!10436 (=> (not res!39921) (not e!42815))))

(declare-fun a!854 () Int)

(declare-datatypes () ((PureMethods!3 (PureMethodsExt!1 (__x!279 Int)))))

(declare-fun thiss!9493 () PureMethods!3)

(declare-fun f!106 (PureMethods!3) Int)

(assert (=> start!10436 (= res!39921 (= a!854 (f!106 thiss!9493)))))

(assert (=> start!10436 e!42815))

(assert (=> start!10436 true))

(declare-fun b!79196 () Bool)

(declare-fun res!39922 () Bool)

(assert (=> b!79196 (=> (not res!39922) (not e!42815))))

(declare-fun b!79191 () Int)

(assert (=> b!79196 (= res!39922 (= b!79191 (f!106 thiss!9493)))))

(declare-fun b!79197 () Bool)

(assert (=> b!79197 (= e!42815 (not (= a!854 b!79191)))))

(assert (= (and start!10436 res!39921) b!79196))

(assert (= (and b!79196 res!39922) b!79197))

(declare-fun m!73654 () Bool)

(assert (=> start!10436 m!73654))

(assert (=> b!79196 m!73654))

(push 1)

(assert (not b!79196))

(assert (not start!10436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

