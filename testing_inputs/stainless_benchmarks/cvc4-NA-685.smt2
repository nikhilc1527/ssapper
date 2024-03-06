; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4860 () Bool)

(assert start!4860)

(declare-fun b!37845 () Bool)

(declare-fun b_free!2355 () Bool)

(declare-fun b_next!5593 () Bool)

(assert (=> b!37845 (= b_free!2355 (not b_next!5593))))

(declare-fun tp!7599 () Bool)

(declare-fun b_and!8341 () Bool)

(assert (=> b!37845 (= tp!7599 b_and!8341)))

(declare-fun b_free!2357 () Bool)

(declare-fun b_next!5595 () Bool)

(assert (=> b!37845 (= b_free!2357 (not b_next!5595))))

(declare-fun tp!7601 () Bool)

(declare-fun b_and!8343 () Bool)

(assert (=> b!37845 (= tp!7601 b_and!8343)))

(declare-fun b_free!2359 () Bool)

(declare-fun b_next!5597 () Bool)

(assert (=> b!37845 (= b_free!2359 (not b_next!5597))))

(declare-fun tp!7602 () Bool)

(declare-fun b_and!8345 () Bool)

(assert (=> b!37845 (= tp!7602 b_and!8345)))

(declare-fun b!37839 () Bool)

(declare-fun b_free!2361 () Bool)

(declare-fun b_next!5599 () Bool)

(assert (=> b!37839 (= b_free!2361 (not b_next!5599))))

(declare-fun tp!7603 () Bool)

(declare-fun b_and!8347 () Bool)

(assert (=> b!37839 (= tp!7603 b_and!8347)))

(declare-fun b_free!2363 () Bool)

(declare-fun b_next!5601 () Bool)

(assert (=> b!37839 (= b_free!2363 (not b_next!5601))))

(declare-fun tp!7598 () Bool)

(declare-fun b_and!8349 () Bool)

(assert (=> b!37839 (= tp!7598 b_and!8349)))

(declare-fun b_free!2365 () Bool)

(declare-fun b_next!5603 () Bool)

(assert (=> b!37839 (= b_free!2365 (not b_next!5603))))

(declare-fun tp!7600 () Bool)

(declare-fun b_and!8351 () Bool)

(assert (=> b!37839 (= tp!7600 b_and!8351)))

(declare-fun b!37843 () Bool)

(assert (=> b!37843 true))

(assert (=> b!37843 true))

(declare-fun b_next!5605 () Bool)

(declare-datatypes () ((Nat!46 (Zero!30) (Succ!27 (n!1111 Nat!46)))))

(declare-datatypes () ((tuple2!170 (tuple2!171 (_1!111 Nat!46) (_2!111 Nat!46)))))

(declare-datatypes () ((RAEqEvidence!40 (RAEqEvidence!41 (x!13106 Int) (y!1359 Int) (evidence!472 Int)))))

(declare-fun x$103!3 () RAEqEvidence!40)

(declare-fun lambda!4331 () Int)

(assert (=> b!37845 (= b_next!5593 (or (and b!37843 (= lambda!4331 (x!13106 x$103!3))) b_next!5605))))

(declare-fun b_next!5607 () Bool)

(assert (=> b!37845 (= b_next!5595 (or (and b!37843 (= lambda!4331 (y!1359 x$103!3))) b_next!5607))))

(declare-fun b_next!5609 () Bool)

(declare-fun x$104!2 () RAEqEvidence!40)

(assert (=> b!37839 (= b_next!5599 (or (and b!37843 (= lambda!4331 (x!13106 x$104!2))) b_next!5609))))

(declare-fun b_next!5611 () Bool)

(assert (=> b!37839 (= b_next!5601 (or (and b!37843 (= lambda!4331 (y!1359 x$104!2))) b_next!5611))))

(declare-fun m!39077 () Bool)

(assert (=> b!37843 m!39077))

(declare-fun lambda!4332 () Int)

(declare-fun dynLambda!678 (Int) Bool)

(assert (=> (and b!37845 b!37843 (= (dynLambda!678 lambda!4332) (dynLambda!678 (evidence!472 x$103!3)))) (= lambda!4332 (evidence!472 x$103!3))))

(assert (=> (and b!37839 b!37843 (= (dynLambda!678 lambda!4332) (dynLambda!678 (evidence!472 x$104!2)))) (= lambda!4332 (evidence!472 x$104!2))))

(declare-fun b_next!5613 () Bool)

(assert (=> b!37845 (= b_next!5597 (or (and b!37843 (= lambda!4332 (evidence!472 x$103!3))) b_next!5613))))

(declare-fun b_next!5615 () Bool)

(assert (=> b!37839 (= b_next!5603 (or (and b!37843 (= lambda!4332 (evidence!472 x$104!2))) b_next!5615))))

(declare-fun bs!11561 () Bool)

(declare-fun b!37842 () Bool)

(assert (= bs!11561 (and b!37842 b!37843)))

(declare-fun lambda!4333 () Int)

(assert (=> bs!11561 (not (= lambda!4333 lambda!4331))))

