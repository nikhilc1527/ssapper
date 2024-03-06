; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8176 () Bool)

(assert start!8176)

(declare-fun b_free!7289 () Bool)

(declare-fun b_next!39051 () Bool)

(assert (=> start!8176 (= b_free!7289 (not b_next!39051))))

(declare-fun tp!16288 () Bool)

(declare-fun b_and!58537 () Bool)

(assert (=> start!8176 (= tp!16288 b_and!58537)))

(declare-fun b_free!7291 () Bool)

(declare-fun b_next!39053 () Bool)

(assert (=> start!8176 (= b_free!7291 (not b_next!39053))))

(declare-fun tp!16289 () Bool)

(declare-fun b_and!58539 () Bool)

(assert (=> start!8176 (= tp!16289 b_and!58539)))

(assert (=> start!8176 true))

(declare-fun lambda!9097 () Int)

(declare-fun f!3249 () Int)

(declare-fun order!451 () Int)

(declare-fun order!449 () Int)

(declare-fun dynLambda!926 (Int Int) Int)

(declare-fun dynLambda!927 (Int Int) Int)

(assert (=> start!8176 (< (dynLambda!926 order!449 f!3249) (dynLambda!927 order!451 lambda!9097))))

(assert (=> start!8176 true))

(declare-fun g!110 () Int)

(declare-fun order!453 () Int)

(declare-fun dynLambda!928 (Int Int) Int)

(assert (=> start!8176 (< (dynLambda!928 order!453 g!110) (dynLambda!927 order!451 lambda!9097))))

(declare-fun lt!10645 () Bool)

(declare-fun lt!10642 () Bool)

(declare-datatypes () ((T!3704 (T!3705 (val!162 Int)))))

(declare-datatypes () ((List!464 (Cons!440 (h!677 T!3704) (t!47095 List!464)) (Nil!441))))

(declare-fun list!286 () List!464)

(declare-fun b!58040 () Bool)

(declare-fun e!30872 () Bool)

(assert (=> b!58040 (= e!30872 (ite lt!10642 lt!10645 (or (not (is-Cons!440 list!286)) lt!10645)))))

(declare-fun e!30873 () Bool)

(assert (=> b!58040 (= lt!10645 e!30873)))

(declare-fun c!12394 () Bool)

(assert (=> b!58040 (= c!12394 (or lt!10642 (is-Cons!440 list!286)))))

(declare-datatypes () ((U!40 (U!41 (val!163 Int)))))

(declare-datatypes () ((List!465 (Cons!441 (h!678 U!40) (t!47096 List!465)) (Nil!442))))

(declare-fun flist!10 () List!465)

(assert (=> b!58040 (= lt!10642 (is-Cons!441 flist!10))))

(declare-fun b!58041 () Bool)

(declare-fun e!30868 () Bool)

(declare-fun res!26889 () Bool)

(assert (=> b!58041 (= e!30868 res!26889)))

(assert (=> b!58041 true))

(declare-fun b!58042 () Bool)

(declare-datatypes () ((V!385 (V!386 (val!164 Int)))))

(declare-datatypes () ((List!466 (Cons!442 (h!679 V!385) (t!47097 List!466)) (Nil!443))))

(declare-fun e!30871 () List!466)

(declare-fun e!30875 () List!466)

(assert (=> b!58042 (= e!30871 e!30875)))

(declare-fun c!12392 () Bool)

(assert (=> b!58042 (= c!12392 (is-Cons!441 flist!10))))

(declare-fun b!58043 () Bool)

(declare-fun e!30870 () List!465)

(assert (=> b!58043 (= e!30870 (t!47096 flist!10))))

(declare-fun b!58044 () Bool)

(declare-fun e!30876 () List!465)

(assert (=> b!58044 (= e!30876 flist!10)))

(declare-fun b!58045 () Bool)

(declare-fun res!26888 () Bool)

(assert (=> b!58045 (= e!30873 res!26888)))

(assert (=> b!58045 true))

(declare-fun b!58046 () Bool)

(assert (=> b!58046 (= e!30876 e!30870)))

(declare-fun c!12396 () Bool)

(assert (=> b!58046 (= c!12396 (is-Cons!441 flist!10))))

(declare-fun b!58047 () Bool)

(declare-fun e!30874 () Bool)

(declare-fun tp_is_empty!323 () Bool)

(declare-fun tp!16290 () Bool)

(assert (=> b!58047 (= e!30874 (and tp_is_empty!323 tp!16290))))

(declare-fun b!58048 () Bool)

(declare-fun e!30867 () Bool)

(declare-fun tp_is_empty!319 () Bool)

(declare-fun tp!16291 () Bool)

(assert (=> b!58048 (= e!30867 (and tp_is_empty!319 tp!16291))))

(declare-fun b!58049 () Bool)

(assert (=> b!58049 (= e!30875 Nil!443)))

(declare-fun b!58050 () Bool)

(declare-fun lt!10643 () Bool)

(declare-fun associative_lemma_induct!5 (List!464 List!465 List!466 Int Int) Bool)

(assert (=> b!58050 (= e!30868 (associative_lemma_induct!5 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) e!30876 e!30871 f!3249 g!110))))

(declare-fun c!12395 () Bool)

(assert (=> b!58050 (= c!12395 lt!10643)))

(declare-fun c!12393 () Bool)

(assert (=> b!58050 (= c!12393 lt!10643)))

(declare-fun b!58051 () Bool)

(declare-fun glist!10 () List!466)

(assert (=> b!58051 (= e!30871 (t!47097 glist!10))))

(declare-fun b!58052 () Bool)

(declare-fun lt!10644 () Bool)

(assert (=> b!58052 (= e!30872 lt!10644)))

(declare-fun b!58053 () Bool)

(assert (=> b!58053 (= e!30873 lt!10644)))

(declare-fun b!58054 () Bool)

(declare-fun e!30869 () Bool)

(declare-fun tp_is_empty!321 () Bool)

(declare-fun tp!16287 () Bool)

(assert (=> b!58054 (= e!30869 (and tp_is_empty!321 tp!16287))))

(declare-fun b!58055 () Bool)

(declare-fun dynLambda!929 (Int T!3704) List!465)

(assert (=> b!58055 (= e!30870 (dynLambda!929 f!3249 (h!677 list!286)))))

(declare-fun b!58056 () Bool)

(declare-fun dynLambda!930 (Int U!40) List!466)

(assert (=> b!58056 (= e!30875 (dynLambda!930 g!110 (h!678 flist!10)))))

(declare-fun c!12397 () Bool)

(assert (=> start!8176 (= c!12397 lt!10643)))

(assert (=> start!8176 (= lt!10644 e!30868)))

(declare-fun c!12391 () Bool)

(assert (=> start!8176 (= c!12391 (or lt!10643 (is-Cons!441 flist!10) (is-Cons!440 list!286)))))

(assert (=> start!8176 (= lt!10643 (is-Cons!442 glist!10))))

(declare-datatypes () ((ProofOps!326 (ProofOps!327 (prop!377 Bool)))))

(declare-fun because!1 (ProofOps!326 Bool) Bool)

(declare-fun associative_lemma!6 (List!464 Int Int) Bool)

(declare-fun append!158 (List!466 List!466) List!466)

(declare-fun flatMap!21 (List!465 Int) List!466)

(declare-fun append!159 (List!465 List!465) List!465)

(declare-fun flatMap!22 (List!464 Int) List!465)

(declare-fun flatMap!23 (List!464 Int) List!466)

(assert (=> start!8176 (not (because!1 (ProofOps!327 (associative_lemma!6 list!286 f!3249 g!110)) (because!1 (ProofOps!327 (= (append!158 glist!10 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) (append!158 (append!158 glist!10 (flatMap!21 flist!10 g!110)) (flatMap!23 list!286 lambda!9097)))) e!30872)))))

(assert (=> start!8176 e!30867))

(assert (=> start!8176 tp!16288))

(assert (=> start!8176 tp!16289))

(assert (=> start!8176 e!30869))

(assert (=> start!8176 e!30874))

(assert (= (and b!58046 c!12396) b!58043))

(assert (= (and b!58046 (not c!12396)) b!58055))

(assert (= (and b!58050 c!12393) b!58044))

(assert (= (and b!58050 (not c!12393)) b!58046))

(assert (= (and b!58042 c!12392) b!58056))

(assert (= (and b!58042 (not c!12392)) b!58049))

(assert (= (and b!58050 c!12395) b!58051))

(assert (= (and b!58050 (not c!12395)) b!58042))

(assert (= (and start!8176 c!12391) b!58050))

(assert (= (and start!8176 (not c!12391)) b!58041))

(assert (= (and b!58040 c!12394) b!58053))

(assert (= (and b!58040 (not c!12394)) b!58045))

(assert (= (and start!8176 c!12397) b!58052))

(assert (= (and start!8176 (not c!12397)) b!58040))

(assert (= (and start!8176 (is-Cons!442 glist!10)) b!58048))

(assert (= (and start!8176 (is-Cons!440 list!286)) b!58054))

(assert (= (and start!8176 (is-Cons!441 flist!10)) b!58047))

(declare-fun b_lambda!15457 () Bool)

(assert (=> (not b_lambda!15457) (not b!58055)))

(declare-fun t!47092 () Bool)

(declare-fun tb!46059 () Bool)

(assert (=> (and start!8176 (= f!3249 f!3249) t!47092) tb!46059))

(assert (=> b!58055 t!47092))

(declare-fun result!46439 () Bool)

(declare-fun b_and!58541 () Bool)

(assert (= b_and!58537 (and (=> t!47092 result!46439) b_and!58541)))

(declare-fun b_lambda!15459 () Bool)

(assert (=> (not b_lambda!15459) (not b!58056)))

(declare-fun t!47094 () Bool)

(declare-fun tb!46061 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47094) tb!46061))

(assert (=> b!58056 t!47094))

(declare-fun result!46441 () Bool)

(declare-fun b_and!58543 () Bool)

(assert (= b_and!58539 (and (=> t!47094 result!46441) b_and!58543)))

(declare-fun m!62584 () Bool)

(assert (=> b!58050 m!62584))

(declare-fun m!62586 () Bool)

(assert (=> b!58055 m!62586))

(declare-fun m!62588 () Bool)

(assert (=> b!58056 m!62588))

(declare-fun m!62590 () Bool)

(assert (=> start!8176 m!62590))

(declare-fun m!62592 () Bool)

(assert (=> start!8176 m!62592))

(declare-fun m!62594 () Bool)

(assert (=> start!8176 m!62594))

(assert (=> start!8176 m!62594))

(declare-fun m!62596 () Bool)

(assert (=> start!8176 m!62596))

(declare-fun m!62598 () Bool)

(assert (=> start!8176 m!62598))

(declare-fun m!62600 () Bool)

(assert (=> start!8176 m!62600))

(declare-fun m!62602 () Bool)

(assert (=> start!8176 m!62602))

(declare-fun m!62604 () Bool)

(assert (=> start!8176 m!62604))

(assert (=> start!8176 m!62598))

(declare-fun m!62606 () Bool)

(assert (=> start!8176 m!62606))

(assert (=> start!8176 m!62590))

(assert (=> start!8176 m!62592))

(assert (=> start!8176 m!62602))

(declare-fun m!62608 () Bool)

(assert (=> start!8176 m!62608))

(assert (=> start!8176 m!62606))

(assert (=> start!8176 m!62600))

(declare-fun m!62610 () Bool)

(assert (=> start!8176 m!62610))

(push 1)

(assert (not tb!46059))

(assert tp_is_empty!323)

(assert (not b_next!39053))

(assert (not b_next!39051))

(assert tp_is_empty!321)

(assert b_and!58541)

(assert (not b!58054))

(assert (not b_lambda!15457))

(assert (not b_lambda!15459))

(assert (not start!8176))

(assert (not b!58050))

