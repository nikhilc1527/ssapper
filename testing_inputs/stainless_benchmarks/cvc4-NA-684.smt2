; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4836 () Bool)

(assert start!4836)

(declare-fun res!17982 () Bool)

(declare-fun e!19394 () Bool)

(assert (=> start!4836 (=> (not res!17982) (not e!19394))))

(declare-datatypes () ((Nat!45 (Zero!29) (Succ!26 (n!1108 Nat!45)))))

(declare-fun n2!332 () Nat!45)

(declare-fun n1!316 () Nat!45)

(declare-datatypes () ((tuple2!168 (tuple2!169 (_1!110 Nat!45) (_2!110 Nat!45)))))

(declare-fun x$98!1 () tuple2!168)

(declare-fun log2_and_remainder!0 (Nat!45) tuple2!168)

(declare-fun pair!0 (Nat!45 Nat!45) Nat!45)

(assert (=> start!4836 (= res!17982 (= x$98!1 (tuple2!169 (_1!110 (log2_and_remainder!0 (Succ!26 (pair!0 n1!316 n2!332)))) (_2!110 (log2_and_remainder!0 (Succ!26 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!4836 e!19394))

(assert (=> start!4836 true))

(declare-fun b!37719 () Bool)

(declare-fun res!17984 () Bool)

(assert (=> b!37719 (=> (not res!17984) (not e!19394))))

(declare-fun that!1438 () Nat!45)

(assert (=> b!37719 (= res!17984 (= that!1438 (Succ!26 (Succ!26 Zero!29))))))

(declare-fun b!37717 () Bool)

(declare-fun res!17983 () Bool)

(assert (=> b!37717 (=> (not res!17983) (not e!19394))))

(declare-fun remainder!2 () Nat!45)

(declare-fun p1!72 () Nat!45)

(assert (=> b!37717 (= res!17983 (and (= p1!72 (_1!110 x$98!1)) (= remainder!2 (_2!110 x$98!1))))))

(declare-fun b!37718 () Bool)

(declare-fun res!17981 () Bool)

(assert (=> b!37718 (=> (not res!17981) (not e!19394))))

(declare-fun thiss!6206 () Nat!45)

(declare-fun -!4 (Nat!45 Nat!45) Nat!45)

(assert (=> b!37718 (= res!17981 (= thiss!6206 (-!4 remainder!2 (Succ!26 Zero!29))))))

(declare-fun b!37720 () Bool)

(declare-fun >!2 (Nat!45 Nat!45) Bool)

(assert (=> b!37720 (= e!19394 (not (>!2 that!1438 Zero!29)))))

(assert (= (and start!4836 res!17982) b!37717))

(assert (= (and b!37717 res!17983) b!37718))

(assert (= (and b!37718 res!17981) b!37719))

(assert (= (and b!37719 res!17984) b!37720))

(declare-fun m!38969 () Bool)

(assert (=> start!4836 m!38969))

(declare-fun m!38971 () Bool)

(assert (=> start!4836 m!38971))

(declare-fun m!38973 () Bool)

(assert (=> b!37718 m!38973))

(declare-fun m!38975 () Bool)

(assert (=> b!37720 m!38975))

(push 1)

(assert (not b!37718))

(assert (not b!37720))

(assert (not start!4836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!37731 () Bool)

(declare-fun res!17992 () Bool)

(declare-fun e!19402 () Bool)

(assert (=> b!37731 (=> res!17992 e!19402)))

(assert (=> b!37731 (= res!17992 (not (>!2 (Succ!26 Zero!29) Zero!29)))))

(declare-fun b!37732 () Bool)

(declare-fun e!19403 () Nat!45)

(assert (=> b!37732 (= e!19403 remainder!2)))

(declare-fun d!18882 () Bool)

(declare-fun e!19401 () Bool)

(assert (=> d!18882 e!19401))

(declare-fun res!17993 () Bool)

(assert (=> d!18882 (=> (not res!17993) (not e!19401))))

(declare-fun lt!7502 () Nat!45)

(declare-fun repr!0 (Nat!45) Int)

(assert (=> d!18882 (= res!17993 (<= (repr!0 lt!7502) (repr!0 remainder!2)))))

(assert (=> d!18882 (= lt!7502 e!19403)))

(declare-fun c!8199 () Bool)

(assert (=> d!18882 (= c!8199 (and (is-Succ!26 remainder!2) (is-Succ!26 (Succ!26 Zero!29))))))

(assert (=> d!18882 (= (-!4 remainder!2 (Succ!26 Zero!29)) lt!7502)))

(declare-fun b!37733 () Bool)

(assert (=> b!37733 (= e!19402 (< (repr!0 lt!7502) (repr!0 remainder!2)))))

(declare-fun b!37734 () Bool)

(assert (=> b!37734 (= e!19403 (-!4 (n!1108 remainder!2) (n!1108 (Succ!26 Zero!29))))))

(declare-fun b!37735 () Bool)

(assert (=> b!37735 (= e!19401 e!19402)))

(declare-fun res!17994 () Bool)

(assert (=> b!37735 (=> res!17994 e!19402)))

(assert (=> b!37735 (= res!17994 (not (>!2 remainder!2 Zero!29)))))

(assert (= (and d!18882 c!8199) b!37734))

(assert (= (and d!18882 (not c!8199)) b!37732))

(assert (= (and d!18882 res!17993) b!37735))

(assert (= (and b!37735 (not res!17994)) b!37731))

(assert (= (and b!37731 (not res!17992)) b!37733))

(declare-fun m!38977 () Bool)

(assert (=> b!37731 m!38977))

(declare-fun m!38979 () Bool)

(assert (=> b!37734 m!38979))

(declare-fun m!38981 () Bool)

(assert (=> b!37735 m!38981))

(declare-fun m!38983 () Bool)

(assert (=> b!37733 m!38983))

(declare-fun m!38985 () Bool)

(assert (=> b!37733 m!38985))

(assert (=> d!18882 m!38983))

(assert (=> d!18882 m!38985))

(assert (=> b!37718 d!18882))

(declare-fun d!18884 () Bool)

(declare-fun res!17997 () Bool)

(declare-fun e!19406 () Bool)

(assert (=> d!18884 (=> (not res!17997) (not e!19406))))

(declare-fun <!2 (Nat!45 Nat!45) Bool)

(assert (=> d!18884 (= res!17997 (not (<!2 that!1438 Zero!29)))))

(assert (=> d!18884 (= (>!2 that!1438 Zero!29) e!19406)))

(declare-fun b!37738 () Bool)

(assert (=> b!37738 (= e!19406 (not (= that!1438 Zero!29)))))

(assert (= (and d!18884 res!17997) b!37738))

(declare-fun m!38987 () Bool)

(assert (=> d!18884 m!38987))

(assert (=> b!37720 d!18884))

(declare-fun d!18886 () Bool)

(declare-fun c!8202 () Bool)

(declare-fun e!19412 () Bool)

(assert (=> d!18886 (= c!8202 e!19412)))

(declare-fun res!18000 () Bool)

(assert (=> d!18886 (=> (not res!18000) (not e!19412))))

(declare-fun isEven!1 (Nat!45) Bool)

(assert (=> d!18886 (= res!18000 (isEven!1 (Succ!26 (pair!0 n1!316 n2!332))))))

(declare-fun e!19411 () tuple2!168)

(assert (=> d!18886 (= (log2_and_remainder!0 (Succ!26 (pair!0 n1!316 n2!332))) e!19411)))

(declare-fun b!37748 () Bool)

(assert (=> b!37748 (= e!19412 (>!2 (Succ!26 (pair!0 n1!316 n2!332)) Zero!29))))

(declare-fun b!37746 () Bool)

(declare-fun /!2 (Nat!45 Nat!45) Nat!45)

(assert (=> b!37746 (= e!19411 (tuple2!169 (Succ!26 (_1!110 (log2_and_remainder!0 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29)))))) (_2!110 (log2_and_remainder!0 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29)))))))))

(declare-fun b!37747 () Bool)

(assert (=> b!37747 (= e!19411 (tuple2!169 Zero!29 (Succ!26 (pair!0 n1!316 n2!332))))))

(assert (= (and d!18886 res!18000) b!37748))

(assert (= (and d!18886 c!8202) b!37746))

(assert (= (and d!18886 (not c!8202)) b!37747))

(declare-fun m!38989 () Bool)

(assert (=> d!18886 m!38989))

(declare-fun m!38991 () Bool)

(assert (=> b!37748 m!38991))

(declare-fun m!38993 () Bool)

(assert (=> b!37746 m!38993))

(assert (=> b!37746 m!38993))

(declare-fun m!38995 () Bool)

(assert (=> b!37746 m!38995))

(assert (=> start!4836 d!18886))

(declare-fun d!18888 () Bool)

(declare-fun *!4 (Nat!45 Nat!45) Nat!45)

(declare-fun pow!0 (Nat!45 Nat!45) Nat!45)

(declare-fun +!5 (Nat!45 Nat!45) Nat!45)

(assert (=> d!18888 (= (pair!0 n1!316 n2!332) (-!4 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))) (Succ!26 Zero!29)))))

