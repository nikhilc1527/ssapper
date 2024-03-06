; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2366 () Bool)

(assert start!2366)

(declare-fun b_free!1693 () Bool)

(declare-fun b_next!4033 () Bool)

(assert (=> start!2366 (= b_free!1693 (not b_next!4033))))

(declare-fun tp!2708 () Bool)

(declare-fun b_and!5899 () Bool)

(assert (=> start!2366 (= tp!2708 b_and!5899)))

(declare-fun b!11790 () Bool)

(declare-fun b_free!1695 () Bool)

(declare-fun b_next!4035 () Bool)

(assert (=> b!11790 (= b_free!1695 (not b_next!4035))))

(declare-fun tp!2711 () Bool)

(declare-fun b_and!5901 () Bool)

(assert (=> b!11790 (= tp!2711 b_and!5901)))

(declare-fun b_free!1697 () Bool)

(declare-fun b_next!4037 () Bool)

(assert (=> b!11790 (= b_free!1697 (not b_next!4037))))

(declare-fun tp!2713 () Bool)

(declare-fun b_and!5903 () Bool)

(assert (=> b!11790 (= tp!2713 b_and!5903)))

(declare-fun b_free!1699 () Bool)

(declare-fun b_next!4039 () Bool)

(assert (=> b!11790 (= b_free!1699 (not b_next!4039))))

(declare-fun tp!2709 () Bool)

(declare-fun b_and!5905 () Bool)

(assert (=> b!11790 (= tp!2709 b_and!5905)))

(declare-fun b!11785 () Bool)

(declare-fun b_free!1701 () Bool)

(declare-fun b_next!4041 () Bool)

(assert (=> b!11785 (= b_free!1701 (not b_next!4041))))

(declare-fun tp!2712 () Bool)

(declare-fun b_and!5907 () Bool)

(assert (=> b!11785 (= tp!2712 b_and!5907)))

(declare-fun b_free!1703 () Bool)

(declare-fun b_next!4043 () Bool)

(assert (=> b!11785 (= b_free!1703 (not b_next!4043))))

(declare-fun tp!2707 () Bool)

(declare-fun b_and!5909 () Bool)

(assert (=> b!11785 (= tp!2707 b_and!5909)))

(declare-fun b_free!1705 () Bool)

(declare-fun b_next!4045 () Bool)

(assert (=> b!11785 (= b_free!1705 (not b_next!4045))))

(declare-fun tp!2710 () Bool)

(declare-fun b_and!5911 () Bool)

(assert (=> b!11785 (= tp!2710 b_and!5911)))

(declare-fun f!539 () Int)

(declare-fun b!11792 () Bool)

(declare-fun lambda!3158 () Int)

(declare-fun b_next!4047 () Bool)

(assert (=> start!2366 (= b_next!4033 (or (and b!11792 (= lambda!3158 f!539)) b_next!4047))))

(declare-fun b!11794 () Bool)

(assert (=> b!11794 true))

(declare-fun lambda!3159 () Int)

(declare-fun order!273 () Int)

(declare-fun order!275 () Int)

(declare-fun dynLambda!466 (Int Int) Int)

(declare-fun dynLambda!467 (Int Int) Int)

(assert (=> b!11794 (< (dynLambda!466 order!273 f!539) (dynLambda!467 order!275 lambda!3159))))

(assert (=> b!11794 true))

(assert (=> b!11794 true))

(declare-fun b_next!4049 () Bool)

(declare-datatypes () ((Balance!329 (Balance!330 (extraOpen!205 Int) (extraClose!205 Int)))))

(declare-datatypes () ((EqEvidence!258 (EqEvidence!259 (x!6681 Int) (y!648 Int) (evidence!196 Int)))))

(declare-fun thiss!721 () EqEvidence!258)

(assert (=> b!11790 (= b_next!4035 (or (and b!11794 (= lambda!3159 (x!6681 thiss!721))) b_next!4049))))

(declare-fun b_next!4051 () Bool)

(assert (=> b!11790 (= b_next!4037 (or (and b!11794 (= lambda!3159 (y!648 thiss!721))) b_next!4051))))

(declare-fun b_next!4053 () Bool)

(declare-fun that!177 () EqEvidence!258)

(assert (=> b!11785 (= b_next!4041 (or (and b!11794 (= lambda!3159 (x!6681 that!177))) b_next!4053))))

(declare-fun b_next!4055 () Bool)

(assert (=> b!11785 (= b_next!4043 (or (and b!11794 (= lambda!3159 (y!648 that!177))) b_next!4055))))

(declare-fun lambda!3160 () Int)

(assert (=> b!11794 (not (= lambda!3160 lambda!3159))))

(assert (=> b!11794 true))

(assert (=> b!11794 (< (dynLambda!466 order!273 f!539) (dynLambda!467 order!275 lambda!3160))))

(assert (=> b!11794 true))

(assert (=> b!11794 true))

(declare-fun b_next!4057 () Bool)

(assert (=> b!11790 (= b_next!4049 (or (and b!11794 (= lambda!3160 (x!6681 thiss!721))) b_next!4057))))

(declare-fun b_next!4059 () Bool)

(assert (=> b!11790 (= b_next!4051 (or (and b!11794 (= lambda!3160 (y!648 thiss!721))) b_next!4059))))

(declare-fun b_next!4061 () Bool)

(assert (=> b!11785 (= b_next!4053 (or (and b!11794 (= lambda!3160 (x!6681 that!177))) b_next!4061))))

(declare-fun b_next!4063 () Bool)

(assert (=> b!11785 (= b_next!4055 (or (and b!11794 (= lambda!3160 (y!648 that!177))) b_next!4063))))

(declare-fun m!14697 () Bool)

(assert (=> b!11794 m!14697))

(declare-fun lambda!3161 () Int)

(declare-fun dynLambda!468 (Int) Bool)

(assert (=> (and b!11790 b!11794 (= (dynLambda!468 lambda!3161) (dynLambda!468 (evidence!196 thiss!721)))) (= lambda!3161 (evidence!196 thiss!721))))

(assert (=> (and b!11785 b!11794 (= (dynLambda!468 lambda!3161) (dynLambda!468 (evidence!196 that!177)))) (= lambda!3161 (evidence!196 that!177))))

(declare-fun b_next!4065 () Bool)

(assert (=> b!11790 (= b_next!4039 (or (and b!11794 (= lambda!3161 (evidence!196 thiss!721))) b_next!4065))))

(declare-fun b_next!4067 () Bool)

(assert (=> b!11785 (= b_next!4045 (or (and b!11794 (= lambda!3161 (evidence!196 that!177))) b_next!4067))))

(declare-fun bs!3025 () Bool)

(declare-fun b!11786 () Bool)

(assert (= bs!3025 (and b!11786 b!11794)))

(declare-fun lambda!3162 () Int)

(assert (=> bs!3025 (not (= lambda!3162 lambda!3159))))

(assert (=> bs!3025 (not (= lambda!3162 lambda!3160))))

(assert (=> b!11786 true))

(assert (=> b!11786 (< (dynLambda!466 order!273 f!539) (dynLambda!467 order!275 lambda!3162))))

(assert (=> b!11786 true))

(assert (=> b!11786 true))

(declare-fun b_next!4069 () Bool)

(assert (=> b!11790 (= b_next!4057 (or (and b!11786 (= lambda!3162 (x!6681 thiss!721))) b_next!4069))))

(declare-fun b_next!4071 () Bool)

(assert (=> b!11790 (= b_next!4059 (or (and b!11786 (= lambda!3162 (y!648 thiss!721))) b_next!4071))))

(declare-fun b_next!4073 () Bool)

(assert (=> b!11785 (= b_next!4061 (or (and b!11786 (= lambda!3162 (x!6681 that!177))) b_next!4073))))

(declare-fun b_next!4075 () Bool)

(assert (=> b!11785 (= b_next!4063 (or (and b!11786 (= lambda!3162 (y!648 that!177))) b_next!4075))))

(declare-fun lambda!3163 () Int)

(assert (=> bs!3025 (not (= lambda!3163 lambda!3161))))

(assert (=> b!11786 true))

(assert (=> b!11786 true))

(declare-fun b_next!4077 () Bool)

(assert (=> b!11790 (= b_next!4065 (or (and b!11786 (= lambda!3163 (evidence!196 thiss!721))) b_next!4077))))

