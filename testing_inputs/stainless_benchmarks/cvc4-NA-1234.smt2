; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8768 () Bool)

(assert start!8768)

(declare-fun b!60679 () Bool)

(declare-fun res!28309 () Bool)

(declare-fun e!32444 () Bool)

(assert (=> b!60679 (=> (not res!28309) (not e!32444))))

(declare-datatypes () ((List!550 (Cons!515 (h!743 Int) (t!47245 List!550)) (Nil!516))))

(declare-fun l2!355 () List!550)

(declare-fun s2!69 () List!550)

(declare-fun mergeSort!0 (List!550) List!550)

(assert (=> b!60679 (= res!28309 (= l2!355 (mergeSort!0 s2!69)))))

(declare-fun b!60680 () Bool)

(declare-fun res!28307 () Bool)

(assert (=> b!60680 (=> (not res!28307) (not e!32444))))

(declare-fun s1!70 () List!550)

(declare-datatypes () ((tuple2!304 (tuple2!305 (_1!179 List!550) (_2!179 List!550)))))

(declare-fun x$2!330 () tuple2!304)

(assert (=> b!60680 (= res!28307 (and (= s1!70 (_1!179 x$2!330)) (= s2!69 (_2!179 x$2!330))))))

(declare-fun b!60681 () Bool)

(declare-fun e!32445 () Bool)

(assert (=> b!60681 (= e!32444 e!32445)))

(declare-fun res!28306 () Bool)

(assert (=> b!60681 (=> res!28306 e!32445)))

(declare-fun l1!362 () List!550)

(declare-fun isSorted!3 (List!550) Bool)

(assert (=> b!60681 (= res!28306 (not (isSorted!3 l1!362)))))

(declare-fun b!60682 () Bool)

(declare-fun res!28305 () Bool)

(assert (=> b!60682 (=> (not res!28305) (not e!32444))))

(assert (=> b!60682 (= res!28305 (= l1!362 (mergeSort!0 s1!70)))))

(declare-fun b!60683 () Bool)

(declare-fun res!28308 () Bool)

(assert (=> b!60683 (=> (not res!28308) (not e!32444))))

(declare-fun list!592 () List!550)

(declare-fun split!1 (List!550) tuple2!304)

(assert (=> b!60683 (= res!28308 (= x$2!330 (split!1 list!592)))))

(declare-fun res!28304 () Bool)

(assert (=> start!8768 (=> (not res!28304) (not e!32444))))

(assert (=> start!8768 (= res!28304 (and (is-Cons!515 list!592) (is-Cons!515 (t!47245 list!592))))))

(assert (=> start!8768 e!32444))

(assert (=> start!8768 true))

(declare-fun b!60684 () Bool)

(assert (=> b!60684 (= e!32445 (not (isSorted!3 l2!355)))))

(assert (= (and start!8768 res!28304) b!60683))

(assert (= (and b!60683 res!28308) b!60680))

(assert (= (and b!60680 res!28307) b!60682))

(assert (= (and b!60682 res!28305) b!60679))

(assert (= (and b!60679 res!28309) b!60681))

(assert (= (and b!60681 (not res!28306)) b!60684))

(declare-fun m!65522 () Bool)

(assert (=> b!60681 m!65522))

(declare-fun m!65524 () Bool)

(assert (=> b!60683 m!65524))

(declare-fun m!65526 () Bool)

(assert (=> b!60682 m!65526))

(declare-fun m!65528 () Bool)

(assert (=> b!60679 m!65528))

(declare-fun m!65530 () Bool)

(assert (=> b!60684 m!65530))

(push 1)

(assert (not b!60681))

(assert (not b!60683))

(assert (not b!60679))

(assert (not b!60684))

