; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9394 () Bool)

(assert start!9394)

(declare-fun res!32705 () Bool)

(declare-fun e!36803 () Bool)

(assert (=> start!9394 (=> (not res!32705) (not e!36803))))

(declare-datatypes () ((Formula!38 (And!43 (lhs!917 Formula!38) (rhs!917 Formula!38)) (Literal!37 (id!4818 Int)) (Implies!43 (lhs!918 Formula!38) (rhs!918 Formula!38)) (Or!43 (lhs!919 Formula!38) (rhs!919 Formula!38)) (Not!43 (f!4171 Formula!38)))))

(declare-fun f!3683 () Formula!38)

(declare-fun isSimplified!1 (Formula!38) Bool)

(assert (=> start!9394 (= res!32705 (isSimplified!1 f!3683))))

(assert (=> start!9394 e!36803))

(assert (=> start!9394 true))

(declare-fun b!67991 () Bool)

(declare-fun res!32706 () Bool)

(assert (=> b!67991 (=> (not res!32706) (not e!36803))))

(declare-fun f!3709 () Formula!38)

(assert (=> b!67991 (= res!32706 (and (not (is-And!43 f!3683)) (not (is-Literal!37 f!3683)) (not (is-Implies!43 f!3683)) (is-Or!43 f!3683) (= f!3709 (rhs!919 f!3683))))))

(declare-fun b!67992 () Bool)

(assert (=> b!67992 (= e!36803 (not (isSimplified!1 f!3709)))))

(assert (= (and start!9394 res!32705) b!67991))

(assert (= (and b!67991 res!32706) b!67992))

(declare-fun m!70143 () Bool)

(assert (=> start!9394 m!70143))

(declare-fun m!70145 () Bool)

(assert (=> b!67992 m!70145))

(push 1)

(assert (not b!67992))

