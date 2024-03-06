; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5812 () Bool)

(assert start!5812)

(declare-fun b!44083 () Bool)

(declare-fun res!20870 () Bool)

(declare-fun e!22833 () Bool)

(assert (=> b!44083 (=> (not res!20870) (not e!22833))))

(declare-datatypes () ((Nat!121 (Zero!105) (Succ!102 (n!1246 Nat!121)))))

(declare-fun n2!59 () Nat!121)

(declare-fun >!2 (Nat!121 Nat!121) Bool)

(assert (=> b!44083 (= res!20870 (>!2 n2!59 Zero!105))))

(declare-fun b!44084 () Bool)

(declare-datatypes () ((Unit!436 (Unit!437))))

(declare-fun e!22832 () Unit!436)

(declare-fun Unit!438 () Unit!436)

(assert (=> b!44084 (= e!22832 Unit!438)))

(declare-fun b!44085 () Bool)

(declare-fun n1!48 () Nat!121)

(declare-fun transitive_<!0 (Nat!121 Nat!121 Nat!121) Unit!436)

(declare-fun *!4 (Nat!121 Nat!121) Nat!121)

(declare-fun +!5 (Nat!121 Nat!121) Nat!121)

(assert (=> b!44085 (= e!22832 (transitive_<!0 (n!1246 n1!48) (*!4 (n!1246 n1!48) n2!59) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59)))))

(declare-fun b!44086 () Bool)

(declare-fun res!20864 () Bool)

(assert (=> b!44086 (=> (not res!20864) (not e!22833))))

(declare-fun tmp!144 () Unit!436)

(declare-fun increasing_plus_strict!0 (Nat!121 Nat!121) Unit!436)

(assert (=> b!44086 (= res!20864 (= tmp!144 (increasing_plus_strict!0 (*!4 (n!1246 n1!48) n2!59) n2!59)))))

(declare-fun b!44087 () Bool)

(declare-fun res!20869 () Bool)

(assert (=> b!44087 (=> (not res!20869) (not e!22833))))

(assert (=> b!44087 (= res!20869 (or (not (is-Succ!102 n1!48)) (not (is-Zero!105 (n!1246 n1!48)))))))

(declare-fun b!44088 () Bool)

(declare-fun res!20871 () Bool)

(assert (=> b!44088 (=> (not res!20871) (not e!22833))))

(declare-fun t!5130 () Unit!436)

(declare-fun res!17635 () Unit!436)

(declare-fun tmp!147 () Unit!436)

(assert (=> b!44088 (= res!20871 (and (= res!17635 t!5130) (= tmp!147 res!17635)))))

(declare-fun b!44089 () Bool)

(declare-fun res!20867 () Bool)

(assert (=> b!44089 (=> (not res!20867) (not e!22833))))

(declare-fun prop!327 () Bool)

(declare-fun <=!2 (Nat!121 Nat!121) Bool)

(assert (=> b!44089 (= res!20867 (= prop!327 (<=!2 n1!48 (*!4 n1!48 n2!59))))))

(declare-fun b!44090 () Bool)

(declare-fun res!20863 () Bool)

(assert (=> b!44090 (=> (not res!20863) (not e!22833))))

(assert (=> b!44090 (= res!20863 (= t!5130 e!22832))))

(declare-fun c!9398 () Bool)

(assert (=> b!44090 (= c!9398 (not (= (n!1246 n1!48) (*!4 (n!1246 n1!48) n2!59))))))

(declare-fun b!44091 () Bool)

(assert (=> b!44091 (= e!22833 (not prop!327))))

(declare-fun b!44092 () Bool)

(declare-fun res!20868 () Bool)

(assert (=> b!44092 (=> (not res!20868) (not e!22833))))

(declare-fun tmp!138 () Unit!436)

(declare-fun increasing_times!0 (Nat!121 Nat!121) Unit!436)

(assert (=> b!44092 (= res!20868 (= tmp!138 (increasing_times!0 (n!1246 n1!48) n2!59)))))

(declare-fun b!44093 () Bool)

