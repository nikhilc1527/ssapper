; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!564 () Bool)

(assert start!564)

(declare-fun res!1267 () Bool)

(declare-fun e!2365 () Bool)

(assert (=> start!564 (=> (not res!1267) (not e!2365))))

(declare-datatypes () ((List!82 (Cons!82 (head!254 (_ BitVec 32)) (tail!266 List!82)) (Nil!83))))

(declare-fun l1!97 () List!82)

(assert (=> start!564 (= res!1267 (not (is-Nil!83 l1!97)))))

(assert (=> start!564 e!2365))

(assert (=> start!564 true))

(declare-fun b!4243 () Bool)

(declare-fun res!1268 () Bool)

(assert (=> b!4243 (=> (not res!1268) (not e!2365))))

(declare-fun l2!91 () List!82)

(declare-fun res!627 () List!82)

(declare-fun concat!2 (List!82 List!82) List!82)

(assert (=> b!4243 (= res!1268 (= res!627 (Cons!82 (head!254 l1!97) (concat!2 (tail!266 l1!97) l2!91))))))

(declare-fun b!4244 () Bool)

(declare-fun e!2364 () Bool)

(assert (=> b!4244 (= e!2365 e!2364)))

(declare-fun res!1266 () Bool)

(assert (=> b!4244 (=> res!1266 e!2364)))

(declare-fun size!23 (List!82) Int)

(assert (=> b!4244 (= res!1266 (not (= (size!23 res!627) (+ (size!23 l1!97) (size!23 l2!91)))))))

(declare-fun b!4245 () Bool)

(declare-fun content!22 (List!82) (Set (_ BitVec 32)))

(assert (=> b!4245 (= e!2364 (not (= (content!22 res!627) (union (content!22 l1!97) (content!22 l2!91)))))))

(assert (= (and start!564 res!1267) b!4243))

(assert (= (and b!4243 res!1268) b!4244))

(assert (= (and b!4244 (not res!1266)) b!4245))

(declare-fun m!6679 () Bool)

(assert (=> b!4243 m!6679))

(declare-fun m!6681 () Bool)

(assert (=> b!4244 m!6681))

(declare-fun m!6683 () Bool)

(assert (=> b!4244 m!6683))

(declare-fun m!6685 () Bool)

(assert (=> b!4244 m!6685))

(declare-fun m!6687 () Bool)

(assert (=> b!4245 m!6687))

(declare-fun m!6689 () Bool)

(assert (=> b!4245 m!6689))

(declare-fun m!6691 () Bool)

(assert (=> b!4245 m!6691))

(push 1)

(assert (not b!4244))

(assert (not b!4243))

