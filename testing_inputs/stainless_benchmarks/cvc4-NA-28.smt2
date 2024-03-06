; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!132 () Bool)

(assert start!132)

(declare-fun b!669 () Bool)

(declare-fun b_free!39 () Bool)

(declare-fun b_next!39 () Bool)

(assert (=> b!669 (= b_free!39 (not b_next!39))))

(declare-fun tp!175 () Bool)

(declare-fun b_and!173 () Bool)

(assert (=> b!669 (= tp!175 b_and!173)))

(declare-fun b_free!41 () Bool)

(declare-fun b_next!41 () Bool)

(assert (=> b!669 (= b_free!41 (not b_next!41))))

(declare-fun tp!172 () Bool)

(declare-fun b_and!175 () Bool)

(assert (=> b!669 (= tp!172 b_and!175)))

(declare-fun b!670 () Bool)

(declare-fun b_free!43 () Bool)

(declare-fun b_next!43 () Bool)

(assert (=> b!670 (= b_free!43 (not b_next!43))))

(declare-fun tp!174 () Bool)

(declare-fun b_and!177 () Bool)

(assert (=> b!670 (= tp!174 b_and!177)))

(declare-fun m!471 () Bool)

(assert (=> start!132 m!471))

(declare-fun e!486 () Bool)

(assert (=> b!669 (= e!486 (and tp!175 tp!172))))

(declare-fun e!485 () Bool)

(assert (=> b!670 (= e!485 (and e!486 tp!174))))

(declare-fun b!671 () Bool)

(declare-fun e!489 () Bool)

(declare-fun tp_is_empty!15 () Bool)

(declare-fun tp!171 () Bool)

(assert (=> b!671 (= e!489 (and tp_is_empty!15 tp!171))))

(declare-fun b!672 () Bool)

(declare-fun res!548 () Bool)

(declare-fun e!488 () Bool)

(assert (=> b!672 (=> (not res!548) (not e!488))))

(declare-datatypes () ((A!558 (A!559 (val!8 Int)))))

(declare-datatypes () ((List!45 (Cons!46 (h!174 A!558) (t!366 List!45)) (Nil!47))))

(declare-fun l!312 () List!45)

(declare-datatypes () ((B!293 (B!294 (val!9 Int)))))

(declare-datatypes () ((List!46 (Cons!47 (h!175 B!293) (t!367 List!46)) (Nil!48))))

(declare-fun res!417 () List!46)

(assert (=> b!672 (= res!548 (and (not (is-Cons!46 l!312)) (= res!417 Nil!48)))))

(declare-fun b!673 () Bool)

(assert (=> b!673 (= e!488 false)))

(declare-fun b!674 () Bool)

(declare-fun e!487 () Bool)

(declare-fun tp_is_empty!17 () Bool)

(declare-fun tp!173 () Bool)

(assert (=> b!674 (= e!487 (and tp_is_empty!17 tp!173))))

(declare-fun res!547 () Bool)

(assert (=> start!132 (=> (not res!547) (not e!488))))

(assert (=> start!132 (= res!547 true)))

(assert (=> start!132 true))

(assert (=> start!132 e!488))

(assert (=> start!132 e!489))

(declare-datatypes () ((~>!12 (~>!13 (pre!20 Int) (f!381 Int)))))

(declare-datatypes () ((~>>!13 (~>>!14 (f!382 ~>!12) (post!15 Int)))))

(declare-fun f!367 () ~>>!13)

(declare-fun inv!104 (~>>!13) Bool)

(assert (=> start!132 (and (inv!104 f!367) e!485)))

(assert (=> start!132 e!487))

(assert (=> start!132 tp_is_empty!17))

(declare-fun b!675 () Bool)

(declare-fun res!546 () Bool)

(assert (=> b!675 (=> (not res!546) (not e!488))))

(declare-fun x!595 () B!293)

(declare-fun contains!30 (List!46 B!293) Bool)

(assert (=> b!675 (= res!546 (contains!30 res!417 x!595))))

(assert (= (and start!132 res!547) b!672))

(assert (= (and b!672 res!548) b!675))

(assert (= (and b!675 res!546) b!673))

(assert (= (and start!132 (is-Cons!46 l!312)) b!671))

(assert (= b!670 b!669))

(assert (= start!132 b!670))

(assert (= (and start!132 (is-Cons!47 res!417)) b!674))

(declare-fun m!473 () Bool)

(assert (=> start!132 m!473))

(declare-fun m!475 () Bool)

(assert (=> b!675 m!475))

(push 1)

(assert (not b_next!43))

(assert (not start!132))

(assert (not b!674))

(assert b_and!175)

(assert tp_is_empty!17)

(assert tp_is_empty!15)

(assert (not b!675))

(assert (not b_next!39))

(assert b_and!173)

(assert (not b!671))

(assert b_and!177)

(assert (not b_next!41))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!43))

(assert b_and!175)

(assert (not b_next!39))

(assert b_and!173)

(assert b_and!177)

(assert (not b_next!41))

(check-sat)

(pop 1)

