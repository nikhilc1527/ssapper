; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9848 () Bool)

(assert start!9848)

(declare-datatypes () ((List!594 (Nil!552) (Cons!551 (head!961 Int) (tail!982 List!594)))))

(declare-fun lt!15176 () List!594)

(declare-fun l2!383 () List!594)

(declare-fun reverse!1 (List!594) List!594)

(assert (=> start!9848 (= lt!15176 (reverse!1 l2!383))))

(declare-fun lt!15175 () List!594)

(declare-fun l1!390 () List!594)

(assert (=> start!9848 (= lt!15175 (reverse!1 l1!390))))

(assert (=> start!9848 false))

(assert (=> start!9848 true))

(declare-fun bs!37728 () Bool)

(assert (= bs!37728 start!9848))

(declare-fun m!71146 () Bool)

(assert (=> bs!37728 m!71146))

(declare-fun m!71148 () Bool)

(assert (=> bs!37728 m!71148))

(push 1)

(assert (not start!9848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