(declare-fun b_next!4079 () Bool)

(assert (=> b!11785 (= b_next!4067 (or (and b!11786 (= lambda!3163 (evidence!196 that!177))) b_next!4079))))

(declare-fun e!6555 () Bool)

(assert (=> b!11785 (= e!6555 (and tp!2712 tp!2707 tp!2710))))

(declare-fun res!4346 () Bool)

(declare-fun e!6557 () Bool)

(assert (=> b!11786 (=> (not res!4346) (not e!6557))))

(assert (=> b!11786 (= res!4346 (= that!177 (EqEvidence!259 lambda!3162 lambda!3162 lambda!3163)))))

(declare-fun b!11787 () Bool)

(declare-fun res!4347 () Bool)

(assert (=> b!11787 (=> (not res!4347) (not e!6557))))

(assert (=> b!11787 (= res!4347 (dynLambda!468 (evidence!196 thiss!721)))))

(declare-fun b!11788 () Bool)

(declare-fun dynLambda!469 (Int) Balance!329)

(assert (=> b!11788 (= e!6557 (not (= (dynLambda!469 (y!648 thiss!721)) (dynLambda!469 (x!6681 that!177)))))))

(declare-fun b!11789 () Bool)

(declare-fun res!4350 () Bool)

(assert (=> b!11789 (=> (not res!4350) (not e!6557))))

(declare-datatypes () ((List!280 (Nil!278) (Cons!277 (head!495 Balance!329) (tail!507 List!280)))))

(declare-fun xs!292 () List!280)

(assert (=> b!11789 (= res!4350 (and (is-Cons!277 xs!292) (is-Nil!278 (tail!507 xs!292))))))

(declare-fun res!4348 () Bool)

(assert (=> start!2366 (=> (not res!4348) (not e!6557))))

(declare-fun isEmpty!208 (List!280) Bool)

(assert (=> start!2366 (= res!4348 (not (isEmpty!208 xs!292)))))

(assert (=> start!2366 e!6557))

(assert (=> start!2366 tp!2708))

(assert (=> start!2366 true))

(declare-fun e!6556 () Bool)

(declare-fun inv!393 (EqEvidence!258) Bool)

(assert (=> start!2366 (and (inv!393 thiss!721) e!6556)))

(assert (=> start!2366 (and (inv!393 that!177) e!6555)))

(assert (=> b!11790 (= e!6556 (and tp!2711 tp!2713 tp!2709))))

(declare-fun b!11791 () Bool)

(declare-fun res!4345 () Bool)

(assert (=> b!11791 (=> (not res!4345) (not e!6557))))

(declare-fun ys!54 () List!280)

(assert (=> b!11791 (= res!4345 (not (isEmpty!208 ys!54)))))

(declare-fun res!4349 () Bool)

(assert (=> b!11792 (=> (not res!4349) (not e!6557))))

(assert (=> b!11792 (= res!4349 (= f!539 lambda!3158))))

(declare-fun b!11793 () Bool)

(declare-fun res!4351 () Bool)

(assert (=> b!11793 (=> (not res!4351) (not e!6557))))

(declare-datatypes () ((ProofOps!260 (ProofOps!261 (prop!263 Bool)))))

(declare-fun thiss!710 () ProofOps!260)

(declare-fun dynLambda!470 (Int Balance!329 Balance!329) Balance!329)

(declare-fun foldRight1!110 (List!280 Int) Balance!329)

(declare-fun append!129 (List!280 List!280) List!280)

(assert (=> b!11793 (= res!4351 (= thiss!710 (ProofOps!261 (= (dynLambda!470 f!539 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)) (foldRight1!110 (append!129 xs!292 ys!54) f!539)))))))

(declare-fun res!4352 () Bool)

(assert (=> b!11794 (=> (not res!4352) (not e!6557))))

(assert (=> b!11794 (= res!4352 (= thiss!721 (EqEvidence!259 lambda!3159 lambda!3160 lambda!3161)))))

(assert (= (and start!2366 res!4348) b!11791))

(assert (= (and b!11791 res!4345) b!11792))

(assert (= (and b!11792 res!4349) b!11793))

(assert (= (and b!11793 res!4351) b!11789))

(assert (= (and b!11789 res!4350) b!11794))

(assert (= (and b!11794 res!4352) b!11786))

(assert (= (and b!11786 res!4346) b!11787))

(assert (= (and b!11787 res!4347) b!11788))

(assert (= start!2366 b!11790))

(assert (= start!2366 b!11785))

(declare-fun b_lambda!6215 () Bool)

(assert (=> (not b_lambda!6215) (not b!11787)))

(declare-fun t!3463 () Bool)

(declare-fun tb!3123 () Bool)

(assert (=> (and b!11790 (= (evidence!196 thiss!721) (evidence!196 thiss!721)) t!3463) tb!3123))

(declare-fun result!3175 () Bool)

(assert (=> tb!3123 (= result!3175 true)))

(assert (=> b!11787 t!3463))

(declare-fun b_and!5913 () Bool)

(assert (= b_and!5905 (and (=> t!3463 result!3175) b_and!5913)))

(declare-fun t!3465 () Bool)

(declare-fun tb!3125 () Bool)

(assert (=> (and b!11785 (= (evidence!196 that!177) (evidence!196 thiss!721)) t!3465) tb!3125))

(declare-fun result!3177 () Bool)

(assert (=> tb!3125 (= result!3177 true)))

(assert (=> b!11787 t!3465))

(declare-fun b_and!5915 () Bool)

(assert (= b_and!5911 (and (=> t!3465 result!3177) b_and!5915)))

(declare-fun b_lambda!6217 () Bool)

(assert (=> (not b_lambda!6217) (not b!11788)))

(declare-fun t!3467 () Bool)

(declare-fun tb!3127 () Bool)

(assert (=> (and b!11790 (= (x!6681 thiss!721) (y!648 thiss!721)) t!3467) tb!3127))

(declare-fun result!3179 () Bool)

(assert (=> tb!3127 (= result!3179 true)))

(assert (=> b!11788 t!3467))

(declare-fun b_and!5917 () Bool)

(assert (= b_and!5901 (and (=> t!3467 result!3179) b_and!5917)))

(declare-fun t!3469 () Bool)

(declare-fun tb!3129 () Bool)

(assert (=> (and b!11790 (= (y!648 thiss!721) (y!648 thiss!721)) t!3469) tb!3129))

(declare-fun result!3181 () Bool)

(assert (=> tb!3129 (= result!3181 true)))

(assert (=> b!11788 t!3469))

(declare-fun b_and!5919 () Bool)

(assert (= b_and!5903 (and (=> t!3469 result!3181) b_and!5919)))

(declare-fun tb!3131 () Bool)

(declare-fun t!3471 () Bool)

(assert (=> (and b!11785 (= (x!6681 that!177) (y!648 thiss!721)) t!3471) tb!3131))

(declare-fun result!3183 () Bool)

(assert (=> tb!3131 (= result!3183 true)))

(assert (=> b!11788 t!3471))

(declare-fun b_and!5921 () Bool)

(assert (= b_and!5907 (and (=> t!3471 result!3183) b_and!5921)))

(declare-fun t!3473 () Bool)

(declare-fun tb!3133 () Bool)

(assert (=> (and b!11785 (= (y!648 that!177) (y!648 thiss!721)) t!3473) tb!3133))

(declare-fun result!3185 () Bool)

(assert (=> tb!3133 (= result!3185 true)))

(assert (=> b!11788 t!3473))

(declare-fun b_and!5923 () Bool)

(assert (= b_and!5909 (and (=> t!3473 result!3185) b_and!5923)))

(declare-fun b_lambda!6219 () Bool)

(assert (=> (not b_lambda!6219) (not b!11788)))

(declare-fun tb!3135 () Bool)

(declare-fun t!3475 () Bool)

(assert (=> (and b!11790 (= (x!6681 thiss!721) (x!6681 that!177)) t!3475) tb!3135))

(declare-fun result!3187 () Bool)

(assert (=> tb!3135 (= result!3187 true)))

(assert (=> b!11788 t!3475))

(declare-fun b_and!5925 () Bool)

(assert (= b_and!5917 (and (=> t!3475 result!3187) b_and!5925)))

(declare-fun t!3477 () Bool)

(declare-fun tb!3137 () Bool)