(assert tp_is_empty!319)

(assert (not tb!46061))

(assert (not b!58047))

(assert (not b!58048))

(assert b_and!58543)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58541)

(assert b_and!58543)

(assert (not b_next!39051))

(assert (not b_next!39053))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15461 () Bool)

(assert (= b_lambda!15459 (or (and start!8176 b_free!7291) b_lambda!15461)))

(declare-fun b_lambda!15463 () Bool)

(assert (= b_lambda!15457 (or (and start!8176 b_free!7289) b_lambda!15463)))

(push 1)

(assert (not tb!46059))

(assert tp_is_empty!323)

(assert (not b_lambda!15463))

(assert (not b_next!39053))

(assert (not b_next!39051))

(assert tp_is_empty!321)

(assert b_and!58541)

(assert (not b!58054))

(assert (not b_lambda!15461))

(assert (not start!8176))

(assert (not b!58050))

(assert tp_is_empty!319)

(assert (not tb!46061))

(assert (not b!58047))

(assert (not b!58048))

(assert b_and!58543)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58541)

(assert b_and!58543)

(assert (not b_next!39051))

(assert (not b_next!39053))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!36320 () Bool)

(declare-fun d!50426 () Bool)

(assert (= bs!36320 (and d!50426 start!8176)))

(declare-fun lambda!9100 () Int)

(assert (=> bs!36320 (= lambda!9100 lambda!9097)))

(assert (=> d!50426 true))

(assert (=> d!50426 (< (dynLambda!926 order!449 f!3249) (dynLambda!927 order!451 lambda!9100))))

(assert (=> d!50426 true))

(assert (=> d!50426 (< (dynLambda!928 order!453 g!110) (dynLambda!927 order!451 lambda!9100))))

(declare-fun b!58089 () Bool)

(declare-fun e!30892 () List!465)

(assert (=> b!58089 (= e!30892 (dynLambda!929 f!3249 (h!677 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))))

(declare-fun b!58090 () Bool)

(declare-fun lt!10657 () Bool)

(declare-fun lt!10656 () Bool)

(declare-fun e!30894 () Bool)

(assert (=> b!58090 (= e!30894 (ite lt!10656 lt!10657 (or (not (is-Cons!440 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) lt!10657)))))

(declare-fun e!30896 () Bool)

(assert (=> b!58090 (= lt!10657 e!30896)))

(declare-fun c!12415 () Bool)

(assert (=> b!58090 (= c!12415 (or lt!10656 (is-Cons!440 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))))

(assert (=> b!58090 (= lt!10656 (is-Cons!441 e!30876))))

(declare-fun b!58091 () Bool)

(assert (=> b!58091 (= e!30892 (t!47096 e!30876))))

(assert (=> d!50426 (because!1 (ProofOps!327 (associative_lemma!6 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249 g!110)) (because!1 (ProofOps!327 (= (append!158 e!30871 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110)) (append!158 (append!158 e!30871 (flatMap!21 e!30876 g!110)) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100)))) e!30894))))

(declare-fun c!12416 () Bool)

(declare-fun lt!10654 () Bool)

(assert (=> d!50426 (= c!12416 lt!10654)))

(declare-fun lt!10655 () Bool)

(declare-fun e!30891 () Bool)

(assert (=> d!50426 (= lt!10655 e!30891)))

(declare-fun c!12413 () Bool)

(assert (=> d!50426 (= c!12413 (or lt!10654 (is-Cons!441 e!30876) (is-Cons!440 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))))

(assert (=> d!50426 (= lt!10654 (is-Cons!442 e!30871))))

(assert (=> d!50426 (= (associative_lemma_induct!5 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) e!30876 e!30871 f!3249 g!110) true)))

(declare-fun b!58092 () Bool)

(declare-fun e!30897 () List!466)

(assert (=> b!58092 (= e!30897 (dynLambda!930 g!110 (h!678 e!30876)))))

(declare-fun b!58093 () Bool)

(declare-fun e!30895 () List!465)

(assert (=> b!58093 (= e!30895 e!30892)))

(declare-fun c!12412 () Bool)

(assert (=> b!58093 (= c!12412 (is-Cons!441 e!30876))))

(declare-fun e!30893 () List!466)

(declare-fun b!58094 () Bool)

(assert (=> b!58094 (= e!30891 (associative_lemma_induct!5 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) e!30895 e!30893 f!3249 g!110))))

(declare-fun c!12418 () Bool)

(assert (=> b!58094 (= c!12418 lt!10654)))

(declare-fun c!12417 () Bool)

(assert (=> b!58094 (= c!12417 lt!10654)))

(declare-fun b!58095 () Bool)

(assert (=> b!58095 (= e!30893 e!30897)))

(declare-fun c!12414 () Bool)

(assert (=> b!58095 (= c!12414 (is-Cons!441 e!30876))))

(declare-fun b!58096 () Bool)

(assert (=> b!58096 (= e!30894 lt!10655)))

(declare-fun b!58097 () Bool)

(declare-fun res!26901 () Bool)

(assert (=> b!58097 (= e!30891 res!26901)))

(assert (=> b!58097 true))

(declare-fun b!58098 () Bool)

(assert (=> b!58098 (= e!30893 (t!47097 e!30871))))

(declare-fun b!58099 () Bool)

(assert (=> b!58099 (= e!30895 e!30876)))

(declare-fun b!58100 () Bool)

(declare-fun res!26900 () Bool)

(assert (=> b!58100 (= e!30896 res!26900)))

(assert (=> b!58100 true))

(assert (=> b!58100 true))

(declare-fun b!58101 () Bool)

(assert (=> b!58101 (= e!30897 Nil!443)))

(declare-fun b!58102 () Bool)

(assert (=> b!58102 (= e!30896 lt!10655)))

(assert (= (and b!58093 c!12412) b!58091))

(assert (= (and b!58093 (not c!12412)) b!58089))

(assert (= (and b!58094 c!12417) b!58099))

(assert (= (and b!58094 (not c!12417)) b!58093))

(assert (= (and b!58095 c!12414) b!58092))

(assert (= (and b!58095 (not c!12414)) b!58101))

(assert (= (and b!58094 c!12418) b!58098))

(assert (= (and b!58094 (not c!12418)) b!58095))

(assert (= (and d!50426 c!12413) b!58094))

(assert (= (and d!50426 (not c!12413)) b!58097))

(assert (= (and b!58090 c!12415) b!58102))

(assert (= (and b!58090 (not c!12415)) b!58100))

(assert (= (and d!50426 c!12416) b!58096))

(assert (= (and d!50426 (not c!12416)) b!58090))

(declare-fun b_lambda!15465 () Bool)

(assert (=> (not b_lambda!15465) (not b!58089)))

(declare-fun t!47099 () Bool)

(declare-fun tb!46063 () Bool)

(assert (=> (and start!8176 (= f!3249 f!3249) t!47099) tb!46063))

(assert (=> b!58089 t!47099))

(declare-fun result!46443 () Bool)

(declare-fun b_and!58545 () Bool)

(assert (= b_and!58541 (and (=> t!47099 result!46443) b_and!58545)))

(declare-fun b_lambda!15467 () Bool)

(assert (=> (not b_lambda!15467) (not b!58092)))

(declare-fun t!47101 () Bool)

(declare-fun tb!46065 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47101) tb!46065))

(assert (=> b!58092 t!47101))

(declare-fun result!46445 () Bool)

(declare-fun b_and!58547 () Bool)

(assert (= b_and!58543 (and (=> t!47101 result!46445) b_and!58547)))

(declare-fun m!62612 () Bool)

(assert (=> b!58089 m!62612))

(declare-fun m!62614 () Bool)

(assert (=> d!50426 m!62614))

(declare-fun m!62616 () Bool)

(assert (=> d!50426 m!62616))

(declare-fun m!62618 () Bool)

(assert (=> d!50426 m!62618))

(declare-fun m!62620 () Bool)

(assert (=> d!50426 m!62620))

(declare-fun m!62622 () Bool)

(assert (=> d!50426 m!62622))

(declare-fun m!62624 () Bool)

(assert (=> d!50426 m!62624))

(declare-fun m!62626 () Bool)

(assert (=> d!50426 m!62626))

(declare-fun m!62628 () Bool)

(assert (=> d!50426 m!62628))

(assert (=> d!50426 m!62614))

(declare-fun m!62630 () Bool)

(assert (=> d!50426 m!62630))

(assert (=> d!50426 m!62616))

(assert (=> d!50426 m!62630))

(declare-fun m!62632 () Bool)

(assert (=> d!50426 m!62632))

(declare-fun m!62634 () Bool)

(assert (=> d!50426 m!62634))

(assert (=> d!50426 m!62622))

(assert (=> d!50426 m!62626))

(assert (=> d!50426 m!62632))

(assert (=> d!50426 m!62620))

(declare-fun m!62636 () Bool)

(assert (=> b!58092 m!62636))

(declare-fun m!62638 () Bool)

(assert (=> b!58094 m!62638))

(assert (=> b!58050 d!50426))

(declare-fun d!50428 () Bool)

(declare-fun c!12421 () Bool)

(assert (=> d!50428 (= c!12421 (is-Cons!441 flist!10))))

(declare-fun e!30900 () List!466)

(assert (=> d!50428 (= (flatMap!21 flist!10 g!110) e!30900)))

(declare-fun b!58107 () Bool)

(assert (=> b!58107 (= e!30900 (append!158 (dynLambda!930 g!110 (h!678 flist!10)) (flatMap!21 (t!47096 flist!10) g!110)))))

(declare-fun b!58108 () Bool)

(assert (=> b!58108 (= e!30900 Nil!443)))

(assert (= (and d!50428 c!12421) b!58107))

(assert (= (and d!50428 (not c!12421)) b!58108))

(declare-fun b_lambda!15469 () Bool)

(assert (=> (not b_lambda!15469) (not b!58107)))

(assert (=> b!58107 t!47094))

(declare-fun b_and!58549 () Bool)

(assert (= b_and!58547 (and (=> t!47094 result!46441) b_and!58549)))

(assert (=> b!58107 m!62588))

(declare-fun m!62640 () Bool)

(assert (=> b!58107 m!62640))

(assert (=> b!58107 m!62588))

(assert (=> b!58107 m!62640))

(declare-fun m!62642 () Bool)

(assert (=> b!58107 m!62642))

(assert (=> start!8176 d!50428))

(declare-fun d!50430 () Bool)

(assert (=> d!50430 (= (because!1 (ProofOps!327 (associative_lemma!6 list!286 f!3249 g!110)) (because!1 (ProofOps!327 (= (append!158 glist!10 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) (append!158 (append!158 glist!10 (flatMap!21 flist!10 g!110)) (flatMap!23 list!286 lambda!9097)))) e!30872)) (and (because!1 (ProofOps!327 (= (append!158 glist!10 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) (append!158 (append!158 glist!10 (flatMap!21 flist!10 g!110)) (flatMap!23 list!286 lambda!9097)))) e!30872) (prop!377 (ProofOps!327 (associative_lemma!6 list!286 f!3249 g!110)))))))

(assert (=> start!8176 d!50430))

(declare-fun bs!36321 () Bool)

(declare-fun d!50432 () Bool)

(assert (= bs!36321 (and d!50432 start!8176)))

(declare-fun lambda!9103 () Int)

(assert (=> bs!36321 (= lambda!9103 lambda!9097)))

(declare-fun bs!36322 () Bool)

(assert (= bs!36322 (and d!50432 d!50426)))

(assert (=> bs!36322 (= lambda!9103 lambda!9100)))

(assert (=> d!50432 true))

(assert (=> d!50432 (< (dynLambda!926 order!449 f!3249) (dynLambda!927 order!451 lambda!9103))))

(assert (=> d!50432 true))

(assert (=> d!50432 (< (dynLambda!928 order!453 g!110) (dynLambda!927 order!451 lambda!9103))))

