; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9306 () Bool)

(assert start!9306)

(declare-fun res!31535 () Bool)

(declare-fun e!36007 () Bool)

(assert (=> start!9306 (=> (not res!31535) (not e!36007))))

(declare-datatypes () ((Formula!25 (And!30 (lhs!878 Formula!25) (rhs!878 Formula!25)) (Literal!24 (id!4805 Int)) (Implies!30 (lhs!879 Formula!25) (rhs!879 Formula!25)) (Or!30 (lhs!880 Formula!25) (rhs!880 Formula!25)) (Not!30 (f!4129 Formula!25)))))

(declare-fun f!3790 () Formula!25)

(declare-fun isNNF!1 (Formula!25) Bool)

(assert (=> start!9306 (= res!31535 (isNNF!1 f!3790))))

(assert (=> start!9306 e!36007))

(assert (=> start!9306 true))

(declare-fun b!66447 () Bool)

(declare-fun res!31536 () Bool)

(assert (=> b!66447 (=> (not res!31536) (not e!36007))))

(assert (=> b!66447 (= res!31536 (and (not (is-And!30 f!3790)) (not (is-Literal!24 f!3790)) (not (is-Implies!30 f!3790)) (not (is-Or!30 f!3790))))))

(declare-fun b!66448 () Bool)

(declare-fun res!31537 () Bool)

(assert (=> b!66448 (=> (not res!31537) (not e!36007))))

(declare-fun inductVal!356 () Bool)

(declare-fun nnfIsStable!1 (Formula!25) Bool)

(assert (=> b!66448 (= res!31537 (= inductVal!356 (nnfIsStable!1 (f!4129 f!3790))))))

(declare-fun b!66449 () Bool)

(declare-fun nnf!1 (Formula!25) Formula!25)

(assert (=> b!66449 (= e!36007 (not (= (nnf!1 f!3790) f!3790)))))

(assert (= (and start!9306 res!31535) b!66447))

(assert (= (and b!66447 res!31536) b!66448))

(assert (= (and b!66448 res!31537) b!66449))

(declare-fun m!69673 () Bool)

(assert (=> start!9306 m!69673))

(declare-fun m!69675 () Bool)

(assert (=> b!66448 m!69675))

(declare-fun m!69677 () Bool)

(assert (=> b!66449 m!69677))

(push 1)

(assert (not b!66449))

(assert (not b!66448))

(assert (not start!9306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66510 () Bool)

(declare-fun e!36048 () Formula!25)

(declare-fun e!36039 () Formula!25)

(assert (=> b!66510 (= e!36048 e!36039)))

(declare-fun c!15119 () Bool)

(declare-fun lt!13055 () Bool)

(assert (=> b!66510 (= c!15119 lt!13055)))

(declare-fun lt!13049 () Formula!25)

(declare-fun e!36052 () Formula!25)

(assert (=> b!66510 (= lt!13049 e!36052)))

(declare-fun c!15121 () Bool)

(assert (=> b!66510 (= c!15121 (or lt!13055 (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790)))))))

(declare-fun lt!13058 () Formula!25)

(declare-fun e!36051 () Formula!25)

(assert (=> b!66510 (= lt!13058 e!36051)))

(declare-fun c!15123 () Bool)

(assert (=> b!66510 (= c!15123 (or lt!13055 (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790)))))))

(assert (=> b!66510 (= lt!13055 (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))))))

(declare-fun b!66511 () Bool)

(declare-fun e!36038 () Formula!25)

(declare-fun lt!13059 () Bool)

(assert (=> b!66511 (= e!36038 (nnf!1 (ite lt!13059 (rhs!878 f!3790) (ite (is-Or!30 f!3790) (rhs!880 f!3790) (ite (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (Not!30 (rhs!878 (f!4129 f!3790))) (ite (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (Not!30 (rhs!880 (f!4129 f!3790))) (Not!30 (rhs!879 (f!4129 f!3790)))))))))))

(declare-fun b!66512 () Bool)

(declare-fun e!36042 () Formula!25)

(assert (=> b!66512 (= e!36042 lt!13058)))

(declare-fun b!66513 () Bool)

(declare-fun e!36043 () Formula!25)

(assert (=> b!66513 (= e!36043 lt!13049)))

(declare-fun e!36046 () Formula!25)

(declare-fun lt!13052 () Bool)

(declare-fun lt!13060 () Formula!25)

(declare-fun lt!13062 () Formula!25)

(declare-fun b!66514 () Bool)

(assert (=> b!66514 (= e!36046 (ite lt!13052 (And!30 lt!13062 lt!13060) (ite (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790))) lt!13062 f!3790)))))

