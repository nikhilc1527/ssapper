; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12794 () Bool)

(assert start!12794)

(declare-datatypes () ((P!2 (Charlie!2) (Alice!2) (Bob!2))))

(declare-datatypes () ((List!810 (Cons!748 (h!1238 P!2) (t!49285 List!810)) (Nil!750))))

(declare-fun size!924 (List!810) Int)

(declare-datatypes () ((S!23 (S!24 (who!42 P!2) (amount!42 Int)))))

(declare-datatypes () ((List!811 (Cons!749 (h!1239 S!23) (t!49286 List!811)) (Nil!751))))

(declare-fun size!925 (List!811) Int)

(assert (=> start!12794 (not (= (size!924 Nil!750) (size!925 Nil!751)))))

(declare-fun bs!42052 () Bool)

(assert (= bs!42052 start!12794))

(declare-fun m!89087 () Bool)

(assert (=> bs!42052 m!89087))

(declare-fun m!89089 () Bool)

(assert (=> bs!42052 m!89089))

(push 1)

(assert (not start!12794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61088 () Bool)

(declare-fun lt!21166 () Int)

(assert (=> d!61088 (>= lt!21166 0)))

(declare-fun e!51182 () Int)

(assert (=> d!61088 (= lt!21166 e!51182)))

(declare-fun c!22894 () Bool)

(assert (=> d!61088 (= c!22894 (is-Nil!750 Nil!750))))

(assert (=> d!61088 (= (size!924 Nil!750) lt!21166)))

(declare-fun b!93449 () Bool)

(assert (=> b!93449 (= e!51182 0)))

(declare-fun b!93450 () Bool)

(assert (=> b!93450 (= e!51182 (+ 1 (size!924 (t!49285 Nil!750))))))

(assert (= (and d!61088 c!22894) b!93449))

(assert (= (and d!61088 (not c!22894)) b!93450))

(declare-fun m!89091 () Bool)

(assert (=> b!93450 m!89091))

(assert (=> start!12794 d!61088))

(declare-fun d!61090 () Bool)

(declare-fun lt!21169 () Int)

(assert (=> d!61090 (>= lt!21169 0)))

(declare-fun e!51185 () Int)

(assert (=> d!61090 (= lt!21169 e!51185)))

(declare-fun c!22897 () Bool)

(assert (=> d!61090 (= c!22897 (is-Nil!751 Nil!751))))

(assert (=> d!61090 (= (size!925 Nil!751) lt!21169)))

(declare-fun b!93455 () Bool)

(assert (=> b!93455 (= e!51185 0)))

(declare-fun b!93456 () Bool)

(assert (=> b!93456 (= e!51185 (+ 1 (size!925 (t!49286 Nil!751))))))

(assert (= (and d!61090 c!22897) b!93455))

(assert (= (and d!61090 (not c!22897)) b!93456))

(declare-fun m!89093 () Bool)

(assert (=> b!93456 m!89093))

(assert (=> start!12794 d!61090))

(push 1)

(assert (not b!93450))

(assert (not b!93456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

