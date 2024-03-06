; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!70 () Bool)

(assert start!70)

(declare-datatypes () ((A1!6 (A1!7 (x!952 (_ BitVec 32))))))

(declare-datatypes () ((array!39 (array!40 (arr!18 (Array (_ BitVec 32) A1!6)) (size!45 (_ BitVec 32))))))

(declare-datatypes () ((B!235 (B!236 (t!260 array!39)))))

(declare-fun b!393 () B!235)

(declare-fun a!276 () array!39)

(assert (=> start!70 (and (bvsgt (size!45 (t!260 b!393)) #b00000000000000000000000000000000) (bvsgt (x!952 (select (arr!18 (t!260 b!393)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (= a!276 (t!260 b!393)) (bvsge #b00000000000000000000000000000000 (size!45 a!276)))))

(declare-fun e!238 () Bool)

(assert (=> start!70 e!238))

(declare-fun array_inv!13 (array!39) Bool)

(assert (=> start!70 (array_inv!13 a!276)))

(declare-fun b!399 () Bool)

(assert (=> b!399 (= e!238 (array_inv!13 (t!260 b!393)))))

(assert (= start!70 b!399))

(declare-fun m!247 () Bool)

(assert (=> start!70 m!247))

(declare-fun m!249 () Bool)

(assert (=> start!70 m!249))

(declare-fun m!251 () Bool)

(assert (=> b!399 m!251))

(push 1)

(assert (not b!399))

(assert (not start!70))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

