; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5042 () Bool)

(assert start!5042)

(declare-fun b!38997 () Bool)

(declare-fun b_free!3033 () Bool)

(declare-fun b_next!7599 () Bool)

(assert (=> b!38997 (= b_free!3033 (not b_next!7599))))

(declare-fun tp!8626 () Bool)

(declare-fun b_and!10613 () Bool)

(assert (=> b!38997 (= tp!8626 b_and!10613)))

(declare-fun b_free!3035 () Bool)

(declare-fun b_next!7601 () Bool)

(assert (=> b!38997 (= b_free!3035 (not b_next!7601))))

(declare-fun tp!8627 () Bool)

(declare-fun b_and!10615 () Bool)

(assert (=> b!38997 (= tp!8627 b_and!10615)))

(declare-fun b_free!3037 () Bool)

(declare-fun b_next!7603 () Bool)

(assert (=> b!38997 (= b_free!3037 (not b_next!7603))))

(declare-fun tp!8629 () Bool)

(declare-fun b_and!10617 () Bool)

(assert (=> b!38997 (= tp!8629 b_and!10617)))

(declare-fun b!39001 () Bool)

(declare-fun b_free!3039 () Bool)

(declare-fun b_next!7605 () Bool)

(assert (=> b!39001 (= b_free!3039 (not b_next!7605))))

(declare-fun tp!8628 () Bool)

(declare-fun b_and!10619 () Bool)

(assert (=> b!39001 (= tp!8628 b_and!10619)))

(declare-fun b_free!3041 () Bool)

(declare-fun b_next!7607 () Bool)

(assert (=> b!39001 (= b_free!3041 (not b_next!7607))))

(declare-fun tp!8625 () Bool)

(declare-fun b_and!10621 () Bool)

(assert (=> b!39001 (= tp!8625 b_and!10621)))

(declare-fun b_free!3043 () Bool)

(declare-fun b_next!7609 () Bool)

(assert (=> b!39001 (= b_free!3043 (not b_next!7609))))

(declare-fun tp!8621 () Bool)

(declare-fun b_and!10623 () Bool)

(assert (=> b!39001 (= tp!8621 b_and!10623)))

(declare-fun b!39000 () Bool)

(declare-fun b_free!3045 () Bool)

(declare-fun b_next!7611 () Bool)

(assert (=> b!39000 (= b_free!3045 (not b_next!7611))))

(declare-fun tp!8624 () Bool)

(declare-fun b_and!10625 () Bool)

(assert (=> b!39000 (= tp!8624 b_and!10625)))

(declare-fun b_free!3047 () Bool)

(declare-fun b_next!7613 () Bool)

(assert (=> b!39000 (= b_free!3047 (not b_next!7613))))

(declare-fun tp!8623 () Bool)

(declare-fun b_and!10627 () Bool)

(assert (=> b!39000 (= tp!8623 b_and!10627)))

(declare-fun b_free!3049 () Bool)

(declare-fun b_next!7615 () Bool)

(assert (=> b!39000 (= b_free!3049 (not b_next!7615))))

(declare-fun tp!8622 () Bool)

(declare-fun b_and!10629 () Bool)

(assert (=> b!39000 (= tp!8622 b_and!10629)))

(declare-fun res!18619 () Bool)

(declare-fun e!20107 () Bool)

(assert (=> start!5042 (=> (not res!18619) (not e!20107))))

(declare-datatypes () ((Nat!67 (Zero!51) (Succ!48 (n!1142 Nat!67)))))

(declare-fun n2!332 () Nat!67)

(declare-fun n1!316 () Nat!67)

(declare-datatypes () ((tuple2!212 (tuple2!213 (_1!132 Nat!67) (_2!132 Nat!67)))))

(declare-fun x$98!1 () tuple2!212)

(declare-fun log2_and_remainder!0 (Nat!67) tuple2!212)

(declare-fun pair!0 (Nat!67 Nat!67) Nat!67)