(assert (=> (and b!11790 (= (y!648 thiss!721) (x!6681 that!177)) t!3477) tb!3137))

(declare-fun result!3189 () Bool)

(assert (=> tb!3137 (= result!3189 true)))

(assert (=> b!11788 t!3477))

(declare-fun b_and!5927 () Bool)

(assert (= b_and!5919 (and (=> t!3477 result!3189) b_and!5927)))

(declare-fun t!3479 () Bool)

(declare-fun tb!3139 () Bool)

(assert (=> (and b!11785 (= (x!6681 that!177) (x!6681 that!177)) t!3479) tb!3139))

(declare-fun result!3191 () Bool)

(assert (=> tb!3139 (= result!3191 true)))

(assert (=> b!11788 t!3479))

(declare-fun b_and!5929 () Bool)

(assert (= b_and!5921 (and (=> t!3479 result!3191) b_and!5929)))

(declare-fun t!3481 () Bool)

(declare-fun tb!3141 () Bool)

(assert (=> (and b!11785 (= (y!648 that!177) (x!6681 that!177)) t!3481) tb!3141))

(declare-fun result!3193 () Bool)

(assert (=> tb!3141 (= result!3193 true)))

(assert (=> b!11788 t!3481))

(declare-fun b_and!5931 () Bool)

(assert (= b_and!5923 (and (=> t!3481 result!3193) b_and!5931)))

(declare-fun b_lambda!6221 () Bool)

(assert (=> (not b_lambda!6221) (not b!11793)))

(declare-fun t!3483 () Bool)

(declare-fun tb!3143 () Bool)

(assert (=> (and start!2366 (= f!539 f!539) t!3483) tb!3143))

(declare-fun result!3195 () Bool)

(assert (=> tb!3143 (= result!3195 true)))

(assert (=> b!11793 t!3483))

(declare-fun b_and!5933 () Bool)

(assert (= b_and!5899 (and (=> t!3483 result!3195) b_and!5933)))

(declare-fun m!14699 () Bool)

(assert (=> b!11787 m!14699))

(declare-fun m!14701 () Bool)

(assert (=> b!11791 m!14701))

(declare-fun m!14703 () Bool)

(assert (=> b!11793 m!14703))

(declare-fun m!14705 () Bool)

(assert (=> b!11793 m!14705))

(declare-fun m!14707 () Bool)

(assert (=> b!11793 m!14707))

(assert (=> b!11793 m!14705))

(assert (=> b!11793 m!14707))

(declare-fun m!14709 () Bool)

(assert (=> b!11793 m!14709))

(assert (=> b!11793 m!14703))

(declare-fun m!14711 () Bool)

(assert (=> b!11793 m!14711))

(declare-fun m!14713 () Bool)

(assert (=> b!11788 m!14713))

(declare-fun m!14715 () Bool)

(assert (=> b!11788 m!14715))

(declare-fun m!14717 () Bool)

(assert (=> start!2366 m!14717))

(declare-fun m!14719 () Bool)

(assert (=> start!2366 m!14719))

(declare-fun m!14721 () Bool)

(assert (=> start!2366 m!14721))

(push 1)

(assert (not b_lambda!6221))

(assert b_and!5927)

(assert (not b_next!4077))

(assert b_and!5913)

(assert (not b!11793))

(assert b_and!5931)

(assert b_and!5929)

(assert (not b_next!4075))

(assert (not b_next!4071))

(assert b_and!5915)

(assert (not b_next!4047))

(assert b_and!5925)

(assert (not b_next!4069))

(assert b_and!5933)

(assert (not b_next!4073))

(assert (not b!11791))

(assert (not b!11794))

(assert (not b_next!4079))

(assert (not start!2366))

(assert (not b_lambda!6217))

(assert (not b_lambda!6215))

(assert (not b_lambda!6219))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5927)

(assert (not b_next!4077))

(assert b_and!5913)

(assert b_and!5931)

(assert b_and!5929)

(assert (not b_next!4075))

(assert (not b_next!4071))

(assert b_and!5915)

(assert (not b_next!4047))

(assert b_and!5925)

(assert (not b_next!4069))

(assert b_and!5933)

(assert (not b_next!4073))

(assert (not b_next!4079))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6223 () Bool)

(assert (= b_lambda!6221 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6223)))

(declare-fun bs!3026 () Bool)

(declare-fun d!9091 () Bool)

(assert (= bs!3026 (and d!9091 b!11792)))

(declare-fun ++!3 (Balance!329 Balance!329) Balance!329)

(assert (=> bs!3026 (= (dynLambda!470 lambda!3158 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)) (++!3 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)))))

(assert (=> bs!3026 m!14705))

(assert (=> bs!3026 m!14707))

(declare-fun m!14723 () Bool)

(assert (=> bs!3026 m!14723))

(assert (=> (and b!11792 (= lambda!3158 f!539) b!11793) d!9091))

(declare-fun b_lambda!6225 () Bool)

(assert (= b_lambda!6217 (or (and b!11785 b_free!1701 (= (x!6681 that!177) (y!648 thiss!721))) (and b!11785 b_free!1703 (= (y!648 that!177) (y!648 thiss!721))) (and b!11794 (= lambda!3159 (y!648 thiss!721))) (and b!11786 (= lambda!3162 (y!648 thiss!721))) (and b!11794 (= lambda!3160 (y!648 thiss!721))) (and b!11790 b_free!1695 (= (x!6681 thiss!721) (y!648 thiss!721))) (and b!11790 b_free!1697) b_lambda!6225)))

(declare-fun bs!3027 () Bool)

(declare-fun d!9093 () Bool)

(assert (= bs!3027 (and d!9093 b!11794)))

