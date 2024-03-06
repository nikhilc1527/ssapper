; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!116 () Bool)

(assert start!116)

(declare-fun b!573 () Bool)

(declare-fun b_free!27 () Bool)

(declare-fun b_next!27 () Bool)

(assert (=> b!573 (= b_free!27 (not b_next!27))))

(declare-fun tp!136 () Bool)

(declare-fun b_and!137 () Bool)

(assert (=> b!573 (= tp!136 b_and!137)))

(declare-fun b_free!29 () Bool)

(declare-fun b_next!29 () Bool)

(assert (=> b!573 (= b_free!29 (not b_next!29))))

(declare-fun tp!139 () Bool)

(declare-fun b_and!139 () Bool)

(assert (=> b!573 (= tp!139 b_and!139)))

(declare-fun b!577 () Bool)

(declare-fun b_free!31 () Bool)

(declare-fun b_next!31 () Bool)

(assert (=> b!577 (= b_free!31 (not b_next!31))))

(declare-fun tp!138 () Bool)

(declare-fun b_and!141 () Bool)

(assert (=> b!577 (= tp!138 b_and!141)))

(declare-fun m!397 () Bool)

(assert (=> start!116 m!397))

(declare-fun b!570 () Bool)

(declare-fun res!492 () Bool)

(declare-fun e!410 () Bool)

(assert (=> b!570 (=> (not res!492) (not e!410))))

(declare-datatypes () ((A!554 (A!555 (val!4 Int)))))

(declare-datatypes () ((List!41 (Cons!42 (h!170 A!554) (t!352 List!41)) (Nil!43))))

(declare-fun l!312 () List!41)

(declare-datatypes () ((B!289 (B!290 (val!5 Int)))))

(declare-datatypes () ((~>!8 (~>!9 (pre!17 Int) (f!376 Int)))))

(declare-datatypes () ((~>>!9 (~>>!10 (f!377 ~>!8) (post!13 Int)))))

(declare-fun f!367 () ~>>!9)

(declare-datatypes () ((List!42 (Cons!43 (h!171 B!289) (t!353 List!42)) (Nil!44))))

(declare-fun res!414 () List!42)

(declare-fun apply!38 (~>>!9 A!554) B!289)

(declare-fun map!60 (List!41 ~>>!9) List!42)

(assert (=> b!570 (= res!492 (= res!414 (Cons!43 (apply!38 f!367 (h!170 l!312)) (map!60 (t!352 l!312) f!367))))))

(declare-fun b!571 () Bool)

(declare-fun e!411 () Bool)

(declare-fun tp_is_empty!9 () Bool)

(declare-fun tp!137 () Bool)

(assert (=> b!571 (= e!411 (and tp_is_empty!9 tp!137))))

(declare-fun res!494 () Bool)

(assert (=> start!116 (=> (not res!494) (not e!410))))

(assert (=> start!116 (= res!494 true)))

(assert (=> start!116 true))

(assert (=> start!116 e!410))

(declare-fun e!412 () Bool)

(assert (=> start!116 e!412))

(declare-fun e!409 () Bool)

(declare-fun inv!102 (~>>!9) Bool)

(assert (=> start!116 (and (inv!102 f!367) e!409)))

(assert (=> start!116 e!411))

(assert (=> start!116 tp_is_empty!9))

(declare-fun b!572 () Bool)

(declare-fun res!491 () Bool)

(assert (=> b!572 (=> (not res!491) (not e!410))))

(declare-fun x!595 () B!289)

(declare-fun contains!27 (List!42 B!289) Bool)

(assert (=> b!572 (= res!491 (contains!27 res!414 x!595))))

(declare-fun e!413 () Bool)

(assert (=> b!573 (= e!413 (and tp!136 tp!139))))

(declare-fun b!574 () Bool)

(declare-fun tp_is_empty!7 () Bool)

(declare-fun tp!135 () Bool)

(assert (=> b!574 (= e!412 (and tp_is_empty!7 tp!135))))

(declare-fun b!575 () Bool)

(assert (=> b!575 (= e!410 false)))

(declare-fun b!576 () Bool)

(declare-fun res!493 () Bool)

(assert (=> b!576 (=> (not res!493) (not e!410))))

(assert (=> b!576 (= res!493 (is-Cons!42 l!312))))

(assert (=> b!577 (= e!409 (and e!413 tp!138))))

(assert (= (and start!116 res!494) b!576))

(assert (= (and b!576 res!493) b!570))

(assert (= (and b!570 res!492) b!572))

(assert (= (and b!572 res!491) b!575))

(assert (= (and start!116 (is-Cons!42 l!312)) b!574))

(assert (= b!577 b!573))

(assert (= start!116 b!577))

(assert (= (and start!116 (is-Cons!43 res!414)) b!571))

(declare-fun m!399 () Bool)

(assert (=> b!570 m!399))

(declare-fun m!401 () Bool)

(assert (=> b!570 m!401))

(declare-fun m!403 () Bool)

(assert (=> start!116 m!403))

(declare-fun m!405 () Bool)

(assert (=> b!572 m!405))

(push 1)

(assert (not b_next!27))

(assert (not b!572))

(assert tp_is_empty!7)

(assert (not b!570))

(assert tp_is_empty!9)

(assert b_and!139)

(assert b_and!137)

(assert (not b!571))

(assert b_and!141)

(assert (not b_next!31))

(assert (not b_next!29))

(assert (not b!574))

(assert (not start!116))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!27))

(assert b_and!139)

(assert b_and!137)

(assert b_and!141)

(assert (not b_next!31))

(assert (not b_next!29))

(check-sat)

(pop 1)

