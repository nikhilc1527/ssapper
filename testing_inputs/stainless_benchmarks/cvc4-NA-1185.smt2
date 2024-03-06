; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8456 () Bool)

(assert start!8456)

(declare-datatypes () ((Option!361 (Some!344 (v!2226 (_ BitVec 32))) (None!345))))

(declare-fun m!63739 () (Array (_ BitVec 32) Option!361))

(declare-fun m2!3 () (Array (_ BitVec 32) Option!361))

(assert (=> start!8456 (and (not (= (select m!63739 #b00000000000000000000000000000001) None!345)) (not (= (select m!63739 #b00000000000000000000000000000010) None!345)) (not (= (select m!63739 #b00000000000000000000000000000011) None!345)) (= m2!3 (store (store m!63739 #b00000000000000000000000000000001 None!345) #b00000000000000000000000000000010 None!345)) (= (select m2!3 #b00000000000000000000000000000001) None!345) (= (select m2!3 #b00000000000000000000000000000010) None!345) (not (= (select m2!3 #b00000000000000000000000000000011) None!345)) (not (is-Some!344 (select m!63739 #b00000000000000000000000000000011))))))

(assert (=> start!8456 true))

(declare-fun bs!36412 () Bool)

(assert (= bs!36412 start!8456))

(declare-fun m!63815 () Bool)

(assert (=> bs!36412 m!63815))

(declare-fun m!63817 () Bool)

(assert (=> bs!36412 m!63817))

(declare-fun m!63819 () Bool)

(assert (=> bs!36412 m!63819))

(declare-fun m!63821 () Bool)

(assert (=> bs!36412 m!63821))

(declare-fun m!63823 () Bool)

(assert (=> bs!36412 m!63823))

(declare-fun m!63825 () Bool)

(assert (=> bs!36412 m!63825))

(declare-fun m!63827 () Bool)

(assert (=> bs!36412 m!63827))

(declare-fun m!63829 () Bool)

(assert (=> bs!36412 m!63829))

(push 1)

(check-sat)

(pop 1)