(assert (not b!4245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3054 () Bool)

(declare-fun lt!1202 () Int)

(assert (=> d!3054 (>= lt!1202 0)))

(declare-fun e!2368 () Int)

(assert (=> d!3054 (= lt!1202 e!2368)))

(declare-fun c!1558 () Bool)

(assert (=> d!3054 (= c!1558 (is-Nil!83 res!627))))

(assert (=> d!3054 (= (size!23 res!627) lt!1202)))

(declare-fun b!4250 () Bool)

(assert (=> b!4250 (= e!2368 0)))

(declare-fun b!4251 () Bool)

(assert (=> b!4251 (= e!2368 (+ 1 (size!23 (tail!266 res!627))))))

(assert (= (and d!3054 c!1558) b!4250))

(assert (= (and d!3054 (not c!1558)) b!4251))

(declare-fun m!6693 () Bool)

(assert (=> b!4251 m!6693))

(assert (=> b!4244 d!3054))

(declare-fun d!3056 () Bool)

(declare-fun lt!1203 () Int)

(assert (=> d!3056 (>= lt!1203 0)))

(declare-fun e!2369 () Int)

(assert (=> d!3056 (= lt!1203 e!2369)))

(declare-fun c!1559 () Bool)

(assert (=> d!3056 (= c!1559 (is-Nil!83 l1!97))))

(assert (=> d!3056 (= (size!23 l1!97) lt!1203)))

(declare-fun b!4252 () Bool)

(assert (=> b!4252 (= e!2369 0)))

(declare-fun b!4253 () Bool)

(assert (=> b!4253 (= e!2369 (+ 1 (size!23 (tail!266 l1!97))))))

(assert (= (and d!3056 c!1559) b!4252))

(assert (= (and d!3056 (not c!1559)) b!4253))

(declare-fun m!6695 () Bool)

(assert (=> b!4253 m!6695))

(assert (=> b!4244 d!3056))

(declare-fun d!3058 () Bool)

(declare-fun lt!1204 () Int)

(assert (=> d!3058 (>= lt!1204 0)))

(declare-fun e!2370 () Int)

(assert (=> d!3058 (= lt!1204 e!2370)))

(declare-fun c!1560 () Bool)

(assert (=> d!3058 (= c!1560 (is-Nil!83 l2!91))))

(assert (=> d!3058 (= (size!23 l2!91) lt!1204)))

(declare-fun b!4254 () Bool)

(assert (=> b!4254 (= e!2370 0)))

(declare-fun b!4255 () Bool)

(assert (=> b!4255 (= e!2370 (+ 1 (size!23 (tail!266 l2!91))))))

(assert (= (and d!3058 c!1560) b!4254))

(assert (= (and d!3058 (not c!1560)) b!4255))

(declare-fun m!6697 () Bool)

(assert (=> b!4255 m!6697))

(assert (=> b!4244 d!3058))

(declare-fun d!3060 () Bool)

(declare-fun e!2376 () Bool)

(assert (=> d!3060 e!2376))

(declare-fun res!1272 () Bool)

(assert (=> d!3060 (=> (not res!1272) (not e!2376))))

(declare-fun lt!1207 () List!82)

(assert (=> d!3060 (= res!1272 (= (size!23 lt!1207) (+ (size!23 (tail!266 l1!97)) (size!23 l2!91))))))

(declare-fun e!2375 () List!82)

(assert (=> d!3060 (= lt!1207 e!2375)))

(declare-fun c!1563 () Bool)

(assert (=> d!3060 (= c!1563 (is-Nil!83 (tail!266 l1!97)))))

(assert (=> d!3060 (= (concat!2 (tail!266 l1!97) l2!91) lt!1207)))

(declare-fun b!4262 () Bool)

(assert (=> b!4262 (= e!2375 l2!91)))

(declare-fun b!4263 () Bool)

(assert (=> b!4263 (= e!2375 (Cons!82 (head!254 (tail!266 l1!97)) (concat!2 (tail!266 (tail!266 l1!97)) l2!91)))))

(declare-fun b!4264 () Bool)

(assert (=> b!4264 (= e!2376 (= (content!22 lt!1207) (union (content!22 (tail!266 l1!97)) (content!22 l2!91))))))

(assert (= (and d!3060 c!1563) b!4262))

(assert (= (and d!3060 (not c!1563)) b!4263))

(assert (= (and d!3060 res!1272) b!4264))

(declare-fun m!6699 () Bool)

(assert (=> d!3060 m!6699))

(assert (=> d!3060 m!6695))

(assert (=> d!3060 m!6685))

(declare-fun m!6701 () Bool)

(assert (=> b!4263 m!6701))

(declare-fun m!6703 () Bool)

(assert (=> b!4264 m!6703))

(declare-fun m!6705 () Bool)

(assert (=> b!4264 m!6705))

(assert (=> b!4264 m!6691))

(assert (=> b!4243 d!3060))

(declare-fun d!3062 () Bool)

(declare-fun c!1566 () Bool)

(assert (=> d!3062 (= c!1566 (is-Nil!83 res!627))))

(declare-fun e!2379 () (Set (_ BitVec 32)))

(assert (=> d!3062 (= (content!22 res!627) e!2379)))

(declare-fun b!4269 () Bool)

(assert (=> b!4269 (= e!2379 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4270 () Bool)

(assert (=> b!4270 (= e!2379 (union (insert (head!254 res!627) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!266 res!627))))))

(assert (= (and d!3062 c!1566) b!4269))

(assert (= (and d!3062 (not c!1566)) b!4270))

(declare-fun m!6707 () Bool)

(assert (=> b!4270 m!6707))

(declare-fun m!6709 () Bool)

(assert (=> b!4270 m!6709))

(assert (=> b!4245 d!3062))

(declare-fun d!3064 () Bool)

(declare-fun c!1567 () Bool)

(assert (=> d!3064 (= c!1567 (is-Nil!83 l1!97))))

(declare-fun e!2380 () (Set (_ BitVec 32)))

(assert (=> d!3064 (= (content!22 l1!97) e!2380)))

(declare-fun b!4271 () Bool)

(assert (=> b!4271 (= e!2380 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4272 () Bool)

(assert (=> b!4272 (= e!2380 (union (insert (head!254 l1!97) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!266 l1!97))))))

(assert (= (and d!3064 c!1567) b!4271))

(assert (= (and d!3064 (not c!1567)) b!4272))

(declare-fun m!6711 () Bool)

(assert (=> b!4272 m!6711))

(assert (=> b!4272 m!6705))

(assert (=> b!4245 d!3064))

(declare-fun d!3066 () Bool)

(declare-fun c!1568 () Bool)

(assert (=> d!3066 (= c!1568 (is-Nil!83 l2!91))))

(declare-fun e!2381 () (Set (_ BitVec 32)))

(assert (=> d!3066 (= (content!22 l2!91) e!2381)))

(declare-fun b!4273 () Bool)

(assert (=> b!4273 (= e!2381 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!4274 () Bool)

(assert (=> b!4274 (= e!2381 (union (insert (head!254 l2!91) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!266 l2!91))))))

(assert (= (and d!3066 c!1568) b!4273))

(assert (= (and d!3066 (not c!1568)) b!4274))

(declare-fun m!6713 () Bool)

(assert (=> b!4274 m!6713))

(declare-fun m!6715 () Bool)

(assert (=> b!4274 m!6715))

(assert (=> b!4245 d!3066))

(push 1)

(assert (not b!4253))

(assert (not d!3060))

(assert (not b!4264))

(assert (not b!4263))

(assert (not b!4274))

(assert (not b!4270))

(assert (not b!4255))

(assert (not b!4272))

(assert (not b!4251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

