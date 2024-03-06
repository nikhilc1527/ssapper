; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7792 () Bool)

(assert start!7792)

(declare-fun b_free!7255 () Bool)

(declare-fun b_next!38581 () Bool)

(assert (=> start!7792 (= b_free!7255 (not b_next!38581))))

(declare-fun tp!15613 () Bool)

(declare-fun b_and!58343 () Bool)

(assert (=> start!7792 (= tp!15613 b_and!58343)))

(assert (=> start!7792 true))

(declare-fun order!431 () Int)

(declare-fun A!2078 () Int)

(declare-fun lambda!8622 () Int)

(declare-fun dynLambda!901 (Int Int) Int)

(assert (=> start!7792 (< (dynLambda!901 order!431 A!2078) (dynLambda!901 order!431 lambda!8622))))

(declare-fun bs!27570 () Bool)

(declare-fun b!55380 () Bool)

(assert (= bs!27570 (and b!55380 start!7792)))

(declare-fun lambda!8623 () Int)

(assert (=> bs!27570 (not (= lambda!8623 lambda!8622))))

(declare-fun b_next!38583 () Bool)

(assert (=> start!7792 (= b_next!38581 (or (and b!55380 (= lambda!8623 A!2078)) b_next!38583))))

(declare-datatypes () ((Option!293 (Some!291 (v!2038 Object!254)) (None!292)) (Object!254 (BigIntStructure!2) (StructureExt!2 (__x!132 Int)) (OptionStructure!2 (ev!12 Object!254)) (Option!294 (value!4066 Option!293)) (Integer!243 (value!4067 Int)) (Open!254 (value!4068 Int)))))

(declare-fun lt!9852 () Object!254)

(declare-fun e!29173 () Bool)

(declare-fun tp!15614 () Bool)

(declare-fun isStructure!0 (Object!254 Int) Bool)

(assert (=> b!55380 (= e!29173 (and tp!15614 (isStructure!0 lt!9852 lambda!8623)))))

(declare-fun s!1795 () Object!254)

(assert (=> b!55380 (= lt!9852 (ev!12 s!1795))))

(declare-fun e!29172 () Bool)

(declare-fun b!55381 () Bool)

(declare-fun b!55356 () Option!293)

(declare-fun a!669 () Option!293)

(declare-fun someLaw!0 (Int Object!254 Object!254 Object!254) Bool)

(assert (=> b!55381 (= e!29172 (not (someLaw!0 lambda!8622 s!1795 (Option!294 a!669) (Option!294 b!55356))))))

(declare-fun b!55382 () Bool)

(declare-fun e!29170 () Bool)

(assert (=> b!55382 (= e!29173 e!29170)))

(declare-fun b!55383 () Bool)

(declare-fun tp!15617 () Bool)

(assert (=> b!55383 (= e!29170 tp!15617)))

(declare-fun b!55384 () Bool)

(declare-fun tp!15616 () Bool)

(declare-fun lt!9851 () Object!254)

(declare-fun e!29169 () Bool)

(declare-fun dynLambda!902 (Int Object!254) Bool)

(assert (=> b!55384 (= e!29169 (and tp!15616 (dynLambda!902 A!2078 lt!9851)))))

(assert (=> b!55384 (= lt!9851 (v!2038 b!55356))))

(declare-fun lt!9853 () Object!254)

(declare-fun e!29171 () Bool)

(declare-fun tp!15615 () Bool)

(declare-fun b!55385 () Bool)

(assert (=> b!55385 (= e!29171 (and tp!15615 (dynLambda!902 A!2078 lt!9853)))))

(assert (=> b!55385 (= lt!9853 (v!2038 a!669))))

(declare-fun res!25624 () Bool)

(assert (=> start!7792 (=> (not res!25624) (not e!29172))))

(assert (=> start!7792 (= res!25624 (isStructure!0 s!1795 lambda!8622))))

(assert (=> start!7792 e!29172))

