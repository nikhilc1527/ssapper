; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12510 () Bool)

(assert start!12510)

(declare-fun res!48426 () Bool)

(declare-fun e!50394 () Bool)

(assert (=> start!12510 (=> (not res!48426) (not e!50394))))

(declare-fun e!50386 () (_ BitVec 32))

(declare-datatypes () ((List!790 (Cons!733 (head!1128 (_ BitVec 32)) (tail!1124 List!790)) (Nil!735))))

(declare-fun l!1769 () List!790)

(declare-fun res!48416 () List!790)

(assert (=> start!12510 (= res!48426 (and (is-Nil!735 l!1769) (= res!48416 (Cons!733 e!50386 Nil!735))))))

(assert (=> start!12510 e!50394))

(assert (=> start!12510 true))

(declare-fun b!92054 () Bool)

(declare-fun e!50393 () Bool)

(assert (=> b!92054 (= e!50394 (not e!50393))))

(declare-fun res!48428 () Bool)

(assert (=> b!92054 (=> (not res!48428) (not e!50393))))

(declare-fun contents!1 (List!790) (Set (_ BitVec 32)))

(assert (=> b!92054 (= res!48428 (= (contents!1 res!48416) (union (contents!1 l!1769) (insert e!50386 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> b!92054 (is-Cons!733 res!48416)))

(declare-fun b!92055 () Bool)

(declare-fun res!48427 () Bool)

(assert (=> b!92055 (=> (not res!48427) (not e!50393))))

(declare-fun isSorted!7 (List!790) Bool)

(assert (=> b!92055 (= res!48427 (isSorted!7 res!48416))))

(declare-fun b!92056 () Bool)

(declare-fun size!27 (List!790) Int)

(assert (=> b!92056 (= e!50393 (= (size!27 res!48416) (+ (size!27 l!1769) 1)))))

(assert (= (and start!12510 res!48426) b!92054))

(assert (= (and b!92054 res!48428) b!92055))

(assert (= (and b!92055 res!48427) b!92056))

(declare-fun m!87792 () Bool)

(assert (=> b!92054 m!87792))

(declare-fun m!87794 () Bool)

(assert (=> b!92054 m!87794))

(declare-fun m!87796 () Bool)

(assert (=> b!92054 m!87796))

(declare-fun m!87798 () Bool)

(assert (=> b!92055 m!87798))

(declare-fun m!87800 () Bool)

(assert (=> b!92056 m!87800))

(declare-fun m!87802 () Bool)

(assert (=> b!92056 m!87802))

(push 1)

(assert (not b!92056))

(assert (not b!92055))

(assert (not b!92054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60432 () Bool)

(declare-fun lt!20796 () Int)

(assert (=> d!60432 (>= lt!20796 0)))

(declare-fun e!50397 () Int)

(assert (=> d!60432 (= lt!20796 e!50397)))

(declare-fun c!22382 () Bool)

(assert (=> d!60432 (= c!22382 (is-Nil!735 res!48416))))

(assert (=> d!60432 (= (size!27 res!48416) lt!20796)))

(declare-fun b!92061 () Bool)

(assert (=> b!92061 (= e!50397 0)))

(declare-fun b!92062 () Bool)

(assert (=> b!92062 (= e!50397 (+ 1 (size!27 (tail!1124 res!48416))))))

(assert (= (and d!60432 c!22382) b!92061))

(assert (= (and d!60432 (not c!22382)) b!92062))

(declare-fun m!87804 () Bool)

(assert (=> b!92062 m!87804))

(assert (=> b!92056 d!60432))

(declare-fun d!60434 () Bool)

(declare-fun lt!20797 () Int)

(assert (=> d!60434 (>= lt!20797 0)))

(declare-fun e!50398 () Int)

(assert (=> d!60434 (= lt!20797 e!50398)))

(declare-fun c!22383 () Bool)

(assert (=> d!60434 (= c!22383 (is-Nil!735 l!1769))))

(assert (=> d!60434 (= (size!27 l!1769) lt!20797)))

(declare-fun b!92063 () Bool)

(assert (=> b!92063 (= e!50398 0)))

(declare-fun b!92064 () Bool)

(assert (=> b!92064 (= e!50398 (+ 1 (size!27 (tail!1124 l!1769))))))

(assert (= (and d!60434 c!22383) b!92063))

(assert (= (and d!60434 (not c!22383)) b!92064))

(declare-fun m!87806 () Bool)

(assert (=> b!92064 m!87806))

(assert (=> b!92056 d!60434))

(declare-fun d!60436 () Bool)

(declare-fun res!48433 () Bool)

(declare-fun e!50403 () Bool)

(assert (=> d!60436 (=> res!48433 e!50403)))

(assert (=> d!60436 (= res!48433 (or (is-Nil!735 res!48416) (and (is-Cons!733 res!48416) (is-Nil!735 (tail!1124 res!48416)))))))

(assert (=> d!60436 (= (isSorted!7 res!48416) e!50403)))

(declare-fun b!92069 () Bool)

(declare-fun e!50404 () Bool)

(assert (=> b!92069 (= e!50403 e!50404)))

(declare-fun res!48434 () Bool)

(assert (=> b!92069 (=> (not res!48434) (not e!50404))))

(assert (=> b!92069 (= res!48434 (bvsle (head!1128 res!48416) (head!1128 (tail!1124 res!48416))))))

(declare-fun b!92070 () Bool)

(assert (=> b!92070 (= e!50404 (isSorted!7 (Cons!733 (head!1128 (tail!1124 res!48416)) (tail!1124 (tail!1124 res!48416)))))))

(assert (= (and d!60436 (not res!48433)) b!92069))

(assert (= (and b!92069 res!48434) b!92070))

(declare-fun m!87808 () Bool)

(assert (=> b!92070 m!87808))

(assert (=> b!92055 d!60436))

(declare-fun d!60438 () Bool)

(declare-fun c!22386 () Bool)

(assert (=> d!60438 (= c!22386 (is-Nil!735 res!48416))))

(declare-fun e!50407 () (Set (_ BitVec 32)))

(assert (=> d!60438 (= (contents!1 res!48416) e!50407)))

(declare-fun b!92075 () Bool)

(assert (=> b!92075 (= e!50407 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92076 () Bool)

(assert (=> b!92076 (= e!50407 (union (contents!1 (tail!1124 res!48416)) (insert (head!1128 res!48416) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60438 c!22386) b!92075))

(assert (= (and d!60438 (not c!22386)) b!92076))

(declare-fun m!87810 () Bool)

(assert (=> b!92076 m!87810))

(declare-fun m!87812 () Bool)

(assert (=> b!92076 m!87812))

(assert (=> b!92054 d!60438))

(declare-fun d!60440 () Bool)

(declare-fun c!22387 () Bool)

(assert (=> d!60440 (= c!22387 (is-Nil!735 l!1769))))

(declare-fun e!50408 () (Set (_ BitVec 32)))

(assert (=> d!60440 (= (contents!1 l!1769) e!50408)))

(declare-fun b!92077 () Bool)

(assert (=> b!92077 (= e!50408 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92078 () Bool)

(assert (=> b!92078 (= e!50408 (union (contents!1 (tail!1124 l!1769)) (insert (head!1128 l!1769) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!60440 c!22387) b!92077))

(assert (= (and d!60440 (not c!22387)) b!92078))

(declare-fun m!87814 () Bool)

(assert (=> b!92078 m!87814))

(declare-fun m!87816 () Bool)

(assert (=> b!92078 m!87816))

(assert (=> b!92054 d!60440))

(push 1)

(assert (not b!92070))

(assert (not b!92078))

(assert (not b!92062))

(assert (not b!92064))

(assert (not b!92076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

