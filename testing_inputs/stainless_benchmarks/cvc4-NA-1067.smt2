; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7798 () Bool)

(assert start!7798)

(declare-fun b_free!7257 () Bool)

(declare-fun b_next!38599 () Bool)

(assert (=> start!7798 (= b_free!7257 (not b_next!38599))))

(declare-fun tp!15642 () Bool)

(declare-fun b_and!58349 () Bool)

(assert (=> start!7798 (= tp!15642 b_and!58349)))

(assert (=> start!7798 true))

(declare-fun order!433 () Int)

(declare-fun A!2078 () Int)

(declare-fun lambda!8653 () Int)

(declare-fun dynLambda!903 (Int Int) Int)

(assert (=> start!7798 (< (dynLambda!903 order!433 A!2078) (dynLambda!903 order!433 lambda!8653))))

(declare-fun bs!27609 () Bool)

(declare-fun b!55472 () Bool)

(assert (= bs!27609 (and b!55472 start!7798)))

(declare-fun lambda!8654 () Int)

(assert (=> bs!27609 (not (= lambda!8654 lambda!8653))))

(declare-fun b_next!38601 () Bool)

(assert (=> start!7798 (= b_next!38599 (or (and b!55472 (= lambda!8654 A!2078)) b_next!38601))))

(declare-fun res!25664 () Bool)

(declare-fun e!29228 () Bool)

(assert (=> start!7798 (=> (not res!25664) (not e!29228))))

(declare-datatypes () ((Option!295 (Some!292 (v!2039 Object!255)) (None!293)) (Object!255 (BigIntStructure!3) (StructureExt!3 (__x!133 Int)) (OptionStructure!3 (ev!13 Object!255)) (Option!296 (value!4069 Option!295)) (Integer!244 (value!4070 Int)) (Open!255 (value!4071 Int)))))

(declare-fun s!1795 () Object!255)

(declare-fun isStructure!0 (Object!255 Int) Bool)

(assert (=> start!7798 (= res!25664 (isStructure!0 s!1795 lambda!8653))))

(assert (=> start!7798 e!29228))

(declare-fun lt!9876 () Object!255)

(assert (=> start!7798 (= lt!9876 s!1795)))

(declare-fun e!29227 () Bool)

(assert (=> start!7798 (and e!29227 (isStructure!0 lt!9876 lambda!8653))))

(assert (=> start!7798 tp!15642))

(declare-fun e!29229 () Bool)

(assert (=> start!7798 e!29229))

(declare-fun e!29226 () Bool)

(assert (=> start!7798 e!29226))

(declare-fun tp!15643 () Bool)

(declare-fun b!55466 () Bool)

(declare-fun lt!9875 () Object!255)

(declare-fun dynLambda!904 (Int Object!255) Bool)

(assert (=> b!55466 (= e!29229 (and tp!15643 (dynLambda!904 A!2078 lt!9875)))))

(declare-fun a!669 () Option!295)

(assert (=> b!55466 (= lt!9875 (v!2039 a!669))))

(declare-fun b!55467 () Bool)

(declare-fun e!29230 () Bool)

(assert (=> b!55467 (= e!29227 e!29230)))

(declare-fun b!55468 () Bool)

(declare-fun tp!15644 () Bool)

(assert (=> b!55468 (= e!29230 tp!15644)))

(declare-fun b!55469 () Bool)

(declare-fun b!55356 () Option!295)

(declare-fun doSomething!1 (Int Object!255 Object!255 Object!255) Object!255)

(assert (=> b!55469 (= e!29228 (not (= (value!4069 (doSomething!1 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356))) (value!4069 (doSomething!1 lambda!8653 s!1795 (Option!296 b!55356) (Option!296 a!669))))))))

(declare-fun lt!9877 () Object!255)

(declare-fun b!55470 () Bool)

(declare-fun tp!15640 () Bool)

(assert (=> b!55470 (= e!29226 (and tp!15640 (dynLambda!904 A!2078 lt!9877)))))

(assert (=> b!55470 (= lt!9877 (v!2039 b!55356))))

(declare-fun b!55471 () Bool)

(declare-fun res!25663 () Bool)

(assert (=> b!55471 (=> (not res!25663) (not e!29228))))

(declare-fun someLaw!0 (Int Object!255 Object!255 Object!255) Bool)

(assert (=> b!55471 (= res!25663 (someLaw!0 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356)))))

(declare-fun lt!9878 () Object!255)

(declare-fun tp!15641 () Bool)

(assert (=> b!55472 (= e!29227 (and tp!15641 (isStructure!0 lt!9878 lambda!8654)))))

(assert (=> b!55472 (= lt!9878 (ev!13 s!1795))))

(assert (= (and start!7798 res!25664) b!55471))

(assert (= (and b!55471 res!25663) b!55469))

(assert (= (and start!7798 (is-OptionStructure!3 s!1795)) b!55472))

(assert (= (and b!55467 (is-Some!292 (value!4069 s!1795))) b!55468))

(assert (= (and start!7798 (is-Option!296 s!1795)) b!55467))

(assert (= (and start!7798 (is-Some!292 a!669)) b!55466))

(assert (= (and start!7798 (is-Some!292 b!55356)) b!55470))

(declare-fun b_lambda!14661 () Bool)

(assert (=> (not b_lambda!14661) (not b!55466)))

(declare-fun t!46904 () Bool)

(declare-fun tb!45903 () Bool)

(assert (=> (and start!7798 (= A!2078 A!2078) t!46904) tb!45903))

(declare-fun result!46239 () Bool)

(assert (=> tb!45903 (= result!46239 true)))

(assert (=> b!55466 t!46904))

(declare-fun b_and!58351 () Bool)

(assert (= b_and!58349 (and (=> t!46904 result!46239) b_and!58351)))

(declare-fun b_lambda!14663 () Bool)

(assert (=> (not b_lambda!14663) (not b!55470)))

(declare-fun t!46906 () Bool)

(declare-fun tb!45905 () Bool)

(assert (=> (and start!7798 (= A!2078 A!2078) t!46906) tb!45905))

(declare-fun result!46241 () Bool)

(assert (=> tb!45905 (= result!46241 true)))

(assert (=> b!55470 t!46906))

