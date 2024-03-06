; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5036 () Bool)

(assert start!5036)

(declare-fun b!38921 () Bool)

(declare-fun b_free!2967 () Bool)

(declare-fun b_next!7461 () Bool)

(assert (=> b!38921 (= b_free!2967 (not b_next!7461))))

(declare-fun tp!8535 () Bool)

(declare-fun b_and!10509 () Bool)

(assert (=> b!38921 (= tp!8535 b_and!10509)))

(declare-fun b_free!2969 () Bool)

(declare-fun b_next!7463 () Bool)

(assert (=> b!38921 (= b_free!2969 (not b_next!7463))))

(declare-fun tp!8533 () Bool)

(declare-fun b_and!10511 () Bool)

(assert (=> b!38921 (= tp!8533 b_and!10511)))

(declare-fun b_free!2971 () Bool)

(declare-fun b_next!7465 () Bool)

(assert (=> b!38921 (= b_free!2971 (not b_next!7465))))

(declare-fun tp!8539 () Bool)

(declare-fun b_and!10513 () Bool)

(assert (=> b!38921 (= tp!8539 b_and!10513)))

(declare-fun b!38924 () Bool)

(declare-fun b_free!2973 () Bool)

(declare-fun b_next!7467 () Bool)

(assert (=> b!38924 (= b_free!2973 (not b_next!7467))))

(declare-fun tp!8530 () Bool)

(declare-fun b_and!10515 () Bool)

(assert (=> b!38924 (= tp!8530 b_and!10515)))

(declare-fun b_free!2975 () Bool)

(declare-fun b_next!7469 () Bool)

(assert (=> b!38924 (= b_free!2975 (not b_next!7469))))

(declare-fun tp!8536 () Bool)

(declare-fun b_and!10517 () Bool)

(assert (=> b!38924 (= tp!8536 b_and!10517)))

(declare-fun b_free!2977 () Bool)

(declare-fun b_next!7471 () Bool)

(assert (=> b!38924 (= b_free!2977 (not b_next!7471))))

(declare-fun tp!8537 () Bool)

(declare-fun b_and!10519 () Bool)

(assert (=> b!38924 (= tp!8537 b_and!10519)))

(declare-fun b!38926 () Bool)

(declare-fun b_free!2979 () Bool)

(declare-fun b_next!7473 () Bool)

(assert (=> b!38926 (= b_free!2979 (not b_next!7473))))

(declare-fun tp!8538 () Bool)

(declare-fun b_and!10521 () Bool)

(assert (=> b!38926 (= tp!8538 b_and!10521)))

(declare-fun b_free!2981 () Bool)

(declare-fun b_next!7475 () Bool)

(assert (=> b!38926 (= b_free!2981 (not b_next!7475))))

(declare-fun tp!8531 () Bool)

(declare-fun b_and!10523 () Bool)

(assert (=> b!38926 (= tp!8531 b_and!10523)))

(declare-fun b_free!2983 () Bool)

(declare-fun b_next!7477 () Bool)

(assert (=> b!38926 (= b_free!2983 (not b_next!7477))))

(declare-fun tp!8528 () Bool)

(declare-fun b_and!10525 () Bool)

(assert (=> b!38926 (= tp!8528 b_and!10525)))

(declare-fun b!38925 () Bool)

(declare-fun b_free!2985 () Bool)

(declare-fun b_next!7479 () Bool)

(assert (=> b!38925 (= b_free!2985 (not b_next!7479))))

(declare-fun tp!8534 () Bool)

(declare-fun b_and!10527 () Bool)

(assert (=> b!38925 (= tp!8534 b_and!10527)))

(declare-fun b_free!2987 () Bool)

(declare-fun b_next!7481 () Bool)

(assert (=> b!38925 (= b_free!2987 (not b_next!7481))))

(declare-fun tp!8529 () Bool)

(declare-fun b_and!10529 () Bool)

(assert (=> b!38925 (= tp!8529 b_and!10529)))

(declare-fun b_free!2989 () Bool)

(declare-fun b_next!7483 () Bool)

(assert (=> b!38925 (= b_free!2989 (not b_next!7483))))

(declare-fun tp!8532 () Bool)

(declare-fun b_and!10531 () Bool)

(assert (=> b!38925 (= tp!8532 b_and!10531)))

(declare-fun b!38920 () Bool)

(declare-fun res!18575 () Bool)

(declare-fun e!20070 () Bool)

(assert (=> b!38920 (=> (not res!18575) (not e!20070))))

(declare-datatypes () ((Nat!64 (Zero!48) (Succ!45 (n!1139 Nat!64)))))

(declare-fun p2!66 () Nat!64)

(declare-fun remainder!2 () Nat!64)

(declare-fun /!2 (Nat!64 Nat!64) Nat!64)

(declare-fun -!4 (Nat!64 Nat!64) Nat!64)

(assert (=> b!38920 (= res!18575 (= p2!66 (/!2 (-!4 remainder!2 (Succ!45 Zero!48)) (Succ!45 (Succ!45 Zero!48)))))))

(declare-fun e!20071 () Bool)

(assert (=> b!38921 (= e!20071 (and tp!8535 tp!8533 tp!8539))))

(declare-fun b!38922 () Bool)

(assert (=> b!38922 (= e!20070 false)))

(declare-fun b!38923 () Bool)

(declare-fun res!18576 () Bool)

