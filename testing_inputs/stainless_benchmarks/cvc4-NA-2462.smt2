; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13920 () Bool)

(assert start!13920)

(declare-fun res!49217 () Bool)

(declare-fun e!51356 () Bool)

(assert (=> start!13920 (=> res!49217 e!51356)))

(declare-datatypes () ((P!32 (Charlie!32) (Alice!32) (Bob!32))))

(declare-datatypes () ((S!83 (S!84 (who!1313 P!32) (amount!1313 Int)))))

(declare-datatypes () ((List!831 (Cons!769 (h!3207 S!83) (t!51301 List!831)) (Nil!771))))

(declare-fun lt!21348 () List!831)

(declare-fun lt!21349 () List!831)

(declare-fun size!945 (List!831) Int)

(assert (=> start!13920 (= res!49217 (> (size!945 lt!21348) (size!945 lt!21349)))))

(assert (=> start!13920 (= lt!21348 Nil!771)))

(assert (=> start!13920 (= lt!21349 Nil!771)))

(assert (=> start!13920 e!51356))

(declare-fun b!93755 () Bool)

(declare-fun res!49216 () Bool)

(assert (=> b!93755 (=> res!49216 e!51356)))

(declare-fun content!190 (List!831) (Set S!83))

(assert (=> b!93755 (= res!49216 (not (subset (content!190 lt!21348) (content!190 lt!21349))))))

(declare-fun b!93756 () Bool)

(declare-fun lambda!11175 () Int)

(declare-fun forall!73 (List!831 Int) Bool)

(assert (=> b!93756 (= e!51356 (not (forall!73 lt!21348 lambda!11175)))))

(assert (= (and start!13920 (not res!49217)) b!93755))

(assert (= (and b!93755 (not res!49216)) b!93756))

(declare-fun m!89393 () Bool)

(assert (=> start!13920 m!89393))

(declare-fun m!89395 () Bool)

(assert (=> start!13920 m!89395))

(declare-fun m!89397 () Bool)

(assert (=> b!93755 m!89397))

(declare-fun m!89399 () Bool)

(assert (=> b!93755 m!89399))

(declare-fun m!89401 () Bool)

(assert (=> b!93756 m!89401))

(push 1)

(assert (not b!93756))

(assert (not start!13920))

