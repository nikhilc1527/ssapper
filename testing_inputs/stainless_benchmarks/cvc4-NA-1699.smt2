; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11812 () Bool)

(assert start!11812)

(declare-fun b_free!7539 () Bool)

(declare-fun b_next!39897 () Bool)

(assert (=> start!11812 (= b_free!7539 (not b_next!39897))))

(declare-fun tp!17562 () Bool)

(declare-fun b_and!60541 () Bool)

(assert (=> start!11812 (= tp!17562 b_and!60541)))

(declare-fun lambda!11075 () Int)

(declare-fun b_next!39899 () Bool)

(declare-fun b!89914 () Bool)

(declare-fun f!5014 () Int)

(assert (=> start!11812 (= b_next!39897 (or (and b!89914 (= lambda!11075 f!5014)) b_next!39899))))

(declare-fun res!47079 () Bool)

(declare-fun e!49066 () Bool)

(assert (=> start!11812 (=> (not res!47079) (not e!49066))))

(declare-fun head!1085 () Int)

(declare-fun head!1087 () Int)

(declare-fun n!1802 () Int)

(declare-fun n!1799 () Int)

(assert (=> start!11812 (= res!47079 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (> (- n!1799 1) 0) (= head!1087 1) (= n!1802 (- n!1799 2))))))

(assert (=> start!11812 e!49066))

(assert (=> start!11812 true))

(assert (=> start!11812 tp!17562))

(declare-fun res!47080 () Bool)

(assert (=> b!89914 (=> (not res!47080) (not e!49066))))

(assert (=> b!89914 (= res!47080 (= f!5014 lambda!11075))))

(declare-fun b!89915 () Bool)

(declare-fun n!1803 () Int)

(assert (=> b!89915 (= e!49066 (and (= n!1803 (- n!1799 2)) (< n!1803 0)))))

(assert (= (and start!11812 res!47079) b!89914))

(assert (= (and b!89914 res!47080) b!89915))

(push 1)

(assert b_and!60541)

(assert (not b_next!39899))

(check-sat)

(pop 1)

