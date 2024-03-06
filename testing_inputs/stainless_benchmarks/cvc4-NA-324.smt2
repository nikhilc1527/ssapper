; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2470 () Bool)

(assert start!2470)

(declare-fun b_free!1877 () Bool)

(declare-fun b_next!4447 () Bool)

(assert (=> start!2470 (= b_free!1877 (not b_next!4447))))

(declare-fun tp!2989 () Bool)

(declare-fun b_and!6581 () Bool)

(assert (=> start!2470 (= tp!2989 b_and!6581)))

(declare-fun b!12250 () Bool)

(declare-fun b_free!1879 () Bool)

(declare-fun b_next!4449 () Bool)

(assert (=> b!12250 (= b_free!1879 (not b_next!4449))))

(declare-fun tp!2983 () Bool)

(declare-fun b_and!6583 () Bool)

(assert (=> b!12250 (= tp!2983 b_and!6583)))

(declare-fun b_free!1881 () Bool)

(declare-fun b_next!4451 () Bool)

(assert (=> b!12250 (= b_free!1881 (not b_next!4451))))

(declare-fun tp!2986 () Bool)

(declare-fun b_and!6585 () Bool)

(assert (=> b!12250 (= tp!2986 b_and!6585)))

(declare-fun b_free!1883 () Bool)

(declare-fun b_next!4453 () Bool)

(assert (=> b!12250 (= b_free!1883 (not b_next!4453))))

(declare-fun tp!2984 () Bool)

(declare-fun b_and!6587 () Bool)

(assert (=> b!12250 (= tp!2984 b_and!6587)))

(declare-fun b!12251 () Bool)

(declare-fun b_free!1885 () Bool)

(declare-fun b_next!4455 () Bool)

(assert (=> b!12251 (= b_free!1885 (not b_next!4455))))

(declare-fun tp!2988 () Bool)

(declare-fun b_and!6589 () Bool)

(assert (=> b!12251 (= tp!2988 b_and!6589)))

(declare-fun b_free!1887 () Bool)

(declare-fun b_next!4457 () Bool)

(assert (=> b!12251 (= b_free!1887 (not b_next!4457))))

(declare-fun tp!2985 () Bool)

(declare-fun b_and!6591 () Bool)

(assert (=> b!12251 (= tp!2985 b_and!6591)))

(declare-fun b_free!1889 () Bool)

(declare-fun b_next!4459 () Bool)

(assert (=> b!12251 (= b_free!1889 (not b_next!4459))))

(declare-fun tp!2987 () Bool)

(declare-fun b_and!6593 () Bool)

(assert (=> b!12251 (= tp!2987 b_and!6593)))

(assert (=> start!2470 false))

(assert (=> start!2470 tp!2989))

(declare-datatypes () ((Balance!357 (Balance!358 (extraOpen!219 Int) (extraClose!219 Int)))))

(declare-datatypes () ((EqEvidence!284 (EqEvidence!285 (x!7059 Int) (y!668 Int) (evidence!209 Int)))))

(declare-fun that!193 () EqEvidence!284)

(declare-fun e!6736 () Bool)

(declare-fun inv!413 (EqEvidence!284) Bool)

(assert (=> start!2470 (and (inv!413 that!193) e!6736)))

(assert (=> start!2470 true))

(declare-fun thiss!745 () EqEvidence!284)

(declare-fun e!6737 () Bool)

(assert (=> start!2470 (and (inv!413 thiss!745) e!6737)))

(assert (=> b!12250 (= e!6736 (and tp!2983 tp!2986 tp!2984))))

(assert (=> b!12251 (= e!6737 (and tp!2988 tp!2985 tp!2987))))

(assert (= start!2470 b!12250))

(assert (= start!2470 b!12251))

(declare-fun m!15233 () Bool)

(assert (=> start!2470 m!15233))

(declare-fun m!15235 () Bool)

(assert (=> start!2470 m!15235))

(push 1)

(assert b_and!6583)

(assert (not b_next!4457))

(assert b_and!6591)

(assert b_and!6585)

(assert (not b_next!4451))

(assert b_and!6581)

(assert (not b_next!4453))

(assert (not b_next!4449))

(assert (not start!2470))

(assert (not b_next!4447))

(assert b_and!6587)

(assert (not b_next!4455))

(assert b_and!6593)

(assert b_and!6589)

(assert (not b_next!4459))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6583)

(assert (not b_next!4457))

(assert b_and!6591)

(assert b_and!6585)

(assert (not b_next!4451))

(assert b_and!6581)

(assert (not b_next!4453))

(assert (not b_next!4449))

(assert (not b_next!4447))

(assert b_and!6587)

(assert (not b_next!4455))

(assert b_and!6593)

(assert b_and!6589)

(assert (not b_next!4459))

(check-sat)

(pop 1)

