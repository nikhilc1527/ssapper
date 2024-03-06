; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2340 () Bool)

(assert start!2340)

(declare-fun b_free!1609 () Bool)

(declare-fun b_next!3889 () Bool)

(assert (=> start!2340 (= b_free!1609 (not b_next!3889))))

(declare-fun tp!2584 () Bool)

(declare-fun b_and!5713 () Bool)

(assert (=> start!2340 (= tp!2584 b_and!5713)))

(declare-fun b!11641 () Bool)

(declare-fun b_free!1611 () Bool)

(declare-fun b_next!3891 () Bool)

(assert (=> b!11641 (= b_free!1611 (not b_next!3891))))

(declare-fun tp!2581 () Bool)

(declare-fun b_and!5715 () Bool)

(assert (=> b!11641 (= tp!2581 b_and!5715)))

(declare-fun b_free!1613 () Bool)

(declare-fun b_next!3893 () Bool)

(assert (=> b!11641 (= b_free!1613 (not b_next!3893))))

(declare-fun tp!2586 () Bool)

(declare-fun b_and!5717 () Bool)

(assert (=> b!11641 (= tp!2586 b_and!5717)))

(declare-fun b_free!1615 () Bool)

(declare-fun b_next!3895 () Bool)

(assert (=> b!11641 (= b_free!1615 (not b_next!3895))))

(declare-fun tp!2583 () Bool)

(declare-fun b_and!5719 () Bool)

(assert (=> b!11641 (= tp!2583 b_and!5719)))

(declare-fun b!11642 () Bool)

(declare-fun b_free!1617 () Bool)

(declare-fun b_next!3897 () Bool)

(assert (=> b!11642 (= b_free!1617 (not b_next!3897))))

(declare-fun tp!2582 () Bool)

(declare-fun b_and!5721 () Bool)

(assert (=> b!11642 (= tp!2582 b_and!5721)))

(declare-fun b_free!1619 () Bool)

(declare-fun b_next!3899 () Bool)

(assert (=> b!11642 (= b_free!1619 (not b_next!3899))))

(declare-fun tp!2585 () Bool)

(declare-fun b_and!5723 () Bool)

(assert (=> b!11642 (= tp!2585 b_and!5723)))

(declare-fun b_free!1621 () Bool)

(declare-fun b_next!3901 () Bool)

(assert (=> b!11642 (= b_free!1621 (not b_next!3901))))

(declare-fun tp!2587 () Bool)

(declare-fun b_and!5725 () Bool)

(assert (=> b!11642 (= tp!2587 b_and!5725)))

(assert (=> start!2340 false))

(assert (=> start!2340 tp!2584))

(declare-datatypes () ((Balance!317 (Balance!318 (extraOpen!199 Int) (extraClose!199 Int)))))

(declare-datatypes () ((EqEvidence!246 (EqEvidence!247 (x!6586 Int) (y!641 Int) (evidence!190 Int)))))

(declare-fun thiss!722 () EqEvidence!246)

(declare-fun e!6496 () Bool)

(declare-fun inv!386 (EqEvidence!246) Bool)

(assert (=> start!2340 (and (inv!386 thiss!722) e!6496)))

(assert (=> start!2340 true))

(declare-fun that!176 () EqEvidence!246)

(declare-fun e!6495 () Bool)

(assert (=> start!2340 (and (inv!386 that!176) e!6495)))

(assert (=> b!11641 (= e!6496 (and tp!2581 tp!2586 tp!2583))))

(assert (=> b!11642 (= e!6495 (and tp!2582 tp!2585 tp!2587))))

(assert (= start!2340 b!11641))

(assert (= start!2340 b!11642))

(declare-fun m!14555 () Bool)

(assert (=> start!2340 m!14555))

(declare-fun m!14557 () Bool)

(assert (=> start!2340 m!14557))

(push 1)

(assert b_and!5725)

(assert (not b_next!3891))

(assert b_and!5721)

(assert (not b_next!3901))

(assert (not b_next!3895))

(assert b_and!5717)

(assert b_and!5723)

(assert b_and!5719)

(assert b_and!5713)

(assert (not b_next!3899))

(assert (not b_next!3897))

(assert (not start!2340))

(assert (not b_next!3889))

(assert b_and!5715)

(assert (not b_next!3893))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5725)

(assert (not b_next!3891))

(assert b_and!5721)

(assert (not b_next!3901))

(assert (not b_next!3895))

(assert b_and!5717)

(assert b_and!5723)

(assert b_and!5719)

(assert b_and!5713)

(assert (not b_next!3899))

(assert (not b_next!3897))

(assert (not b_next!3889))

(assert b_and!5715)

(assert (not b_next!3893))

(check-sat)

(pop 1)

