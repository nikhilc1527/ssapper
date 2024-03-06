; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!84 () Bool)

(assert start!84)

(declare-fun index!7 () (_ BitVec 32))

(declare-datatypes () ((array!68 (array!69 (arr!29 (Array (_ BitVec 32) Int)) (size!56 (_ BitVec 32))))))

(declare-datatypes () ((HashTable!3 (HashTable!4 (table!5 array!68)))))

(declare-fun thiss!80 () HashTable!3)

(declare-fun a!291 () array!68)

(assert (=> start!84 (and (bvsge index!7 #b00000000000000000000000000000000) (bvslt index!7 (size!56 (table!5 thiss!80))) (= a!291 (table!5 thiss!80)) (bvsge index!7 (size!56 a!291)))))

(assert (=> start!84 true))

(declare-fun e!283 () Bool)

(declare-fun inv!13 (HashTable!3) Bool)

(assert (=> start!84 (and (inv!13 thiss!80) e!283)))

(declare-fun array_inv!24 (array!68) Bool)

(assert (=> start!84 (array_inv!24 a!291)))

(declare-fun b!430 () Bool)

(assert (=> b!430 (= e!283 (array_inv!24 (table!5 thiss!80)))))

(assert (= start!84 b!430))

(declare-fun m!273 () Bool)

(assert (=> start!84 m!273))

(declare-fun m!275 () Bool)

(assert (=> start!84 m!275))

(declare-fun m!277 () Bool)

(assert (=> b!430 m!277))

(push 1)

(assert (not start!84))

(assert (not b!430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