(declare-fun e!36050 () Formula!25)

(assert (=> b!66514 (= lt!13062 e!36050)))

(declare-fun c!15125 () Bool)

(assert (=> b!66514 (= c!15125 (or lt!13052 (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790)))))))

(assert (=> b!66514 (= lt!13052 (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))))))

(declare-fun b!66515 () Bool)

(declare-fun res!31592 () Formula!25)

(assert (=> b!66515 (= e!36050 res!31592)))

(assert (=> b!66515 true))

(assert (=> b!66515 true))

(declare-fun b!66516 () Bool)

(declare-fun e!36040 () Formula!25)

(declare-fun res!31589 () Formula!25)

(assert (=> b!66516 (= e!36040 res!31589)))

(assert (=> b!66516 true))

(declare-fun b!66517 () Bool)

(declare-fun lt!13053 () Formula!25)

(assert (=> b!66517 (= e!36046 (And!30 lt!13053 lt!13060))))

(declare-fun b!66518 () Bool)

(declare-fun e!36049 () Formula!25)

(declare-fun res!31596 () Formula!25)

(assert (=> b!66518 (= e!36049 res!31596)))

(assert (=> b!66518 true))

(declare-fun b!66519 () Bool)

(declare-fun e!36047 () Formula!25)

(assert (=> b!66519 (= e!36047 e!36048)))

(declare-fun c!15122 () Bool)

(declare-fun lt!13051 () Bool)

(assert (=> b!66519 (= c!15122 lt!13051)))

(declare-fun lt!13054 () Formula!25)

(assert (=> b!66519 (= lt!13054 e!36040)))

(declare-fun c!15120 () Bool)

(assert (=> b!66519 (= c!15120 (or lt!13051 (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790)))))))

(assert (=> b!66519 (= lt!13051 (is-Implies!30 f!3790))))

(declare-fun b!66520 () Bool)

(declare-fun res!31588 () Formula!25)

(assert (=> b!66520 (= e!36042 res!31588)))

(assert (=> b!66520 true))

(declare-fun b!66521 () Bool)

(assert (=> b!66521 (= e!36039 (Or!30 lt!13058 lt!13049))))

(declare-fun b!66522 () Bool)

(declare-fun res!31593 () Formula!25)

(assert (=> b!66522 (= e!36043 res!31593)))

(assert (=> b!66522 true))

(declare-fun b!66523 () Bool)

(declare-fun e!36044 () Formula!25)

(declare-fun res!31590 () Formula!25)

(assert (=> b!66523 (= e!36044 res!31590)))

(assert (=> b!66523 true))

(declare-fun b!66524 () Bool)

(declare-fun lt!13048 () Formula!25)

(assert (=> b!66524 (= e!36040 lt!13048)))

(declare-fun b!66525 () Bool)

(assert (=> b!66525 (= e!36048 lt!13054)))

(declare-fun b!66526 () Bool)

(declare-fun e!36045 () Formula!25)

(declare-fun res!31591 () Formula!25)

(assert (=> b!66526 (= e!36045 res!31591)))

(assert (=> b!66526 true))

(declare-fun b!66527 () Bool)

(assert (=> b!66527 (= e!36039 e!36046)))

(declare-fun c!15115 () Bool)

(declare-fun lt!13050 () Bool)

(assert (=> b!66527 (= c!15115 lt!13050)))

(assert (=> b!66527 (= lt!13060 e!36043)))

(declare-fun c!15128 () Bool)

(assert (=> b!66527 (= c!15128 (or lt!13050 (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790)))))))

(assert (=> b!66527 (= lt!13053 e!36042)))

