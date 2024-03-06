; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5778 () Bool)

(assert start!5778)

(declare-fun b!43932 () Bool)

(declare-fun res!20802 () Bool)

(declare-fun e!22770 () Bool)

(assert (=> b!43932 (=> (not res!20802) (not e!22770))))

(declare-datatypes () ((Nat!119 (Zero!103) (Succ!100 (n!1244 Nat!119)))))

(declare-fun n2!59 () Nat!119)

(declare-fun n1!48 () Nat!119)

(declare-fun n2!64 () Nat!119)

(declare-fun *!4 (Nat!119 Nat!119) Nat!119)

(assert (=> b!43932 (= res!20802 (= n2!64 (*!4 (n!1244 n1!48) n2!59)))))

(declare-fun b!43933 () Bool)

(declare-fun res!20805 () Bool)

(assert (=> b!43933 (=> (not res!20805) (not e!22770))))

(declare-datatypes () ((Unit!425 (Unit!426))))

(declare-fun tmp!138 () Unit!425)

(declare-fun increasing_times!0 (Nat!119 Nat!119) Unit!425)

(assert (=> b!43933 (= res!20805 (= tmp!138 (increasing_times!0 (n!1244 n1!48) n2!59)))))

(declare-fun b!43934 () Bool)

(declare-fun e!22771 () Bool)

(assert (=> b!43934 (= e!22770 e!22771)))

(declare-fun res!20808 () Bool)

(assert (=> b!43934 (=> res!20808 e!22771)))

(declare-fun n1!53 () Nat!119)

(declare-fun <!2 (Nat!119 Nat!119) Bool)

(assert (=> b!43934 (= res!20808 (not (<!2 n1!53 n2!64)))))

(declare-fun b!43935 () Bool)

(declare-fun n3!15 () Nat!119)

(assert (=> b!43935 (= e!22771 (not (<!2 n2!64 n3!15)))))

(declare-fun b!43936 () Bool)

(declare-fun res!20804 () Bool)

(assert (=> b!43936 (=> (not res!20804) (not e!22770))))

(declare-fun +!5 (Nat!119 Nat!119) Nat!119)

(assert (=> b!43936 (= res!20804 (= n3!15 (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59)))))

(declare-fun b!43937 () Bool)

(declare-fun res!20801 () Bool)

(assert (=> b!43937 (=> (not res!20801) (not e!22770))))

(declare-fun >!2 (Nat!119 Nat!119) Bool)

(assert (=> b!43937 (= res!20801 (>!2 n2!59 Zero!103))))

(declare-fun res!20803 () Bool)

(assert (=> start!5778 (=> (not res!20803) (not e!22770))))

(assert (=> start!5778 (= res!20803 (>!2 n1!48 Zero!103))))

(assert (=> start!5778 e!22770))

(assert (=> start!5778 true))

(declare-fun b!43938 () Bool)

(declare-fun res!20807 () Bool)

(assert (=> b!43938 (=> (not res!20807) (not e!22770))))

(assert (=> b!43938 (= res!20807 (or (not (is-Succ!100 n1!48)) (not (is-Zero!103 (n!1244 n1!48)))))))

(declare-fun b!43939 () Bool)

(declare-fun res!20809 () Bool)

(assert (=> b!43939 (=> (not res!20809) (not e!22770))))

(assert (=> b!43939 (= res!20809 (= n1!53 (n!1244 n1!48)))))

(declare-fun b!43940 () Bool)

(declare-fun res!20800 () Bool)

(assert (=> b!43940 (=> (not res!20800) (not e!22770))))

(assert (=> b!43940 (= res!20800 (not (= (n!1244 n1!48) (*!4 (n!1244 n1!48) n2!59))))))

(declare-fun b!43941 () Bool)

(declare-fun res!20806 () Bool)

(assert (=> b!43941 (=> (not res!20806) (not e!22770))))

(declare-fun tmp!144 () Unit!425)

