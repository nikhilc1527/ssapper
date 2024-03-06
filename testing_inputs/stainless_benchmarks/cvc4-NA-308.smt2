; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2362 () Bool)

(assert start!2362)

(declare-fun b_free!1665 () Bool)

(declare-fun b_next!4005 () Bool)

(assert (=> start!2362 (= b_free!1665 (not b_next!4005))))

(declare-fun tp!2668 () Bool)

(declare-fun b_and!5871 () Bool)

(assert (=> start!2362 (= tp!2668 b_and!5871)))

(declare-fun b!11757 () Bool)

(declare-fun b_free!1667 () Bool)

(declare-fun b_next!4007 () Bool)

(assert (=> b!11757 (= b_free!1667 (not b_next!4007))))

(declare-fun tp!2670 () Bool)

(declare-fun b_and!5873 () Bool)

(assert (=> b!11757 (= tp!2670 b_and!5873)))

(declare-fun b_free!1669 () Bool)

(declare-fun b_next!4009 () Bool)

(assert (=> b!11757 (= b_free!1669 (not b_next!4009))))

(declare-fun tp!2667 () Bool)

(declare-fun b_and!5875 () Bool)

(assert (=> b!11757 (= tp!2667 b_and!5875)))

(declare-fun b_free!1671 () Bool)

(declare-fun b_next!4011 () Bool)

(assert (=> b!11757 (= b_free!1671 (not b_next!4011))))

(declare-fun tp!2666 () Bool)

(declare-fun b_and!5877 () Bool)

(assert (=> b!11757 (= tp!2666 b_and!5877)))

(declare-fun b!11758 () Bool)

(declare-fun b_free!1673 () Bool)

(declare-fun b_next!4013 () Bool)

(assert (=> b!11758 (= b_free!1673 (not b_next!4013))))

(declare-fun tp!2669 () Bool)

(declare-fun b_and!5879 () Bool)

(assert (=> b!11758 (= tp!2669 b_and!5879)))

(declare-fun b_free!1675 () Bool)

(declare-fun b_next!4015 () Bool)

(assert (=> b!11758 (= b_free!1675 (not b_next!4015))))

(declare-fun tp!2671 () Bool)

(declare-fun b_and!5881 () Bool)

(assert (=> b!11758 (= tp!2671 b_and!5881)))

(declare-fun b_free!1677 () Bool)

(declare-fun b_next!4017 () Bool)

(assert (=> b!11758 (= b_free!1677 (not b_next!4017))))

(declare-fun tp!2665 () Bool)

(declare-fun b_and!5883 () Bool)

(assert (=> b!11758 (= tp!2665 b_and!5883)))

(assert (=> start!2362 false))

(assert (=> start!2362 tp!2668))

(assert (=> start!2362 true))

(declare-datatypes () ((Balance!325 (Balance!326 (extraOpen!203 Int) (extraClose!203 Int)))))

(declare-datatypes () ((EqEvidence!254 (EqEvidence!255 (x!6652 Int) (y!646 Int) (evidence!194 Int)))))

(declare-fun thiss!721 () EqEvidence!254)

(declare-fun e!6541 () Bool)

(declare-fun inv!391 (EqEvidence!254) Bool)

(assert (=> start!2362 (and (inv!391 thiss!721) e!6541)))

(declare-fun that!177 () EqEvidence!254)

(declare-fun e!6542 () Bool)

(assert (=> start!2362 (and (inv!391 that!177) e!6542)))

(assert (=> b!11757 (= e!6541 (and tp!2670 tp!2667 tp!2666))))

(assert (=> b!11758 (= e!6542 (and tp!2669 tp!2671 tp!2665))))

(assert (= start!2362 b!11757))

(assert (= start!2362 b!11758))

(declare-fun m!14689 () Bool)

(assert (=> start!2362 m!14689))

(declare-fun m!14691 () Bool)

(assert (=> start!2362 m!14691))

(push 1)

(assert b_and!5879)

(assert (not start!2362))

(assert (not b_next!4007))

(assert (not b_next!4015))

(assert b_and!5881)

(assert (not b_next!4009))

(assert b_and!5875)

(assert b_and!5883)

(assert (not b_next!4011))

(assert b_and!5873)

(assert b_and!5871)

(assert b_and!5877)

(assert (not b_next!4017))

(assert (not b_next!4013))

(assert (not b_next!4005))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5879)

(assert (not b_next!4007))

(assert (not b_next!4015))

(assert b_and!5881)

(assert (not b_next!4009))

(assert b_and!5875)

(assert b_and!5883)

(assert (not b_next!4011))

(assert b_and!5873)

(assert b_and!5871)

(assert b_and!5877)

(assert (not b_next!4017))

(assert (not b_next!4013))

(assert (not b_next!4005))

(check-sat)

(pop 1)

