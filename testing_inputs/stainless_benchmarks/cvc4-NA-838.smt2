; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6280 () Bool)

(assert start!6280)

(declare-fun b!46738 () Bool)

(declare-fun b_free!5571 () Bool)

(declare-fun b_next!25139 () Bool)

(assert (=> b!46738 (= b_free!5571 (not b_next!25139))))

(declare-fun tp!12442 () Bool)

(declare-fun b_and!36435 () Bool)

(assert (=> b!46738 (= tp!12442 b_and!36435)))

(declare-fun b_free!5573 () Bool)

(declare-fun b_next!25141 () Bool)

(assert (=> b!46738 (= b_free!5573 (not b_next!25141))))

(declare-fun tp!12435 () Bool)

(declare-fun b_and!36437 () Bool)

(assert (=> b!46738 (= tp!12435 b_and!36437)))

(declare-fun b_free!5575 () Bool)

(declare-fun b_next!25143 () Bool)

(assert (=> b!46738 (= b_free!5575 (not b_next!25143))))

(declare-fun tp!12440 () Bool)

(declare-fun b_and!36439 () Bool)

(assert (=> b!46738 (= tp!12440 b_and!36439)))

(declare-fun b!46739 () Bool)

(declare-fun b_free!5577 () Bool)

(declare-fun b_next!25145 () Bool)

(assert (=> b!46739 (= b_free!5577 (not b_next!25145))))

(declare-fun tp!12437 () Bool)

(declare-fun b_and!36441 () Bool)

(assert (=> b!46739 (= tp!12437 b_and!36441)))

(declare-fun b_free!5579 () Bool)

(declare-fun b_next!25147 () Bool)

(assert (=> b!46739 (= b_free!5579 (not b_next!25147))))

(declare-fun tp!12439 () Bool)

(declare-fun b_and!36443 () Bool)

(assert (=> b!46739 (= tp!12439 b_and!36443)))

(declare-fun b_free!5581 () Bool)

(declare-fun b_next!25149 () Bool)

(assert (=> b!46739 (= b_free!5581 (not b_next!25149))))

(declare-fun tp!12445 () Bool)

(declare-fun b_and!36445 () Bool)

(assert (=> b!46739 (= tp!12445 b_and!36445)))

(declare-fun b!46740 () Bool)

(declare-fun b_free!5583 () Bool)

(declare-fun b_next!25151 () Bool)

(assert (=> b!46740 (= b_free!5583 (not b_next!25151))))

(declare-fun tp!12441 () Bool)

(declare-fun b_and!36447 () Bool)

(assert (=> b!46740 (= tp!12441 b_and!36447)))

(declare-fun b_free!5585 () Bool)

(declare-fun b_next!25153 () Bool)

(assert (=> b!46740 (= b_free!5585 (not b_next!25153))))

(declare-fun tp!12436 () Bool)

(declare-fun b_and!36449 () Bool)

(assert (=> b!46740 (= tp!12436 b_and!36449)))

(declare-fun b_free!5587 () Bool)

(declare-fun b_next!25155 () Bool)

(assert (=> b!46740 (= b_free!5587 (not b_next!25155))))

(declare-fun tp!12438 () Bool)

(declare-fun b_and!36451 () Bool)

(assert (=> b!46740 (= tp!12438 b_and!36451)))

(declare-fun b!46741 () Bool)

(declare-fun b_free!5589 () Bool)

(declare-fun b_next!25157 () Bool)

(assert (=> b!46741 (= b_free!5589 (not b_next!25157))))

(declare-fun tp!12443 () Bool)

(declare-fun b_and!36453 () Bool)

(assert (=> b!46741 (= tp!12443 b_and!36453)))

(declare-fun b_free!5591 () Bool)

(declare-fun b_next!25159 () Bool)

(assert (=> b!46741 (= b_free!5591 (not b_next!25159))))

(declare-fun tp!12434 () Bool)

(declare-fun b_and!36455 () Bool)

(assert (=> b!46741 (= tp!12434 b_and!36455)))

(declare-fun b_free!5593 () Bool)

(declare-fun b_next!25161 () Bool)

(assert (=> b!46741 (= b_free!5593 (not b_next!25161))))

