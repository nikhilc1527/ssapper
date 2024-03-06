; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15554 () Bool)

(assert start!15554)

(declare-fun b_free!7723 () Bool)

(declare-fun b_next!40129 () Bool)

(assert (=> start!15554 (= b_free!7723 (not b_next!40129))))

(declare-fun tp!18068 () Bool)

(declare-fun b_and!60917 () Bool)

(assert (=> start!15554 (= tp!18068 b_and!60917)))

(declare-fun b!96020 () Bool)

(declare-fun res!49857 () Bool)

(declare-fun e!52366 () Bool)

(assert (=> b!96020 (=> (not res!49857) (not e!52366))))

(declare-fun nh!9 () (_ BitVec 32))

(declare-fun fh!9 () (_ BitVec 32))

(assert (=> b!96020 (= res!49857 (= nh!9 (ite (bvslt fh!9 #b11111111111111111111111111111111) #b00000000000000000000000000000000 fh!9)))))

(declare-fun res!49859 () Bool)

(assert (=> start!15554 (=> (not res!49859) (not e!52366))))

(declare-datatypes () ((List!906 (ListExt!8 (__x!412 Int)) (Cons!842 (head!1193 (_ BitVec 32)) (tail!1188 List!906)) (Nil!844))))

(declare-fun list!1116 () List!906)

(assert (=> start!15554 (= res!49859 (is-Cons!842 list!1116))))

(assert (=> start!15554 e!52366))

(assert (=> start!15554 true))

(assert (=> start!15554 tp!18068))

(declare-fun b!96021 () Bool)

(declare-fun res!49860 () Bool)

(assert (=> b!96021 (=> (not res!49860) (not e!52366))))

(declare-fun f!7853 () Int)

(declare-fun res!49846 () List!906)

(declare-fun positiveMap_failling_1!1 (Int List!906) List!906)

(assert (=> b!96021 (= res!49860 (= res!49846 (Cons!842 nh!9 (positiveMap_failling_1!1 f!7853 (tail!1188 list!1116)))))))

(declare-fun b!96019 () Bool)

(declare-fun res!49858 () Bool)

(assert (=> b!96019 (=> (not res!49858) (not e!52366))))

(declare-fun dynLambda!1162 (Int (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!96019 (= res!49858 (= fh!9 (dynLambda!1162 f!7853 (head!1193 list!1116))))))

(declare-fun b!96022 () Bool)

(declare-fun positive!6 (List!906) Bool)

(assert (=> b!96022 (= e!52366 (not (positive!6 res!49846)))))

(assert (= (and start!15554 res!49859) b!96019))

(assert (= (and b!96019 res!49858) b!96020))

(assert (= (and b!96020 res!49857) b!96021))

(assert (= (and b!96021 res!49860) b!96022))

(declare-fun b_lambda!19737 () Bool)

(assert (=> (not b_lambda!19737) (not b!96019)))

(declare-fun t!56131 () Bool)

(declare-fun tb!46865 () Bool)

(assert (=> (and start!15554 (= f!7853 f!7853) t!56131) tb!46865))

(declare-fun result!47407 () Bool)

(assert (=> tb!46865 (= result!47407 true)))

(assert (=> b!96019 t!56131))

(declare-fun b_and!60919 () Bool)

(assert (= b_and!60917 (and (=> t!56131 result!47407) b_and!60919)))

(declare-fun m!91719 () Bool)

(assert (=> b!96021 m!91719))

(declare-fun m!91721 () Bool)

(assert (=> b!96019 m!91721))

(declare-fun m!91723 () Bool)

(assert (=> b!96022 m!91723))

(push 1)

(assert (not b!96021))

(assert (not b_next!40129))

(assert (not b!96022))

(assert b_and!60919)

(assert (not b_lambda!19737))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60919)

(assert (not b_next!40129))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19739 () Bool)

(assert (= b_lambda!19737 (or (and start!15554 b_free!7723) b_lambda!19739)))

(push 1)

(assert (not b!96021))

(assert (not b_lambda!19739))

(assert (not b_next!40129))

(assert (not b!96022))

(assert b_and!60919)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60919)

(assert (not b_next!40129))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62914 () Bool)

(declare-fun res!49865 () Bool)

(declare-fun e!52371 () Bool)

(assert (=> d!62914 (=> res!49865 e!52371)))

(assert (=> d!62914 (= res!49865 (not (is-Cons!842 res!49846)))))

(assert (=> d!62914 (= (positive!6 res!49846) e!52371)))

(declare-fun b!96027 () Bool)

(declare-fun e!52372 () Bool)

(assert (=> b!96027 (= e!52371 e!52372)))

(declare-fun res!49866 () Bool)

(assert (=> b!96027 (=> (not res!49866) (not e!52372))))

(assert (=> b!96027 (= res!49866 (not (bvslt (head!1193 res!49846) #b00000000000000000000000000000000)))))

(declare-fun b!96028 () Bool)

(assert (=> b!96028 (= e!52372 (positive!6 (tail!1188 res!49846)))))

(assert (= (and d!62914 (not res!49865)) b!96027))

(assert (= (and b!96027 res!49866) b!96028))

(declare-fun m!91725 () Bool)

(assert (=> b!96028 m!91725))

(assert (=> b!96022 d!62914))

(declare-fun e!52375 () List!906)

(declare-fun lt!22072 () (_ BitVec 32))

(declare-fun b!96033 () Bool)

(assert (=> b!96033 (= e!52375 (Cons!842 (ite (bvslt lt!22072 #b11111111111111111111111111111111) #b00000000000000000000000000000000 lt!22072) (positiveMap_failling_1!1 f!7853 (tail!1188 (tail!1188 list!1116)))))))

(assert (=> b!96033 (= lt!22072 (dynLambda!1162 f!7853 (head!1193 (tail!1188 list!1116))))))

(declare-fun d!62916 () Bool)

(declare-fun lt!22071 () List!906)

(assert (=> d!62916 (positive!6 lt!22071)))

(assert (=> d!62916 (= lt!22071 e!52375)))

(declare-fun c!23667 () Bool)

(assert (=> d!62916 (= c!23667 (is-Cons!842 (tail!1188 list!1116)))))

(assert (=> d!62916 (= (positiveMap_failling_1!1 f!7853 (tail!1188 list!1116)) lt!22071)))

(declare-fun b!96034 () Bool)

(assert (=> b!96034 (= e!52375 Nil!844)))

(assert (= (and d!62916 c!23667) b!96033))

(assert (= (and d!62916 (not c!23667)) b!96034))

(declare-fun b_lambda!19741 () Bool)

(assert (=> (not b_lambda!19741) (not b!96033)))

(declare-fun t!56133 () Bool)

(declare-fun tb!46867 () Bool)

(assert (=> (and start!15554 (= f!7853 f!7853) t!56133) tb!46867))

(declare-fun result!47409 () Bool)

(assert (=> tb!46867 (= result!47409 true)))

(assert (=> b!96033 t!56133))

(declare-fun b_and!60921 () Bool)

(assert (= b_and!60919 (and (=> t!56133 result!47409) b_and!60921)))

(declare-fun m!91727 () Bool)

(assert (=> b!96033 m!91727))

(declare-fun m!91729 () Bool)

(assert (=> b!96033 m!91729))

(declare-fun m!91731 () Bool)

(assert (=> d!62916 m!91731))

(assert (=> b!96021 d!62916))

(declare-fun b_lambda!19743 () Bool)

(assert (= b_lambda!19741 (or (and start!15554 b_free!7723) b_lambda!19743)))

(push 1)

(assert (not b_lambda!19743))

(assert (not b_lambda!19739))

(assert (not d!62916))

(assert (not b_next!40129))

(assert b_and!60921)

(assert (not b!96028))

(assert (not b!96033))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60921)

(assert (not b_next!40129))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62918 () Bool)

(declare-fun res!49868 () Bool)

(declare-fun e!52376 () Bool)

(assert (=> d!62918 (=> res!49868 e!52376)))

(assert (=> d!62918 (= res!49868 (not (is-Cons!842 (tail!1188 res!49846))))))

(assert (=> d!62918 (= (positive!6 (tail!1188 res!49846)) e!52376)))

(declare-fun b!96035 () Bool)

(declare-fun e!52377 () Bool)

(assert (=> b!96035 (= e!52376 e!52377)))

(declare-fun res!49869 () Bool)

(assert (=> b!96035 (=> (not res!49869) (not e!52377))))

(assert (=> b!96035 (= res!49869 (not (bvslt (head!1193 (tail!1188 res!49846)) #b00000000000000000000000000000000)))))

(declare-fun b!96036 () Bool)

(assert (=> b!96036 (= e!52377 (positive!6 (tail!1188 (tail!1188 res!49846))))))

(assert (= (and d!62918 (not res!49868)) b!96035))

(assert (= (and b!96035 res!49869) b!96036))

(declare-fun m!91733 () Bool)

(assert (=> b!96036 m!91733))

(assert (=> b!96028 d!62918))

(declare-fun d!62920 () Bool)

(declare-fun res!49870 () Bool)

(declare-fun e!52378 () Bool)

(assert (=> d!62920 (=> res!49870 e!52378)))

(assert (=> d!62920 (= res!49870 (not (is-Cons!842 lt!22071)))))

(assert (=> d!62920 (= (positive!6 lt!22071) e!52378)))

(declare-fun b!96037 () Bool)

(declare-fun e!52379 () Bool)

(assert (=> b!96037 (= e!52378 e!52379)))

(declare-fun res!49871 () Bool)

(assert (=> b!96037 (=> (not res!49871) (not e!52379))))

(assert (=> b!96037 (= res!49871 (not (bvslt (head!1193 lt!22071) #b00000000000000000000000000000000)))))

(declare-fun b!96038 () Bool)

(assert (=> b!96038 (= e!52379 (positive!6 (tail!1188 lt!22071)))))

(assert (= (and d!62920 (not res!49870)) b!96037))

(assert (= (and b!96037 res!49871) b!96038))

(declare-fun m!91735 () Bool)

(assert (=> b!96038 m!91735))

(assert (=> d!62916 d!62920))

(declare-fun b!96039 () Bool)

(declare-fun lt!22074 () (_ BitVec 32))

(declare-fun e!52380 () List!906)

(assert (=> b!96039 (= e!52380 (Cons!842 (ite (bvslt lt!22074 #b11111111111111111111111111111111) #b00000000000000000000000000000000 lt!22074) (positiveMap_failling_1!1 f!7853 (tail!1188 (tail!1188 (tail!1188 list!1116))))))))

(assert (=> b!96039 (= lt!22074 (dynLambda!1162 f!7853 (head!1193 (tail!1188 (tail!1188 list!1116)))))))

(declare-fun d!62922 () Bool)

(declare-fun lt!22073 () List!906)

(assert (=> d!62922 (positive!6 lt!22073)))

(assert (=> d!62922 (= lt!22073 e!52380)))

(declare-fun c!23668 () Bool)

(assert (=> d!62922 (= c!23668 (is-Cons!842 (tail!1188 (tail!1188 list!1116))))))

(assert (=> d!62922 (= (positiveMap_failling_1!1 f!7853 (tail!1188 (tail!1188 list!1116))) lt!22073)))

(declare-fun b!96040 () Bool)

(assert (=> b!96040 (= e!52380 Nil!844)))

(assert (= (and d!62922 c!23668) b!96039))

(assert (= (and d!62922 (not c!23668)) b!96040))

(declare-fun b_lambda!19745 () Bool)

(assert (=> (not b_lambda!19745) (not b!96039)))

(declare-fun t!56135 () Bool)

(declare-fun tb!46869 () Bool)

(assert (=> (and start!15554 (= f!7853 f!7853) t!56135) tb!46869))

(declare-fun result!47411 () Bool)

(assert (=> tb!46869 (= result!47411 true)))

(assert (=> b!96039 t!56135))

(declare-fun b_and!60923 () Bool)

(assert (= b_and!60921 (and (=> t!56135 result!47411) b_and!60923)))

(declare-fun m!91737 () Bool)

(assert (=> b!96039 m!91737))

(declare-fun m!91739 () Bool)

(assert (=> b!96039 m!91739))

(declare-fun m!91741 () Bool)

(assert (=> d!62922 m!91741))

(assert (=> b!96033 d!62922))

(declare-fun b_lambda!19747 () Bool)

(assert (= b_lambda!19745 (or (and start!15554 b_free!7723) b_lambda!19747)))

(push 1)

(assert (not b_lambda!19743))

(assert (not b!96038))

(assert (not d!62922))

(assert (not b!96039))

(assert (not b!96036))

(assert (not b_lambda!19739))

(assert (not b_next!40129))

(assert (not b_lambda!19747))

(assert b_and!60923)

(check-sat)

(get-model)

(pop 1)