(declare-fun res!20866 () Bool)

(assert (=> b!44093 (=> (not res!20866) (not e!22833))))

(declare-fun tmp!148 () Unit!436)

(declare-fun succ_<=!0 (Nat!121 Nat!121) Unit!436)

(assert (=> b!44093 (= res!20866 (= tmp!148 (succ_<=!0 (n!1246 n1!48) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59))))))

(declare-fun res!20865 () Bool)

(assert (=> start!5812 (=> (not res!20865) (not e!22833))))

(assert (=> start!5812 (= res!20865 (>!2 n1!48 Zero!105))))

(assert (=> start!5812 e!22833))

(assert (=> start!5812 true))

(assert (= (and start!5812 res!20865) b!44083))

(assert (= (and b!44083 res!20870) b!44087))

(assert (= (and b!44087 res!20869) b!44092))

(assert (= (and b!44092 res!20868) b!44086))

(assert (= (and b!44086 res!20864) b!44090))

(assert (= (and b!44090 c!9398) b!44085))

(assert (= (and b!44090 (not c!9398)) b!44084))

(assert (= (and b!44090 res!20863) b!44088))

(assert (= (and b!44088 res!20871) b!44093))

(assert (= (and b!44093 res!20866) b!44089))

(assert (= (and b!44089 res!20867) b!44091))

(declare-fun m!47299 () Bool)

(assert (=> b!44083 m!47299))

(declare-fun m!47301 () Bool)

(assert (=> b!44090 m!47301))

(assert (=> b!44093 m!47301))

(assert (=> b!44093 m!47301))

(declare-fun m!47303 () Bool)

(assert (=> b!44093 m!47303))

(assert (=> b!44093 m!47303))

(declare-fun m!47305 () Bool)

(assert (=> b!44093 m!47305))

(assert (=> b!44086 m!47301))

(assert (=> b!44086 m!47301))

(declare-fun m!47307 () Bool)

(assert (=> b!44086 m!47307))

(declare-fun m!47309 () Bool)

(assert (=> b!44092 m!47309))

(declare-fun m!47311 () Bool)

(assert (=> b!44089 m!47311))

(assert (=> b!44089 m!47311))

(declare-fun m!47313 () Bool)

(assert (=> b!44089 m!47313))

(assert (=> b!44085 m!47301))

(assert (=> b!44085 m!47301))

(assert (=> b!44085 m!47303))

(assert (=> b!44085 m!47301))

(assert (=> b!44085 m!47303))

(declare-fun m!47315 () Bool)

(assert (=> b!44085 m!47315))

(declare-fun m!47317 () Bool)

(assert (=> start!5812 m!47317))

(push 1)

(assert (not b!44092))

(assert (not start!5812))

(assert (not b!44083))

(assert (not b!44093))

(assert (not b!44089))

(assert (not b!44090))

(assert (not b!44086))

