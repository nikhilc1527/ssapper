; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12052 () Bool)

(assert start!12052)

(declare-fun b_free!7645 () Bool)

(declare-fun b_next!40033 () Bool)

(assert (=> start!12052 (= b_free!7645 (not b_next!40033))))

(declare-fun tp!17727 () Bool)

(declare-fun b_and!60713 () Bool)

(assert (=> start!12052 (= tp!17727 b_and!60713)))

(declare-fun b_free!7647 () Bool)

(declare-fun b_next!40035 () Bool)

(assert (=> start!12052 (= b_free!7647 (not b_next!40035))))

(declare-fun tp!17730 () Bool)

(declare-fun b_and!60715 () Bool)

(assert (=> start!12052 (= tp!17730 b_and!60715)))

(declare-fun res!47513 () Bool)

(declare-fun e!49471 () Bool)

(assert (=> start!12052 (=> (not res!47513) (not e!49471))))

(declare-datatypes () ((T!6428 (T!6429 (val!222 Int)))))

(declare-datatypes () ((Tree!129 (Leaf!580 (value!7647 T!6428)) (Node!171 (left!1762 Tree!129) (right!1768 Tree!129)))))

(declare-fun tree!144 () Tree!129)

(assert (=> start!12052 (= res!47513 (is-Node!171 tree!144))))

(assert (=> start!12052 e!49471))

(declare-fun e!49472 () Bool)

(assert (=> start!12052 e!49472))

(assert (=> start!12052 tp!17727))

(assert (=> start!12052 tp!17730))

(declare-fun b!90603 () Bool)

(declare-fun tp_is_empty!451 () Bool)

(assert (=> b!90603 (= e!49472 tp_is_empty!451)))

(declare-fun b!90604 () Bool)

(declare-fun res!47514 () Bool)

(declare-fun e!49470 () Bool)

(assert (=> b!90604 (=> res!47514 e!49470)))

(declare-fun g!153 () Int)

(declare-fun f!5097 () Int)

(declare-fun associative_lemma_induct!6 (Tree!129 Int Int) Bool)

(assert (=> b!90604 (= res!47514 (not (associative_lemma_induct!6 (right!1768 tree!144) f!5097 g!153)))))

(declare-fun b!90605 () Bool)

(declare-fun tp!17728 () Bool)

(declare-fun tp!17729 () Bool)

(assert (=> b!90605 (= e!49472 (and tp!17728 tp!17729))))

(declare-fun b!90606 () Bool)

(declare-fun associative_lemma!8 (Tree!129 Int Int) Bool)

(assert (=> b!90606 (= e!49470 (not (associative_lemma!8 tree!144 f!5097 g!153)))))

(declare-fun b!90607 () Bool)

(assert (=> b!90607 (= e!49471 e!49470)))

(declare-fun res!47515 () Bool)

(assert (=> b!90607 (=> res!47515 e!49470)))

(assert (=> b!90607 (= res!47515 (not (associative_lemma_induct!6 (left!1762 tree!144) f!5097 g!153)))))

(assert (= (and start!12052 res!47513) b!90607))

(assert (= (and b!90607 (not res!47515)) b!90604))

(assert (= (and b!90604 (not res!47514)) b!90606))

(assert (= (and start!12052 (is-Leaf!580 tree!144)) b!90603))

(assert (= (and start!12052 (is-Node!171 tree!144)) b!90605))

(declare-fun m!86404 () Bool)

(assert (=> b!90604 m!86404))

(declare-fun m!86406 () Bool)

(assert (=> b!90606 m!86406))

(declare-fun m!86408 () Bool)

(assert (=> b!90607 m!86408))

(push 1)

(assert b_and!60715)

(assert (not b!90605))

(assert (not b_next!40033))

(assert (not b_next!40035))

(assert (not b!90606))

(assert (not b!90607))

(assert (not b!90604))

(assert tp_is_empty!451)

(assert b_and!60713)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60713)

(assert b_and!60715)

(assert (not b_next!40033))

(assert (not b_next!40035))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!90616 () Bool)

(declare-fun e!49478 () Bool)

(declare-fun e!49477 () Bool)

(assert (=> b!90616 (= e!49478 e!49477)))

(declare-fun res!47520 () Bool)

(assert (=> b!90616 (=> (not res!47520) (not e!49477))))

