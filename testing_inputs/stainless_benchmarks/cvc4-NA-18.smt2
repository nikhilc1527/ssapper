; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!76 () Bool)

(assert start!76)

(declare-datatypes () ((A!459 (A!460 (x!1009 (_ BitVec 32))))))

(declare-datatypes () ((array!57 (array!58 (arr!25 (Array (_ BitVec 32) A!459)) (size!52 (_ BitVec 32))))))

(declare-datatypes () ((B!247 (B!248 (a!287 array!57)))))

(declare-fun b!409 () B!247)

(declare-fun b!410 () B!247)

(assert (=> start!76 (and (= b!409 (B!248 (array!58 (store (store (store ((as const (Array (_ BitVec 32) A!459)) (A!460 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (A!460 #b00000000000000000000000000000001)) #b00000000000000000000000000000001 (A!460 #b00000000000000000000000000000010)) #b00000000000000000000000000000010 (A!460 #b00000000000000000000000000000011)) #b00000000000000000000000000000011))) (= b!410 b!409) (bvsle (size!52 (a!287 b!410)) #b00000000000000000000000000000000))))

(declare-fun e!264 () Bool)

(assert (=> start!76 e!264))

(declare-fun e!266 () Bool)

(assert (=> start!76 e!266))

(declare-fun b!416 () Bool)

(declare-fun array_inv!20 (array!57) Bool)

(assert (=> b!416 (= e!264 (array_inv!20 (a!287 b!409)))))

(declare-fun b!417 () Bool)

(assert (=> b!417 (= e!266 (array_inv!20 (a!287 b!410)))))

(assert (= start!76 b!416))

(assert (= start!76 b!417))

(declare-fun m!263 () Bool)

(assert (=> b!416 m!263))

(declare-fun m!265 () Bool)

(assert (=> b!417 m!265))

(push 1)

(assert (not b!416))

(assert (not b!417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