(declare-fun b_and!58353 () Bool)

(assert (= b_and!58351 (and (=> t!46906 result!46241) b_and!58353)))

(declare-fun m!60180 () Bool)

(assert (=> start!7798 m!60180))

(declare-fun m!60182 () Bool)

(assert (=> start!7798 m!60182))

(declare-fun m!60184 () Bool)

(assert (=> b!55470 m!60184))

(declare-fun m!60186 () Bool)

(assert (=> b!55466 m!60186))

(declare-fun m!60188 () Bool)

(assert (=> b!55469 m!60188))

(declare-fun m!60190 () Bool)

(assert (=> b!55469 m!60190))

(declare-fun m!60192 () Bool)

(assert (=> b!55472 m!60192))

(declare-fun m!60194 () Bool)

(assert (=> b!55471 m!60194))

(push 1)

(assert (not start!7798))

(assert (not b!55468))

(assert (not b!55470))

(assert (not b_next!38601))

(assert (not b_lambda!14663))

(assert (not b!55466))

(assert (not b_lambda!14661))

(assert (not b!55471))

(assert (not b!55469))

(assert (not b!55472))

(assert b_and!58353)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58353)

(assert (not b_next!38601))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14665 () Bool)

(assert (= b_lambda!14661 (or (and b!55472 (= lambda!8654 A!2078)) (and start!7798 b_free!7257) b_lambda!14665)))

(declare-fun bs!27610 () Bool)

(declare-fun d!45342 () Bool)

(assert (= bs!27610 (and d!45342 b!55472)))

(assert (=> bs!27610 (= (dynLambda!904 lambda!8654 lt!9875) true)))

(assert (=> (and b!55472 (= lambda!8654 A!2078) b!55466) d!45342))

(declare-fun b_lambda!14667 () Bool)

(assert (= b_lambda!14663 (or (and b!55472 (= lambda!8654 A!2078)) (and start!7798 b_free!7257) b_lambda!14667)))

(declare-fun bs!27611 () Bool)

(declare-fun d!45344 () Bool)

(assert (= bs!27611 (and d!45344 b!55472)))

(assert (=> bs!27611 (= (dynLambda!904 lambda!8654 lt!9877) true)))

(assert (=> (and b!55472 (= lambda!8654 A!2078) b!55470) d!45344))

(push 1)

(assert (not start!7798))

(assert (not b_lambda!14665))

(assert (not b!55468))

(assert (not b!55470))

(assert (not b_next!38601))

(assert (not b!55466))

(assert (not b_lambda!14667))

(assert (not b!55471))

(assert (not b!55469))

(assert (not b!55472))

(assert b_and!58353)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58353)

(assert (not b_next!38601))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27612 () Bool)

(declare-fun b!55491 () Bool)

(assert (= bs!27612 (and b!55491 start!7798)))

(declare-fun lambda!8661 () Int)

(assert (=> bs!27612 (not (= lambda!8661 lambda!8653))))

(declare-fun bs!27613 () Bool)

(assert (= bs!27613 (and b!55491 b!55472)))

(assert (=> bs!27613 (= lambda!8661 lambda!8654)))

(declare-fun b_next!38603 () Bool)

(assert (=> start!7798 (= b_next!38601 (or (and b!55491 (= lambda!8661 A!2078)) b_next!38603))))

(declare-fun lt!9887 () Object!255)

(declare-fun d!45346 () Bool)

(declare-fun doSomething!7 (Object!255 Object!255 Object!255) Object!255)

(assert (=> d!45346 (= lt!9887 (doSomething!7 s!1795 (Option!296 a!669) (Option!296 b!55356)))))

(declare-fun e!29240 () Object!255)

(assert (=> d!45346 (= lt!9887 e!29240)))

(declare-fun c!12051 () Bool)

(declare-fun isBigIntStructure!0 (Object!255) Bool)

(assert (=> d!45346 (= c!12051 (isBigIntStructure!0 s!1795))))

(assert (=> d!45346 (= (doSomething!1 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356)) lt!9887)))

(declare-fun e!29242 () Object!255)

(declare-fun b!55487 () Bool)

(declare-fun doSomething!4 (Int Object!255 Object!255 Object!255) Object!255)

(assert (=> b!55487 (= e!29242 (doSomething!4 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356)))))

(declare-fun b!55488 () Bool)

(declare-fun e!29241 () Bool)

(declare-fun isOption!12 (Option!295 Int) Bool)

(assert (=> b!55488 (= e!29241 (isOption!12 (value!4069 (Option!296 a!669)) lambda!8661))))

(declare-fun b!55489 () Bool)

(assert (=> b!55489 (= e!29240 e!29242)))

(declare-fun c!12050 () Bool)

(declare-fun isStructureExt!0 (Object!255 Int) Bool)

(assert (=> b!55489 (= c!12050 (isStructureExt!0 s!1795 lambda!8653))))

(declare-fun b!55490 () Bool)

(declare-fun e!29239 () Bool)

(assert (=> b!55490 (= e!29239 (isOption!12 (value!4069 (Option!296 b!55356)) lambda!8661))))

(declare-fun lt!9885 () Option!295)

(assert (=> b!55491 (= e!29242 (Option!296 lt!9885))))

(assert (=> b!55491 (dynLambda!904 lambda!8653 (Option!296 lt!9885))))

(declare-fun doSomething!3 (Int Object!255 Option!295 Option!295) Option!295)

(assert (=> b!55491 (= lt!9885 (doSomething!3 lambda!8661 s!1795 (value!4069 (Option!296 a!669)) (value!4069 (Option!296 b!55356))))))

(assert (=> b!55491 e!29239))

(declare-fun res!25670 () Bool)

(assert (=> b!55491 (=> (not res!25670) (not e!29239))))

(assert (=> b!55491 (= res!25670 (is-Option!296 (Option!296 b!55356)))))

(assert (=> b!55491 e!29241))

(declare-fun res!25671 () Bool)

(assert (=> b!55491 (=> (not res!25671) (not e!29241))))

(assert (=> b!55491 (= res!25671 (is-Option!296 (Option!296 a!669)))))

(declare-fun b!55492 () Bool)

(declare-fun lt!9886 () Int)

