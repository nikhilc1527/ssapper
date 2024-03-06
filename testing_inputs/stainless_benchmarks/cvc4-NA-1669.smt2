; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11590 () Bool)

(assert start!11590)

(declare-fun res!46435 () Bool)

(declare-fun e!48224 () Bool)

(assert (=> start!11590 (=> (not res!46435) (not e!48224))))

(declare-datatypes () ((T!6001 (T!6002 (val!193 Int)))))

(declare-datatypes () ((List!737 (Cons!691 (h!1095 T!6001) (t!48736 List!737)) (Nil!693))))

(declare-fun l!1632 () List!737)

(declare-fun res!45967 () List!737)

(assert (=> start!11590 (= res!46435 (and (is-Nil!693 l!1632) (= res!45967 l!1632)))))

(assert (=> start!11590 e!48224))

(declare-fun e!48221 () Bool)

(assert (=> start!11590 e!48221))

(declare-fun e!48222 () Bool)

(assert (=> start!11590 e!48222))

(declare-fun b!88719 () Bool)

(declare-fun e!48223 () Bool)

(assert (=> b!88719 (= e!48224 e!48223)))

(declare-fun res!46436 () Bool)

(assert (=> b!88719 (=> res!46436 e!48223)))

(declare-fun content!161 (List!737) (Set T!6001))

(assert (=> b!88719 (= res!46436 (not (= (content!161 res!45967) (content!161 l!1632))))))

(declare-fun b!88722 () Bool)

(declare-fun tp_is_empty!381 () Bool)

(declare-fun tp!17323 () Bool)

(assert (=> b!88722 (= e!48222 (and tp_is_empty!381 tp!17323))))

(declare-fun b!88721 () Bool)

(declare-fun tp!17322 () Bool)

(assert (=> b!88721 (= e!48221 (and tp_is_empty!381 tp!17322))))

(declare-fun b!88720 () Bool)

(declare-fun length!13 (List!737) Int)

(assert (=> b!88720 (= e!48223 (not (= (length!13 res!45967) (length!13 l!1632))))))

(assert (= (and start!11590 res!46435) b!88719))

(assert (= (and b!88719 (not res!46436)) b!88720))

(assert (= (and start!11590 (is-Cons!691 l!1632)) b!88721))

(assert (= (and start!11590 (is-Cons!691 res!45967)) b!88722))

(declare-fun m!84864 () Bool)

(assert (=> b!88719 m!84864))

(declare-fun m!84866 () Bool)

(assert (=> b!88719 m!84866))

(declare-fun m!84868 () Bool)

(assert (=> b!88720 m!84868))

(declare-fun m!84870 () Bool)

(assert (=> b!88720 m!84870))

(push 1)

(assert (not b!88722))

(assert (not b!88721))

(assert tp_is_empty!381)

(assert (not b!88720))

(assert (not b!88719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