(assert (=> bs!3027 (= (dynLambda!469 lambda!3159) (dynLambda!470 f!539 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6231 () Bool)

(assert (=> (not b_lambda!6231) (not bs!3027)))

(assert (=> bs!3027 t!3483))

(declare-fun b_and!5935 () Bool)

(assert (= b_and!5933 (and (=> t!3483 result!3195) b_and!5935)))

(assert (=> bs!3027 m!14705))

(assert (=> bs!3027 m!14707))

(assert (=> bs!3027 m!14705))

(assert (=> bs!3027 m!14707))

(assert (=> bs!3027 m!14709))

(assert (=> (and b!11794 (= lambda!3159 (y!648 thiss!721)) b!11788) d!9093))

(declare-fun bs!3028 () Bool)

(declare-fun d!9095 () Bool)

(assert (= bs!3028 (and d!9095 b!11786)))

(assert (=> bs!3028 (= (dynLambda!469 lambda!3162) (foldRight1!110 (Cons!277 (head!495 xs!292) ys!54) f!539))))

(declare-fun m!14725 () Bool)

(assert (=> bs!3028 m!14725))

(assert (=> (and b!11786 (= lambda!3162 (y!648 thiss!721)) b!11788) d!9095))

(declare-fun bs!3029 () Bool)

(declare-fun d!9097 () Bool)

(assert (= bs!3029 (and d!9097 b!11794)))

(assert (=> bs!3029 (= (dynLambda!469 lambda!3160) (dynLambda!470 f!539 (head!495 xs!292) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6233 () Bool)

(assert (=> (not b_lambda!6233) (not bs!3029)))

(declare-fun t!3485 () Bool)

(declare-fun tb!3145 () Bool)

(assert (=> (and start!2366 (= f!539 f!539) t!3485) tb!3145))

(declare-fun result!3197 () Bool)

(assert (=> tb!3145 (= result!3197 true)))

(assert (=> bs!3029 t!3485))

(declare-fun b_and!5937 () Bool)

(assert (= b_and!5935 (and (=> t!3485 result!3197) b_and!5937)))

(assert (=> bs!3029 m!14707))

(assert (=> bs!3029 m!14707))

(declare-fun m!14727 () Bool)

(assert (=> bs!3029 m!14727))

(assert (=> (and b!11794 (= lambda!3160 (y!648 thiss!721)) b!11788) d!9097))

(declare-fun b_lambda!6227 () Bool)

(assert (= b_lambda!6219 (or (and b!11794 (= lambda!3160 (x!6681 that!177))) (and b!11790 b_free!1697 (= (y!648 thiss!721) (x!6681 that!177))) (and b!11790 b_free!1695 (= (x!6681 thiss!721) (x!6681 that!177))) (and b!11786 (= lambda!3162 (x!6681 that!177))) (and b!11785 b_free!1703 (= (y!648 that!177) (x!6681 that!177))) (and b!11785 b_free!1701) (and b!11794 (= lambda!3159 (x!6681 that!177))) b_lambda!6227)))

(declare-fun bs!3030 () Bool)

(declare-fun d!9099 () Bool)

(assert (= bs!3030 (and d!9099 b!11794)))

(assert (=> bs!3030 (= (dynLambda!469 lambda!3159) (dynLambda!470 f!539 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6235 () Bool)

(assert (=> (not b_lambda!6235) (not bs!3030)))

(assert (=> bs!3030 t!3483))

(declare-fun b_and!5939 () Bool)

(assert (= b_and!5937 (and (=> t!3483 result!3195) b_and!5939)))

(assert (=> bs!3030 m!14705))

(assert (=> bs!3030 m!14707))

(assert (=> bs!3030 m!14705))

(assert (=> bs!3030 m!14707))

(assert (=> bs!3030 m!14709))

(assert (=> (and b!11794 (= lambda!3159 (x!6681 that!177)) b!11788) d!9099))

(declare-fun bs!3031 () Bool)

(declare-fun d!9101 () Bool)

(assert (= bs!3031 (and d!9101 b!11794)))

(assert (=> bs!3031 (= (dynLambda!469 lambda!3160) (dynLambda!470 f!539 (head!495 xs!292) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6237 () Bool)

(assert (=> (not b_lambda!6237) (not bs!3031)))

(assert (=> bs!3031 t!3485))

(declare-fun b_and!5941 () Bool)

(assert (= b_and!5939 (and (=> t!3485 result!3197) b_and!5941)))

(assert (=> bs!3031 m!14707))

(assert (=> bs!3031 m!14707))

(assert (=> bs!3031 m!14727))

(assert (=> (and b!11794 (= lambda!3160 (x!6681 that!177)) b!11788) d!9101))

(declare-fun bs!3032 () Bool)

(declare-fun d!9103 () Bool)

(assert (= bs!3032 (and d!9103 b!11786)))

(assert (=> bs!3032 (= (dynLambda!469 lambda!3162) (foldRight1!110 (Cons!277 (head!495 xs!292) ys!54) f!539))))

(assert (=> bs!3032 m!14725))

(assert (=> (and b!11786 (= lambda!3162 (x!6681 that!177)) b!11788) d!9103))

(declare-fun b_lambda!6229 () Bool)

(assert (= b_lambda!6215 (or (and b!11794 (= lambda!3161 (evidence!196 thiss!721))) (and b!11786 (= lambda!3163 (evidence!196 thiss!721))) (and b!11790 b_free!1699) (and b!11785 b_free!1705 (= (evidence!196 that!177) (evidence!196 thiss!721))) b_lambda!6229)))

(declare-fun bs!3033 () Bool)

(declare-fun d!9105 () Bool)

(assert (= bs!3033 (and d!9105 b!11794)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!3033 (= (dynLambda!468 lambda!3161) trivial!1)))

(assert (=> (and b!11794 (= lambda!3161 (evidence!196 thiss!721)) b!11787) d!9105))

(declare-fun bs!3034 () Bool)

(declare-fun d!9107 () Bool)

(assert (= bs!3034 (and d!9107 b!11786)))

(assert (=> bs!3034 (= (dynLambda!468 lambda!3163) (= (append!129 xs!292 ys!54) (Cons!277 (head!495 xs!292) ys!54)))))

(assert (=> bs!3034 m!14703))

(assert (=> (and b!11786 (= lambda!3163 (evidence!196 thiss!721)) b!11787) d!9107))

(push 1)

(assert (not bs!3031))

(assert b_and!5927)

(assert (not b_next!4077))

(assert b_and!5913)

(assert (not bs!3032))

(assert (not b!11793))

(assert b_and!5931)

(assert b_and!5929)

(assert (not b_lambda!6231))

(assert (not b_next!4075))

(assert (not bs!3026))

(assert (not b_next!4071))

(assert b_and!5915)

(assert (not b_next!4047))

(assert b_and!5925)

(assert (not b_lambda!6229))

(assert (not b_next!4069))

(assert (not b_next!4073))

(assert (not b_lambda!6233))

(assert (not b!11791))

(assert (not b_lambda!6223))

(assert (not b_lambda!6235))

(assert (not bs!3027))

(assert (not b_lambda!6225))

(assert (not b_lambda!6237))

(assert (not b_lambda!6227))

(assert (not b!11794))

(assert (not bs!3029))

(assert (not bs!3034))

(assert (not b_next!4079))

(assert (not bs!3028))

(assert (not start!2366))

(assert b_and!5941)

(assert (not bs!3030))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5927)

(assert (not b_next!4077))

(assert b_and!5913)

(assert b_and!5931)

(assert b_and!5929)

(assert (not b_next!4075))

(assert (not b_next!4071))

(assert b_and!5915)

(assert (not b_next!4047))

(assert b_and!5925)

(assert (not b_next!4069))

(assert (not b_next!4073))

(assert (not b_next!4079))

(assert b_and!5941)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6239 () Bool)

(assert (= b_lambda!6231 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6239)))

(assert (=> (and b!11792 (= lambda!3158 f!539) bs!3027) d!9091))

(declare-fun b_lambda!6241 () Bool)

(assert (= b_lambda!6233 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6241)))

(declare-fun bs!3035 () Bool)

(declare-fun d!9109 () Bool)

(assert (= bs!3035 (and d!9109 b!11792)))

(assert (=> bs!3035 (= (dynLambda!470 lambda!3158 (head!495 xs!292) (foldRight1!110 ys!54 f!539)) (++!3 (head!495 xs!292) (foldRight1!110 ys!54 f!539)))))

(assert (=> bs!3035 m!14707))

(declare-fun m!14729 () Bool)

(assert (=> bs!3035 m!14729))

(assert (=> (and b!11792 (= lambda!3158 f!539) bs!3029) d!9109))

(declare-fun b_lambda!6243 () Bool)

(assert (= b_lambda!6237 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6243)))

(assert (=> (and b!11792 (= lambda!3158 f!539) bs!3031) d!9109))

(declare-fun b_lambda!6245 () Bool)

(assert (= b_lambda!6235 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6245)))

(assert (=> (and b!11792 (= lambda!3158 f!539) bs!3030) d!9091))

(push 1)

(assert (not bs!3031))

(assert (not b_lambda!6239))

(assert (not b_lambda!6243))

(assert (not bs!3035))

(assert b_and!5927)

(assert (not b_next!4077))

(assert (not b_lambda!6241))

(assert b_and!5913)

(assert (not bs!3032))

(assert (not b!11793))

(assert b_and!5931)

(assert b_and!5929)

(assert (not b_next!4075))

(assert (not bs!3026))

(assert (not b_next!4071))

(assert b_and!5915)

(assert (not b_next!4047))

(assert b_and!5925)

(assert (not b_lambda!6229))

(assert (not b_next!4069))

(assert (not b_next!4073))

(assert (not b!11791))

(assert (not b_lambda!6223))

(assert (not bs!3027))

(assert (not b_lambda!6245))

(assert (not b_lambda!6225))

(assert (not b_lambda!6227))

(assert (not b!11794))

(assert (not bs!3029))

(assert (not bs!3034))

(assert (not b_next!4079))

(assert (not bs!3028))

(assert (not start!2366))

(assert b_and!5941)

(assert (not bs!3030))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5927)

(assert (not b_next!4077))

(assert b_and!5913)

(assert b_and!5931)

(assert b_and!5929)

(assert (not b_next!4075))

(assert (not b_next!4071))

(assert b_and!5915)

(assert (not b_next!4047))

(assert b_and!5925)

(assert (not b_next!4069))

(assert (not b_next!4073))

(assert (not b_next!4079))

(assert b_and!5941)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9111 () Bool)

(declare-fun lt!1785 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9111 (= lt!1785 (min!4 (extraOpen!205 (foldRight1!110 xs!292 f!539)) (extraClose!205 (foldRight1!110 ys!54 f!539))))))

(assert (=> d!9111 (= (++!3 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)) (Balance!330 (- (+ (extraOpen!205 (foldRight1!110 xs!292 f!539)) (extraOpen!205 (foldRight1!110 ys!54 f!539))) lt!1785) (- (+ (extraClose!205 (foldRight1!110 xs!292 f!539)) (extraClose!205 (foldRight1!110 ys!54 f!539))) lt!1785)))))

(declare-fun bs!3036 () Bool)

(assert (= bs!3036 d!9111))

(declare-fun m!14731 () Bool)

(assert (=> bs!3036 m!14731))

(assert (=> bs!3026 d!9111))

(declare-fun d!9113 () Bool)

(declare-fun c!3428 () Bool)

(assert (=> d!9113 (= c!3428 (and (is-Cons!277 xs!292) (is-Nil!278 (tail!507 xs!292))))))

(declare-fun e!6560 () Balance!329)

(assert (=> d!9113 (= (foldRight1!110 xs!292 f!539) e!6560)))

(declare-fun b!11805 () Bool)

(assert (=> b!11805 (= e!6560 (head!495 xs!292))))

(declare-fun b!11806 () Bool)

(assert (=> b!11806 (= e!6560 (dynLambda!470 f!539 (head!495 xs!292) (foldRight1!110 (tail!507 xs!292) f!539)))))

(assert (= (and d!9113 c!3428) b!11805))

(assert (= (and d!9113 (not c!3428)) b!11806))

(declare-fun b_lambda!6247 () Bool)

(assert (=> (not b_lambda!6247) (not b!11806)))

(declare-fun t!3487 () Bool)

(declare-fun tb!3147 () Bool)

(assert (=> (and start!2366 (= f!539 f!539) t!3487) tb!3147))

(declare-fun result!3199 () Bool)

(assert (=> tb!3147 (= result!3199 true)))

(assert (=> b!11806 t!3487))

(declare-fun b_and!5943 () Bool)

(assert (= b_and!5941 (and (=> t!3487 result!3199) b_and!5943)))

(declare-fun m!14733 () Bool)

(assert (=> b!11806 m!14733))

(assert (=> b!11806 m!14733))

(declare-fun m!14735 () Bool)

(assert (=> b!11806 m!14735))

(assert (=> bs!3030 d!9113))

(declare-fun d!9115 () Bool)

(declare-fun c!3429 () Bool)

(assert (=> d!9115 (= c!3429 (and (is-Cons!277 ys!54) (is-Nil!278 (tail!507 ys!54))))))

(declare-fun e!6561 () Balance!329)

(assert (=> d!9115 (= (foldRight1!110 ys!54 f!539) e!6561)))

(declare-fun b!11807 () Bool)

(assert (=> b!11807 (= e!6561 (head!495 ys!54))))

(declare-fun b!11808 () Bool)

(assert (=> b!11808 (= e!6561 (dynLambda!470 f!539 (head!495 ys!54) (foldRight1!110 (tail!507 ys!54) f!539)))))

(assert (= (and d!9115 c!3429) b!11807))

(assert (= (and d!9115 (not c!3429)) b!11808))

(declare-fun b_lambda!6249 () Bool)

(assert (=> (not b_lambda!6249) (not b!11808)))

(declare-fun t!3489 () Bool)

(declare-fun tb!3149 () Bool)

(assert (=> (and start!2366 (= f!539 f!539) t!3489) tb!3149))

(declare-fun result!3201 () Bool)

(assert (=> tb!3149 (= result!3201 true)))

(assert (=> b!11808 t!3489))

(declare-fun b_and!5945 () Bool)

(assert (= b_and!5943 (and (=> t!3489 result!3201) b_and!5945)))

(declare-fun m!14737 () Bool)

(assert (=> b!11808 m!14737))

(assert (=> b!11808 m!14737))

(declare-fun m!14739 () Bool)

(assert (=> b!11808 m!14739))

(assert (=> bs!3030 d!9115))

(assert (=> bs!3029 d!9115))

(declare-fun d!9117 () Bool)

(assert (=> d!9117 (= (isEmpty!208 ys!54) (is-Nil!278 ys!54))))

(assert (=> b!11791 d!9117))

(declare-fun d!9119 () Bool)

(declare-fun c!3432 () Bool)

(assert (=> d!9119 (= c!3432 (is-Nil!278 xs!292))))

(declare-fun e!6564 () List!280)

(assert (=> d!9119 (= (append!129 xs!292 ys!54) e!6564)))

(declare-fun b!11813 () Bool)

(assert (=> b!11813 (= e!6564 ys!54)))

(declare-fun b!11814 () Bool)

(assert (=> b!11814 (= e!6564 (Cons!277 (head!495 xs!292) (append!129 (tail!507 xs!292) ys!54)))))

(assert (= (and d!9119 c!3432) b!11813))

(assert (= (and d!9119 (not c!3432)) b!11814))

(declare-fun m!14741 () Bool)

(assert (=> b!11814 m!14741))

(assert (=> bs!3034 d!9119))

(declare-fun d!9121 () Bool)

(assert (=> d!9121 (= (isEmpty!208 xs!292) (is-Nil!278 xs!292))))

(assert (=> start!2366 d!9121))

(declare-fun d!9123 () Bool)

(declare-fun res!4355 () Bool)

(declare-fun e!6567 () Bool)

(assert (=> d!9123 (=> (not res!4355) (not e!6567))))

(assert (=> d!9123 (= res!4355 (= (dynLambda!469 (x!6681 thiss!721)) (dynLambda!469 (y!648 thiss!721))))))

(assert (=> d!9123 (= (inv!393 thiss!721) e!6567)))

(declare-fun b!11817 () Bool)

(assert (=> b!11817 (= e!6567 (dynLambda!468 (evidence!196 thiss!721)))))

(assert (= (and d!9123 res!4355) b!11817))

(declare-fun b_lambda!6251 () Bool)

(assert (=> (not b_lambda!6251) (not d!9123)))

(declare-fun t!3491 () Bool)

(declare-fun tb!3151 () Bool)

(assert (=> (and b!11790 (= (x!6681 thiss!721) (x!6681 thiss!721)) t!3491) tb!3151))

(declare-fun result!3203 () Bool)

(assert (=> tb!3151 (= result!3203 true)))

(assert (=> d!9123 t!3491))

(declare-fun b_and!5947 () Bool)

(assert (= b_and!5925 (and (=> t!3491 result!3203) b_and!5947)))

(declare-fun t!3493 () Bool)

(declare-fun tb!3153 () Bool)

(assert (=> (and b!11790 (= (y!648 thiss!721) (x!6681 thiss!721)) t!3493) tb!3153))

(declare-fun result!3205 () Bool)

(assert (=> tb!3153 (= result!3205 true)))

(assert (=> d!9123 t!3493))

(declare-fun b_and!5949 () Bool)

(assert (= b_and!5927 (and (=> t!3493 result!3205) b_and!5949)))

(declare-fun tb!3155 () Bool)

(declare-fun t!3495 () Bool)

(assert (=> (and b!11785 (= (x!6681 that!177) (x!6681 thiss!721)) t!3495) tb!3155))

(declare-fun result!3207 () Bool)

(assert (=> tb!3155 (= result!3207 true)))

(assert (=> d!9123 t!3495))

(declare-fun b_and!5951 () Bool)

(assert (= b_and!5929 (and (=> t!3495 result!3207) b_and!5951)))

(declare-fun tb!3157 () Bool)

(declare-fun t!3497 () Bool)

(assert (=> (and b!11785 (= (y!648 that!177) (x!6681 thiss!721)) t!3497) tb!3157))

(declare-fun result!3209 () Bool)

(assert (=> tb!3157 (= result!3209 true)))

(assert (=> d!9123 t!3497))

(declare-fun b_and!5953 () Bool)

(assert (= b_and!5931 (and (=> t!3497 result!3209) b_and!5953)))

(declare-fun b_lambda!6253 () Bool)

(assert (=> (not b_lambda!6253) (not d!9123)))

(assert (=> d!9123 t!3467))

(declare-fun b_and!5955 () Bool)

(assert (= b_and!5947 (and (=> t!3467 result!3179) b_and!5955)))

(assert (=> d!9123 t!3469))

(declare-fun b_and!5957 () Bool)

(assert (= b_and!5949 (and (=> t!3469 result!3181) b_and!5957)))

(assert (=> d!9123 t!3471))

(declare-fun b_and!5959 () Bool)

(assert (= b_and!5951 (and (=> t!3471 result!3183) b_and!5959)))

(assert (=> d!9123 t!3473))

(declare-fun b_and!5961 () Bool)

(assert (= b_and!5953 (and (=> t!3473 result!3185) b_and!5961)))

(declare-fun b_lambda!6255 () Bool)

(assert (=> (not b_lambda!6255) (not b!11817)))

(assert (=> b!11817 t!3463))

(declare-fun b_and!5963 () Bool)

(assert (= b_and!5913 (and (=> t!3463 result!3175) b_and!5963)))

(assert (=> b!11817 t!3465))

(declare-fun b_and!5965 () Bool)

(assert (= b_and!5915 (and (=> t!3465 result!3177) b_and!5965)))

(declare-fun m!14743 () Bool)

(assert (=> d!9123 m!14743))

(assert (=> d!9123 m!14713))

(assert (=> b!11817 m!14699))

(assert (=> start!2366 d!9123))

(declare-fun d!9125 () Bool)

(declare-fun res!4356 () Bool)

(declare-fun e!6568 () Bool)

(assert (=> d!9125 (=> (not res!4356) (not e!6568))))

(assert (=> d!9125 (= res!4356 (= (dynLambda!469 (x!6681 that!177)) (dynLambda!469 (y!648 that!177))))))

(assert (=> d!9125 (= (inv!393 that!177) e!6568)))

(declare-fun b!11818 () Bool)

(assert (=> b!11818 (= e!6568 (dynLambda!468 (evidence!196 that!177)))))

(assert (= (and d!9125 res!4356) b!11818))

(declare-fun b_lambda!6257 () Bool)

(assert (=> (not b_lambda!6257) (not d!9125)))

(assert (=> d!9125 t!3475))

(declare-fun b_and!5967 () Bool)

(assert (= b_and!5955 (and (=> t!3475 result!3187) b_and!5967)))

(assert (=> d!9125 t!3477))

(declare-fun b_and!5969 () Bool)

(assert (= b_and!5957 (and (=> t!3477 result!3189) b_and!5969)))

(assert (=> d!9125 t!3479))

(declare-fun b_and!5971 () Bool)

(assert (= b_and!5959 (and (=> t!3479 result!3191) b_and!5971)))

(assert (=> d!9125 t!3481))

(declare-fun b_and!5973 () Bool)

(assert (= b_and!5961 (and (=> t!3481 result!3193) b_and!5973)))

(declare-fun b_lambda!6259 () Bool)

(assert (=> (not b_lambda!6259) (not d!9125)))

(declare-fun t!3499 () Bool)

(declare-fun tb!3159 () Bool)

(assert (=> (and b!11790 (= (x!6681 thiss!721) (y!648 that!177)) t!3499) tb!3159))

(declare-fun result!3211 () Bool)

(assert (=> tb!3159 (= result!3211 true)))

(assert (=> d!9125 t!3499))

(declare-fun b_and!5975 () Bool)

(assert (= b_and!5967 (and (=> t!3499 result!3211) b_and!5975)))

(declare-fun tb!3161 () Bool)

(declare-fun t!3501 () Bool)

(assert (=> (and b!11790 (= (y!648 thiss!721) (y!648 that!177)) t!3501) tb!3161))

(declare-fun result!3213 () Bool)

(assert (=> tb!3161 (= result!3213 true)))

(assert (=> d!9125 t!3501))

(declare-fun b_and!5977 () Bool)

(assert (= b_and!5969 (and (=> t!3501 result!3213) b_and!5977)))

(declare-fun t!3503 () Bool)

(declare-fun tb!3163 () Bool)

(assert (=> (and b!11785 (= (x!6681 that!177) (y!648 that!177)) t!3503) tb!3163))

(declare-fun result!3215 () Bool)

(assert (=> tb!3163 (= result!3215 true)))

(assert (=> d!9125 t!3503))

(declare-fun b_and!5979 () Bool)

(assert (= b_and!5971 (and (=> t!3503 result!3215) b_and!5979)))

(declare-fun t!3505 () Bool)

(declare-fun tb!3165 () Bool)

(assert (=> (and b!11785 (= (y!648 that!177) (y!648 that!177)) t!3505) tb!3165))

(declare-fun result!3217 () Bool)

(assert (=> tb!3165 (= result!3217 true)))

(assert (=> d!9125 t!3505))

(declare-fun b_and!5981 () Bool)

(assert (= b_and!5973 (and (=> t!3505 result!3217) b_and!5981)))

(declare-fun b_lambda!6261 () Bool)

(assert (=> (not b_lambda!6261) (not b!11818)))

(declare-fun tb!3167 () Bool)

(declare-fun t!3507 () Bool)

(assert (=> (and b!11790 (= (evidence!196 thiss!721) (evidence!196 that!177)) t!3507) tb!3167))

(declare-fun result!3219 () Bool)

(assert (=> tb!3167 (= result!3219 true)))

(assert (=> b!11818 t!3507))

(declare-fun b_and!5983 () Bool)

(assert (= b_and!5963 (and (=> t!3507 result!3219) b_and!5983)))

(declare-fun t!3509 () Bool)

(declare-fun tb!3169 () Bool)

(assert (=> (and b!11785 (= (evidence!196 that!177) (evidence!196 that!177)) t!3509) tb!3169))

(declare-fun result!3221 () Bool)

(assert (=> tb!3169 (= result!3221 true)))

(assert (=> b!11818 t!3509))

(declare-fun b_and!5985 () Bool)

(assert (= b_and!5965 (and (=> t!3509 result!3221) b_and!5985)))

(assert (=> d!9125 m!14715))

(declare-fun m!14745 () Bool)

(assert (=> d!9125 m!14745))

(declare-fun m!14747 () Bool)

(assert (=> b!11818 m!14747))

(assert (=> start!2366 d!9125))

(declare-fun d!9127 () Bool)

(declare-fun c!3433 () Bool)

(assert (=> d!9127 (= c!3433 (and (is-Cons!277 (Cons!277 (head!495 xs!292) ys!54)) (is-Nil!278 (tail!507 (Cons!277 (head!495 xs!292) ys!54)))))))

(declare-fun e!6569 () Balance!329)

(assert (=> d!9127 (= (foldRight1!110 (Cons!277 (head!495 xs!292) ys!54) f!539) e!6569)))

(declare-fun b!11819 () Bool)

(assert (=> b!11819 (= e!6569 (head!495 (Cons!277 (head!495 xs!292) ys!54)))))

(declare-fun b!11820 () Bool)

(assert (=> b!11820 (= e!6569 (dynLambda!470 f!539 (head!495 (Cons!277 (head!495 xs!292) ys!54)) (foldRight1!110 (tail!507 (Cons!277 (head!495 xs!292) ys!54)) f!539)))))

(assert (= (and d!9127 c!3433) b!11819))

(assert (= (and d!9127 (not c!3433)) b!11820))

(declare-fun b_lambda!6263 () Bool)

(assert (=> (not b_lambda!6263) (not b!11820)))

(declare-fun t!3511 () Bool)

(declare-fun tb!3171 () Bool)

(assert (=> (and start!2366 (= f!539 f!539) t!3511) tb!3171))

(declare-fun result!3223 () Bool)

(assert (=> tb!3171 (= result!3223 true)))

(assert (=> b!11820 t!3511))

(declare-fun b_and!5987 () Bool)

(assert (= b_and!5945 (and (=> t!3511 result!3223) b_and!5987)))

(declare-fun m!14749 () Bool)

(assert (=> b!11820 m!14749))

(assert (=> b!11820 m!14749))

(declare-fun m!14751 () Bool)

(assert (=> b!11820 m!14751))

(assert (=> bs!3032 d!9127))

(assert (=> bs!3028 d!9127))

(assert (=> bs!3027 d!9113))

(assert (=> bs!3027 d!9115))

(assert (=> bs!3031 d!9115))

(assert (=> b!11793 d!9113))

(assert (=> b!11793 d!9115))

(declare-fun d!9129 () Bool)

(declare-fun c!3434 () Bool)

(assert (=> d!9129 (= c!3434 (and (is-Cons!277 (append!129 xs!292 ys!54)) (is-Nil!278 (tail!507 (append!129 xs!292 ys!54)))))))

(declare-fun e!6570 () Balance!329)

(assert (=> d!9129 (= (foldRight1!110 (append!129 xs!292 ys!54) f!539) e!6570)))

(declare-fun b!11821 () Bool)

(assert (=> b!11821 (= e!6570 (head!495 (append!129 xs!292 ys!54)))))

(declare-fun b!11822 () Bool)

(assert (=> b!11822 (= e!6570 (dynLambda!470 f!539 (head!495 (append!129 xs!292 ys!54)) (foldRight1!110 (tail!507 (append!129 xs!292 ys!54)) f!539)))))

(assert (= (and d!9129 c!3434) b!11821))

(assert (= (and d!9129 (not c!3434)) b!11822))

(declare-fun b_lambda!6265 () Bool)

(assert (=> (not b_lambda!6265) (not b!11822)))

(declare-fun t!3513 () Bool)

(declare-fun tb!3173 () Bool)

(assert (=> (and start!2366 (= f!539 f!539) t!3513) tb!3173))

(declare-fun result!3225 () Bool)

(assert (=> tb!3173 (= result!3225 true)))

(assert (=> b!11822 t!3513))

(declare-fun b_and!5989 () Bool)

(assert (= b_and!5987 (and (=> t!3513 result!3225) b_and!5989)))

(declare-fun m!14753 () Bool)

(assert (=> b!11822 m!14753))

(assert (=> b!11822 m!14753))

(declare-fun m!14755 () Bool)

(assert (=> b!11822 m!14755))

(assert (=> b!11793 d!9129))

(assert (=> b!11793 d!9119))

(declare-fun d!9131 () Bool)

(assert (=> d!9131 (= trivial!1 true)))

(assert (=> b!11794 d!9131))

(declare-fun b_lambda!6267 () Bool)

(assert (= b_lambda!6265 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6267)))

(declare-fun bs!3037 () Bool)

(declare-fun d!9133 () Bool)

(assert (= bs!3037 (and d!9133 b!11792)))

(assert (=> bs!3037 (= (dynLambda!470 lambda!3158 (head!495 (append!129 xs!292 ys!54)) (foldRight1!110 (tail!507 (append!129 xs!292 ys!54)) f!539)) (++!3 (head!495 (append!129 xs!292 ys!54)) (foldRight1!110 (tail!507 (append!129 xs!292 ys!54)) f!539)))))

(assert (=> bs!3037 m!14753))

(declare-fun m!14757 () Bool)

(assert (=> bs!3037 m!14757))

(assert (=> (and b!11792 (= lambda!3158 f!539) b!11822) d!9133))

(declare-fun b_lambda!6269 () Bool)

(assert (= b_lambda!6263 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6269)))

