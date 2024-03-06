; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!680 () Bool)

(assert start!680)

(declare-datatypes () ((array!233 (array!234 (arr!89 (Array (_ BitVec 32) Int)) (size!116 (_ BitVec 32))))))

(declare-fun a!333 () array!233)

(declare-fun a2!21 () array!233)

(assert (=> start!680 (and (bvsgt (size!116 a!333) #b00000000000000000000000000000000) (= a2!21 (array!234 (store (arr!89 a!333) #b00000000000000000000000000000000 2) (size!116 a!333))) (bvsge #b00000000000000000000000000000000 (size!116 a2!21)))))

(declare-fun array_inv!84 (array!233) Bool)

(assert (=> start!680 (array_inv!84 a!333)))

(assert (=> start!680 (array_inv!84 a2!21)))

(declare-fun bs!362 () Bool)

(assert (= bs!362 start!680))

(declare-fun m!7103 () Bool)

(assert (=> bs!362 m!7103))

(declare-fun m!7105 () Bool)

(assert (=> bs!362 m!7105))

(declare-fun m!7107 () Bool)

(assert (=> bs!362 m!7107))

(push 1)

(assert (not start!680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

