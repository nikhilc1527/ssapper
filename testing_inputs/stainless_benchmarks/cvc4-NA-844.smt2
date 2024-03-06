; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6326 () Bool)

(assert start!6326)

(declare-fun b!47068 () Bool)

(declare-fun b_free!5679 () Bool)

(declare-fun b_next!25383 () Bool)

(assert (=> b!47068 (= b_free!5679 (not b_next!25383))))

(declare-fun tp!12578 () Bool)

(declare-fun b_and!36813 () Bool)

(assert (=> b!47068 (= tp!12578 b_and!36813)))

(declare-fun b_free!5681 () Bool)

(declare-fun b_next!25385 () Bool)

(assert (=> b!47068 (= b_free!5681 (not b_next!25385))))

(declare-fun tp!12580 () Bool)

(declare-fun b_and!36815 () Bool)

(assert (=> b!47068 (= tp!12580 b_and!36815)))

(declare-fun b_free!5683 () Bool)

(declare-fun b_next!25387 () Bool)

(assert (=> b!47068 (= b_free!5683 (not b_next!25387))))

(declare-fun tp!12579 () Bool)

(declare-fun b_and!36817 () Bool)

(assert (=> b!47068 (= tp!12579 b_and!36817)))

(declare-fun b!47071 () Bool)

(assert (=> b!47071 true))

(assert (=> b!47071 true))

(assert (=> b!47071 true))

(declare-fun lambda!6826 () Int)

(declare-datatypes () ((Nat!205 (Zero!189) (Succ!186 (n!1341 Nat!205)))))

(declare-datatypes () ((Unit!639 (Unit!640))))

(declare-datatypes () ((RAEqEvidence!354 (RAEqEvidence!355 (x!17353 Int) (y!1516 Int) (evidence!629 Int)))))

(declare-fun thiss!5039 () RAEqEvidence!354)

(declare-fun b_next!25389 () Bool)

(assert (=> b!47068 (= b_next!25383 (or (and b!47071 (= lambda!6826 (x!17353 thiss!5039))) b_next!25389))))

(declare-fun b_next!25391 () Bool)

(assert (=> b!47068 (= b_next!25385 (or (and b!47071 (= lambda!6826 (y!1516 thiss!5039))) b_next!25391))))

(declare-fun lambda!6827 () Int)

(assert (=> b!47071 (not (= lambda!6827 lambda!6826))))

(assert (=> b!47071 true))

(assert (=> b!47071 true))

(assert (=> b!47071 true))

(declare-fun b_next!25393 () Bool)

(assert (=> b!47068 (= b_next!25389 (or (and b!47071 (= lambda!6827 (x!17353 thiss!5039))) b_next!25393))))

(declare-fun b_next!25395 () Bool)

(assert (=> b!47068 (= b_next!25391 (or (and b!47071 (= lambda!6827 (y!1516 thiss!5039))) b_next!25395))))

(assert (=> b!47071 true))

(declare-fun b_next!25397 () Bool)

(declare-fun lambda!6828 () Int)

(assert (=> b!47068 (= b_next!25387 (or (and b!47071 (= lambda!6828 (evidence!629 thiss!5039))) b_next!25397))))

(declare-fun b!47067 () Bool)

(declare-fun res!22105 () Bool)

(declare-fun e!24520 () Bool)

(assert (=> b!47067 (=> (not res!22105) (not e!24520))))

(declare-fun x$57!59 () Unit!639)

(declare-fun inlined!4215 () Unit!639)

(assert (=> b!47067 (= res!22105 (= x$57!59 inlined!4215))))

(declare-fun e!24519 () Bool)

(assert (=> b!47068 (= e!24519 (and tp!12578 tp!12580 tp!12579))))

(declare-fun b!47069 () Bool)

(declare-fun res!22103 () Bool)

(assert (=> b!47069 (=> (not res!22103) (not e!24520))))

(declare-fun Unit!641 () Unit!639)

(assert (=> b!47069 (= res!22103 (= inlined!4215 Unit!641))))

(declare-fun dynLambda!797 (Int) Nat!205)

(assert (=> b!47069 (= (dynLambda!797 (x!17353 thiss!5039)) (dynLambda!797 (y!1516 thiss!5039)))))

(declare-fun b!47070 () Bool)

(declare-fun res!22106 () Bool)

(assert (=> b!47070 (=> (not res!22106) (not e!24520))))

