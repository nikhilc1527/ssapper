; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13816 () Bool)

(assert start!13816)

(declare-datatypes () ((P!27 (Charlie!27) (Alice!27) (Bob!27))))

(declare-datatypes () ((S!73 (S!74 (who!1152 P!27) (amount!1152 Int)))))

(declare-fun lt!21337 () S!73)

(declare-datatypes () ((List!830 (Cons!768 (h!2938 S!73) (t!51018 List!830)) (Nil!770))))

(declare-fun lt!21336 () List!830)

(assert (=> start!13816 (= lt!21337 (h!2938 lt!21336))))

(assert (=> start!13816 (= lt!21336 (Cons!768 (S!74 Charlie!27 4000) Nil!770))))

(declare-fun lt!21335 () P!27)

(assert (=> start!13816 (= lt!21335 Alice!27)))

(declare-fun size!944 (List!830) Int)

(assert (=> start!13816 (not (= (size!944 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770))) (size!944 (Cons!768 (S!74 lt!21335 0) lt!21336))))))

(declare-fun bs!42554 () Bool)

(assert (= bs!42554 start!13816))

(declare-fun m!89381 () Bool)

(assert (=> bs!42554 m!89381))

(declare-fun m!89383 () Bool)

(assert (=> bs!42554 m!89383))

(push 1)

(assert (not start!13816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61248 () Bool)

(declare-fun lt!21340 () Int)

(assert (=> d!61248 (>= lt!21340 0)))

(declare-fun e!51350 () Int)

(assert (=> d!61248 (= lt!21340 e!51350)))

(declare-fun c!23002 () Bool)

(assert (=> d!61248 (= c!23002 (is-Nil!770 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770))))))

(assert (=> d!61248 (= (size!944 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770))) lt!21340)))

(declare-fun b!93743 () Bool)

(assert (=> b!93743 (= e!51350 0)))

(declare-fun b!93744 () Bool)

(assert (=> b!93744 (= e!51350 (+ 1 (size!944 (t!51018 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770))))))))

(assert (= (and d!61248 c!23002) b!93743))

(assert (= (and d!61248 (not c!23002)) b!93744))

(declare-fun m!89385 () Bool)

(assert (=> b!93744 m!89385))

(assert (=> start!13816 d!61248))

(declare-fun d!61250 () Bool)

(declare-fun lt!21341 () Int)

(assert (=> d!61250 (>= lt!21341 0)))

(declare-fun e!51351 () Int)

(assert (=> d!61250 (= lt!21341 e!51351)))

(declare-fun c!23003 () Bool)

(assert (=> d!61250 (= c!23003 (is-Nil!770 (Cons!768 (S!74 lt!21335 0) lt!21336)))))

(assert (=> d!61250 (= (size!944 (Cons!768 (S!74 lt!21335 0) lt!21336)) lt!21341)))

(declare-fun b!93745 () Bool)

(assert (=> b!93745 (= e!51351 0)))

(declare-fun b!93746 () Bool)

(assert (=> b!93746 (= e!51351 (+ 1 (size!944 (t!51018 (Cons!768 (S!74 lt!21335 0) lt!21336)))))))

(assert (= (and d!61250 c!23003) b!93745))

(assert (= (and d!61250 (not c!23003)) b!93746))

(declare-fun m!89387 () Bool)

(assert (=> b!93746 m!89387))

(assert (=> start!13816 d!61250))

(push 1)

(assert (not b!93744))

(assert (not b!93746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61252 () Bool)

(declare-fun lt!21342 () Int)

(assert (=> d!61252 (>= lt!21342 0)))

(declare-fun e!51352 () Int)

(assert (=> d!61252 (= lt!21342 e!51352)))

(declare-fun c!23004 () Bool)

(assert (=> d!61252 (= c!23004 (is-Nil!770 (t!51018 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770)))))))

(assert (=> d!61252 (= (size!944 (t!51018 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770)))) lt!21342)))

(declare-fun b!93747 () Bool)

(assert (=> b!93747 (= e!51352 0)))

(declare-fun b!93748 () Bool)

(assert (=> b!93748 (= e!51352 (+ 1 (size!944 (t!51018 (t!51018 (Cons!768 (S!74 lt!21335 2000) (Cons!768 (S!74 (who!1152 lt!21337) (- 2000 (amount!1152 lt!21337))) Nil!770)))))))))

(assert (= (and d!61252 c!23004) b!93747))

(assert (= (and d!61252 (not c!23004)) b!93748))

(declare-fun m!89389 () Bool)

(assert (=> b!93748 m!89389))

(assert (=> b!93744 d!61252))

(declare-fun d!61254 () Bool)

(declare-fun lt!21343 () Int)

(assert (=> d!61254 (>= lt!21343 0)))

(declare-fun e!51353 () Int)

(assert (=> d!61254 (= lt!21343 e!51353)))

(declare-fun c!23005 () Bool)

(assert (=> d!61254 (= c!23005 (is-Nil!770 (t!51018 (Cons!768 (S!74 lt!21335 0) lt!21336))))))

(assert (=> d!61254 (= (size!944 (t!51018 (Cons!768 (S!74 lt!21335 0) lt!21336))) lt!21343)))

(declare-fun b!93749 () Bool)

(assert (=> b!93749 (= e!51353 0)))

(declare-fun b!93750 () Bool)

(assert (=> b!93750 (= e!51353 (+ 1 (size!944 (t!51018 (t!51018 (Cons!768 (S!74 lt!21335 0) lt!21336))))))))

(assert (= (and d!61254 c!23005) b!93749))

(assert (= (and d!61254 (not c!23005)) b!93750))

(declare-fun m!89391 () Bool)

(assert (=> b!93750 m!89391))

(assert (=> b!93746 d!61254))

(push 1)

(assert (not b!93748))

(assert (not b!93750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

