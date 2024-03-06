; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9374 () Bool)

(assert start!9374)

(declare-fun res!32447 () Bool)

(declare-fun e!36627 () Bool)

(assert (=> start!9374 (=> (not res!32447) (not e!36627))))

(declare-datatypes () ((Formula!34 (And!39 (lhs!905 Formula!34) (rhs!905 Formula!34)) (Literal!33 (id!4814 Int)) (Implies!39 (lhs!906 Formula!34) (rhs!906 Formula!34)) (Or!39 (lhs!907 Formula!34) (rhs!907 Formula!34)) (Not!39 (f!4161 Formula!34)))))

(declare-fun f!3683 () Formula!34)

(declare-fun isSimplified!1 (Formula!34) Bool)

(assert (=> start!9374 (= res!32447 (isSimplified!1 f!3683))))

(assert (=> start!9374 e!36627))

(assert (=> start!9374 true))

(declare-fun b!67675 () Bool)

(declare-fun res!32448 () Bool)

(assert (=> b!67675 (=> (not res!32448) (not e!36627))))

(declare-fun f!3688 () Formula!34)

(assert (=> b!67675 (= res!32448 (and (is-And!39 f!3683) (= f!3688 (rhs!905 f!3683))))))

(declare-fun b!67676 () Bool)

(assert (=> b!67676 (= e!36627 (not (isSimplified!1 f!3688)))))

(assert (= (and start!9374 res!32447) b!67675))

(assert (= (and b!67675 res!32448) b!67676))

(declare-fun m!70075 () Bool)

(assert (=> start!9374 m!70075))

(declare-fun m!70077 () Bool)

(assert (=> b!67676 m!70077))

(push 1)

(assert (not b!67676))

