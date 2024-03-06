; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6808 () Bool)

(assert start!6808)

(declare-fun b!50567 () Bool)

(declare-fun b_free!7059 () Bool)

(declare-fun b_next!37913 () Bool)

(assert (=> b!50567 (= b_free!7059 (not b_next!37913))))

(declare-fun tp!14650 () Bool)

(declare-fun b_and!57151 () Bool)

(assert (=> b!50567 (= tp!14650 b_and!57151)))

(declare-fun b_free!7061 () Bool)

(declare-fun b_next!37915 () Bool)

(assert (=> b!50567 (= b_free!7061 (not b_next!37915))))

(declare-fun tp!14649 () Bool)

(declare-fun b_and!57153 () Bool)

(assert (=> b!50567 (= tp!14649 b_and!57153)))

(declare-fun b_free!7063 () Bool)

(declare-fun b_next!37917 () Bool)

(assert (=> b!50567 (= b_free!7063 (not b_next!37917))))

(declare-fun tp!14648 () Bool)

(declare-fun b_and!57155 () Bool)

(assert (=> b!50567 (= tp!14648 b_and!57155)))

(declare-fun b!50566 () Bool)

(assert (=> b!50566 true))

(assert (=> b!50566 true))

(assert (=> b!50566 true))

(declare-fun b_next!37919 () Bool)

(declare-datatypes () ((Nat!251 (Zero!235) (Succ!232 (n!1388 Nat!251)))))

(declare-datatypes () ((RAEqEvidence!458 (RAEqEvidence!459 (x!19590 Int) (y!1568 Int) (evidence!681 Int)))))

(declare-fun thiss!4882 () RAEqEvidence!458)

(declare-fun lambda!8393 () Int)

(assert (=> b!50567 (= b_next!37913 (or (and b!50566 (= lambda!8393 (x!19590 thiss!4882))) b_next!37919))))

(declare-fun b_next!37921 () Bool)

(assert (=> b!50567 (= b_next!37915 (or (and b!50566 (= lambda!8393 (y!1568 thiss!4882))) b_next!37921))))

(declare-fun lambda!8394 () Int)

(assert (=> b!50566 (not (= lambda!8394 lambda!8393))))

(assert (=> b!50566 true))

(assert (=> b!50566 true))

(assert (=> b!50566 true))

(declare-fun b_next!37923 () Bool)

(assert (=> b!50567 (= b_next!37919 (or (and b!50566 (= lambda!8394 (x!19590 thiss!4882))) b_next!37923))))

(declare-fun b_next!37925 () Bool)

(assert (=> b!50567 (= b_next!37921 (or (and b!50566 (= lambda!8394 (y!1568 thiss!4882))) b_next!37925))))

(declare-fun m!54187 () Bool)

(assert (=> b!50566 m!54187))

(declare-fun lambda!8395 () Int)

(declare-fun dynLambda!870 (Int) Bool)

(assert (=> (and b!50567 b!50566 (= (dynLambda!870 lambda!8395) (dynLambda!870 (evidence!681 thiss!4882)))) (= lambda!8395 (evidence!681 thiss!4882))))

(declare-fun b_next!37927 () Bool)

(assert (=> b!50567 (= b_next!37917 (or (and b!50566 (= lambda!8395 (evidence!681 thiss!4882))) b_next!37927))))

(declare-fun res!23213 () Bool)

(declare-fun e!26251 () Bool)

(assert (=> start!6808 (=> (not res!23213) (not e!26251))))

(declare-fun n1!77 () Nat!251)

(assert (=> start!6808 (= res!23213 (not (is-Zero!235 n1!77)))))

(assert (=> start!6808 e!26251))

(assert (=> start!6808 true))

(declare-fun e!26252 () Bool)

(declare-fun inv!878 (RAEqEvidence!458) Bool)

(assert (=> start!6808 (and (inv!878 thiss!4882) e!26252)))

(declare-fun b!50565 () Bool)

(declare-fun n2!88 () Nat!251)

(declare-fun n3!17 () Nat!251)

(declare-fun *!4 (Nat!251 Nat!251) Nat!251)

(declare-fun +!5 (Nat!251 Nat!251) Nat!251)

