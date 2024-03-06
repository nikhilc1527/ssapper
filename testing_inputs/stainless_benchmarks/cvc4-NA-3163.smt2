; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15548 () Bool)

(assert start!15548)

(declare-fun res!49831 () Bool)

(declare-fun e!52347 () Bool)

(assert (=> start!15548 (=> (not res!49831) (not e!52347))))

(declare-datatypes () ((A!4706 (A!4707 (val!257 Int)))))

(declare-datatypes () ((List!903 (Cons!840 (h!7809 A!4706) (t!56127 List!903)) (Nil!842))))

(declare-fun list!1112 () List!903)

(assert (=> start!15548 (= res!49831 (not (is-Nil!842 list!1112)))))

(assert (=> start!15548 e!52347))

(declare-fun e!52346 () Bool)

(assert (=> start!15548 e!52346))

(assert (=> start!15548 true))

(declare-fun b!95982 () Bool)

(declare-fun res!49832 () Bool)

(assert (=> b!95982 (=> (not res!49832) (not e!52347))))

(declare-fun res!49825 () Int)

(declare-fun sizeOf!4 (List!903) Int)

(assert (=> b!95982 (= res!49832 (= res!49825 (+ 1 (sizeOf!4 (t!56127 list!1112)))))))

(declare-fun b!95983 () Bool)

(assert (=> b!95983 (= e!52347 false)))

(declare-fun b!95984 () Bool)

(declare-fun tp_is_empty!519 () Bool)

(declare-fun tp!18057 () Bool)

(assert (=> b!95984 (= e!52346 (and tp_is_empty!519 tp!18057))))

(assert (= (and start!15548 res!49831) b!95982))

(assert (= (and b!95982 res!49832) b!95983))

(assert (= (and start!15548 (is-Cons!840 list!1112)) b!95984))

(declare-fun m!91709 () Bool)

(assert (=> b!95982 m!91709))

(push 1)

(assert (not b!95982))

(assert (not b!95984))

(assert tp_is_empty!519)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

