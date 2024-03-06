; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!74 () Bool)

(assert start!74)

(declare-datatypes () ((A1!12 (A1!13 (x!979 (_ BitVec 32))))))

(declare-datatypes () ((array!49 (array!50 (arr!22 (Array (_ BitVec 32) A1!12)) (size!49 (_ BitVec 32))))))

(declare-datatypes () ((B!242 (B!243 (t!265 array!49)))))

(declare-fun b!403 () B!242)

(declare-fun a!278 () (_ BitVec 32))

(assert (=> start!74 (and (bvsgt (size!49 (t!265 b!403)) #b00000000000000000000000000000010) (= a!278 (size!49 (t!265 b!403))) (bvsle a!278 #b00000000000000000000000000000000))))

(declare-fun e!254 () Bool)

(assert (=> start!74 e!254))

(assert (=> start!74 true))

(declare-fun b!406 () Bool)

(declare-fun array_inv!17 (array!49) Bool)

(assert (=> b!406 (= e!254 (array_inv!17 (t!265 b!403)))))

(assert (= start!74 b!406))

(declare-fun m!261 () Bool)

(assert (=> b!406 m!261))

(push 1)

(assert (not b!406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