(assert (=> b!55492 (= e!29240 (Integer!244 lt!9886))))

(assert (=> b!55492 (dynLambda!904 lambda!8653 (Integer!244 lt!9886))))

(declare-fun doSomething!2 (Object!255 Int Int) Int)

(assert (=> b!55492 (= lt!9886 (doSomething!2 s!1795 (value!4070 (Option!296 a!669)) (value!4070 (Option!296 b!55356))))))

(assert (=> b!55492 (is-Integer!244 (Option!296 b!55356))))

(assert (=> b!55492 (is-Integer!244 (Option!296 a!669))))

(assert (= (and b!55491 res!25671) b!55488))

(assert (= (and b!55491 res!25670) b!55490))

(assert (= (and b!55489 c!12050) b!55487))

(assert (= (and b!55489 (not c!12050)) b!55491))

(assert (= (and d!45346 c!12051) b!55492))

(assert (= (and d!45346 (not c!12051)) b!55489))

(declare-fun b_lambda!14669 () Bool)

(assert (=> (not b_lambda!14669) (not b!55491)))

(declare-fun b_lambda!14671 () Bool)

(assert (=> (not b_lambda!14671) (not b!55492)))

(declare-fun m!60196 () Bool)

(assert (=> b!55489 m!60196))

(declare-fun m!60198 () Bool)

(assert (=> d!45346 m!60198))

(declare-fun m!60200 () Bool)

(assert (=> d!45346 m!60200))

(declare-fun m!60202 () Bool)

(assert (=> b!55487 m!60202))

(declare-fun m!60204 () Bool)

(assert (=> b!55492 m!60204))

(declare-fun m!60206 () Bool)

(assert (=> b!55492 m!60206))

(declare-fun m!60208 () Bool)

(assert (=> b!55491 m!60208))

(declare-fun m!60210 () Bool)

(assert (=> b!55491 m!60210))

(declare-fun m!60212 () Bool)

(assert (=> b!55490 m!60212))

(declare-fun m!60214 () Bool)

(assert (=> b!55488 m!60214))

(assert (=> b!55469 d!45346))

(declare-fun bs!27614 () Bool)

(declare-fun b!55497 () Bool)

(assert (= bs!27614 (and b!55497 start!7798)))

(declare-fun lambda!8662 () Int)

(assert (=> bs!27614 (not (= lambda!8662 lambda!8653))))

(declare-fun bs!27615 () Bool)

(assert (= bs!27615 (and b!55497 b!55472)))

(assert (=> bs!27615 (= lambda!8662 lambda!8654)))

(declare-fun bs!27616 () Bool)

(assert (= bs!27616 (and b!55497 b!55491)))

(assert (=> bs!27616 (= lambda!8662 lambda!8661)))

(declare-fun b_next!38605 () Bool)

(assert (=> start!7798 (= b_next!38603 (or (and b!55497 (= lambda!8662 A!2078)) b_next!38605))))

(declare-fun d!45348 () Bool)

(declare-fun lt!9890 () Object!255)

(assert (=> d!45348 (= lt!9890 (doSomething!7 s!1795 (Option!296 b!55356) (Option!296 a!669)))))

(declare-fun e!29244 () Object!255)

(assert (=> d!45348 (= lt!9890 e!29244)))

(declare-fun c!12053 () Bool)

(assert (=> d!45348 (= c!12053 (isBigIntStructure!0 s!1795))))

(assert (=> d!45348 (= (doSomething!1 lambda!8653 s!1795 (Option!296 b!55356) (Option!296 a!669)) lt!9890)))

(declare-fun e!29246 () Object!255)

(declare-fun b!55493 () Bool)

(assert (=> b!55493 (= e!29246 (doSomething!4 lambda!8653 s!1795 (Option!296 b!55356) (Option!296 a!669)))))

(declare-fun b!55494 () Bool)

(declare-fun e!29245 () Bool)

(assert (=> b!55494 (= e!29245 (isOption!12 (value!4069 (Option!296 b!55356)) lambda!8662))))

(declare-fun b!55495 () Bool)

(assert (=> b!55495 (= e!29244 e!29246)))

(declare-fun c!12052 () Bool)

(assert (=> b!55495 (= c!12052 (isStructureExt!0 s!1795 lambda!8653))))

(declare-fun b!55496 () Bool)

(declare-fun e!29243 () Bool)

(assert (=> b!55496 (= e!29243 (isOption!12 (value!4069 (Option!296 a!669)) lambda!8662))))

(declare-fun lt!9888 () Option!295)

(assert (=> b!55497 (= e!29246 (Option!296 lt!9888))))

(assert (=> b!55497 (dynLambda!904 lambda!8653 (Option!296 lt!9888))))

(assert (=> b!55497 (= lt!9888 (doSomething!3 lambda!8662 s!1795 (value!4069 (Option!296 b!55356)) (value!4069 (Option!296 a!669))))))

(assert (=> b!55497 e!29243))

(declare-fun res!25672 () Bool)

(assert (=> b!55497 (=> (not res!25672) (not e!29243))))

(assert (=> b!55497 (= res!25672 (is-Option!296 (Option!296 a!669)))))

(assert (=> b!55497 e!29245))

(declare-fun res!25673 () Bool)

(assert (=> b!55497 (=> (not res!25673) (not e!29245))))

(assert (=> b!55497 (= res!25673 (is-Option!296 (Option!296 b!55356)))))

(declare-fun b!55498 () Bool)

(declare-fun lt!9889 () Int)

(assert (=> b!55498 (= e!29244 (Integer!244 lt!9889))))

(assert (=> b!55498 (dynLambda!904 lambda!8653 (Integer!244 lt!9889))))

(assert (=> b!55498 (= lt!9889 (doSomething!2 s!1795 (value!4070 (Option!296 b!55356)) (value!4070 (Option!296 a!669))))))

(assert (=> b!55498 (is-Integer!244 (Option!296 a!669))))

(assert (=> b!55498 (is-Integer!244 (Option!296 b!55356))))

(assert (= (and b!55497 res!25673) b!55494))

(assert (= (and b!55497 res!25672) b!55496))

(assert (= (and b!55495 c!12052) b!55493))

(assert (= (and b!55495 (not c!12052)) b!55497))

