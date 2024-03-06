; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5754 () Bool)

(assert start!5754)

(declare-fun b!43825 () Bool)

(declare-datatypes () ((Unit!420 (Unit!421))))

(declare-fun e!22722 () Unit!420)

(declare-datatypes () ((Nat!116 (Zero!100) (Succ!97 (n!1241 Nat!116)))))

(declare-fun n1!66 () Nat!116)

(declare-fun n2!77 () Nat!116)

(declare-fun increasing_times!0 (Nat!116 Nat!116) Unit!420)

(declare-fun pow!0 (Nat!116 Nat!116) Nat!116)

(assert (=> b!43825 (= e!22722 (increasing_times!0 n1!66 (pow!0 n1!66 (n!1241 n2!77))))))

(declare-fun lt!7976 () Unit!420)

(declare-fun pow_positive!0 (Nat!116 Nat!116) Unit!420)

(assert (=> b!43825 (= lt!7976 (pow_positive!0 n1!66 (n!1241 n2!77)))))

(declare-fun b!43826 () Bool)

(declare-fun e!22723 () Bool)

(declare-fun >!2 (Nat!116 Nat!116) Bool)

(assert (=> b!43826 (= e!22723 (not (>!2 (pow!0 n1!66 n2!77) Zero!100)))))

(declare-fun b!43827 () Bool)

(declare-fun res!20734 () Bool)

(assert (=> b!43827 (=> (not res!20734) (not e!22723))))

(declare-fun t!5134 () Unit!420)

(assert (=> b!43827 (= res!20734 (= t!5134 e!22722))))

(declare-fun c!9334 () Bool)

(assert (=> b!43827 (= c!9334 (is-Succ!97 n2!77))))

(declare-fun res!20733 () Bool)

(assert (=> start!5754 (=> (not res!20733) (not e!22723))))

(assert (=> start!5754 (= res!20733 (>!2 n1!66 Zero!100))))

(assert (=> start!5754 e!22723))

(assert (=> start!5754 true))

(declare-fun b!43828 () Bool)

(declare-fun Unit!422 () Unit!420)

(assert (=> b!43828 (= e!22722 Unit!422)))

(declare-fun b!43829 () Bool)

(declare-fun res!20735 () Bool)

(assert (=> b!43829 (=> (not res!20735) (not e!22723))))

(declare-fun res!17646 () Unit!420)

(declare-fun x$67!21 () Unit!420)

(assert (=> b!43829 (= res!20735 (and (= res!17646 t!5134) (= x$67!21 res!17646)))))

(assert (= (and start!5754 res!20733) b!43827))

(assert (= (and b!43827 c!9334) b!43825))

(assert (= (and b!43827 (not c!9334)) b!43828))

(assert (= (and b!43827 res!20734) b!43829))

(assert (= (and b!43829 res!20735) b!43826))

(declare-fun m!47081 () Bool)

(assert (=> b!43825 m!47081))

(assert (=> b!43825 m!47081))

(declare-fun m!47083 () Bool)

(assert (=> b!43825 m!47083))

(declare-fun m!47085 () Bool)

(assert (=> b!43825 m!47085))

(declare-fun m!47087 () Bool)

(assert (=> b!43826 m!47087))

(assert (=> b!43826 m!47087))

(declare-fun m!47089 () Bool)

(assert (=> b!43826 m!47089))

(declare-fun m!47091 () Bool)

(assert (=> start!5754 m!47091))

(push 1)

(assert (not b!43825))

(assert (not b!43826))