(declare-fun bs!3038 () Bool)

(declare-fun d!9135 () Bool)

(assert (= bs!3038 (and d!9135 b!11792)))

(assert (=> bs!3038 (= (dynLambda!470 lambda!3158 (head!495 (Cons!277 (head!495 xs!292) ys!54)) (foldRight1!110 (tail!507 (Cons!277 (head!495 xs!292) ys!54)) f!539)) (++!3 (head!495 (Cons!277 (head!495 xs!292) ys!54)) (foldRight1!110 (tail!507 (Cons!277 (head!495 xs!292) ys!54)) f!539)))))

(assert (=> bs!3038 m!14749))

(declare-fun m!14759 () Bool)

(assert (=> bs!3038 m!14759))

(assert (=> (and b!11792 (= lambda!3158 f!539) b!11820) d!9135))

(declare-fun b_lambda!6271 () Bool)

(assert (= b_lambda!6261 (or (and b!11794 (= lambda!3161 (evidence!196 that!177))) (and b!11786 (= lambda!3163 (evidence!196 that!177))) (and b!11790 b_free!1699 (= (evidence!196 thiss!721) (evidence!196 that!177))) (and b!11785 b_free!1705) b_lambda!6271)))

(declare-fun bs!3039 () Bool)

(declare-fun d!9137 () Bool)

