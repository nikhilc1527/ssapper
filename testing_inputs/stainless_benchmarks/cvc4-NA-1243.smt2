; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8870 () Bool)

(assert start!8870)

(declare-fun b!61877 () Bool)

(declare-fun m!67546 () Bool)

(assert (=> b!61877 m!67546))

(declare-fun m!67548 () Bool)

(assert (=> b!61877 m!67548))

(assert (=> b!61877 m!67546))

(assert (=> b!61877 m!67548))

(declare-fun m!67550 () Bool)

(assert (=> b!61877 m!67550))

(declare-fun m!67552 () Bool)

(assert (=> b!61877 m!67552))

(declare-fun x!26901 () Int)

(declare-datatypes () ((List!559 (Cons!524 (h!752 Int) (t!47254 List!559)) (Nil!525))))

(declare-fun l2!357 () List!559)

(declare-fun res!28281 () List!559)

(declare-fun inst!455 () Bool)

(declare-fun l1!364 () List!559)

(declare-datatypes () ((Bag!595 (Sum!305 (left!1396 Bag!595) (right!1399 Bag!595)) (Elem!303 (key!361 Int) (value!4896 Int)) (Leaf!397))))

(declare-fun get!605 (Bag!595 Int) Int)

(declare-fun bag!906 (List!559) Bag!595)

(declare-fun union!308 (Bag!595 Bag!595) Bag!595)

(assert (=> b!61877 (= inst!455 (=> true (= (get!605 (bag!906 res!28281) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901))))))

(declare-fun m!67554 () Bool)

(assert (=> b!61877 m!67554))

(declare-fun m!67556 () Bool)

(assert (=> b!61877 m!67556))

(declare-fun e!33097 () Bool)

(assert (=> b!61877 (= e!33097 (not inst!455))))

(declare-fun b!61878 () Bool)

(declare-fun res!28795 () Bool)

(declare-fun e!33098 () Bool)

(assert (=> b!61878 (=> (not res!28795) (not e!33098))))

(declare-fun isSorted!3 (List!559) Bool)

(assert (=> b!61878 (= res!28795 (isSorted!3 l2!357))))

(declare-fun res!28794 () Bool)

(assert (=> start!8870 (=> (not res!28794) (not e!33098))))

(assert (=> start!8870 (= res!28794 (isSorted!3 l1!364))))

(assert (=> start!8870 e!33098))

(assert (=> start!8870 true))

(declare-fun b!61879 () Bool)

(assert (=> b!61879 (= e!33098 e!33097)))

(declare-fun res!28793 () Bool)

(assert (=> b!61879 (=> res!28793 e!33097)))

(assert (=> b!61879 (= res!28793 (not (isSorted!3 res!28281)))))

(declare-fun b!61880 () Bool)

(declare-fun res!28796 () Bool)

(assert (=> b!61880 (=> res!28796 e!33097)))

(declare-fun size!525 (List!559) Int)

(assert (=> b!61880 (= res!28796 (not (= (size!525 res!28281) (+ (size!525 l1!364) (size!525 l2!357)))))))

(declare-fun b!61881 () Bool)

(declare-fun res!28792 () Bool)

(assert (=> b!61881 (=> (not res!28792) (not e!33098))))

(declare-fun merge!0 (List!559 List!559) List!559)

(assert (=> b!61881 (= res!28792 (= res!28281 (Cons!524 (h!752 l2!357) (merge!0 l1!364 (t!47254 l2!357)))))))

(declare-fun b!61882 () Bool)

(declare-fun res!28791 () Bool)

(assert (=> b!61882 (=> (not res!28791) (not e!33098))))

(assert (=> b!61882 (= res!28791 (and (is-Cons!524 l1!364) (is-Cons!524 l2!357) (> (h!752 l1!364) (h!752 l2!357))))))

(assert (= (and start!8870 res!28794) b!61878))

(assert (= (and b!61878 res!28795) b!61882))

(assert (= (and b!61882 res!28791) b!61881))

(assert (= (and b!61881 res!28792) b!61879))

(assert (= (and b!61879 (not res!28793)) b!61880))

(assert (= (and b!61880 (not res!28796)) b!61877))

(declare-fun m!67558 () Bool)

(assert (=> b!61881 m!67558))

(declare-fun m!67560 () Bool)

(assert (=> b!61879 m!67560))

(declare-fun m!67562 () Bool)

(assert (=> start!8870 m!67562))

(declare-fun m!67564 () Bool)

(assert (=> b!61878 m!67564))

(declare-fun m!67566 () Bool)

(assert (=> b!61880 m!67566))

(declare-fun m!67568 () Bool)

(assert (=> b!61880 m!67568))

(declare-fun m!67570 () Bool)

(assert (=> b!61880 m!67570))

(push 1)

(assert (not b!61881))

(assert (not b!61879))

(assert (not start!8870))

(assert (not b!61878))

(assert (not b!61880))

(assert (not b!61877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52453 () Bool)

(declare-fun |eqBag[BigInt]!13| () Int)

(declare-fun dynLambda!939 (Int Bag!595 Bag!595) Bool)

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364))))

(assert (=> (and d!52453 (= l1!364 l1!364)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364))))

(declare-fun c!13511 () Bool)

(assert (=> d!52453 (= c!13511 (is-Nil!525 l1!364))))

(declare-fun e!33101 () Bag!595)

(assert (=> d!52453 (= (bag!906 l1!364) e!33101)))

(declare-fun b!61887 () Bool)

(assert (=> b!61887 (= e!33101 Leaf!397)))

(declare-fun b!61888 () Bool)

(declare-fun add!309 (Bag!595 Int) Bag!595)

(assert (=> b!61888 (= e!33101 (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)))))

(assert (= (and d!52453 c!13511) b!61887))

(assert (= (and d!52453 (not c!13511)) b!61888))

(declare-fun m!67572 () Bool)

(assert (=> b!61888 m!67572))

(assert (=> b!61888 m!67572))

(declare-fun m!67574 () Bool)

(assert (=> b!61888 m!67574))

(assert (=> b!61877 d!52453))

(declare-fun d!52455 () Bool)

(assert (=> (and d!52455 (= (bag!906 res!28281) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 res!28281))))

(assert (=> (and d!52455 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 res!28281)) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (bag!906 res!28281) x!26901))))

(declare-fun c!13514 () Bool)

(assert (=> d!52455 (= c!13514 (is-Sum!305 (bag!906 res!28281)))))

(declare-fun e!33104 () Int)

(assert (=> d!52455 (= (get!605 (bag!906 res!28281) x!26901) e!33104)))

(declare-fun b!61893 () Bool)

(assert (=> b!61893 (= e!33104 (+ (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901)))))

(declare-fun b!61894 () Bool)

(assert (=> b!61894 (= e!33104 (ite (and (is-Elem!303 (bag!906 res!28281)) (= (key!361 (bag!906 res!28281)) x!26901)) (value!4896 (bag!906 res!28281)) 0))))

(assert (= (and d!52455 c!13514) b!61893))

(assert (= (and d!52455 (not c!13514)) b!61894))

(declare-fun m!67576 () Bool)

(assert (=> b!61893 m!67576))

(declare-fun m!67578 () Bool)

(assert (=> b!61893 m!67578))

(assert (=> b!61877 d!52455))

(declare-fun d!52457 () Bool)

(assert (=> (and d!52457 (= (bag!906 l1!364) (bag!906 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364))))

(assert (=> (and d!52457 (= (bag!906 l2!357) (bag!906 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 l2!357))))

(assert (=> (and d!52457 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (=> (and d!52457 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (=> d!52457 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (Sum!305 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (=> b!61877 d!52457))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l2!357))))

(declare-fun d!52459 () Bool)

(assert (=> (and d!52453 d!52459 (= l1!364 l2!357)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l2!357))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 l2!357))))

(assert (=> (and d!52459 (= l2!357 l2!357)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 l2!357))))

(declare-fun c!13515 () Bool)

(assert (=> d!52459 (= c!13515 (is-Nil!525 l2!357))))

(declare-fun e!33105 () Bag!595)

(assert (=> d!52459 (= (bag!906 l2!357) e!33105)))

(declare-fun b!61895 () Bool)

(assert (=> b!61895 (= e!33105 Leaf!397)))

(declare-fun b!61896 () Bool)

(assert (=> b!61896 (= e!33105 (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))))

(assert (= (and d!52459 c!13515) b!61895))

(assert (= (and d!52459 (not c!13515)) b!61896))

(declare-fun m!67580 () Bool)

(assert (=> b!61896 m!67580))

(assert (=> b!61896 m!67580))

(declare-fun m!67582 () Bool)

(assert (=> b!61896 m!67582))

(assert (=> b!61877 d!52459))

(declare-fun d!52461 () Bool)

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (=> (and d!52461 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 l2!357))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (=> (and d!52455 d!52461 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (union!308 (bag!906 l1!364) (bag!906 l2!357))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901))))

(declare-fun c!13516 () Bool)

(assert (=> d!52461 (= c!13516 (is-Sum!305 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(declare-fun e!33106 () Int)

(assert (=> d!52461 (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) e!33106)))

(declare-fun b!61897 () Bool)

(assert (=> b!61897 (= e!33106 (+ (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901)))))

(declare-fun b!61898 () Bool)

(assert (=> b!61898 (= e!33106 (ite (and (is-Elem!303 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (= (key!361 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901)) (value!4896 (union!308 (bag!906 l1!364) (bag!906 l2!357))) 0))))

(assert (= (and d!52461 c!13516) b!61897))

(assert (= (and d!52461 (not c!13516)) b!61898))

(declare-fun m!67584 () Bool)

(assert (=> b!61897 m!67584))

(declare-fun m!67586 () Bool)

(assert (=> b!61897 m!67586))

(assert (=> b!61877 d!52461))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 res!28281))))

(declare-fun d!52463 () Bool)

(assert (=> (and d!52453 d!52463 (= l1!364 res!28281)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 res!28281))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 res!28281))))

(assert (=> (and d!52463 (= res!28281 res!28281)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 res!28281))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 res!28281))))

(assert (=> (and d!52459 d!52463 (= l2!357 res!28281)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 res!28281))))

(declare-fun c!13517 () Bool)

(assert (=> d!52463 (= c!13517 (is-Nil!525 res!28281))))

(declare-fun e!33107 () Bag!595)

(assert (=> d!52463 (= (bag!906 res!28281) e!33107)))

(declare-fun b!61899 () Bool)

(assert (=> b!61899 (= e!33107 Leaf!397)))

(declare-fun b!61900 () Bool)