(assert (not b!60682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51637 () Bool)

(declare-fun res!28314 () Bool)

(declare-fun e!32450 () Bool)

(assert (=> d!51637 (=> res!28314 e!32450)))

(assert (=> d!51637 (= res!28314 (not (and (is-Cons!515 l2!355) (is-Cons!515 (t!47245 l2!355)))))))

(assert (=> d!51637 (= (isSorted!3 l2!355) e!32450)))

(declare-fun b!60689 () Bool)

(declare-fun e!32451 () Bool)

(assert (=> b!60689 (= e!32450 e!32451)))

(declare-fun res!28315 () Bool)

(assert (=> b!60689 (=> (not res!28315) (not e!32451))))

(assert (=> b!60689 (= res!28315 (<= (h!743 l2!355) (h!743 (t!47245 l2!355))))))

(declare-fun b!60690 () Bool)

(assert (=> b!60690 (= e!32451 (isSorted!3 (t!47245 l2!355)))))

(assert (= (and d!51637 (not res!28314)) b!60689))

(assert (= (and b!60689 res!28315) b!60690))

(declare-fun m!65532 () Bool)

(assert (=> b!60690 m!65532))

(assert (=> b!60684 d!51637))

(declare-fun b!60702 () Bool)

(declare-fun m!65534 () Bool)

(assert (=> b!60702 m!65534))

(declare-fun m!65536 () Bool)

(assert (=> b!60702 m!65536))

(declare-fun d!51639 () Bool)

(declare-fun e!32456 () Bool)

(assert (=> d!51639 e!32456))

(declare-fun res!28321 () Bool)

(assert (=> d!51639 (=> (not res!28321) (not e!32456))))

(declare-fun lt!11197 () List!550)

(assert (=> d!51639 (= res!28321 (isSorted!3 lt!11197))))

(declare-fun e!32457 () List!550)

(assert (=> d!51639 (= lt!11197 e!32457)))

(declare-fun c!13151 () Bool)

(assert (=> d!51639 (= c!13151 (and (is-Cons!515 s2!69) (is-Cons!515 (t!47245 s2!69))))))

(assert (=> d!51639 (= (mergeSort!0 s2!69) lt!11197)))

(declare-fun b!60700 () Bool)

(assert (=> b!60700 (= e!32457 s2!69)))

(declare-fun b!60701 () Bool)

(declare-fun res!28322 () Bool)

(assert (=> b!60701 (=> (not res!28322) (not e!32456))))

(declare-fun size!518 (List!550) Int)

(assert (=> b!60701 (= res!28322 (= (size!518 lt!11197) (size!518 s2!69)))))

(assert (=> b!60702 (= e!32456 true)))

(declare-fun b!60699 () Bool)

(declare-fun merge!0 (List!550 List!550) List!550)

(assert (=> b!60699 (= e!32457 (merge!0 (mergeSort!0 (_1!179 (split!1 s2!69))) (mergeSort!0 (_2!179 (split!1 s2!69)))))))

(assert (= (and d!51639 c!13151) b!60699))

(assert (= (and d!51639 (not c!13151)) b!60700))

(assert (= (and d!51639 res!28321) b!60701))

(assert (= (and b!60701 res!28322) b!60702))

(declare-fun m!65538 () Bool)

(assert (=> d!51639 m!65538))

(declare-fun m!65540 () Bool)

(assert (=> b!60701 m!65540))

(declare-fun m!65542 () Bool)

(assert (=> b!60701 m!65542))

(declare-fun m!65544 () Bool)

(assert (=> b!60699 m!65544))

(declare-fun m!65546 () Bool)

(assert (=> b!60699 m!65546))

(declare-fun m!65548 () Bool)

(assert (=> b!60699 m!65548))

(assert (=> b!60699 m!65546))

(assert (=> b!60699 m!65548))

(declare-fun m!65550 () Bool)

(assert (=> b!60699 m!65550))

(assert (=> b!60679 d!51639))

(declare-fun d!51641 () Bool)

(declare-fun res!28323 () Bool)

(declare-fun e!32458 () Bool)

(assert (=> d!51641 (=> res!28323 e!32458)))

(assert (=> d!51641 (= res!28323 (not (and (is-Cons!515 l1!362) (is-Cons!515 (t!47245 l1!362)))))))

(assert (=> d!51641 (= (isSorted!3 l1!362) e!32458)))

(declare-fun b!60703 () Bool)

(declare-fun e!32459 () Bool)

(assert (=> b!60703 (= e!32458 e!32459)))

(declare-fun res!28324 () Bool)

(assert (=> b!60703 (=> (not res!28324) (not e!32459))))

(assert (=> b!60703 (= res!28324 (<= (h!743 l1!362) (h!743 (t!47245 l1!362))))))

(declare-fun b!60704 () Bool)

(assert (=> b!60704 (= e!32459 (isSorted!3 (t!47245 l1!362)))))

(assert (= (and d!51641 (not res!28323)) b!60703))

(assert (= (and b!60703 res!28324) b!60704))

(declare-fun m!65552 () Bool)

(assert (=> b!60704 m!65552))

(assert (=> b!60681 d!51641))

(declare-fun b!60708 () Bool)

(declare-fun m!65554 () Bool)

(assert (=> b!60708 m!65554))

(declare-fun m!65556 () Bool)

(assert (=> b!60708 m!65556))

(declare-fun bs!36470 () Bool)

(declare-fun lt!11198 () List!550)

(declare-fun |eqBag[BigInt]!1| () Int)

(declare-datatypes () ((Bag!589 (Sum!299 (left!1390 Bag!589) (right!1393 Bag!589)) (Elem!297 (key!355 Int) (value!4890 Int)) (Leaf!391))))

(declare-fun bag!892 (List!550) Bag!589)

(declare-fun dynLambda!933 (Int Bag!589 Bag!589) Bool)

(assert (=> (and bs!36470 (= (bag!892 lt!11198) (bag!892 lt!11197))) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 lt!11198) (bag!892 lt!11197))))

