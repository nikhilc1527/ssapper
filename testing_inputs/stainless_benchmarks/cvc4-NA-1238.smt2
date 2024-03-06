; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8814 () Bool)

(assert start!8814)

(declare-fun b!61366 () Bool)

(declare-fun res!28603 () Bool)

(declare-fun e!32822 () Bool)

(assert (=> b!61366 (=> (not res!28603) (not e!32822))))

(declare-datatypes () ((List!554 (Cons!519 (h!747 Int) (t!47249 List!554)) (Nil!520))))

(declare-datatypes () ((tuple2!308 (tuple2!309 (_1!181 List!554) (_2!181 List!554)))))

(declare-fun res!28285 () tuple2!308)

(declare-fun list!641 () List!554)

(assert (=> b!61366 (= res!28603 (= res!28285 (tuple2!309 (Cons!519 (h!747 list!641) Nil!520) (t!47249 list!641))))))

(declare-fun b!61367 () Bool)

(declare-fun res!28602 () Bool)

(assert (=> b!61367 (=> (not res!28602) (not e!32822))))

(assert (=> b!61367 (= res!28602 (is-Cons!519 list!641))))

(declare-fun b!61368 () Bool)

(declare-fun e!32823 () Bool)

(assert (=> b!61368 (= e!32822 e!32823)))

(declare-fun res!28605 () Bool)

(assert (=> b!61368 (=> res!28605 e!32823)))

(declare-fun size!522 (List!554) Int)

(assert (=> b!61368 (= res!28605 (not (= (+ (size!522 (_1!181 res!28285)) (size!522 (_2!181 res!28285))) (size!522 list!641))))))

(declare-fun b!61369 () Bool)

(declare-fun res!28600 () Bool)

(assert (=> b!61369 (=> res!28600 e!32823)))

(assert (=> b!61369 (= res!28600 (<= (size!522 (_1!181 res!28285)) 0))))

(declare-fun res!28604 () Bool)

(assert (=> start!8814 (=> (not res!28604) (not e!32822))))

(assert (=> start!8814 (= res!28604 (> (size!522 list!641) 1))))

(assert (=> start!8814 e!32822))

(assert (=> start!8814 true))

(declare-fun b!61370 () Bool)

(declare-fun res!28599 () Bool)

(assert (=> b!61370 (=> (not res!28599) (not e!32822))))

(assert (=> b!61370 (= res!28599 (<= (size!522 (t!47249 list!641)) 2))))

(declare-fun b!61371 () Bool)

(declare-fun res!28601 () Bool)

(assert (=> b!61371 (=> res!28601 e!32823)))

(assert (=> b!61371 (= res!28601 (<= (size!522 (_2!181 res!28285)) 0))))

(declare-fun b!61372 () Bool)

(declare-fun |eqBag[BigInt]!7| () Int)

(declare-datatypes () ((Bag!592 (Sum!302 (left!1393 Bag!592) (right!1396 Bag!592)) (Elem!300 (key!358 Int) (value!4893 Int)) (Leaf!394))))

(declare-fun dynLambda!936 (Int Bag!592 Bag!592) Bool)

(declare-fun union!305 (Bag!592 Bag!592) Bag!592)

(declare-fun bag!897 (List!554) Bag!592)

(assert (=> b!61372 (= e!32823 (not (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641))))))

(assert (= (and start!8814 res!28604) b!61367))

(assert (= (and b!61367 res!28602) b!61370))

(assert (= (and b!61370 res!28599) b!61366))

(assert (= (and b!61366 res!28603) b!61368))

(assert (= (and b!61368 (not res!28605)) b!61369))

(assert (= (and b!61369 (not res!28600)) b!61371))

(assert (= (and b!61371 (not res!28601)) b!61372))

(declare-fun m!66854 () Bool)

(assert (=> b!61370 m!66854))

(declare-fun m!66856 () Bool)

(assert (=> b!61368 m!66856))

(declare-fun m!66858 () Bool)

(assert (=> b!61368 m!66858))

(declare-fun m!66860 () Bool)

(assert (=> b!61368 m!66860))

(assert (=> b!61371 m!66858))

(declare-fun m!66862 () Bool)

(assert (=> b!61372 m!66862))

(declare-fun m!66864 () Bool)

(assert (=> b!61372 m!66864))

(assert (=> b!61372 m!66862))

(assert (=> b!61372 m!66864))

(declare-fun m!66866 () Bool)

(assert (=> b!61372 m!66866))

(declare-fun m!66868 () Bool)

(assert (=> b!61372 m!66868))

(assert (=> b!61369 m!66856))

(assert (=> start!8814 m!66860))

(declare-fun q!19 () Bool)

(declare-fun equals!299 (Bag!592 Bag!592) Bool)

(assert (=> q!19 (= (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)) (equals!299 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)))))

(declare-fun bs!37212 () Bool)

(assert (= bs!37212 q!19))

(declare-fun m!66870 () Bool)

(assert (=> bs!37212 m!66870))

(assert (=> q!19 (= (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641))))

(assert (=> b!61372 q!19))

(push 1)

(assert (not start!8814))

(assert (not q!19))

(assert (not b!61372))

(assert (not b!61370))

(assert (not b!61371))

(assert (not b!61368))

