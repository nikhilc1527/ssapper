; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4784 () Bool)

(assert start!4784)

(declare-fun b!37538 () Bool)

(declare-fun b_free!2307 () Bool)

(declare-fun b_next!5511 () Bool)

(assert (=> b!37538 (= b_free!2307 (not b_next!5511))))

(declare-fun tp!7537 () Bool)

(declare-fun b_and!8245 () Bool)

(assert (=> b!37538 (= tp!7537 b_and!8245)))

(declare-fun b_free!2309 () Bool)

(declare-fun b_next!5513 () Bool)

(assert (=> b!37538 (= b_free!2309 (not b_next!5513))))

(declare-fun tp!7534 () Bool)

(declare-fun b_and!8247 () Bool)

(assert (=> b!37538 (= tp!7534 b_and!8247)))

(declare-fun b_free!2311 () Bool)

(declare-fun b_next!5515 () Bool)

(assert (=> b!37538 (= b_free!2311 (not b_next!5515))))

(declare-fun tp!7533 () Bool)

(declare-fun b_and!8249 () Bool)

(assert (=> b!37538 (= tp!7533 b_and!8249)))

(declare-fun b!37539 () Bool)

(declare-fun b_free!2313 () Bool)

(declare-fun b_next!5517 () Bool)

(assert (=> b!37539 (= b_free!2313 (not b_next!5517))))

(declare-fun tp!7532 () Bool)

(declare-fun b_and!8251 () Bool)

(assert (=> b!37539 (= tp!7532 b_and!8251)))

(declare-fun b_free!2315 () Bool)

(declare-fun b_next!5519 () Bool)

(assert (=> b!37539 (= b_free!2315 (not b_next!5519))))

(declare-fun tp!7539 () Bool)

(declare-fun b_and!8253 () Bool)

(assert (=> b!37539 (= tp!7539 b_and!8253)))

(declare-fun b_free!2317 () Bool)

(declare-fun b_next!5521 () Bool)

(assert (=> b!37539 (= b_free!2317 (not b_next!5521))))

(declare-fun tp!7535 () Bool)

(declare-fun b_and!8255 () Bool)

(assert (=> b!37539 (= tp!7535 b_and!8255)))

(declare-fun b!37540 () Bool)

(declare-fun b_free!2319 () Bool)

(declare-fun b_next!5523 () Bool)

(assert (=> b!37540 (= b_free!2319 (not b_next!5523))))

(declare-fun tp!7536 () Bool)

(declare-fun b_and!8257 () Bool)

(assert (=> b!37540 (= tp!7536 b_and!8257)))

(declare-fun b_free!2321 () Bool)

(declare-fun b_next!5525 () Bool)

(assert (=> b!37540 (= b_free!2321 (not b_next!5525))))

(declare-fun tp!7540 () Bool)

(declare-fun b_and!8259 () Bool)

(assert (=> b!37540 (= tp!7540 b_and!8259)))

(declare-fun b_free!2323 () Bool)

(declare-fun b_next!5527 () Bool)

(assert (=> b!37540 (= b_free!2323 (not b_next!5527))))

(declare-fun tp!7538 () Bool)

(declare-fun b_and!8261 () Bool)

(assert (=> b!37540 (= tp!7538 b_and!8261)))

(declare-datatypes () ((Nat!36 (Zero!20) (Succ!17 (n!1099 Nat!36)))))

(declare-fun lt!7480 () Nat!36)

(declare-fun n3!64 () Nat!36)

(declare-fun n4!2 () Nat!36)

(declare-fun pair!0 (Nat!36 Nat!36) Nat!36)

(assert (=> start!4784 (= lt!7480 (pair!0 n3!64 n4!2))))

(declare-fun lt!7479 () Nat!36)

(declare-fun n1!359 () Nat!36)

(declare-fun n2!375 () Nat!36)

(assert (=> start!4784 (= lt!7479 (pair!0 n1!359 n2!375))))

(assert (=> start!4784 false))

(assert (=> start!4784 true))

(declare-datatypes () ((RAEqEvidence!30 (RAEqEvidence!31 (x!13085 Int) (y!1354 Int) (evidence!467 Int)))))

(declare-fun prev!781 () RAEqEvidence!30)

(declare-fun e!19305 () Bool)

(declare-fun inv!664 (RAEqEvidence!30) Bool)

(assert (=> start!4784 (and (inv!664 prev!781) e!19305)))

(declare-datatypes () ((Unit!289 (Unit!290))))

(declare-datatypes () ((RAEqEvidence!32 (RAEqEvidence!33 (x!13086 Int) (y!1355 Int) (evidence!468 Int)))))

(declare-fun thiss!6493 () RAEqEvidence!32)

(declare-fun e!19304 () Bool)

(declare-fun inv!665 (RAEqEvidence!32) Bool)

(assert (=> start!4784 (and (inv!665 thiss!6493) e!19304)))

(declare-fun x$107!1 () RAEqEvidence!30)

(declare-fun e!19303 () Bool)

(assert (=> start!4784 (and (inv!664 x$107!1) e!19303)))

(assert (=> b!37538 (= e!19305 (and tp!7537 tp!7534 tp!7533))))

(assert (=> b!37539 (= e!19304 (and tp!7532 tp!7539 tp!7535))))

(assert (=> b!37540 (= e!19303 (and tp!7536 tp!7540 tp!7538))))

(assert (= start!4784 b!37538))

(assert (= start!4784 b!37539))

(assert (= start!4784 b!37540))

(declare-fun m!38837 () Bool)

(assert (=> start!4784 m!38837))

(declare-fun m!38839 () Bool)

(assert (=> start!4784 m!38839))

(declare-fun m!38841 () Bool)

(assert (=> start!4784 m!38841))

(declare-fun m!38843 () Bool)

(assert (=> start!4784 m!38843))

(declare-fun m!38845 () Bool)

(assert (=> start!4784 m!38845))

(push 1)

(assert b_and!8249)

(assert (not b_next!5521))

(assert b_and!8251)

(assert (not b_next!5517))

(assert (not b_next!5523))

(assert b_and!8245)

(assert b_and!8261)

(assert b_and!8255)

(assert (not b_next!5511))

(assert (not b_next!5525))

(assert (not b_next!5515))

(assert (not b_next!5527))

(assert b_and!8253)

(assert (not b_next!5513))

(assert b_and!8247)

(assert (not b_next!5519))

(assert (not start!4784))

(assert b_and!8259)

(assert b_and!8257)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8249)

(assert (not b_next!5521))

(assert b_and!8251)

(assert (not b_next!5517))

(assert (not b_next!5523))

(assert b_and!8245)

(assert b_and!8261)

(assert b_and!8255)

(assert (not b_next!5511))

(assert (not b_next!5525))

(assert (not b_next!5515))

(assert (not b_next!5527))

(assert b_and!8253)

(assert (not b_next!5513))

(assert b_and!8247)

(assert (not b_next!5519))

(assert b_and!8259)

(assert b_and!8257)

(check-sat)

(pop 1)