(assert (=> d!50432 (= (associative_lemma!6 list!286 f!3249 g!110) (= (flatMap!21 (flatMap!22 list!286 f!3249) g!110) (flatMap!23 list!286 lambda!9103)))))

(declare-fun bs!36323 () Bool)

(assert (= bs!36323 d!50432))

(assert (=> bs!36323 m!62590))

(assert (=> bs!36323 m!62590))

(declare-fun m!62644 () Bool)

(assert (=> bs!36323 m!62644))

(declare-fun m!62646 () Bool)

(assert (=> bs!36323 m!62646))

(assert (=> start!8176 d!50432))

(declare-fun d!50434 () Bool)

(declare-fun lt!10660 () List!466)

(assert (=> d!50434 (or (= lt!10660 glist!10) (not (= (flatMap!21 flist!10 g!110) Nil!443)))))

(declare-fun e!30903 () List!466)

(assert (=> d!50434 (= lt!10660 e!30903)))

(declare-fun c!12424 () Bool)

(assert (=> d!50434 (= c!12424 (is-Cons!442 glist!10))))

(assert (=> d!50434 (= (append!158 glist!10 (flatMap!21 flist!10 g!110)) lt!10660)))

(declare-fun b!58113 () Bool)

(assert (=> b!58113 (= e!30903 (Cons!442 (h!679 glist!10) (append!158 (t!47097 glist!10) (flatMap!21 flist!10 g!110))))))

(declare-fun b!58114 () Bool)

(assert (=> b!58114 (= e!30903 (flatMap!21 flist!10 g!110))))

(assert (= (and d!50434 c!12424) b!58113))

(assert (= (and d!50434 (not c!12424)) b!58114))

(assert (=> b!58113 m!62598))

(declare-fun m!62648 () Bool)

(assert (=> b!58113 m!62648))

(assert (=> start!8176 d!50434))

(declare-fun d!50436 () Bool)

(declare-fun lt!10663 () List!465)

(assert (=> d!50436 (or (= lt!10663 flist!10) (not (= (flatMap!22 list!286 f!3249) Nil!442)))))

(declare-fun e!30906 () List!465)

(assert (=> d!50436 (= lt!10663 e!30906)))

(declare-fun c!12427 () Bool)

(assert (=> d!50436 (= c!12427 (is-Cons!441 flist!10))))

(assert (=> d!50436 (= (append!159 flist!10 (flatMap!22 list!286 f!3249)) lt!10663)))

(declare-fun b!58119 () Bool)

(assert (=> b!58119 (= e!30906 (Cons!441 (h!678 flist!10) (append!159 (t!47096 flist!10) (flatMap!22 list!286 f!3249))))))

(declare-fun b!58120 () Bool)

(assert (=> b!58120 (= e!30906 (flatMap!22 list!286 f!3249))))

(assert (= (and d!50436 c!12427) b!58119))

(assert (= (and d!50436 (not c!12427)) b!58120))

(assert (=> b!58119 m!62590))

(declare-fun m!62650 () Bool)

(assert (=> b!58119 m!62650))

(assert (=> start!8176 d!50436))

(declare-fun c!12428 () Bool)

(declare-fun d!50438 () Bool)

(assert (=> d!50438 (= c!12428 (is-Cons!441 (append!159 flist!10 (flatMap!22 list!286 f!3249))))))

(declare-fun e!30907 () List!466)

(assert (=> d!50438 (= (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110) e!30907)))

(declare-fun b!58121 () Bool)

(assert (=> b!58121 (= e!30907 (append!158 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249)))) (flatMap!21 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))) g!110)))))

(declare-fun b!58122 () Bool)

(assert (=> b!58122 (= e!30907 Nil!443)))

(assert (= (and d!50438 c!12428) b!58121))

(assert (= (and d!50438 (not c!12428)) b!58122))

(declare-fun b_lambda!15471 () Bool)

(assert (=> (not b_lambda!15471) (not b!58121)))

(declare-fun t!47103 () Bool)

(declare-fun tb!46067 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47103) tb!46067))

(assert (=> b!58121 t!47103))

(declare-fun result!46447 () Bool)

(declare-fun b_and!58551 () Bool)

(assert (= b_and!58549 (and (=> t!47103 result!46447) b_and!58551)))

(declare-fun m!62652 () Bool)

(assert (=> b!58121 m!62652))

(declare-fun m!62654 () Bool)

(assert (=> b!58121 m!62654))

(assert (=> b!58121 m!62652))

(assert (=> b!58121 m!62654))

(declare-fun m!62656 () Bool)

(assert (=> b!58121 m!62656))

(assert (=> start!8176 d!50438))

(declare-fun d!50440 () Bool)

(declare-fun c!12431 () Bool)

(assert (=> d!50440 (= c!12431 (is-Cons!440 list!286))))

(declare-fun e!30910 () List!466)

(assert (=> d!50440 (= (flatMap!23 list!286 lambda!9097) e!30910)))

(declare-fun b!58127 () Bool)

(declare-fun dynLambda!931 (Int T!3704) List!466)

(assert (=> b!58127 (= e!30910 (append!158 (dynLambda!931 lambda!9097 (h!677 list!286)) (flatMap!23 (t!47095 list!286) lambda!9097)))))

(declare-fun b!58128 () Bool)

(assert (=> b!58128 (= e!30910 Nil!443)))

(assert (= (and d!50440 c!12431) b!58127))

(assert (= (and d!50440 (not c!12431)) b!58128))

(declare-fun b_lambda!15473 () Bool)

(assert (=> (not b_lambda!15473) (not b!58127)))

(declare-fun m!62658 () Bool)

(assert (=> b!58127 m!62658))

(declare-fun m!62660 () Bool)

(assert (=> b!58127 m!62660))

(assert (=> b!58127 m!62658))

(assert (=> b!58127 m!62660))

(declare-fun m!62662 () Bool)

(assert (=> b!58127 m!62662))

(assert (=> start!8176 d!50440))

(declare-fun lt!10664 () List!466)

(declare-fun d!50442 () Bool)

(assert (=> d!50442 (or (= lt!10664 glist!10) (not (= (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110) Nil!443)))))

(declare-fun e!30911 () List!466)

(assert (=> d!50442 (= lt!10664 e!30911)))

(declare-fun c!12432 () Bool)

(assert (=> d!50442 (= c!12432 (is-Cons!442 glist!10))))

(assert (=> d!50442 (= (append!158 glist!10 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) lt!10664)))

(declare-fun b!58129 () Bool)

(assert (=> b!58129 (= e!30911 (Cons!442 (h!679 glist!10) (append!158 (t!47097 glist!10) (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110))))))

(declare-fun b!58130 () Bool)

(assert (=> b!58130 (= e!30911 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110))))

(assert (= (and d!50442 c!12432) b!58129))

(assert (= (and d!50442 (not c!12432)) b!58130))

(assert (=> b!58129 m!62602))

(declare-fun m!62664 () Bool)

(assert (=> b!58129 m!62664))

(assert (=> start!8176 d!50442))

(declare-fun lt!10665 () List!466)

(declare-fun d!50444 () Bool)

(assert (=> d!50444 (or (= lt!10665 (append!158 glist!10 (flatMap!21 flist!10 g!110))) (not (= (flatMap!23 list!286 lambda!9097) Nil!443)))))

(declare-fun e!30912 () List!466)

(assert (=> d!50444 (= lt!10665 e!30912)))

(declare-fun c!12433 () Bool)

(assert (=> d!50444 (= c!12433 (is-Cons!442 (append!158 glist!10 (flatMap!21 flist!10 g!110))))))

(assert (=> d!50444 (= (append!158 (append!158 glist!10 (flatMap!21 flist!10 g!110)) (flatMap!23 list!286 lambda!9097)) lt!10665)))

(declare-fun b!58131 () Bool)

(assert (=> b!58131 (= e!30912 (Cons!442 (h!679 (append!158 glist!10 (flatMap!21 flist!10 g!110))) (append!158 (t!47097 (append!158 glist!10 (flatMap!21 flist!10 g!110))) (flatMap!23 list!286 lambda!9097))))))

(declare-fun b!58132 () Bool)

(assert (=> b!58132 (= e!30912 (flatMap!23 list!286 lambda!9097))))

(assert (= (and d!50444 c!12433) b!58131))

(assert (= (and d!50444 (not c!12433)) b!58132))

(assert (=> b!58131 m!62600))

(declare-fun m!62666 () Bool)

(assert (=> b!58131 m!62666))

(assert (=> start!8176 d!50444))

(declare-fun d!50446 () Bool)

(assert (=> d!50446 (= (because!1 (ProofOps!327 (= (append!158 glist!10 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) (append!158 (append!158 glist!10 (flatMap!21 flist!10 g!110)) (flatMap!23 list!286 lambda!9097)))) e!30872) (and e!30872 (prop!377 (ProofOps!327 (= (append!158 glist!10 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) (append!158 (append!158 glist!10 (flatMap!21 flist!10 g!110)) (flatMap!23 list!286 lambda!9097)))))))))

(assert (=> start!8176 d!50446))

(declare-fun d!50448 () Bool)

(declare-fun c!12436 () Bool)

(assert (=> d!50448 (= c!12436 (is-Cons!440 list!286))))

(declare-fun e!30915 () List!465)

(assert (=> d!50448 (= (flatMap!22 list!286 f!3249) e!30915)))

(declare-fun b!58137 () Bool)

(assert (=> b!58137 (= e!30915 (append!159 (dynLambda!929 f!3249 (h!677 list!286)) (flatMap!22 (t!47095 list!286) f!3249)))))

(declare-fun b!58138 () Bool)

(assert (=> b!58138 (= e!30915 Nil!442)))

(assert (= (and d!50448 c!12436) b!58137))

(assert (= (and d!50448 (not c!12436)) b!58138))

(declare-fun b_lambda!15475 () Bool)

(assert (=> (not b_lambda!15475) (not b!58137)))

(assert (=> b!58137 t!47092))

(declare-fun b_and!58553 () Bool)

(assert (= b_and!58545 (and (=> t!47092 result!46439) b_and!58553)))

(assert (=> b!58137 m!62586))

(declare-fun m!62668 () Bool)

(assert (=> b!58137 m!62668))

(assert (=> b!58137 m!62586))

(assert (=> b!58137 m!62668))

(declare-fun m!62670 () Bool)

(assert (=> b!58137 m!62670))

(assert (=> start!8176 d!50448))

(declare-fun b!58143 () Bool)

(declare-fun e!30918 () Bool)

(declare-fun tp!16294 () Bool)

(assert (=> b!58143 (= e!30918 (and tp_is_empty!319 tp!16294))))

(assert (=> tb!46061 (= result!46441 e!30918)))

(assert (= (and tb!46061 (is-Cons!442 (dynLambda!930 g!110 (h!678 flist!10)))) b!58143))

(declare-fun b!58148 () Bool)

(declare-fun e!30921 () Bool)

(declare-fun tp!16297 () Bool)

(assert (=> b!58148 (= e!30921 (and tp_is_empty!323 tp!16297))))

(assert (=> tb!46059 (= result!46439 e!30921)))

(assert (= (and tb!46059 (is-Cons!441 (dynLambda!929 f!3249 (h!677 list!286)))) b!58148))

(declare-fun b!58149 () Bool)

(declare-fun e!30922 () Bool)

(declare-fun tp!16298 () Bool)

(assert (=> b!58149 (= e!30922 (and tp_is_empty!319 tp!16298))))

(assert (=> b!58048 (= tp!16291 e!30922)))

(assert (= (and b!58048 (is-Cons!442 (t!47097 glist!10))) b!58149))

(declare-fun b!58150 () Bool)

(declare-fun e!30923 () Bool)

(declare-fun tp!16299 () Bool)

(assert (=> b!58150 (= e!30923 (and tp_is_empty!323 tp!16299))))

