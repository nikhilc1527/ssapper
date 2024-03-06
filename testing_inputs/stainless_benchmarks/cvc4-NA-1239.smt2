; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8828 () Bool)

(assert start!8828)

(declare-fun b!61464 () Bool)

(declare-fun m!66968 () Bool)

(assert (=> b!61464 m!66968))

(declare-fun m!66970 () Bool)

(assert (=> b!61464 m!66970))

(declare-fun m!66972 () Bool)

(assert (=> b!61464 m!66972))

(assert (=> b!61464 m!66970))

(assert (=> b!61464 m!66972))

(declare-fun m!66974 () Bool)

(assert (=> b!61464 m!66974))

(declare-fun x!26839 () Int)

(declare-fun inst!449 () Bool)

(declare-datatypes () ((List!555 (Cons!520 (h!748 Int) (t!47250 List!555)) (Nil!521))))

(declare-datatypes () ((tuple2!310 (tuple2!311 (_1!182 List!555) (_2!182 List!555)))))

(declare-fun res!28288 () tuple2!310)

(declare-fun list!641 () List!555)

(declare-datatypes () ((Bag!593 (Sum!303 (left!1394 Bag!593) (right!1397 Bag!593)) (Elem!301 (key!359 Int) (value!4894 Int)) (Leaf!395))))

(declare-fun get!603 (Bag!593 Int) Int)

(declare-fun union!306 (Bag!593 Bag!593) Bag!593)

(declare-fun bag!900 (List!555) Bag!593)

(assert (=> b!61464 (= inst!449 (=> true (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (bag!900 list!641) x!26839))))))

(declare-fun m!66976 () Bool)

(assert (=> b!61464 m!66976))

(declare-fun m!66978 () Bool)

(assert (=> b!61464 m!66978))

(declare-fun b!61458 () Bool)

(declare-fun res!28626 () Bool)

(declare-fun e!32864 () Bool)

(assert (=> b!61458 (=> (not res!28626) (not e!32864))))

(declare-fun e!32863 () Bool)

(assert (=> b!61458 (= res!28626 e!32863)))

(declare-fun res!28625 () Bool)

(assert (=> b!61458 (=> res!28625 e!32863)))

(assert (=> b!61458 (= res!28625 (not (is-Cons!520 list!641)))))

(declare-fun res!28628 () Bool)

(assert (=> start!8828 (=> (not res!28628) (not e!32864))))

(declare-fun size!523 (List!555) Int)

(assert (=> start!8828 (= res!28628 (> (size!523 list!641) 1))))

(assert (=> start!8828 e!32864))

(assert (=> start!8828 true))

(declare-fun b!61459 () Bool)

(assert (=> b!61459 (= e!32863 (> (size!523 (t!47250 list!641)) 2))))

(declare-fun b!61460 () Bool)

(declare-fun e!32865 () Bool)

(assert (=> b!61460 (= e!32864 e!32865)))

(declare-fun res!28624 () Bool)

(assert (=> b!61460 (=> res!28624 e!32865)))

(assert (=> b!61460 (= res!28624 (not (= (+ (size!523 (_1!182 res!28288)) (size!523 (_2!182 res!28288))) (size!523 list!641))))))

(declare-fun b!61461 () Bool)

(declare-fun res!28623 () Bool)

(assert (=> b!61461 (=> (not res!28623) (not e!32864))))

(declare-fun x$1!836 () tuple2!310)

(declare-fun split!1 (List!555) tuple2!310)

(assert (=> b!61461 (= res!28623 (= x$1!836 (split!1 (t!47250 (t!47250 list!641)))))))

(declare-fun b!61462 () Bool)

(declare-fun res!28629 () Bool)

(assert (=> b!61462 (=> res!28629 e!32865)))

(assert (=> b!61462 (= res!28629 (<= (size!523 (_1!182 res!28288)) 0))))

(declare-fun b!61463 () Bool)

(declare-fun res!28622 () Bool)

(assert (=> b!61463 (=> (not res!28622) (not e!32864))))

(declare-fun s1!79 () List!555)

(declare-fun s2!78 () List!555)

(assert (=> b!61463 (= res!28622 (and (= s1!79 (_1!182 x$1!836)) (= s2!78 (_2!182 x$1!836)) (= res!28288 (tuple2!311 (Cons!520 (h!748 list!641) s1!79) (Cons!520 (h!748 (t!47250 list!641)) s2!78)))))))

(assert (=> b!61464 (= e!32865 (not inst!449))))

(declare-fun b!61465 () Bool)

(declare-fun res!28627 () Bool)

(assert (=> b!61465 (=> res!28627 e!32865)))

(assert (=> b!61465 (= res!28627 (<= (size!523 (_2!182 res!28288)) 0))))

(assert (= (and start!8828 res!28628) b!61458))

(assert (= (and b!61458 (not res!28625)) b!61459))

(assert (= (and b!61458 res!28626) b!61461))

(assert (= (and b!61461 res!28623) b!61463))

(assert (= (and b!61463 res!28622) b!61460))

(assert (= (and b!61460 (not res!28624)) b!61462))

(assert (= (and b!61462 (not res!28629)) b!61465))

(assert (= (and b!61465 (not res!28627)) b!61464))

(declare-fun m!66980 () Bool)

(assert (=> b!61462 m!66980))

(declare-fun m!66982 () Bool)

(assert (=> start!8828 m!66982))

(declare-fun m!66984 () Bool)

(assert (=> b!61459 m!66984))

(declare-fun m!66986 () Bool)

(assert (=> b!61465 m!66986))

(declare-fun m!66988 () Bool)

(assert (=> b!61461 m!66988))

(assert (=> b!61460 m!66980))

(assert (=> b!61460 m!66986))

(assert (=> b!61460 m!66982))

(push 1)

(assert (not start!8828))

(assert (not b!61461))

(assert (not b!61465))

(assert (not b!61460))

(assert (not b!61464))

(assert (not b!61459))

(assert (not b!61462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52149 () Bool)

(declare-fun lt!11348 () Int)

(assert (=> d!52149 (>= lt!11348 0)))

(declare-fun e!32868 () Int)

(assert (=> d!52149 (= lt!11348 e!32868)))

(declare-fun c!13383 () Bool)

(assert (=> d!52149 (= c!13383 (is-Nil!521 (_1!182 res!28288)))))

(assert (=> d!52149 (= (size!523 (_1!182 res!28288)) lt!11348)))

(declare-fun b!61470 () Bool)

(assert (=> b!61470 (= e!32868 0)))

(declare-fun b!61471 () Bool)

(assert (=> b!61471 (= e!32868 (+ 1 (size!523 (t!47250 (_1!182 res!28288)))))))

(assert (= (and d!52149 c!13383) b!61470))

(assert (= (and d!52149 (not c!13383)) b!61471))

(declare-fun m!66990 () Bool)

(assert (=> b!61471 m!66990))

(assert (=> b!61462 d!52149))

(declare-fun d!52151 () Bool)

(declare-fun |eqBag[BigInt]!9| () Int)

(declare-fun dynLambda!937 (Int Bag!593 Bag!593) Bool)

(assert (=> (and d!52151 (= (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 res!28288)))))

(assert (=> (and d!52151 (= (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 res!28288)))))

(assert (=> (and d!52151 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> (and d!52151 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 res!28288))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> d!52151 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (Sum!303 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> b!61464 d!52151))

(declare-fun d!52153 () Bool)

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 res!28288)))))

(assert (=> (and d!52153 (= (_2!182 res!28288) (_2!182 res!28288))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 res!28288)))))

(declare-fun c!13386 () Bool)

(assert (=> d!52153 (= c!13386 (is-Nil!521 (_2!182 res!28288)))))

(declare-fun e!32871 () Bag!593)

(assert (=> d!52153 (= (bag!900 (_2!182 res!28288)) e!32871)))

(declare-fun b!61476 () Bool)

(assert (=> b!61476 (= e!32871 Leaf!395)))

(declare-fun b!61477 () Bool)

(declare-fun add!307 (Bag!593 Int) Bag!593)

(assert (=> b!61477 (= e!32871 (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(assert (= (and d!52153 c!13386) b!61476))

(assert (= (and d!52153 (not c!13386)) b!61477))

(declare-fun m!66992 () Bool)

(assert (=> b!61477 m!66992))

(assert (=> b!61477 m!66992))

(declare-fun m!66994 () Bool)

(assert (=> b!61477 m!66994))

(assert (=> b!61464 d!52153))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 res!28288)))))

(declare-fun d!52155 () Bool)

(assert (=> (and d!52153 d!52155 (= (_2!182 res!28288) (_1!182 res!28288))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 res!28288)))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 res!28288)))))

(assert (=> (and d!52155 (= (_1!182 res!28288) (_1!182 res!28288))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 res!28288)))))

(declare-fun c!13387 () Bool)

(assert (=> d!52155 (= c!13387 (is-Nil!521 (_1!182 res!28288)))))

(declare-fun e!32872 () Bag!593)

(assert (=> d!52155 (= (bag!900 (_1!182 res!28288)) e!32872)))

(declare-fun b!61478 () Bool)

(assert (=> b!61478 (= e!32872 Leaf!395)))

(declare-fun b!61479 () Bool)

(assert (=> b!61479 (= e!32872 (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))))))

(assert (= (and d!52155 c!13387) b!61478))

(assert (= (and d!52155 (not c!13387)) b!61479))

(declare-fun m!66996 () Bool)

(assert (=> b!61479 m!66996))

(assert (=> b!61479 m!66996))

(declare-fun m!66998 () Bool)

(assert (=> b!61479 m!66998))

(assert (=> b!61464 d!52155))

(declare-fun d!52157 () Bool)

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> (and d!52157 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839))))

(declare-fun c!13390 () Bool)

(assert (=> d!52157 (= c!13390 (is-Sum!303 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(declare-fun e!32875 () Int)

(assert (=> d!52157 (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) e!32875)))

(declare-fun b!61484 () Bool)

(assert (=> b!61484 (= e!32875 (+ (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839)))))

(declare-fun b!61485 () Bool)

(assert (=> b!61485 (= e!32875 (ite (and (is-Elem!301 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (= (key!359 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839)) (value!4894 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) 0))))

(assert (= (and d!52157 c!13390) b!61484))

(assert (= (and d!52157 (not c!13390)) b!61485))

(declare-fun m!67000 () Bool)

(assert (=> b!61484 m!67000))

(declare-fun m!67002 () Bool)

(assert (=> b!61484 m!67002))

(assert (=> b!61464 d!52157))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 list!641))))

(declare-fun d!52159 () Bool)

(assert (=> (and d!52153 d!52159 (= (_2!182 res!28288) list!641)) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 list!641))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 list!641))))

(assert (=> (and d!52155 d!52159 (= (_1!182 res!28288) list!641)) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 list!641))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 list!641))))

(assert (=> (and d!52159 (= list!641 list!641)) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 list!641))))

(declare-fun c!13391 () Bool)

(assert (=> d!52159 (= c!13391 (is-Nil!521 list!641))))

(declare-fun e!32876 () Bag!593)

(assert (=> d!52159 (= (bag!900 list!641) e!32876)))

(declare-fun b!61486 () Bool)

(assert (=> b!61486 (= e!32876 Leaf!395)))

(declare-fun b!61487 () Bool)

(assert (=> b!61487 (= e!32876 (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))))

(assert (= (and d!52159 c!13391) b!61486))

(assert (= (and d!52159 (not c!13391)) b!61487))

(declare-fun m!67004 () Bool)

(assert (=> b!61487 m!67004))

(assert (=> b!61487 m!67004))

(declare-fun m!67006 () Bool)

(assert (=> b!61487 m!67006))

(assert (=> b!61464 d!52159))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (bag!900 list!641))))

(declare-fun d!52161 () Bool)

(assert (=> (and d!52157 d!52161 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (bag!900 list!641)) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (bag!900 list!641) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 list!641))))

(assert (=> (and d!52161 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 list!641)) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (bag!900 list!641) x!26839))))

(declare-fun c!13392 () Bool)

(assert (=> d!52161 (= c!13392 (is-Sum!303 (bag!900 list!641)))))

(declare-fun e!32877 () Int)

(assert (=> d!52161 (= (get!603 (bag!900 list!641) x!26839) e!32877)))

(declare-fun b!61488 () Bool)

(assert (=> b!61488 (= e!32877 (+ (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839)))))

(declare-fun b!61489 () Bool)

(assert (=> b!61489 (= e!32877 (ite (and (is-Elem!301 (bag!900 list!641)) (= (key!359 (bag!900 list!641)) x!26839)) (value!4894 (bag!900 list!641)) 0))))

(assert (= (and d!52161 c!13392) b!61488))

(assert (= (and d!52161 (not c!13392)) b!61489))

(declare-fun m!67008 () Bool)

(assert (=> b!61488 m!67008))

(declare-fun m!67010 () Bool)

(assert (=> b!61488 m!67010))

(assert (=> b!61464 d!52161))

(declare-fun d!52163 () Bool)

