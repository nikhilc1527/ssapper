; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9482 () Bool)

(assert start!9482)

(declare-fun res!33845 () Bool)

(declare-fun e!37631 () Bool)

(assert (=> start!9482 (=> (not res!33845) (not e!37631))))

(declare-datatypes () ((Formula!52 (And!57 (lhs!959 Formula!52) (rhs!959 Formula!52)) (Literal!51 (id!4832 Int)) (Implies!57 (lhs!960 Formula!52) (rhs!960 Formula!52)) (Or!57 (lhs!961 Formula!52) (rhs!961 Formula!52)) (Not!57 (f!4213 Formula!52)))))

(declare-fun formula!50 () Formula!52)

(assert (=> start!9482 (= res!33845 (and (not (is-And!57 formula!50)) (is-Or!57 formula!50)))))

(assert (=> start!9482 e!37631))

(assert (=> start!9482 true))

(declare-fun b!69530 () Bool)

(declare-fun res!33846 () Bool)

(assert (=> b!69530 (=> (not res!33846) (not e!37631))))

(declare-fun x$2!361 () Formula!52)

(declare-fun nnf!1 (Formula!52) Formula!52)

(assert (=> b!69530 (= res!33846 (= x$2!361 (Or!57 (nnf!1 (lhs!961 formula!50)) (nnf!1 (rhs!961 formula!50)))))))

(declare-fun b!69531 () Bool)

(declare-fun isNNF!1 (Formula!52) Bool)

(assert (=> b!69531 (= e!37631 (not (isNNF!1 x$2!361)))))

(assert (= (and start!9482 res!33845) b!69530))

(assert (= (and b!69530 res!33846) b!69531))

(declare-fun m!70477 () Bool)

(assert (=> b!69530 m!70477))

(declare-fun m!70479 () Bool)

(assert (=> b!69530 m!70479))

(declare-fun m!70481 () Bool)

(assert (=> b!69531 m!70481))

(push 1)

(assert (not b!69531))

