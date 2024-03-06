; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!558 () Bool)

(assert start!558)

(declare-fun res!1258 () Bool)

(declare-fun e!2348 () Bool)

(assert (=> start!558 (=> (not res!1258) (not e!2348))))

(declare-datatypes () ((List!81 (Cons!81 (head!253 (_ BitVec 32)) (tail!265 List!81)) (Nil!82))))

(declare-fun l2!91 () List!81)

(declare-fun res!626 () List!81)

(declare-fun l1!97 () List!81)

(assert (=> start!558 (= res!1258 (and (is-Nil!82 l1!97) (= res!626 l2!91)))))

(assert (=> start!558 e!2348))

(assert (=> start!558 true))

(declare-fun b!4215 () Bool)

(declare-fun e!2349 () Bool)

(assert (=> b!4215 (= e!2348 e!2349)))

(declare-fun res!1259 () Bool)

(assert (=> b!4215 (=> res!1259 e!2349)))

(declare-fun size!23 (List!81) Int)

(assert (=> b!4215 (= res!1259 (not (= (size!23 res!626) (+ (size!23 l1!97) (size!23 l2!91)))))))

(declare-fun b!4216 () Bool)

(declare-fun content!22 (List!81) (Set (_ BitVec 32)))

(assert (=> b!4216 (= e!2349 (not (= (content!22 res!626) (union (content!22 l1!97) (content!22 l2!91)))))))

(assert (= (and start!558 res!1258) b!4215))

(assert (= (and b!4215 (not res!1259)) b!4216))

(declare-fun m!6649 () Bool)

(assert (=> b!4215 m!6649))

(declare-fun m!6651 () Bool)

(assert (=> b!4215 m!6651))

(declare-fun m!6653 () Bool)

(assert (=> b!4215 m!6653))

(declare-fun m!6655 () Bool)

(assert (=> b!4216 m!6655))

(declare-fun m!6657 () Bool)

(assert (=> b!4216 m!6657))

(declare-fun m!6659 () Bool)

(assert (=> b!4216 m!6659))

(push 1)

(assert (not b!4215))