(assert (= bs!3039 (and d!9137 b!11794)))

(assert (=> bs!3039 (= (dynLambda!468 lambda!3161) trivial!1)))

(assert (=> (and b!11794 (= lambda!3161 (evidence!196 that!177)) b!11818) d!9137))

(declare-fun bs!3040 () Bool)

(declare-fun d!9139 () Bool)

(assert (= bs!3040 (and d!9139 b!11786)))

(assert (=> bs!3040 (= (dynLambda!468 lambda!3163) (= (append!129 xs!292 ys!54) (Cons!277 (head!495 xs!292) ys!54)))))

(assert (=> bs!3040 m!14703))

(assert (=> (and b!11786 (= lambda!3163 (evidence!196 that!177)) b!11818) d!9139))

(declare-fun b_lambda!6273 () Bool)

(assert (= b_lambda!6249 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6273)))

(declare-fun bs!3041 () Bool)

(declare-fun d!9141 () Bool)

(assert (= bs!3041 (and d!9141 b!11792)))

(assert (=> bs!3041 (= (dynLambda!470 lambda!3158 (head!495 ys!54) (foldRight1!110 (tail!507 ys!54) f!539)) (++!3 (head!495 ys!54) (foldRight1!110 (tail!507 ys!54) f!539)))))

(assert (=> bs!3041 m!14737))