(declare-fun lt!9854 () Object!254)

(assert (=> start!7792 (= lt!9854 s!1795)))

(assert (=> start!7792 (and e!29173 (isStructure!0 lt!9854 lambda!8622))))

(assert (=> start!7792 tp!15613))

(assert (=> start!7792 e!29171))

(assert (=> start!7792 e!29169))

(assert (= (and start!7792 res!25624) b!55381))

(assert (= (and start!7792 (is-OptionStructure!2 s!1795)) b!55380))

(assert (= (and b!55382 (is-Some!291 (value!4066 s!1795))) b!55383))

(assert (= (and start!7792 (is-Option!294 s!1795)) b!55382))

(assert (= (and start!7792 (is-Some!291 a!669)) b!55385))

(assert (= (and start!7792 (is-Some!291 b!55356)) b!55384))

(declare-fun b_lambda!14653 () Bool)

(assert (=> (not b_lambda!14653) (not b!55384)))

(declare-fun t!46900 () Bool)

(declare-fun tb!45899 () Bool)

(assert (=> (and start!7792 (= A!2078 A!2078) t!46900) tb!45899))

(declare-fun result!46233 () Bool)

(assert (=> tb!45899 (= result!46233 true)))

(assert (=> b!55384 t!46900))

(declare-fun b_and!58345 () Bool)

(assert (= b_and!58343 (and (=> t!46900 result!46233) b_and!58345)))

(declare-fun b_lambda!14655 () Bool)

(assert (=> (not b_lambda!14655) (not b!55385)))

(declare-fun t!46902 () Bool)

(declare-fun tb!45901 () Bool)

(assert (=> (and start!7792 (= A!2078 A!2078) t!46902) tb!45901))

(declare-fun result!46235 () Bool)

(assert (=> tb!45901 (= result!46235 true)))

(assert (=> b!55385 t!46902))

(declare-fun b_and!58347 () Bool)

(assert (= b_and!58345 (and (=> t!46902 result!46235) b_and!58347)))

(declare-fun m!60124 () Bool)

(assert (=> b!55380 m!60124))

(declare-fun m!60126 () Bool)

(assert (=> b!55385 m!60126))

(declare-fun m!60128 () Bool)

(assert (=> b!55384 m!60128))

(declare-fun m!60130 () Bool)

(assert (=> start!7792 m!60130))

(declare-fun m!60132 () Bool)

(assert (=> start!7792 m!60132))

(declare-fun m!60134 () Bool)

(assert (=> b!55381 m!60134))

(push 1)

(assert (not b!55380))

(assert (not start!7792))

(assert (not b!55383))

(assert (not b!55381))

(assert (not b_lambda!14655))

(assert (not b!55384))

(assert (not b_lambda!14653))

(assert (not b_next!38583))

(assert b_and!58347)

(assert (not b!55385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58347)

(assert (not b_next!38583))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14657 () Bool)

(assert (= b_lambda!14653 (or (and b!55380 (= lambda!8623 A!2078)) (and start!7792 b_free!7255) b_lambda!14657)))

(declare-fun bs!27571 () Bool)

(declare-fun d!45330 () Bool)

(assert (= bs!27571 (and d!45330 b!55380)))

(assert (=> bs!27571 (= (dynLambda!902 lambda!8623 lt!9851) true)))

(assert (=> (and b!55380 (= lambda!8623 A!2078) b!55384) d!45330))

(declare-fun b_lambda!14659 () Bool)

(assert (= b_lambda!14655 (or (and b!55380 (= lambda!8623 A!2078)) (and start!7792 b_free!7255) b_lambda!14659)))

(declare-fun bs!27572 () Bool)

(declare-fun d!45332 () Bool)

(assert (= bs!27572 (and d!45332 b!55380)))

(assert (=> bs!27572 (= (dynLambda!902 lambda!8623 lt!9853) true)))

(assert (=> (and b!55380 (= lambda!8623 A!2078) b!55385) d!45332))

(push 1)

