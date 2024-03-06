; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11388 () Bool)

(assert start!11388)

(declare-fun res!45576 () Bool)

(declare-fun e!47448 () Bool)

(assert (=> start!11388 (=> (not res!45576) (not e!47448))))

(declare-datatypes () ((Color!19 (Red!18) (Black!18))))

(declare-datatypes () ((Tree!116 (Empty!199) (Node!160 (color!49 Color!19) (left!1659 Tree!116) (value!6806 Int) (right!1662 Tree!116)))))

(declare-fun n!1699 () Tree!116)

(declare-fun redDescHaveBlackChildren!0 (Tree!116) Bool)

(assert (=> start!11388 (= res!45576 (redDescHaveBlackChildren!0 n!1699))))

(assert (=> start!11388 e!47448))

(assert (=> start!11388 true))

(declare-fun b!87457 () Bool)

(declare-fun res!45573 () Bool)

(assert (=> b!87457 (=> (not res!45573) (not e!47448))))

(declare-fun blackBalanced!0 (Tree!116) Bool)

(assert (=> b!87457 (= res!45573 (blackBalanced!0 n!1699))))

(declare-fun b!87460 () Bool)

(declare-fun e!47449 () Bool)

(declare-fun res!44619 () Tree!116)

(assert (=> b!87460 (= e!47449 (not (blackBalanced!0 res!44619)))))

(declare-fun b!87459 () Bool)

(assert (=> b!87459 (= e!47448 e!47449)))

(declare-fun res!45574 () Bool)

(assert (=> b!87459 (=> res!45574 e!47449)))

(declare-fun redNodesHaveBlackChildren!0 (Tree!116) Bool)

(assert (=> b!87459 (= res!45574 (not (redNodesHaveBlackChildren!0 res!44619)))))

(declare-fun b!87458 () Bool)

(declare-fun res!45575 () Bool)

(assert (=> b!87458 (=> (not res!45575) (not e!47448))))

(assert (=> b!87458 (= res!45575 (and (is-Node!160 n!1699) (is-Red!18 (color!49 n!1699)) (= res!44619 (Node!160 Black!18 (left!1659 n!1699) (value!6806 n!1699) (right!1662 n!1699)))))))

(assert (= (and start!11388 res!45576) b!87457))

(assert (= (and b!87457 res!45573) b!87458))

(assert (= (and b!87458 res!45575) b!87459))

(assert (= (and b!87459 (not res!45574)) b!87460))

(declare-fun m!83854 () Bool)

(assert (=> start!11388 m!83854))

(declare-fun m!83856 () Bool)

(assert (=> b!87457 m!83856))

(declare-fun m!83858 () Bool)

(assert (=> b!87460 m!83858))

(declare-fun m!83860 () Bool)

(assert (=> b!87459 m!83860))

(push 1)

(assert (not b!87460))

(assert (not b!87457))

(assert (not start!11388))