(assert (not b!69530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53632 () Bool)

(declare-fun c!16394 () Bool)

(declare-fun lt!14518 () Bool)

(assert (=> d!53632 (= c!16394 (or lt!14518 (is-Or!57 x$2!361)))))

(declare-fun lt!14519 () Bool)

(declare-fun lt!14517 () Bool)

(assert (=> d!53632 (= lt!14519 (and lt!14518 lt!14517))))

(declare-fun e!37641 () Bool)

(assert (=> d!53632 (= lt!14517 e!37641)))

(declare-fun c!16392 () Bool)

(assert (=> d!53632 (= c!16392 (or lt!14518 (is-Or!57 x$2!361)))))

(assert (=> d!53632 (= lt!14518 (is-And!57 x$2!361))))

(declare-fun e!37643 () Bool)

(assert (=> d!53632 (= (isNNF!1 x$2!361) e!37643)))

(declare-fun b!69546 () Bool)

(declare-fun e!37640 () Bool)

(declare-fun e!37642 () Bool)

(assert (=> b!69546 (= e!37640 e!37642)))

(declare-fun c!16393 () Bool)

(assert (=> b!69546 (= c!16393 (or lt!14519 (and (not lt!14518) (is-Or!57 x$2!361) lt!14517)))))

(declare-fun b!69547 () Bool)

(assert (=> b!69547 (= e!37642 (isNNF!1 (ite lt!14519 (rhs!959 x$2!361) (rhs!961 x$2!361))))))

(declare-fun b!69548 () Bool)

(assert (=> b!69548 (= e!37641 (isNNF!1 (ite lt!14518 (lhs!959 x$2!361) (lhs!961 x$2!361))))))

(declare-fun b!69549 () Bool)

(assert (=> b!69549 (= e!37643 e!37640)))

(declare-fun res!33860 () Bool)

(assert (=> b!69549 (=> (not res!33860) (not e!37640))))

(assert (=> b!69549 (= res!33860 lt!14517)))

(declare-fun b!69550 () Bool)

(assert (=> b!69550 (= e!37643 (and (not (is-Implies!57 x$2!361)) (or (and (is-Not!57 x$2!361) (is-Literal!51 (f!4213 x$2!361))) (not (is-Not!57 x$2!361)))))))

(declare-fun b!69551 () Bool)

(declare-fun res!33861 () Bool)

(assert (=> b!69551 (= e!37642 res!33861)))

(assert (=> b!69551 true))

(assert (=> b!69551 true))

(declare-fun b!69552 () Bool)

(declare-fun res!33859 () Bool)

(assert (=> b!69552 (= e!37641 res!33859)))

(assert (=> b!69552 true))

(assert (= (and d!53632 c!16392) b!69548))

(assert (= (and d!53632 (not c!16392)) b!69552))

(assert (= (and b!69549 res!33860) b!69546))

(assert (= (and b!69546 c!16393) b!69547))

(assert (= (and b!69546 (not c!16393)) b!69551))

(assert (= (and d!53632 c!16394) b!69549))

(assert (= (and d!53632 (not c!16394)) b!69550))

(declare-fun m!70483 () Bool)

(assert (=> b!69547 m!70483))

(declare-fun m!70485 () Bool)

(assert (=> b!69548 m!70485))

(assert (=> b!69531 d!53632))

(declare-fun b!69613 () Bool)

(declare-fun e!37674 () Formula!52)

(declare-fun res!33919 () Formula!52)

(assert (=> b!69613 (= e!37674 res!33919)))

(assert (=> b!69613 true))

(declare-fun b!69614 () Bool)

(declare-fun e!37687 () Formula!52)

(declare-fun res!33920 () Formula!52)

(assert (=> b!69614 (= e!37687 res!33920)))

(assert (=> b!69614 true))

(declare-fun b!69615 () Bool)

(declare-fun e!37682 () Formula!52)

(declare-fun lt!14568 () Bool)

(assert (=> b!69615 (= e!37682 (nnf!1 (ite lt!14568 (rhs!959 (lhs!961 formula!50)) (ite (is-Or!57 (lhs!961 formula!50)) (rhs!961 (lhs!961 formula!50)) (ite (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (Not!57 (rhs!959 (f!4213 (lhs!961 formula!50)))) (ite (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (Not!57 (rhs!961 (f!4213 (lhs!961 formula!50)))) (Not!57 (rhs!960 (f!4213 (lhs!961 formula!50))))))))))))

(declare-fun b!69616 () Bool)

(declare-fun lt!14561 () Formula!52)

(assert (=> b!69616 (= e!37687 lt!14561)))

(declare-fun b!69617 () Bool)

(declare-fun e!37677 () Formula!52)

(declare-fun lt!14562 () Formula!52)

(declare-fun lt!14555 () Formula!52)

(assert (=> b!69617 (= e!37677 (And!57 lt!14562 lt!14555))))

(declare-fun b!69618 () Bool)

(declare-fun res!33916 () Formula!52)

(assert (=> b!69618 (= e!37682 res!33916)))

(assert (=> b!69618 true))

(declare-fun b!69619 () Bool)

(declare-fun e!37684 () Formula!52)

(declare-fun res!33917 () Formula!52)

(assert (=> b!69619 (= e!37684 res!33917)))

(assert (=> b!69619 true))

(declare-fun b!69620 () Bool)

(declare-fun lt!14559 () Formula!52)

(assert (=> b!69620 (= e!37674 lt!14559)))

(declare-fun b!69621 () Bool)

(declare-fun e!37680 () Formula!52)

(declare-fun lt!14563 () Formula!52)

(declare-fun lt!14570 () Formula!52)

(assert (=> b!69621 (= e!37680 (And!57 lt!14563 lt!14570))))

(declare-fun b!69622 () Bool)

(declare-fun e!37678 () Formula!52)

(assert (=> b!69622 (= e!37678 lt!14563)))

(declare-fun b!69623 () Bool)

(declare-fun e!37675 () Formula!52)

(declare-fun lt!14569 () Formula!52)

(assert (=> b!69623 (= e!37675 lt!14569)))

(declare-fun lt!14556 () Formula!52)

(declare-fun lt!14564 () Bool)

(declare-fun b!69624 () Bool)

(assert (=> b!69624 (= e!37677 (ite lt!14564 (And!57 lt!14556 lt!14555) (ite (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50)))) lt!14556 (lhs!961 formula!50))))))