(assert (not b!44085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31212 () Bool)

(declare-fun res!20874 () Bool)

(declare-fun e!22836 () Bool)

(assert (=> d!31212 (=> (not res!20874) (not e!22836))))

(declare-fun <!2 (Nat!121 Nat!121) Bool)

(assert (=> d!31212 (= res!20874 (not (<!2 n1!48 Zero!105)))))

(assert (=> d!31212 (= (>!2 n1!48 Zero!105) e!22836)))

(declare-fun b!44096 () Bool)

(assert (=> b!44096 (= e!22836 (not (= n1!48 Zero!105)))))

(assert (= (and d!31212 res!20874) b!44096))

(declare-fun m!47319 () Bool)

(assert (=> d!31212 m!47319))

(assert (=> start!5812 d!31212))

(declare-fun d!31214 () Bool)

(assert (=> d!31214 (<=!2 (n!1246 n1!48) (*!4 (n!1246 n1!48) n2!59))))

(assert (=> d!31214 true))

(declare-fun x$66!41 () Unit!436)

(assert (=> d!31214 (= (increasing_times!0 (n!1246 n1!48) n2!59) x$66!41)))

(declare-fun bs!17740 () Bool)

(assert (= bs!17740 d!31214))

(assert (=> bs!17740 m!47301))

(assert (=> bs!17740 m!47301))

(declare-fun m!47321 () Bool)

(assert (=> bs!17740 m!47321))

(assert (=> b!44092 d!31214))

(declare-fun d!31216 () Bool)

(declare-fun c!9401 () Bool)

(assert (=> d!31216 (= c!9401 (is-Zero!105 (n!1246 n1!48)))))

(declare-fun e!22839 () Nat!121)

(assert (=> d!31216 (= (*!4 (n!1246 n1!48) n2!59) e!22839)))

(declare-fun b!44101 () Bool)

(assert (=> b!44101 (= e!22839 Zero!105)))

(declare-fun b!44102 () Bool)

(assert (=> b!44102 (= e!22839 (+!5 (*!4 (n!1246 (n!1246 n1!48)) n2!59) n2!59))))

(assert (= (and d!31216 c!9401) b!44101))

(assert (= (and d!31216 (not c!9401)) b!44102))

(declare-fun m!47323 () Bool)

(assert (=> b!44102 m!47323))

(assert (=> b!44102 m!47323))

(declare-fun m!47325 () Bool)

(assert (=> b!44102 m!47325))

(assert (=> b!44090 d!31216))

(declare-fun d!31218 () Bool)

(declare-fun res!20875 () Bool)

(declare-fun e!22840 () Bool)

(assert (=> d!31218 (=> (not res!20875) (not e!22840))))

(assert (=> d!31218 (= res!20875 (not (<!2 n2!59 Zero!105)))))

(assert (=> d!31218 (= (>!2 n2!59 Zero!105) e!22840)))

(declare-fun b!44103 () Bool)

(assert (=> b!44103 (= e!22840 (not (= n2!59 Zero!105)))))

(assert (= (and d!31218 res!20875) b!44103))

(declare-fun m!47327 () Bool)

(assert (=> d!31218 m!47327))

(assert (=> b!44083 d!31218))

(declare-fun d!31220 () Bool)

(assert (=> d!31220 (<!2 (*!4 (n!1246 n1!48) n2!59) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59))))

(declare-fun lt!8022 () Unit!436)

(declare-fun e!22843 () Unit!436)

(assert (=> d!31220 (= lt!8022 e!22843)))

(declare-fun c!9404 () Bool)

(assert (=> d!31220 (= c!9404 (is-Zero!105 (*!4 (n!1246 n1!48) n2!59)))))

(assert (=> d!31220 (>!2 n2!59 Zero!105)))

(assert (=> d!31220 (= (increasing_plus_strict!0 (*!4 (n!1246 n1!48) n2!59) n2!59) lt!8022)))

(declare-fun b!44109 () Bool)

(declare-fun Unit!439 () Unit!436)

(assert (=> b!44109 (= e!22843 Unit!439)))

(declare-fun lt!8023 () Unit!436)

(assert (=> b!44109 (= lt!8023 (increasing_plus_strict!0 (n!1246 (*!4 (n!1246 n1!48) n2!59)) n2!59))))

(declare-fun b!44108 () Bool)

(declare-fun Unit!440 () Unit!436)

(assert (=> b!44108 (= e!22843 Unit!440)))

(assert (= (and d!31220 c!9404) b!44108))

(assert (= (and d!31220 (not c!9404)) b!44109))

(assert (=> d!31220 m!47301))

(assert (=> d!31220 m!47303))

(assert (=> d!31220 m!47301))

(assert (=> d!31220 m!47303))

(declare-fun m!47329 () Bool)

(assert (=> d!31220 m!47329))

(assert (=> d!31220 m!47299))

(declare-fun m!47331 () Bool)

(assert (=> b!44109 m!47331))

(assert (=> b!44086 d!31220))

(assert (=> b!44086 d!31216))

(declare-fun d!31222 () Bool)

(declare-fun res!20878 () Bool)

(declare-fun e!22846 () Bool)

(assert (=> d!31222 (=> res!20878 e!22846)))

