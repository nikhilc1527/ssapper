; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8448 () Bool)

(assert start!8448)

(declare-datatypes () ((Option!358 (Some!341 (v!2223 (_ BitVec 32))) (None!342))))

(declare-fun m!63739 () (Array (_ BitVec 32) Option!358))

(declare-fun m2!3 () (Array (_ BitVec 32) Option!358))

(assert (=> start!8448 (and (not (= (select m!63739 #b00000000000000000000000000000001) None!342)) (not (= (select m!63739 #b00000000000000000000000000000010) None!342)) (not (= (select m!63739 #b00000000000000000000000000000011) None!342)) (= m2!3 (store (store m!63739 #b00000000000000000000000000000001 None!342) #b00000000000000000000000000000010 None!342)) (= (select m2!3 #b00000000000000000000000000000001) None!342) (= (select m2!3 #b00000000000000000000000000000010) None!342) (= (select m2!3 #b00000000000000000000000000000011) None!342))))

(assert (=> start!8448 true))

(declare-fun bs!36405 () Bool)

(assert (= bs!36405 start!8448))

(declare-fun m!63767 () Bool)

(assert (=> bs!36405 m!63767))

(declare-fun m!63769 () Bool)

(assert (=> bs!36405 m!63769))

(declare-fun m!63771 () Bool)

(assert (=> bs!36405 m!63771))

(declare-fun m!63773 () Bool)

(assert (=> bs!36405 m!63773))

(declare-fun m!63775 () Bool)

(assert (=> bs!36405 m!63775))

(declare-fun m!63777 () Bool)

(assert (=> bs!36405 m!63777))

(declare-fun m!63779 () Bool)

(assert (=> bs!36405 m!63779))

(declare-fun m!63781 () Bool)

(assert (=> bs!36405 m!63781))

(push 1)

(check-sat)

(pop 1)

