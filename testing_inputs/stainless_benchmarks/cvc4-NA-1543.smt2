; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10430 () Bool)

(assert start!10430)

(declare-fun res!39867 () Bool)

(declare-fun e!42770 () Bool)

(assert (=> start!10430 (=> (not res!39867) (not e!42770))))

(declare-datatypes () ((Formula!112 (Implies!116 (lhs!1449 Formula!112) (rhs!1449 Formula!112)) (And!116 (lhs!1450 Formula!112) (rhs!1450 Formula!112)) (Or!116 (lhs!1451 Formula!112) (rhs!1451 Formula!112)) (Literal!110 (id!4973 (_ BitVec 32))) (Not!116 (f!4769 Formula!112)))))

(declare-fun formula!94 () Formula!112)

(declare-fun x$2!434 () Formula!112)

(assert (=> start!10430 (= res!39867 (and (not (is-And!116 formula!94)) (not (is-Or!116 formula!94)) (not (is-Implies!116 formula!94)) (or (not (is-Not!116 formula!94)) (not (is-And!116 (f!4769 formula!94)))) (or (not (is-Not!116 formula!94)) (not (is-Or!116 (f!4769 formula!94)))) (or (not (is-Not!116 formula!94)) (not (is-Implies!116 (f!4769 formula!94)))) (or (not (is-Not!116 formula!94)) (not (is-Not!116 (f!4769 formula!94)))) (or (not (is-Not!116 formula!94)) (not (is-Literal!110 (f!4769 formula!94)))) (= x$2!434 formula!94)))))

(assert (=> start!10430 e!42770))

(assert (=> start!10430 true))

(declare-fun b!79118 () Bool)

(declare-fun isNNF!0 (Formula!112) Bool)

(assert (=> b!79118 (= e!42770 (not (isNNF!0 x$2!434)))))

(assert (= (and start!10430 res!39867) b!79118))

(declare-fun m!73648 () Bool)

(assert (=> b!79118 m!73648))

(push 1)