(declare-fun lt!11349 () Int)

(assert (=> d!52163 (>= lt!11349 0)))

(declare-fun e!32878 () Int)

(assert (=> d!52163 (= lt!11349 e!32878)))

(declare-fun c!13393 () Bool)

(assert (=> d!52163 (= c!13393 (is-Nil!521 (t!47250 list!641)))))

(assert (=> d!52163 (= (size!523 (t!47250 list!641)) lt!11349)))

(declare-fun b!61490 () Bool)

(assert (=> b!61490 (= e!32878 0)))

(declare-fun b!61491 () Bool)

(assert (=> b!61491 (= e!32878 (+ 1 (size!523 (t!47250 (t!47250 list!641)))))))

(assert (= (and d!52163 c!13393) b!61490))

(assert (= (and d!52163 (not c!13393)) b!61491))

(declare-fun m!67012 () Bool)

(assert (=> b!61491 m!67012))

(assert (=> b!61459 d!52163))

(declare-fun d!52165 () Bool)

(declare-fun lt!11350 () Int)

(assert (=> d!52165 (>= lt!11350 0)))

(declare-fun e!32879 () Int)

(assert (=> d!52165 (= lt!11350 e!32879)))

(declare-fun c!13394 () Bool)

(assert (=> d!52165 (= c!13394 (is-Nil!521 (_2!182 res!28288)))))

(assert (=> d!52165 (= (size!523 (_2!182 res!28288)) lt!11350)))

(declare-fun b!61492 () Bool)

(assert (=> b!61492 (= e!32879 0)))

(declare-fun b!61493 () Bool)

(assert (=> b!61493 (= e!32879 (+ 1 (size!523 (t!47250 (_2!182 res!28288)))))))

(assert (= (and d!52165 c!13394) b!61492))

(assert (= (and d!52165 (not c!13394)) b!61493))

(declare-fun m!67014 () Bool)

(assert (=> b!61493 m!67014))

(assert (=> b!61465 d!52165))

(assert (=> b!61460 d!52149))

(assert (=> b!61460 d!52165))

(declare-fun d!52167 () Bool)

(declare-fun lt!11351 () Int)

(assert (=> d!52167 (>= lt!11351 0)))

(declare-fun e!32880 () Int)

(assert (=> d!52167 (= lt!11351 e!32880)))

(declare-fun c!13395 () Bool)

(assert (=> d!52167 (= c!13395 (is-Nil!521 list!641))))

(assert (=> d!52167 (= (size!523 list!641) lt!11351)))

(declare-fun b!61494 () Bool)

(assert (=> b!61494 (= e!32880 0)))

(declare-fun b!61495 () Bool)

(assert (=> b!61495 (= e!32880 (+ 1 (size!523 (t!47250 list!641))))))

(assert (= (and d!52167 c!13395) b!61494))

(assert (= (and d!52167 (not c!13395)) b!61495))

(assert (=> b!61495 m!66984))

(assert (=> b!61460 d!52167))

(declare-fun b!61513 () Bool)

(declare-fun m!67016 () Bool)

(assert (=> b!61513 m!67016))

(declare-fun m!67018 () Bool)

(assert (=> b!61513 m!67018))

(declare-fun m!67020 () Bool)

(assert (=> b!61513 m!67020))

(assert (=> b!61513 m!67018))

(assert (=> b!61513 m!67020))

(declare-fun m!67022 () Bool)

(assert (=> b!61513 m!67022))

(declare-fun bs!37245 () Bool)

(declare-fun lt!11354 () tuple2!310)

(assert (=> (and bs!37245 (= (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> (and bs!37245 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 list!641))))

(assert (= bs!37245 (and b!61513 b!61464)))

(assert (=> (and bs!37245 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 list!641))) (= true inst!449)))

(declare-fun b!61508 () Bool)

(declare-fun e!32889 () Bool)

(assert (=> b!61508 (= e!32889 (<= (size!523 (t!47250 (t!47250 (t!47250 list!641)))) 2))))

(declare-fun b!61509 () Bool)

(declare-fun e!32887 () tuple2!310)

