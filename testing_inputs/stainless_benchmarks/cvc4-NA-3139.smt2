; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15432 () Bool)

(assert start!15432)

(declare-datatypes () ((P!84 (Charlie!84) (Alice!84) (Bob!84))))

(declare-datatypes () ((S!129 (S!130 (who!3235 P!84) (amount!3235 Int)))))

(declare-datatypes () ((List!886 (Cons!824 (h!7208 S!129) (t!55518 List!886)) (Nil!826))))

(declare-fun size!997 (List!886) Int)

(assert (=> start!15432 (not (= (size!997 Nil!826) (size!997 Nil!826)))))

(declare-fun bs!43321 () Bool)

(assert (= bs!43321 start!15432))

(declare-fun m!90221 () Bool)

(assert (=> bs!43321 m!90221))

(push 1)

(assert (not start!15432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