(declare-fun n2!101 () Nat!205)

(declare-fun n3!28 () Nat!205)

(assert (=> b!47070 (= res!22106 (and (is-Succ!186 n2!101) (is-Succ!186 n3!28)))))

(declare-fun res!22104 () Bool)

(assert (=> start!6326 (=> (not res!22104) (not e!24520))))

(declare-fun >=!2 (Nat!205 Nat!205) Bool)

(assert (=> start!6326 (= res!22104 (>=!2 n2!101 n3!28))))

(assert (=> start!6326 e!24520))

(assert (=> start!6326 true))

(declare-fun inv!826 (RAEqEvidence!354) Bool)

(assert (=> start!6326 (and (inv!826 thiss!5039) e!24519)))

(declare-fun res!22107 () Bool)

(assert (=> b!47071 (=> (not res!22107) (not e!24520))))

(assert (=> b!47071 (= res!22107 (= thiss!5039 (RAEqEvidence!355 lambda!6826 lambda!6827 lambda!6828)))))

(declare-fun b!47072 () Bool)

(declare-fun n1!90 () Nat!205)

(declare-fun -!4 (Nat!205 Nat!205) Nat!205)

(declare-fun +!5 (Nat!205 Nat!205) Nat!205)

(assert (=> b!47072 (= e!24520 (not (= (-!4 (+!5 n1!90 n2!101) n3!28) (+!5 n1!90 (-!4 n2!101 n3!28)))))))

(assert (= (and start!6326 res!22104) b!47070))

(assert (= (and b!47070 res!22106) b!47071))

(assert (= (and b!47071 res!22107) b!47069))

(assert (= (and b!47069 res!22103) b!47067))

(assert (= (and b!47067 res!22105) b!47072))

(assert (= start!6326 b!47068))

(declare-fun b_lambda!12475 () Bool)

(assert (=> (not b_lambda!12475) (not b!47069)))

(declare-fun t!28463 () Bool)

(declare-fun tb!27641 () Bool)

(assert (=> (and b!47068 (= (x!17353 thiss!5039) (x!17353 thiss!5039)) t!28463) tb!27641))

(declare-fun result!27917 () Bool)

(assert (=> tb!27641 (= result!27917 true)))

(assert (=> b!47069 t!28463))

(declare-fun b_and!36819 () Bool)

(assert (= b_and!36813 (and (=> t!28463 result!27917) b_and!36819)))

(declare-fun t!28465 () Bool)

(declare-fun tb!27643 () Bool)

(assert (=> (and b!47068 (= (y!1516 thiss!5039) (x!17353 thiss!5039)) t!28465) tb!27643))

(declare-fun result!27919 () Bool)

(assert (=> tb!27643 (= result!27919 true)))

(assert (=> b!47069 t!28465))

(declare-fun b_and!36821 () Bool)

(assert (= b_and!36815 (and (=> t!28465 result!27919) b_and!36821)))

(declare-fun b_lambda!12477 () Bool)

(assert (=> (not b_lambda!12477) (not b!47069)))

(declare-fun t!28467 () Bool)

(declare-fun tb!27645 () Bool)

(assert (=> (and b!47068 (= (x!17353 thiss!5039) (y!1516 thiss!5039)) t!28467) tb!27645))

(declare-fun result!27921 () Bool)

(assert (=> tb!27645 (= result!27921 true)))

(assert (=> b!47069 t!28467))

(declare-fun b_and!36823 () Bool)

(assert (= b_and!36819 (and (=> t!28467 result!27921) b_and!36823)))

(declare-fun t!28469 () Bool)

(declare-fun tb!27647 () Bool)

(assert (=> (and b!47068 (= (y!1516 thiss!5039) (y!1516 thiss!5039)) t!28469) tb!27647))

(declare-fun result!27923 () Bool)

(assert (=> tb!27647 (= result!27923 true)))

(assert (=> b!47069 t!28469))

(declare-fun b_and!36825 () Bool)

(assert (= b_and!36821 (and (=> t!28469 result!27923) b_and!36825)))

(declare-fun m!49987 () Bool)

(assert (=> b!47069 m!49987))

(declare-fun m!49989 () Bool)

(assert (=> b!47069 m!49989))

(declare-fun m!49991 () Bool)

(assert (=> start!6326 m!49991))

(declare-fun m!49993 () Bool)

