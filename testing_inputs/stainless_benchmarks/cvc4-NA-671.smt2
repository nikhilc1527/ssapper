; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4776 () Bool)

(assert start!4776)

(declare-fun b!37467 () Bool)

(declare-fun b_free!2241 () Bool)

(declare-fun b_next!5411 () Bool)

(assert (=> b!37467 (= b_free!2241 (not b_next!5411))))

(declare-fun tp!7436 () Bool)

(declare-fun b_and!8131 () Bool)

(assert (=> b!37467 (= tp!7436 b_and!8131)))

(declare-fun b_free!2243 () Bool)

(declare-fun b_next!5413 () Bool)

(assert (=> b!37467 (= b_free!2243 (not b_next!5413))))

(declare-fun tp!7434 () Bool)

(declare-fun b_and!8133 () Bool)

(assert (=> b!37467 (= tp!7434 b_and!8133)))

(declare-fun b_free!2245 () Bool)

(declare-fun b_next!5415 () Bool)

(assert (=> b!37467 (= b_free!2245 (not b_next!5415))))

(declare-fun tp!7438 () Bool)

(declare-fun b_and!8135 () Bool)

(assert (=> b!37467 (= tp!7438 b_and!8135)))

(declare-fun b!37462 () Bool)

(declare-fun b_free!2247 () Bool)

(declare-fun b_next!5417 () Bool)

(assert (=> b!37462 (= b_free!2247 (not b_next!5417))))

(declare-fun tp!7437 () Bool)

(declare-fun b_and!8137 () Bool)

(assert (=> b!37462 (= tp!7437 b_and!8137)))

(declare-fun b_free!2249 () Bool)

(declare-fun b_next!5419 () Bool)

(assert (=> b!37462 (= b_free!2249 (not b_next!5419))))

(declare-fun tp!7440 () Bool)

(declare-fun b_and!8139 () Bool)

(assert (=> b!37462 (= tp!7440 b_and!8139)))

(declare-fun b_free!2251 () Bool)

(declare-fun b_next!5421 () Bool)

(assert (=> b!37462 (= b_free!2251 (not b_next!5421))))

(declare-fun tp!7439 () Bool)

(declare-fun b_and!8141 () Bool)

(assert (=> b!37462 (= tp!7439 b_and!8141)))

(declare-fun b!37465 () Bool)

(declare-fun b_free!2253 () Bool)

(declare-fun b_next!5423 () Bool)

(assert (=> b!37465 (= b_free!2253 (not b_next!5423))))

(declare-fun tp!7433 () Bool)

(declare-fun b_and!8143 () Bool)

(assert (=> b!37465 (= tp!7433 b_and!8143)))

(declare-fun b_free!2255 () Bool)

(declare-fun b_next!5425 () Bool)

(assert (=> b!37465 (= b_free!2255 (not b_next!5425))))

(declare-fun tp!7441 () Bool)

(declare-fun b_and!8145 () Bool)

(assert (=> b!37465 (= tp!7441 b_and!8145)))

(declare-fun b_free!2257 () Bool)

(declare-fun b_next!5427 () Bool)

(assert (=> b!37465 (= b_free!2257 (not b_next!5427))))

(declare-fun tp!7435 () Bool)

(declare-fun b_and!8147 () Bool)

(assert (=> b!37465 (= tp!7435 b_and!8147)))

(declare-fun e!19265 () Bool)

(assert (=> b!37462 (= e!19265 (and tp!7437 tp!7440 tp!7439))))

(declare-fun b!37463 () Bool)

(declare-fun e!19266 () Bool)

(assert (=> b!37463 (= e!19266 false)))

(declare-fun res!17812 () Bool)

(assert (=> start!4776 (=> (not res!17812) (not e!19266))))

(declare-datatypes () ((Nat!32 (Zero!16) (Succ!13 (n!1095 Nat!32)))))

(declare-fun n2!375 () Nat!32)

(declare-fun n3!64 () Nat!32)

(declare-fun n1!359 () Nat!32)

(declare-fun n4!2 () Nat!32)

(declare-fun pair!0 (Nat!32 Nat!32) Nat!32)