(assert (=> b!90616 (= res!47520 (associative_lemma_induct!6 (left!1762 (right!1768 tree!144)) f!5097 g!153))))

(declare-fun b!90619 () Bool)

(assert (=> b!90619 (= e!49477 (associative_lemma!8 (right!1768 tree!144) f!5097 g!153))))

(declare-fun b!90617 () Bool)

(assert (=> b!90617 (= e!49478 (associative_lemma!8 (right!1768 tree!144) f!5097 g!153))))

(declare-fun d!59653 () Bool)

(assert (=> d!59653 e!49478))

(declare-fun c!22137 () Bool)

(assert (=> d!59653 (= c!22137 (is-Node!171 (right!1768 tree!144)))))

(assert (=> d!59653 (= (associative_lemma_induct!6 (right!1768 tree!144) f!5097 g!153) true)))

(declare-fun b!90618 () Bool)

(declare-fun res!47521 () Bool)

(assert (=> b!90618 (=> (not res!47521) (not e!49477))))

(assert (=> b!90618 (= res!47521 (associative_lemma_induct!6 (right!1768 (right!1768 tree!144)) f!5097 g!153))))

(assert (= (and b!90616 res!47520) b!90618))

(assert (= (and b!90618 res!47521) b!90619))

(assert (= (and d!59653 c!22137) b!90616))

(assert (= (and d!59653 (not c!22137)) b!90617))

(declare-fun m!86410 () Bool)

(assert (=> b!90616 m!86410))

(declare-fun m!86412 () Bool)

(assert (=> b!90619 m!86412))

(assert (=> b!90617 m!86412))

(declare-fun m!86414 () Bool)

(assert (=> b!90618 m!86414))

(assert (=> b!90604 d!59653))

(declare-fun d!59655 () Bool)

(assert (=> d!59655 true))

(declare-fun order!517 () Int)

(declare-fun order!515 () Int)

(declare-fun lambda!11114 () Int)

(declare-fun dynLambda!1103 (Int Int) Int)

(declare-fun dynLambda!1104 (Int Int) Int)

(assert (=> d!59655 (< (dynLambda!1103 order!515 f!5097) (dynLambda!1104 order!517 lambda!11114))))

(assert (=> d!59655 true))

(declare-fun order!519 () Int)

(declare-fun dynLambda!1105 (Int Int) Int)

(assert (=> d!59655 (< (dynLambda!1105 order!519 g!153) (dynLambda!1104 order!517 lambda!11114))))

(declare-datatypes () ((U!62 (U!63 (val!223 Int)))))

(declare-datatypes () ((Tree!130 (Leaf!581 (value!7648 U!62)) (Node!172 (left!1765 Tree!130) (right!1771 Tree!130)))))

(declare-datatypes () ((V!606 (V!607 (val!224 Int)))))

(declare-datatypes () ((Tree!131 (Leaf!582 (value!7649 V!606)) (Node!173 (left!1766 Tree!131) (right!1772 Tree!131)))))

(declare-fun map!563 (Tree!130 Int) Tree!131)

(declare-fun map!564 (Tree!129 Int) Tree!130)

(declare-fun map!565 (Tree!129 Int) Tree!131)

(assert (=> d!59655 (= (associative_lemma!8 tree!144 f!5097 g!153) (= (map!563 (map!564 tree!144 f!5097) g!153) (map!565 tree!144 lambda!11114)))))

(declare-fun bs!41659 () Bool)

(assert (= bs!41659 d!59655))

(declare-fun m!86416 () Bool)

(assert (=> bs!41659 m!86416))

(assert (=> bs!41659 m!86416))

(declare-fun m!86418 () Bool)

(assert (=> bs!41659 m!86418))

(declare-fun m!86420 () Bool)

(assert (=> bs!41659 m!86420))

(assert (=> b!90606 d!59655))

(declare-fun b!90624 () Bool)

(declare-fun e!49480 () Bool)

(declare-fun e!49479 () Bool)

(assert (=> b!90624 (= e!49480 e!49479)))

(declare-fun res!47522 () Bool)

(assert (=> b!90624 (=> (not res!47522) (not e!49479))))

(assert (=> b!90624 (= res!47522 (associative_lemma_induct!6 (left!1762 (left!1762 tree!144)) f!5097 g!153))))

