; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10696 () Bool)

(assert start!10696)

(declare-fun b_free!7357 () Bool)

(declare-fun b_next!39227 () Bool)

(assert (=> start!10696 (= b_free!7357 (not b_next!39227))))

(declare-fun tp!16948 () Bool)

(declare-fun b_and!58885 () Bool)

(assert (=> start!10696 (= tp!16948 b_and!58885)))

(declare-fun b!81231 () Bool)

(assert (=> b!81231 true))

(declare-fun b_next!39229 () Bool)

(declare-fun lambda!9545 () Int)

(declare-fun p!856 () Int)

(assert (=> start!10696 (= b_next!39227 (or (and b!81231 (= lambda!9545 p!856)) b_next!39229))))

(declare-fun bs!38671 () Bool)

(declare-fun b!81232 () Bool)

(assert (= bs!38671 (and b!81232 b!81231)))

(declare-fun lambda!9546 () Int)

(assert (=> bs!38671 (not (= lambda!9546 lambda!9545))))

(assert (=> b!81232 true))

(declare-fun b_next!39231 () Bool)

(assert (=> start!10696 (= b_next!39229 (or (and b!81232 (= lambda!9546 p!856)) b_next!39231))))

(declare-fun bs!38672 () Bool)

(declare-fun b!81242 () Bool)

(assert (= bs!38672 (and b!81242 b!81231)))

(declare-fun lambda!9547 () Int)

(assert (=> bs!38672 (not (= lambda!9547 lambda!9545))))

(declare-fun bs!38673 () Bool)

(assert (= bs!38673 (and b!81242 b!81232)))

(assert (=> bs!38673 (not (= lambda!9547 lambda!9546))))

(assert (=> b!81242 true))

(declare-fun b_next!39233 () Bool)

(assert (=> start!10696 (= b_next!39231 (or (and b!81242 (= lambda!9547 p!856)) b_next!39233))))

(declare-fun bs!38674 () Bool)

(declare-fun b!81235 () Bool)

(assert (= bs!38674 (and b!81235 b!81231)))

(declare-fun lambda!9548 () Int)

(assert (=> bs!38674 (not (= lambda!9548 lambda!9545))))

(declare-fun bs!38675 () Bool)

(assert (= bs!38675 (and b!81235 b!81232)))

(assert (=> bs!38675 (not (= lambda!9548 lambda!9546))))

(declare-fun bs!38676 () Bool)

(assert (= bs!38676 (and b!81235 b!81242)))

(assert (=> bs!38676 (not (= lambda!9548 lambda!9547))))

(assert (=> b!81235 true))

(declare-fun b_next!39235 () Bool)

(assert (=> start!10696 (= b_next!39233 (or (and b!81235 (= lambda!9548 p!856)) b_next!39235))))

(declare-fun b!81228 () Bool)

(declare-fun res!41515 () Bool)

(declare-fun e!44039 () Bool)

(assert (=> b!81228 (=> (not res!41515) (not e!44039))))

(declare-datatypes () ((List!664 (Cons!621 (h!990 Int) (t!47828 List!664)) (Nil!623))))

(declare-fun equal!10 () List!664)

(declare-fun less!5 () List!664)

(declare-fun forall_last!0 (List!664 Int) Bool)

(declare-fun ++!72 (List!664 List!664) List!664)

(declare-fun quickSort!0 (List!664) List!664)

(assert (=> b!81228 (= res!41515 (forall_last!0 (++!72 (quickSort!0 less!5) equal!10) lambda!9548))))

(declare-fun b!81229 () Bool)

(declare-fun res!41513 () Bool)

(assert (=> b!81229 (=> (not res!41513) (not e!44039))))

(declare-fun more!5 () List!664)

(declare-fun sorted_lemma!0 (List!664) Bool)

(assert (=> b!81229 (= res!41513 (sorted_lemma!0 more!5))))

(declare-fun b!81230 () Bool)

(declare-fun res!41504 () Bool)

(assert (=> b!81230 (=> (not res!41504) (not e!44039))))

(declare-fun sort_preserves_forall!0 (List!664 Int) Bool)

(assert (=> b!81230 (= res!41504 (sort_preserves_forall!0 less!5 lambda!9545))))

(declare-fun res!41511 () Bool)

(assert (=> b!81231 (=> (not res!41511) (not e!44039))))

(declare-fun ls!96 () List!664)

(declare-fun filter!17 (List!664 Int) List!664)

(assert (=> b!81231 (= res!41511 (= less!5 (filter!17 (t!47828 ls!96) lambda!9545)))))

(declare-fun res!41510 () Bool)

(assert (=> b!81232 (=> (not res!41510) (not e!44039))))

(assert (=> b!81232 (= res!41510 (= equal!10 (Cons!621 (h!990 ls!96) (filter!17 (t!47828 ls!96) lambda!9546))))))

(declare-fun b!81233 () Bool)

(declare-fun res!41512 () Bool)

(assert (=> b!81233 (=> (not res!41512) (not e!44039))))

(declare-fun forall_eq_implies_le!0 (List!664 Int) Bool)

(assert (=> b!81233 (= res!41512 (forall_eq_implies_le!0 equal!10 (h!990 ls!96)))))

(declare-fun b!81234 () Bool)

(declare-fun res!41514 () Bool)

(assert (=> b!81234 (=> (not res!41514) (not e!44039))))

(declare-fun append_preserves_forall!0 (List!664 List!664 Int) Bool)

(assert (=> b!81234 (= res!41514 (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!9548))))

(declare-fun res!41516 () Bool)

(assert (=> b!81235 (=> (not res!41516) (not e!44039))))

(assert (=> b!81235 (= res!41516 (sort_preserves_forall!0 less!5 lambda!9548))))

(declare-fun b!81236 () Bool)

(declare-fun res!41509 () Bool)

(assert (=> b!81236 (=> (not res!41509) (not e!44039))))

(declare-fun ls!123 () List!664)

(assert (=> b!81236 (= res!41509 (= ls!123 more!5))))

(declare-fun b!81237 () Bool)

(declare-fun res!41505 () Bool)

(assert (=> b!81237 (=> (not res!41505) (not e!44039))))

(assert (=> b!81237 (= res!41505 (= p!856 lambda!9547))))

(declare-fun b!81238 () Bool)

(declare-fun res!41507 () Bool)

(assert (=> b!81238 (=> (not res!41507) (not e!44039))))

(declare-fun forall_lt_implies_le!0 (List!664 Int) Bool)

(assert (=> b!81238 (= res!41507 (forall_lt_implies_le!0 less!5 (h!990 ls!96)))))

(declare-fun b!81239 () Bool)

(declare-fun res!41502 () Bool)

(assert (=> b!81239 (=> (not res!41502) (not e!44039))))

(declare-fun append_sorted!0 (List!664 List!664) Bool)

(assert (=> b!81239 (= res!41502 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun b!81240 () Bool)

(declare-fun res!41506 () Bool)

(assert (=> b!81240 (=> (not res!41506) (not e!44039))))

(assert (=> b!81240 (= res!41506 (sorted_lemma!0 less!5))))

(declare-fun b!81241 () Bool)

(declare-fun forall!19 (List!664 Int) Bool)

(assert (=> b!81241 (= e!44039 (not (forall!19 ls!123 p!856)))))

(declare-fun res!41508 () Bool)

(assert (=> b!81242 (=> (not res!41508) (not e!44039))))

(assert (=> b!81242 (= res!41508 (= more!5 (filter!17 (t!47828 ls!96) lambda!9547)))))

(declare-fun b!81243 () Bool)

(declare-fun res!41517 () Bool)

(assert (=> b!81243 (=> (not res!41517) (not e!44039))))

(assert (=> b!81243 (= res!41517 (forall_last!0 (quickSort!0 less!5) lambda!9545))))

(declare-fun res!41518 () Bool)

(assert (=> start!10696 (=> (not res!41518) (not e!44039))))

(assert (=> start!10696 (= res!41518 (and (not (is-Nil!623 ls!96)) (not (is-Nil!623 (t!47828 ls!96)))))))

(assert (=> start!10696 e!44039))

(assert (=> start!10696 true))

(assert (=> start!10696 tp!16948))

(declare-fun b!81244 () Bool)

(declare-fun res!41503 () Bool)

(assert (=> b!81244 (=> (not res!41503) (not e!44039))))

(declare-fun cons_filter_equal_sorted!0 (List!664 Int) Bool)

(assert (=> b!81244 (= res!41503 (cons_filter_equal_sorted!0 (t!47828 ls!96) (h!990 ls!96)))))

(assert (= (and start!10696 res!41518) b!81231))

(assert (= (and b!81231 res!41511) b!81232))

(assert (= (and b!81232 res!41510) b!81242))

(assert (= (and b!81242 res!41508) b!81240))

(assert (= (and b!81240 res!41506) b!81230))

(assert (= (and b!81230 res!41504) b!81243))

(assert (= (and b!81243 res!41517) b!81244))

(assert (= (and b!81244 res!41503) b!81239))

(assert (= (and b!81239 res!41502) b!81238))

(assert (= (and b!81238 res!41507) b!81235))

(assert (= (and b!81235 res!41516) b!81233))

(assert (= (and b!81233 res!41512) b!81234))

(assert (= (and b!81234 res!41514) b!81228))

(assert (= (and b!81228 res!41515) b!81229))

(assert (= (and b!81229 res!41513) b!81236))

(assert (= (and b!81236 res!41509) b!81237))

(assert (= (and b!81237 res!41505) b!81241))

(declare-fun m!76052 () Bool)

(assert (=> b!81231 m!76052))

(declare-fun m!76054 () Bool)

(assert (=> b!81240 m!76054))

(declare-fun m!76056 () Bool)

(assert (=> b!81239 m!76056))

(assert (=> b!81239 m!76056))

(declare-fun m!76058 () Bool)

(assert (=> b!81239 m!76058))

(declare-fun m!76060 () Bool)

(assert (=> b!81235 m!76060))

(declare-fun m!76062 () Bool)

(assert (=> b!81241 m!76062))

(assert (=> b!81234 m!76056))

(assert (=> b!81234 m!76056))

(declare-fun m!76064 () Bool)

(assert (=> b!81234 m!76064))

(assert (=> b!81228 m!76056))

(assert (=> b!81228 m!76056))

(declare-fun m!76066 () Bool)

(assert (=> b!81228 m!76066))

(assert (=> b!81228 m!76066))

(declare-fun m!76068 () Bool)

(assert (=> b!81228 m!76068))

(declare-fun m!76070 () Bool)

(assert (=> b!81238 m!76070))

(declare-fun m!76072 () Bool)

(assert (=> b!81244 m!76072))

(assert (=> b!81243 m!76056))

(assert (=> b!81243 m!76056))

(declare-fun m!76074 () Bool)

(assert (=> b!81243 m!76074))

(declare-fun m!76076 () Bool)

(assert (=> b!81242 m!76076))

(declare-fun m!76078 () Bool)

(assert (=> b!81233 m!76078))

(declare-fun m!76080 () Bool)

(assert (=> b!81229 m!76080))

(declare-fun m!76082 () Bool)

(assert (=> b!81232 m!76082))

(declare-fun m!76084 () Bool)

(assert (=> b!81230 m!76084))

(push 1)

(assert (not b!81231))

(assert (not b!81244))

(assert (not b!81239))

(assert (not b!81230))

(assert (not b!81235))

(assert (not b!81238))

(assert b_and!58885)

(assert (not b!81240))

(assert (not b!81241))

(assert (not b!81232))

(assert (not b!81233))

(assert (not b!81229))

(assert (not b!81243))

(assert (not b!81234))

(assert (not b!81228))

(assert (not b_next!39235))

(assert (not b!81242))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58885)

(assert (not b_next!39235))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!38677 () Bool)

(declare-fun d!55761 () Bool)

(assert (= bs!38677 (and d!55761 b!81231)))

(declare-fun lambda!9555 () Int)

(assert (=> bs!38677 (= lambda!9555 lambda!9545)))

(declare-fun bs!38678 () Bool)

(assert (= bs!38678 (and d!55761 b!81232)))

(assert (=> bs!38678 (not (= lambda!9555 lambda!9546))))

(declare-fun bs!38679 () Bool)

(assert (= bs!38679 (and d!55761 b!81242)))

(assert (=> bs!38679 (not (= lambda!9555 lambda!9547))))

(declare-fun bs!38680 () Bool)

(assert (= bs!38680 (and d!55761 b!81235)))

(assert (=> bs!38680 (not (= lambda!9555 lambda!9548))))

(assert (=> d!55761 true))

(declare-fun b_next!39237 () Bool)

(assert (=> start!10696 (= b_next!39235 (or (and d!55761 (= lambda!9555 p!856)) b_next!39237))))

(declare-fun bs!38681 () Bool)

(declare-fun b!81251 () Bool)

(assert (= bs!38681 (and b!81251 b!81232)))

(declare-fun lambda!9556 () Int)

(assert (=> bs!38681 (not (= lambda!9556 lambda!9546))))

(declare-fun bs!38682 () Bool)

(assert (= bs!38682 (and b!81251 d!55761)))

(assert (=> bs!38682 (not (= lambda!9556 lambda!9555))))

(declare-fun bs!38683 () Bool)

(assert (= bs!38683 (and b!81251 b!81242)))

(assert (=> bs!38683 (not (= lambda!9556 lambda!9547))))

(declare-fun bs!38684 () Bool)

(assert (= bs!38684 (and b!81251 b!81235)))

(assert (=> bs!38684 (= lambda!9556 lambda!9548)))

(declare-fun bs!38685 () Bool)

(assert (= bs!38685 (and b!81251 b!81231)))

(assert (=> bs!38685 (not (= lambda!9556 lambda!9545))))

(assert (=> b!81251 true))

(declare-fun b_next!39239 () Bool)

(assert (=> start!10696 (= b_next!39237 (or (and b!81251 (= lambda!9556 p!856)) b_next!39239))))

(declare-fun bs!38686 () Bool)

(declare-fun b!81252 () Bool)

(assert (= bs!38686 (and b!81252 b!81232)))

(declare-fun lambda!9557 () Int)

(assert (=> bs!38686 (not (= lambda!9557 lambda!9546))))

(declare-fun bs!38687 () Bool)

(assert (= bs!38687 (and b!81252 d!55761)))

(assert (=> bs!38687 (not (= lambda!9557 lambda!9555))))

(declare-fun bs!38688 () Bool)

(assert (= bs!38688 (and b!81252 b!81242)))

(assert (=> bs!38688 (not (= lambda!9557 lambda!9547))))

(declare-fun bs!38689 () Bool)

(assert (= bs!38689 (and b!81252 b!81235)))

(assert (=> bs!38689 (= lambda!9557 lambda!9548)))

(declare-fun bs!38690 () Bool)

(assert (= bs!38690 (and b!81252 b!81231)))

(assert (=> bs!38690 (not (= lambda!9557 lambda!9545))))

(declare-fun bs!38691 () Bool)

(assert (= bs!38691 (and b!81252 b!81251)))

(assert (=> bs!38691 (= lambda!9557 lambda!9556)))

