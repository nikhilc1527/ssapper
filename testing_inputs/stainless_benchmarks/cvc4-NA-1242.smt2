; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8850 () Bool)

(assert start!8850)

(declare-fun b!61672 () Bool)

(declare-fun m!67236 () Bool)

(assert (=> b!61672 m!67236))

(declare-fun m!67238 () Bool)

(assert (=> b!61672 m!67238))

(assert (=> b!61672 m!67236))

(assert (=> b!61672 m!67238))

(declare-fun m!67240 () Bool)

(assert (=> b!61672 m!67240))

(declare-fun m!67242 () Bool)

(assert (=> b!61672 m!67242))

(declare-datatypes () ((List!558 (Cons!523 (h!751 Int) (t!47253 List!558)) (Nil!524))))

(declare-fun l2!357 () List!558)

(declare-fun x!26870 () Int)

(declare-fun inst!452 () Bool)

(declare-fun res!28279 () List!558)

(declare-fun l1!364 () List!558)

(declare-datatypes () ((Bag!594 (Sum!304 (left!1395 Bag!594) (right!1398 Bag!594)) (Elem!302 (key!360 Int) (value!4895 Int)) (Leaf!396))))

(declare-fun get!604 (Bag!594 Int) Int)

(declare-fun bag!903 (List!558) Bag!594)

(declare-fun union!307 (Bag!594 Bag!594) Bag!594)

(assert (=> b!61672 (= inst!452 (=> true (= (get!604 (bag!903 res!28279) x!26870) (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870))))))

(declare-fun m!67244 () Bool)

(assert (=> b!61672 m!67244))

(declare-fun m!67246 () Bool)

(assert (=> b!61672 m!67246))

(declare-fun b!61670 () Bool)

(declare-fun e!32978 () Bool)

(declare-fun e!32979 () Bool)

(assert (=> b!61670 (= e!32978 e!32979)))

(declare-fun res!28714 () Bool)

(assert (=> b!61670 (=> res!28714 e!32979)))

(declare-fun isSorted!3 (List!558) Bool)

(assert (=> b!61670 (= res!28714 (not (isSorted!3 res!28279)))))

(declare-fun b!61671 () Bool)

(declare-fun res!28712 () Bool)

(assert (=> b!61671 (=> (not res!28712) (not e!32978))))

(assert (=> b!61671 (= res!28712 (isSorted!3 l2!357))))

(assert (=> b!61672 (= e!32979 (not inst!452))))

(declare-fun res!28715 () Bool)

(assert (=> start!8850 (=> (not res!28715) (not e!32978))))

(assert (=> start!8850 (= res!28715 (isSorted!3 l1!364))))

(assert (=> start!8850 e!32978))

(assert (=> start!8850 true))

(declare-fun b!61673 () Bool)

(declare-fun res!28711 () Bool)

(assert (=> b!61673 (=> (not res!28711) (not e!32978))))

(declare-fun merge!0 (List!558 List!558) List!558)

(assert (=> b!61673 (= res!28711 (= res!28279 (Cons!523 (h!751 l1!364) (merge!0 (t!47253 l1!364) l2!357))))))

(declare-fun b!61674 () Bool)

(declare-fun res!28713 () Bool)

(assert (=> b!61674 (=> res!28713 e!32979)))

(declare-fun size!524 (List!558) Int)

(assert (=> b!61674 (= res!28713 (not (= (size!524 res!28279) (+ (size!524 l1!364) (size!524 l2!357)))))))

(declare-fun b!61675 () Bool)

(declare-fun res!28716 () Bool)

(assert (=> b!61675 (=> (not res!28716) (not e!32978))))

(assert (=> b!61675 (= res!28716 (and (is-Cons!523 l1!364) (is-Cons!523 l2!357) (<= (h!751 l1!364) (h!751 l2!357))))))

(assert (= (and start!8850 res!28715) b!61671))

(assert (= (and b!61671 res!28712) b!61675))

(assert (= (and b!61675 res!28716) b!61673))

(assert (= (and b!61673 res!28711) b!61670))

(assert (= (and b!61670 (not res!28714)) b!61674))

(assert (= (and b!61674 (not res!28713)) b!61672))

(declare-fun m!67248 () Bool)

(assert (=> b!61673 m!67248))

(declare-fun m!67250 () Bool)

(assert (=> b!61674 m!67250))

(declare-fun m!67252 () Bool)

(assert (=> b!61674 m!67252))

(declare-fun m!67254 () Bool)

(assert (=> b!61674 m!67254))

(declare-fun m!67256 () Bool)

(assert (=> start!8850 m!67256))

(declare-fun m!67258 () Bool)

(assert (=> b!61671 m!67258))

(declare-fun m!67260 () Bool)

(assert (=> b!61670 m!67260))

(push 1)

(assert (not b!61673))

(assert (not b!61672))

(assert (not b!61670))

(assert (not b!61674))

(assert (not b!61671))

(assert (not start!8850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52297 () Bool)

(declare-fun lt!11373 () Int)

(assert (=> d!52297 (>= lt!11373 0)))

(declare-fun e!32982 () Int)

(assert (=> d!52297 (= lt!11373 e!32982)))

(declare-fun c!13445 () Bool)

(assert (=> d!52297 (= c!13445 (is-Nil!524 res!28279))))

(assert (=> d!52297 (= (size!524 res!28279) lt!11373)))

(declare-fun b!61680 () Bool)

(assert (=> b!61680 (= e!32982 0)))

(declare-fun b!61681 () Bool)

(assert (=> b!61681 (= e!32982 (+ 1 (size!524 (t!47253 res!28279))))))

(assert (= (and d!52297 c!13445) b!61680))

(assert (= (and d!52297 (not c!13445)) b!61681))

(declare-fun m!67262 () Bool)

(assert (=> b!61681 m!67262))

(assert (=> b!61674 d!52297))

(declare-fun d!52299 () Bool)

(declare-fun lt!11374 () Int)

(assert (=> d!52299 (>= lt!11374 0)))

(declare-fun e!32983 () Int)

(assert (=> d!52299 (= lt!11374 e!32983)))

(declare-fun c!13446 () Bool)

(assert (=> d!52299 (= c!13446 (is-Nil!524 l1!364))))

(assert (=> d!52299 (= (size!524 l1!364) lt!11374)))

(declare-fun b!61682 () Bool)

(assert (=> b!61682 (= e!32983 0)))

(declare-fun b!61683 () Bool)

(assert (=> b!61683 (= e!32983 (+ 1 (size!524 (t!47253 l1!364))))))

(assert (= (and d!52299 c!13446) b!61682))

(assert (= (and d!52299 (not c!13446)) b!61683))

(declare-fun m!67264 () Bool)

(assert (=> b!61683 m!67264))

(assert (=> b!61674 d!52299))

(declare-fun d!52301 () Bool)

(declare-fun lt!11375 () Int)

(assert (=> d!52301 (>= lt!11375 0)))

(declare-fun e!32984 () Int)

(assert (=> d!52301 (= lt!11375 e!32984)))

(declare-fun c!13447 () Bool)

(assert (=> d!52301 (= c!13447 (is-Nil!524 l2!357))))

(assert (=> d!52301 (= (size!524 l2!357) lt!11375)))

(declare-fun b!61684 () Bool)

(assert (=> b!61684 (= e!32984 0)))

(declare-fun b!61685 () Bool)

(assert (=> b!61685 (= e!32984 (+ 1 (size!524 (t!47253 l2!357))))))

(assert (= (and d!52301 c!13447) b!61684))

(assert (= (and d!52301 (not c!13447)) b!61685))

(declare-fun m!67266 () Bool)

(assert (=> b!61685 m!67266))

(assert (=> b!61674 d!52301))

(declare-fun d!52303 () Bool)

(declare-fun res!28721 () Bool)

(declare-fun e!32989 () Bool)

(assert (=> d!52303 (=> res!28721 e!32989)))

(assert (=> d!52303 (= res!28721 (not (and (is-Cons!523 l1!364) (is-Cons!523 (t!47253 l1!364)))))))

(assert (=> d!52303 (= (isSorted!3 l1!364) e!32989)))

(declare-fun b!61690 () Bool)

(declare-fun e!32990 () Bool)

(assert (=> b!61690 (= e!32989 e!32990)))

(declare-fun res!28722 () Bool)

(assert (=> b!61690 (=> (not res!28722) (not e!32990))))

(assert (=> b!61690 (= res!28722 (<= (h!751 l1!364) (h!751 (t!47253 l1!364))))))

(declare-fun b!61691 () Bool)

(assert (=> b!61691 (= e!32990 (isSorted!3 (t!47253 l1!364)))))

(assert (= (and d!52303 (not res!28721)) b!61690))

(assert (= (and b!61690 res!28722) b!61691))

(declare-fun m!67268 () Bool)

(assert (=> b!61691 m!67268))

(assert (=> start!8850 d!52303))

(declare-fun d!52305 () Bool)

(declare-fun |eqBag[BigInt]!11| () Int)

(declare-fun dynLambda!938 (Int Bag!594 Bag!594) Bool)

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 l1!364))))

(assert (=> (and d!52305 (= l1!364 l1!364)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 l1!364))))

(declare-fun c!13450 () Bool)

(assert (=> d!52305 (= c!13450 (is-Nil!524 l1!364))))

(declare-fun e!32993 () Bag!594)

(assert (=> d!52305 (= (bag!903 l1!364) e!32993)))

(declare-fun b!61696 () Bool)

(assert (=> b!61696 (= e!32993 Leaf!396)))

(declare-fun b!61697 () Bool)

(declare-fun add!308 (Bag!594 Int) Bag!594)

(assert (=> b!61697 (= e!32993 (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))))

(assert (= (and d!52305 c!13450) b!61696))

(assert (= (and d!52305 (not c!13450)) b!61697))

(declare-fun m!67270 () Bool)

(assert (=> b!61697 m!67270))

(assert (=> b!61697 m!67270))

(declare-fun m!67272 () Bool)

(assert (=> b!61697 m!67272))

(assert (=> b!61672 d!52305))

(declare-fun d!52307 () Bool)

(assert (=> (and d!52307 (= (bag!903 l1!364) (bag!903 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 l1!364))))

(assert (=> (and d!52307 (= (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))))

(assert (=> (and d!52307 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))))

(assert (=> (and d!52307 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 l1!364)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))))

(assert (=> d!52307 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (Sum!304 (bag!903 l1!364) (bag!903 l2!357)))))

(assert (=> b!61672 d!52307))

(declare-fun d!52309 () Bool)

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))))

(assert (=> (and d!52309 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870))))

(declare-fun c!13453 () Bool)

(assert (=> d!52309 (= c!13453 (is-Sum!304 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(declare-fun e!32996 () Int)

(assert (=> d!52309 (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) e!32996)))

(declare-fun b!61702 () Bool)

(assert (=> b!61702 (= e!32996 (+ (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870)))))

(declare-fun b!61703 () Bool)

(assert (=> b!61703 (= e!32996 (ite (and (is-Elem!302 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (= (key!360 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870)) (value!4895 (union!307 (bag!903 l1!364) (bag!903 l2!357))) 0))))

(assert (= (and d!52309 c!13453) b!61702))

(assert (= (and d!52309 (not c!13453)) b!61703))

(declare-fun m!67274 () Bool)

(assert (=> b!61702 m!67274))

(declare-fun m!67276 () Bool)

(assert (=> b!61702 m!67276))

(assert (=> b!61672 d!52309))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 res!28279))))

(declare-fun d!52311 () Bool)

(assert (=> (and d!52305 d!52311 (= l1!364 res!28279)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 res!28279))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 res!28279))))

(assert (=> (and d!52311 (= res!28279 res!28279)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 res!28279))))

(declare-fun c!13454 () Bool)

(assert (=> d!52311 (= c!13454 (is-Nil!524 res!28279))))

(declare-fun e!32997 () Bag!594)

(assert (=> d!52311 (= (bag!903 res!28279) e!32997)))

(declare-fun b!61704 () Bool)

(assert (=> b!61704 (= e!32997 Leaf!396)))

(declare-fun b!61705 () Bool)

(assert (=> b!61705 (= e!32997 (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)))))

(assert (= (and d!52311 c!13454) b!61704))

(assert (= (and d!52311 (not c!13454)) b!61705))

(declare-fun m!67278 () Bool)

(assert (=> b!61705 m!67278))

(assert (=> b!61705 m!67278))

(declare-fun m!67280 () Bool)

(assert (=> b!61705 m!67280))

(assert (=> b!61672 d!52311))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 l2!357))))

(declare-fun d!52313 () Bool)

(assert (=> (and d!52305 d!52313 (= l1!364 l2!357)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 l2!357))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 l2!357))))

(assert (=> (and d!52311 d!52313 (= res!28279 l2!357)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 l2!357))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))))

(assert (=> (and d!52313 (= l2!357 l2!357)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))))

(declare-fun c!13455 () Bool)

(assert (=> d!52313 (= c!13455 (is-Nil!524 l2!357))))

(declare-fun e!32998 () Bag!594)

(assert (=> d!52313 (= (bag!903 l2!357) e!32998)))

(declare-fun b!61706 () Bool)

(assert (=> b!61706 (= e!32998 Leaf!396)))

(declare-fun b!61707 () Bool)

(assert (=> b!61707 (= e!32998 (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (= (and d!52313 c!13455) b!61706))

(assert (= (and d!52313 (not c!13455)) b!61707))

(declare-fun m!67282 () Bool)

(assert (=> b!61707 m!67282))

(assert (=> b!61707 m!67282))

(declare-fun m!67284 () Bool)

(assert (=> b!61707 m!67284))

(assert (=> b!61672 d!52313))

(declare-fun d!52315 () Bool)

(assert (=> (and d!52315 (= (bag!903 res!28279) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 res!28279))))

(assert (=> (and d!52315 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 res!28279)) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (bag!903 res!28279) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (bag!903 res!28279))))

(assert (=> (and d!52309 d!52315 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (bag!903 res!28279)) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (bag!903 res!28279) x!26870))))

(declare-fun c!13456 () Bool)

(assert (=> d!52315 (= c!13456 (is-Sum!304 (bag!903 res!28279)))))

(declare-fun e!32999 () Int)

(assert (=> d!52315 (= (get!604 (bag!903 res!28279) x!26870) e!32999)))

(declare-fun b!61708 () Bool)

(assert (=> b!61708 (= e!32999 (+ (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870)))))

(declare-fun b!61709 () Bool)

(assert (=> b!61709 (= e!32999 (ite (and (is-Elem!302 (bag!903 res!28279)) (= (key!360 (bag!903 res!28279)) x!26870)) (value!4895 (bag!903 res!28279)) 0))))

(assert (= (and d!52315 c!13456) b!61708))

(assert (= (and d!52315 (not c!13456)) b!61709))

(declare-fun m!67286 () Bool)

(assert (=> b!61708 m!67286))

(declare-fun m!67288 () Bool)

(assert (=> b!61708 m!67288))

(assert (=> b!61672 d!52315))

(declare-fun d!52317 () Bool)

(declare-fun res!28723 () Bool)

(declare-fun e!33000 () Bool)

(assert (=> d!52317 (=> res!28723 e!33000)))

