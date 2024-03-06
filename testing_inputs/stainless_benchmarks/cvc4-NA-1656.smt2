; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11480 () Bool)

(assert start!11480)

(declare-fun b_free!7479 () Bool)

(declare-fun b_next!39783 () Bool)

(assert (=> start!11480 (= b_free!7479 (not b_next!39783))))

(declare-fun tp!17134 () Bool)

(declare-fun b_and!59945 () Bool)

(assert (=> start!11480 (= tp!17134 b_and!59945)))

(declare-fun b_free!7481 () Bool)

(declare-fun b_next!39785 () Bool)

(assert (=> start!11480 (= b_free!7481 (not b_next!39785))))

(declare-fun tp!17133 () Bool)

(declare-fun b_and!59947 () Bool)

(assert (=> start!11480 (= tp!17133 b_and!59947)))

(declare-fun res!45876 () Bool)

(declare-fun e!47702 () Bool)

(assert (=> start!11480 (=> (not res!45876) (not e!47702))))

(assert (=> start!11480 (= res!45876 true)))

(assert (=> start!11480 e!47702))

(assert (=> start!11480 tp!17134))

(assert (=> start!11480 tp!17133))

(assert (=> start!11480 true))

(declare-fun b!87833 () Bool)

(declare-fun res!45878 () Bool)

(assert (=> b!87833 (=> (not res!45878) (not e!47702))))

(declare-fun g!152 () Int)

(declare-fun dynLambda!1036 (Int Int) Bool)

(assert (=> b!87833 (= res!45878 (dynLambda!1036 g!152 8))))

(declare-fun b!87834 () Bool)

(declare-fun res!45877 () Bool)

(assert (=> b!87834 (=> (not res!45877) (not e!47702))))

(declare-fun res!45824 () Int)

(declare-fun f!4923 () Int)

(declare-fun dynLambda!1037 (Int Int) Int)

(assert (=> b!87834 (= res!45877 (= res!45824 (dynLambda!1037 f!4923 8)))))

(declare-fun b!87835 () Bool)

(assert (=> b!87835 (= e!47702 (= res!45824 0))))

(assert (= (and start!11480 res!45876) b!87833))

(assert (= (and b!87833 res!45878) b!87834))

(assert (= (and b!87834 res!45877) b!87835))

(declare-fun b_lambda!17433 () Bool)

(assert (=> (not b_lambda!17433) (not b!87833)))

(declare-fun t!48562 () Bool)

(declare-fun tb!46549 () Bool)

(assert (=> (and start!11480 (= g!152 g!152) t!48562) tb!46549))

(declare-fun result!46979 () Bool)

(assert (=> tb!46549 (= result!46979 true)))

(assert (=> b!87833 t!48562))

(declare-fun b_and!59949 () Bool)

(assert (= b_and!59945 (and (=> t!48562 result!46979) b_and!59949)))

(declare-fun b_lambda!17435 () Bool)

(assert (=> (not b_lambda!17435) (not b!87834)))

(declare-fun t!48564 () Bool)

(declare-fun tb!46551 () Bool)

(assert (=> (and start!11480 (= f!4923 f!4923) t!48564) tb!46551))

(declare-fun result!46981 () Bool)

(assert (=> tb!46551 (= result!46981 true)))

(assert (=> b!87834 t!48564))

(declare-fun b_and!59951 () Bool)

(assert (= b_and!59947 (and (=> t!48564 result!46981) b_and!59951)))

(declare-fun bs!41273 () Bool)

(declare-fun s!2567 () Bool)

(assert (= bs!41273 (and start!11480 s!2567)))

(declare-fun b!87836 () Bool)

(declare-fun e!47703 () Bool)

(declare-fun e!47704 () Bool)

(assert (=> b!87836 (= e!47703 e!47704)))

(declare-fun res!45879 () Bool)

(assert (=> b!87836 (=> res!45879 e!47704)))

(assert (=> b!87836 (= res!45879 (> (dynLambda!1037 f!4923 8) 0))))

(declare-fun b!87838 () Bool)

(assert (=> b!87838 (= e!47704 (< (dynLambda!1037 f!4923 8) 0))))

(declare-fun c!21719 () Bool)

(assert (=> bs!41273 (= c!21719 (dynLambda!1036 g!152 8))))

(assert (=> bs!41273 (=> true e!47703)))

(declare-fun b!87837 () Bool)

(assert (=> b!87837 (= e!47703 (= (dynLambda!1037 f!4923 8) 0))))

(assert (= (and b!87836 (not res!45879)) b!87838))

(assert (= (and bs!41273 c!21719) b!87836))

(assert (= (and bs!41273 (not c!21719)) b!87837))

(declare-fun b_lambda!17437 () Bool)

(assert (=> (not b_lambda!17437) (not b!87836)))

(assert (=> b!87836 t!48564))

(declare-fun b_and!59953 () Bool)

(assert (= b_and!59951 (and (=> t!48564 result!46981) b_and!59953)))

(declare-fun b_lambda!17439 () Bool)

(assert (=> (not b_lambda!17439) (not b!87838)))

(assert (=> b!87838 t!48564))

(declare-fun b_and!59955 () Bool)

(assert (= b_and!59953 (and (=> t!48564 result!46981) b_and!59955)))

(declare-fun b_lambda!17441 () Bool)

(assert (=> (not b_lambda!17441) (not bs!41273)))

(assert (=> bs!41273 t!48562))

(declare-fun b_and!59957 () Bool)

(assert (= b_and!59949 (and (=> t!48562 result!46979) b_and!59957)))

(declare-fun b_lambda!17443 () Bool)

(assert (=> (not b_lambda!17443) (not b!87837)))

(assert (=> b!87837 t!48564))

(declare-fun b_and!59959 () Bool)

(assert (= b_and!59955 (and (=> t!48564 result!46981) b_and!59959)))

(declare-fun bs!41274 () Bool)

(declare-fun m!84072 () Bool)

(assert (= bs!41274 m!84072))

(assert (=> bs!41274 s!2567))

(assert (=> b!87833 m!84072))

(declare-fun bs!41275 () Bool)

(declare-fun m!84074 () Bool)

(assert (= bs!41275 m!84074))

(assert (=> bs!41275 s!2567))

(assert (=> bs!41275 s!2567))

(assert (=> bs!41275 s!2567))

(assert (=> b!87834 m!84074))

(push 1)

(assert b_and!59957)

(assert (not b_lambda!17437))

(assert (not b_lambda!17433))

(assert (not b_lambda!17435))

(assert b_and!59959)

(assert (not b_lambda!17441))

(assert (not b_lambda!17443))

(assert (not b_lambda!17439))

(assert (not b_next!39785))

(assert (not b_next!39783))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59957)

(assert b_and!59959)

(assert (not b_next!39783))

(assert (not b_next!39785))

(check-sat)

(pop 1)