(declare-fun bs!11559 () Bool)

(assert (= bs!11559 d!18888))

(declare-fun m!38997 () Bool)

(assert (=> bs!11559 m!38997))

(declare-fun m!38999 () Bool)

(assert (=> bs!11559 m!38999))

(assert (=> bs!11559 m!38999))

(declare-fun m!39001 () Bool)

(assert (=> bs!11559 m!39001))

(declare-fun m!39003 () Bool)

(assert (=> bs!11559 m!39003))

(assert (=> bs!11559 m!39003))

(declare-fun m!39005 () Bool)

(assert (=> bs!11559 m!39005))

(assert (=> bs!11559 m!38997))

(assert (=> bs!11559 m!39001))

(assert (=> start!4836 d!18888))

(push 1)

(assert (not d!18882))

(assert (not b!37746))

(assert (not d!18884))

(assert (not d!18888))

(assert (not b!37734))

(assert (not b!37748))

(assert (not b!37733))

(assert (not b!37735))

(assert (not b!37731))

(assert (not d!18886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18890 () Bool)

(declare-fun c!8203 () Bool)

(declare-fun e!19414 () Bool)

(assert (=> d!18890 (= c!8203 e!19414)))

(declare-fun res!18001 () Bool)

(assert (=> d!18890 (=> (not res!18001) (not e!19414))))

(assert (=> d!18890 (= res!18001 (isEven!1 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29)))))))