(assert (= (and d!45348 c!12053) b!55498))

(assert (= (and d!45348 (not c!12053)) b!55495))

(declare-fun b_lambda!14673 () Bool)

(assert (=> (not b_lambda!14673) (not b!55497)))

(declare-fun b_lambda!14675 () Bool)

(assert (=> (not b_lambda!14675) (not b!55498)))

(assert (=> b!55495 m!60196))

(declare-fun m!60216 () Bool)

(assert (=> d!45348 m!60216))

(assert (=> d!45348 m!60200))

(declare-fun m!60218 () Bool)

(assert (=> b!55493 m!60218))

(declare-fun m!60220 () Bool)

(assert (=> b!55498 m!60220))

(declare-fun m!60222 () Bool)

(assert (=> b!55498 m!60222))

(declare-fun m!60224 () Bool)

(assert (=> b!55497 m!60224))

(declare-fun m!60226 () Bool)

(assert (=> b!55497 m!60226))

(declare-fun m!60228 () Bool)

(assert (=> b!55496 m!60228))

(declare-fun m!60230 () Bool)

(assert (=> b!55494 m!60230))

(assert (=> b!55469 d!45348))

(declare-fun bs!27617 () Bool)

(declare-fun b!55504 () Bool)

(assert (= bs!27617 (and b!55504 start!7798)))

(declare-fun lambda!8665 () Int)

(assert (=> bs!27617 (not (= lambda!8665 lambda!8653))))

(declare-fun bs!27618 () Bool)

(assert (= bs!27618 (and b!55504 b!55472)))

(assert (=> bs!27618 (= lambda!8665 lambda!8654)))

(declare-fun bs!27619 () Bool)

(assert (= bs!27619 (and b!55504 b!55491)))

(assert (=> bs!27619 (= lambda!8665 lambda!8661)))

(declare-fun bs!27620 () Bool)

(assert (= bs!27620 (and b!55504 b!55497)))

(assert (=> bs!27620 (= lambda!8665 lambda!8662)))

(declare-fun b_next!38607 () Bool)

(assert (=> start!7798 (= b_next!38605 (or (and b!55504 (= lambda!8665 A!2078)) b_next!38607))))

(declare-fun d!45350 () Bool)

(declare-fun res!25678 () Bool)

(declare-fun e!29249 () Bool)

(assert (=> d!45350 (=> res!25678 e!29249)))

(assert (=> d!45350 (= res!25678 (isBigIntStructure!0 s!1795))))

(assert (=> d!45350 (= (isStructure!0 s!1795 lambda!8653) e!29249)))

(declare-fun b!55503 () Bool)

(declare-fun res!25679 () Bool)

(assert (=> b!55503 (=> res!25679 e!29249)))

(assert (=> b!55503 (= res!25679 (isStructureExt!0 s!1795 lambda!8653))))

(declare-fun isOptionStructure!0 (Object!255 Int) Bool)

(assert (=> b!55504 (= e!29249 (isOptionStructure!0 s!1795 lambda!8665))))

(assert (= (and d!45350 (not res!25678)) b!55503))

(assert (= (and b!55503 (not res!25679)) b!55504))

(assert (=> d!45350 m!60200))

(assert (=> b!55503 m!60196))

(declare-fun m!60232 () Bool)

(assert (=> b!55504 m!60232))

(assert (=> start!7798 d!45350))

(declare-fun bs!27621 () Bool)

(declare-fun b!55506 () Bool)

(assert (= bs!27621 (and b!55506 b!55472)))

(declare-fun lambda!8666 () Int)

(assert (=> bs!27621 (= lambda!8666 lambda!8654)))

(declare-fun bs!27622 () Bool)

(assert (= bs!27622 (and b!55506 b!55491)))

(assert (=> bs!27622 (= lambda!8666 lambda!8661)))

(declare-fun bs!27623 () Bool)

(assert (= bs!27623 (and b!55506 b!55504)))

(assert (=> bs!27623 (= lambda!8666 lambda!8665)))

(declare-fun bs!27624 () Bool)

(assert (= bs!27624 (and b!55506 start!7798)))

(assert (=> bs!27624 (not (= lambda!8666 lambda!8653))))

(declare-fun bs!27625 () Bool)

(assert (= bs!27625 (and b!55506 b!55497)))

(assert (=> bs!27625 (= lambda!8666 lambda!8662)))

(declare-fun b_next!38609 () Bool)

(assert (=> start!7798 (= b_next!38607 (or (and b!55506 (= lambda!8666 A!2078)) b_next!38609))))

(declare-fun d!45352 () Bool)

(declare-fun res!25680 () Bool)

(declare-fun e!29250 () Bool)

(assert (=> d!45352 (=> res!25680 e!29250)))

(assert (=> d!45352 (= res!25680 (isBigIntStructure!0 lt!9876))))

(assert (=> d!45352 (= (isStructure!0 lt!9876 lambda!8653) e!29250)))

(declare-fun b!55505 () Bool)

(declare-fun res!25681 () Bool)

(assert (=> b!55505 (=> res!25681 e!29250)))

(assert (=> b!55505 (= res!25681 (isStructureExt!0 lt!9876 lambda!8653))))

(assert (=> b!55506 (= e!29250 (isOptionStructure!0 lt!9876 lambda!8666))))

(assert (= (and d!45352 (not res!25680)) b!55505))

(assert (= (and b!55505 (not res!25681)) b!55506))

(declare-fun m!60234 () Bool)

(assert (=> d!45352 m!60234))

(declare-fun m!60236 () Bool)

(assert (=> b!55505 m!60236))

(declare-fun m!60238 () Bool)

(assert (=> b!55506 m!60238))

(assert (=> start!7798 d!45352))

(declare-fun bs!27626 () Bool)

(declare-fun b!55526 () Bool)

(assert (= bs!27626 (and b!55526 b!55506)))

(declare-fun lambda!8673 () Int)

(assert (=> bs!27626 (= lambda!8673 lambda!8666)))

(declare-fun bs!27627 () Bool)

(assert (= bs!27627 (and b!55526 b!55472)))

(assert (=> bs!27627 (= lambda!8673 lambda!8654)))

(declare-fun bs!27628 () Bool)

