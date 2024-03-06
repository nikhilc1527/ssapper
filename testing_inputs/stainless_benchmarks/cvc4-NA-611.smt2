; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4456 () Bool)

(assert start!4456)

(assert (=> start!4456 false))

(declare-fun e!17590 () Bool)

(assert (=> start!4456 e!17590))

(declare-fun b!34833 () Bool)

(declare-fun tp_is_empty!235 () Bool)

(assert (=> b!34833 (= e!17590 tp_is_empty!235)))

(declare-fun b!34834 () Bool)

(assert (=> b!34834 (= e!17590 tp_is_empty!235)))

(declare-datatypes () ((A!1458 (A!1459 (val!118 Int)))))

(declare-datatypes () ((Foo!35 (Baz!8 (weird!18 A!1458)) (Bar!14 (thisIsIt!12 Int) (weird!19 A!1458)))))

(declare-fun f!2290 () Foo!35)

(assert (= (and start!4456 (is-Baz!8 f!2290)) b!34833))

(assert (= (and start!4456 (is-Bar!14 f!2290)) b!34834))

(push 1)

(assert tp_is_empty!235)

(check-sat)

(pop 1)

