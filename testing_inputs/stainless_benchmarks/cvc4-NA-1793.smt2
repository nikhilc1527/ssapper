; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12220 () Bool)

(assert start!12220)

(declare-fun x!32806 () (_ BitVec 32))

(declare-fun y!2242 () (_ BitVec 32))

(declare-fun x$1!1229 () (_ BitVec 32))

(assert (=> start!12220 (and (bvsge x!32806 #b00000000000000000000000000000000) (bvsge y!2242 #b00000000000000000000000000000000) (= x$1!1229 (bvadd x!32806 y!2242)) (bvslt x$1!1229 #b00000000000000000000000000000000))))

(assert (=> start!12220 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