(assert (= bs!27628 (and b!55526 b!55491)))

(assert (=> bs!27628 (= lambda!8673 lambda!8661)))

(declare-fun bs!27629 () Bool)

(assert (= bs!27629 (and b!55526 b!55504)))

(assert (=> bs!27629 (= lambda!8673 lambda!8665)))

(declare-fun bs!27630 () Bool)

(assert (= bs!27630 (and b!55526 start!7798)))

(assert (=> bs!27630 (not (= lambda!8673 lambda!8653))))

(declare-fun bs!27631 () Bool)

(assert (= bs!27631 (and b!55526 b!55497)))

(assert (=> bs!27631 (= lambda!8673 lambda!8662)))

(declare-fun b_next!38611 () Bool)

(assert (=> start!7798 (= b_next!38609 (or (and b!55526 (= lambda!8673 A!2078)) b_next!38611))))

(declare-fun b!55523 () Bool)

(declare-fun res!25693 () Bool)

(declare-fun e!29263 () Bool)

(assert (=> b!55523 (=> (not res!25693) (not e!29263))))

(declare-fun lt!9895 () Bool)

(assert (=> b!55523 (= res!25693 lt!9895)))

(declare-fun someLaw!7 (Object!255 Object!255 Object!255) Bool)

(assert (=> b!55523 (= lt!9895 (someLaw!7 s!1795 (Option!296 a!669) (Option!296 b!55356)))))

(assert (=> b!55523 (= lt!9895 (= (doSomething!1 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356)) (doSomething!1 lambda!8653 s!1795 (Option!296 b!55356) (Option!296 a!669))))))

(declare-fun b!55524 () Bool)

(declare-fun e!29264 () Bool)

(declare-fun someLaw!4 (Int Object!255 Object!255 Object!255) Bool)

(assert (=> b!55524 (= e!29264 (someLaw!4 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356)))))

(declare-fun b!55525 () Bool)

(declare-fun e!29265 () Bool)

(assert (=> b!55525 (= e!29265 (isOption!12 (value!4069 (Option!296 b!55356)) lambda!8673))))

(declare-fun someLaw!2 (Int Object!255 Option!295 Option!295) Bool)

(assert (=> b!55526 (= e!29264 (someLaw!2 lambda!8673 s!1795 (value!4069 (Option!296 a!669)) (value!4069 (Option!296 b!55356))))))

(assert (=> b!55526 e!29265))

(declare-fun res!25695 () Bool)

(assert (=> b!55526 (=> (not res!25695) (not e!29265))))

(assert (=> b!55526 (= res!25695 (is-Option!296 (Option!296 b!55356)))))

(declare-fun e!29261 () Bool)

(assert (=> b!55526 e!29261))

(declare-fun res!25692 () Bool)

(assert (=> b!55526 (=> (not res!25692) (not e!29261))))

(assert (=> b!55526 (= res!25692 (is-Option!296 (Option!296 a!669)))))

(declare-fun b!55527 () Bool)

(declare-fun e!29262 () Bool)

(assert (=> b!55527 (= e!29262 e!29264)))

(declare-fun c!12058 () Bool)

(assert (=> b!55527 (= c!12058 (isStructureExt!0 s!1795 lambda!8653))))

(declare-fun b!55528 () Bool)

(declare-fun someLaw!8 (Object!255 Object!255 Object!255) Bool)

(assert (=> b!55528 (= e!29263 (= true (someLaw!8 s!1795 (Option!296 a!669) (Option!296 b!55356))))))

(declare-fun b!55529 () Bool)

(declare-fun someLaw!1 (Object!255 Int Int) Bool)

(assert (=> b!55529 (= e!29262 (someLaw!1 s!1795 (value!4070 (Option!296 a!669)) (value!4070 (Option!296 b!55356))))))

(assert (=> b!55529 (is-Integer!244 (Option!296 b!55356))))

(assert (=> b!55529 (is-Integer!244 (Option!296 a!669))))

(declare-fun d!45354 () Bool)

(assert (=> d!45354 e!29263))

(declare-fun res!25694 () Bool)

(assert (=> d!45354 (=> (not res!25694) (not e!29263))))

(declare-fun lt!9896 () Bool)

(assert (=> d!45354 (= res!25694 lt!9896)))

(assert (=> d!45354 (= lt!9896 e!29262)))

(declare-fun c!12059 () Bool)

(assert (=> d!45354 (= c!12059 (isBigIntStructure!0 s!1795))))

(assert (=> d!45354 (= (someLaw!0 lambda!8653 s!1795 (Option!296 a!669) (Option!296 b!55356)) lt!9896)))

(declare-fun b!55530 () Bool)

(assert (=> b!55530 (= e!29261 (isOption!12 (value!4069 (Option!296 a!669)) lambda!8673))))

(assert (= (and b!55526 res!25692) b!55530))

(assert (= (and b!55526 res!25695) b!55525))

(assert (= (and b!55527 c!12058) b!55524))

(assert (= (and b!55527 (not c!12058)) b!55526))

(assert (= (and d!45354 c!12059) b!55529))

(assert (= (and d!45354 (not c!12059)) b!55527))

(assert (= (and d!45354 res!25694) b!55523))

(assert (= (and b!55523 res!25693) b!55528))

(declare-fun m!60240 () Bool)

(assert (=> b!55529 m!60240))

(assert (=> d!45354 m!60200))

(declare-fun m!60242 () Bool)

(assert (=> b!55523 m!60242))

(assert (=> b!55523 m!60188))

(assert (=> b!55523 m!60190))

(declare-fun m!60244 () Bool)

(assert (=> b!55526 m!60244))

(declare-fun m!60246 () Bool)

(assert (=> b!55524 m!60246))

(declare-fun m!60248 () Bool)

(assert (=> b!55530 m!60248))

(declare-fun m!60250 () Bool)

(assert (=> b!55528 m!60250))

(declare-fun m!60252 () Bool)

(assert (=> b!55525 m!60252))

(assert (=> b!55527 m!60196))

(assert (=> b!55471 d!45354))

(declare-fun bs!27632 () Bool)

(declare-fun b!55532 () Bool)

(assert (= bs!27632 (and b!55532 b!55526)))

