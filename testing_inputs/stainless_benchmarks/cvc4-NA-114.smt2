; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!676 () Bool)

(assert start!676)

(declare-datatypes () ((array!229 (array!230 (arr!87 (Array (_ BitVec 32) (_ BitVec 32))) (size!114 (_ BitVec 32))))))

(declare-fun a!332 () array!229)

(declare-fun a2!20 () array!229)

(assert (=> start!676 (and (bvsgt (size!114 a!332) #b00000000000000000000000000000000) (= a2!20 (array!230 (store (arr!87 a!332) #b00000000000000000000000000000000 #b00000000000000000000000000000010) (size!114 a!332))) (bvsge #b00000000000000000000000000000000 (size!114 a2!20)))))

(declare-fun array_inv!82 (array!229) Bool)

(assert (=> start!676 (array_inv!82 a!332)))

(assert (=> start!676 (array_inv!82 a2!20)))

(declare-fun bs!358 () Bool)

(assert (= bs!358 start!676))

(declare-fun m!7089 () Bool)

(assert (=> bs!358 m!7089))

(declare-fun m!7091 () Bool)

(assert (=> bs!358 m!7091))

(declare-fun m!7093 () Bool)

(assert (=> bs!358 m!7093))

(push 1)

(assert (not start!676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

