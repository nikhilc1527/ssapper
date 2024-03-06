; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!678 () Bool)

(assert start!678)

(declare-datatypes () ((array!231 (array!232 (arr!88 (Array (_ BitVec 32) (_ BitVec 32))) (size!115 (_ BitVec 32))))))

(declare-fun a!332 () array!231)

(declare-fun a2!20 () array!231)

(declare-fun res!1337 () (_ BitVec 32))

(assert (=> start!678 (and (bvsgt (size!115 a!332) #b00000000000000000000000000000000) (= a2!20 (array!232 (store (arr!88 a!332) #b00000000000000000000000000000000 #b00000000000000000000000000000010) (size!115 a!332))) (bvslt #b00000000000000000000000000000000 (size!115 a2!20)) (= res!1337 (select (arr!88 a2!20) #b00000000000000000000000000000000)) (not (= res!1337 #b00000000000000000000000000000010)))))

(declare-fun array_inv!83 (array!231) Bool)

(assert (=> start!678 (array_inv!83 a!332)))

(assert (=> start!678 (array_inv!83 a2!20)))

(assert (=> start!678 true))

(declare-fun bs!360 () Bool)

(assert (= bs!360 start!678))

(declare-fun m!7095 () Bool)

(assert (=> bs!360 m!7095))

(declare-fun m!7097 () Bool)

(assert (=> bs!360 m!7097))

(declare-fun m!7099 () Bool)

(assert (=> bs!360 m!7099))

(declare-fun m!7101 () Bool)

(assert (=> bs!360 m!7101))

(push 1)

(assert (not start!678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