(assert (=> b!81252 true))

(declare-fun b_next!39241 () Bool)

(assert (=> start!10696 (= b_next!39239 (or (and b!81252 (= lambda!9557 p!856)) b_next!39241))))

(declare-fun e!44042 () Bool)

(assert (=> d!55761 e!44042))

(declare-fun c!20467 () Bool)

(assert (=> d!55761 (= c!20467 (is-Cons!621 less!5))))

(assert (=> d!55761 (forall!19 less!5 lambda!9555)))

(assert (=> d!55761 (= (forall_lt_implies_le!0 less!5 (h!990 ls!96)) true)))

(assert (=> b!81251 (= e!44042 (forall!19 less!5 lambda!9556))))

(declare-fun lt!18637 () Bool)

(assert (=> b!81251 (= lt!18637 (forall_lt_implies_le!0 (t!47828 less!5) (h!990 ls!96)))))

(assert (=> b!81252 (= e!44042 (forall!19 less!5 lambda!9557))))

(assert (= (and d!55761 c!20467) b!81251))

(assert (= (and d!55761 (not c!20467)) b!81252))

(declare-fun m!76086 () Bool)

(assert (=> d!55761 m!76086))

(declare-fun m!76088 () Bool)

(assert (=> b!81251 m!76088))

(declare-fun m!76090 () Bool)

(assert (=> b!81251 m!76090))

(declare-fun m!76092 () Bool)

(assert (=> b!81252 m!76092))

(assert (=> b!81238 d!55761))

(declare-fun b!81267 () Bool)

(declare-fun e!44050 () Bool)

(declare-fun dynLambda!983 (Int Int) Bool)

(declare-fun last!16 (List!664) Int)

(assert (=> b!81267 (= e!44050 (dynLambda!983 lambda!9545 (last!16 (quickSort!0 less!5))))))

(declare-fun b!81268 () Bool)

(declare-fun e!44049 () Bool)

(declare-fun e!44051 () Bool)

(assert (=> b!81268 (= e!44049 e!44051)))

(declare-fun res!41529 () Bool)

(assert (=> b!81268 (=> res!41529 e!44051)))

(assert (=> b!81268 (= res!41529 (not (forall!19 (quickSort!0 less!5) lambda!9545)))))

(declare-fun lt!18640 () Bool)

(assert (=> b!81268 (= lt!18640 (forall_last!0 (t!47828 (quickSort!0 less!5)) lambda!9545))))

(declare-fun b!81269 () Bool)

(declare-fun res!41528 () Bool)

(assert (=> b!81269 (=> res!41528 e!44051)))

(declare-fun isEmpty!676 (List!664) Bool)

(assert (=> b!81269 (= res!41528 (isEmpty!676 (quickSort!0 less!5)))))

(declare-fun b!81270 () Bool)

(declare-fun res!41530 () Bool)

(assert (=> b!81270 (=> res!41530 e!44050)))

(assert (=> b!81270 (= res!41530 (isEmpty!676 (quickSort!0 less!5)))))

(declare-fun d!55763 () Bool)

(assert (=> d!55763 e!44049))

(declare-fun c!20470 () Bool)

(assert (=> d!55763 (= c!20470 (is-Cons!621 (quickSort!0 less!5)))))

(assert (=> d!55763 (= (forall_last!0 (quickSort!0 less!5) lambda!9545) true)))

(declare-fun b!81271 () Bool)

(assert (=> b!81271 (= e!44051 (dynLambda!983 lambda!9545 (last!16 (quickSort!0 less!5))))))

(declare-fun b!81272 () Bool)

(assert (=> b!81272 (= e!44049 e!44050)))

(declare-fun res!41527 () Bool)

(assert (=> b!81272 (=> res!41527 e!44050)))

(assert (=> b!81272 (= res!41527 (not (forall!19 (quickSort!0 less!5) lambda!9545)))))

(assert (= (and b!81268 (not res!41529)) b!81269))

(assert (= (and b!81269 (not res!41528)) b!81271))

(assert (= (and b!81272 (not res!41527)) b!81270))

(assert (= (and b!81270 (not res!41530)) b!81267))

(assert (= (and d!55763 c!20470) b!81268))

(assert (= (and d!55763 (not c!20470)) b!81272))

(declare-fun b_lambda!16043 () Bool)

(assert (=> (not b_lambda!16043) (not b!81267)))

(declare-fun b_lambda!16045 () Bool)

(assert (=> (not b_lambda!16045) (not b!81271)))

(assert (=> b!81267 m!76056))

(declare-fun m!76094 () Bool)

(assert (=> b!81267 m!76094))

(assert (=> b!81267 m!76094))

(declare-fun m!76096 () Bool)

(assert (=> b!81267 m!76096))

(assert (=> b!81269 m!76056))

(declare-fun m!76098 () Bool)

(assert (=> b!81269 m!76098))

(assert (=> b!81271 m!76056))

(assert (=> b!81271 m!76094))

(assert (=> b!81271 m!76094))

(assert (=> b!81271 m!76096))

(assert (=> b!81272 m!76056))

(declare-fun m!76100 () Bool)

(assert (=> b!81272 m!76100))

(assert (=> b!81268 m!76056))

(assert (=> b!81268 m!76100))

(declare-fun m!76102 () Bool)

(assert (=> b!81268 m!76102))

(assert (=> b!81270 m!76056))

(assert (=> b!81270 m!76098))

(assert (=> b!81243 d!55763))

(declare-fun bs!38692 () Bool)

(declare-fun b!81284 () Bool)

(assert (= bs!38692 (and b!81284 b!81232)))

(declare-fun lambda!9564 () Int)

(assert (=> bs!38692 (not (= lambda!9564 lambda!9546))))

(declare-fun bs!38693 () Bool)

(assert (= bs!38693 (and b!81284 d!55761)))

(assert (=> bs!38693 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9564 lambda!9555))))

(declare-fun bs!38694 () Bool)

(assert (= bs!38694 (and b!81284 b!81242)))

(assert (=> bs!38694 (not (= lambda!9564 lambda!9547))))

(declare-fun bs!38695 () Bool)

(assert (= bs!38695 (and b!81284 b!81235)))

(assert (=> bs!38695 (not (= lambda!9564 lambda!9548))))

(declare-fun bs!38696 () Bool)

(assert (= bs!38696 (and b!81284 b!81231)))

(assert (=> bs!38696 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9564 lambda!9545))))

(declare-fun bs!38697 () Bool)

(assert (= bs!38697 (and b!81284 b!81251)))

(assert (=> bs!38697 (not (= lambda!9564 lambda!9556))))

(declare-fun bs!38698 () Bool)

(assert (= bs!38698 (and b!81284 b!81252)))

(assert (=> bs!38698 (not (= lambda!9564 lambda!9557))))

(assert (=> b!81284 true))

(declare-fun b_next!39243 () Bool)

(assert (=> start!10696 (= b_next!39241 (or (and b!81284 (= lambda!9564 p!856)) b_next!39243))))

(declare-fun lambda!9565 () Int)

(assert (=> bs!38692 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9565 lambda!9546))))

(assert (=> b!81284 (not (= lambda!9565 lambda!9564))))

(assert (=> bs!38693 (not (= lambda!9565 lambda!9555))))

(assert (=> bs!38694 (not (= lambda!9565 lambda!9547))))

(assert (=> bs!38695 (not (= lambda!9565 lambda!9548))))

(assert (=> bs!38696 (not (= lambda!9565 lambda!9545))))

(assert (=> bs!38697 (not (= lambda!9565 lambda!9556))))

(assert (=> bs!38698 (not (= lambda!9565 lambda!9557))))

(assert (=> b!81284 true))

(declare-fun b_next!39245 () Bool)

(assert (=> start!10696 (= b_next!39243 (or (and b!81284 (= lambda!9565 p!856)) b_next!39245))))

(declare-fun lambda!9566 () Int)

(assert (=> bs!38692 (not (= lambda!9566 lambda!9546))))

(assert (=> b!81284 (not (= lambda!9566 lambda!9565))))

(assert (=> b!81284 (not (= lambda!9566 lambda!9564))))

(assert (=> bs!38693 (not (= lambda!9566 lambda!9555))))

(assert (=> bs!38694 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9566 lambda!9547))))

(assert (=> bs!38695 (not (= lambda!9566 lambda!9548))))

(assert (=> bs!38696 (not (= lambda!9566 lambda!9545))))

(assert (=> bs!38697 (not (= lambda!9566 lambda!9556))))

(assert (=> bs!38698 (not (= lambda!9566 lambda!9557))))

(assert (=> b!81284 true))

(declare-fun b_next!39247 () Bool)

(assert (=> start!10696 (= b_next!39245 (or (and b!81284 (= lambda!9566 p!856)) b_next!39247))))

(declare-fun b!81282 () Bool)

(declare-fun e!44056 () List!664)

(declare-fun e!44057 () List!664)

(assert (=> b!81282 (= e!44056 e!44057)))

(declare-fun c!20476 () Bool)

(assert (=> b!81282 (= c!20476 (and (is-Cons!621 less!5) (is-Nil!623 (t!47828 less!5))))))

(declare-fun b!81281 () Bool)

(assert (=> b!81281 (= e!44056 Nil!623)))

(declare-fun d!55765 () Bool)

(declare-fun c!20475 () Bool)

(assert (=> d!55765 (= c!20475 (is-Nil!623 less!5))))

(assert (=> d!55765 (= (quickSort!0 less!5) e!44056)))

(assert (=> b!81284 (= e!44057 (++!72 (++!72 (quickSort!0 (filter!17 (t!47828 less!5) lambda!9564)) (Cons!621 (h!990 less!5) (filter!17 (t!47828 less!5) lambda!9565))) (quickSort!0 (filter!17 (t!47828 less!5) lambda!9566))))))

(declare-fun b!81283 () Bool)

(assert (=> b!81283 (= e!44057 less!5)))

(assert (= (and b!81282 c!20476) b!81283))

(assert (= (and b!81282 (not c!20476)) b!81284))

(assert (= (and d!55765 c!20475) b!81281))

(assert (= (and d!55765 (not c!20475)) b!81282))

(declare-fun m!76104 () Bool)

(assert (=> b!81284 m!76104))

(declare-fun m!76106 () Bool)

(assert (=> b!81284 m!76106))

(declare-fun m!76108 () Bool)

(assert (=> b!81284 m!76108))

(assert (=> b!81284 m!76104))

(declare-fun m!76110 () Bool)

(assert (=> b!81284 m!76110))

(assert (=> b!81284 m!76108))

(declare-fun m!76112 () Bool)

(assert (=> b!81284 m!76112))

(declare-fun m!76114 () Bool)

(assert (=> b!81284 m!76114))

(assert (=> b!81284 m!76112))

(declare-fun m!76116 () Bool)

(assert (=> b!81284 m!76116))

(assert (=> b!81284 m!76106))

(assert (=> b!81284 m!76114))

(assert (=> b!81243 d!55765))

(declare-fun d!55767 () Bool)

(declare-fun res!41535 () Bool)

(declare-fun e!44062 () Bool)

(assert (=> d!55767 (=> res!41535 e!44062)))

(assert (=> d!55767 (= res!41535 (is-Nil!623 ls!123))))

(assert (=> d!55767 (= (forall!19 ls!123 p!856) e!44062)))

(declare-fun b!81289 () Bool)

(declare-fun e!44063 () Bool)

(assert (=> b!81289 (= e!44062 e!44063)))

(declare-fun res!41536 () Bool)

(assert (=> b!81289 (=> (not res!41536) (not e!44063))))

(assert (=> b!81289 (= res!41536 (dynLambda!983 p!856 (h!990 ls!123)))))

(declare-fun b!81290 () Bool)

(assert (=> b!81290 (= e!44063 (forall!19 (t!47828 ls!123) p!856))))

(assert (= (and d!55767 (not res!41535)) b!81289))

(assert (= (and b!81289 res!41536) b!81290))

(declare-fun b_lambda!16047 () Bool)

(assert (=> (not b_lambda!16047) (not b!81289)))

(declare-fun t!47830 () Bool)

(declare-fun tb!46207 () Bool)

(assert (=> (and start!10696 (= p!856 p!856) t!47830) tb!46207))

(declare-fun result!46637 () Bool)

(assert (=> tb!46207 (= result!46637 true)))

(assert (=> b!81289 t!47830))

(declare-fun b_and!58887 () Bool)

(assert (= b_and!58885 (and (=> t!47830 result!46637) b_and!58887)))

(declare-fun m!76118 () Bool)

(assert (=> b!81289 m!76118))

(declare-fun m!76120 () Bool)

(assert (=> b!81290 m!76120))

(assert (=> b!81241 d!55767))

(declare-fun bs!38699 () Bool)

(declare-fun b!81295 () Bool)

(assert (= bs!38699 (and b!81295 b!81232)))

(declare-fun lambda!9573 () Int)

(assert (=> bs!38699 (not (= lambda!9573 lambda!9546))))

(declare-fun bs!38700 () Bool)

(assert (= bs!38700 (and b!81295 b!81284)))

(assert (=> bs!38700 (not (= lambda!9573 lambda!9566))))

(assert (=> bs!38700 (not (= lambda!9573 lambda!9565))))

(assert (=> bs!38700 (= (= (h!990 more!5) (h!990 less!5)) (= lambda!9573 lambda!9564))))

(declare-fun bs!38701 () Bool)

(assert (= bs!38701 (and b!81295 d!55761)))

(assert (=> bs!38701 (= (= (h!990 more!5) (h!990 ls!96)) (= lambda!9573 lambda!9555))))

(declare-fun bs!38702 () Bool)

(assert (= bs!38702 (and b!81295 b!81242)))

(assert (=> bs!38702 (not (= lambda!9573 lambda!9547))))

(declare-fun bs!38703 () Bool)

(assert (= bs!38703 (and b!81295 b!81235)))

(assert (=> bs!38703 (not (= lambda!9573 lambda!9548))))

(declare-fun bs!38704 () Bool)

(assert (= bs!38704 (and b!81295 b!81231)))

(assert (=> bs!38704 (= (= (h!990 more!5) (h!990 ls!96)) (= lambda!9573 lambda!9545))))

(declare-fun bs!38705 () Bool)

(assert (= bs!38705 (and b!81295 b!81251)))

(assert (=> bs!38705 (not (= lambda!9573 lambda!9556))))

(declare-fun bs!38706 () Bool)

(assert (= bs!38706 (and b!81295 b!81252)))

(assert (=> bs!38706 (not (= lambda!9573 lambda!9557))))

(assert (=> b!81295 true))

(declare-fun b_next!39249 () Bool)

(assert (=> start!10696 (= b_next!39247 (or (and b!81295 (= lambda!9573 p!856)) b_next!39249))))

(declare-fun lambda!9574 () Int)

(assert (=> bs!38699 (= (= (h!990 more!5) (h!990 ls!96)) (= lambda!9574 lambda!9546))))

(assert (=> bs!38700 (not (= lambda!9574 lambda!9566))))

(assert (=> bs!38700 (= (= (h!990 more!5) (h!990 less!5)) (= lambda!9574 lambda!9565))))

