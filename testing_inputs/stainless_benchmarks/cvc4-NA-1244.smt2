; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8890 () Bool)

(assert start!8890)

(declare-fun res!28874 () Bool)

(declare-fun e!33219 () Bool)

(assert (=> start!8890 (=> (not res!28874) (not e!33219))))

(declare-datatypes () ((List!560 (Cons!525 (h!753 Int) (t!47255 List!560)) (Nil!526))))

(declare-fun l1!364 () List!560)

(declare-fun isSorted!3 (List!560) Bool)

(assert (=> start!8890 (= res!28874 (isSorted!3 l1!364))))

(assert (=> start!8890 e!33219))

(assert (=> start!8890 true))

(declare-fun b!62088 () Bool)

(declare-fun res!28871 () Bool)

(assert (=> b!62088 (=> (not res!28871) (not e!33219))))

(declare-fun l2!357 () List!560)

(declare-fun res!28283 () List!560)

(declare-fun ++!64 (List!560 List!560) List!560)

(assert (=> b!62088 (= res!28871 (= res!28283 (++!64 l1!364 l2!357)))))

(declare-fun |eqBag[BigInt]!15| () Int)

(declare-fun b!62089 () Bool)

(declare-fun e!33218 () Bool)

(declare-datatypes () ((Bag!596 (Sum!306 (left!1397 Bag!596) (right!1400 Bag!596)) (Elem!304 (key!362 Int) (value!4897 Int)) (Leaf!398))))

(declare-fun dynLambda!940 (Int Bag!596 Bag!596) Bool)

(declare-fun bag!909 (List!560) Bag!596)

(declare-fun union!309 (Bag!596 Bag!596) Bag!596)

