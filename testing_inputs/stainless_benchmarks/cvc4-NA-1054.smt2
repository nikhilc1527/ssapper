; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7742 () Bool)

(assert start!7742)

(declare-fun res!25465 () Bool)

(declare-fun e!29089 () Bool)

(assert (=> start!7742 (=> (not res!25465) (not e!29089))))

(declare-datatypes () ((Unit!929 (Unit!930))))

(declare-fun x$1!783 () Unit!929)

(declare-fun Unit!931 () Unit!929)

(assert (=> start!7742 (= res!25465 (= x$1!783 Unit!931))))

(assert (=> start!7742 e!29089))

(assert (=> start!7742 true))

(declare-fun b!55236 () Bool)

(declare-fun x!22071 () (_ BitVec 32))

(declare-datatypes () ((IntSet!59 (Node!143 (left!1229 IntSet!59) (elem!295 (_ BitVec 32)) (right!1232 IntSet!59)) (Empty!182))))

(declare-fun contains!9 (IntSet!59 (_ BitVec 32)) Bool)

(assert (=> b!55236 (= e!29089 (contains!9 Empty!182 x!22071))))

(assert (= (and start!7742 res!25465) b!55236))

(declare-fun m!60020 () Bool)

(assert (=> b!55236 m!60020))

(push 1)

(assert (not b!55236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45234 () Bool)

(declare-fun res!25473 () Bool)

(declare-fun e!29095 () Bool)

(assert (=> d!45234 (=> (not res!25473) (not e!29095))))

(assert (=> d!45234 (= res!25473 (not (is-Empty!182 Empty!182)))))

(assert (=> d!45234 (= (contains!9 Empty!182 x!22071) e!29095)))

(declare-fun lt!9822 () Bool)

(declare-fun b!55243 () Bool)

(declare-fun lt!9821 () Bool)

(assert (=> b!55243 (= e!29095 (ite lt!9821 lt!9822 (or (not (bvsgt x!22071 (elem!295 Empty!182))) lt!9822)))))

(declare-fun e!29094 () Bool)

(assert (=> b!55243 (= lt!9822 e!29094)))

(declare-fun c!12013 () Bool)

(assert (=> b!55243 (= c!12013 (or lt!9821 (bvsgt x!22071 (elem!295 Empty!182))))))

(assert (=> b!55243 (= lt!9821 (bvslt x!22071 (elem!295 Empty!182)))))

(declare-fun b!55245 () Bool)

(declare-fun res!25474 () Bool)

(assert (=> b!55245 (= e!29094 res!25474)))

(assert (=> b!55245 true))

(assert (=> b!55245 true))

(declare-fun b!55244 () Bool)

(assert (=> b!55244 (= e!29094 (contains!9 (ite lt!9821 (left!1229 Empty!182) (right!1232 Empty!182)) x!22071))))

(assert (= (and d!45234 res!25473) b!55243))

(assert (= (and b!55243 c!12013) b!55244))

(assert (= (and b!55243 (not c!12013)) b!55245))

(declare-fun m!60022 () Bool)

(assert (=> b!55244 m!60022))

(assert (=> b!55236 d!45234))

(push 1)

(assert (not b!55244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