(declare-fun e!19413 () tuple2!168)

(assert (=> d!18890 (= (log2_and_remainder!0 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29)))) e!19413)))

(declare-fun b!37751 () Bool)

(assert (=> b!37751 (= e!19414 (>!2 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29))) Zero!29))))

(declare-fun b!37749 () Bool)

(assert (=> b!37749 (= e!19413 (tuple2!169 (Succ!26 (_1!110 (log2_and_remainder!0 (/!2 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29))) (Succ!26 (Succ!26 Zero!29)))))) (_2!110 (log2_and_remainder!0 (/!2 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29))) (Succ!26 (Succ!26 Zero!29)))))))))

(declare-fun b!37750 () Bool)

(assert (=> b!37750 (= e!19413 (tuple2!169 Zero!29 (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29)))))))

(assert (= (and d!18890 res!18001) b!37751))

(assert (= (and d!18890 c!8203) b!37749))

(assert (= (and d!18890 (not c!8203)) b!37750))

(assert (=> d!18890 m!38993))

(declare-fun m!39007 () Bool)

(assert (=> d!18890 m!39007))

(assert (=> b!37751 m!38993))

(declare-fun m!39009 () Bool)

(assert (=> b!37751 m!39009))

(assert (=> b!37749 m!38993))

(declare-fun m!39011 () Bool)

(assert (=> b!37749 m!39011))

(assert (=> b!37749 m!39011))

(declare-fun m!39013 () Bool)

(assert (=> b!37749 m!39013))

(assert (=> b!37746 d!18890))

(declare-fun b!37762 () Bool)

(declare-fun e!19421 () Nat!45)

(assert (=> b!37762 (= e!19421 Zero!29)))

(declare-fun b!37763 () Bool)

(declare-fun e!19423 () Bool)

(declare-fun e!19422 () Bool)