(declare-fun lambda!8674 () Int)

(assert (=> bs!27632 (= lambda!8674 lambda!8673)))

(declare-fun bs!27633 () Bool)

(assert (= bs!27633 (and b!55532 b!55506)))

(assert (=> bs!27633 (= lambda!8674 lambda!8666)))

(declare-fun bs!27634 () Bool)

(assert (= bs!27634 (and b!55532 b!55472)))

(assert (=> bs!27634 (= lambda!8674 lambda!8654)))

(declare-fun bs!27635 () Bool)

(assert (= bs!27635 (and b!55532 b!55491)))

(assert (=> bs!27635 (= lambda!8674 lambda!8661)))

(declare-fun bs!27636 () Bool)

(assert (= bs!27636 (and b!55532 b!55504)))

(assert (=> bs!27636 (= lambda!8674 lambda!8665)))

(declare-fun bs!27637 () Bool)

(assert (= bs!27637 (and b!55532 start!7798)))

(assert (=> bs!27637 (not (= lambda!8674 lambda!8653))))

(declare-fun bs!27638 () Bool)

(assert (= bs!27638 (and b!55532 b!55497)))

(assert (=> bs!27638 (= lambda!8674 lambda!8662)))

(declare-fun b_next!38613 () Bool)

(assert (=> start!7798 (= b_next!38611 (or (and b!55532 (= lambda!8674 A!2078)) b_next!38613))))

(declare-fun d!45356 () Bool)

(declare-fun res!25696 () Bool)

(declare-fun e!29266 () Bool)

(assert (=> d!45356 (=> res!25696 e!29266)))

(assert (=> d!45356 (= res!25696 (isBigIntStructure!0 lt!9878))))

(assert (=> d!45356 (= (isStructure!0 lt!9878 lambda!8654) e!29266)))

(declare-fun b!55531 () Bool)

(declare-fun res!25697 () Bool)

(assert (=> b!55531 (=> res!25697 e!29266)))

(assert (=> b!55531 (= res!25697 (isStructureExt!0 lt!9878 lambda!8654))))

(assert (=> b!55532 (= e!29266 (isOptionStructure!0 lt!9878 lambda!8674))))

(assert (= (and d!45356 (not res!25696)) b!55531))

(assert (= (and b!55531 (not res!25697)) b!55532))

(declare-fun m!60254 () Bool)

(assert (=> d!45356 m!60254))

(declare-fun m!60256 () Bool)

(assert (=> b!55531 m!60256))

(declare-fun m!60258 () Bool)

(assert (=> b!55532 m!60258))

(assert (=> b!55472 d!45356))

(declare-fun bs!27639 () Bool)

(declare-fun b!55541 () Bool)

(assert (= bs!27639 (and b!55541 b!55526)))

(declare-fun lambda!8677 () Int)

(assert (=> bs!27639 (= lambda!8677 lambda!8673)))

(declare-fun bs!27640 () Bool)

(assert (= bs!27640 (and b!55541 b!55506)))

(assert (=> bs!27640 (= lambda!8677 lambda!8666)))

(declare-fun bs!27641 () Bool)

(assert (= bs!27641 (and b!55541 b!55472)))

(assert (=> bs!27641 (= lambda!8677 lambda!8654)))

(declare-fun bs!27642 () Bool)

(assert (= bs!27642 (and b!55541 b!55491)))

(assert (=> bs!27642 (= lambda!8677 lambda!8661)))

(declare-fun bs!27643 () Bool)

(assert (= bs!27643 (and b!55541 b!55532)))

(assert (=> bs!27643 (= lambda!8677 lambda!8674)))

(declare-fun bs!27644 () Bool)

(assert (= bs!27644 (and b!55541 b!55504)))

(assert (=> bs!27644 (= lambda!8677 lambda!8665)))

(declare-fun bs!27645 () Bool)

(assert (= bs!27645 (and b!55541 start!7798)))

(assert (=> bs!27645 (not (= lambda!8677 lambda!8653))))

(declare-fun bs!27646 () Bool)

(assert (= bs!27646 (and b!55541 b!55497)))

(assert (=> bs!27646 (= lambda!8677 lambda!8662)))

(declare-fun b_next!38615 () Bool)

(assert (=> start!7798 (= b_next!38613 (or (and b!55541 (= lambda!8677 A!2078)) b_next!38615))))

(declare-fun e!29272 () Bool)

(declare-fun tp!15649 () Bool)

(declare-fun lt!9899 () Object!255)

(assert (=> b!55541 (= e!29272 (and tp!15649 (isStructure!0 lt!9899 lambda!8677)))))

(assert (=> b!55541 (= lt!9899 (ev!13 (v!2039 a!669)))))

(declare-fun b!55543 () Bool)

(declare-fun e!29271 () Bool)

(declare-fun tp!15650 () Bool)

(assert (=> b!55543 (= e!29271 tp!15650)))

(declare-fun b!55542 () Bool)

(assert (=> b!55542 (= e!29272 e!29271)))

(assert (=> b!55466 (= tp!15643 e!29272)))

(assert (= (and b!55466 (is-OptionStructure!3 (v!2039 a!669))) b!55541))

(assert (= (and b!55542 (is-Some!292 (value!4069 (v!2039 a!669)))) b!55543))

(assert (= (and b!55466 (is-Option!296 (v!2039 a!669))) b!55542))

(declare-fun m!60260 () Bool)

(assert (=> b!55541 m!60260))

(declare-fun bs!27647 () Bool)

(declare-fun b!55544 () Bool)

(assert (= bs!27647 (and b!55544 b!55526)))

(declare-fun lambda!8678 () Int)

(assert (=> bs!27647 (= lambda!8678 lambda!8673)))

(declare-fun bs!27648 () Bool)

(assert (= bs!27648 (and b!55544 b!55506)))

(assert (=> bs!27648 (= lambda!8678 lambda!8666)))

(declare-fun bs!27649 () Bool)

(assert (= bs!27649 (and b!55544 b!55472)))

(assert (=> bs!27649 (= lambda!8678 lambda!8654)))

(declare-fun bs!27650 () Bool)

(assert (= bs!27650 (and b!55544 b!55491)))

(assert (=> bs!27650 (= lambda!8678 lambda!8661)))

