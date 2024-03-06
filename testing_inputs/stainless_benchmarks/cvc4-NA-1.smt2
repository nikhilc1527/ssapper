; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8 () Bool)

(assert start!8)

(assert (=> start!8 false))

(declare-datatypes () ((A!405 (Cons!32 (head!193 Int) (tail!205 A!405)) (Nil!33 (i!192 Int)))))

(declare-fun thiss!30 () A!405)

(declare-fun e!66 () Bool)

(declare-fun inv!55 (A!405) Bool)

(assert (=> start!8 (and (inv!55 thiss!30) e!66)))

(declare-fun b!195 () Bool)

(declare-fun tp!5 () Bool)

(assert (=> b!195 (= e!66 (and (inv!55 (tail!205 thiss!30)) tp!5))))

(assert (= (and start!8 (is-Cons!32 thiss!30)) b!195))

(declare-fun m!57 () Bool)

(assert (=> start!8 m!57))

(declare-fun m!59 () Bool)

(assert (=> b!195 m!59))

(push 1)

(assert (not start!8))

(assert (not b!195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

