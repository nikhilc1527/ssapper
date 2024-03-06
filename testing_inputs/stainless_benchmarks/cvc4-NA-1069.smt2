; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7812 () Bool)

(assert start!7812)

(declare-fun b_free!7261 () Bool)

(declare-fun b_next!38647 () Bool)

(assert (=> start!7812 (= b_free!7261 (not b_next!38647))))

(declare-fun tp!15712 () Bool)

(declare-fun b_and!58365 () Bool)

(assert (=> start!7812 (= tp!15712 b_and!58365)))

(declare-fun lambda!8714 () Int)

(declare-fun b!55684 () Bool)

(declare-fun b_next!38649 () Bool)

(declare-fun A!2049 () Int)

(assert (=> start!7812 (= b_next!38647 (or (and b!55684 (= lambda!8714 A!2049)) b_next!38649))))

(declare-fun bs!27750 () Bool)

(declare-fun b!55685 () Bool)

(assert (= bs!27750 (and b!55685 b!55684)))

(declare-fun lambda!8715 () Int)

(assert (=> bs!27750 (= lambda!8715 lambda!8714)))

(declare-fun b_next!38651 () Bool)

(assert (=> start!7812 (= b_next!38649 (or (and b!55685 (= lambda!8715 A!2049)) b_next!38651))))

(declare-fun bs!27751 () Bool)

(declare-fun b!55694 () Bool)

(assert (= bs!27751 (and b!55694 b!55684)))

(declare-fun lambda!8716 () Int)

(assert (=> bs!27751 (= lambda!8716 lambda!8714)))

(declare-fun bs!27752 () Bool)

(assert (= bs!27752 (and b!55694 b!55685)))

(assert (=> bs!27752 (= lambda!8716 lambda!8715)))

(declare-fun b_next!38653 () Bool)

(assert (=> start!7812 (= b_next!38651 (or (and b!55694 (= lambda!8716 A!2049)) b_next!38653))))

(declare-fun b!55683 () Bool)

(declare-fun e!29362 () Bool)

(declare-fun e!29361 () Bool)

(assert (=> b!55683 (= e!29362 e!29361)))

(declare-datatypes () ((Option!299 (Some!294 (v!2041 Object!257)) (None!295)) (Object!257 (BigIntStructure!5) (StructureExt!5 (__x!135 Int)) (OptionStructure!5 (ev!15 Object!257)) (Option!300 (value!4075 Option!299)) (Integer!246 (value!4076 Int)) (Open!257 (value!4077 Int)))))

(declare-fun lt!9948 () Object!257)

(declare-fun tp!15709 () Bool)

(declare-fun e!29357 () Bool)

(declare-fun isStructure!0 (Object!257 Int) Bool)

(assert (=> b!55684 (= e!29357 (and tp!15709 (isStructure!0 lt!9948 lambda!8714)))))

(declare-fun s!1791 () Object!257)

(assert (=> b!55684 (= lt!9948 (ev!15 s!1791))))

(declare-fun tp!15713 () Bool)

(declare-fun lt!9947 () Object!257)

(assert (=> b!55685 (= e!29362 (and tp!15713 (isStructure!0 lt!9947 lambda!8715)))))

(declare-fun a!665 () Object!257)

(assert (=> b!55685 (= lt!9947 (ev!15 a!665))))

(declare-fun b!55686 () Bool)

(declare-fun e!29358 () Bool)

(declare-fun e!29359 () Bool)

(assert (=> b!55686 (= e!29358 e!29359)))

(declare-fun b!55687 () Bool)

(declare-fun res!25749 () Bool)

(declare-fun e!29360 () Bool)

(assert (=> b!55687 (=> (not res!25749) (not e!29360))))

(declare-fun dynLambda!906 (Int Object!257) Bool)

(assert (=> b!55687 (= res!25749 (dynLambda!906 A!2049 a!665))))

(declare-fun b!55688 () Bool)

(declare-fun e!29356 () Bool)

(assert (=> b!55688 (= e!29357 e!29356)))

(declare-fun b!55689 () Bool)

(declare-fun tp!15711 () Bool)

(assert (=> b!55689 (= e!29361 tp!15711)))

(declare-fun b!55690 () Bool)

(declare-fun res!25748 () Bool)

(assert (=> b!55690 (=> (not res!25748) (not e!29360))))

(declare-fun b!55352 () Object!257)

(declare-fun someLaw!0 (Int Object!257 Object!257 Object!257) Bool)

(assert (=> b!55690 (= res!25748 (someLaw!0 A!2049 s!1791 a!665 b!55352))))

(declare-fun b!55691 () Bool)

(declare-fun tp!15710 () Bool)

(assert (=> b!55691 (= e!29356 tp!15710)))

(declare-fun b!55692 () Bool)

(declare-fun tp!15714 () Bool)

(assert (=> b!55692 (= e!29359 tp!15714)))

(declare-fun b!55693 () Bool)

(declare-fun doSomething!1 (Int Object!257 Object!257 Object!257) Object!257)

(assert (=> b!55693 (= e!29360 (not (= (doSomething!1 A!2049 s!1791 a!665 b!55352) (doSomething!1 A!2049 s!1791 b!55352 a!665))))))

(declare-fun res!25747 () Bool)

(assert (=> start!7812 (=> (not res!25747) (not e!29360))))

(assert (=> start!7812 (= res!25747 (isStructure!0 s!1791 A!2049))))

(assert (=> start!7812 e!29360))

(declare-fun lt!9952 () Object!257)

(assert (=> start!7812 (= lt!9952 s!1791)))

(assert (=> start!7812 (and e!29357 (isStructure!0 lt!9952 A!2049))))

(assert (=> start!7812 tp!15712))

(declare-fun lt!9950 () Object!257)

(assert (=> start!7812 (= lt!9950 a!665)))

(assert (=> start!7812 (and e!29362 (dynLambda!906 A!2049 lt!9950))))

(declare-fun lt!9949 () Object!257)

(assert (=> start!7812 (= lt!9949 b!55352)))

(assert (=> start!7812 (and e!29358 (dynLambda!906 A!2049 lt!9949))))

(declare-fun tp!15708 () Bool)

(declare-fun lt!9951 () Object!257)

(assert (=> b!55694 (= e!29358 (and tp!15708 (isStructure!0 lt!9951 lambda!8716)))))

(assert (=> b!55694 (= lt!9951 (ev!15 b!55352))))

(declare-fun b!55695 () Bool)

(declare-fun res!25750 () Bool)

(assert (=> b!55695 (=> (not res!25750) (not e!29360))))

(assert (=> b!55695 (= res!25750 (dynLambda!906 A!2049 b!55352))))

(assert (= (and start!7812 res!25747) b!55687))

(assert (= (and b!55687 res!25749) b!55695))

(assert (= (and b!55695 res!25750) b!55690))

(assert (= (and b!55690 res!25748) b!55693))

(assert (= (and start!7812 (is-OptionStructure!5 s!1791)) b!55684))

(assert (= (and b!55688 (is-Some!294 (value!4075 s!1791))) b!55691))

(assert (= (and start!7812 (is-Option!300 s!1791)) b!55688))

(assert (= (and start!7812 (is-OptionStructure!5 a!665)) b!55685))

(assert (= (and b!55683 (is-Some!294 (value!4075 a!665))) b!55689))

(assert (= (and start!7812 (is-Option!300 a!665)) b!55683))

(assert (= (and start!7812 (is-OptionStructure!5 b!55352)) b!55694))

(assert (= (and b!55686 (is-Some!294 (value!4075 b!55352))) b!55692))

(assert (= (and start!7812 (is-Option!300 b!55352)) b!55686))

(declare-fun b_lambda!14701 () Bool)

(assert (=> (not b_lambda!14701) (not b!55687)))

(declare-fun t!46916 () Bool)

(declare-fun tb!45915 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46916) tb!45915))

(declare-fun result!46255 () Bool)

(assert (=> tb!45915 (= result!46255 true)))

(assert (=> b!55687 t!46916))

(declare-fun b_and!58367 () Bool)

(assert (= b_and!58365 (and (=> t!46916 result!46255) b_and!58367)))

(declare-fun b_lambda!14703 () Bool)

(assert (=> (not b_lambda!14703) (not start!7812)))

(declare-fun t!46918 () Bool)

(declare-fun tb!45917 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46918) tb!45917))

(declare-fun result!46257 () Bool)

(assert (=> tb!45917 (= result!46257 true)))

(assert (=> start!7812 t!46918))

(declare-fun b_and!58369 () Bool)

(assert (= b_and!58367 (and (=> t!46918 result!46257) b_and!58369)))

(declare-fun b_lambda!14705 () Bool)

(assert (=> (not b_lambda!14705) (not start!7812)))

(declare-fun t!46920 () Bool)

(declare-fun tb!45919 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46920) tb!45919))

(declare-fun result!46259 () Bool)

(assert (=> tb!45919 (= result!46259 true)))

(assert (=> start!7812 t!46920))

(declare-fun b_and!58371 () Bool)

(assert (= b_and!58369 (and (=> t!46920 result!46259) b_and!58371)))

(declare-fun b_lambda!14707 () Bool)

(assert (=> (not b_lambda!14707) (not b!55695)))

(declare-fun t!46922 () Bool)

(declare-fun tb!45921 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46922) tb!45921))

(declare-fun result!46261 () Bool)

(assert (=> tb!45921 (= result!46261 true)))

(assert (=> b!55695 t!46922))

(declare-fun b_and!58373 () Bool)

(assert (= b_and!58371 (and (=> t!46922 result!46261) b_and!58373)))

(declare-fun m!60356 () Bool)

(assert (=> b!55693 m!60356))

(declare-fun m!60358 () Bool)

(assert (=> b!55693 m!60358))

(declare-fun m!60360 () Bool)

(assert (=> b!55684 m!60360))

(declare-fun m!60362 () Bool)

(assert (=> b!55685 m!60362))

(declare-fun m!60364 () Bool)

(assert (=> b!55695 m!60364))

(declare-fun m!60366 () Bool)

(assert (=> start!7812 m!60366))

(declare-fun m!60368 () Bool)

(assert (=> start!7812 m!60368))

(declare-fun m!60370 () Bool)

(assert (=> start!7812 m!60370))

(declare-fun m!60372 () Bool)

(assert (=> start!7812 m!60372))

(declare-fun m!60374 () Bool)

(assert (=> b!55694 m!60374))

(declare-fun m!60376 () Bool)

(assert (=> b!55687 m!60376))

(declare-fun m!60378 () Bool)

(assert (=> b!55690 m!60378))

(push 1)

(assert (not b_next!38653))

(assert (not b_lambda!14703))

(assert (not b_lambda!14707))