(declare-fun b!90627 () Bool)

(assert (=> b!90627 (= e!49479 (associative_lemma!8 (left!1762 tree!144) f!5097 g!153))))

(declare-fun b!90625 () Bool)

(assert (=> b!90625 (= e!49480 (associative_lemma!8 (left!1762 tree!144) f!5097 g!153))))

(declare-fun d!59657 () Bool)

(assert (=> d!59657 e!49480))

(declare-fun c!22138 () Bool)

(assert (=> d!59657 (= c!22138 (is-Node!171 (left!1762 tree!144)))))

(assert (=> d!59657 (= (associative_lemma_induct!6 (left!1762 tree!144) f!5097 g!153) true)))

(declare-fun b!90626 () Bool)

(declare-fun res!47523 () Bool)

(assert (=> b!90626 (=> (not res!47523) (not e!49479))))

(assert (=> b!90626 (= res!47523 (associative_lemma_induct!6 (right!1768 (left!1762 tree!144)) f!5097 g!153))))

(assert (= (and b!90624 res!47522) b!90626))

(assert (= (and b!90626 res!47523) b!90627))

(assert (= (and d!59657 c!22138) b!90624))

(assert (= (and d!59657 (not c!22138)) b!90625))

(declare-fun m!86422 () Bool)

(assert (=> b!90624 m!86422))

(declare-fun m!86424 () Bool)

(assert (=> b!90627 m!86424))

(assert (=> b!90625 m!86424))

(declare-fun m!86426 () Bool)

(assert (=> b!90626 m!86426))

(assert (=> b!90607 d!59657))

(declare-fun b!90634 () Bool)

(declare-fun e!49483 () Bool)

(assert (=> b!90634 (= e!49483 tp_is_empty!451)))

(declare-fun b!90635 () Bool)

(declare-fun tp!17735 () Bool)

(declare-fun tp!17736 () Bool)

(assert (=> b!90635 (= e!49483 (and tp!17735 tp!17736))))

(assert (=> b!90605 (= tp!17728 e!49483)))

(assert (= (and b!90605 (is-Leaf!580 (left!1762 tree!144))) b!90634))

(assert (= (and b!90605 (is-Node!171 (left!1762 tree!144))) b!90635))

(declare-fun b!90636 () Bool)

(declare-fun e!49484 () Bool)

(assert (=> b!90636 (= e!49484 tp_is_empty!451)))

(declare-fun b!90637 () Bool)

(declare-fun tp!17737 () Bool)

(declare-fun tp!17738 () Bool)

(assert (=> b!90637 (= e!49484 (and tp!17737 tp!17738))))

(assert (=> b!90605 (= tp!17729 e!49484)))

(assert (= (and b!90605 (is-Leaf!580 (right!1768 tree!144))) b!90636))

(assert (= (and b!90605 (is-Node!171 (right!1768 tree!144))) b!90637))

(push 1)

(assert (not b!90635))

(assert (not b!90619))

(assert b_and!60715)

(assert (not b!90616))

(assert (not b_next!40033))

(assert (not b!90637))

(assert (not d!59655))

(assert (not b_next!40035))

(assert (not b!90617))

(assert (not b!90618))

(assert (not b!90624))

(assert (not b!90626))

(assert (not b!90627))

(assert (not b!90625))

(assert tp_is_empty!451)

(assert b_and!60713)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60713)

(assert b_and!60715)

(assert (not b_next!40033))

(assert (not b_next!40035))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!90638 () Bool)

(declare-fun e!49486 () Bool)

(declare-fun e!49485 () Bool)

(assert (=> b!90638 (= e!49486 e!49485)))

(declare-fun res!47524 () Bool)

(assert (=> b!90638 (=> (not res!47524) (not e!49485))))

(assert (=> b!90638 (= res!47524 (associative_lemma_induct!6 (left!1762 (left!1762 (right!1768 tree!144))) f!5097 g!153))))

(declare-fun b!90641 () Bool)

(assert (=> b!90641 (= e!49485 (associative_lemma!8 (left!1762 (right!1768 tree!144)) f!5097 g!153))))

(declare-fun b!90639 () Bool)

(assert (=> b!90639 (= e!49486 (associative_lemma!8 (left!1762 (right!1768 tree!144)) f!5097 g!153))))

(declare-fun d!59659 () Bool)

