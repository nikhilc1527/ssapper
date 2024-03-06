; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5034 () Bool)

(assert start!5034)

(declare-fun b!38899 () Bool)

(declare-fun b_free!2943 () Bool)

(declare-fun b_next!7437 () Bool)

(assert (=> b!38899 (= b_free!2943 (not b_next!7437))))

(declare-fun tp!8492 () Bool)

(declare-fun b_and!10485 () Bool)

(assert (=> b!38899 (= tp!8492 b_and!10485)))

(declare-fun b_free!2945 () Bool)

(declare-fun b_next!7439 () Bool)

(assert (=> b!38899 (= b_free!2945 (not b_next!7439))))

(declare-fun tp!8498 () Bool)

(declare-fun b_and!10487 () Bool)

(assert (=> b!38899 (= tp!8498 b_and!10487)))

(declare-fun b_free!2947 () Bool)

(declare-fun b_next!7441 () Bool)

(assert (=> b!38899 (= b_free!2947 (not b_next!7441))))

(declare-fun tp!8494 () Bool)

(declare-fun b_and!10489 () Bool)

(assert (=> b!38899 (= tp!8494 b_and!10489)))

(declare-fun b!38900 () Bool)

(declare-fun b_free!2949 () Bool)

(declare-fun b_next!7443 () Bool)

(assert (=> b!38900 (= b_free!2949 (not b_next!7443))))

(declare-fun tp!8500 () Bool)

(declare-fun b_and!10491 () Bool)

(assert (=> b!38900 (= tp!8500 b_and!10491)))

(declare-fun b_free!2951 () Bool)

(declare-fun b_next!7445 () Bool)

(assert (=> b!38900 (= b_free!2951 (not b_next!7445))))

(declare-fun tp!8501 () Bool)

(declare-fun b_and!10493 () Bool)

(assert (=> b!38900 (= tp!8501 b_and!10493)))

(declare-fun b_free!2953 () Bool)

(declare-fun b_next!7447 () Bool)

(assert (=> b!38900 (= b_free!2953 (not b_next!7447))))

(declare-fun tp!8493 () Bool)

(declare-fun b_and!10495 () Bool)

(assert (=> b!38900 (= tp!8493 b_and!10495)))

(declare-fun b!38904 () Bool)

(declare-fun b_free!2955 () Bool)

(declare-fun b_next!7449 () Bool)

(assert (=> b!38904 (= b_free!2955 (not b_next!7449))))

(declare-fun tp!8497 () Bool)

(declare-fun b_and!10497 () Bool)

(assert (=> b!38904 (= tp!8497 b_and!10497)))

(declare-fun b_free!2957 () Bool)

(declare-fun b_next!7451 () Bool)

(assert (=> b!38904 (= b_free!2957 (not b_next!7451))))

(declare-fun tp!8499 () Bool)

(declare-fun b_and!10499 () Bool)

(assert (=> b!38904 (= tp!8499 b_and!10499)))

(declare-fun b_free!2959 () Bool)

(declare-fun b_next!7453 () Bool)

(assert (=> b!38904 (= b_free!2959 (not b_next!7453))))

(declare-fun tp!8495 () Bool)

(declare-fun b_and!10501 () Bool)

(assert (=> b!38904 (= tp!8495 b_and!10501)))

(declare-fun b!38901 () Bool)

(declare-fun b_free!2961 () Bool)

(declare-fun b_next!7455 () Bool)

(assert (=> b!38901 (= b_free!2961 (not b_next!7455))))

(declare-fun tp!8496 () Bool)

(declare-fun b_and!10503 () Bool)

(assert (=> b!38901 (= tp!8496 b_and!10503)))

(declare-fun b_free!2963 () Bool)

(declare-fun b_next!7457 () Bool)

(assert (=> b!38901 (= b_free!2963 (not b_next!7457))))

(declare-fun tp!8502 () Bool)

(declare-fun b_and!10505 () Bool)

(assert (=> b!38901 (= tp!8502 b_and!10505)))

(declare-fun b_free!2965 () Bool)

(declare-fun b_next!7459 () Bool)

(assert (=> b!38901 (= b_free!2965 (not b_next!7459))))

(declare-fun tp!8503 () Bool)

(declare-fun b_and!10507 () Bool)

(assert (=> b!38901 (= tp!8503 b_and!10507)))

(declare-fun e!20052 () Bool)

(assert (=> b!38899 (= e!20052 (and tp!8492 tp!8498 tp!8494))))

(declare-fun e!20053 () Bool)

(assert (=> b!38900 (= e!20053 (and tp!8500 tp!8501 tp!8493))))

(declare-fun e!20055 () Bool)

(assert (=> b!38901 (= e!20055 (and tp!8496 tp!8502 tp!8503))))

(declare-fun b!38902 () Bool)

(declare-fun res!18566 () Bool)

(declare-fun e!20056 () Bool)

(assert (=> b!38902 (=> (not res!18566) (not e!20056))))

(declare-datatypes () ((Nat!63 (Zero!47) (Succ!44 (n!1138 Nat!63)))))

(declare-fun remainder!2 () Nat!63)

(declare-fun p1!72 () Nat!63)

(declare-datatypes () ((tuple2!204 (tuple2!205 (_1!128 Nat!63) (_2!128 Nat!63)))))

(declare-fun x$98!1 () tuple2!204)