(declare-fun bs!27651 () Bool)

(assert (= bs!27651 (and b!55544 b!55532)))

(assert (=> bs!27651 (= lambda!8678 lambda!8674)))

(declare-fun bs!27652 () Bool)

(assert (= bs!27652 (and b!55544 b!55504)))

(assert (=> bs!27652 (= lambda!8678 lambda!8665)))

(declare-fun bs!27653 () Bool)

(assert (= bs!27653 (and b!55544 start!7798)))

(assert (=> bs!27653 (not (= lambda!8678 lambda!8653))))

(declare-fun bs!27654 () Bool)

(assert (= bs!27654 (and b!55544 b!55541)))

(assert (=> bs!27654 (= lambda!8678 lambda!8677)))

(declare-fun bs!27655 () Bool)

(assert (= bs!27655 (and b!55544 b!55497)))

(assert (=> bs!27655 (= lambda!8678 lambda!8662)))

(declare-fun b_next!38617 () Bool)

(assert (=> start!7798 (= b_next!38615 (or (and b!55544 (= lambda!8678 A!2078)) b_next!38617))))

(declare-fun tp!15651 () Bool)

(declare-fun e!29274 () Bool)

(declare-fun lt!9900 () Object!255)

(assert (=> b!55544 (= e!29274 (and tp!15651 (isStructure!0 lt!9900 lambda!8678)))))

(assert (=> b!55544 (= lt!9900 (ev!13 (v!2039 (value!4069 s!1795))))))

(declare-fun b!55546 () Bool)

(declare-fun e!29273 () Bool)

(declare-fun tp!15652 () Bool)

(assert (=> b!55546 (= e!29273 tp!15652)))

(declare-fun b!55545 () Bool)

(assert (=> b!55545 (= e!29274 e!29273)))

(assert (=> b!55468 (= tp!15644 e!29274)))

(assert (= (and b!55468 (is-OptionStructure!3 (v!2039 (value!4069 s!1795)))) b!55544))

(assert (= (and b!55545 (is-Some!292 (value!4069 (v!2039 (value!4069 s!1795))))) b!55546))

(assert (= (and b!55468 (is-Option!296 (v!2039 (value!4069 s!1795)))) b!55545))

(declare-fun m!60262 () Bool)

(assert (=> b!55544 m!60262))

(declare-fun bs!27656 () Bool)

(declare-fun b!55547 () Bool)

(assert (= bs!27656 (and b!55547 b!55526)))

(declare-fun lambda!8679 () Int)

(assert (=> bs!27656 (= lambda!8679 lambda!8673)))

(declare-fun bs!27657 () Bool)

(assert (= bs!27657 (and b!55547 b!55506)))

(assert (=> bs!27657 (= lambda!8679 lambda!8666)))

(declare-fun bs!27658 () Bool)

(assert (= bs!27658 (and b!55547 b!55472)))

(assert (=> bs!27658 (= lambda!8679 lambda!8654)))

(declare-fun bs!27659 () Bool)

(assert (= bs!27659 (and b!55547 b!55491)))

(assert (=> bs!27659 (= lambda!8679 lambda!8661)))

(declare-fun bs!27660 () Bool)

(assert (= bs!27660 (and b!55547 b!55532)))

(assert (=> bs!27660 (= lambda!8679 lambda!8674)))

(declare-fun bs!27661 () Bool)

(assert (= bs!27661 (and b!55547 b!55504)))

(assert (=> bs!27661 (= lambda!8679 lambda!8665)))

(declare-fun bs!27662 () Bool)

(assert (= bs!27662 (and b!55547 start!7798)))

(assert (=> bs!27662 (not (= lambda!8679 lambda!8653))))

(declare-fun bs!27663 () Bool)

(assert (= bs!27663 (and b!55547 b!55541)))

(assert (=> bs!27663 (= lambda!8679 lambda!8677)))

(declare-fun bs!27664 () Bool)

(assert (= bs!27664 (and b!55547 b!55497)))

(assert (=> bs!27664 (= lambda!8679 lambda!8662)))

(declare-fun bs!27665 () Bool)

(assert (= bs!27665 (and b!55547 b!55544)))

(assert (=> bs!27665 (= lambda!8679 lambda!8678)))

(declare-fun b_next!38619 () Bool)

(assert (=> start!7798 (= b_next!38617 (or (and b!55547 (= lambda!8679 A!2078)) b_next!38619))))

(declare-fun tp!15653 () Bool)

(declare-fun lt!9901 () Object!255)

(declare-fun e!29276 () Bool)

(assert (=> b!55547 (= e!29276 (and tp!15653 (isStructure!0 lt!9901 lambda!8679)))))

(assert (=> b!55547 (= lt!9901 (ev!13 (v!2039 b!55356)))))

(declare-fun b!55549 () Bool)

(declare-fun e!29275 () Bool)

(declare-fun tp!15654 () Bool)

(assert (=> b!55549 (= e!29275 tp!15654)))

(declare-fun b!55548 () Bool)

(assert (=> b!55548 (= e!29276 e!29275)))

(assert (=> b!55470 (= tp!15640 e!29276)))

(assert (= (and b!55470 (is-OptionStructure!3 (v!2039 b!55356))) b!55547))

(assert (= (and b!55548 (is-Some!292 (value!4069 (v!2039 b!55356)))) b!55549))

(assert (= (and b!55470 (is-Option!296 (v!2039 b!55356))) b!55548))

(declare-fun m!60264 () Bool)

(assert (=> b!55547 m!60264))

(declare-fun e!29278 () Bool)

(declare-fun lt!9902 () Object!255)

(declare-fun b!55550 () Bool)

(declare-fun tp!15655 () Bool)

(assert (=> b!55550 (= e!29278 (and tp!15655 (isStructure!0 lt!9902 lambda!8654)))))

(assert (=> b!55550 (= lt!9902 (ev!13 (ev!13 s!1795)))))

(declare-fun b!55552 () Bool)

(declare-fun e!29277 () Bool)

(declare-fun tp!15656 () Bool)

(assert (=> b!55552 (= e!29277 tp!15656)))

(declare-fun b!55551 () Bool)

(assert (=> b!55551 (= e!29278 e!29277)))

