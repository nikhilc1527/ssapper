; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12482 () Bool)

(assert start!12482)

(assert (=> start!12482 false))

(declare-fun e!50356 () Bool)

(assert (=> start!12482 e!50356))

(declare-fun b!91999 () Bool)

(declare-fun tp_is_empty!509 () Bool)

(assert (=> b!91999 (= e!50356 tp_is_empty!509)))

(declare-fun b!92000 () Bool)

(assert (=> b!92000 (= e!50356 tp_is_empty!509)))

(declare-fun b!92001 () Bool)

(assert (=> b!92001 (= e!50356 tp_is_empty!509)))

(declare-datatypes () ((A!4396 (A!4397 (val!252 Int)))))

(declare-datatypes () ((Foo!112 (Bar!74 (thisIsIt!35 Int) (weird!50 A!4396)) (Baz!68 (weird!51 A!4396)) (FooExt!27 (__x!347 Int) (thisIsIt!36 Int) (weird!52 A!4396)))))

(declare-fun f!5400 () Foo!112)

(assert (= (and start!12482 (is-Bar!74 f!5400)) b!91999))

(assert (= (and start!12482 (is-Baz!68 f!5400)) b!92000))

(assert (= (and start!12482 (is-FooExt!27 f!5400)) b!92001))

(push 1)

(assert tp_is_empty!509)

(check-sat)

(pop 1)