(assert (not start!5754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31112 () Bool)

(declare-fun <=!2 (Nat!116 Nat!116) Bool)

(declare-fun *!4 (Nat!116 Nat!116) Nat!116)

(assert (=> d!31112 (<=!2 n1!66 (*!4 n1!66 (pow!0 n1!66 (n!1241 n2!77))))))

(assert (=> d!31112 true))

(declare-fun x$66!32 () Unit!420)

(assert (=> d!31112 (= (increasing_times!0 n1!66 (pow!0 n1!66 (n!1241 n2!77))) x$66!32)))

(declare-fun bs!17730 () Bool)

(assert (= bs!17730 d!31112))

(assert (=> bs!17730 m!47081))

(declare-fun m!47093 () Bool)

(assert (=> bs!17730 m!47093))

(assert (=> bs!17730 m!47093))

(declare-fun m!47095 () Bool)

(assert (=> bs!17730 m!47095))

(assert (=> b!43825 d!31112))

(declare-fun d!31114 () Bool)

(declare-fun c!9337 () Bool)

(assert (=> d!31114 (= c!9337 (is-Succ!97 (n!1241 n2!77)))))

(declare-fun e!22726 () Nat!116)

(assert (=> d!31114 (= (pow!0 n1!66 (n!1241 n2!77)) e!22726)))

(declare-fun b!43834 () Bool)

(assert (=> b!43834 (= e!22726 (*!4 n1!66 (pow!0 n1!66 (n!1241 (n!1241 n2!77)))))))

(declare-fun b!43835 () Bool)

(assert (=> b!43835 (= e!22726 (Succ!97 Zero!100))))

(assert (= (and d!31114 c!9337) b!43834))

(assert (= (and d!31114 (not c!9337)) b!43835))

(declare-fun m!47097 () Bool)

(assert (=> b!43834 m!47097))

(assert (=> b!43834 m!47097))

(declare-fun m!47099 () Bool)

(assert (=> b!43834 m!47099))

(assert (=> b!43825 d!31114))

(declare-fun d!31116 () Bool)

(assert (=> d!31116 (>!2 (pow!0 n1!66 (n!1241 n2!77)) Zero!100)))

(assert (=> d!31116 true))

(declare-fun x$67!37 () Unit!420)

(assert (=> d!31116 (= (pow_positive!0 n1!66 (n!1241 n2!77)) x$67!37)))

(declare-fun bs!17731 () Bool)

(assert (= bs!17731 d!31116))

(assert (=> bs!17731 m!47081))

(assert (=> bs!17731 m!47081))

(declare-fun m!47101 () Bool)

(assert (=> bs!17731 m!47101))

(assert (=> b!43825 d!31116))

(declare-fun d!31118 () Bool)

(declare-fun res!20738 () Bool)

(declare-fun e!22729 () Bool)

(assert (=> d!31118 (=> (not res!20738) (not e!22729))))

(declare-fun <!2 (Nat!116 Nat!116) Bool)

(assert (=> d!31118 (= res!20738 (not (<!2 (pow!0 n1!66 n2!77) Zero!100)))))

(assert (=> d!31118 (= (>!2 (pow!0 n1!66 n2!77) Zero!100) e!22729)))

(declare-fun b!43838 () Bool)

(assert (=> b!43838 (= e!22729 (not (= (pow!0 n1!66 n2!77) Zero!100)))))

(assert (= (and d!31118 res!20738) b!43838))

(assert (=> d!31118 m!47087))

(declare-fun m!47103 () Bool)

(assert (=> d!31118 m!47103))

(assert (=> b!43826 d!31118))

(declare-fun d!31120 () Bool)

(declare-fun c!9338 () Bool)

(assert (=> d!31120 (= c!9338 (is-Succ!97 n2!77))))

(declare-fun e!22730 () Nat!116)

(assert (=> d!31120 (= (pow!0 n1!66 n2!77) e!22730)))

(declare-fun b!43839 () Bool)

(assert (=> b!43839 (= e!22730 (*!4 n1!66 (pow!0 n1!66 (n!1241 n2!77))))))

(declare-fun b!43840 () Bool)

(assert (=> b!43840 (= e!22730 (Succ!97 Zero!100))))

(assert (= (and d!31120 c!9338) b!43839))

(assert (= (and d!31120 (not c!9338)) b!43840))

(assert (=> b!43839 m!47081))

(assert (=> b!43839 m!47081))

(assert (=> b!43839 m!47093))

(assert (=> b!43826 d!31120))

(declare-fun d!31122 () Bool)

(declare-fun res!20739 () Bool)

(declare-fun e!22731 () Bool)

(assert (=> d!31122 (=> (not res!20739) (not e!22731))))

(assert (=> d!31122 (= res!20739 (not (<!2 n1!66 Zero!100)))))

(assert (=> d!31122 (= (>!2 n1!66 Zero!100) e!22731)))

(declare-fun b!43841 () Bool)

(assert (=> b!43841 (= e!22731 (not (= n1!66 Zero!100)))))

(assert (= (and d!31122 res!20739) b!43841))

(declare-fun m!47105 () Bool)

(assert (=> d!31122 m!47105))

(assert (=> start!5754 d!31122))

(push 1)

(assert (not b!43834))

(assert (not d!31116))

(assert (not d!31118))

(assert (not d!31122))

(assert (not d!31112))

(assert (not b!43839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31124 () Bool)

(declare-fun lt!7979 () Bool)

(declare-fun repr!0 (Nat!116) Int)

(assert (=> d!31124 (= lt!7979 (< (repr!0 n1!66) (repr!0 Zero!100)))))

(declare-fun e!22734 () Bool)

(assert (=> d!31124 (= lt!7979 e!22734)))

(declare-fun c!9341 () Bool)

(assert (=> d!31124 (= c!9341 (and (is-Succ!97 n1!66) (is-Succ!97 Zero!100)))))

(assert (=> d!31124 (= (<!2 n1!66 Zero!100) lt!7979)))

(declare-fun b!43846 () Bool)

(assert (=> b!43846 (= e!22734 (<!2 (n!1241 n1!66) (n!1241 Zero!100)))))

(declare-fun b!43847 () Bool)

(assert (=> b!43847 (= e!22734 (and (is-Zero!100 n1!66) (is-Succ!97 Zero!100)))))

(assert (= (and d!31124 c!9341) b!43846))

(assert (= (and d!31124 (not c!9341)) b!43847))

(declare-fun m!47107 () Bool)

(assert (=> d!31124 m!47107))

(declare-fun m!47109 () Bool)

(assert (=> d!31124 m!47109))

(declare-fun m!47111 () Bool)

(assert (=> b!43846 m!47111))

(assert (=> d!31122 d!31124))

(declare-fun d!31126 () Bool)

(declare-fun lt!7980 () Bool)

(assert (=> d!31126 (= lt!7980 (< (repr!0 (pow!0 n1!66 n2!77)) (repr!0 Zero!100)))))

(declare-fun e!22735 () Bool)

(assert (=> d!31126 (= lt!7980 e!22735)))

(declare-fun c!9342 () Bool)

(assert (=> d!31126 (= c!9342 (and (is-Succ!97 (pow!0 n1!66 n2!77)) (is-Succ!97 Zero!100)))))

(assert (=> d!31126 (= (<!2 (pow!0 n1!66 n2!77) Zero!100) lt!7980)))

(declare-fun b!43848 () Bool)

(assert (=> b!43848 (= e!22735 (<!2 (n!1241 (pow!0 n1!66 n2!77)) (n!1241 Zero!100)))))

(declare-fun b!43849 () Bool)

(assert (=> b!43849 (= e!22735 (and (is-Zero!100 (pow!0 n1!66 n2!77)) (is-Succ!97 Zero!100)))))

(assert (= (and d!31126 c!9342) b!43848))

(assert (= (and d!31126 (not c!9342)) b!43849))

(assert (=> d!31126 m!47087))

(declare-fun m!47113 () Bool)

(assert (=> d!31126 m!47113))

(assert (=> d!31126 m!47109))

(declare-fun m!47115 () Bool)

(assert (=> b!43848 m!47115))

(assert (=> d!31118 d!31126))

(declare-fun d!31128 () Bool)

(declare-fun res!20740 () Bool)

(declare-fun e!22736 () Bool)

(assert (=> d!31128 (=> (not res!20740) (not e!22736))))

(assert (=> d!31128 (= res!20740 (not (<!2 (pow!0 n1!66 (n!1241 n2!77)) Zero!100)))))

(assert (=> d!31128 (= (>!2 (pow!0 n1!66 (n!1241 n2!77)) Zero!100) e!22736)))

(declare-fun b!43850 () Bool)

(assert (=> b!43850 (= e!22736 (not (= (pow!0 n1!66 (n!1241 n2!77)) Zero!100)))))

(assert (= (and d!31128 res!20740) b!43850))

(assert (=> d!31128 m!47081))

(declare-fun m!47117 () Bool)

(assert (=> d!31128 m!47117))

(assert (=> d!31116 d!31128))

(assert (=> d!31116 d!31114))

(declare-fun d!31130 () Bool)

(declare-fun c!9345 () Bool)

(assert (=> d!31130 (= c!9345 (is-Zero!100 n1!66))))

(declare-fun e!22739 () Nat!116)

(assert (=> d!31130 (= (*!4 n1!66 (pow!0 n1!66 (n!1241 n2!77))) e!22739)))

(declare-fun b!43855 () Bool)

(assert (=> b!43855 (= e!22739 Zero!100)))

(declare-fun b!43856 () Bool)

(declare-fun +!5 (Nat!116 Nat!116) Nat!116)

(assert (=> b!43856 (= e!22739 (+!5 (*!4 (n!1241 n1!66) (pow!0 n1!66 (n!1241 n2!77))) (pow!0 n1!66 (n!1241 n2!77))))))

(assert (= (and d!31130 c!9345) b!43855))

(assert (= (and d!31130 (not c!9345)) b!43856))

(assert (=> b!43856 m!47081))

(declare-fun m!47119 () Bool)

(assert (=> b!43856 m!47119))

(assert (=> b!43856 m!47119))

(assert (=> b!43856 m!47081))

(declare-fun m!47121 () Bool)

(assert (=> b!43856 m!47121))

(assert (=> b!43839 d!31130))

(assert (=> b!43839 d!31114))

(declare-fun d!31132 () Bool)

(declare-fun res!20743 () Bool)

(declare-fun e!22742 () Bool)

(assert (=> d!31132 (=> res!20743 e!22742)))

(assert (=> d!31132 (= res!20743 (<!2 n1!66 (*!4 n1!66 (pow!0 n1!66 (n!1241 n2!77)))))))

(assert (=> d!31132 (= (<=!2 n1!66 (*!4 n1!66 (pow!0 n1!66 (n!1241 n2!77)))) e!22742)))

(declare-fun b!43859 () Bool)

(assert (=> b!43859 (= e!22742 (= n1!66 (*!4 n1!66 (pow!0 n1!66 (n!1241 n2!77)))))))

(assert (= (and d!31132 (not res!20743)) b!43859))

(assert (=> d!31132 m!47093))

(declare-fun m!47123 () Bool)

(assert (=> d!31132 m!47123))

(assert (=> d!31112 d!31132))

(assert (=> d!31112 d!31130))

(declare-fun d!31134 () Bool)

(declare-fun c!9346 () Bool)

(assert (=> d!31134 (= c!9346 (is-Zero!100 n1!66))))

(declare-fun e!22743 () Nat!116)

(assert (=> d!31134 (= (*!4 n1!66 (pow!0 n1!66 (n!1241 (n!1241 n2!77)))) e!22743)))

(declare-fun b!43860 () Bool)

(assert (=> b!43860 (= e!22743 Zero!100)))

(declare-fun b!43861 () Bool)

(assert (=> b!43861 (= e!22743 (+!5 (*!4 (n!1241 n1!66) (pow!0 n1!66 (n!1241 (n!1241 n2!77)))) (pow!0 n1!66 (n!1241 (n!1241 n2!77)))))))

(assert (= (and d!31134 c!9346) b!43860))

(assert (= (and d!31134 (not c!9346)) b!43861))

(assert (=> b!43861 m!47097))

(declare-fun m!47125 () Bool)

(assert (=> b!43861 m!47125))

(assert (=> b!43861 m!47125))

(assert (=> b!43861 m!47097))

(declare-fun m!47127 () Bool)

(assert (=> b!43861 m!47127))

(assert (=> b!43834 d!31134))

(declare-fun d!31136 () Bool)

(declare-fun c!9347 () Bool)

(assert (=> d!31136 (= c!9347 (is-Succ!97 (n!1241 (n!1241 n2!77))))))

(declare-fun e!22744 () Nat!116)

(assert (=> d!31136 (= (pow!0 n1!66 (n!1241 (n!1241 n2!77))) e!22744)))

(declare-fun b!43862 () Bool)

(assert (=> b!43862 (= e!22744 (*!4 n1!66 (pow!0 n1!66 (n!1241 (n!1241 (n!1241 n2!77))))))))

(declare-fun b!43863 () Bool)

(assert (=> b!43863 (= e!22744 (Succ!97 Zero!100))))

(assert (= (and d!31136 c!9347) b!43862))

(assert (= (and d!31136 (not c!9347)) b!43863))

(declare-fun m!47129 () Bool)

(assert (=> b!43862 m!47129))

(assert (=> b!43862 m!47129))

(declare-fun m!47131 () Bool)

(assert (=> b!43862 m!47131))

(assert (=> b!43834 d!31136))

(push 1)

(assert (not d!31132))

(assert (not b!43846))

(assert (not d!31128))

(assert (not b!43848))

(assert (not b!43861))

(assert (not b!43862))

(assert (not d!31126))

(assert (not d!31124))

(assert (not b!43856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