(assert (=> bs!38700 (not (= lambda!9574 lambda!9564))))

(assert (=> bs!38701 (not (= lambda!9574 lambda!9555))))

(assert (=> bs!38702 (not (= lambda!9574 lambda!9547))))

(assert (=> bs!38703 (not (= lambda!9574 lambda!9548))))

(assert (=> bs!38704 (not (= lambda!9574 lambda!9545))))

(assert (=> bs!38705 (not (= lambda!9574 lambda!9556))))

(assert (=> bs!38706 (not (= lambda!9574 lambda!9557))))

(assert (=> b!81295 (not (= lambda!9574 lambda!9573))))

(assert (=> b!81295 true))

(declare-fun b_next!39251 () Bool)

(assert (=> start!10696 (= b_next!39249 (or (and b!81295 (= lambda!9574 p!856)) b_next!39251))))

(declare-fun lambda!9575 () Int)

(assert (=> bs!38699 (not (= lambda!9575 lambda!9546))))

(assert (=> bs!38700 (= (= (h!990 more!5) (h!990 less!5)) (= lambda!9575 lambda!9566))))

(assert (=> bs!38700 (not (= lambda!9575 lambda!9565))))

(assert (=> bs!38700 (not (= lambda!9575 lambda!9564))))

(assert (=> bs!38701 (not (= lambda!9575 lambda!9555))))

(assert (=> bs!38702 (= (= (h!990 more!5) (h!990 ls!96)) (= lambda!9575 lambda!9547))))

(assert (=> bs!38703 (not (= lambda!9575 lambda!9548))))

(assert (=> bs!38704 (not (= lambda!9575 lambda!9545))))

(assert (=> bs!38705 (not (= lambda!9575 lambda!9556))))

(assert (=> bs!38706 (not (= lambda!9575 lambda!9557))))

(assert (=> b!81295 (not (= lambda!9575 lambda!9574))))

(assert (=> b!81295 (not (= lambda!9575 lambda!9573))))

(assert (=> b!81295 true))

(declare-fun b_next!39253 () Bool)

(assert (=> start!10696 (= b_next!39251 (or (and b!81295 (= lambda!9575 p!856)) b_next!39253))))

(declare-fun d!55769 () Bool)

(declare-fun isSorted!1 (List!664) Bool)

(assert (=> d!55769 (isSorted!1 (quickSort!0 more!5))))

(declare-fun lt!18652 () Bool)

(declare-fun e!44069 () Bool)

(assert (=> d!55769 (= lt!18652 e!44069)))

(declare-fun res!41543 () Bool)

(assert (=> d!55769 (=> res!41543 e!44069)))

(assert (=> d!55769 (= res!41543 (or (is-Nil!623 more!5) (and (is-Cons!621 more!5) (is-Nil!623 (t!47828 more!5)))))))

(assert (=> d!55769 (= (sorted_lemma!0 more!5) true)))

(declare-fun e!44068 () Bool)

(assert (=> b!81295 (= e!44069 e!44068)))

(declare-fun res!41544 () Bool)

(assert (=> b!81295 (=> (not res!41544) (not e!44068))))

(declare-fun lt!18651 () List!664)

(declare-fun lt!18649 () List!664)

(assert (=> b!81295 (= res!41544 (append_sorted!0 (quickSort!0 lt!18651) lt!18649))))

(declare-fun lt!18650 () List!664)

(assert (=> b!81295 (= lt!18650 (filter!17 (t!47828 more!5) lambda!9575))))

(assert (=> b!81295 (= lt!18649 (Cons!621 (h!990 more!5) (filter!17 (t!47828 more!5) lambda!9574)))))

(assert (=> b!81295 (= lt!18651 (filter!17 (t!47828 more!5) lambda!9573))))

(declare-fun b!81296 () Bool)

(assert (=> b!81296 (= e!44068 (append_sorted!0 (++!72 (quickSort!0 lt!18651) lt!18649) (quickSort!0 lt!18650)))))

(assert (= (and d!55769 (not res!41543)) b!81295))

(assert (= (and b!81295 res!41544) b!81296))

(declare-fun m!76122 () Bool)

(assert (=> d!55769 m!76122))

(assert (=> d!55769 m!76122))

(declare-fun m!76124 () Bool)

(assert (=> d!55769 m!76124))

(declare-fun m!76126 () Bool)

(assert (=> b!81295 m!76126))

(declare-fun m!76128 () Bool)

(assert (=> b!81295 m!76128))

(declare-fun m!76130 () Bool)

(assert (=> b!81295 m!76130))

(declare-fun m!76132 () Bool)

(assert (=> b!81295 m!76132))

(declare-fun m!76134 () Bool)

(assert (=> b!81295 m!76134))

(assert (=> b!81295 m!76126))

(assert (=> b!81296 m!76126))

(assert (=> b!81296 m!76126))

(declare-fun m!76136 () Bool)

(assert (=> b!81296 m!76136))

(declare-fun m!76138 () Bool)

(assert (=> b!81296 m!76138))

(assert (=> b!81296 m!76136))

(assert (=> b!81296 m!76138))

(declare-fun m!76140 () Bool)

(assert (=> b!81296 m!76140))

(assert (=> b!81229 d!55769))

(declare-fun b!81297 () Bool)

(declare-fun e!44071 () Bool)

(assert (=> b!81297 (= e!44071 (dynLambda!983 lambda!9548 (last!16 (++!72 (quickSort!0 less!5) equal!10))))))

(declare-fun b!81298 () Bool)

(declare-fun e!44070 () Bool)

(declare-fun e!44072 () Bool)

(assert (=> b!81298 (= e!44070 e!44072)))

(declare-fun res!41547 () Bool)

(assert (=> b!81298 (=> res!41547 e!44072)))

(assert (=> b!81298 (= res!41547 (not (forall!19 (++!72 (quickSort!0 less!5) equal!10) lambda!9548)))))

(declare-fun lt!18653 () Bool)

(assert (=> b!81298 (= lt!18653 (forall_last!0 (t!47828 (++!72 (quickSort!0 less!5) equal!10)) lambda!9548))))

(declare-fun b!81299 () Bool)

(declare-fun res!41546 () Bool)

(assert (=> b!81299 (=> res!41546 e!44072)))

(assert (=> b!81299 (= res!41546 (isEmpty!676 (++!72 (quickSort!0 less!5) equal!10)))))

(declare-fun b!81300 () Bool)

(declare-fun res!41548 () Bool)

(assert (=> b!81300 (=> res!41548 e!44071)))

(assert (=> b!81300 (= res!41548 (isEmpty!676 (++!72 (quickSort!0 less!5) equal!10)))))

(declare-fun d!55771 () Bool)

(assert (=> d!55771 e!44070))

(declare-fun c!20477 () Bool)

(assert (=> d!55771 (= c!20477 (is-Cons!621 (++!72 (quickSort!0 less!5) equal!10)))))

(assert (=> d!55771 (= (forall_last!0 (++!72 (quickSort!0 less!5) equal!10) lambda!9548) true)))

(declare-fun b!81301 () Bool)

(assert (=> b!81301 (= e!44072 (dynLambda!983 lambda!9548 (last!16 (++!72 (quickSort!0 less!5) equal!10))))))

(declare-fun b!81302 () Bool)

(assert (=> b!81302 (= e!44070 e!44071)))

(declare-fun res!41545 () Bool)

(assert (=> b!81302 (=> res!41545 e!44071)))

(assert (=> b!81302 (= res!41545 (not (forall!19 (++!72 (quickSort!0 less!5) equal!10) lambda!9548)))))

(assert (= (and b!81298 (not res!41547)) b!81299))

(assert (= (and b!81299 (not res!41546)) b!81301))

(assert (= (and b!81302 (not res!41545)) b!81300))

(assert (= (and b!81300 (not res!41548)) b!81297))

(assert (= (and d!55771 c!20477) b!81298))

(assert (= (and d!55771 (not c!20477)) b!81302))

(declare-fun b_lambda!16049 () Bool)

(assert (=> (not b_lambda!16049) (not b!81297)))

(declare-fun b_lambda!16051 () Bool)

(assert (=> (not b_lambda!16051) (not b!81301)))

(assert (=> b!81297 m!76066))

(declare-fun m!76142 () Bool)

(assert (=> b!81297 m!76142))

(assert (=> b!81297 m!76142))

(declare-fun m!76144 () Bool)

(assert (=> b!81297 m!76144))

(assert (=> b!81299 m!76066))

(declare-fun m!76146 () Bool)

(assert (=> b!81299 m!76146))

(assert (=> b!81301 m!76066))

(assert (=> b!81301 m!76142))

(assert (=> b!81301 m!76142))

(assert (=> b!81301 m!76144))

(assert (=> b!81302 m!76066))

(declare-fun m!76148 () Bool)

(assert (=> b!81302 m!76148))

(assert (=> b!81298 m!76066))

(assert (=> b!81298 m!76148))

(declare-fun m!76150 () Bool)

(assert (=> b!81298 m!76150))

(assert (=> b!81300 m!76066))

(assert (=> b!81300 m!76146))

(assert (=> b!81228 d!55771))

(declare-fun b!81312 () Bool)

(declare-fun e!44077 () List!664)

(assert (=> b!81312 (= e!44077 (Cons!621 (h!990 (quickSort!0 less!5)) (++!72 (t!47828 (quickSort!0 less!5)) equal!10)))))

(declare-fun d!55773 () Bool)

(declare-fun e!44078 () Bool)

(assert (=> d!55773 e!44078))

(declare-fun res!41554 () Bool)

(assert (=> d!55773 (=> (not res!41554) (not e!44078))))

(declare-fun lt!18656 () List!664)

(declare-fun content!123 (List!664) (Set Int))

(assert (=> d!55773 (= res!41554 (= (content!123 lt!18656) (union (content!123 (quickSort!0 less!5)) (content!123 equal!10))))))

(assert (=> d!55773 (= lt!18656 e!44077)))

(declare-fun c!20480 () Bool)

(assert (=> d!55773 (= c!20480 (is-Nil!623 (quickSort!0 less!5)))))

(assert (=> d!55773 (= (++!72 (quickSort!0 less!5) equal!10) lt!18656)))

(declare-fun b!81313 () Bool)

(declare-fun res!41555 () Bool)

(assert (=> b!81313 (=> (not res!41555) (not e!44078))))

(declare-fun size!652 (List!664) Int)

(assert (=> b!81313 (= res!41555 (= (size!652 lt!18656) (+ (size!652 (quickSort!0 less!5)) (size!652 equal!10))))))

(declare-fun b!81314 () Bool)

(assert (=> b!81314 (= e!44078 (or (not (= equal!10 Nil!623)) (= lt!18656 (quickSort!0 less!5))))))

(declare-fun b!81311 () Bool)

(assert (=> b!81311 (= e!44077 equal!10)))

(assert (= (and d!55773 c!20480) b!81311))

(assert (= (and d!55773 (not c!20480)) b!81312))

(assert (= (and d!55773 res!41554) b!81313))

(assert (= (and b!81313 res!41555) b!81314))

(declare-fun m!76152 () Bool)

(assert (=> b!81312 m!76152))

(declare-fun m!76154 () Bool)

(assert (=> d!55773 m!76154))

(assert (=> d!55773 m!76056))

(declare-fun m!76156 () Bool)

(assert (=> d!55773 m!76156))

(declare-fun m!76158 () Bool)

(assert (=> d!55773 m!76158))

(declare-fun m!76160 () Bool)

(assert (=> b!81313 m!76160))

(assert (=> b!81313 m!76056))

(declare-fun m!76162 () Bool)

(assert (=> b!81313 m!76162))

(declare-fun m!76164 () Bool)

(assert (=> b!81313 m!76164))

(assert (=> b!81228 d!55773))

(assert (=> b!81228 d!55765))

(declare-fun bs!38707 () Bool)

(declare-fun d!55775 () Bool)

(assert (= bs!38707 (and d!55775 b!81232)))

(declare-fun lambda!9578 () Int)

(assert (=> bs!38707 (= lambda!9578 lambda!9546)))

(declare-fun bs!38708 () Bool)

(assert (= bs!38708 (and d!55775 b!81284)))

(assert (=> bs!38708 (not (= lambda!9578 lambda!9566))))

(assert (=> bs!38708 (= (= (h!990 ls!96) (h!990 less!5)) (= lambda!9578 lambda!9565))))

(assert (=> bs!38708 (not (= lambda!9578 lambda!9564))))

(declare-fun bs!38709 () Bool)

(assert (= bs!38709 (and d!55775 d!55761)))

(assert (=> bs!38709 (not (= lambda!9578 lambda!9555))))

(declare-fun bs!38710 () Bool)

(assert (= bs!38710 (and d!55775 b!81242)))

(assert (=> bs!38710 (not (= lambda!9578 lambda!9547))))

(declare-fun bs!38711 () Bool)

(assert (= bs!38711 (and d!55775 b!81235)))

(assert (=> bs!38711 (not (= lambda!9578 lambda!9548))))

(declare-fun bs!38712 () Bool)

(assert (= bs!38712 (and d!55775 b!81231)))

(assert (=> bs!38712 (not (= lambda!9578 lambda!9545))))

(declare-fun bs!38713 () Bool)

(assert (= bs!38713 (and d!55775 b!81251)))

(assert (=> bs!38713 (not (= lambda!9578 lambda!9556))))

(declare-fun bs!38714 () Bool)

(assert (= bs!38714 (and d!55775 b!81252)))

(assert (=> bs!38714 (not (= lambda!9578 lambda!9557))))

(declare-fun bs!38715 () Bool)

(assert (= bs!38715 (and d!55775 b!81295)))

(assert (=> bs!38715 (not (= lambda!9578 lambda!9575))))

(assert (=> bs!38715 (= (= (h!990 ls!96) (h!990 more!5)) (= lambda!9578 lambda!9574))))

(assert (=> bs!38715 (not (= lambda!9578 lambda!9573))))

(assert (=> d!55775 true))

(declare-fun b_next!39255 () Bool)

(assert (=> start!10696 (= b_next!39253 (or (and d!55775 (= lambda!9578 p!856)) b_next!39255))))

(assert (=> d!55775 (isSorted!1 (Cons!621 (h!990 ls!96) (filter!17 (t!47828 ls!96) lambda!9578)))))

(declare-datatypes () ((Unit!1175 (Unit!1176))))

(declare-fun lt!18659 () Unit!1175)

(declare-fun Unit!1177 () Unit!1175)

(assert (=> d!55775 (= lt!18659 Unit!1177)))

(declare-fun filter_equal_sorted!0 (List!664 Int) Bool)

(assert (=> d!55775 (filter_equal_sorted!0 (t!47828 ls!96) (h!990 ls!96))))

(assert (=> d!55775 (= (cons_filter_equal_sorted!0 (t!47828 ls!96) (h!990 ls!96)) true)))

(declare-fun bs!38716 () Bool)

(assert (= bs!38716 d!55775))

(declare-fun m!76166 () Bool)

(assert (=> bs!38716 m!76166))

(declare-fun m!76168 () Bool)