(assert (=> b!61900 (= e!33107 (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(assert (= (and d!52463 c!13517) b!61899))

(assert (= (and d!52463 (not c!13517)) b!61900))

(declare-fun m!67588 () Bool)

(assert (=> b!61900 m!67588))

(assert (=> b!61900 m!67588))

(declare-fun m!67590 () Bool)

(assert (=> b!61900 m!67590))

(assert (=> b!61877 d!52463))

(declare-fun d!52465 () Bool)

(declare-fun res!28801 () Bool)

(declare-fun e!33112 () Bool)

(assert (=> d!52465 (=> res!28801 e!33112)))

(assert (=> d!52465 (= res!28801 (not (and (is-Cons!524 l1!364) (is-Cons!524 (t!47254 l1!364)))))))

(assert (=> d!52465 (= (isSorted!3 l1!364) e!33112)))

(declare-fun b!61905 () Bool)

(declare-fun e!33113 () Bool)

(assert (=> b!61905 (= e!33112 e!33113)))

(declare-fun res!28802 () Bool)

(assert (=> b!61905 (=> (not res!28802) (not e!33113))))

(assert (=> b!61905 (= res!28802 (<= (h!752 l1!364) (h!752 (t!47254 l1!364))))))

(declare-fun b!61906 () Bool)

(assert (=> b!61906 (= e!33113 (isSorted!3 (t!47254 l1!364)))))

(assert (= (and d!52465 (not res!28801)) b!61905))

(assert (= (and b!61905 res!28802) b!61906))

(declare-fun m!67592 () Bool)

(assert (=> b!61906 m!67592))

(assert (=> start!8870 d!52465))

(declare-fun b!61917 () Bool)

(assert (=> b!61917 m!67546))

(assert (=> b!61917 m!67580))

(assert (=> b!61917 m!67546))

(assert (=> b!61917 m!67580))

(declare-fun m!67594 () Bool)

(assert (=> b!61917 m!67594))

(declare-fun m!67596 () Bool)

(assert (=> b!61917 m!67596))

(declare-fun bs!37305 () Bool)

(declare-fun lt!11415 () List!559)

(assert (=> (and bs!37305 (= (bag!906 lt!11415) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 res!28281))))

(assert (=> (and bs!37305 (= (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (= bs!37305 (and b!61917 b!61877)))

(assert (=> (and bs!37305 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 res!28281)) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= true inst!455)))

(declare-fun e!33120 () Bool)

(assert (=> b!61917 (= e!33120 true)))

(declare-fun b!61918 () Bool)

(declare-fun lt!11414 () Bool)

(declare-fun lt!11416 () List!559)

(declare-fun e!33121 () List!559)

(assert (=> b!61918 (= e!33121 (ite lt!11414 (Cons!524 (h!752 l1!364) lt!11416) (Cons!524 (h!752 (t!47254 l2!357)) lt!11416)))))

(assert (=> b!61918 (= lt!11416 (merge!0 (ite lt!11414 (t!47254 l1!364) l1!364) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> b!61918 (= lt!11414 (<= (h!752 l1!364) (h!752 (t!47254 l2!357))))))

(declare-fun b!61919 () Bool)

(declare-fun ++!63 (List!559 List!559) List!559)

(assert (=> b!61919 (= e!33121 (++!63 l1!364 (t!47254 l2!357)))))

(declare-fun b!61920 () Bool)

(declare-fun e!33122 () Bool)

(assert (=> b!61920 (= e!33122 (isSorted!3 (t!47254 l2!357)))))

(declare-fun d!52467 () Bool)

(assert (=> d!52467 e!33120))

(declare-fun res!28813 () Bool)

(assert (=> d!52467 (=> (not res!28813) (not e!33120))))

(assert (=> d!52467 (= res!28813 (isSorted!3 lt!11415))))

(assert (=> d!52467 (= lt!11415 e!33121)))

(declare-fun c!13520 () Bool)

(assert (=> d!52467 (= c!13520 (and (is-Cons!524 l1!364) (is-Cons!524 (t!47254 l2!357))))))

(assert (=> d!52467 e!33122))

(declare-fun res!28815 () Bool)

(assert (=> d!52467 (=> (not res!28815) (not e!33122))))

(assert (=> d!52467 (= res!28815 (isSorted!3 l1!364))))

(assert (=> d!52467 (= (merge!0 l1!364 (t!47254 l2!357)) lt!11415)))

(declare-fun b!61921 () Bool)

(declare-fun res!28814 () Bool)

(assert (=> b!61921 (=> (not res!28814) (not e!33120))))

(assert (=> b!61921 (= res!28814 (= (size!525 lt!11415) (+ (size!525 l1!364) (size!525 (t!47254 l2!357)))))))

(assert (= (and d!52467 res!28815) b!61920))

(assert (= (and d!52467 c!13520) b!61918))

(assert (= (and d!52467 (not c!13520)) b!61919))

(assert (= (and d!52467 res!28813) b!61921))

(assert (= (and b!61921 res!28814) b!61917))

(declare-fun m!67598 () Bool)

(assert (=> b!61919 m!67598))

(declare-fun m!67600 () Bool)

(assert (=> b!61920 m!67600))

(declare-fun m!67602 () Bool)

(assert (=> b!61918 m!67602))

(declare-fun m!67604 () Bool)

(assert (=> d!52467 m!67604))

(assert (=> d!52467 m!67562))

(declare-fun m!67606 () Bool)

(assert (=> b!61921 m!67606))

(assert (=> b!61921 m!67568))

(declare-fun m!67608 () Bool)

(assert (=> b!61921 m!67608))

(assert (=> b!61881 d!52467))

(declare-fun d!52469 () Bool)

(declare-fun lt!11419 () Int)

(assert (=> d!52469 (>= lt!11419 0)))

(declare-fun e!33125 () Int)

(assert (=> d!52469 (= lt!11419 e!33125)))

(declare-fun c!13523 () Bool)

(assert (=> d!52469 (= c!13523 (is-Nil!525 res!28281))))

(assert (=> d!52469 (= (size!525 res!28281) lt!11419)))

(declare-fun b!61926 () Bool)

(assert (=> b!61926 (= e!33125 0)))

(declare-fun b!61927 () Bool)

(assert (=> b!61927 (= e!33125 (+ 1 (size!525 (t!47254 res!28281))))))

(assert (= (and d!52469 c!13523) b!61926))

(assert (= (and d!52469 (not c!13523)) b!61927))

(declare-fun m!67610 () Bool)

(assert (=> b!61927 m!67610))

(assert (=> b!61880 d!52469))

(declare-fun d!52471 () Bool)

(declare-fun lt!11420 () Int)

(assert (=> d!52471 (>= lt!11420 0)))

(declare-fun e!33126 () Int)

(assert (=> d!52471 (= lt!11420 e!33126)))

(declare-fun c!13524 () Bool)

(assert (=> d!52471 (= c!13524 (is-Nil!525 l1!364))))

(assert (=> d!52471 (= (size!525 l1!364) lt!11420)))

(declare-fun b!61928 () Bool)

(assert (=> b!61928 (= e!33126 0)))

(declare-fun b!61929 () Bool)

(assert (=> b!61929 (= e!33126 (+ 1 (size!525 (t!47254 l1!364))))))

(assert (= (and d!52471 c!13524) b!61928))

(assert (= (and d!52471 (not c!13524)) b!61929))

(declare-fun m!67612 () Bool)

(assert (=> b!61929 m!67612))

(assert (=> b!61880 d!52471))

(declare-fun d!52473 () Bool)

(declare-fun lt!11421 () Int)

(assert (=> d!52473 (>= lt!11421 0)))

(declare-fun e!33127 () Int)

(assert (=> d!52473 (= lt!11421 e!33127)))

(declare-fun c!13525 () Bool)

(assert (=> d!52473 (= c!13525 (is-Nil!525 l2!357))))

(assert (=> d!52473 (= (size!525 l2!357) lt!11421)))

(declare-fun b!61930 () Bool)

(assert (=> b!61930 (= e!33127 0)))

(declare-fun b!61931 () Bool)

(assert (=> b!61931 (= e!33127 (+ 1 (size!525 (t!47254 l2!357))))))

(assert (= (and d!52473 c!13525) b!61930))

(assert (= (and d!52473 (not c!13525)) b!61931))

(assert (=> b!61931 m!67608))

(assert (=> b!61880 d!52473))

(declare-fun d!52475 () Bool)

(declare-fun res!28816 () Bool)

(declare-fun e!33128 () Bool)

(assert (=> d!52475 (=> res!28816 e!33128)))

(assert (=> d!52475 (= res!28816 (not (and (is-Cons!524 l2!357) (is-Cons!524 (t!47254 l2!357)))))))

(assert (=> d!52475 (= (isSorted!3 l2!357) e!33128)))

(declare-fun b!61932 () Bool)

(declare-fun e!33129 () Bool)

(assert (=> b!61932 (= e!33128 e!33129)))

(declare-fun res!28817 () Bool)

(assert (=> b!61932 (=> (not res!28817) (not e!33129))))

(assert (=> b!61932 (= res!28817 (<= (h!752 l2!357) (h!752 (t!47254 l2!357))))))

(declare-fun b!61933 () Bool)

(assert (=> b!61933 (= e!33129 (isSorted!3 (t!47254 l2!357)))))

(assert (= (and d!52475 (not res!28816)) b!61932))

(assert (= (and b!61932 res!28817) b!61933))

(assert (=> b!61933 m!67600))

(assert (=> b!61878 d!52475))

(declare-fun d!52477 () Bool)

(declare-fun res!28818 () Bool)

(declare-fun e!33130 () Bool)

(assert (=> d!52477 (=> res!28818 e!33130)))

(assert (=> d!52477 (= res!28818 (not (and (is-Cons!524 res!28281) (is-Cons!524 (t!47254 res!28281)))))))

(assert (=> d!52477 (= (isSorted!3 res!28281) e!33130)))

(declare-fun b!61934 () Bool)

(declare-fun e!33131 () Bool)

(assert (=> b!61934 (= e!33130 e!33131)))

(declare-fun res!28819 () Bool)

(assert (=> b!61934 (=> (not res!28819) (not e!33131))))

(assert (=> b!61934 (= res!28819 (<= (h!752 res!28281) (h!752 (t!47254 res!28281))))))

(declare-fun b!61935 () Bool)

(assert (=> b!61935 (= e!33131 (isSorted!3 (t!47254 res!28281)))))

(assert (= (and d!52477 (not res!28818)) b!61934))

(assert (= (and b!61934 res!28819) b!61935))

(declare-fun m!67614 () Bool)

(assert (=> b!61935 m!67614))

(assert (=> b!61879 d!52477))

(push 1)

(assert (not b!61888))

(assert (not b!61933))

(assert (not d!52467))

(assert (not b!61906))

(assert (not b!61935))

(assert (not b!61917))

(assert (not b!61920))

(assert (not b!61921))

(assert (not b!61919))

(assert (not b!61896))

(assert (not b!61931))

(assert (not b!61918))

(assert (not b!61927))

(assert (not b!61897))

(assert (not b!61893))

(assert (not b!61900))

(assert (not b!61929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52479 () Bool)

(declare-fun res!28820 () Bool)

(declare-fun e!33132 () Bool)

(assert (=> d!52479 (=> res!28820 e!33132)))

(assert (=> d!52479 (= res!28820 (not (and (is-Cons!524 (t!47254 l2!357)) (is-Cons!524 (t!47254 (t!47254 l2!357))))))))

(assert (=> d!52479 (= (isSorted!3 (t!47254 l2!357)) e!33132)))

(declare-fun b!61936 () Bool)

(declare-fun e!33133 () Bool)

(assert (=> b!61936 (= e!33132 e!33133)))

(declare-fun res!28821 () Bool)

(assert (=> b!61936 (=> (not res!28821) (not e!33133))))

(assert (=> b!61936 (= res!28821 (<= (h!752 (t!47254 l2!357)) (h!752 (t!47254 (t!47254 l2!357)))))))

(declare-fun b!61937 () Bool)

(assert (=> b!61937 (= e!33133 (isSorted!3 (t!47254 (t!47254 l2!357))))))

(assert (= (and d!52479 (not res!28820)) b!61936))

(assert (= (and b!61936 res!28821) b!61937))

(declare-fun m!67616 () Bool)

(assert (=> b!61937 m!67616))

(assert (=> b!61920 d!52479))

(declare-fun b!61938 () Bool)

(declare-fun m!67618 () Bool)

(assert (=> b!61938 m!67618))

(declare-fun m!67620 () Bool)

(assert (=> b!61938 m!67620))

(assert (=> b!61938 m!67618))

(assert (=> b!61938 m!67620))

(declare-fun m!67622 () Bool)

(assert (=> b!61938 m!67622))

(declare-fun m!67624 () Bool)

(assert (=> b!61938 m!67624))

(declare-fun bs!37306 () Bool)

(declare-fun lt!11423 () List!559)

(assert (=> (and bs!37306 (= (bag!906 lt!11423) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11415))))

(assert (=> (and bs!37306 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(declare-fun bs!37307 () Bool)

(assert (=> (and bs!37307 (= (bag!906 lt!11423) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 res!28281))))

(assert (=> (and bs!37307 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(assert (= bs!37306 (and b!61938 b!61917)))

(assert (=> (and bs!37306 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (= true true)))

(assert (= bs!37307 (and b!61938 b!61877)))

(assert (=> (and bs!37307 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 res!28281)) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= true inst!455)))

(declare-fun e!33134 () Bool)

(assert (=> b!61938 (= e!33134 true)))

(declare-fun b!61939 () Bool)

(declare-fun e!33135 () List!559)

(declare-fun lt!11424 () List!559)

(declare-fun lt!11422 () Bool)

(assert (=> b!61939 (= e!33135 (ite lt!11422 (Cons!524 (h!752 (ite lt!11414 (t!47254 l1!364) l1!364)) lt!11424) (Cons!524 (h!752 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) lt!11424)))))

(assert (=> b!61939 (= lt!11424 (merge!0 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(assert (=> b!61939 (= lt!11422 (<= (h!752 (ite lt!11414 (t!47254 l1!364) l1!364)) (h!752 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(declare-fun b!61940 () Bool)

(assert (=> b!61940 (= e!33135 (++!63 (ite lt!11414 (t!47254 l1!364) l1!364) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(declare-fun b!61941 () Bool)

(declare-fun e!33136 () Bool)

(assert (=> b!61941 (= e!33136 (isSorted!3 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(declare-fun d!52481 () Bool)

(assert (=> d!52481 e!33134))

(declare-fun res!28822 () Bool)

(assert (=> d!52481 (=> (not res!28822) (not e!33134))))

(assert (=> d!52481 (= res!28822 (isSorted!3 lt!11423))))

(assert (=> d!52481 (= lt!11423 e!33135)))

(declare-fun c!13526 () Bool)

(assert (=> d!52481 (= c!13526 (and (is-Cons!524 (ite lt!11414 (t!47254 l1!364) l1!364)) (is-Cons!524 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> d!52481 e!33136))

(declare-fun res!28824 () Bool)

(assert (=> d!52481 (=> (not res!28824) (not e!33136))))

(assert (=> d!52481 (= res!28824 (isSorted!3 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> d!52481 (= (merge!0 (ite lt!11414 (t!47254 l1!364) l1!364) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) lt!11423)))

(declare-fun b!61942 () Bool)

(declare-fun res!28823 () Bool)

(assert (=> b!61942 (=> (not res!28823) (not e!33134))))

(assert (=> b!61942 (= res!28823 (= (size!525 lt!11423) (+ (size!525 (ite lt!11414 (t!47254 l1!364) l1!364)) (size!525 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(assert (= (and d!52481 res!28824) b!61941))

(assert (= (and d!52481 c!13526) b!61939))

(assert (= (and d!52481 (not c!13526)) b!61940))

(assert (= (and d!52481 res!28822) b!61942))

(assert (= (and b!61942 res!28823) b!61938))

(declare-fun m!67626 () Bool)

(assert (=> b!61940 m!67626))

(declare-fun m!67628 () Bool)

(assert (=> b!61941 m!67628))

(declare-fun m!67630 () Bool)

(assert (=> b!61939 m!67630))

(declare-fun m!67632 () Bool)

(assert (=> d!52481 m!67632))

(declare-fun m!67634 () Bool)

(assert (=> d!52481 m!67634))

(declare-fun m!67636 () Bool)

(assert (=> b!61942 m!67636))

(declare-fun m!67638 () Bool)

(assert (=> b!61942 m!67638))

(declare-fun m!67640 () Bool)

(assert (=> b!61942 m!67640))

(assert (=> b!61918 d!52481))

(declare-fun d!52483 () Bool)

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)))))

(assert (=> (and d!52483 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l1!364))) (= (h!752 l1!364) (h!752 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)))))

(assert (=> d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (Sum!305 (bag!906 (t!47254 l1!364)) (Elem!303 (h!752 l1!364) 1)))))

(assert (=> b!61888 d!52483))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 l1!364)))))

(declare-fun d!52485 () Bool)

(assert (=> (and d!52453 d!52485 (= l1!364 (t!47254 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52463 d!52485 (= res!28281 (t!47254 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52485 (= (t!47254 l1!364) (t!47254 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 l1!364)))))

(assert (=> (and d!52459 d!52485 (= l2!357 (t!47254 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 l1!364)))))

(declare-fun c!13527 () Bool)

(assert (=> d!52485 (= c!13527 (is-Nil!525 (t!47254 l1!364)))))

(declare-fun e!33137 () Bag!595)

(assert (=> d!52485 (= (bag!906 (t!47254 l1!364)) e!33137)))

(declare-fun b!61943 () Bool)

(assert (=> b!61943 (= e!33137 Leaf!397)))

(declare-fun b!61944 () Bool)

(assert (=> b!61944 (= e!33137 (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (= (and d!52485 c!13527) b!61943))

(assert (= (and d!52485 (not c!13527)) b!61944))

(declare-fun m!67642 () Bool)

(assert (=> b!61944 m!67642))

(assert (=> b!61944 m!67642))

(declare-fun m!67644 () Bool)

(assert (=> b!61944 m!67644))

(assert (=> b!61888 d!52485))

(assert (=> b!61933 d!52479))

(declare-fun d!52487 () Bool)

(declare-fun e!33142 () Bool)

(assert (=> d!52487 e!33142))

(declare-fun res!28831 () Bool)

(assert (=> d!52487 (=> (not res!28831) (not e!33142))))

(declare-fun lt!11427 () List!559)

(declare-fun content!103 (List!559) (Set Int))

(assert (=> d!52487 (= res!28831 (= (content!103 lt!11427) (union (content!103 l1!364) (content!103 (t!47254 l2!357)))))))

(declare-fun e!33143 () List!559)

(assert (=> d!52487 (= lt!11427 e!33143)))

(declare-fun c!13530 () Bool)

(assert (=> d!52487 (= c!13530 (is-Nil!525 l1!364))))

(assert (=> d!52487 (= (++!63 l1!364 (t!47254 l2!357)) lt!11427)))

(declare-fun b!61953 () Bool)

(assert (=> b!61953 (= e!33143 (t!47254 l2!357))))

(declare-fun b!61955 () Bool)

(declare-fun res!28830 () Bool)

(assert (=> b!61955 (=> (not res!28830) (not e!33142))))

(assert (=> b!61955 (= res!28830 (= (size!525 lt!11427) (+ (size!525 l1!364) (size!525 (t!47254 l2!357)))))))

(declare-fun b!61956 () Bool)

(assert (=> b!61956 (= e!33142 (or (not (= (t!47254 l2!357) Nil!525)) (= lt!11427 l1!364)))))

(declare-fun b!61954 () Bool)

(assert (=> b!61954 (= e!33143 (Cons!524 (h!752 l1!364) (++!63 (t!47254 l1!364) (t!47254 l2!357))))))

(assert (= (and d!52487 c!13530) b!61953))

(assert (= (and d!52487 (not c!13530)) b!61954))

(assert (= (and d!52487 res!28831) b!61955))

(assert (= (and b!61955 res!28830) b!61956))

(declare-fun m!67646 () Bool)

(assert (=> d!52487 m!67646))

(declare-fun m!67648 () Bool)

(assert (=> d!52487 m!67648))

(declare-fun m!67650 () Bool)

(assert (=> d!52487 m!67650))

(declare-fun m!67652 () Bool)

(assert (=> b!61955 m!67652))

(assert (=> b!61955 m!67568))

(assert (=> b!61955 m!67608))

(declare-fun m!67654 () Bool)

(assert (=> b!61954 m!67654))

(assert (=> b!61919 d!52487))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(declare-fun d!52489 () Bool)

(assert (=> (and d!52461 d!52489 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(assert (=> (and d!52455 d!52489 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(assert (=> (and d!52489 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(declare-fun c!13531 () Bool)

(assert (=> d!52489 (= c!13531 (is-Sum!305 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(declare-fun e!33144 () Int)

(assert (=> d!52489 (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) e!33144)))

(declare-fun b!61957 () Bool)

(assert (=> b!61957 (= e!33144 (+ (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901)))))

(declare-fun b!61958 () Bool)

(assert (=> b!61958 (= e!33144 (ite (and (is-Elem!303 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= (key!361 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901)) (value!4896 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) 0))))

(assert (= (and d!52489 c!13531) b!61957))

(assert (= (and d!52489 (not c!13531)) b!61958))

(declare-fun m!67656 () Bool)

(assert (=> b!61957 m!67656))

(declare-fun m!67658 () Bool)

(assert (=> b!61957 m!67658))

(assert (=> b!61897 d!52489))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(declare-fun d!52491 () Bool)

(assert (=> (and d!52461 d!52491 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(assert (=> (and d!52491 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(assert (=> (and d!52455 d!52491 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))

(assert (=> (and d!52489 d!52491 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901))))

(declare-fun c!13532 () Bool)

(assert (=> d!52491 (= c!13532 (is-Sum!305 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(declare-fun e!33145 () Int)

(assert (=> d!52491 (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) e!33145)))

(declare-fun b!61959 () Bool)

(assert (=> b!61959 (= e!33145 (+ (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901)))))

(declare-fun b!61960 () Bool)

(assert (=> b!61960 (= e!33145 (ite (and (is-Elem!303 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= (key!361 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901)) (value!4896 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) 0))))

(assert (= (and d!52491 c!13532) b!61959))

(assert (= (and d!52491 (not c!13532)) b!61960))

(declare-fun m!67660 () Bool)

(assert (=> b!61959 m!67660))

(declare-fun m!67662 () Bool)

(assert (=> b!61959 m!67662))

(assert (=> b!61897 d!52491))

(declare-fun d!52493 () Bool)

(assert (=> (and d!52493 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))))

(assert (=> (and d!52493 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357))) (= (h!752 l2!357) (h!752 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))))

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))))

(assert (=> (and d!52483 d!52493 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l2!357))) (= (h!752 l1!364) (h!752 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)))))

(assert (=> d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (Sum!305 (bag!906 (t!47254 l2!357)) (Elem!303 (h!752 l2!357) 1)))))

(assert (=> b!61896 d!52493))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 l2!357)))))

(declare-fun d!52495 () Bool)

(assert (=> (and d!52453 d!52495 (= l1!364 (t!47254 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52463 d!52495 (= res!28281 (t!47254 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52485 d!52495 (= (t!47254 l1!364) (t!47254 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52495 (= (t!47254 l2!357) (t!47254 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52459 d!52495 (= l2!357 (t!47254 l2!357))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 l2!357)))))

(declare-fun c!13533 () Bool)

(assert (=> d!52495 (= c!13533 (is-Nil!525 (t!47254 l2!357)))))

(declare-fun e!33146 () Bag!595)

(assert (=> d!52495 (= (bag!906 (t!47254 l2!357)) e!33146)))

(declare-fun b!61961 () Bool)

(assert (=> b!61961 (= e!33146 Leaf!397)))

(declare-fun b!61962 () Bool)

(assert (=> b!61962 (= e!33146 (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (= (and d!52495 c!13533) b!61961))

(assert (= (and d!52495 (not c!13533)) b!61962))

(declare-fun m!67664 () Bool)

(assert (=> b!61962 m!67664))

(assert (=> b!61962 m!67664))

(declare-fun m!67666 () Bool)

(assert (=> b!61962 m!67666))

(assert (=> b!61896 d!52495))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (bag!906 res!28281)))))

(declare-fun d!52497 () Bool)

(assert (=> (and d!52461 d!52497 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (left!1396 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (left!1396 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (bag!906 res!28281)))))

(assert (=> (and d!52497 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (bag!906 res!28281)))))

(assert (=> (and d!52491 d!52497 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (left!1396 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (bag!906 res!28281)))))

(assert (=> (and d!52455 d!52497 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (left!1396 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (bag!906 res!28281)))))

(assert (=> (and d!52489 d!52497 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (bag!906 res!28281)) x!26901))))

(declare-fun c!13534 () Bool)

(assert (=> d!52497 (= c!13534 (is-Sum!305 (left!1396 (bag!906 res!28281))))))

(declare-fun e!33147 () Int)

(assert (=> d!52497 (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) e!33147)))

(declare-fun b!61963 () Bool)

(assert (=> b!61963 (= e!33147 (+ (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901)))))

(declare-fun b!61964 () Bool)

(assert (=> b!61964 (= e!33147 (ite (and (is-Elem!303 (left!1396 (bag!906 res!28281))) (= (key!361 (left!1396 (bag!906 res!28281))) x!26901)) (value!4896 (left!1396 (bag!906 res!28281))) 0))))

(assert (= (and d!52497 c!13534) b!61963))

(assert (= (and d!52497 (not c!13534)) b!61964))

(declare-fun m!67668 () Bool)

(assert (=> b!61963 m!67668))

(declare-fun m!67670 () Bool)

(assert (=> b!61963 m!67670))

(assert (=> b!61893 d!52497))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (bag!906 res!28281)))))

(declare-fun d!52499 () Bool)

(assert (=> (and d!52461 d!52499 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (right!1399 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (bag!906 res!28281)))))

(assert (=> (and d!52497 d!52499 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (bag!906 res!28281)))))

(assert (=> (and d!52491 d!52499 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (right!1399 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (bag!906 res!28281)))))

(assert (=> (and d!52455 d!52499 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (right!1399 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (bag!906 res!28281)))))

(assert (=> (and d!52499 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (bag!906 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (bag!906 res!28281)))))

(assert (=> (and d!52489 d!52499 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (bag!906 res!28281))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (bag!906 res!28281)) x!26901))))

(declare-fun c!13535 () Bool)

(assert (=> d!52499 (= c!13535 (is-Sum!305 (right!1399 (bag!906 res!28281))))))

(declare-fun e!33148 () Int)

(assert (=> d!52499 (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) e!33148)))

(declare-fun b!61965 () Bool)

(assert (=> b!61965 (= e!33148 (+ (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901)))))

(declare-fun b!61966 () Bool)

(assert (=> b!61966 (= e!33148 (ite (and (is-Elem!303 (right!1399 (bag!906 res!28281))) (= (key!361 (right!1399 (bag!906 res!28281))) x!26901)) (value!4896 (right!1399 (bag!906 res!28281))) 0))))

(assert (= (and d!52499 c!13535) b!61965))

(assert (= (and d!52499 (not c!13535)) b!61966))

(declare-fun m!67672 () Bool)

(assert (=> b!61965 m!67672))

(declare-fun m!67674 () Bool)

(assert (=> b!61965 m!67674))

(assert (=> b!61893 d!52499))

(assert (=> (and d!52493 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(declare-fun d!52501 () Bool)

(assert (=> (and d!52493 d!52501 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 res!28281))) (= (h!752 l2!357) (h!752 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(assert (=> (and d!52501 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52501 (= (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(assert (=> (and d!52501 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 res!28281))) (= (h!752 res!28281) (h!752 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(assert (=> (and d!52483 d!52501 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 res!28281))) (= (h!752 l1!364) (h!752 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)))))

(assert (=> d!52501 (= (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (Sum!305 (bag!906 (t!47254 res!28281)) (Elem!303 (h!752 res!28281) 1)))))

(assert (=> b!61900 d!52501))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 res!28281)))))

(declare-fun d!52503 () Bool)

(assert (=> (and d!52453 d!52503 (= l1!364 (t!47254 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52503 (= (t!47254 res!28281) (t!47254 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52463 d!52503 (= res!28281 (t!47254 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52485 d!52503 (= (t!47254 l1!364) (t!47254 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52495 d!52503 (= (t!47254 l2!357) (t!47254 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 res!28281)))))

(assert (=> (and d!52459 d!52503 (= l2!357 (t!47254 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 res!28281)))))

(declare-fun c!13536 () Bool)

(assert (=> d!52503 (= c!13536 (is-Nil!525 (t!47254 res!28281)))))

(declare-fun e!33149 () Bag!595)

(assert (=> d!52503 (= (bag!906 (t!47254 res!28281)) e!33149)))

(declare-fun b!61967 () Bool)

(assert (=> b!61967 (= e!33149 Leaf!397)))

(declare-fun b!61968 () Bool)

(assert (=> b!61968 (= e!33149 (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (= (and d!52503 c!13536) b!61967))

(assert (= (and d!52503 (not c!13536)) b!61968))

(declare-fun m!67676 () Bool)

(assert (=> b!61968 m!67676))

(assert (=> b!61968 m!67676))

(declare-fun m!67678 () Bool)

(assert (=> b!61968 m!67678))

(assert (=> b!61900 d!52503))

(declare-fun d!52505 () Bool)

(declare-fun lt!11428 () Int)

(assert (=> d!52505 (>= lt!11428 0)))

(declare-fun e!33150 () Int)

(assert (=> d!52505 (= lt!11428 e!33150)))

(declare-fun c!13537 () Bool)

(assert (=> d!52505 (= c!13537 (is-Nil!525 (t!47254 l2!357)))))

(assert (=> d!52505 (= (size!525 (t!47254 l2!357)) lt!11428)))

(declare-fun b!61969 () Bool)

(assert (=> b!61969 (= e!33150 0)))

(declare-fun b!61970 () Bool)

(assert (=> b!61970 (= e!33150 (+ 1 (size!525 (t!47254 (t!47254 l2!357)))))))

(assert (= (and d!52505 c!13537) b!61969))

(assert (= (and d!52505 (not c!13537)) b!61970))

(declare-fun m!67680 () Bool)

(assert (=> b!61970 m!67680))

(assert (=> b!61931 d!52505))

(declare-fun d!52507 () Bool)

(declare-fun lt!11429 () Int)

(assert (=> d!52507 (>= lt!11429 0)))

(declare-fun e!33151 () Int)

(assert (=> d!52507 (= lt!11429 e!33151)))

(declare-fun c!13538 () Bool)

(assert (=> d!52507 (= c!13538 (is-Nil!525 lt!11415))))

(assert (=> d!52507 (= (size!525 lt!11415) lt!11429)))

(declare-fun b!61971 () Bool)

(assert (=> b!61971 (= e!33151 0)))

(declare-fun b!61972 () Bool)

(assert (=> b!61972 (= e!33151 (+ 1 (size!525 (t!47254 lt!11415))))))

(assert (= (and d!52507 c!13538) b!61971))

(assert (= (and d!52507 (not c!13538)) b!61972))

(declare-fun m!67682 () Bool)

(assert (=> b!61972 m!67682))

(assert (=> b!61921 d!52507))

(assert (=> b!61921 d!52471))

(assert (=> b!61921 d!52505))

(declare-fun d!52509 () Bool)

(declare-fun res!28832 () Bool)

(declare-fun e!33152 () Bool)

(assert (=> d!52509 (=> res!28832 e!33152)))

(assert (=> d!52509 (= res!28832 (not (and (is-Cons!524 lt!11415) (is-Cons!524 (t!47254 lt!11415)))))))

(assert (=> d!52509 (= (isSorted!3 lt!11415) e!33152)))

(declare-fun b!61973 () Bool)

(declare-fun e!33153 () Bool)

(assert (=> b!61973 (= e!33152 e!33153)))

(declare-fun res!28833 () Bool)

(assert (=> b!61973 (=> (not res!28833) (not e!33153))))

(assert (=> b!61973 (= res!28833 (<= (h!752 lt!11415) (h!752 (t!47254 lt!11415))))))

(declare-fun b!61974 () Bool)

(assert (=> b!61974 (= e!33153 (isSorted!3 (t!47254 lt!11415)))))

(assert (= (and d!52509 (not res!28832)) b!61973))

(assert (= (and b!61973 res!28833) b!61974))

(declare-fun m!67684 () Bool)

(assert (=> b!61974 m!67684))

(assert (=> d!52467 d!52509))

(assert (=> d!52467 d!52465))

(declare-fun d!52511 () Bool)

(declare-fun lt!11430 () Int)

(assert (=> d!52511 (>= lt!11430 0)))

(declare-fun e!33154 () Int)

(assert (=> d!52511 (= lt!11430 e!33154)))

(declare-fun c!13539 () Bool)

(assert (=> d!52511 (= c!13539 (is-Nil!525 (t!47254 l1!364)))))

(assert (=> d!52511 (= (size!525 (t!47254 l1!364)) lt!11430)))

(declare-fun b!61975 () Bool)

(assert (=> b!61975 (= e!33154 0)))

(declare-fun b!61976 () Bool)

(assert (=> b!61976 (= e!33154 (+ 1 (size!525 (t!47254 (t!47254 l1!364)))))))

(assert (= (and d!52511 c!13539) b!61975))

(assert (= (and d!52511 (not c!13539)) b!61976))

(declare-fun m!67686 () Bool)

(assert (=> b!61976 m!67686))

(assert (=> b!61929 d!52511))

(declare-fun d!52513 () Bool)

(assert (=> (and d!52513 (= (bag!906 l1!364) (bag!906 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364))))

(assert (=> (and d!52513 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52513 (= (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52513 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52457 (= (bag!906 l1!364) (bag!906 l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364))))

(assert (=> (and d!52457 (= (bag!906 l2!357) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 l2!357)))))

(assert (=> (and d!52457 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52457 d!52513 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 l1!364)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> d!52513 (= (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (Sum!305 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> b!61917 d!52513))

(assert (=> b!61917 d!52453))

(assert (=> b!61917 d!52495))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 lt!11415))))

(declare-fun d!52515 () Bool)

(assert (=> (and d!52453 d!52515 (= l1!364 lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 lt!11415))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 lt!11415))))

(assert (=> (and d!52515 (= lt!11415 lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 lt!11415))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 lt!11415))))

(assert (=> (and d!52503 d!52515 (= (t!47254 res!28281) lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 lt!11415))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11415))))

(assert (=> (and d!52463 d!52515 (= res!28281 lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11415))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 lt!11415))))

(assert (=> (and d!52485 d!52515 (= (t!47254 l1!364) lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 lt!11415))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 lt!11415))))

(assert (=> (and d!52495 d!52515 (= (t!47254 l2!357) lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 lt!11415))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 lt!11415))))

(assert (=> (and d!52459 d!52515 (= l2!357 lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 lt!11415))))

(declare-fun c!13540 () Bool)

(assert (=> d!52515 (= c!13540 (is-Nil!525 lt!11415))))

(declare-fun e!33155 () Bag!595)

(assert (=> d!52515 (= (bag!906 lt!11415) e!33155)))

(declare-fun b!61977 () Bool)

(assert (=> b!61977 (= e!33155 Leaf!397)))

(declare-fun b!61978 () Bool)

(assert (=> b!61978 (= e!33155 (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (= (and d!52515 c!13540) b!61977))

(assert (= (and d!52515 (not c!13540)) b!61978))

(declare-fun m!67688 () Bool)

(assert (=> b!61978 m!67688))

(assert (=> b!61978 m!67688))

(declare-fun m!67690 () Bool)

(assert (=> b!61978 m!67690))

(assert (=> b!61917 d!52515))

(declare-fun d!52517 () Bool)

(declare-fun res!28834 () Bool)

(declare-fun e!33156 () Bool)

(assert (=> d!52517 (=> res!28834 e!33156)))

(assert (=> d!52517 (= res!28834 (not (and (is-Cons!524 (t!47254 res!28281)) (is-Cons!524 (t!47254 (t!47254 res!28281))))))))

(assert (=> d!52517 (= (isSorted!3 (t!47254 res!28281)) e!33156)))

(declare-fun b!61979 () Bool)

(declare-fun e!33157 () Bool)

(assert (=> b!61979 (= e!33156 e!33157)))

(declare-fun res!28835 () Bool)

(assert (=> b!61979 (=> (not res!28835) (not e!33157))))

(assert (=> b!61979 (= res!28835 (<= (h!752 (t!47254 res!28281)) (h!752 (t!47254 (t!47254 res!28281)))))))

(declare-fun b!61980 () Bool)

(assert (=> b!61980 (= e!33157 (isSorted!3 (t!47254 (t!47254 res!28281))))))

(assert (= (and d!52517 (not res!28834)) b!61979))

(assert (= (and b!61979 res!28835) b!61980))

(declare-fun m!67692 () Bool)

(assert (=> b!61980 m!67692))

(assert (=> b!61935 d!52517))

(declare-fun d!52519 () Bool)

(declare-fun lt!11431 () Int)

(assert (=> d!52519 (>= lt!11431 0)))

(declare-fun e!33158 () Int)

(assert (=> d!52519 (= lt!11431 e!33158)))

(declare-fun c!13541 () Bool)

(assert (=> d!52519 (= c!13541 (is-Nil!525 (t!47254 res!28281)))))

(assert (=> d!52519 (= (size!525 (t!47254 res!28281)) lt!11431)))

(declare-fun b!61981 () Bool)

(assert (=> b!61981 (= e!33158 0)))

(declare-fun b!61982 () Bool)

(assert (=> b!61982 (= e!33158 (+ 1 (size!525 (t!47254 (t!47254 res!28281)))))))

(assert (= (and d!52519 c!13541) b!61981))

(assert (= (and d!52519 (not c!13541)) b!61982))

(declare-fun m!67694 () Bool)

(assert (=> b!61982 m!67694))

(assert (=> b!61927 d!52519))

(declare-fun d!52521 () Bool)

(declare-fun res!28836 () Bool)

(declare-fun e!33159 () Bool)

(assert (=> d!52521 (=> res!28836 e!33159)))

(assert (=> d!52521 (= res!28836 (not (and (is-Cons!524 (t!47254 l1!364)) (is-Cons!524 (t!47254 (t!47254 l1!364))))))))

(assert (=> d!52521 (= (isSorted!3 (t!47254 l1!364)) e!33159)))

(declare-fun b!61983 () Bool)

(declare-fun e!33160 () Bool)

(assert (=> b!61983 (= e!33159 e!33160)))

(declare-fun res!28837 () Bool)

(assert (=> b!61983 (=> (not res!28837) (not e!33160))))

(assert (=> b!61983 (= res!28837 (<= (h!752 (t!47254 l1!364)) (h!752 (t!47254 (t!47254 l1!364)))))))

(declare-fun b!61984 () Bool)

(assert (=> b!61984 (= e!33160 (isSorted!3 (t!47254 (t!47254 l1!364))))))

(assert (= (and d!52521 (not res!28836)) b!61983))

(assert (= (and b!61983 res!28837) b!61984))

(declare-fun m!67696 () Bool)

(assert (=> b!61984 m!67696))

(assert (=> b!61906 d!52521))

(declare-fun s!1905 () Bool)

(declare-fun bs!37308 () Bool)

(assert (= bs!37308 (and d!52467 b!61921 b!61917 s!1905)))

(assert (=> bs!37308 (=> true (= (get!605 (bag!906 lt!11415) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901)))))

(declare-fun m!67698 () Bool)

(assert (=> m!67578 m!67698))

(declare-fun m!67700 () Bool)

(assert (=> m!67578 m!67700))

(assert (=> m!67578 s!1905))

(assert (=> m!67554 s!1905))

(assert (=> m!67576 s!1905))

(assert (=> m!67556 s!1905))

(assert (=> m!67584 s!1905))

(assert (=> m!67586 s!1905))

(push 1)

(assert (not b!61939))

(assert (not b!61980))

(assert (not b!61972))

(assert (not b!61955))

(assert (not bs!37308))

(assert (not b!61942))

(assert (not b!61959))

(assert (not d!52481))

(assert (not b!61957))

(assert (not b!61976))

(assert (not b!61965))

(assert (not b!61968))

(assert (not b!61963))

(assert (not b!61982))

(assert (not b!61937))

(assert (not b!61940))

(assert (not b!61978))

(assert (not b!61962))

(assert (not b!61944))

(assert (not b!61970))

(assert (not b!61974))

(assert (not d!52487))

(assert (not b!61984))

(assert (not b!61941))

(assert (not b!61938))

(assert (not b!61954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> m!67700 s!1905))

(assert (=> m!67698 s!1905))

(declare-fun s!1907 () Bool)

(declare-fun bs!37309 () Bool)

(assert (= bs!37309 (and d!52481 b!61942 b!61938 s!1907)))

(assert (=> bs!37309 (=> true (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901)))))

(declare-fun m!67702 () Bool)

(assert (=> m!67700 m!67702))

(declare-fun m!67704 () Bool)

(assert (=> m!67700 m!67704))

(assert (=> m!67700 s!1907))

(assert (=> m!67698 s!1907))

(push 1)

(assert (not b!61939))

(assert (not b!61980))

(assert (not b!61972))

(assert (not b!61955))

(assert (not bs!37308))

(assert (not b!61942))

(assert (not b!61959))

(assert (not d!52481))

(assert (not b!61957))

(assert (not b!61976))

(assert (not b!61965))

(assert (not b!61968))

(assert (not b!61963))

(assert (not b!61982))

(assert (not b!61937))

(assert (not b!61940))

(assert (not b!61978))

(assert (not b!61962))

(assert (not b!61944))

(assert (not b!61970))

(assert (not b!61974))

(assert (not d!52487))

(assert (not b!61984))

(assert (not b!61941))

(assert (not bs!37309))

(assert (not b!61938))

(assert (not b!61954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!61985 () Bool)

(declare-fun m!67706 () Bool)

(assert (=> b!61985 m!67706))

(declare-fun m!67708 () Bool)

(assert (=> b!61985 m!67708))

(assert (=> b!61985 m!67706))

(assert (=> b!61985 m!67708))

(declare-fun m!67710 () Bool)

(assert (=> b!61985 m!67710))

(declare-fun m!67712 () Bool)

(assert (=> b!61985 m!67712))

(declare-fun bs!37310 () Bool)

(declare-fun lt!11433 () List!559)

(assert (=> (and bs!37310 (= (bag!906 lt!11433) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11433) (bag!906 lt!11415))))

(assert (=> (and bs!37310 (= (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(declare-fun bs!37311 () Bool)

(assert (=> (and bs!37311 (= (bag!906 lt!11433) (bag!906 res!28281))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11433) (bag!906 res!28281))))

(assert (=> (and bs!37311 (= (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))))

(declare-fun bs!37312 () Bool)

(assert (=> (and bs!37312 (= (bag!906 lt!11433) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11433) (bag!906 lt!11423))))

(assert (=> (and bs!37312 (= (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (= bs!37310 (and b!61985 b!61917)))

(assert (=> (and bs!37310 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11433) (bag!906 lt!11415)) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (= true true)))

(assert (= bs!37311 (and b!61985 b!61877)))

(assert (=> (and bs!37311 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11433) (bag!906 res!28281)) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (= true inst!455)))

(assert (= bs!37312 (and b!61985 b!61938)))

(assert (=> (and bs!37312 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11433) (bag!906 lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (bag!906 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (= true true)))

(declare-fun e!33161 () Bool)

(assert (=> b!61985 (= e!33161 true)))

(declare-fun lt!11432 () Bool)

(declare-fun lt!11434 () List!559)

(declare-fun b!61986 () Bool)

(declare-fun e!33162 () List!559)

(assert (=> b!61986 (= e!33162 (ite lt!11432 (Cons!524 (h!752 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) lt!11434) (Cons!524 (h!752 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) lt!11434)))))

(assert (=> b!61986 (= lt!11434 (merge!0 (ite lt!11432 (t!47254 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (ite lt!11432 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (t!47254 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))))

(assert (=> b!61986 (= lt!11432 (<= (h!752 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (h!752 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))))

(declare-fun b!61987 () Bool)

(assert (=> b!61987 (= e!33162 (++!63 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(declare-fun b!61988 () Bool)

(declare-fun e!33163 () Bool)

(assert (=> b!61988 (= e!33163 (isSorted!3 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(declare-fun d!52523 () Bool)

(assert (=> d!52523 e!33161))

(declare-fun res!28838 () Bool)

(assert (=> d!52523 (=> (not res!28838) (not e!33161))))

(assert (=> d!52523 (= res!28838 (isSorted!3 lt!11433))))

(assert (=> d!52523 (= lt!11433 e!33162)))

(declare-fun c!13542 () Bool)

(assert (=> d!52523 (= c!13542 (and (is-Cons!524 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (is-Cons!524 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))))

(assert (=> d!52523 e!33163))

(declare-fun res!28840 () Bool)

(assert (=> d!52523 (=> (not res!28840) (not e!33163))))

(assert (=> d!52523 (= res!28840 (isSorted!3 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))))))

(assert (=> d!52523 (= (merge!0 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) lt!11433)))

(declare-fun b!61989 () Bool)

(declare-fun res!28839 () Bool)

(assert (=> b!61989 (=> (not res!28839) (not e!33161))))

(assert (=> b!61989 (= res!28839 (= (size!525 lt!11433) (+ (size!525 (ite lt!11422 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l1!364) l1!364))) (size!525 (ite lt!11422 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))))

(assert (= (and d!52523 res!28840) b!61988))

(assert (= (and d!52523 c!13542) b!61986))

(assert (= (and d!52523 (not c!13542)) b!61987))

(assert (= (and d!52523 res!28838) b!61989))

(assert (= (and b!61989 res!28839) b!61985))

(declare-fun m!67714 () Bool)

(assert (=> b!61987 m!67714))

(declare-fun m!67716 () Bool)

(assert (=> b!61988 m!67716))

(declare-fun m!67718 () Bool)

(assert (=> b!61986 m!67718))

(declare-fun m!67720 () Bool)

(assert (=> d!52523 m!67720))

(declare-fun m!67722 () Bool)

(assert (=> d!52523 m!67722))

(declare-fun m!67724 () Bool)

(assert (=> b!61989 m!67724))

(declare-fun m!67726 () Bool)

(assert (=> b!61989 m!67726))

(declare-fun m!67728 () Bool)

(assert (=> b!61989 m!67728))

(assert (=> b!61939 d!52523))

(declare-fun d!52525 () Bool)

(assert (=> (and d!52525 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52525 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52525 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52525 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52513 (= (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52513 (= (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52513 (= (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52513 d!52525 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52457 (= (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52457 (= (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52457 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52457 d!52525 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> d!52525 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (Sum!305 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> b!61938 d!52525))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(declare-fun d!52527 () Bool)

(assert (=> (and d!52453 d!52527 (= l1!364 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52527 (= (ite lt!11414 (t!47254 l1!364) l1!364) (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52515 d!52527 (= lt!11415 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52503 d!52527 (= (t!47254 res!28281) (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52463 d!52527 (= res!28281 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52485 d!52527 (= (t!47254 l1!364) (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52495 d!52527 (= (t!47254 l2!357) (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> (and d!52459 d!52527 (= l2!357 (ite lt!11414 (t!47254 l1!364) l1!364))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(declare-fun c!13543 () Bool)

(assert (=> d!52527 (= c!13543 (is-Nil!525 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(declare-fun e!33164 () Bag!595)

(assert (=> d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) e!33164)))

(declare-fun b!61990 () Bool)

(assert (=> b!61990 (= e!33164 Leaf!397)))

(declare-fun b!61991 () Bool)

(assert (=> b!61991 (= e!33164 (add!309 (bag!906 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364))) (h!752 (ite lt!11414 (t!47254 l1!364) l1!364))))))

(assert (= (and d!52527 c!13543) b!61990))

(assert (= (and d!52527 (not c!13543)) b!61991))

(declare-fun m!67730 () Bool)

(assert (=> b!61991 m!67730))

(assert (=> b!61991 m!67730))

(declare-fun m!67732 () Bool)

(assert (=> b!61991 m!67732))

(assert (=> b!61938 d!52527))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(declare-fun d!52529 () Bool)

(assert (=> (and d!52453 d!52529 (= l1!364 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52527 d!52529 (= (ite lt!11414 (t!47254 l1!364) l1!364) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52515 d!52529 (= lt!11415 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52503 d!52529 (= (t!47254 res!28281) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52463 d!52529 (= res!28281 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52485 d!52529 (= (t!47254 l1!364) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52495 d!52529 (= (t!47254 l2!357) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52529 (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> (and d!52459 d!52529 (= l2!357 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(declare-fun c!13544 () Bool)

(assert (=> d!52529 (= c!13544 (is-Nil!525 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(declare-fun e!33165 () Bag!595)

(assert (=> d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) e!33165)))

(declare-fun b!61992 () Bool)

(assert (=> b!61992 (= e!33165 Leaf!397)))

(declare-fun b!61993 () Bool)

(assert (=> b!61993 (= e!33165 (add!309 (bag!906 (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (h!752 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (= (and d!52529 c!13544) b!61992))

(assert (= (and d!52529 (not c!13544)) b!61993))

(declare-fun m!67734 () Bool)

(assert (=> b!61993 m!67734))

(assert (=> b!61993 m!67734))

(declare-fun m!67736 () Bool)

(assert (=> b!61993 m!67736))

(assert (=> b!61938 d!52529))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 lt!11423))))

(declare-fun d!52531 () Bool)

(assert (=> (and d!52453 d!52531 (= l1!364 lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 lt!11423))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 lt!11423))))

(assert (=> (and d!52527 d!52531 (= (ite lt!11414 (t!47254 l1!364) l1!364) lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 lt!11423))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 lt!11423))))

(assert (=> (and d!52515 d!52531 (= lt!11415 lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 lt!11423))))

(assert (=> (and d!52531 (= (bag!906 lt!11423) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11423))))

(assert (=> (and d!52531 (= lt!11423 lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11423))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 lt!11423))))

(assert (=> (and d!52503 d!52531 (= (t!47254 res!28281) lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 lt!11423))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11423))))

(assert (=> (and d!52463 d!52531 (= res!28281 lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11423))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 lt!11423))))

(assert (=> (and d!52485 d!52531 (= (t!47254 l1!364) lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 lt!11423))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 lt!11423))))

(assert (=> (and d!52495 d!52531 (= (t!47254 l2!357) lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 lt!11423))))

(assert (=> (and d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 lt!11423))))

(assert (=> (and d!52529 d!52531 (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 lt!11423))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 lt!11423))))

(assert (=> (and d!52459 d!52531 (= l2!357 lt!11423)) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 lt!11423))))

(declare-fun c!13545 () Bool)

(assert (=> d!52531 (= c!13545 (is-Nil!525 lt!11423))))

(declare-fun e!33166 () Bag!595)

(assert (=> d!52531 (= (bag!906 lt!11423) e!33166)))

(declare-fun b!61994 () Bool)

(assert (=> b!61994 (= e!33166 Leaf!397)))

(declare-fun b!61995 () Bool)

(assert (=> b!61995 (= e!33166 (add!309 (bag!906 (t!47254 lt!11423)) (h!752 lt!11423)))))

(assert (= (and d!52531 c!13545) b!61994))

(assert (= (and d!52531 (not c!13545)) b!61995))

(declare-fun m!67738 () Bool)

(assert (=> b!61995 m!67738))

(assert (=> b!61995 m!67738))

(declare-fun m!67740 () Bool)

(assert (=> b!61995 m!67740))

(assert (=> b!61938 d!52531))

(declare-fun d!52533 () Bool)

(declare-fun res!28841 () Bool)

(declare-fun e!33167 () Bool)

(assert (=> d!52533 (=> res!28841 e!33167)))

(assert (=> d!52533 (= res!28841 (not (and (is-Cons!524 (t!47254 (t!47254 l1!364))) (is-Cons!524 (t!47254 (t!47254 (t!47254 l1!364)))))))))

(assert (=> d!52533 (= (isSorted!3 (t!47254 (t!47254 l1!364))) e!33167)))

(declare-fun b!61996 () Bool)

(declare-fun e!33168 () Bool)

(assert (=> b!61996 (= e!33167 e!33168)))

(declare-fun res!28842 () Bool)

(assert (=> b!61996 (=> (not res!28842) (not e!33168))))

(assert (=> b!61996 (= res!28842 (<= (h!752 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 (t!47254 (t!47254 l1!364))))))))

(declare-fun b!61997 () Bool)

(assert (=> b!61997 (= e!33168 (isSorted!3 (t!47254 (t!47254 (t!47254 l1!364)))))))

(assert (= (and d!52533 (not res!28841)) b!61996))

(assert (= (and b!61996 res!28842) b!61997))

(declare-fun m!67742 () Bool)

(assert (=> b!61997 m!67742))

(assert (=> b!61984 d!52533))

(declare-fun d!52535 () Bool)

(declare-fun lt!11435 () Int)

(assert (=> d!52535 (>= lt!11435 0)))

(declare-fun e!33169 () Int)

(assert (=> d!52535 (= lt!11435 e!33169)))

(declare-fun c!13546 () Bool)

(assert (=> d!52535 (= c!13546 (is-Nil!525 lt!11423))))

(assert (=> d!52535 (= (size!525 lt!11423) lt!11435)))

(declare-fun b!61998 () Bool)

(assert (=> b!61998 (= e!33169 0)))

(declare-fun b!61999 () Bool)

(assert (=> b!61999 (= e!33169 (+ 1 (size!525 (t!47254 lt!11423))))))

(assert (= (and d!52535 c!13546) b!61998))

(assert (= (and d!52535 (not c!13546)) b!61999))

(declare-fun m!67744 () Bool)

(assert (=> b!61999 m!67744))

(assert (=> b!61942 d!52535))

(declare-fun d!52537 () Bool)

(declare-fun lt!11436 () Int)

(assert (=> d!52537 (>= lt!11436 0)))

(declare-fun e!33170 () Int)

(assert (=> d!52537 (= lt!11436 e!33170)))

(declare-fun c!13547 () Bool)

(assert (=> d!52537 (= c!13547 (is-Nil!525 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> d!52537 (= (size!525 (ite lt!11414 (t!47254 l1!364) l1!364)) lt!11436)))

(declare-fun b!62000 () Bool)

(assert (=> b!62000 (= e!33170 0)))

(declare-fun b!62001 () Bool)

(assert (=> b!62001 (= e!33170 (+ 1 (size!525 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)))))))

(assert (= (and d!52537 c!13547) b!62000))

(assert (= (and d!52537 (not c!13547)) b!62001))

(declare-fun m!67746 () Bool)

(assert (=> b!62001 m!67746))

(assert (=> b!61942 d!52537))

(declare-fun d!52539 () Bool)

(declare-fun lt!11437 () Int)

(assert (=> d!52539 (>= lt!11437 0)))

(declare-fun e!33171 () Int)

(assert (=> d!52539 (= lt!11437 e!33171)))

(declare-fun c!13548 () Bool)

(assert (=> d!52539 (= c!13548 (is-Nil!525 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))

(assert (=> d!52539 (= (size!525 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) lt!11437)))

(declare-fun b!62002 () Bool)

(assert (=> b!62002 (= e!33171 0)))

(declare-fun b!62003 () Bool)

(assert (=> b!62003 (= e!33171 (+ 1 (size!525 (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(assert (= (and d!52539 c!13548) b!62002))

(assert (= (and d!52539 (not c!13548)) b!62003))

(declare-fun m!67748 () Bool)

(assert (=> b!62003 m!67748))

(assert (=> b!61942 d!52539))

(assert (=> (and d!52493 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(declare-fun d!52541 () Bool)

(assert (=> (and d!52493 d!52541 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l2!357)))) (= (h!752 l2!357) (h!752 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> (and d!52541 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52541 (= (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> (and d!52541 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l2!357)))) (= (h!752 (t!47254 l2!357)) (h!752 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> (and d!52501 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52501 (= (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> (and d!52501 d!52541 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l2!357)))) (= (h!752 res!28281) (h!752 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> (and d!52483 d!52541 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l2!357)))) (= (h!752 l1!364) (h!752 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))))))

(assert (=> d!52541 (= (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (Sum!305 (bag!906 (t!47254 (t!47254 l2!357))) (Elem!303 (h!752 (t!47254 l2!357)) 1)))))

(assert (=> b!61962 d!52541))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 (t!47254 l2!357))))))

(declare-fun d!52543 () Bool)

(assert (=> (and d!52453 d!52543 (= l1!364 (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52527 d!52543 (= (ite lt!11414 (t!47254 l1!364) l1!364) (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52515 d!52543 (= lt!11415 (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52531 (= (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52531 d!52543 (= lt!11423 (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52503 d!52543 (= (t!47254 res!28281) (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52463 d!52543 (= res!28281 (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52543 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52543 (= (t!47254 (t!47254 l2!357)) (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52485 d!52543 (= (t!47254 l1!364) (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52495 d!52543 (= (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52529 d!52543 (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 (t!47254 l2!357))))))

(assert (=> (and d!52459 d!52543 (= l2!357 (t!47254 (t!47254 l2!357)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 (t!47254 l2!357))))))

(declare-fun c!13549 () Bool)

(assert (=> d!52543 (= c!13549 (is-Nil!525 (t!47254 (t!47254 l2!357))))))

(declare-fun e!33172 () Bag!595)

(assert (=> d!52543 (= (bag!906 (t!47254 (t!47254 l2!357))) e!33172)))

(declare-fun b!62004 () Bool)

(assert (=> b!62004 (= e!33172 Leaf!397)))

(declare-fun b!62005 () Bool)

(assert (=> b!62005 (= e!33172 (add!309 (bag!906 (t!47254 (t!47254 (t!47254 l2!357)))) (h!752 (t!47254 (t!47254 l2!357)))))))

(assert (= (and d!52543 c!13549) b!62004))

(assert (= (and d!52543 (not c!13549)) b!62005))

(declare-fun m!67750 () Bool)

(assert (=> b!62005 m!67750))

(assert (=> b!62005 m!67750))

(declare-fun m!67752 () Bool)

(assert (=> b!62005 m!67752))

(assert (=> b!61962 d!52543))

(declare-fun d!52545 () Bool)

(declare-fun lt!11438 () Int)

(assert (=> d!52545 (>= lt!11438 0)))

(declare-fun e!33173 () Int)

(assert (=> d!52545 (= lt!11438 e!33173)))

(declare-fun c!13550 () Bool)

(assert (=> d!52545 (= c!13550 (is-Nil!525 lt!11427))))

(assert (=> d!52545 (= (size!525 lt!11427) lt!11438)))

(declare-fun b!62006 () Bool)

(assert (=> b!62006 (= e!33173 0)))

(declare-fun b!62007 () Bool)

(assert (=> b!62007 (= e!33173 (+ 1 (size!525 (t!47254 lt!11427))))))

(assert (= (and d!52545 c!13550) b!62006))

(assert (= (and d!52545 (not c!13550)) b!62007))

(declare-fun m!67754 () Bool)

(assert (=> b!62007 m!67754))

(assert (=> b!61955 d!52545))

(assert (=> b!61955 d!52471))

(assert (=> b!61955 d!52505))

(declare-fun d!52547 () Bool)

(declare-fun lt!11439 () Int)

(assert (=> d!52547 (>= lt!11439 0)))

(declare-fun e!33174 () Int)

(assert (=> d!52547 (= lt!11439 e!33174)))

(declare-fun c!13551 () Bool)

(assert (=> d!52547 (= c!13551 (is-Nil!525 (t!47254 lt!11415)))))

(assert (=> d!52547 (= (size!525 (t!47254 lt!11415)) lt!11439)))

(declare-fun b!62008 () Bool)

(assert (=> b!62008 (= e!33174 0)))

(declare-fun b!62009 () Bool)

(assert (=> b!62009 (= e!33174 (+ 1 (size!525 (t!47254 (t!47254 lt!11415)))))))

(assert (= (and d!52547 c!13551) b!62008))

(assert (= (and d!52547 (not c!13551)) b!62009))

(declare-fun m!67756 () Bool)

(assert (=> b!62009 m!67756))

(assert (=> b!61972 d!52547))

(declare-fun d!52549 () Bool)

(declare-fun res!28843 () Bool)

(declare-fun e!33175 () Bool)

(assert (=> d!52549 (=> res!28843 e!33175)))

(assert (=> d!52549 (= res!28843 (not (and (is-Cons!524 (t!47254 (t!47254 l2!357))) (is-Cons!524 (t!47254 (t!47254 (t!47254 l2!357)))))))))

(assert (=> d!52549 (= (isSorted!3 (t!47254 (t!47254 l2!357))) e!33175)))

(declare-fun b!62010 () Bool)

(declare-fun e!33176 () Bool)

(assert (=> b!62010 (= e!33175 e!33176)))

(declare-fun res!28844 () Bool)

(assert (=> b!62010 (=> (not res!28844) (not e!33176))))

(assert (=> b!62010 (= res!28844 (<= (h!752 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 (t!47254 (t!47254 l2!357))))))))

(declare-fun b!62011 () Bool)

(assert (=> b!62011 (= e!33176 (isSorted!3 (t!47254 (t!47254 (t!47254 l2!357)))))))

(assert (= (and d!52549 (not res!28843)) b!62010))

(assert (= (and b!62010 res!28844) b!62011))

(declare-fun m!67758 () Bool)

(assert (=> b!62011 m!67758))

(assert (=> b!61937 d!52549))

(declare-fun d!52551 () Bool)

(declare-fun e!33177 () Bool)

(assert (=> d!52551 e!33177))

(declare-fun res!28846 () Bool)

(assert (=> d!52551 (=> (not res!28846) (not e!33177))))

(declare-fun lt!11440 () List!559)

(assert (=> d!52551 (= res!28846 (= (content!103 lt!11440) (union (content!103 (ite lt!11414 (t!47254 l1!364) l1!364)) (content!103 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(declare-fun e!33178 () List!559)

(assert (=> d!52551 (= lt!11440 e!33178)))

(declare-fun c!13552 () Bool)

(assert (=> d!52551 (= c!13552 (is-Nil!525 (ite lt!11414 (t!47254 l1!364) l1!364)))))

(assert (=> d!52551 (= (++!63 (ite lt!11414 (t!47254 l1!364) l1!364) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) lt!11440)))

(declare-fun b!62012 () Bool)

(assert (=> b!62012 (= e!33178 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))

(declare-fun b!62014 () Bool)

(declare-fun res!28845 () Bool)

(assert (=> b!62014 (=> (not res!28845) (not e!33177))))

(assert (=> b!62014 (= res!28845 (= (size!525 lt!11440) (+ (size!525 (ite lt!11414 (t!47254 l1!364) l1!364)) (size!525 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(declare-fun b!62015 () Bool)

(assert (=> b!62015 (= e!33177 (or (not (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) Nil!525)) (= lt!11440 (ite lt!11414 (t!47254 l1!364) l1!364))))))

(declare-fun b!62013 () Bool)

(assert (=> b!62013 (= e!33178 (Cons!524 (h!752 (ite lt!11414 (t!47254 l1!364) l1!364)) (++!63 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)) (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (= (and d!52551 c!13552) b!62012))

(assert (= (and d!52551 (not c!13552)) b!62013))

(assert (= (and d!52551 res!28846) b!62014))

(assert (= (and b!62014 res!28845) b!62015))

(declare-fun m!67760 () Bool)

(assert (=> d!52551 m!67760))

(declare-fun m!67762 () Bool)

(assert (=> d!52551 m!67762))

(declare-fun m!67764 () Bool)

(assert (=> d!52551 m!67764))

(declare-fun m!67766 () Bool)

(assert (=> b!62014 m!67766))

(assert (=> b!62014 m!67638))

(assert (=> b!62014 m!67640))

(declare-fun m!67768 () Bool)

(assert (=> b!62013 m!67768))

(assert (=> b!61940 d!52551))

(assert (=> (and d!52493 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(declare-fun d!52553 () Bool)

(assert (=> (and d!52493 d!52553 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l1!364)))) (= (h!752 l2!357) (h!752 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52553 (= (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52553 (= (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52553 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 l1!364)))) (= (h!752 (t!47254 l1!364)) (h!752 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52541 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52541 (= (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52541 d!52553 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l1!364)))) (= (h!752 (t!47254 l2!357)) (h!752 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52501 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52501 (= (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52501 d!52553 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l1!364)))) (= (h!752 res!28281) (h!752 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> (and d!52483 d!52553 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l1!364)))) (= (h!752 l1!364) (h!752 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))))))

(assert (=> d!52553 (= (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (Sum!305 (bag!906 (t!47254 (t!47254 l1!364))) (Elem!303 (h!752 (t!47254 l1!364)) 1)))))

(assert (=> b!61944 d!52553))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 (t!47254 l1!364))))))

(declare-fun d!52555 () Bool)

(assert (=> (and d!52453 d!52555 (= l1!364 (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52527 d!52555 (= (ite lt!11414 (t!47254 l1!364) l1!364) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52515 d!52555 (= lt!11415 (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52531 (= (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52531 d!52555 (= lt!11423 (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52503 d!52555 (= (t!47254 res!28281) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52463 d!52555 (= res!28281 (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52555 (= (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52555 (= (t!47254 (t!47254 l1!364)) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52543 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52543 d!52555 (= (t!47254 (t!47254 l2!357)) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52485 d!52555 (= (t!47254 l1!364) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52495 d!52555 (= (t!47254 l2!357) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52529 d!52555 (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 (t!47254 l1!364))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 (t!47254 l1!364))))))

(assert (=> (and d!52459 d!52555 (= l2!357 (t!47254 (t!47254 l1!364)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 (t!47254 l1!364))))))

(declare-fun c!13553 () Bool)

(assert (=> d!52555 (= c!13553 (is-Nil!525 (t!47254 (t!47254 l1!364))))))

(declare-fun e!33179 () Bag!595)

(assert (=> d!52555 (= (bag!906 (t!47254 (t!47254 l1!364))) e!33179)))

(declare-fun b!62016 () Bool)

(assert (=> b!62016 (= e!33179 Leaf!397)))

(declare-fun b!62017 () Bool)

(assert (=> b!62017 (= e!33179 (add!309 (bag!906 (t!47254 (t!47254 (t!47254 l1!364)))) (h!752 (t!47254 (t!47254 l1!364)))))))

(assert (= (and d!52555 c!13553) b!62016))

(assert (= (and d!52555 (not c!13553)) b!62017))

(declare-fun m!67770 () Bool)

(assert (=> b!62017 m!67770))

(assert (=> b!62017 m!67770))

(declare-fun m!67772 () Bool)

(assert (=> b!62017 m!67772))

(assert (=> b!61944 d!52555))

(declare-fun d!52557 () Bool)

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52557 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52461 d!52557 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52497 d!52557 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52491 d!52557 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52455 d!52557 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52499 d!52557 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52489 d!52557 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901))))

(declare-fun c!13554 () Bool)

(assert (=> d!52557 (= c!13554 (is-Sum!305 (left!1396 (right!1399 (bag!906 res!28281)))))))

(declare-fun e!33180 () Int)

(assert (=> d!52557 (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) e!33180)))

(declare-fun b!62018 () Bool)

(assert (=> b!62018 (= e!33180 (+ (get!605 (left!1396 (left!1396 (right!1399 (bag!906 res!28281)))) x!26901) (get!605 (right!1399 (left!1396 (right!1399 (bag!906 res!28281)))) x!26901)))))

(declare-fun b!62019 () Bool)

(assert (=> b!62019 (= e!33180 (ite (and (is-Elem!303 (left!1396 (right!1399 (bag!906 res!28281)))) (= (key!361 (left!1396 (right!1399 (bag!906 res!28281)))) x!26901)) (value!4896 (left!1396 (right!1399 (bag!906 res!28281)))) 0))))

(assert (= (and d!52557 c!13554) b!62018))

(assert (= (and d!52557 (not c!13554)) b!62019))

(declare-fun bs!37313 () Bool)

(declare-fun m!67774 () Bool)

(assert (= bs!37313 m!67774))

(assert (=> bs!37313 s!1905))

(assert (=> bs!37313 s!1907))

(assert (=> b!62018 m!67774))

(declare-fun bs!37314 () Bool)

(declare-fun m!67776 () Bool)

(assert (= bs!37314 m!67776))

(assert (=> bs!37314 s!1905))

(assert (=> bs!37314 s!1907))

(assert (=> b!62018 m!67776))

(assert (=> b!61965 d!52557))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (bag!906 res!28281))))))

(declare-fun d!52559 () Bool)

(assert (=> (and d!52557 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52461 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52497 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52491 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52455 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52559 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52499 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (bag!906 res!28281))))))

(assert (=> (and d!52489 d!52559 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901))))

(declare-fun c!13555 () Bool)

(assert (=> d!52559 (= c!13555 (is-Sum!305 (right!1399 (right!1399 (bag!906 res!28281)))))))

(declare-fun e!33181 () Int)

(assert (=> d!52559 (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) e!33181)))

(declare-fun b!62020 () Bool)

(assert (=> b!62020 (= e!33181 (+ (get!605 (left!1396 (right!1399 (right!1399 (bag!906 res!28281)))) x!26901) (get!605 (right!1399 (right!1399 (right!1399 (bag!906 res!28281)))) x!26901)))))

(declare-fun b!62021 () Bool)

(assert (=> b!62021 (= e!33181 (ite (and (is-Elem!303 (right!1399 (right!1399 (bag!906 res!28281)))) (= (key!361 (right!1399 (right!1399 (bag!906 res!28281)))) x!26901)) (value!4896 (right!1399 (right!1399 (bag!906 res!28281)))) 0))))

(assert (= (and d!52559 c!13555) b!62020))

(assert (= (and d!52559 (not c!13555)) b!62021))

(declare-fun bs!37315 () Bool)

(declare-fun m!67778 () Bool)

(assert (= bs!37315 m!67778))

(assert (=> bs!37315 s!1905))

(assert (=> bs!37315 s!1907))

(assert (=> b!62020 m!67778))

(declare-fun bs!37316 () Bool)

(declare-fun m!67780 () Bool)

(assert (= bs!37316 m!67780))

(assert (=> bs!37316 s!1905))

(assert (=> bs!37316 s!1907))

(assert (=> b!62020 m!67780))

(assert (=> b!61965 d!52559))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(declare-fun d!52561 () Bool)

(assert (=> (and d!52557 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52461 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52497 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52561 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52491 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52455 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52559 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52499 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52489 d!52561 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(declare-fun c!13556 () Bool)

(assert (=> d!52561 (= c!13556 (is-Sum!305 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))))

(declare-fun e!33182 () Int)

(assert (=> d!52561 (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) e!33182)))

(declare-fun b!62022 () Bool)

(assert (=> b!62022 (= e!33182 (+ (get!605 (left!1396 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901) (get!605 (right!1399 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)))))

(declare-fun b!62023 () Bool)

(assert (=> b!62023 (= e!33182 (ite (and (is-Elem!303 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= (key!361 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)) (value!4896 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) 0))))

(assert (= (and d!52561 c!13556) b!62022))

(assert (= (and d!52561 (not c!13556)) b!62023))

(declare-fun bs!37317 () Bool)

(declare-fun m!67782 () Bool)

(assert (= bs!37317 m!67782))

(assert (=> bs!37317 s!1905))

(assert (=> bs!37317 s!1907))

(assert (=> b!62022 m!67782))

(declare-fun bs!37318 () Bool)

(declare-fun m!67784 () Bool)

(assert (= bs!37318 m!67784))

(assert (=> bs!37318 s!1905))

(assert (=> bs!37318 s!1907))

(assert (=> b!62022 m!67784))

(assert (=> b!61959 d!52561))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(declare-fun d!52563 () Bool)

(assert (=> (and d!52557 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52461 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52497 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52561 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52491 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52455 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52563 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52559 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52499 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52489 d!52563 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(declare-fun c!13557 () Bool)

(assert (=> d!52563 (= c!13557 (is-Sum!305 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))))

(declare-fun e!33183 () Int)

(assert (=> d!52563 (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) e!33183)))

(declare-fun b!62024 () Bool)

(assert (=> b!62024 (= e!33183 (+ (get!605 (left!1396 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901) (get!605 (right!1399 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)))))

(declare-fun b!62025 () Bool)

(assert (=> b!62025 (= e!33183 (ite (and (is-Elem!303 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= (key!361 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)) (value!4896 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) 0))))

(assert (= (and d!52563 c!13557) b!62024))

(assert (= (and d!52563 (not c!13557)) b!62025))

(declare-fun bs!37319 () Bool)

(declare-fun m!67786 () Bool)

(assert (= bs!37319 m!67786))

(assert (=> bs!37319 s!1905))

(assert (=> bs!37319 s!1907))

(assert (=> b!62024 m!67786))

(declare-fun bs!37320 () Bool)

(declare-fun m!67788 () Bool)

(assert (= bs!37320 m!67788))

(assert (=> bs!37320 s!1905))

(assert (=> bs!37320 s!1907))

(assert (=> b!62024 m!67788))

(assert (=> b!61959 d!52563))

(declare-fun d!52565 () Bool)

(declare-fun lt!11441 () Int)

(assert (=> d!52565 (>= lt!11441 0)))

(declare-fun e!33184 () Int)

(assert (=> d!52565 (= lt!11441 e!33184)))

(declare-fun c!13558 () Bool)

(assert (=> d!52565 (= c!13558 (is-Nil!525 (t!47254 (t!47254 l2!357))))))

(assert (=> d!52565 (= (size!525 (t!47254 (t!47254 l2!357))) lt!11441)))

(declare-fun b!62026 () Bool)

(assert (=> b!62026 (= e!33184 0)))

(declare-fun b!62027 () Bool)

(assert (=> b!62027 (= e!33184 (+ 1 (size!525 (t!47254 (t!47254 (t!47254 l2!357))))))))

(assert (= (and d!52565 c!13558) b!62026))

(assert (= (and d!52565 (not c!13558)) b!62027))

(declare-fun m!67790 () Bool)

(assert (=> b!62027 m!67790))

(assert (=> b!61970 d!52565))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (bag!906 lt!11423))))

(declare-fun d!52567 () Bool)

(assert (=> (and d!52557 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (bag!906 lt!11423))))

(assert (=> (and d!52461 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11423))))

(assert (=> (and d!52567 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (bag!906 lt!11423))))

(assert (=> (and d!52497 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11423))))

(assert (=> (and d!52561 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11423))))

(assert (=> (and d!52491 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11423))))

(assert (=> (and d!52455 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11423))))

(assert (=> (and d!52563 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (bag!906 lt!11423))))

(assert (=> (and d!52559 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (bag!906 lt!11423))))

(assert (=> (and d!52499 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11423))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11423))))

(assert (=> (and d!52489 d!52567 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11423)) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (bag!906 lt!11423) x!26901))))

(declare-fun c!13559 () Bool)

(assert (=> d!52567 (= c!13559 (is-Sum!305 (bag!906 lt!11423)))))

(declare-fun e!33185 () Int)

(assert (=> d!52567 (= (get!605 (bag!906 lt!11423) x!26901) e!33185)))

(declare-fun b!62028 () Bool)

(assert (=> b!62028 (= e!33185 (+ (get!605 (left!1396 (bag!906 lt!11423)) x!26901) (get!605 (right!1399 (bag!906 lt!11423)) x!26901)))))

(declare-fun b!62029 () Bool)

(assert (=> b!62029 (= e!33185 (ite (and (is-Elem!303 (bag!906 lt!11423)) (= (key!361 (bag!906 lt!11423)) x!26901)) (value!4896 (bag!906 lt!11423)) 0))))

(assert (= (and d!52567 c!13559) b!62028))

(assert (= (and d!52567 (not c!13559)) b!62029))

(declare-fun bs!37321 () Bool)

(declare-fun m!67792 () Bool)

(assert (= bs!37321 m!67792))

(assert (=> bs!37321 s!1905))

(assert (=> bs!37321 s!1907))

(assert (=> b!62028 m!67792))

(declare-fun bs!37322 () Bool)

(declare-fun m!67794 () Bool)

(assert (= bs!37322 m!67794))

(assert (=> bs!37322 s!1905))

(assert (=> bs!37322 s!1907))

(assert (=> b!62028 m!67794))

(assert (=> bs!37309 d!52567))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(declare-fun d!52569 () Bool)

(assert (=> (and d!52557 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52461 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52567 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52497 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52561 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52491 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52569 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52455 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52563 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52559 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52499 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (=> (and d!52489 d!52569 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901))))

(declare-fun c!13560 () Bool)

(assert (=> d!52569 (= c!13560 (is-Sum!305 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(declare-fun e!33186 () Int)

(assert (=> d!52569 (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) e!33186)))

(declare-fun b!62030 () Bool)

(assert (=> b!62030 (= e!33186 (+ (get!605 (left!1396 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) x!26901) (get!605 (right!1399 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) x!26901)))))

(declare-fun b!62031 () Bool)

(assert (=> b!62031 (= e!33186 (ite (and (is-Elem!303 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) (= (key!361 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) x!26901)) (value!4896 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))) 0))))

(assert (= (and d!52569 c!13560) b!62030))

(assert (= (and d!52569 (not c!13560)) b!62031))

(declare-fun bs!37323 () Bool)

(declare-fun m!67796 () Bool)

(assert (= bs!37323 m!67796))

(assert (=> bs!37323 s!1905))

(assert (=> bs!37323 s!1907))

(assert (=> b!62030 m!67796))

(declare-fun bs!37324 () Bool)

(declare-fun m!67798 () Bool)

(assert (= bs!37324 m!67798))

(assert (=> bs!37324 s!1905))

(assert (=> bs!37324 s!1907))

(assert (=> b!62030 m!67798))

(assert (=> bs!37309 d!52569))

(declare-fun d!52571 () Bool)

(declare-fun e!33187 () Bool)

(assert (=> d!52571 e!33187))

(declare-fun res!28848 () Bool)

(assert (=> d!52571 (=> (not res!28848) (not e!33187))))

(declare-fun lt!11442 () List!559)

(assert (=> d!52571 (= res!28848 (= (content!103 lt!11442) (union (content!103 (t!47254 l1!364)) (content!103 (t!47254 l2!357)))))))

(declare-fun e!33188 () List!559)

(assert (=> d!52571 (= lt!11442 e!33188)))

(declare-fun c!13561 () Bool)

(assert (=> d!52571 (= c!13561 (is-Nil!525 (t!47254 l1!364)))))

(assert (=> d!52571 (= (++!63 (t!47254 l1!364) (t!47254 l2!357)) lt!11442)))

(declare-fun b!62032 () Bool)

(assert (=> b!62032 (= e!33188 (t!47254 l2!357))))

(declare-fun b!62034 () Bool)

(declare-fun res!28847 () Bool)

(assert (=> b!62034 (=> (not res!28847) (not e!33187))))

(assert (=> b!62034 (= res!28847 (= (size!525 lt!11442) (+ (size!525 (t!47254 l1!364)) (size!525 (t!47254 l2!357)))))))

(declare-fun b!62035 () Bool)

(assert (=> b!62035 (= e!33187 (or (not (= (t!47254 l2!357) Nil!525)) (= lt!11442 (t!47254 l1!364))))))

(declare-fun b!62033 () Bool)

(assert (=> b!62033 (= e!33188 (Cons!524 (h!752 (t!47254 l1!364)) (++!63 (t!47254 (t!47254 l1!364)) (t!47254 l2!357))))))

(assert (= (and d!52571 c!13561) b!62032))

(assert (= (and d!52571 (not c!13561)) b!62033))

(assert (= (and d!52571 res!28848) b!62034))

(assert (= (and b!62034 res!28847) b!62035))

(declare-fun m!67800 () Bool)

(assert (=> d!52571 m!67800))

(declare-fun m!67802 () Bool)

(assert (=> d!52571 m!67802))

(assert (=> d!52571 m!67650))

(declare-fun m!67804 () Bool)

(assert (=> b!62034 m!67804))

(assert (=> b!62034 m!67612))

(assert (=> b!62034 m!67608))

(declare-fun m!67806 () Bool)

(assert (=> b!62033 m!67806))

(assert (=> b!61954 d!52571))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(declare-fun d!52573 () Bool)

(assert (=> (and d!52557 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52461 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52567 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52497 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52561 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52573 (= (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52573 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52491 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52569 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52455 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52563 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52559 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52499 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52489 d!52573 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(declare-fun c!13562 () Bool)

(assert (=> d!52573 (= c!13562 (is-Sum!305 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))))

(declare-fun e!33189 () Int)

(assert (=> d!52573 (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) e!33189)))

(declare-fun b!62036 () Bool)

(assert (=> b!62036 (= e!33189 (+ (get!605 (left!1396 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901) (get!605 (right!1399 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)))))

(declare-fun b!62037 () Bool)

(assert (=> b!62037 (= e!33189 (ite (and (is-Elem!303 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= (key!361 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)) (value!4896 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) 0))))

(assert (= (and d!52573 c!13562) b!62036))

(assert (= (and d!52573 (not c!13562)) b!62037))

(declare-fun bs!37325 () Bool)

(declare-fun m!67808 () Bool)

(assert (= bs!37325 m!67808))

(assert (=> bs!37325 s!1905))

(assert (=> bs!37325 s!1907))

(assert (=> b!62036 m!67808))

(declare-fun bs!37326 () Bool)

(declare-fun m!67810 () Bool)

(assert (= bs!37326 m!67810))

(assert (=> bs!37326 s!1905))

(assert (=> bs!37326 s!1907))

(assert (=> b!62036 m!67810))

(assert (=> b!61957 d!52573))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(declare-fun d!52575 () Bool)

(assert (=> (and d!52557 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52461 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52575 (= (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52575 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52567 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52497 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52561 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52573 (= (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52573 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52491 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52569 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52455 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52563 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52559 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52499 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))))))

(assert (=> (and d!52489 d!52575 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901))))

(declare-fun c!13563 () Bool)

(assert (=> d!52575 (= c!13563 (is-Sum!305 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))))))

(declare-fun e!33190 () Int)

(assert (=> d!52575 (= (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) e!33190)))

(declare-fun b!62038 () Bool)

(assert (=> b!62038 (= e!33190 (+ (get!605 (left!1396 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901) (get!605 (right!1399 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)))))

(declare-fun b!62039 () Bool)

(assert (=> b!62039 (= e!33190 (ite (and (is-Elem!303 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) (= (key!361 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) x!26901)) (value!4896 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))))) 0))))

(assert (= (and d!52575 c!13563) b!62038))

(assert (= (and d!52575 (not c!13563)) b!62039))

(declare-fun bs!37327 () Bool)

(declare-fun m!67812 () Bool)

(assert (= bs!37327 m!67812))

(assert (=> bs!37327 s!1905))

(assert (=> bs!37327 s!1907))

(assert (=> b!62038 m!67812))

(declare-fun bs!37328 () Bool)

(declare-fun m!67814 () Bool)

(assert (= bs!37328 m!67814))

(assert (=> bs!37328 s!1905))

(assert (=> bs!37328 s!1907))

(assert (=> b!62038 m!67814))

(assert (=> b!61957 d!52575))

(declare-fun d!52577 () Bool)

(declare-fun res!28849 () Bool)

(declare-fun e!33191 () Bool)

(assert (=> d!52577 (=> res!28849 e!33191)))

(assert (=> d!52577 (= res!28849 (not (and (is-Cons!524 lt!11423) (is-Cons!524 (t!47254 lt!11423)))))))

(assert (=> d!52577 (= (isSorted!3 lt!11423) e!33191)))

(declare-fun b!62040 () Bool)

(declare-fun e!33192 () Bool)

(assert (=> b!62040 (= e!33191 e!33192)))

(declare-fun res!28850 () Bool)

(assert (=> b!62040 (=> (not res!28850) (not e!33192))))

(assert (=> b!62040 (= res!28850 (<= (h!752 lt!11423) (h!752 (t!47254 lt!11423))))))

(declare-fun b!62041 () Bool)

(assert (=> b!62041 (= e!33192 (isSorted!3 (t!47254 lt!11423)))))

(assert (= (and d!52577 (not res!28849)) b!62040))

(assert (= (and b!62040 res!28850) b!62041))

(declare-fun m!67816 () Bool)

(assert (=> b!62041 m!67816))

(assert (=> d!52481 d!52577))

(declare-fun d!52579 () Bool)

(declare-fun res!28851 () Bool)

(declare-fun e!33193 () Bool)

(assert (=> d!52579 (=> res!28851 e!33193)))

(assert (=> d!52579 (= res!28851 (not (and (is-Cons!524 (ite lt!11414 (t!47254 l1!364) l1!364)) (is-Cons!524 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364))))))))

(assert (=> d!52579 (= (isSorted!3 (ite lt!11414 (t!47254 l1!364) l1!364)) e!33193)))

(declare-fun b!62042 () Bool)

(declare-fun e!33194 () Bool)

(assert (=> b!62042 (= e!33193 e!33194)))

(declare-fun res!28852 () Bool)

(assert (=> b!62042 (=> (not res!28852) (not e!33194))))

(assert (=> b!62042 (= res!28852 (<= (h!752 (ite lt!11414 (t!47254 l1!364) l1!364)) (h!752 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364)))))))

(declare-fun b!62043 () Bool)

(assert (=> b!62043 (= e!33194 (isSorted!3 (t!47254 (ite lt!11414 (t!47254 l1!364) l1!364))))))

(assert (= (and d!52579 (not res!28851)) b!62042))

(assert (= (and b!62042 res!28852) b!62043))

(declare-fun m!67818 () Bool)

(assert (=> b!62043 m!67818))

(assert (=> d!52481 d!52579))

(declare-fun d!52581 () Bool)

(declare-fun res!28853 () Bool)

(declare-fun e!33195 () Bool)

(assert (=> d!52581 (=> res!28853 e!33195)))

(assert (=> d!52581 (= res!28853 (not (and (is-Cons!524 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (is-Cons!524 (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))))

(assert (=> d!52581 (= (isSorted!3 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) e!33195)))

(declare-fun b!62044 () Bool)

(declare-fun e!33196 () Bool)

(assert (=> b!62044 (= e!33195 e!33196)))

(declare-fun res!28854 () Bool)

(assert (=> b!62044 (=> (not res!28854) (not e!33196))))

(assert (=> b!62044 (= res!28854 (<= (h!752 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (h!752 (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))))))))

(declare-fun b!62045 () Bool)

(assert (=> b!62045 (= e!33196 (isSorted!3 (t!47254 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))))))

(assert (= (and d!52581 (not res!28853)) b!62044))

(assert (= (and b!62044 res!28854) b!62045))

(declare-fun m!67820 () Bool)

(assert (=> b!62045 m!67820))

(assert (=> b!61941 d!52581))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281))))))

(declare-fun d!52583 () Bool)

(assert (=> (and d!52557 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52583 (= (left!1396 (left!1396 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52583 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52461 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52575 (= (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52575 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52567 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52497 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52561 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52573 (= (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52573 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52491 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52569 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52455 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52563 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52559 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52499 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52489 d!52583 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (left!1396 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901))))

(declare-fun c!13564 () Bool)

(assert (=> d!52583 (= c!13564 (is-Sum!305 (left!1396 (left!1396 (bag!906 res!28281)))))))

(declare-fun e!33197 () Int)

(assert (=> d!52583 (= (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901) e!33197)))

(declare-fun b!62046 () Bool)

(assert (=> b!62046 (= e!33197 (+ (get!605 (left!1396 (left!1396 (left!1396 (bag!906 res!28281)))) x!26901) (get!605 (right!1399 (left!1396 (left!1396 (bag!906 res!28281)))) x!26901)))))

(declare-fun b!62047 () Bool)

(assert (=> b!62047 (= e!33197 (ite (and (is-Elem!303 (left!1396 (left!1396 (bag!906 res!28281)))) (= (key!361 (left!1396 (left!1396 (bag!906 res!28281)))) x!26901)) (value!4896 (left!1396 (left!1396 (bag!906 res!28281)))) 0))))

(assert (= (and d!52583 c!13564) b!62046))

(assert (= (and d!52583 (not c!13564)) b!62047))

(declare-fun bs!37329 () Bool)

(declare-fun m!67822 () Bool)

(assert (= bs!37329 m!67822))

(assert (=> bs!37329 s!1905))

(assert (=> bs!37329 s!1907))

(assert (=> b!62046 m!67822))

(declare-fun bs!37330 () Bool)

(declare-fun m!67824 () Bool)

(assert (= bs!37330 m!67824))

(assert (=> bs!37330 s!1905))

(assert (=> bs!37330 s!1907))

(assert (=> b!62046 m!67824))

(assert (=> b!61963 d!52583))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))))

(declare-fun d!52585 () Bool)

(assert (=> (and d!52557 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52583 (= (left!1396 (left!1396 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52583 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52461 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52575 (= (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52575 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52567 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52497 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52561 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52573 (= (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52573 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52585 (= (right!1399 (left!1396 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52585 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52491 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52569 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52455 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52563 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52559 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52499 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (bag!906 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (bag!906 res!28281))))))

(assert (=> (and d!52489 d!52585 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (right!1399 (left!1396 (bag!906 res!28281)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901))))

(declare-fun c!13565 () Bool)

(assert (=> d!52585 (= c!13565 (is-Sum!305 (right!1399 (left!1396 (bag!906 res!28281)))))))

(declare-fun e!33198 () Int)

(assert (=> d!52585 (= (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901) e!33198)))

(declare-fun b!62048 () Bool)

(assert (=> b!62048 (= e!33198 (+ (get!605 (left!1396 (right!1399 (left!1396 (bag!906 res!28281)))) x!26901) (get!605 (right!1399 (right!1399 (left!1396 (bag!906 res!28281)))) x!26901)))))

(declare-fun b!62049 () Bool)

(assert (=> b!62049 (= e!33198 (ite (and (is-Elem!303 (right!1399 (left!1396 (bag!906 res!28281)))) (= (key!361 (right!1399 (left!1396 (bag!906 res!28281)))) x!26901)) (value!4896 (right!1399 (left!1396 (bag!906 res!28281)))) 0))))

(assert (= (and d!52585 c!13565) b!62048))

(assert (= (and d!52585 (not c!13565)) b!62049))

(declare-fun bs!37331 () Bool)

(declare-fun m!67826 () Bool)

(assert (= bs!37331 m!67826))

(assert (=> bs!37331 s!1905))

(assert (=> bs!37331 s!1907))

(assert (=> b!62048 m!67826))

(declare-fun bs!37332 () Bool)

(declare-fun m!67828 () Bool)

(assert (= bs!37332 m!67828))

(assert (=> bs!37332 s!1905))

(assert (=> bs!37332 s!1907))

(assert (=> b!62048 m!67828))

(assert (=> b!61963 d!52585))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (bag!906 lt!11415))))

(declare-fun d!52587 () Bool)

(assert (=> (and d!52557 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52583 (= (left!1396 (left!1396 (bag!906 res!28281))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (bag!906 lt!11415))))

(assert (=> (and d!52583 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (bag!906 lt!11415))))

(assert (=> (and d!52461 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52575 (= (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))))

(assert (=> (and d!52575 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11415))))

(assert (=> (and d!52567 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (bag!906 lt!11415))))

(assert (=> (and d!52497 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52587 (= (bag!906 lt!11415) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 lt!11415))))

(assert (=> (and d!52587 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11415) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))))

(assert (=> (and d!52561 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52573 (= (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))))

(assert (=> (and d!52573 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52585 (= (right!1399 (left!1396 (bag!906 res!28281))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (bag!906 res!28281))) (bag!906 lt!11415))))

(assert (=> (and d!52585 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (bag!906 res!28281))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11415))))

(assert (=> (and d!52491 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (bag!906 lt!11415))))

(assert (=> (and d!52569 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11415))))

(assert (=> (and d!52455 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415))))

(assert (=> (and d!52563 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (bag!906 lt!11415))))

(assert (=> (and d!52559 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (bag!906 lt!11415))))

(assert (=> (and d!52499 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11415))))

(assert (=> (and d!52489 d!52587 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (bag!906 lt!11415)) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (bag!906 lt!11415) x!26901))))

(declare-fun c!13566 () Bool)

(assert (=> d!52587 (= c!13566 (is-Sum!305 (bag!906 lt!11415)))))

(declare-fun e!33199 () Int)

(assert (=> d!52587 (= (get!605 (bag!906 lt!11415) x!26901) e!33199)))

(declare-fun b!62050 () Bool)

(assert (=> b!62050 (= e!33199 (+ (get!605 (left!1396 (bag!906 lt!11415)) x!26901) (get!605 (right!1399 (bag!906 lt!11415)) x!26901)))))

(declare-fun b!62051 () Bool)

(assert (=> b!62051 (= e!33199 (ite (and (is-Elem!303 (bag!906 lt!11415)) (= (key!361 (bag!906 lt!11415)) x!26901)) (value!4896 (bag!906 lt!11415)) 0))))

(assert (= (and d!52587 c!13566) b!62050))

(assert (= (and d!52587 (not c!13566)) b!62051))

(declare-fun bs!37333 () Bool)

(declare-fun m!67830 () Bool)

(assert (= bs!37333 m!67830))

(assert (=> bs!37333 s!1905))

(assert (=> bs!37333 s!1907))

(assert (=> b!62050 m!67830))

(declare-fun bs!37334 () Bool)

(declare-fun m!67832 () Bool)

(assert (= bs!37334 m!67832))

(assert (=> bs!37334 s!1905))

(assert (=> bs!37334 s!1907))

(assert (=> b!62050 m!67832))

(assert (=> bs!37308 d!52587))

(assert (=> (and d!52557 (= (left!1396 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(declare-fun d!52589 () Bool)

(assert (=> (and d!52557 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52583 (= (left!1396 (left!1396 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52583 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52461 (= (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52461 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 l2!357)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 l2!357)) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52575 (= (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52575 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52567 (= (bag!906 lt!11423) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52567 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11423) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52497 (= (left!1396 (bag!906 res!28281)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52497 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (bag!906 res!28281)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (bag!906 res!28281)) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52587 (= (bag!906 lt!11415) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52587 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (bag!906 lt!11415) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52561 (= (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52561 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52573 (= (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52573 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52585 (= (right!1399 (left!1396 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52585 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (left!1396 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (left!1396 (bag!906 res!28281))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52589 (= (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52589 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52491 (= (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52491 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52569 (= (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52569 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (union!308 (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52455 (= (bag!906 res!28281) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52455 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (bag!906 res!28281) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52563 (= (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52563 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (union!308 (bag!906 l1!364) (bag!906 l2!357)))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52559 (= (right!1399 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52559 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (right!1399 (bag!906 res!28281))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (right!1399 (bag!906 res!28281))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52499 (= (right!1399 (bag!906 res!28281)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52499 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (right!1399 (bag!906 res!28281)) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (right!1399 (bag!906 res!28281)) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(assert (=> (and d!52489 (= (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))) (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))))))

(assert (=> (and d!52489 d!52589 (dynLambda!939 |eqBag[BigInt]!13| (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= x!26901 x!26901)) (= (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 l2!357))) x!26901) (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901))))

(declare-fun c!13567 () Bool)

(assert (=> d!52589 (= c!13567 (is-Sum!305 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))))))

(declare-fun e!33200 () Int)

(assert (=> d!52589 (= (get!605 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357))) x!26901) e!33200)))

(declare-fun b!62052 () Bool)

(assert (=> b!62052 (= e!33200 (+ (get!605 (left!1396 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) x!26901) (get!605 (right!1399 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) x!26901)))))

(declare-fun b!62053 () Bool)

(assert (=> b!62053 (= e!33200 (ite (and (is-Elem!303 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) (= (key!361 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) x!26901)) (value!4896 (union!308 (bag!906 l1!364) (bag!906 (t!47254 l2!357)))) 0))))

(assert (= (and d!52589 c!13567) b!62052))

(assert (= (and d!52589 (not c!13567)) b!62053))

(declare-fun bs!37335 () Bool)

(declare-fun m!67834 () Bool)

(assert (= bs!37335 m!67834))

(assert (=> bs!37335 s!1905))

(assert (=> bs!37335 s!1907))

(assert (=> b!62052 m!67834))

(declare-fun bs!37336 () Bool)

(declare-fun m!67836 () Bool)

(assert (= bs!37336 m!67836))

(assert (=> bs!37336 s!1905))

(assert (=> bs!37336 s!1907))

(assert (=> b!62052 m!67836))

(assert (=> bs!37308 d!52589))

(declare-fun d!52591 () Bool)

(declare-fun lt!11443 () Int)

(assert (=> d!52591 (>= lt!11443 0)))

(declare-fun e!33201 () Int)

(assert (=> d!52591 (= lt!11443 e!33201)))

(declare-fun c!13568 () Bool)

(assert (=> d!52591 (= c!13568 (is-Nil!525 (t!47254 (t!47254 l1!364))))))

(assert (=> d!52591 (= (size!525 (t!47254 (t!47254 l1!364))) lt!11443)))

(declare-fun b!62054 () Bool)

(assert (=> b!62054 (= e!33201 0)))

(declare-fun b!62055 () Bool)

(assert (=> b!62055 (= e!33201 (+ 1 (size!525 (t!47254 (t!47254 (t!47254 l1!364))))))))

(assert (= (and d!52591 c!13568) b!62054))

(assert (= (and d!52591 (not c!13568)) b!62055))

(declare-fun m!67838 () Bool)

(assert (=> b!62055 m!67838))

(assert (=> b!61976 d!52591))

(declare-fun d!52593 () Bool)

(declare-fun c!13571 () Bool)

(assert (=> d!52593 (= c!13571 (is-Nil!525 lt!11427))))

(declare-fun e!33204 () (Set Int))

(assert (=> d!52593 (= (content!103 lt!11427) e!33204)))

(declare-fun b!62060 () Bool)

(assert (=> b!62060 (= e!33204 (as emptyset (Set Int)))))

(declare-fun b!62061 () Bool)

(assert (=> b!62061 (= e!33204 (union (insert (h!752 lt!11427) (as emptyset (Set Int))) (content!103 (t!47254 lt!11427))))))

(assert (= (and d!52593 c!13571) b!62060))

(assert (= (and d!52593 (not c!13571)) b!62061))

(declare-fun m!67840 () Bool)

(assert (=> b!62061 m!67840))

(declare-fun m!67842 () Bool)

(assert (=> b!62061 m!67842))

(assert (=> d!52487 d!52593))

(declare-fun d!52595 () Bool)

(declare-fun c!13572 () Bool)

(assert (=> d!52595 (= c!13572 (is-Nil!525 l1!364))))

(declare-fun e!33205 () (Set Int))

(assert (=> d!52595 (= (content!103 l1!364) e!33205)))

(declare-fun b!62062 () Bool)

(assert (=> b!62062 (= e!33205 (as emptyset (Set Int)))))

(declare-fun b!62063 () Bool)

(assert (=> b!62063 (= e!33205 (union (insert (h!752 l1!364) (as emptyset (Set Int))) (content!103 (t!47254 l1!364))))))

(assert (= (and d!52595 c!13572) b!62062))

(assert (= (and d!52595 (not c!13572)) b!62063))

(declare-fun m!67844 () Bool)

(assert (=> b!62063 m!67844))

(assert (=> b!62063 m!67802))

(assert (=> d!52487 d!52595))

(declare-fun d!52597 () Bool)

(declare-fun c!13573 () Bool)

(assert (=> d!52597 (= c!13573 (is-Nil!525 (t!47254 l2!357)))))

(declare-fun e!33206 () (Set Int))

(assert (=> d!52597 (= (content!103 (t!47254 l2!357)) e!33206)))

(declare-fun b!62064 () Bool)

(assert (=> b!62064 (= e!33206 (as emptyset (Set Int)))))

(declare-fun b!62065 () Bool)

(assert (=> b!62065 (= e!33206 (union (insert (h!752 (t!47254 l2!357)) (as emptyset (Set Int))) (content!103 (t!47254 (t!47254 l2!357)))))))

(assert (= (and d!52597 c!13573) b!62064))

(assert (= (and d!52597 (not c!13573)) b!62065))

(declare-fun m!67846 () Bool)

(assert (=> b!62065 m!67846))

(declare-fun m!67848 () Bool)

(assert (=> b!62065 m!67848))

(assert (=> d!52487 d!52597))

(declare-fun d!52599 () Bool)

(declare-fun lt!11444 () Int)

(assert (=> d!52599 (>= lt!11444 0)))

(declare-fun e!33207 () Int)

(assert (=> d!52599 (= lt!11444 e!33207)))

(declare-fun c!13574 () Bool)

(assert (=> d!52599 (= c!13574 (is-Nil!525 (t!47254 (t!47254 res!28281))))))

(assert (=> d!52599 (= (size!525 (t!47254 (t!47254 res!28281))) lt!11444)))

(declare-fun b!62066 () Bool)

(assert (=> b!62066 (= e!33207 0)))

(declare-fun b!62067 () Bool)

(assert (=> b!62067 (= e!33207 (+ 1 (size!525 (t!47254 (t!47254 (t!47254 res!28281))))))))

(assert (= (and d!52599 c!13574) b!62066))

(assert (= (and d!52599 (not c!13574)) b!62067))

(declare-fun m!67850 () Bool)

(assert (=> b!62067 m!67850))

(assert (=> b!61982 d!52599))

(assert (=> (and d!52493 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(declare-fun d!52601 () Bool)

(assert (=> (and d!52493 d!52601 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 res!28281)))) (= (h!752 l2!357) (h!752 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52553 (= (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52553 (= (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52553 d!52601 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 res!28281)))) (= (h!752 (t!47254 l1!364)) (h!752 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52541 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52541 (= (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52541 d!52601 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 res!28281)))) (= (h!752 (t!47254 l2!357)) (h!752 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52501 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52501 (= (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52501 d!52601 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 res!28281)))) (= (h!752 res!28281) (h!752 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52483 d!52601 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 res!28281)))) (= (h!752 l1!364) (h!752 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52601 (= (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52601 (= (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> (and d!52601 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 (t!47254 res!28281)))) (= (h!752 (t!47254 res!28281)) (h!752 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))))))

(assert (=> d!52601 (= (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (Sum!305 (bag!906 (t!47254 (t!47254 res!28281))) (Elem!303 (h!752 (t!47254 res!28281)) 1)))))

(assert (=> b!61968 d!52601))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 (t!47254 res!28281))))))

(declare-fun d!52603 () Bool)

(assert (=> (and d!52453 d!52603 (= l1!364 (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52527 d!52603 (= (ite lt!11414 (t!47254 l1!364) l1!364) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52515 d!52603 (= lt!11415 (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52531 (= (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52531 d!52603 (= lt!11423 (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52603 (= (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52603 (= (t!47254 (t!47254 res!28281)) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52503 d!52603 (= (t!47254 res!28281) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52463 d!52603 (= res!28281 (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52555 (= (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52555 d!52603 (= (t!47254 (t!47254 l1!364)) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52543 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52543 d!52603 (= (t!47254 (t!47254 l2!357)) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52485 d!52603 (= (t!47254 l1!364) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52495 d!52603 (= (t!47254 l2!357) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52529 d!52603 (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 (t!47254 res!28281))))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 (t!47254 res!28281))))))

(assert (=> (and d!52459 d!52603 (= l2!357 (t!47254 (t!47254 res!28281)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 (t!47254 res!28281))))))

(declare-fun c!13575 () Bool)

(assert (=> d!52603 (= c!13575 (is-Nil!525 (t!47254 (t!47254 res!28281))))))

(declare-fun e!33208 () Bag!595)

(assert (=> d!52603 (= (bag!906 (t!47254 (t!47254 res!28281))) e!33208)))

(declare-fun b!62068 () Bool)

(assert (=> b!62068 (= e!33208 Leaf!397)))

(declare-fun b!62069 () Bool)

(assert (=> b!62069 (= e!33208 (add!309 (bag!906 (t!47254 (t!47254 (t!47254 res!28281)))) (h!752 (t!47254 (t!47254 res!28281)))))))

(assert (= (and d!52603 c!13575) b!62068))

(assert (= (and d!52603 (not c!13575)) b!62069))

(declare-fun m!67852 () Bool)

(assert (=> b!62069 m!67852))

(assert (=> b!62069 m!67852))

(declare-fun m!67854 () Bool)

(assert (=> b!62069 m!67854))

(assert (=> b!61968 d!52603))

(declare-fun d!52605 () Bool)

(declare-fun res!28855 () Bool)

(declare-fun e!33209 () Bool)

(assert (=> d!52605 (=> res!28855 e!33209)))

(assert (=> d!52605 (= res!28855 (not (and (is-Cons!524 (t!47254 (t!47254 res!28281))) (is-Cons!524 (t!47254 (t!47254 (t!47254 res!28281)))))))))

(assert (=> d!52605 (= (isSorted!3 (t!47254 (t!47254 res!28281))) e!33209)))

(declare-fun b!62070 () Bool)

(declare-fun e!33210 () Bool)

(assert (=> b!62070 (= e!33209 e!33210)))

(declare-fun res!28856 () Bool)

(assert (=> b!62070 (=> (not res!28856) (not e!33210))))

(assert (=> b!62070 (= res!28856 (<= (h!752 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 (t!47254 (t!47254 res!28281))))))))

(declare-fun b!62071 () Bool)

(assert (=> b!62071 (= e!33210 (isSorted!3 (t!47254 (t!47254 (t!47254 res!28281)))))))

(assert (= (and d!52605 (not res!28855)) b!62070))

(assert (= (and b!62070 res!28856) b!62071))

(declare-fun m!67856 () Bool)

(assert (=> b!62071 m!67856))

(assert (=> b!61980 d!52605))

(declare-fun d!52607 () Bool)

(declare-fun res!28857 () Bool)

(declare-fun e!33211 () Bool)

(assert (=> d!52607 (=> res!28857 e!33211)))

(assert (=> d!52607 (= res!28857 (not (and (is-Cons!524 (t!47254 lt!11415)) (is-Cons!524 (t!47254 (t!47254 lt!11415))))))))

(assert (=> d!52607 (= (isSorted!3 (t!47254 lt!11415)) e!33211)))

(declare-fun b!62072 () Bool)

(declare-fun e!33212 () Bool)

(assert (=> b!62072 (= e!33211 e!33212)))

(declare-fun res!28858 () Bool)

(assert (=> b!62072 (=> (not res!28858) (not e!33212))))

(assert (=> b!62072 (= res!28858 (<= (h!752 (t!47254 lt!11415)) (h!752 (t!47254 (t!47254 lt!11415)))))))

(declare-fun b!62073 () Bool)

(assert (=> b!62073 (= e!33212 (isSorted!3 (t!47254 (t!47254 lt!11415))))))

(assert (= (and d!52607 (not res!28857)) b!62072))

(assert (= (and b!62072 res!28858) b!62073))

(declare-fun m!67858 () Bool)

(assert (=> b!62073 m!67858))

(assert (=> b!61974 d!52607))

(assert (=> (and d!52493 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52493 (= (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(declare-fun d!52609 () Bool)

(assert (=> (and d!52493 d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 lt!11415))) (= (h!752 l2!357) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l2!357)) (h!752 l2!357)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52553 (= (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52553 (= (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52553 d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 lt!11415))) (= (h!752 (t!47254 l1!364)) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l1!364))) (h!752 (t!47254 l1!364))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52541 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52541 (= (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52541 d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 lt!11415))) (= (h!752 (t!47254 l2!357)) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 l2!357))) (h!752 (t!47254 l2!357))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52501 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52501 (= (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52501 d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 lt!11415))) (= (h!752 res!28281) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 res!28281)) (h!752 res!28281)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52609 (= (bag!906 (t!47254 lt!11415)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 lt!11415)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52609 (= (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 lt!11415)) (bag!906 (t!47254 lt!11415))) (= (h!752 lt!11415) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52483 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52483 (= (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52483 d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 lt!11415))) (= (h!752 l1!364) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 l1!364)) (h!752 l1!364)) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52601 (= (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52601 (= (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> (and d!52601 d!52609 (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 lt!11415))) (= (h!752 (t!47254 res!28281)) (h!752 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (add!309 (bag!906 (t!47254 (t!47254 res!28281))) (h!752 (t!47254 res!28281))) (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)))))

(assert (=> d!52609 (= (add!309 (bag!906 (t!47254 lt!11415)) (h!752 lt!11415)) (Sum!305 (bag!906 (t!47254 lt!11415)) (Elem!303 (h!752 lt!11415) 1)))))

(assert (=> b!61978 d!52609))

(assert (=> (and d!52453 (= (bag!906 l1!364) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 lt!11415)))))

(declare-fun d!52611 () Bool)

(assert (=> (and d!52453 d!52611 (= l1!364 (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l1!364) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52527 (= (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52527 d!52611 (= (ite lt!11414 (t!47254 l1!364) l1!364) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l1!364) l1!364)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52515 (= (bag!906 lt!11415) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52515 d!52611 (= lt!11415 (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11415) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52531 (= (bag!906 lt!11423) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52531 d!52611 (= lt!11423 (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 lt!11423) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52603 (= (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52603 d!52611 (= (t!47254 (t!47254 res!28281)) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 res!28281))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52611 (= (bag!906 (t!47254 lt!11415)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 lt!11415)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52611 (= (t!47254 lt!11415) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 lt!11415)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52503 (= (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52503 d!52611 (= (t!47254 res!28281) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 res!28281)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52463 (= (bag!906 res!28281) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52463 d!52611 (= res!28281 (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 res!28281) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52555 (= (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52555 d!52611 (= (t!47254 (t!47254 l1!364)) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l1!364))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52543 (= (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52543 d!52611 (= (t!47254 (t!47254 l2!357)) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 (t!47254 l2!357))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52485 (= (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52485 d!52611 (= (t!47254 l1!364) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l1!364)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52495 (= (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52495 d!52611 (= (t!47254 l2!357) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (t!47254 l2!357)) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52529 (= (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52529 d!52611 (= (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357))) (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 (ite lt!11414 (t!47254 l2!357) (t!47254 (t!47254 l2!357)))) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52459 (= (bag!906 l2!357) (bag!906 (t!47254 lt!11415)))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 lt!11415)))))

(assert (=> (and d!52459 d!52611 (= l2!357 (t!47254 lt!11415))) (dynLambda!939 |eqBag[BigInt]!13| (bag!906 l2!357) (bag!906 (t!47254 lt!11415)))))

(declare-fun c!13576 () Bool)

(assert (=> d!52611 (= c!13576 (is-Nil!525 (t!47254 lt!11415)))))

(declare-fun e!33213 () Bag!595)

(assert (=> d!52611 (= (bag!906 (t!47254 lt!11415)) e!33213)))

(declare-fun b!62074 () Bool)

(assert (=> b!62074 (= e!33213 Leaf!397)))

(declare-fun b!62075 () Bool)

(assert (=> b!62075 (= e!33213 (add!309 (bag!906 (t!47254 (t!47254 lt!11415))) (h!752 (t!47254 lt!11415))))))

(assert (= (and d!52611 c!13576) b!62074))

(assert (= (and d!52611 (not c!13576)) b!62075))

(declare-fun m!67860 () Bool)

(assert (=> b!62075 m!67860))

(assert (=> b!62075 m!67860))

(declare-fun m!67862 () Bool)

(assert (=> b!62075 m!67862))

(assert (=> b!61978 d!52611))

(assert (=> m!67672 s!1905))

(assert (=> m!67660 s!1905))

(assert (=> m!67704 s!1905))

(assert (=> m!67674 s!1905))

(assert (=> m!67658 s!1905))

(assert (=> m!67702 s!1905))

(assert (=> m!67662 s!1905))

(assert (=> m!67656 s!1905))

(assert (=> m!67670 s!1905))

(assert (=> m!67668 s!1905))

(assert (=> m!67672 s!1907))

(assert (=> m!67556 s!1907))

(assert (=> m!67660 s!1907))

(assert (=> m!67704 s!1907))

(assert (=> m!67554 s!1907))

(assert (=> m!67584 s!1907))

(assert (=> m!67578 s!1907))

(assert (=> m!67674 s!1907))

(assert (=> m!67586 s!1907))

(assert (=> m!67576 s!1907))

(assert (=> m!67658 s!1907))

(assert (=> m!67702 s!1907))

(assert (=> m!67662 s!1907))

(assert (=> m!67656 s!1907))

(assert (=> m!67670 s!1907))

(assert (=> m!67668 s!1907))

(push 1)

(assert (not b!61986))

(assert (not b!61989))

(assert (not b!61987))

(assert (not b!62048))

(assert (not b!62069))

(assert (not b!61997))

(assert (not b!62067))

(assert (not b!62041))

(assert (not b!62075))

(assert (not d!52571))

(assert (not b!62005))

(assert (not b!62046))

(assert (not b!62063))

(assert (not b!62024))

(assert (not b!62009))

(assert (not b!62052))

(assert (not b!62030))

(assert (not b!62001))

(assert (not b!61988))

(assert (not b!62007))

(assert (not b!62071))

(assert (not b!62050))

(assert (not b!61995))

(assert (not b!62034))

(assert (not b!62013))

(assert (not b!62033))

(assert (not b!62017))

(assert (not b!62055))

(assert (not d!52523))

(assert (not b!62014))

(assert (not b!62038))

(assert (not b!61985))

(assert (not b!62036))

(assert (not b!62028))

(assert (not b!62003))

(assert (not b!61993))

(assert (not b!61991))

(assert (not b!62011))

(assert (not b!62018))

(assert (not b!61999))

(assert (not d!52551))

(assert (not b!62045))

(assert (not b!62020))

(assert (not b!62061))

(assert (not b!62022))

(assert (not b!62065))

(assert (not b!62027))

(assert (not b!62073))

(assert (not b!62043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

