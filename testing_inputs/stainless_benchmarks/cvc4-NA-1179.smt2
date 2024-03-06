; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8444 () Bool)

(assert start!8444)

(declare-datatypes () ((Option!356 (Some!339 (v!2221 (_ BitVec 32))) (None!340))))

(declare-fun m!63739 () (Array (_ BitVec 32) Option!356))

(declare-fun m2!3 () (Array (_ BitVec 32) Option!356))

(assert (=> start!8444 (and (not (= (select m!63739 #b00000000000000000000000000000001) None!340)) (not (= (select m!63739 #b00000000000000000000000000000010) None!340)) (not (= (select m!63739 #b00000000000000000000000000000011) None!340)) (= m2!3 (store (store m!63739 #b00000000000000000000000000000001 None!340) #b00000000000000000000000000000010 None!340)) (not (= (select m2!3 #b00000000000000000000000000000001) None!340)))))

(assert (=> start!8444 true))

(declare-fun bs!36401 () Bool)

(assert (= bs!36401 start!8444))

(declare-fun m!63741 () Bool)

(assert (=> bs!36401 m!63741))

(declare-fun m!63743 () Bool)

(assert (=> bs!36401 m!63743))

(declare-fun m!63745 () Bool)

(assert (=> bs!36401 m!63745))

(declare-fun m!63747 () Bool)

(assert (=> bs!36401 m!63747))

(declare-fun m!63749 () Bool)

(assert (=> bs!36401 m!63749))

(declare-fun m!63751 () Bool)

(assert (=> bs!36401 m!63751))

(push 1)

(check-sat)

(pop 1)

