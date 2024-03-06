; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4782 () Bool)

(assert start!4782)

(declare-fun b!37529 () Bool)

(declare-fun b_free!2289 () Bool)

(declare-fun b_next!5493 () Bool)

(assert (=> b!37529 (= b_free!2289 (not b_next!5493))))

(declare-fun tp!7513 () Bool)

(declare-fun b_and!8227 () Bool)

(assert (=> b!37529 (= tp!7513 b_and!8227)))

(declare-fun b_free!2291 () Bool)

(declare-fun b_next!5495 () Bool)

(assert (=> b!37529 (= b_free!2291 (not b_next!5495))))

(declare-fun tp!7509 () Bool)

(declare-fun b_and!8229 () Bool)

(assert (=> b!37529 (= tp!7509 b_and!8229)))

(declare-fun b_free!2293 () Bool)

(declare-fun b_next!5497 () Bool)

(assert (=> b!37529 (= b_free!2293 (not b_next!5497))))

(declare-fun tp!7505 () Bool)

(declare-fun b_and!8231 () Bool)

(assert (=> b!37529 (= tp!7505 b_and!8231)))

(declare-fun b!37530 () Bool)

(declare-fun b_free!2295 () Bool)

(declare-fun b_next!5499 () Bool)

(assert (=> b!37530 (= b_free!2295 (not b_next!5499))))

(declare-fun tp!7511 () Bool)

(declare-fun b_and!8233 () Bool)

(assert (=> b!37530 (= tp!7511 b_and!8233)))

(declare-fun b_free!2297 () Bool)

(declare-fun b_next!5501 () Bool)

(assert (=> b!37530 (= b_free!2297 (not b_next!5501))))

(declare-fun tp!7506 () Bool)

(declare-fun b_and!8235 () Bool)

(assert (=> b!37530 (= tp!7506 b_and!8235)))

(declare-fun b_free!2299 () Bool)

(declare-fun b_next!5503 () Bool)

(assert (=> b!37530 (= b_free!2299 (not b_next!5503))))

(declare-fun tp!7508 () Bool)

(declare-fun b_and!8237 () Bool)

(assert (=> b!37530 (= tp!7508 b_and!8237)))

(declare-fun b!37531 () Bool)

(declare-fun b_free!2301 () Bool)

(declare-fun b_next!5505 () Bool)

(assert (=> b!37531 (= b_free!2301 (not b_next!5505))))

(declare-fun tp!7507 () Bool)

(declare-fun b_and!8239 () Bool)

(assert (=> b!37531 (= tp!7507 b_and!8239)))

(declare-fun b_free!2303 () Bool)

(declare-fun b_next!5507 () Bool)

(assert (=> b!37531 (= b_free!2303 (not b_next!5507))))

(declare-fun tp!7512 () Bool)

(declare-fun b_and!8241 () Bool)

(assert (=> b!37531 (= tp!7512 b_and!8241)))

(declare-fun b_free!2305 () Bool)

(declare-fun b_next!5509 () Bool)

(assert (=> b!37531 (= b_free!2305 (not b_next!5509))))

(declare-fun tp!7510 () Bool)

(declare-fun b_and!8243 () Bool)

(assert (=> b!37531 (= tp!7510 b_and!8243)))

(declare-datatypes () ((Nat!35 (Zero!19) (Succ!16 (n!1098 Nat!35)))))

(declare-fun lt!7473 () Nat!35)

(declare-fun n3!64 () Nat!35)

(declare-fun n4!2 () Nat!35)

(declare-fun pair!0 (Nat!35 Nat!35) Nat!35)

(assert (=> start!4782 (= lt!7473 (pair!0 n3!64 n4!2))))

(declare-fun lt!7474 () Nat!35)

(declare-fun n1!359 () Nat!35)

(declare-fun n2!375 () Nat!35)

(assert (=> start!4782 (= lt!7474 (pair!0 n1!359 n2!375))))

(assert (=> start!4782 false))

(assert (=> start!4782 true))

(declare-datatypes () ((RAEqEvidence!26 (RAEqEvidence!27 (x!13083 Int) (y!1352 Int) (evidence!465 Int)))))

(declare-fun prev!781 () RAEqEvidence!26)

(declare-fun e!19296 () Bool)

(declare-fun inv!662 (RAEqEvidence!26) Bool)

(assert (=> start!4782 (and (inv!662 prev!781) e!19296)))

(declare-datatypes () ((Unit!287 (Unit!288))))

(declare-datatypes () ((RAEqEvidence!28 (RAEqEvidence!29 (x!13084 Int) (y!1353 Int) (evidence!466 Int)))))

(declare-fun thiss!6493 () RAEqEvidence!28)

(declare-fun e!19294 () Bool)

(declare-fun inv!663 (RAEqEvidence!28) Bool)

(assert (=> start!4782 (and (inv!663 thiss!6493) e!19294)))

(declare-fun x$107!1 () RAEqEvidence!26)

(declare-fun e!19295 () Bool)

(assert (=> start!4782 (and (inv!662 x$107!1) e!19295)))

(assert (=> b!37529 (= e!19296 (and tp!7513 tp!7509 tp!7505))))

(assert (=> b!37530 (= e!19294 (and tp!7511 tp!7506 tp!7508))))

(assert (=> b!37531 (= e!19295 (and tp!7507 tp!7512 tp!7510))))

(assert (= start!4782 b!37529))

(assert (= start!4782 b!37530))

(assert (= start!4782 b!37531))

(declare-fun m!38827 () Bool)

(assert (=> start!4782 m!38827))

(declare-fun m!38829 () Bool)

(assert (=> start!4782 m!38829))

(declare-fun m!38831 () Bool)

(assert (=> start!4782 m!38831))

(declare-fun m!38833 () Bool)

(assert (=> start!4782 m!38833))

(declare-fun m!38835 () Bool)

(assert (=> start!4782 m!38835))

(push 1)

(assert (not b_next!5493))

(assert (not b_next!5497))

(assert b_and!8241)

(assert (not b_next!5509))

(assert (not b_next!5507))

(assert b_and!8239)

(assert b_and!8243)

(assert (not b_next!5499))

(assert b_and!8227)

(assert b_and!8235)

(assert (not b_next!5503))

(assert (not b_next!5501))

(assert (not b_next!5495))

(assert b_and!8229)

(assert b_and!8233)

(assert (not start!4782))

(assert b_and!8231)

(assert (not b_next!5505))

(assert b_and!8237)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5493))

(assert (not b_next!5497))

(assert b_and!8241)

(assert (not b_next!5509))

(assert (not b_next!5507))

(assert b_and!8239)

(assert b_and!8243)

(assert (not b_next!5499))

(assert b_and!8227)

(assert b_and!8235)

(assert (not b_next!5503))

(assert (not b_next!5501))

(assert (not b_next!5495))

(assert b_and!8229)

(assert b_and!8233)

(assert b_and!8231)

(assert (not b_next!5505))

(assert b_and!8237)

(check-sat)

(pop 1)