(assert (not b!61369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52085 () Bool)

(assert (=> (and d!52085 (= (bag!897 (_1!181 res!28285)) (bag!897 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (_1!181 res!28285)))))

(assert (=> (and d!52085 (= (bag!897 (_2!181 res!28285)) (bag!897 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (_2!181 res!28285)))))

(assert (=> (and d!52085 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))

(assert (=> (and d!52085 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (_1!181 res!28285))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))

(assert (=> d!52085 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (Sum!302 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))

(assert (=> b!61372 d!52085))

(declare-fun d!52087 () Bool)

(assert (=> (and d!52087 (= (bag!897 (_1!181 res!28285)) (bag!897 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (_1!181 res!28285)))))

(assert (=> (and d!52087 (= (_1!181 res!28285) (_1!181 res!28285))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (_1!181 res!28285)))))

(declare-fun c!13350 () Bool)

(assert (=> d!52087 (= c!13350 (is-Nil!520 (_1!181 res!28285)))))

(declare-fun e!32826 () Bag!592)

(assert (=> d!52087 (= (bag!897 (_1!181 res!28285)) e!32826)))

(declare-fun b!61380 () Bool)

(assert (=> b!61380 (= e!32826 Leaf!394)))

(declare-fun b!61381 () Bool)

(declare-fun add!306 (Bag!592 Int) Bag!592)

(assert (=> b!61381 (= e!32826 (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))))

(assert (= (and d!52087 c!13350) b!61380))

(assert (= (and d!52087 (not c!13350)) b!61381))

(declare-fun m!66872 () Bool)

(assert (=> b!61381 m!66872))

(assert (=> b!61381 m!66872))

(declare-fun m!66874 () Bool)

(assert (=> b!61381 m!66874))

(assert (=> b!61372 d!52087))

(declare-fun d!52089 () Bool)

(assert (=> (and d!52089 (= (bag!897 (_2!181 res!28285)) (bag!897 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (_2!181 res!28285)))))

(assert (=> (and d!52089 (= (_2!181 res!28285) (_2!181 res!28285))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (_2!181 res!28285)))))

(assert (=> (and d!52087 (= (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))

(assert (=> (and d!52087 d!52089 (= (_1!181 res!28285) (_2!181 res!28285))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))

(declare-fun c!13351 () Bool)

(assert (=> d!52089 (= c!13351 (is-Nil!520 (_2!181 res!28285)))))

(declare-fun e!32827 () Bag!592)

(assert (=> d!52089 (= (bag!897 (_2!181 res!28285)) e!32827)))

(declare-fun b!61382 () Bool)

(assert (=> b!61382 (= e!32827 Leaf!394)))

(declare-fun b!61383 () Bool)

(assert (=> b!61383 (= e!32827 (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))))))

(assert (= (and d!52089 c!13351) b!61382))

(assert (= (and d!52089 (not c!13351)) b!61383))

(declare-fun m!66876 () Bool)

(assert (=> b!61383 m!66876))

(assert (=> b!61383 m!66876))

(declare-fun m!66878 () Bool)

(assert (=> b!61383 m!66878))

(assert (=> b!61372 d!52089))

(assert (=> (and d!52089 (= (bag!897 (_2!181 res!28285)) (bag!897 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 list!641))))

(declare-fun d!52091 () Bool)

(assert (=> (and d!52089 d!52091 (= (_2!181 res!28285) list!641)) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 list!641))))

(assert (=> (and d!52087 (= (bag!897 (_1!181 res!28285)) (bag!897 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 list!641))))

(assert (=> (and d!52087 d!52091 (= (_1!181 res!28285) list!641)) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 list!641))))

(assert (=> (and d!52091 (= (bag!897 list!641) (bag!897 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 list!641))))

(assert (=> (and d!52091 (= list!641 list!641)) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 list!641))))

(declare-fun c!13352 () Bool)

(assert (=> d!52091 (= c!13352 (is-Nil!520 list!641))))

(declare-fun e!32828 () Bag!592)

(assert (=> d!52091 (= (bag!897 list!641) e!32828)))

(declare-fun b!61384 () Bool)

(assert (=> b!61384 (= e!32828 Leaf!394)))

(declare-fun b!61385 () Bool)

(assert (=> b!61385 (= e!32828 (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(assert (= (and d!52091 c!13352) b!61384))

(assert (= (and d!52091 (not c!13352)) b!61385))

(declare-fun m!66880 () Bool)

(assert (=> b!61385 m!66880))

(assert (=> b!61385 m!66880))

(declare-fun m!66882 () Bool)

(assert (=> b!61385 m!66882))

(assert (=> b!61372 d!52091))

(declare-fun d!52093 () Bool)

(declare-fun lt!11339 () Int)

(assert (=> d!52093 (>= lt!11339 0)))

(declare-fun e!32831 () Int)

(assert (=> d!52093 (= lt!11339 e!32831)))

(declare-fun c!13355 () Bool)

(assert (=> d!52093 (= c!13355 (is-Nil!520 (_1!181 res!28285)))))

(assert (=> d!52093 (= (size!522 (_1!181 res!28285)) lt!11339)))

(declare-fun b!61390 () Bool)

(assert (=> b!61390 (= e!32831 0)))

(declare-fun b!61391 () Bool)

(assert (=> b!61391 (= e!32831 (+ 1 (size!522 (t!47249 (_1!181 res!28285)))))))

(assert (= (and d!52093 c!13355) b!61390))

(assert (= (and d!52093 (not c!13355)) b!61391))

(declare-fun m!66884 () Bool)

(assert (=> b!61391 m!66884))

(assert (=> b!61368 d!52093))

(declare-fun d!52095 () Bool)

(declare-fun lt!11340 () Int)

(assert (=> d!52095 (>= lt!11340 0)))

(declare-fun e!32832 () Int)

(assert (=> d!52095 (= lt!11340 e!32832)))

(declare-fun c!13356 () Bool)

(assert (=> d!52095 (= c!13356 (is-Nil!520 (_2!181 res!28285)))))

(assert (=> d!52095 (= (size!522 (_2!181 res!28285)) lt!11340)))

(declare-fun b!61392 () Bool)

(assert (=> b!61392 (= e!32832 0)))

(declare-fun b!61393 () Bool)

(assert (=> b!61393 (= e!32832 (+ 1 (size!522 (t!47249 (_2!181 res!28285)))))))

(assert (= (and d!52095 c!13356) b!61392))

(assert (= (and d!52095 (not c!13356)) b!61393))

(declare-fun m!66886 () Bool)

(assert (=> b!61393 m!66886))

(assert (=> b!61368 d!52095))

(declare-fun d!52097 () Bool)

(declare-fun lt!11341 () Int)

(assert (=> d!52097 (>= lt!11341 0)))

(declare-fun e!32833 () Int)

(assert (=> d!52097 (= lt!11341 e!32833)))

(declare-fun c!13357 () Bool)

(assert (=> d!52097 (= c!13357 (is-Nil!520 list!641))))

(assert (=> d!52097 (= (size!522 list!641) lt!11341)))

(declare-fun b!61394 () Bool)

(assert (=> b!61394 (= e!32833 0)))

(declare-fun b!61395 () Bool)

(assert (=> b!61395 (= e!32833 (+ 1 (size!522 (t!47249 list!641))))))

(assert (= (and d!52097 c!13357) b!61394))

(assert (= (and d!52097 (not c!13357)) b!61395))

(assert (=> b!61395 m!66854))

(assert (=> b!61368 d!52097))

(assert (=> b!61369 d!52093))

(assert (=> start!8814 d!52097))

(declare-fun d!52099 () Bool)

(declare-fun lt!11342 () Int)

(assert (=> d!52099 (>= lt!11342 0)))

(declare-fun e!32834 () Int)

(assert (=> d!52099 (= lt!11342 e!32834)))

(declare-fun c!13358 () Bool)

(assert (=> d!52099 (= c!13358 (is-Nil!520 (t!47249 list!641)))))

(assert (=> d!52099 (= (size!522 (t!47249 list!641)) lt!11342)))

(declare-fun b!61396 () Bool)

(assert (=> b!61396 (= e!32834 0)))

(declare-fun b!61397 () Bool)

(assert (=> b!61397 (= e!32834 (+ 1 (size!522 (t!47249 (t!47249 list!641)))))))

(assert (= (and d!52099 c!13358) b!61396))

(assert (= (and d!52099 (not c!13358)) b!61397))

(declare-fun m!66888 () Bool)

(assert (=> b!61397 m!66888))

(assert (=> b!61370 d!52099))

(declare-fun d!52101 () Bool)

(assert (=> (and d!52101 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))

(assert (=> (and d!52101 (= (bag!897 list!641) (bag!897 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 list!641))))

(assert (=> (and d!52101 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 list!641))) (= (equals!299 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)) (equals!299 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)))))

(declare-fun x!26823 () Int)

(declare-fun inst!446 () Bool)

(declare-fun get!602 (Bag!592 Int) Int)

(assert (=> d!52101 (= inst!446 (=> true (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (bag!897 list!641) x!26823))))))

(declare-fun bs!37213 () Bool)

(assert (= bs!37213 d!52101))

(declare-fun m!66890 () Bool)

(assert (=> bs!37213 m!66890))

(declare-fun m!66892 () Bool)

(assert (=> bs!37213 m!66892))

(declare-fun bs!37214 () Bool)

(declare-fun neg-inst!431 () Bool)

(declare-fun s!1895 () Bool)

(assert (= bs!37214 (and neg-inst!431 s!1895)))

(assert (=> bs!37214 (=> true (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (bag!897 list!641) x!26823)))))

(assert (=> m!66892 m!66890))

(assert (=> m!66892 s!1895))

(assert (=> m!66890 s!1895))

(declare-fun bs!37215 () Bool)

(assert (= bs!37215 (and neg-inst!431 d!52101)))

(assert (=> bs!37215 (= true inst!446)))

(assert (=> d!52101 (= (equals!299 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)) inst!446)))

(assert (= neg-inst!431 inst!446))

(assert (=> q!19 d!52101))

(assert (=> b!61371 d!52095))

(push 1)

(assert (not b!61397))

(assert (not b!61391))

(assert (not b!61395))

(assert (not b!61381))

(assert (not d!52101))

(assert (not bs!37214))

(assert (not b!61385))

(assert (not b!61383))

(assert (not b!61393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52103 () Bool)

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))

(assert (=> (and d!52103 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823))))

(declare-fun c!13361 () Bool)

(assert (=> d!52103 (= c!13361 (is-Sum!302 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(declare-fun e!32837 () Int)

(assert (=> d!52103 (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) e!32837)))

(declare-fun b!61402 () Bool)

(assert (=> b!61402 (= e!32837 (+ (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823)))))

(declare-fun b!61403 () Bool)

(assert (=> b!61403 (= e!32837 (ite (and (is-Elem!300 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (= (key!358 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823)) (value!4893 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) 0))))

(assert (= (and d!52103 c!13361) b!61402))

(assert (= (and d!52103 (not c!13361)) b!61403))

(declare-fun bs!37216 () Bool)

(declare-fun m!66894 () Bool)

(assert (= bs!37216 m!66894))

(assert (=> bs!37216 s!1895))

(assert (=> b!61402 m!66894))

(declare-fun bs!37217 () Bool)

(declare-fun m!66896 () Bool)

(assert (= bs!37217 m!66896))

(assert (=> bs!37217 s!1895))

(assert (=> b!61402 m!66896))

(assert (=> bs!37214 d!52103))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641))))

(declare-fun d!52105 () Bool)

(assert (=> (and d!52103 d!52105 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (bag!897 list!641)) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (bag!897 list!641) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (bag!897 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 list!641))))

(assert (=> (and d!52105 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 list!641)) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (bag!897 list!641) x!26823))))

