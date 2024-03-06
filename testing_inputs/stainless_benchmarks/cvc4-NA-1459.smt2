; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10028 () Bool)

(assert start!10028)

(declare-fun failed!2 () Bool)

(declare-fun c!17079 () Int)

(declare-fun failed!1 () Bool)

(declare-fun counter!33 () Int)

(declare-datatypes () ((List!618 (Nil!576) (Cons!575 (head!985 Int) (tail!1006 List!618)))))

(declare-fun list!826 () List!618)

(declare-fun counter!32 () Int)

(declare-fun list!827 () List!618)

(assert (=> start!10028 (and (or (>= counter!32 0) failed!1) (is-Cons!575 list!826) (= c!17079 (ite (= (head!985 list!826) 1) (+ counter!32 1) (ite (= (head!985 list!826) 2) (- counter!32 1) counter!32))) (= list!827 (tail!1006 list!826)) (= counter!33 c!17079) (= failed!2 (or failed!1 (< c!17079 0))) (< counter!33 0) (not failed!2))))

(assert (=> start!10028 true))

(push 1)

(check-sat)

(pop 1)