(assert (=> d!52317 (= res!28723 (not (and (is-Cons!523 l2!357) (is-Cons!523 (t!47253 l2!357)))))))

(assert (=> d!52317 (= (isSorted!3 l2!357) e!33000)))

(declare-fun b!61710 () Bool)

(declare-fun e!33001 () Bool)

(assert (=> b!61710 (= e!33000 e!33001)))

(declare-fun res!28724 () Bool)

(assert (=> b!61710 (=> (not res!28724) (not e!33001))))

(assert (=> b!61710 (= res!28724 (<= (h!751 l2!357) (h!751 (t!47253 l2!357))))))

(declare-fun b!61711 () Bool)

(assert (=> b!61711 (= e!33001 (isSorted!3 (t!47253 l2!357)))))

(assert (= (and d!52317 (not res!28723)) b!61710))

(assert (= (and b!61710 res!28724) b!61711))

(declare-fun m!67290 () Bool)

(assert (=> b!61711 m!67290))

(assert (=> b!61671 d!52317))

(declare-fun b!61722 () Bool)

(assert (=> b!61722 m!67270))

(assert (=> b!61722 m!67238))

(assert (=> b!61722 m!67270))

(assert (=> b!61722 m!67238))

(declare-fun m!67292 () Bool)

(assert (=> b!61722 m!67292))

(declare-fun m!67294 () Bool)

(assert (=> b!61722 m!67294))

(declare-fun bs!37276 () Bool)

(declare-fun lt!11384 () List!558)

(assert (=> (and bs!37276 (= (bag!903 lt!11384) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 res!28279))))

(assert (=> (and bs!37276 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))))

(assert (= bs!37276 (and b!61722 b!61672)))

(assert (=> (and bs!37276 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 res!28279)) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= true inst!452)))

(declare-fun e!33009 () Bool)

(assert (=> b!61722 (= e!33009 true)))

(declare-fun b!61723 () Bool)

(declare-fun e!33010 () List!558)

(declare-fun ++!62 (List!558 List!558) List!558)

(assert (=> b!61723 (= e!33010 (++!62 (t!47253 l1!364) l2!357))))

(declare-fun lt!11382 () List!558)

(declare-fun b!61724 () Bool)

(declare-fun lt!11383 () Bool)

(assert (=> b!61724 (= e!33010 (ite lt!11383 (Cons!523 (h!751 (t!47253 l1!364)) lt!11382) (Cons!523 (h!751 l2!357) lt!11382)))))

(assert (=> b!61724 (= lt!11382 (merge!0 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> b!61724 (= lt!11383 (<= (h!751 (t!47253 l1!364)) (h!751 l2!357)))))

(declare-fun b!61725 () Bool)

(declare-fun res!28736 () Bool)

(assert (=> b!61725 (=> (not res!28736) (not e!33009))))

(assert (=> b!61725 (= res!28736 (= (size!524 lt!11384) (+ (size!524 (t!47253 l1!364)) (size!524 l2!357))))))

(declare-fun d!52319 () Bool)

(assert (=> d!52319 e!33009))

(declare-fun res!28735 () Bool)

(assert (=> d!52319 (=> (not res!28735) (not e!33009))))

(assert (=> d!52319 (= res!28735 (isSorted!3 lt!11384))))

(assert (=> d!52319 (= lt!11384 e!33010)))

(declare-fun c!13459 () Bool)

(assert (=> d!52319 (= c!13459 (and (is-Cons!523 (t!47253 l1!364)) (is-Cons!523 l2!357)))))

(declare-fun e!33008 () Bool)

(assert (=> d!52319 e!33008))

(declare-fun res!28737 () Bool)

(assert (=> d!52319 (=> (not res!28737) (not e!33008))))

(assert (=> d!52319 (= res!28737 (isSorted!3 (t!47253 l1!364)))))

(assert (=> d!52319 (= (merge!0 (t!47253 l1!364) l2!357) lt!11384)))

(declare-fun b!61726 () Bool)

(assert (=> b!61726 (= e!33008 (isSorted!3 l2!357))))

(assert (= (and d!52319 res!28737) b!61726))

(assert (= (and d!52319 c!13459) b!61724))

(assert (= (and d!52319 (not c!13459)) b!61723))

(assert (= (and d!52319 res!28735) b!61725))

(assert (= (and b!61725 res!28736) b!61722))

(declare-fun m!67296 () Bool)

(assert (=> b!61723 m!67296))

(declare-fun m!67298 () Bool)

(assert (=> d!52319 m!67298))

(assert (=> d!52319 m!67268))

(declare-fun m!67300 () Bool)

(assert (=> b!61725 m!67300))

(assert (=> b!61725 m!67264))

(assert (=> b!61725 m!67254))

(assert (=> b!61726 m!67258))

(declare-fun m!67302 () Bool)

(assert (=> b!61724 m!67302))

(assert (=> b!61673 d!52319))

(declare-fun d!52321 () Bool)

(declare-fun res!28738 () Bool)

(declare-fun e!33011 () Bool)

(assert (=> d!52321 (=> res!28738 e!33011)))

(assert (=> d!52321 (= res!28738 (not (and (is-Cons!523 res!28279) (is-Cons!523 (t!47253 res!28279)))))))

(assert (=> d!52321 (= (isSorted!3 res!28279) e!33011)))

(declare-fun b!61727 () Bool)

(declare-fun e!33012 () Bool)

(assert (=> b!61727 (= e!33011 e!33012)))

(declare-fun res!28739 () Bool)

(assert (=> b!61727 (=> (not res!28739) (not e!33012))))

(assert (=> b!61727 (= res!28739 (<= (h!751 res!28279) (h!751 (t!47253 res!28279))))))

(declare-fun b!61728 () Bool)

(assert (=> b!61728 (= e!33012 (isSorted!3 (t!47253 res!28279)))))

(assert (= (and d!52321 (not res!28738)) b!61727))

(assert (= (and b!61727 res!28739) b!61728))

(declare-fun m!67304 () Bool)

(assert (=> b!61728 m!67304))

(assert (=> b!61670 d!52321))

(push 1)

(assert (not b!61726))

(assert (not b!61681))

(assert (not b!61708))

(assert (not b!61707))

(assert (not b!61728))

(assert (not b!61702))

(assert (not b!61722))

(assert (not b!61691))

(assert (not b!61724))

(assert (not b!61683))

(assert (not b!61725))

(assert (not b!61711))

(assert (not b!61685))

(assert (not b!61697))

(assert (not b!61723))

(assert (not d!52319))

(assert (not b!61705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52323 () Bool)

(declare-fun lt!11385 () Int)

(assert (=> d!52323 (>= lt!11385 0)))

(declare-fun e!33013 () Int)

(assert (=> d!52323 (= lt!11385 e!33013)))

(declare-fun c!13460 () Bool)

(assert (=> d!52323 (= c!13460 (is-Nil!524 (t!47253 res!28279)))))

(assert (=> d!52323 (= (size!524 (t!47253 res!28279)) lt!11385)))

(declare-fun b!61729 () Bool)

(assert (=> b!61729 (= e!33013 0)))

(declare-fun b!61730 () Bool)

(assert (=> b!61730 (= e!33013 (+ 1 (size!524 (t!47253 (t!47253 res!28279)))))))

(assert (= (and d!52323 c!13460) b!61729))

(assert (= (and d!52323 (not c!13460)) b!61730))

(declare-fun m!67306 () Bool)

(assert (=> b!61730 m!67306))

(assert (=> b!61681 d!52323))

(assert (=> b!61726 d!52317))

(declare-fun d!52325 () Bool)

(declare-fun res!28740 () Bool)

(declare-fun e!33014 () Bool)

(assert (=> d!52325 (=> res!28740 e!33014)))

(assert (=> d!52325 (= res!28740 (not (and (is-Cons!523 (t!47253 res!28279)) (is-Cons!523 (t!47253 (t!47253 res!28279))))))))

(assert (=> d!52325 (= (isSorted!3 (t!47253 res!28279)) e!33014)))

(declare-fun b!61731 () Bool)

(declare-fun e!33015 () Bool)

(assert (=> b!61731 (= e!33014 e!33015)))

(declare-fun res!28741 () Bool)

(assert (=> b!61731 (=> (not res!28741) (not e!33015))))

(assert (=> b!61731 (= res!28741 (<= (h!751 (t!47253 res!28279)) (h!751 (t!47253 (t!47253 res!28279)))))))

(declare-fun b!61732 () Bool)

(assert (=> b!61732 (= e!33015 (isSorted!3 (t!47253 (t!47253 res!28279))))))

(assert (= (and d!52325 (not res!28740)) b!61731))

(assert (= (and b!61731 res!28741) b!61732))

(declare-fun m!67308 () Bool)

(assert (=> b!61732 m!67308))

(assert (=> b!61728 d!52325))

(declare-fun d!52327 () Bool)

(assert (=> (and d!52327 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52327 (= (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))))

(assert (=> (and d!52327 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52327 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52307 (= (bag!903 l1!364) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52307 (= (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))))

(assert (=> (and d!52307 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52307 d!52327 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> d!52327 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (Sum!304 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> b!61722 d!52327))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 l1!364)))))

(declare-fun d!52329 () Bool)

(assert (=> (and d!52305 d!52329 (= l1!364 (t!47253 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52311 d!52329 (= res!28279 (t!47253 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52329 (= (t!47253 l1!364) (t!47253 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52313 d!52329 (= l2!357 (t!47253 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 l1!364)))))

(declare-fun c!13461 () Bool)

(assert (=> d!52329 (= c!13461 (is-Nil!524 (t!47253 l1!364)))))

(declare-fun e!33016 () Bag!594)

(assert (=> d!52329 (= (bag!903 (t!47253 l1!364)) e!33016)))

(declare-fun b!61733 () Bool)

(assert (=> b!61733 (= e!33016 Leaf!396)))

(declare-fun b!61734 () Bool)

(assert (=> b!61734 (= e!33016 (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (= (and d!52329 c!13461) b!61733))

(assert (= (and d!52329 (not c!13461)) b!61734))

(declare-fun m!67310 () Bool)

(assert (=> b!61734 m!67310))

(assert (=> b!61734 m!67310))

(declare-fun m!67312 () Bool)

(assert (=> b!61734 m!67312))

(assert (=> b!61722 d!52329))

(assert (=> b!61722 d!52313))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 lt!11384))))

(declare-fun d!52331 () Bool)

(assert (=> (and d!52305 d!52331 (= l1!364 lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 lt!11384))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 lt!11384))))

(assert (=> (and d!52311 d!52331 (= res!28279 lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 lt!11384))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 lt!11384))))

(assert (=> (and d!52331 (= lt!11384 lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 lt!11384))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 lt!11384))))

(assert (=> (and d!52329 d!52331 (= (t!47253 l1!364) lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 lt!11384))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 lt!11384))))

(assert (=> (and d!52313 d!52331 (= l2!357 lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 lt!11384))))

(declare-fun c!13462 () Bool)

(assert (=> d!52331 (= c!13462 (is-Nil!524 lt!11384))))

(declare-fun e!33017 () Bag!594)

(assert (=> d!52331 (= (bag!903 lt!11384) e!33017)))

(declare-fun b!61735 () Bool)

(assert (=> b!61735 (= e!33017 Leaf!396)))

(declare-fun b!61736 () Bool)

(assert (=> b!61736 (= e!33017 (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (= (and d!52331 c!13462) b!61735))

(assert (= (and d!52331 (not c!13462)) b!61736))

(declare-fun m!67314 () Bool)

(assert (=> b!61736 m!67314))

(assert (=> b!61736 m!67314))

(declare-fun m!67316 () Bool)

(assert (=> b!61736 m!67316))

(assert (=> b!61722 d!52331))

(declare-fun d!52333 () Bool)

(declare-fun res!28742 () Bool)

(declare-fun e!33018 () Bool)

(assert (=> d!52333 (=> res!28742 e!33018)))

(assert (=> d!52333 (= res!28742 (not (and (is-Cons!523 (t!47253 l1!364)) (is-Cons!523 (t!47253 (t!47253 l1!364))))))))

(assert (=> d!52333 (= (isSorted!3 (t!47253 l1!364)) e!33018)))

(declare-fun b!61737 () Bool)

(declare-fun e!33019 () Bool)

(assert (=> b!61737 (= e!33018 e!33019)))

(declare-fun res!28743 () Bool)

(assert (=> b!61737 (=> (not res!28743) (not e!33019))))

(assert (=> b!61737 (= res!28743 (<= (h!751 (t!47253 l1!364)) (h!751 (t!47253 (t!47253 l1!364)))))))

(declare-fun b!61738 () Bool)

(assert (=> b!61738 (= e!33019 (isSorted!3 (t!47253 (t!47253 l1!364))))))

(assert (= (and d!52333 (not res!28742)) b!61737))

(assert (= (and b!61737 res!28743) b!61738))

(declare-fun m!67318 () Bool)

(assert (=> b!61738 m!67318))

(assert (=> b!61691 d!52333))

(declare-fun d!52335 () Bool)

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)))))

(assert (=> (and d!52335 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 res!28279))) (= (h!751 res!28279) (h!751 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)))))

(assert (=> d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (Sum!304 (bag!903 (t!47253 res!28279)) (Elem!302 (h!751 res!28279) 1)))))

(assert (=> b!61705 d!52335))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 res!28279)))))

(declare-fun d!52337 () Bool)