(assert (=> b!37763 (= e!19423 e!19422)))

(declare-fun res!18009 () Bool)

(assert (=> b!37763 (=> res!18009 e!19422)))

(assert (=> b!37763 (= res!18009 (not (>!2 (Succ!26 (pair!0 n1!316 n2!332)) Zero!29)))))

(declare-fun d!18892 () Bool)

(assert (=> d!18892 e!19423))

(declare-fun res!18011 () Bool)

(assert (=> d!18892 (=> (not res!18011) (not e!19423))))

(declare-fun lt!7505 () Nat!45)

(assert (=> d!18892 (= res!18011 (<= (repr!0 lt!7505) (repr!0 (Succ!26 (pair!0 n1!316 n2!332)))))))

(assert (=> d!18892 (= lt!7505 e!19421)))

(declare-fun c!8206 () Bool)

(assert (=> d!18892 (= c!8206 (<!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29))))))

(assert (=> d!18892 (>!2 (Succ!26 (Succ!26 Zero!29)) Zero!29)))

(assert (=> d!18892 (= (/!2 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29))) lt!7505)))

(declare-fun b!37764 () Bool)

(assert (=> b!37764 (= e!19421 (Succ!26 (/!2 (-!4 (Succ!26 (pair!0 n1!316 n2!332)) (Succ!26 (Succ!26 Zero!29))) (Succ!26 (Succ!26 Zero!29)))))))

(declare-fun b!37765 () Bool)

(assert (=> b!37765 (= e!19422 (< (repr!0 lt!7505) (repr!0 (Succ!26 (pair!0 n1!316 n2!332)))))))

(declare-fun b!37766 () Bool)

(declare-fun res!18010 () Bool)

(assert (=> b!37766 (=> res!18010 e!19422)))

(assert (=> b!37766 (= res!18010 (not (>!2 (Succ!26 (Succ!26 Zero!29)) (Succ!26 Zero!29))))))

(assert (= (and d!18892 c!8206) b!37762))

(assert (= (and d!18892 (not c!8206)) b!37764))

(assert (= (and d!18892 res!18011) b!37763))

(assert (= (and b!37763 (not res!18009)) b!37766))

(assert (= (and b!37766 (not res!18010)) b!37765))

(declare-fun m!39015 () Bool)

(assert (=> b!37765 m!39015))

(declare-fun m!39017 () Bool)

(assert (=> b!37765 m!39017))

(assert (=> b!37763 m!38991))

(declare-fun m!39019 () Bool)

(assert (=> b!37764 m!39019))

(assert (=> b!37764 m!39019))

(declare-fun m!39021 () Bool)

(assert (=> b!37764 m!39021))

(declare-fun m!39023 () Bool)

(assert (=> b!37766 m!39023))

(assert (=> d!18892 m!39015))

(assert (=> d!18892 m!39017))

(declare-fun m!39025 () Bool)

(assert (=> d!18892 m!39025))

(declare-fun m!39027 () Bool)

(assert (=> d!18892 m!39027))

(assert (=> b!37746 d!18892))

(declare-fun b!37767 () Bool)

(declare-fun res!18012 () Bool)

(declare-fun e!19425 () Bool)

(assert (=> b!37767 (=> res!18012 e!19425)))

(assert (=> b!37767 (= res!18012 (not (>!2 (n!1108 (Succ!26 Zero!29)) Zero!29)))))

(declare-fun b!37768 () Bool)

(declare-fun e!19426 () Nat!45)

(assert (=> b!37768 (= e!19426 (n!1108 remainder!2))))

(declare-fun d!18894 () Bool)

(declare-fun e!19424 () Bool)

(assert (=> d!18894 e!19424))

(declare-fun res!18013 () Bool)

(assert (=> d!18894 (=> (not res!18013) (not e!19424))))

(declare-fun lt!7506 () Nat!45)

(assert (=> d!18894 (= res!18013 (<= (repr!0 lt!7506) (repr!0 (n!1108 remainder!2))))))

(assert (=> d!18894 (= lt!7506 e!19426)))

(declare-fun c!8207 () Bool)

(assert (=> d!18894 (= c!8207 (and (is-Succ!26 (n!1108 remainder!2)) (is-Succ!26 (n!1108 (Succ!26 Zero!29)))))))

