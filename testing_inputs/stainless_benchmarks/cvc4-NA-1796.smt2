; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12230 () Bool)

(assert start!12230)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes () ((array!1613 (array!1614 (arr!557 (Array (_ BitVec 32) (_ BitVec 32))) (size!800 (_ BitVec 32))))))

(declare-fun c!22206 () array!1613)

(assert (=> start!12230 (and (bvsge i!612 #b00000000000000000000000000000000) (bvsge i!612 (size!800 c!22206)))))

(assert (=> start!12230 true))

(declare-fun array_inv!547 (array!1613) Bool)

(assert (=> start!12230 (array_inv!547 c!22206)))

(declare-fun bs!41839 () Bool)

(assert (= bs!41839 start!12230))

(declare-fun m!87070 () Bool)

(assert (=> bs!41839 m!87070))

(push 1)

(assert (not start!12230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60018 () Bool)

(assert (=> d!60018 (= (array_inv!547 c!22206) (bvsge (size!800 c!22206) #b00000000000000000000000000000000))))

(assert (=> start!12230 d!60018))

(push 1)

(check-sat)

(get-model)

(pop 1)