(assert (=> start!6326 m!49993))

(declare-fun m!49995 () Bool)

(assert (=> b!47072 m!49995))

(assert (=> b!47072 m!49995))

(declare-fun m!49997 () Bool)

(assert (=> b!47072 m!49997))

(declare-fun m!49999 () Bool)

(assert (=> b!47072 m!49999))

(assert (=> b!47072 m!49999))

(declare-fun m!50001 () Bool)

(assert (=> b!47072 m!50001))

(push 1)

(assert (not b!47072))

(assert b_and!36817)

(assert (not b_next!25393))

(assert b_and!36825)

(assert (not b_lambda!12475))

(assert (not b_next!25397))

(assert (not b_next!25395))

(assert (not start!6326))

(assert (not b_lambda!12477))

(assert b_and!36823)

(check-sat)

(pop 1)

(push 1)

(assert b_and!36817)

(assert (not b_next!25393))

(assert b_and!36825)

(assert (not b_next!25397))

(assert (not b_next!25395))

(assert b_and!36823)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!12479 () Bool)

(assert (= b_lambda!12477 (or (and b!47071 (= lambda!6826 (y!1516 thiss!5039))) (and b!47071 (= lambda!6827 (y!1516 thiss!5039))) (and b!47068 b_free!5679 (= (x!17353 thiss!5039) (y!1516 thiss!5039))) (and b!47068 b_free!5681) b_lambda!12479)))

(declare-fun bs!18476 () Bool)

(declare-fun d!33094 () Bool)

(assert (= bs!18476 (and d!33094 b!47071)))

(assert (=> bs!18476 (= (dynLambda!797 lambda!6826) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18476 m!49995))

(assert (=> bs!18476 m!49995))

(assert (=> bs!18476 m!49997))

(assert (=> (and b!47071 (= lambda!6826 (y!1516 thiss!5039)) b!47069) d!33094))

(declare-fun bs!18477 () Bool)

(declare-fun d!33096 () Bool)

(assert (= bs!18477 (and d!33096 b!47071)))

(assert (=> bs!18477 (= (dynLambda!797 lambda!6827) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18477 m!49999))

(assert (=> bs!18477 m!49999))

(assert (=> bs!18477 m!50001))

(assert (=> (and b!47071 (= lambda!6827 (y!1516 thiss!5039)) b!47069) d!33096))

(declare-fun b_lambda!12481 () Bool)

(assert (= b_lambda!12475 (or (and b!47071 (= lambda!6826 (x!17353 thiss!5039))) (and b!47071 (= lambda!6827 (x!17353 thiss!5039))) (and b!47068 b_free!5679) (and b!47068 b_free!5681 (= (y!1516 thiss!5039) (x!17353 thiss!5039))) b_lambda!12481)))

(declare-fun bs!18478 () Bool)

(declare-fun d!33098 () Bool)

(assert (= bs!18478 (and d!33098 b!47071)))

(assert (=> bs!18478 (= (dynLambda!797 lambda!6826) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18478 m!49995))

(assert (=> bs!18478 m!49995))

(assert (=> bs!18478 m!49997))

(assert (=> (and b!47071 (= lambda!6826 (x!17353 thiss!5039)) b!47069) d!33098))

(declare-fun bs!18479 () Bool)

(declare-fun d!33100 () Bool)

(assert (= bs!18479 (and d!33100 b!47071)))

(assert (=> bs!18479 (= (dynLambda!797 lambda!6827) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18479 m!49999))

(assert (=> bs!18479 m!49999))

(assert (=> bs!18479 m!50001))

(assert (=> (and b!47071 (= lambda!6827 (x!17353 thiss!5039)) b!47069) d!33100))

(push 1)

(assert (not b_lambda!12481))

(assert (not b_lambda!12479))

(assert (not b!47072))

(assert (not bs!18478))

(assert b_and!36817)

(assert (not b_next!25393))

(assert b_and!36825)

(assert (not bs!18476))

(assert (not b_next!25397))

(assert (not bs!18479))

(assert (not bs!18477))

(assert (not b_next!25395))

(assert (not start!6326))

(assert b_and!36823)

(check-sat)

(pop 1)

(push 1)

(assert b_and!36817)

(assert (not b_next!25393))

(assert b_and!36825)

(assert (not b_next!25397))

(assert (not b_next!25395))

(assert b_and!36823)

(check-sat)

(pop 1)

