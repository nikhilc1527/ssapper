; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12470 () Bool)

(assert start!12470)

(assert (=> start!12470 false))

(declare-fun e!50329 () Bool)

(assert (=> start!12470 e!50329))

(declare-fun b!91918 () Bool)

(declare-fun tp_is_empty!497 () Bool)

(assert (=> b!91918 (= e!50329 tp_is_empty!497)))

(declare-fun b!91919 () Bool)

(assert (=> b!91919 (= e!50329 tp_is_empty!497)))

(declare-fun b!91920 () Bool)

(assert (=> b!91920 (= e!50329 tp_is_empty!497)))

(declare-datatypes () ((B!765 (B!766 (val!246 Int)))))

(declare-datatypes () ((Foo!106 (Bar!68 (thisIsIt!23 Int) (weird!32 B!765)) (Baz!62 (weird!33 B!765)) (FooExt!21 (__x!341 Int) (thisIsIt!24 Int) (weird!34 B!765)))))

(declare-fun thiss!10869 () Foo!106)

(assert (= (and start!12470 (is-Bar!68 thiss!10869)) b!91918))

(assert (= (and start!12470 (is-Baz!62 thiss!10869)) b!91919))

(assert (= (and start!12470 (is-FooExt!21 thiss!10869)) b!91920))

(push 1)

(assert tp_is_empty!497)

(check-sat)

(pop 1)

