; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9678 () Bool)

(assert start!9678)

(declare-fun res!34753 () Bool)

(declare-fun e!38365 () Bool)

(assert (=> start!9678 (=> (not res!34753) (not e!38365))))

(declare-datatypes () ((A!2984 (B!560 (b!70942 (_ BitVec 32))))))

(declare-fun b!70932 () A!2984)

(assert (=> start!9678 (= res!34753 (= b!70932 (B!560 #b00000000000000000000000000000011)))))

(assert (=> start!9678 e!38365))

(assert (=> start!9678 true))

(declare-fun b!70940 () Bool)

(declare-fun res!34754 () Bool)

(assert (=> b!70940 (=> (not res!34754) (not e!38365))))

(declare-fun x$1!933 () (_ BitVec 32))

(declare-fun i!534 () (_ BitVec 32))

(declare-fun rec1!10 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!70940 (= res!34754 (= x$1!933 (rec1!10 i!534 #b00000000000000000000000000000010)))))

(declare-fun b!70941 () Bool)

(assert (=> b!70941 (= e!38365 (not (= (bvadd i!534 #b00000000000000000000000000000101) x$1!933)))))

(assert (= (and start!9678 res!34753) b!70940))

(assert (= (and b!70940 res!34754) b!70941))

(declare-fun m!70948 () Bool)

(assert (=> b!70940 m!70948))

(push 1)

(assert (not b!70940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53830 () Bool)

(assert (=> d!53830 (= (rec1!10 i!534 #b00000000000000000000000000000010) (bvadd (bvadd i!534 #b00000000000000000000000000000010) #b00000000000000000000000000000011))))

(assert (=> b!70940 d!53830))

(push 1)

(check-sat)

(pop 1)