(assert (=> b!58047 (= tp!16290 e!30923)))

(assert (= (and b!58047 (is-Cons!441 (t!47096 flist!10))) b!58150))

(declare-fun b!58155 () Bool)

(declare-fun e!30926 () Bool)

(declare-fun tp!16302 () Bool)

(assert (=> b!58155 (= e!30926 (and tp_is_empty!321 tp!16302))))

(assert (=> b!58054 (= tp!16287 e!30926)))

(assert (= (and b!58054 (is-Cons!440 (t!47095 list!286))) b!58155))

(declare-fun b_lambda!15477 () Bool)

(assert (= b_lambda!15469 (or (and start!8176 b_free!7291) b_lambda!15477)))

(declare-fun b_lambda!15479 () Bool)

(assert (= b_lambda!15473 (or start!8176 b_lambda!15479)))

(declare-fun bs!36324 () Bool)

(declare-fun d!50450 () Bool)

(assert (= bs!36324 (and d!50450 start!8176)))

(assert (=> bs!36324 (= (dynLambda!931 lambda!9097 (h!677 list!286)) (flatMap!21 (dynLambda!929 f!3249 (h!677 list!286)) g!110))))

(declare-fun b_lambda!15489 () Bool)

(assert (=> (not b_lambda!15489) (not bs!36324)))

(assert (=> bs!36324 t!47092))

(declare-fun b_and!58555 () Bool)

(assert (= b_and!58553 (and (=> t!47092 result!46439) b_and!58555)))

(assert (=> bs!36324 m!62586))

(assert (=> bs!36324 m!62586))

(declare-fun m!62672 () Bool)

(assert (=> bs!36324 m!62672))

(assert (=> b!58127 d!50450))

(declare-fun b_lambda!15481 () Bool)

(assert (= b_lambda!15465 (or (and start!8176 b_free!7289) b_lambda!15481)))

(declare-fun b_lambda!15483 () Bool)

(assert (= b_lambda!15475 (or (and start!8176 b_free!7289) b_lambda!15483)))

(declare-fun b_lambda!15485 () Bool)

(assert (= b_lambda!15471 (or (and start!8176 b_free!7291) b_lambda!15485)))

(declare-fun b_lambda!15487 () Bool)

(assert (= b_lambda!15467 (or (and start!8176 b_free!7291) b_lambda!15487)))

(push 1)

(assert (not b_lambda!15485))

(assert tp_is_empty!323)

(assert (not b_lambda!15463))

(assert b_and!58555)

(assert (not b!58129))

(assert (not b!58107))

(assert (not b!58121))

(assert (not b_next!39053))

(assert (not b_next!39051))

(assert (not tb!46067))

(assert tp_is_empty!321)

(assert (not b_lambda!15483))

(assert (not b_lambda!15481))

(assert (not b!58143))

(assert (not b!58094))

(assert (not tb!46065))

(assert (not b!58148))

(assert (not b_lambda!15479))

(assert (not d!50426))

(assert (not b!58119))

(assert (not b_lambda!15461))

(assert b_and!58551)

(assert (not b!58155))

(assert (not b_lambda!15487))

(assert (not tb!46063))

(assert (not bs!36324))

(assert (not b!58137))

(assert tp_is_empty!319)

(assert (not b!58149))

(assert (not b_lambda!15489))

(assert (not b!58150))

(assert (not b!58113))

(assert (not d!50432))

(assert (not b!58127))

(assert (not b!58131))

(assert (not b_lambda!15477))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58555)

(assert b_and!58551)

(assert (not b_next!39051))

(assert (not b_next!39053))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15491 () Bool)

(assert (= b_lambda!15489 (or (and start!8176 b_free!7289) b_lambda!15491)))

(push 1)

(assert (not b_lambda!15485))

(assert tp_is_empty!323)

(assert (not b_lambda!15463))

(assert b_and!58555)

(assert (not b_lambda!15491))

(assert (not b!58129))

(assert (not b!58107))

(assert (not b!58121))

(assert (not b_next!39053))

(assert (not b_next!39051))

(assert (not tb!46067))

(assert tp_is_empty!321)

(assert (not b_lambda!15483))

(assert (not b_lambda!15481))

(assert (not b!58143))

(assert (not b!58094))

(assert (not tb!46065))

(assert (not b!58148))

(assert (not b_lambda!15479))

(assert (not d!50426))

(assert (not b!58119))

(assert (not b_lambda!15461))

(assert b_and!58551)

(assert (not b!58155))

(assert (not b_lambda!15487))

(assert (not tb!46063))

(assert (not bs!36324))

(assert (not b!58137))

(assert tp_is_empty!319)

(assert (not b!58149))

(assert (not b!58150))

(assert (not b!58113))

(assert (not d!50432))

(assert (not b!58127))

(assert (not b!58131))

(assert (not b_lambda!15477))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58555)

(assert b_and!58551)

(assert (not b_next!39051))

(assert (not b_next!39053))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50452 () Bool)

(declare-fun lt!10666 () List!466)

(assert (=> d!50452 (or (= lt!10666 (t!47097 glist!10)) (not (= (flatMap!21 flist!10 g!110) Nil!443)))))

(declare-fun e!30927 () List!466)

(assert (=> d!50452 (= lt!10666 e!30927)))

(declare-fun c!12437 () Bool)

(assert (=> d!50452 (= c!12437 (is-Cons!442 (t!47097 glist!10)))))

(assert (=> d!50452 (= (append!158 (t!47097 glist!10) (flatMap!21 flist!10 g!110)) lt!10666)))

(declare-fun b!58156 () Bool)

(assert (=> b!58156 (= e!30927 (Cons!442 (h!679 (t!47097 glist!10)) (append!158 (t!47097 (t!47097 glist!10)) (flatMap!21 flist!10 g!110))))))

(declare-fun b!58157 () Bool)

(assert (=> b!58157 (= e!30927 (flatMap!21 flist!10 g!110))))

(assert (= (and d!50452 c!12437) b!58156))

(assert (= (and d!50452 (not c!12437)) b!58157))

(assert (=> b!58156 m!62598))

(declare-fun m!62674 () Bool)

(assert (=> b!58156 m!62674))

(assert (=> b!58113 d!50452))

(declare-fun d!50454 () Bool)

(declare-fun lt!10667 () List!466)

(assert (=> d!50454 (or (= lt!10667 (t!47097 glist!10)) (not (= (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110) Nil!443)))))

(declare-fun e!30928 () List!466)

(assert (=> d!50454 (= lt!10667 e!30928)))

(declare-fun c!12438 () Bool)

(assert (=> d!50454 (= c!12438 (is-Cons!442 (t!47097 glist!10)))))

(assert (=> d!50454 (= (append!158 (t!47097 glist!10) (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110)) lt!10667)))

(declare-fun b!58158 () Bool)

(assert (=> b!58158 (= e!30928 (Cons!442 (h!679 (t!47097 glist!10)) (append!158 (t!47097 (t!47097 glist!10)) (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110))))))

(declare-fun b!58159 () Bool)

(assert (=> b!58159 (= e!30928 (flatMap!21 (append!159 flist!10 (flatMap!22 list!286 f!3249)) g!110))))

(assert (= (and d!50454 c!12438) b!58158))

(assert (= (and d!50454 (not c!12438)) b!58159))

(assert (=> b!58158 m!62602))

(declare-fun m!62676 () Bool)

(assert (=> b!58158 m!62676))

(assert (=> b!58129 d!50454))

(declare-fun d!50456 () Bool)

(declare-fun c!12439 () Bool)

(assert (=> d!50456 (= c!12439 (is-Cons!441 (flatMap!22 list!286 f!3249)))))

(declare-fun e!30929 () List!466)

(assert (=> d!50456 (= (flatMap!21 (flatMap!22 list!286 f!3249) g!110) e!30929)))

(declare-fun b!58160 () Bool)

(assert (=> b!58160 (= e!30929 (append!158 (dynLambda!930 g!110 (h!678 (flatMap!22 list!286 f!3249))) (flatMap!21 (t!47096 (flatMap!22 list!286 f!3249)) g!110)))))

(declare-fun b!58161 () Bool)

(assert (=> b!58161 (= e!30929 Nil!443)))

(assert (= (and d!50456 c!12439) b!58160))

(assert (= (and d!50456 (not c!12439)) b!58161))

(declare-fun b_lambda!15493 () Bool)

(assert (=> (not b_lambda!15493) (not b!58160)))

(declare-fun t!47105 () Bool)

(declare-fun tb!46069 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47105) tb!46069))

(assert (=> b!58160 t!47105))

(declare-fun result!46455 () Bool)

(declare-fun b_and!58557 () Bool)

(assert (= b_and!58551 (and (=> t!47105 result!46455) b_and!58557)))

(declare-fun m!62678 () Bool)

(assert (=> b!58160 m!62678))

(declare-fun m!62680 () Bool)

(assert (=> b!58160 m!62680))

(assert (=> b!58160 m!62678))

(assert (=> b!58160 m!62680))

(declare-fun m!62682 () Bool)

(assert (=> b!58160 m!62682))

(assert (=> d!50432 d!50456))

(assert (=> d!50432 d!50448))

(declare-fun d!50458 () Bool)

(declare-fun c!12440 () Bool)

(assert (=> d!50458 (= c!12440 (is-Cons!440 list!286))))

(declare-fun e!30930 () List!466)

(assert (=> d!50458 (= (flatMap!23 list!286 lambda!9103) e!30930)))

(declare-fun b!58162 () Bool)

(assert (=> b!58162 (= e!30930 (append!158 (dynLambda!931 lambda!9103 (h!677 list!286)) (flatMap!23 (t!47095 list!286) lambda!9103)))))

(declare-fun b!58163 () Bool)

(assert (=> b!58163 (= e!30930 Nil!443)))

(assert (= (and d!50458 c!12440) b!58162))

(assert (= (and d!50458 (not c!12440)) b!58163))

(declare-fun b_lambda!15495 () Bool)

(assert (=> (not b_lambda!15495) (not b!58162)))

(declare-fun m!62684 () Bool)

(assert (=> b!58162 m!62684))

(declare-fun m!62686 () Bool)

(assert (=> b!58162 m!62686))

(assert (=> b!58162 m!62684))

(assert (=> b!58162 m!62686))

(declare-fun m!62688 () Bool)

(assert (=> b!58162 m!62688))

(assert (=> d!50432 d!50458))

(declare-fun d!50460 () Bool)

(declare-fun lt!10668 () List!465)

(assert (=> d!50460 (or (= lt!10668 (dynLambda!929 f!3249 (h!677 list!286))) (not (= (flatMap!22 (t!47095 list!286) f!3249) Nil!442)))))

(declare-fun e!30931 () List!465)

(assert (=> d!50460 (= lt!10668 e!30931)))

(declare-fun c!12441 () Bool)

(assert (=> d!50460 (= c!12441 (is-Cons!441 (dynLambda!929 f!3249 (h!677 list!286))))))

(assert (=> d!50460 (= (append!159 (dynLambda!929 f!3249 (h!677 list!286)) (flatMap!22 (t!47095 list!286) f!3249)) lt!10668)))

(declare-fun b!58164 () Bool)

(assert (=> b!58164 (= e!30931 (Cons!441 (h!678 (dynLambda!929 f!3249 (h!677 list!286))) (append!159 (t!47096 (dynLambda!929 f!3249 (h!677 list!286))) (flatMap!22 (t!47095 list!286) f!3249))))))

(declare-fun b!58165 () Bool)

(assert (=> b!58165 (= e!30931 (flatMap!22 (t!47095 list!286) f!3249))))

(assert (= (and d!50460 c!12441) b!58164))

(assert (= (and d!50460 (not c!12441)) b!58165))

(assert (=> b!58164 m!62668))

(declare-fun m!62690 () Bool)