(assert (=> d!59659 e!49486))

(declare-fun c!22139 () Bool)

(assert (=> d!59659 (= c!22139 (is-Node!171 (left!1762 (right!1768 tree!144))))))

(assert (=> d!59659 (= (associative_lemma_induct!6 (left!1762 (right!1768 tree!144)) f!5097 g!153) true)))

(declare-fun b!90640 () Bool)

(declare-fun res!47525 () Bool)

(assert (=> b!90640 (=> (not res!47525) (not e!49485))))

(assert (=> b!90640 (= res!47525 (associative_lemma_induct!6 (right!1768 (left!1762 (right!1768 tree!144))) f!5097 g!153))))

(assert (= (and b!90638 res!47524) b!90640))

(assert (= (and b!90640 res!47525) b!90641))

(assert (= (and d!59659 c!22139) b!90638))

(assert (= (and d!59659 (not c!22139)) b!90639))

(declare-fun m!86428 () Bool)

(assert (=> b!90638 m!86428))

(declare-fun m!86430 () Bool)

(assert (=> b!90641 m!86430))

(assert (=> b!90639 m!86430))

(declare-fun m!86432 () Bool)

(assert (=> b!90640 m!86432))

(assert (=> b!90616 d!59659))

(declare-fun bs!41660 () Bool)

(declare-fun d!59661 () Bool)

(assert (= bs!41660 (and d!59661 d!59655)))

(declare-fun lambda!11115 () Int)

(assert (=> bs!41660 (= lambda!11115 lambda!11114)))

(assert (=> d!59661 true))

(assert (=> d!59661 (< (dynLambda!1103 order!515 f!5097) (dynLambda!1104 order!517 lambda!11115))))

(assert (=> d!59661 true))

(assert (=> d!59661 (< (dynLambda!1105 order!519 g!153) (dynLambda!1104 order!517 lambda!11115))))

(assert (=> d!59661 (= (associative_lemma!8 (right!1768 tree!144) f!5097 g!153) (= (map!563 (map!564 (right!1768 tree!144) f!5097) g!153) (map!565 (right!1768 tree!144) lambda!11115)))))

(declare-fun bs!41661 () Bool)

(assert (= bs!41661 d!59661))

(declare-fun m!86434 () Bool)

(assert (=> bs!41661 m!86434))

(assert (=> bs!41661 m!86434))

(declare-fun m!86436 () Bool)

(assert (=> bs!41661 m!86436))

(declare-fun m!86438 () Bool)

(assert (=> bs!41661 m!86438))

(assert (=> b!90619 d!59661))

(declare-fun bs!41662 () Bool)

(declare-fun d!59663 () Bool)

(assert (= bs!41662 (and d!59663 d!59655)))

(declare-fun lambda!11116 () Int)

(assert (=> bs!41662 (= lambda!11116 lambda!11114)))

(declare-fun bs!41663 () Bool)

(assert (= bs!41663 (and d!59663 d!59661)))

(assert (=> bs!41663 (= lambda!11116 lambda!11115)))

(assert (=> d!59663 true))

(assert (=> d!59663 (< (dynLambda!1103 order!515 f!5097) (dynLambda!1104 order!517 lambda!11116))))

(assert (=> d!59663 true))

(assert (=> d!59663 (< (dynLambda!1105 order!519 g!153) (dynLambda!1104 order!517 lambda!11116))))

(assert (=> d!59663 (= (associative_lemma!8 (left!1762 tree!144) f!5097 g!153) (= (map!563 (map!564 (left!1762 tree!144) f!5097) g!153) (map!565 (left!1762 tree!144) lambda!11116)))))

(declare-fun bs!41664 () Bool)

(assert (= bs!41664 d!59663))

(declare-fun m!86440 () Bool)

(assert (=> bs!41664 m!86440))

(assert (=> bs!41664 m!86440))

(declare-fun m!86442 () Bool)

(assert (=> bs!41664 m!86442))

(declare-fun m!86444 () Bool)

(assert (=> bs!41664 m!86444))

(assert (=> b!90627 d!59663))

(assert (=> b!90625 d!59663))

(declare-fun b!90642 () Bool)

(declare-fun e!49488 () Bool)

(declare-fun e!49487 () Bool)

(assert (=> b!90642 (= e!49488 e!49487)))

(declare-fun res!47526 () Bool)

