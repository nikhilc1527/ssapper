; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12476 () Bool)

(assert start!12476)

(declare-fun b!91951 () Bool)

(declare-fun e!50340 () Bool)

(declare-fun tp_is_empty!503 () Bool)

(assert (=> b!91951 (= e!50340 tp_is_empty!503)))

(declare-fun b!91952 () Bool)

(declare-fun e!50341 () Bool)

(assert (=> b!91952 (= e!50341 tp_is_empty!503)))

(declare-fun b!91953 () Bool)

(assert (=> b!91953 (= e!50341 tp_is_empty!503)))

(declare-fun b!91954 () Bool)

(assert (=> b!91954 (= e!50340 tp_is_empty!503)))

(declare-datatypes () ((B!771 (B!772 (val!249 Int)))))

(declare-datatypes () ((Foo!109 (Bar!71 (thisIsIt!29 Int) (weird!41 B!771)) (Baz!65 (weird!42 B!771)) (FooExt!24 (__x!344 Int) (thisIsIt!30 Int) (weird!43 B!771)))))

(declare-fun thiss!10853 () Foo!109)

(declare-fun thiss!10854 () Foo!109)

(assert (=> start!12476 (and (is-Bar!71 thiss!10853) (= thiss!10854 thiss!10853) (not (is-Bar!71 thiss!10854)))))

(assert (=> start!12476 e!50340))

(assert (=> start!12476 e!50341))

(declare-fun b!91955 () Bool)

(assert (=> b!91955 (= e!50340 tp_is_empty!503)))

(declare-fun b!91956 () Bool)

(assert (=> b!91956 (= e!50341 tp_is_empty!503)))

(assert (= (and start!12476 (is-Bar!71 thiss!10853)) b!91955))

(assert (= (and start!12476 (is-Baz!65 thiss!10853)) b!91954))

(assert (= (and start!12476 (is-FooExt!24 thiss!10853)) b!91951))

(assert (= (and start!12476 (is-Bar!71 thiss!10854)) b!91953))

(assert (= (and start!12476 (is-Baz!65 thiss!10854)) b!91956))

(assert (= (and start!12476 (is-FooExt!24 thiss!10854)) b!91952))

(push 1)

(assert tp_is_empty!503)

(check-sat)

(pop 1)

