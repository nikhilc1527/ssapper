; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2938 () Bool)

(assert start!2938)

(declare-datatypes () ((Unit!128 (Unit!129))))

(declare-fun tmp!20 () Unit!128)

(declare-fun d!10927 () Bool)

(declare-fun r!234 () Bool)

(declare-fun x!7880 () (_ BitVec 32))

(declare-fun b!13961 () Bool)

(declare-fun tmp!19 () Unit!128)

(declare-fun x!7879 () (_ BitVec 32))

(declare-fun x!7878 () (_ BitVec 32))

(declare-fun Unit!130 () Unit!128)

(declare-fun Unit!131 () Unit!128)

(assert (=> start!2938 (and (= x!7878 #b00000000000000000000000000000000) (= x!7879 (bvadd x!7878 #b00000000000000000000000000000001)) (= tmp!19 Unit!130) (= x!7880 (bvmul x!7879 #b00000000000000000000000000000010)) (= tmp!20 Unit!131) (= r!234 (or b!13961 d!10927)) (not (= x!7880 #b00000000000000000000000000000010)))))

(assert (=> start!2938 true))

(push 1)

(check-sat)

(pop 1)