(assert (not b!93755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61256 () Bool)

(declare-fun res!49222 () Bool)

(declare-fun e!51361 () Bool)

(assert (=> d!61256 (=> res!49222 e!51361)))

(assert (=> d!61256 (= res!49222 (is-Nil!771 lt!21348))))

(assert (=> d!61256 (= (forall!73 lt!21348 lambda!11175) e!51361)))

(declare-fun b!93761 () Bool)

(declare-fun e!51362 () Bool)

(assert (=> b!93761 (= e!51361 e!51362)))

(declare-fun res!49223 () Bool)

(assert (=> b!93761 (=> (not res!49223) (not e!51362))))

(declare-fun dynLambda!1143 (Int S!83) Bool)

(assert (=> b!93761 (= res!49223 (dynLambda!1143 lambda!11175 (h!3207 lt!21348)))))

(declare-fun b!93762 () Bool)

(assert (=> b!93762 (= e!51362 (forall!73 (t!51301 lt!21348) lambda!11175))))

(assert (= (and d!61256 (not res!49222)) b!93761))

(assert (= (and b!93761 res!49223) b!93762))

(declare-fun b_lambda!18939 () Bool)

(assert (=> (not b_lambda!18939) (not b!93761)))

(declare-fun m!89403 () Bool)

(assert (=> b!93761 m!89403))

(declare-fun m!89405 () Bool)

(assert (=> b!93762 m!89405))

(assert (=> b!93756 d!61256))

(declare-fun d!61258 () Bool)

(declare-fun lt!21352 () Int)

(assert (=> d!61258 (>= lt!21352 0)))

(declare-fun e!51365 () Int)

(assert (=> d!61258 (= lt!21352 e!51365)))

(declare-fun c!23008 () Bool)

(assert (=> d!61258 (= c!23008 (is-Nil!771 lt!21348))))

(assert (=> d!61258 (= (size!945 lt!21348) lt!21352)))

(declare-fun b!93767 () Bool)

(assert (=> b!93767 (= e!51365 0)))

(declare-fun b!93768 () Bool)

(assert (=> b!93768 (= e!51365 (+ 1 (size!945 (t!51301 lt!21348))))))

(assert (= (and d!61258 c!23008) b!93767))

(assert (= (and d!61258 (not c!23008)) b!93768))

(declare-fun m!89407 () Bool)

(assert (=> b!93768 m!89407))

(assert (=> start!13920 d!61258))

(declare-fun d!61260 () Bool)

(declare-fun lt!21353 () Int)

(assert (=> d!61260 (>= lt!21353 0)))

(declare-fun e!51366 () Int)

(assert (=> d!61260 (= lt!21353 e!51366)))

(declare-fun c!23009 () Bool)

(assert (=> d!61260 (= c!23009 (is-Nil!771 lt!21349))))

(assert (=> d!61260 (= (size!945 lt!21349) lt!21353)))

(declare-fun b!93769 () Bool)

(assert (=> b!93769 (= e!51366 0)))

(declare-fun b!93770 () Bool)

(assert (=> b!93770 (= e!51366 (+ 1 (size!945 (t!51301 lt!21349))))))

(assert (= (and d!61260 c!23009) b!93769))

(assert (= (and d!61260 (not c!23009)) b!93770))

(declare-fun m!89409 () Bool)

(assert (=> b!93770 m!89409))

(assert (=> start!13920 d!61260))

(declare-fun d!61262 () Bool)

(declare-fun c!23012 () Bool)

(assert (=> d!61262 (= c!23012 (is-Nil!771 lt!21348))))

(declare-fun e!51369 () (Set S!83))

(assert (=> d!61262 (= (content!190 lt!21348) e!51369)))

(declare-fun b!93775 () Bool)

(assert (=> b!93775 (= e!51369 (as emptyset (Set S!83)))))

(declare-fun b!93776 () Bool)

(assert (=> b!93776 (= e!51369 (union (insert (h!3207 lt!21348) (as emptyset (Set S!83))) (content!190 (t!51301 lt!21348))))))

(assert (= (and d!61262 c!23012) b!93775))

(assert (= (and d!61262 (not c!23012)) b!93776))

(declare-fun m!89411 () Bool)

(assert (=> b!93776 m!89411))

(declare-fun m!89413 () Bool)

(assert (=> b!93776 m!89413))

(assert (=> b!93755 d!61262))

(declare-fun d!61264 () Bool)

(declare-fun c!23013 () Bool)

(assert (=> d!61264 (= c!23013 (is-Nil!771 lt!21349))))

(declare-fun e!51370 () (Set S!83))

(assert (=> d!61264 (= (content!190 lt!21349) e!51370)))

(declare-fun b!93777 () Bool)

(assert (=> b!93777 (= e!51370 (as emptyset (Set S!83)))))

(declare-fun b!93778 () Bool)

(assert (=> b!93778 (= e!51370 (union (insert (h!3207 lt!21349) (as emptyset (Set S!83))) (content!190 (t!51301 lt!21349))))))

(assert (= (and d!61264 c!23013) b!93777))

(assert (= (and d!61264 (not c!23013)) b!93778))

(declare-fun m!89415 () Bool)

(assert (=> b!93778 m!89415))

(declare-fun m!89417 () Bool)

(assert (=> b!93778 m!89417))

(assert (=> b!93755 d!61264))

(declare-fun b_lambda!18941 () Bool)

(assert (= b_lambda!18939 (or b!93756 b_lambda!18941)))

(declare-fun bs!42606 () Bool)

(declare-fun d!61266 () Bool)

(assert (= bs!42606 (and d!61266 b!93756)))

(assert (=> bs!42606 (= (dynLambda!1143 lambda!11175 (h!3207 lt!21348)) (>= (amount!1313 (h!3207 lt!21348)) 0))))

(assert (=> b!93761 d!61266))

(push 1)

(assert (not b!93768))

(assert (not b_lambda!18941))

(assert (not b!93770))

(assert (not b!93762))

(assert (not b!93778))

(assert (not b!93776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

