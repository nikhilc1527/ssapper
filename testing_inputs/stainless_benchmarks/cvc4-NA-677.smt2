; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4788 () Bool)

(assert start!4788)

(declare-fun b!37572 () Bool)

(declare-fun b_free!2343 () Bool)

(declare-fun b_next!5581 () Bool)

(assert (=> b!37572 (= b_free!2343 (not b_next!5581))))

(declare-fun tp!7585 () Bool)

(declare-fun b_and!8329 () Bool)

(assert (=> b!37572 (= tp!7585 b_and!8329)))

(declare-fun b_free!2345 () Bool)

(declare-fun b_next!5583 () Bool)

(assert (=> b!37572 (= b_free!2345 (not b_next!5583))))

(declare-fun tp!7582 () Bool)

(declare-fun b_and!8331 () Bool)

(assert (=> b!37572 (= tp!7582 b_and!8331)))

(declare-fun b_free!2347 () Bool)

(declare-fun b_next!5585 () Bool)

(assert (=> b!37572 (= b_free!2347 (not b_next!5585))))

(declare-fun tp!7581 () Bool)

(declare-fun b_and!8333 () Bool)

(assert (=> b!37572 (= tp!7581 b_and!8333)))

(declare-fun b!37573 () Bool)

(declare-fun b_free!2349 () Bool)

(declare-fun b_next!5587 () Bool)

(assert (=> b!37573 (= b_free!2349 (not b_next!5587))))

(declare-fun tp!7584 () Bool)

(declare-fun b_and!8335 () Bool)

(assert (=> b!37573 (= tp!7584 b_and!8335)))

(declare-fun b_free!2351 () Bool)

(declare-fun b_next!5589 () Bool)

(assert (=> b!37573 (= b_free!2351 (not b_next!5589))))

(declare-fun tp!7583 () Bool)

(declare-fun b_and!8337 () Bool)

(assert (=> b!37573 (= tp!7583 b_and!8337)))

(declare-fun b_free!2353 () Bool)

(declare-fun b_next!5591 () Bool)

(assert (=> b!37573 (= b_free!2353 (not b_next!5591))))

(declare-fun tp!7580 () Bool)

(declare-fun b_and!8339 () Bool)

(assert (=> b!37573 (= tp!7580 b_and!8339)))

(declare-datatypes () ((Nat!38 (Zero!22) (Succ!19 (n!1101 Nat!38)))))

(declare-fun lt!7486 () Nat!38)

(declare-fun n3!64 () Nat!38)

(declare-fun n4!2 () Nat!38)

(declare-fun pair!0 (Nat!38 Nat!38) Nat!38)

(assert (=> start!4788 (= lt!7486 (pair!0 n3!64 n4!2))))

(declare-fun lt!7485 () Nat!38)

(declare-fun n1!359 () Nat!38)

(declare-fun n2!375 () Nat!38)

(assert (=> start!4788 (= lt!7485 (pair!0 n1!359 n2!375))))

(assert (=> start!4788 false))

(declare-datatypes () ((RAEqEvidence!38 (RAEqEvidence!39 (x!13095 Int) (y!1358 Int) (evidence!471 Int)))))

(declare-fun thiss!6492 () RAEqEvidence!38)

(declare-fun e!19323 () Bool)

(declare-fun inv!668 (RAEqEvidence!38) Bool)

(assert (=> start!4788 (and (inv!668 thiss!6492) e!19323)))

(assert (=> start!4788 true))

(declare-fun x$107!1 () RAEqEvidence!38)

(declare-fun e!19322 () Bool)

(assert (=> start!4788 (and (inv!668 x$107!1) e!19322)))

(assert (=> b!37572 (= e!19323 (and tp!7585 tp!7582 tp!7581))))

(assert (=> b!37573 (= e!19322 (and tp!7584 tp!7583 tp!7580))))

(assert (= start!4788 b!37572))

(assert (= start!4788 b!37573))

(declare-fun m!38867 () Bool)

(assert (=> start!4788 m!38867))

(declare-fun m!38869 () Bool)

(assert (=> start!4788 m!38869))

(declare-fun m!38871 () Bool)

(assert (=> start!4788 m!38871))

(declare-fun m!38873 () Bool)

(assert (=> start!4788 m!38873))

(push 1)

(assert (not start!4788))

(assert b_and!8329)

(assert (not b_next!5583))

(assert b_and!8335)

(assert b_and!8337)

(assert (not b_next!5585))

(assert b_and!8333)

(assert b_and!8339)

(assert (not b_next!5589))

(assert (not b_next!5591))

(assert (not b_next!5581))

(assert (not b_next!5587))

(assert b_and!8331)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8329)

(assert (not b_next!5583))

(assert b_and!8335)

(assert b_and!8337)

(assert (not b_next!5585))

(assert b_and!8333)

(assert b_and!8339)

(assert (not b_next!5589))

(assert (not b_next!5591))

(assert (not b_next!5581))

(assert (not b_next!5587))

(assert b_and!8331)

(check-sat)

(pop 1)