(assert (=> (and bs!36470 (= (bag!892 s1!70) (bag!892 s2!69))) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 s1!70) (bag!892 s2!69))))

(assert (= bs!36470 (and b!60708 b!60702)))

(assert (=> (and bs!36470 (dynLambda!933 |eqBag[BigInt]!1| (bag!892 lt!11198) (bag!892 lt!11197)) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 s1!70) (bag!892 s2!69))) (= true true)))

(declare-fun d!51643 () Bool)

(declare-fun e!32460 () Bool)

(assert (=> d!51643 e!32460))

(declare-fun res!28325 () Bool)

(assert (=> d!51643 (=> (not res!28325) (not e!32460))))

(assert (=> d!51643 (= res!28325 (isSorted!3 lt!11198))))

(declare-fun e!32461 () List!550)

(assert (=> d!51643 (= lt!11198 e!32461)))

(declare-fun c!13152 () Bool)

(assert (=> d!51643 (= c!13152 (and (is-Cons!515 s1!70) (is-Cons!515 (t!47245 s1!70))))))

(assert (=> d!51643 (= (mergeSort!0 s1!70) lt!11198)))

(declare-fun b!60706 () Bool)

(assert (=> b!60706 (= e!32461 s1!70)))

(declare-fun b!60707 () Bool)

(declare-fun res!28326 () Bool)

(assert (=> b!60707 (=> (not res!28326) (not e!32460))))

(assert (=> b!60707 (= res!28326 (= (size!518 lt!11198) (size!518 s1!70)))))

(assert (=> b!60708 (= e!32460 true)))

(declare-fun b!60705 () Bool)

(assert (=> b!60705 (= e!32461 (merge!0 (mergeSort!0 (_1!179 (split!1 s1!70))) (mergeSort!0 (_2!179 (split!1 s1!70)))))))

(assert (= (and d!51643 c!13152) b!60705))

(assert (= (and d!51643 (not c!13152)) b!60706))

(assert (= (and d!51643 res!28325) b!60707))

(assert (= (and b!60707 res!28326) b!60708))

(declare-fun m!65558 () Bool)

(assert (=> d!51643 m!65558))

(declare-fun m!65560 () Bool)

(assert (=> b!60707 m!65560))

(declare-fun m!65562 () Bool)

(assert (=> b!60707 m!65562))

(declare-fun m!65564 () Bool)

(assert (=> b!60705 m!65564))

(declare-fun m!65566 () Bool)

(assert (=> b!60705 m!65566))

(declare-fun m!65568 () Bool)

(assert (=> b!60705 m!65568))

(assert (=> b!60705 m!65566))

(assert (=> b!60705 m!65568))

(declare-fun m!65570 () Bool)

(assert (=> b!60705 m!65570))

(assert (=> b!60682 d!51643))

(declare-fun b!60722 () Bool)

(declare-fun m!65572 () Bool)

(assert (=> b!60722 m!65572))

(declare-fun m!65574 () Bool)

(assert (=> b!60722 m!65574))

(declare-fun m!65576 () Bool)

(assert (=> b!60722 m!65576))

(assert (=> b!60722 m!65574))

(assert (=> b!60722 m!65576))

(declare-fun m!65578 () Bool)

(assert (=> b!60722 m!65578))

(declare-fun bs!36471 () Bool)

(declare-fun lt!11201 () tuple2!304)

(declare-fun union!303 (Bag!589 Bag!589) Bag!589)

(assert (=> (and bs!36471 (= (union!303 (bag!892 (_1!179 lt!11201)) (bag!892 (_2!179 lt!11201))) (bag!892 lt!11197))) (dynLambda!933 |eqBag[BigInt]!1| (union!303 (bag!892 (_1!179 lt!11201)) (bag!892 (_2!179 lt!11201))) (bag!892 lt!11197))))

(assert (=> (and bs!36471 (= (bag!892 list!592) (bag!892 s2!69))) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 list!592) (bag!892 s2!69))))

(declare-fun bs!36472 () Bool)

(assert (=> (and bs!36472 (= (union!303 (bag!892 (_1!179 lt!11201)) (bag!892 (_2!179 lt!11201))) (bag!892 lt!11198))) (dynLambda!933 |eqBag[BigInt]!1| (union!303 (bag!892 (_1!179 lt!11201)) (bag!892 (_2!179 lt!11201))) (bag!892 lt!11198))))

