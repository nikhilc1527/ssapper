; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!626 () Bool)

(assert start!626)

(declare-fun res!1315 () Bool)

(declare-fun e!2559 () Bool)

(assert (=> start!626 (=> (not res!1315) (not e!2559))))

(declare-fun abc!7 () Int)

(assert (=> start!626 (= res!1315 (= abc!7 1))))

(assert (=> start!626 e!2559))

(assert (=> start!626 true))

(declare-fun b!4516 () Bool)

(declare-fun something!12 () Int)

(declare-datatypes () ((MyClass!8 ($anon!26 (abc!18 Int) (something!22 Int)) ($anon!27) (normal!8) (MyClassExt!7 (__x!33 Int)))))

(declare-fun inv!145 (MyClass!8) Bool)

(assert (=> b!4516 (= e!2559 (not (inv!145 ($anon!26 abc!7 something!12))))))

(assert (= (and start!626 res!1315) b!4516))

(declare-fun m!6983 () Bool)

(assert (=> b!4516 m!6983))

(push 1)

(assert (not b!4516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3289 () Bool)

(declare-fun res!1318 () Bool)

(declare-fun e!2562 () Bool)

(assert (=> d!3289 (=> res!1318 e!2562)))

(assert (=> d!3289 (= res!1318 (not (is-$anon!26 ($anon!26 abc!7 something!12))))))

(assert (=> d!3289 (= (inv!145 ($anon!26 abc!7 something!12)) e!2562)))

(declare-fun b!4519 () Bool)

(declare-fun inv!144 (MyClass!8) Bool)

(assert (=> b!4519 (= e!2562 (inv!144 ($anon!26 abc!7 something!12)))))

(assert (= (and d!3289 (not res!1318)) b!4519))

(declare-fun m!6985 () Bool)

(assert (=> b!4519 m!6985))

(assert (=> b!4516 d!3289))

(push 1)

(assert (not b!4519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3291 () Bool)

(assert (=> d!3291 (= (inv!144 ($anon!26 abc!7 something!12)) true)))

(assert (=> b!4519 d!3291))

(push 1)

(check-sat)

(pop 1)