(assert (=> b!58164 m!62690))

(assert (=> b!58137 d!50460))

(declare-fun d!50462 () Bool)

(declare-fun c!12442 () Bool)

(assert (=> d!50462 (= c!12442 (is-Cons!440 (t!47095 list!286)))))

(declare-fun e!30932 () List!465)

(assert (=> d!50462 (= (flatMap!22 (t!47095 list!286) f!3249) e!30932)))

(declare-fun b!58166 () Bool)

(assert (=> b!58166 (= e!30932 (append!159 (dynLambda!929 f!3249 (h!677 (t!47095 list!286))) (flatMap!22 (t!47095 (t!47095 list!286)) f!3249)))))

(declare-fun b!58167 () Bool)

(assert (=> b!58167 (= e!30932 Nil!442)))

(assert (= (and d!50462 c!12442) b!58166))

(assert (= (and d!50462 (not c!12442)) b!58167))

(declare-fun b_lambda!15497 () Bool)

(assert (=> (not b_lambda!15497) (not b!58166)))

(declare-fun t!47107 () Bool)

(declare-fun tb!46071 () Bool)

(assert (=> (and start!8176 (= f!3249 f!3249) t!47107) tb!46071))

(assert (=> b!58166 t!47107))

(declare-fun result!46457 () Bool)

(declare-fun b_and!58559 () Bool)

(assert (= b_and!58555 (and (=> t!47107 result!46457) b_and!58559)))

(declare-fun m!62692 () Bool)

(assert (=> b!58166 m!62692))

(declare-fun m!62694 () Bool)

(assert (=> b!58166 m!62694))

(assert (=> b!58166 m!62692))

(assert (=> b!58166 m!62694))

(declare-fun m!62696 () Bool)

(assert (=> b!58166 m!62696))

(assert (=> b!58137 d!50462))

(declare-fun lt!10669 () List!466)

(declare-fun d!50464 () Bool)

(assert (=> d!50464 (or (= lt!10669 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249))))) (not (= (flatMap!21 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))) g!110) Nil!443)))))

(declare-fun e!30933 () List!466)

(assert (=> d!50464 (= lt!10669 e!30933)))

(declare-fun c!12443 () Bool)

(assert (=> d!50464 (= c!12443 (is-Cons!442 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249))))))))

(assert (=> d!50464 (= (append!158 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249)))) (flatMap!21 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))) g!110)) lt!10669)))

(declare-fun b!58168 () Bool)

(assert (=> b!58168 (= e!30933 (Cons!442 (h!679 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249))))) (append!158 (t!47097 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249))))) (flatMap!21 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))) g!110))))))

(declare-fun b!58169 () Bool)

(assert (=> b!58169 (= e!30933 (flatMap!21 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))) g!110))))

(assert (= (and d!50464 c!12443) b!58168))

(assert (= (and d!50464 (not c!12443)) b!58169))

(assert (=> b!58168 m!62654))

(declare-fun m!62698 () Bool)

(assert (=> b!58168 m!62698))

(assert (=> b!58121 d!50464))

(declare-fun c!12444 () Bool)

(declare-fun d!50466 () Bool)

(assert (=> d!50466 (= c!12444 (is-Cons!441 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249)))))))

(declare-fun e!30934 () List!466)

(assert (=> d!50466 (= (flatMap!21 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))) g!110) e!30934)))

(declare-fun b!58170 () Bool)

(assert (=> b!58170 (= e!30934 (append!158 (dynLambda!930 g!110 (h!678 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249))))) (flatMap!21 (t!47096 (t!47096 (append!159 flist!10 (flatMap!22 list!286 f!3249)))) g!110)))))

(declare-fun b!58171 () Bool)

(assert (=> b!58171 (= e!30934 Nil!443)))

(assert (= (and d!50466 c!12444) b!58170))

(assert (= (and d!50466 (not c!12444)) b!58171))

(declare-fun b_lambda!15499 () Bool)

(assert (=> (not b_lambda!15499) (not b!58170)))

(declare-fun t!47109 () Bool)

(declare-fun tb!46073 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47109) tb!46073))

(assert (=> b!58170 t!47109))

(declare-fun result!46459 () Bool)

(declare-fun b_and!58561 () Bool)

(assert (= b_and!58557 (and (=> t!47109 result!46459) b_and!58561)))

(declare-fun m!62700 () Bool)

(assert (=> b!58170 m!62700))

(declare-fun m!62702 () Bool)

(assert (=> b!58170 m!62702))

(assert (=> b!58170 m!62700))

(assert (=> b!58170 m!62702))

(declare-fun m!62704 () Bool)

(assert (=> b!58170 m!62704))

(assert (=> b!58121 d!50466))

(declare-fun lt!10670 () List!466)

(declare-fun d!50468 () Bool)

(assert (=> d!50468 (or (= lt!10670 (t!47097 (append!158 glist!10 (flatMap!21 flist!10 g!110)))) (not (= (flatMap!23 list!286 lambda!9097) Nil!443)))))

(declare-fun e!30935 () List!466)

(assert (=> d!50468 (= lt!10670 e!30935)))

(declare-fun c!12445 () Bool)

(assert (=> d!50468 (= c!12445 (is-Cons!442 (t!47097 (append!158 glist!10 (flatMap!21 flist!10 g!110)))))))

(assert (=> d!50468 (= (append!158 (t!47097 (append!158 glist!10 (flatMap!21 flist!10 g!110))) (flatMap!23 list!286 lambda!9097)) lt!10670)))

(declare-fun b!58172 () Bool)

(assert (=> b!58172 (= e!30935 (Cons!442 (h!679 (t!47097 (append!158 glist!10 (flatMap!21 flist!10 g!110)))) (append!158 (t!47097 (t!47097 (append!158 glist!10 (flatMap!21 flist!10 g!110)))) (flatMap!23 list!286 lambda!9097))))))

(declare-fun b!58173 () Bool)

(assert (=> b!58173 (= e!30935 (flatMap!23 list!286 lambda!9097))))

(assert (= (and d!50468 c!12445) b!58172))

(assert (= (and d!50468 (not c!12445)) b!58173))

(assert (=> b!58172 m!62600))

(declare-fun m!62706 () Bool)

(assert (=> b!58172 m!62706))

(assert (=> b!58131 d!50468))

(declare-fun d!50470 () Bool)

(declare-fun c!12446 () Bool)

(assert (=> d!50470 (= c!12446 (is-Cons!441 (dynLambda!929 f!3249 (h!677 list!286))))))

(declare-fun e!30936 () List!466)

(assert (=> d!50470 (= (flatMap!21 (dynLambda!929 f!3249 (h!677 list!286)) g!110) e!30936)))

(declare-fun b!58174 () Bool)

(assert (=> b!58174 (= e!30936 (append!158 (dynLambda!930 g!110 (h!678 (dynLambda!929 f!3249 (h!677 list!286)))) (flatMap!21 (t!47096 (dynLambda!929 f!3249 (h!677 list!286))) g!110)))))

(declare-fun b!58175 () Bool)

(assert (=> b!58175 (= e!30936 Nil!443)))

(assert (= (and d!50470 c!12446) b!58174))

(assert (= (and d!50470 (not c!12446)) b!58175))

(declare-fun b_lambda!15501 () Bool)

(assert (=> (not b_lambda!15501) (not b!58174)))

(declare-fun t!47111 () Bool)

(declare-fun tb!46075 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47111) tb!46075))

(assert (=> b!58174 t!47111))

(declare-fun result!46461 () Bool)

(declare-fun b_and!58563 () Bool)

(assert (= b_and!58561 (and (=> t!47111 result!46461) b_and!58563)))

(declare-fun m!62708 () Bool)

(assert (=> b!58174 m!62708))

(declare-fun m!62710 () Bool)

(assert (=> b!58174 m!62710))

(assert (=> b!58174 m!62708))

(assert (=> b!58174 m!62710))

(declare-fun m!62712 () Bool)

(assert (=> b!58174 m!62712))

(assert (=> bs!36324 d!50470))

(declare-fun lt!10671 () List!465)

(declare-fun d!50472 () Bool)

(assert (=> d!50472 (or (= lt!10671 (t!47096 flist!10)) (not (= (flatMap!22 list!286 f!3249) Nil!442)))))

(declare-fun e!30937 () List!465)

(assert (=> d!50472 (= lt!10671 e!30937)))

(declare-fun c!12447 () Bool)

(assert (=> d!50472 (= c!12447 (is-Cons!441 (t!47096 flist!10)))))

(assert (=> d!50472 (= (append!159 (t!47096 flist!10) (flatMap!22 list!286 f!3249)) lt!10671)))

(declare-fun b!58176 () Bool)

(assert (=> b!58176 (= e!30937 (Cons!441 (h!678 (t!47096 flist!10)) (append!159 (t!47096 (t!47096 flist!10)) (flatMap!22 list!286 f!3249))))))

(declare-fun b!58177 () Bool)

(assert (=> b!58177 (= e!30937 (flatMap!22 list!286 f!3249))))

(assert (= (and d!50472 c!12447) b!58176))

(assert (= (and d!50472 (not c!12447)) b!58177))

(assert (=> b!58176 m!62590))

(declare-fun m!62714 () Bool)

(assert (=> b!58176 m!62714))

(assert (=> b!58119 d!50472))

(declare-fun d!50474 () Bool)

(declare-fun lt!10672 () List!466)

(assert (=> d!50474 (or (= lt!10672 (dynLambda!930 g!110 (h!678 flist!10))) (not (= (flatMap!21 (t!47096 flist!10) g!110) Nil!443)))))

(declare-fun e!30938 () List!466)

(assert (=> d!50474 (= lt!10672 e!30938)))

(declare-fun c!12448 () Bool)

(assert (=> d!50474 (= c!12448 (is-Cons!442 (dynLambda!930 g!110 (h!678 flist!10))))))

(assert (=> d!50474 (= (append!158 (dynLambda!930 g!110 (h!678 flist!10)) (flatMap!21 (t!47096 flist!10) g!110)) lt!10672)))

(declare-fun b!58178 () Bool)

(assert (=> b!58178 (= e!30938 (Cons!442 (h!679 (dynLambda!930 g!110 (h!678 flist!10))) (append!158 (t!47097 (dynLambda!930 g!110 (h!678 flist!10))) (flatMap!21 (t!47096 flist!10) g!110))))))

(declare-fun b!58179 () Bool)

(assert (=> b!58179 (= e!30938 (flatMap!21 (t!47096 flist!10) g!110))))

(assert (= (and d!50474 c!12448) b!58178))

(assert (= (and d!50474 (not c!12448)) b!58179))

(assert (=> b!58178 m!62640))

(declare-fun m!62716 () Bool)

(assert (=> b!58178 m!62716))

(assert (=> b!58107 d!50474))

(declare-fun d!50476 () Bool)

(declare-fun c!12449 () Bool)

(assert (=> d!50476 (= c!12449 (is-Cons!441 (t!47096 flist!10)))))

(declare-fun e!30939 () List!466)

(assert (=> d!50476 (= (flatMap!21 (t!47096 flist!10) g!110) e!30939)))

(declare-fun b!58180 () Bool)

(assert (=> b!58180 (= e!30939 (append!158 (dynLambda!930 g!110 (h!678 (t!47096 flist!10))) (flatMap!21 (t!47096 (t!47096 flist!10)) g!110)))))

(declare-fun b!58181 () Bool)

(assert (=> b!58181 (= e!30939 Nil!443)))

(assert (= (and d!50476 c!12449) b!58180))

(assert (= (and d!50476 (not c!12449)) b!58181))

(declare-fun b_lambda!15503 () Bool)

(assert (=> (not b_lambda!15503) (not b!58180)))

(declare-fun t!47113 () Bool)

(declare-fun tb!46077 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47113) tb!46077))

(assert (=> b!58180 t!47113))

