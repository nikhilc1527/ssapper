; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6672 () Bool)

(assert start!6672)

(declare-datatypes () ((Nat!239 (Zero!223) (Succ!220 (n!1376 Nat!239)))))

(declare-fun n1!139 () Nat!239)

(declare-fun n2!150 () Nat!239)

(assert (=> start!6672 (and (or (not (is-Zero!223 n1!139)) (not (is-Zero!223 n2!150))) (or (not (is-Zero!223 n1!139)) (not (is-Succ!220 n2!150))) (or (not (is-Succ!220 n1!139)) (not (is-Zero!223 n2!150))) (or (not (is-Succ!220 n1!139)) (not (is-Succ!220 n2!150))))))

(assert (=> start!6672 true))

(push 1)

(check-sat)

(pop 1)

