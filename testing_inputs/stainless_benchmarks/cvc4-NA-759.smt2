; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5796 () Bool)

(assert start!5796)

(declare-fun b!44023 () Bool)

(declare-fun res!20836 () Bool)

(declare-fun e!22810 () Bool)

(assert (=> b!44023 (=> (not res!20836) (not e!22810))))

(declare-datatypes () ((Unit!431 (Unit!432))))

(declare-fun t!5130 () Unit!431)

(declare-fun e!22811 () Unit!431)

(assert (=> b!44023 (= res!20836 (= t!5130 e!22811))))

(declare-fun c!9383 () Bool)

(declare-datatypes () ((Nat!120 (Zero!104) (Succ!101 (n!1245 Nat!120)))))

(declare-fun n1!48 () Nat!120)

(declare-fun n2!59 () Nat!120)

(declare-fun *!4 (Nat!120 Nat!120) Nat!120)

(assert (=> b!44023 (= c!9383 (not (= (n!1245 n1!48) (*!4 (n!1245 n1!48) n2!59))))))

(declare-fun b!44024 () Bool)

(declare-fun res!20839 () Bool)

(assert (=> b!44024 (=> (not res!20839) (not e!22810))))

(declare-fun n1!55 () Nat!120)

(declare-fun res!17635 () Unit!431)

(declare-fun tmp!147 () Unit!431)

(assert (=> b!44024 (= res!20839 (and (= res!17635 t!5130) (= tmp!147 res!17635) (= n1!55 (n!1245 n1!48))))))

(declare-fun b!44025 () Bool)

(declare-fun Unit!433 () Unit!431)

(assert (=> b!44025 (= e!22811 Unit!433)))

(declare-fun b!44026 () Bool)

(declare-fun transitive_<!0 (Nat!120 Nat!120 Nat!120) Unit!431)

(declare-fun +!5 (Nat!120 Nat!120) Nat!120)

(assert (=> b!44026 (= e!22811 (transitive_<!0 (n!1245 n1!48) (*!4 (n!1245 n1!48) n2!59) (+!5 (*!4 (n!1245 n1!48) n2!59) n2!59)))))

(declare-fun b!44027 () Bool)

(declare-fun res!20837 () Bool)

(assert (=> b!44027 (=> (not res!20837) (not e!22810))))

(declare-fun >!2 (Nat!120 Nat!120) Bool)

(assert (=> b!44027 (= res!20837 (>!2 n2!59 Zero!104))))

(declare-fun b!44028 () Bool)

(declare-fun res!20840 () Bool)

(assert (=> b!44028 (=> (not res!20840) (not e!22810))))

(declare-fun n2!66 () Nat!120)

(assert (=> b!44028 (= res!20840 (= n2!66 (+!5 (*!4 (n!1245 n1!48) n2!59) n2!59)))))

(declare-fun b!44029 () Bool)

(declare-fun <!2 (Nat!120 Nat!120) Bool)

(assert (=> b!44029 (= e!22810 (not (<!2 n1!55 n2!66)))))

(declare-fun res!20834 () Bool)

(assert (=> start!5796 (=> (not res!20834) (not e!22810))))

(assert (=> start!5796 (= res!20834 (>!2 n1!48 Zero!104))))

(assert (=> start!5796 e!22810))

(assert (=> start!5796 true))

(declare-fun b!44030 () Bool)

(declare-fun res!20833 () Bool)

(assert (=> b!44030 (=> (not res!20833) (not e!22810))))

(declare-fun tmp!138 () Unit!431)

(declare-fun increasing_times!0 (Nat!120 Nat!120) Unit!431)

(assert (=> b!44030 (= res!20833 (= tmp!138 (increasing_times!0 (n!1245 n1!48) n2!59)))))

(declare-fun b!44031 () Bool)

(declare-fun res!20835 () Bool)

(assert (=> b!44031 (=> (not res!20835) (not e!22810))))

(assert (=> b!44031 (= res!20835 (or (not (is-Succ!101 n1!48)) (not (is-Zero!104 (n!1245 n1!48)))))))

(declare-fun b!44032 () Bool)

(declare-fun res!20838 () Bool)

(assert (=> b!44032 (=> (not res!20838) (not e!22810))))

(declare-fun tmp!144 () Unit!431)

(declare-fun increasing_plus_strict!0 (Nat!120 Nat!120) Unit!431)

(assert (=> b!44032 (= res!20838 (= tmp!144 (increasing_plus_strict!0 (*!4 (n!1245 n1!48) n2!59) n2!59)))))

(assert (= (and start!5796 res!20834) b!44027))

(assert (= (and b!44027 res!20837) b!44031))

(assert (= (and b!44031 res!20835) b!44030))

(assert (= (and b!44030 res!20833) b!44032))

(assert (= (and b!44032 res!20838) b!44023))

(assert (= (and b!44023 c!9383) b!44026))

(assert (= (and b!44023 (not c!9383)) b!44025))

(assert (= (and b!44023 res!20836) b!44024))