(assert (not b!55693))

(assert (not b!55689))

(assert (not b!55690))

(assert b_and!58373)

(assert (not b!55685))

(assert (not b_lambda!14701))

(assert (not b!55694))

(assert (not b_lambda!14705))

(assert (not b!55692))

(assert (not b!55684))

(assert (not b!55691))

(assert (not start!7812))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58373)

(assert (not b_next!38653))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14709 () Bool)

(assert (= b_lambda!14703 (or (and b!55684 (= lambda!8714 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and start!7812 b_free!7261) b_lambda!14709)))

(declare-fun bs!27753 () Bool)

(declare-fun d!45402 () Bool)

(assert (= bs!27753 (and d!45402 b!55684)))

(assert (=> bs!27753 (= (dynLambda!906 lambda!8714 lt!9950) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) start!7812) d!45402))

(declare-fun bs!27754 () Bool)

(declare-fun d!45404 () Bool)

(assert (= bs!27754 (and d!45404 b!55685)))

(assert (=> bs!27754 (= (dynLambda!906 lambda!8715 lt!9950) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) start!7812) d!45404))

(declare-fun bs!27755 () Bool)

(declare-fun d!45406 () Bool)

(assert (= bs!27755 (and d!45406 b!55694)))

(assert (=> bs!27755 (= (dynLambda!906 lambda!8716 lt!9950) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) start!7812) d!45406))

(declare-fun b_lambda!14711 () Bool)

(assert (= b_lambda!14707 (or (and b!55684 (= lambda!8714 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and start!7812 b_free!7261) b_lambda!14711)))

(declare-fun bs!27756 () Bool)

(declare-fun d!45408 () Bool)

(assert (= bs!27756 (and d!45408 b!55684)))

(assert (=> bs!27756 (= (dynLambda!906 lambda!8714 b!55352) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) b!55695) d!45408))

(declare-fun bs!27757 () Bool)

(declare-fun d!45410 () Bool)

(assert (= bs!27757 (and d!45410 b!55685)))

(assert (=> bs!27757 (= (dynLambda!906 lambda!8715 b!55352) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) b!55695) d!45410))

(declare-fun bs!27758 () Bool)

(declare-fun d!45412 () Bool)

(assert (= bs!27758 (and d!45412 b!55694)))

(assert (=> bs!27758 (= (dynLambda!906 lambda!8716 b!55352) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) b!55695) d!45412))

(declare-fun b_lambda!14713 () Bool)

(assert (= b_lambda!14705 (or (and b!55684 (= lambda!8714 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and start!7812 b_free!7261) b_lambda!14713)))

(declare-fun bs!27759 () Bool)

(declare-fun d!45414 () Bool)

(assert (= bs!27759 (and d!45414 b!55684)))

(assert (=> bs!27759 (= (dynLambda!906 lambda!8714 lt!9949) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) start!7812) d!45414))

(declare-fun bs!27760 () Bool)

(declare-fun d!45416 () Bool)

(assert (= bs!27760 (and d!45416 b!55685)))

(assert (=> bs!27760 (= (dynLambda!906 lambda!8715 lt!9949) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) start!7812) d!45416))

(declare-fun bs!27761 () Bool)

(declare-fun d!45418 () Bool)

(assert (= bs!27761 (and d!45418 b!55694)))

(assert (=> bs!27761 (= (dynLambda!906 lambda!8716 lt!9949) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) start!7812) d!45418))

(declare-fun b_lambda!14715 () Bool)

(assert (= b_lambda!14701 (or (and b!55684 (= lambda!8714 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and start!7812 b_free!7261) b_lambda!14715)))

(declare-fun bs!27762 () Bool)

(declare-fun d!45420 () Bool)

(assert (= bs!27762 (and d!45420 b!55684)))

(assert (=> bs!27762 (= (dynLambda!906 lambda!8714 a!665) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) b!55687) d!45420))

(declare-fun bs!27763 () Bool)

(declare-fun d!45422 () Bool)

(assert (= bs!27763 (and d!45422 b!55685)))

(assert (=> bs!27763 (= (dynLambda!906 lambda!8715 a!665) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) b!55687) d!45422))

(declare-fun bs!27764 () Bool)

(declare-fun d!45424 () Bool)

(assert (= bs!27764 (and d!45424 b!55694)))

(assert (=> bs!27764 (= (dynLambda!906 lambda!8716 a!665) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) b!55687) d!45424))

(push 1)

(assert (not b_next!38653))

(assert (not b!55693))

(assert (not b!55689))

(assert (not b_lambda!14715))

(assert (not b!55690))

(assert (not b_lambda!14711))

(assert (not b_lambda!14713))

(assert b_and!58373)

(assert (not b!55685))

(assert (not b!55694))

(assert (not b!55692))

(assert (not b_lambda!14709))

(assert (not b!55684))

(assert (not b!55691))

(assert (not start!7812))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58373)

(assert (not b_next!38653))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27765 () Bool)

(declare-fun b!55713 () Bool)

(assert (= bs!27765 (and b!55713 b!55684)))

(declare-fun lambda!8723 () Int)

(assert (=> bs!27765 (= lambda!8723 lambda!8714)))

(declare-fun bs!27766 () Bool)

(assert (= bs!27766 (and b!55713 b!55685)))

(assert (=> bs!27766 (= lambda!8723 lambda!8715)))

(declare-fun bs!27767 () Bool)

(assert (= bs!27767 (and b!55713 b!55694)))

(assert (=> bs!27767 (= lambda!8723 lambda!8716)))

(declare-fun b_next!38655 () Bool)

(assert (=> start!7812 (= b_next!38653 (or (and b!55713 (= lambda!8723 A!2049)) b_next!38655))))

(declare-fun b!55712 () Bool)

(declare-fun e!29374 () Bool)

(declare-fun isOption!14 (Option!299 Int) Bool)

(assert (=> b!55712 (= e!29374 (isOption!14 (value!4075 b!55352) lambda!8723))))

(declare-fun d!45426 () Bool)

(declare-fun e!29377 () Bool)

(assert (=> d!45426 e!29377))

(declare-fun res!25761 () Bool)

(assert (=> d!45426 (=> (not res!25761) (not e!29377))))

(declare-fun lt!9957 () Bool)

(assert (=> d!45426 (= res!25761 lt!9957)))

(declare-fun e!29373 () Bool)

(assert (=> d!45426 (= lt!9957 e!29373)))

(declare-fun c!12071 () Bool)

(declare-fun isBigIntStructure!0 (Object!257) Bool)

(assert (=> d!45426 (= c!12071 (isBigIntStructure!0 s!1791))))

(assert (=> d!45426 (= (someLaw!0 A!2049 s!1791 a!665 b!55352) lt!9957)))

(declare-fun e!29375 () Bool)

(declare-fun someLaw!2 (Int Object!257 Option!299 Option!299) Bool)

(assert (=> b!55713 (= e!29375 (someLaw!2 lambda!8723 s!1791 (value!4075 a!665) (value!4075 b!55352)))))

(assert (=> b!55713 e!29374))

(declare-fun res!25762 () Bool)

(assert (=> b!55713 (=> (not res!25762) (not e!29374))))

(assert (=> b!55713 (= res!25762 (is-Option!300 b!55352))))

(declare-fun e!29376 () Bool)

(assert (=> b!55713 e!29376))

(declare-fun res!25763 () Bool)

(assert (=> b!55713 (=> (not res!25763) (not e!29376))))

(assert (=> b!55713 (= res!25763 (is-Option!300 a!665))))

(declare-fun b!55714 () Bool)

(declare-fun someLaw!8 (Object!257 Object!257 Object!257) Bool)

(assert (=> b!55714 (= e!29377 (= true (someLaw!8 s!1791 a!665 b!55352)))))

(declare-fun b!55715 () Bool)

(assert (=> b!55715 (= e!29373 e!29375)))

(declare-fun c!12070 () Bool)

(declare-fun isStructureExt!0 (Object!257 Int) Bool)

(assert (=> b!55715 (= c!12070 (isStructureExt!0 s!1791 A!2049))))

(declare-fun b!55716 () Bool)

(declare-fun someLaw!1 (Object!257 Int Int) Bool)

(assert (=> b!55716 (= e!29373 (someLaw!1 s!1791 (value!4076 a!665) (value!4076 b!55352)))))

(assert (=> b!55716 (is-Integer!246 b!55352)))

(assert (=> b!55716 (is-Integer!246 a!665)))

(declare-fun b!55717 () Bool)

(declare-fun someLaw!4 (Int Object!257 Object!257 Object!257) Bool)

(assert (=> b!55717 (= e!29375 (someLaw!4 A!2049 s!1791 a!665 b!55352))))

(declare-fun b!55718 () Bool)

(assert (=> b!55718 (= e!29376 (isOption!14 (value!4075 a!665) lambda!8723))))

(declare-fun b!55719 () Bool)

(declare-fun res!25764 () Bool)

(assert (=> b!55719 (=> (not res!25764) (not e!29377))))

(declare-fun lt!9958 () Bool)

(assert (=> b!55719 (= res!25764 lt!9958)))

(declare-fun someLaw!7 (Object!257 Object!257 Object!257) Bool)

(assert (=> b!55719 (= lt!9958 (someLaw!7 s!1791 a!665 b!55352))))

(assert (=> b!55719 (= lt!9958 (= (doSomething!1 A!2049 s!1791 a!665 b!55352) (doSomething!1 A!2049 s!1791 b!55352 a!665)))))

(assert (= (and b!55713 res!25763) b!55718))

(assert (= (and b!55713 res!25762) b!55712))

(assert (= (and b!55715 c!12070) b!55717))

(assert (= (and b!55715 (not c!12070)) b!55713))

(assert (= (and d!45426 c!12071) b!55716))

(assert (= (and d!45426 (not c!12071)) b!55715))

(assert (= (and d!45426 res!25761) b!55719))

(assert (= (and b!55719 res!25764) b!55714))

(declare-fun m!60380 () Bool)

(assert (=> b!55719 m!60380))

(assert (=> b!55719 m!60356))

(assert (=> b!55719 m!60358))

(declare-fun m!60382 () Bool)

(assert (=> b!55716 m!60382))

(declare-fun m!60384 () Bool)

(assert (=> b!55715 m!60384))

(declare-fun m!60386 () Bool)

(assert (=> d!45426 m!60386))

(declare-fun m!60388 () Bool)

(assert (=> b!55718 m!60388))

(declare-fun m!60390 () Bool)

(assert (=> b!55713 m!60390))

(declare-fun m!60392 () Bool)

(assert (=> b!55717 m!60392))

(declare-fun m!60394 () Bool)

(assert (=> b!55712 m!60394))

