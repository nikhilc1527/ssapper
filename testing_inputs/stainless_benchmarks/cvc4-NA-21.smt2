; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!86 () Bool)

(assert start!86)

(declare-datatypes () ((A!489 (A!490 (x!1061 (_ BitVec 32))))))

(declare-datatypes () ((array!79 (array!80 (arr!33 (Array (_ BitVec 32) A!489)) (size!60 (_ BitVec 32))))))

(declare-datatypes () ((B!255 (B!256 (content!43 array!79)))))

(declare-fun res!399 () B!255)

(declare-fun y!221 () (_ BitVec 32))

(declare-fun a!293 () array!79)

(assert (=> start!86 (and (= res!399 (B!256 (array!80 (store ((as const (Array (_ BitVec 32) A!489)) (A!490 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (A!490 y!221)) #b00000000000000000000000000000001))) (= a!293 (content!43 res!399)) (bvsge #b00000000000000000000000000000000 (size!60 a!293)))))

(declare-fun e!292 () Bool)

(declare-fun inv!12 (B!255) Bool)

(assert (=> start!86 (and (inv!12 res!399) e!292)))

(assert (=> start!86 true))

(declare-fun array_inv!28 (array!79) Bool)

(assert (=> start!86 (array_inv!28 a!293)))

(declare-fun b!433 () Bool)

(assert (=> b!433 (= e!292 (array_inv!28 (content!43 res!399)))))

(assert (= start!86 b!433))

(declare-fun m!279 () Bool)

(assert (=> start!86 m!279))

(declare-fun m!281 () Bool)

(assert (=> start!86 m!281))

(declare-fun m!283 () Bool)

(assert (=> start!86 m!283))

(declare-fun m!285 () Bool)

(assert (=> b!433 m!285))

(push 1)

(assert (not start!86))

(assert (not b!433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