(assert (= (and b!44024 res!20839) b!44028))

(assert (= (and b!44028 res!20840) b!44029))

(declare-fun m!47259 () Bool)

(assert (=> b!44029 m!47259))

(declare-fun m!47261 () Bool)

(assert (=> b!44030 m!47261))

(declare-fun m!47263 () Bool)

(assert (=> b!44028 m!47263))

(assert (=> b!44028 m!47263))

(declare-fun m!47265 () Bool)

(assert (=> b!44028 m!47265))

(assert (=> b!44032 m!47263))

(assert (=> b!44032 m!47263))

(declare-fun m!47267 () Bool)

(assert (=> b!44032 m!47267))

(assert (=> b!44023 m!47263))

(declare-fun m!47269 () Bool)

(assert (=> start!5796 m!47269))

(declare-fun m!47271 () Bool)

(assert (=> b!44027 m!47271))

(assert (=> b!44026 m!47263))

(assert (=> b!44026 m!47263))

(assert (=> b!44026 m!47265))

(assert (=> b!44026 m!47263))

(assert (=> b!44026 m!47265))

(declare-fun m!47273 () Bool)

(assert (=> b!44026 m!47273))

(push 1)

(assert (not b!44026))

(assert (not b!44032))

(assert (not b!44030))

(assert (not b!44028))

(assert (not b!44029))

(assert (not b!44023))

(assert (not start!5796))

