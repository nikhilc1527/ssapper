; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9750 () Bool)

(assert start!9750)

(declare-fun res!34820 () Bool)

(declare-fun e!38529 () Bool)

(assert (=> start!9750 (=> (not res!34820) (not e!38529))))

(declare-fun b!71199 () Int)

(declare-fun c!17041 () Int)

(declare-fun a!743 () Int)

(assert (=> start!9750 (= res!34820 (and (>= a!743 0) (<= a!743 50) (= b!71199 (+ a!743 2)) (= c!17041 (+ a!743 b!71199))))))

(assert (=> start!9750 e!38529))

(assert (=> start!9750 true))

(declare-fun b!71205 () Bool)

(declare-fun res!34821 () Bool)

(assert (=> b!71205 (=> (not res!34821) (not e!38529))))

(declare-fun x$1!950 () Int)

(declare-fun rec1!3 (Int Int) Int)

(assert (=> b!71205 (= res!34821 (= x$1!950 (rec1!3 a!743 2)))))

(declare-fun b!71206 () Bool)

(assert (=> b!71206 (= e!38529 (<= x$1!950 0))))

(assert (= (and start!9750 res!34820) b!71205))

(assert (= (and b!71205 res!34821) b!71206))

(declare-fun m!71090 () Bool)

(assert (=> b!71205 m!71090))

(push 1)

(assert (not b!71205))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53970 () Bool)

(declare-fun lt!15146 () Int)

(assert (=> d!53970 (= lt!15146 (+ a!743 2))))

(assert (=> d!53970 (= (rec1!3 a!743 2) (+ (+ 2 lt!15146) (+ a!743 lt!15146)))))

(assert (=> b!71205 d!53970))

(push 1)

(check-sat)

(pop 1)

