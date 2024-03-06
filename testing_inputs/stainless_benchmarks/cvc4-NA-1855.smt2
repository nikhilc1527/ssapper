; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12474 () Bool)

(assert start!12474)

(assert (=> start!12474 false))

(declare-fun e!50335 () Bool)

(assert (=> start!12474 e!50335))

(declare-fun b!91936 () Bool)

(declare-fun tp_is_empty!501 () Bool)

(assert (=> b!91936 (= e!50335 tp_is_empty!501)))

(declare-fun b!91937 () Bool)

(assert (=> b!91937 (= e!50335 tp_is_empty!501)))

(declare-fun b!91938 () Bool)

(assert (=> b!91938 (= e!50335 tp_is_empty!501)))

(declare-datatypes () ((B!769 (B!770 (val!248 Int)))))

(declare-datatypes () ((Foo!108 (Bar!70 (thisIsIt!27 Int) (weird!38 B!769)) (Baz!64 (weird!39 B!769)) (FooExt!23 (__x!343 Int) (thisIsIt!28 Int) (weird!40 B!769)))))

(declare-fun thiss!10869 () Foo!108)

(assert (= (and start!12474 (is-Bar!70 thiss!10869)) b!91936))

(assert (= (and start!12474 (is-Baz!64 thiss!10869)) b!91937))

(assert (= (and start!12474 (is-FooExt!23 thiss!10869)) b!91938))

(push 1)

(assert tp_is_empty!501)

(check-sat)

(pop 1)

