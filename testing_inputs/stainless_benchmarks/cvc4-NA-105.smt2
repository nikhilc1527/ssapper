; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!654 () Bool)

(assert start!654)

(declare-datatypes () ((array!182 (array!183 (arr!69 (Array (_ BitVec 32) (_ BitVec 32))) (size!96 (_ BitVec 32))))))

(declare-fun a!320 () array!182)

(declare-fun res!1321 () array!182)

(assert (=> start!654 (and (bvsge (size!96 a!320) #b00000000000000000000000000000010) (bvslt #b00000000000000000000000000000001 (size!96 a!320)) (= res!1321 (array!183 (store (arr!69 a!320) #b00000000000000000000000000000001 #b00000000000000000000000000000011) (size!96 a!320))) (or (not (= (size!96 res!1321) (size!96 a!320))) (not (= (select (arr!69 res!1321) #b00000000000000000000000000000001) #b00000000000000000000000000000011))))))

(declare-fun array_inv!64 (array!182) Bool)

(assert (=> start!654 (array_inv!64 a!320)))

(assert (=> start!654 (array_inv!64 res!1321)))

(declare-fun bs!342 () Bool)

(assert (= bs!342 start!654))

(declare-fun m!7033 () Bool)

(assert (=> bs!342 m!7033))

(declare-fun m!7035 () Bool)

(assert (=> bs!342 m!7035))

(declare-fun m!7037 () Bool)

(assert (=> bs!342 m!7037))

(declare-fun m!7039 () Bool)

(assert (=> bs!342 m!7039))

(push 1)

(assert (not start!654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

