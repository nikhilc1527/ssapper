; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12504 () Bool)

(assert start!12504)

(declare-fun res!48407 () Bool)

(declare-fun e!50385 () Bool)

(assert (=> start!12504 (=> (not res!48407) (not e!50385))))

(declare-fun x!33823 () (_ BitVec 32))

(declare-datatypes () ((HiddenOverride!3 (HiddenOverrideExt!1 (__x!360 Int)))))

(declare-fun thiss!10900 () HiddenOverride!3)

(declare-fun f!286 (HiddenOverride!3) (_ BitVec 32))

(assert (=> start!12504 (= res!48407 (= x!33823 (f!286 thiss!10900)))))

(assert (=> start!12504 e!50385))

(assert (=> start!12504 true))

(declare-fun b!92047 () Bool)

(assert (=> b!92047 (= e!50385 (not (= x!33823 #b00000000000000000000000000000000)))))

(assert (= (and start!12504 res!48407) b!92047))

(declare-fun m!87788 () Bool)

(assert (=> start!12504 m!87788))

(push 1)

(assert (not start!12504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60426 () Bool)

(declare-fun f!5432 (HiddenOverride!3) (_ BitVec 32))

(assert (=> d!60426 (= (f!286 thiss!10900) (f!5432 thiss!10900))))

(declare-fun bs!41957 () Bool)

(assert (= bs!41957 d!60426))

(declare-fun m!87790 () Bool)

(assert (=> bs!41957 m!87790))

(assert (=> start!12504 d!60426))

(push 1)

(assert (not d!60426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60428 () Bool)

(assert (=> d!60428 true))

(assert (=> d!60428 true))

(declare-fun res!48410 () (_ BitVec 32))

(assert (=> d!60428 (= (f!5432 thiss!10900) res!48410)))

(assert (=> d!60426 d!60428))

(push 1)

(check-sat)

(get-model)

(pop 1)