(assert (=> (and bs!36472 (= (bag!892 list!592) (bag!892 s1!70))) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 list!592) (bag!892 s1!70))))

(assert (= bs!36471 (and b!60722 b!60702)))

(assert (=> (and bs!36471 (dynLambda!933 |eqBag[BigInt]!1| (union!303 (bag!892 (_1!179 lt!11201)) (bag!892 (_2!179 lt!11201))) (bag!892 lt!11197)) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 list!592) (bag!892 s2!69))) (= true true)))

(assert (= bs!36472 (and b!60722 b!60708)))

(assert (=> (and bs!36472 (dynLambda!933 |eqBag[BigInt]!1| (union!303 (bag!892 (_1!179 lt!11201)) (bag!892 (_2!179 lt!11201))) (bag!892 lt!11198)) (dynLambda!933 |eqBag[BigInt]!1| (bag!892 list!592) (bag!892 s1!70))) (= true true)))

(declare-fun b!60721 () Bool)

(declare-fun e!32469 () tuple2!304)

(assert (=> b!60721 (= e!32469 (tuple2!305 (Cons!515 (h!743 list!592) (_1!179 (split!1 (t!47245 (t!47245 list!592))))) (Cons!515 (h!743 (t!47245 list!592)) (_2!179 (split!1 (t!47245 (t!47245 list!592)))))))))

(declare-fun e!32468 () Bool)

(assert (=> b!60722 (= e!32468 true)))

(declare-fun d!51645 () Bool)

(assert (=> d!51645 e!32468))

(declare-fun res!28339 () Bool)

(assert (=> d!51645 (=> (not res!28339) (not e!32468))))

(assert (=> d!51645 (= res!28339 (= (+ (size!518 (_1!179 lt!11201)) (size!518 (_2!179 lt!11201))) (size!518 list!592)))))

(assert (=> d!51645 (= lt!11201 e!32469)))

(declare-fun c!13155 () Bool)

(declare-fun e!32470 () Bool)

(assert (=> d!51645 (= c!13155 e!32470)))

(declare-fun res!28336 () Bool)

(assert (=> d!51645 (=> (not res!28336) (not e!32470))))

(assert (=> d!51645 (= res!28336 (is-Cons!515 list!592))))

(assert (=> d!51645 (> (size!518 list!592) 1)))

(assert (=> d!51645 (= (split!1 list!592) lt!11201)))

(declare-fun b!60723 () Bool)

(assert (=> b!60723 (= e!32469 (tuple2!305 (Cons!515 (h!743 list!592) Nil!516) (t!47245 list!592)))))

(declare-fun b!60724 () Bool)

(declare-fun res!28338 () Bool)

(assert (=> b!60724 (=> (not res!28338) (not e!32468))))

(assert (=> b!60724 (= res!28338 (> (size!518 (_1!179 lt!11201)) 0))))

(declare-fun b!60725 () Bool)

(assert (=> b!60725 (= e!32470 (<= (size!518 (t!47245 list!592)) 2))))

(declare-fun b!60726 () Bool)

(declare-fun res!28337 () Bool)

(assert (=> b!60726 (=> (not res!28337) (not e!32468))))

(assert (=> b!60726 (= res!28337 (> (size!518 (_2!179 lt!11201)) 0))))

(assert (= (and d!51645 res!28336) b!60725))

(assert (= (and d!51645 c!13155) b!60723))

(assert (= (and d!51645 (not c!13155)) b!60721))

(assert (= (and d!51645 res!28339) b!60724))

(assert (= (and b!60724 res!28338) b!60726))

(assert (= (and b!60726 res!28337) b!60722))

(declare-fun m!65580 () Bool)

(assert (=> b!60721 m!65580))

(declare-fun m!65582 () Bool)

(assert (=> b!60724 m!65582))

(declare-fun m!65584 () Bool)

(assert (=> b!60726 m!65584))

(assert (=> d!51645 m!65582))

(assert (=> d!51645 m!65584))

(declare-fun m!65586 () Bool)

(assert (=> d!51645 m!65586))

(declare-fun m!65588 () Bool)

(assert (=> b!60725 m!65588))

(assert (=> b!60683 d!51645))

(push 1)

(assert (not b!60699))

(assert (not b!60724))

(assert (not b!60722))

(assert (not d!51639))

(assert (not b!60725))

(assert (not b!60701))

(assert (not d!51643))

(assert (not b!60726))

(assert (not b!60708))

(assert (not d!51645))

(assert (not b!60705))

(assert (not b!60707))

(assert (not b!60704))

(assert (not b!60690))

(assert (not b!60721))

(assert (not b!60702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

