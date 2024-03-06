; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12664 () Bool)

(assert start!12664)

(declare-fun y!2416 () (_ BitVec 32))

(declare-fun m!88769 () (_ BitVec 32))

(declare-fun n!1873 () (_ BitVec 32))

(declare-fun x!34313 () (_ BitVec 32))

(assert (=> start!12664 (and (bvsle x!34313 y!2416) (bvsge x!34313 #b00000000000000000000000000000000) (bvsge y!2416 #b00000000000000000000000000000000) (= n!1873 (bvadd x!34313 y!2416)) (= m!88769 (bvsdiv n!1873 #b00000000000000000000000000000010)) (or (bvslt m!88769 x!34313) (bvsgt m!88769 y!2416)))))

(assert (=> start!12664 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

