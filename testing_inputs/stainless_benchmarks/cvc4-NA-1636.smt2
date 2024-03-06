; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11396 () Bool)

(assert start!11396)

(declare-fun b!87511 () Bool)

(declare-fun e!47481 () Bool)

(declare-datatypes () ((Color!20 (Red!19) (Black!19))))

(declare-datatypes () ((Tree!117 (Empty!200) (Node!161 (color!50 Color!20) (left!1660 Tree!117) (value!6807 Int) (right!1663 Tree!117)))))

(declare-fun res!44620 () Tree!117)

(declare-fun blackBalanced!0 (Tree!117) Bool)

(assert (=> b!87511 (= e!47481 (not (blackBalanced!0 res!44620)))))

(declare-fun b!87510 () Bool)

(declare-fun e!47480 () Bool)

(assert (=> b!87510 (= e!47480 e!47481)))

(declare-fun res!45621 () Bool)

(assert (=> b!87510 (=> res!45621 e!47481)))

(declare-fun redNodesHaveBlackChildren!0 (Tree!117) Bool)

(assert (=> b!87510 (= res!45621 (not (redNodesHaveBlackChildren!0 res!44620)))))

(declare-fun b!87509 () Bool)

(declare-fun res!45619 () Bool)

(assert (=> b!87509 (=> (not res!45619) (not e!47480))))

(declare-fun n!1699 () Tree!117)

(assert (=> b!87509 (= res!45619 (and (or (not (is-Node!161 n!1699)) (not (is-Red!19 (color!50 n!1699)))) (= res!44620 n!1699)))))

(declare-fun res!45620 () Bool)

(assert (=> start!11396 (=> (not res!45620) (not e!47480))))

(declare-fun redDescHaveBlackChildren!0 (Tree!117) Bool)

(assert (=> start!11396 (= res!45620 (redDescHaveBlackChildren!0 n!1699))))

(assert (=> start!11396 e!47480))

(assert (=> start!11396 true))

(declare-fun b!87508 () Bool)

(declare-fun res!45618 () Bool)

(assert (=> b!87508 (=> (not res!45618) (not e!47480))))

(assert (=> b!87508 (= res!45618 (blackBalanced!0 n!1699))))

(assert (= (and start!11396 res!45620) b!87508))

(assert (= (and b!87508 res!45618) b!87509))

(assert (= (and b!87509 res!45619) b!87510))

(assert (= (and b!87510 (not res!45621)) b!87511))

(declare-fun m!83890 () Bool)

(assert (=> b!87511 m!83890))

(declare-fun m!83892 () Bool)

(assert (=> b!87510 m!83892))

(declare-fun m!83894 () Bool)

(assert (=> start!11396 m!83894))

(declare-fun m!83896 () Bool)

(assert (=> b!87508 m!83896))

(push 1)

(assert (not b!87511))

(assert (not b!87508))

(assert (not start!11396))