(declare-fun m!60396 () Bool)

(assert (=> b!55714 m!60396))

(assert (=> b!55690 d!45426))

(declare-fun bs!27768 () Bool)

(declare-fun b!55725 () Bool)

(assert (= bs!27768 (and b!55725 b!55684)))

(declare-fun lambda!8726 () Int)

(assert (=> bs!27768 (= lambda!8726 lambda!8714)))

(declare-fun bs!27769 () Bool)

(assert (= bs!27769 (and b!55725 b!55685)))

(assert (=> bs!27769 (= lambda!8726 lambda!8715)))

(declare-fun bs!27770 () Bool)

(assert (= bs!27770 (and b!55725 b!55694)))

(assert (=> bs!27770 (= lambda!8726 lambda!8716)))

(declare-fun bs!27771 () Bool)

(assert (= bs!27771 (and b!55725 b!55713)))

(assert (=> bs!27771 (= lambda!8726 lambda!8723)))

(declare-fun b_next!38657 () Bool)

(assert (=> start!7812 (= b_next!38655 (or (and b!55725 (= lambda!8726 A!2049)) b_next!38657))))

(declare-fun d!45428 () Bool)

(declare-fun res!25769 () Bool)

(declare-fun e!29380 () Bool)

(assert (=> d!45428 (=> res!25769 e!29380)))

(assert (=> d!45428 (= res!25769 (isBigIntStructure!0 lt!9951))))

(assert (=> d!45428 (= (isStructure!0 lt!9951 lambda!8716) e!29380)))

(declare-fun b!55724 () Bool)

(declare-fun res!25770 () Bool)

(assert (=> b!55724 (=> res!25770 e!29380)))

(assert (=> b!55724 (= res!25770 (isStructureExt!0 lt!9951 lambda!8716))))

(declare-fun isOptionStructure!0 (Object!257 Int) Bool)

(assert (=> b!55725 (= e!29380 (isOptionStructure!0 lt!9951 lambda!8726))))

(assert (= (and d!45428 (not res!25769)) b!55724))

(assert (= (and b!55724 (not res!25770)) b!55725))

(declare-fun m!60398 () Bool)

(assert (=> d!45428 m!60398))

(declare-fun m!60400 () Bool)

(assert (=> b!55724 m!60400))

(declare-fun m!60402 () Bool)

(assert (=> b!55725 m!60402))

(assert (=> b!55694 d!45428))

(declare-fun bs!27772 () Bool)

(declare-fun b!55727 () Bool)

(assert (= bs!27772 (and b!55727 b!55685)))

(declare-fun lambda!8727 () Int)

(assert (=> bs!27772 (= lambda!8727 lambda!8715)))

(declare-fun bs!27773 () Bool)

(assert (= bs!27773 (and b!55727 b!55725)))

(assert (=> bs!27773 (= lambda!8727 lambda!8726)))

(declare-fun bs!27774 () Bool)

(assert (= bs!27774 (and b!55727 b!55684)))

(assert (=> bs!27774 (= lambda!8727 lambda!8714)))

(declare-fun bs!27775 () Bool)

(assert (= bs!27775 (and b!55727 b!55713)))

(assert (=> bs!27775 (= lambda!8727 lambda!8723)))

(declare-fun bs!27776 () Bool)

(assert (= bs!27776 (and b!55727 b!55694)))

(assert (=> bs!27776 (= lambda!8727 lambda!8716)))

(declare-fun b_next!38659 () Bool)

(assert (=> start!7812 (= b_next!38657 (or (and b!55727 (= lambda!8727 A!2049)) b_next!38659))))

(declare-fun d!45430 () Bool)

(declare-fun res!25771 () Bool)

(declare-fun e!29381 () Bool)

(assert (=> d!45430 (=> res!25771 e!29381)))

(assert (=> d!45430 (= res!25771 (isBigIntStructure!0 lt!9948))))

(assert (=> d!45430 (= (isStructure!0 lt!9948 lambda!8714) e!29381)))

(declare-fun b!55726 () Bool)

(declare-fun res!25772 () Bool)

(assert (=> b!55726 (=> res!25772 e!29381)))

(assert (=> b!55726 (= res!25772 (isStructureExt!0 lt!9948 lambda!8714))))

(assert (=> b!55727 (= e!29381 (isOptionStructure!0 lt!9948 lambda!8727))))

(assert (= (and d!45430 (not res!25771)) b!55726))

(assert (= (and b!55726 (not res!25772)) b!55727))

(declare-fun m!60404 () Bool)

(assert (=> d!45430 m!60404))

(declare-fun m!60406 () Bool)

(assert (=> b!55726 m!60406))

(declare-fun m!60408 () Bool)

(assert (=> b!55727 m!60408))

(assert (=> b!55684 d!45430))

(declare-fun bs!27777 () Bool)

(declare-fun b!55729 () Bool)

(assert (= bs!27777 (and b!55729 b!55727)))

(declare-fun lambda!8728 () Int)

(assert (=> bs!27777 (= lambda!8728 lambda!8727)))

(declare-fun bs!27778 () Bool)

(assert (= bs!27778 (and b!55729 b!55685)))

(assert (=> bs!27778 (= lambda!8728 lambda!8715)))

(declare-fun bs!27779 () Bool)

(assert (= bs!27779 (and b!55729 b!55725)))

(assert (=> bs!27779 (= lambda!8728 lambda!8726)))

(declare-fun bs!27780 () Bool)

(assert (= bs!27780 (and b!55729 b!55684)))

(assert (=> bs!27780 (= lambda!8728 lambda!8714)))

(declare-fun bs!27781 () Bool)

(assert (= bs!27781 (and b!55729 b!55713)))

(assert (=> bs!27781 (= lambda!8728 lambda!8723)))

(declare-fun bs!27782 () Bool)

(assert (= bs!27782 (and b!55729 b!55694)))

(assert (=> bs!27782 (= lambda!8728 lambda!8716)))

(declare-fun b_next!38661 () Bool)

(assert (=> start!7812 (= b_next!38659 (or (and b!55729 (= lambda!8728 A!2049)) b_next!38661))))

(declare-fun d!45432 () Bool)

(declare-fun res!25773 () Bool)

(declare-fun e!29382 () Bool)

(assert (=> d!45432 (=> res!25773 e!29382)))

(assert (=> d!45432 (= res!25773 (isBigIntStructure!0 s!1791))))

(assert (=> d!45432 (= (isStructure!0 s!1791 A!2049) e!29382)))

(declare-fun b!55728 () Bool)

(declare-fun res!25774 () Bool)

(assert (=> b!55728 (=> res!25774 e!29382)))

(assert (=> b!55728 (= res!25774 (isStructureExt!0 s!1791 A!2049))))

(assert (=> b!55729 (= e!29382 (isOptionStructure!0 s!1791 lambda!8728))))

(assert (= (and d!45432 (not res!25773)) b!55728))

(assert (= (and b!55728 (not res!25774)) b!55729))

(assert (=> d!45432 m!60386))

(assert (=> b!55728 m!60384))

(declare-fun m!60410 () Bool)

(assert (=> b!55729 m!60410))

(assert (=> start!7812 d!45432))

(declare-fun bs!27783 () Bool)

(declare-fun b!55731 () Bool)

(assert (= bs!27783 (and b!55731 b!55727)))

(declare-fun lambda!8729 () Int)

(assert (=> bs!27783 (= lambda!8729 lambda!8727)))

(declare-fun bs!27784 () Bool)

(assert (= bs!27784 (and b!55731 b!55685)))

(assert (=> bs!27784 (= lambda!8729 lambda!8715)))

(declare-fun bs!27785 () Bool)

(assert (= bs!27785 (and b!55731 b!55725)))

(assert (=> bs!27785 (= lambda!8729 lambda!8726)))

(declare-fun bs!27786 () Bool)

(assert (= bs!27786 (and b!55731 b!55684)))

(assert (=> bs!27786 (= lambda!8729 lambda!8714)))

(declare-fun bs!27787 () Bool)

(assert (= bs!27787 (and b!55731 b!55713)))

(assert (=> bs!27787 (= lambda!8729 lambda!8723)))

(declare-fun bs!27788 () Bool)

(assert (= bs!27788 (and b!55731 b!55729)))

(assert (=> bs!27788 (= lambda!8729 lambda!8728)))

(declare-fun bs!27789 () Bool)

(assert (= bs!27789 (and b!55731 b!55694)))

(assert (=> bs!27789 (= lambda!8729 lambda!8716)))

(declare-fun b_next!38663 () Bool)

(assert (=> start!7812 (= b_next!38661 (or (and b!55731 (= lambda!8729 A!2049)) b_next!38663))))

(declare-fun d!45434 () Bool)

(declare-fun res!25775 () Bool)

(declare-fun e!29383 () Bool)

(assert (=> d!45434 (=> res!25775 e!29383)))

(assert (=> d!45434 (= res!25775 (isBigIntStructure!0 lt!9952))))

(assert (=> d!45434 (= (isStructure!0 lt!9952 A!2049) e!29383)))

(declare-fun b!55730 () Bool)

(declare-fun res!25776 () Bool)

(assert (=> b!55730 (=> res!25776 e!29383)))

(assert (=> b!55730 (= res!25776 (isStructureExt!0 lt!9952 A!2049))))

(assert (=> b!55731 (= e!29383 (isOptionStructure!0 lt!9952 lambda!8729))))

(assert (= (and d!45434 (not res!25775)) b!55730))

(assert (= (and b!55730 (not res!25776)) b!55731))

(declare-fun m!60412 () Bool)

(assert (=> d!45434 m!60412))

(declare-fun m!60414 () Bool)

(assert (=> b!55730 m!60414))

(declare-fun m!60416 () Bool)

(assert (=> b!55731 m!60416))

(assert (=> start!7812 d!45434))

(declare-fun bs!27790 () Bool)

(declare-fun b!55733 () Bool)

(assert (= bs!27790 (and b!55733 b!55731)))

(declare-fun lambda!8730 () Int)

(assert (=> bs!27790 (= lambda!8730 lambda!8729)))

(declare-fun bs!27791 () Bool)

(assert (= bs!27791 (and b!55733 b!55727)))

(assert (=> bs!27791 (= lambda!8730 lambda!8727)))

(declare-fun bs!27792 () Bool)

(assert (= bs!27792 (and b!55733 b!55685)))

(assert (=> bs!27792 (= lambda!8730 lambda!8715)))

(declare-fun bs!27793 () Bool)

(assert (= bs!27793 (and b!55733 b!55725)))

(assert (=> bs!27793 (= lambda!8730 lambda!8726)))

(declare-fun bs!27794 () Bool)

