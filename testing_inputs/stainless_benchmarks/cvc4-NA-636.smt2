; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4588 () Bool)

(assert start!4588)

(declare-fun x!11323 () (_ BitVec 32))

(declare-fun y!1113 () (_ BitVec 32))

(declare-datatypes () ((tuple2!148 (tuple2!149 (_1!100 (_ BitVec 32)) (_2!100 (_ BitVec 32))))))

(declare-fun x$1!559 () tuple2!148)

(assert (=> start!4588 (and (bvsge x!11323 y!1113) (= x$1!559 (tuple2!149 y!1113 x!11323)) (or (bvsgt (_1!100 x$1!559) (_2!100 x$1!559)) (not (= (insert (_2!100 x$1!559) (insert (_1!100 x$1!559) (as emptyset (Set (_ BitVec 32))))) (insert y!1113 (insert x!11323 (as emptyset (Set (_ BitVec 32)))))))))))

(assert (=> start!4588 true))

(declare-fun bs!11262 () Bool)

(assert (= bs!11262 start!4588))

(declare-fun m!37899 () Bool)

(assert (=> bs!11262 m!37899))

(declare-fun m!37901 () Bool)

(assert (=> bs!11262 m!37901))

(declare-fun m!37903 () Bool)

(assert (=> bs!11262 m!37903))

(declare-fun m!37905 () Bool)

(assert (=> bs!11262 m!37905))

(push 1)

(check-sat)

(pop 1)