(assert (=> start!4776 (= res!17812 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4776 e!19266))

(declare-datatypes () ((RAEqEvidence!16 (RAEqEvidence!17 (x!13072 Int) (y!1347 Int) (evidence!460 Int)))))

(declare-fun prev!780 () RAEqEvidence!16)

(declare-fun e!19263 () Bool)

(declare-fun inv!657 (RAEqEvidence!16) Bool)

(assert (=> start!4776 (and (inv!657 prev!780) e!19263)))

(assert (=> start!4776 true))

(declare-fun x$106!1 () RAEqEvidence!16)

(assert (=> start!4776 (and (inv!657 x$106!1) e!19265)))

(declare-datatypes () ((Unit!281 (Unit!282))))

(declare-datatypes () ((RAEqEvidence!18 (RAEqEvidence!19 (x!13073 Int) (y!1348 Int) (evidence!461 Int)))))

(declare-fun thiss!6490 () RAEqEvidence!18)

(declare-fun e!19264 () Bool)

(declare-fun inv!658 (RAEqEvidence!18) Bool)

(assert (=> start!4776 (and (inv!658 thiss!6490) e!19264)))

(declare-fun b!37464 () Bool)

(declare-fun res!17809 () Bool)

(assert (=> b!37464 (=> (not res!17809) (not e!19266))))

(declare-fun tmp!238 () Unit!281)

(declare-fun inverse_lemma!0 (Nat!32 Nat!32) Unit!281)

(assert (=> b!37464 (= res!17809 (= tmp!238 (inverse_lemma!0 n1!359 n2!375)))))

(assert (=> b!37465 (= e!19264 (and tp!7433 tp!7441 tp!7435))))

(declare-fun b!37466 () Bool)

(declare-fun res!17810 () Bool)

(assert (=> b!37466 (=> (not res!17810) (not e!19266))))

(declare-datatypes () ((tuple2!158 (tuple2!159 (_1!105 Nat!32) (_2!105 Nat!32)))))

(declare-fun project!0 (Nat!32) tuple2!158)

(assert (=> b!37466 (= res!17810 (= (project!0 (pair!0 n1!359 n2!375)) (project!0 (pair!0 n3!64 n4!2))))))

(assert (=> b!37467 (= e!19263 (and tp!7436 tp!7434 tp!7438))))

(declare-fun b!37468 () Bool)

(declare-fun res!17811 () Bool)

(assert (=> b!37468 (=> (not res!17811) (not e!19266))))

(declare-fun tmp!239 () Unit!281)

(assert (=> b!37468 (= res!17811 (= tmp!239 (inverse_lemma!0 n3!64 n4!2)))))

(assert (= (and start!4776 res!17812) b!37466))

(assert (= (and b!37466 res!17810) b!37464))

(assert (= (and b!37464 res!17809) b!37468))

(assert (= (and b!37468 res!17811) b!37463))

(assert (= start!4776 b!37467))

(assert (= start!4776 b!37462))

(assert (= start!4776 b!37465))

(declare-fun m!38765 () Bool)

(assert (=> start!4776 m!38765))

(declare-fun m!38767 () Bool)

(assert (=> start!4776 m!38767))

(declare-fun m!38769 () Bool)

(assert (=> start!4776 m!38769))

(declare-fun m!38771 () Bool)

(assert (=> start!4776 m!38771))

(declare-fun m!38773 () Bool)

(assert (=> start!4776 m!38773))

(declare-fun m!38775 () Bool)

(assert (=> b!37464 m!38775))

(assert (=> b!37466 m!38765))

(assert (=> b!37466 m!38765))

(declare-fun m!38777 () Bool)

(assert (=> b!37466 m!38777))

(assert (=> b!37466 m!38773))

(assert (=> b!37466 m!38773))

(declare-fun m!38779 () Bool)

(assert (=> b!37466 m!38779))

(declare-fun m!38781 () Bool)

(assert (=> b!37468 m!38781))

(push 1)

(assert (not b_next!5411))

(assert b_and!8145)

(assert (not b!37466))

(assert b_and!8139)

(assert (not b_next!5419))

(assert (not b_next!5415))

(assert (not b_next!5413))

(assert b_and!8135)

(assert b_and!8143)

(assert (not b_next!5427))

(assert (not start!4776))

(assert (not b!37468))

(assert b_and!8133)

(assert b_and!8137)

(assert b_and!8131)

(assert (not b_next!5423))

(assert b_and!8147)

(assert (not b_next!5417))

(assert b_and!8141)

(assert (not b_next!5425))

(assert (not b!37464))

(assert (not b_next!5421))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5411))

(assert b_and!8145)

(assert b_and!8139)

(assert (not b_next!5419))

(assert (not b_next!5415))

(assert (not b_next!5413))

(assert b_and!8135)

(assert b_and!8143)

(assert (not b_next!5427))

(assert b_and!8133)

(assert b_and!8137)

(assert b_and!8131)

(assert (not b_next!5423))

(assert b_and!8147)

(assert (not b_next!5417))

(assert b_and!8141)

(assert (not b_next!5425))

(assert (not b_next!5421))

(check-sat)

(pop 1)

