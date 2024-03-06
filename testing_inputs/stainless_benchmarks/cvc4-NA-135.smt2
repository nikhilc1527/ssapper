; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!764 () Bool)

(assert start!764)

(declare-fun b!5598 () Bool)

(declare-fun b_free!59 () Bool)

(declare-fun b_next!63 () Bool)

(assert (=> b!5598 (= b_free!59 (not b_next!63))))

(declare-fun tp!217 () Bool)

(declare-fun b_and!949 () Bool)

(assert (=> b!5598 (= tp!217 b_and!949)))

(declare-fun b!5601 () Bool)

(declare-fun b_free!61 () Bool)

(declare-fun b_next!65 () Bool)

(assert (=> b!5601 (= b_free!61 (not b_next!65))))

(declare-fun tp!216 () Bool)

(declare-fun b_and!951 () Bool)

(assert (=> b!5601 (= tp!216 b_and!951)))

(declare-fun b!5599 () Bool)

(declare-fun b_free!63 () Bool)

(declare-fun b_next!67 () Bool)

(assert (=> b!5599 (= b_free!63 (not b_next!67))))

(declare-fun tp!215 () Bool)

(declare-fun b_and!953 () Bool)

(assert (=> b!5599 (= tp!215 b_and!953)))

(declare-fun e!3258 () Bool)

(assert (=> b!5598 (= e!3258 tp!217)))

(assert (=> start!764 false))

(declare-fun e!3254 () Bool)

(assert (=> start!764 e!3254))

(assert (=> start!764 true))

(declare-fun e!3253 () Bool)

(assert (=> start!764 e!3253))

(declare-fun e!3256 () Bool)

(assert (=> start!764 e!3256))

(declare-fun e!3255 () Bool)

(assert (=> b!5599 (= e!3255 tp!215)))

(declare-fun b!5600 () Bool)

(assert (=> b!5600 (= e!3254 e!3258)))

(declare-fun e!3257 () Bool)

(assert (=> b!5601 (= e!3257 tp!216)))

(declare-fun b!5602 () Bool)

(assert (=> b!5602 (= e!3253 e!3257)))

(declare-fun b!5603 () Bool)

(assert (=> b!5603 (= e!3256 e!3255)))

(assert (= b!5600 b!5598))

(assert (= start!764 b!5600))

(assert (= b!5602 b!5601))

(assert (= start!764 b!5602))

(assert (= b!5603 b!5599))

(assert (= start!764 b!5603))

(push 1)

(assert b_and!951)

(assert b_and!949)

(assert (not b_next!67))

(assert b_and!953)

(assert (not b_next!63))

(assert (not b_next!65))

(check-sat)

(pop 1)

