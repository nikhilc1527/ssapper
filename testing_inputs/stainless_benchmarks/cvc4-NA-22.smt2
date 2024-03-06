; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!88 () Bool)

(assert start!88)

(declare-datatypes () ((A!491 (A!492 (x!1062 (_ BitVec 32))))))

(declare-datatypes () ((array!81 (array!82 (arr!34 (Array (_ BitVec 32) A!491)) (size!61 (_ BitVec 32))))))

(declare-datatypes () ((B!257 (B!258 (content!44 array!81)))))

(declare-fun res!399 () B!257)

(declare-fun y!221 () (_ BitVec 32))

(assert (=> start!88 (and (= res!399 (B!258 (array!82 (store ((as const (Array (_ BitVec 32) A!491)) (A!492 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (A!492 y!221)) #b00000000000000000000000000000001))) (not (= (x!1062 (select (arr!34 (content!44 res!399)) #b00000000000000000000000000000000)) y!221)))))

(declare-fun e!299 () Bool)

(declare-fun inv!12 (B!257) Bool)

(assert (=> start!88 (and (inv!12 res!399) e!299)))

(assert (=> start!88 true))

(declare-fun b!436 () Bool)

(declare-fun array_inv!29 (array!81) Bool)

(assert (=> b!436 (= e!299 (array_inv!29 (content!44 res!399)))))

(assert (= start!88 b!436))

(declare-fun m!287 () Bool)

(assert (=> start!88 m!287))

(declare-fun m!289 () Bool)

(assert (=> start!88 m!289))

(declare-fun m!291 () Bool)

(assert (=> start!88 m!291))

(declare-fun m!293 () Bool)

(assert (=> b!436 m!293))

(push 1)

(assert (not start!88))

(assert (not b!436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

