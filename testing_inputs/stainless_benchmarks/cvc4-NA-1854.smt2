; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12472 () Bool)

(assert start!12472)

(assert (=> start!12472 false))

(declare-fun e!50332 () Bool)

(assert (=> start!12472 e!50332))

(declare-fun b!91927 () Bool)

(declare-fun tp_is_empty!499 () Bool)

(assert (=> b!91927 (= e!50332 tp_is_empty!499)))

(declare-fun b!91928 () Bool)

(assert (=> b!91928 (= e!50332 tp_is_empty!499)))

(declare-fun b!91929 () Bool)

(assert (=> b!91929 (= e!50332 tp_is_empty!499)))

(declare-datatypes () ((B!767 (B!768 (val!247 Int)))))

(declare-datatypes () ((Foo!107 (Bar!69 (thisIsIt!25 Int) (weird!35 B!767)) (Baz!63 (weird!36 B!767)) (FooExt!22 (__x!342 Int) (thisIsIt!26 Int) (weird!37 B!767)))))

(declare-fun thiss!10869 () Foo!107)

(assert (= (and start!12472 (is-Bar!69 thiss!10869)) b!91927))

(assert (= (and start!12472 (is-Baz!63 thiss!10869)) b!91928))

(assert (= (and start!12472 (is-FooExt!22 thiss!10869)) b!91929))

(push 1)

(assert tp_is_empty!499)

(check-sat)

(pop 1)

