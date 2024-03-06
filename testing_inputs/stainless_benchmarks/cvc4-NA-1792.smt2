; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12218 () Bool)

(assert start!12218)

(declare-fun x!32789 () (_ BitVec 32))

(declare-fun y!2241 () (_ BitVec 32))

(declare-fun x$1!1228 () (_ BitVec 32))

(assert (=> start!12218 (and (bvsle x!32789 #b00000000000000000000000000000000) (bvsle y!2241 #b00000000000000000000000000000000) (= x$1!1228 (bvadd x!32789 y!2241)) (bvsgt x$1!1228 #b00000000000000000000000000000000))))

(assert (=> start!12218 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