(assert (not b!79118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!79167 () Bool)

(declare-fun e!42803 () Bool)

(declare-fun lt!18196 () Bool)

(assert (=> b!79167 (= e!42803 lt!18196)))

(declare-fun b!79168 () Bool)

(declare-fun e!42801 () Bool)

(declare-fun e!42809 () Formula!112)

(assert (=> b!79168 (= e!42801 (isNNF!0 e!42809))))

(declare-fun c!20155 () Bool)

(declare-fun lt!18194 () Bool)

(assert (=> b!79168 (= c!20155 lt!18194)))

(declare-fun b!79169 () Bool)

(declare-fun e!42810 () Formula!112)

(assert (=> b!79169 (= e!42810 (rhs!1449 x$2!434))))

(declare-fun b!79170 () Bool)

(declare-fun e!42812 () Bool)

(declare-fun res!39906 () Bool)

(assert (=> b!79170 (= e!42812 res!39906)))

(assert (=> b!79170 true))

(declare-fun d!55005 () Bool)

(declare-fun c!20148 () Bool)

(declare-fun lt!18192 () Bool)

(assert (=> d!55005 (= c!20148 lt!18192)))

(assert (=> d!55005 (= lt!18196 e!42801)))

(declare-fun c!20147 () Bool)

(declare-fun e!42808 () Bool)

(assert (=> d!55005 (= c!20147 e!42808)))

(declare-fun res!39910 () Bool)

(assert (=> d!55005 (=> res!39910 e!42808)))

(assert (=> d!55005 (= res!39910 lt!18194)))

(declare-fun lt!18190 () Bool)

(assert (=> d!55005 (= lt!18194 (and lt!18192 lt!18190))))

(declare-fun e!42802 () Bool)

(assert (=> d!55005 (= lt!18190 e!42802)))

(declare-fun c!20152 () Bool)

(assert (=> d!55005 (= c!20152 (or lt!18192 (is-Or!116 x$2!434) (is-Implies!116 x$2!434)))))

(assert (=> d!55005 (= lt!18192 (is-And!116 x$2!434))))

(declare-fun e!42806 () Bool)

(assert (=> d!55005 (= (isNNF!0 x$2!434) e!42806)))

(declare-fun b!79171 () Bool)

(declare-fun e!42800 () Bool)

(declare-fun e!42807 () Bool)

(assert (=> b!79171 (= e!42800 e!42807)))

(declare-fun c!20151 () Bool)

(declare-fun lt!18191 () Bool)

(assert (=> b!79171 (= c!20151 (or lt!18191 (is-Implies!116 x$2!434)))))

(declare-fun b!79172 () Bool)

(declare-fun e!42804 () Bool)

(declare-fun res!39904 () Bool)

(assert (=> b!79172 (= e!42804 res!39904)))

(assert (=> b!79172 true))

(declare-fun b!79173 () Bool)

(assert (=> b!79173 (= e!42812 lt!18190)))

(declare-fun b!79174 () Bool)

(declare-fun res!39903 () Bool)

(assert (=> b!79174 (= e!42801 res!39903)))

(assert (=> b!79174 true))

(declare-fun b!79175 () Bool)

(declare-fun res!39902 () Bool)

(assert (=> b!79175 (= e!42802 res!39902)))

(assert (=> b!79175 true))

(declare-fun b!79176 () Bool)

(assert (=> b!79176 (= e!42806 (and lt!18190 lt!18196))))

(declare-fun b!79177 () Bool)

(declare-fun e!42805 () Bool)

(assert (=> b!79177 (= e!42805 e!42803)))

(declare-fun lt!18197 () Bool)

(declare-fun lt!18195 () Bool)

(declare-fun c!20146 () Bool)

(assert (=> b!79177 (= c!20146 (or (and lt!18195 lt!18197) (and (not lt!18195) (is-Implies!116 x$2!434) lt!18197)))))

(declare-fun b!79178 () Bool)

(assert (=> b!79178 (= e!42810 (rhs!1451 x$2!434))))

(declare-fun b!79179 () Bool)

(declare-fun e!42811 () Bool)

(declare-fun lt!18189 () Bool)

(declare-fun lt!18193 () Bool)

(assert (=> b!79179 (= e!42811 (or (and lt!18189 lt!18193) (and (not lt!18189) (is-Implies!116 x$2!434) lt!18193)))))

(assert (=> b!79179 (= lt!18193 e!42812)))

(declare-fun c!20153 () Bool)

(assert (=> b!79179 (= c!20153 (or lt!18189 (is-Implies!116 x$2!434)))))

(assert (=> b!79179 (= lt!18189 (is-Or!116 x$2!434))))

(declare-fun b!79180 () Bool)

(declare-fun e!42799 () Bool)

(assert (=> b!79180 (= e!42799 e!42805)))

(declare-fun res!39905 () Bool)

(assert (=> b!79180 (=> (not res!39905) (not e!42805))))

(assert (=> b!79180 (= res!39905 lt!18197)))

(declare-fun b!79181 () Bool)

(assert (=> b!79181 (= e!42807 lt!18190)))

(declare-fun b!79182 () Bool)

(declare-fun res!39908 () Bool)

(assert (=> b!79182 (= e!42803 res!39908)))

(assert (=> b!79182 true))

(assert (=> b!79182 true))

(declare-fun b!79183 () Bool)

(assert (=> b!79183 (= e!42809 (rhs!1450 x$2!434))))

(declare-fun b!79184 () Bool)

(assert (=> b!79184 (= e!42809 e!42810)))

(declare-fun c!20150 () Bool)

(assert (=> b!79184 (= c!20150 e!42800)))

(declare-fun res!39911 () Bool)

(assert (=> b!79184 (=> (not res!39911) (not e!42800))))

(assert (=> b!79184 (= res!39911 lt!18191)))

(assert (=> b!79184 (= lt!18191 (is-Or!116 x$2!434))))

(declare-fun b!79185 () Bool)

(assert (=> b!79185 (= e!42799 (or (and (is-Not!116 x$2!434) (is-Literal!110 (f!4769 x$2!434))) (not (is-Not!116 x$2!434))))))

(declare-fun b!79186 () Bool)

(declare-fun res!39909 () Bool)

(assert (=> b!79186 (= e!42807 res!39909)))

(assert (=> b!79186 true))

(declare-fun b!79187 () Bool)

(assert (=> b!79187 (= e!42806 e!42799)))

(declare-fun c!20154 () Bool)

(assert (=> b!79187 (= c!20154 (or lt!18195 (is-Implies!116 x$2!434)))))

(assert (=> b!79187 (= lt!18197 e!42804)))

(declare-fun c!20149 () Bool)

(assert (=> b!79187 (= c!20149 (or lt!18195 (is-Implies!116 x$2!434)))))

(assert (=> b!79187 (= lt!18195 (is-Or!116 x$2!434))))

(declare-fun b!79188 () Bool)

(assert (=> b!79188 (= e!42804 lt!18190)))

(declare-fun b!79189 () Bool)

(assert (=> b!79189 (= e!42808 e!42811)))

(declare-fun res!39907 () Bool)

(assert (=> b!79189 (=> (not res!39907) (not e!42811))))

(assert (=> b!79189 (= res!39907 (not lt!18192))))

(declare-fun b!79190 () Bool)

(assert (=> b!79190 (= e!42802 (isNNF!0 (ite lt!18192 (lhs!1450 x$2!434) (ite (is-Or!116 x$2!434) (lhs!1451 x$2!434) (lhs!1449 x$2!434)))))))

(assert (= (and d!55005 c!20152) b!79190))

(assert (= (and d!55005 (not c!20152)) b!79175))

(assert (= (and d!55005 (not res!39910)) b!79189))

(assert (= (and b!79189 res!39907) b!79179))

(assert (= (and b!79179 c!20153) b!79173))

(assert (= (and b!79179 (not c!20153)) b!79170))

(assert (= (and b!79184 res!39911) b!79171))

(assert (= (and b!79171 c!20151) b!79181))

(assert (= (and b!79171 (not c!20151)) b!79186))

(assert (= (and b!79184 c!20150) b!79178))

(assert (= (and b!79184 (not c!20150)) b!79169))

(assert (= (and b!79168 c!20155) b!79183))

(assert (= (and b!79168 (not c!20155)) b!79184))

(assert (= (and d!55005 c!20147) b!79168))

(assert (= (and d!55005 (not c!20147)) b!79174))

(assert (= (and b!79187 c!20149) b!79188))

(assert (= (and b!79187 (not c!20149)) b!79172))

(assert (= (and b!79180 res!39905) b!79177))

(assert (= (and b!79177 c!20146) b!79167))

(assert (= (and b!79177 (not c!20146)) b!79182))

(assert (= (and b!79187 c!20154) b!79180))

(assert (= (and b!79187 (not c!20154)) b!79185))

(assert (= (and d!55005 c!20148) b!79176))

(assert (= (and d!55005 (not c!20148)) b!79187))

(declare-fun m!73650 () Bool)

(assert (=> b!79168 m!73650))

(declare-fun m!73652 () Bool)

(assert (=> b!79190 m!73652))

(assert (=> b!79118 d!55005))

(push 1)

(assert (not b!79168))

(assert (not b!79190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

