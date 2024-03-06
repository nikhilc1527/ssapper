; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2364 () Bool)

(assert start!2364)

(declare-fun b_free!1679 () Bool)

(declare-fun b_next!4019 () Bool)

(assert (=> start!2364 (= b_free!1679 (not b_next!4019))))

(declare-fun tp!2691 () Bool)

(declare-fun b_and!5885 () Bool)

(assert (=> start!2364 (= tp!2691 b_and!5885)))

(declare-fun b!11763 () Bool)

(declare-fun b_free!1681 () Bool)

(declare-fun b_next!4021 () Bool)

(assert (=> b!11763 (= b_free!1681 (not b_next!4021))))

(declare-fun tp!2688 () Bool)

(declare-fun b_and!5887 () Bool)

(assert (=> b!11763 (= tp!2688 b_and!5887)))

(declare-fun b_free!1683 () Bool)

(declare-fun b_next!4023 () Bool)

(assert (=> b!11763 (= b_free!1683 (not b_next!4023))))

(declare-fun tp!2690 () Bool)

(declare-fun b_and!5889 () Bool)

(assert (=> b!11763 (= tp!2690 b_and!5889)))

(declare-fun b_free!1685 () Bool)

(declare-fun b_next!4025 () Bool)

(assert (=> b!11763 (= b_free!1685 (not b_next!4025))))

(declare-fun tp!2692 () Bool)

(declare-fun b_and!5891 () Bool)

(assert (=> b!11763 (= tp!2692 b_and!5891)))

(declare-fun b!11764 () Bool)

(declare-fun b_free!1687 () Bool)

(declare-fun b_next!4027 () Bool)

(assert (=> b!11764 (= b_free!1687 (not b_next!4027))))

(declare-fun tp!2686 () Bool)

(declare-fun b_and!5893 () Bool)

(assert (=> b!11764 (= tp!2686 b_and!5893)))

(declare-fun b_free!1689 () Bool)

(declare-fun b_next!4029 () Bool)

(assert (=> b!11764 (= b_free!1689 (not b_next!4029))))

(declare-fun tp!2689 () Bool)

(declare-fun b_and!5895 () Bool)

(assert (=> b!11764 (= tp!2689 b_and!5895)))

(declare-fun b_free!1691 () Bool)

(declare-fun b_next!4031 () Bool)

(assert (=> b!11764 (= b_free!1691 (not b_next!4031))))

(declare-fun tp!2687 () Bool)

(declare-fun b_and!5897 () Bool)

(assert (=> b!11764 (= tp!2687 b_and!5897)))

(assert (=> start!2364 false))

(assert (=> start!2364 tp!2691))

(assert (=> start!2364 true))

(declare-datatypes () ((Balance!327 (Balance!328 (extraOpen!204 Int) (extraClose!204 Int)))))

(declare-datatypes () ((EqEvidence!256 (EqEvidence!257 (x!6653 Int) (y!647 Int) (evidence!195 Int)))))

(declare-fun thiss!721 () EqEvidence!256)

(declare-fun e!6547 () Bool)

(declare-fun inv!392 (EqEvidence!256) Bool)

(assert (=> start!2364 (and (inv!392 thiss!721) e!6547)))

(declare-fun that!177 () EqEvidence!256)

(declare-fun e!6548 () Bool)

(assert (=> start!2364 (and (inv!392 that!177) e!6548)))

(assert (=> b!11763 (= e!6547 (and tp!2688 tp!2690 tp!2692))))

(assert (=> b!11764 (= e!6548 (and tp!2686 tp!2689 tp!2687))))

(assert (= start!2364 b!11763))

(assert (= start!2364 b!11764))

(declare-fun m!14693 () Bool)

(assert (=> start!2364 m!14693))

(declare-fun m!14695 () Bool)

(assert (=> start!2364 m!14695))

(push 1)

(assert (not b_next!4029))

(assert (not b_next!4023))

(assert b_and!5897)

(assert b_and!5885)

(assert b_and!5889)

(assert (not b_next!4031))

(assert (not b_next!4027))

(assert (not start!2364))

(assert b_and!5893)

(assert (not b_next!4025))

(assert b_and!5887)

(assert b_and!5891)

(assert (not b_next!4021))

(assert (not b_next!4019))

(assert b_and!5895)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4029))

(assert (not b_next!4023))

(assert b_and!5897)

(assert b_and!5885)

(assert b_and!5889)

(assert (not b_next!4031))

(assert (not b_next!4027))

(assert b_and!5893)

(assert (not b_next!4025))

(assert b_and!5887)

(assert b_and!5891)

(assert (not b_next!4021))

(assert (not b_next!4019))

(assert b_and!5895)

(check-sat)

(pop 1)