(assert (=> b!90642 (=> (not res!47526) (not e!49487))))

(assert (=> b!90642 (= res!47526 (associative_lemma_induct!6 (left!1762 (right!1768 (right!1768 tree!144))) f!5097 g!153))))

(declare-fun b!90645 () Bool)

(assert (=> b!90645 (= e!49487 (associative_lemma!8 (right!1768 (right!1768 tree!144)) f!5097 g!153))))

(declare-fun b!90643 () Bool)

(assert (=> b!90643 (= e!49488 (associative_lemma!8 (right!1768 (right!1768 tree!144)) f!5097 g!153))))

(declare-fun d!59665 () Bool)

(assert (=> d!59665 e!49488))

(declare-fun c!22140 () Bool)

(assert (=> d!59665 (= c!22140 (is-Node!171 (right!1768 (right!1768 tree!144))))))

(assert (=> d!59665 (= (associative_lemma_induct!6 (right!1768 (right!1768 tree!144)) f!5097 g!153) true)))

(declare-fun b!90644 () Bool)

(declare-fun res!47527 () Bool)

(assert (=> b!90644 (=> (not res!47527) (not e!49487))))

(assert (=> b!90644 (= res!47527 (associative_lemma_induct!6 (right!1768 (right!1768 (right!1768 tree!144))) f!5097 g!153))))

(assert (= (and b!90642 res!47526) b!90644))

(assert (= (and b!90644 res!47527) b!90645))

(assert (= (and d!59665 c!22140) b!90642))

(assert (= (and d!59665 (not c!22140)) b!90643))

(declare-fun m!86446 () Bool)

(assert (=> b!90642 m!86446))

(declare-fun m!86448 () Bool)

(assert (=> b!90645 m!86448))

(assert (=> b!90643 m!86448))

(declare-fun m!86450 () Bool)

(assert (=> b!90644 m!86450))

(assert (=> b!90618 d!59665))

(declare-fun b!90646 () Bool)

(declare-fun e!49490 () Bool)

(declare-fun e!49489 () Bool)

(assert (=> b!90646 (= e!49490 e!49489)))

(declare-fun res!47528 () Bool)

(assert (=> b!90646 (=> (not res!47528) (not e!49489))))

(assert (=> b!90646 (= res!47528 (associative_lemma_induct!6 (left!1762 (left!1762 (left!1762 tree!144))) f!5097 g!153))))

(declare-fun b!90649 () Bool)

(assert (=> b!90649 (= e!49489 (associative_lemma!8 (left!1762 (left!1762 tree!144)) f!5097 g!153))))

(declare-fun b!90647 () Bool)

(assert (=> b!90647 (= e!49490 (associative_lemma!8 (left!1762 (left!1762 tree!144)) f!5097 g!153))))

(declare-fun d!59667 () Bool)

(assert (=> d!59667 e!49490))

(declare-fun c!22141 () Bool)

(assert (=> d!59667 (= c!22141 (is-Node!171 (left!1762 (left!1762 tree!144))))))

(assert (=> d!59667 (= (associative_lemma_induct!6 (left!1762 (left!1762 tree!144)) f!5097 g!153) true)))

(declare-fun b!90648 () Bool)

(declare-fun res!47529 () Bool)

(assert (=> b!90648 (=> (not res!47529) (not e!49489))))

(assert (=> b!90648 (= res!47529 (associative_lemma_induct!6 (right!1768 (left!1762 (left!1762 tree!144))) f!5097 g!153))))

(assert (= (and b!90646 res!47528) b!90648))

(assert (= (and b!90648 res!47529) b!90649))

(assert (= (and d!59667 c!22141) b!90646))

(assert (= (and d!59667 (not c!22141)) b!90647))

(declare-fun m!86452 () Bool)

(assert (=> b!90646 m!86452))

(declare-fun m!86454 () Bool)

(assert (=> b!90649 m!86454))

(assert (=> b!90647 m!86454))

(declare-fun m!86456 () Bool)

(assert (=> b!90648 m!86456))

(assert (=> b!90624 d!59667))

(assert (=> b!90617 d!59661))

(declare-fun b!90650 () Bool)

(declare-fun e!49492 () Bool)

(declare-fun e!49491 () Bool)

(assert (=> b!90650 (= e!49492 e!49491)))

