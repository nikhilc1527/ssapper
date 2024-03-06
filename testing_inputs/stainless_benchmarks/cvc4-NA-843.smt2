; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6324 () Bool)

(assert start!6324)

(declare-fun b!47054 () Bool)

(declare-fun b_free!5673 () Bool)

(declare-fun b_next!25377 () Bool)

(assert (=> b!47054 (= b_free!5673 (not b_next!25377))))

(declare-fun tp!12570 () Bool)

(declare-fun b_and!36807 () Bool)

(assert (=> b!47054 (= tp!12570 b_and!36807)))

(declare-fun b_free!5675 () Bool)

(declare-fun b_next!25379 () Bool)

(assert (=> b!47054 (= b_free!5675 (not b_next!25379))))

(declare-fun tp!12571 () Bool)

(declare-fun b_and!36809 () Bool)

(assert (=> b!47054 (= tp!12571 b_and!36809)))

(declare-fun b_free!5677 () Bool)

(declare-fun b_next!25381 () Bool)

(assert (=> b!47054 (= b_free!5677 (not b_next!25381))))

(declare-fun tp!12569 () Bool)

(declare-fun b_and!36811 () Bool)

(assert (=> b!47054 (= tp!12569 b_and!36811)))

(declare-fun lt!8554 () Bool)

(declare-datatypes () ((Nat!204 (Zero!188) (Succ!185 (n!1340 Nat!204)))))

(declare-fun n2!101 () Nat!204)

(declare-fun n3!28 () Nat!204)

(declare-fun >=!2 (Nat!204 Nat!204) Bool)

(assert (=> start!6324 (= lt!8554 (>=!2 n2!101 n3!28))))

(assert (=> start!6324 false))

(assert (=> start!6324 true))

(declare-datatypes () ((Unit!637 (Unit!638))))

(declare-datatypes () ((RAEqEvidence!352 (RAEqEvidence!353 (x!17340 Int) (y!1515 Int) (evidence!628 Int)))))

(declare-fun thiss!5039 () RAEqEvidence!352)

(declare-fun e!24514 () Bool)

(declare-fun inv!825 (RAEqEvidence!352) Bool)

(assert (=> start!6324 (and (inv!825 thiss!5039) e!24514)))

(assert (=> b!47054 (= e!24514 (and tp!12570 tp!12571 tp!12569))))

(assert (= start!6324 b!47054))

(declare-fun m!49983 () Bool)

(assert (=> start!6324 m!49983))

(declare-fun m!49985 () Bool)

(assert (=> start!6324 m!49985))

(push 1)

(assert b_and!36809)

(assert (not start!6324))

(assert (not b_next!25377))

(assert b_and!36811)

(assert (not b_next!25381))

(assert b_and!36807)

(assert (not b_next!25379))

(check-sat)

(pop 1)

(push 1)

(assert b_and!36809)

(assert (not b_next!25377))

(assert b_and!36811)

(assert (not b_next!25381))

(assert b_and!36807)

(assert (not b_next!25379))

(check-sat)

(pop 1)

