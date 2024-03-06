; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9816 () Bool)

(assert start!9816)

(declare-fun res!34885 () Bool)

(declare-fun e!38576 () Bool)

(assert (=> start!9816 (=> (not res!34885) (not e!38576))))

(declare-datatypes () ((Q!3 (Q!4 (n!1673 Int) (d!54027 Int)))))

(declare-fun a!793 () Q!3)

(declare-fun isRational!0 (Q!3) Bool)

(assert (=> start!9816 (= res!34885 (isRational!0 a!793))))

(assert (=> start!9816 e!38576))

(assert (=> start!9816 true))

(declare-fun b!71306 () Bool)

(declare-fun res!34886 () Bool)

(assert (=> b!71306 (=> (not res!34886) (not e!38576))))

(declare-fun b!71299 () Q!3)

(assert (=> b!71306 (= res!34886 (isRational!0 b!71299))))

(declare-fun b!71307 () Bool)

(declare-fun res!34887 () Bool)

(assert (=> b!71307 (=> (not res!34887) (not e!38576))))

(declare-fun x$1!976 () Q!3)

(assert (=> b!71307 (= res!34887 (= x$1!976 (Q!4 (+ (n!1673 a!793) (n!1673 b!71299)) (d!54027 a!793))))))

(declare-fun b!71308 () Bool)

(assert (=> b!71308 (= e!38576 (not (isRational!0 x$1!976)))))

(assert (= (and start!9816 res!34885) b!71306))

(assert (= (and b!71306 res!34886) b!71307))

(assert (= (and b!71307 res!34887) b!71308))

(declare-fun m!71120 () Bool)

(assert (=> start!9816 m!71120))

(declare-fun m!71122 () Bool)

(assert (=> b!71306 m!71122))

(declare-fun m!71124 () Bool)

(assert (=> b!71308 m!71124))

(push 1)

(assert (not start!9816))

(assert (not b!71306))

(assert (not b!71308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54029 () Bool)

(assert (=> d!54029 (= (isRational!0 a!793) (not (= (d!54027 a!793) 0)))))

(assert (=> start!9816 d!54029))

(declare-fun d!54031 () Bool)

(assert (=> d!54031 (= (isRational!0 b!71299) (not (= (d!54027 b!71299) 0)))))

(assert (=> b!71306 d!54031))

(declare-fun d!54033 () Bool)

(assert (=> d!54033 (= (isRational!0 x$1!976) (not (= (d!54027 x$1!976) 0)))))

(assert (=> b!71308 d!54033))

(push 1)

(check-sat)

(pop 1)