(declare-fun res!47530 () Bool)

(assert (=> b!90650 (=> (not res!47530) (not e!49491))))

(assert (=> b!90650 (= res!47530 (associative_lemma_induct!6 (left!1762 (right!1768 (left!1762 tree!144))) f!5097 g!153))))

(declare-fun b!90653 () Bool)

(assert (=> b!90653 (= e!49491 (associative_lemma!8 (right!1768 (left!1762 tree!144)) f!5097 g!153))))

(declare-fun b!90651 () Bool)

(assert (=> b!90651 (= e!49492 (associative_lemma!8 (right!1768 (left!1762 tree!144)) f!5097 g!153))))

(declare-fun d!59669 () Bool)

(assert (=> d!59669 e!49492))

(declare-fun c!22142 () Bool)

(assert (=> d!59669 (= c!22142 (is-Node!171 (right!1768 (left!1762 tree!144))))))

(assert (=> d!59669 (= (associative_lemma_induct!6 (right!1768 (left!1762 tree!144)) f!5097 g!153) true)))

(declare-fun b!90652 () Bool)

(declare-fun res!47531 () Bool)

(assert (=> b!90652 (=> (not res!47531) (not e!49491))))

(assert (=> b!90652 (= res!47531 (associative_lemma_induct!6 (right!1768 (right!1768 (left!1762 tree!144))) f!5097 g!153))))

(assert (= (and b!90650 res!47530) b!90652))

(assert (= (and b!90652 res!47531) b!90653))

(assert (= (and d!59669 c!22142) b!90650))

(assert (= (and d!59669 (not c!22142)) b!90651))

(declare-fun m!86458 () Bool)

(assert (=> b!90650 m!86458))

(declare-fun m!86460 () Bool)

(assert (=> b!90653 m!86460))

(assert (=> b!90651 m!86460))

(declare-fun m!86462 () Bool)

(assert (=> b!90652 m!86462))

(assert (=> b!90626 d!59669))

(declare-fun d!59671 () Bool)

(declare-fun c!22145 () Bool)

(assert (=> d!59671 (= c!22145 (is-Node!172 (map!564 tree!144 f!5097)))))

(declare-fun e!49495 () Tree!131)

(assert (=> d!59671 (= (map!563 (map!564 tree!144 f!5097) g!153) e!49495)))

(declare-fun b!90658 () Bool)

(assert (=> b!90658 (= e!49495 (Node!173 (map!563 (left!1765 (map!564 tree!144 f!5097)) g!153) (map!563 (right!1771 (map!564 tree!144 f!5097)) g!153)))))

(declare-fun b!90659 () Bool)

(declare-fun dynLambda!1106 (Int U!62) V!606)

(assert (=> b!90659 (= e!49495 (Leaf!582 (dynLambda!1106 g!153 (value!7648 (map!564 tree!144 f!5097)))))))

(assert (= (and d!59671 c!22145) b!90658))

(assert (= (and d!59671 (not c!22145)) b!90659))

(declare-fun b_lambda!18461 () Bool)

(assert (=> (not b_lambda!18461) (not b!90659)))

(declare-fun t!48989 () Bool)

(declare-fun tb!46783 () Bool)

(assert (=> (and start!12052 (= g!153 g!153) t!48989) tb!46783))

(declare-fun result!47273 () Bool)

(declare-fun tp_is_empty!453 () Bool)

(assert (=> tb!46783 (= result!47273 tp_is_empty!453)))

(assert (=> b!90659 t!48989))

(declare-fun b_and!60717 () Bool)

(assert (= b_and!60715 (and (=> t!48989 result!47273) b_and!60717)))

(declare-fun m!86464 () Bool)

(assert (=> b!90658 m!86464))

(declare-fun m!86466 () Bool)

(assert (=> b!90658 m!86466))

(declare-fun m!86468 () Bool)

(assert (=> b!90659 m!86468))

(assert (=> d!59655 d!59671))

(declare-fun d!59673 () Bool)

(declare-fun c!22148 () Bool)

(assert (=> d!59673 (= c!22148 (is-Node!171 tree!144))))

(declare-fun e!49498 () Tree!130)

(assert (=> d!59673 (= (map!564 tree!144 f!5097) e!49498)))

(declare-fun b!90666 () Bool)