(declare-fun increasing_plus_strict!0 (Nat!119 Nat!119) Unit!425)

(assert (=> b!43941 (= res!20806 (= tmp!144 (increasing_plus_strict!0 (*!4 (n!1244 n1!48) n2!59) n2!59)))))

(assert (= (and start!5778 res!20803) b!43937))

(assert (= (and b!43937 res!20801) b!43938))

(assert (= (and b!43938 res!20807) b!43933))

(assert (= (and b!43933 res!20805) b!43941))

(assert (= (and b!43941 res!20806) b!43940))

(assert (= (and b!43940 res!20800) b!43939))

(assert (= (and b!43939 res!20809) b!43932))

(assert (= (and b!43932 res!20802) b!43936))

(assert (= (and b!43936 res!20804) b!43934))

(assert (= (and b!43934 (not res!20808)) b!43935))

(declare-fun m!47177 () Bool)

(assert (=> b!43940 m!47177))

(assert (=> b!43936 m!47177))

(assert (=> b!43936 m!47177))

(declare-fun m!47179 () Bool)

(assert (=> b!43936 m!47179))

(assert (=> b!43932 m!47177))

(declare-fun m!47181 () Bool)

(assert (=> b!43935 m!47181))

(assert (=> b!43941 m!47177))

(assert (=> b!43941 m!47177))

(declare-fun m!47183 () Bool)

(assert (=> b!43941 m!47183))

(declare-fun m!47185 () Bool)

(assert (=> b!43933 m!47185))

(declare-fun m!47187 () Bool)

(assert (=> start!5778 m!47187))

(declare-fun m!47189 () Bool)

(assert (=> b!43934 m!47189))

(declare-fun m!47191 () Bool)

(assert (=> b!43937 m!47191))

(push 1)

(assert (not start!5778))

(assert (not b!43932))

(assert (not b!43940))

(assert (not b!43936))

(assert (not b!43933))

(assert (not b!43935))

(assert (not b!43941))

(assert (not b!43934))

