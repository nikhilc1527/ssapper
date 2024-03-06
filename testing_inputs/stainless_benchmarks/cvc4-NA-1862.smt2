; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12494 () Bool)

(assert start!12494)

(declare-datatypes () ((T!7635 (T!7636 (val!254 Int)))))

(declare-datatypes () ((List!786 (ListExt!1 (__x!352 Int)) (Nil!733) (Cons!731 (head!1118 T!7635) (tail!1114 List!786)))))

(declare-fun l!1753 () List!786)

(declare-fun x$1!1256 () Int)

(assert (=> start!12494 (and (is-Nil!733 l!1753) (= x$1!1256 0) (<= x$1!1256 0))))

(declare-fun e!50371 () Bool)

(assert (=> start!12494 e!50371))

(assert (=> start!12494 true))

(declare-fun b!92028 () Bool)

(declare-fun tp_is_empty!513 () Bool)

(declare-fun tp!18006 () Bool)

(assert (=> b!92028 (= e!50371 (and tp_is_empty!513 tp!18006))))

(assert (= (and start!12494 (is-Cons!731 l!1753)) b!92028))

(push 1)

(assert (not b!92028))

(assert tp_is_empty!513)

(check-sat)

(get-model)

(pop 1)