(assert (=> d!18894 (= (-!4 (n!1108 remainder!2) (n!1108 (Succ!26 Zero!29))) lt!7506)))

(declare-fun b!37769 () Bool)

(assert (=> b!37769 (= e!19425 (< (repr!0 lt!7506) (repr!0 (n!1108 remainder!2))))))

(declare-fun b!37770 () Bool)

(assert (=> b!37770 (= e!19426 (-!4 (n!1108 (n!1108 remainder!2)) (n!1108 (n!1108 (Succ!26 Zero!29)))))))

(declare-fun b!37771 () Bool)

(assert (=> b!37771 (= e!19424 e!19425)))

(declare-fun res!18014 () Bool)

(assert (=> b!37771 (=> res!18014 e!19425)))

(assert (=> b!37771 (= res!18014 (not (>!2 (n!1108 remainder!2) Zero!29)))))

(assert (= (and d!18894 c!8207) b!37770))

(assert (= (and d!18894 (not c!8207)) b!37768))

(assert (= (and d!18894 res!18013) b!37771))

(assert (= (and b!37771 (not res!18014)) b!37767))

(assert (= (and b!37767 (not res!18012)) b!37769))

(declare-fun m!39029 () Bool)

(assert (=> b!37767 m!39029))

(declare-fun m!39031 () Bool)

(assert (=> b!37770 m!39031))

(declare-fun m!39033 () Bool)

(assert (=> b!37771 m!39033))

(declare-fun m!39035 () Bool)

(assert (=> b!37769 m!39035))

(declare-fun m!39037 () Bool)

(assert (=> b!37769 m!39037))

(assert (=> d!18894 m!39035))

(assert (=> d!18894 m!39037))

(assert (=> b!37734 d!18894))

(declare-fun d!18896 () Bool)

(declare-fun lt!7509 () Int)

(assert (=> d!18896 (>= lt!7509 0)))

(declare-fun e!19429 () Int)

(assert (=> d!18896 (= lt!7509 e!19429)))

(declare-fun c!8210 () Bool)

(assert (=> d!18896 (= c!8210 (is-Zero!29 lt!7502))))

(assert (=> d!18896 (= (repr!0 lt!7502) lt!7509)))

(declare-fun b!37776 () Bool)

(assert (=> b!37776 (= e!19429 0)))

(declare-fun b!37777 () Bool)

(assert (=> b!37777 (= e!19429 (+ (repr!0 (n!1108 lt!7502)) 1))))

(assert (= (and d!18896 c!8210) b!37776))

(assert (= (and d!18896 (not c!8210)) b!37777))

(declare-fun m!39039 () Bool)

(assert (=> b!37777 m!39039))

(assert (=> d!18882 d!18896))

(declare-fun d!18898 () Bool)

(declare-fun lt!7510 () Int)

(assert (=> d!18898 (>= lt!7510 0)))

(declare-fun e!19430 () Int)

(assert (=> d!18898 (= lt!7510 e!19430)))

(declare-fun c!8211 () Bool)

(assert (=> d!18898 (= c!8211 (is-Zero!29 remainder!2))))

(assert (=> d!18898 (= (repr!0 remainder!2) lt!7510)))

(declare-fun b!37778 () Bool)

(assert (=> b!37778 (= e!19430 0)))

(declare-fun b!37779 () Bool)

(assert (=> b!37779 (= e!19430 (+ (repr!0 (n!1108 remainder!2)) 1))))

(assert (= (and d!18898 c!8211) b!37778))

(assert (= (and d!18898 (not c!8211)) b!37779))

(assert (=> b!37779 m!39037))

(assert (=> d!18882 d!18898))

(declare-fun d!18900 () Bool)

(declare-fun res!18015 () Bool)

(declare-fun e!19431 () Bool)

(assert (=> d!18900 (=> (not res!18015) (not e!19431))))

(assert (=> d!18900 (= res!18015 (not (<!2 (Succ!26 (pair!0 n1!316 n2!332)) Zero!29)))))

(assert (=> d!18900 (= (>!2 (Succ!26 (pair!0 n1!316 n2!332)) Zero!29) e!19431)))

