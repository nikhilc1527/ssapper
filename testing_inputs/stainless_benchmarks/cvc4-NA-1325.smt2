; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9316 () Bool)

(assert start!9316)

(declare-fun b!66607 () Bool)

(declare-fun res!31657 () Bool)

(declare-fun e!36085 () Bool)

(assert (=> b!66607 (=> (not res!31657) (not e!36085))))

(declare-datatypes () ((Formula!26 (And!31 (lhs!881 Formula!26) (rhs!881 Formula!26)) (Literal!25 (id!4806 Int)) (Implies!31 (lhs!882 Formula!26) (rhs!882 Formula!26)) (Or!31 (lhs!883 Formula!26) (rhs!883 Formula!26)) (Not!31 (f!4132 Formula!26)))))

(declare-fun f!3731 () Formula!26)

(declare-fun f!3724 () Formula!26)

(assert (=> b!66607 (= res!31657 (= f!3731 (lhs!881 f!3724)))))

(declare-fun b!66608 () Bool)

(declare-fun isNNF!1 (Formula!26) Bool)

(assert (=> b!66608 (= e!36085 (not (isNNF!1 f!3731)))))

(declare-fun b!66606 () Bool)

(declare-fun res!31655 () Bool)

(assert (=> b!66606 (=> (not res!31655) (not e!36085))))

(declare-fun inductVal!252 () Bool)

(declare-fun simplifyPreservesNNF!0 (Formula!26) Bool)

(assert (=> b!66606 (= res!31655 (= inductVal!252 (simplifyPreservesNNF!0 (rhs!881 f!3724))))))

(declare-fun res!31654 () Bool)

(assert (=> start!9316 (=> (not res!31654) (not e!36085))))

(assert (=> start!9316 (= res!31654 (isNNF!1 f!3724))))

(assert (=> start!9316 e!36085))

(assert (=> start!9316 true))

(declare-fun b!66605 () Bool)

(declare-fun res!31656 () Bool)

(assert (=> b!66605 (=> (not res!31656) (not e!36085))))

(assert (=> b!66605 (= res!31656 (is-And!31 f!3724))))

(assert (= (and start!9316 res!31654) b!66605))

(assert (= (and b!66605 res!31656) b!66606))

(assert (= (and b!66606 res!31655) b!66607))

(assert (= (and b!66607 res!31657) b!66608))

(declare-fun m!69697 () Bool)

(assert (=> b!66608 m!69697))

(declare-fun m!69699 () Bool)

(assert (=> b!66606 m!69699))

(declare-fun m!69701 () Bool)

(assert (=> start!9316 m!69701))

(push 1)

(assert (not b!66606))

(assert (not b!66608))