(assert (= bs!27794 (and b!55733 b!55684)))

(assert (=> bs!27794 (= lambda!8730 lambda!8714)))

(declare-fun bs!27795 () Bool)

(assert (= bs!27795 (and b!55733 b!55713)))

(assert (=> bs!27795 (= lambda!8730 lambda!8723)))

(declare-fun bs!27796 () Bool)

(assert (= bs!27796 (and b!55733 b!55729)))

(assert (=> bs!27796 (= lambda!8730 lambda!8728)))

(declare-fun bs!27797 () Bool)

(assert (= bs!27797 (and b!55733 b!55694)))

(assert (=> bs!27797 (= lambda!8730 lambda!8716)))

(declare-fun b_next!38665 () Bool)

(assert (=> start!7812 (= b_next!38663 (or (and b!55733 (= lambda!8730 A!2049)) b_next!38665))))

(declare-fun d!45436 () Bool)

(declare-fun res!25777 () Bool)

(declare-fun e!29384 () Bool)

(assert (=> d!45436 (=> res!25777 e!29384)))

(assert (=> d!45436 (= res!25777 (isBigIntStructure!0 lt!9947))))

(assert (=> d!45436 (= (isStructure!0 lt!9947 lambda!8715) e!29384)))

(declare-fun b!55732 () Bool)

(declare-fun res!25778 () Bool)

(assert (=> b!55732 (=> res!25778 e!29384)))

(assert (=> b!55732 (= res!25778 (isStructureExt!0 lt!9947 lambda!8715))))

(assert (=> b!55733 (= e!29384 (isOptionStructure!0 lt!9947 lambda!8730))))

(assert (= (and d!45436 (not res!25777)) b!55732))

(assert (= (and b!55732 (not res!25778)) b!55733))

(declare-fun m!60418 () Bool)

(assert (=> d!45436 m!60418))

(declare-fun m!60420 () Bool)

(assert (=> b!55732 m!60420))

(declare-fun m!60422 () Bool)

(assert (=> b!55733 m!60422))

(assert (=> b!55685 d!45436))

(declare-fun bs!27798 () Bool)

(declare-fun b!55750 () Bool)

(assert (= bs!27798 (and b!55750 b!55731)))

(declare-fun lambda!8737 () Int)

(assert (=> bs!27798 (= lambda!8737 lambda!8729)))

(declare-fun bs!27799 () Bool)

(assert (= bs!27799 (and b!55750 b!55727)))

(assert (=> bs!27799 (= lambda!8737 lambda!8727)))

(declare-fun bs!27800 () Bool)

(assert (= bs!27800 (and b!55750 b!55685)))

(assert (=> bs!27800 (= lambda!8737 lambda!8715)))

(declare-fun bs!27801 () Bool)

(assert (= bs!27801 (and b!55750 b!55725)))

(assert (=> bs!27801 (= lambda!8737 lambda!8726)))

(declare-fun bs!27802 () Bool)

(assert (= bs!27802 (and b!55750 b!55684)))

(assert (=> bs!27802 (= lambda!8737 lambda!8714)))

(declare-fun bs!27803 () Bool)

(assert (= bs!27803 (and b!55750 b!55713)))

(assert (=> bs!27803 (= lambda!8737 lambda!8723)))

(declare-fun bs!27804 () Bool)

(assert (= bs!27804 (and b!55750 b!55729)))

(assert (=> bs!27804 (= lambda!8737 lambda!8728)))

(declare-fun bs!27805 () Bool)

(assert (= bs!27805 (and b!55750 b!55694)))

(assert (=> bs!27805 (= lambda!8737 lambda!8716)))

(declare-fun bs!27806 () Bool)

(assert (= bs!27806 (and b!55750 b!55733)))

(assert (=> bs!27806 (= lambda!8737 lambda!8730)))

(declare-fun b_next!38667 () Bool)

(assert (=> start!7812 (= b_next!38665 (or (and b!55750 (= lambda!8737 A!2049)) b_next!38667))))

(declare-fun b!55746 () Bool)

(declare-fun e!29393 () Object!257)

(declare-fun e!29394 () Object!257)

(assert (=> b!55746 (= e!29393 e!29394)))

(declare-fun c!12077 () Bool)

(assert (=> b!55746 (= c!12077 (isStructureExt!0 s!1791 A!2049))))

(declare-fun b!55747 () Bool)

(declare-fun lt!9967 () Int)

(assert (=> b!55747 (= e!29393 (Integer!246 lt!9967))))

(assert (=> b!55747 (dynLambda!906 A!2049 (Integer!246 lt!9967))))

(declare-fun doSomething!2 (Object!257 Int Int) Int)

(assert (=> b!55747 (= lt!9967 (doSomething!2 s!1791 (value!4076 a!665) (value!4076 b!55352)))))

(assert (=> b!55747 (is-Integer!246 b!55352)))

(assert (=> b!55747 (is-Integer!246 a!665)))

(declare-fun b!55748 () Bool)

(declare-fun doSomething!4 (Int Object!257 Object!257 Object!257) Object!257)

(assert (=> b!55748 (= e!29394 (doSomething!4 A!2049 s!1791 a!665 b!55352))))

(declare-fun lt!9966 () Object!257)

(declare-fun d!45438 () Bool)

(declare-fun doSomething!7 (Object!257 Object!257 Object!257) Object!257)

(assert (=> d!45438 (= lt!9966 (doSomething!7 s!1791 a!665 b!55352))))

(assert (=> d!45438 (= lt!9966 e!29393)))

(declare-fun c!12076 () Bool)

(assert (=> d!45438 (= c!12076 (isBigIntStructure!0 s!1791))))

(assert (=> d!45438 (= (doSomething!1 A!2049 s!1791 a!665 b!55352) lt!9966)))

(declare-fun b!55749 () Bool)

(declare-fun e!29396 () Bool)

(assert (=> b!55749 (= e!29396 (isOption!14 (value!4075 b!55352) lambda!8737))))

(declare-fun lt!9965 () Option!299)

(assert (=> b!55750 (= e!29394 (Option!300 lt!9965))))

(assert (=> b!55750 (dynLambda!906 A!2049 (Option!300 lt!9965))))

(declare-fun doSomething!3 (Int Object!257 Option!299 Option!299) Option!299)

(assert (=> b!55750 (= lt!9965 (doSomething!3 lambda!8737 s!1791 (value!4075 a!665) (value!4075 b!55352)))))

(assert (=> b!55750 e!29396))

(declare-fun res!25785 () Bool)

(assert (=> b!55750 (=> (not res!25785) (not e!29396))))

(assert (=> b!55750 (= res!25785 (is-Option!300 b!55352))))

(declare-fun e!29395 () Bool)

(assert (=> b!55750 e!29395))

(declare-fun res!25784 () Bool)

(assert (=> b!55750 (=> (not res!25784) (not e!29395))))

(assert (=> b!55750 (= res!25784 (is-Option!300 a!665))))

(declare-fun b!55751 () Bool)

(assert (=> b!55751 (= e!29395 (isOption!14 (value!4075 a!665) lambda!8737))))

(assert (= (and b!55750 res!25784) b!55751))

(assert (= (and b!55750 res!25785) b!55749))

(assert (= (and b!55746 c!12077) b!55748))

(assert (= (and b!55746 (not c!12077)) b!55750))

(assert (= (and d!45438 c!12076) b!55747))

(assert (= (and d!45438 (not c!12076)) b!55746))

(declare-fun b_lambda!14717 () Bool)

(assert (=> (not b_lambda!14717) (not b!55747)))

(declare-fun t!46924 () Bool)

(declare-fun tb!45923 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46924) tb!45923))

(declare-fun result!46263 () Bool)

(assert (=> tb!45923 (= result!46263 true)))

(assert (=> b!55747 t!46924))

(declare-fun b_and!58375 () Bool)

(assert (= b_and!58373 (and (=> t!46924 result!46263) b_and!58375)))

(declare-fun b_lambda!14719 () Bool)

(assert (=> (not b_lambda!14719) (not b!55750)))

(declare-fun t!46926 () Bool)

(declare-fun tb!45925 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46926) tb!45925))

(declare-fun result!46265 () Bool)

(assert (=> tb!45925 (= result!46265 true)))

(assert (=> b!55750 t!46926))

(declare-fun b_and!58377 () Bool)

(assert (= b_and!58375 (and (=> t!46926 result!46265) b_and!58377)))

(declare-fun m!60424 () Bool)

(assert (=> b!55749 m!60424))

(declare-fun m!60426 () Bool)

(assert (=> b!55750 m!60426))

(declare-fun m!60428 () Bool)

(assert (=> b!55750 m!60428))

(declare-fun m!60430 () Bool)

(assert (=> b!55751 m!60430))

(assert (=> b!55746 m!60384))

(declare-fun m!60432 () Bool)

(assert (=> b!55747 m!60432))

(declare-fun m!60434 () Bool)

(assert (=> b!55747 m!60434))

(declare-fun m!60436 () Bool)

(assert (=> b!55748 m!60436))

(declare-fun m!60438 () Bool)

(assert (=> d!45438 m!60438))

(assert (=> d!45438 m!60386))

(assert (=> b!55693 d!45438))

(declare-fun bs!27807 () Bool)

(declare-fun b!55756 () Bool)

(assert (= bs!27807 (and b!55756 b!55731)))

(declare-fun lambda!8738 () Int)

(assert (=> bs!27807 (= lambda!8738 lambda!8729)))

(declare-fun bs!27808 () Bool)

(assert (= bs!27808 (and b!55756 b!55727)))

(assert (=> bs!27808 (= lambda!8738 lambda!8727)))

(declare-fun bs!27809 () Bool)

(assert (= bs!27809 (and b!55756 b!55685)))

(assert (=> bs!27809 (= lambda!8738 lambda!8715)))

(declare-fun bs!27810 () Bool)

(assert (= bs!27810 (and b!55756 b!55725)))

(assert (=> bs!27810 (= lambda!8738 lambda!8726)))

(declare-fun bs!27811 () Bool)

(assert (= bs!27811 (and b!55756 b!55684)))

(assert (=> bs!27811 (= lambda!8738 lambda!8714)))

(declare-fun bs!27812 () Bool)

(assert (= bs!27812 (and b!55756 b!55713)))

(assert (=> bs!27812 (= lambda!8738 lambda!8723)))

(declare-fun bs!27813 () Bool)

(assert (= bs!27813 (and b!55756 b!55729)))

(assert (=> bs!27813 (= lambda!8738 lambda!8728)))

(declare-fun bs!27814 () Bool)

(assert (= bs!27814 (and b!55756 b!55750)))

(assert (=> bs!27814 (= lambda!8738 lambda!8737)))

