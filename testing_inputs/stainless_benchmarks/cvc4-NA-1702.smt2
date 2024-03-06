; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11818 () Bool)

(assert start!11818)

(declare-fun b_free!7551 () Bool)

(declare-fun b_next!39915 () Bool)

(assert (=> start!11818 (= b_free!7551 (not b_next!39915))))

(declare-fun tp!17580 () Bool)

(declare-fun b_and!60557 () Bool)

(assert (=> start!11818 (= tp!17580 b_and!60557)))

(declare-fun f!5014 () Int)

(declare-fun b_next!39917 () Bool)

(declare-fun b!89956 () Bool)

(declare-fun lambda!11084 () Int)

(assert (=> start!11818 (= b_next!39915 (or (and b!89956 (= lambda!11084 f!5014)) b_next!39917))))

(declare-fun res!47106 () Bool)

(declare-fun e!49084 () Bool)

(assert (=> start!11818 (=> (not res!47106) (not e!49084))))

(declare-fun head!1085 () Int)

(declare-fun head!1087 () Int)

(declare-fun n!1802 () Int)

(declare-fun n!1799 () Int)

(assert (=> start!11818 (= res!47106 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (> (- n!1799 1) 0) (= head!1087 1) (= n!1802 (- n!1799 2))))))

(assert (=> start!11818 e!49084))

(assert (=> start!11818 true))

(assert (=> start!11818 tp!17580))

(declare-fun res!47107 () Bool)

(assert (=> b!89956 (=> (not res!47107) (not e!49084))))

(assert (=> b!89956 (= res!47107 (= f!5014 lambda!11084))))

(declare-fun b!89957 () Bool)

(assert (=> b!89957 (= e!49084 (not (= (- n!1799 2) n!1802)))))

(assert (= (and start!11818 res!47106) b!89956))

(assert (= (and b!89956 res!47107) b!89957))

(push 1)

(assert b_and!60557)

(assert (not b_next!39917))

(check-sat)

(pop 1)