(declare-fun b!37780 () Bool)

(assert (=> b!37780 (= e!19431 (not (= (Succ!26 (pair!0 n1!316 n2!332)) Zero!29)))))

(assert (= (and d!18900 res!18015) b!37780))

(declare-fun m!39041 () Bool)

(assert (=> d!18900 m!39041))

(assert (=> b!37748 d!18900))

(assert (=> b!37733 d!18896))

(assert (=> b!37733 d!18898))

(declare-fun d!18902 () Bool)

(declare-fun res!18016 () Bool)

(declare-fun e!19432 () Bool)

(assert (=> d!18902 (=> (not res!18016) (not e!19432))))

(assert (=> d!18902 (= res!18016 (not (<!2 (Succ!26 Zero!29) Zero!29)))))

(assert (=> d!18902 (= (>!2 (Succ!26 Zero!29) Zero!29) e!19432)))

(declare-fun b!37781 () Bool)

(assert (=> b!37781 (= e!19432 (not (= (Succ!26 Zero!29) Zero!29)))))

(assert (= (and d!18902 res!18016) b!37781))

(declare-fun m!39043 () Bool)

(assert (=> d!18902 m!39043))

(assert (=> b!37731 d!18902))

(declare-fun d!18904 () Bool)

(declare-fun res!18021 () Bool)

(declare-fun e!19437 () Bool)

(assert (=> d!18904 (=> res!18021 e!19437)))

(assert (=> d!18904 (= res!18021 (is-Zero!29 (Succ!26 (pair!0 n1!316 n2!332))))))

(assert (=> d!18904 (= (isEven!1 (Succ!26 (pair!0 n1!316 n2!332))) e!19437)))

(declare-fun b!37786 () Bool)

(declare-fun e!19438 () Bool)

(assert (=> b!37786 (= e!19437 e!19438)))

(declare-fun res!18022 () Bool)

(assert (=> b!37786 (=> (not res!18022) (not e!19438))))

(assert (=> b!37786 (= res!18022 (not (and (is-Succ!26 (Succ!26 (pair!0 n1!316 n2!332))) (is-Zero!29 (n!1108 (Succ!26 (pair!0 n1!316 n2!332)))))))))

(declare-fun b!37787 () Bool)

(assert (=> b!37787 (= e!19438 (not (isEven!1 (n!1108 (Succ!26 (pair!0 n1!316 n2!332))))))))

(assert (= (and d!18904 (not res!18021)) b!37786))

(assert (= (and b!37786 res!18022) b!37787))

(declare-fun m!39045 () Bool)

(assert (=> b!37787 m!39045))

(assert (=> d!18886 d!18904))

(declare-fun d!18906 () Bool)

(declare-fun lt!7513 () Bool)

(assert (=> d!18906 (= lt!7513 (< (repr!0 that!1438) (repr!0 Zero!29)))))

(declare-fun e!19441 () Bool)

(assert (=> d!18906 (= lt!7513 e!19441)))

(declare-fun c!8214 () Bool)

(assert (=> d!18906 (= c!8214 (and (is-Succ!26 that!1438) (is-Succ!26 Zero!29)))))

(assert (=> d!18906 (= (<!2 that!1438 Zero!29) lt!7513)))

(declare-fun b!37792 () Bool)

(assert (=> b!37792 (= e!19441 (<!2 (n!1108 that!1438) (n!1108 Zero!29)))))

(declare-fun b!37793 () Bool)

(assert (=> b!37793 (= e!19441 (and (is-Zero!29 that!1438) (is-Succ!26 Zero!29)))))

(assert (= (and d!18906 c!8214) b!37792))

(assert (= (and d!18906 (not c!8214)) b!37793))

(declare-fun m!39047 () Bool)

(assert (=> d!18906 m!39047))

(declare-fun m!39049 () Bool)

(assert (=> d!18906 m!39049))

(declare-fun m!39051 () Bool)

(assert (=> b!37792 m!39051))

(assert (=> d!18884 d!18906))

(declare-fun b!37794 () Bool)

(declare-fun res!18023 () Bool)

(declare-fun e!19443 () Bool)

