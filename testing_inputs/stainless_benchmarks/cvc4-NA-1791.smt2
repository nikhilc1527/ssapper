; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12216 () Bool)

(assert start!12216)

(declare-fun x!32770 () (_ BitVec 32))

(declare-fun y!2238 () (_ BitVec 32))

(declare-fun x$1!1227 () (_ BitVec 32))

(assert (=> start!12216 (and (bvsge x!32770 #b00000000000000000000000000000000) (bvsge y!2238 #b00000000000000000000000000000000) (= x$1!1227 (bvadd x!32770 y!2238)) (bvslt x$1!1227 #b00000000000000000000000000000000))))

(assert (=> start!12216 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