(declare-fun c!15116 () Bool)

(assert (=> b!66527 (= c!15116 (or lt!13050 (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790)))))))

(assert (=> b!66527 (= lt!13050 (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))))))

(declare-fun b!66528 () Bool)

(declare-fun lt!13056 () Formula!25)

(assert (=> b!66528 (= e!36047 (Or!30 lt!13048 lt!13056))))

(declare-fun b!66529 () Bool)

(declare-fun res!31597 () Formula!25)

(assert (=> b!66529 (= e!36038 res!31597)))

(assert (=> b!66529 true))

(declare-fun b!66530 () Bool)

(declare-fun res!31594 () Formula!25)

(assert (=> b!66530 (= e!36052 res!31594)))

(assert (=> b!66530 true))

(declare-fun b!66531 () Bool)

(declare-fun lt!13063 () Formula!25)

(assert (=> b!66531 (= e!36045 lt!13063)))

(declare-fun b!66532 () Bool)

(assert (=> b!66532 (= e!36051 lt!13054)))

(declare-fun d!53422 () Bool)

(declare-fun lt!13047 () Formula!25)

(assert (=> d!53422 (isNNF!1 lt!13047)))

(declare-fun e!36041 () Formula!25)

(assert (=> d!53422 (= lt!13047 e!36041)))

(declare-fun c!15117 () Bool)

(assert (=> d!53422 (= c!15117 lt!13059)))

(declare-fun lt!13057 () Formula!25)

(assert (=> d!53422 (= lt!13057 e!36038)))

(declare-fun c!15127 () Bool)

(assert (=> d!53422 (= c!15127 (or lt!13059 (is-Or!30 f!3790) (and (not (is-Implies!30 f!3790)) (or (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790)))))))))

(assert (=> d!53422 (= lt!13063 e!36049)))

(declare-fun c!15118 () Bool)

(assert (=> d!53422 (= c!15118 (or lt!13059 (is-Or!30 f!3790) (is-Implies!30 f!3790) (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790)))))))

(assert (=> d!53422 (= lt!13059 (is-And!30 f!3790))))

(assert (=> d!53422 (= (nnf!1 f!3790) lt!13047)))

(declare-fun b!66533 () Bool)

(assert (=> b!66533 (= e!36041 e!36047)))

(declare-fun c!15126 () Bool)

(declare-fun lt!13061 () Bool)

(assert (=> b!66533 (= c!15126 lt!13061)))

(assert (=> b!66533 (= lt!13056 e!36044)))

(declare-fun c!15114 () Bool)

(assert (=> b!66533 (= c!15114 (or lt!13061 (and (not (is-Implies!30 f!3790)) (or (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790)))))))))

(assert (=> b!66533 (= lt!13048 e!36045)))

(declare-fun c!15124 () Bool)

(assert (=> b!66533 (= c!15124 (or lt!13061 (is-Implies!30 f!3790) (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))) (and (is-Not!30 f!3790) (is-Not!30 (f!4129 f!3790)))))))

(assert (=> b!66533 (= lt!13061 (is-Or!30 f!3790))))

(declare-fun b!66534 () Bool)

(assert (=> b!66534 (= e!36052 lt!13056)))

(declare-fun b!66535 () Bool)

(assert (=> b!66535 (= e!36041 (And!30 lt!13063 lt!13057))))

(declare-fun b!66536 () Bool)

(assert (=> b!66536 (= e!36050 lt!13053)))

(declare-fun b!66537 () Bool)

(assert (=> b!66537 (= e!36044 lt!13057)))

(declare-fun b!66538 () Bool)

(declare-fun res!31595 () Formula!25)

(assert (=> b!66538 (= e!36051 res!31595)))

(assert (=> b!66538 true))

(declare-fun b!66539 () Bool)