(assert (=> b!50565 (= e!26251 (not (= (*!4 n1!77 (+!5 n2!88 n3!17)) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))))

(declare-fun res!23216 () Bool)

(assert (=> b!50566 (=> (not res!23216) (not e!26251))))

(assert (=> b!50566 (= res!23216 (= thiss!4882 (RAEqEvidence!459 lambda!8393 lambda!8394 lambda!8395)))))

(assert (=> b!50567 (= e!26252 (and tp!14650 tp!14649 tp!14648))))

(declare-fun b!50568 () Bool)

(declare-fun res!23214 () Bool)

(assert (=> b!50568 (=> (not res!23214) (not e!26251))))

(declare-datatypes () ((Unit!797 (Unit!798))))

(declare-fun inlined!4119 () Unit!797)

(declare-fun Unit!799 () Unit!797)

(assert (=> b!50568 (= res!23214 (= inlined!4119 Unit!799))))

(declare-fun dynLambda!871 (Int) Nat!251)

(assert (=> b!50568 (= (dynLambda!871 (x!19590 thiss!4882)) (dynLambda!871 (y!1568 thiss!4882)))))

(declare-fun b!50569 () Bool)

(declare-fun res!23215 () Bool)

(assert (=> b!50569 (=> (not res!23215) (not e!26251))))

(declare-fun x$22!40 () Unit!797)

(assert (=> b!50569 (= res!23215 (= x$22!40 inlined!4119))))

(assert (= (and start!6808 res!23213) b!50566))

(assert (= (and b!50566 res!23216) b!50568))

(assert (= (and b!50568 res!23214) b!50569))

(assert (= (and b!50569 res!23215) b!50565))

(assert (= start!6808 b!50567))

(declare-fun b_lambda!14349 () Bool)

(assert (=> (not b_lambda!14349) (not b!50568)))

(declare-fun t!45845 () Bool)

(declare-fun tb!45023 () Bool)

(assert (=> (and b!50567 (= (x!19590 thiss!4882) (x!19590 thiss!4882)) t!45845) tb!45023))

(declare-fun result!45299 () Bool)

(assert (=> tb!45023 (= result!45299 true)))

(assert (=> b!50568 t!45845))

(declare-fun b_and!57157 () Bool)

(assert (= b_and!57151 (and (=> t!45845 result!45299) b_and!57157)))

(declare-fun t!45847 () Bool)

(declare-fun tb!45025 () Bool)

(assert (=> (and b!50567 (= (y!1568 thiss!4882) (x!19590 thiss!4882)) t!45847) tb!45025))

(declare-fun result!45301 () Bool)

(assert (=> tb!45025 (= result!45301 true)))

(assert (=> b!50568 t!45847))

(declare-fun b_and!57159 () Bool)

(assert (= b_and!57153 (and (=> t!45847 result!45301) b_and!57159)))

(declare-fun b_lambda!14351 () Bool)

(assert (=> (not b_lambda!14351) (not b!50568)))

(declare-fun t!45849 () Bool)

(declare-fun tb!45027 () Bool)

(assert (=> (and b!50567 (= (x!19590 thiss!4882) (y!1568 thiss!4882)) t!45849) tb!45027))

(declare-fun result!45303 () Bool)

(assert (=> tb!45027 (= result!45303 true)))

(assert (=> b!50568 t!45849))

(declare-fun b_and!57161 () Bool)

(assert (= b_and!57157 (and (=> t!45849 result!45303) b_and!57161)))

(declare-fun t!45851 () Bool)

(declare-fun tb!45029 () Bool)

(assert (=> (and b!50567 (= (y!1568 thiss!4882) (y!1568 thiss!4882)) t!45851) tb!45029))

(declare-fun result!45305 () Bool)

(assert (=> tb!45029 (= result!45305 true)))

(assert (=> b!50568 t!45851))

(declare-fun b_and!57163 () Bool)

(assert (= b_and!57159 (and (=> t!45851 result!45305) b_and!57163)))

(declare-fun m!54189 () Bool)

(assert (=> start!6808 m!54189))

(declare-fun m!54191 () Bool)

(assert (=> b!50565 m!54191))

(declare-fun m!54193 () Bool)

(assert (=> b!50565 m!54193))

(declare-fun m!54195 () Bool)

(assert (=> b!50565 m!54195))

(declare-fun m!54197 () Bool)

(assert (=> b!50565 m!54197))

(assert (=> b!50565 m!54193))

(assert (=> b!50565 m!54191))

(assert (=> b!50565 m!54197))

(declare-fun m!54199 () Bool)

(assert (=> b!50565 m!54199))

(declare-fun m!54201 () Bool)

(assert (=> b!50568 m!54201))

(declare-fun m!54203 () Bool)

(assert (=> b!50568 m!54203))

(push 1)

(assert b_and!57163)

(assert (not b_next!37923))

(assert (not b!50565))

(assert (not b_next!37927))

(assert (not b!50566))

(assert (not b_next!37925))

(assert (not start!6808))

(assert (not b_lambda!14349))

(assert b_and!57161)

(assert (not b_lambda!14351))

(assert b_and!57155)

(check-sat)

(pop 1)

(push 1)

(assert b_and!57163)

(assert (not b_next!37923))

(assert (not b_next!37927))

(assert (not b_next!37925))

(assert b_and!57161)

(assert b_and!57155)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14353 () Bool)