(assert (=> b!90666 (= e!49498 (Node!172 (map!564 (left!1762 tree!144) f!5097) (map!564 (right!1768 tree!144) f!5097)))))

(declare-fun b!90667 () Bool)

(declare-fun dynLambda!1107 (Int T!6428) U!62)

(assert (=> b!90667 (= e!49498 (Leaf!581 (dynLambda!1107 f!5097 (value!7647 tree!144))))))

(assert (= (and d!59673 c!22148) b!90666))

(assert (= (and d!59673 (not c!22148)) b!90667))

(declare-fun b_lambda!18463 () Bool)

(assert (=> (not b_lambda!18463) (not b!90667)))

(declare-fun t!48991 () Bool)

(declare-fun tb!46785 () Bool)

(assert (=> (and start!12052 (= f!5097 f!5097) t!48991) tb!46785))

(declare-fun result!47277 () Bool)

(declare-fun tp_is_empty!455 () Bool)

(assert (=> tb!46785 (= result!47277 tp_is_empty!455)))

(assert (=> b!90667 t!48991))

(declare-fun b_and!60719 () Bool)

(assert (= b_and!60713 (and (=> t!48991 result!47277) b_and!60719)))

(assert (=> b!90666 m!86440))

(assert (=> b!90666 m!86434))

(declare-fun m!86470 () Bool)

(assert (=> b!90667 m!86470))

(assert (=> d!59655 d!59673))

(declare-fun d!59675 () Bool)

(declare-fun c!22151 () Bool)

(assert (=> d!59675 (= c!22151 (is-Node!171 tree!144))))

(declare-fun e!49501 () Tree!131)

(assert (=> d!59675 (= (map!565 tree!144 lambda!11114) e!49501)))

(declare-fun b!90674 () Bool)

(assert (=> b!90674 (= e!49501 (Node!173 (map!565 (left!1762 tree!144) lambda!11114) (map!565 (right!1768 tree!144) lambda!11114)))))

(declare-fun b!90675 () Bool)

(declare-fun dynLambda!1108 (Int T!6428) V!606)

(assert (=> b!90675 (= e!49501 (Leaf!582 (dynLambda!1108 lambda!11114 (value!7647 tree!144))))))

(assert (= (and d!59675 c!22151) b!90674))

(assert (= (and d!59675 (not c!22151)) b!90675))

(declare-fun b_lambda!18465 () Bool)

(assert (=> (not b_lambda!18465) (not b!90675)))

(declare-fun m!86472 () Bool)

(assert (=> b!90674 m!86472))

(declare-fun m!86474 () Bool)

(assert (=> b!90674 m!86474))

(declare-fun m!86476 () Bool)

(assert (=> b!90675 m!86476))

(assert (=> d!59655 d!59675))

(declare-fun b!90676 () Bool)

(declare-fun e!49502 () Bool)

(assert (=> b!90676 (= e!49502 tp_is_empty!451)))

(declare-fun b!90677 () Bool)

(declare-fun tp!17739 () Bool)

(declare-fun tp!17740 () Bool)

(assert (=> b!90677 (= e!49502 (and tp!17739 tp!17740))))

(assert (=> b!90637 (= tp!17737 e!49502)))

(assert (= (and b!90637 (is-Leaf!580 (left!1762 (right!1768 tree!144)))) b!90676))

(assert (= (and b!90637 (is-Node!171 (left!1762 (right!1768 tree!144)))) b!90677))

(declare-fun b!90678 () Bool)

(declare-fun e!49503 () Bool)

(assert (=> b!90678 (= e!49503 tp_is_empty!451)))

(declare-fun b!90679 () Bool)

(declare-fun tp!17741 () Bool)

(declare-fun tp!17742 () Bool)

(assert (=> b!90679 (= e!49503 (and tp!17741 tp!17742))))

(assert (=> b!90637 (= tp!17738 e!49503)))

(assert (= (and b!90637 (is-Leaf!580 (right!1768 (right!1768 tree!144)))) b!90678))

(assert (= (and b!90637 (is-Node!171 (right!1768 (right!1768 tree!144)))) b!90679))

(declare-fun b!90680 () Bool)

(declare-fun e!49504 () Bool)

(assert (=> b!90680 (= e!49504 tp_is_empty!451)))

(declare-fun b!90681 () Bool)

(declare-fun tp!17743 () Bool)