(assert (=> b!66539 (= e!36049 (nnf!1 (ite lt!13059 (lhs!878 f!3790) (ite (is-Or!30 f!3790) (lhs!880 f!3790) (ite (is-Implies!30 f!3790) (Or!30 (Not!30 (lhs!879 f!3790)) (rhs!879 f!3790)) (ite (and (is-Not!30 f!3790) (is-And!30 (f!4129 f!3790))) (Not!30 (lhs!878 (f!4129 f!3790))) (ite (and (is-Not!30 f!3790) (is-Or!30 (f!4129 f!3790))) (Not!30 (lhs!880 (f!4129 f!3790))) (ite (and (is-Not!30 f!3790) (is-Implies!30 (f!4129 f!3790))) (lhs!879 (f!4129 f!3790)) (f!4129 (f!4129 f!3790))))))))))))

(assert (= (and d!53422 c!15118) b!66539))

(assert (= (and d!53422 (not c!15118)) b!66518))

(assert (= (and d!53422 c!15127) b!66511))

(assert (= (and d!53422 (not c!15127)) b!66529))

(assert (= (and b!66533 c!15124) b!66531))

(assert (= (and b!66533 (not c!15124)) b!66526))

(assert (= (and b!66533 c!15114) b!66537))

(assert (= (and b!66533 (not c!15114)) b!66523))

(assert (= (and b!66519 c!15120) b!66524))

(assert (= (and b!66519 (not c!15120)) b!66516))

(assert (= (and b!66510 c!15123) b!66532))

(assert (= (and b!66510 (not c!15123)) b!66538))

(assert (= (and b!66510 c!15121) b!66534))

(assert (= (and b!66510 (not c!15121)) b!66530))

(assert (= (and b!66527 c!15116) b!66512))

(assert (= (and b!66527 (not c!15116)) b!66520))

(assert (= (and b!66527 c!15128) b!66513))

(assert (= (and b!66527 (not c!15128)) b!66522))

(assert (= (and b!66514 c!15125) b!66536))

(assert (= (and b!66514 (not c!15125)) b!66515))

(assert (= (and b!66527 c!15115) b!66517))

(assert (= (and b!66527 (not c!15115)) b!66514))

(assert (= (and b!66510 c!15119) b!66521))

(assert (= (and b!66510 (not c!15119)) b!66527))

(assert (= (and b!66519 c!15122) b!66525))

(assert (= (and b!66519 (not c!15122)) b!66510))

(assert (= (and b!66533 c!15126) b!66528))

(assert (= (and b!66533 (not c!15126)) b!66519))

(assert (= (and d!53422 c!15117) b!66535))

(assert (= (and d!53422 (not c!15117)) b!66533))

(declare-fun m!69679 () Bool)

(assert (=> b!66511 m!69679))

(declare-fun m!69681 () Bool)

(assert (=> d!53422 m!69681))

(declare-fun m!69683 () Bool)

(assert (=> b!66539 m!69683))

(assert (=> b!66449 d!53422))

(declare-fun b!66564 () Bool)

(declare-fun e!36070 () Formula!25)

(declare-fun res!31628 () Formula!25)

(assert (=> b!66564 (= e!36070 res!31628)))

(assert (=> b!66564 true))

(assert (=> b!66564 true))

(declare-fun b!66565 () Bool)

(declare-fun e!36068 () Bool)

(assert (=> b!66565 (= e!36068 (= (nnf!1 (f!4129 f!3790)) (f!4129 f!3790)))))

(declare-fun b!66566 () Bool)

(declare-fun lt!13078 () Formula!25)

(assert (=> b!66566 (= e!36068 (= lt!13078 (f!4129 f!3790)))))

(declare-fun b!66567 () Bool)

(declare-fun e!36065 () Formula!25)

(declare-fun res!31627 () Formula!25)

(assert (=> b!66567 (= e!36065 res!31627)))

(assert (=> b!66567 true))

(declare-fun b!66568 () Bool)

(declare-fun e!36069 () Bool)

(declare-fun lt!13081 () Formula!25)

(assert (=> b!66568 (= e!36069 (= lt!13081 (f!4129 f!3790)))))

(declare-fun d!53424 () Bool)

(assert (=> d!53424 e!36069))

(declare-fun c!15146 () Bool)

(declare-fun lt!13077 () Bool)

(assert (=> d!53424 (= c!15146 (or lt!13077 (is-Literal!24 (f!4129 f!3790))))))