(assert (=> bs!38716 m!76168))

(declare-fun m!76170 () Bool)

(assert (=> bs!38716 m!76170))

(assert (=> b!81244 d!55775))

(declare-fun bs!38717 () Bool)

(declare-fun d!55777 () Bool)

(assert (= bs!38717 (and d!55777 b!81232)))

(declare-fun lambda!9585 () Int)

(assert (=> bs!38717 (= lambda!9585 lambda!9546)))

(declare-fun bs!38718 () Bool)

(assert (= bs!38718 (and d!55777 b!81284)))

(assert (=> bs!38718 (not (= lambda!9585 lambda!9566))))

(assert (=> bs!38718 (= (= (h!990 ls!96) (h!990 less!5)) (= lambda!9585 lambda!9565))))

(assert (=> bs!38718 (not (= lambda!9585 lambda!9564))))

(declare-fun bs!38719 () Bool)

(assert (= bs!38719 (and d!55777 d!55761)))

(assert (=> bs!38719 (not (= lambda!9585 lambda!9555))))

(declare-fun bs!38720 () Bool)

(assert (= bs!38720 (and d!55777 d!55775)))

(assert (=> bs!38720 (= lambda!9585 lambda!9578)))

(declare-fun bs!38721 () Bool)

(assert (= bs!38721 (and d!55777 b!81242)))

(assert (=> bs!38721 (not (= lambda!9585 lambda!9547))))

(declare-fun bs!38722 () Bool)

(assert (= bs!38722 (and d!55777 b!81235)))

(assert (=> bs!38722 (not (= lambda!9585 lambda!9548))))

(declare-fun bs!38723 () Bool)

(assert (= bs!38723 (and d!55777 b!81231)))

(assert (=> bs!38723 (not (= lambda!9585 lambda!9545))))

(declare-fun bs!38724 () Bool)

(assert (= bs!38724 (and d!55777 b!81251)))

(assert (=> bs!38724 (not (= lambda!9585 lambda!9556))))

(declare-fun bs!38725 () Bool)

(assert (= bs!38725 (and d!55777 b!81252)))

(assert (=> bs!38725 (not (= lambda!9585 lambda!9557))))

(declare-fun bs!38726 () Bool)

(assert (= bs!38726 (and d!55777 b!81295)))

(assert (=> bs!38726 (not (= lambda!9585 lambda!9575))))

(assert (=> bs!38726 (= (= (h!990 ls!96) (h!990 more!5)) (= lambda!9585 lambda!9574))))

(assert (=> bs!38726 (not (= lambda!9585 lambda!9573))))

(assert (=> d!55777 true))

(declare-fun b_next!39257 () Bool)

(assert (=> start!10696 (= b_next!39255 (or (and d!55777 (= lambda!9585 p!856)) b_next!39257))))

(declare-fun bs!38727 () Bool)

(declare-fun b!81319 () Bool)

(assert (= bs!38727 (and b!81319 b!81232)))

(declare-fun lambda!9586 () Int)

(assert (=> bs!38727 (not (= lambda!9586 lambda!9546))))

(declare-fun bs!38728 () Bool)

(assert (= bs!38728 (and b!81319 b!81284)))

(assert (=> bs!38728 (not (= lambda!9586 lambda!9566))))

(assert (=> bs!38728 (not (= lambda!9586 lambda!9565))))

(assert (=> bs!38728 (not (= lambda!9586 lambda!9564))))

(declare-fun bs!38729 () Bool)

(assert (= bs!38729 (and b!81319 d!55761)))

(assert (=> bs!38729 (not (= lambda!9586 lambda!9555))))

(declare-fun bs!38730 () Bool)

(assert (= bs!38730 (and b!81319 d!55775)))

(assert (=> bs!38730 (not (= lambda!9586 lambda!9578))))

(declare-fun bs!38731 () Bool)

(assert (= bs!38731 (and b!81319 d!55777)))

(assert (=> bs!38731 (not (= lambda!9586 lambda!9585))))

(declare-fun bs!38732 () Bool)

(assert (= bs!38732 (and b!81319 b!81242)))

(assert (=> bs!38732 (not (= lambda!9586 lambda!9547))))

(declare-fun bs!38733 () Bool)

(assert (= bs!38733 (and b!81319 b!81235)))

(assert (=> bs!38733 (= lambda!9586 lambda!9548)))

(declare-fun bs!38734 () Bool)

(assert (= bs!38734 (and b!81319 b!81231)))

(assert (=> bs!38734 (not (= lambda!9586 lambda!9545))))

(declare-fun bs!38735 () Bool)

(assert (= bs!38735 (and b!81319 b!81251)))

(assert (=> bs!38735 (= lambda!9586 lambda!9556)))

(declare-fun bs!38736 () Bool)

(assert (= bs!38736 (and b!81319 b!81252)))

(assert (=> bs!38736 (= lambda!9586 lambda!9557)))

(declare-fun bs!38737 () Bool)

(assert (= bs!38737 (and b!81319 b!81295)))

(assert (=> bs!38737 (not (= lambda!9586 lambda!9575))))

(assert (=> bs!38737 (not (= lambda!9586 lambda!9574))))

(assert (=> bs!38737 (not (= lambda!9586 lambda!9573))))

(assert (=> b!81319 true))

(declare-fun b_next!39259 () Bool)

(assert (=> start!10696 (= b_next!39257 (or (and b!81319 (= lambda!9586 p!856)) b_next!39259))))

(declare-fun bs!38738 () Bool)

(declare-fun b!81320 () Bool)

(assert (= bs!38738 (and b!81320 b!81319)))

(declare-fun lambda!9587 () Int)

(assert (=> bs!38738 (= lambda!9587 lambda!9586)))

(declare-fun bs!38739 () Bool)

(assert (= bs!38739 (and b!81320 b!81232)))

(assert (=> bs!38739 (not (= lambda!9587 lambda!9546))))

(declare-fun bs!38740 () Bool)

(assert (= bs!38740 (and b!81320 b!81284)))

(assert (=> bs!38740 (not (= lambda!9587 lambda!9566))))

(assert (=> bs!38740 (not (= lambda!9587 lambda!9565))))

(assert (=> bs!38740 (not (= lambda!9587 lambda!9564))))

(declare-fun bs!38741 () Bool)

(assert (= bs!38741 (and b!81320 d!55761)))

(assert (=> bs!38741 (not (= lambda!9587 lambda!9555))))

(declare-fun bs!38742 () Bool)

(assert (= bs!38742 (and b!81320 d!55775)))

(assert (=> bs!38742 (not (= lambda!9587 lambda!9578))))

(declare-fun bs!38743 () Bool)

(assert (= bs!38743 (and b!81320 d!55777)))

(assert (=> bs!38743 (not (= lambda!9587 lambda!9585))))

(declare-fun bs!38744 () Bool)

(assert (= bs!38744 (and b!81320 b!81242)))

(assert (=> bs!38744 (not (= lambda!9587 lambda!9547))))

(declare-fun bs!38745 () Bool)

(assert (= bs!38745 (and b!81320 b!81235)))

(assert (=> bs!38745 (= lambda!9587 lambda!9548)))

(declare-fun bs!38746 () Bool)

(assert (= bs!38746 (and b!81320 b!81231)))

(assert (=> bs!38746 (not (= lambda!9587 lambda!9545))))

(declare-fun bs!38747 () Bool)

(assert (= bs!38747 (and b!81320 b!81251)))

(assert (=> bs!38747 (= lambda!9587 lambda!9556)))

(declare-fun bs!38748 () Bool)

(assert (= bs!38748 (and b!81320 b!81252)))

(assert (=> bs!38748 (= lambda!9587 lambda!9557)))

(declare-fun bs!38749 () Bool)

(assert (= bs!38749 (and b!81320 b!81295)))

(assert (=> bs!38749 (not (= lambda!9587 lambda!9575))))

(assert (=> bs!38749 (not (= lambda!9587 lambda!9574))))

(assert (=> bs!38749 (not (= lambda!9587 lambda!9573))))

(assert (=> b!81320 true))

(declare-fun b_next!39261 () Bool)

(assert (=> start!10696 (= b_next!39259 (or (and b!81320 (= lambda!9587 p!856)) b_next!39261))))

(declare-fun e!44081 () Bool)

(assert (=> d!55777 e!44081))

(declare-fun c!20483 () Bool)

(assert (=> d!55777 (= c!20483 (is-Cons!621 equal!10))))

(assert (=> d!55777 (forall!19 equal!10 lambda!9585)))

(assert (=> d!55777 (= (forall_eq_implies_le!0 equal!10 (h!990 ls!96)) true)))

(assert (=> b!81319 (= e!44081 (forall!19 equal!10 lambda!9586))))

(declare-fun lt!18662 () Bool)

(assert (=> b!81319 (= lt!18662 (forall_eq_implies_le!0 (t!47828 equal!10) (h!990 ls!96)))))

(assert (=> b!81320 (= e!44081 (forall!19 equal!10 lambda!9587))))

(assert (= (and d!55777 c!20483) b!81319))

(assert (= (and d!55777 (not c!20483)) b!81320))

(declare-fun m!76172 () Bool)

(assert (=> d!55777 m!76172))

(declare-fun m!76174 () Bool)

(assert (=> b!81319 m!76174))

(declare-fun m!76176 () Bool)

(assert (=> b!81319 m!76176))

(declare-fun m!76178 () Bool)

(assert (=> b!81320 m!76178))

(assert (=> b!81233 d!55777))

(declare-fun d!55779 () Bool)

(declare-fun e!44091 () Bool)

(assert (=> d!55779 e!44091))

(declare-fun res!41568 () Bool)

(assert (=> d!55779 (=> (not res!41568) (not e!44091))))

(declare-fun lt!18668 () List!664)

(assert (=> d!55779 (= res!41568 (<= (size!652 lt!18668) (size!652 (t!47828 ls!96))))))

(declare-fun e!44092 () List!664)

(assert (=> d!55779 (= lt!18668 e!44092)))

(declare-fun c!20489 () Bool)

(assert (=> d!55779 (= c!20489 (is-Nil!623 (t!47828 ls!96)))))

(assert (=> d!55779 (= (filter!17 (t!47828 ls!96) lambda!9547) lt!18668)))

(declare-fun b!81335 () Bool)

(declare-fun res!41567 () Bool)

(assert (=> b!81335 (=> (not res!41567) (not e!44091))))

(assert (=> b!81335 (= res!41567 (subset (content!123 lt!18668) (content!123 (t!47828 ls!96))))))

(declare-fun b!81336 () Bool)

(assert (=> b!81336 (= e!44091 (forall!19 lt!18668 lambda!9547))))

(declare-fun b!81337 () Bool)

(declare-fun e!44090 () List!664)

(declare-fun lt!18667 () List!664)

(assert (=> b!81337 (= e!44090 lt!18667)))

(declare-fun b!81338 () Bool)

(assert (=> b!81338 (= e!44092 Nil!623)))

(declare-fun b!81339 () Bool)

(assert (=> b!81339 (= e!44092 e!44090)))

(declare-fun c!20488 () Bool)

(declare-fun e!44093 () Bool)

(assert (=> b!81339 (= c!20488 e!44093)))

(declare-fun res!41566 () Bool)

(assert (=> b!81339 (=> (not res!41566) (not e!44093))))

(assert (=> b!81339 (= res!41566 (is-Cons!621 (t!47828 ls!96)))))

(assert (=> b!81339 (= lt!18667 (filter!17 (t!47828 (t!47828 ls!96)) lambda!9547))))

(declare-fun b!81340 () Bool)

(assert (=> b!81340 (= e!44090 (Cons!621 (h!990 (t!47828 ls!96)) lt!18667))))

(declare-fun b!81341 () Bool)

(assert (=> b!81341 (= e!44093 (dynLambda!983 lambda!9547 (h!990 (t!47828 ls!96))))))

(assert (= (and b!81339 res!41566) b!81341))

(assert (= (and b!81339 c!20488) b!81340))

(assert (= (and b!81339 (not c!20488)) b!81337))

(assert (= (and d!55779 c!20489) b!81338))

(assert (= (and d!55779 (not c!20489)) b!81339))

(assert (= (and d!55779 res!41568) b!81335))

(assert (= (and b!81335 res!41567) b!81336))

(declare-fun b_lambda!16053 () Bool)

(assert (=> (not b_lambda!16053) (not b!81341)))

(declare-fun m!76180 () Bool)

(assert (=> d!55779 m!76180))

(declare-fun m!76182 () Bool)

(assert (=> d!55779 m!76182))

(declare-fun m!76184 () Bool)

(assert (=> b!81335 m!76184))

(declare-fun m!76186 () Bool)

(assert (=> b!81335 m!76186))

(declare-fun m!76188 () Bool)

(assert (=> b!81336 m!76188))

(declare-fun m!76190 () Bool)

(assert (=> b!81341 m!76190))

(declare-fun m!76192 () Bool)

(assert (=> b!81339 m!76192))

(assert (=> b!81242 d!55779))

(declare-fun d!55781 () Bool)

(declare-fun e!44095 () Bool)

(assert (=> d!55781 e!44095))

(declare-fun res!41571 () Bool)

(assert (=> d!55781 (=> (not res!41571) (not e!44095))))

(declare-fun lt!18670 () List!664)

(assert (=> d!55781 (= res!41571 (<= (size!652 lt!18670) (size!652 (t!47828 ls!96))))))

(declare-fun e!44096 () List!664)

(assert (=> d!55781 (= lt!18670 e!44096)))

(declare-fun c!20491 () Bool)

(assert (=> d!55781 (= c!20491 (is-Nil!623 (t!47828 ls!96)))))

(assert (=> d!55781 (= (filter!17 (t!47828 ls!96) lambda!9545) lt!18670)))

(declare-fun b!81342 () Bool)

(declare-fun res!41570 () Bool)

(assert (=> b!81342 (=> (not res!41570) (not e!44095))))

(assert (=> b!81342 (= res!41570 (subset (content!123 lt!18670) (content!123 (t!47828 ls!96))))))

(declare-fun b!81343 () Bool)

(assert (=> b!81343 (= e!44095 (forall!19 lt!18670 lambda!9545))))

(declare-fun b!81344 () Bool)

(declare-fun e!44094 () List!664)

(declare-fun lt!18669 () List!664)

(assert (=> b!81344 (= e!44094 lt!18669)))

(declare-fun b!81345 () Bool)

(assert (=> b!81345 (= e!44096 Nil!623)))

(declare-fun b!81346 () Bool)

(assert (=> b!81346 (= e!44096 e!44094)))

(declare-fun c!20490 () Bool)

(declare-fun e!44097 () Bool)

(assert (=> b!81346 (= c!20490 e!44097)))

(declare-fun res!41569 () Bool)

(assert (=> b!81346 (=> (not res!41569) (not e!44097))))

(assert (=> b!81346 (= res!41569 (is-Cons!621 (t!47828 ls!96)))))

(assert (=> b!81346 (= lt!18669 (filter!17 (t!47828 (t!47828 ls!96)) lambda!9545))))

(declare-fun b!81347 () Bool)

