; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7466 () Bool)

(assert start!7466)

(declare-datatypes () ((List!445 (Nil!425) (Cons!424 (head!684 (_ BitVec 32)) (tail!710 List!445)))))

(declare-fun l!1149 () List!445)

(declare-fun x$1!769 () Int)

(assert (=> start!7466 (and (is-Nil!425 l!1149) (= x$1!769 0) (< x$1!769 0))))

(assert (=> start!7466 true))

(push 1)

(check-sat)

(pop 1)