(assert (not b!44027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31196 () Bool)

(assert (=> d!31196 (<!2 (*!4 (n!1245 n1!48) n2!59) (+!5 (*!4 (n!1245 n1!48) n2!59) n2!59))))

(declare-fun lt!8013 () Unit!431)

(declare-fun e!22814 () Unit!431)

(assert (=> d!31196 (= lt!8013 e!22814)))

(declare-fun c!9386 () Bool)

(assert (=> d!31196 (= c!9386 (is-Zero!104 (*!4 (n!1245 n1!48) n2!59)))))

(assert (=> d!31196 (>!2 n2!59 Zero!104)))

(assert (=> d!31196 (= (increasing_plus_strict!0 (*!4 (n!1245 n1!48) n2!59) n2!59) lt!8013)))

(declare-fun b!44038 () Bool)

(declare-fun Unit!434 () Unit!431)

(assert (=> b!44038 (= e!22814 Unit!434)))

(declare-fun lt!8014 () Unit!431)

(assert (=> b!44038 (= lt!8014 (increasing_plus_strict!0 (n!1245 (*!4 (n!1245 n1!48) n2!59)) n2!59))))

(declare-fun b!44037 () Bool)

(declare-fun Unit!435 () Unit!431)

(assert (=> b!44037 (= e!22814 Unit!435)))

(assert (= (and d!31196 c!9386) b!44037))

(assert (= (and d!31196 (not c!9386)) b!44038))

(assert (=> d!31196 m!47263))

(assert (=> d!31196 m!47265))

(assert (=> d!31196 m!47263))

(assert (=> d!31196 m!47265))

(declare-fun m!47275 () Bool)

(assert (=> d!31196 m!47275))

(assert (=> d!31196 m!47271))

(declare-fun m!47277 () Bool)

(assert (=> b!44038 m!47277))

(assert (=> b!44032 d!31196))

(declare-fun d!31198 () Bool)

(declare-fun c!9389 () Bool)

(assert (=> d!31198 (= c!9389 (is-Zero!104 (n!1245 n1!48)))))

(declare-fun e!22817 () Nat!120)

(assert (=> d!31198 (= (*!4 (n!1245 n1!48) n2!59) e!22817)))

(declare-fun b!44043 () Bool)

(assert (=> b!44043 (= e!22817 Zero!104)))

(declare-fun b!44044 () Bool)

(assert (=> b!44044 (= e!22817 (+!5 (*!4 (n!1245 (n!1245 n1!48)) n2!59) n2!59))))

(assert (= (and d!31198 c!9389) b!44043))

(assert (= (and d!31198 (not c!9389)) b!44044))

(declare-fun m!47279 () Bool)

(assert (=> b!44044 m!47279))

(assert (=> b!44044 m!47279))

(declare-fun m!47281 () Bool)

(assert (=> b!44044 m!47281))

(assert (=> b!44032 d!31198))

(declare-fun d!31200 () Bool)

(declare-fun c!9392 () Bool)

(assert (=> d!31200 (= c!9392 (is-Zero!104 (*!4 (n!1245 n1!48) n2!59)))))

(declare-fun e!22820 () Nat!120)

(assert (=> d!31200 (= (+!5 (*!4 (n!1245 n1!48) n2!59) n2!59) e!22820)))

(declare-fun b!44049 () Bool)

(assert (=> b!44049 (= e!22820 n2!59)))

(declare-fun b!44050 () Bool)

(assert (=> b!44050 (= e!22820 (Succ!101 (+!5 (n!1245 (*!4 (n!1245 n1!48) n2!59)) n2!59)))))

(assert (= (and d!31200 c!9392) b!44049))

(assert (= (and d!31200 (not c!9392)) b!44050))

(declare-fun m!47283 () Bool)

(assert (=> b!44050 m!47283))

(assert (=> b!44028 d!31200))

(assert (=> b!44028 d!31198))

(assert (=> b!44023 d!31198))

(declare-fun d!31202 () Bool)

(declare-fun res!20843 () Bool)

(declare-fun e!22823 () Bool)

(assert (=> d!31202 (=> (not res!20843) (not e!22823))))

(assert (=> d!31202 (= res!20843 (not (<!2 n1!48 Zero!104)))))

(assert (=> d!31202 (= (>!2 n1!48 Zero!104) e!22823)))

(declare-fun b!44053 () Bool)

(assert (=> b!44053 (= e!22823 (not (= n1!48 Zero!104)))))

(assert (= (and d!31202 res!20843) b!44053))

(declare-fun m!47285 () Bool)

(assert (=> d!31202 m!47285))

(assert (=> start!5796 d!31202))

(declare-fun d!31204 () Bool)

(declare-fun lt!8017 () Bool)

(declare-fun repr!0 (Nat!120) Int)

(assert (=> d!31204 (= lt!8017 (< (repr!0 n1!55) (repr!0 n2!66)))))

(declare-fun e!22826 () Bool)

(assert (=> d!31204 (= lt!8017 e!22826)))

(declare-fun c!9395 () Bool)

(assert (=> d!31204 (= c!9395 (and (is-Succ!101 n1!55) (is-Succ!101 n2!66)))))

(assert (=> d!31204 (= (<!2 n1!55 n2!66) lt!8017)))

(declare-fun b!44058 () Bool)

(assert (=> b!44058 (= e!22826 (<!2 (n!1245 n1!55) (n!1245 n2!66)))))

(declare-fun b!44059 () Bool)

(assert (=> b!44059 (= e!22826 (and (is-Zero!104 n1!55) (is-Succ!101 n2!66)))))

(assert (= (and d!31204 c!9395) b!44058))

(assert (= (and d!31204 (not c!9395)) b!44059))

(declare-fun m!47287 () Bool)

(assert (=> d!31204 m!47287))

(declare-fun m!47289 () Bool)

(assert (=> d!31204 m!47289))

(declare-fun m!47291 () Bool)

(assert (=> b!44058 m!47291))

(assert (=> b!44029 d!31204))

(declare-fun d!31206 () Bool)

(assert (=> d!31206 (<!2 (n!1245 n1!48) (+!5 (*!4 (n!1245 n1!48) n2!59) n2!59))))

(assert (=> d!31206 true))

(declare-fun x$47!50 () Unit!431)

(assert (=> d!31206 (= (transitive_<!0 (n!1245 n1!48) (*!4 (n!1245 n1!48) n2!59) (+!5 (*!4 (n!1245 n1!48) n2!59) n2!59)) x$47!50)))

(declare-fun bs!17737 () Bool)

(assert (= bs!17737 d!31206))

(assert (=> bs!17737 m!47265))

(declare-fun m!47293 () Bool)

(assert (=> bs!17737 m!47293))

(assert (=> b!44026 d!31206))

(assert (=> b!44026 d!31198))

(assert (=> b!44026 d!31200))

(declare-fun d!31208 () Bool)

(declare-fun <=!2 (Nat!120 Nat!120) Bool)

(assert (=> d!31208 (<=!2 (n!1245 n1!48) (*!4 (n!1245 n1!48) n2!59))))

(assert (=> d!31208 true))

(declare-fun x$66!38 () Unit!431)

(assert (=> d!31208 (= (increasing_times!0 (n!1245 n1!48) n2!59) x$66!38)))

(declare-fun bs!17738 () Bool)

(assert (= bs!17738 d!31208))

(assert (=> bs!17738 m!47263))

(assert (=> bs!17738 m!47263))

(declare-fun m!47295 () Bool)

(assert (=> bs!17738 m!47295))

(assert (=> b!44030 d!31208))

(declare-fun d!31210 () Bool)

(declare-fun res!20844 () Bool)

(declare-fun e!22827 () Bool)

(assert (=> d!31210 (=> (not res!20844) (not e!22827))))

(assert (=> d!31210 (= res!20844 (not (<!2 n2!59 Zero!104)))))

(assert (=> d!31210 (= (>!2 n2!59 Zero!104) e!22827)))

(declare-fun b!44060 () Bool)

(assert (=> b!44060 (= e!22827 (not (= n2!59 Zero!104)))))

(assert (= (and d!31210 res!20844) b!44060))

(declare-fun m!47297 () Bool)

(assert (=> d!31210 m!47297))

(assert (=> b!44027 d!31210))

(push 1)

(assert (not d!31210))

(assert (not d!31206))

(assert (not b!44038))

(assert (not d!31196))

(assert (not d!31208))

(assert (not b!44050))

(assert (not d!31204))

(assert (not b!44044))

(assert (not b!44058))

(assert (not d!31202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