(declare-fun m!14761 () Bool)

(assert (=> bs!3041 m!14761))

(assert (=> (and b!11792 (= lambda!3158 f!539) b!11808) d!9141))

(declare-fun b_lambda!6275 () Bool)

(assert (= b_lambda!6257 (or (and b!11794 (= lambda!3160 (x!6681 that!177))) (and b!11790 b_free!1697 (= (y!648 thiss!721) (x!6681 that!177))) (and b!11790 b_free!1695 (= (x!6681 thiss!721) (x!6681 that!177))) (and b!11786 (= lambda!3162 (x!6681 that!177))) (and b!11785 b_free!1703 (= (y!648 that!177) (x!6681 that!177))) (and b!11785 b_free!1701) (and b!11794 (= lambda!3159 (x!6681 that!177))) b_lambda!6275)))

(assert (=> (and b!11794 (= lambda!3159 (x!6681 that!177)) d!9125) d!9099))

(assert (=> (and b!11794 (= lambda!3160 (x!6681 that!177)) d!9125) d!9101))

(assert (=> (and b!11786 (= lambda!3162 (x!6681 that!177)) d!9125) d!9103))

(declare-fun b_lambda!6277 () Bool)

(assert (= b_lambda!6255 (or (and b!11794 (= lambda!3161 (evidence!196 thiss!721))) (and b!11786 (= lambda!3163 (evidence!196 thiss!721))) (and b!11790 b_free!1699) (and b!11785 b_free!1705 (= (evidence!196 that!177) (evidence!196 thiss!721))) b_lambda!6277)))

(assert (=> (and b!11794 (= lambda!3161 (evidence!196 thiss!721)) b!11817) d!9105))

(assert (=> (and b!11786 (= lambda!3163 (evidence!196 thiss!721)) b!11817) d!9107))

(declare-fun b_lambda!6279 () Bool)

(assert (= b_lambda!6253 (or (and b!11785 b_free!1701 (= (x!6681 that!177) (y!648 thiss!721))) (and b!11785 b_free!1703 (= (y!648 that!177) (y!648 thiss!721))) (and b!11794 (= lambda!3159 (y!648 thiss!721))) (and b!11786 (= lambda!3162 (y!648 thiss!721))) (and b!11794 (= lambda!3160 (y!648 thiss!721))) (and b!11790 b_free!1695 (= (x!6681 thiss!721) (y!648 thiss!721))) (and b!11790 b_free!1697) b_lambda!6279)))

(assert (=> (and b!11794 (= lambda!3159 (y!648 thiss!721)) d!9123) d!9093))

(assert (=> (and b!11786 (= lambda!3162 (y!648 thiss!721)) d!9123) d!9095))

(assert (=> (and b!11794 (= lambda!3160 (y!648 thiss!721)) d!9123) d!9097))

(declare-fun b_lambda!6281 () Bool)

(assert (= b_lambda!6259 (or (and b!11785 b_free!1703) (and b!11790 b_free!1697 (= (y!648 thiss!721) (y!648 that!177))) (and b!11790 b_free!1695 (= (x!6681 thiss!721) (y!648 that!177))) (and b!11794 (= lambda!3159 (y!648 that!177))) (and b!11785 b_free!1701 (= (x!6681 that!177) (y!648 that!177))) (and b!11786 (= lambda!3162 (y!648 that!177))) (and b!11794 (= lambda!3160 (y!648 that!177))) b_lambda!6281)))

