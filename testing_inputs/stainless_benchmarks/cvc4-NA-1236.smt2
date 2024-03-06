; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8800 () Bool)

(assert start!8800)

(declare-fun res!28566 () Bool)

(declare-fun e!32792 () Bool)

(assert (=> start!8800 (=> (not res!28566) (not e!32792))))

(declare-datatypes () ((List!552 (Cons!517 (h!745 Int) (t!47247 List!552)) (Nil!518))))

(declare-fun list!592 () List!552)

(declare-fun res!28278 () List!552)

(assert (=> start!8800 (= res!28566 (and (or (not (is-Cons!517 list!592)) (not (is-Cons!517 (t!47247 list!592)))) (= res!28278 list!592)))))

(assert (=> start!8800 e!32792))

(assert (=> start!8800 true))

(declare-fun b!61302 () Bool)

(declare-fun e!32791 () Bool)

(assert (=> b!61302 (= e!32792 e!32791)))

(declare-fun res!28564 () Bool)

(assert (=> b!61302 (=> res!28564 e!32791)))

(declare-fun isSorted!3 (List!552) Bool)

(assert (=> b!61302 (= res!28564 (not (isSorted!3 res!28278)))))

(declare-fun b!61303 () Bool)

(declare-fun res!28565 () Bool)

(assert (=> b!61303 (=> res!28565 e!32791)))

(declare-fun size!520 (List!552) Int)

(assert (=> b!61303 (= res!28565 (not (= (size!520 res!28278) (size!520 list!592))))))

(declare-fun b!61304 () Bool)

(declare-fun |eqBag[BigInt]!5| () Int)

(declare-datatypes () ((Bag!591 (Sum!301 (left!1392 Bag!591) (right!1395 Bag!591)) (Elem!299 (key!357 Int) (value!4892 Int)) (Leaf!393))))

(declare-fun dynLambda!935 (Int Bag!591 Bag!591) Bool)

(declare-fun bag!896 (List!552) Bag!591)

(assert (=> b!61304 (= e!32791 (not (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 list!592))))))

(assert (= (and start!8800 res!28566) b!61302))

(assert (= (and b!61302 (not res!28564)) b!61303))

(assert (= (and b!61303 (not res!28565)) b!61304))

(declare-fun m!66814 () Bool)

(assert (=> b!61302 m!66814))

(declare-fun m!66816 () Bool)

(assert (=> b!61303 m!66816))

(declare-fun m!66818 () Bool)

(assert (=> b!61303 m!66818))

(declare-fun m!66820 () Bool)

(assert (=> b!61304 m!66820))

(declare-fun m!66822 () Bool)

(assert (=> b!61304 m!66822))

(declare-fun q!17 () Bool)

(declare-fun equals!298 (Bag!591 Bag!591) Bool)

(assert (=> q!17 (= (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 list!592)) (equals!298 (bag!896 res!28278) (bag!896 list!592)))))

(declare-fun bs!37206 () Bool)

(assert (= bs!37206 q!17))

(declare-fun m!66824 () Bool)

(assert (=> bs!37206 m!66824))

(assert (=> q!17 (= (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 list!592)) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 list!592) (bag!896 res!28278)))))

(assert (=> (= (bag!896 res!28278) (bag!896 list!592)) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 list!592))))

(assert (=> b!61304 q!17))

(push 1)

(assert (not q!17))

(assert (not b!61303))

(assert (not b!61302))

(assert (not b!61304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52067 () Bool)

(assert (=> (and d!52067 (= (bag!896 res!28278) (bag!896 res!28278))) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 res!28278))))

(assert (=> (and d!52067 (= (bag!896 list!592) (bag!896 list!592))) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 list!592) (bag!896 list!592))))

(assert (=> (and d!52067 (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 res!28278)) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 list!592) (bag!896 list!592))) (= (equals!298 (bag!896 res!28278) (bag!896 list!592)) (equals!298 (bag!896 res!28278) (bag!896 list!592)))))

(declare-fun x!26798 () Int)

(declare-fun inst!443 () Bool)

(declare-fun get!601 (Bag!591 Int) Int)

(assert (=> d!52067 (= inst!443 (=> true (= (get!601 (bag!896 res!28278) x!26798) (get!601 (bag!896 list!592) x!26798))))))

(declare-fun bs!37207 () Bool)

(assert (= bs!37207 d!52067))

(declare-fun m!66826 () Bool)

(assert (=> bs!37207 m!66826))

(declare-fun m!66828 () Bool)

(assert (=> bs!37207 m!66828))

(declare-fun bs!37208 () Bool)

(declare-fun neg-inst!428 () Bool)

(declare-fun s!1893 () Bool)

(assert (= bs!37208 (and neg-inst!428 s!1893)))

(assert (=> bs!37208 (=> true (= (get!601 (bag!896 res!28278) x!26798) (get!601 (bag!896 list!592) x!26798)))))

(assert (=> m!66828 m!66826))

(assert (=> m!66828 s!1893))

(assert (=> m!66826 s!1893))

(declare-fun bs!37209 () Bool)

(assert (= bs!37209 (and neg-inst!428 d!52067)))

(assert (=> bs!37209 (= true inst!443)))

(assert (=> d!52067 (= (equals!298 (bag!896 res!28278) (bag!896 list!592)) inst!443)))

(assert (= neg-inst!428 inst!443))

(assert (=> q!17 d!52067))

(declare-fun d!52069 () Bool)

(declare-fun lt!11330 () Int)

(assert (=> d!52069 (>= lt!11330 0)))

(declare-fun e!32795 () Int)

(assert (=> d!52069 (= lt!11330 e!32795)))

(declare-fun c!13337 () Bool)