(assert (=> b!38902 (= res!18566 (and (= p1!72 (_1!128 x$98!1)) (= remainder!2 (_2!128 x$98!1))))))

(declare-fun b!38903 () Bool)

(assert (=> b!38903 (= e!20056 false)))

(declare-fun e!20054 () Bool)

(assert (=> b!38904 (= e!20054 (and tp!8497 tp!8499 tp!8495))))

(declare-fun b!38905 () Bool)

(declare-fun res!18568 () Bool)

(assert (=> b!38905 (=> (not res!18568) (not e!20056))))

(declare-fun p2!66 () Nat!63)

(declare-fun /!2 (Nat!63 Nat!63) Nat!63)

(declare-fun -!4 (Nat!63 Nat!63) Nat!63)

(assert (=> b!38905 (= res!18568 (= p2!66 (/!2 (-!4 remainder!2 (Succ!44 Zero!47)) (Succ!44 (Succ!44 Zero!47)))))))

(declare-fun res!18567 () Bool)

(assert (=> start!5034 (=> (not res!18567) (not e!20056))))

(declare-fun n2!332 () Nat!63)

(declare-fun n1!316 () Nat!63)

(declare-fun log2_and_remainder!0 (Nat!63) tuple2!204)

(declare-fun pair!0 (Nat!63 Nat!63) Nat!63)

(assert (=> start!5034 (= res!18567 (= x$98!1 (tuple2!205 (_1!128 (log2_and_remainder!0 (Succ!44 (pair!0 n1!316 n2!332)))) (_2!128 (log2_and_remainder!0 (Succ!44 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5034 e!20056))

(assert (=> start!5034 true))

(declare-datatypes () ((RAEqEvidence!106 (RAEqEvidence!107 (x!13494 Int) (y!1392 Int) (evidence!505 Int)))))

(declare-fun x$103!3 () RAEqEvidence!106)

(declare-fun inv!702 (RAEqEvidence!106) Bool)

(assert (=> start!5034 (and (inv!702 x$103!3) e!20052)))

(declare-datatypes () ((Unit!337 (Unit!338))))

(declare-datatypes () ((RAEqEvidence!108 (RAEqEvidence!109 (x!13495 Int) (y!1393 Int) (evidence!506 Int)))))

(declare-fun thiss!6214 () RAEqEvidence!108)

(declare-fun inv!703 (RAEqEvidence!108) Bool)

(assert (=> start!5034 (and (inv!703 thiss!6214) e!20053)))

(declare-fun prev!739 () RAEqEvidence!106)

(assert (=> start!5034 (and (inv!702 prev!739) e!20054)))

(declare-fun x$104!2 () RAEqEvidence!106)

(assert (=> start!5034 (and (inv!702 x$104!2) e!20055)))

(assert (= (and start!5034 res!18567) b!38902))

(assert (= (and b!38902 res!18566) b!38905))

(assert (= (and b!38905 res!18568) b!38903))

(assert (= start!5034 b!38899))

(assert (= start!5034 b!38900))

(assert (= start!5034 b!38904))

(assert (= start!5034 b!38901))

(declare-fun m!40121 () Bool)

(assert (=> b!38905 m!40121))

(assert (=> b!38905 m!40121))

(declare-fun m!40123 () Bool)

(assert (=> b!38905 m!40123))

(declare-fun m!40125 () Bool)

(assert (=> start!5034 m!40125))

(declare-fun m!40127 () Bool)

(assert (=> start!5034 m!40127))

(declare-fun m!40129 () Bool)

(assert (=> start!5034 m!40129))

(declare-fun m!40131 () Bool)

(assert (=> start!5034 m!40131))

(declare-fun m!40133 () Bool)

(assert (=> start!5034 m!40133))

(declare-fun m!40135 () Bool)

(assert (=> start!5034 m!40135))

(push 1)

(assert b_and!10487)

(assert b_and!10503)

(assert (not b_next!7453))

(assert (not b_next!7447))

(assert (not b!38905))

(assert (not b_next!7437))

(assert (not b_next!7457))

(assert (not start!5034))

(assert b_and!10493)

(assert b_and!10499)

(assert (not b_next!7449))

(assert (not b_next!7445))

(assert (not b_next!7439))

(assert b_and!10495)

(assert (not b_next!7443))

(assert (not b_next!7441))

(assert (not b_next!7459))

(assert b_and!10505)

(assert b_and!10485)

(assert (not b_next!7455))

(assert b_and!10497)

(assert b_and!10507)

(assert b_and!10491)

(assert b_and!10501)

(assert b_and!10489)

(assert (not b_next!7451))

(check-sat)

(pop 1)

(push 1)

(assert b_and!10487)

(assert b_and!10503)

(assert (not b_next!7453))

(assert (not b_next!7447))

(assert (not b_next!7437))

(assert (not b_next!7457))

(assert b_and!10493)

(assert b_and!10499)

(assert (not b_next!7449))

(assert (not b_next!7445))

(assert (not b_next!7439))

(assert b_and!10495)

(assert (not b_next!7443))

(assert (not b_next!7441))

(assert (not b_next!7459))

(assert b_and!10505)

(assert b_and!10485)

(assert (not b_next!7455))

(assert b_and!10497)

(assert b_and!10507)

(assert b_and!10491)

(assert b_and!10501)

(assert b_and!10489)

(assert (not b_next!7451))

(check-sat)

(pop 1)