(assert (not b!4216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3042 () Bool)

(declare-fun lt!1197 () Int)

(assert (=> d!3042 (>= lt!1197 0)))

(declare-fun e!2352 () Int)

(assert (=> d!3042 (= lt!1197 e!2352)))

(declare-fun c!1548 () Bool)

(assert (=> d!3042 (= c!1548 (is-Nil!82 res!626))))

(assert (=> d!3042 (= (size!23 res!626) lt!1197)))

(declare-fun b!4221 () Bool)

(assert (=> b!4221 (= e!2352 0)))

(declare-fun b!4222 () Bool)

(assert (=> b!4222 (= e!2352 (+ 1 (size!23 (tail!265 res!626))))))

(assert (= (and d!3042 c!1548) b!4221))

(assert (= (and d!3042 (not c!1548)) b!4222))

(declare-fun m!6661 () Bool)

(assert (=> b!4222 m!6661))

(assert (=> b!4215 d!3042))

(declare-fun d!3044 () Bool)

(declare-fun lt!1198 () Int)

(assert (=> d!3044 (>= lt!1198 0)))

(declare-fun e!2353 () Int)

(assert (=> d!3044 (= lt!1198 e!2353)))

(declare-fun c!1549 () Bool)

(assert (=> d!3044 (= c!1549 (is-Nil!82 l1!97))))

(assert (=> d!3044 (= (size!23 l1!97) lt!1198)))

(declare-fun b!4223 () Bool)

(assert (=> b!4223 (= e!2353 0)))

(declare-fun b!4224 () Bool)

(assert (=> b!4224 (= e!2353 (+ 1 (size!23 (tail!265 l1!97))))))

(assert (= (and d!3044 c!1549) b!4223))

(assert (= (and d!3044 (not c!1549)) b!4224))

(declare-fun m!6663 () Bool)

(assert (=> b!4224 m!6663))

(assert (=> b!4215 d!3044))

(declare-fun d!3046 () Bool)

(declare-fun lt!1199 () Int)

(assert (=> d!3046 (>= lt!1199 0)))

(declare-fun e!2354 () Int)

(assert (=> d!3046 (= lt!1199 e!2354)))

(declare-fun c!1550 () Bool)

(assert (=> d!3046 (= c!1550 (is-Nil!82 l2!91))))

(assert (=> d!3046 (= (size!23 l2!91) lt!1199)))

(declare-fun b!4225 () Bool)

(assert (=> b!4225 (= e!2354 0)))

(declare-fun b!4226 () Bool)

(assert (=> b!4226 (= e!2354 (+ 1 (size!23 (tail!265 l2!91))))))

(assert (= (and d!3046 c!1550) b!4225))

(assert (= (and d!3046 (not c!1550)) b!4226))

(declare-fun m!6665 () Bool)

(assert (=> b!4226 m!6665))

(assert (=> b!4215 d!3046))

(declare-fun d!3048 () Bool)

(declare-fun c!1553 () Bool)

(assert (=> d!3048 (= c!1553 (is-Nil!82 res!626))))

(declare-fun e!2357 () (Set (_ BitVec 32)))

(assert (=> d!3048 (= (content!22 res!626) e!2357)))

(declare-fun b!4231 () Bool)

(assert (=> b!4231 (= e!2357 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4232 () Bool)

(assert (=> b!4232 (= e!2357 (union (insert (head!253 res!626) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!265 res!626))))))

(assert (= (and d!3048 c!1553) b!4231))

(assert (= (and d!3048 (not c!1553)) b!4232))

(declare-fun m!6667 () Bool)

(assert (=> b!4232 m!6667))

(declare-fun m!6669 () Bool)

(assert (=> b!4232 m!6669))

(assert (=> b!4216 d!3048))

(declare-fun d!3050 () Bool)

(declare-fun c!1554 () Bool)

(assert (=> d!3050 (= c!1554 (is-Nil!82 l1!97))))

(declare-fun e!2358 () (Set (_ BitVec 32)))

(assert (=> d!3050 (= (content!22 l1!97) e!2358)))

(declare-fun b!4233 () Bool)

(assert (=> b!4233 (= e!2358 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4234 () Bool)

(assert (=> b!4234 (= e!2358 (union (insert (head!253 l1!97) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!265 l1!97))))))

(assert (= (and d!3050 c!1554) b!4233))

(assert (= (and d!3050 (not c!1554)) b!4234))

(declare-fun m!6671 () Bool)

(assert (=> b!4234 m!6671))

(declare-fun m!6673 () Bool)

(assert (=> b!4234 m!6673))

(assert (=> b!4216 d!3050))

(declare-fun d!3052 () Bool)

(declare-fun c!1555 () Bool)

(assert (=> d!3052 (= c!1555 (is-Nil!82 l2!91))))

(declare-fun e!2359 () (Set (_ BitVec 32)))

(assert (=> d!3052 (= (content!22 l2!91) e!2359)))

(declare-fun b!4235 () Bool)

(assert (=> b!4235 (= e!2359 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4236 () Bool)

(assert (=> b!4236 (= e!2359 (union (insert (head!253 l2!91) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!265 l2!91))))))

(assert (= (and d!3052 c!1555) b!4235))

(assert (= (and d!3052 (not c!1555)) b!4236))

(declare-fun m!6675 () Bool)

(assert (=> b!4236 m!6675))

(declare-fun m!6677 () Bool)

(assert (=> b!4236 m!6677))

(assert (=> b!4216 d!3052))

(push 1)

(assert (not b!4232))

(assert (not b!4222))

(assert (not b!4236))

(assert (not b!4224))

(assert (not b!4234))

(assert (not b!4226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