(assert (=> b!37842 true))

(assert (=> b!37842 true))

(declare-fun dynLambda!679 (Int) tuple2!170)

(assert (=> (and b!37845 b!37842 (= (dynLambda!679 lambda!4333) (dynLambda!679 (x!13106 x$103!3)))) (= lambda!4333 (x!13106 x$103!3))))

(assert (=> (and b!37845 b!37842 (= (dynLambda!679 lambda!4333) (dynLambda!679 (y!1359 x$103!3)))) (= lambda!4333 (y!1359 x$103!3))))

(assert (=> (and b!37839 b!37842 (= (dynLambda!679 lambda!4333) (dynLambda!679 (x!13106 x$104!2)))) (= lambda!4333 (x!13106 x$104!2))))

(assert (=> (and b!37839 b!37842 (= (dynLambda!679 lambda!4333) (dynLambda!679 (y!1359 x$104!2)))) (= lambda!4333 (y!1359 x$104!2))))

(declare-fun b_next!5617 () Bool)

(assert (=> b!37845 (= b_next!5605 (or (and b!37842 (= lambda!4333 (x!13106 x$103!3))) b_next!5617))))

(declare-fun b_next!5619 () Bool)

(assert (=> b!37845 (= b_next!5607 (or (and b!37842 (= lambda!4333 (y!1359 x$103!3))) b_next!5619))))

(declare-fun b_next!5621 () Bool)

(assert (=> b!37839 (= b_next!5609 (or (and b!37842 (= lambda!4333 (x!13106 x$104!2))) b_next!5621))))

(declare-fun b_next!5623 () Bool)

(assert (=> b!37839 (= b_next!5611 (or (and b!37842 (= lambda!4333 (y!1359 x$104!2))) b_next!5623))))

(declare-fun b!37838 () Bool)

(declare-fun res!18041 () Bool)

(declare-fun e!19463 () Bool)

(assert (=> b!37838 (=> (not res!18041) (not e!19463))))

(declare-fun remainder!2 () Nat!46)

(declare-fun p1!72 () Nat!46)

(declare-fun x$98!1 () tuple2!170)

(assert (=> b!37838 (= res!18041 (and (= p1!72 (_1!111 x$98!1)) (= remainder!2 (_2!111 x$98!1))))))

(declare-fun e!19464 () Bool)

(assert (=> b!37839 (= e!19464 (and tp!7603 tp!7598 tp!7600))))

(declare-fun b!37840 () Bool)

(declare-fun res!18044 () Bool)

(assert (=> b!37840 (=> (not res!18044) (not e!19463))))

(declare-fun p2!66 () Nat!46)

(declare-fun /!2 (Nat!46 Nat!46) Nat!46)

(declare-fun -!4 (Nat!46 Nat!46) Nat!46)

(assert (=> b!37840 (= res!18044 (= p2!66 (/!2 (-!4 remainder!2 (Succ!27 Zero!30)) (Succ!27 (Succ!27 Zero!30)))))))

(declare-fun b!37841 () Bool)

(declare-fun that!1442 () Nat!46)

(declare-fun >!2 (Nat!46 Nat!46) Bool)

(assert (=> b!37841 (= e!19463 (not (>!2 that!1442 Zero!30)))))

(declare-fun res!18042 () Bool)

(assert (=> b!37842 (=> (not res!18042) (not e!19463))))

(assert (=> b!37842 (= res!18042 (= x$103!3 (RAEqEvidence!41 lambda!4333 lambda!4333 lambda!4332)))))

(declare-fun res!18047 () Bool)

(assert (=> start!4860 (=> (not res!18047) (not e!19463))))

(declare-fun n2!332 () Nat!46)

(declare-fun n1!316 () Nat!46)

(declare-fun log2_and_remainder!0 (Nat!46) tuple2!170)

(declare-fun pair!0 (Nat!46 Nat!46) Nat!46)