(assert (=> d!53424 (= lt!13081 e!36065)))

(declare-fun c!15143 () Bool)

(assert (=> d!53424 (= c!15143 (or lt!13077 (is-Literal!24 (f!4129 f!3790))))))

(declare-fun lt!13079 () Bool)

(declare-fun e!36067 () Bool)

(assert (=> d!53424 (= lt!13079 e!36067)))

(declare-fun c!15141 () Bool)

(assert (=> d!53424 (= c!15141 (or lt!13077 (and (not (is-Literal!24 (f!4129 f!3790))) (or (is-Implies!30 (f!4129 f!3790)) (is-Or!30 (f!4129 f!3790))))))))

(declare-fun lt!13076 () Bool)

(declare-fun e!36066 () Bool)

(assert (=> d!53424 (= lt!13076 e!36066)))

(declare-fun c!15142 () Bool)

(assert (=> d!53424 (= c!15142 (or lt!13077 (not (is-Literal!24 (f!4129 f!3790)))))))

(assert (=> d!53424 (= lt!13077 (is-And!30 (f!4129 f!3790)))))

(assert (=> d!53424 (isNNF!1 (f!4129 f!3790))))

(assert (=> d!53424 (= (nnfIsStable!1 (f!4129 f!3790)) true)))

(declare-fun b!66569 () Bool)

(assert (=> b!66569 (= e!36070 (nnf!1 (f!4129 f!3790)))))

(declare-fun b!66570 () Bool)

(declare-fun res!31630 () Bool)

(assert (=> b!66570 (= e!36067 res!31630)))

(assert (=> b!66570 true))

(declare-fun b!66571 () Bool)

(assert (=> b!66571 (= e!36067 (nnfIsStable!1 (ite lt!13077 (lhs!878 (f!4129 f!3790)) (ite (is-Implies!30 (f!4129 f!3790)) (lhs!879 (f!4129 f!3790)) (lhs!880 (f!4129 f!3790))))))))

(declare-fun b!66572 () Bool)

(declare-fun res!31629 () Bool)

(assert (=> b!66572 (= e!36066 res!31629)))

(assert (=> b!66572 true))

(declare-fun b!66573 () Bool)

(assert (=> b!66573 (= e!36069 e!36068)))

(declare-fun c!15144 () Bool)

(declare-fun lt!13080 () Bool)

(assert (=> b!66573 (= c!15144 (or lt!13080 (is-Or!30 (f!4129 f!3790))))))

(assert (=> b!66573 (= lt!13078 e!36070)))

(declare-fun c!15145 () Bool)

(assert (=> b!66573 (= c!15145 (or lt!13080 (is-Or!30 (f!4129 f!3790))))))

(assert (=> b!66573 (= lt!13080 (is-Implies!30 (f!4129 f!3790)))))

(declare-fun b!66574 () Bool)

(assert (=> b!66574 (= e!36066 (nnfIsStable!1 (ite lt!13077 (rhs!878 (f!4129 f!3790)) (ite (is-Implies!30 (f!4129 f!3790)) (rhs!879 (f!4129 f!3790)) (ite (is-Or!30 (f!4129 f!3790)) (rhs!880 (f!4129 f!3790)) (f!4129 (f!4129 f!3790)))))))))

(declare-fun b!66575 () Bool)

(assert (=> b!66575 (= e!36065 (nnf!1 (f!4129 f!3790)))))

(assert (= (and d!53424 c!15142) b!66574))

(assert (= (and d!53424 (not c!15142)) b!66572))

(assert (= (and d!53424 c!15141) b!66571))

(assert (= (and d!53424 (not c!15141)) b!66570))

(assert (= (and d!53424 c!15143) b!66575))

(assert (= (and d!53424 (not c!15143)) b!66567))

(assert (= (and b!66573 c!15145) b!66569))

(assert (= (and b!66573 (not c!15145)) b!66564))

(assert (= (and b!66573 c!15144) b!66566))

(assert (= (and b!66573 (not c!15144)) b!66565))

(assert (= (and d!53424 c!15146) b!66568))

