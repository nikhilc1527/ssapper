; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4586 () Bool)

(assert start!4586)

(declare-fun x!11323 () (_ BitVec 32))

(declare-fun y!1113 () (_ BitVec 32))

(declare-datatypes () ((tuple2!146 (tuple2!147 (_1!99 (_ BitVec 32)) (_2!99 (_ BitVec 32))))))

(declare-fun x$1!558 () tuple2!146)

(assert (=> start!4586 (and (bvslt x!11323 y!1113) (= x$1!558 (tuple2!147 x!11323 y!1113)) (or (bvsgt (_1!99 x$1!558) (_2!99 x$1!558)) (not (= (insert (_2!99 x$1!558) (insert (_1!99 x$1!558) (as emptyset (Set (_ BitVec 32))))) (insert y!1113 (insert x!11323 (as emptyset (Set (_ BitVec 32)))))))))))

(assert (=> start!4586 true))

(declare-fun bs!11260 () Bool)

(assert (= bs!11260 start!4586))

(declare-fun m!37891 () Bool)

(assert (=> bs!11260 m!37891))

(declare-fun m!37893 () Bool)

(assert (=> bs!11260 m!37893))

(declare-fun m!37895 () Bool)

(assert (=> bs!11260 m!37895))

(declare-fun m!37897 () Bool)

(assert (=> bs!11260 m!37897))

(push 1)

(check-sat)

(pop 1)