(declare-fun c!13362 () Bool)

(assert (=> d!52105 (= c!13362 (is-Sum!302 (bag!897 list!641)))))

(declare-fun e!32838 () Int)

(assert (=> d!52105 (= (get!602 (bag!897 list!641) x!26823) e!32838)))

(declare-fun b!61404 () Bool)

(assert (=> b!61404 (= e!32838 (+ (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (bag!897 list!641)) x!26823)))))

(declare-fun b!61405 () Bool)

(assert (=> b!61405 (= e!32838 (ite (and (is-Elem!300 (bag!897 list!641)) (= (key!358 (bag!897 list!641)) x!26823)) (value!4893 (bag!897 list!641)) 0))))

(assert (= (and d!52105 c!13362) b!61404))

(assert (= (and d!52105 (not c!13362)) b!61405))

(declare-fun bs!37218 () Bool)

(declare-fun m!66898 () Bool)

(assert (= bs!37218 m!66898))

(assert (=> bs!37218 s!1895))

(assert (=> b!61404 m!66898))

(declare-fun bs!37219 () Bool)

(declare-fun m!66900 () Bool)

(assert (= bs!37219 m!66900))

(assert (=> bs!37219 s!1895))

(assert (=> b!61404 m!66900))

(assert (=> bs!37214 d!52105))

(push 1)

(assert (not b!61397))

(assert (not b!61391))

(assert (not b!61395))

(assert (not b!61381))

(assert (not d!52101))

(assert (not b!61385))

(assert (not b!61404))

(assert (not b!61402))

(assert (not b!61383))

(assert (not b!61393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (bag!897 list!641)))))

(declare-fun d!52107 () Bool)

(assert (=> (and d!52103 d!52107 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (left!1393 (bag!897 list!641)) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (left!1393 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (bag!897 list!641)))))

(assert (=> (and d!52107 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (left!1393 (bag!897 list!641)) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (left!1393 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (bag!897 list!641)))))

(assert (=> (and d!52105 d!52107 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (left!1393 (bag!897 list!641)) x!26823))))

(declare-fun c!13363 () Bool)