(assert (not b_lambda!14659))

(assert (not b!55380))

(assert (not start!7792))

(assert (not b!55383))

(assert (not b_lambda!14657))

(assert (not b!55381))

(assert (not b!55384))

(assert (not b_next!38583))

(assert b_and!58347)

(assert (not b!55385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58347)

(assert (not b_next!38583))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27573 () Bool)

(declare-fun b!55406 () Bool)

(assert (= bs!27573 (and b!55406 start!7792)))

(declare-fun lambda!8630 () Int)

(assert (=> bs!27573 (not (= lambda!8630 lambda!8622))))

(declare-fun bs!27574 () Bool)

(assert (= bs!27574 (and b!55406 b!55380)))

(assert (=> bs!27574 (= lambda!8630 lambda!8623)))

(declare-fun b_next!38585 () Bool)

(assert (=> start!7792 (= b_next!38583 (or (and b!55406 (= lambda!8630 A!2078)) b_next!38585))))

(declare-fun e!29185 () Bool)

(declare-fun b!55404 () Bool)

(declare-fun someLaw!1 (Object!254 Int Int) Bool)

(assert (=> b!55404 (= e!29185 (someLaw!1 s!1795 (value!4067 (Option!294 a!669)) (value!4067 (Option!294 b!55356))))))

(assert (=> b!55404 (is-Integer!243 (Option!294 b!55356))))

(assert (=> b!55404 (is-Integer!243 (Option!294 a!669))))

(declare-fun b!55405 () Bool)

(declare-fun e!29184 () Bool)

(declare-fun isOption!11 (Option!293 Int) Bool)

(assert (=> b!55405 (= e!29184 (isOption!11 (value!4066 (Option!294 b!55356)) lambda!8630))))

(declare-fun e!29188 () Bool)

(declare-fun someLaw!2 (Int Object!254 Option!293 Option!293) Bool)

(assert (=> b!55406 (= e!29188 (someLaw!2 lambda!8630 s!1795 (value!4066 (Option!294 a!669)) (value!4066 (Option!294 b!55356))))))

(assert (=> b!55406 e!29184))

(declare-fun res!25636 () Bool)

(assert (=> b!55406 (=> (not res!25636) (not e!29184))))

(assert (=> b!55406 (= res!25636 (is-Option!294 (Option!294 b!55356)))))

(declare-fun e!29186 () Bool)

(assert (=> b!55406 e!29186))

(declare-fun res!25635 () Bool)

(assert (=> b!55406 (=> (not res!25635) (not e!29186))))

(assert (=> b!55406 (= res!25635 (is-Option!294 (Option!294 a!669)))))

(declare-fun e!29187 () Bool)

(declare-fun b!55407 () Bool)

(declare-fun someLaw!8 (Object!254 Object!254 Object!254) Bool)

(assert (=> b!55407 (= e!29187 (= true (someLaw!8 s!1795 (Option!294 a!669) (Option!294 b!55356))))))

(declare-fun b!55408 () Bool)

(assert (=> b!55408 (= e!29186 (isOption!11 (value!4066 (Option!294 a!669)) lambda!8630))))

(declare-fun b!55409 () Bool)

(assert (=> b!55409 (= e!29185 e!29188)))

(declare-fun c!12044 () Bool)

(declare-fun isStructureExt!0 (Object!254 Int) Bool)

(assert (=> b!55409 (= c!12044 (isStructureExt!0 s!1795 lambda!8622))))

(declare-fun b!55410 () Bool)

(declare-fun someLaw!4 (Int Object!254 Object!254 Object!254) Bool)

(assert (=> b!55410 (= e!29188 (someLaw!4 lambda!8622 s!1795 (Option!294 a!669) (Option!294 b!55356)))))

(declare-fun b!55411 () Bool)

(declare-fun res!25637 () Bool)

(assert (=> b!55411 (=> (not res!25637) (not e!29187))))

(declare-fun lt!9859 () Bool)