(assert (= (and d!53424 (not c!15146)) b!66573))

(declare-fun m!69685 () Bool)

(assert (=> b!66575 m!69685))

(declare-fun m!69687 () Bool)

(assert (=> b!66571 m!69687))

(declare-fun m!69689 () Bool)

(assert (=> b!66574 m!69689))

(assert (=> b!66565 m!69685))

(declare-fun m!69691 () Bool)

(assert (=> d!53424 m!69691))

(assert (=> b!66569 m!69685))

(assert (=> b!66448 d!53424))

(declare-fun b!66590 () Bool)

(declare-fun e!36081 () Bool)

(assert (=> b!66590 (= e!36081 (and (not (is-Implies!30 f!3790)) (or (and (is-Not!30 f!3790) (is-Literal!24 (f!4129 f!3790))) (not (is-Not!30 f!3790)))))))

(declare-fun b!66591 () Bool)

(declare-fun e!36082 () Bool)

(declare-fun lt!13089 () Bool)

(assert (=> b!66591 (= e!36082 (isNNF!1 (ite lt!13089 (rhs!878 f!3790) (rhs!880 f!3790))))))

(declare-fun b!66592 () Bool)

(declare-fun res!31643 () Bool)

(assert (=> b!66592 (= e!36082 res!31643)))

(assert (=> b!66592 true))

(assert (=> b!66592 true))

(declare-fun b!66593 () Bool)

(declare-fun e!36080 () Bool)

(assert (=> b!66593 (= e!36081 e!36080)))

(declare-fun res!31644 () Bool)

(assert (=> b!66593 (=> (not res!31644) (not e!36080))))

(declare-fun lt!13088 () Bool)

(assert (=> b!66593 (= res!31644 lt!13088)))

(declare-fun d!53426 () Bool)

(declare-fun c!15155 () Bool)

(declare-fun lt!13090 () Bool)

(assert (=> d!53426 (= c!15155 (or lt!13090 (is-Or!30 f!3790)))))

(assert (=> d!53426 (= lt!13089 (and lt!13090 lt!13088))))

(declare-fun e!36079 () Bool)

(assert (=> d!53426 (= lt!13088 e!36079)))

(declare-fun c!15154 () Bool)

(assert (=> d!53426 (= c!15154 (or lt!13090 (is-Or!30 f!3790)))))

(assert (=> d!53426 (= lt!13090 (is-And!30 f!3790))))

(assert (=> d!53426 (= (isNNF!1 f!3790) e!36081)))

(declare-fun b!66594 () Bool)

(assert (=> b!66594 (= e!36079 (isNNF!1 (ite lt!13090 (lhs!878 f!3790) (lhs!880 f!3790))))))

(declare-fun b!66595 () Bool)

(declare-fun res!31645 () Bool)

(assert (=> b!66595 (= e!36079 res!31645)))

(assert (=> b!66595 true))

(declare-fun b!66596 () Bool)

(assert (=> b!66596 (= e!36080 e!36082)))

(declare-fun c!15153 () Bool)

(assert (=> b!66596 (= c!15153 (or lt!13089 (and (not lt!13090) (is-Or!30 f!3790) lt!13088)))))

(assert (= (and d!53426 c!15154) b!66594))

(assert (= (and d!53426 (not c!15154)) b!66595))

(assert (= (and b!66593 res!31644) b!66596))

(assert (= (and b!66596 c!15153) b!66591))

(assert (= (and b!66596 (not c!15153)) b!66592))

(assert (= (and d!53426 c!15155) b!66593))

(assert (= (and d!53426 (not c!15155)) b!66590))

(declare-fun m!69693 () Bool)

(assert (=> b!66591 m!69693))

(declare-fun m!69695 () Bool)

(assert (=> b!66594 m!69695))

(assert (=> start!9306 d!53426))

(push 1)

(assert (not b!66565))

(assert (not b!66511))

(assert (not b!66591))

(assert (not b!66594))

(assert (not b!66575))

(assert (not d!53424))

(assert (not b!66569))

(assert (not d!53422))

(assert (not b!66571))

(assert (not b!66574))

(assert (not b!66539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