(assert (=> b!37794 (=> res!18023 e!19443)))

(assert (=> b!37794 (= res!18023 (not (>!2 (Succ!26 Zero!29) Zero!29)))))

(declare-fun b!37795 () Bool)

(declare-fun e!19444 () Nat!45)

(assert (=> b!37795 (= e!19444 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))))))

(declare-fun d!18908 () Bool)

(declare-fun e!19442 () Bool)

(assert (=> d!18908 e!19442))

(declare-fun res!18024 () Bool)

(assert (=> d!18908 (=> (not res!18024) (not e!19442))))

(declare-fun lt!7514 () Nat!45)

(assert (=> d!18908 (= res!18024 (<= (repr!0 lt!7514) (repr!0 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))))))))

(assert (=> d!18908 (= lt!7514 e!19444)))

(declare-fun c!8215 () Bool)

(assert (=> d!18908 (= c!8215 (and (is-Succ!26 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29)))) (is-Succ!26 (Succ!26 Zero!29))))))

(assert (=> d!18908 (= (-!4 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))) (Succ!26 Zero!29)) lt!7514)))

(declare-fun b!37796 () Bool)

(assert (=> b!37796 (= e!19443 (< (repr!0 lt!7514) (repr!0 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))))))))

(declare-fun b!37797 () Bool)

(assert (=> b!37797 (= e!19444 (-!4 (n!1108 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29)))) (n!1108 (Succ!26 Zero!29))))))

(declare-fun b!37798 () Bool)

(assert (=> b!37798 (= e!19442 e!19443)))

(declare-fun res!18025 () Bool)

(assert (=> b!37798 (=> res!18025 e!19443)))

(assert (=> b!37798 (= res!18025 (not (>!2 (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))) Zero!29)))))

(assert (= (and d!18908 c!8215) b!37797))

(assert (= (and d!18908 (not c!8215)) b!37795))

(assert (= (and d!18908 res!18024) b!37798))

(assert (= (and b!37798 (not res!18025)) b!37794))

(assert (= (and b!37794 (not res!18023)) b!37796))

(assert (=> b!37794 m!38977))

(declare-fun m!39053 () Bool)

(assert (=> b!37797 m!39053))

(assert (=> b!37798 m!39003))

(declare-fun m!39055 () Bool)

(assert (=> b!37798 m!39055))

(declare-fun m!39057 () Bool)

(assert (=> b!37796 m!39057))

(assert (=> b!37796 m!39003))

(declare-fun m!39059 () Bool)

(assert (=> b!37796 m!39059))

(assert (=> d!18908 m!39057))

(assert (=> d!18908 m!39003))

(assert (=> d!18908 m!39059))

(assert (=> d!18888 d!18908))

(declare-fun d!18910 () Bool)

(declare-fun c!8218 () Bool)

(assert (=> d!18910 (= c!8218 (is-Zero!29 (Succ!26 (Succ!26 Zero!29))))))

(declare-fun e!19447 () Nat!45)

(assert (=> d!18910 (= (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) e!19447)))

(declare-fun b!37803 () Bool)

(assert (=> b!37803 (= e!19447 Zero!29)))

(declare-fun b!37804 () Bool)

(assert (=> b!37804 (= e!19447 (+!5 (*!4 (n!1108 (Succ!26 (Succ!26 Zero!29))) n2!332) n2!332))))

(assert (= (and d!18910 c!8218) b!37803))

(assert (= (and d!18910 (not c!8218)) b!37804))

(declare-fun m!39061 () Bool)

(assert (=> b!37804 m!39061))

(assert (=> b!37804 m!39061))

(declare-fun m!39063 () Bool)

(assert (=> b!37804 m!39063))

(assert (=> d!18888 d!18910))

(declare-fun d!18912 () Bool)

(declare-fun c!8221 () Bool)

(assert (=> d!18912 (= c!8221 (is-Succ!26 n1!316))))

(declare-fun e!19450 () Nat!45)

(assert (=> d!18912 (= (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) e!19450)))

(declare-fun b!37809 () Bool)

(assert (=> b!37809 (= e!19450 (*!4 (Succ!26 (Succ!26 Zero!29)) (pow!0 (Succ!26 (Succ!26 Zero!29)) (n!1108 n1!316))))))