(assert (=> b!62089 (= e!33218 (not (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun b!62090 () Bool)

(declare-fun res!28873 () Bool)

(assert (=> b!62090 (=> res!28873 e!33218)))

(declare-fun size!526 (List!560) Int)

(assert (=> b!62090 (= res!28873 (not (= (size!526 res!28283) (+ (size!526 l1!364) (size!526 l2!357)))))))

(declare-fun b!62091 () Bool)

(assert (=> b!62091 (= e!33219 e!33218)))

(declare-fun res!28872 () Bool)

(assert (=> b!62091 (=> res!28872 e!33218)))

(assert (=> b!62091 (= res!28872 (not (isSorted!3 res!28283)))))

(declare-fun b!62092 () Bool)

(declare-fun res!28876 () Bool)

(assert (=> b!62092 (=> (not res!28876) (not e!33219))))

(assert (=> b!62092 (= res!28876 (or (not (is-Cons!525 l1!364)) (not (is-Cons!525 l2!357))))))

(declare-fun b!62093 () Bool)

(declare-fun res!28875 () Bool)

(assert (=> b!62093 (=> (not res!28875) (not e!33219))))

(assert (=> b!62093 (= res!28875 (isSorted!3 l2!357))))

(assert (= (and start!8890 res!28874) b!62093))

(assert (= (and b!62093 res!28875) b!62092))

(assert (= (and b!62092 res!28876) b!62088))

(assert (= (and b!62088 res!28871) b!62091))

(assert (= (and b!62091 (not res!28872)) b!62090))

(assert (= (and b!62090 (not res!28873)) b!62089))

(declare-fun m!67864 () Bool)

(assert (=> b!62091 m!67864))

(declare-fun m!67866 () Bool)

(assert (=> b!62088 m!67866))

(declare-fun m!67868 () Bool)

(assert (=> start!8890 m!67868))

(declare-fun m!67870 () Bool)

(assert (=> b!62090 m!67870))

(declare-fun m!67872 () Bool)

(assert (=> b!62090 m!67872))

(declare-fun m!67874 () Bool)

(assert (=> b!62090 m!67874))

(declare-fun m!67876 () Bool)

(assert (=> b!62089 m!67876))

(declare-fun m!67878 () Bool)

(assert (=> b!62089 m!67878))

(declare-fun m!67880 () Bool)

(assert (=> b!62089 m!67880))

(assert (=> b!62089 m!67878))

(assert (=> b!62089 m!67880))

(declare-fun m!67882 () Bool)

(assert (=> b!62089 m!67882))

(declare-fun m!67884 () Bool)

(assert (=> b!62093 m!67884))

(declare-fun q!21 () Bool)

(declare-fun equals!300 (Bag!596 Bag!596) Bool)

(assert (=> q!21 (= (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))) (equals!300 (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(declare-fun bs!37338 () Bool)

(assert (= bs!37338 q!21))

(declare-fun m!67886 () Bool)

(assert (=> bs!37338 m!67886))

(assert (=> q!21 (= (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (bag!909 res!28283)))))

(assert (=> (= (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> b!62089 q!21))

(push 1)

(assert (not b!62093))

(assert (not start!8890))

(assert (not b!62090))

(assert (not b!62088))

(assert (not b!62091))

(assert (not q!21))

(assert (not b!62089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52613 () Bool)

(declare-fun res!28881 () Bool)

(declare-fun e!33224 () Bool)

(assert (=> d!52613 (=> res!28881 e!33224)))

(assert (=> d!52613 (= res!28881 (not (and (is-Cons!525 l2!357) (is-Cons!525 (t!47255 l2!357)))))))

(assert (=> d!52613 (= (isSorted!3 l2!357) e!33224)))

(declare-fun b!62101 () Bool)

(declare-fun e!33225 () Bool)

(assert (=> b!62101 (= e!33224 e!33225)))

(declare-fun res!28882 () Bool)

(assert (=> b!62101 (=> (not res!28882) (not e!33225))))

(assert (=> b!62101 (= res!28882 (<= (h!753 l2!357) (h!753 (t!47255 l2!357))))))

(declare-fun b!62102 () Bool)

(assert (=> b!62102 (= e!33225 (isSorted!3 (t!47255 l2!357)))))

(assert (= (and d!52613 (not res!28881)) b!62101))

(assert (= (and b!62101 res!28882) b!62102))

(declare-fun m!67888 () Bool)

(assert (=> b!62102 m!67888))

(assert (=> b!62093 d!52613))

(declare-fun d!52615 () Bool)

(declare-fun res!28883 () Bool)

(declare-fun e!33226 () Bool)

(assert (=> d!52615 (=> res!28883 e!33226)))

(assert (=> d!52615 (= res!28883 (not (and (is-Cons!525 l1!364) (is-Cons!525 (t!47255 l1!364)))))))

(assert (=> d!52615 (= (isSorted!3 l1!364) e!33226)))

(declare-fun b!62103 () Bool)

(declare-fun e!33227 () Bool)

(assert (=> b!62103 (= e!33226 e!33227)))

(declare-fun res!28884 () Bool)

(assert (=> b!62103 (=> (not res!28884) (not e!33227))))

(assert (=> b!62103 (= res!28884 (<= (h!753 l1!364) (h!753 (t!47255 l1!364))))))

(declare-fun b!62104 () Bool)

(assert (=> b!62104 (= e!33227 (isSorted!3 (t!47255 l1!364)))))

(assert (= (and d!52615 (not res!28883)) b!62103))

(assert (= (and b!62103 res!28884) b!62104))

(declare-fun m!67890 () Bool)

(assert (=> b!62104 m!67890))

(assert (=> start!8890 d!52615))

(declare-fun d!52617 () Bool)

(assert (=> (and d!52617 (= (bag!909 res!28283) (bag!909 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 res!28283))))

(assert (=> (and d!52617 (= res!28283 res!28283)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 res!28283))))

(declare-fun c!13579 () Bool)

(assert (=> d!52617 (= c!13579 (is-Nil!526 res!28283))))

(declare-fun e!33230 () Bag!596)

(assert (=> d!52617 (= (bag!909 res!28283) e!33230)))

(declare-fun b!62109 () Bool)

(assert (=> b!62109 (= e!33230 Leaf!398)))

(declare-fun b!62110 () Bool)

(declare-fun add!310 (Bag!596 Int) Bag!596)

(assert (=> b!62110 (= e!33230 (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)))))

(assert (= (and d!52617 c!13579) b!62109))

(assert (= (and d!52617 (not c!13579)) b!62110))

(declare-fun m!67892 () Bool)

(assert (=> b!62110 m!67892))

(assert (=> b!62110 m!67892))

(declare-fun m!67894 () Bool)

(assert (=> b!62110 m!67894))

(assert (=> b!62089 d!52617))

(declare-fun d!52619 () Bool)

(assert (=> (and d!52619 (= (bag!909 l1!364) (bag!909 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 l1!364))))

(assert (=> (and d!52619 (= (bag!909 l2!357) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 l2!357))))

(assert (=> (and d!52619 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> (and d!52619 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 l1!364)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> d!52619 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (Sum!306 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> b!62089 d!52619))

(declare-fun d!52621 () Bool)

(assert (=> (and d!52621 (= (bag!909 l1!364) (bag!909 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 l1!364))))

(assert (=> (and d!52621 (= l1!364 l1!364)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 l1!364))))

(assert (=> (and d!52617 (= (bag!909 res!28283) (bag!909 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 l1!364))))

(assert (=> (and d!52617 d!52621 (= res!28283 l1!364)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 l1!364))))

(declare-fun c!13580 () Bool)

(assert (=> d!52621 (= c!13580 (is-Nil!526 l1!364))))

(declare-fun e!33231 () Bag!596)

(assert (=> d!52621 (= (bag!909 l1!364) e!33231)))

(declare-fun b!62111 () Bool)

(assert (=> b!62111 (= e!33231 Leaf!398)))

(declare-fun b!62112 () Bool)

(assert (=> b!62112 (= e!33231 (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(assert (= (and d!52621 c!13580) b!62111))

(assert (= (and d!52621 (not c!13580)) b!62112))

(declare-fun m!67896 () Bool)

(assert (=> b!62112 m!67896))

(assert (=> b!62112 m!67896))

(declare-fun m!67898 () Bool)

(assert (=> b!62112 m!67898))

(assert (=> b!62089 d!52621))

(assert (=> (and d!52621 (= (bag!909 l1!364) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 l2!357))))

(declare-fun d!52623 () Bool)

(assert (=> (and d!52621 d!52623 (= l1!364 l2!357)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 l2!357))))

(assert (=> (and d!52617 (= (bag!909 res!28283) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 l2!357))))

(assert (=> (and d!52617 d!52623 (= res!28283 l2!357)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 l2!357))))

(assert (=> (and d!52623 (= (bag!909 l2!357) (bag!909 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 l2!357))))

(assert (=> (and d!52623 (= l2!357 l2!357)) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 l2!357))))

(declare-fun c!13581 () Bool)

(assert (=> d!52623 (= c!13581 (is-Nil!526 l2!357))))

(declare-fun e!33232 () Bag!596)

(assert (=> d!52623 (= (bag!909 l2!357) e!33232)))

(declare-fun b!62113 () Bool)

(assert (=> b!62113 (= e!33232 Leaf!398)))

(declare-fun b!62114 () Bool)

(assert (=> b!62114 (= e!33232 (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))))

(assert (= (and d!52623 c!13581) b!62113))

(assert (= (and d!52623 (not c!13581)) b!62114))

(declare-fun m!67900 () Bool)

(assert (=> b!62114 m!67900))

(assert (=> b!62114 m!67900))

(declare-fun m!67902 () Bool)

(assert (=> b!62114 m!67902))

(assert (=> b!62089 d!52623))

(declare-fun d!52625 () Bool)

(assert (=> (and d!52625 (= (bag!909 res!28283) (bag!909 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 res!28283))))

(assert (=> (and d!52625 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> (and d!52625 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 res!28283)) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= (equals!300 (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))) (equals!300 (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(declare-fun x!26949 () Int)

(declare-fun inst!458 () Bool)

(declare-fun get!606 (Bag!596 Int) Int)

(assert (=> d!52625 (= inst!458 (=> true (= (get!606 (bag!909 res!28283) x!26949) (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949))))))

(declare-fun bs!37339 () Bool)

(assert (= bs!37339 d!52625))

(declare-fun m!67904 () Bool)

(assert (=> bs!37339 m!67904))

(declare-fun m!67906 () Bool)

(assert (=> bs!37339 m!67906))

(declare-fun bs!37340 () Bool)

(declare-fun neg-inst!434 () Bool)

(declare-fun s!1909 () Bool)

(assert (= bs!37340 (and neg-inst!434 s!1909)))

(assert (=> bs!37340 (=> true (= (get!606 (bag!909 res!28283) x!26949) (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949)))))

(assert (=> m!67904 m!67906))

(assert (=> m!67904 s!1909))

(assert (=> m!67906 s!1909))

(declare-fun bs!37341 () Bool)

(assert (= bs!37341 (and neg-inst!434 d!52625)))

(assert (=> bs!37341 (= true inst!458)))

(assert (=> d!52625 (= (equals!300 (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))) inst!458)))

(assert (= neg-inst!434 inst!458))

(assert (=> q!21 d!52625))

(declare-fun b!62123 () Bool)

(declare-fun e!33238 () List!560)

(assert (=> b!62123 (= e!33238 l2!357)))

(declare-fun b!62124 () Bool)

(assert (=> b!62124 (= e!33238 (Cons!525 (h!753 l1!364) (++!64 (t!47255 l1!364) l2!357)))))

(declare-fun e!33237 () Bool)

(declare-fun b!62126 () Bool)

(declare-fun lt!11447 () List!560)

(assert (=> b!62126 (= e!33237 (or (not (= l2!357 Nil!526)) (= lt!11447 l1!364)))))

(declare-fun b!62125 () Bool)

(declare-fun res!28890 () Bool)

(assert (=> b!62125 (=> (not res!28890) (not e!33237))))

(assert (=> b!62125 (= res!28890 (= (size!526 lt!11447) (+ (size!526 l1!364) (size!526 l2!357))))))

(declare-fun d!52627 () Bool)

(assert (=> d!52627 e!33237))

(declare-fun res!28891 () Bool)

(assert (=> d!52627 (=> (not res!28891) (not e!33237))))

(declare-fun content!104 (List!560) (Set Int))

(assert (=> d!52627 (= res!28891 (= (content!104 lt!11447) (union (content!104 l1!364) (content!104 l2!357))))))

(assert (=> d!52627 (= lt!11447 e!33238)))

(declare-fun c!13584 () Bool)

(assert (=> d!52627 (= c!13584 (is-Nil!526 l1!364))))

(assert (=> d!52627 (= (++!64 l1!364 l2!357) lt!11447)))

(assert (= (and d!52627 c!13584) b!62123))

(assert (= (and d!52627 (not c!13584)) b!62124))

(assert (= (and d!52627 res!28891) b!62125))

(assert (= (and b!62125 res!28890) b!62126))

(declare-fun m!67908 () Bool)

(assert (=> b!62124 m!67908))

(declare-fun m!67910 () Bool)

(assert (=> b!62125 m!67910))

(assert (=> b!62125 m!67872))

(assert (=> b!62125 m!67874))

(declare-fun m!67912 () Bool)

(assert (=> d!52627 m!67912))

(declare-fun m!67914 () Bool)

(assert (=> d!52627 m!67914))

(declare-fun m!67916 () Bool)

(assert (=> d!52627 m!67916))

(assert (=> b!62088 d!52627))

(declare-fun d!52629 () Bool)

(declare-fun lt!11450 () Int)

(assert (=> d!52629 (>= lt!11450 0)))

(declare-fun e!33241 () Int)

(assert (=> d!52629 (= lt!11450 e!33241)))

(declare-fun c!13587 () Bool)

(assert (=> d!52629 (= c!13587 (is-Nil!526 res!28283))))

(assert (=> d!52629 (= (size!526 res!28283) lt!11450)))

(declare-fun b!62131 () Bool)

(assert (=> b!62131 (= e!33241 0)))

(declare-fun b!62132 () Bool)

(assert (=> b!62132 (= e!33241 (+ 1 (size!526 (t!47255 res!28283))))))

(assert (= (and d!52629 c!13587) b!62131))

(assert (= (and d!52629 (not c!13587)) b!62132))

(declare-fun m!67918 () Bool)

(assert (=> b!62132 m!67918))

(assert (=> b!62090 d!52629))

(declare-fun d!52631 () Bool)

(declare-fun lt!11451 () Int)

(assert (=> d!52631 (>= lt!11451 0)))

(declare-fun e!33242 () Int)

(assert (=> d!52631 (= lt!11451 e!33242)))

(declare-fun c!13588 () Bool)

(assert (=> d!52631 (= c!13588 (is-Nil!526 l1!364))))

(assert (=> d!52631 (= (size!526 l1!364) lt!11451)))

(declare-fun b!62133 () Bool)

(assert (=> b!62133 (= e!33242 0)))

(declare-fun b!62134 () Bool)

(assert (=> b!62134 (= e!33242 (+ 1 (size!526 (t!47255 l1!364))))))

(assert (= (and d!52631 c!13588) b!62133))

(assert (= (and d!52631 (not c!13588)) b!62134))

(declare-fun m!67920 () Bool)

(assert (=> b!62134 m!67920))

(assert (=> b!62090 d!52631))

(declare-fun d!52633 () Bool)

(declare-fun lt!11452 () Int)

(assert (=> d!52633 (>= lt!11452 0)))

(declare-fun e!33243 () Int)

(assert (=> d!52633 (= lt!11452 e!33243)))

(declare-fun c!13589 () Bool)

(assert (=> d!52633 (= c!13589 (is-Nil!526 l2!357))))

(assert (=> d!52633 (= (size!526 l2!357) lt!11452)))

(declare-fun b!62135 () Bool)

(assert (=> b!62135 (= e!33243 0)))

(declare-fun b!62136 () Bool)

(assert (=> b!62136 (= e!33243 (+ 1 (size!526 (t!47255 l2!357))))))

(assert (= (and d!52633 c!13589) b!62135))

(assert (= (and d!52633 (not c!13589)) b!62136))

(declare-fun m!67922 () Bool)

(assert (=> b!62136 m!67922))

(assert (=> b!62090 d!52633))

(declare-fun d!52635 () Bool)

(declare-fun res!28892 () Bool)

(declare-fun e!33244 () Bool)

(assert (=> d!52635 (=> res!28892 e!33244)))

(assert (=> d!52635 (= res!28892 (not (and (is-Cons!525 res!28283) (is-Cons!525 (t!47255 res!28283)))))))

(assert (=> d!52635 (= (isSorted!3 res!28283) e!33244)))

(declare-fun b!62137 () Bool)

(declare-fun e!33245 () Bool)

(assert (=> b!62137 (= e!33244 e!33245)))

(declare-fun res!28893 () Bool)

(assert (=> b!62137 (=> (not res!28893) (not e!33245))))

(assert (=> b!62137 (= res!28893 (<= (h!753 res!28283) (h!753 (t!47255 res!28283))))))

(declare-fun b!62138 () Bool)

(assert (=> b!62138 (= e!33245 (isSorted!3 (t!47255 res!28283)))))

(assert (= (and d!52635 (not res!28892)) b!62137))

(assert (= (and b!62137 res!28893) b!62138))

(declare-fun m!67924 () Bool)

(assert (=> b!62138 m!67924))

(assert (=> b!62091 d!52635))

(push 1)

(assert (not b!62114))

(assert (not b!62104))

(assert (not b!62112))

(assert (not d!52625))

(assert (not b!62136))

(assert (not b!62134))

(assert (not b!62138))

(assert (not d!52627))

(assert (not b!62102))

(assert (not b!62124))

(assert (not b!62110))

(assert (not bs!37340))

(assert (not b!62132))

(assert (not b!62125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52637 () Bool)

(assert (=> (and d!52637 (= (bag!909 res!28283) (bag!909 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 res!28283))))

(assert (=> (and d!52637 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 res!28283)) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (bag!909 res!28283) x!26949))))

(declare-fun c!13592 () Bool)

(assert (=> d!52637 (= c!13592 (is-Sum!306 (bag!909 res!28283)))))

(declare-fun e!33248 () Int)

(assert (=> d!52637 (= (get!606 (bag!909 res!28283) x!26949) e!33248)))

(declare-fun b!62143 () Bool)

(assert (=> b!62143 (= e!33248 (+ (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949)))))

(declare-fun b!62144 () Bool)

(assert (=> b!62144 (= e!33248 (ite (and (is-Elem!304 (bag!909 res!28283)) (= (key!362 (bag!909 res!28283)) x!26949)) (value!4897 (bag!909 res!28283)) 0))))

(assert (= (and d!52637 c!13592) b!62143))

(assert (= (and d!52637 (not c!13592)) b!62144))

(declare-fun bs!37342 () Bool)

(declare-fun m!67926 () Bool)

(assert (= bs!37342 m!67926))

(assert (=> bs!37342 s!1909))

(assert (=> b!62143 m!67926))

(declare-fun bs!37343 () Bool)

(declare-fun m!67928 () Bool)

(assert (= bs!37343 m!67928))

(assert (=> bs!37343 s!1909))

(assert (=> b!62143 m!67928))

(assert (=> bs!37340 d!52637))

(declare-fun d!52639 () Bool)

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> (and d!52639 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (union!309 (bag!909 l1!364) (bag!909 l2!357))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357)))))

(assert (=> (and d!52637 d!52639 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (union!309 (bag!909 l1!364) (bag!909 l2!357))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949))))

(declare-fun c!13593 () Bool)

(assert (=> d!52639 (= c!13593 (is-Sum!306 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(declare-fun e!33249 () Int)

(assert (=> d!52639 (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) e!33249)))

(declare-fun b!62145 () Bool)

(assert (=> b!62145 (= e!33249 (+ (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949)))))

(declare-fun b!62146 () Bool)

(assert (=> b!62146 (= e!33249 (ite (and (is-Elem!304 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (= (key!362 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949)) (value!4897 (union!309 (bag!909 l1!364) (bag!909 l2!357))) 0))))

(assert (= (and d!52639 c!13593) b!62145))

(assert (= (and d!52639 (not c!13593)) b!62146))

(declare-fun bs!37344 () Bool)

(declare-fun m!67930 () Bool)

(assert (= bs!37344 m!67930))

(assert (=> bs!37344 s!1909))

(assert (=> b!62145 m!67930))

(declare-fun bs!37345 () Bool)

(declare-fun m!67932 () Bool)

(assert (= bs!37345 m!67932))

(assert (=> bs!37345 s!1909))

(assert (=> b!62145 m!67932))

(assert (=> bs!37340 d!52639))

(push 1)

(assert (not b!62114))

(assert (not b!62104))

(assert (not b!62112))

(assert (not d!52625))

(assert (not b!62136))

(assert (not b!62134))

(assert (not b!62145))

(assert (not b!62138))

(assert (not d!52627))

(assert (not b!62102))

(assert (not b!62124))

(assert (not b!62143))

(assert (not b!62110))

(assert (not b!62132))

(assert (not b!62125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(declare-fun d!52641 () Bool)

(assert (=> (and d!52639 d!52641 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(assert (=> (and d!52641 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(assert (=> (and d!52637 d!52641 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(declare-fun c!13594 () Bool)

(assert (=> d!52641 (= c!13594 (is-Sum!306 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun e!33250 () Int)

(assert (=> d!52641 (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) e!33250)))

(declare-fun b!62147 () Bool)

(assert (=> b!62147 (= e!33250 (+ (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949)))))

(declare-fun b!62148 () Bool)

(assert (=> b!62148 (= e!33250 (ite (and (is-Elem!304 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= (key!362 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949)) (value!4897 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) 0))))

(assert (= (and d!52641 c!13594) b!62147))

(assert (= (and d!52641 (not c!13594)) b!62148))

(declare-fun bs!37346 () Bool)

(declare-fun m!67934 () Bool)

(assert (= bs!37346 m!67934))

(assert (=> bs!37346 s!1909))

(assert (=> b!62147 m!67934))

(declare-fun bs!37347 () Bool)

(declare-fun m!67936 () Bool)

(assert (= bs!37347 m!67936))

(assert (=> bs!37347 s!1909))

(assert (=> b!62147 m!67936))

(assert (=> b!62145 d!52641))

(declare-fun d!52643 () Bool)

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(assert (=> (and d!52643 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(assert (=> (and d!52639 d!52643 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(assert (=> (and d!52641 d!52643 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))

(assert (=> (and d!52637 d!52643 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949))))

(declare-fun c!13595 () Bool)

(assert (=> d!52643 (= c!13595 (is-Sum!306 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun e!33251 () Int)

(assert (=> d!52643 (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) e!33251)))

(declare-fun b!62149 () Bool)

(assert (=> b!62149 (= e!33251 (+ (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949)))))

(declare-fun b!62150 () Bool)

(assert (=> b!62150 (= e!33251 (ite (and (is-Elem!304 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (= (key!362 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949)) (value!4897 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) 0))))

(assert (= (and d!52643 c!13595) b!62149))

(assert (= (and d!52643 (not c!13595)) b!62150))

(declare-fun bs!37348 () Bool)

(declare-fun m!67938 () Bool)

(assert (= bs!37348 m!67938))

(assert (=> bs!37348 s!1909))

(assert (=> b!62149 m!67938))

(declare-fun bs!37349 () Bool)

(declare-fun m!67940 () Bool)

(assert (= bs!37349 m!67940))

(assert (=> bs!37349 s!1909))

(assert (=> b!62149 m!67940))

(assert (=> b!62145 d!52643))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (bag!909 res!28283)))))

(declare-fun d!52645 () Bool)

(assert (=> (and d!52643 d!52645 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (left!1397 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (bag!909 res!28283)))))

(assert (=> (and d!52645 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (bag!909 res!28283)))))

(assert (=> (and d!52639 d!52645 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (left!1397 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (bag!909 res!28283)))))

(assert (=> (and d!52641 d!52645 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (left!1397 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (bag!909 res!28283)))))

(assert (=> (and d!52637 d!52645 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (left!1397 (bag!909 res!28283)) x!26949))))

(declare-fun c!13596 () Bool)

(assert (=> d!52645 (= c!13596 (is-Sum!306 (left!1397 (bag!909 res!28283))))))

(declare-fun e!33252 () Int)

(assert (=> d!52645 (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) e!33252)))

(declare-fun b!62151 () Bool)

(assert (=> b!62151 (= e!33252 (+ (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949)))))

(declare-fun b!62152 () Bool)

(assert (=> b!62152 (= e!33252 (ite (and (is-Elem!304 (left!1397 (bag!909 res!28283))) (= (key!362 (left!1397 (bag!909 res!28283))) x!26949)) (value!4897 (left!1397 (bag!909 res!28283))) 0))))

(assert (= (and d!52645 c!13596) b!62151))

(assert (= (and d!52645 (not c!13596)) b!62152))

(declare-fun bs!37350 () Bool)

(declare-fun m!67942 () Bool)

(assert (= bs!37350 m!67942))

(assert (=> bs!37350 s!1909))

(assert (=> b!62151 m!67942))

(declare-fun bs!37351 () Bool)

(declare-fun m!67944 () Bool)

(assert (= bs!37351 m!67944))

(assert (=> bs!37351 s!1909))

(assert (=> b!62151 m!67944))

(assert (=> b!62143 d!52645))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (bag!909 res!28283)))))

(declare-fun d!52647 () Bool)

(assert (=> (and d!52643 d!52647 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (right!1400 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (bag!909 res!28283)))))

(assert (=> (and d!52645 d!52647 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (bag!909 res!28283)))))

(assert (=> (and d!52639 d!52647 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (right!1400 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (bag!909 res!28283)))))

(assert (=> (and d!52647 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (bag!909 res!28283)))))

(assert (=> (and d!52641 d!52647 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (right!1400 (bag!909 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (bag!909 res!28283)))))

(assert (=> (and d!52637 d!52647 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (bag!909 res!28283))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (right!1400 (bag!909 res!28283)) x!26949))))

(declare-fun c!13597 () Bool)

(assert (=> d!52647 (= c!13597 (is-Sum!306 (right!1400 (bag!909 res!28283))))))

(declare-fun e!33253 () Int)

(assert (=> d!52647 (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) e!33253)))

(declare-fun b!62153 () Bool)

(assert (=> b!62153 (= e!33253 (+ (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949)))))

(declare-fun b!62154 () Bool)

(assert (=> b!62154 (= e!33253 (ite (and (is-Elem!304 (right!1400 (bag!909 res!28283))) (= (key!362 (right!1400 (bag!909 res!28283))) x!26949)) (value!4897 (right!1400 (bag!909 res!28283))) 0))))

(assert (= (and d!52647 c!13597) b!62153))

(assert (= (and d!52647 (not c!13597)) b!62154))

(declare-fun bs!37352 () Bool)

(declare-fun m!67946 () Bool)

(assert (= bs!37352 m!67946))

(assert (=> bs!37352 s!1909))

(assert (=> b!62153 m!67946))

(declare-fun bs!37353 () Bool)

(declare-fun m!67948 () Bool)

(assert (= bs!37353 m!67948))

(assert (=> bs!37353 s!1909))

(assert (=> b!62153 m!67948))

(assert (=> b!62143 d!52647))

(push 1)

(assert (not b!62114))

(assert (not b!62104))

(assert (not b!62153))

(assert (not b!62112))

(assert (not b!62147))

(assert (not d!52625))

(assert (not b!62136))

(assert (not b!62134))

(assert (not b!62138))

(assert (not d!52627))

(assert (not b!62102))

(assert (not b!62124))

(assert (not b!62149))

(assert (not b!62110))

(assert (not b!62151))

(assert (not b!62132))

(assert (not b!62125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!52649 () Bool)

(declare-fun lt!11453 () Int)

(assert (=> d!52649 (>= lt!11453 0)))

(declare-fun e!33254 () Int)

(assert (=> d!52649 (= lt!11453 e!33254)))

(declare-fun c!13598 () Bool)

(assert (=> d!52649 (= c!13598 (is-Nil!526 lt!11447))))

(assert (=> d!52649 (= (size!526 lt!11447) lt!11453)))

(declare-fun b!62155 () Bool)

(assert (=> b!62155 (= e!33254 0)))

(declare-fun b!62156 () Bool)

(assert (=> b!62156 (= e!33254 (+ 1 (size!526 (t!47255 lt!11447))))))

(assert (= (and d!52649 c!13598) b!62155))

(assert (= (and d!52649 (not c!13598)) b!62156))

(declare-fun m!67950 () Bool)

(assert (=> b!62156 m!67950))

(assert (=> b!62125 d!52649))

(assert (=> b!62125 d!52631))

(assert (=> b!62125 d!52633))

(declare-fun d!52651 () Bool)

(declare-fun res!28894 () Bool)

(declare-fun e!33255 () Bool)

(assert (=> d!52651 (=> res!28894 e!33255)))

(assert (=> d!52651 (= res!28894 (not (and (is-Cons!525 (t!47255 l1!364)) (is-Cons!525 (t!47255 (t!47255 l1!364))))))))

(assert (=> d!52651 (= (isSorted!3 (t!47255 l1!364)) e!33255)))

(declare-fun b!62157 () Bool)

(declare-fun e!33256 () Bool)

(assert (=> b!62157 (= e!33255 e!33256)))

(declare-fun res!28895 () Bool)

(assert (=> b!62157 (=> (not res!28895) (not e!33256))))

(assert (=> b!62157 (= res!28895 (<= (h!753 (t!47255 l1!364)) (h!753 (t!47255 (t!47255 l1!364)))))))

(declare-fun b!62158 () Bool)

(assert (=> b!62158 (= e!33256 (isSorted!3 (t!47255 (t!47255 l1!364))))))

(assert (= (and d!52651 (not res!28894)) b!62157))

(assert (= (and b!62157 res!28895) b!62158))

(declare-fun m!67952 () Bool)

(assert (=> b!62158 m!67952))

(assert (=> b!62104 d!52651))

(declare-fun d!52653 () Bool)

(declare-fun c!13601 () Bool)

(assert (=> d!52653 (= c!13601 (is-Nil!526 lt!11447))))

(declare-fun e!33259 () (Set Int))

(assert (=> d!52653 (= (content!104 lt!11447) e!33259)))

(declare-fun b!62163 () Bool)

(assert (=> b!62163 (= e!33259 (as emptyset (Set Int)))))

(declare-fun b!62164 () Bool)

(assert (=> b!62164 (= e!33259 (union (insert (h!753 lt!11447) (as emptyset (Set Int))) (content!104 (t!47255 lt!11447))))))

(assert (= (and d!52653 c!13601) b!62163))

(assert (= (and d!52653 (not c!13601)) b!62164))

(declare-fun m!67954 () Bool)

(assert (=> b!62164 m!67954))

(declare-fun m!67956 () Bool)

(assert (=> b!62164 m!67956))

(assert (=> d!52627 d!52653))

(declare-fun d!52655 () Bool)

(declare-fun c!13602 () Bool)

(assert (=> d!52655 (= c!13602 (is-Nil!526 l1!364))))

(declare-fun e!33260 () (Set Int))

(assert (=> d!52655 (= (content!104 l1!364) e!33260)))

(declare-fun b!62165 () Bool)

(assert (=> b!62165 (= e!33260 (as emptyset (Set Int)))))

(declare-fun b!62166 () Bool)

(assert (=> b!62166 (= e!33260 (union (insert (h!753 l1!364) (as emptyset (Set Int))) (content!104 (t!47255 l1!364))))))

(assert (= (and d!52655 c!13602) b!62165))

(assert (= (and d!52655 (not c!13602)) b!62166))

(declare-fun m!67958 () Bool)

(assert (=> b!62166 m!67958))

(declare-fun m!67960 () Bool)

(assert (=> b!62166 m!67960))

(assert (=> d!52627 d!52655))

(declare-fun d!52657 () Bool)

(declare-fun c!13603 () Bool)

(assert (=> d!52657 (= c!13603 (is-Nil!526 l2!357))))

(declare-fun e!33261 () (Set Int))

(assert (=> d!52657 (= (content!104 l2!357) e!33261)))

(declare-fun b!62167 () Bool)

(assert (=> b!62167 (= e!33261 (as emptyset (Set Int)))))

(declare-fun b!62168 () Bool)

(assert (=> b!62168 (= e!33261 (union (insert (h!753 l2!357) (as emptyset (Set Int))) (content!104 (t!47255 l2!357))))))

(assert (= (and d!52657 c!13603) b!62167))

(assert (= (and d!52657 (not c!13603)) b!62168))

(declare-fun m!67962 () Bool)

(assert (=> b!62168 m!67962))

(declare-fun m!67964 () Bool)

(assert (=> b!62168 m!67964))

(assert (=> d!52627 d!52657))

(declare-fun d!52659 () Bool)

(assert (=> (and d!52659 (= (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52659 (= (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)))))

(assert (=> (and d!52659 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 res!28283))) (= (h!753 res!28283) (h!753 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)))))

(assert (=> d!52659 (= (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (Sum!306 (bag!909 (t!47255 res!28283)) (Elem!304 (h!753 res!28283) 1)))))

(assert (=> b!62110 d!52659))

(assert (=> (and d!52621 (= (bag!909 l1!364) (bag!909 (t!47255 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 (t!47255 res!28283)))))

(declare-fun d!52661 () Bool)

(assert (=> (and d!52621 d!52661 (= l1!364 (t!47255 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52661 (= (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52661 (= (t!47255 res!28283) (t!47255 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52617 (= (bag!909 res!28283) (bag!909 (t!47255 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52617 d!52661 (= res!28283 (t!47255 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52623 (= (bag!909 l2!357) (bag!909 (t!47255 res!28283)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 (t!47255 res!28283)))))

(assert (=> (and d!52623 d!52661 (= l2!357 (t!47255 res!28283))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 (t!47255 res!28283)))))

(declare-fun c!13604 () Bool)

(assert (=> d!52661 (= c!13604 (is-Nil!526 (t!47255 res!28283)))))

(declare-fun e!33262 () Bag!596)

(assert (=> d!52661 (= (bag!909 (t!47255 res!28283)) e!33262)))

(declare-fun b!62169 () Bool)

(assert (=> b!62169 (= e!33262 Leaf!398)))

(declare-fun b!62170 () Bool)

(assert (=> b!62170 (= e!33262 (add!310 (bag!909 (t!47255 (t!47255 res!28283))) (h!753 (t!47255 res!28283))))))

(assert (= (and d!52661 c!13604) b!62169))

(assert (= (and d!52661 (not c!13604)) b!62170))

(declare-fun m!67966 () Bool)

(assert (=> b!62170 m!67966))

(assert (=> b!62170 m!67966))

(declare-fun m!67968 () Bool)

(assert (=> b!62170 m!67968))

(assert (=> b!62110 d!52661))

(declare-fun d!52663 () Bool)

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52663 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52643 d!52663 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52645 d!52663 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52639 d!52663 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52647 d!52663 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52641 d!52663 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (left!1397 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52637 d!52663 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949))))

(declare-fun c!13605 () Bool)

(assert (=> d!52663 (= c!13605 (is-Sum!306 (left!1397 (right!1400 (bag!909 res!28283)))))))

(declare-fun e!33263 () Int)

(assert (=> d!52663 (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) e!33263)))

(declare-fun b!62171 () Bool)

(assert (=> b!62171 (= e!33263 (+ (get!606 (left!1397 (left!1397 (right!1400 (bag!909 res!28283)))) x!26949) (get!606 (right!1400 (left!1397 (right!1400 (bag!909 res!28283)))) x!26949)))))

(declare-fun b!62172 () Bool)

(assert (=> b!62172 (= e!33263 (ite (and (is-Elem!304 (left!1397 (right!1400 (bag!909 res!28283)))) (= (key!362 (left!1397 (right!1400 (bag!909 res!28283)))) x!26949)) (value!4897 (left!1397 (right!1400 (bag!909 res!28283)))) 0))))

(assert (= (and d!52663 c!13605) b!62171))

(assert (= (and d!52663 (not c!13605)) b!62172))

(declare-fun bs!37354 () Bool)

(declare-fun m!67970 () Bool)

(assert (= bs!37354 m!67970))

(assert (=> bs!37354 s!1909))

(assert (=> b!62171 m!67970))

(declare-fun bs!37355 () Bool)

(declare-fun m!67972 () Bool)

(assert (= bs!37355 m!67972))

(assert (=> bs!37355 s!1909))

(assert (=> b!62171 m!67972))

(assert (=> b!62153 d!52663))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (bag!909 res!28283))))))

(declare-fun d!52665 () Bool)

(assert (=> (and d!52663 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52643 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52645 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52639 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52647 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52641 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52665 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (right!1400 (right!1400 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (right!1400 (bag!909 res!28283))))))

(assert (=> (and d!52637 d!52665 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (right!1400 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949))))

(declare-fun c!13606 () Bool)

(assert (=> d!52665 (= c!13606 (is-Sum!306 (right!1400 (right!1400 (bag!909 res!28283)))))))

(declare-fun e!33264 () Int)

(assert (=> d!52665 (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) e!33264)))

(declare-fun b!62173 () Bool)

(assert (=> b!62173 (= e!33264 (+ (get!606 (left!1397 (right!1400 (right!1400 (bag!909 res!28283)))) x!26949) (get!606 (right!1400 (right!1400 (right!1400 (bag!909 res!28283)))) x!26949)))))

(declare-fun b!62174 () Bool)

(assert (=> b!62174 (= e!33264 (ite (and (is-Elem!304 (right!1400 (right!1400 (bag!909 res!28283)))) (= (key!362 (right!1400 (right!1400 (bag!909 res!28283)))) x!26949)) (value!4897 (right!1400 (right!1400 (bag!909 res!28283)))) 0))))

(assert (= (and d!52665 c!13606) b!62173))

(assert (= (and d!52665 (not c!13606)) b!62174))

(declare-fun bs!37356 () Bool)

(declare-fun m!67974 () Bool)

(assert (= bs!37356 m!67974))

(assert (=> bs!37356 s!1909))

(assert (=> b!62173 m!67974))

(declare-fun bs!37357 () Bool)

(declare-fun m!67976 () Bool)

(assert (= bs!37357 m!67976))

(assert (=> bs!37357 s!1909))

(assert (=> b!62173 m!67976))

(assert (=> b!62153 d!52665))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun d!52667 () Bool)

(assert (=> (and d!52663 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52643 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52645 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52639 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52647 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52641 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52665 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52637 d!52667 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52667 (= (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52667 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(declare-fun c!13607 () Bool)

(assert (=> d!52667 (= c!13607 (is-Sum!306 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))))

(declare-fun e!33265 () Int)

(assert (=> d!52667 (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) e!33265)))

(declare-fun b!62175 () Bool)

(assert (=> b!62175 (= e!33265 (+ (get!606 (left!1397 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949) (get!606 (right!1400 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)))))

(declare-fun b!62176 () Bool)

(assert (=> b!62176 (= e!33265 (ite (and (is-Elem!304 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= (key!362 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)) (value!4897 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) 0))))

(assert (= (and d!52667 c!13607) b!62175))

(assert (= (and d!52667 (not c!13607)) b!62176))

(declare-fun bs!37358 () Bool)

(declare-fun m!67978 () Bool)

(assert (= bs!37358 m!67978))

(assert (=> bs!37358 s!1909))

(assert (=> b!62175 m!67978))

(declare-fun bs!37359 () Bool)

(declare-fun m!67980 () Bool)

(assert (= bs!37359 m!67980))

(assert (=> bs!37359 s!1909))

(assert (=> b!62175 m!67980))

(assert (=> b!62147 d!52667))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun d!52669 () Bool)

(assert (=> (and d!52663 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52669 (= (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52669 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52643 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52645 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52639 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52647 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52641 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52665 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52637 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52667 (= (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52667 d!52669 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(declare-fun c!13608 () Bool)

(assert (=> d!52669 (= c!13608 (is-Sum!306 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))))

(declare-fun e!33266 () Int)

(assert (=> d!52669 (= (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) e!33266)))

(declare-fun b!62177 () Bool)

(assert (=> b!62177 (= e!33266 (+ (get!606 (left!1397 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949) (get!606 (right!1400 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)))))

(declare-fun b!62178 () Bool)

(assert (=> b!62178 (= e!33266 (ite (and (is-Elem!304 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= (key!362 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)) (value!4897 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) 0))))

(assert (= (and d!52669 c!13608) b!62177))

(assert (= (and d!52669 (not c!13608)) b!62178))

(declare-fun bs!37360 () Bool)

(declare-fun m!67982 () Bool)

(assert (= bs!37360 m!67982))

(assert (=> bs!37360 s!1909))

(assert (=> b!62177 m!67982))

(declare-fun bs!37361 () Bool)

(declare-fun m!67984 () Bool)

(assert (= bs!37361 m!67984))

(assert (=> bs!37361 s!1909))

(assert (=> b!62177 m!67984))

(assert (=> b!62147 d!52669))

(declare-fun d!52671 () Bool)

(declare-fun res!28896 () Bool)

(declare-fun e!33267 () Bool)

(assert (=> d!52671 (=> res!28896 e!33267)))

(assert (=> d!52671 (= res!28896 (not (and (is-Cons!525 (t!47255 l2!357)) (is-Cons!525 (t!47255 (t!47255 l2!357))))))))

(assert (=> d!52671 (= (isSorted!3 (t!47255 l2!357)) e!33267)))

(declare-fun b!62179 () Bool)

(declare-fun e!33268 () Bool)

(assert (=> b!62179 (= e!33267 e!33268)))

(declare-fun res!28897 () Bool)

(assert (=> b!62179 (=> (not res!28897) (not e!33268))))

(assert (=> b!62179 (= res!28897 (<= (h!753 (t!47255 l2!357)) (h!753 (t!47255 (t!47255 l2!357)))))))

(declare-fun b!62180 () Bool)

(assert (=> b!62180 (= e!33268 (isSorted!3 (t!47255 (t!47255 l2!357))))))

(assert (= (and d!52671 (not res!28896)) b!62179))

(assert (= (and b!62179 res!28897) b!62180))

(declare-fun m!67986 () Bool)

(assert (=> b!62180 m!67986))

(assert (=> b!62102 d!52671))

(assert (=> d!52625 d!52637))

(assert (=> d!52625 d!52639))

(declare-fun b!62181 () Bool)

(declare-fun e!33270 () List!560)

(assert (=> b!62181 (= e!33270 l2!357)))

(declare-fun b!62182 () Bool)

(assert (=> b!62182 (= e!33270 (Cons!525 (h!753 (t!47255 l1!364)) (++!64 (t!47255 (t!47255 l1!364)) l2!357)))))

(declare-fun lt!11454 () List!560)

(declare-fun e!33269 () Bool)

(declare-fun b!62184 () Bool)

(assert (=> b!62184 (= e!33269 (or (not (= l2!357 Nil!526)) (= lt!11454 (t!47255 l1!364))))))

(declare-fun b!62183 () Bool)

(declare-fun res!28898 () Bool)

(assert (=> b!62183 (=> (not res!28898) (not e!33269))))

(assert (=> b!62183 (= res!28898 (= (size!526 lt!11454) (+ (size!526 (t!47255 l1!364)) (size!526 l2!357))))))

(declare-fun d!52673 () Bool)

(assert (=> d!52673 e!33269))

(declare-fun res!28899 () Bool)

(assert (=> d!52673 (=> (not res!28899) (not e!33269))))

(assert (=> d!52673 (= res!28899 (= (content!104 lt!11454) (union (content!104 (t!47255 l1!364)) (content!104 l2!357))))))

(assert (=> d!52673 (= lt!11454 e!33270)))

(declare-fun c!13609 () Bool)

(assert (=> d!52673 (= c!13609 (is-Nil!526 (t!47255 l1!364)))))

(assert (=> d!52673 (= (++!64 (t!47255 l1!364) l2!357) lt!11454)))

(assert (= (and d!52673 c!13609) b!62181))

(assert (= (and d!52673 (not c!13609)) b!62182))

(assert (= (and d!52673 res!28899) b!62183))

(assert (= (and b!62183 res!28898) b!62184))

(declare-fun m!67988 () Bool)

(assert (=> b!62182 m!67988))

(declare-fun m!67990 () Bool)

(assert (=> b!62183 m!67990))

(assert (=> b!62183 m!67920))

(assert (=> b!62183 m!67874))

(declare-fun m!67992 () Bool)

(assert (=> d!52673 m!67992))

(assert (=> d!52673 m!67960))

(assert (=> d!52673 m!67916))

(assert (=> b!62124 d!52673))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun d!52675 () Bool)

(assert (=> (and d!52663 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52669 (= (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52669 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52643 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52645 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52639 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52675 (= (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52675 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52647 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52641 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52665 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52637 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52667 (= (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52667 d!52675 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(declare-fun c!13610 () Bool)

(assert (=> d!52675 (= c!13610 (is-Sum!306 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))))

(declare-fun e!33271 () Int)

(assert (=> d!52675 (= (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) e!33271)))

(declare-fun b!62185 () Bool)

(assert (=> b!62185 (= e!33271 (+ (get!606 (left!1397 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949) (get!606 (right!1400 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)))))

(declare-fun b!62186 () Bool)

(assert (=> b!62186 (= e!33271 (ite (and (is-Elem!304 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= (key!362 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)) (value!4897 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) 0))))

(assert (= (and d!52675 c!13610) b!62185))

(assert (= (and d!52675 (not c!13610)) b!62186))

(declare-fun bs!37362 () Bool)

(declare-fun m!67994 () Bool)

(assert (= bs!37362 m!67994))

(assert (=> bs!37362 s!1909))

(assert (=> b!62185 m!67994))

(declare-fun bs!37363 () Bool)

(declare-fun m!67996 () Bool)

(assert (= bs!37363 m!67996))

(assert (=> bs!37363 s!1909))

(assert (=> b!62185 m!67996))

(assert (=> b!62149 d!52675))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(declare-fun d!52677 () Bool)

(assert (=> (and d!52663 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52669 (= (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52669 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52677 (= (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52677 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52643 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52645 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52639 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52675 (= (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52675 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52647 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52641 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52665 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52637 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(assert (=> (and d!52667 (= (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))))))

(assert (=> (and d!52667 d!52677 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949))))

(declare-fun c!13611 () Bool)

(assert (=> d!52677 (= c!13611 (is-Sum!306 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))))))

(declare-fun e!33272 () Int)

(assert (=> d!52677 (= (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) e!33272)))

(declare-fun b!62187 () Bool)

(assert (=> b!62187 (= e!33272 (+ (get!606 (left!1397 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949) (get!606 (right!1400 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)))))

(declare-fun b!62188 () Bool)

(assert (=> b!62188 (= e!33272 (ite (and (is-Elem!304 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) (= (key!362 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) x!26949)) (value!4897 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))))) 0))))

(assert (= (and d!52677 c!13611) b!62187))

(assert (= (and d!52677 (not c!13611)) b!62188))

(declare-fun bs!37364 () Bool)

(declare-fun m!67998 () Bool)

(assert (= bs!37364 m!67998))

(assert (=> bs!37364 s!1909))

(assert (=> b!62187 m!67998))

(declare-fun bs!37365 () Bool)

(declare-fun m!68000 () Bool)

(assert (= bs!37365 m!68000))

(assert (=> bs!37365 s!1909))

(assert (=> b!62187 m!68000))

(assert (=> b!62149 d!52677))

(assert (=> (and d!52659 (= (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52659 (= (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))))

(declare-fun d!52679 () Bool)

(assert (=> (and d!52659 d!52679 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l2!357))) (= (h!753 res!28283) (h!753 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))))

(assert (=> (and d!52679 (= (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52679 (= (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))))

(assert (=> (and d!52679 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l2!357))) (= (h!753 l2!357) (h!753 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)))))

(assert (=> d!52679 (= (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (Sum!306 (bag!909 (t!47255 l2!357)) (Elem!304 (h!753 l2!357) 1)))))

(assert (=> b!62114 d!52679))

(assert (=> (and d!52621 (= (bag!909 l1!364) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 (t!47255 l2!357)))))

(declare-fun d!52681 () Bool)

(assert (=> (and d!52621 d!52681 (= l1!364 (t!47255 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52661 (= (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52661 d!52681 (= (t!47255 res!28283) (t!47255 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52617 (= (bag!909 res!28283) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52617 d!52681 (= res!28283 (t!47255 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52681 (= (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52681 (= (t!47255 l2!357) (t!47255 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52623 (= (bag!909 l2!357) (bag!909 (t!47255 l2!357)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 (t!47255 l2!357)))))

(assert (=> (and d!52623 d!52681 (= l2!357 (t!47255 l2!357))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 (t!47255 l2!357)))))

(declare-fun c!13612 () Bool)

(assert (=> d!52681 (= c!13612 (is-Nil!526 (t!47255 l2!357)))))

(declare-fun e!33273 () Bag!596)

(assert (=> d!52681 (= (bag!909 (t!47255 l2!357)) e!33273)))

(declare-fun b!62189 () Bool)

(assert (=> b!62189 (= e!33273 Leaf!398)))

(declare-fun b!62190 () Bool)

(assert (=> b!62190 (= e!33273 (add!310 (bag!909 (t!47255 (t!47255 l2!357))) (h!753 (t!47255 l2!357))))))

(assert (= (and d!52681 c!13612) b!62189))

(assert (= (and d!52681 (not c!13612)) b!62190))

(declare-fun m!68002 () Bool)

(assert (=> b!62190 m!68002))

(assert (=> b!62190 m!68002))

(declare-fun m!68004 () Bool)

(assert (=> b!62190 m!68004))

(assert (=> b!62114 d!52681))

(declare-fun d!52683 () Bool)

(declare-fun lt!11455 () Int)

(assert (=> d!52683 (>= lt!11455 0)))

(declare-fun e!33274 () Int)

(assert (=> d!52683 (= lt!11455 e!33274)))

(declare-fun c!13613 () Bool)

(assert (=> d!52683 (= c!13613 (is-Nil!526 (t!47255 res!28283)))))

(assert (=> d!52683 (= (size!526 (t!47255 res!28283)) lt!11455)))

(declare-fun b!62191 () Bool)

(assert (=> b!62191 (= e!33274 0)))

(declare-fun b!62192 () Bool)

(assert (=> b!62192 (= e!33274 (+ 1 (size!526 (t!47255 (t!47255 res!28283)))))))

(assert (= (and d!52683 c!13613) b!62191))

(assert (= (and d!52683 (not c!13613)) b!62192))

(declare-fun m!68006 () Bool)

(assert (=> b!62192 m!68006))

(assert (=> b!62132 d!52683))

(declare-fun d!52685 () Bool)

(declare-fun lt!11456 () Int)

(assert (=> d!52685 (>= lt!11456 0)))

(declare-fun e!33275 () Int)

(assert (=> d!52685 (= lt!11456 e!33275)))

(declare-fun c!13614 () Bool)

(assert (=> d!52685 (= c!13614 (is-Nil!526 (t!47255 l2!357)))))

(assert (=> d!52685 (= (size!526 (t!47255 l2!357)) lt!11456)))

(declare-fun b!62193 () Bool)

(assert (=> b!62193 (= e!33275 0)))

(declare-fun b!62194 () Bool)

(assert (=> b!62194 (= e!33275 (+ 1 (size!526 (t!47255 (t!47255 l2!357)))))))

(assert (= (and d!52685 c!13614) b!62193))

(assert (= (and d!52685 (not c!13614)) b!62194))

(declare-fun m!68008 () Bool)

(assert (=> b!62194 m!68008))

(assert (=> b!62136 d!52685))

(declare-fun d!52687 () Bool)

(declare-fun lt!11457 () Int)

(assert (=> d!52687 (>= lt!11457 0)))

(declare-fun e!33276 () Int)

(assert (=> d!52687 (= lt!11457 e!33276)))

(declare-fun c!13615 () Bool)

(assert (=> d!52687 (= c!13615 (is-Nil!526 (t!47255 l1!364)))))

(assert (=> d!52687 (= (size!526 (t!47255 l1!364)) lt!11457)))

(declare-fun b!62195 () Bool)

(assert (=> b!62195 (= e!33276 0)))

(declare-fun b!62196 () Bool)

(assert (=> b!62196 (= e!33276 (+ 1 (size!526 (t!47255 (t!47255 l1!364)))))))

(assert (= (and d!52687 c!13615) b!62195))

(assert (= (and d!52687 (not c!13615)) b!62196))

(declare-fun m!68010 () Bool)

(assert (=> b!62196 m!68010))

(assert (=> b!62134 d!52687))

(assert (=> (and d!52659 (= (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52659 (= (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(declare-fun d!52689 () Bool)

(assert (=> (and d!52659 d!52689 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l1!364))) (= (h!753 res!28283) (h!753 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 res!28283)) (h!753 res!28283)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(assert (=> (and d!52679 (= (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52679 (= (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(assert (=> (and d!52679 d!52689 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l1!364))) (= (h!753 l2!357) (h!753 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 l2!357)) (h!753 l2!357)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(assert (=> (and d!52689 (= (bag!909 (t!47255 l1!364)) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l1!364)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52689 (= (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(assert (=> (and d!52689 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l1!364)) (bag!909 (t!47255 l1!364))) (= (h!753 l1!364) (h!753 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)) (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)))))

(assert (=> d!52689 (= (add!310 (bag!909 (t!47255 l1!364)) (h!753 l1!364)) (Sum!306 (bag!909 (t!47255 l1!364)) (Elem!304 (h!753 l1!364) 1)))))

(assert (=> b!62112 d!52689))

(assert (=> (and d!52621 (= (bag!909 l1!364) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 (t!47255 l1!364)))))

(declare-fun d!52691 () Bool)

(assert (=> (and d!52621 d!52691 (= l1!364 (t!47255 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l1!364) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52661 (= (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52661 d!52691 (= (t!47255 res!28283) (t!47255 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 res!28283)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52617 (= (bag!909 res!28283) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52617 d!52691 (= res!28283 (t!47255 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52691 (= (bag!909 (t!47255 l1!364)) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l1!364)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52691 (= (t!47255 l1!364) (t!47255 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l1!364)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52681 (= (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52681 d!52691 (= (t!47255 l2!357) (t!47255 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 (t!47255 l2!357)) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52623 (= (bag!909 l2!357) (bag!909 (t!47255 l1!364)))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 (t!47255 l1!364)))))

(assert (=> (and d!52623 d!52691 (= l2!357 (t!47255 l1!364))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 l2!357) (bag!909 (t!47255 l1!364)))))

(declare-fun c!13616 () Bool)

(assert (=> d!52691 (= c!13616 (is-Nil!526 (t!47255 l1!364)))))

(declare-fun e!33277 () Bag!596)

(assert (=> d!52691 (= (bag!909 (t!47255 l1!364)) e!33277)))

(declare-fun b!62197 () Bool)

(assert (=> b!62197 (= e!33277 Leaf!398)))

(declare-fun b!62198 () Bool)

(assert (=> b!62198 (= e!33277 (add!310 (bag!909 (t!47255 (t!47255 l1!364))) (h!753 (t!47255 l1!364))))))

(assert (= (and d!52691 c!13616) b!62197))

(assert (= (and d!52691 (not c!13616)) b!62198))

(declare-fun m!68012 () Bool)

(assert (=> b!62198 m!68012))

(assert (=> b!62198 m!68012))

(declare-fun m!68014 () Bool)

(assert (=> b!62198 m!68014))

(assert (=> b!62112 d!52691))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283))))))

(declare-fun d!52693 () Bool)

(assert (=> (and d!52663 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52669 (= (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52669 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52677 (= (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52677 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52643 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52693 (= (left!1397 (left!1397 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52693 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52645 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52639 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52675 (= (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52675 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52647 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52641 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52665 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52637 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52667 (= (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52667 d!52693 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (left!1397 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949))))

(declare-fun c!13617 () Bool)

(assert (=> d!52693 (= c!13617 (is-Sum!306 (left!1397 (left!1397 (bag!909 res!28283)))))))

(declare-fun e!33278 () Int)

(assert (=> d!52693 (= (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949) e!33278)))

(declare-fun b!62199 () Bool)

(assert (=> b!62199 (= e!33278 (+ (get!606 (left!1397 (left!1397 (left!1397 (bag!909 res!28283)))) x!26949) (get!606 (right!1400 (left!1397 (left!1397 (bag!909 res!28283)))) x!26949)))))

(declare-fun b!62200 () Bool)

(assert (=> b!62200 (= e!33278 (ite (and (is-Elem!304 (left!1397 (left!1397 (bag!909 res!28283)))) (= (key!362 (left!1397 (left!1397 (bag!909 res!28283)))) x!26949)) (value!4897 (left!1397 (left!1397 (bag!909 res!28283)))) 0))))

(assert (= (and d!52693 c!13617) b!62199))

(assert (= (and d!52693 (not c!13617)) b!62200))

(declare-fun bs!37366 () Bool)

(declare-fun m!68016 () Bool)

(assert (= bs!37366 m!68016))

(assert (=> bs!37366 s!1909))

(assert (=> b!62199 m!68016))

(declare-fun bs!37367 () Bool)

(declare-fun m!68018 () Bool)

(assert (= bs!37367 m!68018))

(assert (=> bs!37367 s!1909))

(assert (=> b!62199 m!68018))

(assert (=> b!62151 d!52693))

(assert (=> (and d!52663 (= (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))))

(declare-fun d!52695 () Bool)

(assert (=> (and d!52663 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52669 (= (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52669 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52677 (= (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52677 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52643 (= (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52643 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52693 (= (left!1397 (left!1397 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52693 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52645 (= (left!1397 (bag!909 res!28283)) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52645 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (bag!909 res!28283)) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52639 (= (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52639 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (union!309 (bag!909 l1!364) (bag!909 l2!357)) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (union!309 (bag!909 l1!364) (bag!909 l2!357)) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52675 (= (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52675 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (right!1400 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52647 (= (right!1400 (bag!909 res!28283)) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52647 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (bag!909 res!28283)) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (bag!909 res!28283)) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52641 (= (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52641 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52695 (= (right!1400 (left!1397 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52695 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (left!1397 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52665 (= (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52665 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (right!1400 (right!1400 (bag!909 res!28283))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (right!1400 (right!1400 (bag!909 res!28283))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52637 (= (bag!909 res!28283) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52637 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (bag!909 res!28283) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (bag!909 res!28283) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(assert (=> (and d!52667 (= (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))) (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283))))))

(assert (=> (and d!52667 d!52695 (dynLambda!940 |eqBag[BigInt]!15| (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) (right!1400 (left!1397 (bag!909 res!28283)))) (= x!26949 x!26949)) (= (get!606 (left!1397 (left!1397 (union!309 (bag!909 l1!364) (bag!909 l2!357)))) x!26949) (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949))))

(declare-fun c!13618 () Bool)

(assert (=> d!52695 (= c!13618 (is-Sum!306 (right!1400 (left!1397 (bag!909 res!28283)))))))

(declare-fun e!33279 () Int)

(assert (=> d!52695 (= (get!606 (right!1400 (left!1397 (bag!909 res!28283))) x!26949) e!33279)))

(declare-fun b!62201 () Bool)

(assert (=> b!62201 (= e!33279 (+ (get!606 (left!1397 (right!1400 (left!1397 (bag!909 res!28283)))) x!26949) (get!606 (right!1400 (right!1400 (left!1397 (bag!909 res!28283)))) x!26949)))))

(declare-fun b!62202 () Bool)

(assert (=> b!62202 (= e!33279 (ite (and (is-Elem!304 (right!1400 (left!1397 (bag!909 res!28283)))) (= (key!362 (right!1400 (left!1397 (bag!909 res!28283)))) x!26949)) (value!4897 (right!1400 (left!1397 (bag!909 res!28283)))) 0))))

(assert (= (and d!52695 c!13618) b!62201))

(assert (= (and d!52695 (not c!13618)) b!62202))

(declare-fun bs!37368 () Bool)

(declare-fun m!68020 () Bool)

(assert (= bs!37368 m!68020))

(assert (=> bs!37368 s!1909))

(assert (=> b!62201 m!68020))

(declare-fun bs!37369 () Bool)

(declare-fun m!68022 () Bool)

(assert (= bs!37369 m!68022))

(assert (=> bs!37369 s!1909))

(assert (=> b!62201 m!68022))

(assert (=> b!62151 d!52695))

(declare-fun d!52697 () Bool)

(declare-fun res!28900 () Bool)

(declare-fun e!33280 () Bool)

(assert (=> d!52697 (=> res!28900 e!33280)))

(assert (=> d!52697 (= res!28900 (not (and (is-Cons!525 (t!47255 res!28283)) (is-Cons!525 (t!47255 (t!47255 res!28283))))))))

(assert (=> d!52697 (= (isSorted!3 (t!47255 res!28283)) e!33280)))

(declare-fun b!62203 () Bool)

(declare-fun e!33281 () Bool)

(assert (=> b!62203 (= e!33280 e!33281)))

(declare-fun res!28901 () Bool)

(assert (=> b!62203 (=> (not res!28901) (not e!33281))))

(assert (=> b!62203 (= res!28901 (<= (h!753 (t!47255 res!28283)) (h!753 (t!47255 (t!47255 res!28283)))))))

(declare-fun b!62204 () Bool)

(assert (=> b!62204 (= e!33281 (isSorted!3 (t!47255 (t!47255 res!28283))))))

(assert (= (and d!52697 (not res!28900)) b!62203))

(assert (= (and b!62203 res!28901) b!62204))

(declare-fun m!68024 () Bool)

(assert (=> b!62204 m!68024))

(assert (=> b!62138 d!52697))

(push 1)

(assert (not b!62182))

(assert (not b!62180))

(assert (not b!62194))

(assert (not b!62175))

(assert (not b!62204))

(assert (not b!62192))

(assert (not b!62185))

(assert (not b!62196))

(assert (not b!62166))

(assert (not d!52673))

(assert (not b!62190))

(assert (not b!62177))

(assert (not b!62201))

(assert (not b!62173))

(assert (not b!62158))

(assert (not b!62170))

(assert (not b!62187))

(assert (not b!62199))

(assert (not b!62171))

(assert (not b!62198))

(assert (not b!62156))

(assert (not b!62183))

(assert (not b!62168))

(assert (not b!62164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

