; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12484 () Bool)

(assert start!12484)

(declare-fun b!92016 () Bool)

(declare-fun e!50365 () Int)

(declare-datatypes () ((A!4398 (A!4399 (val!253 Int)))))

(declare-datatypes () ((Foo!113 (Bar!75 (thisIsIt!37 Int) (weird!53 A!4398)) (Baz!69 (weird!54 A!4398)) (FooExt!28 (__x!348 Int) (thisIsIt!38 Int) (weird!55 A!4398)))))

(declare-fun f!5400 () Foo!113)

(assert (=> b!92016 (= e!50365 (thisIsIt!37 f!5400))))

(declare-fun c!22373 () Bool)

(assert (=> start!12484 (= c!22373 (is-Bar!75 f!5400))))

(assert (=> start!12484 (not (= e!50365 1))))

(declare-fun e!50364 () Bool)

(assert (=> start!12484 e!50364))

(declare-fun b!92017 () Bool)

(declare-fun tp_is_empty!511 () Bool)

(assert (=> b!92017 (= e!50364 tp_is_empty!511)))

(declare-fun b!92018 () Bool)

(assert (=> b!92018 (= e!50364 tp_is_empty!511)))

(declare-fun b!92019 () Bool)

(assert (=> b!92019 (= e!50364 tp_is_empty!511)))

(declare-fun b!92020 () Bool)

(declare-fun e!50363 () Int)

(assert (=> b!92020 (= e!50365 e!50363)))

(declare-fun c!22374 () Bool)

(assert (=> b!92020 (= c!22374 (is-FooExt!28 f!5400))))

(declare-fun b!92021 () Bool)

(declare-fun thisIsIt!39 (Foo!113) Int)

(assert (=> b!92021 (= e!50363 (thisIsIt!39 f!5400))))

(declare-fun b!92022 () Bool)

(assert (=> b!92022 (= e!50363 (thisIsIt!38 f!5400))))

(assert (= (and b!92020 c!22374) b!92022))

(assert (= (and b!92020 (not c!22374)) b!92021))

(assert (= (and start!12484 c!22373) b!92016))

(assert (= (and start!12484 (not c!22373)) b!92020))

(assert (= (and start!12484 (is-Bar!75 f!5400)) b!92019))

(assert (= (and start!12484 (is-Baz!69 f!5400)) b!92018))

(assert (= (and start!12484 (is-FooExt!28 f!5400)) b!92017))

(declare-fun m!87748 () Bool)

(assert (=> b!92021 m!87748))

(push 1)

(assert (not b!92021))

(assert tp_is_empty!511)

(check-sat)

(get-model)

(pop 1)

