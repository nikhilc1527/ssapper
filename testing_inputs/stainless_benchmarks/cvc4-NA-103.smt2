; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!650 () Bool)

(assert start!650)

(declare-datatypes () ((array!172 (array!173 (arr!65 (Array (_ BitVec 32) (_ BitVec 32))) (size!92 (_ BitVec 32))))))

(declare-fun a!316 () array!172)

(declare-fun x$1!211 () (_ BitVec 32))

(assert (=> start!650 (and (bvsgt (size!92 a!316) #b00000000000000000000000000000010) (= (select (arr!65 a!316) #b00000000000000000000000000000010) #b00000000000000000000000000000101) (bvslt #b00000000000000000000000000000010 (size!92 a!316)) (= x$1!211 (select (arr!65 a!316) #b00000000000000000000000000000010)) (not (= x$1!211 #b00000000000000000000000000000101)))))

(declare-fun array_inv!60 (array!172) Bool)

(assert (=> start!650 (array_inv!60 a!316)))

(assert (=> start!650 true))

(declare-fun bs!338 () Bool)

(assert (= bs!338 start!650))

(declare-fun m!7023 () Bool)

(assert (=> bs!338 m!7023))

(declare-fun m!7025 () Bool)

(assert (=> bs!338 m!7025))

(push 1)

(assert (not start!650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

