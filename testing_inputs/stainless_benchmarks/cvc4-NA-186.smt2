; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1360 () Bool)

(assert start!1360)

(declare-fun b!7311 () Bool)

(declare-fun b_free!433 () Bool)

(declare-fun b_next!941 () Bool)

(assert (=> b!7311 (= b_free!433 (not b_next!941))))

(declare-fun tp!784 () Bool)

(declare-fun b_and!2001 () Bool)

(assert (=> b!7311 (= tp!784 b_and!2001)))

(declare-fun b_free!435 () Bool)

(declare-fun b_next!943 () Bool)

(assert (=> b!7311 (= b_free!435 (not b_next!943))))

(declare-fun tp!787 () Bool)

(declare-fun b_and!2003 () Bool)

(assert (=> b!7311 (= tp!787 b_and!2003)))

(declare-fun b_free!437 () Bool)

(declare-fun b_next!945 () Bool)

(assert (=> b!7311 (= b_free!437 (not b_next!945))))

(declare-fun tp!786 () Bool)

(declare-fun b_and!2005 () Bool)

(assert (=> b!7311 (= tp!786 b_and!2005)))

(declare-fun b!7312 () Bool)

(declare-fun b_free!439 () Bool)

(declare-fun b_next!947 () Bool)

(assert (=> b!7312 (= b_free!439 (not b_next!947))))

(declare-fun tp!782 () Bool)

(declare-fun b_and!2007 () Bool)

(assert (=> b!7312 (= tp!782 b_and!2007)))

(declare-fun b_free!441 () Bool)

(declare-fun b_next!949 () Bool)

(assert (=> b!7312 (= b_free!441 (not b_next!949))))

(declare-fun tp!783 () Bool)

(declare-fun b_and!2009 () Bool)

(assert (=> b!7312 (= tp!783 b_and!2009)))

(declare-fun b_free!443 () Bool)

(declare-fun b_next!951 () Bool)

(assert (=> b!7312 (= b_free!443 (not b_next!951))))

(declare-fun tp!785 () Bool)

(declare-fun b_and!2011 () Bool)

(assert (=> b!7312 (= tp!785 b_and!2011)))

(assert (=> start!1360 false))

(assert (=> start!1360 true))

(declare-datatypes () ((Balance!91 (Balance!92 (extraOpen!86 Int) (extraClose!86 Int)))))

(declare-datatypes () ((EqEvidence!68 (EqEvidence!69 (x!3975 Int) (y!461 Int) (evidence!101 Int)))))

(declare-fun thiss!1124 () EqEvidence!68)

(declare-fun e!4225 () Bool)

(declare-fun inv!256 (EqEvidence!68) Bool)

(assert (=> start!1360 (and (inv!256 thiss!1124) e!4225)))

(declare-fun that!298 () EqEvidence!68)

(declare-fun e!4224 () Bool)

(assert (=> start!1360 (and (inv!256 that!298) e!4224)))

(assert (=> b!7311 (= e!4225 (and tp!784 tp!787 tp!786))))

(assert (=> b!7312 (= e!4224 (and tp!782 tp!783 tp!785))))

(assert (= start!1360 b!7311))

(assert (= start!1360 b!7312))

(declare-fun m!10163 () Bool)

(assert (=> start!1360 m!10163))

(declare-fun m!10165 () Bool)

(assert (=> start!1360 m!10165))

(push 1)

(assert (not b_next!947))

(assert (not b_next!949))

(assert (not b_next!943))

(assert (not b_next!951))

(assert (not b_next!945))

(assert b_and!2011)

(assert b_and!2003)

(assert b_and!2009)

(assert b_and!2001)

(assert (not b_next!941))

(assert b_and!2005)

(assert (not start!1360))

(assert b_and!2007)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!947))

(assert (not b_next!949))

(assert (not b_next!943))

(assert (not b_next!951))

(assert (not b_next!945))

(assert b_and!2011)

(assert b_and!2003)

(assert b_and!2009)

(assert b_and!2001)

(assert (not b_next!941))

(assert b_and!2005)

(assert b_and!2007)

(check-sat)

(pop 1)

