; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13480 () Bool)

(assert start!13480)

(declare-datatypes () ((P!16 (Charlie!16) (Alice!16) (Bob!16))))

(declare-datatypes () ((S!51 (S!52 (who!747 P!16) (amount!747 Int)))))

(declare-fun lt!21262 () S!51)

(declare-datatypes () ((List!823 (Cons!761 (h!2306 S!51) (t!50368 List!823)) (Nil!763))))

(declare-fun lt!21261 () List!823)

(assert (=> start!13480 (= lt!21262 (h!2306 lt!21261))))

(assert (=> start!13480 (= lt!21261 (Cons!761 (S!52 Charlie!16 4000) Nil!763))))

(declare-fun size!937 (List!823) Int)

(assert (=> start!13480 (not (= (size!937 (Cons!761 (S!52 (who!747 lt!21262) (- 2000 (amount!747 lt!21262))) Nil!763)) (size!937 lt!21261)))))

(declare-fun bs!42389 () Bool)

(assert (= bs!42389 start!13480))

(declare-fun m!89241 () Bool)

(assert (=> bs!42389 m!89241))

(declare-fun m!89243 () Bool)

(assert (=> bs!42389 m!89243))

(push 1)

(assert (not start!13480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61172 () Bool)

(declare-fun lt!21265 () Int)

(assert (=> d!61172 (>= lt!21265 0)))

(declare-fun e!51273 () Int)

(assert (=> d!61172 (= lt!21265 e!51273)))

(declare-fun c!22956 () Bool)

(assert (=> d!61172 (= c!22956 (is-Nil!763 (Cons!761 (S!52 (who!747 lt!21262) (- 2000 (amount!747 lt!21262))) Nil!763)))))

(assert (=> d!61172 (= (size!937 (Cons!761 (S!52 (who!747 lt!21262) (- 2000 (amount!747 lt!21262))) Nil!763)) lt!21265)))

(declare-fun b!93611 () Bool)

(assert (=> b!93611 (= e!51273 0)))

(declare-fun b!93612 () Bool)

(assert (=> b!93612 (= e!51273 (+ 1 (size!937 (t!50368 (Cons!761 (S!52 (who!747 lt!21262) (- 2000 (amount!747 lt!21262))) Nil!763)))))))

(assert (= (and d!61172 c!22956) b!93611))

(assert (= (and d!61172 (not c!22956)) b!93612))

(declare-fun m!89245 () Bool)

(assert (=> b!93612 m!89245))

(assert (=> start!13480 d!61172))

(declare-fun d!61174 () Bool)

(declare-fun lt!21266 () Int)

(assert (=> d!61174 (>= lt!21266 0)))

(declare-fun e!51274 () Int)

(assert (=> d!61174 (= lt!21266 e!51274)))

(declare-fun c!22957 () Bool)

(assert (=> d!61174 (= c!22957 (is-Nil!763 lt!21261))))

(assert (=> d!61174 (= (size!937 lt!21261) lt!21266)))

(declare-fun b!93613 () Bool)

(assert (=> b!93613 (= e!51274 0)))

(declare-fun b!93614 () Bool)

(assert (=> b!93614 (= e!51274 (+ 1 (size!937 (t!50368 lt!21261))))))

(assert (= (and d!61174 c!22957) b!93613))

(assert (= (and d!61174 (not c!22957)) b!93614))

(declare-fun m!89247 () Bool)

(assert (=> b!93614 m!89247))

(assert (=> start!13480 d!61174))

(push 1)

(assert (not b!93612))

(assert (not b!93614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