(declare-fun result!46463 () Bool)

(declare-fun b_and!58565 () Bool)

(assert (= b_and!58563 (and (=> t!47113 result!46463) b_and!58565)))

(declare-fun m!62718 () Bool)

(assert (=> b!58180 m!62718))

(declare-fun m!62720 () Bool)

(assert (=> b!58180 m!62720))

(assert (=> b!58180 m!62718))

(assert (=> b!58180 m!62720))

(declare-fun m!62722 () Bool)

(assert (=> b!58180 m!62722))

(assert (=> b!58107 d!50476))

(declare-fun d!50478 () Bool)

(declare-fun lt!10673 () List!466)

(assert (=> d!50478 (or (= lt!10673 (dynLambda!931 lambda!9097 (h!677 list!286))) (not (= (flatMap!23 (t!47095 list!286) lambda!9097) Nil!443)))))

(declare-fun e!30940 () List!466)

(assert (=> d!50478 (= lt!10673 e!30940)))

(declare-fun c!12450 () Bool)

(assert (=> d!50478 (= c!12450 (is-Cons!442 (dynLambda!931 lambda!9097 (h!677 list!286))))))

(assert (=> d!50478 (= (append!158 (dynLambda!931 lambda!9097 (h!677 list!286)) (flatMap!23 (t!47095 list!286) lambda!9097)) lt!10673)))

(declare-fun b!58182 () Bool)

(assert (=> b!58182 (= e!30940 (Cons!442 (h!679 (dynLambda!931 lambda!9097 (h!677 list!286))) (append!158 (t!47097 (dynLambda!931 lambda!9097 (h!677 list!286))) (flatMap!23 (t!47095 list!286) lambda!9097))))))

(declare-fun b!58183 () Bool)

(assert (=> b!58183 (= e!30940 (flatMap!23 (t!47095 list!286) lambda!9097))))

(assert (= (and d!50478 c!12450) b!58182))

(assert (= (and d!50478 (not c!12450)) b!58183))

(assert (=> b!58182 m!62660))

(declare-fun m!62724 () Bool)

(assert (=> b!58182 m!62724))

(assert (=> b!58127 d!50478))

(declare-fun d!50480 () Bool)

(declare-fun c!12451 () Bool)

(assert (=> d!50480 (= c!12451 (is-Cons!440 (t!47095 list!286)))))

(declare-fun e!30941 () List!466)

(assert (=> d!50480 (= (flatMap!23 (t!47095 list!286) lambda!9097) e!30941)))

(declare-fun b!58184 () Bool)

(assert (=> b!58184 (= e!30941 (append!158 (dynLambda!931 lambda!9097 (h!677 (t!47095 list!286))) (flatMap!23 (t!47095 (t!47095 list!286)) lambda!9097)))))

(declare-fun b!58185 () Bool)

(assert (=> b!58185 (= e!30941 Nil!443)))

(assert (= (and d!50480 c!12451) b!58184))

(assert (= (and d!50480 (not c!12451)) b!58185))

(declare-fun b_lambda!15505 () Bool)

(assert (=> (not b_lambda!15505) (not b!58184)))

(declare-fun m!62726 () Bool)

(assert (=> b!58184 m!62726))

(declare-fun m!62728 () Bool)

(assert (=> b!58184 m!62728))

(assert (=> b!58184 m!62726))

(assert (=> b!58184 m!62728))

(declare-fun m!62730 () Bool)

(assert (=> b!58184 m!62730))

(assert (=> b!58127 d!50480))

(declare-fun bs!36325 () Bool)

(declare-fun d!50482 () Bool)

(assert (= bs!36325 (and d!50482 start!8176)))

(declare-fun lambda!9104 () Int)

(assert (=> bs!36325 (= lambda!9104 lambda!9097)))

(declare-fun bs!36326 () Bool)

(assert (= bs!36326 (and d!50482 d!50426)))

(assert (=> bs!36326 (= lambda!9104 lambda!9100)))

(declare-fun bs!36327 () Bool)

(assert (= bs!36327 (and d!50482 d!50432)))

(assert (=> bs!36327 (= lambda!9104 lambda!9103)))

(assert (=> d!50482 true))

(assert (=> d!50482 (< (dynLambda!926 order!449 f!3249) (dynLambda!927 order!451 lambda!9104))))

(assert (=> d!50482 true))

(assert (=> d!50482 (< (dynLambda!928 order!453 g!110) (dynLambda!927 order!451 lambda!9104))))

(declare-fun b!58186 () Bool)

(declare-fun e!30943 () List!465)

(assert (=> b!58186 (= e!30943 (dynLambda!929 f!3249 (h!677 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))))))

(declare-fun lt!10677 () Bool)

(declare-fun lt!10676 () Bool)

(declare-fun e!30945 () Bool)

(declare-fun b!58187 () Bool)

(assert (=> b!58187 (= e!30945 (ite lt!10676 lt!10677 (or (not (is-Cons!440 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))) lt!10677)))))

(declare-fun e!30947 () Bool)

(assert (=> b!58187 (= lt!10677 e!30947)))

(declare-fun c!12455 () Bool)

(assert (=> b!58187 (= c!12455 (or lt!10676 (is-Cons!440 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))))))

(assert (=> b!58187 (= lt!10676 (is-Cons!441 e!30895))))

(declare-fun b!58188 () Bool)

(assert (=> b!58188 (= e!30943 (t!47096 e!30895))))

(assert (=> d!50482 (because!1 (ProofOps!327 (associative_lemma!6 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) f!3249 g!110)) (because!1 (ProofOps!327 (= (append!158 e!30893 (flatMap!21 (append!159 e!30895 (flatMap!22 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) f!3249)) g!110)) (append!158 (append!158 e!30893 (flatMap!21 e!30895 g!110)) (flatMap!23 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) lambda!9104)))) e!30945))))

(declare-fun c!12456 () Bool)

(declare-fun lt!10674 () Bool)

(assert (=> d!50482 (= c!12456 lt!10674)))

(declare-fun lt!10675 () Bool)

(declare-fun e!30942 () Bool)

(assert (=> d!50482 (= lt!10675 e!30942)))

(declare-fun c!12453 () Bool)

(assert (=> d!50482 (= c!12453 (or lt!10674 (is-Cons!441 e!30895) (is-Cons!440 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))))))

(assert (=> d!50482 (= lt!10674 (is-Cons!442 e!30893))))

(assert (=> d!50482 (= (associative_lemma_induct!5 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) e!30895 e!30893 f!3249 g!110) true)))

(declare-fun b!58189 () Bool)

(declare-fun e!30948 () List!466)

(assert (=> b!58189 (= e!30948 (dynLambda!930 g!110 (h!678 e!30895)))))

(declare-fun b!58190 () Bool)

(declare-fun e!30946 () List!465)

(assert (=> b!58190 (= e!30946 e!30943)))

(declare-fun c!12452 () Bool)

(assert (=> b!58190 (= c!12452 (is-Cons!441 e!30895))))

(declare-fun e!30944 () List!466)

(declare-fun b!58191 () Bool)

(assert (=> b!58191 (= e!30942 (associative_lemma_induct!5 (ite (or lt!10674 (is-Cons!441 e!30895)) (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) (t!47095 (ite (or lt!10654 (is-Cons!441 e!30876)) (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))) e!30946 e!30944 f!3249 g!110))))

(declare-fun c!12458 () Bool)

(assert (=> b!58191 (= c!12458 lt!10674)))

(declare-fun c!12457 () Bool)

(assert (=> b!58191 (= c!12457 lt!10674)))

(declare-fun b!58192 () Bool)

(assert (=> b!58192 (= e!30944 e!30948)))

(declare-fun c!12454 () Bool)

(assert (=> b!58192 (= c!12454 (is-Cons!441 e!30895))))

(declare-fun b!58193 () Bool)

(assert (=> b!58193 (= e!30945 lt!10675)))

(declare-fun b!58194 () Bool)

(declare-fun res!26905 () Bool)

(assert (=> b!58194 (= e!30942 res!26905)))

(assert (=> b!58194 true))

(declare-fun b!58195 () Bool)

(assert (=> b!58195 (= e!30944 (t!47097 e!30893))))

(declare-fun b!58196 () Bool)

(assert (=> b!58196 (= e!30946 e!30895)))

(declare-fun b!58197 () Bool)

(declare-fun res!26904 () Bool)

(assert (=> b!58197 (= e!30947 res!26904)))

(assert (=> b!58197 true))

(assert (=> b!58197 true))

(declare-fun b!58198 () Bool)

(assert (=> b!58198 (= e!30948 Nil!443)))

(declare-fun b!58199 () Bool)

(assert (=> b!58199 (= e!30947 lt!10675)))

(assert (= (and b!58190 c!12452) b!58188))

(assert (= (and b!58190 (not c!12452)) b!58186))

(assert (= (and b!58191 c!12457) b!58196))

(assert (= (and b!58191 (not c!12457)) b!58190))

(assert (= (and b!58192 c!12454) b!58189))

(assert (= (and b!58192 (not c!12454)) b!58198))

(assert (= (and b!58191 c!12458) b!58195))

(assert (= (and b!58191 (not c!12458)) b!58192))

(assert (= (and d!50482 c!12453) b!58191))

(assert (= (and d!50482 (not c!12453)) b!58194))

(assert (= (and b!58187 c!12455) b!58199))

(assert (= (and b!58187 (not c!12455)) b!58197))

(assert (= (and d!50482 c!12456) b!58193))

(assert (= (and d!50482 (not c!12456)) b!58187))

(declare-fun b_lambda!15507 () Bool)

(assert (=> (not b_lambda!15507) (not b!58186)))

(declare-fun t!47115 () Bool)

(declare-fun tb!46079 () Bool)

(assert (=> (and start!8176 (= f!3249 f!3249) t!47115) tb!46079))

(assert (=> b!58186 t!47115))

(declare-fun result!46465 () Bool)

(declare-fun b_and!58567 () Bool)

(assert (= b_and!58559 (and (=> t!47115 result!46465) b_and!58567)))

(declare-fun b_lambda!15509 () Bool)

(assert (=> (not b_lambda!15509) (not b!58189)))

(declare-fun t!47117 () Bool)

(declare-fun tb!46081 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47117) tb!46081))

(assert (=> b!58189 t!47117))

(declare-fun result!46467 () Bool)

(declare-fun b_and!58569 () Bool)

(assert (= b_and!58565 (and (=> t!47117 result!46467) b_and!58569)))

(declare-fun m!62732 () Bool)

(assert (=> b!58186 m!62732))

(declare-fun m!62734 () Bool)

(assert (=> d!50482 m!62734))

(declare-fun m!62736 () Bool)

(assert (=> d!50482 m!62736))

(declare-fun m!62738 () Bool)

(assert (=> d!50482 m!62738))

(declare-fun m!62740 () Bool)

(assert (=> d!50482 m!62740))

(declare-fun m!62742 () Bool)

(assert (=> d!50482 m!62742))

(declare-fun m!62744 () Bool)

(assert (=> d!50482 m!62744))

(declare-fun m!62746 () Bool)

(assert (=> d!50482 m!62746))

(declare-fun m!62748 () Bool)

(assert (=> d!50482 m!62748))

(assert (=> d!50482 m!62734))

(declare-fun m!62750 () Bool)

(assert (=> d!50482 m!62750))

(assert (=> d!50482 m!62736))

(assert (=> d!50482 m!62750))

(declare-fun m!62752 () Bool)

(assert (=> d!50482 m!62752))

(declare-fun m!62754 () Bool)

(assert (=> d!50482 m!62754))

(assert (=> d!50482 m!62742))

(assert (=> d!50482 m!62746))

(assert (=> d!50482 m!62752))

(assert (=> d!50482 m!62740))

(declare-fun m!62756 () Bool)

(assert (=> b!58189 m!62756))

(declare-fun m!62758 () Bool)

