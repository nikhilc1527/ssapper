; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15470 () Bool)

(assert start!15470)

(declare-datatypes () ((P!90 (Charlie!90) (Alice!90) (Bob!90))))

(declare-datatypes () ((S!135 (S!136 (who!3384 P!90) (amount!3384 Int)))))

(declare-datatypes () ((List!889 (Cons!827 (h!7436 S!135) (t!55749 List!889)) (Nil!829))))

(declare-fun thiss!14264 () List!889)

(declare-fun who!3379 () P!90)

(declare-fun d!61760 () Int)

(declare-fun n!1929 () Int)

(declare-fun x0$3!522 () S!135)

(assert (=> start!15470 (and (= thiss!14264 (Cons!827 (S!136 Alice!90 0) (Cons!827 (S!136 Charlie!90 4000) Nil!829))) (= who!3379 (who!3384 x0$3!522)) (= n!1929 4000) (= d!61760 2) (= d!61760 0))))

(assert (=> start!15470 true))

(push 1)

(check-sat)

(pop 1)

