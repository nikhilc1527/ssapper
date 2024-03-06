; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12810 () Bool)

(assert start!12810)

(declare-datatypes () ((P!4 (Charlie!4) (Alice!4) (Bob!4))))

(declare-datatypes () ((S!27 (S!28 (who!54 P!4) (amount!54 Int)))))

(declare-datatypes () ((List!814 (Cons!752 (h!1256 S!27) (t!49307 List!814)) (Nil!754))))

(declare-fun lt!21186 () List!814)

(assert (=> start!12810 (= lt!21186 (Cons!752 (S!28 Charlie!4 4000) Nil!754))))

(declare-fun lt!21185 () P!4)

(assert (=> start!12810 (= lt!21185 Alice!4)))

(declare-datatypes () ((List!815 (Cons!753 (h!1257 P!4) (t!49308 List!815)) (Nil!755))))

(declare-fun size!928 (List!815) Int)

(declare-fun size!929 (List!814) Int)

(assert (=> start!12810 (not (= (size!928 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))) (size!929 (Cons!752 (S!28 lt!21185 0) lt!21186))))))

(declare-fun bs!42058 () Bool)

(assert (= bs!42058 start!12810))

(declare-fun m!89107 () Bool)

(assert (=> bs!42058 m!89107))

(declare-fun m!89109 () Bool)

(assert (=> bs!42058 m!89109))

(push 1)

(assert (not start!12810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61100 () Bool)

(declare-fun lt!21189 () Int)

(assert (=> d!61100 (>= lt!21189 0)))

(declare-fun e!51196 () Int)

(assert (=> d!61100 (= lt!21189 e!51196)))

(declare-fun c!22908 () Bool)

(assert (=> d!61100 (= c!22908 (is-Nil!755 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))))))

(assert (=> d!61100 (= (size!928 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))) lt!21189)))

(declare-fun b!93477 () Bool)

(assert (=> b!93477 (= e!51196 0)))

(declare-fun b!93478 () Bool)

(assert (=> b!93478 (= e!51196 (+ 1 (size!928 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))))))))

(assert (= (and d!61100 c!22908) b!93477))

(assert (= (and d!61100 (not c!22908)) b!93478))

(declare-fun m!89111 () Bool)

(assert (=> b!93478 m!89111))

(assert (=> start!12810 d!61100))

(declare-fun d!61102 () Bool)

(declare-fun lt!21192 () Int)

(assert (=> d!61102 (>= lt!21192 0)))

(declare-fun e!51199 () Int)

(assert (=> d!61102 (= lt!21192 e!51199)))

(declare-fun c!22911 () Bool)

(assert (=> d!61102 (= c!22911 (is-Nil!754 (Cons!752 (S!28 lt!21185 0) lt!21186)))))

(assert (=> d!61102 (= (size!929 (Cons!752 (S!28 lt!21185 0) lt!21186)) lt!21192)))

(declare-fun b!93483 () Bool)

(assert (=> b!93483 (= e!51199 0)))

(declare-fun b!93484 () Bool)

(assert (=> b!93484 (= e!51199 (+ 1 (size!929 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186)))))))

(assert (= (and d!61102 c!22911) b!93483))

(assert (= (and d!61102 (not c!22911)) b!93484))

(declare-fun m!89113 () Bool)

(assert (=> b!93484 m!89113))

(assert (=> start!12810 d!61102))

(push 1)

(assert (not b!93478))

(assert (not b!93484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61104 () Bool)

(declare-fun lt!21193 () Int)

(assert (=> d!61104 (>= lt!21193 0)))

(declare-fun e!51200 () Int)

(assert (=> d!61104 (= lt!21193 e!51200)))

(declare-fun c!22912 () Bool)

(assert (=> d!61104 (= c!22912 (is-Nil!755 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755)))))))

(assert (=> d!61104 (= (size!928 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755)))) lt!21193)))

(declare-fun b!93485 () Bool)

(assert (=> b!93485 (= e!51200 0)))

(declare-fun b!93486 () Bool)

(assert (=> b!93486 (= e!51200 (+ 1 (size!928 (t!49308 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755)))))))))

(assert (= (and d!61104 c!22912) b!93485))

(assert (= (and d!61104 (not c!22912)) b!93486))

(declare-fun m!89115 () Bool)

(assert (=> b!93486 m!89115))

(assert (=> b!93478 d!61104))

(declare-fun d!61106 () Bool)

(declare-fun lt!21194 () Int)

(assert (=> d!61106 (>= lt!21194 0)))

(declare-fun e!51201 () Int)

(assert (=> d!61106 (= lt!21194 e!51201)))

(declare-fun c!22913 () Bool)

(assert (=> d!61106 (= c!22913 (is-Nil!754 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186))))))

(assert (=> d!61106 (= (size!929 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186))) lt!21194)))

(declare-fun b!93487 () Bool)

(assert (=> b!93487 (= e!51201 0)))

(declare-fun b!93488 () Bool)

(assert (=> b!93488 (= e!51201 (+ 1 (size!929 (t!49307 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186))))))))

(assert (= (and d!61106 c!22913) b!93487))

(assert (= (and d!61106 (not c!22913)) b!93488))

(declare-fun m!89117 () Bool)

(assert (=> b!93488 m!89117))

(assert (=> b!93484 d!61106))

(push 1)

(assert (not b!93488))

(assert (not b!93486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61108 () Bool)

(declare-fun lt!21195 () Int)

(assert (=> d!61108 (>= lt!21195 0)))

(declare-fun e!51202 () Int)

(assert (=> d!61108 (= lt!21195 e!51202)))

(declare-fun c!22914 () Bool)

(assert (=> d!61108 (= c!22914 (is-Nil!754 (t!49307 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186)))))))

(assert (=> d!61108 (= (size!929 (t!49307 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186)))) lt!21195)))

(declare-fun b!93489 () Bool)

(assert (=> b!93489 (= e!51202 0)))

(declare-fun b!93490 () Bool)

(assert (=> b!93490 (= e!51202 (+ 1 (size!929 (t!49307 (t!49307 (t!49307 (Cons!752 (S!28 lt!21185 0) lt!21186)))))))))

(assert (= (and d!61108 c!22914) b!93489))

(assert (= (and d!61108 (not c!22914)) b!93490))

(declare-fun m!89119 () Bool)

(assert (=> b!93490 m!89119))

(assert (=> b!93488 d!61108))

(declare-fun d!61110 () Bool)

(declare-fun lt!21196 () Int)

(assert (=> d!61110 (>= lt!21196 0)))

(declare-fun e!51203 () Int)

(assert (=> d!61110 (= lt!21196 e!51203)))

(declare-fun c!22915 () Bool)

(assert (=> d!61110 (= c!22915 (is-Nil!755 (t!49308 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))))))))

(assert (=> d!61110 (= (size!928 (t!49308 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))))) lt!21196)))

(declare-fun b!93491 () Bool)

(assert (=> b!93491 (= e!51203 0)))

(declare-fun b!93492 () Bool)

(assert (=> b!93492 (= e!51203 (+ 1 (size!928 (t!49308 (t!49308 (t!49308 (Cons!753 lt!21185 (Cons!753 (who!54 (h!1256 lt!21186)) Nil!755))))))))))

(assert (= (and d!61110 c!22915) b!93491))

(assert (= (and d!61110 (not c!22915)) b!93492))

(declare-fun m!89121 () Bool)

(assert (=> b!93492 m!89121))

(assert (=> b!93486 d!61110))

(push 1)

(assert (not b!93492))

(assert (not b!93490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

