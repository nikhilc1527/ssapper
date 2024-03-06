; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9890 () Bool)

(assert start!9890)

(declare-datatypes () ((List!600 (Nil!558) (Cons!557 (head!967 Int) (tail!988 List!600)))))

(declare-fun lt!15254 () List!600)

(declare-fun list!806 () List!600)

(declare-fun reverse!1 (List!600) List!600)

(assert (=> start!9890 (= lt!15254 (reverse!1 list!806))))

(declare-fun lt!15253 () List!600)

(declare-fun init!2 (List!600) List!600)

(assert (=> start!9890 (= lt!15253 (reverse!1 (init!2 list!806)))))

(assert (=> start!9890 false))

(assert (=> start!9890 true))

(declare-fun bs!37735 () Bool)

(assert (= bs!37735 start!9890))

(declare-fun m!71790 () Bool)

(assert (=> bs!37735 m!71790))

(declare-fun m!71792 () Bool)

(assert (=> bs!37735 m!71792))

(assert (=> bs!37735 m!71792))

(declare-fun m!71794 () Bool)

(assert (=> bs!37735 m!71794))

(push 1)

(assert (not start!9890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

