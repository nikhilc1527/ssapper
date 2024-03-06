; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12460 () Bool)

(assert start!12460)

(declare-fun n!1855 () Int)

(declare-fun stuff!0 (Int) Int)

(assert (=> start!12460 (not (= (stuff!0 n!1855) n!1855))))

(assert (=> start!12460 true))

(declare-fun bs!41938 () Bool)

(assert (= bs!41938 start!12460))

(declare-fun m!87742 () Bool)

(assert (=> bs!41938 m!87742))

(push 1)

(assert (not start!12460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60392 () Bool)

(assert (=> d!60392 true))

(assert (=> d!60392 true))

(declare-fun res!48351 () Int)

(assert (=> d!60392 (= (stuff!0 n!1855) res!48351)))

(assert (=> start!12460 d!60392))

(push 1)

(check-sat)

(get-model)

(pop 1)