(assert (=> d!31222 (= res!20878 (<!2 n1!48 (*!4 n1!48 n2!59)))))

(assert (=> d!31222 (= (<=!2 n1!48 (*!4 n1!48 n2!59)) e!22846)))

(declare-fun b!44112 () Bool)

(assert (=> b!44112 (= e!22846 (= n1!48 (*!4 n1!48 n2!59)))))

(assert (= (and d!31222 (not res!20878)) b!44112))

(assert (=> d!31222 m!47311))

(declare-fun m!47333 () Bool)

(assert (=> d!31222 m!47333))

(assert (=> b!44089 d!31222))

(declare-fun d!31224 () Bool)

(declare-fun c!9405 () Bool)

(assert (=> d!31224 (= c!9405 (is-Zero!105 n1!48))))

(declare-fun e!22847 () Nat!121)

(assert (=> d!31224 (= (*!4 n1!48 n2!59) e!22847)))

(declare-fun b!44113 () Bool)

(assert (=> b!44113 (= e!22847 Zero!105)))

(declare-fun b!44114 () Bool)

(assert (=> b!44114 (= e!22847 (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59))))

(assert (= (and d!31224 c!9405) b!44113))

(assert (= (and d!31224 (not c!9405)) b!44114))

(assert (=> b!44114 m!47301))

(assert (=> b!44114 m!47301))

(assert (=> b!44114 m!47303))

(assert (=> b!44089 d!31224))

(declare-fun d!31226 () Bool)

(assert (=> d!31226 (<!2 (n!1246 n1!48) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59))))

(assert (=> d!31226 true))

(declare-fun x$47!53 () Unit!436)

(assert (=> d!31226 (= (transitive_<!0 (n!1246 n1!48) (*!4 (n!1246 n1!48) n2!59) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59)) x$47!53)))

(declare-fun bs!17741 () Bool)

(assert (= bs!17741 d!31226))

(assert (=> bs!17741 m!47303))

(declare-fun m!47335 () Bool)

(assert (=> bs!17741 m!47335))

(assert (=> b!44085 d!31226))

(assert (=> b!44085 d!31216))

(declare-fun d!31228 () Bool)

(declare-fun c!9408 () Bool)

(assert (=> d!31228 (= c!9408 (is-Zero!105 (*!4 (n!1246 n1!48) n2!59)))))

(declare-fun e!22850 () Nat!121)

(assert (=> d!31228 (= (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59) e!22850)))

(declare-fun b!44119 () Bool)

(assert (=> b!44119 (= e!22850 n2!59)))

(declare-fun b!44120 () Bool)

(assert (=> b!44120 (= e!22850 (Succ!102 (+!5 (n!1246 (*!4 (n!1246 n1!48) n2!59)) n2!59)))))

(assert (= (and d!31228 c!9408) b!44119))

(assert (= (and d!31228 (not c!9408)) b!44120))

(declare-fun m!47337 () Bool)

(assert (=> b!44120 m!47337))

(assert (=> b!44085 d!31228))

(declare-fun d!31230 () Bool)

(assert (=> d!31230 (<=!2 (Succ!102 (n!1246 n1!48)) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59))))

(assert (=> d!31230 true))

(declare-fun x$44!55 () Unit!436)

(assert (=> d!31230 (= (succ_<=!0 (n!1246 n1!48) (+!5 (*!4 (n!1246 n1!48) n2!59) n2!59)) x$44!55)))

(declare-fun bs!17742 () Bool)

(assert (= bs!17742 d!31230))

(assert (=> bs!17742 m!47303))

(declare-fun m!47339 () Bool)

(assert (=> bs!17742 m!47339))

(assert (=> b!44093 d!31230))

(assert (=> b!44093 d!31228))

(assert (=> b!44093 d!31216))

(push 1)

(assert (not d!31218))

(assert (not b!44120))

(assert (not b!44109))

(assert (not d!31230))

(assert (not d!31214))

(assert (not d!31226))

(assert (not d!31222))

(assert (not b!44102))

(assert (not b!44114))

(assert (not d!31212))

(assert (not d!31220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