(assert (=> d!52107 (= c!13363 (is-Sum!302 (left!1393 (bag!897 list!641))))))

(declare-fun e!32839 () Int)

(assert (=> d!52107 (= (get!602 (left!1393 (bag!897 list!641)) x!26823) e!32839)))

(declare-fun b!61406 () Bool)

(assert (=> b!61406 (= e!32839 (+ (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823)))))

(declare-fun b!61407 () Bool)

(assert (=> b!61407 (= e!32839 (ite (and (is-Elem!300 (left!1393 (bag!897 list!641))) (= (key!358 (left!1393 (bag!897 list!641))) x!26823)) (value!4893 (left!1393 (bag!897 list!641))) 0))))

(assert (= (and d!52107 c!13363) b!61406))

(assert (= (and d!52107 (not c!13363)) b!61407))

(declare-fun bs!37220 () Bool)

(declare-fun m!66902 () Bool)

(assert (= bs!37220 m!66902))

(assert (=> bs!37220 s!1895))

(assert (=> b!61406 m!66902))

(declare-fun bs!37221 () Bool)

(declare-fun m!66904 () Bool)

(assert (= bs!37221 m!66904))

(assert (=> bs!37221 s!1895))

(assert (=> b!61406 m!66904))

(assert (=> b!61404 d!52107))

(declare-fun d!52109 () Bool)

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (right!1396 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (bag!897 list!641)))))

(assert (=> (and d!52109 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (right!1396 (bag!897 list!641)) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (bag!897 list!641)))))

(assert (=> (and d!52103 d!52109 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (right!1396 (bag!897 list!641)) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (right!1396 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (bag!897 list!641)))))

(assert (=> (and d!52105 d!52109 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (right!1396 (bag!897 list!641)) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (right!1396 (bag!897 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (bag!897 list!641)))))

(assert (=> (and d!52107 d!52109 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (bag!897 list!641))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (bag!897 list!641)) x!26823))))

(declare-fun c!13364 () Bool)

(assert (=> d!52109 (= c!13364 (is-Sum!302 (right!1396 (bag!897 list!641))))))

(declare-fun e!32840 () Int)

(assert (=> d!52109 (= (get!602 (right!1396 (bag!897 list!641)) x!26823) e!32840)))

(declare-fun b!61408 () Bool)

(assert (=> b!61408 (= e!32840 (+ (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823)))))

(declare-fun b!61409 () Bool)

(assert (=> b!61409 (= e!32840 (ite (and (is-Elem!300 (right!1396 (bag!897 list!641))) (= (key!358 (right!1396 (bag!897 list!641))) x!26823)) (value!4893 (right!1396 (bag!897 list!641))) 0))))

(assert (= (and d!52109 c!13364) b!61408))

(assert (= (and d!52109 (not c!13364)) b!61409))

(declare-fun bs!37222 () Bool)

(declare-fun m!66906 () Bool)

(assert (= bs!37222 m!66906))

(assert (=> bs!37222 s!1895))

(assert (=> b!61408 m!66906))

(declare-fun bs!37223 () Bool)

(declare-fun m!66908 () Bool)

(assert (= bs!37223 m!66908))

(assert (=> bs!37223 s!1895))

(assert (=> b!61408 m!66908))

(assert (=> b!61404 d!52109))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(declare-fun d!52111 () Bool)

