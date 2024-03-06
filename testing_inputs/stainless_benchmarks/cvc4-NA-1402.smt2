; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9744 () Bool)

(assert start!9744)

(declare-fun res!34813 () Bool)

(declare-fun e!38523 () Bool)

(assert (=> start!9744 (=> (not res!34813) (not e!38523))))

(declare-fun a!737 () Int)

(declare-fun b!71188 () Int)

(assert (=> start!9744 (= res!34813 (and (>= a!737 0) (= b!71188 (+ a!737 2))))))

(assert (=> start!9744 e!38523))

(assert (=> start!9744 true))

(declare-fun b!71194 () Bool)

(declare-fun res!34814 () Bool)

(assert (=> b!71194 (=> (not res!34814) (not e!38523))))

(declare-fun x$1!949 () Int)

(declare-fun rec1!4 (Int Int) Int)

(assert (=> b!71194 (= res!34814 (= x$1!949 (rec1!4 a!737 2)))))

(declare-fun b!71195 () Bool)

(assert (=> b!71195 (= e!38523 (<= x$1!949 0))))

(assert (= (and start!9744 res!34813) b!71194))

(assert (= (and b!71194 res!34814) b!71195))

(declare-fun m!71088 () Bool)

(assert (=> b!71194 m!71088))

(push 1)

(assert (not b!71194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53962 () Bool)

(assert (=> d!53962 (= (rec1!4 a!737 2) (+ (+ a!737 2) 2))))

(assert (=> b!71194 d!53962))

(push 1)

(check-sat)

(pop 1)