(declare-fun bs!27815 () Bool)

(assert (= bs!27815 (and b!55756 b!55694)))

(assert (=> bs!27815 (= lambda!8738 lambda!8716)))

(declare-fun bs!27816 () Bool)

(assert (= bs!27816 (and b!55756 b!55733)))

(assert (=> bs!27816 (= lambda!8738 lambda!8730)))

(declare-fun b_next!38669 () Bool)

(assert (=> start!7812 (= b_next!38667 (or (and b!55756 (= lambda!8738 A!2049)) b_next!38669))))

(declare-fun b!55752 () Bool)

(declare-fun e!29397 () Object!257)

(declare-fun e!29398 () Object!257)

(assert (=> b!55752 (= e!29397 e!29398)))

(declare-fun c!12079 () Bool)

(assert (=> b!55752 (= c!12079 (isStructureExt!0 s!1791 A!2049))))

(declare-fun b!55753 () Bool)

(declare-fun lt!9970 () Int)

(assert (=> b!55753 (= e!29397 (Integer!246 lt!9970))))

(assert (=> b!55753 (dynLambda!906 A!2049 (Integer!246 lt!9970))))

(assert (=> b!55753 (= lt!9970 (doSomething!2 s!1791 (value!4076 b!55352) (value!4076 a!665)))))

(assert (=> b!55753 (is-Integer!246 a!665)))

(assert (=> b!55753 (is-Integer!246 b!55352)))

(declare-fun b!55754 () Bool)

(assert (=> b!55754 (= e!29398 (doSomething!4 A!2049 s!1791 b!55352 a!665))))

(declare-fun lt!9969 () Object!257)

(declare-fun d!45440 () Bool)

(assert (=> d!45440 (= lt!9969 (doSomething!7 s!1791 b!55352 a!665))))

(assert (=> d!45440 (= lt!9969 e!29397)))

(declare-fun c!12078 () Bool)

(assert (=> d!45440 (= c!12078 (isBigIntStructure!0 s!1791))))

(assert (=> d!45440 (= (doSomething!1 A!2049 s!1791 b!55352 a!665) lt!9969)))

(declare-fun b!55755 () Bool)

(declare-fun e!29400 () Bool)

(assert (=> b!55755 (= e!29400 (isOption!14 (value!4075 a!665) lambda!8738))))

(declare-fun lt!9968 () Option!299)

(assert (=> b!55756 (= e!29398 (Option!300 lt!9968))))

(assert (=> b!55756 (dynLambda!906 A!2049 (Option!300 lt!9968))))

(assert (=> b!55756 (= lt!9968 (doSomething!3 lambda!8738 s!1791 (value!4075 b!55352) (value!4075 a!665)))))

(assert (=> b!55756 e!29400))

(declare-fun res!25787 () Bool)

(assert (=> b!55756 (=> (not res!25787) (not e!29400))))

(assert (=> b!55756 (= res!25787 (is-Option!300 a!665))))

(declare-fun e!29399 () Bool)

(assert (=> b!55756 e!29399))

(declare-fun res!25786 () Bool)

(assert (=> b!55756 (=> (not res!25786) (not e!29399))))

(assert (=> b!55756 (= res!25786 (is-Option!300 b!55352))))

(declare-fun b!55757 () Bool)

(assert (=> b!55757 (= e!29399 (isOption!14 (value!4075 b!55352) lambda!8738))))

(assert (= (and b!55756 res!25786) b!55757))

(assert (= (and b!55756 res!25787) b!55755))

(assert (= (and b!55752 c!12079) b!55754))

(assert (= (and b!55752 (not c!12079)) b!55756))

(assert (= (and d!45440 c!12078) b!55753))

(assert (= (and d!45440 (not c!12078)) b!55752))

(declare-fun b_lambda!14721 () Bool)

(assert (=> (not b_lambda!14721) (not b!55753)))

(declare-fun t!46928 () Bool)

(declare-fun tb!45927 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46928) tb!45927))

(declare-fun result!46267 () Bool)

(assert (=> tb!45927 (= result!46267 true)))

(assert (=> b!55753 t!46928))

(declare-fun b_and!58379 () Bool)

(assert (= b_and!58377 (and (=> t!46928 result!46267) b_and!58379)))

(declare-fun b_lambda!14723 () Bool)

(assert (=> (not b_lambda!14723) (not b!55756)))

(declare-fun t!46930 () Bool)

(declare-fun tb!45929 () Bool)

(assert (=> (and start!7812 (= A!2049 A!2049) t!46930) tb!45929))

(declare-fun result!46269 () Bool)

(assert (=> tb!45929 (= result!46269 true)))

(assert (=> b!55756 t!46930))

(declare-fun b_and!58381 () Bool)

(assert (= b_and!58379 (and (=> t!46930 result!46269) b_and!58381)))

(declare-fun m!60440 () Bool)

(assert (=> b!55755 m!60440))

(declare-fun m!60442 () Bool)

(assert (=> b!55756 m!60442))

(declare-fun m!60444 () Bool)

(assert (=> b!55756 m!60444))

(declare-fun m!60446 () Bool)

(assert (=> b!55757 m!60446))

(assert (=> b!55752 m!60384))

(declare-fun m!60448 () Bool)

(assert (=> b!55753 m!60448))

(declare-fun m!60450 () Bool)

(assert (=> b!55753 m!60450))

(declare-fun m!60452 () Bool)

(assert (=> b!55754 m!60452))

(declare-fun m!60454 () Bool)

(assert (=> d!45440 m!60454))

(assert (=> d!45440 m!60386))

(assert (=> b!55693 d!45440))

(declare-fun e!29406 () Bool)

(declare-fun tp!15719 () Bool)

(declare-fun lt!9973 () Object!257)

(declare-fun b!55766 () Bool)

(assert (=> b!55766 (= e!29406 (and tp!15719 (isStructure!0 lt!9973 lambda!8716)))))

(assert (=> b!55766 (= lt!9973 (ev!15 (ev!15 b!55352)))))

(declare-fun b!55768 () Bool)

(declare-fun e!29405 () Bool)

(declare-fun tp!15720 () Bool)

(assert (=> b!55768 (= e!29405 tp!15720)))

(declare-fun b!55767 () Bool)

(assert (=> b!55767 (= e!29406 e!29405)))

(assert (=> b!55694 (= tp!15708 e!29406)))

(assert (= (and b!55694 (is-OptionStructure!5 (ev!15 b!55352))) b!55766))

(assert (= (and b!55767 (is-Some!294 (value!4075 (ev!15 b!55352)))) b!55768))

(assert (= (and b!55694 (is-Option!300 (ev!15 b!55352))) b!55767))

(declare-fun m!60456 () Bool)

(assert (=> b!55766 m!60456))

(declare-fun bs!27817 () Bool)

(declare-fun b!55769 () Bool)

(assert (= bs!27817 (and b!55769 b!55756)))

(declare-fun lambda!8741 () Int)

(assert (=> bs!27817 (= lambda!8741 lambda!8738)))

(declare-fun bs!27818 () Bool)

(assert (= bs!27818 (and b!55769 b!55731)))

(assert (=> bs!27818 (= lambda!8741 lambda!8729)))

(declare-fun bs!27819 () Bool)

(assert (= bs!27819 (and b!55769 b!55727)))

(assert (=> bs!27819 (= lambda!8741 lambda!8727)))

(declare-fun bs!27820 () Bool)

(assert (= bs!27820 (and b!55769 b!55685)))

(assert (=> bs!27820 (= lambda!8741 lambda!8715)))

(declare-fun bs!27821 () Bool)

(assert (= bs!27821 (and b!55769 b!55725)))

(assert (=> bs!27821 (= lambda!8741 lambda!8726)))

(declare-fun bs!27822 () Bool)

(assert (= bs!27822 (and b!55769 b!55684)))

(assert (=> bs!27822 (= lambda!8741 lambda!8714)))

(declare-fun bs!27823 () Bool)

(assert (= bs!27823 (and b!55769 b!55713)))

(assert (=> bs!27823 (= lambda!8741 lambda!8723)))

(declare-fun bs!27824 () Bool)

(assert (= bs!27824 (and b!55769 b!55729)))

(assert (=> bs!27824 (= lambda!8741 lambda!8728)))

(declare-fun bs!27825 () Bool)

(assert (= bs!27825 (and b!55769 b!55750)))

(assert (=> bs!27825 (= lambda!8741 lambda!8737)))

(declare-fun bs!27826 () Bool)

(assert (= bs!27826 (and b!55769 b!55694)))

(assert (=> bs!27826 (= lambda!8741 lambda!8716)))

(declare-fun bs!27827 () Bool)

(assert (= bs!27827 (and b!55769 b!55733)))

(assert (=> bs!27827 (= lambda!8741 lambda!8730)))

(declare-fun b_next!38671 () Bool)

(assert (=> start!7812 (= b_next!38669 (or (and b!55769 (= lambda!8741 A!2049)) b_next!38671))))

(declare-fun lt!9974 () Object!257)

(declare-fun e!29408 () Bool)

(declare-fun tp!15721 () Bool)

(assert (=> b!55769 (= e!29408 (and tp!15721 (isStructure!0 lt!9974 lambda!8741)))))

(assert (=> b!55769 (= lt!9974 (ev!15 (v!2041 (value!4075 b!55352))))))

(declare-fun b!55771 () Bool)

(declare-fun e!29407 () Bool)

(declare-fun tp!15722 () Bool)

(assert (=> b!55771 (= e!29407 tp!15722)))

(declare-fun b!55770 () Bool)

(assert (=> b!55770 (= e!29408 e!29407)))

(assert (=> b!55692 (= tp!15714 e!29408)))

(assert (= (and b!55692 (is-OptionStructure!5 (v!2041 (value!4075 b!55352)))) b!55769))

(assert (= (and b!55770 (is-Some!294 (value!4075 (v!2041 (value!4075 b!55352))))) b!55771))

(assert (= (and b!55692 (is-Option!300 (v!2041 (value!4075 b!55352)))) b!55770))

(declare-fun m!60458 () Bool)

(assert (=> b!55769 m!60458))

(declare-fun b!55772 () Bool)

(declare-fun lt!9975 () Object!257)

(declare-fun e!29410 () Bool)

(declare-fun tp!15723 () Bool)

(assert (=> b!55772 (= e!29410 (and tp!15723 (isStructure!0 lt!9975 lambda!8714)))))

(assert (=> b!55772 (= lt!9975 (ev!15 (ev!15 s!1791)))))

(declare-fun b!55774 () Bool)

(declare-fun e!29409 () Bool)

(declare-fun tp!15724 () Bool)

(assert (=> b!55774 (= e!29409 tp!15724)))

