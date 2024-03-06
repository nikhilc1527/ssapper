; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4780 () Bool)

(assert start!4780)

(declare-fun b!37521 () Bool)

(declare-fun b_free!2277 () Bool)

(declare-fun b_next!5481 () Bool)

(assert (=> b!37521 (= b_free!2277 (not b_next!5481))))

(declare-fun tp!7485 () Bool)

(declare-fun b_and!8215 () Bool)

(assert (=> b!37521 (= tp!7485 b_and!8215)))

(declare-fun b_free!2279 () Bool)

(declare-fun b_next!5483 () Bool)

(assert (=> b!37521 (= b_free!2279 (not b_next!5483))))

(declare-fun tp!7484 () Bool)

(declare-fun b_and!8217 () Bool)

(assert (=> b!37521 (= tp!7484 b_and!8217)))

(declare-fun b_free!2281 () Bool)

(declare-fun b_next!5485 () Bool)

(assert (=> b!37521 (= b_free!2281 (not b_next!5485))))

(declare-fun tp!7486 () Bool)

(declare-fun b_and!8219 () Bool)

(assert (=> b!37521 (= tp!7486 b_and!8219)))

(declare-fun b!37519 () Bool)

(declare-fun b_free!2283 () Bool)

(declare-fun b_next!5487 () Bool)

(assert (=> b!37519 (= b_free!2283 (not b_next!5487))))

(declare-fun tp!7481 () Bool)

(declare-fun b_and!8221 () Bool)

(assert (=> b!37519 (= tp!7481 b_and!8221)))

(declare-fun b_free!2285 () Bool)

(declare-fun b_next!5489 () Bool)

(assert (=> b!37519 (= b_free!2285 (not b_next!5489))))

(declare-fun tp!7482 () Bool)

(declare-fun b_and!8223 () Bool)

(assert (=> b!37519 (= tp!7482 b_and!8223)))

(declare-fun b_free!2287 () Bool)

(declare-fun b_next!5491 () Bool)

(assert (=> b!37519 (= b_free!2287 (not b_next!5491))))

(declare-fun tp!7483 () Bool)

(declare-fun b_and!8225 () Bool)

(assert (=> b!37519 (= tp!7483 b_and!8225)))

(declare-fun b!37517 () Bool)

(declare-fun res!17849 () Bool)

(declare-fun e!19285 () Bool)

(assert (=> b!37517 (=> (not res!17849) (not e!19285))))

(declare-datatypes () ((Nat!34 (Zero!18) (Succ!15 (n!1097 Nat!34)))))

(declare-fun n2!375 () Nat!34)

(declare-datatypes () ((Unit!285 (Unit!286))))

(declare-fun tmp!238 () Unit!285)

(declare-fun n1!359 () Nat!34)

(declare-fun inverse_lemma!0 (Nat!34 Nat!34) Unit!285)

(assert (=> b!37517 (= res!17849 (= tmp!238 (inverse_lemma!0 n1!359 n2!375)))))

(declare-fun b!37518 () Bool)

(declare-fun res!17848 () Bool)

(assert (=> b!37518 (=> (not res!17848) (not e!19285))))

(declare-fun tmp!239 () Unit!285)

(declare-fun n3!64 () Nat!34)

(declare-fun n4!2 () Nat!34)

(assert (=> b!37518 (= res!17848 (= tmp!239 (inverse_lemma!0 n3!64 n4!2)))))

(declare-fun e!19286 () Bool)

(assert (=> b!37519 (= e!19286 (and tp!7481 tp!7482 tp!7483))))

(declare-fun b!37520 () Bool)

(declare-fun res!17851 () Bool)

(assert (=> b!37520 (=> (not res!17851) (not e!19285))))

(declare-datatypes () ((tuple2!162 (tuple2!163 (_1!107 Nat!34) (_2!107 Nat!34)))))

(declare-fun project!0 (Nat!34) tuple2!162)

(declare-fun pair!0 (Nat!34 Nat!34) Nat!34)

(assert (=> b!37520 (= res!17851 (= (project!0 (pair!0 n1!359 n2!375)) (project!0 (pair!0 n3!64 n4!2))))))

(declare-fun res!17850 () Bool)

(assert (=> start!4780 (=> (not res!17850) (not e!19285))))

(assert (=> start!4780 (= res!17850 (= (pair!0 n1!359 n2!375) (pair!0 n3!64 n4!2)))))

(assert (=> start!4780 e!19285))

(assert (=> start!4780 true))

(declare-datatypes () ((RAEqEvidence!24 (RAEqEvidence!25 (x!13082 Int) (y!1351 Int) (evidence!464 Int)))))

(declare-fun x$106!1 () RAEqEvidence!24)

(declare-fun e!19287 () Bool)

(declare-fun inv!661 (RAEqEvidence!24) Bool)

(assert (=> start!4780 (and (inv!661 x$106!1) e!19287)))

(declare-fun thiss!6489 () RAEqEvidence!24)

(assert (=> start!4780 (and (inv!661 thiss!6489) e!19286)))

(assert (=> b!37521 (= e!19287 (and tp!7485 tp!7484 tp!7486))))

(declare-fun b!37522 () Bool)

(assert (=> b!37522 (= e!19285 false)))

(assert (= (and start!4780 res!17850) b!37520))

(assert (= (and b!37520 res!17851) b!37517))

(assert (= (and b!37517 res!17849) b!37518))

(assert (= (and b!37518 res!17848) b!37522))

(assert (= start!4780 b!37521))

(assert (= start!4780 b!37519))

(declare-fun m!38811 () Bool)

(assert (=> b!37517 m!38811))

(declare-fun m!38813 () Bool)

(assert (=> b!37518 m!38813))

(declare-fun m!38815 () Bool)

(assert (=> b!37520 m!38815))

(assert (=> b!37520 m!38815))

(declare-fun m!38817 () Bool)

(assert (=> b!37520 m!38817))

(declare-fun m!38819 () Bool)

(assert (=> b!37520 m!38819))

(assert (=> b!37520 m!38819))

(declare-fun m!38821 () Bool)

(assert (=> b!37520 m!38821))

(assert (=> start!4780 m!38815))

(assert (=> start!4780 m!38819))

(declare-fun m!38823 () Bool)

(assert (=> start!4780 m!38823))

(declare-fun m!38825 () Bool)

(assert (=> start!4780 m!38825))

(push 1)

(assert b_and!8221)

(assert b_and!8225)

(assert (not b_next!5481))

(assert b_and!8223)

(assert b_and!8219)

(assert (not b!37518))

(assert (not b_next!5491))

(assert (not b_next!5487))

(assert (not b_next!5483))

(assert (not b!37517))

(assert b_and!8217)

(assert (not b!37520))

(assert (not start!4780))

(assert b_and!8215)

(assert (not b_next!5489))

(assert (not b_next!5485))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8221)

(assert b_and!8225)

(assert (not b_next!5481))

(assert b_and!8223)

(assert b_and!8219)

(assert (not b_next!5491))

(assert (not b_next!5487))

(assert (not b_next!5483))

(assert b_and!8217)

(assert b_and!8215)

(assert (not b_next!5489))

(assert (not b_next!5485))

(check-sat)

(pop 1)