(assert (not start!9374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53518 () Bool)

(declare-fun c!15637 () Bool)

(declare-fun lt!13566 () Bool)

(assert (=> d!53518 (= c!15637 lt!13566)))

(declare-fun lt!13568 () Bool)

(declare-fun e!36645 () Bool)

(assert (=> d!53518 (= lt!13568 e!36645)))

(declare-fun c!15635 () Bool)

(declare-fun e!36646 () Bool)

(assert (=> d!53518 (= c!15635 e!36646)))

(declare-fun res!32479 () Bool)

(assert (=> d!53518 (=> res!32479 e!36646)))

(declare-fun lt!13569 () Bool)

(assert (=> d!53518 (= res!32479 lt!13569)))

(declare-fun lt!13565 () Bool)

(assert (=> d!53518 (= lt!13569 (and lt!13566 lt!13565))))

(declare-fun e!36650 () Bool)

(assert (=> d!53518 (= lt!13565 e!36650)))

(declare-fun c!15639 () Bool)

(assert (=> d!53518 (= c!15639 (or lt!13566 (is-Or!39 f!3688) (and (not (is-Implies!39 f!3688)) (is-Not!39 f!3688))))))

(assert (=> d!53518 (= lt!13566 (is-And!39 f!3688))))

(declare-fun e!36651 () Bool)

(assert (=> d!53518 (= (isSimplified!1 f!3688) e!36651)))

(declare-fun b!67703 () Bool)

(declare-fun e!36644 () Bool)

(declare-fun res!32480 () Bool)

(assert (=> b!67703 (= e!36644 res!32480)))

(assert (=> b!67703 true))

(assert (=> b!67703 true))

(declare-fun lt!13567 () Bool)

(declare-fun b!67704 () Bool)

(declare-fun lt!13564 () Bool)

(assert (=> b!67704 (= e!36651 (ite lt!13564 (and lt!13567 lt!13568) (and (not (is-Implies!39 f!3688)) (or (not (is-Not!39 f!3688)) lt!13567))))))

(assert (=> b!67704 (= lt!13567 e!36644)))

(declare-fun c!15636 () Bool)

(assert (=> b!67704 (= c!15636 (or lt!13564 (and (not (is-Implies!39 f!3688)) (is-Not!39 f!3688))))))

(assert (=> b!67704 (= lt!13564 (is-Or!39 f!3688))))

(declare-fun b!67705 () Bool)

(assert (=> b!67705 (= e!36645 (isSimplified!1 (ite lt!13569 (rhs!905 f!3688) (rhs!907 f!3688))))))

(declare-fun b!67706 () Bool)

(declare-fun e!36649 () Bool)

(declare-fun e!36648 () Bool)

(assert (=> b!67706 (= e!36649 e!36648)))

(declare-fun c!15638 () Bool)

(declare-fun lt!13570 () Bool)

(assert (=> b!67706 (= c!15638 (or lt!13570 (and (not (is-Implies!39 f!3688)) (is-Not!39 f!3688))))))

(declare-fun b!67707 () Bool)

(declare-fun res!32477 () Bool)

(assert (=> b!67707 (= e!36650 res!32477)))

(assert (=> b!67707 true))

(declare-fun b!67708 () Bool)

(declare-fun res!32476 () Bool)

(assert (=> b!67708 (= e!36645 res!32476)))

(assert (=> b!67708 true))

(declare-fun b!67709 () Bool)

(declare-fun res!32474 () Bool)

(assert (=> b!67709 (= e!36648 res!32474)))

(assert (=> b!67709 true))

(declare-fun b!67710 () Bool)

(assert (=> b!67710 (= e!36648 lt!13565)))

(declare-fun b!67711 () Bool)

(declare-fun e!36647 () Bool)

(assert (=> b!67711 (= e!36646 e!36647)))

(declare-fun res!32475 () Bool)

(assert (=> b!67711 (=> (not res!32475) (not e!36647))))

(assert (=> b!67711 (= res!32475 (not lt!13566))))

(declare-fun b!67712 () Bool)

(assert (=> b!67712 (= e!36647 e!36649)))

(declare-fun res!32478 () Bool)

(assert (=> b!67712 (=> (not res!32478) (not e!36649))))

(assert (=> b!67712 (= res!32478 lt!13570)))

(assert (=> b!67712 (= lt!13570 (is-Or!39 f!3688))))

(declare-fun b!67713 () Bool)

(assert (=> b!67713 (= e!36650 (isSimplified!1 (ite lt!13566 (lhs!905 f!3688) (ite (is-Or!39 f!3688) (lhs!907 f!3688) (f!4161 f!3688)))))))

(declare-fun b!67714 () Bool)

(assert (=> b!67714 (= e!36644 lt!13565)))

(declare-fun b!67715 () Bool)

(assert (=> b!67715 (= e!36651 (and lt!13565 lt!13568))))

(assert (= (and d!53518 c!15639) b!67713))

(assert (= (and d!53518 (not c!15639)) b!67707))

(assert (= (and d!53518 (not res!32479)) b!67711))

(assert (= (and b!67711 res!32475) b!67712))

(assert (= (and b!67712 res!32478) b!67706))

(assert (= (and b!67706 c!15638) b!67710))

(assert (= (and b!67706 (not c!15638)) b!67709))

(assert (= (and d!53518 c!15635) b!67705))

(assert (= (and d!53518 (not c!15635)) b!67708))

(assert (= (and b!67704 c!15636) b!67714))

(assert (= (and b!67704 (not c!15636)) b!67703))

(assert (= (and d!53518 c!15637) b!67715))

(assert (= (and d!53518 (not c!15637)) b!67704))

(declare-fun m!70079 () Bool)

(assert (=> b!67705 m!70079))

(declare-fun m!70081 () Bool)

(assert (=> b!67713 m!70081))

(assert (=> b!67676 d!53518))

(declare-fun d!53520 () Bool)

(declare-fun c!15642 () Bool)

(declare-fun lt!13573 () Bool)

(assert (=> d!53520 (= c!15642 lt!13573)))

(declare-fun lt!13575 () Bool)

(declare-fun e!36653 () Bool)

(assert (=> d!53520 (= lt!13575 e!36653)))

(declare-fun c!15640 () Bool)

(declare-fun e!36654 () Bool)

(assert (=> d!53520 (= c!15640 e!36654)))

(declare-fun res!32486 () Bool)

(assert (=> d!53520 (=> res!32486 e!36654)))

(declare-fun lt!13576 () Bool)

(assert (=> d!53520 (= res!32486 lt!13576)))

(declare-fun lt!13572 () Bool)

(assert (=> d!53520 (= lt!13576 (and lt!13573 lt!13572))))

(declare-fun e!36658 () Bool)

(assert (=> d!53520 (= lt!13572 e!36658)))

(declare-fun c!15644 () Bool)

(assert (=> d!53520 (= c!15644 (or lt!13573 (is-Or!39 f!3683) (and (not (is-Implies!39 f!3683)) (is-Not!39 f!3683))))))

(assert (=> d!53520 (= lt!13573 (is-And!39 f!3683))))

(declare-fun e!36659 () Bool)

(assert (=> d!53520 (= (isSimplified!1 f!3683) e!36659)))

(declare-fun b!67716 () Bool)

(declare-fun e!36652 () Bool)

(declare-fun res!32487 () Bool)

(assert (=> b!67716 (= e!36652 res!32487)))

(assert (=> b!67716 true))

(assert (=> b!67716 true))

(declare-fun lt!13574 () Bool)

(declare-fun b!67717 () Bool)

(declare-fun lt!13571 () Bool)

(assert (=> b!67717 (= e!36659 (ite lt!13571 (and lt!13574 lt!13575) (and (not (is-Implies!39 f!3683)) (or (not (is-Not!39 f!3683)) lt!13574))))))

(assert (=> b!67717 (= lt!13574 e!36652)))

(declare-fun c!15641 () Bool)

(assert (=> b!67717 (= c!15641 (or lt!13571 (and (not (is-Implies!39 f!3683)) (is-Not!39 f!3683))))))

(assert (=> b!67717 (= lt!13571 (is-Or!39 f!3683))))

(declare-fun b!67718 () Bool)

(assert (=> b!67718 (= e!36653 (isSimplified!1 (ite lt!13576 (rhs!905 f!3683) (rhs!907 f!3683))))))

(declare-fun b!67719 () Bool)

(declare-fun e!36657 () Bool)

(declare-fun e!36656 () Bool)

(assert (=> b!67719 (= e!36657 e!36656)))

(declare-fun c!15643 () Bool)

(declare-fun lt!13577 () Bool)

(assert (=> b!67719 (= c!15643 (or lt!13577 (and (not (is-Implies!39 f!3683)) (is-Not!39 f!3683))))))

(declare-fun b!67720 () Bool)

(declare-fun res!32484 () Bool)

(assert (=> b!67720 (= e!36658 res!32484)))

(assert (=> b!67720 true))

(declare-fun b!67721 () Bool)

(declare-fun res!32483 () Bool)

(assert (=> b!67721 (= e!36653 res!32483)))

(assert (=> b!67721 true))

(declare-fun b!67722 () Bool)

(declare-fun res!32481 () Bool)

(assert (=> b!67722 (= e!36656 res!32481)))

(assert (=> b!67722 true))

(declare-fun b!67723 () Bool)

(assert (=> b!67723 (= e!36656 lt!13572)))

(declare-fun b!67724 () Bool)

(declare-fun e!36655 () Bool)

(assert (=> b!67724 (= e!36654 e!36655)))

(declare-fun res!32482 () Bool)

(assert (=> b!67724 (=> (not res!32482) (not e!36655))))

(assert (=> b!67724 (= res!32482 (not lt!13573))))

(declare-fun b!67725 () Bool)

(assert (=> b!67725 (= e!36655 e!36657)))

(declare-fun res!32485 () Bool)

(assert (=> b!67725 (=> (not res!32485) (not e!36657))))

(assert (=> b!67725 (= res!32485 lt!13577)))

(assert (=> b!67725 (= lt!13577 (is-Or!39 f!3683))))

(declare-fun b!67726 () Bool)

(assert (=> b!67726 (= e!36658 (isSimplified!1 (ite lt!13573 (lhs!905 f!3683) (ite (is-Or!39 f!3683) (lhs!907 f!3683) (f!4161 f!3683)))))))

(declare-fun b!67727 () Bool)

(assert (=> b!67727 (= e!36652 lt!13572)))

(declare-fun b!67728 () Bool)

(assert (=> b!67728 (= e!36659 (and lt!13572 lt!13575))))

(assert (= (and d!53520 c!15644) b!67726))

(assert (= (and d!53520 (not c!15644)) b!67720))

(assert (= (and d!53520 (not res!32486)) b!67724))

(assert (= (and b!67724 res!32482) b!67725))

(assert (= (and b!67725 res!32485) b!67719))

(assert (= (and b!67719 c!15643) b!67723))

(assert (= (and b!67719 (not c!15643)) b!67722))

(assert (= (and d!53520 c!15640) b!67718))

(assert (= (and d!53520 (not c!15640)) b!67721))

(assert (= (and b!67717 c!15641) b!67727))

(assert (= (and b!67717 (not c!15641)) b!67716))

(assert (= (and d!53520 c!15642) b!67728))

(assert (= (and d!53520 (not c!15642)) b!67717))

(declare-fun m!70083 () Bool)

(assert (=> b!67718 m!70083))

(declare-fun m!70085 () Bool)

(assert (=> b!67726 m!70085))

(assert (=> start!9374 d!53520))

(push 1)

(assert (not b!67713))

(assert (not b!67718))

(assert (not b!67705))

(assert (not b!67726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

