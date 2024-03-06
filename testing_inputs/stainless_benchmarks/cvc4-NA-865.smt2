; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6496 () Bool)

(assert start!6496)

(declare-fun b!47982 () Bool)

(declare-fun b_free!5883 () Bool)

(declare-fun b_next!26549 () Bool)

(assert (=> b!47982 (= b_free!5883 (not b_next!26549))))

(declare-fun tp!12885 () Bool)

(declare-fun b_and!38413 () Bool)

(assert (=> b!47982 (= tp!12885 b_and!38413)))

(declare-fun b_free!5885 () Bool)

(declare-fun b_next!26551 () Bool)

(assert (=> b!47982 (= b_free!5885 (not b_next!26551))))

(declare-fun tp!12884 () Bool)

(declare-fun b_and!38415 () Bool)

(assert (=> b!47982 (= tp!12884 b_and!38415)))

(declare-fun b_free!5887 () Bool)

(declare-fun b_next!26553 () Bool)

(assert (=> b!47982 (= b_free!5887 (not b_next!26553))))

(declare-fun tp!12886 () Bool)

(declare-fun b_and!38417 () Bool)

(assert (=> b!47982 (= tp!12886 b_and!38417)))

(declare-fun b!47979 () Bool)

(assert (=> b!47979 true))

(assert (=> b!47979 true))

(assert (=> b!47979 true))

(declare-datatypes () ((Nat!226 (Zero!210) (Succ!207 (n!1363 Nat!226)))))

(declare-datatypes () ((RAEqEvidence!380 (RAEqEvidence!381 (x!17705 Int) (y!1529 Int) (evidence!642 Int)))))

(declare-fun thiss!6321 () RAEqEvidence!380)

(declare-fun b_next!26555 () Bool)

(declare-fun lambda!7054 () Int)

(assert (=> b!47982 (= b_next!26549 (or (and b!47979 (= lambda!7054 (x!17705 thiss!6321))) b_next!26555))))

(declare-fun b_next!26557 () Bool)

(assert (=> b!47982 (= b_next!26551 (or (and b!47979 (= lambda!7054 (y!1529 thiss!6321))) b_next!26557))))

(declare-fun lambda!7055 () Int)

(assert (=> b!47979 (not (= lambda!7055 lambda!7054))))

(assert (=> b!47979 true))

(assert (=> b!47979 true))

(assert (=> b!47979 true))

(declare-fun b_next!26559 () Bool)

(assert (=> b!47982 (= b_next!26555 (or (and b!47979 (= lambda!7055 (x!17705 thiss!6321))) b_next!26559))))

(declare-fun b_next!26561 () Bool)

(assert (=> b!47982 (= b_next!26557 (or (and b!47979 (= lambda!7055 (y!1529 thiss!6321))) b_next!26561))))

(declare-fun m!50943 () Bool)

(assert (=> b!47979 m!50943))

(declare-fun lambda!7056 () Int)

(declare-fun dynLambda!815 (Int) Bool)

(assert (=> (and b!47982 b!47979 (= (dynLambda!815 lambda!7056) (dynLambda!815 (evidence!642 thiss!6321)))) (= lambda!7056 (evidence!642 thiss!6321))))

(declare-fun b_next!26563 () Bool)

(assert (=> b!47982 (= b_next!26553 (or (and b!47979 (= lambda!7056 (evidence!642 thiss!6321))) b_next!26563))))

(declare-fun b!47978 () Bool)

(declare-fun res!22474 () Bool)

(declare-fun e!25001 () Bool)

(assert (=> b!47978 (=> (not res!22474) (not e!25001))))

(declare-datatypes () ((Unit!660 (Unit!661))))

(declare-fun x$42!68 () Unit!660)

(declare-fun inlined!5633 () Unit!660)

(assert (=> b!47978 (= res!22474 (= x$42!68 inlined!5633))))

(declare-fun res!22472 () Bool)

(assert (=> b!47979 (=> (not res!22472) (not e!25001))))

(assert (=> b!47979 (= res!22472 (= thiss!6321 (RAEqEvidence!381 lambda!7054 lambda!7055 lambda!7056)))))

(declare-fun b!47980 () Bool)

(declare-fun res!22475 () Bool)