(assert (not b!43937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31154 () Bool)

(declare-fun c!9356 () Bool)

(assert (=> d!31154 (= c!9356 (is-Zero!103 (*!4 (n!1244 n1!48) n2!59)))))

(declare-fun e!22774 () Nat!119)

(assert (=> d!31154 (= (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59) e!22774)))

(declare-fun b!43946 () Bool)

(assert (=> b!43946 (= e!22774 n2!59)))

(declare-fun b!43947 () Bool)

(assert (=> b!43947 (= e!22774 (Succ!100 (+!5 (n!1244 (*!4 (n!1244 n1!48) n2!59)) n2!59)))))

(assert (= (and d!31154 c!9356) b!43946))

(assert (= (and d!31154 (not c!9356)) b!43947))

(declare-fun m!47193 () Bool)

(assert (=> b!43947 m!47193))

(assert (=> b!43936 d!31154))

(declare-fun d!31156 () Bool)

(declare-fun c!9359 () Bool)

(assert (=> d!31156 (= c!9359 (is-Zero!103 (n!1244 n1!48)))))

(declare-fun e!22777 () Nat!119)

(assert (=> d!31156 (= (*!4 (n!1244 n1!48) n2!59) e!22777)))

(declare-fun b!43952 () Bool)

(assert (=> b!43952 (= e!22777 Zero!103)))

(declare-fun b!43953 () Bool)

(assert (=> b!43953 (= e!22777 (+!5 (*!4 (n!1244 (n!1244 n1!48)) n2!59) n2!59))))

(assert (= (and d!31156 c!9359) b!43952))

(assert (= (and d!31156 (not c!9359)) b!43953))

(declare-fun m!47195 () Bool)

(assert (=> b!43953 m!47195))

(assert (=> b!43953 m!47195))

(declare-fun m!47197 () Bool)

(assert (=> b!43953 m!47197))

(assert (=> b!43936 d!31156))

(declare-fun d!31158 () Bool)

(declare-fun <=!2 (Nat!119 Nat!119) Bool)

(assert (=> d!31158 (<=!2 (n!1244 n1!48) (*!4 (n!1244 n1!48) n2!59))))

(assert (=> d!31158 true))

(declare-fun x$66!35 () Unit!425)

(assert (=> d!31158 (= (increasing_times!0 (n!1244 n1!48) n2!59) x$66!35)))

(declare-fun bs!17735 () Bool)

(assert (= bs!17735 d!31158))

(assert (=> bs!17735 m!47177))

(assert (=> bs!17735 m!47177))

(declare-fun m!47199 () Bool)

(assert (=> bs!17735 m!47199))

(assert (=> b!43933 d!31158))

(declare-fun d!31160 () Bool)

(declare-fun lt!7989 () Bool)

(declare-fun repr!0 (Nat!119) Int)

(assert (=> d!31160 (= lt!7989 (< (repr!0 n2!64) (repr!0 n3!15)))))

(declare-fun e!22780 () Bool)

(assert (=> d!31160 (= lt!7989 e!22780)))

(declare-fun c!9362 () Bool)

(assert (=> d!31160 (= c!9362 (and (is-Succ!100 n2!64) (is-Succ!100 n3!15)))))

(assert (=> d!31160 (= (<!2 n2!64 n3!15) lt!7989)))

(declare-fun b!43958 () Bool)

(assert (=> b!43958 (= e!22780 (<!2 (n!1244 n2!64) (n!1244 n3!15)))))

(declare-fun b!43959 () Bool)

(assert (=> b!43959 (= e!22780 (and (is-Zero!103 n2!64) (is-Succ!100 n3!15)))))

(assert (= (and d!31160 c!9362) b!43958))

(assert (= (and d!31160 (not c!9362)) b!43959))

(declare-fun m!47201 () Bool)

(assert (=> d!31160 m!47201))

(declare-fun m!47203 () Bool)

(assert (=> d!31160 m!47203))

(declare-fun m!47205 () Bool)

(assert (=> b!43958 m!47205))

(assert (=> b!43935 d!31160))

(declare-fun d!31162 () Bool)

(declare-fun res!20812 () Bool)

(declare-fun e!22783 () Bool)

(assert (=> d!31162 (=> (not res!20812) (not e!22783))))

(assert (=> d!31162 (= res!20812 (not (<!2 n1!48 Zero!103)))))

(assert (=> d!31162 (= (>!2 n1!48 Zero!103) e!22783)))

(declare-fun b!43962 () Bool)

(assert (=> b!43962 (= e!22783 (not (= n1!48 Zero!103)))))

(assert (= (and d!31162 res!20812) b!43962))

(declare-fun m!47207 () Bool)

(assert (=> d!31162 m!47207))

(assert (=> start!5778 d!31162))

(assert (=> b!43932 d!31156))

(declare-fun d!31164 () Bool)

(assert (=> d!31164 (<!2 (*!4 (n!1244 n1!48) n2!59) (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59))))

(declare-fun lt!7994 () Unit!425)

(declare-fun e!22786 () Unit!425)

(assert (=> d!31164 (= lt!7994 e!22786)))

(declare-fun c!9365 () Bool)

(assert (=> d!31164 (= c!9365 (is-Zero!103 (*!4 (n!1244 n1!48) n2!59)))))

(assert (=> d!31164 (>!2 n2!59 Zero!103)))

(assert (=> d!31164 (= (increasing_plus_strict!0 (*!4 (n!1244 n1!48) n2!59) n2!59) lt!7994)))

(declare-fun b!43968 () Bool)

(declare-fun Unit!427 () Unit!425)

(assert (=> b!43968 (= e!22786 Unit!427)))

(declare-fun lt!7995 () Unit!425)

(assert (=> b!43968 (= lt!7995 (increasing_plus_strict!0 (n!1244 (*!4 (n!1244 n1!48) n2!59)) n2!59))))

(declare-fun b!43967 () Bool)

(declare-fun Unit!428 () Unit!425)

(assert (=> b!43967 (= e!22786 Unit!428)))

(assert (= (and d!31164 c!9365) b!43967))

(assert (= (and d!31164 (not c!9365)) b!43968))

(assert (=> d!31164 m!47177))

(assert (=> d!31164 m!47179))

(assert (=> d!31164 m!47177))

(assert (=> d!31164 m!47179))

(declare-fun m!47209 () Bool)

(assert (=> d!31164 m!47209))

(assert (=> d!31164 m!47191))

(declare-fun m!47211 () Bool)

(assert (=> b!43968 m!47211))

(assert (=> b!43941 d!31164))

(assert (=> b!43941 d!31156))

(declare-fun d!31166 () Bool)

(declare-fun lt!7996 () Bool)

(assert (=> d!31166 (= lt!7996 (< (repr!0 n1!53) (repr!0 n2!64)))))

(declare-fun e!22787 () Bool)

(assert (=> d!31166 (= lt!7996 e!22787)))

(declare-fun c!9366 () Bool)

(assert (=> d!31166 (= c!9366 (and (is-Succ!100 n1!53) (is-Succ!100 n2!64)))))

(assert (=> d!31166 (= (<!2 n1!53 n2!64) lt!7996)))

(declare-fun b!43969 () Bool)

(assert (=> b!43969 (= e!22787 (<!2 (n!1244 n1!53) (n!1244 n2!64)))))

(declare-fun b!43970 () Bool)

(assert (=> b!43970 (= e!22787 (and (is-Zero!103 n1!53) (is-Succ!100 n2!64)))))

(assert (= (and d!31166 c!9366) b!43969))

(assert (= (and d!31166 (not c!9366)) b!43970))

(declare-fun m!47213 () Bool)

(assert (=> d!31166 m!47213))

(assert (=> d!31166 m!47201))

(declare-fun m!47215 () Bool)

(assert (=> b!43969 m!47215))

(assert (=> b!43934 d!31166))

(declare-fun d!31168 () Bool)

(declare-fun res!20813 () Bool)

(declare-fun e!22788 () Bool)

(assert (=> d!31168 (=> (not res!20813) (not e!22788))))

(assert (=> d!31168 (= res!20813 (not (<!2 n2!59 Zero!103)))))

(assert (=> d!31168 (= (>!2 n2!59 Zero!103) e!22788)))

(declare-fun b!43971 () Bool)

(assert (=> b!43971 (= e!22788 (not (= n2!59 Zero!103)))))

(assert (= (and d!31168 res!20813) b!43971))

(declare-fun m!47217 () Bool)

(assert (=> d!31168 m!47217))

(assert (=> b!43937 d!31168))

(assert (=> b!43940 d!31156))

(push 1)

(assert (not b!43947))

(assert (not b!43968))

(assert (not b!43953))

(assert (not b!43958))

(assert (not d!31162))

(assert (not d!31164))

(assert (not d!31160))

(assert (not d!31158))

(assert (not d!31166))

(assert (not b!43969))

(assert (not d!31168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31170 () Bool)

(declare-fun lt!7997 () Bool)

(assert (=> d!31170 (= lt!7997 (< (repr!0 (n!1244 n1!53)) (repr!0 (n!1244 n2!64))))))

(declare-fun e!22789 () Bool)

(assert (=> d!31170 (= lt!7997 e!22789)))

(declare-fun c!9367 () Bool)

(assert (=> d!31170 (= c!9367 (and (is-Succ!100 (n!1244 n1!53)) (is-Succ!100 (n!1244 n2!64))))))

(assert (=> d!31170 (= (<!2 (n!1244 n1!53) (n!1244 n2!64)) lt!7997)))

(declare-fun b!43972 () Bool)

(assert (=> b!43972 (= e!22789 (<!2 (n!1244 (n!1244 n1!53)) (n!1244 (n!1244 n2!64))))))

(declare-fun b!43973 () Bool)

(assert (=> b!43973 (= e!22789 (and (is-Zero!103 (n!1244 n1!53)) (is-Succ!100 (n!1244 n2!64))))))

(assert (= (and d!31170 c!9367) b!43972))

(assert (= (and d!31170 (not c!9367)) b!43973))

(declare-fun m!47219 () Bool)

(assert (=> d!31170 m!47219))

(declare-fun m!47221 () Bool)

(assert (=> d!31170 m!47221))

(declare-fun m!47223 () Bool)

(assert (=> b!43972 m!47223))

(assert (=> b!43969 d!31170))

(declare-fun d!31172 () Bool)

(declare-fun lt!7998 () Bool)

(assert (=> d!31172 (= lt!7998 (< (repr!0 n2!59) (repr!0 Zero!103)))))

(declare-fun e!22790 () Bool)

(assert (=> d!31172 (= lt!7998 e!22790)))

(declare-fun c!9368 () Bool)

(assert (=> d!31172 (= c!9368 (and (is-Succ!100 n2!59) (is-Succ!100 Zero!103)))))

(assert (=> d!31172 (= (<!2 n2!59 Zero!103) lt!7998)))

(declare-fun b!43974 () Bool)

(assert (=> b!43974 (= e!22790 (<!2 (n!1244 n2!59) (n!1244 Zero!103)))))

(declare-fun b!43975 () Bool)

(assert (=> b!43975 (= e!22790 (and (is-Zero!103 n2!59) (is-Succ!100 Zero!103)))))

(assert (= (and d!31172 c!9368) b!43974))

(assert (= (and d!31172 (not c!9368)) b!43975))

(declare-fun m!47225 () Bool)

(assert (=> d!31172 m!47225))

(declare-fun m!47227 () Bool)

(assert (=> d!31172 m!47227))

(declare-fun m!47229 () Bool)

(assert (=> b!43974 m!47229))

(assert (=> d!31168 d!31172))

(declare-fun d!31174 () Bool)

(declare-fun c!9369 () Bool)

(assert (=> d!31174 (= c!9369 (is-Zero!103 (*!4 (n!1244 (n!1244 n1!48)) n2!59)))))

(declare-fun e!22791 () Nat!119)

(assert (=> d!31174 (= (+!5 (*!4 (n!1244 (n!1244 n1!48)) n2!59) n2!59) e!22791)))

(declare-fun b!43976 () Bool)

(assert (=> b!43976 (= e!22791 n2!59)))

(declare-fun b!43977 () Bool)

(assert (=> b!43977 (= e!22791 (Succ!100 (+!5 (n!1244 (*!4 (n!1244 (n!1244 n1!48)) n2!59)) n2!59)))))

(assert (= (and d!31174 c!9369) b!43976))

(assert (= (and d!31174 (not c!9369)) b!43977))

(declare-fun m!47231 () Bool)

(assert (=> b!43977 m!47231))

(assert (=> b!43953 d!31174))

(declare-fun d!31176 () Bool)

(declare-fun c!9370 () Bool)

(assert (=> d!31176 (= c!9370 (is-Zero!103 (n!1244 (n!1244 n1!48))))))

(declare-fun e!22792 () Nat!119)

(assert (=> d!31176 (= (*!4 (n!1244 (n!1244 n1!48)) n2!59) e!22792)))

(declare-fun b!43978 () Bool)

(assert (=> b!43978 (= e!22792 Zero!103)))

(declare-fun b!43979 () Bool)

(assert (=> b!43979 (= e!22792 (+!5 (*!4 (n!1244 (n!1244 (n!1244 n1!48))) n2!59) n2!59))))

(assert (= (and d!31176 c!9370) b!43978))

(assert (= (and d!31176 (not c!9370)) b!43979))

(declare-fun m!47233 () Bool)

(assert (=> b!43979 m!47233))

(assert (=> b!43979 m!47233))

(declare-fun m!47235 () Bool)

(assert (=> b!43979 m!47235))

(assert (=> b!43953 d!31176))

(declare-fun d!31178 () Bool)

(declare-fun lt!8001 () Int)

(assert (=> d!31178 (>= lt!8001 0)))

(declare-fun e!22795 () Int)

(assert (=> d!31178 (= lt!8001 e!22795)))

(declare-fun c!9373 () Bool)

(assert (=> d!31178 (= c!9373 (is-Zero!103 n2!64))))

(assert (=> d!31178 (= (repr!0 n2!64) lt!8001)))

(declare-fun b!43984 () Bool)

(assert (=> b!43984 (= e!22795 0)))

(declare-fun b!43985 () Bool)

(assert (=> b!43985 (= e!22795 (+ (repr!0 (n!1244 n2!64)) 1))))

(assert (= (and d!31178 c!9373) b!43984))

(assert (= (and d!31178 (not c!9373)) b!43985))

(assert (=> b!43985 m!47221))

(assert (=> d!31160 d!31178))

(declare-fun d!31180 () Bool)

(declare-fun lt!8002 () Int)

(assert (=> d!31180 (>= lt!8002 0)))

(declare-fun e!22796 () Int)

(assert (=> d!31180 (= lt!8002 e!22796)))

(declare-fun c!9374 () Bool)

(assert (=> d!31180 (= c!9374 (is-Zero!103 n3!15))))

(assert (=> d!31180 (= (repr!0 n3!15) lt!8002)))

(declare-fun b!43986 () Bool)

(assert (=> b!43986 (= e!22796 0)))

(declare-fun b!43987 () Bool)

(assert (=> b!43987 (= e!22796 (+ (repr!0 (n!1244 n3!15)) 1))))

(assert (= (and d!31180 c!9374) b!43986))

(assert (= (and d!31180 (not c!9374)) b!43987))

(declare-fun m!47237 () Bool)

(assert (=> b!43987 m!47237))

(assert (=> d!31160 d!31180))

(declare-fun d!31182 () Bool)

(declare-fun lt!8003 () Bool)

(assert (=> d!31182 (= lt!8003 (< (repr!0 (*!4 (n!1244 n1!48) n2!59)) (repr!0 (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59))))))

(declare-fun e!22797 () Bool)

(assert (=> d!31182 (= lt!8003 e!22797)))

(declare-fun c!9375 () Bool)

(assert (=> d!31182 (= c!9375 (and (is-Succ!100 (*!4 (n!1244 n1!48) n2!59)) (is-Succ!100 (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59))))))

(assert (=> d!31182 (= (<!2 (*!4 (n!1244 n1!48) n2!59) (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59)) lt!8003)))

(declare-fun b!43988 () Bool)

(assert (=> b!43988 (= e!22797 (<!2 (n!1244 (*!4 (n!1244 n1!48) n2!59)) (n!1244 (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59))))))

(declare-fun b!43989 () Bool)

(assert (=> b!43989 (= e!22797 (and (is-Zero!103 (*!4 (n!1244 n1!48) n2!59)) (is-Succ!100 (+!5 (*!4 (n!1244 n1!48) n2!59) n2!59))))))

(assert (= (and d!31182 c!9375) b!43988))

(assert (= (and d!31182 (not c!9375)) b!43989))

(assert (=> d!31182 m!47177))

(declare-fun m!47239 () Bool)

(assert (=> d!31182 m!47239))

(assert (=> d!31182 m!47179))

(declare-fun m!47241 () Bool)

(assert (=> d!31182 m!47241))

(declare-fun m!47243 () Bool)

(assert (=> b!43988 m!47243))

(assert (=> d!31164 d!31182))

(assert (=> d!31164 d!31154))

(assert (=> d!31164 d!31168))

(declare-fun d!31184 () Bool)

(declare-fun lt!8004 () Bool)

(assert (=> d!31184 (= lt!8004 (< (repr!0 n1!48) (repr!0 Zero!103)))))

(declare-fun e!22798 () Bool)

(assert (=> d!31184 (= lt!8004 e!22798)))

(declare-fun c!9376 () Bool)

(assert (=> d!31184 (= c!9376 (and (is-Succ!100 n1!48) (is-Succ!100 Zero!103)))))

(assert (=> d!31184 (= (<!2 n1!48 Zero!103) lt!8004)))

(declare-fun b!43990 () Bool)

(assert (=> b!43990 (= e!22798 (<!2 (n!1244 n1!48) (n!1244 Zero!103)))))

(declare-fun b!43991 () Bool)

(assert (=> b!43991 (= e!22798 (and (is-Zero!103 n1!48) (is-Succ!100 Zero!103)))))

(assert (= (and d!31184 c!9376) b!43990))

(assert (= (and d!31184 (not c!9376)) b!43991))

(declare-fun m!47245 () Bool)

(assert (=> d!31184 m!47245))

(assert (=> d!31184 m!47227))

(declare-fun m!47247 () Bool)

(assert (=> b!43990 m!47247))

(assert (=> d!31162 d!31184))

(declare-fun d!31186 () Bool)

(declare-fun c!9377 () Bool)

(assert (=> d!31186 (= c!9377 (is-Zero!103 (n!1244 (*!4 (n!1244 n1!48) n2!59))))))

(declare-fun e!22799 () Nat!119)

(assert (=> d!31186 (= (+!5 (n!1244 (*!4 (n!1244 n1!48) n2!59)) n2!59) e!22799)))

(declare-fun b!43992 () Bool)

(assert (=> b!43992 (= e!22799 n2!59)))

(declare-fun b!43993 () Bool)

(assert (=> b!43993 (= e!22799 (Succ!100 (+!5 (n!1244 (n!1244 (*!4 (n!1244 n1!48) n2!59))) n2!59)))))

(assert (= (and d!31186 c!9377) b!43992))

(assert (= (and d!31186 (not c!9377)) b!43993))

(declare-fun m!47249 () Bool)

(assert (=> b!43993 m!47249))

(assert (=> b!43947 d!31186))

(declare-fun d!31188 () Bool)

(assert (=> d!31188 (<!2 (n!1244 (*!4 (n!1244 n1!48) n2!59)) (+!5 (n!1244 (*!4 (n!1244 n1!48) n2!59)) n2!59))))

(declare-fun lt!8005 () Unit!425)

(declare-fun e!22800 () Unit!425)

(assert (=> d!31188 (= lt!8005 e!22800)))

(declare-fun c!9378 () Bool)

(assert (=> d!31188 (= c!9378 (is-Zero!103 (n!1244 (*!4 (n!1244 n1!48) n2!59))))))

(assert (=> d!31188 (>!2 n2!59 Zero!103)))

(assert (=> d!31188 (= (increasing_plus_strict!0 (n!1244 (*!4 (n!1244 n1!48) n2!59)) n2!59) lt!8005)))

(declare-fun b!43995 () Bool)

(declare-fun Unit!429 () Unit!425)

(assert (=> b!43995 (= e!22800 Unit!429)))

(declare-fun lt!8006 () Unit!425)

(assert (=> b!43995 (= lt!8006 (increasing_plus_strict!0 (n!1244 (n!1244 (*!4 (n!1244 n1!48) n2!59))) n2!59))))

(declare-fun b!43994 () Bool)

(declare-fun Unit!430 () Unit!425)

(assert (=> b!43994 (= e!22800 Unit!430)))

(assert (= (and d!31188 c!9378) b!43994))

(assert (= (and d!31188 (not c!9378)) b!43995))

(assert (=> d!31188 m!47193))

(assert (=> d!31188 m!47193))

(declare-fun m!47251 () Bool)

(assert (=> d!31188 m!47251))

(assert (=> d!31188 m!47191))

(declare-fun m!47253 () Bool)

(assert (=> b!43995 m!47253))

(assert (=> b!43968 d!31188))

(declare-fun d!31190 () Bool)

(declare-fun res!20816 () Bool)

(declare-fun e!22803 () Bool)

(assert (=> d!31190 (=> res!20816 e!22803)))

(assert (=> d!31190 (= res!20816 (<!2 (n!1244 n1!48) (*!4 (n!1244 n1!48) n2!59)))))

(assert (=> d!31190 (= (<=!2 (n!1244 n1!48) (*!4 (n!1244 n1!48) n2!59)) e!22803)))

(declare-fun b!43998 () Bool)

(assert (=> b!43998 (= e!22803 (= (n!1244 n1!48) (*!4 (n!1244 n1!48) n2!59)))))

(assert (= (and d!31190 (not res!20816)) b!43998))

(assert (=> d!31190 m!47177))

(declare-fun m!47255 () Bool)

(assert (=> d!31190 m!47255))

(assert (=> d!31158 d!31190))

(assert (=> d!31158 d!31156))

(declare-fun d!31192 () Bool)

(declare-fun lt!8007 () Int)

(assert (=> d!31192 (>= lt!8007 0)))

(declare-fun e!22804 () Int)

(assert (=> d!31192 (= lt!8007 e!22804)))

(declare-fun c!9379 () Bool)

(assert (=> d!31192 (= c!9379 (is-Zero!103 n1!53))))

(assert (=> d!31192 (= (repr!0 n1!53) lt!8007)))

(declare-fun b!43999 () Bool)

(assert (=> b!43999 (= e!22804 0)))

(declare-fun b!44000 () Bool)

(assert (=> b!44000 (= e!22804 (+ (repr!0 (n!1244 n1!53)) 1))))

(assert (= (and d!31192 c!9379) b!43999))

(assert (= (and d!31192 (not c!9379)) b!44000))

(assert (=> b!44000 m!47219))

(assert (=> d!31166 d!31192))

(assert (=> d!31166 d!31178))

(declare-fun d!31194 () Bool)

(declare-fun lt!8008 () Bool)

(assert (=> d!31194 (= lt!8008 (< (repr!0 (n!1244 n2!64)) (repr!0 (n!1244 n3!15))))))

(declare-fun e!22805 () Bool)

(assert (=> d!31194 (= lt!8008 e!22805)))

(declare-fun c!9380 () Bool)

(assert (=> d!31194 (= c!9380 (and (is-Succ!100 (n!1244 n2!64)) (is-Succ!100 (n!1244 n3!15))))))

(assert (=> d!31194 (= (<!2 (n!1244 n2!64) (n!1244 n3!15)) lt!8008)))

(declare-fun b!44001 () Bool)

(assert (=> b!44001 (= e!22805 (<!2 (n!1244 (n!1244 n2!64)) (n!1244 (n!1244 n3!15))))))

(declare-fun b!44002 () Bool)

(assert (=> b!44002 (= e!22805 (and (is-Zero!103 (n!1244 n2!64)) (is-Succ!100 (n!1244 n3!15))))))

(assert (= (and d!31194 c!9380) b!44001))

(assert (= (and d!31194 (not c!9380)) b!44002))

(assert (=> d!31194 m!47221))

(assert (=> d!31194 m!47237))

(declare-fun m!47257 () Bool)

(assert (=> b!44001 m!47257))

(assert (=> b!43958 d!31194))

(push 1)

(assert (not b!43993))

(assert (not d!31190))

(assert (not d!31172))

(assert (not b!44001))

(assert (not d!31182))

(assert (not d!31194))

(assert (not b!43974))

(assert (not b!43972))

(assert (not b!43995))

(assert (not b!44000))

(assert (not d!31188))

(assert (not b!43979))

(assert (not b!43987))

(assert (not d!31170))

(assert (not b!43985))

(assert (not b!43977))

(assert (not b!43990))

(assert (not d!31184))

(assert (not b!43988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