(declare-fun bs!3042 () Bool)

(declare-fun d!9143 () Bool)

(assert (= bs!3042 (and d!9143 b!11794)))

(assert (=> bs!3042 (= (dynLambda!469 lambda!3159) (dynLambda!470 f!539 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6287 () Bool)

(assert (=> (not b_lambda!6287) (not bs!3042)))

(assert (=> bs!3042 t!3483))

(declare-fun b_and!5991 () Bool)

(assert (= b_and!5989 (and (=> t!3483 result!3195) b_and!5991)))

(assert (=> bs!3042 m!14705))

(assert (=> bs!3042 m!14707))

(assert (=> bs!3042 m!14705))

(assert (=> bs!3042 m!14707))

(assert (=> bs!3042 m!14709))

(assert (=> (and b!11794 (= lambda!3159 (y!648 that!177)) d!9125) d!9143))

(declare-fun bs!3043 () Bool)

(declare-fun d!9145 () Bool)

(assert (= bs!3043 (and d!9145 b!11786)))

(assert (=> bs!3043 (= (dynLambda!469 lambda!3162) (foldRight1!110 (Cons!277 (head!495 xs!292) ys!54) f!539))))

(assert (=> bs!3043 m!14725))

(assert (=> (and b!11786 (= lambda!3162 (y!648 that!177)) d!9125) d!9145))

(declare-fun bs!3044 () Bool)

(declare-fun d!9147 () Bool)

(assert (= bs!3044 (and d!9147 b!11794)))

(assert (=> bs!3044 (= (dynLambda!469 lambda!3160) (dynLambda!470 f!539 (head!495 xs!292) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6289 () Bool)

(assert (=> (not b_lambda!6289) (not bs!3044)))

(assert (=> bs!3044 t!3485))

(declare-fun b_and!5993 () Bool)

(assert (= b_and!5991 (and (=> t!3485 result!3197) b_and!5993)))

(assert (=> bs!3044 m!14707))

(assert (=> bs!3044 m!14707))

(assert (=> bs!3044 m!14727))

(assert (=> (and b!11794 (= lambda!3160 (y!648 that!177)) d!9125) d!9147))

(declare-fun b_lambda!6283 () Bool)

(assert (= b_lambda!6251 (or (and b!11794 (= lambda!3160 (x!6681 thiss!721))) (and b!11785 b_free!1701 (= (x!6681 that!177) (x!6681 thiss!721))) (and b!11786 (= lambda!3162 (x!6681 thiss!721))) (and b!11790 b_free!1697 (= (y!648 thiss!721) (x!6681 thiss!721))) (and b!11794 (= lambda!3159 (x!6681 thiss!721))) (and b!11790 b_free!1695) (and b!11785 b_free!1703 (= (y!648 that!177) (x!6681 thiss!721))) b_lambda!6283)))

(declare-fun bs!3045 () Bool)

(declare-fun d!9149 () Bool)

(assert (= bs!3045 (and d!9149 b!11794)))

(assert (=> bs!3045 (= (dynLambda!469 lambda!3160) (dynLambda!470 f!539 (head!495 xs!292) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6291 () Bool)

(assert (=> (not b_lambda!6291) (not bs!3045)))

(assert (=> bs!3045 t!3485))

(declare-fun b_and!5995 () Bool)

(assert (= b_and!5993 (and (=> t!3485 result!3197) b_and!5995)))

(assert (=> bs!3045 m!14707))

(assert (=> bs!3045 m!14707))

(assert (=> bs!3045 m!14727))

(assert (=> (and b!11794 (= lambda!3160 (x!6681 thiss!721)) d!9123) d!9149))

(declare-fun bs!3046 () Bool)

(declare-fun d!9151 () Bool)

(assert (= bs!3046 (and d!9151 b!11794)))

(assert (=> bs!3046 (= (dynLambda!469 lambda!3159) (dynLambda!470 f!539 (foldRight1!110 xs!292 f!539) (foldRight1!110 ys!54 f!539)))))

(declare-fun b_lambda!6293 () Bool)

(assert (=> (not b_lambda!6293) (not bs!3046)))

(assert (=> bs!3046 t!3483))

(declare-fun b_and!5997 () Bool)

(assert (= b_and!5995 (and (=> t!3483 result!3195) b_and!5997)))

(assert (=> bs!3046 m!14705))

(assert (=> bs!3046 m!14707))

(assert (=> bs!3046 m!14705))

(assert (=> bs!3046 m!14707))

(assert (=> bs!3046 m!14709))

(assert (=> (and b!11794 (= lambda!3159 (x!6681 thiss!721)) d!9123) d!9151))

(declare-fun bs!3047 () Bool)

(declare-fun d!9153 () Bool)

(assert (= bs!3047 (and d!9153 b!11786)))

(assert (=> bs!3047 (= (dynLambda!469 lambda!3162) (foldRight1!110 (Cons!277 (head!495 xs!292) ys!54) f!539))))

(assert (=> bs!3047 m!14725))

(assert (=> (and b!11786 (= lambda!3162 (x!6681 thiss!721)) d!9123) d!9153))

(declare-fun b_lambda!6285 () Bool)

(assert (= b_lambda!6247 (or (and b!11792 (= lambda!3158 f!539)) (and start!2366 b_free!1693) b_lambda!6285)))

(declare-fun bs!3048 () Bool)

(declare-fun d!9155 () Bool)

(assert (= bs!3048 (and d!9155 b!11792)))

(assert (=> bs!3048 (= (dynLambda!470 lambda!3158 (head!495 xs!292) (foldRight1!110 (tail!507 xs!292) f!539)) (++!3 (head!495 xs!292) (foldRight1!110 (tail!507 xs!292) f!539)))))

(assert (=> bs!3048 m!14733))

(declare-fun m!14763 () Bool)

(assert (=> bs!3048 m!14763))

(assert (=> (and b!11792 (= lambda!3158 f!539) b!11806) d!9155))

(push 1)

(assert (not b_lambda!6287))

(assert (not b_lambda!6283))

(assert (not bs!3044))

(assert (not b_lambda!6289))

(assert b_and!5975)

(assert (not b_lambda!6239))

(assert b_and!5997)

(assert b_and!5981)

(assert (not b_lambda!6243))

(assert (not bs!3035))

(assert (not b_lambda!6267))

(assert b_and!5977)

(assert (not b_lambda!6285))

(assert (not bs!3040))

(assert (not d!9111))

(assert (not b_next!4077))

(assert (not b_lambda!6241))

(assert b_and!5985)

(assert (not b!11822))

(assert (not b_next!4075))

(assert (not b_lambda!6273))

(assert (not b_next!4071))

(assert b_and!5983)

(assert b_and!5979)

(assert (not b_next!4047))

(assert (not bs!3037))

(assert (not b_lambda!6281))

(assert (not b_lambda!6229))

(assert (not b_next!4069))

(assert (not b_next!4073))

(assert (not b_lambda!6223))

(assert (not bs!3041))

(assert (not b_lambda!6291))

(assert (not bs!3046))

(assert (not bs!3038))

(assert (not b_lambda!6245))

(assert (not b_lambda!6293))

(assert (not bs!3047))

(assert (not b!11814))

(assert (not bs!3042))

(assert (not bs!3043))

(assert (not b_lambda!6225))

(assert (not b_lambda!6277))

(assert (not b_lambda!6227))

(assert (not bs!3048))

(assert (not b_next!4079))

(assert (not b!11820))

(assert (not b_lambda!6271))

(assert (not b_lambda!6269))

(assert (not b!11806))

(assert (not b_lambda!6279))

(assert (not b!11808))

(assert (not bs!3045))

(assert (not b_lambda!6275))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5975)

(assert b_and!5997)

(assert b_and!5981)

(assert b_and!5977)

(assert (not b_next!4077))

(assert b_and!5985)

(assert (not b_next!4075))

(assert (not b_next!4071))

(assert b_and!5983)

(assert b_and!5979)

(assert (not b_next!4047))

(assert (not b_next!4069))

(assert (not b_next!4073))

(assert (not b_next!4079))

(check-sat)

(pop 1)