(assert (not start!9394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!13715 () Bool)

(declare-fun e!36823 () Bool)

(declare-fun lt!13718 () Bool)

(declare-fun lt!13716 () Bool)

(declare-fun b!68019 () Bool)

(assert (=> b!68019 (= e!36823 (ite lt!13715 (and lt!13718 lt!13716) (and (not (is-Implies!43 f!3709)) (or (not (is-Not!43 f!3709)) lt!13718))))))

(declare-fun e!36821 () Bool)

(assert (=> b!68019 (= lt!13718 e!36821)))

(declare-fun c!15752 () Bool)

(assert (=> b!68019 (= c!15752 (or lt!13715 (and (not (is-Implies!43 f!3709)) (is-Not!43 f!3709))))))

(assert (=> b!68019 (= lt!13715 (is-Or!43 f!3709))))

(declare-fun b!68020 () Bool)

(declare-fun e!36827 () Bool)

(declare-fun lt!13717 () Bool)

(assert (=> b!68020 (= e!36827 (isSimplified!1 (ite lt!13717 (rhs!917 f!3709) (rhs!919 f!3709))))))

(declare-fun b!68021 () Bool)

(declare-fun e!36826 () Bool)

(declare-fun e!36825 () Bool)

(assert (=> b!68021 (= e!36826 e!36825)))

(declare-fun res!32732 () Bool)

(assert (=> b!68021 (=> (not res!32732) (not e!36825))))

(declare-fun lt!13713 () Bool)

(assert (=> b!68021 (= res!32732 (not lt!13713))))

(declare-fun b!68022 () Bool)

(declare-fun lt!13712 () Bool)

(assert (=> b!68022 (= e!36823 (and lt!13712 lt!13716))))

(declare-fun b!68023 () Bool)

(declare-fun res!32736 () Bool)

(assert (=> b!68023 (= e!36821 res!32736)))

(assert (=> b!68023 true))

(assert (=> b!68023 true))

(declare-fun b!68024 () Bool)

(assert (=> b!68024 (= e!36821 lt!13712)))

(declare-fun b!68025 () Bool)

(declare-fun e!36824 () Bool)

(assert (=> b!68025 (= e!36824 (isSimplified!1 (ite lt!13713 (lhs!917 f!3709) (ite (is-Or!43 f!3709) (lhs!919 f!3709) (f!4171 f!3709)))))))

(declare-fun b!68026 () Bool)

(declare-fun e!36820 () Bool)

(assert (=> b!68026 (= e!36825 e!36820)))

(declare-fun res!32738 () Bool)

(assert (=> b!68026 (=> (not res!32738) (not e!36820))))

(declare-fun lt!13714 () Bool)

(assert (=> b!68026 (= res!32738 lt!13714)))

(assert (=> b!68026 (= lt!13714 (is-Or!43 f!3709))))

(declare-fun b!68027 () Bool)

(declare-fun res!32734 () Bool)

(assert (=> b!68027 (= e!36827 res!32734)))

(assert (=> b!68027 true))

(declare-fun b!68028 () Bool)

(declare-fun e!36822 () Bool)

(declare-fun res!32737 () Bool)

(assert (=> b!68028 (= e!36822 res!32737)))

(assert (=> b!68028 true))

(declare-fun b!68029 () Bool)

(declare-fun res!32735 () Bool)

(assert (=> b!68029 (= e!36824 res!32735)))

(assert (=> b!68029 true))

(declare-fun d!53538 () Bool)

(declare-fun c!15753 () Bool)

(assert (=> d!53538 (= c!15753 lt!13713)))

(assert (=> d!53538 (= lt!13716 e!36827)))

(declare-fun c!15751 () Bool)

(assert (=> d!53538 (= c!15751 e!36826)))

(declare-fun res!32733 () Bool)

(assert (=> d!53538 (=> res!32733 e!36826)))

(assert (=> d!53538 (= res!32733 lt!13717)))

(assert (=> d!53538 (= lt!13717 (and lt!13713 lt!13712))))

(assert (=> d!53538 (= lt!13712 e!36824)))

(declare-fun c!15754 () Bool)

(assert (=> d!53538 (= c!15754 (or lt!13713 (is-Or!43 f!3709) (and (not (is-Implies!43 f!3709)) (is-Not!43 f!3709))))))

(assert (=> d!53538 (= lt!13713 (is-And!43 f!3709))))

(assert (=> d!53538 (= (isSimplified!1 f!3709) e!36823)))

(declare-fun b!68030 () Bool)

(assert (=> b!68030 (= e!36822 lt!13712)))

(declare-fun b!68031 () Bool)

(assert (=> b!68031 (= e!36820 e!36822)))

(declare-fun c!15755 () Bool)

(assert (=> b!68031 (= c!15755 (or lt!13714 (and (not (is-Implies!43 f!3709)) (is-Not!43 f!3709))))))

(assert (= (and d!53538 c!15754) b!68025))

(assert (= (and d!53538 (not c!15754)) b!68029))

(assert (= (and d!53538 (not res!32733)) b!68021))

(assert (= (and b!68021 res!32732) b!68026))

(assert (= (and b!68026 res!32738) b!68031))

(assert (= (and b!68031 c!15755) b!68030))

(assert (= (and b!68031 (not c!15755)) b!68028))

(assert (= (and d!53538 c!15751) b!68020))

(assert (= (and d!53538 (not c!15751)) b!68027))

(assert (= (and b!68019 c!15752) b!68024))

(assert (= (and b!68019 (not c!15752)) b!68023))

(assert (= (and d!53538 c!15753) b!68022))

(assert (= (and d!53538 (not c!15753)) b!68019))

(declare-fun m!70147 () Bool)

(assert (=> b!68020 m!70147))

(declare-fun m!70149 () Bool)

(assert (=> b!68025 m!70149))

(assert (=> b!67992 d!53538))

(declare-fun lt!13723 () Bool)

(declare-fun b!68032 () Bool)

(declare-fun lt!13722 () Bool)

(declare-fun e!36831 () Bool)

(declare-fun lt!13725 () Bool)

(assert (=> b!68032 (= e!36831 (ite lt!13722 (and lt!13725 lt!13723) (and (not (is-Implies!43 f!3683)) (or (not (is-Not!43 f!3683)) lt!13725))))))

(declare-fun e!36829 () Bool)

(assert (=> b!68032 (= lt!13725 e!36829)))

(declare-fun c!15757 () Bool)

(assert (=> b!68032 (= c!15757 (or lt!13722 (and (not (is-Implies!43 f!3683)) (is-Not!43 f!3683))))))

(assert (=> b!68032 (= lt!13722 (is-Or!43 f!3683))))

(declare-fun b!68033 () Bool)

(declare-fun e!36835 () Bool)

(declare-fun lt!13724 () Bool)

(assert (=> b!68033 (= e!36835 (isSimplified!1 (ite lt!13724 (rhs!917 f!3683) (rhs!919 f!3683))))))

(declare-fun b!68034 () Bool)

(declare-fun e!36834 () Bool)

(declare-fun e!36833 () Bool)

(assert (=> b!68034 (= e!36834 e!36833)))

(declare-fun res!32739 () Bool)

(assert (=> b!68034 (=> (not res!32739) (not e!36833))))

(declare-fun lt!13720 () Bool)

(assert (=> b!68034 (= res!32739 (not lt!13720))))

(declare-fun b!68035 () Bool)

(declare-fun lt!13719 () Bool)

(assert (=> b!68035 (= e!36831 (and lt!13719 lt!13723))))

(declare-fun b!68036 () Bool)

(declare-fun res!32743 () Bool)

(assert (=> b!68036 (= e!36829 res!32743)))

(assert (=> b!68036 true))

(assert (=> b!68036 true))

(declare-fun b!68037 () Bool)

(assert (=> b!68037 (= e!36829 lt!13719)))

(declare-fun b!68038 () Bool)

(declare-fun e!36832 () Bool)

(assert (=> b!68038 (= e!36832 (isSimplified!1 (ite lt!13720 (lhs!917 f!3683) (ite (is-Or!43 f!3683) (lhs!919 f!3683) (f!4171 f!3683)))))))

(declare-fun b!68039 () Bool)

(declare-fun e!36828 () Bool)

(assert (=> b!68039 (= e!36833 e!36828)))

(declare-fun res!32745 () Bool)

(assert (=> b!68039 (=> (not res!32745) (not e!36828))))

(declare-fun lt!13721 () Bool)

(assert (=> b!68039 (= res!32745 lt!13721)))

(assert (=> b!68039 (= lt!13721 (is-Or!43 f!3683))))

(declare-fun b!68040 () Bool)

(declare-fun res!32741 () Bool)

(assert (=> b!68040 (= e!36835 res!32741)))

(assert (=> b!68040 true))

(declare-fun b!68041 () Bool)

(declare-fun e!36830 () Bool)

(declare-fun res!32744 () Bool)

(assert (=> b!68041 (= e!36830 res!32744)))

(assert (=> b!68041 true))

(declare-fun b!68042 () Bool)

(declare-fun res!32742 () Bool)

(assert (=> b!68042 (= e!36832 res!32742)))

(assert (=> b!68042 true))

(declare-fun d!53540 () Bool)

(declare-fun c!15758 () Bool)

(assert (=> d!53540 (= c!15758 lt!13720)))

(assert (=> d!53540 (= lt!13723 e!36835)))

(declare-fun c!15756 () Bool)

(assert (=> d!53540 (= c!15756 e!36834)))

(declare-fun res!32740 () Bool)

(assert (=> d!53540 (=> res!32740 e!36834)))

(assert (=> d!53540 (= res!32740 lt!13724)))

(assert (=> d!53540 (= lt!13724 (and lt!13720 lt!13719))))

(assert (=> d!53540 (= lt!13719 e!36832)))

(declare-fun c!15759 () Bool)

(assert (=> d!53540 (= c!15759 (or lt!13720 (is-Or!43 f!3683) (and (not (is-Implies!43 f!3683)) (is-Not!43 f!3683))))))

(assert (=> d!53540 (= lt!13720 (is-And!43 f!3683))))

(assert (=> d!53540 (= (isSimplified!1 f!3683) e!36831)))

(declare-fun b!68043 () Bool)

(assert (=> b!68043 (= e!36830 lt!13719)))

(declare-fun b!68044 () Bool)

(assert (=> b!68044 (= e!36828 e!36830)))

(declare-fun c!15760 () Bool)

(assert (=> b!68044 (= c!15760 (or lt!13721 (and (not (is-Implies!43 f!3683)) (is-Not!43 f!3683))))))

(assert (= (and d!53540 c!15759) b!68038))

(assert (= (and d!53540 (not c!15759)) b!68042))

(assert (= (and d!53540 (not res!32740)) b!68034))

(assert (= (and b!68034 res!32739) b!68039))

(assert (= (and b!68039 res!32745) b!68044))

(assert (= (and b!68044 c!15760) b!68043))

(assert (= (and b!68044 (not c!15760)) b!68041))

(assert (= (and d!53540 c!15756) b!68033))

(assert (= (and d!53540 (not c!15756)) b!68040))

(assert (= (and b!68032 c!15757) b!68037))

(assert (= (and b!68032 (not c!15757)) b!68036))

(assert (= (and d!53540 c!15758) b!68035))

(assert (= (and d!53540 (not c!15758)) b!68032))

(declare-fun m!70151 () Bool)

(assert (=> b!68033 m!70151))

(declare-fun m!70153 () Bool)

(assert (=> b!68038 m!70153))

(assert (=> start!9394 d!53540))

(push 1)

(assert (not b!68038))

(assert (not b!68033))

(assert (not b!68025))

(assert (not b!68020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

