; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9822 () Bool)

(assert start!9822)

(assert (=> start!9822 false))

(declare-fun e!38579 () Bool)

(assert (=> start!9822 e!38579))

(declare-fun b!71311 () Bool)

(declare-fun tp_is_empty!355 () Bool)

(declare-fun tp!16833 () Bool)

(assert (=> b!71311 (= e!38579 (and tp_is_empty!355 tp!16833))))

(declare-datatypes () ((T!5232 (T!5233 (val!180 Int)))))

(declare-datatypes () ((List!588 (Cons!547 (head!891 T!5232) (tail!924 List!588)) (Nil!548))))

(declare-fun self!2 () List!588)

(assert (= (and start!9822 (is-Cons!547 self!2)) b!71311))

(push 1)

(assert (not b!71311))

(assert tp_is_empty!355)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

