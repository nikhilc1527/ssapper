; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!72 () Bool)

(assert start!72)

(declare-datatypes () ((A1!8 (A1!9 (x!953 (_ BitVec 32))))))

(declare-datatypes () ((array!41 (array!42 (arr!19 (Array (_ BitVec 32) A1!8)) (size!46 (_ BitVec 32))))))

(declare-datatypes () ((B!237 (B!238 (t!261 array!41)))))

(declare-fun b!393 () B!237)

(declare-fun a!276 () array!41)

(declare-fun a!277 () A1!8)

(assert (=> start!72 (and (bvsgt (size!46 (t!261 b!393)) #b00000000000000000000000000000000) (bvsgt (x!953 (select (arr!19 (t!261 b!393)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (= a!276 (t!261 b!393)) (bvslt #b00000000000000000000000000000000 (size!46 a!276)) (= a!277 (select (arr!19 a!276) #b00000000000000000000000000000000)) (bvslt (x!953 a!277) #b00000000000000000000000000000000))))

(declare-fun e!247 () Bool)

(assert (=> start!72 e!247))

(declare-fun array_inv!14 (array!41) Bool)

(assert (=> start!72 (array_inv!14 a!276)))

(assert (=> start!72 true))

(declare-fun b!402 () Bool)

(assert (=> b!402 (= e!247 (array_inv!14 (t!261 b!393)))))

(assert (= start!72 b!402))

(declare-fun m!253 () Bool)

(assert (=> start!72 m!253))

(declare-fun m!255 () Bool)

(assert (=> start!72 m!255))

(declare-fun m!257 () Bool)

(assert (=> start!72 m!257))

(declare-fun m!259 () Bool)

(assert (=> b!402 m!259))

(push 1)

(assert (not start!72))

(assert (not b!402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

