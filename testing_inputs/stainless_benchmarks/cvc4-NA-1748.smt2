; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12038 () Bool)

(assert start!12038)

(declare-fun b_free!7627 () Bool)

(declare-fun b_next!39997 () Bool)

(assert (=> start!12038 (= b_free!7627 (not b_next!39997))))

(declare-fun tp!17694 () Bool)

(declare-fun b_and!60681 () Bool)

(assert (=> start!12038 (= tp!17694 b_and!60681)))

(declare-fun lambda!11093 () Int)

(declare-fun pre!25 () Int)

(declare-fun b_next!39999 () Bool)

(declare-fun b!90552 () Bool)

(assert (=> start!12038 (= b_next!39997 (or (and b!90552 (= lambda!11093 pre!25)) b_next!39999))))

(declare-fun res!47475 () Bool)

(declare-fun e!49442 () Bool)

(assert (=> start!12038 (=> (not res!47475) (not e!49442))))

(declare-fun x!31954 () Int)

(assert (=> start!12038 (= res!47475 (> x!31954 0))))

(assert (=> start!12038 e!49442))

(assert (=> start!12038 true))

(assert (=> start!12038 tp!17694))

(declare-fun res!47476 () Bool)

(assert (=> b!90552 (=> (not res!47476) (not e!49442))))

(assert (=> b!90552 (= res!47476 (= pre!25 lambda!11093))))

(declare-fun y!2227 () Int)

(declare-fun b!90553 () Bool)

(declare-fun x!31957 () Int)

(declare-datatypes () ((tuple2!428 (tuple2!429 (_1!249 Int) (_2!249 Int)))))

(declare-fun p!1008 () tuple2!428)

(assert (=> b!90553 (= e!49442 (and (> (_1!249 p!1008) (_2!249 p!1008)) (= x!31957 (_1!249 p!1008)) (= y!2227 (_2!249 p!1008)) (<= x!31957 y!2227)))))

(assert (= (and start!12038 res!47475) b!90552))

(assert (= (and b!90552 res!47476) b!90553))

(push 1)

(assert b_and!60681)

(assert (not b_next!39999))

(check-sat)

(pop 1)

