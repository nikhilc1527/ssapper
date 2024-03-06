; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7436 () Bool)

(assert start!7436)

(declare-fun res!24393 () Bool)

(declare-fun e!27942 () Bool)

(assert (=> start!7436 (=> (not res!24393) (not e!27942))))

(declare-datatypes () ((List!441 (Nil!421) (Cons!420 (head!680 (_ BitVec 32)) (tail!706 List!441)))))

(declare-fun l!1079 () List!441)

(declare-fun isSorted!5 (List!441) Bool)

(assert (=> start!7436 (= res!24393 (isSorted!5 l!1079))))

(assert (=> start!7436 e!27942))

(assert (=> start!7436 true))

(declare-fun b!53592 () Bool)

(declare-fun res!24394 () Bool)

(assert (=> b!53592 (=> (not res!24394) (not e!27942))))

(declare-fun e!27865 () (_ BitVec 32))

(declare-fun l!1092 () List!441)

(declare-fun head!674 () (_ BitVec 32))

(declare-fun e!27864 () (_ BitVec 32))

(assert (=> b!53592 (= res!24394 (and (not (is-Nil!421 l!1079)) (bvsle (head!680 l!1079) e!27864) (= head!674 (head!680 l!1079)) (= e!27865 e!27864) (= l!1092 (tail!706 l!1079))))))

(declare-fun b!53593 () Bool)

(assert (=> b!53593 (= e!27942 (not (isSorted!5 l!1092)))))

(assert (= (and start!7436 res!24393) b!53592))

(assert (= (and b!53592 res!24394) b!53593))

(declare-fun m!57478 () Bool)

(assert (=> start!7436 m!57478))

(declare-fun m!57480 () Bool)

(assert (=> b!53593 m!57480))

(push 1)

(assert (not start!7436))

(assert (not b!53593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44711 () Bool)

(declare-fun res!24399 () Bool)

(declare-fun e!27947 () Bool)

(assert (=> d!44711 (=> res!24399 e!27947)))

(assert (=> d!44711 (= res!24399 (or (is-Nil!421 l!1079) (and (is-Cons!420 l!1079) (is-Nil!421 (tail!706 l!1079)))))))

(assert (=> d!44711 (= (isSorted!5 l!1079) e!27947)))

(declare-fun b!53598 () Bool)

(declare-fun e!27948 () Bool)

(assert (=> b!53598 (= e!27947 e!27948)))

(declare-fun res!24400 () Bool)

(assert (=> b!53598 (=> (not res!24400) (not e!27948))))

(assert (=> b!53598 (= res!24400 (bvsle (head!680 l!1079) (head!680 (tail!706 l!1079))))))

(declare-fun b!53599 () Bool)

(assert (=> b!53599 (= e!27948 (isSorted!5 (Cons!420 (head!680 (tail!706 l!1079)) (tail!706 (tail!706 l!1079)))))))

(assert (= (and d!44711 (not res!24399)) b!53598))

(assert (= (and b!53598 res!24400) b!53599))

(declare-fun m!57482 () Bool)

(assert (=> b!53599 m!57482))

(assert (=> start!7436 d!44711))

(declare-fun d!44713 () Bool)

(declare-fun res!24401 () Bool)

(declare-fun e!27949 () Bool)

(assert (=> d!44713 (=> res!24401 e!27949)))

(assert (=> d!44713 (= res!24401 (or (is-Nil!421 l!1092) (and (is-Cons!420 l!1092) (is-Nil!421 (tail!706 l!1092)))))))

(assert (=> d!44713 (= (isSorted!5 l!1092) e!27949)))

(declare-fun b!53600 () Bool)

(declare-fun e!27950 () Bool)

(assert (=> b!53600 (= e!27949 e!27950)))

(declare-fun res!24402 () Bool)

(assert (=> b!53600 (=> (not res!24402) (not e!27950))))

(assert (=> b!53600 (= res!24402 (bvsle (head!680 l!1092) (head!680 (tail!706 l!1092))))))

(declare-fun b!53601 () Bool)

(assert (=> b!53601 (= e!27950 (isSorted!5 (Cons!420 (head!680 (tail!706 l!1092)) (tail!706 (tail!706 l!1092)))))))

(assert (= (and d!44713 (not res!24401)) b!53600))

(assert (= (and b!53600 res!24402) b!53601))

(declare-fun m!57484 () Bool)

(assert (=> b!53601 m!57484))

(assert (=> b!53593 d!44713))

(push 1)

(assert (not b!53601))

(assert (not b!53599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