(assert (=> b!58191 m!62758))

(assert (=> b!58094 d!50482))

(declare-fun lt!10678 () List!466)

(declare-fun d!50484 () Bool)

(assert (=> d!50484 (or (= lt!10678 (append!158 e!30871 (flatMap!21 e!30876 g!110))) (not (= (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100) Nil!443)))))

(declare-fun e!30949 () List!466)

(assert (=> d!50484 (= lt!10678 e!30949)))

(declare-fun c!12459 () Bool)

(assert (=> d!50484 (= c!12459 (is-Cons!442 (append!158 e!30871 (flatMap!21 e!30876 g!110))))))

(assert (=> d!50484 (= (append!158 (append!158 e!30871 (flatMap!21 e!30876 g!110)) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100)) lt!10678)))

(declare-fun b!58200 () Bool)

(assert (=> b!58200 (= e!30949 (Cons!442 (h!679 (append!158 e!30871 (flatMap!21 e!30876 g!110))) (append!158 (t!47097 (append!158 e!30871 (flatMap!21 e!30876 g!110))) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100))))))

(declare-fun b!58201 () Bool)

(assert (=> b!58201 (= e!30949 (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100))))

(assert (= (and d!50484 c!12459) b!58200))

(assert (= (and d!50484 (not c!12459)) b!58201))

(assert (=> b!58200 m!62632))

(declare-fun m!62760 () Bool)

(assert (=> b!58200 m!62760))

(assert (=> d!50426 d!50484))

(declare-fun d!50486 () Bool)

(assert (=> d!50486 (= (because!1 (ProofOps!327 (= (append!158 e!30871 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110)) (append!158 (append!158 e!30871 (flatMap!21 e!30876 g!110)) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100)))) e!30894) (and e!30894 (prop!377 (ProofOps!327 (= (append!158 e!30871 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110)) (append!158 (append!158 e!30871 (flatMap!21 e!30876 g!110)) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100)))))))))

(assert (=> d!50426 d!50486))

(declare-fun lt!10679 () List!465)

(declare-fun d!50488 () Bool)

(assert (=> d!50488 (or (= lt!10679 e!30876) (not (= (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249) Nil!442)))))

(declare-fun e!30950 () List!465)

(assert (=> d!50488 (= lt!10679 e!30950)))

(declare-fun c!12460 () Bool)

(assert (=> d!50488 (= c!12460 (is-Cons!441 e!30876))))

(assert (=> d!50488 (= (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) lt!10679)))

(declare-fun b!58202 () Bool)

(assert (=> b!58202 (= e!30950 (Cons!441 (h!678 e!30876) (append!159 (t!47096 e!30876) (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249))))))

(declare-fun b!58203 () Bool)

(assert (=> b!58203 (= e!30950 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249))))

(assert (= (and d!50488 c!12460) b!58202))

(assert (= (and d!50488 (not c!12460)) b!58203))

(assert (=> b!58202 m!62620))

(declare-fun m!62762 () Bool)

(assert (=> b!58202 m!62762))

(assert (=> d!50426 d!50488))

(declare-fun lt!10680 () List!466)

(declare-fun d!50490 () Bool)

(assert (=> d!50490 (or (= lt!10680 e!30871) (not (= (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110) Nil!443)))))

(declare-fun e!30951 () List!466)

(assert (=> d!50490 (= lt!10680 e!30951)))

(declare-fun c!12461 () Bool)

(assert (=> d!50490 (= c!12461 (is-Cons!442 e!30871))))

(assert (=> d!50490 (= (append!158 e!30871 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110)) lt!10680)))

(declare-fun b!58204 () Bool)

(assert (=> b!58204 (= e!30951 (Cons!442 (h!679 e!30871) (append!158 (t!47097 e!30871) (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110))))))

(declare-fun b!58205 () Bool)

(assert (=> b!58205 (= e!30951 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110))))

(assert (= (and d!50490 c!12461) b!58204))

(assert (= (and d!50490 (not c!12461)) b!58205))

(assert (=> b!58204 m!62626))

(declare-fun m!62764 () Bool)

(assert (=> b!58204 m!62764))

(assert (=> d!50426 d!50490))

(declare-fun c!12462 () Bool)

(declare-fun d!50492 () Bool)

(assert (=> d!50492 (= c!12462 (is-Cons!441 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249))))))

(declare-fun e!30952 () List!466)

(assert (=> d!50492 (= (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110) e!30952)))

(declare-fun b!58206 () Bool)

(assert (=> b!58206 (= e!30952 (append!158 (dynLambda!930 g!110 (h!678 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)))) (flatMap!21 (t!47096 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249))) g!110)))))

(declare-fun b!58207 () Bool)

(assert (=> b!58207 (= e!30952 Nil!443)))

(assert (= (and d!50492 c!12462) b!58206))

(assert (= (and d!50492 (not c!12462)) b!58207))

(declare-fun b_lambda!15511 () Bool)

(assert (=> (not b_lambda!15511) (not b!58206)))

(declare-fun t!47119 () Bool)

(declare-fun tb!46083 () Bool)

(assert (=> (and start!8176 (= g!110 g!110) t!47119) tb!46083))

(assert (=> b!58206 t!47119))

(declare-fun result!46469 () Bool)

(declare-fun b_and!58571 () Bool)

(assert (= b_and!58569 (and (=> t!47119 result!46469) b_and!58571)))

(declare-fun m!62766 () Bool)

(assert (=> b!58206 m!62766))

(declare-fun m!62768 () Bool)

(assert (=> b!58206 m!62768))

(assert (=> b!58206 m!62766))

(assert (=> b!58206 m!62768))

(declare-fun m!62770 () Bool)

(assert (=> b!58206 m!62770))

(assert (=> d!50426 d!50492))

(declare-fun c!12463 () Bool)

(declare-fun d!50494 () Bool)

(assert (=> d!50494 (= c!12463 (is-Cons!440 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286))))))

(declare-fun e!30953 () List!465)

(assert (=> d!50494 (= (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249) e!30953)))

(declare-fun b!58208 () Bool)

(assert (=> b!58208 (= e!30953 (append!159 (dynLambda!929 f!3249 (h!677 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) (flatMap!22 (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286))) f!3249)))))

(declare-fun b!58209 () Bool)

(assert (=> b!58209 (= e!30953 Nil!442)))

(assert (= (and d!50494 c!12463) b!58208))

(assert (= (and d!50494 (not c!12463)) b!58209))

(declare-fun b_lambda!15513 () Bool)

(assert (=> (not b_lambda!15513) (not b!58208)))

(assert (=> b!58208 t!47099))

(declare-fun b_and!58573 () Bool)

(assert (= b_and!58567 (and (=> t!47099 result!46443) b_and!58573)))

(assert (=> b!58208 m!62612))

(declare-fun m!62772 () Bool)

(assert (=> b!58208 m!62772))

(assert (=> b!58208 m!62612))

(assert (=> b!58208 m!62772))

(declare-fun m!62774 () Bool)

(assert (=> b!58208 m!62774))

(assert (=> d!50426 d!50494))

(declare-fun bs!36328 () Bool)

(declare-fun d!50496 () Bool)

(assert (= bs!36328 (and d!50496 start!8176)))

(declare-fun lambda!9105 () Int)

(assert (=> bs!36328 (= lambda!9105 lambda!9097)))

(declare-fun bs!36329 () Bool)

(assert (= bs!36329 (and d!50496 d!50426)))

(assert (=> bs!36329 (= lambda!9105 lambda!9100)))

(declare-fun bs!36330 () Bool)

(assert (= bs!36330 (and d!50496 d!50432)))

(assert (=> bs!36330 (= lambda!9105 lambda!9103)))

(declare-fun bs!36331 () Bool)

(assert (= bs!36331 (and d!50496 d!50482)))

(assert (=> bs!36331 (= lambda!9105 lambda!9104)))

(assert (=> d!50496 true))

(assert (=> d!50496 (< (dynLambda!926 order!449 f!3249) (dynLambda!927 order!451 lambda!9105))))

(assert (=> d!50496 true))

(assert (=> d!50496 (< (dynLambda!928 order!453 g!110) (dynLambda!927 order!451 lambda!9105))))

(assert (=> d!50496 (= (associative_lemma!6 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249 g!110) (= (flatMap!21 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249) g!110) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9105)))))

(declare-fun bs!36332 () Bool)

(assert (= bs!36332 d!50496))

(assert (=> bs!36332 m!62620))

(assert (=> bs!36332 m!62620))

(declare-fun m!62776 () Bool)

(assert (=> bs!36332 m!62776))

(declare-fun m!62778 () Bool)

(assert (=> bs!36332 m!62778))

(assert (=> d!50426 d!50496))

(declare-fun d!50498 () Bool)

(assert (=> d!50498 (= (because!1 (ProofOps!327 (associative_lemma!6 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249 g!110)) (because!1 (ProofOps!327 (= (append!158 e!30871 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110)) (append!158 (append!158 e!30871 (flatMap!21 e!30876 g!110)) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100)))) e!30894)) (and (because!1 (ProofOps!327 (= (append!158 e!30871 (flatMap!21 (append!159 e!30876 (flatMap!22 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249)) g!110)) (append!158 (append!158 e!30871 (flatMap!21 e!30876 g!110)) (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100)))) e!30894) (prop!377 (ProofOps!327 (associative_lemma!6 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) f!3249 g!110)))))))

(assert (=> d!50426 d!50498))

(declare-fun d!50500 () Bool)

(declare-fun c!12464 () Bool)

(assert (=> d!50500 (= c!12464 (is-Cons!441 e!30876))))

(declare-fun e!30954 () List!466)

(assert (=> d!50500 (= (flatMap!21 e!30876 g!110) e!30954)))

(declare-fun b!58210 () Bool)

(assert (=> b!58210 (= e!30954 (append!158 (dynLambda!930 g!110 (h!678 e!30876)) (flatMap!21 (t!47096 e!30876) g!110)))))

(declare-fun b!58211 () Bool)

(assert (=> b!58211 (= e!30954 Nil!443)))

(assert (= (and d!50500 c!12464) b!58210))

(assert (= (and d!50500 (not c!12464)) b!58211))

(declare-fun b_lambda!15515 () Bool)

(assert (=> (not b_lambda!15515) (not b!58210)))

(assert (=> b!58210 t!47101))

(declare-fun b_and!58575 () Bool)

(assert (= b_and!58571 (and (=> t!47101 result!46445) b_and!58575)))

(assert (=> b!58210 m!62636))

(declare-fun m!62780 () Bool)

(assert (=> b!58210 m!62780))

(assert (=> b!58210 m!62636))

(assert (=> b!58210 m!62780))

(declare-fun m!62782 () Bool)

(assert (=> b!58210 m!62782))

(assert (=> d!50426 d!50500))

(declare-fun d!50502 () Bool)

(declare-fun lt!10681 () List!466)

(assert (=> d!50502 (or (= lt!10681 e!30871) (not (= (flatMap!21 e!30876 g!110) Nil!443)))))

(declare-fun e!30955 () List!466)

(assert (=> d!50502 (= lt!10681 e!30955)))

(declare-fun c!12465 () Bool)

(assert (=> d!50502 (= c!12465 (is-Cons!442 e!30871))))

(assert (=> d!50502 (= (append!158 e!30871 (flatMap!21 e!30876 g!110)) lt!10681)))

(declare-fun b!58212 () Bool)

(assert (=> b!58212 (= e!30955 (Cons!442 (h!679 e!30871) (append!158 (t!47097 e!30871) (flatMap!21 e!30876 g!110))))))

(declare-fun b!58213 () Bool)

(assert (=> b!58213 (= e!30955 (flatMap!21 e!30876 g!110))))

(assert (= (and d!50502 c!12465) b!58212))

(assert (= (and d!50502 (not c!12465)) b!58213))

(assert (=> b!58212 m!62614))