(assert (not b!87459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58281 () Bool)

(declare-fun res!45585 () Bool)

(declare-fun e!47454 () Bool)

(assert (=> d!58281 (=> res!45585 e!47454)))

(assert (=> d!58281 (= res!45585 (not (is-Node!160 res!44619)))))

(assert (=> d!58281 (= (blackBalanced!0 res!44619) e!47454)))

(declare-fun b!87467 () Bool)

(declare-fun e!47455 () Bool)

(assert (=> b!87467 (= e!47454 e!47455)))

(declare-fun res!45583 () Bool)

(assert (=> b!87467 (=> (not res!45583) (not e!47455))))

(assert (=> b!87467 (= res!45583 (blackBalanced!0 (left!1659 res!44619)))))

(declare-fun b!87468 () Bool)

(declare-fun res!45584 () Bool)

(assert (=> b!87468 (=> (not res!45584) (not e!47455))))

(assert (=> b!87468 (= res!45584 (blackBalanced!0 (right!1662 res!44619)))))

(declare-fun b!87469 () Bool)

(declare-fun blackHeight!0 (Tree!116) Int)

(assert (=> b!87469 (= e!47455 (= (blackHeight!0 (left!1659 res!44619)) (blackHeight!0 (right!1662 res!44619))))))

(assert (= (and d!58281 (not res!45585)) b!87467))

(assert (= (and b!87467 res!45583) b!87468))

(assert (= (and b!87468 res!45584) b!87469))

(declare-fun m!83862 () Bool)

(assert (=> b!87467 m!83862))

(declare-fun m!83864 () Bool)

(assert (=> b!87468 m!83864))

(declare-fun m!83866 () Bool)

(assert (=> b!87469 m!83866))

(declare-fun m!83868 () Bool)

(assert (=> b!87469 m!83868))

(assert (=> b!87460 d!58281))

(declare-fun d!58283 () Bool)

(declare-fun res!45588 () Bool)

(declare-fun e!47456 () Bool)

(assert (=> d!58283 (=> res!45588 e!47456)))

(assert (=> d!58283 (= res!45588 (not (is-Node!160 n!1699)))))

(assert (=> d!58283 (= (blackBalanced!0 n!1699) e!47456)))

(declare-fun b!87470 () Bool)

(declare-fun e!47457 () Bool)

(assert (=> b!87470 (= e!47456 e!47457)))

(declare-fun res!45586 () Bool)

(assert (=> b!87470 (=> (not res!45586) (not e!47457))))

(assert (=> b!87470 (= res!45586 (blackBalanced!0 (left!1659 n!1699)))))

(declare-fun b!87471 () Bool)

(declare-fun res!45587 () Bool)

(assert (=> b!87471 (=> (not res!45587) (not e!47457))))

(assert (=> b!87471 (= res!45587 (blackBalanced!0 (right!1662 n!1699)))))

(declare-fun b!87472 () Bool)

(assert (=> b!87472 (= e!47457 (= (blackHeight!0 (left!1659 n!1699)) (blackHeight!0 (right!1662 n!1699))))))

(assert (= (and d!58283 (not res!45588)) b!87470))

(assert (= (and b!87470 res!45586) b!87471))

(assert (= (and b!87471 res!45587) b!87472))

(declare-fun m!83870 () Bool)

(assert (=> b!87470 m!83870))

(declare-fun m!83872 () Bool)

(assert (=> b!87471 m!83872))

(declare-fun m!83874 () Bool)

(assert (=> b!87472 m!83874))

(declare-fun m!83876 () Bool)

(assert (=> b!87472 m!83876))

(assert (=> b!87457 d!58283))

(declare-fun d!58285 () Bool)

(declare-fun res!45593 () Bool)

(declare-fun e!47462 () Bool)

(assert (=> d!58285 (=> res!45593 e!47462)))

(assert (=> d!58285 (= res!45593 (is-Empty!199 n!1699))))

(assert (=> d!58285 (= (redDescHaveBlackChildren!0 n!1699) e!47462)))

(declare-fun b!87477 () Bool)

(declare-fun e!47463 () Bool)

(assert (=> b!87477 (= e!47462 e!47463)))

(declare-fun res!45594 () Bool)

(assert (=> b!87477 (=> (not res!45594) (not e!47463))))

(assert (=> b!87477 (= res!45594 (redNodesHaveBlackChildren!0 (left!1659 n!1699)))))

(declare-fun b!87478 () Bool)

(assert (=> b!87478 (= e!47463 (redNodesHaveBlackChildren!0 (right!1662 n!1699)))))

(assert (= (and d!58285 (not res!45593)) b!87477))

(assert (= (and b!87477 res!45594) b!87478))

(declare-fun m!83878 () Bool)

(assert (=> b!87477 m!83878))

(declare-fun m!83880 () Bool)

(assert (=> b!87478 m!83880))

(assert (=> start!11388 d!58285))

(declare-fun b!87493 () Bool)

(declare-fun e!47472 () Bool)

(assert (=> b!87493 (= e!47472 (redNodesHaveBlackChildren!0 (right!1662 res!44619)))))

(declare-fun b!87494 () Bool)

(declare-fun e!47475 () Bool)

(assert (=> b!87494 (= e!47475 e!47472)))

(declare-fun res!45609 () Bool)

(assert (=> b!87494 (=> (not res!45609) (not e!47472))))

(assert (=> b!87494 (= res!45609 (redNodesHaveBlackChildren!0 (left!1659 res!44619)))))

(declare-fun d!58287 () Bool)

(declare-fun res!45608 () Bool)

(declare-fun e!47473 () Bool)

(assert (=> d!58287 (=> res!45608 e!47473)))

(assert (=> d!58287 (= res!45608 (is-Empty!199 res!44619))))

(assert (=> d!58287 (= (redNodesHaveBlackChildren!0 res!44619) e!47473)))

(declare-fun b!87495 () Bool)

(declare-fun res!45605 () Bool)

(declare-fun e!47474 () Bool)

(assert (=> b!87495 (=> (not res!45605) (not e!47474))))

(assert (=> b!87495 (= res!45605 (redNodesHaveBlackChildren!0 (left!1659 res!44619)))))

(declare-fun b!87496 () Bool)

(assert (=> b!87496 (= e!47475 e!47474)))

(declare-fun res!45607 () Bool)

(assert (=> b!87496 (=> (not res!45607) (not e!47474))))

(declare-fun isBlack!0 (Tree!116) Bool)

(assert (=> b!87496 (= res!45607 (isBlack!0 (left!1659 res!44619)))))

(declare-fun b!87497 () Bool)

(declare-fun res!45606 () Bool)

(assert (=> b!87497 (=> (not res!45606) (not e!47474))))

(assert (=> b!87497 (= res!45606 (isBlack!0 (right!1662 res!44619)))))

(declare-fun b!87498 () Bool)

(assert (=> b!87498 (= e!47474 (redNodesHaveBlackChildren!0 (right!1662 res!44619)))))

(declare-fun b!87499 () Bool)

(assert (=> b!87499 (= e!47473 e!47475)))

(declare-fun c!21679 () Bool)

(assert (=> b!87499 (= c!21679 (and (is-Node!160 res!44619) (is-Black!18 (color!49 res!44619))))))

(assert (= (and d!58287 (not res!45608)) b!87499))

(assert (= (and b!87494 res!45609) b!87493))

(assert (= (and b!87496 res!45607) b!87497))

(assert (= (and b!87497 res!45606) b!87495))

(assert (= (and b!87495 res!45605) b!87498))

(assert (= (and b!87499 c!21679) b!87494))

(assert (= (and b!87499 (not c!21679)) b!87496))

(declare-fun m!83882 () Bool)

(assert (=> b!87498 m!83882))

(assert (=> b!87493 m!83882))

(declare-fun m!83884 () Bool)

(assert (=> b!87497 m!83884))

(declare-fun m!83886 () Bool)

(assert (=> b!87494 m!83886))

(assert (=> b!87495 m!83886))

(declare-fun m!83888 () Bool)

(assert (=> b!87496 m!83888))

(assert (=> b!87459 d!58287))

(push 1)

(assert (not b!87477))

(assert (not b!87470))

(assert (not b!87497))

(assert (not b!87471))

(assert (not b!87498))

(assert (not b!87472))

(assert (not b!87467))

(assert (not b!87496))

(assert (not b!87478))

(assert (not b!87494))

(assert (not b!87493))

(assert (not b!87469))

(assert (not b!87468))

(assert (not b!87495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