(assert (=> b!55411 (= res!25637 lt!9859)))

(declare-fun someLaw!7 (Object!254 Object!254 Object!254) Bool)

(assert (=> b!55411 (= lt!9859 (someLaw!7 s!1795 (Option!294 a!669) (Option!294 b!55356)))))

(declare-fun doSomething!1 (Int Object!254 Object!254 Object!254) Object!254)

(assert (=> b!55411 (= lt!9859 (= (doSomething!1 lambda!8622 s!1795 (Option!294 a!669) (Option!294 b!55356)) (doSomething!1 lambda!8622 s!1795 (Option!294 b!55356) (Option!294 a!669))))))

(declare-fun d!45334 () Bool)

(assert (=> d!45334 e!29187))

(declare-fun res!25638 () Bool)

(assert (=> d!45334 (=> (not res!25638) (not e!29187))))

(declare-fun lt!9860 () Bool)

(assert (=> d!45334 (= res!25638 lt!9860)))

(assert (=> d!45334 (= lt!9860 e!29185)))

(declare-fun c!12045 () Bool)

(declare-fun isBigIntStructure!0 (Object!254) Bool)

(assert (=> d!45334 (= c!12045 (isBigIntStructure!0 s!1795))))

(assert (=> d!45334 (= (someLaw!0 lambda!8622 s!1795 (Option!294 a!669) (Option!294 b!55356)) lt!9860)))

(assert (= (and b!55406 res!25635) b!55408))

(assert (= (and b!55406 res!25636) b!55405))

(assert (= (and b!55409 c!12044) b!55410))

(assert (= (and b!55409 (not c!12044)) b!55406))

(assert (= (and d!45334 c!12045) b!55404))

(assert (= (and d!45334 (not c!12045)) b!55409))

(assert (= (and d!45334 res!25638) b!55411))

(assert (= (and b!55411 res!25637) b!55407))

(declare-fun m!60136 () Bool)

(assert (=> d!45334 m!60136))

(declare-fun m!60138 () Bool)

(assert (=> b!55405 m!60138))

(declare-fun m!60140 () Bool)

(assert (=> b!55408 m!60140))

(declare-fun m!60142 () Bool)

(assert (=> b!55409 m!60142))

(declare-fun m!60144 () Bool)

(assert (=> b!55407 m!60144))

(declare-fun m!60146 () Bool)

(assert (=> b!55410 m!60146))

(declare-fun m!60148 () Bool)

(assert (=> b!55411 m!60148))

(declare-fun m!60150 () Bool)

(assert (=> b!55411 m!60150))

(declare-fun m!60152 () Bool)

(assert (=> b!55411 m!60152))

(declare-fun m!60154 () Bool)

(assert (=> b!55404 m!60154))

(declare-fun m!60156 () Bool)

(assert (=> b!55406 m!60156))

(assert (=> b!55381 d!45334))

(declare-fun bs!27575 () Bool)

(declare-fun b!55417 () Bool)

(assert (= bs!27575 (and b!55417 start!7792)))

(declare-fun lambda!8633 () Int)

(assert (=> bs!27575 (not (= lambda!8633 lambda!8622))))

(declare-fun bs!27576 () Bool)

(assert (= bs!27576 (and b!55417 b!55380)))

(assert (=> bs!27576 (= lambda!8633 lambda!8623)))

(declare-fun bs!27577 () Bool)

(assert (= bs!27577 (and b!55417 b!55406)))

(assert (=> bs!27577 (= lambda!8633 lambda!8630)))

(declare-fun b_next!38587 () Bool)

(assert (=> start!7792 (= b_next!38585 (or (and b!55417 (= lambda!8633 A!2078)) b_next!38587))))

(declare-fun d!45336 () Bool)

(declare-fun res!25643 () Bool)

(declare-fun e!29191 () Bool)

(assert (=> d!45336 (=> res!25643 e!29191)))

(assert (=> d!45336 (= res!25643 (isBigIntStructure!0 s!1795))))

