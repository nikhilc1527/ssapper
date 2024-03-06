; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!68 () Bool)

(assert start!68)

(declare-datatypes () ((A1!4 (A1!5 (x!951 (_ BitVec 32))))))

(declare-datatypes () ((array!37 (array!38 (arr!17 (Array (_ BitVec 32) A1!4)) (size!44 (_ BitVec 32))))))

(declare-datatypes () ((B!233 (B!234 (t!259 array!37)))))

(declare-fun b!393 () B!233)

(declare-fun a!274 () array!37)

(assert (=> start!68 (and (bvsgt (size!44 (t!259 b!393)) #b00000000000000000000000000000000) (= a!274 (t!259 b!393)) (bvsge #b00000000000000000000000000000000 (size!44 a!274)))))

(declare-fun e!229 () Bool)

(assert (=> start!68 e!229))

(declare-fun array_inv!12 (array!37) Bool)

(assert (=> start!68 (array_inv!12 a!274)))

(declare-fun b!396 () Bool)

(assert (=> b!396 (= e!229 (array_inv!12 (t!259 b!393)))))

(assert (= start!68 b!396))

(declare-fun m!243 () Bool)

(assert (=> start!68 m!243))

(declare-fun m!245 () Bool)

(assert (=> b!396 m!245))

(push 1)

(assert (not b!396))

(assert (not start!68))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