(declare-fun e!37685 () Formula!52)

(assert (=> b!69624 (= lt!14556 e!37685)))

(declare-fun c!16435 () Bool)

(assert (=> b!69624 (= c!16435 (or lt!14564 (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69624 (= lt!14564 (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))))))

(declare-fun b!69625 () Bool)

(declare-fun e!37681 () Formula!52)

(assert (=> b!69625 (= e!37681 lt!14561)))

(declare-fun b!69626 () Bool)

(declare-fun e!37676 () Formula!52)

(assert (=> b!69626 (= e!37676 lt!14570)))

(declare-fun b!69627 () Bool)

(declare-fun e!37679 () Formula!52)

(assert (=> b!69627 (= e!37680 e!37679)))

(declare-fun c!16429 () Bool)

(declare-fun lt!14560 () Bool)

(assert (=> b!69627 (= c!16429 lt!14560)))

(assert (=> b!69627 (= lt!14569 e!37676)))

(declare-fun c!16426 () Bool)

(assert (=> b!69627 (= c!16426 (or lt!14560 (and (not (is-Implies!57 (lhs!961 formula!50))) (or (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50))))))))))

(declare-fun lt!14567 () Formula!52)

(assert (=> b!69627 (= lt!14567 e!37678)))

(declare-fun c!16430 () Bool)