(assert (=> (and d!52305 d!52337 (= l1!364 (t!47253 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52311 d!52337 (= res!28279 (t!47253 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52331 d!52337 (= lt!11384 (t!47253 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52329 d!52337 (= (t!47253 l1!364) (t!47253 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52337 (= (t!47253 res!28279) (t!47253 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 res!28279)))))

(assert (=> (and d!52313 d!52337 (= l2!357 (t!47253 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 res!28279)))))

(declare-fun c!13463 () Bool)

(assert (=> d!52337 (= c!13463 (is-Nil!524 (t!47253 res!28279)))))

(declare-fun e!33020 () Bag!594)

(assert (=> d!52337 (= (bag!903 (t!47253 res!28279)) e!33020)))

(declare-fun b!61739 () Bool)

(assert (=> b!61739 (= e!33020 Leaf!396)))

(declare-fun b!61740 () Bool)

(assert (=> b!61740 (= e!33020 (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (= (and d!52337 c!13463) b!61739))

(assert (= (and d!52337 (not c!13463)) b!61740))

(declare-fun m!67320 () Bool)

(assert (=> b!61740 m!67320))

(assert (=> b!61740 m!67320))

(declare-fun m!67322 () Bool)

(assert (=> b!61740 m!67322))

(assert (=> b!61705 d!52337))

(declare-fun d!52339 () Bool)

(declare-fun res!28744 () Bool)

(declare-fun e!33021 () Bool)

(assert (=> d!52339 (=> res!28744 e!33021)))

(assert (=> d!52339 (= res!28744 (not (and (is-Cons!523 lt!11384) (is-Cons!523 (t!47253 lt!11384)))))))

(assert (=> d!52339 (= (isSorted!3 lt!11384) e!33021)))

(declare-fun b!61741 () Bool)

(declare-fun e!33022 () Bool)

(assert (=> b!61741 (= e!33021 e!33022)))

(declare-fun res!28745 () Bool)

(assert (=> b!61741 (=> (not res!28745) (not e!33022))))

(assert (=> b!61741 (= res!28745 (<= (h!751 lt!11384) (h!751 (t!47253 lt!11384))))))

(declare-fun b!61742 () Bool)

(assert (=> b!61742 (= e!33022 (isSorted!3 (t!47253 lt!11384)))))

(assert (= (and d!52339 (not res!28744)) b!61741))

(assert (= (and b!61741 res!28745) b!61742))

(declare-fun m!67324 () Bool)

(assert (=> b!61742 m!67324))

(assert (=> d!52319 d!52339))

(assert (=> d!52319 d!52333))

(declare-fun d!52341 () Bool)

(declare-fun lt!11386 () Int)

(assert (=> d!52341 (>= lt!11386 0)))

(declare-fun e!33023 () Int)

(assert (=> d!52341 (= lt!11386 e!33023)))

(declare-fun c!13464 () Bool)

(assert (=> d!52341 (= c!13464 (is-Nil!524 lt!11384))))

(assert (=> d!52341 (= (size!524 lt!11384) lt!11386)))

(declare-fun b!61743 () Bool)

(assert (=> b!61743 (= e!33023 0)))

(declare-fun b!61744 () Bool)

(assert (=> b!61744 (= e!33023 (+ 1 (size!524 (t!47253 lt!11384))))))

(assert (= (and d!52341 c!13464) b!61743))

(assert (= (and d!52341 (not c!13464)) b!61744))

(declare-fun m!67326 () Bool)

(assert (=> b!61744 m!67326))

(assert (=> b!61725 d!52341))

(declare-fun d!52343 () Bool)

(declare-fun lt!11387 () Int)

(assert (=> d!52343 (>= lt!11387 0)))

(declare-fun e!33024 () Int)

(assert (=> d!52343 (= lt!11387 e!33024)))

(declare-fun c!13465 () Bool)

(assert (=> d!52343 (= c!13465 (is-Nil!524 (t!47253 l1!364)))))

(assert (=> d!52343 (= (size!524 (t!47253 l1!364)) lt!11387)))

(declare-fun b!61745 () Bool)

(assert (=> b!61745 (= e!33024 0)))

(declare-fun b!61746 () Bool)

(assert (=> b!61746 (= e!33024 (+ 1 (size!524 (t!47253 (t!47253 l1!364)))))))

(assert (= (and d!52343 c!13465) b!61745))

(assert (= (and d!52343 (not c!13465)) b!61746))

(declare-fun m!67328 () Bool)

(assert (=> b!61746 m!67328))

(assert (=> b!61725 d!52343))

(assert (=> b!61725 d!52301))

(declare-fun d!52345 () Bool)

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(assert (=> (and d!52345 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(assert (=> (and d!52315 d!52345 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(assert (=> (and d!52309 d!52345 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(declare-fun c!13466 () Bool)

(assert (=> d!52345 (= c!13466 (is-Sum!304 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(declare-fun e!33025 () Int)

(assert (=> d!52345 (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) e!33025)))

(declare-fun b!61747 () Bool)

(assert (=> b!61747 (= e!33025 (+ (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870)))))

(declare-fun b!61748 () Bool)

(assert (=> b!61748 (= e!33025 (ite (and (is-Elem!302 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= (key!360 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870)) (value!4895 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) 0))))

(assert (= (and d!52345 c!13466) b!61747))

(assert (= (and d!52345 (not c!13466)) b!61748))

(declare-fun m!67330 () Bool)

(assert (=> b!61747 m!67330))

(declare-fun m!67332 () Bool)

(assert (=> b!61747 m!67332))

(assert (=> b!61702 d!52345))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(declare-fun d!52347 () Bool)

(assert (=> (and d!52345 d!52347 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(assert (=> (and d!52315 d!52347 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(assert (=> (and d!52347 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))

(assert (=> (and d!52309 d!52347 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870))))

(declare-fun c!13467 () Bool)

(assert (=> d!52347 (= c!13467 (is-Sum!304 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(declare-fun e!33026 () Int)

(assert (=> d!52347 (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) e!33026)))

(declare-fun b!61749 () Bool)

(assert (=> b!61749 (= e!33026 (+ (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870)))))

(declare-fun b!61750 () Bool)

(assert (=> b!61750 (= e!33026 (ite (and (is-Elem!302 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= (key!360 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870)) (value!4895 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) 0))))

(assert (= (and d!52347 c!13467) b!61749))

(assert (= (and d!52347 (not c!13467)) b!61750))

(declare-fun m!67334 () Bool)

(assert (=> b!61749 m!67334))

(declare-fun m!67336 () Bool)

(assert (=> b!61749 m!67336))

(assert (=> b!61702 d!52347))

(declare-fun b!61751 () Bool)

(declare-fun m!67338 () Bool)

(assert (=> b!61751 m!67338))

(declare-fun m!67340 () Bool)

(assert (=> b!61751 m!67340))

(assert (=> b!61751 m!67338))

(assert (=> b!61751 m!67340))

(declare-fun m!67342 () Bool)

(assert (=> b!61751 m!67342))

(declare-fun m!67344 () Bool)

(assert (=> b!61751 m!67344))

(declare-fun bs!37277 () Bool)

(declare-fun lt!11390 () List!558)

(assert (=> (and bs!37277 (= (bag!903 lt!11390) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 res!28279))))

(assert (=> (and bs!37277 (= (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 l1!364) (bag!903 l2!357)))))

(declare-fun bs!37278 () Bool)

(assert (=> (and bs!37278 (= (bag!903 lt!11390) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 lt!11384))))

(assert (=> (and bs!37278 (= (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (= bs!37277 (and b!61751 b!61672)))

(assert (=> (and bs!37277 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 res!28279)) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= true inst!452)))

(assert (= bs!37278 (and b!61751 b!61722)))

(assert (=> (and bs!37278 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (= true true)))

(declare-fun e!33028 () Bool)

(assert (=> b!61751 (= e!33028 true)))

(declare-fun b!61752 () Bool)

(declare-fun e!33029 () List!558)

(assert (=> b!61752 (= e!33029 (++!62 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (ite lt!11383 l2!357 (t!47253 l2!357))))))

(declare-fun b!61753 () Bool)

(declare-fun lt!11389 () Bool)

(declare-fun lt!11388 () List!558)

(assert (=> b!61753 (= e!33029 (ite lt!11389 (Cons!523 (h!751 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) lt!11388) (Cons!523 (h!751 (ite lt!11383 l2!357 (t!47253 l2!357))) lt!11388)))))

(assert (=> b!61753 (= lt!11388 (merge!0 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(assert (=> b!61753 (= lt!11389 (<= (h!751 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (h!751 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(declare-fun b!61754 () Bool)

(declare-fun res!28747 () Bool)

(assert (=> b!61754 (=> (not res!28747) (not e!33028))))

(assert (=> b!61754 (= res!28747 (= (size!524 lt!11390) (+ (size!524 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (size!524 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(declare-fun d!52349 () Bool)

(assert (=> d!52349 e!33028))

(declare-fun res!28746 () Bool)

(assert (=> d!52349 (=> (not res!28746) (not e!33028))))

(assert (=> d!52349 (= res!28746 (isSorted!3 lt!11390))))

(assert (=> d!52349 (= lt!11390 e!33029)))

(declare-fun c!13468 () Bool)

(assert (=> d!52349 (= c!13468 (and (is-Cons!523 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (is-Cons!523 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(declare-fun e!33027 () Bool)

(assert (=> d!52349 e!33027))

(declare-fun res!28748 () Bool)

(assert (=> d!52349 (=> (not res!28748) (not e!33027))))

(assert (=> d!52349 (= res!28748 (isSorted!3 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> d!52349 (= (merge!0 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (ite lt!11383 l2!357 (t!47253 l2!357))) lt!11390)))

(declare-fun b!61755 () Bool)

(assert (=> b!61755 (= e!33027 (isSorted!3 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (= (and d!52349 res!28748) b!61755))

(assert (= (and d!52349 c!13468) b!61753))

(assert (= (and d!52349 (not c!13468)) b!61752))

(assert (= (and d!52349 res!28746) b!61754))

(assert (= (and b!61754 res!28747) b!61751))

(declare-fun m!67346 () Bool)

(assert (=> b!61752 m!67346))

(declare-fun m!67348 () Bool)

(assert (=> d!52349 m!67348))

(declare-fun m!67350 () Bool)

(assert (=> d!52349 m!67350))

(declare-fun m!67352 () Bool)

(assert (=> b!61754 m!67352))

(declare-fun m!67354 () Bool)

(assert (=> b!61754 m!67354))

(declare-fun m!67356 () Bool)

(assert (=> b!61754 m!67356))

(declare-fun m!67358 () Bool)

(assert (=> b!61755 m!67358))

(declare-fun m!67360 () Bool)

(assert (=> b!61753 m!67360))

(assert (=> b!61724 d!52349))

(declare-fun d!52351 () Bool)

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (left!1395 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (bag!903 res!28279)))))

(assert (=> (and d!52351 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (bag!903 res!28279)))))

(assert (=> (and d!52345 d!52351 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (left!1395 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (bag!903 res!28279)))))

(assert (=> (and d!52315 d!52351 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (left!1395 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (bag!903 res!28279)))))

(assert (=> (and d!52347 d!52351 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (bag!903 res!28279)))))

(assert (=> (and d!52309 d!52351 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (bag!903 res!28279)) x!26870))))

(declare-fun c!13469 () Bool)

(assert (=> d!52351 (= c!13469 (is-Sum!304 (left!1395 (bag!903 res!28279))))))

(declare-fun e!33030 () Int)

(assert (=> d!52351 (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) e!33030)))

(declare-fun b!61756 () Bool)

(assert (=> b!61756 (= e!33030 (+ (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870)))))

(declare-fun b!61757 () Bool)

(assert (=> b!61757 (= e!33030 (ite (and (is-Elem!302 (left!1395 (bag!903 res!28279))) (= (key!360 (left!1395 (bag!903 res!28279))) x!26870)) (value!4895 (left!1395 (bag!903 res!28279))) 0))))

(assert (= (and d!52351 c!13469) b!61756))

(assert (= (and d!52351 (not c!13469)) b!61757))

(declare-fun m!67362 () Bool)

(assert (=> b!61756 m!67362))

(declare-fun m!67364 () Bool)

(assert (=> b!61756 m!67364))

(assert (=> b!61708 d!52351))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (right!1398 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (bag!903 res!28279)))))

(declare-fun d!52353 () Bool)

(assert (=> (and d!52351 d!52353 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (bag!903 res!28279)))))

(assert (=> (and d!52345 d!52353 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (right!1398 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (bag!903 res!28279)))))

(assert (=> (and d!52315 d!52353 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (right!1398 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (bag!903 res!28279)))))

(assert (=> (and d!52353 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (bag!903 res!28279)))))

(assert (=> (and d!52347 d!52353 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (bag!903 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (bag!903 res!28279)))))

(assert (=> (and d!52309 d!52353 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (bag!903 res!28279))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (bag!903 res!28279)) x!26870))))

(declare-fun c!13470 () Bool)

(assert (=> d!52353 (= c!13470 (is-Sum!304 (right!1398 (bag!903 res!28279))))))

(declare-fun e!33031 () Int)

(assert (=> d!52353 (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) e!33031)))

(declare-fun b!61758 () Bool)

(assert (=> b!61758 (= e!33031 (+ (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870)))))

(declare-fun b!61759 () Bool)

(assert (=> b!61759 (= e!33031 (ite (and (is-Elem!302 (right!1398 (bag!903 res!28279))) (= (key!360 (right!1398 (bag!903 res!28279))) x!26870)) (value!4895 (right!1398 (bag!903 res!28279))) 0))))

(assert (= (and d!52353 c!13470) b!61758))

(assert (= (and d!52353 (not c!13470)) b!61759))

(declare-fun m!67366 () Bool)

(assert (=> b!61758 m!67366))

(declare-fun m!67368 () Bool)

(assert (=> b!61758 m!67368))

(assert (=> b!61708 d!52353))

(declare-fun d!52355 () Bool)

(declare-fun res!28749 () Bool)

(declare-fun e!33032 () Bool)

(assert (=> d!52355 (=> res!28749 e!33032)))

(assert (=> d!52355 (= res!28749 (not (and (is-Cons!523 (t!47253 l2!357)) (is-Cons!523 (t!47253 (t!47253 l2!357))))))))

(assert (=> d!52355 (= (isSorted!3 (t!47253 l2!357)) e!33032)))

(declare-fun b!61760 () Bool)

(declare-fun e!33033 () Bool)

(assert (=> b!61760 (= e!33032 e!33033)))

(declare-fun res!28750 () Bool)

(assert (=> b!61760 (=> (not res!28750) (not e!33033))))

(assert (=> b!61760 (= res!28750 (<= (h!751 (t!47253 l2!357)) (h!751 (t!47253 (t!47253 l2!357)))))))

(declare-fun b!61761 () Bool)

(assert (=> b!61761 (= e!33033 (isSorted!3 (t!47253 (t!47253 l2!357))))))

(assert (= (and d!52355 (not res!28749)) b!61760))

(assert (= (and b!61760 res!28750) b!61761))

(declare-fun m!67370 () Bool)

(assert (=> b!61761 m!67370))

(assert (=> b!61711 d!52355))

(declare-fun d!52357 () Bool)

(assert (=> (and d!52357 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))))

(assert (=> (and d!52357 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l1!364))) (= (h!751 l1!364) (h!751 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))))

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l1!364)))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))))

(assert (=> (and d!52335 d!52357 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l1!364))) (= (h!751 res!28279) (h!751 l1!364))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)))))

(assert (=> d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (Sum!304 (bag!903 (t!47253 l1!364)) (Elem!302 (h!751 l1!364) 1)))))

(assert (=> b!61697 d!52357))

(assert (=> b!61697 d!52329))

(assert (=> b!61683 d!52343))

(declare-fun d!52359 () Bool)

(declare-fun lt!11391 () Int)

(assert (=> d!52359 (>= lt!11391 0)))

(declare-fun e!33034 () Int)

(assert (=> d!52359 (= lt!11391 e!33034)))

(declare-fun c!13471 () Bool)

(assert (=> d!52359 (= c!13471 (is-Nil!524 (t!47253 l2!357)))))

(assert (=> d!52359 (= (size!524 (t!47253 l2!357)) lt!11391)))

(declare-fun b!61762 () Bool)

(assert (=> b!61762 (= e!33034 0)))

(declare-fun b!61763 () Bool)

(assert (=> b!61763 (= e!33034 (+ 1 (size!524 (t!47253 (t!47253 l2!357)))))))

(assert (= (and d!52359 c!13471) b!61762))

(assert (= (and d!52359 (not c!13471)) b!61763))

(declare-fun m!67372 () Bool)

(assert (=> b!61763 m!67372))

(assert (=> b!61685 d!52359))

(declare-fun d!52361 () Bool)

(assert (=> (and d!52361 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52361 (= (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (=> (and d!52361 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 l2!357))) (= (h!751 l2!357) (h!751 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (=> (and d!52357 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (=> (and d!52357 d!52361 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l2!357))) (= (h!751 l1!364) (h!751 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (=> (and d!52335 d!52361 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l2!357))) (= (h!751 res!28279) (h!751 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)))))

(assert (=> d!52361 (= (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (Sum!304 (bag!903 (t!47253 l2!357)) (Elem!302 (h!751 l2!357) 1)))))

(assert (=> b!61707 d!52361))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 l2!357)))))

(declare-fun d!52363 () Bool)

(assert (=> (and d!52305 d!52363 (= l1!364 (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52311 d!52363 (= res!28279 (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52331 d!52363 (= lt!11384 (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52329 d!52363 (= (t!47253 l1!364) (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52363 (= (t!47253 l2!357) (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52337 d!52363 (= (t!47253 res!28279) (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 l2!357)))))

(assert (=> (and d!52313 d!52363 (= l2!357 (t!47253 l2!357))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 l2!357)))))

(declare-fun c!13472 () Bool)

(assert (=> d!52363 (= c!13472 (is-Nil!524 (t!47253 l2!357)))))

(declare-fun e!33035 () Bag!594)

(assert (=> d!52363 (= (bag!903 (t!47253 l2!357)) e!33035)))

(declare-fun b!61764 () Bool)

(assert (=> b!61764 (= e!33035 Leaf!396)))

(declare-fun b!61765 () Bool)

(assert (=> b!61765 (= e!33035 (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (= (and d!52363 c!13472) b!61764))

(assert (= (and d!52363 (not c!13472)) b!61765))

(declare-fun m!67374 () Bool)

(assert (=> b!61765 m!67374))

(assert (=> b!61765 m!67374))

(declare-fun m!67376 () Bool)

(assert (=> b!61765 m!67376))

(assert (=> b!61707 d!52363))

(declare-fun b!61776 () Bool)

(declare-fun res!28757 () Bool)

(declare-fun e!33041 () Bool)

(assert (=> b!61776 (=> (not res!28757) (not e!33041))))

(declare-fun lt!11394 () List!558)

(assert (=> b!61776 (= res!28757 (= (size!524 lt!11394) (+ (size!524 (t!47253 l1!364)) (size!524 l2!357))))))

(declare-fun b!61774 () Bool)

(declare-fun e!33040 () List!558)

(assert (=> b!61774 (= e!33040 l2!357)))

(declare-fun b!61775 () Bool)

(assert (=> b!61775 (= e!33040 (Cons!523 (h!751 (t!47253 l1!364)) (++!62 (t!47253 (t!47253 l1!364)) l2!357)))))

(declare-fun d!52365 () Bool)

(assert (=> d!52365 e!33041))

(declare-fun res!28756 () Bool)

(assert (=> d!52365 (=> (not res!28756) (not e!33041))))

(declare-fun content!102 (List!558) (Set Int))

(assert (=> d!52365 (= res!28756 (= (content!102 lt!11394) (union (content!102 (t!47253 l1!364)) (content!102 l2!357))))))

(assert (=> d!52365 (= lt!11394 e!33040)))

(declare-fun c!13475 () Bool)

(assert (=> d!52365 (= c!13475 (is-Nil!524 (t!47253 l1!364)))))

(assert (=> d!52365 (= (++!62 (t!47253 l1!364) l2!357) lt!11394)))

(declare-fun b!61777 () Bool)

(assert (=> b!61777 (= e!33041 (or (not (= l2!357 Nil!524)) (= lt!11394 (t!47253 l1!364))))))

(assert (= (and d!52365 c!13475) b!61774))

(assert (= (and d!52365 (not c!13475)) b!61775))

(assert (= (and d!52365 res!28756) b!61776))

(assert (= (and b!61776 res!28757) b!61777))

(declare-fun m!67378 () Bool)

(assert (=> b!61776 m!67378))

(assert (=> b!61776 m!67264))

(assert (=> b!61776 m!67254))

(declare-fun m!67380 () Bool)

(assert (=> b!61775 m!67380))

(declare-fun m!67382 () Bool)

(assert (=> d!52365 m!67382))

(declare-fun m!67384 () Bool)

(assert (=> d!52365 m!67384))

(declare-fun m!67386 () Bool)

(assert (=> d!52365 m!67386))

(assert (=> b!61723 d!52365))

(declare-fun bs!37279 () Bool)

(declare-fun s!1901 () Bool)

(assert (= bs!37279 (and d!52319 b!61725 b!61722 s!1901)))

(assert (=> bs!37279 (=> true (= (get!604 (bag!903 lt!11384) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870)))))

(declare-fun m!67388 () Bool)

(assert (=> m!67244 m!67388))

(declare-fun m!67390 () Bool)

(assert (=> m!67244 m!67390))

(assert (=> m!67244 s!1901))

(assert (=> m!67288 s!1901))

(assert (=> m!67274 s!1901))

(assert (=> m!67286 s!1901))

(assert (=> m!67246 s!1901))

(assert (=> m!67276 s!1901))

(push 1)

(assert (not b!61752))

(assert (not b!61732))

(assert (not b!61753))

(assert (not b!61758))

(assert (not b!61746))

(assert (not b!61747))

(assert (not b!61730))

(assert (not b!61756))

(assert (not bs!37279))

(assert (not b!61742))

(assert (not b!61740))

(assert (not b!61736))

(assert (not b!61738))

(assert (not b!61744))

(assert (not b!61775))

(assert (not b!61754))

(assert (not b!61749))

(assert (not b!61751))

(assert (not b!61763))

(assert (not d!52349))

(assert (not d!52365))

(assert (not b!61776))

(assert (not b!61765))

(assert (not b!61761))

(assert (not b!61734))

(assert (not b!61755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> m!67390 s!1901))

(assert (=> m!67388 s!1901))

(declare-fun bs!37280 () Bool)

(declare-fun s!1903 () Bool)

(assert (= bs!37280 (and d!52349 b!61754 b!61751 s!1903)))

(assert (=> bs!37280 (=> true (= (get!604 (bag!903 lt!11390) x!26870) (get!604 (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) x!26870)))))

(declare-fun m!67392 () Bool)

(assert (=> m!67390 m!67392))

(declare-fun m!67394 () Bool)

(assert (=> m!67390 m!67394))

(assert (=> m!67390 s!1903))

(assert (=> m!67388 s!1903))

(push 1)

(assert (not b!61752))

(assert (not b!61732))

(assert (not b!61753))

(assert (not b!61758))

(assert (not b!61746))

(assert (not b!61747))

(assert (not b!61730))

(assert (not b!61756))

(assert (not bs!37279))

(assert (not b!61742))

(assert (not b!61740))

(assert (not b!61736))

(assert (not b!61738))

(assert (not b!61744))

(assert (not b!61775))

(assert (not b!61754))

(assert (not bs!37280))

(assert (not b!61749))

(assert (not b!61751))

(assert (not b!61763))

(assert (not d!52349))

(assert (not d!52365))

(assert (not b!61776))

(assert (not b!61765))

(assert (not b!61761))

(assert (not b!61734))

(assert (not b!61755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (right!1398 (bag!903 res!28279))))))

(declare-fun d!52367 () Bool)

(assert (=> (and d!52351 d!52367 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52345 d!52367 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52315 d!52367 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52353 d!52367 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52347 d!52367 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52309 d!52367 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52367 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870))))

(declare-fun c!13476 () Bool)

(assert (=> d!52367 (= c!13476 (is-Sum!304 (left!1395 (right!1398 (bag!903 res!28279)))))))

(declare-fun e!33042 () Int)

(assert (=> d!52367 (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) e!33042)))

(declare-fun b!61778 () Bool)

(assert (=> b!61778 (= e!33042 (+ (get!604 (left!1395 (left!1395 (right!1398 (bag!903 res!28279)))) x!26870) (get!604 (right!1398 (left!1395 (right!1398 (bag!903 res!28279)))) x!26870)))))

(declare-fun b!61779 () Bool)

(assert (=> b!61779 (= e!33042 (ite (and (is-Elem!302 (left!1395 (right!1398 (bag!903 res!28279)))) (= (key!360 (left!1395 (right!1398 (bag!903 res!28279)))) x!26870)) (value!4895 (left!1395 (right!1398 (bag!903 res!28279)))) 0))))

(assert (= (and d!52367 c!13476) b!61778))

(assert (= (and d!52367 (not c!13476)) b!61779))

(declare-fun bs!37281 () Bool)

(declare-fun m!67396 () Bool)

(assert (= bs!37281 m!67396))

(assert (=> bs!37281 s!1901))

(assert (=> bs!37281 s!1903))

(assert (=> b!61778 m!67396))

(declare-fun bs!37282 () Bool)

(declare-fun m!67398 () Bool)

(assert (= bs!37282 m!67398))

(assert (=> bs!37282 s!1901))

(assert (=> bs!37282 s!1903))

(assert (=> b!61778 m!67398))

(assert (=> b!61758 d!52367))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (right!1398 (bag!903 res!28279))))))

(declare-fun d!52369 () Bool)

(assert (=> (and d!52351 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52345 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52315 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52353 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52369 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52347 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52309 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (bag!903 res!28279))))))

(assert (=> (and d!52367 d!52369 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870))))

(declare-fun c!13477 () Bool)

(assert (=> d!52369 (= c!13477 (is-Sum!304 (right!1398 (right!1398 (bag!903 res!28279)))))))

(declare-fun e!33043 () Int)

(assert (=> d!52369 (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) e!33043)))

(declare-fun b!61780 () Bool)

(assert (=> b!61780 (= e!33043 (+ (get!604 (left!1395 (right!1398 (right!1398 (bag!903 res!28279)))) x!26870) (get!604 (right!1398 (right!1398 (right!1398 (bag!903 res!28279)))) x!26870)))))

(declare-fun b!61781 () Bool)

(assert (=> b!61781 (= e!33043 (ite (and (is-Elem!302 (right!1398 (right!1398 (bag!903 res!28279)))) (= (key!360 (right!1398 (right!1398 (bag!903 res!28279)))) x!26870)) (value!4895 (right!1398 (right!1398 (bag!903 res!28279)))) 0))))

(assert (= (and d!52369 c!13477) b!61780))

(assert (= (and d!52369 (not c!13477)) b!61781))

(declare-fun bs!37283 () Bool)

(declare-fun m!67400 () Bool)

(assert (= bs!37283 m!67400))

(assert (=> bs!37283 s!1901))

(assert (=> bs!37283 s!1903))

(assert (=> b!61780 m!67400))

(declare-fun bs!37284 () Bool)

(declare-fun m!67402 () Bool)

(assert (= bs!37284 m!67402))

(assert (=> bs!37284 s!1901))

(assert (=> bs!37284 s!1903))

(assert (=> b!61780 m!67402))

(assert (=> b!61758 d!52369))

(declare-fun b!61784 () Bool)

(declare-fun res!28759 () Bool)

(declare-fun e!33045 () Bool)

(assert (=> b!61784 (=> (not res!28759) (not e!33045))))

(declare-fun lt!11395 () List!558)

(assert (=> b!61784 (= res!28759 (= (size!524 lt!11395) (+ (size!524 (t!47253 (t!47253 l1!364))) (size!524 l2!357))))))

(declare-fun b!61782 () Bool)

(declare-fun e!33044 () List!558)

(assert (=> b!61782 (= e!33044 l2!357)))

(declare-fun b!61783 () Bool)

(assert (=> b!61783 (= e!33044 (Cons!523 (h!751 (t!47253 (t!47253 l1!364))) (++!62 (t!47253 (t!47253 (t!47253 l1!364))) l2!357)))))

(declare-fun d!52371 () Bool)

(assert (=> d!52371 e!33045))

(declare-fun res!28758 () Bool)

(assert (=> d!52371 (=> (not res!28758) (not e!33045))))

(assert (=> d!52371 (= res!28758 (= (content!102 lt!11395) (union (content!102 (t!47253 (t!47253 l1!364))) (content!102 l2!357))))))

(assert (=> d!52371 (= lt!11395 e!33044)))

(declare-fun c!13478 () Bool)

(assert (=> d!52371 (= c!13478 (is-Nil!524 (t!47253 (t!47253 l1!364))))))

(assert (=> d!52371 (= (++!62 (t!47253 (t!47253 l1!364)) l2!357) lt!11395)))

(declare-fun b!61785 () Bool)

(assert (=> b!61785 (= e!33045 (or (not (= l2!357 Nil!524)) (= lt!11395 (t!47253 (t!47253 l1!364)))))))

(assert (= (and d!52371 c!13478) b!61782))

(assert (= (and d!52371 (not c!13478)) b!61783))

(assert (= (and d!52371 res!28758) b!61784))

(assert (= (and b!61784 res!28759) b!61785))

(declare-fun m!67404 () Bool)

(assert (=> b!61784 m!67404))

(assert (=> b!61784 m!67328))

(assert (=> b!61784 m!67254))

(declare-fun m!67406 () Bool)

(assert (=> b!61783 m!67406))

(declare-fun m!67408 () Bool)

(assert (=> d!52371 m!67408))

(declare-fun m!67410 () Bool)

(assert (=> d!52371 m!67410))

(assert (=> d!52371 m!67386))

(assert (=> b!61775 d!52371))

(declare-fun b!61786 () Bool)

(declare-fun m!67412 () Bool)

(assert (=> b!61786 m!67412))

(declare-fun m!67414 () Bool)

(assert (=> b!61786 m!67414))

(assert (=> b!61786 m!67412))

(assert (=> b!61786 m!67414))

(declare-fun m!67416 () Bool)

(assert (=> b!61786 m!67416))

(declare-fun m!67418 () Bool)

(assert (=> b!61786 m!67418))

(declare-fun bs!37285 () Bool)

(declare-fun lt!11398 () List!558)

(assert (=> (and bs!37285 (= (bag!903 lt!11398) (bag!903 res!28279))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11398) (bag!903 res!28279))))

(assert (=> (and bs!37285 (= (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 l1!364) (bag!903 l2!357)))))

(declare-fun bs!37286 () Bool)

(assert (=> (and bs!37286 (= (bag!903 lt!11398) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11398) (bag!903 lt!11390))))

(assert (=> (and bs!37286 (= (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(declare-fun bs!37287 () Bool)

(assert (=> (and bs!37287 (= (bag!903 lt!11398) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11398) (bag!903 lt!11384))))

(assert (=> (and bs!37287 (= (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (= bs!37285 (and b!61786 b!61672)))

(assert (=> (and bs!37285 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11398) (bag!903 res!28279)) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (= true inst!452)))

(assert (= bs!37286 (and b!61786 b!61751)))

(assert (=> (and bs!37286 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11398) (bag!903 lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (= true true)))

(assert (= bs!37287 (and b!61786 b!61722)))

(assert (=> (and bs!37287 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11398) (bag!903 lt!11384)) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (bag!903 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (= true true)))

(declare-fun e!33047 () Bool)

(assert (=> b!61786 (= e!33047 true)))

(declare-fun e!33048 () List!558)

(declare-fun b!61787 () Bool)

(assert (=> b!61787 (= e!33048 (++!62 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(declare-fun lt!11396 () List!558)

(declare-fun b!61788 () Bool)

(declare-fun lt!11397 () Bool)

(assert (=> b!61788 (= e!33048 (ite lt!11397 (Cons!523 (h!751 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) lt!11396) (Cons!523 (h!751 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))) lt!11396)))))

(assert (=> b!61788 (= lt!11396 (merge!0 (ite lt!11397 (t!47253 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (ite lt!11397 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))) (t!47253 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))))

(assert (=> b!61788 (= lt!11397 (<= (h!751 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (h!751 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))))))

(declare-fun b!61789 () Bool)

(declare-fun res!28761 () Bool)

(assert (=> b!61789 (=> (not res!28761) (not e!33047))))

(assert (=> b!61789 (= res!28761 (= (size!524 lt!11398) (+ (size!524 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (size!524 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))))

(declare-fun d!52373 () Bool)

(assert (=> d!52373 e!33047))

(declare-fun res!28760 () Bool)

(assert (=> d!52373 (=> (not res!28760) (not e!33047))))

(assert (=> d!52373 (= res!28760 (isSorted!3 lt!11398))))

(assert (=> d!52373 (= lt!11398 e!33048)))

(declare-fun c!13479 () Bool)

(assert (=> d!52373 (= c!13479 (and (is-Cons!523 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (is-Cons!523 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))))))

(declare-fun e!33046 () Bool)

(assert (=> d!52373 e!33046))

(declare-fun res!28762 () Bool)

(assert (=> d!52373 (=> (not res!28762) (not e!33046))))

(assert (=> d!52373 (= res!28762 (isSorted!3 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))))))

(assert (=> d!52373 (= (merge!0 (ite lt!11389 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))) lt!11398)))

(declare-fun b!61790 () Bool)

(assert (=> b!61790 (= e!33046 (isSorted!3 (ite lt!11389 (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(assert (= (and d!52373 res!28762) b!61790))

(assert (= (and d!52373 c!13479) b!61788))

(assert (= (and d!52373 (not c!13479)) b!61787))

(assert (= (and d!52373 res!28760) b!61789))

(assert (= (and b!61789 res!28761) b!61786))

(declare-fun m!67420 () Bool)

(assert (=> b!61787 m!67420))

(declare-fun m!67422 () Bool)

(assert (=> d!52373 m!67422))

(declare-fun m!67424 () Bool)

(assert (=> d!52373 m!67424))

(declare-fun m!67426 () Bool)

(assert (=> b!61789 m!67426))

(declare-fun m!67428 () Bool)

(assert (=> b!61789 m!67428))

(declare-fun m!67430 () Bool)

(assert (=> b!61789 m!67430))

(declare-fun m!67432 () Bool)

(assert (=> b!61790 m!67432))

(declare-fun m!67434 () Bool)

(assert (=> b!61788 m!67434))

(assert (=> b!61753 d!52373))

(declare-fun d!52375 () Bool)

(declare-fun res!28763 () Bool)

(declare-fun e!33049 () Bool)

(assert (=> d!52375 (=> res!28763 e!33049)))

(assert (=> d!52375 (= res!28763 (not (and (is-Cons!523 (t!47253 (t!47253 res!28279))) (is-Cons!523 (t!47253 (t!47253 (t!47253 res!28279)))))))))

(assert (=> d!52375 (= (isSorted!3 (t!47253 (t!47253 res!28279))) e!33049)))

(declare-fun b!61791 () Bool)

(declare-fun e!33050 () Bool)

(assert (=> b!61791 (= e!33049 e!33050)))

(declare-fun res!28764 () Bool)

(assert (=> b!61791 (=> (not res!28764) (not e!33050))))

(assert (=> b!61791 (= res!28764 (<= (h!751 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 (t!47253 (t!47253 res!28279))))))))

(declare-fun b!61792 () Bool)

(assert (=> b!61792 (= e!33050 (isSorted!3 (t!47253 (t!47253 (t!47253 res!28279)))))))

(assert (= (and d!52375 (not res!28763)) b!61791))

(assert (= (and b!61791 res!28764) b!61792))

(declare-fun m!67436 () Bool)

(assert (=> b!61792 m!67436))

(assert (=> b!61732 d!52375))

(assert (=> (and d!52361 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52361 (= (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(declare-fun d!52377 () Bool)

(assert (=> (and d!52361 d!52377 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 lt!11384))) (= (h!751 l2!357) (h!751 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> (and d!52377 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52377 (= (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> (and d!52377 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 lt!11384))) (= (h!751 lt!11384) (h!751 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> (and d!52357 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> (and d!52357 d!52377 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 lt!11384))) (= (h!751 l1!364) (h!751 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> (and d!52335 d!52377 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 lt!11384))) (= (h!751 res!28279) (h!751 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)))))

(assert (=> d!52377 (= (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (Sum!304 (bag!903 (t!47253 lt!11384)) (Elem!302 (h!751 lt!11384) 1)))))

(assert (=> b!61736 d!52377))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 lt!11384)))))

(declare-fun d!52379 () Bool)

(assert (=> (and d!52305 d!52379 (= l1!364 (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52311 d!52379 (= res!28279 (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52331 d!52379 (= lt!11384 (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52329 d!52379 (= (t!47253 l1!364) (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52363 d!52379 (= (t!47253 l2!357) (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52379 (= (t!47253 lt!11384) (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52337 d!52379 (= (t!47253 res!28279) (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 lt!11384)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 lt!11384)))))

(assert (=> (and d!52313 d!52379 (= l2!357 (t!47253 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 lt!11384)))))

(declare-fun c!13480 () Bool)

(assert (=> d!52379 (= c!13480 (is-Nil!524 (t!47253 lt!11384)))))

(declare-fun e!33051 () Bag!594)

(assert (=> d!52379 (= (bag!903 (t!47253 lt!11384)) e!33051)))

(declare-fun b!61793 () Bool)

(assert (=> b!61793 (= e!33051 Leaf!396)))

(declare-fun b!61794 () Bool)

(assert (=> b!61794 (= e!33051 (add!308 (bag!903 (t!47253 (t!47253 lt!11384))) (h!751 (t!47253 lt!11384))))))

(assert (= (and d!52379 c!13480) b!61793))

(assert (= (and d!52379 (not c!13480)) b!61794))

(declare-fun m!67438 () Bool)

(assert (=> b!61794 m!67438))

(assert (=> b!61794 m!67438))

(declare-fun m!67440 () Bool)

(assert (=> b!61794 m!67440))

(assert (=> b!61736 d!52379))

(assert (=> (and d!52361 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52361 (= (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(declare-fun d!52381 () Bool)

(assert (=> (and d!52361 d!52381 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l2!357)))) (= (h!751 l2!357) (h!751 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52381 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52381 (= (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52381 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l2!357)))) (= (h!751 (t!47253 l2!357)) (h!751 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52377 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52377 (= (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52377 d!52381 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l2!357)))) (= (h!751 lt!11384) (h!751 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52357 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52357 d!52381 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l2!357)))) (= (h!751 l1!364) (h!751 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> (and d!52335 d!52381 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l2!357)))) (= (h!751 res!28279) (h!751 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))))))

(assert (=> d!52381 (= (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (Sum!304 (bag!903 (t!47253 (t!47253 l2!357))) (Elem!302 (h!751 (t!47253 l2!357)) 1)))))

(assert (=> b!61765 d!52381))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 (t!47253 l2!357))))))

(declare-fun d!52383 () Bool)

(assert (=> (and d!52305 d!52383 (= l1!364 (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52311 d!52383 (= res!28279 (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52383 (= (t!47253 (t!47253 l2!357)) (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52331 d!52383 (= lt!11384 (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52329 d!52383 (= (t!47253 l1!364) (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52363 d!52383 (= (t!47253 l2!357) (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52379 d!52383 (= (t!47253 lt!11384) (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52337 d!52383 (= (t!47253 res!28279) (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 (t!47253 l2!357))))))

(assert (=> (and d!52313 d!52383 (= l2!357 (t!47253 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 (t!47253 l2!357))))))

(declare-fun c!13481 () Bool)

(assert (=> d!52383 (= c!13481 (is-Nil!524 (t!47253 (t!47253 l2!357))))))

(declare-fun e!33052 () Bag!594)

(assert (=> d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) e!33052)))

(declare-fun b!61795 () Bool)

(assert (=> b!61795 (= e!33052 Leaf!396)))

(declare-fun b!61796 () Bool)

(assert (=> b!61796 (= e!33052 (add!308 (bag!903 (t!47253 (t!47253 (t!47253 l2!357)))) (h!751 (t!47253 (t!47253 l2!357)))))))

(assert (= (and d!52383 c!13481) b!61795))

(assert (= (and d!52383 (not c!13481)) b!61796))

(declare-fun m!67442 () Bool)

(assert (=> b!61796 m!67442))

(assert (=> b!61796 m!67442))

(declare-fun m!67444 () Bool)

(assert (=> b!61796 m!67444))

(assert (=> b!61765 d!52383))

(assert (=> (and d!52361 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52361 (= (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(declare-fun d!52385 () Bool)

(assert (=> (and d!52361 d!52385 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l1!364)))) (= (h!751 l2!357) (h!751 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52385 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52385 (= (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52385 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 l1!364)))) (= (h!751 (t!47253 l1!364)) (h!751 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52381 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52381 (= (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52381 d!52385 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l1!364)))) (= (h!751 (t!47253 l2!357)) (h!751 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52377 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52377 (= (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52377 d!52385 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l1!364)))) (= (h!751 lt!11384) (h!751 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52357 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52357 d!52385 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l1!364)))) (= (h!751 l1!364) (h!751 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> (and d!52335 d!52385 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l1!364)))) (= (h!751 res!28279) (h!751 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))))))

(assert (=> d!52385 (= (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (Sum!304 (bag!903 (t!47253 (t!47253 l1!364))) (Elem!302 (h!751 (t!47253 l1!364)) 1)))))

(assert (=> b!61734 d!52385))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 (t!47253 l1!364))))))

(declare-fun d!52387 () Bool)

(assert (=> (and d!52305 d!52387 (= l1!364 (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52311 d!52387 (= res!28279 (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52387 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52387 (= (t!47253 (t!47253 l1!364)) (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52383 d!52387 (= (t!47253 (t!47253 l2!357)) (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52331 d!52387 (= lt!11384 (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52329 d!52387 (= (t!47253 l1!364) (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52363 d!52387 (= (t!47253 l2!357) (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52379 d!52387 (= (t!47253 lt!11384) (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52337 d!52387 (= (t!47253 res!28279) (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 (t!47253 l1!364))))))

(assert (=> (and d!52313 d!52387 (= l2!357 (t!47253 (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 (t!47253 l1!364))))))

(declare-fun c!13482 () Bool)

(assert (=> d!52387 (= c!13482 (is-Nil!524 (t!47253 (t!47253 l1!364))))))

(declare-fun e!33053 () Bag!594)

(assert (=> d!52387 (= (bag!903 (t!47253 (t!47253 l1!364))) e!33053)))

(declare-fun b!61797 () Bool)

(assert (=> b!61797 (= e!33053 Leaf!396)))

(declare-fun b!61798 () Bool)

(assert (=> b!61798 (= e!33053 (add!308 (bag!903 (t!47253 (t!47253 (t!47253 l1!364)))) (h!751 (t!47253 (t!47253 l1!364)))))))

(assert (= (and d!52387 c!13482) b!61797))

(assert (= (and d!52387 (not c!13482)) b!61798))

(declare-fun m!67446 () Bool)

(assert (=> b!61798 m!67446))

(assert (=> b!61798 m!67446))

(declare-fun m!67448 () Bool)

(assert (=> b!61798 m!67448))

(assert (=> b!61734 d!52387))

(declare-fun d!52389 () Bool)

(declare-fun res!28765 () Bool)

(declare-fun e!33054 () Bool)

(assert (=> d!52389 (=> res!28765 e!33054)))

(assert (=> d!52389 (= res!28765 (not (and (is-Cons!523 (t!47253 (t!47253 l1!364))) (is-Cons!523 (t!47253 (t!47253 (t!47253 l1!364)))))))))

(assert (=> d!52389 (= (isSorted!3 (t!47253 (t!47253 l1!364))) e!33054)))

(declare-fun b!61799 () Bool)

(declare-fun e!33055 () Bool)

(assert (=> b!61799 (= e!33054 e!33055)))

(declare-fun res!28766 () Bool)

(assert (=> b!61799 (=> (not res!28766) (not e!33055))))

(assert (=> b!61799 (= res!28766 (<= (h!751 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 (t!47253 (t!47253 l1!364))))))))

(declare-fun b!61800 () Bool)

(assert (=> b!61800 (= e!33055 (isSorted!3 (t!47253 (t!47253 (t!47253 l1!364)))))))

(assert (= (and d!52389 (not res!28765)) b!61799))

(assert (= (and b!61799 res!28766) b!61800))

(declare-fun m!67450 () Bool)

(assert (=> b!61800 m!67450))

(assert (=> b!61738 d!52389))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (left!1395 (bag!903 res!28279))))))

(declare-fun d!52391 () Bool)

(assert (=> (and d!52351 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52345 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52315 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52353 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52369 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52347 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52309 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52367 d!52391 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52391 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870))))

(declare-fun c!13483 () Bool)

(assert (=> d!52391 (= c!13483 (is-Sum!304 (left!1395 (left!1395 (bag!903 res!28279)))))))

(declare-fun e!33056 () Int)

(assert (=> d!52391 (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) e!33056)))

(declare-fun b!61801 () Bool)

(assert (=> b!61801 (= e!33056 (+ (get!604 (left!1395 (left!1395 (left!1395 (bag!903 res!28279)))) x!26870) (get!604 (right!1398 (left!1395 (left!1395 (bag!903 res!28279)))) x!26870)))))

(declare-fun b!61802 () Bool)

(assert (=> b!61802 (= e!33056 (ite (and (is-Elem!302 (left!1395 (left!1395 (bag!903 res!28279)))) (= (key!360 (left!1395 (left!1395 (bag!903 res!28279)))) x!26870)) (value!4895 (left!1395 (left!1395 (bag!903 res!28279)))) 0))))

(assert (= (and d!52391 c!13483) b!61801))

(assert (= (and d!52391 (not c!13483)) b!61802))

(declare-fun bs!37288 () Bool)

(declare-fun m!67452 () Bool)

(assert (= bs!37288 m!67452))

(assert (=> bs!37288 s!1901))

(assert (=> bs!37288 s!1903))

(assert (=> b!61801 m!67452))

(declare-fun bs!37289 () Bool)

(declare-fun m!67454 () Bool)

(assert (= bs!37289 m!67454))

(assert (=> bs!37289 s!1901))

(assert (=> bs!37289 s!1903))

(assert (=> b!61801 m!67454))

(assert (=> b!61756 d!52391))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (left!1395 (bag!903 res!28279))))))

(declare-fun d!52393 () Bool)

(assert (=> (and d!52351 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52345 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52315 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52353 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52369 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52309 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52347 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52393 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52367 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279))))))

(assert (=> (and d!52391 d!52393 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (bag!903 res!28279)))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870))))

(declare-fun c!13484 () Bool)

(assert (=> d!52393 (= c!13484 (is-Sum!304 (right!1398 (left!1395 (bag!903 res!28279)))))))

(declare-fun e!33057 () Int)

(assert (=> d!52393 (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) e!33057)))

(declare-fun b!61803 () Bool)

(assert (=> b!61803 (= e!33057 (+ (get!604 (left!1395 (right!1398 (left!1395 (bag!903 res!28279)))) x!26870) (get!604 (right!1398 (right!1398 (left!1395 (bag!903 res!28279)))) x!26870)))))

(declare-fun b!61804 () Bool)

(assert (=> b!61804 (= e!33057 (ite (and (is-Elem!302 (right!1398 (left!1395 (bag!903 res!28279)))) (= (key!360 (right!1398 (left!1395 (bag!903 res!28279)))) x!26870)) (value!4895 (right!1398 (left!1395 (bag!903 res!28279)))) 0))))

(assert (= (and d!52393 c!13484) b!61803))

(assert (= (and d!52393 (not c!13484)) b!61804))

(declare-fun bs!37290 () Bool)

(declare-fun m!67456 () Bool)

(assert (= bs!37290 m!67456))

(assert (=> bs!37290 s!1901))

(assert (=> bs!37290 s!1903))

(assert (=> b!61803 m!67456))

(declare-fun bs!37291 () Bool)

(declare-fun m!67458 () Bool)

(assert (= bs!37291 m!67458))

(assert (=> bs!37291 s!1901))

(assert (=> bs!37291 s!1903))

(assert (=> b!61803 m!67458))

(assert (=> b!61756 d!52393))

(declare-fun d!52395 () Bool)

(declare-fun lt!11399 () Int)

(assert (=> d!52395 (>= lt!11399 0)))

(declare-fun e!33058 () Int)

(assert (=> d!52395 (= lt!11399 e!33058)))

(declare-fun c!13485 () Bool)

(assert (=> d!52395 (= c!13485 (is-Nil!524 lt!11390))))

(assert (=> d!52395 (= (size!524 lt!11390) lt!11399)))

(declare-fun b!61805 () Bool)

(assert (=> b!61805 (= e!33058 0)))

(declare-fun b!61806 () Bool)

(assert (=> b!61806 (= e!33058 (+ 1 (size!524 (t!47253 lt!11390))))))

(assert (= (and d!52395 c!13485) b!61805))

(assert (= (and d!52395 (not c!13485)) b!61806))

(declare-fun m!67460 () Bool)

(assert (=> b!61806 m!67460))

(assert (=> b!61754 d!52395))

(declare-fun d!52397 () Bool)

(declare-fun lt!11400 () Int)

(assert (=> d!52397 (>= lt!11400 0)))

(declare-fun e!33059 () Int)

(assert (=> d!52397 (= lt!11400 e!33059)))

(declare-fun c!13486 () Bool)

(assert (=> d!52397 (= c!13486 (is-Nil!524 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> d!52397 (= (size!524 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) lt!11400)))

(declare-fun b!61807 () Bool)

(assert (=> b!61807 (= e!33059 0)))

(declare-fun b!61808 () Bool)

(assert (=> b!61808 (= e!33059 (+ 1 (size!524 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))))

(assert (= (and d!52397 c!13486) b!61807))

(assert (= (and d!52397 (not c!13486)) b!61808))

(declare-fun m!67462 () Bool)

(assert (=> b!61808 m!67462))

(assert (=> b!61754 d!52397))

(declare-fun d!52399 () Bool)

(declare-fun lt!11401 () Int)

(assert (=> d!52399 (>= lt!11401 0)))

(declare-fun e!33060 () Int)

(assert (=> d!52399 (= lt!11401 e!33060)))

(declare-fun c!13487 () Bool)

(assert (=> d!52399 (= c!13487 (is-Nil!524 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> d!52399 (= (size!524 (ite lt!11383 l2!357 (t!47253 l2!357))) lt!11401)))

(declare-fun b!61809 () Bool)

(assert (=> b!61809 (= e!33060 0)))

(declare-fun b!61810 () Bool)

(assert (=> b!61810 (= e!33060 (+ 1 (size!524 (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(assert (= (and d!52399 c!13487) b!61809))

(assert (= (and d!52399 (not c!13487)) b!61810))

(declare-fun m!67464 () Bool)

(assert (=> b!61810 m!67464))

(assert (=> b!61754 d!52399))

(declare-fun d!52401 () Bool)

(assert (=> (and d!52401 (= (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52401 (= (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52401 (= (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> (and d!52401 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> (and d!52327 (= (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52327 (= (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52327 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> (and d!52327 d!52401 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> (and d!52307 (= (bag!903 l1!364) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52307 (= (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52307 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> (and d!52307 d!52401 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> d!52401 (= (union!307 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))) (Sum!304 (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (=> b!61751 d!52401))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(declare-fun d!52403 () Bool)

(assert (=> (and d!52305 d!52403 (= l1!364 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52311 d!52403 (= res!28279 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52387 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52387 d!52403 (= (t!47253 (t!47253 l1!364)) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52383 d!52403 (= (t!47253 (t!47253 l2!357)) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52331 d!52403 (= lt!11384 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52329 d!52403 (= (t!47253 l1!364) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52403 (= (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52403 (= (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52363 d!52403 (= (t!47253 l2!357) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52379 d!52403 (= (t!47253 lt!11384) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52337 d!52403 (= (t!47253 res!28279) (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> (and d!52313 d!52403 (= l2!357 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(declare-fun c!13488 () Bool)

(assert (=> d!52403 (= c!13488 (is-Nil!524 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(declare-fun e!33061 () Bag!594)

(assert (=> d!52403 (= (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) e!33061)))

(declare-fun b!61811 () Bool)

(assert (=> b!61811 (= e!33061 Leaf!396)))

(declare-fun b!61812 () Bool)

(assert (=> b!61812 (= e!33061 (add!308 (bag!903 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))) (h!751 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))))))

(assert (= (and d!52403 c!13488) b!61811))

(assert (= (and d!52403 (not c!13488)) b!61812))

(declare-fun m!67466 () Bool)

(assert (=> b!61812 m!67466))

(assert (=> b!61812 m!67466))

(declare-fun m!67468 () Bool)

(assert (=> b!61812 m!67468))

(assert (=> b!61751 d!52403))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(declare-fun d!52405 () Bool)

(assert (=> (and d!52305 d!52405 (= l1!364 (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52405 (= (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52405 (= (ite lt!11383 l2!357 (t!47253 l2!357)) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52311 d!52405 (= res!28279 (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52387 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52387 d!52405 (= (t!47253 (t!47253 l1!364)) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52383 d!52405 (= (t!47253 (t!47253 l2!357)) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52331 d!52405 (= lt!11384 (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52329 d!52405 (= (t!47253 l1!364) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52403 (= (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52403 d!52405 (= (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52363 d!52405 (= (t!47253 l2!357) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52379 d!52405 (= (t!47253 lt!11384) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52337 d!52405 (= (t!47253 res!28279) (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(assert (=> (and d!52313 d!52405 (= l2!357 (ite lt!11383 l2!357 (t!47253 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(declare-fun c!13489 () Bool)

(assert (=> d!52405 (= c!13489 (is-Nil!524 (ite lt!11383 l2!357 (t!47253 l2!357))))))

(declare-fun e!33062 () Bag!594)

(assert (=> d!52405 (= (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) e!33062)))

(declare-fun b!61813 () Bool)

(assert (=> b!61813 (= e!33062 Leaf!396)))

(declare-fun b!61814 () Bool)

(assert (=> b!61814 (= e!33062 (add!308 (bag!903 (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))) (h!751 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (= (and d!52405 c!13489) b!61813))

(assert (= (and d!52405 (not c!13489)) b!61814))

(declare-fun m!67470 () Bool)

(assert (=> b!61814 m!67470))

(assert (=> b!61814 m!67470))

(declare-fun m!67472 () Bool)

(assert (=> b!61814 m!67472))

(assert (=> b!61751 d!52405))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 lt!11390))))

(declare-fun d!52407 () Bool)

(assert (=> (and d!52305 d!52407 (= l1!364 lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 lt!11390))))

(assert (=> (and d!52405 (= (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 lt!11390))))

(assert (=> (and d!52405 d!52407 (= (ite lt!11383 l2!357 (t!47253 l2!357)) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 lt!11390))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 lt!11390))))

(assert (=> (and d!52311 d!52407 (= res!28279 lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 lt!11390))))

(assert (=> (and d!52407 (= (bag!903 lt!11390) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 lt!11390))))

(assert (=> (and d!52407 (= lt!11390 lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 lt!11390))))

(assert (=> (and d!52387 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 lt!11390))))

(assert (=> (and d!52387 d!52407 (= (t!47253 (t!47253 l1!364)) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 lt!11390))))

(assert (=> (and d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 lt!11390))))

(assert (=> (and d!52383 d!52407 (= (t!47253 (t!47253 l2!357)) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 lt!11390))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 lt!11390))))

(assert (=> (and d!52331 d!52407 (= lt!11384 lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 lt!11390))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 lt!11390))))

(assert (=> (and d!52329 d!52407 (= (t!47253 l1!364) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 lt!11390))))

(assert (=> (and d!52403 (= (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 lt!11390))))

(assert (=> (and d!52403 d!52407 (= (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 lt!11390))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 lt!11390))))

(assert (=> (and d!52363 d!52407 (= (t!47253 l2!357) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 lt!11390))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 lt!11390))))

(assert (=> (and d!52379 d!52407 (= (t!47253 lt!11384) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 lt!11390))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 lt!11390))))

(assert (=> (and d!52337 d!52407 (= (t!47253 res!28279) lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 lt!11390))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 lt!11390))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 lt!11390))))

(assert (=> (and d!52313 d!52407 (= l2!357 lt!11390)) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 lt!11390))))

(declare-fun c!13490 () Bool)

(assert (=> d!52407 (= c!13490 (is-Nil!524 lt!11390))))

(declare-fun e!33063 () Bag!594)

(assert (=> d!52407 (= (bag!903 lt!11390) e!33063)))

(declare-fun b!61815 () Bool)

(assert (=> b!61815 (= e!33063 Leaf!396)))

(declare-fun b!61816 () Bool)

(assert (=> b!61816 (= e!33063 (add!308 (bag!903 (t!47253 lt!11390)) (h!751 lt!11390)))))

(assert (= (and d!52407 c!13490) b!61815))

(assert (= (and d!52407 (not c!13490)) b!61816))

(declare-fun m!67474 () Bool)

(assert (=> b!61816 m!67474))

(assert (=> b!61816 m!67474))

(declare-fun m!67476 () Bool)

(assert (=> b!61816 m!67476))

(assert (=> b!61751 d!52407))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(declare-fun d!52409 () Bool)

(assert (=> (and d!52351 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52345 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52315 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52353 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52409 (= (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52409 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52369 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52309 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52347 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52393 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52367 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52391 d!52409 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(declare-fun c!13491 () Bool)

(assert (=> d!52409 (= c!13491 (is-Sum!304 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))))

(declare-fun e!33064 () Int)

(assert (=> d!52409 (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) e!33064)))

(declare-fun b!61817 () Bool)

(assert (=> b!61817 (= e!33064 (+ (get!604 (left!1395 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870) (get!604 (right!1398 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)))))

(declare-fun b!61818 () Bool)

(assert (=> b!61818 (= e!33064 (ite (and (is-Elem!302 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= (key!360 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)) (value!4895 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) 0))))

(assert (= (and d!52409 c!13491) b!61817))

(assert (= (and d!52409 (not c!13491)) b!61818))

(declare-fun bs!37292 () Bool)

(declare-fun m!67478 () Bool)

(assert (= bs!37292 m!67478))

(assert (=> bs!37292 s!1901))

(assert (=> bs!37292 s!1903))

(assert (=> b!61817 m!67478))

(declare-fun bs!37293 () Bool)

(declare-fun m!67480 () Bool)

(assert (= bs!37293 m!67480))

(assert (=> bs!37293 s!1901))

(assert (=> bs!37293 s!1903))

(assert (=> b!61817 m!67480))

(assert (=> b!61749 d!52409))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(declare-fun d!52411 () Bool)

(assert (=> (and d!52351 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52345 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52315 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52411 (= (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52411 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52353 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52409 (= (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52409 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52369 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52309 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52347 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52393 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52367 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52391 d!52411 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(declare-fun c!13492 () Bool)

(assert (=> d!52411 (= c!13492 (is-Sum!304 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))))

(declare-fun e!33065 () Int)

(assert (=> d!52411 (= (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) e!33065)))

(declare-fun b!61819 () Bool)

(assert (=> b!61819 (= e!33065 (+ (get!604 (left!1395 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870) (get!604 (right!1398 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)))))

(declare-fun b!61820 () Bool)

(assert (=> b!61820 (= e!33065 (ite (and (is-Elem!302 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= (key!360 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)) (value!4895 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) 0))))

(assert (= (and d!52411 c!13492) b!61819))

(assert (= (and d!52411 (not c!13492)) b!61820))

(declare-fun bs!37294 () Bool)

(declare-fun m!67482 () Bool)

(assert (= bs!37294 m!67482))

(assert (=> bs!37294 s!1901))

(assert (=> bs!37294 s!1903))

(assert (=> b!61819 m!67482))

(declare-fun bs!37295 () Bool)

(declare-fun m!67484 () Bool)

(assert (= bs!37295 m!67484))

(assert (=> bs!37295 s!1901))

(assert (=> bs!37295 s!1903))

(assert (=> b!61819 m!67484))

(assert (=> b!61749 d!52411))

(declare-fun d!52413 () Bool)

(declare-fun c!13495 () Bool)

(assert (=> d!52413 (= c!13495 (is-Nil!524 lt!11394))))

(declare-fun e!33068 () (Set Int))

(assert (=> d!52413 (= (content!102 lt!11394) e!33068)))

(declare-fun b!61825 () Bool)

(assert (=> b!61825 (= e!33068 (as emptyset (Set Int)))))

(declare-fun b!61826 () Bool)

(assert (=> b!61826 (= e!33068 (union (insert (h!751 lt!11394) (as emptyset (Set Int))) (content!102 (t!47253 lt!11394))))))

(assert (= (and d!52413 c!13495) b!61825))

(assert (= (and d!52413 (not c!13495)) b!61826))

(declare-fun m!67486 () Bool)

(assert (=> b!61826 m!67486))

(declare-fun m!67488 () Bool)

(assert (=> b!61826 m!67488))

(assert (=> d!52365 d!52413))

(declare-fun d!52415 () Bool)

(declare-fun c!13496 () Bool)

(assert (=> d!52415 (= c!13496 (is-Nil!524 (t!47253 l1!364)))))

(declare-fun e!33069 () (Set Int))

(assert (=> d!52415 (= (content!102 (t!47253 l1!364)) e!33069)))

(declare-fun b!61827 () Bool)

(assert (=> b!61827 (= e!33069 (as emptyset (Set Int)))))

(declare-fun b!61828 () Bool)

(assert (=> b!61828 (= e!33069 (union (insert (h!751 (t!47253 l1!364)) (as emptyset (Set Int))) (content!102 (t!47253 (t!47253 l1!364)))))))

(assert (= (and d!52415 c!13496) b!61827))

(assert (= (and d!52415 (not c!13496)) b!61828))

(declare-fun m!67490 () Bool)

(assert (=> b!61828 m!67490))

(assert (=> b!61828 m!67410))

(assert (=> d!52365 d!52415))

(declare-fun d!52417 () Bool)

(declare-fun c!13497 () Bool)

(assert (=> d!52417 (= c!13497 (is-Nil!524 l2!357))))

(declare-fun e!33070 () (Set Int))

(assert (=> d!52417 (= (content!102 l2!357) e!33070)))

(declare-fun b!61829 () Bool)

(assert (=> b!61829 (= e!33070 (as emptyset (Set Int)))))

(declare-fun b!61830 () Bool)

(assert (=> b!61830 (= e!33070 (union (insert (h!751 l2!357) (as emptyset (Set Int))) (content!102 (t!47253 l2!357))))))

(assert (= (and d!52417 c!13497) b!61829))

(assert (= (and d!52417 (not c!13497)) b!61830))

(declare-fun m!67492 () Bool)

(assert (=> b!61830 m!67492))

(declare-fun m!67494 () Bool)

(assert (=> b!61830 m!67494))

(assert (=> d!52365 d!52417))

(declare-fun d!52419 () Bool)

(declare-fun lt!11402 () Int)

(assert (=> d!52419 (>= lt!11402 0)))

(declare-fun e!33071 () Int)

(assert (=> d!52419 (= lt!11402 e!33071)))

(declare-fun c!13498 () Bool)

(assert (=> d!52419 (= c!13498 (is-Nil!524 (t!47253 (t!47253 l1!364))))))

(assert (=> d!52419 (= (size!524 (t!47253 (t!47253 l1!364))) lt!11402)))

(declare-fun b!61831 () Bool)

(assert (=> b!61831 (= e!33071 0)))

(declare-fun b!61832 () Bool)

(assert (=> b!61832 (= e!33071 (+ 1 (size!524 (t!47253 (t!47253 (t!47253 l1!364))))))))

(assert (= (and d!52419 c!13498) b!61831))

(assert (= (and d!52419 (not c!13498)) b!61832))

(declare-fun m!67496 () Bool)

(assert (=> b!61832 m!67496))

(assert (=> b!61746 d!52419))

(assert (=> (and d!52361 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52361 (= (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(declare-fun d!52421 () Bool)

(assert (=> (and d!52361 d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 l2!357) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l2!357)) (h!751 l2!357)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52385 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52385 (= (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52385 d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 (t!47253 l1!364)) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l1!364))) (h!751 (t!47253 l1!364))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52381 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52381 (= (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52381 d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 (t!47253 l2!357)) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 l2!357))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52377 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52377 (= (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52377 d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 lt!11384) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 lt!11384)) (h!751 lt!11384)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52357 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52357 (= (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52357 d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 l1!364) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 l1!364)) (h!751 l1!364)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52421 (= (bag!903 (t!47253 (t!47253 res!28279))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 res!28279))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52421 (= (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 res!28279))) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 (t!47253 res!28279)) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52335 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52335 (= (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> (and d!52335 d!52421 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 res!28279)))) (= (h!751 res!28279) (h!751 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (add!308 (bag!903 (t!47253 res!28279)) (h!751 res!28279)) (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))))))

(assert (=> d!52421 (= (add!308 (bag!903 (t!47253 (t!47253 res!28279))) (h!751 (t!47253 res!28279))) (Sum!304 (bag!903 (t!47253 (t!47253 res!28279))) (Elem!302 (h!751 (t!47253 res!28279)) 1)))))

(assert (=> b!61740 d!52421))

(assert (=> (and d!52305 (= (bag!903 l1!364) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 (t!47253 res!28279))))))

(declare-fun d!52423 () Bool)

(assert (=> (and d!52305 d!52423 (= l1!364 (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l1!364) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52423 (= (bag!903 (t!47253 (t!47253 res!28279))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 res!28279))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52423 (= (t!47253 (t!47253 res!28279)) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 res!28279))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52405 (= (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52405 d!52423 (= (ite lt!11383 l2!357 (t!47253 l2!357)) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 l2!357 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52311 (= (bag!903 res!28279) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52311 d!52423 (= res!28279 (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52407 (= (bag!903 lt!11390) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52407 d!52423 (= lt!11390 (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11390) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52387 (= (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52387 d!52423 (= (t!47253 (t!47253 l1!364)) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52383 (= (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52383 d!52423 (= (t!47253 (t!47253 l2!357)) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 (t!47253 l2!357))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52331 (= (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52331 d!52423 (= lt!11384 (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52329 (= (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52329 d!52423 (= (t!47253 l1!364) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l1!364)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52403 (= (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52403 d!52423 (= (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52363 (= (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52363 d!52423 (= (t!47253 l2!357) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 l2!357)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52379 (= (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52379 d!52423 (= (t!47253 lt!11384) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 lt!11384)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52337 (= (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52337 d!52423 (= (t!47253 res!28279) (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 (t!47253 res!28279)) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52313 (= (bag!903 l2!357) (bag!903 (t!47253 (t!47253 res!28279))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 (t!47253 res!28279))))))

(assert (=> (and d!52313 d!52423 (= l2!357 (t!47253 (t!47253 res!28279)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 l2!357) (bag!903 (t!47253 (t!47253 res!28279))))))

(declare-fun c!13499 () Bool)

(assert (=> d!52423 (= c!13499 (is-Nil!524 (t!47253 (t!47253 res!28279))))))

(declare-fun e!33072 () Bag!594)

(assert (=> d!52423 (= (bag!903 (t!47253 (t!47253 res!28279))) e!33072)))

(declare-fun b!61833 () Bool)

(assert (=> b!61833 (= e!33072 Leaf!396)))

(declare-fun b!61834 () Bool)

(assert (=> b!61834 (= e!33072 (add!308 (bag!903 (t!47253 (t!47253 (t!47253 res!28279)))) (h!751 (t!47253 (t!47253 res!28279)))))))

(assert (= (and d!52423 c!13499) b!61833))

(assert (= (and d!52423 (not c!13499)) b!61834))

(declare-fun m!67498 () Bool)

(assert (=> b!61834 m!67498))

(assert (=> b!61834 m!67498))

(declare-fun m!67500 () Bool)

(assert (=> b!61834 m!67500))

(assert (=> b!61740 d!52423))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (bag!903 lt!11384))))

(declare-fun d!52425 () Bool)

(assert (=> (and d!52351 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (bag!903 lt!11384))))

(assert (=> (and d!52345 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 lt!11384))))

(assert (=> (and d!52315 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52411 (= (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (bag!903 lt!11384))))

(assert (=> (and d!52411 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (bag!903 lt!11384))))

(assert (=> (and d!52353 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52425 (= (bag!903 lt!11384) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 lt!11384))))

(assert (=> (and d!52425 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (bag!903 lt!11384) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52409 (= (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (bag!903 lt!11384))))

(assert (=> (and d!52409 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (bag!903 lt!11384))))

(assert (=> (and d!52369 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (bag!903 lt!11384))))

(assert (=> (and d!52309 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (bag!903 lt!11384))))

(assert (=> (and d!52347 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (bag!903 lt!11384))))

(assert (=> (and d!52393 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (bag!903 lt!11384))))

(assert (=> (and d!52367 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (bag!903 lt!11384))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (bag!903 lt!11384))))

(assert (=> (and d!52391 d!52425 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (bag!903 lt!11384)) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (bag!903 lt!11384) x!26870))))

(declare-fun c!13500 () Bool)

(assert (=> d!52425 (= c!13500 (is-Sum!304 (bag!903 lt!11384)))))

(declare-fun e!33073 () Int)

(assert (=> d!52425 (= (get!604 (bag!903 lt!11384) x!26870) e!33073)))

(declare-fun b!61835 () Bool)

(assert (=> b!61835 (= e!33073 (+ (get!604 (left!1395 (bag!903 lt!11384)) x!26870) (get!604 (right!1398 (bag!903 lt!11384)) x!26870)))))

(declare-fun b!61836 () Bool)

(assert (=> b!61836 (= e!33073 (ite (and (is-Elem!302 (bag!903 lt!11384)) (= (key!360 (bag!903 lt!11384)) x!26870)) (value!4895 (bag!903 lt!11384)) 0))))

(assert (= (and d!52425 c!13500) b!61835))

(assert (= (and d!52425 (not c!13500)) b!61836))

(declare-fun bs!37296 () Bool)

(declare-fun m!67502 () Bool)

(assert (= bs!37296 m!67502))

(assert (=> bs!37296 s!1901))

(assert (=> bs!37296 s!1903))

(assert (=> b!61835 m!67502))

(declare-fun bs!37297 () Bool)

(declare-fun m!67504 () Bool)

(assert (= bs!37297 m!67504))

(assert (=> bs!37297 s!1901))

(assert (=> bs!37297 s!1903))

(assert (=> b!61835 m!67504))

(assert (=> bs!37279 d!52425))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(declare-fun d!52427 () Bool)

(assert (=> (and d!52351 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52345 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52315 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52411 (= (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52411 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52353 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52425 (= (bag!903 lt!11384) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52425 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (bag!903 lt!11384) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52409 (= (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52409 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52369 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52427 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52427 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52309 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52347 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52393 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52367 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)))))

(assert (=> (and d!52391 d!52427 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870))))

(declare-fun c!13501 () Bool)

(assert (=> d!52427 (= c!13501 (is-Sum!304 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))))))

(declare-fun e!33074 () Int)

(assert (=> d!52427 (= (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870) e!33074)))

(declare-fun b!61837 () Bool)

(assert (=> b!61837 (= e!33074 (+ (get!604 (left!1395 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) x!26870)))))

(declare-fun b!61838 () Bool)

(assert (=> b!61838 (= e!33074 (ite (and (is-Elem!302 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) (= (key!360 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) x!26870)) (value!4895 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357))) 0))))

(assert (= (and d!52427 c!13501) b!61837))

(assert (= (and d!52427 (not c!13501)) b!61838))

(declare-fun bs!37298 () Bool)

(declare-fun m!67506 () Bool)

(assert (= bs!37298 m!67506))

(assert (=> bs!37298 s!1901))

(assert (=> bs!37298 s!1903))

(assert (=> b!61837 m!67506))

(declare-fun bs!37299 () Bool)

(declare-fun m!67508 () Bool)

(assert (= bs!37299 m!67508))

(assert (=> bs!37299 s!1901))

(assert (=> bs!37299 s!1903))

(assert (=> b!61837 m!67508))

(assert (=> bs!37279 d!52427))

(declare-fun d!52429 () Bool)

(declare-fun res!28767 () Bool)

(declare-fun e!33075 () Bool)

(assert (=> d!52429 (=> res!28767 e!33075)))

(assert (=> d!52429 (= res!28767 (not (and (is-Cons!523 (t!47253 lt!11384)) (is-Cons!523 (t!47253 (t!47253 lt!11384))))))))

(assert (=> d!52429 (= (isSorted!3 (t!47253 lt!11384)) e!33075)))

(declare-fun b!61839 () Bool)

(declare-fun e!33076 () Bool)

(assert (=> b!61839 (= e!33075 e!33076)))

(declare-fun res!28768 () Bool)

(assert (=> b!61839 (=> (not res!28768) (not e!33076))))

(assert (=> b!61839 (= res!28768 (<= (h!751 (t!47253 lt!11384)) (h!751 (t!47253 (t!47253 lt!11384)))))))

(declare-fun b!61840 () Bool)

(assert (=> b!61840 (= e!33076 (isSorted!3 (t!47253 (t!47253 lt!11384))))))

(assert (= (and d!52429 (not res!28767)) b!61839))

(assert (= (and b!61839 res!28768) b!61840))

(declare-fun m!67510 () Bool)

(assert (=> b!61840 m!67510))

(assert (=> b!61742 d!52429))

(declare-fun d!52431 () Bool)

(declare-fun lt!11403 () Int)

(assert (=> d!52431 (>= lt!11403 0)))

(declare-fun e!33077 () Int)

(assert (=> d!52431 (= lt!11403 e!33077)))

(declare-fun c!13502 () Bool)

(assert (=> d!52431 (= c!13502 (is-Nil!524 lt!11394))))

(assert (=> d!52431 (= (size!524 lt!11394) lt!11403)))

(declare-fun b!61841 () Bool)

(assert (=> b!61841 (= e!33077 0)))

(declare-fun b!61842 () Bool)

(assert (=> b!61842 (= e!33077 (+ 1 (size!524 (t!47253 lt!11394))))))

(assert (= (and d!52431 c!13502) b!61841))

(assert (= (and d!52431 (not c!13502)) b!61842))

(declare-fun m!67512 () Bool)

(assert (=> b!61842 m!67512))

(assert (=> b!61776 d!52431))

(assert (=> b!61776 d!52343))

(assert (=> b!61776 d!52301))

(declare-fun d!52433 () Bool)

(declare-fun res!28769 () Bool)

(declare-fun e!33078 () Bool)

(assert (=> d!52433 (=> res!28769 e!33078)))

(assert (=> d!52433 (= res!28769 (not (and (is-Cons!523 (t!47253 (t!47253 l2!357))) (is-Cons!523 (t!47253 (t!47253 (t!47253 l2!357)))))))))

(assert (=> d!52433 (= (isSorted!3 (t!47253 (t!47253 l2!357))) e!33078)))

(declare-fun b!61843 () Bool)

(declare-fun e!33079 () Bool)

(assert (=> b!61843 (= e!33078 e!33079)))

(declare-fun res!28770 () Bool)

(assert (=> b!61843 (=> (not res!28770) (not e!33079))))

(assert (=> b!61843 (= res!28770 (<= (h!751 (t!47253 (t!47253 l2!357))) (h!751 (t!47253 (t!47253 (t!47253 l2!357))))))))

(declare-fun b!61844 () Bool)

(assert (=> b!61844 (= e!33079 (isSorted!3 (t!47253 (t!47253 (t!47253 l2!357)))))))

(assert (= (and d!52433 (not res!28769)) b!61843))

(assert (= (and b!61843 res!28770) b!61844))

(declare-fun m!67514 () Bool)

(assert (=> b!61844 m!67514))

(assert (=> b!61761 d!52433))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(declare-fun d!52435 () Bool)

(assert (=> (and d!52351 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52435 (= (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52435 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52345 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52315 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52411 (= (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52411 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52353 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52425 (= (bag!903 lt!11384) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52425 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (bag!903 lt!11384) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52409 (= (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52409 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52369 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52427 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52427 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52309 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52347 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52393 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52367 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52391 d!52435 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(declare-fun c!13503 () Bool)

(assert (=> d!52435 (= c!13503 (is-Sum!304 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))))

(declare-fun e!33080 () Int)

(assert (=> d!52435 (= (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) e!33080)))

(declare-fun b!61845 () Bool)

(assert (=> b!61845 (= e!33080 (+ (get!604 (left!1395 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870) (get!604 (right!1398 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)))))

(declare-fun b!61846 () Bool)

(assert (=> b!61846 (= e!33080 (ite (and (is-Elem!302 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= (key!360 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)) (value!4895 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) 0))))

(assert (= (and d!52435 c!13503) b!61845))

(assert (= (and d!52435 (not c!13503)) b!61846))

(declare-fun bs!37300 () Bool)

(declare-fun m!67516 () Bool)

(assert (= bs!37300 m!67516))

(assert (=> bs!37300 s!1901))

(assert (=> bs!37300 s!1903))

(assert (=> b!61845 m!67516))

(declare-fun bs!37301 () Bool)

(declare-fun m!67518 () Bool)

(assert (= bs!37301 m!67518))

(assert (=> bs!37301 s!1901))

(assert (=> bs!37301 s!1903))

(assert (=> b!61845 m!67518))

(assert (=> b!61747 d!52435))

(assert (=> (and d!52351 (= (left!1395 (bag!903 res!28279)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(declare-fun d!52437 () Bool)

(assert (=> (and d!52351 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (bag!903 res!28279)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52435 (= (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52435 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52345 (= (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52345 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52315 (= (bag!903 res!28279) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52315 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 res!28279) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (bag!903 res!28279) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52411 (= (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52411 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52437 (= (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52437 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52353 (= (right!1398 (bag!903 res!28279)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52353 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (bag!903 res!28279)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (bag!903 res!28279)) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52425 (= (bag!903 lt!11384) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52425 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (bag!903 lt!11384) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (bag!903 lt!11384) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52409 (= (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52409 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52369 (= (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52369 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52427 (= (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52427 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 (t!47253 l1!364)) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52309 (= (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52309 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (union!307 (bag!903 l1!364) (bag!903 l2!357)) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (union!307 (bag!903 l1!364) (bag!903 l2!357)) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52347 (= (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52347 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (union!307 (bag!903 l1!364) (bag!903 l2!357))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52393 (= (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52393 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (right!1398 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (right!1398 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52367 (= (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52367 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (right!1398 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (right!1398 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(assert (=> (and d!52391 (= (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))) (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))))))

(assert (=> (and d!52391 d!52437 (dynLambda!938 |eqBag[BigInt]!11| (left!1395 (left!1395 (bag!903 res!28279))) (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= x!26870 x!26870)) (= (get!604 (left!1395 (left!1395 (bag!903 res!28279))) x!26870) (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870))))

(declare-fun c!13504 () Bool)

(assert (=> d!52437 (= c!13504 (is-Sum!304 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))))))

(declare-fun e!33081 () Int)

(assert (=> d!52437 (= (get!604 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357)))) x!26870) e!33081)))

(declare-fun b!61847 () Bool)

(assert (=> b!61847 (= e!33081 (+ (get!604 (left!1395 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870) (get!604 (right!1398 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)))))

(declare-fun b!61848 () Bool)

(assert (=> b!61848 (= e!33081 (ite (and (is-Elem!302 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) (= (key!360 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) x!26870)) (value!4895 (right!1398 (left!1395 (union!307 (bag!903 l1!364) (bag!903 l2!357))))) 0))))

(assert (= (and d!52437 c!13504) b!61847))

(assert (= (and d!52437 (not c!13504)) b!61848))

(declare-fun bs!37302 () Bool)

(declare-fun m!67520 () Bool)

(assert (= bs!37302 m!67520))

(assert (=> bs!37302 s!1901))

(assert (=> bs!37302 s!1903))

(assert (=> b!61847 m!67520))

(declare-fun bs!37303 () Bool)

(declare-fun m!67522 () Bool)

(assert (= bs!37303 m!67522))

(assert (=> bs!37303 s!1901))

(assert (=> bs!37303 s!1903))

(assert (=> b!61847 m!67522))

(assert (=> b!61747 d!52437))

(declare-fun b!61851 () Bool)

(declare-fun res!28772 () Bool)

(declare-fun e!33083 () Bool)

(assert (=> b!61851 (=> (not res!28772) (not e!33083))))

(declare-fun lt!11404 () List!558)

(assert (=> b!61851 (= res!28772 (= (size!524 lt!11404) (+ (size!524 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (size!524 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(declare-fun b!61849 () Bool)

(declare-fun e!33082 () List!558)

(assert (=> b!61849 (= e!33082 (ite lt!11383 l2!357 (t!47253 l2!357)))))

(declare-fun b!61850 () Bool)

(assert (=> b!61850 (= e!33082 (Cons!523 (h!751 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (++!62 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(declare-fun d!52439 () Bool)

(assert (=> d!52439 e!33083))

(declare-fun res!28771 () Bool)

(assert (=> d!52439 (=> (not res!28771) (not e!33083))))

(assert (=> d!52439 (= res!28771 (= (content!102 lt!11404) (union (content!102 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (content!102 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(assert (=> d!52439 (= lt!11404 e!33082)))

(declare-fun c!13505 () Bool)

(assert (=> d!52439 (= c!13505 (is-Nil!524 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))

(assert (=> d!52439 (= (++!62 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)) (ite lt!11383 l2!357 (t!47253 l2!357))) lt!11404)))

(declare-fun b!61852 () Bool)

(assert (=> b!61852 (= e!33083 (or (not (= (ite lt!11383 l2!357 (t!47253 l2!357)) Nil!524)) (= lt!11404 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))))))

(assert (= (and d!52439 c!13505) b!61849))

(assert (= (and d!52439 (not c!13505)) b!61850))

(assert (= (and d!52439 res!28771) b!61851))

(assert (= (and b!61851 res!28772) b!61852))

(declare-fun m!67524 () Bool)

(assert (=> b!61851 m!67524))

(assert (=> b!61851 m!67354))

(assert (=> b!61851 m!67356))

(declare-fun m!67526 () Bool)

(assert (=> b!61850 m!67526))

(declare-fun m!67528 () Bool)

(assert (=> d!52439 m!67528))

(declare-fun m!67530 () Bool)

(assert (=> d!52439 m!67530))

(declare-fun m!67532 () Bool)

(assert (=> d!52439 m!67532))

(assert (=> b!61752 d!52439))

(declare-fun d!52441 () Bool)

(declare-fun lt!11405 () Int)

(assert (=> d!52441 (>= lt!11405 0)))

(declare-fun e!33084 () Int)

(assert (=> d!52441 (= lt!11405 e!33084)))

(declare-fun c!13506 () Bool)

(assert (=> d!52441 (= c!13506 (is-Nil!524 (t!47253 (t!47253 l2!357))))))

(assert (=> d!52441 (= (size!524 (t!47253 (t!47253 l2!357))) lt!11405)))

(declare-fun b!61853 () Bool)

(assert (=> b!61853 (= e!33084 0)))

(declare-fun b!61854 () Bool)

(assert (=> b!61854 (= e!33084 (+ 1 (size!524 (t!47253 (t!47253 (t!47253 l2!357))))))))

(assert (= (and d!52441 c!13506) b!61853))

(assert (= (and d!52441 (not c!13506)) b!61854))

(declare-fun m!67534 () Bool)

(assert (=> b!61854 m!67534))

(assert (=> b!61763 d!52441))

(declare-fun d!52443 () Bool)

(declare-fun res!28773 () Bool)

(declare-fun e!33085 () Bool)

(assert (=> d!52443 (=> res!28773 e!33085)))

(assert (=> d!52443 (= res!28773 (not (and (is-Cons!523 lt!11390) (is-Cons!523 (t!47253 lt!11390)))))))

(assert (=> d!52443 (= (isSorted!3 lt!11390) e!33085)))

(declare-fun b!61855 () Bool)

(declare-fun e!33086 () Bool)

(assert (=> b!61855 (= e!33085 e!33086)))

(declare-fun res!28774 () Bool)

(assert (=> b!61855 (=> (not res!28774) (not e!33086))))

(assert (=> b!61855 (= res!28774 (<= (h!751 lt!11390) (h!751 (t!47253 lt!11390))))))

(declare-fun b!61856 () Bool)

(assert (=> b!61856 (= e!33086 (isSorted!3 (t!47253 lt!11390)))))

(assert (= (and d!52443 (not res!28773)) b!61855))

(assert (= (and b!61855 res!28774) b!61856))

(declare-fun m!67536 () Bool)

(assert (=> b!61856 m!67536))

(assert (=> d!52349 d!52443))

(declare-fun d!52445 () Bool)

(declare-fun res!28775 () Bool)

(declare-fun e!33087 () Bool)

(assert (=> d!52445 (=> res!28775 e!33087)))

(assert (=> d!52445 (= res!28775 (not (and (is-Cons!523 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (is-Cons!523 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))))))))

(assert (=> d!52445 (= (isSorted!3 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) e!33087)))

(declare-fun b!61857 () Bool)

(declare-fun e!33088 () Bool)

(assert (=> b!61857 (= e!33087 e!33088)))

(declare-fun res!28776 () Bool)

(assert (=> b!61857 (=> (not res!28776) (not e!33088))))

(assert (=> b!61857 (= res!28776 (<= (h!751 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))) (h!751 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364))))))))

(declare-fun b!61858 () Bool)

(assert (=> b!61858 (= e!33088 (isSorted!3 (t!47253 (ite lt!11383 (t!47253 (t!47253 l1!364)) (t!47253 l1!364)))))))

(assert (= (and d!52445 (not res!28775)) b!61857))

(assert (= (and b!61857 res!28776) b!61858))

(declare-fun m!67538 () Bool)

(assert (=> b!61858 m!67538))

(assert (=> d!52349 d!52445))

(declare-fun d!52447 () Bool)

(declare-fun res!28777 () Bool)

(declare-fun e!33089 () Bool)

(assert (=> d!52447 (=> res!28777 e!33089)))

(assert (=> d!52447 (= res!28777 (not (and (is-Cons!523 (ite lt!11383 l2!357 (t!47253 l2!357))) (is-Cons!523 (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))))))

(assert (=> d!52447 (= (isSorted!3 (ite lt!11383 l2!357 (t!47253 l2!357))) e!33089)))

(declare-fun b!61859 () Bool)

(declare-fun e!33090 () Bool)

(assert (=> b!61859 (= e!33089 e!33090)))

(declare-fun res!28778 () Bool)

(assert (=> b!61859 (=> (not res!28778) (not e!33090))))

(assert (=> b!61859 (= res!28778 (<= (h!751 (ite lt!11383 l2!357 (t!47253 l2!357))) (h!751 (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357))))))))

(declare-fun b!61860 () Bool)

(assert (=> b!61860 (= e!33090 (isSorted!3 (t!47253 (ite lt!11383 l2!357 (t!47253 l2!357)))))))

(assert (= (and d!52447 (not res!28777)) b!61859))

(assert (= (and b!61859 res!28778) b!61860))

(declare-fun m!67540 () Bool)

(assert (=> b!61860 m!67540))

(assert (=> b!61755 d!52447))

(declare-fun d!52449 () Bool)

(declare-fun lt!11406 () Int)

(assert (=> d!52449 (>= lt!11406 0)))

(declare-fun e!33091 () Int)

(assert (=> d!52449 (= lt!11406 e!33091)))

(declare-fun c!13507 () Bool)

(assert (=> d!52449 (= c!13507 (is-Nil!524 (t!47253 (t!47253 res!28279))))))

(assert (=> d!52449 (= (size!524 (t!47253 (t!47253 res!28279))) lt!11406)))

(declare-fun b!61861 () Bool)

(assert (=> b!61861 (= e!33091 0)))

(declare-fun b!61862 () Bool)

(assert (=> b!61862 (= e!33091 (+ 1 (size!524 (t!47253 (t!47253 (t!47253 res!28279))))))))

(assert (= (and d!52449 c!13507) b!61861))

(assert (= (and d!52449 (not c!13507)) b!61862))

(declare-fun m!67542 () Bool)

(assert (=> b!61862 m!67542))

(assert (=> b!61730 d!52449))

(declare-fun d!52451 () Bool)

(declare-fun lt!11407 () Int)

(assert (=> d!52451 (>= lt!11407 0)))

(declare-fun e!33092 () Int)

(assert (=> d!52451 (= lt!11407 e!33092)))

(declare-fun c!13508 () Bool)

(assert (=> d!52451 (= c!13508 (is-Nil!524 (t!47253 lt!11384)))))

(assert (=> d!52451 (= (size!524 (t!47253 lt!11384)) lt!11407)))

(declare-fun b!61863 () Bool)

(assert (=> b!61863 (= e!33092 0)))

(declare-fun b!61864 () Bool)

(assert (=> b!61864 (= e!33092 (+ 1 (size!524 (t!47253 (t!47253 lt!11384)))))))

(assert (= (and d!52451 c!13508) b!61863))

(assert (= (and d!52451 (not c!13508)) b!61864))

(declare-fun m!67544 () Bool)

(assert (=> b!61864 m!67544))

(assert (=> b!61744 d!52451))

(assert (=> m!67366 s!1901))

(assert (=> m!67332 s!1901))

(assert (=> m!67392 s!1901))

(assert (=> m!67368 s!1901))

(assert (=> m!67330 s!1901))

(assert (=> m!67362 s!1901))

(assert (=> m!67336 s!1901))

(assert (=> m!67394 s!1901))

(assert (=> m!67364 s!1901))

(assert (=> m!67334 s!1901))

(assert (=> m!67276 s!1903))

(assert (=> m!67286 s!1903))

(assert (=> m!67366 s!1903))

(assert (=> m!67274 s!1903))

(assert (=> m!67332 s!1903))

(assert (=> m!67392 s!1903))

(assert (=> m!67368 s!1903))

(assert (=> m!67246 s!1903))

(assert (=> m!67288 s!1903))

(assert (=> m!67330 s!1903))

(assert (=> m!67362 s!1903))

(assert (=> m!67336 s!1903))

(assert (=> m!67394 s!1903))

(assert (=> m!67244 s!1903))

(assert (=> m!67364 s!1903))

(assert (=> m!67334 s!1903))

(push 1)

(assert (not b!61840))

(assert (not b!61845))

(assert (not b!61814))

(assert (not b!61783))

(assert (not b!61803))

(assert (not b!61789))

(assert (not b!61856))

(assert (not d!52373))

(assert (not b!61798))

(assert (not b!61851))

(assert (not b!61832))

(assert (not b!61817))

(assert (not b!61790))

(assert (not b!61842))

(assert (not b!61808))

(assert (not b!61810))

(assert (not b!61794))

(assert (not b!61844))

(assert (not b!61801))

(assert (not b!61847))

(assert (not b!61792))

(assert (not b!61835))

(assert (not b!61850))

(assert (not b!61819))

(assert (not b!61786))

(assert (not b!61830))

(assert (not b!61864))

(assert (not b!61778))

(assert (not b!61800))

(assert (not b!61787))

(assert (not bs!37280))

(assert (not b!61806))

(assert (not d!52371))

(assert (not b!61826))

(assert (not b!61860))

(assert (not b!61834))

(assert (not b!61816))

(assert (not b!61812))

(assert (not b!61828))

(assert (not b!61780))

(assert (not d!52439))

(assert (not b!61784))

(assert (not b!61858))

(assert (not b!61837))

(assert (not b!61796))

(assert (not b!61862))

(assert (not b!61788))

(assert (not b!61854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