(declare-fun b!37810 () Bool)

(assert (=> b!37810 (= e!19450 (Succ!26 Zero!29))))

(assert (= (and d!18912 c!8221) b!37809))

(assert (= (and d!18912 (not c!8221)) b!37810))

(declare-fun m!39065 () Bool)

(assert (=> b!37809 m!39065))

(assert (=> b!37809 m!39065))

(declare-fun m!39067 () Bool)

(assert (=> b!37809 m!39067))

(assert (=> d!18888 d!18912))

(declare-fun d!18914 () Bool)

(declare-fun c!8224 () Bool)

(assert (=> d!18914 (= c!8224 (is-Zero!29 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332)))))

(declare-fun e!19453 () Nat!45)

(assert (=> d!18914 (= (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29)) e!19453)))

(declare-fun b!37815 () Bool)

(assert (=> b!37815 (= e!19453 (Succ!26 Zero!29))))

(declare-fun b!37816 () Bool)

(assert (=> b!37816 (= e!19453 (Succ!26 (+!5 (n!1108 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332)) (Succ!26 Zero!29))))))

(assert (= (and d!18914 c!8224) b!37815))

(assert (= (and d!18914 (not c!8224)) b!37816))

(declare-fun m!39069 () Bool)

(assert (=> b!37816 m!39069))

(assert (=> d!18888 d!18914))

(declare-fun d!18916 () Bool)

(declare-fun c!8225 () Bool)

(assert (=> d!18916 (= c!8225 (is-Zero!29 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316)))))

(declare-fun e!19454 () Nat!45)

(assert (=> d!18916 (= (*!4 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))) e!19454)))

(declare-fun b!37817 () Bool)

(assert (=> b!37817 (= e!19454 Zero!29)))

(declare-fun b!37818 () Bool)

(assert (=> b!37818 (= e!19454 (+!5 (*!4 (n!1108 (pow!0 (Succ!26 (Succ!26 Zero!29)) n1!316)) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))) (+!5 (*!4 (Succ!26 (Succ!26 Zero!29)) n2!332) (Succ!26 Zero!29))))))

(assert (= (and d!18916 c!8225) b!37817))

(assert (= (and d!18916 (not c!8225)) b!37818))

(assert (=> b!37818 m!39001))

(declare-fun m!39071 () Bool)

(assert (=> b!37818 m!39071))

(assert (=> b!37818 m!39071))

(assert (=> b!37818 m!39001))

(declare-fun m!39073 () Bool)

(assert (=> b!37818 m!39073))

(assert (=> d!18888 d!18916))

(declare-fun d!18918 () Bool)

(declare-fun res!18026 () Bool)

(declare-fun e!19455 () Bool)

(assert (=> d!18918 (=> (not res!18026) (not e!19455))))

(assert (=> d!18918 (= res!18026 (not (<!2 remainder!2 Zero!29)))))

(assert (=> d!18918 (= (>!2 remainder!2 Zero!29) e!19455)))

(declare-fun b!37819 () Bool)

(assert (=> b!37819 (= e!19455 (not (= remainder!2 Zero!29)))))

(assert (= (and d!18918 res!18026) b!37819))

(declare-fun m!39075 () Bool)

(assert (=> d!18918 m!39075))

(assert (=> b!37735 d!18918))

(push 1)

(assert (not d!18906))

(assert (not b!37751))

(assert (not b!37798))

(assert (not b!37763))

(assert (not b!37769))

(assert (not b!37792))

(assert (not d!18908))

(assert (not b!37787))

(assert (not b!37764))

(assert (not d!18918))

(assert (not b!37809))

(assert (not d!18902))

(assert (not b!37777))

(assert (not b!37804))

(assert (not b!37794))

(assert (not b!37767))

(assert (not b!37818))

(assert (not b!37779))

(assert (not d!18900))

(assert (not d!18890))

(assert (not b!37797))

(assert (not b!37749))

(assert (not b!37770))

(assert (not d!18894))

(assert (not b!37796))

(assert (not b!37771))

(assert (not b!37816))

(assert (not b!37765))

(assert (not d!18892))

(assert (not b!37766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

