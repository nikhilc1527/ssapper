; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11800 () Bool)

(assert start!11800)

(declare-fun b!89889 () Bool)

(declare-fun res!47064 () Bool)

(declare-fun e!49054 () Bool)

(assert (=> b!89889 (=> (not res!47064) (not e!49054))))

(declare-fun t!48888 () Int)

(declare-fun e!49053 () Int)

(assert (=> b!89889 (= res!47064 (= t!48888 e!49053))))

(declare-fun c!22019 () Bool)

(declare-fun m!85921 () Int)

(assert (=> b!89889 (= c!22019 (= m!85921 0))))

(declare-fun res!47049 () Int)

(declare-fun res!47048 () Int)

(declare-fun res!47047 () Int)

(declare-fun b!89892 () Bool)

(assert (=> b!89892 (= e!49054 (and (= res!47047 t!48888) (= res!47048 res!47047) (>= res!47048 0) (= res!47049 res!47048) (< res!47049 0)))))

(declare-fun res!47065 () Bool)

(assert (=> start!11800 (=> (not res!47065) (not e!49054))))

(declare-fun n!1791 () Int)

(assert (=> start!11800 (= res!47065 (and (>= n!1791 0) (>= m!85921 0)))))

(assert (=> start!11800 e!49054))

(assert (=> start!11800 true))

(declare-fun b!89891 () Bool)

(declare-fun add!2 (Int Int) Int)

(assert (=> b!89891 (= e!49053 (+ (add!2 n!1791 (- m!85921 1)) 1))))

(declare-fun b!89890 () Bool)

(assert (=> b!89890 (= e!49053 n!1791)))

(assert (= (and start!11800 res!47065) b!89889))

(assert (= (and b!89889 c!22019) b!89890))

(assert (= (and b!89889 (not c!22019)) b!89891))

(assert (= (and b!89889 res!47064) b!89892))

(declare-fun m!85930 () Bool)

(assert (=> b!89891 m!85930))

(push 1)

(assert (not b!89891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