(assert (=> start!5042 (= res!18619 (= x$98!1 (tuple2!213 (_1!132 (log2_and_remainder!0 (Succ!48 (pair!0 n1!316 n2!332)))) (_2!132 (log2_and_remainder!0 (Succ!48 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5042 e!20107))

(declare-datatypes () ((RAEqEvidence!120 (RAEqEvidence!121 (x!13520 Int) (y!1399 Int) (evidence!512 Int)))))

(declare-fun prev!740 () RAEqEvidence!120)

(declare-fun e!20109 () Bool)

(declare-fun inv!709 (RAEqEvidence!120) Bool)

(assert (=> start!5042 (and (inv!709 prev!740) e!20109)))

(assert (=> start!5042 true))

(declare-fun thiss!6212 () RAEqEvidence!120)

(declare-fun e!20108 () Bool)

(assert (=> start!5042 (and (inv!709 thiss!6212) e!20108)))

(declare-fun x$104!2 () RAEqEvidence!120)

(declare-fun e!20110 () Bool)

(assert (=> start!5042 (and (inv!709 x$104!2) e!20110)))

(assert (=> b!38997 (= e!20109 (and tp!8626 tp!8627 tp!8629))))

(declare-fun b!38998 () Bool)

(declare-fun res!18617 () Bool)

(assert (=> b!38998 (=> (not res!18617) (not e!20107))))

(declare-fun p2!66 () Nat!67)

(declare-fun remainder!2 () Nat!67)

(declare-fun /!2 (Nat!67 Nat!67) Nat!67)

(declare-fun -!4 (Nat!67 Nat!67) Nat!67)

(assert (=> b!38998 (= res!18617 (= p2!66 (/!2 (-!4 remainder!2 (Succ!48 Zero!51)) (Succ!48 (Succ!48 Zero!51)))))))

(declare-fun b!38999 () Bool)

(declare-fun res!18618 () Bool)

(assert (=> b!38999 (=> (not res!18618) (not e!20107))))

(declare-fun p1!72 () Nat!67)

(assert (=> b!38999 (= res!18618 (and (= p1!72 (_1!132 x$98!1)) (= remainder!2 (_2!132 x$98!1))))))

(assert (=> b!39000 (= e!20110 (and tp!8624 tp!8623 tp!8622))))

(assert (=> b!39001 (= e!20108 (and tp!8628 tp!8625 tp!8621))))

(declare-fun b!39002 () Bool)

(assert (=> b!39002 (= e!20107 false)))

(assert (= (and start!5042 res!18619) b!38999))

(assert (= (and b!38999 res!18618) b!38998))

(assert (= (and b!38998 res!18617) b!39002))

(assert (= start!5042 b!38997))

(assert (= start!5042 b!39001))

(assert (= start!5042 b!39000))

(declare-fun m!40195 () Bool)

(assert (=> start!5042 m!40195))

(declare-fun m!40197 () Bool)

(assert (=> start!5042 m!40197))

(declare-fun m!40199 () Bool)

(assert (=> start!5042 m!40199))

(declare-fun m!40201 () Bool)

(assert (=> start!5042 m!40201))

(declare-fun m!40203 () Bool)

(assert (=> start!5042 m!40203))

(declare-fun m!40205 () Bool)

(assert (=> b!38998 m!40205))

(assert (=> b!38998 m!40205))

(declare-fun m!40207 () Bool)

(assert (=> b!38998 m!40207))

(push 1)

(assert b_and!10623)

(assert (not start!5042))

(assert b_and!10627)

(assert b_and!10625)

(assert (not b_next!7609))

(assert (not b_next!7603))

(assert (not b_next!7613))

(assert b_and!10619)

(assert (not b_next!7599))

(assert (not b_next!7601))

(assert (not b_next!7611))

(assert b_and!10617)

(assert (not b!38998))

(assert b_and!10615)

(assert (not b_next!7607))

(assert b_and!10629)

(assert (not b_next!7615))

(assert b_and!10613)

(assert (not b_next!7605))

(assert b_and!10621)

(check-sat)

(pop 1)

(push 1)

(assert b_and!10623)

(assert b_and!10627)

(assert b_and!10625)

(assert (not b_next!7609))

(assert (not b_next!7603))

(assert (not b_next!7613))

(assert b_and!10619)

(assert (not b_next!7599))

(assert (not b_next!7601))

(assert (not b_next!7611))

(assert b_and!10617)

(assert b_and!10615)

(assert (not b_next!7607))

(assert b_and!10629)

(assert (not b_next!7615))

(assert b_and!10613)

(assert (not b_next!7605))

(assert b_and!10621)

(check-sat)

(pop 1)

