; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11698 () Bool)

(assert start!11698)

(declare-fun res!46892 () Bool)

(declare-fun e!48844 () Bool)

(assert (=> start!11698 (=> (not res!46892) (not e!48844))))

(declare-datatypes () ((T!6021 (T!6022 (val!203 Int)))))

(declare-datatypes () ((List!749 (Cons!703 (h!1107 T!6021) (t!48849 List!749)) (Nil!705))))

(declare-fun l!1621 () List!749)

(declare-datatypes () ((tuple2!420 (tuple2!421 (_1!245 T!6021) (_2!245 Int)))))

(declare-datatypes () ((List!750 (Cons!704 (h!1108 tuple2!420) (t!48850 List!750)) (Nil!706))))

(declare-fun res!45963 () List!750)

(assert (=> start!11698 (= res!46892 (and (is-Nil!705 l!1621) (= res!45963 Nil!706)))))

(assert (=> start!11698 e!48844))

(declare-fun e!48846 () Bool)

(assert (=> start!11698 e!48846))

(declare-fun e!48845 () Bool)

(assert (=> start!11698 e!48845))

(assert (=> start!11698 true))

(declare-fun b!89576 () Bool)

(declare-fun n!1748 () Int)

(declare-fun l2AtLeast!11 (List!750 Int) Bool)

(assert (=> b!89576 (= e!48844 (not (l2AtLeast!11 res!45963 n!1748)))))

(declare-fun b!89577 () Bool)

(declare-fun tp_is_empty!401 () Bool)

(declare-fun tp!17514 () Bool)

(assert (=> b!89577 (= e!48846 (and tp_is_empty!401 tp!17514))))

(declare-fun b!89578 () Bool)

(declare-fun tp!17515 () Bool)

(assert (=> b!89578 (= e!48845 (and tp_is_empty!401 tp!17515))))

(assert (= (and start!11698 res!46892) b!89576))

(assert (= (and start!11698 (is-Cons!703 l!1621)) b!89577))

(assert (= (and start!11698 (is-Cons!704 res!45963)) b!89578))

(declare-fun m!85594 () Bool)

(assert (=> b!89576 m!85594))

(push 1)

(assert (not b!89576))

(assert (not b!89578))

(assert (not b!89577))

(assert tp_is_empty!401)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59233 () Bool)

(declare-fun res!46897 () Bool)

(declare-fun e!48851 () Bool)

(assert (=> d!59233 (=> res!46897 e!48851)))

(assert (=> d!59233 (= res!46897 (is-Nil!706 res!45963))))

(assert (=> d!59233 (= (l2AtLeast!11 res!45963 n!1748) e!48851)))

(declare-fun b!89583 () Bool)

(declare-fun e!48852 () Bool)

(assert (=> b!89583 (= e!48851 e!48852)))

(declare-fun res!46898 () Bool)

(assert (=> b!89583 (=> (not res!46898) (not e!48852))))

(assert (=> b!89583 (= res!46898 (<= n!1748 (_2!245 (h!1108 res!45963))))))

(declare-fun b!89584 () Bool)

(assert (=> b!89584 (= e!48852 (l2AtLeast!11 (t!48850 res!45963) n!1748))))

(assert (= (and d!59233 (not res!46897)) b!89583))

(assert (= (and b!89583 res!46898) b!89584))

(declare-fun m!85596 () Bool)

(assert (=> b!89584 m!85596))

(assert (=> b!89576 d!59233))

(declare-fun b!89589 () Bool)

(declare-fun e!48855 () Bool)

(declare-fun tp!17518 () Bool)

(assert (=> b!89589 (= e!48855 (and tp_is_empty!401 tp!17518))))

(assert (=> b!89578 (= tp!17515 e!48855)))

(assert (= (and b!89578 (is-Cons!704 (t!48850 res!45963))) b!89589))

(declare-fun b!89594 () Bool)

(declare-fun e!48858 () Bool)

(declare-fun tp!17521 () Bool)

(assert (=> b!89594 (= e!48858 (and tp_is_empty!401 tp!17521))))

(assert (=> b!89577 (= tp!17514 e!48858)))

(assert (= (and b!89577 (is-Cons!703 (t!48849 l!1621))) b!89594))

(push 1)

(assert (not b!89584))

(assert (not b!89594))

(assert (not b!89589))

(assert tp_is_empty!401)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