(assert (=> b!47980 (=> (not res!22475) (not e!25001))))

(declare-fun Unit!662 () Unit!660)

(assert (=> b!47980 (= res!22475 (= inlined!5633 Unit!662))))

(declare-fun dynLambda!816 (Int) Nat!226)

(assert (=> b!47980 (= (dynLambda!816 (x!17705 thiss!6321)) (dynLambda!816 (y!1529 thiss!6321)))))

(declare-fun n2!352 () Nat!226)

(declare-fun n1!336 () Nat!226)

(declare-fun n3!59 () Nat!226)

(declare-fun b!47981 () Bool)

(declare-fun *!4 (Nat!226 Nat!226) Nat!226)

(assert (=> b!47981 (= e!25001 (not (= (*!4 n1!336 (*!4 n2!352 n3!59)) (*!4 (*!4 n1!336 n2!352) n3!59))))))

(declare-fun res!22473 () Bool)

(assert (=> start!6496 (=> (not res!22473) (not e!25001))))

(assert (=> start!6496 (= res!22473 (not (is-Zero!210 n1!336)))))

(assert (=> start!6496 e!25001))

(declare-fun e!25002 () Bool)

(declare-fun inv!839 (RAEqEvidence!380) Bool)

(assert (=> start!6496 (and (inv!839 thiss!6321) e!25002)))

(assert (=> start!6496 true))

(assert (=> b!47982 (= e!25002 (and tp!12885 tp!12884 tp!12886))))

(assert (= (and start!6496 res!22473) b!47979))

(assert (= (and b!47979 res!22472) b!47980))

(assert (= (and b!47980 res!22475) b!47978))

(assert (= (and b!47978 res!22474) b!47981))

(assert (= start!6496 b!47982))

(declare-fun b_lambda!12749 () Bool)

(assert (=> (not b_lambda!12749) (not b!47980)))

(declare-fun t!29659 () Bool)

(declare-fun tb!28837 () Bool)

(assert (=> (and b!47982 (= (x!17705 thiss!6321) (x!17705 thiss!6321)) t!29659) tb!28837))

(declare-fun result!29113 () Bool)

(assert (=> tb!28837 (= result!29113 true)))

(assert (=> b!47980 t!29659))

(declare-fun b_and!38419 () Bool)

(assert (= b_and!38413 (and (=> t!29659 result!29113) b_and!38419)))

(declare-fun t!29661 () Bool)

(declare-fun tb!28839 () Bool)

(assert (=> (and b!47982 (= (y!1529 thiss!6321) (x!17705 thiss!6321)) t!29661) tb!28839))

(declare-fun result!29115 () Bool)

(assert (=> tb!28839 (= result!29115 true)))

(assert (=> b!47980 t!29661))

(declare-fun b_and!38421 () Bool)

(assert (= b_and!38415 (and (=> t!29661 result!29115) b_and!38421)))

(declare-fun b_lambda!12751 () Bool)

(assert (=> (not b_lambda!12751) (not b!47980)))

(declare-fun t!29663 () Bool)

(declare-fun tb!28841 () Bool)

(assert (=> (and b!47982 (= (x!17705 thiss!6321) (y!1529 thiss!6321)) t!29663) tb!28841))

(declare-fun result!29117 () Bool)

(assert (=> tb!28841 (= result!29117 true)))

(assert (=> b!47980 t!29663))

(declare-fun b_and!38423 () Bool)

(assert (= b_and!38419 (and (=> t!29663 result!29117) b_and!38423)))

(declare-fun t!29665 () Bool)

(declare-fun tb!28843 () Bool)

(assert (=> (and b!47982 (= (y!1529 thiss!6321) (y!1529 thiss!6321)) t!29665) tb!28843))

(declare-fun result!29119 () Bool)

(assert (=> tb!28843 (= result!29119 true)))

(assert (=> b!47980 t!29665))

(declare-fun b_and!38425 () Bool)

(assert (= b_and!38421 (and (=> t!29665 result!29119) b_and!38425)))

(declare-fun m!50945 () Bool)

(assert (=> b!47980 m!50945))

(declare-fun m!50947 () Bool)

(assert (=> b!47980 m!50947))

(declare-fun m!50949 () Bool)

(assert (=> b!47981 m!50949))