(declare-fun tp!17744 () Bool)

(assert (=> b!90681 (= e!49504 (and tp!17743 tp!17744))))

(assert (=> b!90635 (= tp!17735 e!49504)))

(assert (= (and b!90635 (is-Leaf!580 (left!1762 (left!1762 tree!144)))) b!90680))

(assert (= (and b!90635 (is-Node!171 (left!1762 (left!1762 tree!144)))) b!90681))

(declare-fun b!90682 () Bool)

(declare-fun e!49505 () Bool)

(assert (=> b!90682 (= e!49505 tp_is_empty!451)))

(declare-fun b!90683 () Bool)

(declare-fun tp!17745 () Bool)

(declare-fun tp!17746 () Bool)

(assert (=> b!90683 (= e!49505 (and tp!17745 tp!17746))))

(assert (=> b!90635 (= tp!17736 e!49505)))

(assert (= (and b!90635 (is-Leaf!580 (right!1768 (left!1762 tree!144)))) b!90682))

(assert (= (and b!90635 (is-Node!171 (right!1768 (left!1762 tree!144)))) b!90683))

(declare-fun b_lambda!18467 () Bool)

(assert (= b_lambda!18461 (or (and start!12052 b_free!7647) b_lambda!18467)))

(declare-fun b_lambda!18469 () Bool)

(assert (= b_lambda!18465 (or d!59655 b_lambda!18469)))

(declare-fun bs!41665 () Bool)

(declare-fun d!59677 () Bool)

(assert (= bs!41665 (and d!59677 d!59655)))

(assert (=> bs!41665 (= (dynLambda!1108 lambda!11114 (value!7647 tree!144)) (dynLambda!1106 g!153 (dynLambda!1107 f!5097 (value!7647 tree!144))))))

(declare-fun b_lambda!18473 () Bool)

(assert (=> (not b_lambda!18473) (not bs!41665)))

(declare-fun t!48993 () Bool)

(declare-fun tb!46787 () Bool)

(assert (=> (and start!12052 (= g!153 g!153) t!48993) tb!46787))

(declare-fun result!47281 () Bool)

(assert (=> tb!46787 (= result!47281 tp_is_empty!453)))

(assert (=> bs!41665 t!48993))

(declare-fun b_and!60721 () Bool)

(assert (= b_and!60717 (and (=> t!48993 result!47281) b_and!60721)))

(declare-fun b_lambda!18475 () Bool)

(assert (=> (not b_lambda!18475) (not bs!41665)))

(assert (=> bs!41665 t!48991))

(declare-fun b_and!60723 () Bool)

(assert (= b_and!60719 (and (=> t!48991 result!47277) b_and!60723)))

(assert (=> bs!41665 m!86470))

(assert (=> bs!41665 m!86470))

(declare-fun m!86478 () Bool)

(assert (=> bs!41665 m!86478))

(assert (=> b!90675 d!59677))

(declare-fun b_lambda!18471 () Bool)

(assert (= b_lambda!18463 (or (and start!12052 b_free!7645) b_lambda!18471)))

(push 1)

(assert (not b_lambda!18469))

(assert (not b!90677))

(assert (not b!90648))

(assert (not b!90653))

(assert (not b_next!40033))

(assert (not b_next!40035))

(assert (not b!90658))

(assert (not b!90652))

(assert (not b!90683))

(assert (not b!90651))

(assert (not b!90640))

(assert (not b!90679))

(assert (not b!90647))

(assert (not b_lambda!18475))

(assert (not b!90638))

(assert (not b!90639))

(assert (not b!90650))

(assert (not b_lambda!18471))

(assert b_and!60723)

(assert (not b!90674))

(assert (not b!90681))

(assert (not d!59661))

(assert tp_is_empty!455)

(assert (not b!90641))

(assert (not b_lambda!18473))

(assert (not b!90646))

(assert tp_is_empty!453)

(assert (not b_lambda!18467))

(assert (not b!90642))

(assert (not b!90649))

(assert tp_is_empty!451)

(assert (not b!90643))

(assert (not d!59663))

(assert (not b!90644))

(assert b_and!60721)

(assert (not b!90645))

(assert (not b!90666))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60723)

(assert b_and!60721)

(assert (not b_next!40033))

(assert (not b_next!40035))

(check-sat)

(pop 1)