(assert (=> d!45336 (= (isStructure!0 s!1795 lambda!8622) e!29191)))

(declare-fun b!55416 () Bool)

(declare-fun res!25644 () Bool)

(assert (=> b!55416 (=> res!25644 e!29191)))

(assert (=> b!55416 (= res!25644 (isStructureExt!0 s!1795 lambda!8622))))

(declare-fun isOptionStructure!0 (Object!254 Int) Bool)

(assert (=> b!55417 (= e!29191 (isOptionStructure!0 s!1795 lambda!8633))))

(assert (= (and d!45336 (not res!25643)) b!55416))

(assert (= (and b!55416 (not res!25644)) b!55417))

(assert (=> d!45336 m!60136))

(assert (=> b!55416 m!60142))

(declare-fun m!60158 () Bool)

(assert (=> b!55417 m!60158))

(assert (=> start!7792 d!45336))

(declare-fun bs!27578 () Bool)

(declare-fun b!55419 () Bool)

(assert (= bs!27578 (and b!55419 start!7792)))

(declare-fun lambda!8634 () Int)

(assert (=> bs!27578 (not (= lambda!8634 lambda!8622))))

(declare-fun bs!27579 () Bool)

(assert (= bs!27579 (and b!55419 b!55380)))

(assert (=> bs!27579 (= lambda!8634 lambda!8623)))

(declare-fun bs!27580 () Bool)

(assert (= bs!27580 (and b!55419 b!55406)))

(assert (=> bs!27580 (= lambda!8634 lambda!8630)))

(declare-fun bs!27581 () Bool)

(assert (= bs!27581 (and b!55419 b!55417)))

(assert (=> bs!27581 (= lambda!8634 lambda!8633)))

(declare-fun b_next!38589 () Bool)

(assert (=> start!7792 (= b_next!38587 (or (and b!55419 (= lambda!8634 A!2078)) b_next!38589))))

(declare-fun d!45338 () Bool)

(declare-fun res!25645 () Bool)

(declare-fun e!29192 () Bool)

(assert (=> d!45338 (=> res!25645 e!29192)))

(assert (=> d!45338 (= res!25645 (isBigIntStructure!0 lt!9854))))

(assert (=> d!45338 (= (isStructure!0 lt!9854 lambda!8622) e!29192)))

(declare-fun b!55418 () Bool)

(declare-fun res!25646 () Bool)

(assert (=> b!55418 (=> res!25646 e!29192)))

(assert (=> b!55418 (= res!25646 (isStructureExt!0 lt!9854 lambda!8622))))

(assert (=> b!55419 (= e!29192 (isOptionStructure!0 lt!9854 lambda!8634))))

(assert (= (and d!45338 (not res!25645)) b!55418))

(assert (= (and b!55418 (not res!25646)) b!55419))

(declare-fun m!60160 () Bool)

(assert (=> d!45338 m!60160))

(declare-fun m!60162 () Bool)

(assert (=> b!55418 m!60162))

(declare-fun m!60164 () Bool)

(assert (=> b!55419 m!60164))

(assert (=> start!7792 d!45338))

(declare-fun bs!27582 () Bool)

(declare-fun b!55421 () Bool)

(assert (= bs!27582 (and b!55421 b!55419)))

(declare-fun lambda!8635 () Int)

(assert (=> bs!27582 (= lambda!8635 lambda!8634)))

(declare-fun bs!27583 () Bool)

(assert (= bs!27583 (and b!55421 b!55380)))

(assert (=> bs!27583 (= lambda!8635 lambda!8623)))

(declare-fun bs!27584 () Bool)

(assert (= bs!27584 (and b!55421 b!55406)))

(assert (=> bs!27584 (= lambda!8635 lambda!8630)))

(declare-fun bs!27585 () Bool)

(assert (= bs!27585 (and b!55421 b!55417)))

(assert (=> bs!27585 (= lambda!8635 lambda!8633)))