(assert (=> b!55472 (= tp!15641 e!29278)))

(assert (= (and b!55472 (is-OptionStructure!3 (ev!13 s!1795))) b!55550))

(assert (= (and b!55551 (is-Some!292 (value!4069 (ev!13 s!1795)))) b!55552))

(assert (= (and b!55472 (is-Option!296 (ev!13 s!1795))) b!55551))

(declare-fun m!60266 () Bool)

(assert (=> b!55550 m!60266))

(declare-fun b_lambda!14677 () Bool)

(assert (= b_lambda!14669 (or start!7798 b_lambda!14677)))

(declare-fun bs!27666 () Bool)

(declare-fun d!45358 () Bool)

(assert (= bs!27666 (and d!45358 start!7798)))

(declare-fun res!25698 () Bool)

(declare-fun e!29279 () Bool)

(assert (=> bs!27666 (=> (not res!25698) (not e!29279))))

(assert (=> bs!27666 (= res!25698 (is-Option!296 (Option!296 lt!9885)))))

(assert (=> bs!27666 (= (dynLambda!904 lambda!8653 (Option!296 lt!9885)) e!29279)))

(declare-fun b!55553 () Bool)

(assert (=> b!55553 (= e!29279 (isOption!12 (value!4069 (Option!296 lt!9885)) A!2078))))

(assert (= (and bs!27666 res!25698) b!55553))

(declare-fun m!60268 () Bool)

(assert (=> b!55553 m!60268))

(assert (=> b!55491 d!45358))

(declare-fun b_lambda!14679 () Bool)

(assert (= b_lambda!14671 (or start!7798 b_lambda!14679)))

(declare-fun bs!27667 () Bool)

(declare-fun d!45360 () Bool)

(assert (= bs!27667 (and d!45360 start!7798)))

(declare-fun res!25699 () Bool)

(declare-fun e!29280 () Bool)

(assert (=> bs!27667 (=> (not res!25699) (not e!29280))))

(assert (=> bs!27667 (= res!25699 (is-Option!296 (Integer!244 lt!9886)))))

(assert (=> bs!27667 (= (dynLambda!904 lambda!8653 (Integer!244 lt!9886)) e!29280)))

(declare-fun b!55554 () Bool)

(assert (=> b!55554 (= e!29280 (isOption!12 (value!4069 (Integer!244 lt!9886)) A!2078))))

(assert (= (and bs!27667 res!25699) b!55554))

(declare-fun m!60270 () Bool)

(assert (=> b!55554 m!60270))

(assert (=> b!55492 d!45360))

(declare-fun b_lambda!14681 () Bool)

(assert (= b_lambda!14673 (or start!7798 b_lambda!14681)))

(declare-fun bs!27668 () Bool)

(declare-fun d!45362 () Bool)

(assert (= bs!27668 (and d!45362 start!7798)))

(declare-fun res!25700 () Bool)

(declare-fun e!29281 () Bool)

(assert (=> bs!27668 (=> (not res!25700) (not e!29281))))

(assert (=> bs!27668 (= res!25700 (is-Option!296 (Option!296 lt!9888)))))

(assert (=> bs!27668 (= (dynLambda!904 lambda!8653 (Option!296 lt!9888)) e!29281)))

(declare-fun b!55555 () Bool)

(assert (=> b!55555 (= e!29281 (isOption!12 (value!4069 (Option!296 lt!9888)) A!2078))))

(assert (= (and bs!27668 res!25700) b!55555))

(declare-fun m!60272 () Bool)

(assert (=> b!55555 m!60272))

(assert (=> b!55497 d!45362))

(declare-fun b_lambda!14683 () Bool)

(assert (= b_lambda!14675 (or start!7798 b_lambda!14683)))

(declare-fun bs!27669 () Bool)

(declare-fun d!45364 () Bool)

(assert (= bs!27669 (and d!45364 start!7798)))

(declare-fun res!25701 () Bool)

(declare-fun e!29282 () Bool)

(assert (=> bs!27669 (=> (not res!25701) (not e!29282))))

(assert (=> bs!27669 (= res!25701 (is-Option!296 (Integer!244 lt!9889)))))

(assert (=> bs!27669 (= (dynLambda!904 lambda!8653 (Integer!244 lt!9889)) e!29282)))

(declare-fun b!55556 () Bool)

(assert (=> b!55556 (= e!29282 (isOption!12 (value!4069 (Integer!244 lt!9889)) A!2078))))

(assert (= (and bs!27669 res!25701) b!55556))

(declare-fun m!60274 () Bool)

(assert (=> b!55556 m!60274))

(assert (=> b!55498 d!45364))

(push 1)

(assert (not b!55547))

(assert (not b!55525))

(assert (not b_next!38619))

(assert (not b!55497))

(assert (not b_lambda!14665))

(assert (not b_lambda!14677))

(assert (not b!55543))

(assert (not b!55544))

(assert (not b!55487))

(assert (not b!55491))

(assert (not d!45354))

(assert (not b!55555))

(assert (not b!55541))

(assert (not d!45352))

(assert (not b!55506))

(assert (not d!45348))

(assert (not b!55496))

(assert (not b!55550))

(assert (not b!55493))

(assert (not b!55546))

(assert (not b!55556))

(assert (not b!55523))

(assert (not d!45356))

(assert (not b!55503))

(assert (not b!55495))

(assert (not b_lambda!14681))

(assert (not b!55490))

(assert (not b!55494))

(assert (not b_lambda!14679))

(assert (not b_lambda!14667))

(assert (not b!55530))

(assert (not b!55498))

(assert (not b!55504))

(assert (not b!55505))

(assert (not b!55552))

(assert (not b!55528))

(assert (not b!55488))

(assert (not b_lambda!14683))

(assert (not b!55492))

(assert (not b!55553))

(assert (not b!55527))

(assert (not b!55549))

(assert (not b!55554))

(assert (not b!55524))

(assert (not b!55532))

(assert b_and!58353)

(assert (not d!45350))

(assert (not b!55529))

(assert (not b!55489))

(assert (not b!55526))

(assert (not b!55531))

(assert (not d!45346))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58353)

(assert (not b_next!38619))

(check-sat)

(pop 1)