(assert (=> d!52069 (= c!13337 (is-Nil!518 res!28278))))

(assert (=> d!52069 (= (size!520 res!28278) lt!11330)))

(declare-fun b!61312 () Bool)

(assert (=> b!61312 (= e!32795 0)))

(declare-fun b!61313 () Bool)

(assert (=> b!61313 (= e!32795 (+ 1 (size!520 (t!47247 res!28278))))))

(assert (= (and d!52069 c!13337) b!61312))

(assert (= (and d!52069 (not c!13337)) b!61313))

(declare-fun m!66830 () Bool)

(assert (=> b!61313 m!66830))

(assert (=> b!61303 d!52069))

(declare-fun d!52071 () Bool)

(declare-fun lt!11331 () Int)

(assert (=> d!52071 (>= lt!11331 0)))

(declare-fun e!32796 () Int)

(assert (=> d!52071 (= lt!11331 e!32796)))

(declare-fun c!13338 () Bool)

(assert (=> d!52071 (= c!13338 (is-Nil!518 list!592))))

(assert (=> d!52071 (= (size!520 list!592) lt!11331)))

(declare-fun b!61314 () Bool)

(assert (=> b!61314 (= e!32796 0)))

(declare-fun b!61315 () Bool)

(assert (=> b!61315 (= e!32796 (+ 1 (size!520 (t!47247 list!592))))))

(assert (= (and d!52071 c!13338) b!61314))

(assert (= (and d!52071 (not c!13338)) b!61315))

(declare-fun m!66832 () Bool)

(assert (=> b!61315 m!66832))

(assert (=> b!61303 d!52071))

(declare-fun d!52073 () Bool)

(declare-fun res!28571 () Bool)

(declare-fun e!32801 () Bool)

(assert (=> d!52073 (=> res!28571 e!32801)))

(assert (=> d!52073 (= res!28571 (not (and (is-Cons!517 res!28278) (is-Cons!517 (t!47247 res!28278)))))))

(assert (=> d!52073 (= (isSorted!3 res!28278) e!32801)))

(declare-fun b!61320 () Bool)

(declare-fun e!32802 () Bool)

(assert (=> b!61320 (= e!32801 e!32802)))

(declare-fun res!28572 () Bool)

(assert (=> b!61320 (=> (not res!28572) (not e!32802))))

(assert (=> b!61320 (= res!28572 (<= (h!745 res!28278) (h!745 (t!47247 res!28278))))))

(declare-fun b!61321 () Bool)

(assert (=> b!61321 (= e!32802 (isSorted!3 (t!47247 res!28278)))))

(assert (= (and d!52073 (not res!28571)) b!61320))

(assert (= (and b!61320 res!28572) b!61321))

(declare-fun m!66834 () Bool)

(assert (=> b!61321 m!66834))

(assert (=> b!61302 d!52073))

(declare-fun d!52075 () Bool)

(assert (=> (and d!52075 (= (bag!896 res!28278) (bag!896 res!28278))) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 res!28278))))

(assert (=> (and d!52075 (= res!28278 res!28278)) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 res!28278))))

(declare-fun c!13341 () Bool)

(assert (=> d!52075 (= c!13341 (is-Nil!518 res!28278))))

(declare-fun e!32805 () Bag!591)

(assert (=> d!52075 (= (bag!896 res!28278) e!32805)))

(declare-fun b!61326 () Bool)

(assert (=> b!61326 (= e!32805 Leaf!393)))

(declare-fun b!61327 () Bool)

(declare-fun add!305 (Bag!591 Int) Bag!591)

(assert (=> b!61327 (= e!32805 (add!305 (bag!896 (t!47247 res!28278)) (h!745 res!28278)))))

(assert (= (and d!52075 c!13341) b!61326))

(assert (= (and d!52075 (not c!13341)) b!61327))

(declare-fun m!66836 () Bool)

(assert (=> b!61327 m!66836))

(assert (=> b!61327 m!66836))

(declare-fun m!66838 () Bool)

(assert (=> b!61327 m!66838))

(assert (=> b!61304 d!52075))

(assert (=> (and d!52075 (= (bag!896 res!28278) (bag!896 list!592))) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 list!592))))

(declare-fun d!52077 () Bool)

(assert (=> (and d!52075 d!52077 (= res!28278 list!592)) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 res!28278) (bag!896 list!592))))

(assert (=> (and d!52077 (= (bag!896 list!592) (bag!896 list!592))) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 list!592) (bag!896 list!592))))

(assert (=> (and d!52077 (= list!592 list!592)) (dynLambda!935 |eqBag[BigInt]!5| (bag!896 list!592) (bag!896 list!592))))

(declare-fun c!13342 () Bool)

(assert (=> d!52077 (= c!13342 (is-Nil!518 list!592))))

(declare-fun e!32806 () Bag!591)

(assert (=> d!52077 (= (bag!896 list!592) e!32806)))

(declare-fun b!61328 () Bool)

(assert (=> b!61328 (= e!32806 Leaf!393)))

(declare-fun b!61329 () Bool)

(assert (=> b!61329 (= e!32806 (add!305 (bag!896 (t!47247 list!592)) (h!745 list!592)))))

(assert (= (and d!52077 c!13342) b!61328))

(assert (= (and d!52077 (not c!13342)) b!61329))

(declare-fun m!66840 () Bool)

(assert (=> b!61329 m!66840))

(assert (=> b!61329 m!66840))

(declare-fun m!66842 () Bool)

(assert (=> b!61329 m!66842))

(assert (=> b!61304 d!52077))

(push 1)

(assert (not b!61329))

(assert (not bs!37208))

(assert (not b!61313))

(assert (not d!52067))

(assert (not b!61327))

(assert (not b!61321))

(assert (not b!61315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