(assert (= b_lambda!14351 (or (and b!50566 (= lambda!8393 (y!1568 thiss!4882))) (and b!50566 (= lambda!8394 (y!1568 thiss!4882))) (and b!50567 b_free!7059 (= (x!19590 thiss!4882) (y!1568 thiss!4882))) (and b!50567 b_free!7061) b_lambda!14353)))

(declare-fun bs!23539 () Bool)

(declare-fun d!43112 () Bool)

(assert (= bs!23539 (and d!43112 b!50566)))

(assert (=> bs!23539 (= (dynLambda!871 lambda!8393) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23539 m!54193))

(assert (=> bs!23539 m!54193))

(assert (=> bs!23539 m!54195))

(assert (=> (and b!50566 (= lambda!8393 (y!1568 thiss!4882)) b!50568) d!43112))

(declare-fun bs!23540 () Bool)

(declare-fun d!43114 () Bool)

(assert (= bs!23540 (and d!43114 b!50566)))

(assert (=> bs!23540 (= (dynLambda!871 lambda!8394) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23540 m!54191))

(assert (=> bs!23540 m!54197))

(assert (=> bs!23540 m!54191))

(assert (=> bs!23540 m!54197))

(assert (=> bs!23540 m!54199))

(assert (=> (and b!50566 (= lambda!8394 (y!1568 thiss!4882)) b!50568) d!43114))

(declare-fun b_lambda!14355 () Bool)

(assert (= b_lambda!14349 (or (and b!50566 (= lambda!8393 (x!19590 thiss!4882))) (and b!50566 (= lambda!8394 (x!19590 thiss!4882))) (and b!50567 b_free!7059) (and b!50567 b_free!7061 (= (y!1568 thiss!4882) (x!19590 thiss!4882))) b_lambda!14355)))

(declare-fun bs!23541 () Bool)

(declare-fun d!43116 () Bool)

(assert (= bs!23541 (and d!43116 b!50566)))

(assert (=> bs!23541 (= (dynLambda!871 lambda!8393) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23541 m!54193))

(assert (=> bs!23541 m!54193))

(assert (=> bs!23541 m!54195))

(assert (=> (and b!50566 (= lambda!8393 (x!19590 thiss!4882)) b!50568) d!43116))

(declare-fun bs!23542 () Bool)

(declare-fun d!43118 () Bool)

(assert (= bs!23542 (and d!43118 b!50566)))

(assert (=> bs!23542 (= (dynLambda!871 lambda!8394) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23542 m!54191))

(assert (=> bs!23542 m!54197))

(assert (=> bs!23542 m!54191))

(assert (=> bs!23542 m!54197))

(assert (=> bs!23542 m!54199))

(assert (=> (and b!50566 (= lambda!8394 (x!19590 thiss!4882)) b!50568) d!43118))

(push 1)

(assert b_and!57163)

(assert (not bs!23539))

(assert (not bs!23542))

(assert (not b_next!37923))

(assert (not bs!23541))

(assert (not b!50565))

(assert (not b_next!37927))

(assert (not b!50566))

(assert (not b_next!37925))

(assert (not start!6808))

(assert (not bs!23540))

(assert (not b_lambda!14353))

(assert (not b_lambda!14355))

(assert b_and!57161)

(assert b_and!57155)

(check-sat)

(pop 1)

(push 1)

(assert b_and!57163)

(assert (not b_next!37923))

(assert (not b_next!37927))

(assert (not b_next!37925))

(assert b_and!57161)

(assert b_and!57155)

(check-sat)

(pop 1)