(assert (=> b!81347 (= e!44094 (Cons!621 (h!990 (t!47828 ls!96)) lt!18669))))

(declare-fun b!81348 () Bool)

(assert (=> b!81348 (= e!44097 (dynLambda!983 lambda!9545 (h!990 (t!47828 ls!96))))))

(assert (= (and b!81346 res!41569) b!81348))

(assert (= (and b!81346 c!20490) b!81347))

(assert (= (and b!81346 (not c!20490)) b!81344))

(assert (= (and d!55781 c!20491) b!81345))

(assert (= (and d!55781 (not c!20491)) b!81346))

(assert (= (and d!55781 res!41571) b!81342))

(assert (= (and b!81342 res!41570) b!81343))

(declare-fun b_lambda!16055 () Bool)

(assert (=> (not b_lambda!16055) (not b!81348)))

(declare-fun m!76194 () Bool)

(assert (=> d!55781 m!76194))

(assert (=> d!55781 m!76182))

(declare-fun m!76196 () Bool)

(assert (=> b!81342 m!76196))

(assert (=> b!81342 m!76186))

(declare-fun m!76198 () Bool)

(assert (=> b!81343 m!76198))

(declare-fun m!76200 () Bool)

(assert (=> b!81348 m!76200))

(declare-fun m!76202 () Bool)

(assert (=> b!81346 m!76202))

(assert (=> b!81231 d!55781))

(declare-fun d!55783 () Bool)

(declare-fun e!44099 () Bool)

(assert (=> d!55783 e!44099))

(declare-fun res!41574 () Bool)

(assert (=> d!55783 (=> (not res!41574) (not e!44099))))

(declare-fun lt!18672 () List!664)

(assert (=> d!55783 (= res!41574 (<= (size!652 lt!18672) (size!652 (t!47828 ls!96))))))

(declare-fun e!44100 () List!664)

(assert (=> d!55783 (= lt!18672 e!44100)))

(declare-fun c!20493 () Bool)

(assert (=> d!55783 (= c!20493 (is-Nil!623 (t!47828 ls!96)))))

(assert (=> d!55783 (= (filter!17 (t!47828 ls!96) lambda!9546) lt!18672)))

(declare-fun b!81349 () Bool)

(declare-fun res!41573 () Bool)

(assert (=> b!81349 (=> (not res!41573) (not e!44099))))

(assert (=> b!81349 (= res!41573 (subset (content!123 lt!18672) (content!123 (t!47828 ls!96))))))

(declare-fun b!81350 () Bool)

(assert (=> b!81350 (= e!44099 (forall!19 lt!18672 lambda!9546))))

(declare-fun b!81351 () Bool)

(declare-fun e!44098 () List!664)

(declare-fun lt!18671 () List!664)

(assert (=> b!81351 (= e!44098 lt!18671)))

(declare-fun b!81352 () Bool)

(assert (=> b!81352 (= e!44100 Nil!623)))

(declare-fun b!81353 () Bool)

(assert (=> b!81353 (= e!44100 e!44098)))

(declare-fun c!20492 () Bool)

(declare-fun e!44101 () Bool)

(assert (=> b!81353 (= c!20492 e!44101)))

(declare-fun res!41572 () Bool)

(assert (=> b!81353 (=> (not res!41572) (not e!44101))))

(assert (=> b!81353 (= res!41572 (is-Cons!621 (t!47828 ls!96)))))

(assert (=> b!81353 (= lt!18671 (filter!17 (t!47828 (t!47828 ls!96)) lambda!9546))))

(declare-fun b!81354 () Bool)

(assert (=> b!81354 (= e!44098 (Cons!621 (h!990 (t!47828 ls!96)) lt!18671))))

(declare-fun b!81355 () Bool)

(assert (=> b!81355 (= e!44101 (dynLambda!983 lambda!9546 (h!990 (t!47828 ls!96))))))

(assert (= (and b!81353 res!41572) b!81355))

(assert (= (and b!81353 c!20492) b!81354))

(assert (= (and b!81353 (not c!20492)) b!81351))

(assert (= (and d!55783 c!20493) b!81352))

(assert (= (and d!55783 (not c!20493)) b!81353))

(assert (= (and d!55783 res!41574) b!81349))

(assert (= (and b!81349 res!41573) b!81350))

(declare-fun b_lambda!16057 () Bool)

(assert (=> (not b_lambda!16057) (not b!81355)))

(declare-fun m!76204 () Bool)

(assert (=> d!55783 m!76204))

(assert (=> d!55783 m!76182))

(declare-fun m!76206 () Bool)

(assert (=> b!81349 m!76206))

(assert (=> b!81349 m!76186))

(declare-fun m!76208 () Bool)

(assert (=> b!81350 m!76208))

(declare-fun m!76210 () Bool)

(assert (=> b!81355 m!76210))

(declare-fun m!76212 () Bool)

(assert (=> b!81353 m!76212))

(assert (=> b!81232 d!55783))

(declare-fun bs!38750 () Bool)

(declare-fun b!81369 () Bool)

(assert (= bs!38750 (and b!81369 b!81319)))

(declare-fun lambda!9600 () Int)

(assert (=> bs!38750 (not (= lambda!9600 lambda!9586))))

(declare-fun bs!38751 () Bool)

(assert (= bs!38751 (and b!81369 b!81232)))

(assert (=> bs!38751 (not (= lambda!9600 lambda!9546))))

(declare-fun bs!38752 () Bool)

(assert (= bs!38752 (and b!81369 b!81284)))

(assert (=> bs!38752 (not (= lambda!9600 lambda!9566))))

(assert (=> bs!38752 (not (= lambda!9600 lambda!9565))))

(assert (=> bs!38752 (= lambda!9600 lambda!9564)))

(declare-fun bs!38753 () Bool)

(assert (= bs!38753 (and b!81369 d!55761)))

(assert (=> bs!38753 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9600 lambda!9555))))

(declare-fun bs!38754 () Bool)

(assert (= bs!38754 (and b!81369 d!55775)))

(assert (=> bs!38754 (not (= lambda!9600 lambda!9578))))

(declare-fun bs!38755 () Bool)

(assert (= bs!38755 (and b!81369 d!55777)))

(assert (=> bs!38755 (not (= lambda!9600 lambda!9585))))

(declare-fun bs!38756 () Bool)

(assert (= bs!38756 (and b!81369 b!81320)))

(assert (=> bs!38756 (not (= lambda!9600 lambda!9587))))

(declare-fun bs!38757 () Bool)

(assert (= bs!38757 (and b!81369 b!81242)))

(assert (=> bs!38757 (not (= lambda!9600 lambda!9547))))

(declare-fun bs!38758 () Bool)

(assert (= bs!38758 (and b!81369 b!81235)))

(assert (=> bs!38758 (not (= lambda!9600 lambda!9548))))

(declare-fun bs!38759 () Bool)

(assert (= bs!38759 (and b!81369 b!81231)))

(assert (=> bs!38759 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9600 lambda!9545))))

(declare-fun bs!38760 () Bool)

(assert (= bs!38760 (and b!81369 b!81251)))

(assert (=> bs!38760 (not (= lambda!9600 lambda!9556))))

(declare-fun bs!38761 () Bool)

(assert (= bs!38761 (and b!81369 b!81252)))

(assert (=> bs!38761 (not (= lambda!9600 lambda!9557))))

(declare-fun bs!38762 () Bool)

(assert (= bs!38762 (and b!81369 b!81295)))

(assert (=> bs!38762 (not (= lambda!9600 lambda!9575))))

(assert (=> bs!38762 (not (= lambda!9600 lambda!9574))))

(assert (=> bs!38762 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9600 lambda!9573))))

(assert (=> b!81369 true))

(declare-fun b_next!39263 () Bool)

(assert (=> start!10696 (= b_next!39261 (or (and b!81369 (= lambda!9600 p!856)) b_next!39263))))

(declare-fun lambda!9601 () Int)

(assert (=> bs!38750 (not (= lambda!9601 lambda!9586))))

(assert (=> bs!38751 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9601 lambda!9546))))

(assert (=> bs!38752 (not (= lambda!9601 lambda!9566))))

(assert (=> bs!38752 (= lambda!9601 lambda!9565)))

(assert (=> bs!38752 (not (= lambda!9601 lambda!9564))))

(assert (=> bs!38753 (not (= lambda!9601 lambda!9555))))

(assert (=> bs!38754 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9601 lambda!9578))))

(assert (=> bs!38755 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9601 lambda!9585))))

(assert (=> bs!38756 (not (= lambda!9601 lambda!9587))))

(assert (=> bs!38757 (not (= lambda!9601 lambda!9547))))

(assert (=> bs!38758 (not (= lambda!9601 lambda!9548))))

(assert (=> bs!38759 (not (= lambda!9601 lambda!9545))))

(assert (=> bs!38760 (not (= lambda!9601 lambda!9556))))

(assert (=> bs!38761 (not (= lambda!9601 lambda!9557))))

(assert (=> bs!38762 (not (= lambda!9601 lambda!9575))))

(assert (=> bs!38762 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9601 lambda!9574))))

(assert (=> bs!38762 (not (= lambda!9601 lambda!9573))))

(assert (=> b!81369 (not (= lambda!9601 lambda!9600))))

(assert (=> b!81369 true))

(declare-fun b_next!39265 () Bool)

(assert (=> start!10696 (= b_next!39263 (or (and b!81369 (= lambda!9601 p!856)) b_next!39265))))

(declare-fun lambda!9602 () Int)

(assert (=> bs!38750 (not (= lambda!9602 lambda!9586))))

(assert (=> bs!38751 (not (= lambda!9602 lambda!9546))))

(assert (=> bs!38752 (= lambda!9602 lambda!9566)))

(assert (=> bs!38752 (not (= lambda!9602 lambda!9565))))

(assert (=> bs!38752 (not (= lambda!9602 lambda!9564))))

(assert (=> bs!38753 (not (= lambda!9602 lambda!9555))))

(assert (=> bs!38754 (not (= lambda!9602 lambda!9578))))

(assert (=> bs!38755 (not (= lambda!9602 lambda!9585))))

(assert (=> bs!38756 (not (= lambda!9602 lambda!9587))))

(assert (=> bs!38757 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9602 lambda!9547))))

(assert (=> bs!38758 (not (= lambda!9602 lambda!9548))))

(assert (=> bs!38759 (not (= lambda!9602 lambda!9545))))

(assert (=> bs!38760 (not (= lambda!9602 lambda!9556))))

(assert (=> bs!38761 (not (= lambda!9602 lambda!9557))))

(assert (=> bs!38762 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9602 lambda!9575))))

(assert (=> bs!38762 (not (= lambda!9602 lambda!9574))))

(assert (=> bs!38762 (not (= lambda!9602 lambda!9573))))

(assert (=> b!81369 (not (= lambda!9602 lambda!9601))))

(assert (=> b!81369 (not (= lambda!9602 lambda!9600))))

(assert (=> b!81369 true))

(declare-fun b_next!39267 () Bool)

(assert (=> start!10696 (= b_next!39265 (or (and b!81369 (= lambda!9602 p!856)) b_next!39267))))

(declare-fun d!55785 () Bool)

(assert (=> d!55785 (forall!19 (quickSort!0 less!5) lambda!9545)))

(declare-fun lt!18689 () Bool)

(declare-fun e!44114 () Bool)

(assert (=> d!55785 (= lt!18689 e!44114)))

(declare-fun res!41593 () Bool)

(assert (=> d!55785 (=> res!41593 e!44114)))

(assert (=> d!55785 (= res!41593 (or (is-Nil!623 less!5) (and (is-Cons!621 less!5) (is-Nil!623 (t!47828 less!5)))))))

(assert (=> d!55785 (forall!19 less!5 lambda!9545)))

(assert (=> d!55785 (= (sort_preserves_forall!0 less!5 lambda!9545) true)))

(declare-fun b!81366 () Bool)

(declare-fun e!44116 () Bool)

(declare-fun filter_preserves_forall!0 (List!664 Int Int) Bool)

(assert (=> b!81366 (= e!44116 (filter_preserves_forall!0 (t!47828 less!5) lambda!9602 lambda!9545))))

(declare-fun b!81367 () Bool)

(declare-fun e!44112 () Bool)

(declare-fun lt!18690 () List!664)

(declare-fun lt!18688 () List!664)

(declare-fun lt!18687 () List!664)

(assert (=> b!81367 (= e!44112 (append_preserves_forall!0 (++!72 (quickSort!0 lt!18690) lt!18687) (quickSort!0 lt!18688) lambda!9545))))

(declare-fun b!81368 () Bool)

(declare-fun e!44113 () Bool)

(assert (=> b!81368 (= e!44113 (filter_preserves_forall!0 (t!47828 less!5) lambda!9601 lambda!9545))))

(assert (=> b!81369 (= e!44114 e!44112)))

(declare-fun res!41591 () Bool)

(assert (=> b!81369 (=> (not res!41591) (not e!44112))))

(assert (=> b!81369 (= res!41591 (append_preserves_forall!0 (quickSort!0 lt!18690) lt!18687 lambda!9545))))

(declare-fun lt!18686 () Bool)

(declare-fun e!44115 () Bool)

(assert (=> b!81369 (= lt!18686 e!44115)))

(declare-fun res!41594 () Bool)

(assert (=> b!81369 (=> (not res!41594) (not e!44115))))

(assert (=> b!81369 (= res!41594 (sort_preserves_forall!0 lt!18690 lambda!9545))))

(declare-fun lt!18685 () Bool)

(assert (=> b!81369 (= lt!18685 e!44116)))

(declare-fun res!41592 () Bool)

(assert (=> b!81369 (=> (not res!41592) (not e!44116))))

(assert (=> b!81369 (= res!41592 e!44113)))

(declare-fun res!41590 () Bool)

(assert (=> b!81369 (=> (not res!41590) (not e!44113))))

(assert (=> b!81369 (= res!41590 (filter_preserves_forall!0 (t!47828 less!5) lambda!9600 lambda!9545))))

(assert (=> b!81369 (= lt!18688 (filter!17 (t!47828 less!5) lambda!9602))))

(assert (=> b!81369 (= lt!18687 (Cons!621 (h!990 less!5) (filter!17 (t!47828 less!5) lambda!9601)))))

(assert (=> b!81369 (= lt!18690 (filter!17 (t!47828 less!5) lambda!9600))))

(declare-fun b!81370 () Bool)

(assert (=> b!81370 (= e!44115 (sort_preserves_forall!0 lt!18688 lambda!9545))))

(assert (= (and d!55785 (not res!41593)) b!81369))

(assert (= (and b!81369 res!41590) b!81368))

(assert (= (and b!81369 res!41592) b!81366))

(assert (= (and b!81369 res!41594) b!81370))

(assert (= (and b!81369 res!41591) b!81367))

(assert (=> d!55785 m!76056))

(assert (=> d!55785 m!76056))

(assert (=> d!55785 m!76100))

(declare-fun m!76214 () Bool)

(assert (=> d!55785 m!76214))

(declare-fun m!76216 () Bool)

(assert (=> b!81367 m!76216))

