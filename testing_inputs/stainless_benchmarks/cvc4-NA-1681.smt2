; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11714 () Bool)

(assert start!11714)

(declare-fun b!89650 () Bool)

(declare-fun res!46919 () Bool)

(declare-fun e!48898 () Bool)

(assert (=> b!89650 (=> (not res!46919) (not e!48898))))

(declare-datatypes () ((T!6025 (T!6026 (val!205 Int)))))

(declare-datatypes () ((tuple2!424 (tuple2!425 (_1!247 T!6025) (_2!247 Int)))))

(declare-datatypes () ((List!753 (Cons!707 (h!1111 tuple2!424) (t!48855 List!753)) (Nil!709))))

(declare-fun l!1559 () List!753)

(declare-fun n!1710 () Int)

(declare-fun l!1556 () List!753)

(declare-fun n!1713 () Int)

(assert (=> b!89650 (= res!46919 (and (is-Cons!707 l!1556) (= l!1559 (t!48855 l!1556)) (= n!1713 n!1710)))))

(declare-fun res!46920 () Bool)

(assert (=> start!11714 (=> (not res!46920) (not e!48898))))

(declare-fun l2AtLeast!13 (List!753 Int) Bool)

(assert (=> start!11714 (= res!46920 (l2AtLeast!13 l!1556 (+ n!1710 1)))))

(assert (=> start!11714 e!48898))

(declare-fun e!48896 () Bool)

(assert (=> start!11714 e!48896))

(assert (=> start!11714 true))

(declare-fun e!48897 () Bool)

(assert (=> start!11714 e!48897))

(declare-fun b!89653 () Bool)

(declare-fun tp_is_empty!405 () Bool)

(declare-fun tp!17543 () Bool)

(assert (=> b!89653 (= e!48897 (and tp_is_empty!405 tp!17543))))

(declare-fun b!89652 () Bool)

(declare-fun tp!17542 () Bool)

(assert (=> b!89652 (= e!48896 (and tp_is_empty!405 tp!17542))))

(declare-fun b!89651 () Bool)

(assert (=> b!89651 (= e!48898 (not (l2AtLeast!13 l!1559 (+ n!1713 1))))))

(assert (= (and start!11714 res!46920) b!89650))

(assert (= (and b!89650 res!46919) b!89651))

(assert (= (and start!11714 (is-Cons!707 l!1556)) b!89652))

(assert (= (and start!11714 (is-Cons!707 l!1559)) b!89653))

(declare-fun m!85626 () Bool)

(assert (=> start!11714 m!85626))

(declare-fun m!85628 () Bool)

(assert (=> b!89651 m!85628))

(push 1)

(assert (not b!89651))

(assert (not b!89653))

(assert (not b!89652))

(assert (not start!11714))

(assert tp_is_empty!405)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59245 () Bool)

(declare-fun res!46925 () Bool)

(declare-fun e!48903 () Bool)

(assert (=> d!59245 (=> res!46925 e!48903)))

(assert (=> d!59245 (= res!46925 (is-Nil!709 l!1556))))

(assert (=> d!59245 (= (l2AtLeast!13 l!1556 (+ n!1710 1)) e!48903)))

(declare-fun b!89658 () Bool)

(declare-fun e!48904 () Bool)

(assert (=> b!89658 (= e!48903 e!48904)))

(declare-fun res!46926 () Bool)

(assert (=> b!89658 (=> (not res!46926) (not e!48904))))

(assert (=> b!89658 (= res!46926 (<= (+ n!1710 1) (_2!247 (h!1111 l!1556))))))

(declare-fun b!89659 () Bool)

(assert (=> b!89659 (= e!48904 (l2AtLeast!13 (t!48855 l!1556) (+ n!1710 1)))))

(assert (= (and d!59245 (not res!46925)) b!89658))

(assert (= (and b!89658 res!46926) b!89659))

(declare-fun m!85630 () Bool)

(assert (=> b!89659 m!85630))

(assert (=> start!11714 d!59245))

(declare-fun d!59247 () Bool)

(declare-fun res!46927 () Bool)

(declare-fun e!48905 () Bool)

(assert (=> d!59247 (=> res!46927 e!48905)))

(assert (=> d!59247 (= res!46927 (is-Nil!709 l!1559))))

(assert (=> d!59247 (= (l2AtLeast!13 l!1559 (+ n!1713 1)) e!48905)))

(declare-fun b!89660 () Bool)

(declare-fun e!48906 () Bool)

(assert (=> b!89660 (= e!48905 e!48906)))

(declare-fun res!46928 () Bool)

(assert (=> b!89660 (=> (not res!46928) (not e!48906))))

(assert (=> b!89660 (= res!46928 (<= (+ n!1713 1) (_2!247 (h!1111 l!1559))))))

(declare-fun b!89661 () Bool)

(assert (=> b!89661 (= e!48906 (l2AtLeast!13 (t!48855 l!1559) (+ n!1713 1)))))

(assert (= (and d!59247 (not res!46927)) b!89660))

(assert (= (and b!89660 res!46928) b!89661))

(declare-fun m!85632 () Bool)

(assert (=> b!89661 m!85632))

(assert (=> b!89651 d!59247))

(declare-fun b!89666 () Bool)

(declare-fun e!48909 () Bool)

(declare-fun tp!17546 () Bool)

(assert (=> b!89666 (= e!48909 (and tp_is_empty!405 tp!17546))))

(assert (=> b!89652 (= tp!17542 e!48909)))

(assert (= (and b!89652 (is-Cons!707 (t!48855 l!1556))) b!89666))

(declare-fun b!89667 () Bool)

(declare-fun e!48910 () Bool)

(declare-fun tp!17547 () Bool)

(assert (=> b!89667 (= e!48910 (and tp_is_empty!405 tp!17547))))

(assert (=> b!89653 (= tp!17543 e!48910)))

(assert (= (and b!89653 (is-Cons!707 (t!48855 l!1559))) b!89667))

(push 1)

(assert (not b!89661))

(assert (not b!89659))

(assert (not b!89666))

(assert (not b!89667))

(assert tp_is_empty!405)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