(declare-fun bs!27586 () Bool)

(assert (= bs!27586 (and b!55421 start!7792)))

(assert (=> bs!27586 (not (= lambda!8635 lambda!8622))))

(declare-fun b_next!38591 () Bool)

(assert (=> start!7792 (= b_next!38589 (or (and b!55421 (= lambda!8635 A!2078)) b_next!38591))))

(declare-fun d!45340 () Bool)

(declare-fun res!25647 () Bool)

(declare-fun e!29193 () Bool)

(assert (=> d!45340 (=> res!25647 e!29193)))

(assert (=> d!45340 (= res!25647 (isBigIntStructure!0 lt!9852))))

(assert (=> d!45340 (= (isStructure!0 lt!9852 lambda!8623) e!29193)))

(declare-fun b!55420 () Bool)

(declare-fun res!25648 () Bool)

(assert (=> b!55420 (=> res!25648 e!29193)))

(assert (=> b!55420 (= res!25648 (isStructureExt!0 lt!9852 lambda!8623))))

(assert (=> b!55421 (= e!29193 (isOptionStructure!0 lt!9852 lambda!8635))))

(assert (= (and d!45340 (not res!25647)) b!55420))

(assert (= (and b!55420 (not res!25648)) b!55421))

(declare-fun m!60166 () Bool)

(assert (=> d!45340 m!60166))

(declare-fun m!60168 () Bool)

(assert (=> b!55420 m!60168))

(declare-fun m!60170 () Bool)

(assert (=> b!55421 m!60170))

(assert (=> b!55380 d!45340))

(declare-fun bs!27587 () Bool)

(declare-fun b!55430 () Bool)

(assert (= bs!27587 (and b!55430 b!55419)))

(declare-fun lambda!8638 () Int)

(assert (=> bs!27587 (= lambda!8638 lambda!8634)))

(declare-fun bs!27588 () Bool)

(assert (= bs!27588 (and b!55430 b!55380)))

(assert (=> bs!27588 (= lambda!8638 lambda!8623)))

(declare-fun bs!27589 () Bool)

(assert (= bs!27589 (and b!55430 b!55406)))

(assert (=> bs!27589 (= lambda!8638 lambda!8630)))

(declare-fun bs!27590 () Bool)

(assert (= bs!27590 (and b!55430 b!55421)))

(assert (=> bs!27590 (= lambda!8638 lambda!8635)))

(declare-fun bs!27591 () Bool)

(assert (= bs!27591 (and b!55430 b!55417)))

(assert (=> bs!27591 (= lambda!8638 lambda!8633)))

(declare-fun bs!27592 () Bool)

(assert (= bs!27592 (and b!55430 start!7792)))

(assert (=> bs!27592 (not (= lambda!8638 lambda!8622))))

(declare-fun b_next!38593 () Bool)

(assert (=> start!7792 (= b_next!38591 (or (and b!55430 (= lambda!8638 A!2078)) b_next!38593))))

(declare-fun tp!15622 () Bool)

(declare-fun lt!9863 () Object!254)

(declare-fun e!29198 () Bool)

(assert (=> b!55430 (= e!29198 (and tp!15622 (isStructure!0 lt!9863 lambda!8638)))))

(assert (=> b!55430 (= lt!9863 (ev!12 (v!2038 b!55356)))))

(declare-fun b!55432 () Bool)

(declare-fun e!29199 () Bool)

(declare-fun tp!15623 () Bool)

(assert (=> b!55432 (= e!29199 tp!15623)))

(declare-fun b!55431 () Bool)

(assert (=> b!55431 (= e!29198 e!29199)))

(assert (=> b!55384 (= tp!15616 e!29198)))

(assert (= (and b!55384 (is-OptionStructure!2 (v!2038 b!55356))) b!55430))

(assert (= (and b!55431 (is-Some!291 (value!4066 (v!2038 b!55356)))) b!55432))