(assert (=> b!81367 m!76216))

(declare-fun m!76218 () Bool)

(assert (=> b!81367 m!76218))

(declare-fun m!76220 () Bool)

(assert (=> b!81367 m!76220))

(assert (=> b!81367 m!76218))

(assert (=> b!81367 m!76220))

(declare-fun m!76222 () Bool)

(assert (=> b!81367 m!76222))

(declare-fun m!76224 () Bool)

(assert (=> b!81368 m!76224))

(declare-fun m!76226 () Bool)

(assert (=> b!81370 m!76226))

(declare-fun m!76228 () Bool)

(assert (=> b!81369 m!76228))

(declare-fun m!76230 () Bool)

(assert (=> b!81369 m!76230))

(declare-fun m!76232 () Bool)

(assert (=> b!81369 m!76232))

(declare-fun m!76234 () Bool)

(assert (=> b!81369 m!76234))

(assert (=> b!81369 m!76216))

(declare-fun m!76236 () Bool)

(assert (=> b!81369 m!76236))

(assert (=> b!81369 m!76216))

(declare-fun m!76238 () Bool)

(assert (=> b!81369 m!76238))

(declare-fun m!76240 () Bool)

(assert (=> b!81366 m!76240))

(assert (=> b!81230 d!55785))

(declare-fun d!55787 () Bool)

(declare-fun e!44121 () Bool)

(assert (=> d!55787 e!44121))

(declare-fun c!20496 () Bool)

(assert (=> d!55787 (= c!20496 (is-Cons!621 (quickSort!0 less!5)))))

(declare-fun e!44122 () Bool)

(assert (=> d!55787 e!44122))

(declare-fun res!41597 () Bool)

(assert (=> d!55787 (=> (not res!41597) (not e!44122))))

(assert (=> d!55787 (= res!41597 (forall!19 (quickSort!0 less!5) lambda!9548))))

(assert (=> d!55787 (= (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!9548) true)))

(declare-fun b!81377 () Bool)

(assert (=> b!81377 (= e!44122 (forall!19 equal!10 lambda!9548))))

(declare-fun b!81378 () Bool)

(assert (=> b!81378 (= e!44121 (forall!19 (++!72 (quickSort!0 less!5) equal!10) lambda!9548))))

(declare-fun lt!18693 () Bool)

(assert (=> b!81378 (= lt!18693 (append_preserves_forall!0 (t!47828 (quickSort!0 less!5)) equal!10 lambda!9548))))

(declare-fun b!81379 () Bool)

(assert (=> b!81379 (= e!44121 (forall!19 (++!72 (quickSort!0 less!5) equal!10) lambda!9548))))

(assert (= (and d!55787 res!41597) b!81377))

(assert (= (and d!55787 c!20496) b!81378))

(assert (= (and d!55787 (not c!20496)) b!81379))

(assert (=> d!55787 m!76056))

(declare-fun m!76242 () Bool)

(assert (=> d!55787 m!76242))

(declare-fun m!76244 () Bool)

(assert (=> b!81377 m!76244))

(assert (=> b!81378 m!76056))

(assert (=> b!81378 m!76066))

(assert (=> b!81378 m!76066))

(assert (=> b!81378 m!76148))

(declare-fun m!76246 () Bool)

(assert (=> b!81378 m!76246))

(assert (=> b!81379 m!76056))

(assert (=> b!81379 m!76066))

(assert (=> b!81379 m!76066))

(assert (=> b!81379 m!76148))

(assert (=> b!81234 d!55787))

(assert (=> b!81234 d!55765))

(declare-fun bs!38763 () Bool)

(declare-fun b!81380 () Bool)

(assert (= bs!38763 (and b!81380 b!81319)))

(declare-fun lambda!9603 () Int)

(assert (=> bs!38763 (not (= lambda!9603 lambda!9586))))

(declare-fun bs!38764 () Bool)

(assert (= bs!38764 (and b!81380 b!81232)))

(assert (=> bs!38764 (not (= lambda!9603 lambda!9546))))

(declare-fun bs!38765 () Bool)

(assert (= bs!38765 (and b!81380 b!81284)))

(assert (=> bs!38765 (not (= lambda!9603 lambda!9566))))

(assert (=> bs!38765 (not (= lambda!9603 lambda!9565))))

(assert (=> bs!38765 (= lambda!9603 lambda!9564)))

(declare-fun bs!38766 () Bool)

(assert (= bs!38766 (and b!81380 d!55761)))

(assert (=> bs!38766 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9603 lambda!9555))))

(declare-fun bs!38767 () Bool)

(assert (= bs!38767 (and b!81380 d!55775)))

(assert (=> bs!38767 (not (= lambda!9603 lambda!9578))))

(declare-fun bs!38768 () Bool)

(assert (= bs!38768 (and b!81380 d!55777)))

(assert (=> bs!38768 (not (= lambda!9603 lambda!9585))))

(declare-fun bs!38769 () Bool)

(assert (= bs!38769 (and b!81380 b!81320)))

(assert (=> bs!38769 (not (= lambda!9603 lambda!9587))))

(declare-fun bs!38770 () Bool)

(assert (= bs!38770 (and b!81380 b!81242)))

(assert (=> bs!38770 (not (= lambda!9603 lambda!9547))))

(declare-fun bs!38771 () Bool)

(assert (= bs!38771 (and b!81380 b!81235)))

(assert (=> bs!38771 (not (= lambda!9603 lambda!9548))))

(declare-fun bs!38772 () Bool)

(assert (= bs!38772 (and b!81380 b!81231)))

(assert (=> bs!38772 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9603 lambda!9545))))

(declare-fun bs!38773 () Bool)

(assert (= bs!38773 (and b!81380 b!81251)))

(assert (=> bs!38773 (not (= lambda!9603 lambda!9556))))

(declare-fun bs!38774 () Bool)

(assert (= bs!38774 (and b!81380 b!81252)))

(assert (=> bs!38774 (not (= lambda!9603 lambda!9557))))

(declare-fun bs!38775 () Bool)

(assert (= bs!38775 (and b!81380 b!81295)))

(assert (=> bs!38775 (not (= lambda!9603 lambda!9575))))

(assert (=> bs!38775 (not (= lambda!9603 lambda!9574))))

(assert (=> bs!38775 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9603 lambda!9573))))

(declare-fun bs!38776 () Bool)

(assert (= bs!38776 (and b!81380 b!81369)))

(assert (=> bs!38776 (not (= lambda!9603 lambda!9602))))

(assert (=> bs!38776 (not (= lambda!9603 lambda!9601))))

(assert (=> bs!38776 (= lambda!9603 lambda!9600)))

(assert (=> b!81380 true))

(declare-fun b_next!39269 () Bool)

(assert (=> start!10696 (= b_next!39267 (or (and b!81380 (= lambda!9603 p!856)) b_next!39269))))

(declare-fun lambda!9604 () Int)

(assert (=> bs!38763 (not (= lambda!9604 lambda!9586))))

(assert (=> bs!38764 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9604 lambda!9546))))

(assert (=> bs!38765 (not (= lambda!9604 lambda!9566))))

(assert (=> bs!38765 (= lambda!9604 lambda!9565)))

(assert (=> bs!38765 (not (= lambda!9604 lambda!9564))))

(assert (=> bs!38766 (not (= lambda!9604 lambda!9555))))

(assert (=> bs!38767 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9604 lambda!9578))))

(assert (=> bs!38768 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9604 lambda!9585))))

(assert (=> bs!38769 (not (= lambda!9604 lambda!9587))))

(assert (=> bs!38770 (not (= lambda!9604 lambda!9547))))

(assert (=> bs!38771 (not (= lambda!9604 lambda!9548))))

(assert (=> bs!38772 (not (= lambda!9604 lambda!9545))))

(assert (=> bs!38773 (not (= lambda!9604 lambda!9556))))

(assert (=> bs!38774 (not (= lambda!9604 lambda!9557))))

(assert (=> b!81380 (not (= lambda!9604 lambda!9603))))

(assert (=> bs!38775 (not (= lambda!9604 lambda!9575))))

(assert (=> bs!38775 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9604 lambda!9574))))

(assert (=> bs!38775 (not (= lambda!9604 lambda!9573))))

(assert (=> bs!38776 (not (= lambda!9604 lambda!9602))))

(assert (=> bs!38776 (= lambda!9604 lambda!9601)))

(assert (=> bs!38776 (not (= lambda!9604 lambda!9600))))

(assert (=> b!81380 true))

(declare-fun b_next!39271 () Bool)

(assert (=> start!10696 (= b_next!39269 (or (and b!81380 (= lambda!9604 p!856)) b_next!39271))))

(declare-fun lambda!9605 () Int)

(assert (=> bs!38763 (not (= lambda!9605 lambda!9586))))

(assert (=> bs!38764 (not (= lambda!9605 lambda!9546))))

(assert (=> bs!38765 (= lambda!9605 lambda!9566)))

(assert (=> bs!38765 (not (= lambda!9605 lambda!9565))))

(assert (=> bs!38765 (not (= lambda!9605 lambda!9564))))

(assert (=> bs!38766 (not (= lambda!9605 lambda!9555))))

(assert (=> bs!38767 (not (= lambda!9605 lambda!9578))))

(assert (=> bs!38768 (not (= lambda!9605 lambda!9585))))

(assert (=> bs!38769 (not (= lambda!9605 lambda!9587))))

(assert (=> bs!38770 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9605 lambda!9547))))

(assert (=> bs!38771 (not (= lambda!9605 lambda!9548))))

(assert (=> bs!38772 (not (= lambda!9605 lambda!9545))))

(assert (=> bs!38773 (not (= lambda!9605 lambda!9556))))

(assert (=> bs!38774 (not (= lambda!9605 lambda!9557))))

(assert (=> b!81380 (not (= lambda!9605 lambda!9604))))

(assert (=> b!81380 (not (= lambda!9605 lambda!9603))))

(assert (=> bs!38775 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9605 lambda!9575))))

(assert (=> bs!38775 (not (= lambda!9605 lambda!9574))))

(assert (=> bs!38775 (not (= lambda!9605 lambda!9573))))

(assert (=> bs!38776 (= lambda!9605 lambda!9602)))

(assert (=> bs!38776 (not (= lambda!9605 lambda!9601))))

(assert (=> bs!38776 (not (= lambda!9605 lambda!9600))))

(assert (=> b!81380 true))

(declare-fun b_next!39273 () Bool)

(assert (=> start!10696 (= b_next!39271 (or (and b!81380 (= lambda!9605 p!856)) b_next!39273))))

(declare-fun d!55789 () Bool)

