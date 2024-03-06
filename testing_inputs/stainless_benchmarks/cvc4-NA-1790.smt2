; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12214 () Bool)

(assert start!12214)

(declare-fun x!32753 () (_ BitVec 32))

(declare-fun y!2237 () (_ BitVec 32))

(declare-fun x$1!1226 () (_ BitVec 32))

(assert (=> start!12214 (and (bvsge x!32753 #b00000000000000000000000000000000) (bvsge y!2237 #b00000000000000000000000000000000) (= x$1!1226 (bvadd x!32753 y!2237)) (bvslt x$1!1226 #b00000000000000000000000000000000))))

(assert (=> start!12214 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

