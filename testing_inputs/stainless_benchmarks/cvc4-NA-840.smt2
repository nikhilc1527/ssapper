; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6298 () Bool)

(assert start!6298)

(declare-fun b!46840 () Bool)

(declare-fun b_free!5619 () Bool)

(declare-fun b_next!25275 () Bool)

(assert (=> b!46840 (= b_free!5619 (not b_next!25275))))

(declare-fun tp!12504 () Bool)

(declare-fun b_and!36651 () Bool)

(assert (=> b!46840 (= tp!12504 b_and!36651)))

(declare-fun b_free!5621 () Bool)

(declare-fun b_next!25277 () Bool)

(assert (=> b!46840 (= b_free!5621 (not b_next!25277))))

(declare-fun tp!12508 () Bool)

(declare-fun b_and!36653 () Bool)

(assert (=> b!46840 (= tp!12508 b_and!36653)))

(declare-fun b_free!5623 () Bool)

(declare-fun b_next!25279 () Bool)

(assert (=> b!46840 (= b_free!5623 (not b_next!25279))))

(declare-fun tp!12503 () Bool)

(declare-fun b_and!36655 () Bool)

(assert (=> b!46840 (= tp!12503 b_and!36655)))

(declare-fun b!46841 () Bool)

(declare-fun b_free!5625 () Bool)

(declare-fun b_next!25281 () Bool)

(assert (=> b!46841 (= b_free!5625 (not b_next!25281))))

(declare-fun tp!12505 () Bool)

(declare-fun b_and!36657 () Bool)

(assert (=> b!46841 (= tp!12505 b_and!36657)))

(declare-fun b_free!5627 () Bool)

(declare-fun b_next!25283 () Bool)

(assert (=> b!46841 (= b_free!5627 (not b_next!25283))))

(declare-fun tp!12506 () Bool)

(declare-fun b_and!36659 () Bool)

(assert (=> b!46841 (= tp!12506 b_and!36659)))

(declare-fun b_free!5629 () Bool)

(declare-fun b_next!25285 () Bool)

(assert (=> b!46841 (= b_free!5629 (not b_next!25285))))

(declare-fun tp!12502 () Bool)

(declare-fun b_and!36661 () Bool)

(assert (=> b!46841 (= tp!12502 b_and!36661)))

(declare-fun b!46842 () Bool)

(declare-fun b_free!5631 () Bool)

(declare-fun b_next!25287 () Bool)

(assert (=> b!46842 (= b_free!5631 (not b_next!25287))))

(declare-fun tp!12501 () Bool)

(declare-fun b_and!36663 () Bool)

(assert (=> b!46842 (= tp!12501 b_and!36663)))

(declare-fun b_free!5633 () Bool)

(declare-fun b_next!25289 () Bool)

(assert (=> b!46842 (= b_free!5633 (not b_next!25289))))

(declare-fun tp!12507 () Bool)

(declare-fun b_and!36665 () Bool)

(assert (=> b!46842 (= tp!12507 b_and!36665)))

(declare-fun b_free!5635 () Bool)

(declare-fun b_next!25291 () Bool)

(assert (=> b!46842 (= b_free!5635 (not b_next!25291))))

(declare-fun tp!12500 () Bool)

(declare-fun b_and!36667 () Bool)

(assert (=> b!46842 (= tp!12500 b_and!36667)))

(declare-fun lt!8503 () Bool)

(declare-datatypes () ((Nat!201 (Zero!185) (Succ!182 (n!1337 Nat!201)))))

(declare-fun n2!101 () Nat!201)

(declare-fun n3!28 () Nat!201)

(declare-fun >=!2 (Nat!201 Nat!201) Bool)

(assert (=> start!6298 (= lt!8503 (>=!2 n2!101 n3!28))))

(assert (=> start!6298 false))

(declare-datatypes () ((Unit!625 (Unit!626))))

(declare-datatypes () ((RAEqEvidence!346 (RAEqEvidence!347 (x!17314 Int) (y!1512 Int) (evidence!625 Int)))))

(declare-fun thiss!5056 () RAEqEvidence!346)

(declare-fun e!24391 () Bool)

(declare-fun inv!822 (RAEqEvidence!346) Bool)

(assert (=> start!6298 (and (inv!822 thiss!5056) e!24391)))

(assert (=> start!6298 true))

(declare-fun x$56!25 () RAEqEvidence!346)

(declare-fun e!24392 () Bool)

(assert (=> start!6298 (and (inv!822 x$56!25) e!24392)))

(declare-fun prev!431 () RAEqEvidence!346)

(declare-fun e!24393 () Bool)

(assert (=> start!6298 (and (inv!822 prev!431) e!24393)))

(assert (=> b!46840 (= e!24391 (and tp!12504 tp!12508 tp!12503))))

(assert (=> b!46841 (= e!24392 (and tp!12505 tp!12506 tp!12502))))

(assert (=> b!46842 (= e!24393 (and tp!12501 tp!12507 tp!12500))))

(assert (= start!6298 b!46840))

(assert (= start!6298 b!46841))

(assert (= start!6298 b!46842))

(declare-fun m!49741 () Bool)

(assert (=> start!6298 m!49741))

(declare-fun m!49743 () Bool)

(assert (=> start!6298 m!49743))

(declare-fun m!49745 () Bool)

(assert (=> start!6298 m!49745))

(declare-fun m!49747 () Bool)

(assert (=> start!6298 m!49747))

(push 1)

(assert b_and!36655)

(assert b_and!36659)

(assert b_and!36657)

(assert (not b_next!25287))

(assert (not b_next!25275))

(assert b_and!36661)

(assert (not b_next!25277))

(assert (not b_next!25291))

(assert b_and!36663)

(assert (not b_next!25283))

(assert (not b_next!25281))

(assert (not b_next!25285))

(assert (not b_next!25279))

(assert b_and!36665)

(assert b_and!36653)

(assert (not start!6298))

(assert b_and!36651)

(assert (not b_next!25289))

(assert b_and!36667)

(check-sat)

(pop 1)

(push 1)

(assert b_and!36655)

(assert b_and!36659)

(assert b_and!36657)

(assert (not b_next!25287))

(assert (not b_next!25275))

(assert b_and!36661)

(assert (not b_next!25277))

(assert (not b_next!25291))

(assert b_and!36663)

(assert (not b_next!25283))

(assert (not b_next!25281))

(assert (not b_next!25285))

(assert (not b_next!25279))

(assert b_and!36665)

(assert b_and!36653)

(assert b_and!36651)

(assert (not b_next!25289))

(assert b_and!36667)

(check-sat)

(pop 1)