(assert (=> d!55789 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18697 () Bool)

(declare-fun e!44124 () Bool)

(assert (=> d!55789 (= lt!18697 e!44124)))

(declare-fun res!41598 () Bool)

(assert (=> d!55789 (=> res!41598 e!44124)))

(assert (=> d!55789 (= res!41598 (or (is-Nil!623 less!5) (and (is-Cons!621 less!5) (is-Nil!623 (t!47828 less!5)))))))

(assert (=> d!55789 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44123 () Bool)

(assert (=> b!81380 (= e!44124 e!44123)))

(declare-fun res!41599 () Bool)

(assert (=> b!81380 (=> (not res!41599) (not e!44123))))

(declare-fun lt!18696 () List!664)

(declare-fun lt!18694 () List!664)

(assert (=> b!81380 (= res!41599 (append_sorted!0 (quickSort!0 lt!18696) lt!18694))))

(declare-fun lt!18695 () List!664)

(assert (=> b!81380 (= lt!18695 (filter!17 (t!47828 less!5) lambda!9605))))

(assert (=> b!81380 (= lt!18694 (Cons!621 (h!990 less!5) (filter!17 (t!47828 less!5) lambda!9604)))))

(assert (=> b!81380 (= lt!18696 (filter!17 (t!47828 less!5) lambda!9603))))

(declare-fun b!81381 () Bool)

(assert (=> b!81381 (= e!44123 (append_sorted!0 (++!72 (quickSort!0 lt!18696) lt!18694) (quickSort!0 lt!18695)))))

(assert (= (and d!55789 (not res!41598)) b!81380))

(assert (= (and b!81380 res!41599) b!81381))

(assert (=> d!55789 m!76056))

(assert (=> d!55789 m!76056))

(declare-fun m!76248 () Bool)

(assert (=> d!55789 m!76248))

(declare-fun m!76250 () Bool)

(assert (=> b!81380 m!76250))

(declare-fun m!76252 () Bool)

(assert (=> b!81380 m!76252))

(declare-fun m!76254 () Bool)

(assert (=> b!81380 m!76254))

(declare-fun m!76256 () Bool)

(assert (=> b!81380 m!76256))

(declare-fun m!76258 () Bool)

(assert (=> b!81380 m!76258))

(assert (=> b!81380 m!76250))

(assert (=> b!81381 m!76250))

(assert (=> b!81381 m!76250))

(declare-fun m!76260 () Bool)

(assert (=> b!81381 m!76260))

(declare-fun m!76262 () Bool)

(assert (=> b!81381 m!76262))

(assert (=> b!81381 m!76260))

(assert (=> b!81381 m!76262))

(declare-fun m!76264 () Bool)

(assert (=> b!81381 m!76264))

(assert (=> b!81240 d!55789))

(declare-fun b!81394 () Bool)

(declare-fun res!41609 () Bool)

(declare-fun e!44133 () Bool)

(assert (=> b!81394 (=> (not res!41609) (not e!44133))))

(assert (=> b!81394 (= res!41609 (isSorted!1 equal!10))))

(declare-fun b!81395 () Bool)

(declare-fun e!44132 () Bool)

(declare-fun head!1054 (List!664) Int)

(assert (=> b!81395 (= e!44132 (<= (last!16 (quickSort!0 less!5)) (head!1054 equal!10)))))

(declare-fun d!55791 () Bool)

(declare-fun e!44131 () Bool)

(assert (=> d!55791 e!44131))

(declare-fun c!20499 () Bool)

(assert (=> d!55791 (= c!20499 (is-Cons!621 (quickSort!0 less!5)))))

(assert (=> d!55791 e!44133))

(declare-fun res!41610 () Bool)

(assert (=> d!55791 (=> (not res!41610) (not e!44133))))

(assert (=> d!55791 (= res!41610 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!55791 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!81396 () Bool)

(declare-fun res!41608 () Bool)

(assert (=> b!81396 (=> res!41608 e!44132)))

(assert (=> b!81396 (= res!41608 (isEmpty!676 equal!10))))

(declare-fun b!81397 () Bool)

(assert (=> b!81397 (= e!44131 (isSorted!1 (++!72 (quickSort!0 less!5) equal!10)))))

(declare-fun b!81398 () Bool)

(assert (=> b!81398 (= e!44131 (isSorted!1 (++!72 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!18700 () Bool)

(assert (=> b!81398 (= lt!18700 (append_sorted!0 (t!47828 (quickSort!0 less!5)) equal!10))))

(declare-fun b!81399 () Bool)

(assert (=> b!81399 (= e!44133 e!44132)))

(declare-fun res!41611 () Bool)

(assert (=> b!81399 (=> res!41611 e!44132)))

(assert (=> b!81399 (= res!41611 (isEmpty!676 (quickSort!0 less!5)))))

(assert (= (and d!55791 res!41610) b!81394))

(assert (= (and b!81394 res!41609) b!81399))

(assert (= (and b!81399 (not res!41611)) b!81396))

(assert (= (and b!81396 (not res!41608)) b!81395))

(assert (= (and d!55791 c!20499) b!81398))

(assert (= (and d!55791 (not c!20499)) b!81397))

(assert (=> b!81395 m!76056))

(assert (=> b!81395 m!76094))

(declare-fun m!76266 () Bool)

(assert (=> b!81395 m!76266))

(assert (=> b!81398 m!76056))

(assert (=> b!81398 m!76066))

(assert (=> b!81398 m!76066))

(declare-fun m!76268 () Bool)

(assert (=> b!81398 m!76268))

(declare-fun m!76270 () Bool)

(assert (=> b!81398 m!76270))

(assert (=> d!55791 m!76056))

(assert (=> d!55791 m!76248))

(assert (=> b!81397 m!76056))

(assert (=> b!81397 m!76066))

(assert (=> b!81397 m!76066))

(assert (=> b!81397 m!76268))

(assert (=> b!81399 m!76056))

(assert (=> b!81399 m!76098))

(declare-fun m!76272 () Bool)

(assert (=> b!81396 m!76272))

(declare-fun m!76274 () Bool)

(assert (=> b!81394 m!76274))

(assert (=> b!81239 d!55791))

(assert (=> b!81239 d!55765))

(declare-fun bs!38777 () Bool)

(declare-fun b!81403 () Bool)

(assert (= bs!38777 (and b!81403 b!81319)))

(declare-fun lambda!9606 () Int)

(assert (=> bs!38777 (not (= lambda!9606 lambda!9586))))

(declare-fun bs!38778 () Bool)

(assert (= bs!38778 (and b!81403 b!81232)))

(assert (=> bs!38778 (not (= lambda!9606 lambda!9546))))

(declare-fun bs!38779 () Bool)

(assert (= bs!38779 (and b!81403 b!81284)))

(assert (=> bs!38779 (not (= lambda!9606 lambda!9566))))

(assert (=> bs!38779 (not (= lambda!9606 lambda!9565))))

(assert (=> bs!38779 (= lambda!9606 lambda!9564)))

(declare-fun bs!38780 () Bool)

(assert (= bs!38780 (and b!81403 d!55761)))

(assert (=> bs!38780 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9606 lambda!9555))))

(declare-fun bs!38781 () Bool)

(assert (= bs!38781 (and b!81403 d!55775)))

(assert (=> bs!38781 (not (= lambda!9606 lambda!9578))))

(declare-fun bs!38782 () Bool)

(assert (= bs!38782 (and b!81403 d!55777)))

(assert (=> bs!38782 (not (= lambda!9606 lambda!9585))))

(declare-fun bs!38783 () Bool)

(assert (= bs!38783 (and b!81403 b!81320)))

(assert (=> bs!38783 (not (= lambda!9606 lambda!9587))))

(declare-fun bs!38784 () Bool)

(assert (= bs!38784 (and b!81403 b!81242)))

(assert (=> bs!38784 (not (= lambda!9606 lambda!9547))))

(declare-fun bs!38785 () Bool)

(assert (= bs!38785 (and b!81403 b!81235)))

(assert (=> bs!38785 (not (= lambda!9606 lambda!9548))))

(declare-fun bs!38786 () Bool)

(assert (= bs!38786 (and b!81403 b!81231)))

(assert (=> bs!38786 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9606 lambda!9545))))

(declare-fun bs!38787 () Bool)

(assert (= bs!38787 (and b!81403 b!81251)))

(assert (=> bs!38787 (not (= lambda!9606 lambda!9556))))

(declare-fun bs!38788 () Bool)

(assert (= bs!38788 (and b!81403 b!81252)))

(assert (=> bs!38788 (not (= lambda!9606 lambda!9557))))

(declare-fun bs!38789 () Bool)

(assert (= bs!38789 (and b!81403 b!81380)))

(assert (=> bs!38789 (not (= lambda!9606 lambda!9605))))

(assert (=> bs!38789 (not (= lambda!9606 lambda!9604))))

(assert (=> bs!38789 (= lambda!9606 lambda!9603)))

(declare-fun bs!38790 () Bool)

(assert (= bs!38790 (and b!81403 b!81295)))

(assert (=> bs!38790 (not (= lambda!9606 lambda!9575))))

(assert (=> bs!38790 (not (= lambda!9606 lambda!9574))))

(assert (=> bs!38790 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9606 lambda!9573))))

(declare-fun bs!38791 () Bool)

(assert (= bs!38791 (and b!81403 b!81369)))

(assert (=> bs!38791 (not (= lambda!9606 lambda!9602))))

(assert (=> bs!38791 (not (= lambda!9606 lambda!9601))))

(assert (=> bs!38791 (= lambda!9606 lambda!9600)))

(assert (=> b!81403 true))

(declare-fun b_next!39275 () Bool)

(assert (=> start!10696 (= b_next!39273 (or (and b!81403 (= lambda!9606 p!856)) b_next!39275))))

(declare-fun lambda!9607 () Int)

(assert (=> bs!38777 (not (= lambda!9607 lambda!9586))))

(assert (=> bs!38778 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9607 lambda!9546))))

(assert (=> bs!38779 (not (= lambda!9607 lambda!9566))))

(assert (=> bs!38779 (= lambda!9607 lambda!9565)))

(assert (=> bs!38779 (not (= lambda!9607 lambda!9564))))

(assert (=> bs!38780 (not (= lambda!9607 lambda!9555))))

(assert (=> bs!38781 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9607 lambda!9578))))

(assert (=> bs!38782 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9607 lambda!9585))))

(assert (=> bs!38783 (not (= lambda!9607 lambda!9587))))

(assert (=> bs!38784 (not (= lambda!9607 lambda!9547))))

(assert (=> bs!38785 (not (= lambda!9607 lambda!9548))))

(assert (=> bs!38786 (not (= lambda!9607 lambda!9545))))

(assert (=> bs!38787 (not (= lambda!9607 lambda!9556))))

(assert (=> bs!38788 (not (= lambda!9607 lambda!9557))))

(assert (=> bs!38789 (not (= lambda!9607 lambda!9605))))

(assert (=> bs!38789 (= lambda!9607 lambda!9604)))

(assert (=> bs!38789 (not (= lambda!9607 lambda!9603))))

(assert (=> b!81403 (not (= lambda!9607 lambda!9606))))

(assert (=> bs!38790 (not (= lambda!9607 lambda!9575))))

(assert (=> bs!38790 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9607 lambda!9574))))

(assert (=> bs!38790 (not (= lambda!9607 lambda!9573))))

(assert (=> bs!38791 (not (= lambda!9607 lambda!9602))))

(assert (=> bs!38791 (= lambda!9607 lambda!9601)))

(assert (=> bs!38791 (not (= lambda!9607 lambda!9600))))

(assert (=> b!81403 true))

(declare-fun b_next!39277 () Bool)

(assert (=> start!10696 (= b_next!39275 (or (and b!81403 (= lambda!9607 p!856)) b_next!39277))))

(declare-fun lambda!9608 () Int)

(assert (=> bs!38777 (not (= lambda!9608 lambda!9586))))

(assert (=> bs!38778 (not (= lambda!9608 lambda!9546))))

(assert (=> bs!38779 (= lambda!9608 lambda!9566)))

(assert (=> bs!38779 (not (= lambda!9608 lambda!9565))))

(assert (=> bs!38779 (not (= lambda!9608 lambda!9564))))

(assert (=> bs!38780 (not (= lambda!9608 lambda!9555))))

(assert (=> bs!38781 (not (= lambda!9608 lambda!9578))))

(assert (=> bs!38782 (not (= lambda!9608 lambda!9585))))

(assert (=> bs!38783 (not (= lambda!9608 lambda!9587))))

(assert (=> bs!38784 (= (= (h!990 less!5) (h!990 ls!96)) (= lambda!9608 lambda!9547))))

(assert (=> bs!38785 (not (= lambda!9608 lambda!9548))))

(assert (=> bs!38786 (not (= lambda!9608 lambda!9545))))

(assert (=> bs!38787 (not (= lambda!9608 lambda!9556))))

(assert (=> bs!38788 (not (= lambda!9608 lambda!9557))))

(assert (=> bs!38789 (= lambda!9608 lambda!9605)))

(assert (=> bs!38789 (not (= lambda!9608 lambda!9604))))

(assert (=> bs!38789 (not (= lambda!9608 lambda!9603))))

(assert (=> b!81403 (not (= lambda!9608 lambda!9607))))

(assert (=> b!81403 (not (= lambda!9608 lambda!9606))))

(assert (=> bs!38790 (= (= (h!990 less!5) (h!990 more!5)) (= lambda!9608 lambda!9575))))

(assert (=> bs!38790 (not (= lambda!9608 lambda!9574))))

(assert (=> bs!38790 (not (= lambda!9608 lambda!9573))))

(assert (=> bs!38791 (= lambda!9608 lambda!9602)))

(assert (=> bs!38791 (not (= lambda!9608 lambda!9601))))

(assert (=> bs!38791 (not (= lambda!9608 lambda!9600))))

(assert (=> b!81403 true))

(declare-fun b_next!39279 () Bool)

(assert (=> start!10696 (= b_next!39277 (or (and b!81403 (= lambda!9608 p!856)) b_next!39279))))

(declare-fun d!55793 () Bool)

(assert (=> d!55793 (forall!19 (quickSort!0 less!5) lambda!9548)))

(declare-fun lt!18705 () Bool)

(declare-fun e!44136 () Bool)

(assert (=> d!55793 (= lt!18705 e!44136)))

(declare-fun res!41615 () Bool)

(assert (=> d!55793 (=> res!41615 e!44136)))

(assert (=> d!55793 (= res!41615 (or (is-Nil!623 less!5) (and (is-Cons!621 less!5) (is-Nil!623 (t!47828 less!5)))))))

(assert (=> d!55793 (forall!19 less!5 lambda!9548)))

(assert (=> d!55793 (= (sort_preserves_forall!0 less!5 lambda!9548) true)))

(declare-fun b!81400 () Bool)

(declare-fun e!44138 () Bool)

(assert (=> b!81400 (= e!44138 (filter_preserves_forall!0 (t!47828 less!5) lambda!9608 lambda!9548))))

(declare-fun lt!18706 () List!664)

(declare-fun lt!18704 () List!664)

(declare-fun b!81401 () Bool)

(declare-fun e!44134 () Bool)

(declare-fun lt!18703 () List!664)

(assert (=> b!81401 (= e!44134 (append_preserves_forall!0 (++!72 (quickSort!0 lt!18706) lt!18703) (quickSort!0 lt!18704) lambda!9548))))

(declare-fun b!81402 () Bool)

(declare-fun e!44135 () Bool)

(assert (=> b!81402 (= e!44135 (filter_preserves_forall!0 (t!47828 less!5) lambda!9607 lambda!9548))))

(assert (=> b!81403 (= e!44136 e!44134)))

(declare-fun res!41613 () Bool)

(assert (=> b!81403 (=> (not res!41613) (not e!44134))))

(assert (=> b!81403 (= res!41613 (append_preserves_forall!0 (quickSort!0 lt!18706) lt!18703 lambda!9548))))

(declare-fun lt!18702 () Bool)

(declare-fun e!44137 () Bool)

(assert (=> b!81403 (= lt!18702 e!44137)))

(declare-fun res!41616 () Bool)

(assert (=> b!81403 (=> (not res!41616) (not e!44137))))

(assert (=> b!81403 (= res!41616 (sort_preserves_forall!0 lt!18706 lambda!9548))))

(declare-fun lt!18701 () Bool)

(assert (=> b!81403 (= lt!18701 e!44138)))

(declare-fun res!41614 () Bool)

(assert (=> b!81403 (=> (not res!41614) (not e!44138))))

(assert (=> b!81403 (= res!41614 e!44135)))

(declare-fun res!41612 () Bool)

(assert (=> b!81403 (=> (not res!41612) (not e!44135))))

(assert (=> b!81403 (= res!41612 (filter_preserves_forall!0 (t!47828 less!5) lambda!9606 lambda!9548))))

(assert (=> b!81403 (= lt!18704 (filter!17 (t!47828 less!5) lambda!9608))))

(assert (=> b!81403 (= lt!18703 (Cons!621 (h!990 less!5) (filter!17 (t!47828 less!5) lambda!9607)))))

(assert (=> b!81403 (= lt!18706 (filter!17 (t!47828 less!5) lambda!9606))))

(declare-fun b!81404 () Bool)

(assert (=> b!81404 (= e!44137 (sort_preserves_forall!0 lt!18704 lambda!9548))))

(assert (= (and d!55793 (not res!41615)) b!81403))

(assert (= (and b!81403 res!41612) b!81402))

(assert (= (and b!81403 res!41614) b!81400))

(assert (= (and b!81403 res!41616) b!81404))

(assert (= (and b!81403 res!41613) b!81401))

(assert (=> d!55793 m!76056))

(assert (=> d!55793 m!76056))

(assert (=> d!55793 m!76242))

(declare-fun m!76276 () Bool)

(assert (=> d!55793 m!76276))

(declare-fun m!76278 () Bool)

(assert (=> b!81401 m!76278))

(assert (=> b!81401 m!76278))

(declare-fun m!76280 () Bool)

(assert (=> b!81401 m!76280))

(declare-fun m!76282 () Bool)

(assert (=> b!81401 m!76282))

(assert (=> b!81401 m!76280))

(assert (=> b!81401 m!76282))

(declare-fun m!76284 () Bool)

(assert (=> b!81401 m!76284))

(declare-fun m!76286 () Bool)

(assert (=> b!81402 m!76286))

(declare-fun m!76288 () Bool)

(assert (=> b!81404 m!76288))

(declare-fun m!76290 () Bool)

(assert (=> b!81403 m!76290))

(declare-fun m!76292 () Bool)

(assert (=> b!81403 m!76292))

(declare-fun m!76294 () Bool)

(assert (=> b!81403 m!76294))

(declare-fun m!76296 () Bool)

(assert (=> b!81403 m!76296))

(assert (=> b!81403 m!76278))

(declare-fun m!76298 () Bool)

(assert (=> b!81403 m!76298))

(assert (=> b!81403 m!76278))

(declare-fun m!76300 () Bool)

(assert (=> b!81403 m!76300))

(declare-fun m!76302 () Bool)

(assert (=> b!81400 m!76302))

(assert (=> b!81235 d!55793))

(declare-fun b_lambda!16059 () Bool)

(assert (= b_lambda!16051 (or b!81235 b_lambda!16059)))

(declare-fun bs!38792 () Bool)

(declare-fun d!55795 () Bool)

(assert (= bs!38792 (and d!55795 b!81235)))

