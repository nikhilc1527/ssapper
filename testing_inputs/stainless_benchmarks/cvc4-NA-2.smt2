; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10 () Bool)

(assert start!10)

(assert (=> start!10 false))

(declare-datatypes () ((A!406 (Cons!33 (head!194 Int) (tail!206 A!406)) (Nil!34 (i!193 Int)))))

(declare-fun thiss!30 () A!406)

(declare-fun e!69 () Bool)

(declare-fun inv!55 (A!406) Bool)

(assert (=> start!10 (and (inv!55 thiss!30) e!69)))

(declare-fun b!198 () Bool)

(declare-fun tp!8 () Bool)

(assert (=> b!198 (= e!69 (and (inv!55 (tail!206 thiss!30)) tp!8))))

(assert (= (and start!10 (is-Cons!33 thiss!30)) b!198))

(declare-fun m!61 () Bool)

(assert (=> start!10 m!61))

(declare-fun m!63 () Bool)

(assert (=> b!198 m!63))

(push 1)

(assert (not start!10))

(assert (not b!198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