(assert (=> b!61509 (= e!32887 (tuple2!311 (Cons!520 (h!748 (t!47250 (t!47250 list!641))) (_1!182 (split!1 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 list!641)))) (_2!182 (split!1 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))))

(declare-fun d!52169 () Bool)

(declare-fun e!32888 () Bool)

(assert (=> d!52169 e!32888))

(declare-fun res!28641 () Bool)

(assert (=> d!52169 (=> (not res!28641) (not e!32888))))

(assert (=> d!52169 (= res!28641 (= (+ (size!523 (_1!182 lt!11354)) (size!523 (_2!182 lt!11354))) (size!523 (t!47250 (t!47250 list!641)))))))

(assert (=> d!52169 (= lt!11354 e!32887)))

(declare-fun c!13398 () Bool)

(assert (=> d!52169 (= c!13398 e!32889)))

(declare-fun res!28642 () Bool)

(assert (=> d!52169 (=> (not res!28642) (not e!32889))))

(assert (=> d!52169 (= res!28642 (is-Cons!520 (t!47250 (t!47250 list!641))))))

(assert (=> d!52169 (> (size!523 (t!47250 (t!47250 list!641))) 1)))

(assert (=> d!52169 (= (split!1 (t!47250 (t!47250 list!641))) lt!11354)))

(declare-fun b!61510 () Bool)

(declare-fun res!28640 () Bool)

(assert (=> b!61510 (=> (not res!28640) (not e!32888))))

(assert (=> b!61510 (= res!28640 (> (size!523 (_1!182 lt!11354)) 0))))

(declare-fun b!61511 () Bool)

(assert (=> b!61511 (= e!32887 (tuple2!311 (Cons!520 (h!748 (t!47250 (t!47250 list!641))) Nil!521) (t!47250 (t!47250 (t!47250 list!641)))))))

(declare-fun b!61512 () Bool)

(declare-fun res!28639 () Bool)

(assert (=> b!61512 (=> (not res!28639) (not e!32888))))

(assert (=> b!61512 (= res!28639 (> (size!523 (_2!182 lt!11354)) 0))))

(assert (=> b!61513 (= e!32888 true)))

(assert (= (and d!52169 res!28642) b!61508))

(assert (= (and d!52169 c!13398) b!61511))

(assert (= (and d!52169 (not c!13398)) b!61509))

(assert (= (and d!52169 res!28641) b!61510))

(assert (= (and b!61510 res!28640) b!61512))

(assert (= (and b!61512 res!28639) b!61513))

(declare-fun m!67024 () Bool)

(assert (=> b!61508 m!67024))

(declare-fun m!67026 () Bool)

(assert (=> b!61509 m!67026))

(declare-fun m!67028 () Bool)

(assert (=> b!61510 m!67028))

(assert (=> d!52169 m!67028))

(declare-fun m!67030 () Bool)

(assert (=> d!52169 m!67030))

(assert (=> d!52169 m!67012))

(assert (=> b!61512 m!67030))

(assert (=> b!61461 d!52169))

(assert (=> start!8828 d!52167))

(push 1)

(assert (not b!61493))

(assert (not b!61491))

(assert (not b!61488))

(assert (not b!61484))

(assert (not b!61471))

(assert (not b!61495))

(assert (not b!61509))

(assert (not b!61477))

(assert (not b!61479))

(assert (not b!61513))

(assert (not b!61512))

(assert (not b!61508))

(assert (not b!61510))

(assert (not b!61487))

(assert (not d!52169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52171 () Bool)

(declare-fun lt!11355 () Int)

(assert (=> d!52171 (>= lt!11355 0)))

(declare-fun e!32890 () Int)

(assert (=> d!52171 (= lt!11355 e!32890)))

(declare-fun c!13399 () Bool)

(assert (=> d!52171 (= c!13399 (is-Nil!521 (t!47250 (_2!182 res!28288))))))

(assert (=> d!52171 (= (size!523 (t!47250 (_2!182 res!28288))) lt!11355)))

(declare-fun b!61514 () Bool)

(assert (=> b!61514 (= e!32890 0)))

(declare-fun b!61515 () Bool)

(assert (=> b!61515 (= e!32890 (+ 1 (size!523 (t!47250 (t!47250 (_2!182 res!28288))))))))

(assert (= (and d!52171 c!13399) b!61514))

(assert (= (and d!52171 (not c!13399)) b!61515))

(declare-fun m!67032 () Bool)

(assert (=> b!61515 m!67032))

(assert (=> b!61493 d!52171))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(declare-fun d!52173 () Bool)

(assert (=> (and d!52157 d!52173 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(assert (=> (and d!52161 d!52173 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(assert (=> (and d!52173 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(declare-fun c!13400 () Bool)

(assert (=> d!52173 (= c!13400 (is-Sum!303 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(declare-fun e!32891 () Int)

(assert (=> d!52173 (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) e!32891)))

(declare-fun b!61516 () Bool)

(assert (=> b!61516 (= e!32891 (+ (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839)))))

(declare-fun b!61517 () Bool)

(assert (=> b!61517 (= e!32891 (ite (and (is-Elem!301 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= (key!359 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839)) (value!4894 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) 0))))

(assert (= (and d!52173 c!13400) b!61516))

(assert (= (and d!52173 (not c!13400)) b!61517))

(declare-fun m!67034 () Bool)

(assert (=> b!61516 m!67034))

(declare-fun m!67036 () Bool)

(assert (=> b!61516 m!67036))

(assert (=> b!61484 d!52173))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(declare-fun d!52175 () Bool)

(assert (=> (and d!52157 d!52175 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(assert (=> (and d!52161 d!52175 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(assert (=> (and d!52173 d!52175 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))

(assert (=> (and d!52175 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839))))

(declare-fun c!13401 () Bool)

(assert (=> d!52175 (= c!13401 (is-Sum!303 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(declare-fun e!32892 () Int)

(assert (=> d!52175 (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) e!32892)))

(declare-fun b!61518 () Bool)

(assert (=> b!61518 (= e!32892 (+ (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839)))))

(declare-fun b!61519 () Bool)

(assert (=> b!61519 (= e!32892 (ite (and (is-Elem!301 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (= (key!359 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839)) (value!4894 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) 0))))

(assert (= (and d!52175 c!13401) b!61518))

(assert (= (and d!52175 (not c!13401)) b!61519))

(declare-fun m!67038 () Bool)

(assert (=> b!61518 m!67038))

(declare-fun m!67040 () Bool)

(assert (=> b!61518 m!67040))

(assert (=> b!61484 d!52175))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 list!641))))))

(declare-fun d!52177 () Bool)

(assert (=> (and d!52153 d!52177 (= (_2!182 res!28288) (t!47250 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52177 (= (t!47250 (t!47250 list!641)) (t!47250 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52155 d!52177 (= (_1!182 res!28288) (t!47250 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52159 d!52177 (= list!641 (t!47250 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 list!641))))))

(declare-fun c!13402 () Bool)

(assert (=> d!52177 (= c!13402 (is-Nil!521 (t!47250 (t!47250 list!641))))))

(declare-fun e!32893 () Bag!593)

(assert (=> d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) e!32893)))

(declare-fun b!61520 () Bool)

(assert (=> b!61520 (= e!32893 Leaf!395)))

(declare-fun b!61521 () Bool)

(assert (=> b!61521 (= e!32893 (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (= (and d!52177 c!13402) b!61520))

(assert (= (and d!52177 (not c!13402)) b!61521))

(declare-fun m!67042 () Bool)

(assert (=> b!61521 m!67042))

(assert (=> b!61521 m!67042))

(declare-fun m!67044 () Bool)

(assert (=> b!61521 m!67044))

(assert (=> b!61513 d!52177))

(declare-fun d!52179 () Bool)

(assert (=> (and d!52179 (= (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52179 (= (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52179 (= (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52179 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52151 (= (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52151 (= (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52151 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52151 d!52179 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> d!52179 (= (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (Sum!303 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> b!61513 d!52179))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 lt!11354)))))

(declare-fun d!52181 () Bool)

(assert (=> (and d!52153 d!52181 (= (_2!182 res!28288) (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52181 (= (_1!182 lt!11354) (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52177 d!52181 (= (t!47250 (t!47250 list!641)) (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52155 d!52181 (= (_1!182 res!28288) (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_1!182 lt!11354)))))

(assert (=> (and d!52159 d!52181 (= list!641 (_1!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_1!182 lt!11354)))))

(declare-fun c!13403 () Bool)

(assert (=> d!52181 (= c!13403 (is-Nil!521 (_1!182 lt!11354)))))

(declare-fun e!32894 () Bag!593)

(assert (=> d!52181 (= (bag!900 (_1!182 lt!11354)) e!32894)))

(declare-fun b!61522 () Bool)

(assert (=> b!61522 (= e!32894 Leaf!395)))

(declare-fun b!61523 () Bool)

(assert (=> b!61523 (= e!32894 (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (= (and d!52181 c!13403) b!61522))

(assert (= (and d!52181 (not c!13403)) b!61523))

(declare-fun m!67046 () Bool)

(assert (=> b!61523 m!67046))

(assert (=> b!61523 m!67046))

(declare-fun m!67048 () Bool)

(assert (=> b!61523 m!67048))

(assert (=> b!61513 d!52181))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11354)))))

(declare-fun d!52183 () Bool)

(assert (=> (and d!52153 d!52183 (= (_2!182 res!28288) (_2!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52181 d!52183 (= (_1!182 lt!11354) (_2!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52177 d!52183 (= (t!47250 (t!47250 list!641)) (_2!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52183 (= (_2!182 lt!11354) (_2!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52155 d!52183 (= (_1!182 res!28288) (_2!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_2!182 lt!11354)))))

(assert (=> (and d!52159 d!52183 (= list!641 (_2!182 lt!11354))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_2!182 lt!11354)))))

(declare-fun c!13404 () Bool)

(assert (=> d!52183 (= c!13404 (is-Nil!521 (_2!182 lt!11354)))))

(declare-fun e!32895 () Bag!593)

(assert (=> d!52183 (= (bag!900 (_2!182 lt!11354)) e!32895)))

(declare-fun b!61524 () Bool)

(assert (=> b!61524 (= e!32895 Leaf!395)))

(declare-fun b!61525 () Bool)

(assert (=> b!61525 (= e!32895 (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (= (and d!52183 c!13404) b!61524))

(assert (= (and d!52183 (not c!13404)) b!61525))

(declare-fun m!67050 () Bool)

(assert (=> b!61525 m!67050))

(assert (=> b!61525 m!67050))

(declare-fun m!67052 () Bool)

(assert (=> b!61525 m!67052))

(assert (=> b!61513 d!52183))

(assert (=> b!61495 d!52163))

(declare-fun d!52185 () Bool)

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))))))

(assert (=> (and d!52185 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 res!28288)))) (= (h!748 (_1!182 res!28288)) (h!748 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))))))

(assert (=> d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (Sum!303 (bag!900 (t!47250 (_1!182 res!28288))) (Elem!301 (h!748 (_1!182 res!28288)) 1)))))

(assert (=> b!61479 d!52185))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_1!182 res!28288))))))

(declare-fun d!52187 () Bool)

(assert (=> (and d!52153 d!52187 (= (_2!182 res!28288) (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52181 d!52187 (= (_1!182 lt!11354) (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52177 d!52187 (= (t!47250 (t!47250 list!641)) (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52183 d!52187 (= (_2!182 lt!11354) (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52187 (= (t!47250 (_1!182 res!28288)) (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52155 d!52187 (= (_1!182 res!28288) (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_1!182 res!28288))))))

(assert (=> (and d!52159 d!52187 (= list!641 (t!47250 (_1!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_1!182 res!28288))))))

(declare-fun c!13405 () Bool)

(assert (=> d!52187 (= c!13405 (is-Nil!521 (t!47250 (_1!182 res!28288))))))

(declare-fun e!32896 () Bag!593)

(assert (=> d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) e!32896)))

(declare-fun b!61526 () Bool)

(assert (=> b!61526 (= e!32896 Leaf!395)))

(declare-fun b!61527 () Bool)

(assert (=> b!61527 (= e!32896 (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (= (and d!52187 c!13405) b!61526))

(assert (= (and d!52187 (not c!13405)) b!61527))

(declare-fun m!67054 () Bool)

(assert (=> b!61527 m!67054))

(assert (=> b!61527 m!67054))

(declare-fun m!67056 () Bool)

(assert (=> b!61527 m!67056))

(assert (=> b!61479 d!52187))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (bag!900 list!641)))))

(declare-fun d!52189 () Bool)

(assert (=> (and d!52157 d!52189 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (left!1394 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (left!1394 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (bag!900 list!641)))))

(assert (=> (and d!52161 d!52189 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (left!1394 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (bag!900 list!641)))))

(assert (=> (and d!52173 d!52189 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (bag!900 list!641)))))

(assert (=> (and d!52175 d!52189 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (left!1394 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (bag!900 list!641)))))

(assert (=> (and d!52189 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (left!1394 (bag!900 list!641)) x!26839))))

(declare-fun c!13406 () Bool)

(assert (=> d!52189 (= c!13406 (is-Sum!303 (left!1394 (bag!900 list!641))))))

(declare-fun e!32897 () Int)

(assert (=> d!52189 (= (get!603 (left!1394 (bag!900 list!641)) x!26839) e!32897)))

(declare-fun b!61528 () Bool)

(assert (=> b!61528 (= e!32897 (+ (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839)))))

(declare-fun b!61529 () Bool)

(assert (=> b!61529 (= e!32897 (ite (and (is-Elem!301 (left!1394 (bag!900 list!641))) (= (key!359 (left!1394 (bag!900 list!641))) x!26839)) (value!4894 (left!1394 (bag!900 list!641))) 0))))

(assert (= (and d!52189 c!13406) b!61528))

(assert (= (and d!52189 (not c!13406)) b!61529))

(declare-fun m!67058 () Bool)

(assert (=> b!61528 m!67058))

(declare-fun m!67060 () Bool)

(assert (=> b!61528 m!67060))

(assert (=> b!61488 d!52189))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (bag!900 list!641)))))

(declare-fun d!52191 () Bool)

(assert (=> (and d!52157 d!52191 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (right!1397 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (bag!900 list!641)))))

(assert (=> (and d!52161 d!52191 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (bag!900 list!641)))))

(assert (=> (and d!52173 d!52191 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (right!1397 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (bag!900 list!641)))))

(assert (=> (and d!52191 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (bag!900 list!641)))))

(assert (=> (and d!52175 d!52191 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (right!1397 (bag!900 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (bag!900 list!641)))))

(assert (=> (and d!52189 d!52191 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (bag!900 list!641))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (right!1397 (bag!900 list!641)) x!26839))))

(declare-fun c!13407 () Bool)

(assert (=> d!52191 (= c!13407 (is-Sum!303 (right!1397 (bag!900 list!641))))))

(declare-fun e!32898 () Int)

(assert (=> d!52191 (= (get!603 (right!1397 (bag!900 list!641)) x!26839) e!32898)))

(declare-fun b!61530 () Bool)

(assert (=> b!61530 (= e!32898 (+ (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839)))))

(declare-fun b!61531 () Bool)

(assert (=> b!61531 (= e!32898 (ite (and (is-Elem!301 (right!1397 (bag!900 list!641))) (= (key!359 (right!1397 (bag!900 list!641))) x!26839)) (value!4894 (right!1397 (bag!900 list!641))) 0))))

(assert (= (and d!52191 c!13407) b!61530))

(assert (= (and d!52191 (not c!13407)) b!61531))

(declare-fun m!67062 () Bool)

(assert (=> b!61530 m!67062))

(declare-fun m!67064 () Bool)

(assert (=> b!61530 m!67064))

(assert (=> b!61488 d!52191))

(declare-fun d!52193 () Bool)

(declare-fun lt!11356 () Int)

(assert (=> d!52193 (>= lt!11356 0)))

(declare-fun e!32899 () Int)

(assert (=> d!52193 (= lt!11356 e!32899)))

(declare-fun c!13408 () Bool)

(assert (=> d!52193 (= c!13408 (is-Nil!521 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> d!52193 (= (size!523 (t!47250 (t!47250 (t!47250 list!641)))) lt!11356)))

(declare-fun b!61532 () Bool)

(assert (=> b!61532 (= e!32899 0)))

(declare-fun b!61533 () Bool)

(assert (=> b!61533 (= e!32899 (+ 1 (size!523 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))

(assert (= (and d!52193 c!13408) b!61532))

(assert (= (and d!52193 (not c!13408)) b!61533))

(declare-fun m!67066 () Bool)

(assert (=> b!61533 m!67066))

(assert (=> b!61508 d!52193))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))))

(declare-fun d!52195 () Bool)

(assert (=> (and d!52185 d!52195 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 list!641))) (= (h!748 (_1!182 res!28288)) (h!748 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))))

(assert (=> (and d!52195 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 list!641))) (= (h!748 list!641) (h!748 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)))))

(assert (=> d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (Sum!303 (bag!900 (t!47250 list!641)) (Elem!301 (h!748 list!641) 1)))))

(assert (=> b!61487 d!52195))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 list!641)))))

(declare-fun d!52197 () Bool)

(assert (=> (and d!52153 d!52197 (= (_2!182 res!28288) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52197 (= (t!47250 list!641) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52181 d!52197 (= (_1!182 lt!11354) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52177 d!52197 (= (t!47250 (t!47250 list!641)) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52183 d!52197 (= (_2!182 lt!11354) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52187 d!52197 (= (t!47250 (_1!182 res!28288)) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52155 d!52197 (= (_1!182 res!28288) (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 list!641)))))

(assert (=> (and d!52159 d!52197 (= list!641 (t!47250 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 list!641)))))

(declare-fun c!13409 () Bool)

(assert (=> d!52197 (= c!13409 (is-Nil!521 (t!47250 list!641)))))

(declare-fun e!32900 () Bag!593)

(assert (=> d!52197 (= (bag!900 (t!47250 list!641)) e!32900)))

(declare-fun b!61534 () Bool)

(assert (=> b!61534 (= e!32900 Leaf!395)))

(declare-fun b!61535 () Bool)

(assert (=> b!61535 (= e!32900 (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (= (and d!52197 c!13409) b!61534))

(assert (= (and d!52197 (not c!13409)) b!61535))

(assert (=> b!61535 m!67016))

(assert (=> b!61535 m!67016))

(declare-fun m!67068 () Bool)

(assert (=> b!61535 m!67068))

(assert (=> b!61487 d!52197))

(declare-fun d!52199 () Bool)

(declare-fun lt!11357 () Int)

(assert (=> d!52199 (>= lt!11357 0)))

(declare-fun e!32901 () Int)

(assert (=> d!52199 (= lt!11357 e!32901)))

(declare-fun c!13410 () Bool)

(assert (=> d!52199 (= c!13410 (is-Nil!521 (t!47250 (_1!182 res!28288))))))

(assert (=> d!52199 (= (size!523 (t!47250 (_1!182 res!28288))) lt!11357)))

(declare-fun b!61536 () Bool)

(assert (=> b!61536 (= e!32901 0)))

(declare-fun b!61537 () Bool)

(assert (=> b!61537 (= e!32901 (+ 1 (size!523 (t!47250 (t!47250 (_1!182 res!28288))))))))

(assert (= (and d!52199 c!13410) b!61536))

(assert (= (and d!52199 (not c!13410)) b!61537))

(declare-fun m!67070 () Bool)

(assert (=> b!61537 m!67070))

(assert (=> b!61471 d!52199))

(declare-fun d!52201 () Bool)

(declare-fun lt!11358 () Int)

(assert (=> d!52201 (>= lt!11358 0)))

(declare-fun e!32902 () Int)

(assert (=> d!52201 (= lt!11358 e!32902)))

(declare-fun c!13411 () Bool)

(assert (=> d!52201 (= c!13411 (is-Nil!521 (t!47250 (t!47250 list!641))))))

(assert (=> d!52201 (= (size!523 (t!47250 (t!47250 list!641))) lt!11358)))

(declare-fun b!61538 () Bool)

(assert (=> b!61538 (= e!32902 0)))

(declare-fun b!61539 () Bool)

(assert (=> b!61539 (= e!32902 (+ 1 (size!523 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (= (and d!52201 c!13411) b!61538))

(assert (= (and d!52201 (not c!13411)) b!61539))

(assert (=> b!61539 m!67024))

(assert (=> b!61491 d!52201))

(declare-fun d!52203 () Bool)

(declare-fun lt!11359 () Int)

(assert (=> d!52203 (>= lt!11359 0)))

(declare-fun e!32903 () Int)

(assert (=> d!52203 (= lt!11359 e!32903)))

(declare-fun c!13412 () Bool)

(assert (=> d!52203 (= c!13412 (is-Nil!521 (_1!182 lt!11354)))))

(assert (=> d!52203 (= (size!523 (_1!182 lt!11354)) lt!11359)))

(declare-fun b!61540 () Bool)

(assert (=> b!61540 (= e!32903 0)))

(declare-fun b!61541 () Bool)

(assert (=> b!61541 (= e!32903 (+ 1 (size!523 (t!47250 (_1!182 lt!11354)))))))

(assert (= (and d!52203 c!13412) b!61540))

(assert (= (and d!52203 (not c!13412)) b!61541))

(declare-fun m!67072 () Bool)

(assert (=> b!61541 m!67072))

(assert (=> d!52169 d!52203))

(declare-fun d!52205 () Bool)

(declare-fun lt!11360 () Int)

(assert (=> d!52205 (>= lt!11360 0)))

(declare-fun e!32904 () Int)

(assert (=> d!52205 (= lt!11360 e!32904)))

(declare-fun c!13413 () Bool)

(assert (=> d!52205 (= c!13413 (is-Nil!521 (_2!182 lt!11354)))))

(assert (=> d!52205 (= (size!523 (_2!182 lt!11354)) lt!11360)))

(declare-fun b!61542 () Bool)

(assert (=> b!61542 (= e!32904 0)))

(declare-fun b!61543 () Bool)

(assert (=> b!61543 (= e!32904 (+ 1 (size!523 (t!47250 (_2!182 lt!11354)))))))

(assert (= (and d!52205 c!13413) b!61542))

(assert (= (and d!52205 (not c!13413)) b!61543))

(declare-fun m!67074 () Bool)

(assert (=> b!61543 m!67074))

(assert (=> d!52169 d!52205))

(assert (=> d!52169 d!52201))

(assert (=> b!61510 d!52203))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(declare-fun d!52207 () Bool)

(assert (=> (and d!52185 d!52207 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288)))) (= (h!748 (_1!182 res!28288)) (h!748 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(assert (=> (and d!52195 d!52207 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 res!28288)))) (= (h!748 list!641) (h!748 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(assert (=> (and d!52207 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288)))) (= (h!748 (_2!182 res!28288)) (h!748 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))))))

(assert (=> d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (Sum!303 (bag!900 (t!47250 (_2!182 res!28288))) (Elem!301 (h!748 (_2!182 res!28288)) 1)))))

(assert (=> b!61477 d!52207))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_2!182 res!28288))))))

(declare-fun d!52209 () Bool)

(assert (=> (and d!52153 d!52209 (= (_2!182 res!28288) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52197 d!52209 (= (t!47250 list!641) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52209 (= (t!47250 (_2!182 res!28288)) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52181 d!52209 (= (_1!182 lt!11354) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52177 d!52209 (= (t!47250 (t!47250 list!641)) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52183 d!52209 (= (_2!182 lt!11354) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52187 d!52209 (= (t!47250 (_1!182 res!28288)) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52155 d!52209 (= (_1!182 res!28288) (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_2!182 res!28288))))))

(assert (=> (and d!52159 d!52209 (= list!641 (t!47250 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_2!182 res!28288))))))

(declare-fun c!13414 () Bool)

(assert (=> d!52209 (= c!13414 (is-Nil!521 (t!47250 (_2!182 res!28288))))))

(declare-fun e!32905 () Bag!593)

(assert (=> d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) e!32905)))

(declare-fun b!61544 () Bool)

(assert (=> b!61544 (= e!32905 Leaf!395)))

(declare-fun b!61545 () Bool)

(assert (=> b!61545 (= e!32905 (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (= (and d!52209 c!13414) b!61544))

(assert (= (and d!52209 (not c!13414)) b!61545))

(declare-fun m!67076 () Bool)

(assert (=> b!61545 m!67076))

(assert (=> b!61545 m!67076))

(declare-fun m!67078 () Bool)

(assert (=> b!61545 m!67078))

(assert (=> b!61477 d!52209))

(assert (=> b!61512 d!52205))

(declare-fun b!61551 () Bool)

(declare-fun m!67080 () Bool)

(assert (=> b!61551 m!67080))

(declare-fun m!67082 () Bool)

(assert (=> b!61551 m!67082))

(declare-fun m!67084 () Bool)

(assert (=> b!61551 m!67084))

(assert (=> b!61551 m!67082))

(assert (=> b!61551 m!67084))

(declare-fun m!67086 () Bool)

(assert (=> b!61551 m!67086))

(declare-fun bs!37246 () Bool)

(declare-fun lt!11361 () tuple2!310)

(assert (=> (and bs!37246 (= (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and bs!37246 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 list!641))))))

(declare-fun bs!37247 () Bool)

(assert (=> (and bs!37247 (= (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> (and bs!37247 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 list!641))))

(assert (= bs!37246 (and b!61551 b!61513)))

(assert (=> (and bs!37246 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 list!641))))) (= true true)))

(assert (= bs!37247 (and b!61551 b!61464)))

(assert (=> (and bs!37247 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 list!641))) (= true inst!449)))

(declare-fun b!61546 () Bool)

(declare-fun e!32908 () Bool)

(assert (=> b!61546 (= e!32908 (<= (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) 2))))

(declare-fun b!61547 () Bool)

(declare-fun e!32906 () tuple2!310)

(assert (=> b!61547 (= e!32906 (tuple2!311 (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (_1!182 (split!1 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))) (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (_2!182 (split!1 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))))))

(declare-fun d!52211 () Bool)

(declare-fun e!32907 () Bool)

(assert (=> d!52211 e!32907))

(declare-fun res!28645 () Bool)

(assert (=> d!52211 (=> (not res!28645) (not e!32907))))

(assert (=> d!52211 (= res!28645 (= (+ (size!523 (_1!182 lt!11361)) (size!523 (_2!182 lt!11361))) (size!523 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))

(assert (=> d!52211 (= lt!11361 e!32906)))

(declare-fun c!13415 () Bool)

(assert (=> d!52211 (= c!13415 e!32908)))

(declare-fun res!28646 () Bool)

(assert (=> d!52211 (=> (not res!28646) (not e!32908))))

(assert (=> d!52211 (= res!28646 (is-Cons!520 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> d!52211 (> (size!523 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) 1)))

(assert (=> d!52211 (= (split!1 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) lt!11361)))

(declare-fun b!61548 () Bool)

(declare-fun res!28644 () Bool)

(assert (=> b!61548 (=> (not res!28644) (not e!32907))))

(assert (=> b!61548 (= res!28644 (> (size!523 (_1!182 lt!11361)) 0))))

(declare-fun b!61549 () Bool)

(assert (=> b!61549 (= e!32906 (tuple2!311 (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) Nil!521) (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))

(declare-fun b!61550 () Bool)

(declare-fun res!28643 () Bool)

(assert (=> b!61550 (=> (not res!28643) (not e!32907))))

(assert (=> b!61550 (= res!28643 (> (size!523 (_2!182 lt!11361)) 0))))

(assert (=> b!61551 (= e!32907 true)))

(assert (= (and d!52211 res!28646) b!61546))

(assert (= (and d!52211 c!13415) b!61549))

(assert (= (and d!52211 (not c!13415)) b!61547))

(assert (= (and d!52211 res!28645) b!61548))

(assert (= (and b!61548 res!28644) b!61550))

(assert (= (and b!61550 res!28643) b!61551))

(declare-fun m!67088 () Bool)

(assert (=> b!61546 m!67088))

(declare-fun m!67090 () Bool)

(assert (=> b!61547 m!67090))

(declare-fun m!67092 () Bool)

(assert (=> b!61548 m!67092))

(assert (=> d!52211 m!67092))

(declare-fun m!67094 () Bool)

(assert (=> d!52211 m!67094))

(assert (=> d!52211 m!67066))

(assert (=> b!61550 m!67094))

(assert (=> b!61509 d!52211))

(declare-fun s!1897 () Bool)

(declare-fun bs!37248 () Bool)

(assert (= bs!37248 (and b!61513 s!1897 d!52169 b!61510 b!61512)))

(assert (=> bs!37248 (=> true (= (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839)))))

(declare-fun m!67096 () Bool)

(assert (=> m!67008 m!67096))

(declare-fun m!67098 () Bool)

(assert (=> m!67008 m!67098))

(assert (=> m!67008 s!1897))

(assert (=> m!67000 s!1897))

(assert (=> m!67002 s!1897))

(assert (=> m!67010 s!1897))

(assert (=> m!66978 s!1897))

(assert (=> m!66976 s!1897))

(push 1)

(assert (not b!61535))

(assert (not b!61533))

(assert (not b!61528))

(assert (not b!61551))

(assert (not b!61516))

(assert (not bs!37248))

(assert (not b!61525))

(assert (not b!61515))

(assert (not b!61541))

(assert (not b!61539))

(assert (not b!61547))

(assert (not b!61545))

(assert (not d!52211))

(assert (not b!61530))

(assert (not b!61521))

(assert (not b!61523))

(assert (not b!61537))

(assert (not b!61543))

(assert (not b!61550))

(assert (not b!61548))

(assert (not b!61518))

(assert (not b!61546))

(assert (not b!61527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> m!67098 s!1897))

(assert (=> m!67096 s!1897))

(declare-fun bs!37249 () Bool)

(declare-fun s!1899 () Bool)

(assert (= bs!37249 (and d!52211 b!61548 b!61551 s!1899 b!61550)))

(assert (=> bs!37249 (=> true (= (get!603 (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) x!26839)))))

(declare-fun m!67100 () Bool)

(assert (=> m!67098 m!67100))

(declare-fun m!67102 () Bool)

(assert (=> m!67098 m!67102))

(assert (=> m!67098 s!1899))

(assert (=> m!67096 s!1899))

(push 1)

(assert (not b!61535))

(assert (not b!61533))

(assert (not b!61528))

(assert (not b!61551))

(assert (not b!61516))

(assert (not bs!37248))

(assert (not b!61525))

(assert (not b!61515))

(assert (not b!61541))

(assert (not b!61539))

(assert (not b!61547))

(assert (not b!61545))

(assert (not d!52211))

(assert (not b!61530))

(assert (not b!61521))

(assert (not b!61523))

(assert (not b!61537))

(assert (not bs!37249))

(assert (not b!61543))

(assert (not b!61550))

(assert (not b!61548))

(assert (not b!61518))

(assert (not b!61546))

(assert (not b!61527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52213 () Bool)

(declare-fun lt!11362 () Int)

(assert (=> d!52213 (>= lt!11362 0)))

(declare-fun e!32909 () Int)

(assert (=> d!52213 (= lt!11362 e!32909)))

(declare-fun c!13416 () Bool)

(assert (=> d!52213 (= c!13416 (is-Nil!521 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> d!52213 (= (size!523 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) lt!11362)))

(declare-fun b!61552 () Bool)

(assert (=> b!61552 (= e!32909 0)))

(declare-fun b!61553 () Bool)

(assert (=> b!61553 (= e!32909 (+ 1 (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))))

(assert (= (and d!52213 c!13416) b!61552))

(assert (= (and d!52213 (not c!13416)) b!61553))

(assert (=> b!61553 m!67088))

(assert (=> b!61533 d!52213))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(declare-fun d!52215 () Bool)

(assert (=> (and d!52157 d!52215 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52161 d!52215 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52173 d!52215 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52191 d!52215 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52215 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52175 d!52215 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52189 d!52215 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(declare-fun c!13417 () Bool)

(assert (=> d!52215 (= c!13417 (is-Sum!303 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))))

(declare-fun e!32910 () Int)

(assert (=> d!52215 (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) e!32910)))

(declare-fun b!61554 () Bool)

(assert (=> b!61554 (= e!32910 (+ (get!603 (left!1394 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839) (get!603 (right!1397 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)))))

(declare-fun b!61555 () Bool)

(assert (=> b!61555 (= e!32910 (ite (and (is-Elem!301 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= (key!359 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)) (value!4894 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) 0))))

(assert (= (and d!52215 c!13417) b!61554))

(assert (= (and d!52215 (not c!13417)) b!61555))

(declare-fun bs!37250 () Bool)

(declare-fun m!67104 () Bool)

(assert (= bs!37250 m!67104))

(assert (=> bs!37250 s!1897))

(assert (=> bs!37250 s!1899))

(assert (=> b!61554 m!67104))

(declare-fun bs!37251 () Bool)

(declare-fun m!67106 () Bool)

(assert (= bs!37251 m!67106))

(assert (=> bs!37251 s!1897))

(assert (=> bs!37251 s!1899))

(assert (=> b!61554 m!67106))

(assert (=> b!61516 d!52215))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(declare-fun d!52217 () Bool)

(assert (=> (and d!52157 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52217 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52161 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52173 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52191 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52215 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52175 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52189 d!52217 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(declare-fun c!13418 () Bool)

(assert (=> d!52217 (= c!13418 (is-Sum!303 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))))

(declare-fun e!32911 () Int)

(assert (=> d!52217 (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) e!32911)))

(declare-fun b!61556 () Bool)

(assert (=> b!61556 (= e!32911 (+ (get!603 (left!1394 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839) (get!603 (right!1397 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)))))

(declare-fun b!61557 () Bool)

(assert (=> b!61557 (= e!32911 (ite (and (is-Elem!301 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= (key!359 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)) (value!4894 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) 0))))

(assert (= (and d!52217 c!13418) b!61556))

(assert (= (and d!52217 (not c!13418)) b!61557))

(declare-fun bs!37252 () Bool)

(declare-fun m!67108 () Bool)

(assert (= bs!37252 m!67108))

(assert (=> bs!37252 s!1897))

(assert (=> bs!37252 s!1899))

(assert (=> b!61556 m!67108))

(declare-fun bs!37253 () Bool)

(declare-fun m!67110 () Bool)

(assert (= bs!37253 m!67110))

(assert (=> bs!37253 s!1897))

(assert (=> bs!37253 s!1899))

(assert (=> b!61556 m!67110))

(assert (=> b!61516 d!52217))

(declare-fun d!52219 () Bool)

(declare-fun lt!11363 () Int)

(assert (=> d!52219 (>= lt!11363 0)))

(declare-fun e!32912 () Int)

(assert (=> d!52219 (= lt!11363 e!32912)))

(declare-fun c!13419 () Bool)

(assert (=> d!52219 (= c!13419 (is-Nil!521 (_1!182 lt!11361)))))

(assert (=> d!52219 (= (size!523 (_1!182 lt!11361)) lt!11363)))

(declare-fun b!61558 () Bool)

(assert (=> b!61558 (= e!32912 0)))

(declare-fun b!61559 () Bool)

(assert (=> b!61559 (= e!32912 (+ 1 (size!523 (t!47250 (_1!182 lt!11361)))))))

(assert (= (and d!52219 c!13419) b!61558))

(assert (= (and d!52219 (not c!13419)) b!61559))

(declare-fun m!67112 () Bool)

(assert (=> b!61559 m!67112))

(assert (=> d!52211 d!52219))

(declare-fun d!52221 () Bool)

(declare-fun lt!11364 () Int)

(assert (=> d!52221 (>= lt!11364 0)))

(declare-fun e!32913 () Int)

(assert (=> d!52221 (= lt!11364 e!32913)))

(declare-fun c!13420 () Bool)

(assert (=> d!52221 (= c!13420 (is-Nil!521 (_2!182 lt!11361)))))

(assert (=> d!52221 (= (size!523 (_2!182 lt!11361)) lt!11364)))

(declare-fun b!61560 () Bool)

(assert (=> b!61560 (= e!32913 0)))

(declare-fun b!61561 () Bool)

(assert (=> b!61561 (= e!32913 (+ 1 (size!523 (t!47250 (_2!182 lt!11361)))))))

(assert (= (and d!52221 c!13420) b!61560))

(assert (= (and d!52221 (not c!13420)) b!61561))

(declare-fun m!67114 () Bool)

(assert (=> b!61561 m!67114))

(assert (=> d!52211 d!52221))

(assert (=> d!52211 d!52213))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (left!1394 (bag!900 list!641))))))

(declare-fun d!52223 () Bool)

(assert (=> (and d!52157 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52217 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52161 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52173 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52223 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52191 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52215 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52175 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (left!1394 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52189 d!52223 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839))))

(declare-fun c!13421 () Bool)

(assert (=> d!52223 (= c!13421 (is-Sum!303 (left!1394 (left!1394 (bag!900 list!641)))))))

(declare-fun e!32914 () Int)

(assert (=> d!52223 (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) e!32914)))

(declare-fun b!61562 () Bool)

(assert (=> b!61562 (= e!32914 (+ (get!603 (left!1394 (left!1394 (left!1394 (bag!900 list!641)))) x!26839) (get!603 (right!1397 (left!1394 (left!1394 (bag!900 list!641)))) x!26839)))))

(declare-fun b!61563 () Bool)

(assert (=> b!61563 (= e!32914 (ite (and (is-Elem!301 (left!1394 (left!1394 (bag!900 list!641)))) (= (key!359 (left!1394 (left!1394 (bag!900 list!641)))) x!26839)) (value!4894 (left!1394 (left!1394 (bag!900 list!641)))) 0))))

(assert (= (and d!52223 c!13421) b!61562))

(assert (= (and d!52223 (not c!13421)) b!61563))

(declare-fun bs!37254 () Bool)

(declare-fun m!67116 () Bool)

(assert (= bs!37254 m!67116))

(assert (=> bs!37254 s!1897))

(assert (=> bs!37254 s!1899))

(assert (=> b!61562 m!67116))

(declare-fun bs!37255 () Bool)

(declare-fun m!67118 () Bool)

(assert (= bs!37255 m!67118))

(assert (=> bs!37255 s!1897))

(assert (=> bs!37255 s!1899))

(assert (=> b!61562 m!67118))

(assert (=> b!61528 d!52223))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (left!1394 (bag!900 list!641))))))

(declare-fun d!52225 () Bool)

(assert (=> (and d!52157 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52217 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52225 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52161 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52173 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52223 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52191 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52215 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52175 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (right!1397 (left!1394 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (left!1394 (bag!900 list!641))))))

(assert (=> (and d!52189 d!52225 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (left!1394 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839))))

(declare-fun c!13422 () Bool)

(assert (=> d!52225 (= c!13422 (is-Sum!303 (right!1397 (left!1394 (bag!900 list!641)))))))

(declare-fun e!32915 () Int)

(assert (=> d!52225 (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) e!32915)))

(declare-fun b!61564 () Bool)

(assert (=> b!61564 (= e!32915 (+ (get!603 (left!1394 (right!1397 (left!1394 (bag!900 list!641)))) x!26839) (get!603 (right!1397 (right!1397 (left!1394 (bag!900 list!641)))) x!26839)))))

(declare-fun b!61565 () Bool)

(assert (=> b!61565 (= e!32915 (ite (and (is-Elem!301 (right!1397 (left!1394 (bag!900 list!641)))) (= (key!359 (right!1397 (left!1394 (bag!900 list!641)))) x!26839)) (value!4894 (right!1397 (left!1394 (bag!900 list!641)))) 0))))

(assert (= (and d!52225 c!13422) b!61564))

(assert (= (and d!52225 (not c!13422)) b!61565))

(declare-fun bs!37256 () Bool)

(declare-fun m!67120 () Bool)

(assert (= bs!37256 m!67120))

(assert (=> bs!37256 s!1897))

(assert (=> bs!37256 s!1899))

(assert (=> b!61564 m!67120))

(declare-fun bs!37257 () Bool)

(declare-fun m!67122 () Bool)

(assert (= bs!37257 m!67122))

(assert (=> bs!37257 s!1897))

(assert (=> bs!37257 s!1899))

(assert (=> b!61564 m!67122))

(assert (=> b!61528 d!52225))

(assert (=> b!61548 d!52219))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(declare-fun d!52227 () Bool)

(assert (=> (and d!52157 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52217 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52225 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52161 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52227 (= (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52227 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52173 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52223 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52191 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52215 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52175 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52189 d!52227 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(declare-fun c!13423 () Bool)

(assert (=> d!52227 (= c!13423 (is-Sum!303 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))))

(declare-fun e!32916 () Int)

(assert (=> d!52227 (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) e!32916)))

(declare-fun b!61566 () Bool)

(assert (=> b!61566 (= e!32916 (+ (get!603 (left!1394 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839) (get!603 (right!1397 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)))))

(declare-fun b!61567 () Bool)

(assert (=> b!61567 (= e!32916 (ite (and (is-Elem!301 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= (key!359 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)) (value!4894 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) 0))))

(assert (= (and d!52227 c!13423) b!61566))

(assert (= (and d!52227 (not c!13423)) b!61567))

(declare-fun bs!37258 () Bool)

(declare-fun m!67124 () Bool)

(assert (= bs!37258 m!67124))

(assert (=> bs!37258 s!1897))

(assert (=> bs!37258 s!1899))

(assert (=> b!61566 m!67124))

(declare-fun bs!37259 () Bool)

(declare-fun m!67126 () Bool)

(assert (= bs!37259 m!67126))

(assert (=> bs!37259 s!1897))

(assert (=> bs!37259 s!1899))

(assert (=> b!61566 m!67126))

(assert (=> b!61518 d!52227))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(declare-fun d!52229 () Bool)

(assert (=> (and d!52157 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52217 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52225 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52161 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52227 (= (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52227 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52173 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52223 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52191 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52215 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52175 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52189 d!52229 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(assert (=> (and d!52229 (= (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))))

(assert (=> (and d!52229 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839))))

(declare-fun c!13424 () Bool)

(assert (=> d!52229 (= c!13424 (is-Sum!303 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))))))

(declare-fun e!32917 () Int)

(assert (=> d!52229 (= (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) e!32917)))

(declare-fun b!61568 () Bool)

(assert (=> b!61568 (= e!32917 (+ (get!603 (left!1394 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839) (get!603 (right!1397 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)))))

(declare-fun b!61569 () Bool)

(assert (=> b!61569 (= e!32917 (ite (and (is-Elem!301 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) (= (key!359 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) x!26839)) (value!4894 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))))) 0))))

(assert (= (and d!52229 c!13424) b!61568))

(assert (= (and d!52229 (not c!13424)) b!61569))

(declare-fun bs!37260 () Bool)

(declare-fun m!67128 () Bool)

(assert (= bs!37260 m!67128))

(assert (=> bs!37260 s!1897))

(assert (=> bs!37260 s!1899))

(assert (=> b!61568 m!67128))

(declare-fun bs!37261 () Bool)

(declare-fun m!67130 () Bool)

(assert (= bs!37261 m!67130))

(assert (=> bs!37261 s!1897))

(assert (=> bs!37261 s!1899))

(assert (=> b!61568 m!67130))

(assert (=> b!61518 d!52229))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(declare-fun d!52231 () Bool)

(assert (=> (and d!52153 d!52231 (= (_2!182 res!28288) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52197 d!52231 (= (t!47250 list!641) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52209 d!52231 (= (t!47250 (_2!182 res!28288)) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52181 d!52231 (= (_1!182 lt!11354) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52231 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52177 d!52231 (= (t!47250 (t!47250 list!641)) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52183 d!52231 (= (_2!182 lt!11354) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52187 d!52231 (= (t!47250 (_1!182 res!28288)) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52155 d!52231 (= (_1!182 res!28288) (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (=> (and d!52159 d!52231 (= list!641 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(declare-fun c!13425 () Bool)

(assert (=> d!52231 (= c!13425 (is-Nil!521 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(declare-fun e!32918 () Bag!593)

(assert (=> d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) e!32918)))

(declare-fun b!61570 () Bool)

(assert (=> b!61570 (= e!32918 Leaf!395)))

(declare-fun b!61571 () Bool)

(assert (=> b!61571 (= e!32918 (add!307 (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) (h!748 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))

(assert (= (and d!52231 c!13425) b!61570))

(assert (= (and d!52231 (not c!13425)) b!61571))

(declare-fun m!67132 () Bool)

(assert (=> b!61571 m!67132))

(assert (=> b!61571 m!67132))

(declare-fun m!67134 () Bool)

(assert (=> b!61571 m!67134))

(assert (=> b!61551 d!52231))

(assert (=> (and d!52179 (= (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52179 (= (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52179 (= (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(declare-fun d!52233 () Bool)

(assert (=> (and d!52179 d!52233 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> (and d!52233 (= (bag!900 (_1!182 lt!11361)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52233 (= (bag!900 (_2!182 lt!11361)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52233 (= (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> (and d!52233 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> (and d!52151 (= (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52151 (= (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52151 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> (and d!52151 d!52233 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> d!52233 (= (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))) (Sum!303 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> b!61551 d!52233))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 lt!11361)))))

(declare-fun d!52235 () Bool)

(assert (=> (and d!52153 d!52235 (= (_2!182 res!28288) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52197 d!52235 (= (t!47250 list!641) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52209 d!52235 (= (t!47250 (_2!182 res!28288)) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52181 d!52235 (= (_1!182 lt!11354) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52231 d!52235 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52177 d!52235 (= (t!47250 (t!47250 list!641)) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52183 d!52235 (= (_2!182 lt!11354) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52187 d!52235 (= (t!47250 (_1!182 res!28288)) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52155 d!52235 (= (_1!182 res!28288) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52235 (= (_1!182 lt!11361) (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (_1!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_1!182 lt!11361)))))

(assert (=> (and d!52159 d!52235 (= list!641 (_1!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_1!182 lt!11361)))))

(declare-fun c!13426 () Bool)

(assert (=> d!52235 (= c!13426 (is-Nil!521 (_1!182 lt!11361)))))

(declare-fun e!32919 () Bag!593)

(assert (=> d!52235 (= (bag!900 (_1!182 lt!11361)) e!32919)))

(declare-fun b!61572 () Bool)

(assert (=> b!61572 (= e!32919 Leaf!395)))

(declare-fun b!61573 () Bool)

(assert (=> b!61573 (= e!32919 (add!307 (bag!900 (t!47250 (_1!182 lt!11361))) (h!748 (_1!182 lt!11361))))))

(assert (= (and d!52235 c!13426) b!61572))

(assert (= (and d!52235 (not c!13426)) b!61573))

(declare-fun m!67136 () Bool)

(assert (=> b!61573 m!67136))

(assert (=> b!61573 m!67136))

(declare-fun m!67138 () Bool)

(assert (=> b!61573 m!67138))

(assert (=> b!61551 d!52235))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11361)))))

(declare-fun d!52237 () Bool)

(assert (=> (and d!52153 d!52237 (= (_2!182 res!28288) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52197 d!52237 (= (t!47250 list!641) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52209 d!52237 (= (t!47250 (_2!182 res!28288)) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52181 d!52237 (= (_1!182 lt!11354) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52231 d!52237 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52177 d!52237 (= (t!47250 (t!47250 list!641)) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52183 d!52237 (= (_2!182 lt!11354) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52187 d!52237 (= (t!47250 (_1!182 res!28288)) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52237 (= (bag!900 (_2!182 lt!11361)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52237 (= (_2!182 lt!11361) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52155 d!52237 (= (_1!182 res!28288) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52235 d!52237 (= (_1!182 lt!11361) (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_2!182 lt!11361)))))

(assert (=> (and d!52159 d!52237 (= list!641 (_2!182 lt!11361))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (_2!182 lt!11361)))))

(declare-fun c!13427 () Bool)

(assert (=> d!52237 (= c!13427 (is-Nil!521 (_2!182 lt!11361)))))

(declare-fun e!32920 () Bag!593)

(assert (=> d!52237 (= (bag!900 (_2!182 lt!11361)) e!32920)))

(declare-fun b!61574 () Bool)

(assert (=> b!61574 (= e!32920 Leaf!395)))

(declare-fun b!61575 () Bool)

(assert (=> b!61575 (= e!32920 (add!307 (bag!900 (t!47250 (_2!182 lt!11361))) (h!748 (_2!182 lt!11361))))))

(assert (= (and d!52237 c!13427) b!61574))

(assert (= (and d!52237 (not c!13427)) b!61575))

(declare-fun m!67140 () Bool)

(assert (=> b!61575 m!67140))

(assert (=> b!61575 m!67140))

(declare-fun m!67142 () Bool)

(assert (=> b!61575 m!67142))

(assert (=> b!61551 d!52237))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(declare-fun d!52239 () Bool)

(assert (=> (and d!52185 d!52239 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354)))) (= (h!748 (_1!182 res!28288)) (h!748 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> (and d!52239 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> (and d!52239 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_2!182 lt!11354)))) (= (h!748 (_2!182 lt!11354)) (h!748 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> (and d!52195 d!52239 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 lt!11354)))) (= (h!748 list!641) (h!748 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> (and d!52207 d!52239 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354)))) (= (h!748 (_2!182 res!28288)) (h!748 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))))))

(assert (=> d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (Sum!303 (bag!900 (t!47250 (_2!182 lt!11354))) (Elem!301 (h!748 (_2!182 lt!11354)) 1)))))

(assert (=> b!61525 d!52239))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(declare-fun d!52241 () Bool)

(assert (=> (and d!52153 d!52241 (= (_2!182 res!28288) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52197 d!52241 (= (t!47250 list!641) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52209 d!52241 (= (t!47250 (_2!182 res!28288)) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52181 d!52241 (= (_1!182 lt!11354) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52231 d!52241 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52177 d!52241 (= (t!47250 (t!47250 list!641)) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52241 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52241 (= (t!47250 (_2!182 lt!11354)) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52183 d!52241 (= (_2!182 lt!11354) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52187 d!52241 (= (t!47250 (_1!182 res!28288)) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52237 (= (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52237 d!52241 (= (_2!182 lt!11361) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52155 d!52241 (= (_1!182 res!28288) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52235 d!52241 (= (_1!182 lt!11361) (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_2!182 lt!11354))))))

(assert (=> (and d!52159 d!52241 (= list!641 (t!47250 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_2!182 lt!11354))))))

(declare-fun c!13428 () Bool)

(assert (=> d!52241 (= c!13428 (is-Nil!521 (t!47250 (_2!182 lt!11354))))))

(declare-fun e!32921 () Bag!593)

(assert (=> d!52241 (= (bag!900 (t!47250 (_2!182 lt!11354))) e!32921)))

(declare-fun b!61576 () Bool)

(assert (=> b!61576 (= e!32921 Leaf!395)))

(declare-fun b!61577 () Bool)

(assert (=> b!61577 (= e!32921 (add!307 (bag!900 (t!47250 (t!47250 (_2!182 lt!11354)))) (h!748 (t!47250 (_2!182 lt!11354)))))))

(assert (= (and d!52241 c!13428) b!61576))

(assert (= (and d!52241 (not c!13428)) b!61577))

(declare-fun m!67144 () Bool)

(assert (=> b!61577 m!67144))

(assert (=> b!61577 m!67144))

(declare-fun m!67146 () Bool)

(assert (=> b!61577 m!67146))

(assert (=> b!61525 d!52241))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (right!1397 (bag!900 list!641))))))

(declare-fun d!52243 () Bool)

(assert (=> (and d!52157 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52217 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52225 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52161 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52227 (= (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52227 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52173 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52223 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52191 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52243 (= (left!1394 (right!1397 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52243 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52215 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52175 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52189 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52229 (= (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52229 d!52243 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (left!1394 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839))))

(declare-fun c!13429 () Bool)

(assert (=> d!52243 (= c!13429 (is-Sum!303 (left!1394 (right!1397 (bag!900 list!641)))))))

(declare-fun e!32922 () Int)

(assert (=> d!52243 (= (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839) e!32922)))

(declare-fun b!61578 () Bool)

(assert (=> b!61578 (= e!32922 (+ (get!603 (left!1394 (left!1394 (right!1397 (bag!900 list!641)))) x!26839) (get!603 (right!1397 (left!1394 (right!1397 (bag!900 list!641)))) x!26839)))))

(declare-fun b!61579 () Bool)

(assert (=> b!61579 (= e!32922 (ite (and (is-Elem!301 (left!1394 (right!1397 (bag!900 list!641)))) (= (key!359 (left!1394 (right!1397 (bag!900 list!641)))) x!26839)) (value!4894 (left!1394 (right!1397 (bag!900 list!641)))) 0))))

(assert (= (and d!52243 c!13429) b!61578))

(assert (= (and d!52243 (not c!13429)) b!61579))

(declare-fun bs!37262 () Bool)

(declare-fun m!67148 () Bool)

(assert (= bs!37262 m!67148))

(assert (=> bs!37262 s!1897))

(assert (=> bs!37262 s!1899))

(assert (=> b!61578 m!67148))

(declare-fun bs!37263 () Bool)

(declare-fun m!67150 () Bool)

(assert (= bs!37263 m!67150))

(assert (=> bs!37263 s!1897))

(assert (=> bs!37263 s!1899))

(assert (=> b!61578 m!67150))

(assert (=> b!61530 d!52243))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (right!1397 (bag!900 list!641))))))

(declare-fun d!52245 () Bool)

(assert (=> (and d!52157 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52217 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52225 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52161 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52227 (= (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52227 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52245 (= (right!1397 (right!1397 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52245 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52173 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52223 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52191 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52243 (= (left!1394 (right!1397 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52243 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52215 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52175 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52189 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(assert (=> (and d!52229 (= (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641))))))

(assert (=> (and d!52229 d!52245 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (right!1397 (right!1397 (bag!900 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839))))

(declare-fun c!13430 () Bool)

(assert (=> d!52245 (= c!13430 (is-Sum!303 (right!1397 (right!1397 (bag!900 list!641)))))))

(declare-fun e!32923 () Int)

(assert (=> d!52245 (= (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839) e!32923)))

(declare-fun b!61580 () Bool)

(assert (=> b!61580 (= e!32923 (+ (get!603 (left!1394 (right!1397 (right!1397 (bag!900 list!641)))) x!26839) (get!603 (right!1397 (right!1397 (right!1397 (bag!900 list!641)))) x!26839)))))

(declare-fun b!61581 () Bool)

(assert (=> b!61581 (= e!32923 (ite (and (is-Elem!301 (right!1397 (right!1397 (bag!900 list!641)))) (= (key!359 (right!1397 (right!1397 (bag!900 list!641)))) x!26839)) (value!4894 (right!1397 (right!1397 (bag!900 list!641)))) 0))))

(assert (= (and d!52245 c!13430) b!61580))

(assert (= (and d!52245 (not c!13430)) b!61581))

(declare-fun bs!37264 () Bool)

(declare-fun m!67152 () Bool)

(assert (= bs!37264 m!67152))

(assert (=> bs!37264 s!1897))

(assert (=> bs!37264 s!1899))

(assert (=> b!61580 m!67152))

(declare-fun bs!37265 () Bool)

(declare-fun m!67154 () Bool)

(assert (= bs!37265 m!67154))

(assert (=> bs!37265 s!1897))

(assert (=> bs!37265 s!1899))

(assert (=> b!61580 m!67154))

(assert (=> b!61530 d!52245))

(declare-fun b!61587 () Bool)

(declare-fun m!67156 () Bool)

(assert (=> b!61587 m!67156))

(declare-fun m!67158 () Bool)

(assert (=> b!61587 m!67158))

(declare-fun m!67160 () Bool)

(assert (=> b!61587 m!67160))

(assert (=> b!61587 m!67158))

(assert (=> b!61587 m!67160))

(declare-fun m!67162 () Bool)

(assert (=> b!61587 m!67162))

(declare-fun bs!37266 () Bool)

(declare-fun lt!11365 () tuple2!310)

(assert (=> (and bs!37266 (= (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361))))))

(assert (=> (and bs!37266 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))

(declare-fun bs!37267 () Bool)

(assert (=> (and bs!37267 (= (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and bs!37267 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 (t!47250 (t!47250 list!641))))))

(declare-fun bs!37268 () Bool)

(assert (=> (and bs!37268 (= (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))))

(assert (=> (and bs!37268 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 list!641))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 list!641))))

(assert (= bs!37266 (and b!61587 b!61551)))

(assert (=> (and bs!37266 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 lt!11361)) (bag!900 (_2!182 lt!11361)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (= true true)))

(assert (= bs!37267 (and b!61587 b!61513)))

(assert (=> (and bs!37267 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 (t!47250 (t!47250 list!641))))) (= true true)))

(assert (= bs!37268 (and b!61587 b!61464)))

(assert (=> (and bs!37268 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11365)) (bag!900 (_2!182 lt!11365))) (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (bag!900 list!641))) (= true inst!449)))

(declare-fun b!61582 () Bool)

(declare-fun e!32926 () Bool)

(assert (=> b!61582 (= e!32926 (<= (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))) 2))))

(declare-fun b!61583 () Bool)

(declare-fun e!32924 () tuple2!310)

(assert (=> b!61583 (= e!32924 (tuple2!311 (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) (_1!182 (split!1 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))))) (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))) (_2!182 (split!1 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))))))))

(declare-fun d!52247 () Bool)

(declare-fun e!32925 () Bool)

(assert (=> d!52247 e!32925))

(declare-fun res!28649 () Bool)

(assert (=> d!52247 (=> (not res!28649) (not e!32925))))

(assert (=> d!52247 (= res!28649 (= (+ (size!523 (_1!182 lt!11365)) (size!523 (_2!182 lt!11365))) (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))))

(assert (=> d!52247 (= lt!11365 e!32924)))

(declare-fun c!13431 () Bool)

(assert (=> d!52247 (= c!13431 e!32926)))

(declare-fun res!28650 () Bool)

(assert (=> d!52247 (=> (not res!28650) (not e!32926))))

(assert (=> d!52247 (= res!28650 (is-Cons!520 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))))))

(assert (=> d!52247 (> (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) 1)))

(assert (=> d!52247 (= (split!1 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) lt!11365)))

(declare-fun b!61584 () Bool)

(declare-fun res!28648 () Bool)

(assert (=> b!61584 (=> (not res!28648) (not e!32925))))

(assert (=> b!61584 (= res!28648 (> (size!523 (_1!182 lt!11365)) 0))))

(declare-fun b!61585 () Bool)

(assert (=> b!61585 (= e!32924 (tuple2!311 (Cons!520 (h!748 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))))) Nil!521) (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))))

(declare-fun b!61586 () Bool)

(declare-fun res!28647 () Bool)

(assert (=> b!61586 (=> (not res!28647) (not e!32925))))

(assert (=> b!61586 (= res!28647 (> (size!523 (_2!182 lt!11365)) 0))))

(assert (=> b!61587 (= e!32925 true)))

(assert (= (and d!52247 res!28650) b!61582))

(assert (= (and d!52247 c!13431) b!61585))

(assert (= (and d!52247 (not c!13431)) b!61583))

(assert (= (and d!52247 res!28649) b!61584))

(assert (= (and b!61584 res!28648) b!61586))

(assert (= (and b!61586 res!28647) b!61587))

(declare-fun m!67164 () Bool)

(assert (=> b!61582 m!67164))

(declare-fun m!67166 () Bool)

(assert (=> b!61583 m!67166))

(declare-fun m!67168 () Bool)

(assert (=> b!61584 m!67168))

(assert (=> d!52247 m!67168))

(declare-fun m!67170 () Bool)

(assert (=> d!52247 m!67170))

(declare-fun m!67172 () Bool)

(assert (=> d!52247 m!67172))

(assert (=> b!61586 m!67170))

(assert (=> b!61547 d!52247))

(declare-fun d!52249 () Bool)

(declare-fun lt!11366 () Int)

(assert (=> d!52249 (>= lt!11366 0)))

(declare-fun e!32927 () Int)

(assert (=> d!52249 (= lt!11366 e!32927)))

(declare-fun c!13432 () Bool)

(assert (=> d!52249 (= c!13432 (is-Nil!521 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> d!52249 (= (size!523 (t!47250 (t!47250 (_1!182 res!28288)))) lt!11366)))

(declare-fun b!61588 () Bool)

(assert (=> b!61588 (= e!32927 0)))

(declare-fun b!61589 () Bool)

(assert (=> b!61589 (= e!32927 (+ 1 (size!523 (t!47250 (t!47250 (t!47250 (_1!182 res!28288)))))))))

(assert (= (and d!52249 c!13432) b!61588))

(assert (= (and d!52249 (not c!13432)) b!61589))

(declare-fun m!67174 () Bool)

(assert (=> b!61589 m!67174))

(assert (=> b!61537 d!52249))

(declare-fun d!52251 () Bool)

(assert (=> (and d!52251 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52251 (= (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52251 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (t!47250 list!641))))) (= (h!748 (t!47250 (t!47250 list!641))) (h!748 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52185 d!52251 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641))))) (= (h!748 (_1!182 res!28288)) (h!748 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52239 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52239 d!52251 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (t!47250 list!641))))) (= (h!748 (_2!182 lt!11354)) (h!748 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52195 d!52251 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 list!641))))) (= (h!748 list!641) (h!748 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52207 d!52251 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641))))) (= (h!748 (_2!182 res!28288)) (h!748 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))))))

(assert (=> d!52251 (= (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (Sum!303 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (Elem!301 (h!748 (t!47250 (t!47250 list!641))) 1)))))

(assert (=> b!61521 d!52251))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(declare-fun d!52253 () Bool)

(assert (=> (and d!52153 d!52253 (= (_2!182 res!28288) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52197 d!52253 (= (t!47250 list!641) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52253 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52253 (= (t!47250 (t!47250 (t!47250 list!641))) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52209 d!52253 (= (t!47250 (_2!182 res!28288)) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52181 d!52253 (= (_1!182 lt!11354) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52231 d!52253 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52177 d!52253 (= (t!47250 (t!47250 list!641)) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52241 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52241 d!52253 (= (t!47250 (_2!182 lt!11354)) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52183 d!52253 (= (_2!182 lt!11354) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52187 d!52253 (= (t!47250 (_1!182 res!28288)) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52237 (= (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52237 d!52253 (= (_2!182 lt!11361) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52155 d!52253 (= (_1!182 res!28288) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52159 d!52253 (= list!641 (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(assert (=> (and d!52235 d!52253 (= (_1!182 lt!11361) (t!47250 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (t!47250 list!641)))))))

(declare-fun c!13433 () Bool)

(assert (=> d!52253 (= c!13433 (is-Nil!521 (t!47250 (t!47250 (t!47250 list!641)))))))

(declare-fun e!32928 () Bag!593)

(assert (=> d!52253 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) e!32928)))

(declare-fun b!61590 () Bool)

(assert (=> b!61590 (= e!32928 Leaf!395)))

(declare-fun b!61591 () Bool)

(assert (=> b!61591 (= e!32928 (add!307 (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (h!748 (t!47250 (t!47250 (t!47250 list!641))))))))

(assert (= (and d!52253 c!13433) b!61590))

(assert (= (and d!52253 (not c!13433)) b!61591))

(assert (=> b!61591 m!67080))

(assert (=> b!61591 m!67080))

(declare-fun m!67176 () Bool)

(assert (=> b!61591 m!67176))

(assert (=> b!61521 d!52253))

(declare-fun d!52255 () Bool)

(declare-fun lt!11367 () Int)

(assert (=> d!52255 (>= lt!11367 0)))

(declare-fun e!32929 () Int)

(assert (=> d!52255 (= lt!11367 e!32929)))

(declare-fun c!13434 () Bool)

(assert (=> d!52255 (= c!13434 (is-Nil!521 (t!47250 (_2!182 lt!11354))))))

(assert (=> d!52255 (= (size!523 (t!47250 (_2!182 lt!11354))) lt!11367)))

(declare-fun b!61592 () Bool)

(assert (=> b!61592 (= e!32929 0)))

(declare-fun b!61593 () Bool)

(assert (=> b!61593 (= e!32929 (+ 1 (size!523 (t!47250 (t!47250 (_2!182 lt!11354))))))))

(assert (= (and d!52255 c!13434) b!61592))

(assert (= (and d!52255 (not c!13434)) b!61593))

(declare-fun m!67178 () Bool)

(assert (=> b!61593 m!67178))

(assert (=> b!61543 d!52255))

(assert (=> (and d!52251 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52251 (= (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(declare-fun d!52257 () Bool)

(assert (=> (and d!52251 d!52257 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (_1!182 lt!11354)))) (= (h!748 (t!47250 (t!47250 list!641))) (h!748 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52185 d!52257 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354)))) (= (h!748 (_1!182 res!28288)) (h!748 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52239 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52239 d!52257 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354)))) (= (h!748 (_2!182 lt!11354)) (h!748 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52195 d!52257 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_1!182 lt!11354)))) (= (h!748 list!641) (h!748 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52257 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52257 (= (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52257 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354)))) (= (h!748 (_1!182 lt!11354)) (h!748 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> (and d!52207 d!52257 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354)))) (= (h!748 (_2!182 res!28288)) (h!748 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))))))

(assert (=> d!52257 (= (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (Sum!303 (bag!900 (t!47250 (_1!182 lt!11354))) (Elem!301 (h!748 (_1!182 lt!11354)) 1)))))

(assert (=> b!61523 d!52257))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(declare-fun d!52259 () Bool)

(assert (=> (and d!52153 d!52259 (= (_2!182 res!28288) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52197 d!52259 (= (t!47250 list!641) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52253 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52253 d!52259 (= (t!47250 (t!47250 (t!47250 list!641))) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52209 d!52259 (= (t!47250 (_2!182 res!28288)) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52181 d!52259 (= (_1!182 lt!11354) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52231 d!52259 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52177 d!52259 (= (t!47250 (t!47250 list!641)) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52241 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52241 d!52259 (= (t!47250 (_2!182 lt!11354)) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52183 d!52259 (= (_2!182 lt!11354) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52187 d!52259 (= (t!47250 (_1!182 res!28288)) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52237 (= (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52237 d!52259 (= (_2!182 lt!11361) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52259 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52259 (= (t!47250 (_1!182 lt!11354)) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52155 d!52259 (= (_1!182 res!28288) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52159 d!52259 (= list!641 (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (_1!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(assert (=> (and d!52235 d!52259 (= (_1!182 lt!11361) (t!47250 (_1!182 lt!11354)))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (_1!182 lt!11354))))))

(declare-fun c!13435 () Bool)

(assert (=> d!52259 (= c!13435 (is-Nil!521 (t!47250 (_1!182 lt!11354))))))

(declare-fun e!32930 () Bag!593)

(assert (=> d!52259 (= (bag!900 (t!47250 (_1!182 lt!11354))) e!32930)))

(declare-fun b!61594 () Bool)

(assert (=> b!61594 (= e!32930 Leaf!395)))

(declare-fun b!61595 () Bool)

(assert (=> b!61595 (= e!32930 (add!307 (bag!900 (t!47250 (t!47250 (_1!182 lt!11354)))) (h!748 (t!47250 (_1!182 lt!11354)))))))

(assert (= (and d!52259 c!13435) b!61594))

(assert (= (and d!52259 (not c!13435)) b!61595))

(declare-fun m!67180 () Bool)

(assert (=> b!61595 m!67180))

(assert (=> b!61595 m!67180))

(declare-fun m!67182 () Bool)

(assert (=> b!61595 m!67182))

(assert (=> b!61523 d!52259))

(assert (=> (and d!52251 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52251 (= (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(declare-fun d!52261 () Bool)

(assert (=> (and d!52251 d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 (t!47250 (t!47250 list!641))) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52185 d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 (_1!182 res!28288)) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52239 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52239 d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 (_2!182 lt!11354)) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52195 d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 list!641) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52257 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52257 (= (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52257 d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 (_1!182 lt!11354)) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52261 (= (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52261 (= (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 (t!47250 (_2!182 res!28288))) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52207 d!52261 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288))))) (= (h!748 (_2!182 res!28288)) (h!748 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))))))

(assert (=> d!52261 (= (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (Sum!303 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (Elem!301 (h!748 (t!47250 (_2!182 res!28288))) 1)))))

(assert (=> b!61545 d!52261))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(declare-fun d!52263 () Bool)

(assert (=> (and d!52153 d!52263 (= (_2!182 res!28288) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52197 d!52263 (= (t!47250 list!641) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52253 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52253 d!52263 (= (t!47250 (t!47250 (t!47250 list!641))) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52209 d!52263 (= (t!47250 (_2!182 res!28288)) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52181 d!52263 (= (_1!182 lt!11354) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52231 d!52263 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52177 d!52263 (= (t!47250 (t!47250 list!641)) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52241 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52241 d!52263 (= (t!47250 (_2!182 lt!11354)) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52183 d!52263 (= (_2!182 lt!11354) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52187 d!52263 (= (t!47250 (_1!182 res!28288)) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52237 (= (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52237 d!52263 (= (_2!182 lt!11361) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52263 (= (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52263 (= (t!47250 (t!47250 (_2!182 res!28288))) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52259 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52259 d!52263 (= (t!47250 (_1!182 lt!11354)) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52155 d!52263 (= (_1!182 res!28288) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52159 d!52263 (= list!641 (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> (and d!52235 d!52263 (= (_1!182 lt!11361) (t!47250 (t!47250 (_2!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))))))

(declare-fun c!13436 () Bool)

(assert (=> d!52263 (= c!13436 (is-Nil!521 (t!47250 (t!47250 (_2!182 res!28288)))))))

(declare-fun e!32931 () Bag!593)

(assert (=> d!52263 (= (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) e!32931)))

(declare-fun b!61596 () Bool)

(assert (=> b!61596 (= e!32931 Leaf!395)))

(declare-fun b!61597 () Bool)

(assert (=> b!61597 (= e!32931 (add!307 (bag!900 (t!47250 (t!47250 (t!47250 (_2!182 res!28288))))) (h!748 (t!47250 (t!47250 (_2!182 res!28288))))))))

(assert (= (and d!52263 c!13436) b!61596))

(assert (= (and d!52263 (not c!13436)) b!61597))

(declare-fun m!67184 () Bool)

(assert (=> b!61597 m!67184))

(assert (=> b!61597 m!67184))

(declare-fun m!67186 () Bool)

(assert (=> b!61597 m!67186))

(assert (=> b!61545 d!52263))

(declare-fun d!52265 () Bool)

(declare-fun lt!11368 () Int)

(assert (=> d!52265 (>= lt!11368 0)))

(declare-fun e!32932 () Int)

(assert (=> d!52265 (= lt!11368 e!32932)))

(declare-fun c!13437 () Bool)

(assert (=> d!52265 (= c!13437 (is-Nil!521 (t!47250 (_1!182 lt!11354))))))

(assert (=> d!52265 (= (size!523 (t!47250 (_1!182 lt!11354))) lt!11368)))

(declare-fun b!61598 () Bool)

(assert (=> b!61598 (= e!32932 0)))

(declare-fun b!61599 () Bool)

(assert (=> b!61599 (= e!32932 (+ 1 (size!523 (t!47250 (t!47250 (_1!182 lt!11354))))))))

(assert (= (and d!52265 c!13437) b!61598))

(assert (= (and d!52265 (not c!13437)) b!61599))

(declare-fun m!67188 () Bool)

(assert (=> b!61599 m!67188))

(assert (=> b!61541 d!52265))

(assert (=> (and d!52251 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52251 (= (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(declare-fun d!52267 () Bool)

(assert (=> (and d!52251 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (t!47250 (t!47250 list!641))) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52185 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (_1!182 res!28288)) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52239 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52239 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (_2!182 lt!11354)) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52195 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 list!641) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52267 (= (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52267 (= (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (t!47250 (_1!182 res!28288))) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52257 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52257 (= (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52257 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (_1!182 lt!11354)) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52261 (= (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52261 (= (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52261 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (t!47250 (_2!182 res!28288))) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52207 d!52267 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288))))) (= (h!748 (_2!182 res!28288)) (h!748 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))))))

(assert (=> d!52267 (= (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (Sum!303 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (Elem!301 (h!748 (t!47250 (_1!182 res!28288))) 1)))))

(assert (=> b!61527 d!52267))

(assert (=> (and d!52153 (= (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(declare-fun d!52269 () Bool)

(assert (=> (and d!52153 d!52269 (= (_2!182 res!28288) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 res!28288)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52197 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52197 d!52269 (= (t!47250 list!641) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52253 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52253 d!52269 (= (t!47250 (t!47250 (t!47250 list!641))) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52209 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52209 d!52269 (= (t!47250 (_2!182 res!28288)) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52181 (= (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52181 d!52269 (= (_1!182 lt!11354) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52231 (= (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52231 d!52269 (= (t!47250 (t!47250 (t!47250 (t!47250 list!641)))) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 (t!47250 list!641))))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52177 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52177 d!52269 (= (t!47250 (t!47250 list!641)) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52241 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52241 d!52269 (= (t!47250 (_2!182 lt!11354)) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52183 (= (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52183 d!52269 (= (_2!182 lt!11354) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11354)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52269 (= (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52269 (= (t!47250 (t!47250 (_1!182 res!28288))) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52187 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52187 d!52269 (= (t!47250 (_1!182 res!28288)) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52237 (= (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52237 d!52269 (= (_2!182 lt!11361) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_2!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52263 (= (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52263 d!52269 (= (t!47250 (t!47250 (_2!182 res!28288))) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52259 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52259 d!52269 (= (t!47250 (_1!182 lt!11354)) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52155 (= (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52155 d!52269 (= (_1!182 res!28288) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 res!28288)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52159 (= (bag!900 list!641) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52159 d!52269 (= list!641 (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52235 (= (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(assert (=> (and d!52235 d!52269 (= (_1!182 lt!11361) (t!47250 (t!47250 (_1!182 res!28288))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (_1!182 lt!11361)) (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))))))

(declare-fun c!13438 () Bool)

(assert (=> d!52269 (= c!13438 (is-Nil!521 (t!47250 (t!47250 (_1!182 res!28288)))))))

(declare-fun e!32933 () Bag!593)

(assert (=> d!52269 (= (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) e!32933)))

(declare-fun b!61600 () Bool)

(assert (=> b!61600 (= e!32933 Leaf!395)))

(declare-fun b!61601 () Bool)

(assert (=> b!61601 (= e!32933 (add!307 (bag!900 (t!47250 (t!47250 (t!47250 (_1!182 res!28288))))) (h!748 (t!47250 (t!47250 (_1!182 res!28288))))))))

(assert (= (and d!52269 c!13438) b!61600))

(assert (= (and d!52269 (not c!13438)) b!61601))

(declare-fun m!67190 () Bool)

(assert (=> b!61601 m!67190))

(assert (=> b!61601 m!67190))

(declare-fun m!67192 () Bool)

(assert (=> b!61601 m!67192))

(assert (=> b!61527 d!52269))

(declare-fun d!52271 () Bool)

(assert (=> (and d!52271 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52271 (= (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (t!47250 list!641)) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52251 (= (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52251 (= (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52251 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (t!47250 list!641)))) (h!748 (t!47250 (t!47250 list!641)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52185 (= (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52185 (= (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52185 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (_1!182 res!28288)) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 res!28288))) (h!748 (_1!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52239 (= (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52239 (= (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52239 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (_2!182 lt!11354)) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 lt!11354))) (h!748 (_2!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52195 (= (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52195 (= (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52195 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 list!641)) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 list!641) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 list!641)) (h!748 list!641)) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52267 (= (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52267 (= (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52267 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (t!47250 (_1!182 res!28288))) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_1!182 res!28288)))) (h!748 (t!47250 (_1!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52257 (= (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52257 (= (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52257 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_1!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (_1!182 lt!11354)) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_1!182 lt!11354))) (h!748 (_1!182 lt!11354))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52261 (= (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52261 (= (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52261 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (t!47250 (_2!182 res!28288))) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (t!47250 (_2!182 res!28288)))) (h!748 (t!47250 (_2!182 res!28288)))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52207 (= (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52207 (= (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> (and d!52207 d!52271 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641)))) (= (h!748 (_2!182 res!28288)) (h!748 (t!47250 list!641)))) (dynLambda!937 |eqBag[BigInt]!9| (add!307 (bag!900 (t!47250 (_2!182 res!28288))) (h!748 (_2!182 res!28288))) (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))))))

(assert (=> d!52271 (= (add!307 (bag!900 (t!47250 (t!47250 list!641))) (h!748 (t!47250 list!641))) (Sum!303 (bag!900 (t!47250 (t!47250 list!641))) (Elem!301 (h!748 (t!47250 list!641)) 1)))))

(assert (=> b!61535 d!52271))

(assert (=> b!61535 d!52177))

(declare-fun d!52273 () Bool)

(declare-fun lt!11369 () Int)

(assert (=> d!52273 (>= lt!11369 0)))

(declare-fun e!32934 () Int)

(assert (=> d!52273 (= lt!11369 e!32934)))

(declare-fun c!13439 () Bool)

(assert (=> d!52273 (= c!13439 (is-Nil!521 (t!47250 (t!47250 (_2!182 res!28288)))))))

(assert (=> d!52273 (= (size!523 (t!47250 (t!47250 (_2!182 res!28288)))) lt!11369)))

(declare-fun b!61602 () Bool)

(assert (=> b!61602 (= e!32934 0)))

(declare-fun b!61603 () Bool)

(assert (=> b!61603 (= e!32934 (+ 1 (size!523 (t!47250 (t!47250 (t!47250 (_2!182 res!28288)))))))))

(assert (= (and d!52273 c!13439) b!61602))

(assert (= (and d!52273 (not c!13439)) b!61603))

(declare-fun m!67194 () Bool)

(assert (=> b!61603 m!67194))

(assert (=> b!61515 d!52273))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(declare-fun d!52275 () Bool)

(assert (=> (and d!52157 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52217 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52225 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52161 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52227 (= (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52227 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52245 (= (right!1397 (right!1397 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52245 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52173 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52223 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52191 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52243 (= (left!1394 (right!1397 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52243 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52215 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52175 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52275 (= (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52275 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52189 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(assert (=> (and d!52229 (= (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))))))

(assert (=> (and d!52229 d!52275 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839))))

(declare-fun c!13440 () Bool)

(assert (=> d!52275 (= c!13440 (is-Sum!303 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))))))

(declare-fun e!32935 () Int)

(assert (=> d!52275 (= (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839) e!32935)))

(declare-fun b!61604 () Bool)

(assert (=> b!61604 (= e!32935 (+ (get!603 (left!1394 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) x!26839) (get!603 (right!1397 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) x!26839)))))

(declare-fun b!61605 () Bool)

(assert (=> b!61605 (= e!32935 (ite (and (is-Elem!301 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) (= (key!359 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) x!26839)) (value!4894 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354)))) 0))))

(assert (= (and d!52275 c!13440) b!61604))

(assert (= (and d!52275 (not c!13440)) b!61605))

(declare-fun bs!37269 () Bool)

(declare-fun m!67196 () Bool)

(assert (= bs!37269 m!67196))

(assert (=> bs!37269 s!1897))

(assert (=> bs!37269 s!1899))

(assert (=> b!61604 m!67196))

(declare-fun bs!37270 () Bool)

(declare-fun m!67198 () Bool)

(assert (= bs!37270 m!67198))

(assert (=> bs!37270 s!1897))

(assert (=> bs!37270 s!1899))

(assert (=> b!61604 m!67198))

(assert (=> bs!37248 d!52275))

(assert (=> (and d!52157 (= (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641))))))

(declare-fun d!52277 () Bool)

(assert (=> (and d!52157 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52217 (= (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52217 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52277 (= (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52277 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 (t!47250 (t!47250 list!641))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52225 (= (right!1397 (left!1394 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52225 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (left!1394 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (left!1394 (bag!900 list!641))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52161 (= (bag!900 list!641) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52161 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (bag!900 list!641) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (bag!900 list!641) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52227 (= (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52227 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52245 (= (right!1397 (right!1397 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52245 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (bag!900 list!641))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52173 (= (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52173 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52223 (= (left!1394 (left!1394 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52223 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (bag!900 list!641))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52191 (= (right!1397 (bag!900 list!641)) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52191 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (bag!900 list!641)) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (bag!900 list!641)) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52243 (= (left!1394 (right!1397 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52243 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (right!1397 (bag!900 list!641))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (right!1397 (bag!900 list!641))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52215 (= (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52215 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (left!1394 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52175 (= (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52175 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288)))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52275 (= (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52275 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (union!306 (bag!900 (_1!182 lt!11354)) (bag!900 (_2!182 lt!11354))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52189 (= (left!1394 (bag!900 list!641)) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52189 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (left!1394 (bag!900 list!641)) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (left!1394 (bag!900 list!641)) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(assert (=> (and d!52229 (= (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))) (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641))))))

(assert (=> (and d!52229 d!52277 (dynLambda!937 |eqBag[BigInt]!9| (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) (bag!900 (t!47250 (t!47250 list!641)))) (= x!26839 x!26839)) (= (get!603 (right!1397 (right!1397 (union!306 (bag!900 (_1!182 res!28288)) (bag!900 (_2!182 res!28288))))) x!26839) (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839))))

(declare-fun c!13441 () Bool)

(assert (=> d!52277 (= c!13441 (is-Sum!303 (bag!900 (t!47250 (t!47250 list!641)))))))

(declare-fun e!32936 () Int)

(assert (=> d!52277 (= (get!603 (bag!900 (t!47250 (t!47250 list!641))) x!26839) e!32936)))

(declare-fun b!61606 () Bool)

(assert (=> b!61606 (= e!32936 (+ (get!603 (left!1394 (bag!900 (t!47250 (t!47250 list!641)))) x!26839) (get!603 (right!1397 (bag!900 (t!47250 (t!47250 list!641)))) x!26839)))))

(declare-fun b!61607 () Bool)

(assert (=> b!61607 (= e!32936 (ite (and (is-Elem!301 (bag!900 (t!47250 (t!47250 list!641)))) (= (key!359 (bag!900 (t!47250 (t!47250 list!641)))) x!26839)) (value!4894 (bag!900 (t!47250 (t!47250 list!641)))) 0))))

(assert (= (and d!52277 c!13441) b!61606))

(assert (= (and d!52277 (not c!13441)) b!61607))

(declare-fun bs!37271 () Bool)

(declare-fun m!67200 () Bool)

(assert (= bs!37271 m!67200))

(assert (=> bs!37271 s!1897))

(assert (=> bs!37271 s!1899))

(assert (=> b!61606 m!67200))

(declare-fun bs!37272 () Bool)

(declare-fun m!67202 () Bool)

(assert (= bs!37272 m!67202))

(assert (=> bs!37272 s!1897))

(assert (=> bs!37272 s!1899))

(assert (=> b!61606 m!67202))

(assert (=> bs!37248 d!52277))

(declare-fun d!52279 () Bool)

(declare-fun lt!11370 () Int)

(assert (=> d!52279 (>= lt!11370 0)))

(declare-fun e!32937 () Int)

(assert (=> d!52279 (= lt!11370 e!32937)))

(declare-fun c!13442 () Bool)

(assert (=> d!52279 (= c!13442 (is-Nil!521 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))

(assert (=> d!52279 (= (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))) lt!11370)))

(declare-fun b!61608 () Bool)

(assert (=> b!61608 (= e!32937 0)))

(declare-fun b!61609 () Bool)

(assert (=> b!61609 (= e!32937 (+ 1 (size!523 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 (t!47250 list!641)))))))))))

(assert (= (and d!52279 c!13442) b!61608))

(assert (= (and d!52279 (not c!13442)) b!61609))

(assert (=> b!61609 m!67172))

(assert (=> b!61546 d!52279))

(assert (=> b!61539 d!52193))

(assert (=> b!61550 d!52221))

(assert (=> m!67058 s!1897))

(assert (=> m!67102 s!1897))

(assert (=> m!67034 s!1897))

(assert (=> m!67062 s!1897))

(assert (=> m!67038 s!1897))

(assert (=> m!67060 s!1897))

(assert (=> m!67100 s!1897))

(assert (=> m!67040 s!1897))

(assert (=> m!67036 s!1897))

(assert (=> m!67064 s!1897))

(assert (=> m!67058 s!1899))

(assert (=> m!67102 s!1899))

(assert (=> m!67034 s!1899))

(assert (=> m!67002 s!1899))

(assert (=> m!67062 s!1899))

(assert (=> m!67038 s!1899))

(assert (=> m!67060 s!1899))

(assert (=> m!67008 s!1899))

(assert (=> m!67100 s!1899))

(assert (=> m!67040 s!1899))

(assert (=> m!67010 s!1899))

(assert (=> m!67036 s!1899))

(assert (=> m!67000 s!1899))

(assert (=> m!67064 s!1899))

(assert (=> m!66976 s!1899))

(assert (=> m!66978 s!1899))

(push 1)

(assert (not b!61577))

(assert (not b!61601))

(assert (not b!61553))

(assert (not b!61556))

(assert (not b!61582))

(assert (not b!61593))

(assert (not d!52247))

(assert (not b!61568))

(assert (not b!61566))

(assert (not b!61587))

(assert (not b!61573))

(assert (not b!61564))

(assert (not b!61604))

(assert (not b!61583))

(assert (not b!61591))

(assert (not b!61571))

(assert (not b!61606))

(assert (not b!61578))

(assert (not b!61595))

(assert (not b!61597))

(assert (not b!61586))

(assert (not b!61562))

(assert (not b!61589))

(assert (not b!61559))

(assert (not b!61575))

(assert (not b!61609))

(assert (not bs!37249))

(assert (not b!61561))

(assert (not b!61554))

(assert (not b!61603))

(assert (not b!61599))

(assert (not b!61584))

(assert (not b!61580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