(assert (=> bs!38792 (= (dynLambda!983 lambda!9548 (last!16 (++!72 (quickSort!0 less!5) equal!10))) (<= (last!16 (++!72 (quickSort!0 less!5) equal!10)) (h!990 ls!96)))))

(assert (=> b!81301 d!55795))

(declare-fun b_lambda!16061 () Bool)

(assert (= b_lambda!16045 (or b!81231 b_lambda!16061)))

(declare-fun bs!38793 () Bool)

(declare-fun d!55797 () Bool)

(assert (= bs!38793 (and d!55797 b!81231)))

(assert (=> bs!38793 (= (dynLambda!983 lambda!9545 (last!16 (quickSort!0 less!5))) (< (last!16 (quickSort!0 less!5)) (h!990 ls!96)))))

(assert (=> b!81271 d!55797))

(declare-fun b_lambda!16063 () Bool)

(assert (= b_lambda!16049 (or b!81235 b_lambda!16063)))

(assert (=> b!81297 d!55795))

(declare-fun b_lambda!16065 () Bool)

(assert (= b_lambda!16057 (or b!81232 b_lambda!16065)))

(declare-fun bs!38794 () Bool)

(declare-fun d!55799 () Bool)

(assert (= bs!38794 (and d!55799 b!81232)))

(assert (=> bs!38794 (= (dynLambda!983 lambda!9546 (h!990 (t!47828 ls!96))) (= (h!990 (t!47828 ls!96)) (h!990 ls!96)))))

(assert (=> b!81355 d!55799))

(declare-fun b_lambda!16067 () Bool)

(assert (= b_lambda!16043 (or b!81231 b_lambda!16067)))

(assert (=> b!81267 d!55797))

(declare-fun b_lambda!16069 () Bool)

(assert (= b_lambda!16055 (or b!81231 b_lambda!16069)))

(declare-fun bs!38795 () Bool)

(declare-fun d!55801 () Bool)

(assert (= bs!38795 (and d!55801 b!81231)))

(assert (=> bs!38795 (= (dynLambda!983 lambda!9545 (h!990 (t!47828 ls!96))) (< (h!990 (t!47828 ls!96)) (h!990 ls!96)))))

(assert (=> b!81348 d!55801))

(declare-fun b_lambda!16071 () Bool)

(assert (= b_lambda!16053 (or b!81242 b_lambda!16071)))

(declare-fun bs!38796 () Bool)

(declare-fun d!55803 () Bool)

(assert (= bs!38796 (and d!55803 b!81242)))

(assert (=> bs!38796 (= (dynLambda!983 lambda!9547 (h!990 (t!47828 ls!96))) (> (h!990 (t!47828 ls!96)) (h!990 ls!96)))))

(assert (=> b!81341 d!55803))

(declare-fun b_lambda!16073 () Bool)

(assert (= b_lambda!16047 (or (and b!81403 (= lambda!9607 p!856)) (and b!81403 (= lambda!9608 p!856)) (and b!81284 (= lambda!9565 p!856)) (and b!81320 (= lambda!9587 p!856)) (and start!10696 b_free!7357) (and b!81380 (= lambda!9604 p!856)) (and b!81380 (= lambda!9605 p!856)) (and b!81403 (= lambda!9606 p!856)) (and b!81284 (= lambda!9566 p!856)) (and b!81284 (= lambda!9564 p!856)) (and b!81242 (= lambda!9547 p!856)) (and b!81232 (= lambda!9546 p!856)) (and b!81252 (= lambda!9557 p!856)) (and b!81251 (= lambda!9556 p!856)) (and b!81295 (= lambda!9574 p!856)) (and b!81295 (= lambda!9575 p!856)) (and b!81231 (= lambda!9545 p!856)) (and b!81319 (= lambda!9586 p!856)) (and d!55775 (= lambda!9578 p!856)) (and d!55777 (= lambda!9585 p!856)) (and b!81369 (= lambda!9602 p!856)) (and b!81369 (= lambda!9600 p!856)) (and b!81380 (= lambda!9603 p!856)) (and d!55761 (= lambda!9555 p!856)) (and b!81295 (= lambda!9573 p!856)) (and b!81235 (= lambda!9548 p!856)) (and b!81369 (= lambda!9601 p!856)) b_lambda!16073)))

(declare-fun bs!38797 () Bool)

(declare-fun d!55805 () Bool)

(assert (= bs!38797 (and d!55805 b!81403)))

(assert (=> bs!38797 (= (dynLambda!983 lambda!9608 (h!990 ls!123)) (> (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81403 (= lambda!9608 p!856) b!81289) d!55805))

(declare-fun bs!38798 () Bool)

(declare-fun d!55807 () Bool)

(assert (= bs!38798 (and d!55807 b!81231)))

(assert (=> bs!38798 (= (dynLambda!983 lambda!9545 (h!990 ls!123)) (< (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81231 (= lambda!9545 p!856) b!81289) d!55807))

(declare-fun bs!38799 () Bool)

(declare-fun d!55809 () Bool)

(assert (= bs!38799 (and d!55809 b!81235)))

(assert (=> bs!38799 (= (dynLambda!983 lambda!9548 (h!990 ls!123)) (<= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81235 (= lambda!9548 p!856) b!81289) d!55809))

(declare-fun bs!38800 () Bool)

(declare-fun d!55811 () Bool)

(assert (= bs!38800 (and d!55811 b!81284)))

(assert (=> bs!38800 (= (dynLambda!983 lambda!9565 (h!990 ls!123)) (= (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81284 (= lambda!9565 p!856) b!81289) d!55811))

(declare-fun bs!38801 () Bool)

(declare-fun d!55813 () Bool)

(assert (= bs!38801 (and d!55813 b!81295)))

(assert (=> bs!38801 (= (dynLambda!983 lambda!9574 (h!990 ls!123)) (= (h!990 ls!123) (h!990 more!5)))))

(assert (=> (and b!81295 (= lambda!9574 p!856) b!81289) d!55813))

(declare-fun bs!38802 () Bool)

(declare-fun d!55815 () Bool)

(assert (= bs!38802 (and d!55815 b!81403)))

(assert (=> bs!38802 (= (dynLambda!983 lambda!9606 (h!990 ls!123)) (< (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81403 (= lambda!9606 p!856) b!81289) d!55815))

(declare-fun bs!38803 () Bool)

(declare-fun d!55817 () Bool)

(assert (= bs!38803 (and d!55817 b!81284)))

(assert (=> bs!38803 (= (dynLambda!983 lambda!9564 (h!990 ls!123)) (< (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81284 (= lambda!9564 p!856) b!81289) d!55817))

(declare-fun bs!38804 () Bool)

(declare-fun d!55819 () Bool)

(assert (= bs!38804 (and d!55819 b!81369)))

(assert (=> bs!38804 (= (dynLambda!983 lambda!9601 (h!990 ls!123)) (= (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81369 (= lambda!9601 p!856) b!81289) d!55819))

(declare-fun bs!38805 () Bool)

(declare-fun d!55821 () Bool)

(assert (= bs!38805 (and d!55821 b!81319)))

(assert (=> bs!38805 (= (dynLambda!983 lambda!9586 (h!990 ls!123)) (<= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81319 (= lambda!9586 p!856) b!81289) d!55821))

(declare-fun bs!38806 () Bool)

(declare-fun d!55823 () Bool)

(assert (= bs!38806 (and d!55823 b!81252)))

(assert (=> bs!38806 (= (dynLambda!983 lambda!9557 (h!990 ls!123)) (<= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81252 (= lambda!9557 p!856) b!81289) d!55823))

(declare-fun bs!38807 () Bool)

(declare-fun d!55825 () Bool)

(assert (= bs!38807 (and d!55825 b!81369)))

(assert (=> bs!38807 (= (dynLambda!983 lambda!9602 (h!990 ls!123)) (> (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81369 (= lambda!9602 p!856) b!81289) d!55825))

(declare-fun bs!38808 () Bool)

(declare-fun d!55827 () Bool)

(assert (= bs!38808 (and d!55827 b!81320)))

(assert (=> bs!38808 (= (dynLambda!983 lambda!9587 (h!990 ls!123)) (<= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81320 (= lambda!9587 p!856) b!81289) d!55827))

(declare-fun bs!38809 () Bool)

(declare-fun d!55829 () Bool)

(assert (= bs!38809 (and d!55829 b!81284)))

(assert (=> bs!38809 (= (dynLambda!983 lambda!9566 (h!990 ls!123)) (> (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81284 (= lambda!9566 p!856) b!81289) d!55829))

(declare-fun bs!38810 () Bool)

(declare-fun d!55831 () Bool)

(assert (= bs!38810 (and d!55831 d!55761)))

(assert (=> bs!38810 (= (dynLambda!983 lambda!9555 (h!990 ls!123)) (< (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and d!55761 (= lambda!9555 p!856) b!81289) d!55831))

(declare-fun bs!38811 () Bool)

(declare-fun d!55833 () Bool)

(assert (= bs!38811 (and d!55833 b!81369)))

(assert (=> bs!38811 (= (dynLambda!983 lambda!9600 (h!990 ls!123)) (< (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81369 (= lambda!9600 p!856) b!81289) d!55833))

(declare-fun bs!38812 () Bool)

(declare-fun d!55835 () Bool)

(assert (= bs!38812 (and d!55835 d!55777)))

(assert (=> bs!38812 (= (dynLambda!983 lambda!9585 (h!990 ls!123)) (= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and d!55777 (= lambda!9585 p!856) b!81289) d!55835))

(declare-fun bs!38813 () Bool)

(declare-fun d!55837 () Bool)

(assert (= bs!38813 (and d!55837 b!81295)))

(assert (=> bs!38813 (= (dynLambda!983 lambda!9573 (h!990 ls!123)) (< (h!990 ls!123) (h!990 more!5)))))

(assert (=> (and b!81295 (= lambda!9573 p!856) b!81289) d!55837))

(declare-fun bs!38814 () Bool)

(declare-fun d!55839 () Bool)

(assert (= bs!38814 (and d!55839 b!81251)))

(assert (=> bs!38814 (= (dynLambda!983 lambda!9556 (h!990 ls!123)) (<= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81251 (= lambda!9556 p!856) b!81289) d!55839))

(declare-fun bs!38815 () Bool)

(declare-fun d!55841 () Bool)

(assert (= bs!38815 (and d!55841 b!81232)))

(assert (=> bs!38815 (= (dynLambda!983 lambda!9546 (h!990 ls!123)) (= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81232 (= lambda!9546 p!856) b!81289) d!55841))

(declare-fun bs!38816 () Bool)

(declare-fun d!55843 () Bool)

(assert (= bs!38816 (and d!55843 b!81380)))

(assert (=> bs!38816 (= (dynLambda!983 lambda!9605 (h!990 ls!123)) (> (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81380 (= lambda!9605 p!856) b!81289) d!55843))

(declare-fun bs!38817 () Bool)

(declare-fun d!55845 () Bool)

(assert (= bs!38817 (and d!55845 b!81380)))

(assert (=> bs!38817 (= (dynLambda!983 lambda!9604 (h!990 ls!123)) (= (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81380 (= lambda!9604 p!856) b!81289) d!55845))

(declare-fun bs!38818 () Bool)

(declare-fun d!55847 () Bool)

(assert (= bs!38818 (and d!55847 b!81380)))

(assert (=> bs!38818 (= (dynLambda!983 lambda!9603 (h!990 ls!123)) (< (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81380 (= lambda!9603 p!856) b!81289) d!55847))

(declare-fun bs!38819 () Bool)

(declare-fun d!55849 () Bool)

(assert (= bs!38819 (and d!55849 b!81295)))

(assert (=> bs!38819 (= (dynLambda!983 lambda!9575 (h!990 ls!123)) (> (h!990 ls!123) (h!990 more!5)))))

(assert (=> (and b!81295 (= lambda!9575 p!856) b!81289) d!55849))

(declare-fun bs!38820 () Bool)

(declare-fun d!55851 () Bool)

(assert (= bs!38820 (and d!55851 b!81242)))

(assert (=> bs!38820 (= (dynLambda!983 lambda!9547 (h!990 ls!123)) (> (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and b!81242 (= lambda!9547 p!856) b!81289) d!55851))

(declare-fun bs!38821 () Bool)

(declare-fun d!55853 () Bool)

(assert (= bs!38821 (and d!55853 b!81403)))

(assert (=> bs!38821 (= (dynLambda!983 lambda!9607 (h!990 ls!123)) (= (h!990 ls!123) (h!990 less!5)))))

(assert (=> (and b!81403 (= lambda!9607 p!856) b!81289) d!55853))

(declare-fun bs!38822 () Bool)

(declare-fun d!55855 () Bool)

(assert (= bs!38822 (and d!55855 d!55775)))

(assert (=> bs!38822 (= (dynLambda!983 lambda!9578 (h!990 ls!123)) (= (h!990 ls!123) (h!990 ls!96)))))

(assert (=> (and d!55775 (= lambda!9578 p!856) b!81289) d!55855))

(push 1)

(assert (not b!81397))

(assert (not b!81346))

(assert (not d!55781))

(assert (not b!81349))

(assert (not b!81297))

(assert (not b!81267))

(assert (not b!81302))

(assert (not b!81367))

(assert (not b!81339))

(assert (not b!81300))

(assert (not d!55777))

(assert (not d!55791))

(assert (not b!81335))

(assert (not b_lambda!16061))

(assert (not b!81402))

(assert (not b!81319))

(assert (not b!81295))

(assert (not b!81398))

(assert (not d!55785))

(assert (not b!81252))

(assert (not b_lambda!16067))

(assert (not b!81251))

(assert (not b_lambda!16065))

(assert (not d!55773))

(assert (not b!81403))

(assert (not b!81378))

(assert (not b!81353))

(assert (not b!81284))

(assert (not b_lambda!16059))

(assert (not b_next!39279))

(assert (not b!81366))

(assert (not b_lambda!16063))

(assert (not b_lambda!16069))

(assert (not b!81369))

(assert (not d!55783))

(assert (not d!55787))

(assert b_and!58887)

(assert (not b!81290))

(assert (not b!81380))

(assert (not b!81268))

(assert (not b!81396))

(assert (not b!81400))

(assert (not b!81399))

(assert (not b!81336))

(assert (not d!55793))

(assert (not b!81269))

(assert (not b!81270))

(assert (not d!55761))

(assert (not b!81320))

(assert (not d!55769))

(assert (not d!55789))

(assert (not b!81296))

(assert (not d!55775))

(assert (not b!81368))

(assert (not b!81401))

(assert (not b!81313))

(assert (not b!81342))

(assert (not b!81271))

(assert (not b!81301))

(assert (not b!81370))

(assert (not b!81298))

(assert (not b!81377))

(assert (not b!81394))

(assert (not b_lambda!16073))

(assert (not b!81381))

(assert (not b!81312))

(assert (not d!55779))

(assert (not b!81395))

(assert (not b!81343))

(assert (not b!81299))

(assert (not b!81350))

(assert (not b!81379))

(assert (not b!81272))

(assert (not b_lambda!16071))

(assert (not b!81404))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58887)

(assert (not b_next!39279))

(check-sat)

(pop 1)