(declare-fun b!55773 () Bool)

(assert (=> b!55773 (= e!29410 e!29409)))

(assert (=> b!55684 (= tp!15709 e!29410)))

(assert (= (and b!55684 (is-OptionStructure!5 (ev!15 s!1791))) b!55772))

(assert (= (and b!55773 (is-Some!294 (value!4075 (ev!15 s!1791)))) b!55774))

(assert (= (and b!55684 (is-Option!300 (ev!15 s!1791))) b!55773))

(declare-fun m!60460 () Bool)

(assert (=> b!55772 m!60460))

(declare-fun lt!9976 () Object!257)

(declare-fun tp!15725 () Bool)

(declare-fun b!55775 () Bool)

(declare-fun e!29412 () Bool)

(assert (=> b!55775 (= e!29412 (and tp!15725 (isStructure!0 lt!9976 lambda!8715)))))

(assert (=> b!55775 (= lt!9976 (ev!15 (ev!15 a!665)))))

(declare-fun b!55777 () Bool)

(declare-fun e!29411 () Bool)

(declare-fun tp!15726 () Bool)

(assert (=> b!55777 (= e!29411 tp!15726)))

(declare-fun b!55776 () Bool)

(assert (=> b!55776 (= e!29412 e!29411)))

(assert (=> b!55685 (= tp!15713 e!29412)))

(assert (= (and b!55685 (is-OptionStructure!5 (ev!15 a!665))) b!55775))

(assert (= (and b!55776 (is-Some!294 (value!4075 (ev!15 a!665)))) b!55777))

(assert (= (and b!55685 (is-Option!300 (ev!15 a!665))) b!55776))

(declare-fun m!60462 () Bool)

(assert (=> b!55775 m!60462))

(declare-fun bs!27828 () Bool)

(declare-fun b!55778 () Bool)

(assert (= bs!27828 (and b!55778 b!55769)))

(declare-fun lambda!8742 () Int)

(assert (=> bs!27828 (= lambda!8742 lambda!8741)))

(declare-fun bs!27829 () Bool)

(assert (= bs!27829 (and b!55778 b!55756)))

(assert (=> bs!27829 (= lambda!8742 lambda!8738)))

(declare-fun bs!27830 () Bool)

(assert (= bs!27830 (and b!55778 b!55731)))

(assert (=> bs!27830 (= lambda!8742 lambda!8729)))

(declare-fun bs!27831 () Bool)

(assert (= bs!27831 (and b!55778 b!55727)))

(assert (=> bs!27831 (= lambda!8742 lambda!8727)))

(declare-fun bs!27832 () Bool)

(assert (= bs!27832 (and b!55778 b!55685)))

(assert (=> bs!27832 (= lambda!8742 lambda!8715)))

(declare-fun bs!27833 () Bool)

(assert (= bs!27833 (and b!55778 b!55725)))

(assert (=> bs!27833 (= lambda!8742 lambda!8726)))

(declare-fun bs!27834 () Bool)

(assert (= bs!27834 (and b!55778 b!55684)))

(assert (=> bs!27834 (= lambda!8742 lambda!8714)))

(declare-fun bs!27835 () Bool)

(assert (= bs!27835 (and b!55778 b!55713)))

(assert (=> bs!27835 (= lambda!8742 lambda!8723)))

(declare-fun bs!27836 () Bool)

(assert (= bs!27836 (and b!55778 b!55729)))

(assert (=> bs!27836 (= lambda!8742 lambda!8728)))

(declare-fun bs!27837 () Bool)

(assert (= bs!27837 (and b!55778 b!55750)))

(assert (=> bs!27837 (= lambda!8742 lambda!8737)))

(declare-fun bs!27838 () Bool)

(assert (= bs!27838 (and b!55778 b!55694)))

(assert (=> bs!27838 (= lambda!8742 lambda!8716)))

(declare-fun bs!27839 () Bool)

(assert (= bs!27839 (and b!55778 b!55733)))

(assert (=> bs!27839 (= lambda!8742 lambda!8730)))

(declare-fun b_next!38673 () Bool)

(assert (=> start!7812 (= b_next!38671 (or (and b!55778 (= lambda!8742 A!2049)) b_next!38673))))

(declare-fun e!29414 () Bool)

(declare-fun tp!15727 () Bool)

(declare-fun lt!9977 () Object!257)

(assert (=> b!55778 (= e!29414 (and tp!15727 (isStructure!0 lt!9977 lambda!8742)))))

(assert (=> b!55778 (= lt!9977 (ev!15 (v!2041 (value!4075 s!1791))))))

(declare-fun b!55780 () Bool)

(declare-fun e!29413 () Bool)

(declare-fun tp!15728 () Bool)

(assert (=> b!55780 (= e!29413 tp!15728)))

(declare-fun b!55779 () Bool)

(assert (=> b!55779 (= e!29414 e!29413)))

(assert (=> b!55691 (= tp!15710 e!29414)))

(assert (= (and b!55691 (is-OptionStructure!5 (v!2041 (value!4075 s!1791)))) b!55778))

(assert (= (and b!55779 (is-Some!294 (value!4075 (v!2041 (value!4075 s!1791))))) b!55780))

(assert (= (and b!55691 (is-Option!300 (v!2041 (value!4075 s!1791)))) b!55779))

(declare-fun m!60464 () Bool)

(assert (=> b!55778 m!60464))

(declare-fun bs!27840 () Bool)

(declare-fun b!55781 () Bool)

(assert (= bs!27840 (and b!55781 b!55769)))

(declare-fun lambda!8743 () Int)

(assert (=> bs!27840 (= lambda!8743 lambda!8741)))

(declare-fun bs!27841 () Bool)

(assert (= bs!27841 (and b!55781 b!55756)))

(assert (=> bs!27841 (= lambda!8743 lambda!8738)))

(declare-fun bs!27842 () Bool)

(assert (= bs!27842 (and b!55781 b!55731)))

(assert (=> bs!27842 (= lambda!8743 lambda!8729)))

(declare-fun bs!27843 () Bool)

(assert (= bs!27843 (and b!55781 b!55727)))

(assert (=> bs!27843 (= lambda!8743 lambda!8727)))

(declare-fun bs!27844 () Bool)

(assert (= bs!27844 (and b!55781 b!55685)))

(assert (=> bs!27844 (= lambda!8743 lambda!8715)))

(declare-fun bs!27845 () Bool)

(assert (= bs!27845 (and b!55781 b!55778)))

(assert (=> bs!27845 (= lambda!8743 lambda!8742)))

(declare-fun bs!27846 () Bool)

(assert (= bs!27846 (and b!55781 b!55725)))

(assert (=> bs!27846 (= lambda!8743 lambda!8726)))

(declare-fun bs!27847 () Bool)

(assert (= bs!27847 (and b!55781 b!55684)))

(assert (=> bs!27847 (= lambda!8743 lambda!8714)))

(declare-fun bs!27848 () Bool)

(assert (= bs!27848 (and b!55781 b!55713)))

(assert (=> bs!27848 (= lambda!8743 lambda!8723)))

(declare-fun bs!27849 () Bool)

(assert (= bs!27849 (and b!55781 b!55729)))

(assert (=> bs!27849 (= lambda!8743 lambda!8728)))

(declare-fun bs!27850 () Bool)

(assert (= bs!27850 (and b!55781 b!55750)))

(assert (=> bs!27850 (= lambda!8743 lambda!8737)))

(declare-fun bs!27851 () Bool)

(assert (= bs!27851 (and b!55781 b!55694)))

(assert (=> bs!27851 (= lambda!8743 lambda!8716)))

(declare-fun bs!27852 () Bool)

(assert (= bs!27852 (and b!55781 b!55733)))

(assert (=> bs!27852 (= lambda!8743 lambda!8730)))

(declare-fun b_next!38675 () Bool)

(assert (=> start!7812 (= b_next!38673 (or (and b!55781 (= lambda!8743 A!2049)) b_next!38675))))

(declare-fun tp!15729 () Bool)

(declare-fun lt!9978 () Object!257)

(declare-fun e!29416 () Bool)

(assert (=> b!55781 (= e!29416 (and tp!15729 (isStructure!0 lt!9978 lambda!8743)))))

(assert (=> b!55781 (= lt!9978 (ev!15 (v!2041 (value!4075 a!665))))))

(declare-fun b!55783 () Bool)

(declare-fun e!29415 () Bool)

(declare-fun tp!15730 () Bool)

(assert (=> b!55783 (= e!29415 tp!15730)))

(declare-fun b!55782 () Bool)

(assert (=> b!55782 (= e!29416 e!29415)))

(assert (=> b!55689 (= tp!15711 e!29416)))

(assert (= (and b!55689 (is-OptionStructure!5 (v!2041 (value!4075 a!665)))) b!55781))

(assert (= (and b!55782 (is-Some!294 (value!4075 (v!2041 (value!4075 a!665))))) b!55783))

(assert (= (and b!55689 (is-Option!300 (v!2041 (value!4075 a!665)))) b!55782))

(declare-fun m!60466 () Bool)

(assert (=> b!55781 m!60466))

(declare-fun b_lambda!14725 () Bool)