(assert (=> b!38923 (=> (not res!18576) (not e!20070))))

(declare-fun p1!72 () Nat!64)

(declare-datatypes () ((tuple2!206 (tuple2!207 (_1!129 Nat!64) (_2!129 Nat!64)))))

(declare-fun x$98!1 () tuple2!206)

(assert (=> b!38923 (= res!18576 (and (= p1!72 (_1!129 x$98!1)) (= remainder!2 (_2!129 x$98!1))))))

(declare-fun e!20069 () Bool)

(assert (=> b!38924 (= e!20069 (and tp!8530 tp!8536 tp!8537))))

(declare-fun e!20067 () Bool)

(assert (=> b!38925 (= e!20067 (and tp!8534 tp!8529 tp!8532))))

(declare-fun e!20068 () Bool)

(assert (=> b!38926 (= e!20068 (and tp!8538 tp!8531 tp!8528))))

(declare-fun res!18577 () Bool)

(assert (=> start!5036 (=> (not res!18577) (not e!20070))))

(declare-fun n2!332 () Nat!64)

(declare-fun n1!316 () Nat!64)

(declare-fun log2_and_remainder!0 (Nat!64) tuple2!206)

(declare-fun pair!0 (Nat!64 Nat!64) Nat!64)

(assert (=> start!5036 (= res!18577 (= x$98!1 (tuple2!207 (_1!129 (log2_and_remainder!0 (Succ!45 (pair!0 n1!316 n2!332)))) (_2!129 (log2_and_remainder!0 (Succ!45 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5036 e!20070))

(assert (=> start!5036 true))

(declare-datatypes () ((RAEqEvidence!110 (RAEqEvidence!111 (x!13496 Int) (y!1394 Int) (evidence!507 Int)))))

(declare-fun x$103!3 () RAEqEvidence!110)

(declare-fun inv!704 (RAEqEvidence!110) Bool)

(assert (=> start!5036 (and (inv!704 x$103!3) e!20071)))

(declare-datatypes () ((Unit!339 (Unit!340))))

(declare-datatypes () ((RAEqEvidence!112 (RAEqEvidence!113 (x!13497 Int) (y!1395 Int) (evidence!508 Int)))))

(declare-fun thiss!6214 () RAEqEvidence!112)

(declare-fun inv!705 (RAEqEvidence!112) Bool)

(assert (=> start!5036 (and (inv!705 thiss!6214) e!20069)))

(declare-fun prev!739 () RAEqEvidence!110)

(assert (=> start!5036 (and (inv!704 prev!739) e!20068)))

(declare-fun x$104!2 () RAEqEvidence!110)

(assert (=> start!5036 (and (inv!704 x$104!2) e!20067)))

(assert (= (and start!5036 res!18577) b!38923))

(assert (= (and b!38923 res!18576) b!38920))

(assert (= (and b!38920 res!18575) b!38922))

(assert (= start!5036 b!38921))

(assert (= start!5036 b!38924))

(assert (= start!5036 b!38926))

(assert (= start!5036 b!38925))

(declare-fun m!40137 () Bool)

(assert (=> b!38920 m!40137))

(assert (=> b!38920 m!40137))

(declare-fun m!40139 () Bool)

(assert (=> b!38920 m!40139))

(declare-fun m!40141 () Bool)

(assert (=> start!5036 m!40141))

(declare-fun m!40143 () Bool)

(assert (=> start!5036 m!40143))

(declare-fun m!40145 () Bool)

(assert (=> start!5036 m!40145))

(declare-fun m!40147 () Bool)

(assert (=> start!5036 m!40147))

(declare-fun m!40149 () Bool)

(assert (=> start!5036 m!40149))

(declare-fun m!40151 () Bool)

(assert (=> start!5036 m!40151))

(push 1)

(assert b_and!10531)

(assert b_and!10529)

(assert (not start!5036))

(assert b_and!10517)

(assert (not b_next!7467))

(assert (not b_next!7471))

(assert b_and!10515)

(assert (not b_next!7479))

(assert (not b_next!7483))

(assert (not b_next!7465))

(assert (not b_next!7481))

(assert (not b_next!7463))

(assert (not b_next!7475))

(assert b_and!10513)

(assert b_and!10521)

(assert b_and!10509)

(assert (not b_next!7469))

(assert b_and!10511)

(assert b_and!10525)

(assert b_and!10519)

(assert b_and!10527)

(assert (not b_next!7461))

(assert (not b_next!7473))

(assert (not b_next!7477))

(assert b_and!10523)

(assert (not b!38920))

(check-sat)

(pop 1)

(push 1)

(assert b_and!10531)

(assert b_and!10529)

(assert b_and!10517)

(assert (not b_next!7467))

(assert (not b_next!7471))

(assert b_and!10515)

(assert (not b_next!7479))

(assert (not b_next!7483))

(assert (not b_next!7465))

(assert (not b_next!7481))

(assert (not b_next!7463))

(assert (not b_next!7475))

(assert b_and!10513)

(assert b_and!10521)

(assert b_and!10509)

(assert (not b_next!7469))

(assert b_and!10511)

(assert b_and!10525)

(assert b_and!10519)

(assert b_and!10527)

(assert (not b_next!7461))

(assert (not b_next!7473))

(assert (not b_next!7477))

(assert b_and!10523)

(check-sat)

(pop 1)

