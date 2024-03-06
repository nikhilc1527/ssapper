; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2950 () Bool)

(assert start!2950)

(declare-fun x!7874 () (_ BitVec 32))

(declare-fun d!10926 () Bool)

(declare-datatypes () ((Unit!140 (Unit!141))))

(declare-fun tmp!18 () Unit!140)

(declare-fun tmp!17 () Unit!140)

(declare-fun x!7875 () (_ BitVec 32))

(declare-fun x!7873 () (_ BitVec 32))

(declare-fun r!233 () Bool)

(declare-fun b!13955 () Bool)

(declare-fun Unit!142 () Unit!140)

(declare-fun Unit!143 () Unit!140)

(assert (=> start!2950 (and (= x!7873 #b00000000000000000000000000000000) (= x!7874 (bvadd x!7873 #b00000000000000000000000000000001)) (= tmp!17 Unit!142) (= x!7875 (bvmul x!7874 #b00000000000000000000000000000010)) (= tmp!18 Unit!143) (= r!233 (not (= b!13955 d!10926))) (not (= x!7875 #b00000000000000000000000000000010)))))

(assert (=> start!2950 true))

(push 1)

(check-sat)

(pop 1)