(assert (=> b!47981 m!50949))

(declare-fun m!50951 () Bool)

(assert (=> b!47981 m!50951))

(declare-fun m!50953 () Bool)

(assert (=> b!47981 m!50953))

(assert (=> b!47981 m!50953))

(declare-fun m!50955 () Bool)

(assert (=> b!47981 m!50955))

(declare-fun m!50957 () Bool)

(assert (=> start!6496 m!50957))

(push 1)

(assert (not b_next!26561))

(assert b_and!38417)

(assert (not b_next!26563))

(assert (not b_next!26559))

(assert (not b!47979))

(assert (not b_lambda!12749))

(assert b_and!38425)

(assert (not b_lambda!12751))

(assert b_and!38423)

(assert (not start!6496))

(assert (not b!47981))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26561))

(assert b_and!38417)

(assert (not b_next!26563))

(assert (not b_next!26559))

(assert b_and!38425)

(assert b_and!38423)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!12753 () Bool)

(assert (= b_lambda!12751 (or (and b!47979 (= lambda!7054 (y!1529 thiss!6321))) (and b!47979 (= lambda!7055 (y!1529 thiss!6321))) (and b!47982 b_free!5883 (= (x!17705 thiss!6321) (y!1529 thiss!6321))) (and b!47982 b_free!5885) b_lambda!12753)))

(declare-fun bs!18855 () Bool)

(declare-fun d!34118 () Bool)

(assert (= bs!18855 (and d!34118 b!47979)))

(assert (=> bs!18855 (= (dynLambda!816 lambda!7054) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18855 m!50949))

(assert (=> bs!18855 m!50949))

(assert (=> bs!18855 m!50951))

(assert (=> (and b!47979 (= lambda!7054 (y!1529 thiss!6321)) b!47980) d!34118))

(declare-fun bs!18856 () Bool)

(declare-fun d!34120 () Bool)

(assert (= bs!18856 (and d!34120 b!47979)))

(assert (=> bs!18856 (= (dynLambda!816 lambda!7055) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18856 m!50953))

(assert (=> bs!18856 m!50953))

(assert (=> bs!18856 m!50955))

(assert (=> (and b!47979 (= lambda!7055 (y!1529 thiss!6321)) b!47980) d!34120))

(declare-fun b_lambda!12755 () Bool)

(assert (= b_lambda!12749 (or (and b!47979 (= lambda!7054 (x!17705 thiss!6321))) (and b!47979 (= lambda!7055 (x!17705 thiss!6321))) (and b!47982 b_free!5883) (and b!47982 b_free!5885 (= (y!1529 thiss!6321) (x!17705 thiss!6321))) b_lambda!12755)))

(declare-fun bs!18857 () Bool)

(declare-fun d!34122 () Bool)

(assert (= bs!18857 (and d!34122 b!47979)))

(assert (=> bs!18857 (= (dynLambda!816 lambda!7054) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18857 m!50949))

(assert (=> bs!18857 m!50949))

(assert (=> bs!18857 m!50951))

(assert (=> (and b!47979 (= lambda!7054 (x!17705 thiss!6321)) b!47980) d!34122))

(declare-fun bs!18858 () Bool)

(declare-fun d!34124 () Bool)

(assert (= bs!18858 (and d!34124 b!47979)))

(assert (=> bs!18858 (= (dynLambda!816 lambda!7055) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18858 m!50953))

(assert (=> bs!18858 m!50953))

(assert (=> bs!18858 m!50955))

(assert (=> (and b!47979 (= lambda!7055 (x!17705 thiss!6321)) b!47980) d!34124))

(push 1)

(assert (not bs!18858))

(assert (not b_next!26561))

(assert (not bs!18855))

(assert (not b_lambda!12755))

(assert b_and!38417)

(assert (not b_next!26563))

(assert (not b_next!26559))

(assert (not bs!18857))

(assert (not b!47979))

(assert b_and!38425)

(assert b_and!38423)

(assert (not start!6496))

(assert (not b_lambda!12753))

(assert (not b!47981))

(assert (not bs!18856))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26561))

(assert b_and!38417)

(assert (not b_next!26563))

(assert (not b_next!26559))

(assert b_and!38425)

(assert b_and!38423)

(check-sat)

(pop 1)