(declare-fun tp!12444 () Bool)

(declare-fun b_and!36457 () Bool)

(assert (=> b!46741 (= tp!12444 b_and!36457)))

(declare-fun e!24337 () Bool)

(assert (=> b!46738 (= e!24337 (and tp!12442 tp!12435 tp!12440))))

(declare-fun e!24334 () Bool)

(assert (=> b!46740 (= e!24334 (and tp!12441 tp!12436 tp!12438))))

(declare-fun e!24336 () Bool)

(assert (=> b!46741 (= e!24336 (and tp!12443 tp!12434 tp!12444))))

(declare-fun lt!8488 () Bool)

(declare-datatypes () ((Nat!199 (Zero!183) (Succ!180 (n!1335 Nat!199)))))

(declare-fun n2!101 () Nat!199)

(declare-fun n3!28 () Nat!199)

(declare-fun >=!2 (Nat!199 Nat!199) Bool)

(assert (=> start!6280 (= lt!8488 (>=!2 n2!101 n3!28))))

(assert (=> start!6280 false))

(declare-datatypes () ((Unit!619 (Unit!620))))

(declare-datatypes () ((RAEqEvidence!342 (RAEqEvidence!343 (x!17278 Int) (y!1510 Int) (evidence!623 Int)))))

(declare-fun x$55!33 () RAEqEvidence!342)

(declare-fun inv!820 (RAEqEvidence!342) Bool)

(assert (=> start!6280 (and (inv!820 x$55!33) e!24337)))

(assert (=> start!6280 true))

(declare-fun thiss!5064 () RAEqEvidence!342)

(declare-fun e!24335 () Bool)

(assert (=> start!6280 (and (inv!820 thiss!5064) e!24335)))

(declare-fun x$56!25 () RAEqEvidence!342)

(assert (=> start!6280 (and (inv!820 x$56!25) e!24334)))

(declare-fun prev!430 () RAEqEvidence!342)

(assert (=> start!6280 (and (inv!820 prev!430) e!24336)))

(assert (=> b!46739 (= e!24335 (and tp!12437 tp!12439 tp!12445))))

(assert (= start!6280 b!46738))

(assert (= start!6280 b!46739))

(assert (= start!6280 b!46740))

(assert (= start!6280 b!46741))

(declare-fun m!49621 () Bool)

(assert (=> start!6280 m!49621))

(declare-fun m!49623 () Bool)

(assert (=> start!6280 m!49623))

(declare-fun m!49625 () Bool)

(assert (=> start!6280 m!49625))

(declare-fun m!49627 () Bool)

(assert (=> start!6280 m!49627))

(declare-fun m!49629 () Bool)

(assert (=> start!6280 m!49629))

(push 1)

(assert (not b_next!25143))

(assert b_and!36451)

(assert b_and!36447)

(assert b_and!36437)

(assert b_and!36453)

(assert b_and!36445)

(assert (not start!6280))

(assert (not b_next!25151))

(assert b_and!36441)

(assert (not b_next!25155))

(assert (not b_next!25147))

(assert b_and!36449)

(assert (not b_next!25149))

(assert (not b_next!25157))

(assert (not b_next!25141))

(assert b_and!36435)

(assert (not b_next!25159))

(assert (not b_next!25139))

(assert b_and!36455)

(assert b_and!36457)

(assert (not b_next!25161))

(assert b_and!36439)

(assert (not b_next!25153))

(assert b_and!36443)

(assert (not b_next!25145))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25143))

(assert b_and!36451)

(assert b_and!36447)

(assert b_and!36437)

(assert b_and!36453)

(assert b_and!36445)

(assert (not b_next!25151))

(assert b_and!36441)

(assert (not b_next!25155))

(assert (not b_next!25147))

(assert b_and!36449)

(assert (not b_next!25149))

(assert (not b_next!25157))

(assert (not b_next!25141))

(assert b_and!36435)

(assert (not b_next!25159))

(assert (not b_next!25139))

(assert b_and!36455)

(assert b_and!36457)

(assert (not b_next!25161))

(assert b_and!36439)

(assert (not b_next!25153))

(assert b_and!36443)

(assert (not b_next!25145))

(check-sat)

(pop 1)

