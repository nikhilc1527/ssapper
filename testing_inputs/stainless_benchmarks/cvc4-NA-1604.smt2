; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11162 () Bool)

(assert start!11162)

(declare-fun b_free!7425 () Bool)

(declare-fun b_next!39609 () Bool)

(assert (=> start!11162 (= b_free!7425 (not b_next!39609))))

(declare-fun tp!17050 () Bool)

(declare-fun b_and!59107 () Bool)

(assert (=> start!11162 (= tp!17050 b_and!59107)))

(declare-fun b!85370 () Bool)

(declare-fun res!44306 () Bool)

(declare-fun e!46282 () Bool)

(assert (=> b!85370 (=> (not res!44306) (not e!46282))))

(declare-fun inductVal!909 () Bool)

(declare-fun p!802 () Int)

(declare-datatypes () ((List!702 (Cons!659 (h!1032 Int) (t!48133 List!702)) (Nil!661))))

(declare-fun ls!66 () List!702)

(declare-fun forall_last!0 (List!702 Int) Bool)

(assert (=> b!85370 (= res!44306 (= inductVal!909 (forall_last!0 (t!48133 ls!66) p!802)))))

(declare-fun b!85371 () Bool)

(declare-fun res!44303 () Bool)

(assert (=> b!85371 (=> (not res!44303) (not e!46282))))

(declare-fun isEmpty!694 (List!702) Bool)

(assert (=> b!85371 (= res!44303 (not (isEmpty!694 ls!66)))))

(declare-fun b!85372 () Bool)

(declare-fun thiss!9693 () List!702)

(assert (=> b!85372 (= e!46282 (isEmpty!694 thiss!9693))))

(declare-fun res!44305 () Bool)

(assert (=> start!11162 (=> (not res!44305) (not e!46282))))

(assert (=> start!11162 (= res!44305 (is-Cons!659 ls!66))))

(assert (=> start!11162 e!46282))

(assert (=> start!11162 true))

(assert (=> start!11162 tp!17050))

(declare-fun b!85373 () Bool)

(declare-fun res!44304 () Bool)

(assert (=> b!85373 (=> (not res!44304) (not e!46282))))

(declare-fun forall!50 (List!702 Int) Bool)

(assert (=> b!85373 (= res!44304 (forall!50 ls!66 p!802))))

(declare-fun b!85374 () Bool)

(declare-fun res!44307 () Bool)

(assert (=> b!85374 (=> (not res!44307) (not e!46282))))

(assert (=> b!85374 (= res!44307 (= thiss!9693 ls!66))))

(assert (= (and start!11162 res!44305) b!85370))

(assert (= (and b!85370 res!44306) b!85373))

(assert (= (and b!85373 res!44304) b!85371))

(assert (= (and b!85371 res!44303) b!85374))

(assert (= (and b!85374 res!44307) b!85372))

(declare-fun m!81226 () Bool)

(assert (=> b!85370 m!81226))

(declare-fun m!81228 () Bool)

(assert (=> b!85371 m!81228))

(declare-fun m!81230 () Bool)

(assert (=> b!85372 m!81230))

(declare-fun m!81232 () Bool)

(assert (=> b!85373 m!81232))

(push 1)

(assert (not b!85372))

(assert (not b_next!39609))

(assert (not b!85373))

(assert (not b!85371))

(assert (not b!85370))

(assert b_and!59107)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59107)

(assert (not b_next!39609))

(check-sat)

(pop 1)