(assert (= (and b!55384 (is-Option!294 (v!2038 b!55356))) b!55431))

(declare-fun m!60172 () Bool)

(assert (=> b!55430 m!60172))

(declare-fun bs!27593 () Bool)

(declare-fun b!55433 () Bool)

(assert (= bs!27593 (and b!55433 b!55419)))

(declare-fun lambda!8639 () Int)

(assert (=> bs!27593 (= lambda!8639 lambda!8634)))

(declare-fun bs!27594 () Bool)

(assert (= bs!27594 (and b!55433 b!55380)))

(assert (=> bs!27594 (= lambda!8639 lambda!8623)))

(declare-fun bs!27595 () Bool)

(assert (= bs!27595 (and b!55433 b!55406)))

(assert (=> bs!27595 (= lambda!8639 lambda!8630)))

(declare-fun bs!27596 () Bool)

(assert (= bs!27596 (and b!55433 b!55430)))

(assert (=> bs!27596 (= lambda!8639 lambda!8638)))

(declare-fun bs!27597 () Bool)

(assert (= bs!27597 (and b!55433 b!55421)))

(assert (=> bs!27597 (= lambda!8639 lambda!8635)))

(declare-fun bs!27598 () Bool)

(assert (= bs!27598 (and b!55433 b!55417)))

(assert (=> bs!27598 (= lambda!8639 lambda!8633)))

(declare-fun bs!27599 () Bool)

(assert (= bs!27599 (and b!55433 start!7792)))

(assert (=> bs!27599 (not (= lambda!8639 lambda!8622))))

(declare-fun b_next!38595 () Bool)

(assert (=> start!7792 (= b_next!38593 (or (and b!55433 (= lambda!8639 A!2078)) b_next!38595))))

(declare-fun lt!9864 () Object!254)

(declare-fun tp!15624 () Bool)

(declare-fun e!29200 () Bool)

(assert (=> b!55433 (= e!29200 (and tp!15624 (isStructure!0 lt!9864 lambda!8639)))))

(assert (=> b!55433 (= lt!9864 (ev!12 (v!2038 (value!4066 s!1795))))))

(declare-fun b!55435 () Bool)

(declare-fun e!29201 () Bool)

(declare-fun tp!15625 () Bool)

(assert (=> b!55435 (= e!29201 tp!15625)))

(declare-fun b!55434 () Bool)

(assert (=> b!55434 (= e!29200 e!29201)))

(assert (=> b!55383 (= tp!15617 e!29200)))

(assert (= (and b!55383 (is-OptionStructure!2 (v!2038 (value!4066 s!1795)))) b!55433))

(assert (= (and b!55434 (is-Some!291 (value!4066 (v!2038 (value!4066 s!1795))))) b!55435))

(assert (= (and b!55383 (is-Option!294 (v!2038 (value!4066 s!1795)))) b!55434))

(declare-fun m!60174 () Bool)

(assert (=> b!55433 m!60174))

(declare-fun bs!27600 () Bool)

(declare-fun b!55436 () Bool)

(assert (= bs!27600 (and b!55436 b!55419)))

(declare-fun lambda!8640 () Int)

(assert (=> bs!27600 (= lambda!8640 lambda!8634)))

(declare-fun bs!27601 () Bool)

(assert (= bs!27601 (and b!55436 b!55380)))

(assert (=> bs!27601 (= lambda!8640 lambda!8623)))

(declare-fun bs!27602 () Bool)

(assert (= bs!27602 (and b!55436 b!55406)))

(assert (=> bs!27602 (= lambda!8640 lambda!8630)))

(declare-fun bs!27603 () Bool)

(assert (= bs!27603 (and b!55436 b!55430)))

(assert (=> bs!27603 (= lambda!8640 lambda!8638)))

(declare-fun bs!27604 () Bool)

(assert (= bs!27604 (and b!55436 b!55421)))

(assert (=> bs!27604 (= lambda!8640 lambda!8635)))

(declare-fun bs!27605 () Bool)