(assert (not b!87510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58289 () Bool)

(declare-fun res!45629 () Bool)

(declare-fun e!47487 () Bool)

(assert (=> d!58289 (=> res!45629 e!47487)))

(assert (=> d!58289 (= res!45629 (not (is-Node!161 res!44620)))))

(assert (=> d!58289 (= (blackBalanced!0 res!44620) e!47487)))

(declare-fun b!87518 () Bool)

(declare-fun e!47486 () Bool)

(assert (=> b!87518 (= e!47487 e!47486)))

(declare-fun res!45630 () Bool)

(assert (=> b!87518 (=> (not res!45630) (not e!47486))))

(assert (=> b!87518 (= res!45630 (blackBalanced!0 (left!1660 res!44620)))))

(declare-fun b!87519 () Bool)

(declare-fun res!45628 () Bool)

(assert (=> b!87519 (=> (not res!45628) (not e!47486))))

(assert (=> b!87519 (= res!45628 (blackBalanced!0 (right!1663 res!44620)))))

(declare-fun b!87520 () Bool)

(declare-fun blackHeight!0 (Tree!117) Int)

(assert (=> b!87520 (= e!47486 (= (blackHeight!0 (left!1660 res!44620)) (blackHeight!0 (right!1663 res!44620))))))

(assert (= (and d!58289 (not res!45629)) b!87518))

(assert (= (and b!87518 res!45630) b!87519))

(assert (= (and b!87519 res!45628) b!87520))

(declare-fun m!83898 () Bool)

(assert (=> b!87518 m!83898))

(declare-fun m!83900 () Bool)

(assert (=> b!87519 m!83900))

(declare-fun m!83902 () Bool)

(assert (=> b!87520 m!83902))

(declare-fun m!83904 () Bool)

(assert (=> b!87520 m!83904))

(assert (=> b!87511 d!58289))

(declare-fun d!58291 () Bool)

(declare-fun res!45632 () Bool)

(declare-fun e!47489 () Bool)

(assert (=> d!58291 (=> res!45632 e!47489)))

(assert (=> d!58291 (= res!45632 (not (is-Node!161 n!1699)))))

(assert (=> d!58291 (= (blackBalanced!0 n!1699) e!47489)))

(declare-fun b!87521 () Bool)

(declare-fun e!47488 () Bool)

(assert (=> b!87521 (= e!47489 e!47488)))

(declare-fun res!45633 () Bool)

(assert (=> b!87521 (=> (not res!45633) (not e!47488))))

(assert (=> b!87521 (= res!45633 (blackBalanced!0 (left!1660 n!1699)))))

(declare-fun b!87522 () Bool)

(declare-fun res!45631 () Bool)

(assert (=> b!87522 (=> (not res!45631) (not e!47488))))

(assert (=> b!87522 (= res!45631 (blackBalanced!0 (right!1663 n!1699)))))

(declare-fun b!87523 () Bool)

(assert (=> b!87523 (= e!47488 (= (blackHeight!0 (left!1660 n!1699)) (blackHeight!0 (right!1663 n!1699))))))

(assert (= (and d!58291 (not res!45632)) b!87521))

(assert (= (and b!87521 res!45633) b!87522))

(assert (= (and b!87522 res!45631) b!87523))

(declare-fun m!83906 () Bool)

(assert (=> b!87521 m!83906))

(declare-fun m!83908 () Bool)

(assert (=> b!87522 m!83908))

(declare-fun m!83910 () Bool)

(assert (=> b!87523 m!83910))

(declare-fun m!83912 () Bool)

(assert (=> b!87523 m!83912))

(assert (=> b!87508 d!58291))

(declare-fun d!58293 () Bool)

(declare-fun res!45638 () Bool)

(declare-fun e!47494 () Bool)

(assert (=> d!58293 (=> res!45638 e!47494)))

(assert (=> d!58293 (= res!45638 (is-Empty!200 n!1699))))

(assert (=> d!58293 (= (redDescHaveBlackChildren!0 n!1699) e!47494)))

(declare-fun b!87528 () Bool)

(declare-fun e!47495 () Bool)

(assert (=> b!87528 (= e!47494 e!47495)))

(declare-fun res!45639 () Bool)

(assert (=> b!87528 (=> (not res!45639) (not e!47495))))

(assert (=> b!87528 (= res!45639 (redNodesHaveBlackChildren!0 (left!1660 n!1699)))))

(declare-fun b!87529 () Bool)

(assert (=> b!87529 (= e!47495 (redNodesHaveBlackChildren!0 (right!1663 n!1699)))))

(assert (= (and d!58293 (not res!45638)) b!87528))

(assert (= (and b!87528 res!45639) b!87529))

(declare-fun m!83914 () Bool)

(assert (=> b!87528 m!83914))

(declare-fun m!83916 () Bool)

(assert (=> b!87529 m!83916))

(assert (=> start!11396 d!58293))

(declare-fun b!87544 () Bool)

(declare-fun e!47506 () Bool)

(assert (=> b!87544 (= e!47506 (redNodesHaveBlackChildren!0 (right!1663 res!44620)))))

(declare-fun b!87545 () Bool)

(declare-fun e!47504 () Bool)

(assert (=> b!87545 (= e!47504 (redNodesHaveBlackChildren!0 (right!1663 res!44620)))))

(declare-fun b!87546 () Bool)

(declare-fun e!47505 () Bool)

(declare-fun e!47507 () Bool)

(assert (=> b!87546 (= e!47505 e!47507)))

(declare-fun c!21682 () Bool)

(assert (=> b!87546 (= c!21682 (and (is-Node!161 res!44620) (is-Black!19 (color!50 res!44620))))))

(declare-fun d!58295 () Bool)

(declare-fun res!45650 () Bool)

(assert (=> d!58295 (=> res!45650 e!47505)))

(assert (=> d!58295 (= res!45650 (is-Empty!200 res!44620))))

(assert (=> d!58295 (= (redNodesHaveBlackChildren!0 res!44620) e!47505)))

(declare-fun b!87547 () Bool)

(declare-fun res!45653 () Bool)

(assert (=> b!87547 (=> (not res!45653) (not e!47506))))

(declare-fun isBlack!0 (Tree!117) Bool)

(assert (=> b!87547 (= res!45653 (isBlack!0 (right!1663 res!44620)))))

(declare-fun b!87548 () Bool)

(declare-fun res!45651 () Bool)

(assert (=> b!87548 (=> (not res!45651) (not e!47506))))

(assert (=> b!87548 (= res!45651 (redNodesHaveBlackChildren!0 (left!1660 res!44620)))))

(declare-fun b!87549 () Bool)

(assert (=> b!87549 (= e!47507 e!47506)))

(declare-fun res!45654 () Bool)

(assert (=> b!87549 (=> (not res!45654) (not e!47506))))

(assert (=> b!87549 (= res!45654 (isBlack!0 (left!1660 res!44620)))))

(declare-fun b!87550 () Bool)

(assert (=> b!87550 (= e!47507 e!47504)))

(declare-fun res!45652 () Bool)

(assert (=> b!87550 (=> (not res!45652) (not e!47504))))

(assert (=> b!87550 (= res!45652 (redNodesHaveBlackChildren!0 (left!1660 res!44620)))))

(assert (= (and d!58295 (not res!45650)) b!87546))

(assert (= (and b!87550 res!45652) b!87545))

(assert (= (and b!87549 res!45654) b!87547))

(assert (= (and b!87547 res!45653) b!87548))

(assert (= (and b!87548 res!45651) b!87544))

(assert (= (and b!87546 c!21682) b!87550))

(assert (= (and b!87546 (not c!21682)) b!87549))

(declare-fun m!83918 () Bool)

(assert (=> b!87549 m!83918))

(declare-fun m!83920 () Bool)

(assert (=> b!87544 m!83920))

(declare-fun m!83922 () Bool)

(assert (=> b!87548 m!83922))

(declare-fun m!83924 () Bool)

(assert (=> b!87547 m!83924))

(assert (=> b!87550 m!83922))

(assert (=> b!87545 m!83920))

(assert (=> b!87510 d!58295))

(push 1)

(assert (not b!87523))

(assert (not b!87520))

(assert (not b!87518))

(assert (not b!87547))

(assert (not b!87521))

(assert (not b!87529))

(assert (not b!87549))

(assert (not b!87519))

(assert (not b!87550))

(assert (not b!87544))

(assert (not b!87545))

(assert (not b!87548))

(assert (not b!87522))

(assert (not b!87528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