(assert (=> b!69627 (= c!16430 (or lt!14560 (is-Implies!57 (lhs!961 formula!50)) (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69627 (= lt!14560 (is-Or!57 (lhs!961 formula!50)))))

(declare-fun b!69628 () Bool)

(assert (=> b!69628 (= e!37679 e!37681)))

(declare-fun c!16438 () Bool)

(declare-fun lt!14558 () Bool)

(assert (=> b!69628 (= c!16438 lt!14558)))

(declare-fun e!37683 () Formula!52)

(assert (=> b!69628 (= lt!14561 e!37683)))

(declare-fun c!16433 () Bool)

(assert (=> b!69628 (= c!16433 (or lt!14558 (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69628 (= lt!14558 (is-Implies!57 (lhs!961 formula!50)))))

(declare-fun d!53634 () Bool)

(declare-fun lt!14554 () Formula!52)

(assert (=> d!53634 (isNNF!1 lt!14554)))

(assert (=> d!53634 (= lt!14554 e!37680)))

(declare-fun c!16432 () Bool)

(assert (=> d!53634 (= c!16432 lt!14568)))

(assert (=> d!53634 (= lt!14570 e!37682)))

(declare-fun c!16434 () Bool)

(assert (=> d!53634 (= c!16434 (or lt!14568 (is-Or!57 (lhs!961 formula!50)) (and (not (is-Implies!57 (lhs!961 formula!50))) (or (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50))))))))))

(assert (=> d!53634 (= lt!14563 e!37684)))

(declare-fun c!16431 () Bool)

(assert (=> d!53634 (= c!16431 (or lt!14568 (is-Or!57 (lhs!961 formula!50)) (is-Implies!57 (lhs!961 formula!50)) (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> d!53634 (= lt!14568 (is-And!57 (lhs!961 formula!50)))))

(assert (=> d!53634 (= (nnf!1 (lhs!961 formula!50)) lt!14554)))

(declare-fun b!69629 () Bool)

(declare-fun res!33921 () Formula!52)

(assert (=> b!69629 (= e!37678 res!33921)))

(assert (=> b!69629 true))

(declare-fun b!69630 () Bool)

(declare-fun e!37688 () Formula!52)

(assert (=> b!69630 (= e!37688 e!37677)))

(declare-fun c!16439 () Bool)

(declare-fun lt!14566 () Bool)

(assert (=> b!69630 (= c!16439 lt!14566)))

(declare-fun e!37686 () Formula!52)

(assert (=> b!69630 (= lt!14555 e!37686)))

(declare-fun c!16437 () Bool)

(assert (=> b!69630 (= c!16437 (or lt!14566 (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69630 (= lt!14562 e!37674)))

(declare-fun c!16427 () Bool)

(assert (=> b!69630 (= c!16427 (or lt!14566 (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69630 (= lt!14566 (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))))))

(declare-fun b!69631 () Bool)

(declare-fun res!33915 () Formula!52)

(assert (=> b!69631 (= e!37683 res!33915)))

(assert (=> b!69631 true))

(declare-fun b!69632 () Bool)

(declare-fun lt!14565 () Formula!52)

(assert (=> b!69632 (= e!37686 lt!14565)))

(declare-fun b!69633 () Bool)

(assert (=> b!69633 (= e!37679 (Or!57 lt!14567 lt!14569))))

(declare-fun b!69634 () Bool)

(declare-fun res!33912 () Formula!52)

(assert (=> b!69634 (= e!37676 res!33912)))

(assert (=> b!69634 true))

(declare-fun b!69635 () Bool)

(assert (=> b!69635 (= e!37681 e!37688)))

(declare-fun c!16425 () Bool)

(declare-fun lt!14557 () Bool)

(assert (=> b!69635 (= c!16425 lt!14557)))

(assert (=> b!69635 (= lt!14565 e!37675)))

(declare-fun c!16428 () Bool)

(assert (=> b!69635 (= c!16428 (or lt!14557 (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69635 (= lt!14559 e!37687)))

(declare-fun c!16436 () Bool)

(assert (=> b!69635 (= c!16436 (or lt!14557 (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))) (and (is-Not!57 (lhs!961 formula!50)) (is-Not!57 (f!4213 (lhs!961 formula!50))))))))

(assert (=> b!69635 (= lt!14557 (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))))))

(declare-fun b!69636 () Bool)

(declare-fun res!33913 () Formula!52)

(assert (=> b!69636 (= e!37686 res!33913)))

(assert (=> b!69636 true))

(declare-fun b!69637 () Bool)

(assert (=> b!69637 (= e!37684 (nnf!1 (ite lt!14568 (lhs!959 (lhs!961 formula!50)) (ite (is-Or!57 (lhs!961 formula!50)) (lhs!961 (lhs!961 formula!50)) (ite (is-Implies!57 (lhs!961 formula!50)) (Or!57 (Not!57 (lhs!960 (lhs!961 formula!50))) (rhs!960 (lhs!961 formula!50))) (ite (and (is-Not!57 (lhs!961 formula!50)) (is-And!57 (f!4213 (lhs!961 formula!50)))) (Not!57 (lhs!959 (f!4213 (lhs!961 formula!50)))) (ite (and (is-Not!57 (lhs!961 formula!50)) (is-Or!57 (f!4213 (lhs!961 formula!50)))) (Not!57 (lhs!961 (f!4213 (lhs!961 formula!50)))) (ite (and (is-Not!57 (lhs!961 formula!50)) (is-Implies!57 (f!4213 (lhs!961 formula!50)))) (lhs!960 (f!4213 (lhs!961 formula!50))) (f!4213 (f!4213 (lhs!961 formula!50)))))))))))))

(declare-fun b!69638 () Bool)

(assert (=> b!69638 (= e!37683 lt!14567)))

(declare-fun b!69639 () Bool)

(assert (=> b!69639 (= e!37685 lt!14562)))

(declare-fun b!69640 () Bool)

(declare-fun res!33918 () Formula!52)

(assert (=> b!69640 (= e!37675 res!33918)))

(assert (=> b!69640 true))

(declare-fun b!69641 () Bool)

(assert (=> b!69641 (= e!37688 (Or!57 lt!14559 lt!14565))))

(declare-fun b!69642 () Bool)

(declare-fun res!33914 () Formula!52)

(assert (=> b!69642 (= e!37685 res!33914)))

(assert (=> b!69642 true))

(assert (=> b!69642 true))

(assert (= (and d!53634 c!16431) b!69637))

(assert (= (and d!53634 (not c!16431)) b!69619))

(assert (= (and d!53634 c!16434) b!69615))

(assert (= (and d!53634 (not c!16434)) b!69618))

(assert (= (and b!69627 c!16430) b!69622))

(assert (= (and b!69627 (not c!16430)) b!69629))

(assert (= (and b!69627 c!16426) b!69626))

(assert (= (and b!69627 (not c!16426)) b!69634))

(assert (= (and b!69628 c!16433) b!69638))

(assert (= (and b!69628 (not c!16433)) b!69631))

(assert (= (and b!69635 c!16436) b!69616))

(assert (= (and b!69635 (not c!16436)) b!69614))

(assert (= (and b!69635 c!16428) b!69623))

(assert (= (and b!69635 (not c!16428)) b!69640))

(assert (= (and b!69630 c!16427) b!69620))

(assert (= (and b!69630 (not c!16427)) b!69613))

(assert (= (and b!69630 c!16437) b!69632))

(assert (= (and b!69630 (not c!16437)) b!69636))

(assert (= (and b!69624 c!16435) b!69639))

(assert (= (and b!69624 (not c!16435)) b!69642))

(assert (= (and b!69630 c!16439) b!69617))

(assert (= (and b!69630 (not c!16439)) b!69624))

(assert (= (and b!69635 c!16425) b!69641))

(assert (= (and b!69635 (not c!16425)) b!69630))

(assert (= (and b!69628 c!16438) b!69625))

(assert (= (and b!69628 (not c!16438)) b!69635))

(assert (= (and b!69627 c!16429) b!69633))

(assert (= (and b!69627 (not c!16429)) b!69628))

(assert (= (and d!53634 c!16432) b!69621))

(assert (= (and d!53634 (not c!16432)) b!69627))

(declare-fun m!70487 () Bool)

(assert (=> b!69615 m!70487))

(declare-fun m!70489 () Bool)

(assert (=> d!53634 m!70489))

(declare-fun m!70491 () Bool)

(assert (=> b!69637 m!70491))

(assert (=> b!69530 d!53634))

(declare-fun b!69643 () Bool)

(declare-fun e!37689 () Formula!52)

(declare-fun res!33929 () Formula!52)

(assert (=> b!69643 (= e!37689 res!33929)))

(assert (=> b!69643 true))

(declare-fun b!69644 () Bool)

(declare-fun e!37702 () Formula!52)

(declare-fun res!33930 () Formula!52)

(assert (=> b!69644 (= e!37702 res!33930)))

(assert (=> b!69644 true))

(declare-fun b!69645 () Bool)

(declare-fun e!37697 () Formula!52)

(declare-fun lt!14585 () Bool)

(assert (=> b!69645 (= e!37697 (nnf!1 (ite lt!14585 (rhs!959 (rhs!961 formula!50)) (ite (is-Or!57 (rhs!961 formula!50)) (rhs!961 (rhs!961 formula!50)) (ite (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (Not!57 (rhs!959 (f!4213 (rhs!961 formula!50)))) (ite (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (Not!57 (rhs!961 (f!4213 (rhs!961 formula!50)))) (Not!57 (rhs!960 (f!4213 (rhs!961 formula!50))))))))))))

(declare-fun b!69646 () Bool)

(declare-fun lt!14578 () Formula!52)

(assert (=> b!69646 (= e!37702 lt!14578)))

(declare-fun b!69647 () Bool)

(declare-fun e!37692 () Formula!52)

(declare-fun lt!14579 () Formula!52)

(declare-fun lt!14572 () Formula!52)

(assert (=> b!69647 (= e!37692 (And!57 lt!14579 lt!14572))))

(declare-fun b!69648 () Bool)

(declare-fun res!33926 () Formula!52)

(assert (=> b!69648 (= e!37697 res!33926)))

(assert (=> b!69648 true))

(declare-fun b!69649 () Bool)

(declare-fun e!37699 () Formula!52)

(declare-fun res!33927 () Formula!52)

(assert (=> b!69649 (= e!37699 res!33927)))

(assert (=> b!69649 true))

(declare-fun b!69650 () Bool)

(declare-fun lt!14576 () Formula!52)

(assert (=> b!69650 (= e!37689 lt!14576)))

(declare-fun b!69651 () Bool)

(declare-fun e!37695 () Formula!52)

(declare-fun lt!14580 () Formula!52)

(declare-fun lt!14587 () Formula!52)

(assert (=> b!69651 (= e!37695 (And!57 lt!14580 lt!14587))))

(declare-fun b!69652 () Bool)

(declare-fun e!37693 () Formula!52)

(assert (=> b!69652 (= e!37693 lt!14580)))

(declare-fun b!69653 () Bool)

(declare-fun e!37690 () Formula!52)

(declare-fun lt!14586 () Formula!52)

(assert (=> b!69653 (= e!37690 lt!14586)))

(declare-fun lt!14581 () Bool)

(declare-fun b!69654 () Bool)

(declare-fun lt!14573 () Formula!52)

(assert (=> b!69654 (= e!37692 (ite lt!14581 (And!57 lt!14573 lt!14572) (ite (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50)))) lt!14573 (rhs!961 formula!50))))))

(declare-fun e!37700 () Formula!52)

(assert (=> b!69654 (= lt!14573 e!37700)))

(declare-fun c!16450 () Bool)

(assert (=> b!69654 (= c!16450 (or lt!14581 (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69654 (= lt!14581 (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))))))

(declare-fun b!69655 () Bool)

(declare-fun e!37696 () Formula!52)

(assert (=> b!69655 (= e!37696 lt!14578)))

(declare-fun b!69656 () Bool)

(declare-fun e!37691 () Formula!52)

(assert (=> b!69656 (= e!37691 lt!14587)))

(declare-fun b!69657 () Bool)

(declare-fun e!37694 () Formula!52)

(assert (=> b!69657 (= e!37695 e!37694)))

(declare-fun c!16444 () Bool)

(declare-fun lt!14577 () Bool)

(assert (=> b!69657 (= c!16444 lt!14577)))

(assert (=> b!69657 (= lt!14586 e!37691)))

(declare-fun c!16441 () Bool)

(assert (=> b!69657 (= c!16441 (or lt!14577 (and (not (is-Implies!57 (rhs!961 formula!50))) (or (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50))))))))))

(declare-fun lt!14584 () Formula!52)

(assert (=> b!69657 (= lt!14584 e!37693)))

(declare-fun c!16445 () Bool)

(assert (=> b!69657 (= c!16445 (or lt!14577 (is-Implies!57 (rhs!961 formula!50)) (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69657 (= lt!14577 (is-Or!57 (rhs!961 formula!50)))))

(declare-fun b!69658 () Bool)

(assert (=> b!69658 (= e!37694 e!37696)))

(declare-fun c!16453 () Bool)

(declare-fun lt!14575 () Bool)

(assert (=> b!69658 (= c!16453 lt!14575)))

(declare-fun e!37698 () Formula!52)

(assert (=> b!69658 (= lt!14578 e!37698)))

(declare-fun c!16448 () Bool)

(assert (=> b!69658 (= c!16448 (or lt!14575 (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69658 (= lt!14575 (is-Implies!57 (rhs!961 formula!50)))))

(declare-fun d!53636 () Bool)

(declare-fun lt!14571 () Formula!52)

(assert (=> d!53636 (isNNF!1 lt!14571)))

(assert (=> d!53636 (= lt!14571 e!37695)))

(declare-fun c!16447 () Bool)

(assert (=> d!53636 (= c!16447 lt!14585)))

(assert (=> d!53636 (= lt!14587 e!37697)))

(declare-fun c!16449 () Bool)

(assert (=> d!53636 (= c!16449 (or lt!14585 (is-Or!57 (rhs!961 formula!50)) (and (not (is-Implies!57 (rhs!961 formula!50))) (or (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50))))))))))

(assert (=> d!53636 (= lt!14580 e!37699)))

(declare-fun c!16446 () Bool)

(assert (=> d!53636 (= c!16446 (or lt!14585 (is-Or!57 (rhs!961 formula!50)) (is-Implies!57 (rhs!961 formula!50)) (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> d!53636 (= lt!14585 (is-And!57 (rhs!961 formula!50)))))

(assert (=> d!53636 (= (nnf!1 (rhs!961 formula!50)) lt!14571)))

(declare-fun b!69659 () Bool)

(declare-fun res!33931 () Formula!52)

(assert (=> b!69659 (= e!37693 res!33931)))

(assert (=> b!69659 true))

(declare-fun b!69660 () Bool)

(declare-fun e!37703 () Formula!52)

(assert (=> b!69660 (= e!37703 e!37692)))

(declare-fun c!16454 () Bool)

(declare-fun lt!14583 () Bool)

(assert (=> b!69660 (= c!16454 lt!14583)))

(declare-fun e!37701 () Formula!52)

(assert (=> b!69660 (= lt!14572 e!37701)))

(declare-fun c!16452 () Bool)

(assert (=> b!69660 (= c!16452 (or lt!14583 (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69660 (= lt!14579 e!37689)))

(declare-fun c!16442 () Bool)

(assert (=> b!69660 (= c!16442 (or lt!14583 (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69660 (= lt!14583 (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))))))

(declare-fun b!69661 () Bool)

(declare-fun res!33925 () Formula!52)

(assert (=> b!69661 (= e!37698 res!33925)))

(assert (=> b!69661 true))

(declare-fun b!69662 () Bool)

(declare-fun lt!14582 () Formula!52)

(assert (=> b!69662 (= e!37701 lt!14582)))

(declare-fun b!69663 () Bool)

(assert (=> b!69663 (= e!37694 (Or!57 lt!14584 lt!14586))))

(declare-fun b!69664 () Bool)

(declare-fun res!33922 () Formula!52)

(assert (=> b!69664 (= e!37691 res!33922)))

(assert (=> b!69664 true))

(declare-fun b!69665 () Bool)

(assert (=> b!69665 (= e!37696 e!37703)))

(declare-fun c!16440 () Bool)

(declare-fun lt!14574 () Bool)

(assert (=> b!69665 (= c!16440 lt!14574)))

(assert (=> b!69665 (= lt!14582 e!37690)))

(declare-fun c!16443 () Bool)

(assert (=> b!69665 (= c!16443 (or lt!14574 (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69665 (= lt!14576 e!37702)))

(declare-fun c!16451 () Bool)

(assert (=> b!69665 (= c!16451 (or lt!14574 (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))) (and (is-Not!57 (rhs!961 formula!50)) (is-Not!57 (f!4213 (rhs!961 formula!50))))))))

(assert (=> b!69665 (= lt!14574 (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))))))

(declare-fun b!69666 () Bool)

(declare-fun res!33923 () Formula!52)

(assert (=> b!69666 (= e!37701 res!33923)))

(assert (=> b!69666 true))

(declare-fun b!69667 () Bool)

(assert (=> b!69667 (= e!37699 (nnf!1 (ite lt!14585 (lhs!959 (rhs!961 formula!50)) (ite (is-Or!57 (rhs!961 formula!50)) (lhs!961 (rhs!961 formula!50)) (ite (is-Implies!57 (rhs!961 formula!50)) (Or!57 (Not!57 (lhs!960 (rhs!961 formula!50))) (rhs!960 (rhs!961 formula!50))) (ite (and (is-Not!57 (rhs!961 formula!50)) (is-And!57 (f!4213 (rhs!961 formula!50)))) (Not!57 (lhs!959 (f!4213 (rhs!961 formula!50)))) (ite (and (is-Not!57 (rhs!961 formula!50)) (is-Or!57 (f!4213 (rhs!961 formula!50)))) (Not!57 (lhs!961 (f!4213 (rhs!961 formula!50)))) (ite (and (is-Not!57 (rhs!961 formula!50)) (is-Implies!57 (f!4213 (rhs!961 formula!50)))) (lhs!960 (f!4213 (rhs!961 formula!50))) (f!4213 (f!4213 (rhs!961 formula!50)))))))))))))

(declare-fun b!69668 () Bool)

(assert (=> b!69668 (= e!37698 lt!14584)))

(declare-fun b!69669 () Bool)

(assert (=> b!69669 (= e!37700 lt!14579)))

(declare-fun b!69670 () Bool)

(declare-fun res!33928 () Formula!52)

(assert (=> b!69670 (= e!37690 res!33928)))

(assert (=> b!69670 true))

(declare-fun b!69671 () Bool)

(assert (=> b!69671 (= e!37703 (Or!57 lt!14576 lt!14582))))

(declare-fun b!69672 () Bool)

(declare-fun res!33924 () Formula!52)

(assert (=> b!69672 (= e!37700 res!33924)))

(assert (=> b!69672 true))

(assert (=> b!69672 true))

(assert (= (and d!53636 c!16446) b!69667))

(assert (= (and d!53636 (not c!16446)) b!69649))

(assert (= (and d!53636 c!16449) b!69645))

(assert (= (and d!53636 (not c!16449)) b!69648))

(assert (= (and b!69657 c!16445) b!69652))

(assert (= (and b!69657 (not c!16445)) b!69659))

(assert (= (and b!69657 c!16441) b!69656))

(assert (= (and b!69657 (not c!16441)) b!69664))

(assert (= (and b!69658 c!16448) b!69668))

(assert (= (and b!69658 (not c!16448)) b!69661))

(assert (= (and b!69665 c!16451) b!69646))

(assert (= (and b!69665 (not c!16451)) b!69644))

(assert (= (and b!69665 c!16443) b!69653))

(assert (= (and b!69665 (not c!16443)) b!69670))

(assert (= (and b!69660 c!16442) b!69650))

(assert (= (and b!69660 (not c!16442)) b!69643))

(assert (= (and b!69660 c!16452) b!69662))

(assert (= (and b!69660 (not c!16452)) b!69666))

(assert (= (and b!69654 c!16450) b!69669))

(assert (= (and b!69654 (not c!16450)) b!69672))

(assert (= (and b!69660 c!16454) b!69647))

(assert (= (and b!69660 (not c!16454)) b!69654))

(assert (= (and b!69665 c!16440) b!69671))

(assert (= (and b!69665 (not c!16440)) b!69660))

(assert (= (and b!69658 c!16453) b!69655))

(assert (= (and b!69658 (not c!16453)) b!69665))

(assert (= (and b!69657 c!16444) b!69663))

(assert (= (and b!69657 (not c!16444)) b!69658))

(assert (= (and d!53636 c!16447) b!69651))

(assert (= (and d!53636 (not c!16447)) b!69657))

(declare-fun m!70493 () Bool)

(assert (=> b!69645 m!70493))

(declare-fun m!70495 () Bool)

(assert (=> d!53636 m!70495))

(declare-fun m!70497 () Bool)

(assert (=> b!69667 m!70497))

(assert (=> b!69530 d!53636))

(push 1)

(assert (not b!69637))

(assert (not b!69615))

(assert (not b!69547))

(assert (not d!53634))

(assert (not d!53636))

(assert (not b!69667))

(assert (not b!69645))

(assert (not b!69548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