(assert (=> start!4860 (= res!18047 (= x$98!1 (tuple2!171 (_1!111 (log2_and_remainder!0 (Succ!27 (pair!0 n1!316 n2!332)))) (_2!111 (log2_and_remainder!0 (Succ!27 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!4860 e!19463))

(assert (=> start!4860 true))

(declare-fun e!19462 () Bool)

(declare-fun inv!669 (RAEqEvidence!40) Bool)

(assert (=> start!4860 (and (inv!669 x$103!3) e!19462)))

(assert (=> start!4860 (and (inv!669 x$104!2) e!19464)))

(declare-fun res!18046 () Bool)

(assert (=> b!37843 (=> (not res!18046) (not e!19463))))

(assert (=> b!37843 (= res!18046 (= x$104!2 (RAEqEvidence!41 lambda!4331 lambda!4331 lambda!4332)))))

(declare-fun b!37844 () Bool)

(declare-fun res!18045 () Bool)

(assert (=> b!37844 (=> (not res!18045) (not e!19463))))

(declare-fun thiss!6216 () Nat!46)

(assert (=> b!37844 (= res!18045 (= thiss!6216 (-!4 remainder!2 (Succ!27 Zero!30))))))

(assert (=> b!37845 (= e!19462 (and tp!7599 tp!7601 tp!7602))))

(declare-fun b!37846 () Bool)

(declare-fun res!18043 () Bool)

(assert (=> b!37846 (=> (not res!18043) (not e!19463))))

(assert (=> b!37846 (= res!18043 (= that!1442 (Succ!27 (Succ!27 Zero!30))))))

(assert (= (and start!4860 res!18047) b!37838))

(assert (= (and b!37838 res!18041) b!37840))

(assert (= (and b!37840 res!18044) b!37843))

(assert (= (and b!37843 res!18046) b!37842))

(assert (= (and b!37842 res!18042) b!37844))

(assert (= (and b!37844 res!18045) b!37846))

(assert (= (and b!37846 res!18043) b!37841))

(assert (= start!4860 b!37845))

(assert (= start!4860 b!37839))

(declare-fun m!39079 () Bool)

(assert (=> b!37840 m!39079))

(assert (=> b!37840 m!39079))

(declare-fun m!39081 () Bool)

(assert (=> b!37840 m!39081))

(declare-fun m!39083 () Bool)

(assert (=> b!37841 m!39083))

(declare-fun m!39085 () Bool)

(assert (=> start!4860 m!39085))

(declare-fun m!39087 () Bool)

(assert (=> start!4860 m!39087))

(declare-fun m!39089 () Bool)

(assert (=> start!4860 m!39089))

(declare-fun m!39091 () Bool)

(assert (=> start!4860 m!39091))

(assert (=> b!37844 m!39079))

(push 1)

(assert (not b!37844))

(assert b_and!8347)

(assert b_and!8343)

(assert (not b!37840))

(assert (not b!37841))

(assert (not b_next!5619))

(assert b_and!8349)

(assert (not b_next!5615))

(assert (not b!37842))

(assert (not b!37843))

(assert b_and!8341)

(assert b_and!8345)

(assert (not start!4860))

(assert (not b_next!5621))

(assert b_and!8351)

(assert (not b_next!5623))

(assert (not b_next!5617))

(assert (not b_next!5613))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8347)

(assert b_and!8343)

(assert (not b_next!5619))

(assert b_and!8349)

(assert (not b_next!5615))

(assert b_and!8341)

(assert b_and!8345)

(assert (not b_next!5621))

(assert b_and!8351)

(assert (not b_next!5623))

(assert (not b_next!5617))

(assert (not b_next!5613))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!37859 () Bool)

(declare-fun e!19472 () Nat!46)

(assert (=> b!37859 (= e!19472 Zero!30)))

(declare-fun b!37860 () Bool)

(declare-fun res!18055 () Bool)

(declare-fun e!19471 () Bool)

(assert (=> b!37860 (=> res!18055 e!19471)))

(assert (=> b!37860 (= res!18055 (not (>!2 (Succ!27 (Succ!27 Zero!30)) (Succ!27 Zero!30))))))

(declare-fun b!37861 () Bool)

(declare-fun e!19473 () Bool)

(assert (=> b!37861 (= e!19473 e!19471)))

(declare-fun res!18056 () Bool)

(assert (=> b!37861 (=> res!18056 e!19471)))

(assert (=> b!37861 (= res!18056 (not (>!2 (-!4 remainder!2 (Succ!27 Zero!30)) Zero!30)))))

(declare-fun d!18920 () Bool)

(assert (=> d!18920 e!19473))

(declare-fun res!18057 () Bool)

(assert (=> d!18920 (=> (not res!18057) (not e!19473))))

(declare-fun lt!7517 () Nat!46)

(declare-fun repr!0 (Nat!46) Int)

(assert (=> d!18920 (= res!18057 (<= (repr!0 lt!7517) (repr!0 (-!4 remainder!2 (Succ!27 Zero!30)))))))

(assert (=> d!18920 (= lt!7517 e!19472)))

(declare-fun c!8228 () Bool)

(declare-fun <!2 (Nat!46 Nat!46) Bool)

(assert (=> d!18920 (= c!8228 (<!2 (-!4 remainder!2 (Succ!27 Zero!30)) (Succ!27 (Succ!27 Zero!30))))))

(assert (=> d!18920 (>!2 (Succ!27 (Succ!27 Zero!30)) Zero!30)))

(assert (=> d!18920 (= (/!2 (-!4 remainder!2 (Succ!27 Zero!30)) (Succ!27 (Succ!27 Zero!30))) lt!7517)))

(declare-fun b!37862 () Bool)

(assert (=> b!37862 (= e!19471 (< (repr!0 lt!7517) (repr!0 (-!4 remainder!2 (Succ!27 Zero!30)))))))

(declare-fun b!37863 () Bool)

(assert (=> b!37863 (= e!19472 (Succ!27 (/!2 (-!4 (-!4 remainder!2 (Succ!27 Zero!30)) (Succ!27 (Succ!27 Zero!30))) (Succ!27 (Succ!27 Zero!30)))))))

(assert (= (and d!18920 c!8228) b!37859))

(assert (= (and d!18920 (not c!8228)) b!37863))

(assert (= (and d!18920 res!18057) b!37861))

(assert (= (and b!37861 (not res!18056)) b!37860))

(assert (= (and b!37860 (not res!18055)) b!37862))

(declare-fun m!39093 () Bool)

(assert (=> b!37862 m!39093))

(assert (=> b!37862 m!39079))

(declare-fun m!39095 () Bool)

(assert (=> b!37862 m!39095))

(assert (=> b!37863 m!39079))

(declare-fun m!39097 () Bool)

(assert (=> b!37863 m!39097))

(assert (=> b!37863 m!39097))

(declare-fun m!39099 () Bool)

(assert (=> b!37863 m!39099))

(assert (=> d!18920 m!39093))

(assert (=> d!18920 m!39079))

(assert (=> d!18920 m!39095))

(assert (=> d!18920 m!39079))

(declare-fun m!39101 () Bool)

(assert (=> d!18920 m!39101))

(declare-fun m!39103 () Bool)

(assert (=> d!18920 m!39103))

(assert (=> b!37861 m!39079))

(declare-fun m!39105 () Bool)

(assert (=> b!37861 m!39105))

(declare-fun m!39107 () Bool)

(assert (=> b!37860 m!39107))

(assert (=> b!37840 d!18920))

(declare-fun b!37874 () Bool)

(declare-fun e!19480 () Nat!46)

(assert (=> b!37874 (= e!19480 (-!4 (n!1111 remainder!2) (n!1111 (Succ!27 Zero!30))))))

(declare-fun b!37875 () Bool)

(declare-fun res!18067 () Bool)

(declare-fun e!19481 () Bool)

(assert (=> b!37875 (=> res!18067 e!19481)))

(assert (=> b!37875 (= res!18067 (not (>!2 (Succ!27 Zero!30) Zero!30)))))

(declare-fun d!18922 () Bool)

(declare-fun e!19482 () Bool)

(assert (=> d!18922 e!19482))

(declare-fun res!18066 () Bool)

(assert (=> d!18922 (=> (not res!18066) (not e!19482))))

(declare-fun lt!7520 () Nat!46)

(assert (=> d!18922 (= res!18066 (<= (repr!0 lt!7520) (repr!0 remainder!2)))))

(assert (=> d!18922 (= lt!7520 e!19480)))

(declare-fun c!8231 () Bool)

(assert (=> d!18922 (= c!8231 (and (is-Succ!27 remainder!2) (is-Succ!27 (Succ!27 Zero!30))))))

(assert (=> d!18922 (= (-!4 remainder!2 (Succ!27 Zero!30)) lt!7520)))

(declare-fun b!37876 () Bool)

(assert (=> b!37876 (= e!19482 e!19481)))

(declare-fun res!18065 () Bool)

(assert (=> b!37876 (=> res!18065 e!19481)))

(assert (=> b!37876 (= res!18065 (not (>!2 remainder!2 Zero!30)))))

(declare-fun b!37877 () Bool)

(assert (=> b!37877 (= e!19480 remainder!2)))

(declare-fun b!37878 () Bool)

(assert (=> b!37878 (= e!19481 (< (repr!0 lt!7520) (repr!0 remainder!2)))))

(assert (= (and d!18922 c!8231) b!37874))

(assert (= (and d!18922 (not c!8231)) b!37877))

(assert (= (and d!18922 res!18066) b!37876))

(assert (= (and b!37876 (not res!18065)) b!37875))

(assert (= (and b!37875 (not res!18067)) b!37878))

(declare-fun m!39109 () Bool)

(assert (=> b!37875 m!39109))

(declare-fun m!39111 () Bool)

(assert (=> b!37874 m!39111))

(declare-fun m!39113 () Bool)

(assert (=> d!18922 m!39113))

(declare-fun m!39115 () Bool)

(assert (=> d!18922 m!39115))

(declare-fun m!39117 () Bool)

(assert (=> b!37876 m!39117))

(assert (=> b!37878 m!39113))

(assert (=> b!37878 m!39115))

(assert (=> b!37840 d!18922))

(declare-fun d!18924 () Bool)

(declare-fun res!18070 () Bool)

(declare-fun e!19485 () Bool)

(assert (=> d!18924 (=> (not res!18070) (not e!19485))))

(assert (=> d!18924 (= res!18070 (not (<!2 that!1442 Zero!30)))))

(assert (=> d!18924 (= (>!2 that!1442 Zero!30) e!19485)))

(declare-fun b!37881 () Bool)

(assert (=> b!37881 (= e!19485 (not (= that!1442 Zero!30)))))

(assert (= (and d!18924 res!18070) b!37881))

(declare-fun m!39119 () Bool)

(assert (=> d!18924 m!39119))

(assert (=> b!37841 d!18924))

(declare-fun d!18926 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!18926 (= trivial!1 true)))

(assert (=> b!37842 d!18926))

(assert (=> b!37843 d!18926))

(declare-fun d!18928 () Bool)

(declare-fun c!8234 () Bool)

(declare-fun e!19491 () Bool)

(assert (=> d!18928 (= c!8234 e!19491)))

(declare-fun res!18073 () Bool)

(assert (=> d!18928 (=> (not res!18073) (not e!19491))))

(declare-fun isEven!1 (Nat!46) Bool)

(assert (=> d!18928 (= res!18073 (isEven!1 (Succ!27 (pair!0 n1!316 n2!332))))))

(declare-fun e!19490 () tuple2!170)

(assert (=> d!18928 (= (log2_and_remainder!0 (Succ!27 (pair!0 n1!316 n2!332))) e!19490)))

(declare-fun b!37891 () Bool)

(assert (=> b!37891 (= e!19491 (>!2 (Succ!27 (pair!0 n1!316 n2!332)) Zero!30))))

(declare-fun b!37889 () Bool)

(assert (=> b!37889 (= e!19490 (tuple2!171 (Succ!27 (_1!111 (log2_and_remainder!0 (/!2 (Succ!27 (pair!0 n1!316 n2!332)) (Succ!27 (Succ!27 Zero!30)))))) (_2!111 (log2_and_remainder!0 (/!2 (Succ!27 (pair!0 n1!316 n2!332)) (Succ!27 (Succ!27 Zero!30)))))))))

(declare-fun b!37890 () Bool)

(assert (=> b!37890 (= e!19490 (tuple2!171 Zero!30 (Succ!27 (pair!0 n1!316 n2!332))))))

(assert (= (and d!18928 res!18073) b!37891))

(assert (= (and d!18928 c!8234) b!37889))

(assert (= (and d!18928 (not c!8234)) b!37890))

(declare-fun m!39121 () Bool)

(assert (=> d!18928 m!39121))

(declare-fun m!39123 () Bool)

(assert (=> b!37891 m!39123))

(declare-fun m!39125 () Bool)

(assert (=> b!37889 m!39125))

(assert (=> b!37889 m!39125))

(declare-fun m!39127 () Bool)

(assert (=> b!37889 m!39127))

(assert (=> start!4860 d!18928))

(declare-fun d!18930 () Bool)

(declare-fun *!4 (Nat!46 Nat!46) Nat!46)

(declare-fun pow!0 (Nat!46 Nat!46) Nat!46)

(declare-fun +!5 (Nat!46 Nat!46) Nat!46)

(assert (=> d!18930 (= (pair!0 n1!316 n2!332) (-!4 (*!4 (pow!0 (Succ!27 (Succ!27 Zero!30)) n1!316) (+!5 (*!4 (Succ!27 (Succ!27 Zero!30)) n2!332) (Succ!27 Zero!30))) (Succ!27 Zero!30)))))

(declare-fun bs!11562 () Bool)

(assert (= bs!11562 d!18930))

(declare-fun m!39129 () Bool)

(assert (=> bs!11562 m!39129))

(declare-fun m!39131 () Bool)

(assert (=> bs!11562 m!39131))

(declare-fun m!39133 () Bool)

(assert (=> bs!11562 m!39133))

(assert (=> bs!11562 m!39129))

(assert (=> bs!11562 m!39133))

(declare-fun m!39135 () Bool)

(assert (=> bs!11562 m!39135))

(declare-fun m!39137 () Bool)

(assert (=> bs!11562 m!39137))

(assert (=> bs!11562 m!39137))

(assert (=> bs!11562 m!39131))

(assert (=> start!4860 d!18930))

(declare-fun d!18932 () Bool)

(assert (=> d!18932 (= (inv!669 x$103!3) (= (dynLambda!679 (x!13106 x$103!3)) (dynLambda!679 (y!1359 x$103!3))))))

(declare-fun b_lambda!9991 () Bool)

(assert (=> (not b_lambda!9991) (not d!18932)))

(declare-fun t!5282 () Bool)

(declare-fun tb!4461 () Bool)

(assert (=> (and b!37845 (= (x!13106 x$103!3) (x!13106 x$103!3)) t!5282) tb!4461))

(declare-fun result!4737 () Bool)

(assert (=> tb!4461 (= result!4737 true)))

(assert (=> d!18932 t!5282))

(declare-fun b_and!8353 () Bool)

(assert (= b_and!8341 (and (=> t!5282 result!4737) b_and!8353)))

(declare-fun t!5284 () Bool)

(declare-fun tb!4463 () Bool)

(assert (=> (and b!37845 (= (y!1359 x$103!3) (x!13106 x$103!3)) t!5284) tb!4463))

(declare-fun result!4739 () Bool)

(assert (=> tb!4463 (= result!4739 true)))

(assert (=> d!18932 t!5284))

(declare-fun b_and!8355 () Bool)

(assert (= b_and!8343 (and (=> t!5284 result!4739) b_and!8355)))

(declare-fun t!5286 () Bool)

(declare-fun tb!4465 () Bool)

(assert (=> (and b!37839 (= (x!13106 x$104!2) (x!13106 x$103!3)) t!5286) tb!4465))

(declare-fun result!4741 () Bool)

(assert (=> tb!4465 (= result!4741 true)))

(assert (=> d!18932 t!5286))

(declare-fun b_and!8357 () Bool)

(assert (= b_and!8347 (and (=> t!5286 result!4741) b_and!8357)))

(declare-fun t!5288 () Bool)

(declare-fun tb!4467 () Bool)

(assert (=> (and b!37839 (= (y!1359 x$104!2) (x!13106 x$103!3)) t!5288) tb!4467))

(declare-fun result!4743 () Bool)

(assert (=> tb!4467 (= result!4743 true)))

(assert (=> d!18932 t!5288))

(declare-fun b_and!8359 () Bool)

(assert (= b_and!8349 (and (=> t!5288 result!4743) b_and!8359)))

(declare-fun b_lambda!9993 () Bool)

(assert (=> (not b_lambda!9993) (not d!18932)))

(declare-fun t!5290 () Bool)

(declare-fun tb!4469 () Bool)

(assert (=> (and b!37845 (= (x!13106 x$103!3) (y!1359 x$103!3)) t!5290) tb!4469))

(declare-fun result!4745 () Bool)

(assert (=> tb!4469 (= result!4745 true)))

(assert (=> d!18932 t!5290))

(declare-fun b_and!8361 () Bool)

(assert (= b_and!8353 (and (=> t!5290 result!4745) b_and!8361)))

(declare-fun t!5292 () Bool)

(declare-fun tb!4471 () Bool)

(assert (=> (and b!37845 (= (y!1359 x$103!3) (y!1359 x$103!3)) t!5292) tb!4471))

(declare-fun result!4747 () Bool)

(assert (=> tb!4471 (= result!4747 true)))

(assert (=> d!18932 t!5292))

(declare-fun b_and!8363 () Bool)

(assert (= b_and!8355 (and (=> t!5292 result!4747) b_and!8363)))

(declare-fun t!5294 () Bool)

(declare-fun tb!4473 () Bool)

(assert (=> (and b!37839 (= (x!13106 x$104!2) (y!1359 x$103!3)) t!5294) tb!4473))

(declare-fun result!4749 () Bool)

(assert (=> tb!4473 (= result!4749 true)))

(assert (=> d!18932 t!5294))

(declare-fun b_and!8365 () Bool)

(assert (= b_and!8357 (and (=> t!5294 result!4749) b_and!8365)))

(declare-fun t!5296 () Bool)

(declare-fun tb!4475 () Bool)

(assert (=> (and b!37839 (= (y!1359 x$104!2) (y!1359 x$103!3)) t!5296) tb!4475))

(declare-fun result!4751 () Bool)

(assert (=> tb!4475 (= result!4751 true)))

(assert (=> d!18932 t!5296))

(declare-fun b_and!8367 () Bool)

(assert (= b_and!8359 (and (=> t!5296 result!4751) b_and!8367)))

(declare-fun m!39139 () Bool)

(assert (=> d!18932 m!39139))

(declare-fun m!39141 () Bool)

(assert (=> d!18932 m!39141))

(assert (=> start!4860 d!18932))

(declare-fun d!18934 () Bool)

(assert (=> d!18934 (= (inv!669 x$104!2) (= (dynLambda!679 (x!13106 x$104!2)) (dynLambda!679 (y!1359 x$104!2))))))

(declare-fun b_lambda!9995 () Bool)

(assert (=> (not b_lambda!9995) (not d!18934)))

(declare-fun tb!4477 () Bool)

(declare-fun t!5298 () Bool)

(assert (=> (and b!37845 (= (x!13106 x$103!3) (x!13106 x$104!2)) t!5298) tb!4477))

(declare-fun result!4753 () Bool)

(assert (=> tb!4477 (= result!4753 true)))

(assert (=> d!18934 t!5298))

(declare-fun b_and!8369 () Bool)

(assert (= b_and!8361 (and (=> t!5298 result!4753) b_and!8369)))

(declare-fun t!5300 () Bool)

(declare-fun tb!4479 () Bool)

(assert (=> (and b!37845 (= (y!1359 x$103!3) (x!13106 x$104!2)) t!5300) tb!4479))

(declare-fun result!4755 () Bool)

(assert (=> tb!4479 (= result!4755 true)))

(assert (=> d!18934 t!5300))

(declare-fun b_and!8371 () Bool)

(assert (= b_and!8363 (and (=> t!5300 result!4755) b_and!8371)))

(declare-fun t!5302 () Bool)

(declare-fun tb!4481 () Bool)

(assert (=> (and b!37839 (= (x!13106 x$104!2) (x!13106 x$104!2)) t!5302) tb!4481))

(declare-fun result!4757 () Bool)

(assert (=> tb!4481 (= result!4757 true)))

(assert (=> d!18934 t!5302))

(declare-fun b_and!8373 () Bool)

(assert (= b_and!8365 (and (=> t!5302 result!4757) b_and!8373)))

(declare-fun t!5304 () Bool)

(declare-fun tb!4483 () Bool)

(assert (=> (and b!37839 (= (y!1359 x$104!2) (x!13106 x$104!2)) t!5304) tb!4483))

(declare-fun result!4759 () Bool)

(assert (=> tb!4483 (= result!4759 true)))

(assert (=> d!18934 t!5304))

(declare-fun b_and!8375 () Bool)

(assert (= b_and!8367 (and (=> t!5304 result!4759) b_and!8375)))

(declare-fun b_lambda!9997 () Bool)

(assert (=> (not b_lambda!9997) (not d!18934)))

(declare-fun t!5306 () Bool)

(declare-fun tb!4485 () Bool)

(assert (=> (and b!37845 (= (x!13106 x$103!3) (y!1359 x$104!2)) t!5306) tb!4485))

(declare-fun result!4761 () Bool)

(assert (=> tb!4485 (= result!4761 true)))

(assert (=> d!18934 t!5306))

(declare-fun b_and!8377 () Bool)

(assert (= b_and!8369 (and (=> t!5306 result!4761) b_and!8377)))

(declare-fun t!5308 () Bool)

(declare-fun tb!4487 () Bool)

(assert (=> (and b!37845 (= (y!1359 x$103!3) (y!1359 x$104!2)) t!5308) tb!4487))

(declare-fun result!4763 () Bool)

(assert (=> tb!4487 (= result!4763 true)))

(assert (=> d!18934 t!5308))

(declare-fun b_and!8379 () Bool)

(assert (= b_and!8371 (and (=> t!5308 result!4763) b_and!8379)))

(declare-fun t!5310 () Bool)

(declare-fun tb!4489 () Bool)

(assert (=> (and b!37839 (= (x!13106 x$104!2) (y!1359 x$104!2)) t!5310) tb!4489))

(declare-fun result!4765 () Bool)

(assert (=> tb!4489 (= result!4765 true)))

(assert (=> d!18934 t!5310))

(declare-fun b_and!8381 () Bool)

(assert (= b_and!8373 (and (=> t!5310 result!4765) b_and!8381)))

(declare-fun t!5312 () Bool)

(declare-fun tb!4491 () Bool)

(assert (=> (and b!37839 (= (y!1359 x$104!2) (y!1359 x$104!2)) t!5312) tb!4491))

(declare-fun result!4767 () Bool)

(assert (=> tb!4491 (= result!4767 true)))

(assert (=> d!18934 t!5312))

(declare-fun b_and!8383 () Bool)

(assert (= b_and!8375 (and (=> t!5312 result!4767) b_and!8383)))

(declare-fun m!39143 () Bool)

(assert (=> d!18934 m!39143))

(declare-fun m!39145 () Bool)

(assert (=> d!18934 m!39145))

(assert (=> start!4860 d!18934))

(assert (=> b!37844 d!18922))

(declare-fun b_lambda!9999 () Bool)

(assert (= b_lambda!9997 (or (and b!37843 (= lambda!4331 (y!1359 x$104!2))) (and b!37845 b_free!2357 (= (y!1359 x$103!3) (y!1359 x$104!2))) (and b!37839 b_free!2363) (and b!37842 (= lambda!4333 (y!1359 x$104!2))) (and b!37839 b_free!2361 (= (x!13106 x$104!2) (y!1359 x$104!2))) (and b!37845 b_free!2355 (= (x!13106 x$103!3) (y!1359 x$104!2))) b_lambda!9999)))

(declare-fun bs!11563 () Bool)

(declare-fun d!18936 () Bool)

(assert (= bs!11563 (and d!18936 b!37843)))

(declare-fun project!0 (Nat!46) tuple2!170)

(assert (=> bs!11563 (= (dynLambda!679 lambda!4331) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11563 m!39085))

(assert (=> bs!11563 m!39085))

(declare-fun m!39147 () Bool)

(assert (=> bs!11563 m!39147))

(assert (=> (and b!37843 (= lambda!4331 (y!1359 x$104!2)) d!18934) d!18936))

(declare-fun bs!11564 () Bool)

(declare-fun d!18938 () Bool)

(assert (= bs!11564 (and d!18938 b!37842)))

(assert (=> bs!11564 (= (dynLambda!679 lambda!4333) (tuple2!171 p1!72 p2!66))))

(assert (=> (and b!37842 (= lambda!4333 (y!1359 x$104!2)) d!18934) d!18938))

(declare-fun b_lambda!10001 () Bool)

(assert (= b_lambda!9993 (or (and b!37845 b_free!2355 (= (x!13106 x$103!3) (y!1359 x$103!3))) (and b!37845 b_free!2357) (and b!37839 b_free!2363 (= (y!1359 x$104!2) (y!1359 x$103!3))) (and b!37842 (= lambda!4333 (y!1359 x$103!3))) (and b!37843 (= lambda!4331 (y!1359 x$103!3))) (and b!37839 b_free!2361 (= (x!13106 x$104!2) (y!1359 x$103!3))) b_lambda!10001)))

(declare-fun bs!11565 () Bool)

(declare-fun d!18940 () Bool)

(assert (= bs!11565 (and d!18940 b!37842)))

(assert (=> bs!11565 (= (dynLambda!679 lambda!4333) (tuple2!171 p1!72 p2!66))))

(assert (=> (and b!37842 (= lambda!4333 (y!1359 x$103!3)) d!18932) d!18940))

(declare-fun bs!11566 () Bool)

(declare-fun d!18942 () Bool)

(assert (= bs!11566 (and d!18942 b!37843)))

(assert (=> bs!11566 (= (dynLambda!679 lambda!4331) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11566 m!39085))

(assert (=> bs!11566 m!39085))

(assert (=> bs!11566 m!39147))

(assert (=> (and b!37843 (= lambda!4331 (y!1359 x$103!3)) d!18932) d!18942))

(declare-fun b_lambda!10003 () Bool)

(assert (= b_lambda!9995 (or (and b!37845 b_free!2355 (= (x!13106 x$103!3) (x!13106 x$104!2))) (and b!37843 (= lambda!4331 (x!13106 x$104!2))) (and b!37845 b_free!2357 (= (y!1359 x$103!3) (x!13106 x$104!2))) (and b!37839 b_free!2363 (= (y!1359 x$104!2) (x!13106 x$104!2))) (and b!37839 b_free!2361) (and b!37842 (= lambda!4333 (x!13106 x$104!2))) b_lambda!10003)))

(declare-fun bs!11567 () Bool)

(declare-fun d!18944 () Bool)

(assert (= bs!11567 (and d!18944 b!37842)))

(assert (=> bs!11567 (= (dynLambda!679 lambda!4333) (tuple2!171 p1!72 p2!66))))

(assert (=> (and b!37842 (= lambda!4333 (x!13106 x$104!2)) d!18934) d!18944))

(declare-fun bs!11568 () Bool)

(declare-fun d!18946 () Bool)

(assert (= bs!11568 (and d!18946 b!37843)))

(assert (=> bs!11568 (= (dynLambda!679 lambda!4331) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11568 m!39085))

(assert (=> bs!11568 m!39085))

(assert (=> bs!11568 m!39147))

(assert (=> (and b!37843 (= lambda!4331 (x!13106 x$104!2)) d!18934) d!18946))

(declare-fun b_lambda!10005 () Bool)

(assert (= b_lambda!9991 (or (and b!37845 b_free!2355) (and b!37842 (= lambda!4333 (x!13106 x$103!3))) (and b!37839 b_free!2363 (= (y!1359 x$104!2) (x!13106 x$103!3))) (and b!37839 b_free!2361 (= (x!13106 x$104!2) (x!13106 x$103!3))) (and b!37843 (= lambda!4331 (x!13106 x$103!3))) (and b!37845 b_free!2357 (= (y!1359 x$103!3) (x!13106 x$103!3))) b_lambda!10005)))

(declare-fun bs!11569 () Bool)

(declare-fun d!18948 () Bool)

(assert (= bs!11569 (and d!18948 b!37843)))

(assert (=> bs!11569 (= (dynLambda!679 lambda!4331) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11569 m!39085))

(assert (=> bs!11569 m!39085))

(assert (=> bs!11569 m!39147))

(assert (=> (and b!37843 (= lambda!4331 (x!13106 x$103!3)) d!18932) d!18948))

(declare-fun bs!11570 () Bool)

(declare-fun d!18950 () Bool)

(assert (= bs!11570 (and d!18950 b!37842)))

(assert (=> bs!11570 (= (dynLambda!679 lambda!4333) (tuple2!171 p1!72 p2!66))))

(assert (=> (and b!37842 (= lambda!4333 (x!13106 x$103!3)) d!18932) d!18950))

(push 1)

(assert (not bs!11563))

(assert (not b_lambda!10001))

(assert (not b_lambda!10003))

(assert (not b!37878))

(assert (not b!37861))

(assert (not b!37891))

(assert b_and!8381)

(assert (not bs!11566))

(assert b_and!8377)

(assert (not b!37862))

(assert (not bs!11569))

(assert (not b_next!5619))

(assert (not b_next!5615))

(assert (not d!18924))

(assert b_and!8383)

(assert (not b!37860))

(assert (not b!37876))

(assert b_and!8345)

(assert (not bs!11568))

(assert (not b_next!5621))

(assert (not b!37863))

(assert (not b!37874))

(assert b_and!8351)

(assert (not b!37889))

(assert (not d!18922))

(assert (not b_next!5623))

(assert (not b!37875))

(assert (not d!18920))

(assert (not d!18930))

(assert (not b_next!5617))

(assert (not b_lambda!9999))

(assert (not b_lambda!10005))

(assert b_and!8379)

(assert (not d!18928))

(assert (not b_next!5613))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8381)

(assert b_and!8377)

(assert (not b_next!5619))

(assert (not b_next!5615))

(assert b_and!8383)

(assert b_and!8345)

(assert (not b_next!5621))

(assert b_and!8351)

(assert (not b_next!5623))

(assert (not b_next!5617))

(assert b_and!8379)

(assert (not b_next!5613))

(check-sat)

(pop 1)

