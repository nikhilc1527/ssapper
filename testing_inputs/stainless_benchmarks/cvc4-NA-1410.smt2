; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9766 () Bool)

(assert start!9766)

(declare-fun res!34834 () Bool)

(declare-fun e!38541 () Bool)

(assert (=> start!9766 (=> (not res!34834) (not e!38541))))

(declare-fun a!755 () (_ BitVec 32))

(assert (=> start!9766 (= res!34834 (bvsge a!755 #b00000000000000000000000000000000))))

(assert (=> start!9766 e!38541))

(assert (=> start!9766 true))

(declare-fun b!71227 () Bool)

(declare-fun res!34835 () Bool)

(assert (=> b!71227 (=> (not res!34835) (not e!38541))))

(declare-fun x$2!393 () (_ BitVec 32))

(declare-fun bar!11 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!71227 (= res!34835 (= x$2!393 (bar!11 a!755 #b00000000000000000000000000000010)))))

(declare-fun b!71228 () Bool)

(assert (=> b!71228 (= e!38541 (not (= x$2!393 #b00000000000000000000000000000101)))))

(assert (= (and start!9766 res!34834) b!71227))

(assert (= (and b!71227 res!34835) b!71228))

(declare-fun m!71094 () Bool)

(assert (=> b!71227 m!71094))

(push 1)

(assert (not b!71227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53984 () Bool)

(assert (=> d!53984 (and (bvsgt #b00000000000000000000000000000010 #b00000000000000000000000000000000) (bvsge a!755 #b00000000000000000000000000000000) (= (bvadd #b00000000000000000000000000000010 #b00000000000000000000000000000011) (bvadd #b00000000000000000000000000000010 #b00000000000000000000000000000011)))))

(assert (=> d!53984 (= (bar!11 a!755 #b00000000000000000000000000000010) (bvadd #b00000000000000000000000000000010 #b00000000000000000000000000000011))))

(assert (=> b!71227 d!53984))

(push 1)

(check-sat)

(pop 1)

