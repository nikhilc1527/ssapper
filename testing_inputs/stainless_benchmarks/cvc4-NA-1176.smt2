; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8436 () Bool)

(assert start!8436)

(declare-fun y!1919 () (_ BitVec 64))

(declare-fun i!468 () (_ BitVec 8))

(declare-fun res!27305 () (_ BitVec 64))

(declare-fun j!29 () (_ BitVec 32))

(assert (=> start!8436 (and (bvsle #b00000000000000000000000000000000 j!29) (bvslt j!29 #b00000000000000000000000000100000) (= res!27305 (bvshl ((_ sign_extend 56) i!468) ((_ sign_extend 32) j!29))) (= y!1919 ((_ sign_extend 32) j!29)) (bvslt y!1919 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> start!8436 true))

(push 1)

(check-sat)

(pop 1)

