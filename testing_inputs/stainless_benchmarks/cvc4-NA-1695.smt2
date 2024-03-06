; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11804 () Bool)

(assert start!11804)

(declare-fun n!1795 () Int)

(declare-datatypes () ((T!6189 (T!6190 (val!208 Int)))))

(declare-fun head!1083 () T!6189)

(declare-fun t!48894 () T!6189)

(assert (=> start!11804 (and (>= n!1795 0) (> n!1795 0) (= head!1083 t!48894) (not (= (- n!1795 1) (- n!1795 1))))))

(assert (=> start!11804 true))

(declare-fun tp_is_empty!411 () Bool)

(assert (=> start!11804 tp_is_empty!411))

(push 1)

(assert tp_is_empty!411)

(check-sat)

(pop 1)