(assert (not start!9316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!66641 () Bool)

(declare-fun e!36102 () Bool)

(declare-fun lt!13103 () Bool)

(assert (=> b!66641 (= e!36102 (simplifyPreservesNNF!0 (ite lt!13103 (rhs!881 (rhs!881 f!3724)) (ite (is-Implies!31 (rhs!881 f!3724)) (rhs!882 (rhs!881 f!3724)) (ite (is-Or!31 (rhs!881 f!3724)) (rhs!883 (rhs!881 f!3724)) (f!4132 (rhs!881 f!3724)))))))))

(declare-fun b!66642 () Bool)

(declare-fun e!36106 () Formula!26)

(declare-fun res!31697 () Formula!26)

(assert (=> b!66642 (= e!36106 res!31697)))

(assert (=> b!66642 true))

(declare-fun b!66643 () Bool)

(declare-fun e!36104 () Formula!26)

(declare-fun res!31698 () Formula!26)

(assert (=> b!66643 (= e!36104 res!31698)))

(assert (=> b!66643 true))

(declare-fun b!66644 () Bool)

(declare-fun e!36107 () Bool)

(declare-fun res!31701 () Bool)

(assert (=> b!66644 (= e!36107 res!31701)))

(assert (=> b!66644 true))

(declare-fun b!66645 () Bool)

(declare-fun simplify!1 (Formula!26) Formula!26)

(assert (=> b!66645 (= e!36104 (simplify!1 (rhs!881 f!3724)))))

(declare-fun b!66646 () Bool)

(declare-fun res!31700 () Bool)

(assert (=> b!66646 (= e!36102 res!31700)))

(assert (=> b!66646 true))

(declare-fun b!66647 () Bool)

(declare-fun e!36109 () Bool)

(declare-fun res!31699 () Bool)

(assert (=> b!66647 (= e!36109 res!31699)))

(assert (=> b!66647 true))

(declare-fun b!66648 () Bool)

(assert (=> b!66648 (= e!36106 (simplify!1 (rhs!881 f!3724)))))

(declare-fun b!66649 () Bool)

(declare-fun e!36105 () Bool)

(declare-fun e!36108 () Bool)

(assert (=> b!66649 (= e!36105 e!36108)))

(declare-fun c!15177 () Bool)

(declare-fun lt!13104 () Bool)

(assert (=> b!66649 (= c!15177 (or lt!13104 (and (not lt!13104) (is-Or!31 (rhs!881 f!3724)))))))

(declare-fun b!66650 () Bool)

(declare-fun e!36103 () Bool)

(assert (=> b!66650 (= e!36103 e!36107)))

(declare-fun c!15175 () Bool)

(assert (=> b!66650 (= c!15175 (or lt!13103 (and (not lt!13103) (is-Literal!25 (rhs!881 f!3724)))))))

(declare-fun b!66651 () Bool)

(declare-fun lt!13107 () Formula!26)

(assert (=> b!66651 (= e!36107 (isNNF!1 lt!13107))))

(declare-fun d!53428 () Bool)

(assert (=> d!53428 e!36103))

(declare-fun c!15173 () Bool)

(assert (=> d!53428 (= c!15173 (or lt!13103 (is-Literal!25 (rhs!881 f!3724))))))

(assert (=> d!53428 (= lt!13107 e!36106)))

(declare-fun c!15174 () Bool)

(assert (=> d!53428 (= c!15174 (or lt!13103 (is-Literal!25 (rhs!881 f!3724))))))

(declare-fun lt!13105 () Bool)

(assert (=> d!53428 (= lt!13105 e!36109)))

(declare-fun c!15176 () Bool)

(assert (=> d!53428 (= c!15176 (or lt!13103 (and (not (is-Literal!25 (rhs!881 f!3724))) (or (is-Implies!31 (rhs!881 f!3724)) (is-Or!31 (rhs!881 f!3724))))))))

(declare-fun lt!13106 () Bool)

(assert (=> d!53428 (= lt!13106 e!36102)))

(declare-fun c!15178 () Bool)

(assert (=> d!53428 (= c!15178 (or lt!13103 (not (is-Literal!25 (rhs!881 f!3724)))))))

(assert (=> d!53428 (= lt!13103 (is-And!31 (rhs!881 f!3724)))))

(assert (=> d!53428 (isNNF!1 (rhs!881 f!3724))))

(assert (=> d!53428 (= (simplifyPreservesNNF!0 (rhs!881 f!3724)) true)))

(declare-fun b!66652 () Bool)

(assert (=> b!66652 (= e!36109 (simplifyPreservesNNF!0 (ite lt!13103 (lhs!881 (rhs!881 f!3724)) (ite (is-Implies!31 (rhs!881 f!3724)) (lhs!882 (rhs!881 f!3724)) (lhs!883 (rhs!881 f!3724))))))))

(declare-fun b!66653 () Bool)

(assert (=> b!66653 (= e!36105 (isNNF!1 (simplify!1 (rhs!881 f!3724))))))

(declare-fun b!66654 () Bool)

(declare-fun res!31702 () Bool)

(assert (=> b!66654 (= e!36108 res!31702)))

(assert (=> b!66654 true))

(assert (=> b!66654 true))

(declare-fun b!66655 () Bool)

(declare-fun lt!13108 () Formula!26)

(assert (=> b!66655 (= e!36108 (isNNF!1 lt!13108))))

(declare-fun b!66656 () Bool)

(assert (=> b!66656 (= e!36103 e!36105)))

(declare-fun c!15179 () Bool)

(assert (=> b!66656 (= c!15179 (or lt!13104 (is-Or!31 (rhs!881 f!3724))))))

(assert (=> b!66656 (= lt!13108 e!36104)))

(declare-fun c!15172 () Bool)

(assert (=> b!66656 (= c!15172 (or lt!13104 (is-Or!31 (rhs!881 f!3724))))))

(assert (=> b!66656 (= lt!13104 (is-Implies!31 (rhs!881 f!3724)))))

(assert (= (and d!53428 c!15178) b!66641))

(assert (= (and d!53428 (not c!15178)) b!66646))

(assert (= (and d!53428 c!15176) b!66652))

(assert (= (and d!53428 (not c!15176)) b!66647))

(assert (= (and d!53428 c!15174) b!66648))

(assert (= (and d!53428 (not c!15174)) b!66642))

(assert (= (and b!66650 c!15175) b!66651))

(assert (= (and b!66650 (not c!15175)) b!66644))

(assert (= (and b!66656 c!15172) b!66645))

(assert (= (and b!66656 (not c!15172)) b!66643))

(assert (= (and b!66649 c!15177) b!66655))

(assert (= (and b!66649 (not c!15177)) b!66654))

(assert (= (and b!66656 c!15179) b!66649))

(assert (= (and b!66656 (not c!15179)) b!66653))

(assert (= (and d!53428 c!15173) b!66650))

(assert (= (and d!53428 (not c!15173)) b!66656))

(declare-fun m!69703 () Bool)

(assert (=> b!66648 m!69703))

(assert (=> b!66645 m!69703))

(declare-fun m!69705 () Bool)

(assert (=> b!66641 m!69705))

(assert (=> b!66653 m!69703))

(assert (=> b!66653 m!69703))

(declare-fun m!69707 () Bool)

(assert (=> b!66653 m!69707))

(declare-fun m!69709 () Bool)

(assert (=> b!66651 m!69709))

(declare-fun m!69711 () Bool)

(assert (=> b!66652 m!69711))

(declare-fun m!69713 () Bool)

(assert (=> b!66655 m!69713))

(declare-fun m!69715 () Bool)

(assert (=> d!53428 m!69715))

(assert (=> b!66606 d!53428))

(declare-fun b!66671 () Bool)

(declare-fun e!36118 () Bool)

(declare-fun e!36121 () Bool)

(assert (=> b!66671 (= e!36118 e!36121)))

(declare-fun c!15187 () Bool)

(declare-fun lt!13117 () Bool)

(declare-fun lt!13115 () Bool)

(declare-fun lt!13116 () Bool)

(assert (=> b!66671 (= c!15187 (or lt!13117 (and (not lt!13115) (is-Or!31 f!3731) lt!13116)))))

(declare-fun b!66672 () Bool)

(declare-fun e!36120 () Bool)

(assert (=> b!66672 (= e!36120 (and (not (is-Implies!31 f!3731)) (or (and (is-Not!31 f!3731) (is-Literal!25 (f!4132 f!3731))) (not (is-Not!31 f!3731)))))))

(declare-fun b!66673 () Bool)

(assert (=> b!66673 (= e!36120 e!36118)))

(declare-fun res!31716 () Bool)

(assert (=> b!66673 (=> (not res!31716) (not e!36118))))

(assert (=> b!66673 (= res!31716 lt!13116)))

(declare-fun d!53430 () Bool)

(declare-fun c!15188 () Bool)

(assert (=> d!53430 (= c!15188 (or lt!13115 (is-Or!31 f!3731)))))

(assert (=> d!53430 (= lt!13117 (and lt!13115 lt!13116))))

(declare-fun e!36119 () Bool)

(assert (=> d!53430 (= lt!13116 e!36119)))

(declare-fun c!15186 () Bool)

(assert (=> d!53430 (= c!15186 (or lt!13115 (is-Or!31 f!3731)))))

(assert (=> d!53430 (= lt!13115 (is-And!31 f!3731))))

(assert (=> d!53430 (= (isNNF!1 f!3731) e!36120)))

(declare-fun b!66674 () Bool)

(assert (=> b!66674 (= e!36121 (isNNF!1 (ite lt!13117 (rhs!881 f!3731) (rhs!883 f!3731))))))

(declare-fun b!66675 () Bool)

(assert (=> b!66675 (= e!36119 (isNNF!1 (ite lt!13115 (lhs!881 f!3731) (lhs!883 f!3731))))))

(declare-fun b!66676 () Bool)

(declare-fun res!31717 () Bool)

(assert (=> b!66676 (= e!36119 res!31717)))

(assert (=> b!66676 true))

(declare-fun b!66677 () Bool)

(declare-fun res!31715 () Bool)

(assert (=> b!66677 (= e!36121 res!31715)))

(assert (=> b!66677 true))

(assert (=> b!66677 true))

(assert (= (and d!53430 c!15186) b!66675))

(assert (= (and d!53430 (not c!15186)) b!66676))

(assert (= (and b!66673 res!31716) b!66671))

(assert (= (and b!66671 c!15187) b!66674))

(assert (= (and b!66671 (not c!15187)) b!66677))

(assert (= (and d!53430 c!15188) b!66673))

(assert (= (and d!53430 (not c!15188)) b!66672))

(declare-fun m!69717 () Bool)

(assert (=> b!66674 m!69717))

(declare-fun m!69719 () Bool)

(assert (=> b!66675 m!69719))

(assert (=> b!66608 d!53430))

(declare-fun b!66678 () Bool)

(declare-fun e!36122 () Bool)

(declare-fun e!36125 () Bool)

(assert (=> b!66678 (= e!36122 e!36125)))

(declare-fun c!15190 () Bool)

(declare-fun lt!13120 () Bool)

(declare-fun lt!13119 () Bool)

(declare-fun lt!13118 () Bool)

(assert (=> b!66678 (= c!15190 (or lt!13120 (and (not lt!13118) (is-Or!31 f!3724) lt!13119)))))

(declare-fun b!66679 () Bool)

(declare-fun e!36124 () Bool)

(assert (=> b!66679 (= e!36124 (and (not (is-Implies!31 f!3724)) (or (and (is-Not!31 f!3724) (is-Literal!25 (f!4132 f!3724))) (not (is-Not!31 f!3724)))))))

(declare-fun b!66680 () Bool)

(assert (=> b!66680 (= e!36124 e!36122)))

(declare-fun res!31719 () Bool)

(assert (=> b!66680 (=> (not res!31719) (not e!36122))))

(assert (=> b!66680 (= res!31719 lt!13119)))

(declare-fun d!53432 () Bool)

(declare-fun c!15191 () Bool)

(assert (=> d!53432 (= c!15191 (or lt!13118 (is-Or!31 f!3724)))))

(assert (=> d!53432 (= lt!13120 (and lt!13118 lt!13119))))

(declare-fun e!36123 () Bool)

(assert (=> d!53432 (= lt!13119 e!36123)))

(declare-fun c!15189 () Bool)

(assert (=> d!53432 (= c!15189 (or lt!13118 (is-Or!31 f!3724)))))

(assert (=> d!53432 (= lt!13118 (is-And!31 f!3724))))

(assert (=> d!53432 (= (isNNF!1 f!3724) e!36124)))

(declare-fun b!66681 () Bool)

(assert (=> b!66681 (= e!36125 (isNNF!1 (ite lt!13120 (rhs!881 f!3724) (rhs!883 f!3724))))))

(declare-fun b!66682 () Bool)

(assert (=> b!66682 (= e!36123 (isNNF!1 (ite lt!13118 (lhs!881 f!3724) (lhs!883 f!3724))))))

(declare-fun b!66683 () Bool)

(declare-fun res!31720 () Bool)

(assert (=> b!66683 (= e!36123 res!31720)))

(assert (=> b!66683 true))

(declare-fun b!66684 () Bool)

(declare-fun res!31718 () Bool)

(assert (=> b!66684 (= e!36125 res!31718)))

(assert (=> b!66684 true))

(assert (=> b!66684 true))

(assert (= (and d!53432 c!15189) b!66682))

(assert (= (and d!53432 (not c!15189)) b!66683))

(assert (= (and b!66680 res!31719) b!66678))

(assert (= (and b!66678 c!15190) b!66681))

(assert (= (and b!66678 (not c!15190)) b!66684))

(assert (= (and d!53432 c!15191) b!66680))

(assert (= (and d!53432 (not c!15191)) b!66679))

(declare-fun m!69721 () Bool)

(assert (=> b!66681 m!69721))

(declare-fun m!69723 () Bool)

(assert (=> b!66682 m!69723))

(assert (=> start!9316 d!53432))

(push 1)

(assert (not b!66675))

(assert (not b!66681))

(assert (not d!53428))

(assert (not b!66655))

(assert (not b!66652))

(assert (not b!66653))

(assert (not b!66674))

(assert (not b!66648))

(assert (not b!66682))

(assert (not b!66651))

(assert (not b!66645))

(assert (not b!66641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