(assert (= b_lambda!14723 (or (and b!55781 (= lambda!8743 A!2049)) (and b!55684 (= lambda!8714 A!2049)) (and b!55727 (= lambda!8727 A!2049)) (and b!55731 (= lambda!8729 A!2049)) (and b!55750 (= lambda!8737 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and b!55729 (= lambda!8728 A!2049)) (and b!55725 (= lambda!8726 A!2049)) (and b!55778 (= lambda!8742 A!2049)) (and b!55713 (= lambda!8723 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and start!7812 b_free!7261) (and b!55756 (= lambda!8738 A!2049)) (and b!55769 (= lambda!8741 A!2049)) (and b!55733 (= lambda!8730 A!2049)) b_lambda!14725)))

(declare-fun bs!27853 () Bool)

(declare-fun d!45442 () Bool)

(assert (= bs!27853 (and d!45442 b!55713)))

(assert (=> bs!27853 (= (dynLambda!906 lambda!8723 (Option!300 lt!9968)) true)))

(assert (=> (and b!55713 (= lambda!8723 A!2049) b!55756) d!45442))

(declare-fun bs!27854 () Bool)

(declare-fun d!45444 () Bool)

(assert (= bs!27854 (and d!45444 b!55685)))

(assert (=> bs!27854 (= (dynLambda!906 lambda!8715 (Option!300 lt!9968)) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) b!55756) d!45444))

(declare-fun bs!27855 () Bool)

(declare-fun d!45446 () Bool)

(assert (= bs!27855 (and d!45446 b!55778)))

(assert (=> bs!27855 (= (dynLambda!906 lambda!8742 (Option!300 lt!9968)) true)))

(assert (=> (and b!55778 (= lambda!8742 A!2049) b!55756) d!45446))

(declare-fun bs!27856 () Bool)

(declare-fun d!45448 () Bool)

(assert (= bs!27856 (and d!45448 b!55729)))

(assert (=> bs!27856 (= (dynLambda!906 lambda!8728 (Option!300 lt!9968)) true)))

(assert (=> (and b!55729 (= lambda!8728 A!2049) b!55756) d!45448))

(declare-fun bs!27857 () Bool)

(declare-fun d!45450 () Bool)

(assert (= bs!27857 (and d!45450 b!55750)))

(assert (=> bs!27857 (= (dynLambda!906 lambda!8737 (Option!300 lt!9968)) true)))

(assert (=> (and b!55750 (= lambda!8737 A!2049) b!55756) d!45450))

(declare-fun bs!27858 () Bool)

(declare-fun d!45452 () Bool)

(assert (= bs!27858 (and d!45452 b!55756)))

(assert (=> bs!27858 (= (dynLambda!906 lambda!8738 (Option!300 lt!9968)) true)))

(assert (=> (and b!55756 (= lambda!8738 A!2049)) d!45452))

(declare-fun bs!27859 () Bool)

(declare-fun d!45454 () Bool)

(assert (= bs!27859 (and d!45454 b!55769)))

(assert (=> bs!27859 (= (dynLambda!906 lambda!8741 (Option!300 lt!9968)) true)))

(assert (=> (and b!55769 (= lambda!8741 A!2049) b!55756) d!45454))

(declare-fun bs!27860 () Bool)

(declare-fun d!45456 () Bool)

(assert (= bs!27860 (and d!45456 b!55781)))

(assert (=> bs!27860 (= (dynLambda!906 lambda!8743 (Option!300 lt!9968)) true)))

(assert (=> (and b!55781 (= lambda!8743 A!2049) b!55756) d!45456))

(declare-fun bs!27861 () Bool)

(declare-fun d!45458 () Bool)

(assert (= bs!27861 (and d!45458 b!55733)))

(assert (=> bs!27861 (= (dynLambda!906 lambda!8730 (Option!300 lt!9968)) true)))

(assert (=> (and b!55733 (= lambda!8730 A!2049) b!55756) d!45458))

(declare-fun bs!27862 () Bool)

(declare-fun d!45460 () Bool)

(assert (= bs!27862 (and d!45460 b!55727)))

(assert (=> bs!27862 (= (dynLambda!906 lambda!8727 (Option!300 lt!9968)) true)))

(assert (=> (and b!55727 (= lambda!8727 A!2049) b!55756) d!45460))

(declare-fun bs!27863 () Bool)

(declare-fun d!45462 () Bool)

(assert (= bs!27863 (and d!45462 b!55684)))

(assert (=> bs!27863 (= (dynLambda!906 lambda!8714 (Option!300 lt!9968)) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) b!55756) d!45462))

(declare-fun bs!27864 () Bool)

(declare-fun d!45464 () Bool)

(assert (= bs!27864 (and d!45464 b!55725)))

(assert (=> bs!27864 (= (dynLambda!906 lambda!8726 (Option!300 lt!9968)) true)))

(assert (=> (and b!55725 (= lambda!8726 A!2049) b!55756) d!45464))

(declare-fun bs!27865 () Bool)

(declare-fun d!45466 () Bool)

(assert (= bs!27865 (and d!45466 b!55694)))

(assert (=> bs!27865 (= (dynLambda!906 lambda!8716 (Option!300 lt!9968)) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) b!55756) d!45466))

(declare-fun bs!27866 () Bool)

(declare-fun d!45468 () Bool)

(assert (= bs!27866 (and d!45468 b!55731)))

(assert (=> bs!27866 (= (dynLambda!906 lambda!8729 (Option!300 lt!9968)) true)))

(assert (=> (and b!55731 (= lambda!8729 A!2049) b!55756) d!45468))

(declare-fun b_lambda!14727 () Bool)

