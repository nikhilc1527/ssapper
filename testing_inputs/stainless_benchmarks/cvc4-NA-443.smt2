; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2926 () Bool)

(assert start!2926)

(declare-fun x!7884 () (_ BitVec 32))

(declare-datatypes () ((Unit!116 (Unit!117))))

(declare-fun tmp!21 () Unit!116)

(declare-fun d!10928 () Bool)

(declare-fun r!235 () Bool)

(declare-fun b!13966 () Bool)

(declare-fun x!7883 () (_ BitVec 32))

(declare-fun x!7885 () (_ BitVec 32))

(declare-fun tmp!22 () Unit!116)

(declare-fun Unit!118 () Unit!116)

(declare-fun Unit!119 () Unit!116)

(assert (=> start!2926 (and (= x!7883 #b00000000000000000000000000000000) (= x!7884 (bvadd x!7883 #b00000000000000000000000000000001)) (= tmp!21 Unit!118) (= x!7885 (bvmul x!7884 #b00000000000000000000000000000010)) (= tmp!22 Unit!119) (= r!235 (and b!13966 d!10928)) (not (= x!7885 #b00000000000000000000000000000010)))))

(assert (=> start!2926 true))

(push 1)

(check-sat)

(pop 1)

