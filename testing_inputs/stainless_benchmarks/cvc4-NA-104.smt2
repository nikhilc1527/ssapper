; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!652 () Bool)

(assert start!652)

(declare-datatypes () ((array!180 (array!181 (arr!68 (Array (_ BitVec 32) (_ BitVec 32))) (size!95 (_ BitVec 32))))))

(declare-fun a!320 () array!180)

(declare-fun res!1321 () array!180)

(assert (=> start!652 (and (bvsge (size!95 a!320) #b00000000000000000000000000000010) (bvslt #b00000000000000000000000000000001 (size!95 a!320)) (= res!1321 (array!181 (store (arr!68 a!320) #b00000000000000000000000000000001 #b00000000000000000000000000000011) (size!95 a!320))) (= (size!95 res!1321) (size!95 a!320)) (bvsge #b00000000000000000000000000000001 (size!95 res!1321)))))

(declare-fun array_inv!63 (array!180) Bool)

(assert (=> start!652 (array_inv!63 a!320)))

(assert (=> start!652 (array_inv!63 res!1321)))

(declare-fun bs!340 () Bool)

(assert (= bs!340 start!652))

(declare-fun m!7027 () Bool)

(assert (=> bs!340 m!7027))

(declare-fun m!7029 () Bool)

(assert (=> bs!340 m!7029))

(declare-fun m!7031 () Bool)

(assert (=> bs!340 m!7031))

(push 1)

(assert (not start!652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