(declare-fun m!62784 () Bool)

(assert (=> b!58212 m!62784))

(assert (=> d!50426 d!50502))

(declare-fun c!12466 () Bool)

(declare-fun d!50504 () Bool)

(assert (=> d!50504 (= c!12466 (is-Cons!440 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286))))))

(declare-fun e!30956 () List!466)

(assert (=> d!50504 (= (flatMap!23 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)) lambda!9100) e!30956)))

(declare-fun b!58214 () Bool)

(assert (=> b!58214 (= e!30956 (append!158 (dynLambda!931 lambda!9100 (h!677 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) (flatMap!23 (t!47095 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286))) lambda!9100)))))

(declare-fun b!58215 () Bool)

(assert (=> b!58215 (= e!30956 Nil!443)))

(assert (= (and d!50504 c!12466) b!58214))

(assert (= (and d!50504 (not c!12466)) b!58215))

(declare-fun b_lambda!15517 () Bool)

(assert (=> (not b_lambda!15517) (not b!58214)))

(declare-fun m!62786 () Bool)

(assert (=> b!58214 m!62786))

(declare-fun m!62788 () Bool)

(assert (=> b!58214 m!62788))

(assert (=> b!58214 m!62786))

(assert (=> b!58214 m!62788))

(declare-fun m!62790 () Bool)

(assert (=> b!58214 m!62790))

(assert (=> d!50426 d!50504))

(declare-fun b!58216 () Bool)

(declare-fun e!30957 () Bool)

(declare-fun tp!16303 () Bool)

(assert (=> b!58216 (= e!30957 (and tp_is_empty!319 tp!16303))))

(assert (=> tb!46065 (= result!46445 e!30957)))

(assert (= (and tb!46065 (is-Cons!442 (dynLambda!930 g!110 (h!678 e!30876)))) b!58216))

(declare-fun b!58217 () Bool)

(declare-fun e!30958 () Bool)

(declare-fun tp!16304 () Bool)

(assert (=> b!58217 (= e!30958 (and tp_is_empty!323 tp!16304))))

(assert (=> b!58150 (= tp!16299 e!30958)))

(assert (= (and b!58150 (is-Cons!441 (t!47096 (t!47096 flist!10)))) b!58217))

(declare-fun b!58218 () Bool)

(declare-fun e!30959 () Bool)

(declare-fun tp!16305 () Bool)

(assert (=> b!58218 (= e!30959 (and tp_is_empty!319 tp!16305))))

(assert (=> b!58149 (= tp!16298 e!30959)))

(assert (= (and b!58149 (is-Cons!442 (t!47097 (t!47097 glist!10)))) b!58218))

(declare-fun b!58219 () Bool)

(declare-fun e!30960 () Bool)

(declare-fun tp!16306 () Bool)

(assert (=> b!58219 (= e!30960 (and tp_is_empty!323 tp!16306))))

(assert (=> b!58148 (= tp!16297 e!30960)))

(assert (= (and b!58148 (is-Cons!441 (t!47096 (dynLambda!929 f!3249 (h!677 list!286))))) b!58219))

(declare-fun b!58220 () Bool)

(declare-fun e!30961 () Bool)

(declare-fun tp!16307 () Bool)

(assert (=> b!58220 (= e!30961 (and tp_is_empty!319 tp!16307))))

(assert (=> tb!46067 (= result!46447 e!30961)))

(assert (= (and tb!46067 (is-Cons!442 (dynLambda!930 g!110 (h!678 (append!159 flist!10 (flatMap!22 list!286 f!3249)))))) b!58220))

(declare-fun b!58221 () Bool)

(declare-fun e!30962 () Bool)

(declare-fun tp!16308 () Bool)

(assert (=> b!58221 (= e!30962 (and tp_is_empty!323 tp!16308))))

(assert (=> tb!46063 (= result!46443 e!30962)))

(assert (= (and tb!46063 (is-Cons!441 (dynLambda!929 f!3249 (h!677 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))))) b!58221))

(declare-fun b!58222 () Bool)

(declare-fun e!30963 () Bool)

(declare-fun tp!16309 () Bool)

(assert (=> b!58222 (= e!30963 (and tp_is_empty!321 tp!16309))))

(assert (=> b!58155 (= tp!16302 e!30963)))

(assert (= (and b!58155 (is-Cons!440 (t!47095 (t!47095 list!286)))) b!58222))

(declare-fun b!58223 () Bool)

(declare-fun e!30964 () Bool)

(declare-fun tp!16310 () Bool)

(assert (=> b!58223 (= e!30964 (and tp_is_empty!319 tp!16310))))

(assert (=> b!58143 (= tp!16294 e!30964)))

(assert (= (and b!58143 (is-Cons!442 (t!47097 (dynLambda!930 g!110 (h!678 flist!10))))) b!58223))

(declare-fun b_lambda!15519 () Bool)

(assert (= b_lambda!15495 (or d!50432 b_lambda!15519)))

(declare-fun bs!36333 () Bool)

(declare-fun d!50506 () Bool)

(assert (= bs!36333 (and d!50506 d!50432)))

(assert (=> bs!36333 (= (dynLambda!931 lambda!9103 (h!677 list!286)) (flatMap!21 (dynLambda!929 f!3249 (h!677 list!286)) g!110))))

(declare-fun b_lambda!15545 () Bool)

(assert (=> (not b_lambda!15545) (not bs!36333)))

(assert (=> bs!36333 t!47092))

(declare-fun b_and!58577 () Bool)

(assert (= b_and!58573 (and (=> t!47092 result!46439) b_and!58577)))

(assert (=> bs!36333 m!62586))

(assert (=> bs!36333 m!62586))

(assert (=> bs!36333 m!62672))

(assert (=> b!58162 d!50506))

(declare-fun b_lambda!15521 () Bool)

(assert (= b_lambda!15497 (or (and start!8176 b_free!7289) b_lambda!15521)))

(declare-fun b_lambda!15523 () Bool)

(assert (= b_lambda!15505 (or start!8176 b_lambda!15523)))

(declare-fun bs!36334 () Bool)

(declare-fun d!50508 () Bool)

(assert (= bs!36334 (and d!50508 start!8176)))

(assert (=> bs!36334 (= (dynLambda!931 lambda!9097 (h!677 (t!47095 list!286))) (flatMap!21 (dynLambda!929 f!3249 (h!677 (t!47095 list!286))) g!110))))

(declare-fun b_lambda!15547 () Bool)

(assert (=> (not b_lambda!15547) (not bs!36334)))

(assert (=> bs!36334 t!47107))

(declare-fun b_and!58579 () Bool)

(assert (= b_and!58577 (and (=> t!47107 result!46457) b_and!58579)))

(assert (=> bs!36334 m!62692))

(assert (=> bs!36334 m!62692))

(declare-fun m!62792 () Bool)

(assert (=> bs!36334 m!62792))

(assert (=> b!58184 d!50508))

(declare-fun b_lambda!15525 () Bool)

(assert (= b_lambda!15513 (or (and start!8176 b_free!7289) b_lambda!15525)))

(declare-fun b_lambda!15527 () Bool)

(assert (= b_lambda!15511 (or (and start!8176 b_free!7291) b_lambda!15527)))

(declare-fun b_lambda!15529 () Bool)

(assert (= b_lambda!15503 (or (and start!8176 b_free!7291) b_lambda!15529)))

(declare-fun b_lambda!15531 () Bool)

(assert (= b_lambda!15501 (or (and start!8176 b_free!7291) b_lambda!15531)))

(declare-fun b_lambda!15533 () Bool)

(assert (= b_lambda!15507 (or (and start!8176 b_free!7289) b_lambda!15533)))

(declare-fun b_lambda!15535 () Bool)

(assert (= b_lambda!15509 (or (and start!8176 b_free!7291) b_lambda!15535)))

(declare-fun b_lambda!15537 () Bool)

(assert (= b_lambda!15515 (or (and start!8176 b_free!7291) b_lambda!15537)))

(declare-fun b_lambda!15539 () Bool)

(assert (= b_lambda!15499 (or (and start!8176 b_free!7291) b_lambda!15539)))

(declare-fun b_lambda!15541 () Bool)

(assert (= b_lambda!15517 (or d!50426 b_lambda!15541)))

(declare-fun bs!36335 () Bool)

(declare-fun d!50510 () Bool)

(assert (= bs!36335 (and d!50510 d!50426)))

(assert (=> bs!36335 (= (dynLambda!931 lambda!9100 (h!677 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) (flatMap!21 (dynLambda!929 f!3249 (h!677 (ite (or lt!10643 (is-Cons!441 flist!10)) list!286 (t!47095 list!286)))) g!110))))

(declare-fun b_lambda!15549 () Bool)

(assert (=> (not b_lambda!15549) (not bs!36335)))

(assert (=> bs!36335 t!47099))

(declare-fun b_and!58581 () Bool)

(assert (= b_and!58579 (and (=> t!47099 result!46443) b_and!58581)))

(assert (=> bs!36335 m!62612))

(assert (=> bs!36335 m!62612))

(declare-fun m!62794 () Bool)

(assert (=> bs!36335 m!62794))

(assert (=> b!58214 d!50510))

(declare-fun b_lambda!15543 () Bool)

(assert (= b_lambda!15493 (or (and start!8176 b_free!7291) b_lambda!15543)))

(push 1)

(assert (not b!58221))

(assert (not b_lambda!15529))

(assert (not b_lambda!15545))

(assert (not b_lambda!15485))

(assert (not b!58156))

(assert tp_is_empty!323)

(assert (not b!58223))

(assert (not b!58216))

(assert (not b_lambda!15463))

(assert (not b!58166))

(assert (not tb!46079))

(assert (not b!58222))

(assert (not b!58176))

(assert (not tb!46081))

(assert (not b_lambda!15491))

(assert (not b!58160))

(assert (not b_next!39053))

(assert (not b!58204))

(assert (not bs!36334))

(assert (not b!58208))

(assert (not b_next!39051))

(assert (not b!58168))

(assert (not tb!46077))

(assert (not b!58162))

(assert (not b_lambda!15547))

(assert tp_is_empty!321)

(assert (not b_lambda!15539))

(assert (not b_lambda!15533))

(assert (not b!58191))

(assert (not b!58206))

(assert (not b_lambda!15483))

(assert (not tb!46071))

(assert (not b_lambda!15481))

(assert (not bs!36335))

(assert (not b!58219))

(assert (not d!50496))

(assert (not b_lambda!15523))

(assert (not b!58174))

(assert (not b_lambda!15525))

(assert (not tb!46069))

(assert (not b_lambda!15479))

(assert (not d!50482))

(assert (not b_lambda!15537))

(assert (not b!58214))

(assert b_and!58581)

(assert (not b!58200))

(assert (not b_lambda!15461))

(assert (not b_lambda!15535))

(assert (not b!58158))

(assert (not b!58210))

(assert (not tb!46083))

(assert (not b!58178))

(assert (not b_lambda!15487))

(assert (not bs!36333))

(assert b_and!58575)

(assert (not b_lambda!15541))

(assert (not b!58218))

(assert (not b_lambda!15549))

(assert tp_is_empty!319)

(assert (not b!58182))

(assert (not b_lambda!15527))

(assert (not b!58184))

(assert (not b!58217))

(assert (not b!58220))

(assert (not b!58180))

(assert (not b!58164))

(assert (not b!58170))

(assert (not tb!46075))

(assert (not tb!46073))

(assert (not b!58212))

(assert (not b_lambda!15519))

(assert (not b!58172))

(assert (not b!58202))

(assert (not b_lambda!15543))

(assert (not b_lambda!15477))

(assert (not b_lambda!15531))

(assert (not b_lambda!15521))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58581)

(assert b_and!58575)

(assert (not b_next!39051))

(assert (not b_next!39053))

(check-sat)

(pop 1)