(assert (= b_lambda!14717 (or (and b!55781 (= lambda!8743 A!2049)) (and b!55684 (= lambda!8714 A!2049)) (and b!55727 (= lambda!8727 A!2049)) (and b!55731 (= lambda!8729 A!2049)) (and b!55750 (= lambda!8737 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and b!55729 (= lambda!8728 A!2049)) (and b!55725 (= lambda!8726 A!2049)) (and b!55778 (= lambda!8742 A!2049)) (and b!55713 (= lambda!8723 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and start!7812 b_free!7261) (and b!55756 (= lambda!8738 A!2049)) (and b!55769 (= lambda!8741 A!2049)) (and b!55733 (= lambda!8730 A!2049)) b_lambda!14727)))

(declare-fun bs!27867 () Bool)

(declare-fun d!45470 () Bool)

(assert (= bs!27867 (and d!45470 b!55756)))

(assert (=> bs!27867 (= (dynLambda!906 lambda!8738 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55756 (= lambda!8738 A!2049) b!55747) d!45470))

(declare-fun bs!27868 () Bool)

(declare-fun d!45472 () Bool)

(assert (= bs!27868 (and d!45472 b!55684)))

(assert (=> bs!27868 (= (dynLambda!906 lambda!8714 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) b!55747) d!45472))

(declare-fun bs!27869 () Bool)

(declare-fun d!45474 () Bool)

(assert (= bs!27869 (and d!45474 b!55778)))

(assert (=> bs!27869 (= (dynLambda!906 lambda!8742 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55778 (= lambda!8742 A!2049) b!55747) d!45474))

(declare-fun bs!27870 () Bool)

(declare-fun d!45476 () Bool)

(assert (= bs!27870 (and d!45476 b!55694)))

(assert (=> bs!27870 (= (dynLambda!906 lambda!8716 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) b!55747) d!45476))

(declare-fun bs!27871 () Bool)

(declare-fun d!45478 () Bool)

(assert (= bs!27871 (and d!45478 b!55750)))

(assert (=> bs!27871 (= (dynLambda!906 lambda!8737 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55750 (= lambda!8737 A!2049) b!55747) d!45478))

(declare-fun bs!27872 () Bool)

(declare-fun d!45480 () Bool)

(assert (= bs!27872 (and d!45480 b!55725)))

(assert (=> bs!27872 (= (dynLambda!906 lambda!8726 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55725 (= lambda!8726 A!2049) b!55747) d!45480))

(declare-fun bs!27873 () Bool)

(declare-fun d!45482 () Bool)

(assert (= bs!27873 (and d!45482 b!55713)))

(assert (=> bs!27873 (= (dynLambda!906 lambda!8723 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55713 (= lambda!8723 A!2049) b!55747) d!45482))

(declare-fun bs!27874 () Bool)

(declare-fun d!45484 () Bool)

(assert (= bs!27874 (and d!45484 b!55731)))

(assert (=> bs!27874 (= (dynLambda!906 lambda!8729 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55731 (= lambda!8729 A!2049) b!55747) d!45484))

(declare-fun bs!27875 () Bool)

(declare-fun d!45486 () Bool)

(assert (= bs!27875 (and d!45486 b!55727)))

(assert (=> bs!27875 (= (dynLambda!906 lambda!8727 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55727 (= lambda!8727 A!2049) b!55747) d!45486))

(declare-fun bs!27876 () Bool)

(declare-fun d!45488 () Bool)

(assert (= bs!27876 (and d!45488 b!55769)))

(assert (=> bs!27876 (= (dynLambda!906 lambda!8741 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55769 (= lambda!8741 A!2049) b!55747) d!45488))

(declare-fun bs!27877 () Bool)

(declare-fun d!45490 () Bool)

(assert (= bs!27877 (and d!45490 b!55733)))

(assert (=> bs!27877 (= (dynLambda!906 lambda!8730 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55733 (= lambda!8730 A!2049) b!55747) d!45490))

(declare-fun bs!27878 () Bool)

(declare-fun d!45492 () Bool)

(assert (= bs!27878 (and d!45492 b!55685)))

(assert (=> bs!27878 (= (dynLambda!906 lambda!8715 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) b!55747) d!45492))

(declare-fun bs!27879 () Bool)

(declare-fun d!45494 () Bool)

(assert (= bs!27879 (and d!45494 b!55781)))

(assert (=> bs!27879 (= (dynLambda!906 lambda!8743 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55781 (= lambda!8743 A!2049) b!55747) d!45494))

(declare-fun bs!27880 () Bool)

(declare-fun d!45496 () Bool)

(assert (= bs!27880 (and d!45496 b!55729)))

(assert (=> bs!27880 (= (dynLambda!906 lambda!8728 (Integer!246 lt!9967)) true)))

(assert (=> (and b!55729 (= lambda!8728 A!2049) b!55747) d!45496))

(declare-fun b_lambda!14729 () Bool)

(assert (= b_lambda!14721 (or (and b!55781 (= lambda!8743 A!2049)) (and b!55684 (= lambda!8714 A!2049)) (and b!55727 (= lambda!8727 A!2049)) (and b!55731 (= lambda!8729 A!2049)) (and b!55750 (= lambda!8737 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and b!55729 (= lambda!8728 A!2049)) (and b!55725 (= lambda!8726 A!2049)) (and b!55778 (= lambda!8742 A!2049)) (and b!55713 (= lambda!8723 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and start!7812 b_free!7261) (and b!55756 (= lambda!8738 A!2049)) (and b!55769 (= lambda!8741 A!2049)) (and b!55733 (= lambda!8730 A!2049)) b_lambda!14729)))

(declare-fun bs!27881 () Bool)

(declare-fun d!45498 () Bool)

(assert (= bs!27881 (and d!45498 b!55756)))

(assert (=> bs!27881 (= (dynLambda!906 lambda!8738 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55756 (= lambda!8738 A!2049) b!55753) d!45498))

(declare-fun bs!27882 () Bool)

(declare-fun d!45500 () Bool)

(assert (= bs!27882 (and d!45500 b!55713)))

(assert (=> bs!27882 (= (dynLambda!906 lambda!8723 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55713 (= lambda!8723 A!2049) b!55753) d!45500))

(declare-fun bs!27883 () Bool)

(declare-fun d!45502 () Bool)

(assert (= bs!27883 (and d!45502 b!55685)))

(assert (=> bs!27883 (= (dynLambda!906 lambda!8715 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) b!55753) d!45502))

(declare-fun bs!27884 () Bool)

(declare-fun d!45504 () Bool)

(assert (= bs!27884 (and d!45504 b!55727)))

(assert (=> bs!27884 (= (dynLambda!906 lambda!8727 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55727 (= lambda!8727 A!2049) b!55753) d!45504))

(declare-fun bs!27885 () Bool)

(declare-fun d!45506 () Bool)

(assert (= bs!27885 (and d!45506 b!55778)))

(assert (=> bs!27885 (= (dynLambda!906 lambda!8742 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55778 (= lambda!8742 A!2049) b!55753) d!45506))

(declare-fun bs!27886 () Bool)

(declare-fun d!45508 () Bool)

(assert (= bs!27886 (and d!45508 b!55684)))

(assert (=> bs!27886 (= (dynLambda!906 lambda!8714 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) b!55753) d!45508))

(declare-fun bs!27887 () Bool)

(declare-fun d!45510 () Bool)

(assert (= bs!27887 (and d!45510 b!55750)))

(assert (=> bs!27887 (= (dynLambda!906 lambda!8737 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55750 (= lambda!8737 A!2049) b!55753) d!45510))

(declare-fun bs!27888 () Bool)

(declare-fun d!45512 () Bool)

(assert (= bs!27888 (and d!45512 b!55694)))

(assert (=> bs!27888 (= (dynLambda!906 lambda!8716 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) b!55753) d!45512))

(declare-fun bs!27889 () Bool)

(declare-fun d!45514 () Bool)

(assert (= bs!27889 (and d!45514 b!55731)))

(assert (=> bs!27889 (= (dynLambda!906 lambda!8729 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55731 (= lambda!8729 A!2049) b!55753) d!45514))

(declare-fun bs!27890 () Bool)

(declare-fun d!45516 () Bool)

(assert (= bs!27890 (and d!45516 b!55725)))

(assert (=> bs!27890 (= (dynLambda!906 lambda!8726 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55725 (= lambda!8726 A!2049) b!55753) d!45516))

(declare-fun bs!27891 () Bool)

(declare-fun d!45518 () Bool)

(assert (= bs!27891 (and d!45518 b!55769)))

(assert (=> bs!27891 (= (dynLambda!906 lambda!8741 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55769 (= lambda!8741 A!2049) b!55753) d!45518))

(declare-fun bs!27892 () Bool)

(declare-fun d!45520 () Bool)

(assert (= bs!27892 (and d!45520 b!55729)))

(assert (=> bs!27892 (= (dynLambda!906 lambda!8728 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55729 (= lambda!8728 A!2049) b!55753) d!45520))

(declare-fun bs!27893 () Bool)

(declare-fun d!45522 () Bool)

(assert (= bs!27893 (and d!45522 b!55781)))

(assert (=> bs!27893 (= (dynLambda!906 lambda!8743 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55781 (= lambda!8743 A!2049) b!55753) d!45522))

(declare-fun bs!27894 () Bool)

(declare-fun d!45524 () Bool)

(assert (= bs!27894 (and d!45524 b!55733)))

(assert (=> bs!27894 (= (dynLambda!906 lambda!8730 (Integer!246 lt!9970)) true)))

(assert (=> (and b!55733 (= lambda!8730 A!2049) b!55753) d!45524))

(declare-fun b_lambda!14731 () Bool)

(assert (= b_lambda!14719 (or (and b!55781 (= lambda!8743 A!2049)) (and b!55684 (= lambda!8714 A!2049)) (and b!55727 (= lambda!8727 A!2049)) (and b!55731 (= lambda!8729 A!2049)) (and b!55750 (= lambda!8737 A!2049)) (and b!55694 (= lambda!8716 A!2049)) (and b!55729 (= lambda!8728 A!2049)) (and b!55725 (= lambda!8726 A!2049)) (and b!55778 (= lambda!8742 A!2049)) (and b!55713 (= lambda!8723 A!2049)) (and b!55685 (= lambda!8715 A!2049)) (and start!7812 b_free!7261) (and b!55756 (= lambda!8738 A!2049)) (and b!55769 (= lambda!8741 A!2049)) (and b!55733 (= lambda!8730 A!2049)) b_lambda!14731)))

(declare-fun bs!27895 () Bool)

(declare-fun d!45526 () Bool)

(assert (= bs!27895 (and d!45526 b!55731)))

(assert (=> bs!27895 (= (dynLambda!906 lambda!8729 (Option!300 lt!9965)) true)))

(assert (=> (and b!55731 (= lambda!8729 A!2049) b!55750) d!45526))

(declare-fun bs!27896 () Bool)

(declare-fun d!45528 () Bool)

(assert (= bs!27896 (and d!45528 b!55684)))

(assert (=> bs!27896 (= (dynLambda!906 lambda!8714 (Option!300 lt!9965)) true)))

(assert (=> (and b!55684 (= lambda!8714 A!2049) b!55750) d!45528))

(declare-fun bs!27897 () Bool)

(declare-fun d!45530 () Bool)

(assert (= bs!27897 (and d!45530 b!55729)))

(assert (=> bs!27897 (= (dynLambda!906 lambda!8728 (Option!300 lt!9965)) true)))

(assert (=> (and b!55729 (= lambda!8728 A!2049) b!55750) d!45530))

(declare-fun bs!27898 () Bool)

(declare-fun d!45532 () Bool)

(assert (= bs!27898 (and d!45532 b!55725)))

(assert (=> bs!27898 (= (dynLambda!906 lambda!8726 (Option!300 lt!9965)) true)))

(assert (=> (and b!55725 (= lambda!8726 A!2049) b!55750) d!45532))

(declare-fun bs!27899 () Bool)

(declare-fun d!45534 () Bool)

(assert (= bs!27899 (and d!45534 b!55756)))

(assert (=> bs!27899 (= (dynLambda!906 lambda!8738 (Option!300 lt!9965)) true)))

(assert (=> (and b!55756 (= lambda!8738 A!2049) b!55750) d!45534))

(declare-fun bs!27900 () Bool)

(declare-fun d!45536 () Bool)

(assert (= bs!27900 (and d!45536 b!55781)))

(assert (=> bs!27900 (= (dynLambda!906 lambda!8743 (Option!300 lt!9965)) true)))

(assert (=> (and b!55781 (= lambda!8743 A!2049) b!55750) d!45536))

(declare-fun bs!27901 () Bool)

(declare-fun d!45538 () Bool)

(assert (= bs!27901 (and d!45538 b!55778)))

(assert (=> bs!27901 (= (dynLambda!906 lambda!8742 (Option!300 lt!9965)) true)))

(assert (=> (and b!55778 (= lambda!8742 A!2049) b!55750) d!45538))

(declare-fun bs!27902 () Bool)

(declare-fun d!45540 () Bool)

(assert (= bs!27902 (and d!45540 b!55685)))

(assert (=> bs!27902 (= (dynLambda!906 lambda!8715 (Option!300 lt!9965)) true)))

(assert (=> (and b!55685 (= lambda!8715 A!2049) b!55750) d!45540))

(declare-fun bs!27903 () Bool)

(declare-fun d!45542 () Bool)

(assert (= bs!27903 (and d!45542 b!55713)))

(assert (=> bs!27903 (= (dynLambda!906 lambda!8723 (Option!300 lt!9965)) true)))

(assert (=> (and b!55713 (= lambda!8723 A!2049) b!55750) d!45542))

(declare-fun bs!27904 () Bool)

(declare-fun d!45544 () Bool)

(assert (= bs!27904 (and d!45544 b!55750)))

(assert (=> bs!27904 (= (dynLambda!906 lambda!8737 (Option!300 lt!9965)) true)))

(assert (=> (and b!55750 (= lambda!8737 A!2049)) d!45544))

(declare-fun bs!27905 () Bool)

(declare-fun d!45546 () Bool)

(assert (= bs!27905 (and d!45546 b!55694)))

(assert (=> bs!27905 (= (dynLambda!906 lambda!8716 (Option!300 lt!9965)) true)))

(assert (=> (and b!55694 (= lambda!8716 A!2049) b!55750) d!45546))

(declare-fun bs!27906 () Bool)

(declare-fun d!45548 () Bool)

(assert (= bs!27906 (and d!45548 b!55727)))

(assert (=> bs!27906 (= (dynLambda!906 lambda!8727 (Option!300 lt!9965)) true)))

(assert (=> (and b!55727 (= lambda!8727 A!2049) b!55750) d!45548))

(declare-fun bs!27907 () Bool)

(declare-fun d!45550 () Bool)

(assert (= bs!27907 (and d!45550 b!55733)))

(assert (=> bs!27907 (= (dynLambda!906 lambda!8730 (Option!300 lt!9965)) true)))

(assert (=> (and b!55733 (= lambda!8730 A!2049) b!55750) d!45550))

(declare-fun bs!27908 () Bool)

(declare-fun d!45552 () Bool)

(assert (= bs!27908 (and d!45552 b!55769)))

(assert (=> bs!27908 (= (dynLambda!906 lambda!8741 (Option!300 lt!9965)) true)))

(assert (=> (and b!55769 (= lambda!8741 A!2049) b!55750) d!45552))

(push 1)

(assert (not b!55780))

(assert (not b!55733))

(assert (not b!55717))

(assert (not b!55727))

(assert (not d!45438))

(assert (not b!55732))

(assert (not d!45436))

(assert (not b!55712))

(assert (not b!55778))

(assert (not b!55728))

(assert (not d!45426))

(assert (not b!55713))

(assert (not b!55714))

(assert (not b!55771))

(assert (not b!55750))

(assert (not b_lambda!14727))

(assert (not d!45432))

(assert (not b!55755))

(assert (not b!55781))

(assert (not b!55783))

(assert (not b!55775))

(assert (not b_lambda!14731))

(assert (not b!55777))

(assert (not b!55756))

(assert (not b_lambda!14715))

(assert (not b!55772))

(assert (not b!55724))

(assert (not d!45434))

(assert (not d!45440))

(assert (not b!55768))

(assert (not b_lambda!14711))

(assert (not b_lambda!14729))

(assert (not b!55719))

(assert (not b!55725))

(assert (not b!55730))

(assert (not b_lambda!14713))

(assert (not b!55716))

(assert (not b!55774))

(assert (not b!55729))

(assert (not b!55753))

(assert (not b!55752))

(assert (not b!55715))

(assert (not b!55766))

(assert (not b!55731))

(assert (not b!55718))

(assert (not b_lambda!14725))

(assert (not b!55747))

(assert (not b_next!38675))

(assert (not d!45428))

(assert (not d!45430))

(assert (not b!55726))

(assert (not b!55748))

(assert (not b!55746))

(assert b_and!58381)

(assert (not b!55754))

(assert (not b!55749))

(assert (not b_lambda!14709))

(assert (not b!55769))

(assert (not b!55751))

(assert (not b!55757))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58381)

(assert (not b_next!38675))

(check-sat)

(pop 1)