(assert (= bs!27605 (and b!55436 b!55417)))

(assert (=> bs!27605 (= lambda!8640 lambda!8633)))

(declare-fun bs!27606 () Bool)

(assert (= bs!27606 (and b!55436 start!7792)))

(assert (=> bs!27606 (not (= lambda!8640 lambda!8622))))

(declare-fun bs!27607 () Bool)

(assert (= bs!27607 (and b!55436 b!55433)))

(assert (=> bs!27607 (= lambda!8640 lambda!8639)))

(declare-fun b_next!38597 () Bool)

(assert (=> start!7792 (= b_next!38595 (or (and b!55436 (= lambda!8640 A!2078)) b_next!38597))))

(declare-fun lt!9865 () Object!254)

(declare-fun tp!15626 () Bool)

(declare-fun e!29202 () Bool)

(assert (=> b!55436 (= e!29202 (and tp!15626 (isStructure!0 lt!9865 lambda!8640)))))

(assert (=> b!55436 (= lt!9865 (ev!12 (v!2038 a!669)))))

(declare-fun b!55438 () Bool)

(declare-fun e!29203 () Bool)

(declare-fun tp!15627 () Bool)

(assert (=> b!55438 (= e!29203 tp!15627)))

(declare-fun b!55437 () Bool)

(assert (=> b!55437 (= e!29202 e!29203)))

(assert (=> b!55385 (= tp!15615 e!29202)))

(assert (= (and b!55385 (is-OptionStructure!2 (v!2038 a!669))) b!55436))

(assert (= (and b!55437 (is-Some!291 (value!4066 (v!2038 a!669)))) b!55438))

(assert (= (and b!55385 (is-Option!294 (v!2038 a!669))) b!55437))

(declare-fun m!60176 () Bool)

(assert (=> b!55436 m!60176))

(declare-fun tp!15628 () Bool)

(declare-fun lt!9866 () Object!254)

(declare-fun e!29204 () Bool)

(declare-fun b!55439 () Bool)

(assert (=> b!55439 (= e!29204 (and tp!15628 (isStructure!0 lt!9866 lambda!8623)))))

(assert (=> b!55439 (= lt!9866 (ev!12 (ev!12 s!1795)))))

(declare-fun b!55441 () Bool)

(declare-fun e!29205 () Bool)

(declare-fun tp!15629 () Bool)

(assert (=> b!55441 (= e!29205 tp!15629)))

(declare-fun b!55440 () Bool)

(assert (=> b!55440 (= e!29204 e!29205)))

(assert (=> b!55380 (= tp!15614 e!29204)))

(assert (= (and b!55380 (is-OptionStructure!2 (ev!12 s!1795))) b!55439))

(assert (= (and b!55440 (is-Some!291 (value!4066 (ev!12 s!1795)))) b!55441))

(assert (= (and b!55380 (is-Option!294 (ev!12 s!1795))) b!55440))

(declare-fun m!60178 () Bool)

(assert (=> b!55439 m!60178))

(push 1)

(assert (not b_lambda!14659))

(assert (not b!55404))

(assert (not b!55438))

(assert (not b!55411))

(assert (not b!55408))

(assert (not b!55421))

(assert (not b!55441))

(assert (not b!55418))

(assert (not b_lambda!14657))

(assert (not b!55405))

(assert (not b!55409))

(assert (not b!55406))

(assert (not b!55439))

(assert (not b!55420))

(assert (not b!55419))

(assert (not d!45340))

(assert (not d!45336))

(assert (not b!55410))

(assert (not b!55417))

(assert (not b!55435))

(assert (not b!55407))

(assert (not b!55433))

(assert (not d!45334))

(assert (not b!55416))

(assert (not b!55432))

(assert (not d!45338))

(assert (not b!55436))

(assert (not b!55430))

(assert (not b_next!38597))

(assert b_and!58347)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58347)

(assert (not b_next!38597))

(check-sat)

(pop 1)

