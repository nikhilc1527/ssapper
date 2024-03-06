; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!648 () Bool)

(assert start!648)

(declare-datatypes () ((array!170 (array!171 (arr!64 (Array (_ BitVec 32) (_ BitVec 32))) (size!91 (_ BitVec 32))))))

(declare-fun a!317 () array!170)

(declare-fun a!318 () array!170)

(assert (=> start!648 (and (= a!317 (array!171 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000101) #b00000000000000000000000000000101)) (= a!318 a!317) (or (bvsle (size!91 a!318) #b00000000000000000000000000000010) (not (= (select (arr!64 a!318) #b00000000000000000000000000000010) #b00000000000000000000000000000101))))))

(declare-fun array_inv!59 (array!170) Bool)

(assert (=> start!648 (array_inv!59 a!317)))

(assert (=> start!648 (array_inv!59 a!318)))

(declare-fun bs!336 () Bool)

(assert (= bs!336 start!648))

(declare-fun m!7017 () Bool)

(assert (=> bs!336 m!7017))

(declare-fun m!7019 () Bool)

(assert (=> bs!336 m!7019))

(declare-fun m!7021 () Bool)

(assert (=> bs!336 m!7021))

(push 1)

(assert (not start!648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

