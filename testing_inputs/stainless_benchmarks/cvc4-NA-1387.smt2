; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9682 () Bool)

(assert start!9682)

(declare-fun res!34762 () Bool)

(declare-fun e!38368 () Bool)

(assert (=> start!9682 (=> (not res!34762) (not e!38368))))

(declare-datatypes () ((A!2997 (B!562 (b!70966 (_ BitVec 32))))))

(declare-fun b!70950 () A!2997)

(assert (=> start!9682 (= res!34762 (= b!70950 (B!562 #b00000000000000000000000000000011)))))

(assert (=> start!9682 e!38368))

(assert (=> start!9682 true))

(declare-fun b!70964 () Bool)

(declare-fun res!34763 () Bool)

(assert (=> b!70964 (=> (not res!34763) (not e!38368))))

(declare-fun x$1!934 () (_ BitVec 32))

(declare-fun i!540 () (_ BitVec 32))

(declare-fun rec2!5 ((_ BitVec 32) A!2997 (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!70964 (= res!34763 (= x$1!934 (rec2!5 i!540 b!70950 #b00000000000000000000000000000010)))))

(declare-fun b!70965 () Bool)

(assert (=> b!70965 (= e!38368 (not (= (bvadd i!540 #b00000000000000000000000000001000) x$1!934)))))

(assert (= (and start!9682 res!34762) b!70964))

(assert (= (and b!70964 res!34763) b!70965))

(declare-fun m!70950 () Bool)

(assert (=> b!70964 m!70950))

(push 1)

(assert (not b!70964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53834 () Bool)

(declare-fun rec1!9 ((_ BitVec 32) A!2997 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53834 (= (rec2!5 i!540 b!70950 #b00000000000000000000000000000010) (rec1!9 i!540 b!70950 (b!70966 b!70950) #b00000000000000000000000000000010))))

(declare-fun bs!37671 () Bool)

(assert (= bs!37671 d!53834))

(declare-fun m!70952 () Bool)

(assert (=> bs!37671 m!70952))

(assert (=> b!70964 d!53834))

(push 1)

(assert (not d!53834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53836 () Bool)

(assert (=> d!53836 (= (rec1!9 i!540 b!70950 (b!70966 b!70950) #b00000000000000000000000000000010) (bvadd (bvadd (bvadd i!540 (b!70966 b!70950)) #b00000000000000000000000000000010) (b!70966 b!70950)))))

(assert (=> d!53834 d!53836))

(push 1)

(check-sat)

(pop 1)