(assert (=> (and d!52109 d!52111 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52103 d!52111 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52105 d!52111 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52107 d!52111 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52111 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(declare-fun c!13365 () Bool)

(assert (=> d!52111 (= c!13365 (is-Sum!302 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(declare-fun e!32841 () Int)

(assert (=> d!52111 (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) e!32841)))

(declare-fun b!61410 () Bool)

(assert (=> b!61410 (= e!32841 (+ (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823)))))

(declare-fun b!61411 () Bool)

(assert (=> b!61411 (= e!32841 (ite (and (is-Elem!300 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= (key!358 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823)) (value!4893 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) 0))))

(assert (= (and d!52111 c!13365) b!61410))

(assert (= (and d!52111 (not c!13365)) b!61411))

(declare-fun bs!37224 () Bool)

(declare-fun m!66910 () Bool)

(assert (= bs!37224 m!66910))

(assert (=> bs!37224 s!1895))

(assert (=> b!61410 m!66910))

(declare-fun bs!37225 () Bool)

(declare-fun m!66912 () Bool)

(assert (= bs!37225 m!66912))

(assert (=> bs!37225 s!1895))

(assert (=> b!61410 m!66912))

(assert (=> b!61402 d!52111))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(declare-fun d!52113 () Bool)

(assert (=> (and d!52109 d!52113 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52103 d!52113 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52105 d!52113 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52107 d!52113 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52111 d!52113 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))

(assert (=> (and d!52113 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823))))

(declare-fun c!13366 () Bool)

(assert (=> d!52113 (= c!13366 (is-Sum!302 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(declare-fun e!32842 () Int)

(assert (=> d!52113 (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) e!32842)))

(declare-fun b!61412 () Bool)

(assert (=> b!61412 (= e!32842 (+ (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823)))))

(declare-fun b!61413 () Bool)

(assert (=> b!61413 (= e!32842 (ite (and (is-Elem!300 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (= (key!358 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823)) (value!4893 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) 0))))

(assert (= (and d!52113 c!13366) b!61412))

(assert (= (and d!52113 (not c!13366)) b!61413))

(declare-fun bs!37226 () Bool)

(declare-fun m!66914 () Bool)

(assert (= bs!37226 m!66914))

(assert (=> bs!37226 s!1895))

(assert (=> b!61412 m!66914))

(declare-fun bs!37227 () Bool)

(declare-fun m!66916 () Bool)

(assert (= bs!37227 m!66916))

(assert (=> bs!37227 s!1895))

(assert (=> b!61412 m!66916))

(assert (=> b!61402 d!52113))

(push 1)

(assert (not b!61412))

(assert (not b!61406))

(assert (not b!61397))

(assert (not b!61391))

(assert (not b!61395))

(assert (not b!61381))

(assert (not d!52101))

(assert (not b!61408))

(assert (not b!61385))

(assert (not b!61410))

(assert (not b!61383))

(assert (not b!61393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52115 () Bool)

(declare-fun lt!11343 () Int)

(assert (=> d!52115 (>= lt!11343 0)))

(declare-fun e!32843 () Int)

(assert (=> d!52115 (= lt!11343 e!32843)))

(declare-fun c!13367 () Bool)

(assert (=> d!52115 (= c!13367 (is-Nil!520 (t!47249 (t!47249 list!641))))))

(assert (=> d!52115 (= (size!522 (t!47249 (t!47249 list!641))) lt!11343)))

(declare-fun b!61414 () Bool)

(assert (=> b!61414 (= e!32843 0)))

(declare-fun b!61415 () Bool)

(assert (=> b!61415 (= e!32843 (+ 1 (size!522 (t!47249 (t!47249 (t!47249 list!641))))))))

(assert (= (and d!52115 c!13367) b!61414))

(assert (= (and d!52115 (not c!13367)) b!61415))

(declare-fun m!66918 () Bool)

(assert (=> b!61415 m!66918))

(assert (=> b!61397 d!52115))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(declare-fun d!52117 () Bool)

(assert (=> (and d!52109 d!52117 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52103 d!52117 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52117 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52105 d!52117 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52107 d!52117 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52111 d!52117 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52113 d!52117 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(declare-fun c!13368 () Bool)

(assert (=> d!52117 (= c!13368 (is-Sum!302 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))))

(declare-fun e!32844 () Int)

(assert (=> d!52117 (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) e!32844)))

(declare-fun b!61416 () Bool)

(assert (=> b!61416 (= e!32844 (+ (get!602 (left!1393 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823) (get!602 (right!1396 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)))))

(declare-fun b!61417 () Bool)

(assert (=> b!61417 (= e!32844 (ite (and (is-Elem!300 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= (key!358 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)) (value!4893 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) 0))))

(assert (= (and d!52117 c!13368) b!61416))

(assert (= (and d!52117 (not c!13368)) b!61417))

(declare-fun bs!37228 () Bool)

(declare-fun m!66920 () Bool)

(assert (= bs!37228 m!66920))

(assert (=> bs!37228 s!1895))

(assert (=> b!61416 m!66920))

(declare-fun bs!37229 () Bool)

(declare-fun m!66922 () Bool)

(assert (= bs!37229 m!66922))

(assert (=> bs!37229 s!1895))

(assert (=> b!61416 m!66922))

(assert (=> b!61410 d!52117))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(declare-fun d!52119 () Bool)

(assert (=> (and d!52109 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52103 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52117 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52105 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52107 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52119 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52111 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52113 d!52119 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(declare-fun c!13369 () Bool)

(assert (=> d!52119 (= c!13369 (is-Sum!302 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))))

(declare-fun e!32845 () Int)

(assert (=> d!52119 (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) e!32845)))

(declare-fun b!61418 () Bool)

(assert (=> b!61418 (= e!32845 (+ (get!602 (left!1393 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823) (get!602 (right!1396 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)))))

(declare-fun b!61419 () Bool)

(assert (=> b!61419 (= e!32845 (ite (and (is-Elem!300 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= (key!358 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)) (value!4893 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) 0))))

(assert (= (and d!52119 c!13369) b!61418))

(assert (= (and d!52119 (not c!13369)) b!61419))

(declare-fun bs!37230 () Bool)

(declare-fun m!66924 () Bool)

(assert (= bs!37230 m!66924))

(assert (=> bs!37230 s!1895))

(assert (=> b!61418 m!66924))

(declare-fun bs!37231 () Bool)

(declare-fun m!66926 () Bool)

(assert (= bs!37231 m!66926))

(assert (=> bs!37231 s!1895))

(assert (=> b!61418 m!66926))

(assert (=> b!61410 d!52119))

(declare-fun d!52121 () Bool)

(declare-fun lt!11344 () Int)

(assert (=> d!52121 (>= lt!11344 0)))

(declare-fun e!32846 () Int)

(assert (=> d!52121 (= lt!11344 e!32846)))

(declare-fun c!13370 () Bool)

(assert (=> d!52121 (= c!13370 (is-Nil!520 (t!47249 (_2!181 res!28285))))))

(assert (=> d!52121 (= (size!522 (t!47249 (_2!181 res!28285))) lt!11344)))

(declare-fun b!61420 () Bool)

(assert (=> b!61420 (= e!32846 0)))

(declare-fun b!61421 () Bool)

(assert (=> b!61421 (= e!32846 (+ 1 (size!522 (t!47249 (t!47249 (_2!181 res!28285))))))))

(assert (= (and d!52121 c!13370) b!61420))

(assert (= (and d!52121 (not c!13370)) b!61421))

(declare-fun m!66928 () Bool)

(assert (=> b!61421 m!66928))

(assert (=> b!61393 d!52121))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (left!1393 (bag!897 list!641))))))

(declare-fun d!52123 () Bool)

(assert (=> (and d!52109 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52103 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52117 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52105 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52107 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52123 (= (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52123 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52119 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52111 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52113 d!52123 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823))))

(declare-fun c!13371 () Bool)

(assert (=> d!52123 (= c!13371 (is-Sum!302 (left!1393 (left!1393 (bag!897 list!641)))))))

(declare-fun e!32847 () Int)

(assert (=> d!52123 (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) e!32847)))

(declare-fun b!61422 () Bool)

(assert (=> b!61422 (= e!32847 (+ (get!602 (left!1393 (left!1393 (left!1393 (bag!897 list!641)))) x!26823) (get!602 (right!1396 (left!1393 (left!1393 (bag!897 list!641)))) x!26823)))))

(declare-fun b!61423 () Bool)

(assert (=> b!61423 (= e!32847 (ite (and (is-Elem!300 (left!1393 (left!1393 (bag!897 list!641)))) (= (key!358 (left!1393 (left!1393 (bag!897 list!641)))) x!26823)) (value!4893 (left!1393 (left!1393 (bag!897 list!641)))) 0))))

(assert (= (and d!52123 c!13371) b!61422))

(assert (= (and d!52123 (not c!13371)) b!61423))

(declare-fun bs!37232 () Bool)

(declare-fun m!66930 () Bool)

(assert (= bs!37232 m!66930))

(assert (=> bs!37232 s!1895))

(assert (=> b!61422 m!66930))

(declare-fun bs!37233 () Bool)

(declare-fun m!66932 () Bool)

(assert (= bs!37233 m!66932))

(assert (=> bs!37233 s!1895))

(assert (=> b!61422 m!66932))

(assert (=> b!61406 d!52123))

(declare-fun d!52125 () Bool)

(assert (=> (and d!52125 (= (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52125 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52109 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52103 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52117 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52105 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52107 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52123 (= (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52123 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52119 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52111 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (bag!897 list!641))))))

(assert (=> (and d!52113 d!52125 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (left!1393 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823))))

(declare-fun c!13372 () Bool)

(assert (=> d!52125 (= c!13372 (is-Sum!302 (right!1396 (left!1393 (bag!897 list!641)))))))

(declare-fun e!32848 () Int)

(assert (=> d!52125 (= (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823) e!32848)))

(declare-fun b!61424 () Bool)

(assert (=> b!61424 (= e!32848 (+ (get!602 (left!1393 (right!1396 (left!1393 (bag!897 list!641)))) x!26823) (get!602 (right!1396 (right!1396 (left!1393 (bag!897 list!641)))) x!26823)))))

(declare-fun b!61425 () Bool)

(assert (=> b!61425 (= e!32848 (ite (and (is-Elem!300 (right!1396 (left!1393 (bag!897 list!641)))) (= (key!358 (right!1396 (left!1393 (bag!897 list!641)))) x!26823)) (value!4893 (right!1396 (left!1393 (bag!897 list!641)))) 0))))

(assert (= (and d!52125 c!13372) b!61424))

(assert (= (and d!52125 (not c!13372)) b!61425))

(declare-fun bs!37234 () Bool)

(declare-fun m!66934 () Bool)

(assert (= bs!37234 m!66934))

(assert (=> bs!37234 s!1895))

(assert (=> b!61424 m!66934))

(declare-fun bs!37235 () Bool)

(declare-fun m!66936 () Bool)

(assert (= bs!37235 m!66936))

(assert (=> bs!37235 s!1895))

(assert (=> b!61424 m!66936))

(assert (=> b!61406 d!52125))

(declare-fun d!52127 () Bool)

(assert (=> (and d!52127 (= (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52127 (= (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))))))

(assert (=> (and d!52127 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_2!181 res!28285)))) (= (h!747 (_2!181 res!28285)) (h!747 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))))))

(assert (=> d!52127 (= (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (Sum!302 (bag!897 (t!47249 (_2!181 res!28285))) (Elem!300 (h!747 (_2!181 res!28285)) 1)))))

(assert (=> b!61383 d!52127))

(assert (=> (and d!52089 (= (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 (_2!181 res!28285))))))

(declare-fun d!52129 () Bool)

(assert (=> (and d!52089 d!52129 (= (_2!181 res!28285) (t!47249 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52087 (= (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52087 d!52129 (= (_1!181 res!28285) (t!47249 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52129 (= (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52129 (= (t!47249 (_2!181 res!28285)) (t!47249 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52091 (= (bag!897 list!641) (bag!897 (t!47249 (_2!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 (t!47249 (_2!181 res!28285))))))

(assert (=> (and d!52091 d!52129 (= list!641 (t!47249 (_2!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 (t!47249 (_2!181 res!28285))))))

(declare-fun c!13373 () Bool)

(assert (=> d!52129 (= c!13373 (is-Nil!520 (t!47249 (_2!181 res!28285))))))

(declare-fun e!32849 () Bag!592)

(assert (=> d!52129 (= (bag!897 (t!47249 (_2!181 res!28285))) e!32849)))

(declare-fun b!61426 () Bool)

(assert (=> b!61426 (= e!32849 Leaf!394)))

(declare-fun b!61427 () Bool)

(assert (=> b!61427 (= e!32849 (add!306 (bag!897 (t!47249 (t!47249 (_2!181 res!28285)))) (h!747 (t!47249 (_2!181 res!28285)))))))

(assert (= (and d!52129 c!13373) b!61426))

(assert (= (and d!52129 (not c!13373)) b!61427))

(declare-fun m!66938 () Bool)

(assert (=> b!61427 m!66938))

(assert (=> b!61427 m!66938))

(declare-fun m!66940 () Bool)

(assert (=> b!61427 m!66940))

(assert (=> b!61383 d!52129))

(assert (=> (and d!52125 (= (right!1396 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(declare-fun d!52131 () Bool)

(assert (=> (and d!52125 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52109 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52103 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52117 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52131 (= (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52131 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52105 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52107 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52123 (= (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52123 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52119 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52111 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52113 d!52131 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(declare-fun c!13374 () Bool)

(assert (=> d!52131 (= c!13374 (is-Sum!302 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))))

(declare-fun e!32850 () Int)

(assert (=> d!52131 (= (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) e!32850)))

(declare-fun b!61428 () Bool)

(assert (=> b!61428 (= e!32850 (+ (get!602 (left!1393 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823) (get!602 (right!1396 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)))))

(declare-fun b!61429 () Bool)

(assert (=> b!61429 (= e!32850 (ite (and (is-Elem!300 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= (key!358 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)) (value!4893 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) 0))))

(assert (= (and d!52131 c!13374) b!61428))

(assert (= (and d!52131 (not c!13374)) b!61429))

(declare-fun bs!37236 () Bool)

(declare-fun m!66942 () Bool)

(assert (= bs!37236 m!66942))

(assert (=> bs!37236 s!1895))

(assert (=> b!61428 m!66942))

(declare-fun bs!37237 () Bool)

(declare-fun m!66944 () Bool)

(assert (= bs!37237 m!66944))

(assert (=> bs!37237 s!1895))

(assert (=> b!61428 m!66944))

(assert (=> b!61412 d!52131))

(assert (=> (and d!52125 (= (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(declare-fun d!52133 () Bool)

(assert (=> (and d!52125 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52109 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52133 (= (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52133 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52103 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52117 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52131 (= (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52131 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52105 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52107 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52123 (= (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52123 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52119 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52111 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))))))

(assert (=> (and d!52113 d!52133 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823))))

(declare-fun c!13375 () Bool)

(assert (=> d!52133 (= c!13375 (is-Sum!302 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))))))

(declare-fun e!32851 () Int)

(assert (=> d!52133 (= (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) e!32851)))

(declare-fun b!61430 () Bool)

(assert (=> b!61430 (= e!32851 (+ (get!602 (left!1393 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823) (get!602 (right!1396 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)))))

(declare-fun b!61431 () Bool)

(assert (=> b!61431 (= e!32851 (ite (and (is-Elem!300 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) (= (key!358 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) x!26823)) (value!4893 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))))) 0))))

(assert (= (and d!52133 c!13375) b!61430))

(assert (= (and d!52133 (not c!13375)) b!61431))

(declare-fun bs!37238 () Bool)

(declare-fun m!66946 () Bool)

(assert (= bs!37238 m!66946))

(assert (=> bs!37238 s!1895))

(assert (=> b!61430 m!66946))

(declare-fun bs!37239 () Bool)

(declare-fun m!66948 () Bool)

(assert (= bs!37239 m!66948))

(assert (=> bs!37239 s!1895))

(assert (=> b!61430 m!66948))

(assert (=> b!61412 d!52133))

(declare-fun d!52135 () Bool)

(declare-fun lt!11345 () Int)

(assert (=> d!52135 (>= lt!11345 0)))

(declare-fun e!32852 () Int)

(assert (=> d!52135 (= lt!11345 e!32852)))

(declare-fun c!13376 () Bool)

(assert (=> d!52135 (= c!13376 (is-Nil!520 (t!47249 (_1!181 res!28285))))))

(assert (=> d!52135 (= (size!522 (t!47249 (_1!181 res!28285))) lt!11345)))

(declare-fun b!61432 () Bool)

(assert (=> b!61432 (= e!32852 0)))

(declare-fun b!61433 () Bool)

(assert (=> b!61433 (= e!32852 (+ 1 (size!522 (t!47249 (t!47249 (_1!181 res!28285))))))))

(assert (= (and d!52135 c!13376) b!61432))

(assert (= (and d!52135 (not c!13376)) b!61433))

(declare-fun m!66950 () Bool)

(assert (=> b!61433 m!66950))

(assert (=> b!61391 d!52135))

(assert (=> b!61395 d!52099))

(assert (=> d!52101 d!52103))

(assert (=> d!52101 d!52105))

(declare-fun d!52137 () Bool)

(assert (=> (and d!52137 (= (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52137 (= (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))))

(assert (=> (and d!52137 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285)))) (= (h!747 (_1!181 res!28285)) (h!747 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))))

(assert (=> (and d!52127 (= (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52127 (= (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))))

(assert (=> (and d!52127 d!52137 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285)))) (= (h!747 (_2!181 res!28285)) (h!747 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))))))

(assert (=> d!52137 (= (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (Sum!302 (bag!897 (t!47249 (_1!181 res!28285))) (Elem!300 (h!747 (_1!181 res!28285)) 1)))))

(assert (=> b!61381 d!52137))

(assert (=> (and d!52089 (= (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 (_1!181 res!28285))))))

(declare-fun d!52139 () Bool)

(assert (=> (and d!52089 d!52139 (= (_2!181 res!28285) (t!47249 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52087 (= (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52087 d!52139 (= (_1!181 res!28285) (t!47249 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52139 (= (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52139 (= (t!47249 (_1!181 res!28285)) (t!47249 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52129 (= (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52129 d!52139 (= (t!47249 (_2!181 res!28285)) (t!47249 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52091 (= (bag!897 list!641) (bag!897 (t!47249 (_1!181 res!28285))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 (t!47249 (_1!181 res!28285))))))

(assert (=> (and d!52091 d!52139 (= list!641 (t!47249 (_1!181 res!28285)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 (t!47249 (_1!181 res!28285))))))

(declare-fun c!13377 () Bool)

(assert (=> d!52139 (= c!13377 (is-Nil!520 (t!47249 (_1!181 res!28285))))))

(declare-fun e!32853 () Bag!592)

(assert (=> d!52139 (= (bag!897 (t!47249 (_1!181 res!28285))) e!32853)))

(declare-fun b!61434 () Bool)

(assert (=> b!61434 (= e!32853 Leaf!394)))

(declare-fun b!61435 () Bool)

(assert (=> b!61435 (= e!32853 (add!306 (bag!897 (t!47249 (t!47249 (_1!181 res!28285)))) (h!747 (t!47249 (_1!181 res!28285)))))))

(assert (= (and d!52139 c!13377) b!61434))

(assert (= (and d!52139 (not c!13377)) b!61435))

(declare-fun m!66952 () Bool)

(assert (=> b!61435 m!66952))

(assert (=> b!61435 m!66952))

(declare-fun m!66954 () Bool)

(assert (=> b!61435 m!66954))

(assert (=> b!61381 d!52139))

(assert (=> (and d!52125 (= (right!1396 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641))))))

(declare-fun d!52141 () Bool)

(assert (=> (and d!52125 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52109 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52133 (= (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52133 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52103 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52117 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52131 (= (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52131 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52141 (= (left!1393 (right!1396 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52141 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52105 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52107 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52123 (= (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52123 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52119 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52111 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52113 d!52141 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (left!1393 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823))))

(declare-fun c!13378 () Bool)

(assert (=> d!52141 (= c!13378 (is-Sum!302 (left!1393 (right!1396 (bag!897 list!641)))))))

(declare-fun e!32854 () Int)

(assert (=> d!52141 (= (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823) e!32854)))

(declare-fun b!61436 () Bool)

(assert (=> b!61436 (= e!32854 (+ (get!602 (left!1393 (left!1393 (right!1396 (bag!897 list!641)))) x!26823) (get!602 (right!1396 (left!1393 (right!1396 (bag!897 list!641)))) x!26823)))))

(declare-fun b!61437 () Bool)

(assert (=> b!61437 (= e!32854 (ite (and (is-Elem!300 (left!1393 (right!1396 (bag!897 list!641)))) (= (key!358 (left!1393 (right!1396 (bag!897 list!641)))) x!26823)) (value!4893 (left!1393 (right!1396 (bag!897 list!641)))) 0))))

(assert (= (and d!52141 c!13378) b!61436))

(assert (= (and d!52141 (not c!13378)) b!61437))

(declare-fun bs!37240 () Bool)

(declare-fun m!66956 () Bool)

(assert (= bs!37240 m!66956))

(assert (=> bs!37240 s!1895))

(assert (=> b!61436 m!66956))

(declare-fun bs!37241 () Bool)

(declare-fun m!66958 () Bool)

(assert (= bs!37241 m!66958))

(assert (=> bs!37241 s!1895))

(assert (=> b!61436 m!66958))

(assert (=> b!61408 d!52141))

(assert (=> (and d!52125 (= (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))))

(declare-fun d!52143 () Bool)

(assert (=> (and d!52125 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52109 (= (right!1396 (bag!897 list!641)) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52109 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (bag!897 list!641)) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (bag!897 list!641)) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52143 (= (right!1396 (right!1396 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52143 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52133 (= (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52133 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52103 (= (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52103 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52117 (= (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52117 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52131 (= (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52131 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52141 (= (left!1393 (right!1396 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52141 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (right!1396 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (right!1396 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52105 (= (bag!897 list!641) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52105 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (bag!897 list!641) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52107 (= (left!1393 (bag!897 list!641)) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52107 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (bag!897 list!641)) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (bag!897 list!641)) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52123 (= (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52123 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (left!1393 (bag!897 list!641))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (left!1393 (bag!897 list!641))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52119 (= (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52119 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285))))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52111 (= (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52111 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (left!1393 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(assert (=> (and d!52113 (= (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (bag!897 list!641))))) (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (bag!897 list!641))))))

(assert (=> (and d!52113 d!52143 (dynLambda!936 |eqBag[BigInt]!7| (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) (right!1396 (right!1396 (bag!897 list!641)))) (= x!26823 x!26823)) (= (get!602 (right!1396 (union!305 (bag!897 (_1!181 res!28285)) (bag!897 (_2!181 res!28285)))) x!26823) (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823))))

(declare-fun c!13379 () Bool)

(assert (=> d!52143 (= c!13379 (is-Sum!302 (right!1396 (right!1396 (bag!897 list!641)))))))

(declare-fun e!32855 () Int)

(assert (=> d!52143 (= (get!602 (right!1396 (right!1396 (bag!897 list!641))) x!26823) e!32855)))

(declare-fun b!61438 () Bool)

(assert (=> b!61438 (= e!32855 (+ (get!602 (left!1393 (right!1396 (right!1396 (bag!897 list!641)))) x!26823) (get!602 (right!1396 (right!1396 (right!1396 (bag!897 list!641)))) x!26823)))))

(declare-fun b!61439 () Bool)

(assert (=> b!61439 (= e!32855 (ite (and (is-Elem!300 (right!1396 (right!1396 (bag!897 list!641)))) (= (key!358 (right!1396 (right!1396 (bag!897 list!641)))) x!26823)) (value!4893 (right!1396 (right!1396 (bag!897 list!641)))) 0))))

(assert (= (and d!52143 c!13379) b!61438))

(assert (= (and d!52143 (not c!13379)) b!61439))

(declare-fun bs!37242 () Bool)

(declare-fun m!66960 () Bool)

(assert (= bs!37242 m!66960))

(assert (=> bs!37242 s!1895))

(assert (=> b!61438 m!66960))

(declare-fun bs!37243 () Bool)

(declare-fun m!66962 () Bool)

(assert (= bs!37243 m!66962))

(assert (=> bs!37243 s!1895))

(assert (=> b!61438 m!66962))

(assert (=> b!61408 d!52143))

(assert (=> (and d!52137 (= (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52137 (= (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(declare-fun d!52145 () Bool)

(assert (=> (and d!52137 d!52145 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 list!641))) (= (h!747 (_1!181 res!28285)) (h!747 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_1!181 res!28285))) (h!747 (_1!181 res!28285))) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(assert (=> (and d!52145 (= (bag!897 (t!47249 list!641)) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 list!641)) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52145 (= (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(assert (=> (and d!52145 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 list!641)) (bag!897 (t!47249 list!641))) (= (h!747 list!641) (h!747 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(assert (=> (and d!52127 (= (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52127 (= (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(assert (=> (and d!52127 d!52145 (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 list!641))) (= (h!747 (_2!181 res!28285)) (h!747 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (add!306 (bag!897 (t!47249 (_2!181 res!28285))) (h!747 (_2!181 res!28285))) (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)))))

(assert (=> d!52145 (= (add!306 (bag!897 (t!47249 list!641)) (h!747 list!641)) (Sum!302 (bag!897 (t!47249 list!641)) (Elem!300 (h!747 list!641) 1)))))

(assert (=> b!61385 d!52145))

(assert (=> (and d!52089 (= (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 list!641)))))

(declare-fun d!52147 () Bool)

(assert (=> (and d!52089 d!52147 (= (_2!181 res!28285) (t!47249 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_2!181 res!28285)) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52147 (= (bag!897 (t!47249 list!641)) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 list!641)) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52147 (= (t!47249 list!641) (t!47249 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 list!641)) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52087 (= (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52087 d!52147 (= (_1!181 res!28285) (t!47249 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (_1!181 res!28285)) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52139 (= (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52139 d!52147 (= (t!47249 (_1!181 res!28285)) (t!47249 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_1!181 res!28285))) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52129 (= (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52129 d!52147 (= (t!47249 (_2!181 res!28285)) (t!47249 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 (t!47249 (_2!181 res!28285))) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52091 (= (bag!897 list!641) (bag!897 (t!47249 list!641)))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 (t!47249 list!641)))))

(assert (=> (and d!52091 d!52147 (= list!641 (t!47249 list!641))) (dynLambda!936 |eqBag[BigInt]!7| (bag!897 list!641) (bag!897 (t!47249 list!641)))))

(declare-fun c!13380 () Bool)

(assert (=> d!52147 (= c!13380 (is-Nil!520 (t!47249 list!641)))))

(declare-fun e!32856 () Bag!592)

(assert (=> d!52147 (= (bag!897 (t!47249 list!641)) e!32856)))

(declare-fun b!61440 () Bool)

(assert (=> b!61440 (= e!32856 Leaf!394)))

(declare-fun b!61441 () Bool)

(assert (=> b!61441 (= e!32856 (add!306 (bag!897 (t!47249 (t!47249 list!641))) (h!747 (t!47249 list!641))))))

(assert (= (and d!52147 c!13380) b!61440))

(assert (= (and d!52147 (not c!13380)) b!61441))

(declare-fun m!66964 () Bool)

(assert (=> b!61441 m!66964))

(assert (=> b!61441 m!66964))

(declare-fun m!66966 () Bool)

(assert (=> b!61441 m!66966))

(assert (=> b!61385 d!52147))

(push 1)

(assert (not b!61424))

(assert (not b!61441))

(assert (not b!61435))

(assert (not b!61415))

(assert (not b!61418))

(assert (not b!61430))

(assert (not b!61427))

(assert (not b!61438))

(assert (not b!61421))

(assert (not b!61416))

(assert (not b!61436))

(assert (not b!61422))

(assert (not b!61428))

(assert (not b!61433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

