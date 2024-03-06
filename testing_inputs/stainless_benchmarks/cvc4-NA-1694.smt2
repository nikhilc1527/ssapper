; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11802 () Bool)

(assert start!11802)

(declare-datatypes () ((T!6187 (T!6188 (val!207 Int)))))

(declare-fun head!1083 () T!6187)

(declare-fun n!1795 () Int)

(declare-fun n!1796 () Int)

(declare-fun t!48894 () T!6187)

(declare-fun t!48895 () T!6187)

(assert (=> start!11802 (and (>= n!1795 0) (> n!1795 0) (= head!1083 t!48894) (= n!1796 (- n!1795 1)) (= t!48895 t!48894) (< n!1796 0))))

(declare-fun tp_is_empty!409 () Bool)

(assert (=> start!11802 tp_is_empty!409))

(assert (=> start!11802 true))

(push 1)

(assert tp_is_empty!409)

(check-sat)

(pop 1)

