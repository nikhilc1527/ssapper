; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2472 () Bool)

(assert start!2472)

(declare-fun b_free!1891 () Bool)

(declare-fun b_next!4461 () Bool)

(assert (=> start!2472 (= b_free!1891 (not b_next!4461))))

(declare-fun tp!3005 () Bool)

(declare-fun b_and!6595 () Bool)

(assert (=> start!2472 (= tp!3005 b_and!6595)))

(declare-fun b!12256 () Bool)

(declare-fun b_free!1893 () Bool)

(declare-fun b_next!4463 () Bool)

(assert (=> b!12256 (= b_free!1893 (not b_next!4463))))

(declare-fun tp!3008 () Bool)

(declare-fun b_and!6597 () Bool)

(assert (=> b!12256 (= tp!3008 b_and!6597)))

(declare-fun b_free!1895 () Bool)

(declare-fun b_next!4465 () Bool)

(assert (=> b!12256 (= b_free!1895 (not b_next!4465))))

(declare-fun tp!3004 () Bool)

(declare-fun b_and!6599 () Bool)

(assert (=> b!12256 (= tp!3004 b_and!6599)))

(declare-fun b_free!1897 () Bool)

(declare-fun b_next!4467 () Bool)

(assert (=> b!12256 (= b_free!1897 (not b_next!4467))))

(declare-fun tp!3009 () Bool)

(declare-fun b_and!6601 () Bool)

(assert (=> b!12256 (= tp!3009 b_and!6601)))

(declare-fun b!12257 () Bool)

(declare-fun b_free!1899 () Bool)

(declare-fun b_next!4469 () Bool)

(assert (=> b!12257 (= b_free!1899 (not b_next!4469))))

(declare-fun tp!3010 () Bool)

(declare-fun b_and!6603 () Bool)

(assert (=> b!12257 (= tp!3010 b_and!6603)))

(declare-fun b_free!1901 () Bool)

(declare-fun b_next!4471 () Bool)

(assert (=> b!12257 (= b_free!1901 (not b_next!4471))))

(declare-fun tp!3007 () Bool)

(declare-fun b_and!6605 () Bool)

(assert (=> b!12257 (= tp!3007 b_and!6605)))

(declare-fun b_free!1903 () Bool)

(declare-fun b_next!4473 () Bool)

(assert (=> b!12257 (= b_free!1903 (not b_next!4473))))

(declare-fun tp!3006 () Bool)

(declare-fun b_and!6607 () Bool)

(assert (=> b!12257 (= tp!3006 b_and!6607)))

(assert (=> start!2472 false))

(assert (=> start!2472 tp!3005))

(declare-datatypes () ((Balance!359 (Balance!360 (extraOpen!220 Int) (extraClose!220 Int)))))

(declare-datatypes () ((EqEvidence!286 (EqEvidence!287 (x!7060 Int) (y!669 Int) (evidence!210 Int)))))

(declare-fun that!193 () EqEvidence!286)

(declare-fun e!6743 () Bool)

(declare-fun inv!414 (EqEvidence!286) Bool)

(assert (=> start!2472 (and (inv!414 that!193) e!6743)))

(assert (=> start!2472 true))

(declare-fun thiss!745 () EqEvidence!286)

(declare-fun e!6742 () Bool)

(assert (=> start!2472 (and (inv!414 thiss!745) e!6742)))

(assert (=> b!12256 (= e!6743 (and tp!3008 tp!3004 tp!3009))))

(assert (=> b!12257 (= e!6742 (and tp!3010 tp!3007 tp!3006))))

(assert (= start!2472 b!12256))

(assert (= start!2472 b!12257))

(declare-fun m!15237 () Bool)

(assert (=> start!2472 m!15237))

(declare-fun m!15239 () Bool)

(assert (=> start!2472 m!15239))

(push 1)

(assert (not b_next!4461))

(assert (not start!2472))

(assert b_and!6599)

(assert (not b_next!4471))

(assert (not b_next!4463))

(assert (not b_next!4473))

(assert b_and!6595)

(assert b_and!6605)

(assert (not b_next!4469))

(assert b_and!6607)

(assert (not b_next!4467))

(assert b_and!6597)

(assert b_and!6603)

(assert (not b_next!4465))

(assert b_and!6601)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4461))

(assert b_and!6599)

(assert (not b_next!4471))

(assert (not b_next!4463))

(assert (not b_next!4473))

(assert b_and!6595)

(assert b_and!6605)

(assert (not b_next!4469))

(assert b_and!6607)

(assert (not b_next!4467))

(assert b_and!6597)

(assert b_and!6603)

(assert (not b_next!4465))

(assert b_and!6601)

(check-sat)

(pop 1)

