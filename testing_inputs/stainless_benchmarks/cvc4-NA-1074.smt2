; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7888 () Bool)

(assert start!7888)

(declare-fun b_free!7273 () Bool)

(declare-fun b_next!38959 () Bool)

(assert (=> start!7888 (= b_free!7273 (not b_next!38959))))

(declare-fun tp!16064 () Bool)

(declare-fun b_and!58473 () Bool)

(assert (=> start!7888 (= tp!16064 b_and!58473)))

(declare-fun A!2194 () Int)

(declare-fun b!56812 () Bool)

(declare-fun lambda!8961 () Int)

(declare-fun b_next!38961 () Bool)

(assert (=> start!7888 (= b_next!38959 (or (and b!56812 (= lambda!8961 A!2194)) b_next!38961))))

(declare-fun bs!35619 () Bool)

(declare-fun b!56811 () Bool)

(assert (= bs!35619 (and b!56811 b!56812)))

(declare-fun lambda!8962 () Int)

(assert (=> bs!35619 (= lambda!8962 lambda!8961)))

(declare-fun b_next!38963 () Bool)

(assert (=> start!7888 (= b_next!38961 (or (and b!56811 (= lambda!8962 A!2194)) b_next!38963))))

(declare-fun bs!35620 () Bool)

(declare-fun b!56816 () Bool)

(assert (= bs!35620 (and b!56816 b!56812)))

(declare-fun lambda!8963 () Int)

(assert (=> bs!35620 (= lambda!8963 lambda!8961)))

(declare-fun bs!35621 () Bool)

(assert (= bs!35621 (and b!56816 b!56811)))

(assert (=> bs!35621 (= lambda!8963 lambda!8962)))

(declare-fun b_next!38965 () Bool)

(assert (=> start!7888 (= b_next!38963 (or (and b!56816 (= lambda!8963 A!2194)) b_next!38965))))

(declare-fun b!56808 () Bool)

(declare-fun res!26271 () Bool)

(declare-fun e!30128 () Bool)

(assert (=> b!56808 (=> (not res!26271) (not e!30128))))

(declare-datatypes () ((Option!309 (Some!299 (v!2046 Object!262)) (None!300)) (Object!262 (BigIntStructure!10) (StructureExt!10 (__x!140 Int)) (OptionStructure!10 (ev!20 Object!262)) (Option!310 (value!4090 Option!309)) (Integer!251 (value!4091 Int)) (Open!262 (value!4092 Int)))))

(declare-fun thiss!8058 () Object!262)

(declare-fun isStructureExt!0 (Object!262 Int) Bool)

(assert (=> b!56808 (= res!26271 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun b!56809 () Bool)

(declare-fun e!30129 () Bool)

(declare-fun tp!16065 () Bool)

(assert (=> b!56809 (= e!30129 tp!16065)))

(declare-fun b!56810 () Bool)

(declare-fun e!30132 () Bool)

(declare-fun e!30131 () Bool)

(assert (=> b!56810 (= e!30132 e!30131)))

(declare-fun tp!16062 () Bool)

(declare-fun lt!10399 () Object!262)

(declare-fun isStructure!0 (Object!262 Int) Bool)

(assert (=> b!56811 (= e!30132 (and tp!16062 (isStructure!0 lt!10399 lambda!8962)))))

(declare-fun x!24384 () Object!262)

(assert (=> b!56811 (= lt!10399 (ev!20 x!24384))))

(declare-fun tp!16068 () Bool)

(declare-fun lt!10401 () Object!262)

(declare-fun e!30133 () Bool)

(assert (=> b!56812 (= e!30133 (and tp!16068 (isStructure!0 lt!10401 lambda!8961)))))

(declare-fun y!1782 () Object!262)

(assert (=> b!56812 (= lt!10401 (ev!20 y!1782))))

(declare-fun res!26277 () Bool)

(assert (=> start!7888 (=> (not res!26277) (not e!30128))))

(assert (=> start!7888 (= res!26277 (isStructure!0 thiss!8058 A!2194))))

(assert (=> start!7888 e!30128))

(declare-fun lt!10402 () Object!262)

(assert (=> start!7888 (= lt!10402 y!1782)))

(declare-fun dynLambda!914 (Int Object!262) Bool)

(assert (=> start!7888 (and e!30133 (dynLambda!914 A!2194 lt!10402))))

(assert (=> start!7888 tp!16064))

(assert (=> start!7888 true))

(declare-fun lt!10400 () Object!262)

(assert (=> start!7888 (= lt!10400 x!24384)))

(assert (=> start!7888 (and e!30132 (dynLambda!914 A!2194 lt!10400))))

(declare-fun lt!10396 () Object!262)

(assert (=> start!7888 (= lt!10396 thiss!8058)))

(declare-fun e!30134 () Bool)

(assert (=> start!7888 (and e!30134 (isStructure!0 lt!10396 A!2194))))

(declare-fun b!56813 () Bool)

(declare-fun e!30135 () Bool)

(declare-fun lt!10398 () Bool)

(assert (=> b!56813 (= e!30135 (not lt!10398))))

(declare-fun someLaw!7 (Object!262 Object!262 Object!262) Bool)

(assert (=> b!56813 (= lt!10398 (someLaw!7 thiss!8058 x!24384 y!1782))))

(declare-fun doSomething!1 (Int Object!262 Object!262 Object!262) Object!262)

(assert (=> b!56813 (= lt!10398 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) (doSomething!1 A!2194 thiss!8058 y!1782 x!24384)))))

(declare-fun b!56814 () Bool)

(declare-fun res!26276 () Bool)

(assert (=> b!56814 (=> (not res!26276) (not e!30128))))

(assert (=> b!56814 (= res!26276 (dynLambda!914 A!2194 y!1782))))

(declare-fun b!56815 () Bool)

(declare-fun res!26273 () Bool)

(assert (=> b!56815 (=> (not res!26273) (not e!30128))))

(declare-fun res!25603 () Bool)

(declare-fun someLaw!4 (Int Object!262 Object!262 Object!262) Bool)

(assert (=> b!56815 (= res!26273 (= res!25603 (someLaw!4 A!2194 thiss!8058 x!24384 y!1782)))))

(declare-fun lt!10397 () Object!262)

(declare-fun tp!16063 () Bool)

(assert (=> b!56816 (= e!30134 (and tp!16063 (isStructure!0 lt!10397 lambda!8963)))))

(assert (=> b!56816 (= lt!10397 (ev!20 thiss!8058))))

(declare-fun b!56817 () Bool)

(declare-fun res!26272 () Bool)

(assert (=> b!56817 (=> (not res!26272) (not e!30128))))

(assert (=> b!56817 (= res!26272 (dynLambda!914 A!2194 x!24384))))

(declare-fun b!56818 () Bool)

(declare-fun e!30130 () Bool)

(assert (=> b!56818 (= e!30134 e!30130)))

(declare-fun b!56819 () Bool)

(declare-fun res!26274 () Bool)

(assert (=> b!56819 (=> (not res!26274) (not e!30128))))

(declare-fun isBigIntStructure!0 (Object!262) Bool)

(assert (=> b!56819 (= res!26274 (not (isBigIntStructure!0 thiss!8058)))))

(declare-fun b!56820 () Bool)

(assert (=> b!56820 (= e!30133 e!30129)))

(declare-fun b!56821 () Bool)

(assert (=> b!56821 (= e!30128 e!30135)))

(declare-fun res!26275 () Bool)

(assert (=> b!56821 (=> res!26275 e!30135)))

(assert (=> b!56821 (= res!26275 (not res!25603))))

(declare-fun b!56822 () Bool)

(declare-fun tp!16066 () Bool)

(assert (=> b!56822 (= e!30131 tp!16066)))

(declare-fun b!56823 () Bool)

(declare-fun tp!16067 () Bool)

(assert (=> b!56823 (= e!30130 tp!16067)))

(assert (= (and start!7888 res!26277) b!56817))

(assert (= (and b!56817 res!26272) b!56814))

(assert (= (and b!56814 res!26276) b!56819))

(assert (= (and b!56819 res!26274) b!56808))

(assert (= (and b!56808 res!26271) b!56815))

(assert (= (and b!56815 res!26273) b!56821))

(assert (= (and b!56821 (not res!26275)) b!56813))

(assert (= (and start!7888 (is-OptionStructure!10 y!1782)) b!56812))

(assert (= (and b!56820 (is-Some!299 (value!4090 y!1782))) b!56809))

(assert (= (and start!7888 (is-Option!310 y!1782)) b!56820))

(assert (= (and start!7888 (is-OptionStructure!10 x!24384)) b!56811))

(assert (= (and b!56810 (is-Some!299 (value!4090 x!24384))) b!56822))

(assert (= (and start!7888 (is-Option!310 x!24384)) b!56810))

(assert (= (and start!7888 (is-OptionStructure!10 thiss!8058)) b!56816))

(assert (= (and b!56818 (is-Some!299 (value!4090 thiss!8058))) b!56823))

(assert (= (and start!7888 (is-Option!310 thiss!8058)) b!56818))

(declare-fun b_lambda!15213 () Bool)

(assert (=> (not b_lambda!15213) (not start!7888)))

(declare-fun t!47012 () Bool)

(declare-fun tb!46011 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47012) tb!46011))

(declare-fun result!46369 () Bool)

(assert (=> tb!46011 (= result!46369 true)))

(assert (=> start!7888 t!47012))

(declare-fun b_and!58475 () Bool)

(assert (= b_and!58473 (and (=> t!47012 result!46369) b_and!58475)))

(declare-fun b_lambda!15215 () Bool)

(assert (=> (not b_lambda!15215) (not start!7888)))

(declare-fun t!47014 () Bool)

(declare-fun tb!46013 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47014) tb!46013))

(declare-fun result!46371 () Bool)

(assert (=> tb!46013 (= result!46371 true)))

(assert (=> start!7888 t!47014))

(declare-fun b_and!58477 () Bool)

(assert (= b_and!58475 (and (=> t!47014 result!46371) b_and!58477)))

(declare-fun b_lambda!15217 () Bool)

(assert (=> (not b_lambda!15217) (not b!56814)))

(declare-fun t!47016 () Bool)

(declare-fun tb!46015 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47016) tb!46015))

(declare-fun result!46373 () Bool)

(assert (=> tb!46015 (= result!46373 true)))

(assert (=> b!56814 t!47016))

(declare-fun b_and!58479 () Bool)

(assert (= b_and!58477 (and (=> t!47016 result!46373) b_and!58479)))

(declare-fun b_lambda!15219 () Bool)

(assert (=> (not b_lambda!15219) (not b!56817)))

(declare-fun t!47018 () Bool)

(declare-fun tb!46017 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47018) tb!46017))

(declare-fun result!46375 () Bool)

(assert (=> tb!46017 (= result!46375 true)))

(assert (=> b!56817 t!47018))

(declare-fun b_and!58481 () Bool)

(assert (= b_and!58479 (and (=> t!47018 result!46375) b_and!58481)))

(declare-fun m!61714 () Bool)

(assert (=> b!56808 m!61714))

(declare-fun m!61716 () Bool)

(assert (=> b!56813 m!61716))

(declare-fun m!61718 () Bool)

(assert (=> b!56813 m!61718))

(declare-fun m!61720 () Bool)

(assert (=> b!56813 m!61720))

(declare-fun m!61722 () Bool)

(assert (=> b!56811 m!61722))

(declare-fun m!61724 () Bool)

(assert (=> b!56815 m!61724))

(declare-fun m!61726 () Bool)

(assert (=> b!56819 m!61726))

(declare-fun m!61728 () Bool)

(assert (=> start!7888 m!61728))

(declare-fun m!61730 () Bool)

(assert (=> start!7888 m!61730))

(declare-fun m!61732 () Bool)

(assert (=> start!7888 m!61732))

(declare-fun m!61734 () Bool)

(assert (=> start!7888 m!61734))

(declare-fun m!61736 () Bool)

(assert (=> b!56816 m!61736))

(declare-fun m!61738 () Bool)

(assert (=> b!56812 m!61738))

(declare-fun m!61740 () Bool)

(assert (=> b!56814 m!61740))

(declare-fun m!61742 () Bool)

(assert (=> b!56817 m!61742))

(push 1)

(assert (not start!7888))

(assert (not b!56823))

(assert (not b!56819))

(assert (not b!56815))

(assert (not b!56816))

(assert (not b_lambda!15213))

(assert (not b_lambda!15217))

(assert (not b_next!38965))

(assert (not b!56808))

(assert b_and!58481)

(assert (not b!56811))

(assert (not b!56809))

(assert (not b_lambda!15219))

(assert (not b!56812))

(assert (not b_lambda!15215))

(assert (not b!56813))

(assert (not b!56822))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58481)

(assert (not b_next!38965))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15221 () Bool)

(assert (= b_lambda!15213 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and start!7888 b_free!7273) b_lambda!15221)))

(declare-fun bs!35622 () Bool)

(declare-fun d!49744 () Bool)

(assert (= bs!35622 (and d!49744 b!56812)))

(assert (=> bs!35622 (= (dynLambda!914 lambda!8961 lt!10402) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) start!7888) d!49744))

(declare-fun bs!35623 () Bool)

(declare-fun d!49746 () Bool)

(assert (= bs!35623 (and d!49746 b!56811)))

(assert (=> bs!35623 (= (dynLambda!914 lambda!8962 lt!10402) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) start!7888) d!49746))

(declare-fun bs!35624 () Bool)

(declare-fun d!49748 () Bool)

(assert (= bs!35624 (and d!49748 b!56816)))

(assert (=> bs!35624 (= (dynLambda!914 lambda!8963 lt!10402) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) start!7888) d!49748))

(declare-fun b_lambda!15223 () Bool)

(assert (= b_lambda!15217 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and start!7888 b_free!7273) b_lambda!15223)))

(declare-fun bs!35625 () Bool)

(declare-fun d!49750 () Bool)

(assert (= bs!35625 (and d!49750 b!56812)))

(assert (=> bs!35625 (= (dynLambda!914 lambda!8961 y!1782) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) b!56814) d!49750))

(declare-fun bs!35626 () Bool)

(declare-fun d!49752 () Bool)

(assert (= bs!35626 (and d!49752 b!56811)))

(assert (=> bs!35626 (= (dynLambda!914 lambda!8962 y!1782) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) b!56814) d!49752))

(declare-fun bs!35627 () Bool)

(declare-fun d!49754 () Bool)

(assert (= bs!35627 (and d!49754 b!56816)))

(assert (=> bs!35627 (= (dynLambda!914 lambda!8963 y!1782) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) b!56814) d!49754))

(declare-fun b_lambda!15225 () Bool)

(assert (= b_lambda!15215 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and start!7888 b_free!7273) b_lambda!15225)))

(declare-fun bs!35628 () Bool)

(declare-fun d!49756 () Bool)

(assert (= bs!35628 (and d!49756 b!56812)))

(assert (=> bs!35628 (= (dynLambda!914 lambda!8961 lt!10400) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) start!7888) d!49756))

(declare-fun bs!35629 () Bool)

(declare-fun d!49758 () Bool)

(assert (= bs!35629 (and d!49758 b!56811)))

(assert (=> bs!35629 (= (dynLambda!914 lambda!8962 lt!10400) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) start!7888) d!49758))

(declare-fun bs!35630 () Bool)

(declare-fun d!49760 () Bool)

(assert (= bs!35630 (and d!49760 b!56816)))

(assert (=> bs!35630 (= (dynLambda!914 lambda!8963 lt!10400) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) start!7888) d!49760))

(declare-fun b_lambda!15227 () Bool)

(assert (= b_lambda!15219 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and start!7888 b_free!7273) b_lambda!15227)))

(declare-fun bs!35631 () Bool)

(declare-fun d!49762 () Bool)

(assert (= bs!35631 (and d!49762 b!56812)))

(assert (=> bs!35631 (= (dynLambda!914 lambda!8961 x!24384) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) b!56817) d!49762))

(declare-fun bs!35632 () Bool)

(declare-fun d!49764 () Bool)

(assert (= bs!35632 (and d!49764 b!56811)))

(assert (=> bs!35632 (= (dynLambda!914 lambda!8962 x!24384) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) b!56817) d!49764))

(declare-fun bs!35633 () Bool)

(declare-fun d!49766 () Bool)

(assert (= bs!35633 (and d!49766 b!56816)))

(assert (=> bs!35633 (= (dynLambda!914 lambda!8963 x!24384) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) b!56817) d!49766))

(push 1)

(assert (not start!7888))

(assert (not b!56823))

(assert (not b_lambda!15227))

(assert (not b!56819))

(assert (not b!56815))

(assert (not b!56816))

(assert (not b_next!38965))

(assert (not b!56808))

(assert b_and!58481)

(assert (not b!56811))

(assert (not b!56809))

(assert (not b!56812))

(assert (not b_lambda!15223))

(assert (not b_lambda!15221))

(assert (not b_lambda!15225))

(assert (not b!56813))

(assert (not b!56822))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58481)

(assert (not b_next!38965))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!49768 () Bool)

(assert (=> d!49768 (= (isStructureExt!0 thiss!8058 A!2194) (is-StructureExt!10 thiss!8058))))

(assert (=> b!56808 d!49768))

(declare-fun d!49770 () Bool)

(declare-fun e!30138 () Bool)

(assert (=> d!49770 e!30138))

(declare-fun res!26287 () Bool)

(assert (=> d!49770 (=> (not res!26287) (not e!30138))))

(declare-fun res!26286 () Bool)

(assert (=> d!49770 (= res!26287 res!26286)))

(assert (=> d!49770 true))

(assert (=> d!49770 (= (someLaw!4 A!2194 thiss!8058 x!24384 y!1782) res!26286)))

(declare-fun b!56828 () Bool)

(declare-fun res!26285 () Bool)

(assert (=> b!56828 (=> (not res!26285) (not e!30138))))

(declare-fun lt!10405 () Bool)

(assert (=> b!56828 (= res!26285 lt!10405)))

(assert (=> b!56828 (= lt!10405 (someLaw!7 thiss!8058 x!24384 y!1782))))

(assert (=> b!56828 (= lt!10405 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) (doSomething!1 A!2194 thiss!8058 y!1782 x!24384)))))

(declare-fun b!56829 () Bool)

(declare-fun someLaw!5 (Object!262 Object!262 Object!262) Bool)

(assert (=> b!56829 (= e!30138 (= true (someLaw!5 thiss!8058 x!24384 y!1782)))))

(assert (= (and d!49770 res!26287) b!56828))

(assert (= (and b!56828 res!26285) b!56829))

(assert (=> b!56828 m!61716))

(assert (=> b!56828 m!61718))

(assert (=> b!56828 m!61720))

(declare-fun m!61744 () Bool)

(assert (=> b!56829 m!61744))

(assert (=> b!56815 d!49770))

(declare-fun d!49772 () Bool)

(assert (=> d!49772 (= (isBigIntStructure!0 thiss!8058) (is-BigIntStructure!10 thiss!8058))))

(assert (=> b!56819 d!49772))

(declare-fun bs!35634 () Bool)

(declare-fun b!56835 () Bool)

(assert (= bs!35634 (and b!56835 b!56812)))

(declare-fun lambda!8966 () Int)

(assert (=> bs!35634 (= lambda!8966 lambda!8961)))

(declare-fun bs!35635 () Bool)

(assert (= bs!35635 (and b!56835 b!56811)))

(assert (=> bs!35635 (= lambda!8966 lambda!8962)))

(declare-fun bs!35636 () Bool)

(assert (= bs!35636 (and b!56835 b!56816)))

(assert (=> bs!35636 (= lambda!8966 lambda!8963)))

(declare-fun b_next!38967 () Bool)

(assert (=> start!7888 (= b_next!38965 (or (and b!56835 (= lambda!8966 A!2194)) b_next!38967))))

(declare-fun d!49774 () Bool)

(declare-fun res!26292 () Bool)

(declare-fun e!30141 () Bool)

(assert (=> d!49774 (=> res!26292 e!30141)))

(assert (=> d!49774 (= res!26292 (isBigIntStructure!0 lt!10401))))

(assert (=> d!49774 (= (isStructure!0 lt!10401 lambda!8961) e!30141)))

(declare-fun b!56834 () Bool)

(declare-fun res!26293 () Bool)

(assert (=> b!56834 (=> res!26293 e!30141)))

(assert (=> b!56834 (= res!26293 (isStructureExt!0 lt!10401 lambda!8961))))

(declare-fun isOptionStructure!0 (Object!262 Int) Bool)

(assert (=> b!56835 (= e!30141 (isOptionStructure!0 lt!10401 lambda!8966))))

(assert (= (and d!49774 (not res!26292)) b!56834))

(assert (= (and b!56834 (not res!26293)) b!56835))

(declare-fun m!61746 () Bool)

(assert (=> d!49774 m!61746))

(declare-fun m!61748 () Bool)

(assert (=> b!56834 m!61748))

(declare-fun m!61750 () Bool)

(assert (=> b!56835 m!61750))

(assert (=> b!56812 d!49774))

(declare-fun bs!35637 () Bool)

(declare-fun b!56837 () Bool)

(assert (= bs!35637 (and b!56837 b!56812)))

(declare-fun lambda!8967 () Int)

(assert (=> bs!35637 (= lambda!8967 lambda!8961)))

(declare-fun bs!35638 () Bool)

(assert (= bs!35638 (and b!56837 b!56811)))

(assert (=> bs!35638 (= lambda!8967 lambda!8962)))

(declare-fun bs!35639 () Bool)

(assert (= bs!35639 (and b!56837 b!56816)))

(assert (=> bs!35639 (= lambda!8967 lambda!8963)))

(declare-fun bs!35640 () Bool)

(assert (= bs!35640 (and b!56837 b!56835)))

(assert (=> bs!35640 (= lambda!8967 lambda!8966)))

(declare-fun b_next!38969 () Bool)

(assert (=> start!7888 (= b_next!38967 (or (and b!56837 (= lambda!8967 A!2194)) b_next!38969))))

(declare-fun d!49776 () Bool)

(declare-fun res!26294 () Bool)

(declare-fun e!30142 () Bool)

(assert (=> d!49776 (=> res!26294 e!30142)))

(assert (=> d!49776 (= res!26294 (isBigIntStructure!0 lt!10399))))

(assert (=> d!49776 (= (isStructure!0 lt!10399 lambda!8962) e!30142)))

(declare-fun b!56836 () Bool)

(declare-fun res!26295 () Bool)

(assert (=> b!56836 (=> res!26295 e!30142)))

(assert (=> b!56836 (= res!26295 (isStructureExt!0 lt!10399 lambda!8962))))

(assert (=> b!56837 (= e!30142 (isOptionStructure!0 lt!10399 lambda!8967))))

(assert (= (and d!49776 (not res!26294)) b!56836))

(assert (= (and b!56836 (not res!26295)) b!56837))

(declare-fun m!61752 () Bool)

(assert (=> d!49776 m!61752))

(declare-fun m!61754 () Bool)

(assert (=> b!56836 m!61754))

(declare-fun m!61756 () Bool)

(assert (=> b!56837 m!61756))

(assert (=> b!56811 d!49776))

(declare-fun bs!35641 () Bool)

(declare-fun b!56839 () Bool)

(assert (= bs!35641 (and b!56839 b!56812)))

(declare-fun lambda!8968 () Int)

(assert (=> bs!35641 (= lambda!8968 lambda!8961)))

(declare-fun bs!35642 () Bool)

(assert (= bs!35642 (and b!56839 b!56835)))

(assert (=> bs!35642 (= lambda!8968 lambda!8966)))

(declare-fun bs!35643 () Bool)

(assert (= bs!35643 (and b!56839 b!56811)))

(assert (=> bs!35643 (= lambda!8968 lambda!8962)))

(declare-fun bs!35644 () Bool)

(assert (= bs!35644 (and b!56839 b!56837)))

(assert (=> bs!35644 (= lambda!8968 lambda!8967)))

(declare-fun bs!35645 () Bool)

(assert (= bs!35645 (and b!56839 b!56816)))

(assert (=> bs!35645 (= lambda!8968 lambda!8963)))

(declare-fun b_next!38971 () Bool)

(assert (=> start!7888 (= b_next!38969 (or (and b!56839 (= lambda!8968 A!2194)) b_next!38971))))

(declare-fun d!49778 () Bool)

(declare-fun res!26296 () Bool)

(declare-fun e!30143 () Bool)

(assert (=> d!49778 (=> res!26296 e!30143)))

(assert (=> d!49778 (= res!26296 (isBigIntStructure!0 lt!10397))))

(assert (=> d!49778 (= (isStructure!0 lt!10397 lambda!8963) e!30143)))

(declare-fun b!56838 () Bool)

(declare-fun res!26297 () Bool)

(assert (=> b!56838 (=> res!26297 e!30143)))

(assert (=> b!56838 (= res!26297 (isStructureExt!0 lt!10397 lambda!8963))))

(assert (=> b!56839 (= e!30143 (isOptionStructure!0 lt!10397 lambda!8968))))

(assert (= (and d!49778 (not res!26296)) b!56838))

(assert (= (and b!56838 (not res!26297)) b!56839))

(declare-fun m!61758 () Bool)

(assert (=> d!49778 m!61758))

(declare-fun m!61760 () Bool)

(assert (=> b!56838 m!61760))

(declare-fun m!61762 () Bool)

(assert (=> b!56839 m!61762))

(assert (=> b!56816 d!49778))

(declare-fun bs!35646 () Bool)

(declare-fun b!56841 () Bool)

(assert (= bs!35646 (and b!56841 b!56812)))

(declare-fun lambda!8969 () Int)

(assert (=> bs!35646 (= lambda!8969 lambda!8961)))

(declare-fun bs!35647 () Bool)

(assert (= bs!35647 (and b!56841 b!56839)))

(assert (=> bs!35647 (= lambda!8969 lambda!8968)))

(declare-fun bs!35648 () Bool)

(assert (= bs!35648 (and b!56841 b!56835)))

(assert (=> bs!35648 (= lambda!8969 lambda!8966)))

(declare-fun bs!35649 () Bool)

(assert (= bs!35649 (and b!56841 b!56811)))

(assert (=> bs!35649 (= lambda!8969 lambda!8962)))

(declare-fun bs!35650 () Bool)

(assert (= bs!35650 (and b!56841 b!56837)))

(assert (=> bs!35650 (= lambda!8969 lambda!8967)))

(declare-fun bs!35651 () Bool)

(assert (= bs!35651 (and b!56841 b!56816)))

(assert (=> bs!35651 (= lambda!8969 lambda!8963)))

(declare-fun b_next!38973 () Bool)

(assert (=> start!7888 (= b_next!38971 (or (and b!56841 (= lambda!8969 A!2194)) b_next!38973))))

(declare-fun d!49780 () Bool)

(declare-fun res!26298 () Bool)

(declare-fun e!30144 () Bool)

(assert (=> d!49780 (=> res!26298 e!30144)))

(assert (=> d!49780 (= res!26298 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49780 (= (isStructure!0 thiss!8058 A!2194) e!30144)))

(declare-fun b!56840 () Bool)

(declare-fun res!26299 () Bool)

(assert (=> b!56840 (=> res!26299 e!30144)))

(assert (=> b!56840 (= res!26299 (isStructureExt!0 thiss!8058 A!2194))))

(assert (=> b!56841 (= e!30144 (isOptionStructure!0 thiss!8058 lambda!8969))))

(assert (= (and d!49780 (not res!26298)) b!56840))

(assert (= (and b!56840 (not res!26299)) b!56841))

(assert (=> d!49780 m!61726))

(assert (=> b!56840 m!61714))

(declare-fun m!61764 () Bool)

(assert (=> b!56841 m!61764))

(assert (=> start!7888 d!49780))

(declare-fun bs!35652 () Bool)

(declare-fun b!56843 () Bool)

(assert (= bs!35652 (and b!56843 b!56841)))

(declare-fun lambda!8970 () Int)

(assert (=> bs!35652 (= lambda!8970 lambda!8969)))

(declare-fun bs!35653 () Bool)

(assert (= bs!35653 (and b!56843 b!56812)))

(assert (=> bs!35653 (= lambda!8970 lambda!8961)))

(declare-fun bs!35654 () Bool)

(assert (= bs!35654 (and b!56843 b!56839)))

(assert (=> bs!35654 (= lambda!8970 lambda!8968)))

(declare-fun bs!35655 () Bool)

(assert (= bs!35655 (and b!56843 b!56835)))

(assert (=> bs!35655 (= lambda!8970 lambda!8966)))

(declare-fun bs!35656 () Bool)

(assert (= bs!35656 (and b!56843 b!56811)))

(assert (=> bs!35656 (= lambda!8970 lambda!8962)))

(declare-fun bs!35657 () Bool)

(assert (= bs!35657 (and b!56843 b!56837)))

(assert (=> bs!35657 (= lambda!8970 lambda!8967)))

(declare-fun bs!35658 () Bool)

(assert (= bs!35658 (and b!56843 b!56816)))

(assert (=> bs!35658 (= lambda!8970 lambda!8963)))

(declare-fun b_next!38975 () Bool)

(assert (=> start!7888 (= b_next!38973 (or (and b!56843 (= lambda!8970 A!2194)) b_next!38975))))

(declare-fun d!49782 () Bool)

(declare-fun res!26300 () Bool)

(declare-fun e!30145 () Bool)

(assert (=> d!49782 (=> res!26300 e!30145)))

(assert (=> d!49782 (= res!26300 (isBigIntStructure!0 lt!10396))))

(assert (=> d!49782 (= (isStructure!0 lt!10396 A!2194) e!30145)))

(declare-fun b!56842 () Bool)

(declare-fun res!26301 () Bool)

(assert (=> b!56842 (=> res!26301 e!30145)))

(assert (=> b!56842 (= res!26301 (isStructureExt!0 lt!10396 A!2194))))

(assert (=> b!56843 (= e!30145 (isOptionStructure!0 lt!10396 lambda!8970))))

(assert (= (and d!49782 (not res!26300)) b!56842))

(assert (= (and b!56842 (not res!26301)) b!56843))

(declare-fun m!61766 () Bool)

(assert (=> d!49782 m!61766))

(declare-fun m!61768 () Bool)

(assert (=> b!56842 m!61768))

(declare-fun m!61770 () Bool)

(assert (=> b!56843 m!61770))

(assert (=> start!7888 d!49782))

(declare-fun d!49784 () Bool)

(assert (=> d!49784 true))

(assert (=> d!49784 true))

(declare-fun res!26304 () Bool)

(assert (=> d!49784 (= (someLaw!7 thiss!8058 x!24384 y!1782) res!26304)))

(assert (=> b!56813 d!49784))

(declare-fun bs!35659 () Bool)

(declare-fun b!56857 () Bool)

(assert (= bs!35659 (and b!56857 b!56841)))

(declare-fun lambda!8977 () Int)

(assert (=> bs!35659 (= lambda!8977 lambda!8969)))

(declare-fun bs!35660 () Bool)

(assert (= bs!35660 (and b!56857 b!56812)))

(assert (=> bs!35660 (= lambda!8977 lambda!8961)))

(declare-fun bs!35661 () Bool)

(assert (= bs!35661 (and b!56857 b!56843)))

(assert (=> bs!35661 (= lambda!8977 lambda!8970)))

(declare-fun bs!35662 () Bool)

(assert (= bs!35662 (and b!56857 b!56839)))

(assert (=> bs!35662 (= lambda!8977 lambda!8968)))

(declare-fun bs!35663 () Bool)

(assert (= bs!35663 (and b!56857 b!56835)))

(assert (=> bs!35663 (= lambda!8977 lambda!8966)))

(declare-fun bs!35664 () Bool)

(assert (= bs!35664 (and b!56857 b!56811)))

(assert (=> bs!35664 (= lambda!8977 lambda!8962)))

(declare-fun bs!35665 () Bool)

(assert (= bs!35665 (and b!56857 b!56837)))

(assert (=> bs!35665 (= lambda!8977 lambda!8967)))

(declare-fun bs!35666 () Bool)

(assert (= bs!35666 (and b!56857 b!56816)))

(assert (=> bs!35666 (= lambda!8977 lambda!8963)))

(declare-fun b_next!38977 () Bool)

(assert (=> start!7888 (= b_next!38975 (or (and b!56857 (= lambda!8977 A!2194)) b_next!38977))))

(declare-fun b!56856 () Bool)

(declare-fun e!30154 () Object!262)

(declare-fun e!30157 () Object!262)

(assert (=> b!56856 (= e!30154 e!30157)))

(declare-fun c!12157 () Bool)

(assert (=> b!56856 (= c!12157 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun d!49786 () Bool)

(declare-fun lt!10414 () Object!262)

(declare-fun doSomething!7 (Object!262 Object!262 Object!262) Object!262)

(assert (=> d!49786 (= lt!10414 (doSomething!7 thiss!8058 x!24384 y!1782))))

(assert (=> d!49786 (= lt!10414 e!30154)))

(declare-fun c!12156 () Bool)

(assert (=> d!49786 (= c!12156 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49786 (= (doSomething!1 A!2194 thiss!8058 x!24384 y!1782) lt!10414)))

(declare-fun lt!10412 () Option!309)

(assert (=> b!56857 (= e!30157 (Option!310 lt!10412))))

(assert (=> b!56857 (dynLambda!914 A!2194 (Option!310 lt!10412))))

(declare-fun doSomething!3 (Int Object!262 Option!309 Option!309) Option!309)

(assert (=> b!56857 (= lt!10412 (doSomething!3 lambda!8977 thiss!8058 (value!4090 x!24384) (value!4090 y!1782)))))

(declare-fun e!30156 () Bool)

(assert (=> b!56857 e!30156))

(declare-fun res!26311 () Bool)

(assert (=> b!56857 (=> (not res!26311) (not e!30156))))

(assert (=> b!56857 (= res!26311 (is-Option!310 y!1782))))

(declare-fun e!30155 () Bool)

(assert (=> b!56857 e!30155))

(declare-fun res!26310 () Bool)

(assert (=> b!56857 (=> (not res!26310) (not e!30155))))

(assert (=> b!56857 (= res!26310 (is-Option!310 x!24384))))

(declare-fun b!56858 () Bool)

(declare-fun isOption!18 (Option!309 Int) Bool)

(assert (=> b!56858 (= e!30156 (isOption!18 (value!4090 y!1782) lambda!8977))))

(declare-fun b!56859 () Bool)

(assert (=> b!56859 (= e!30155 (isOption!18 (value!4090 x!24384) lambda!8977))))

(declare-fun b!56860 () Bool)

(declare-fun doSomething!4 (Int Object!262 Object!262 Object!262) Object!262)

(assert (=> b!56860 (= e!30157 (doSomething!4 A!2194 thiss!8058 x!24384 y!1782))))

(declare-fun b!56861 () Bool)

(declare-fun lt!10413 () Int)

(assert (=> b!56861 (= e!30154 (Integer!251 lt!10413))))

(assert (=> b!56861 (dynLambda!914 A!2194 (Integer!251 lt!10413))))

(declare-fun doSomething!2 (Object!262 Int Int) Int)

(assert (=> b!56861 (= lt!10413 (doSomething!2 thiss!8058 (value!4091 x!24384) (value!4091 y!1782)))))

(assert (=> b!56861 (is-Integer!251 y!1782)))

(assert (=> b!56861 (is-Integer!251 x!24384)))

(assert (= (and b!56857 res!26310) b!56859))

(assert (= (and b!56857 res!26311) b!56858))

(assert (= (and b!56856 c!12157) b!56860))

(assert (= (and b!56856 (not c!12157)) b!56857))

(assert (= (and d!49786 c!12156) b!56861))

(assert (= (and d!49786 (not c!12156)) b!56856))

(declare-fun b_lambda!15229 () Bool)

(assert (=> (not b_lambda!15229) (not b!56857)))

(declare-fun t!47020 () Bool)

(declare-fun tb!46019 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47020) tb!46019))

(declare-fun result!46377 () Bool)

(assert (=> tb!46019 (= result!46377 true)))

(assert (=> b!56857 t!47020))

(declare-fun b_and!58483 () Bool)

(assert (= b_and!58481 (and (=> t!47020 result!46377) b_and!58483)))

(declare-fun b_lambda!15231 () Bool)

(assert (=> (not b_lambda!15231) (not b!56861)))

(declare-fun t!47022 () Bool)

(declare-fun tb!46021 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47022) tb!46021))

(declare-fun result!46379 () Bool)

(assert (=> tb!46021 (= result!46379 true)))

(assert (=> b!56861 t!47022))

(declare-fun b_and!58485 () Bool)

(assert (= b_and!58483 (and (=> t!47022 result!46379) b_and!58485)))

(declare-fun m!61772 () Bool)

(assert (=> b!56861 m!61772))

(declare-fun m!61774 () Bool)

(assert (=> b!56861 m!61774))

(declare-fun m!61776 () Bool)

(assert (=> b!56857 m!61776))

(declare-fun m!61778 () Bool)

(assert (=> b!56857 m!61778))

(declare-fun m!61780 () Bool)

(assert (=> b!56860 m!61780))

(declare-fun m!61782 () Bool)

(assert (=> d!49786 m!61782))

(assert (=> d!49786 m!61726))

(declare-fun m!61784 () Bool)

(assert (=> b!56858 m!61784))

(assert (=> b!56856 m!61714))

(declare-fun m!61786 () Bool)

(assert (=> b!56859 m!61786))

(assert (=> b!56813 d!49786))

(declare-fun bs!35667 () Bool)

(declare-fun b!56863 () Bool)

(assert (= bs!35667 (and b!56863 b!56841)))

(declare-fun lambda!8978 () Int)

(assert (=> bs!35667 (= lambda!8978 lambda!8969)))

(declare-fun bs!35668 () Bool)

(assert (= bs!35668 (and b!56863 b!56812)))

(assert (=> bs!35668 (= lambda!8978 lambda!8961)))

(declare-fun bs!35669 () Bool)

(assert (= bs!35669 (and b!56863 b!56843)))

(assert (=> bs!35669 (= lambda!8978 lambda!8970)))

(declare-fun bs!35670 () Bool)

(assert (= bs!35670 (and b!56863 b!56839)))

(assert (=> bs!35670 (= lambda!8978 lambda!8968)))

(declare-fun bs!35671 () Bool)

(assert (= bs!35671 (and b!56863 b!56835)))

(assert (=> bs!35671 (= lambda!8978 lambda!8966)))

(declare-fun bs!35672 () Bool)

(assert (= bs!35672 (and b!56863 b!56811)))

(assert (=> bs!35672 (= lambda!8978 lambda!8962)))

(declare-fun bs!35673 () Bool)

(assert (= bs!35673 (and b!56863 b!56837)))

(assert (=> bs!35673 (= lambda!8978 lambda!8967)))

(declare-fun bs!35674 () Bool)

(assert (= bs!35674 (and b!56863 b!56816)))

(assert (=> bs!35674 (= lambda!8978 lambda!8963)))

(declare-fun bs!35675 () Bool)

(assert (= bs!35675 (and b!56863 b!56857)))

(assert (=> bs!35675 (= lambda!8978 lambda!8977)))

(declare-fun b_next!38979 () Bool)

(assert (=> start!7888 (= b_next!38977 (or (and b!56863 (= lambda!8978 A!2194)) b_next!38979))))

(declare-fun b!56862 () Bool)

(declare-fun e!30158 () Object!262)

(declare-fun e!30161 () Object!262)

(assert (=> b!56862 (= e!30158 e!30161)))

(declare-fun c!12159 () Bool)

(assert (=> b!56862 (= c!12159 (isStructureExt!0 thiss!8058 A!2194))))

(declare-fun d!49788 () Bool)

(declare-fun lt!10417 () Object!262)

(assert (=> d!49788 (= lt!10417 (doSomething!7 thiss!8058 y!1782 x!24384))))

(assert (=> d!49788 (= lt!10417 e!30158)))

(declare-fun c!12158 () Bool)

(assert (=> d!49788 (= c!12158 (isBigIntStructure!0 thiss!8058))))

(assert (=> d!49788 (= (doSomething!1 A!2194 thiss!8058 y!1782 x!24384) lt!10417)))

(declare-fun lt!10415 () Option!309)

(assert (=> b!56863 (= e!30161 (Option!310 lt!10415))))

(assert (=> b!56863 (dynLambda!914 A!2194 (Option!310 lt!10415))))

(assert (=> b!56863 (= lt!10415 (doSomething!3 lambda!8978 thiss!8058 (value!4090 y!1782) (value!4090 x!24384)))))

(declare-fun e!30160 () Bool)

(assert (=> b!56863 e!30160))

(declare-fun res!26313 () Bool)

(assert (=> b!56863 (=> (not res!26313) (not e!30160))))

(assert (=> b!56863 (= res!26313 (is-Option!310 x!24384))))

(declare-fun e!30159 () Bool)

(assert (=> b!56863 e!30159))

(declare-fun res!26312 () Bool)

(assert (=> b!56863 (=> (not res!26312) (not e!30159))))

(assert (=> b!56863 (= res!26312 (is-Option!310 y!1782))))

(declare-fun b!56864 () Bool)

(assert (=> b!56864 (= e!30160 (isOption!18 (value!4090 x!24384) lambda!8978))))

(declare-fun b!56865 () Bool)

(assert (=> b!56865 (= e!30159 (isOption!18 (value!4090 y!1782) lambda!8978))))

(declare-fun b!56866 () Bool)

(assert (=> b!56866 (= e!30161 (doSomething!4 A!2194 thiss!8058 y!1782 x!24384))))

(declare-fun b!56867 () Bool)

(declare-fun lt!10416 () Int)

(assert (=> b!56867 (= e!30158 (Integer!251 lt!10416))))

(assert (=> b!56867 (dynLambda!914 A!2194 (Integer!251 lt!10416))))

(assert (=> b!56867 (= lt!10416 (doSomething!2 thiss!8058 (value!4091 y!1782) (value!4091 x!24384)))))

(assert (=> b!56867 (is-Integer!251 x!24384)))

(assert (=> b!56867 (is-Integer!251 y!1782)))

(assert (= (and b!56863 res!26312) b!56865))

(assert (= (and b!56863 res!26313) b!56864))

(assert (= (and b!56862 c!12159) b!56866))

(assert (= (and b!56862 (not c!12159)) b!56863))

(assert (= (and d!49788 c!12158) b!56867))

(assert (= (and d!49788 (not c!12158)) b!56862))

(declare-fun b_lambda!15233 () Bool)

(assert (=> (not b_lambda!15233) (not b!56863)))

(declare-fun t!47024 () Bool)

(declare-fun tb!46023 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47024) tb!46023))

(declare-fun result!46381 () Bool)

(assert (=> tb!46023 (= result!46381 true)))

(assert (=> b!56863 t!47024))

(declare-fun b_and!58487 () Bool)

(assert (= b_and!58485 (and (=> t!47024 result!46381) b_and!58487)))

(declare-fun b_lambda!15235 () Bool)

(assert (=> (not b_lambda!15235) (not b!56867)))

(declare-fun t!47026 () Bool)

(declare-fun tb!46025 () Bool)

(assert (=> (and start!7888 (= A!2194 A!2194) t!47026) tb!46025))

(declare-fun result!46383 () Bool)

(assert (=> tb!46025 (= result!46383 true)))

(assert (=> b!56867 t!47026))

(declare-fun b_and!58489 () Bool)

(assert (= b_and!58487 (and (=> t!47026 result!46383) b_and!58489)))

(declare-fun m!61788 () Bool)

(assert (=> b!56867 m!61788))

(declare-fun m!61790 () Bool)

(assert (=> b!56867 m!61790))

(declare-fun m!61792 () Bool)

(assert (=> b!56863 m!61792))

(declare-fun m!61794 () Bool)

(assert (=> b!56863 m!61794))

(declare-fun m!61796 () Bool)

(assert (=> b!56866 m!61796))

(declare-fun m!61798 () Bool)

(assert (=> d!49788 m!61798))

(assert (=> d!49788 m!61726))

(declare-fun m!61800 () Bool)

(assert (=> b!56864 m!61800))

(assert (=> b!56862 m!61714))

(declare-fun m!61802 () Bool)

(assert (=> b!56865 m!61802))

(assert (=> b!56813 d!49788))

(declare-fun bs!35676 () Bool)

(declare-fun b!56876 () Bool)

(assert (= bs!35676 (and b!56876 b!56841)))

(declare-fun lambda!8981 () Int)

(assert (=> bs!35676 (= lambda!8981 lambda!8969)))

(declare-fun bs!35677 () Bool)

(assert (= bs!35677 (and b!56876 b!56812)))

(assert (=> bs!35677 (= lambda!8981 lambda!8961)))

(declare-fun bs!35678 () Bool)

(assert (= bs!35678 (and b!56876 b!56843)))

(assert (=> bs!35678 (= lambda!8981 lambda!8970)))

(declare-fun bs!35679 () Bool)

(assert (= bs!35679 (and b!56876 b!56839)))

(assert (=> bs!35679 (= lambda!8981 lambda!8968)))

(declare-fun bs!35680 () Bool)

(assert (= bs!35680 (and b!56876 b!56835)))

(assert (=> bs!35680 (= lambda!8981 lambda!8966)))

(declare-fun bs!35681 () Bool)

(assert (= bs!35681 (and b!56876 b!56811)))

(assert (=> bs!35681 (= lambda!8981 lambda!8962)))

(declare-fun bs!35682 () Bool)

(assert (= bs!35682 (and b!56876 b!56837)))

(assert (=> bs!35682 (= lambda!8981 lambda!8967)))

(declare-fun bs!35683 () Bool)

(assert (= bs!35683 (and b!56876 b!56816)))

(assert (=> bs!35683 (= lambda!8981 lambda!8963)))

(declare-fun bs!35684 () Bool)

(assert (= bs!35684 (and b!56876 b!56863)))

(assert (=> bs!35684 (= lambda!8981 lambda!8978)))

(declare-fun bs!35685 () Bool)

(assert (= bs!35685 (and b!56876 b!56857)))

(assert (=> bs!35685 (= lambda!8981 lambda!8977)))

(declare-fun b_next!38981 () Bool)

(assert (=> start!7888 (= b_next!38979 (or (and b!56876 (= lambda!8981 A!2194)) b_next!38981))))

(declare-fun lt!10420 () Object!262)

(declare-fun tp!16073 () Bool)

(declare-fun e!30167 () Bool)

(assert (=> b!56876 (= e!30167 (and tp!16073 (isStructure!0 lt!10420 lambda!8981)))))

(assert (=> b!56876 (= lt!10420 (ev!20 (v!2046 (value!4090 y!1782))))))

(declare-fun b!56878 () Bool)

(declare-fun e!30166 () Bool)

(declare-fun tp!16074 () Bool)

(assert (=> b!56878 (= e!30166 tp!16074)))

(declare-fun b!56877 () Bool)

(assert (=> b!56877 (= e!30167 e!30166)))

(assert (=> b!56809 (= tp!16065 e!30167)))

(assert (= (and b!56809 (is-OptionStructure!10 (v!2046 (value!4090 y!1782)))) b!56876))

(assert (= (and b!56877 (is-Some!299 (value!4090 (v!2046 (value!4090 y!1782))))) b!56878))

(assert (= (and b!56809 (is-Option!310 (v!2046 (value!4090 y!1782)))) b!56877))

(declare-fun m!61804 () Bool)

(assert (=> b!56876 m!61804))

(declare-fun e!30169 () Bool)

(declare-fun lt!10421 () Object!262)

(declare-fun tp!16075 () Bool)

(declare-fun b!56879 () Bool)

(assert (=> b!56879 (= e!30169 (and tp!16075 (isStructure!0 lt!10421 lambda!8961)))))

(assert (=> b!56879 (= lt!10421 (ev!20 (ev!20 y!1782)))))

(declare-fun b!56881 () Bool)

(declare-fun e!30168 () Bool)

(declare-fun tp!16076 () Bool)

(assert (=> b!56881 (= e!30168 tp!16076)))

(declare-fun b!56880 () Bool)

(assert (=> b!56880 (= e!30169 e!30168)))

(assert (=> b!56812 (= tp!16068 e!30169)))

(assert (= (and b!56812 (is-OptionStructure!10 (ev!20 y!1782))) b!56879))

(assert (= (and b!56880 (is-Some!299 (value!4090 (ev!20 y!1782)))) b!56881))

(assert (= (and b!56812 (is-Option!310 (ev!20 y!1782))) b!56880))

(declare-fun m!61806 () Bool)

(assert (=> b!56879 m!61806))

(declare-fun e!30171 () Bool)

(declare-fun lt!10422 () Object!262)

(declare-fun b!56882 () Bool)

(declare-fun tp!16077 () Bool)

(assert (=> b!56882 (= e!30171 (and tp!16077 (isStructure!0 lt!10422 lambda!8962)))))

(assert (=> b!56882 (= lt!10422 (ev!20 (ev!20 x!24384)))))

(declare-fun b!56884 () Bool)

(declare-fun e!30170 () Bool)

(declare-fun tp!16078 () Bool)

(assert (=> b!56884 (= e!30170 tp!16078)))

(declare-fun b!56883 () Bool)

(assert (=> b!56883 (= e!30171 e!30170)))

(assert (=> b!56811 (= tp!16062 e!30171)))

(assert (= (and b!56811 (is-OptionStructure!10 (ev!20 x!24384))) b!56882))

(assert (= (and b!56883 (is-Some!299 (value!4090 (ev!20 x!24384)))) b!56884))

(assert (= (and b!56811 (is-Option!310 (ev!20 x!24384))) b!56883))

(declare-fun m!61808 () Bool)

(assert (=> b!56882 m!61808))

(declare-fun bs!35686 () Bool)

(declare-fun b!56885 () Bool)

(assert (= bs!35686 (and b!56885 b!56841)))

(declare-fun lambda!8982 () Int)

(assert (=> bs!35686 (= lambda!8982 lambda!8969)))

(declare-fun bs!35687 () Bool)

(assert (= bs!35687 (and b!56885 b!56812)))

(assert (=> bs!35687 (= lambda!8982 lambda!8961)))

(declare-fun bs!35688 () Bool)

(assert (= bs!35688 (and b!56885 b!56843)))

(assert (=> bs!35688 (= lambda!8982 lambda!8970)))

(declare-fun bs!35689 () Bool)

(assert (= bs!35689 (and b!56885 b!56839)))

(assert (=> bs!35689 (= lambda!8982 lambda!8968)))

(declare-fun bs!35690 () Bool)

(assert (= bs!35690 (and b!56885 b!56876)))

(assert (=> bs!35690 (= lambda!8982 lambda!8981)))

(declare-fun bs!35691 () Bool)

(assert (= bs!35691 (and b!56885 b!56835)))

(assert (=> bs!35691 (= lambda!8982 lambda!8966)))

(declare-fun bs!35692 () Bool)

(assert (= bs!35692 (and b!56885 b!56811)))

(assert (=> bs!35692 (= lambda!8982 lambda!8962)))

(declare-fun bs!35693 () Bool)

(assert (= bs!35693 (and b!56885 b!56837)))

(assert (=> bs!35693 (= lambda!8982 lambda!8967)))

(declare-fun bs!35694 () Bool)

(assert (= bs!35694 (and b!56885 b!56816)))

(assert (=> bs!35694 (= lambda!8982 lambda!8963)))

(declare-fun bs!35695 () Bool)

(assert (= bs!35695 (and b!56885 b!56863)))

(assert (=> bs!35695 (= lambda!8982 lambda!8978)))

(declare-fun bs!35696 () Bool)

(assert (= bs!35696 (and b!56885 b!56857)))

(assert (=> bs!35696 (= lambda!8982 lambda!8977)))

(declare-fun b_next!38983 () Bool)

(assert (=> start!7888 (= b_next!38981 (or (and b!56885 (= lambda!8982 A!2194)) b_next!38983))))

(declare-fun lt!10423 () Object!262)

(declare-fun tp!16079 () Bool)

(declare-fun e!30173 () Bool)

(assert (=> b!56885 (= e!30173 (and tp!16079 (isStructure!0 lt!10423 lambda!8982)))))

(assert (=> b!56885 (= lt!10423 (ev!20 (v!2046 (value!4090 thiss!8058))))))

(declare-fun b!56887 () Bool)

(declare-fun e!30172 () Bool)

(declare-fun tp!16080 () Bool)

(assert (=> b!56887 (= e!30172 tp!16080)))

(declare-fun b!56886 () Bool)

(assert (=> b!56886 (= e!30173 e!30172)))

(assert (=> b!56823 (= tp!16067 e!30173)))

(assert (= (and b!56823 (is-OptionStructure!10 (v!2046 (value!4090 thiss!8058)))) b!56885))

(assert (= (and b!56886 (is-Some!299 (value!4090 (v!2046 (value!4090 thiss!8058))))) b!56887))

(assert (= (and b!56823 (is-Option!310 (v!2046 (value!4090 thiss!8058)))) b!56886))

(declare-fun m!61810 () Bool)

(assert (=> b!56885 m!61810))

(declare-fun bs!35697 () Bool)

(declare-fun b!56888 () Bool)

(assert (= bs!35697 (and b!56888 b!56841)))

(declare-fun lambda!8983 () Int)

(assert (=> bs!35697 (= lambda!8983 lambda!8969)))

(declare-fun bs!35698 () Bool)

(assert (= bs!35698 (and b!56888 b!56812)))

(assert (=> bs!35698 (= lambda!8983 lambda!8961)))

(declare-fun bs!35699 () Bool)

(assert (= bs!35699 (and b!56888 b!56843)))

(assert (=> bs!35699 (= lambda!8983 lambda!8970)))

(declare-fun bs!35700 () Bool)

(assert (= bs!35700 (and b!56888 b!56839)))

(assert (=> bs!35700 (= lambda!8983 lambda!8968)))

(declare-fun bs!35701 () Bool)

(assert (= bs!35701 (and b!56888 b!56876)))

(assert (=> bs!35701 (= lambda!8983 lambda!8981)))

(declare-fun bs!35702 () Bool)

(assert (= bs!35702 (and b!56888 b!56835)))

(assert (=> bs!35702 (= lambda!8983 lambda!8966)))

(declare-fun bs!35703 () Bool)

(assert (= bs!35703 (and b!56888 b!56811)))

(assert (=> bs!35703 (= lambda!8983 lambda!8962)))

(declare-fun bs!35704 () Bool)

(assert (= bs!35704 (and b!56888 b!56837)))

(assert (=> bs!35704 (= lambda!8983 lambda!8967)))

(declare-fun bs!35705 () Bool)

(assert (= bs!35705 (and b!56888 b!56885)))

(assert (=> bs!35705 (= lambda!8983 lambda!8982)))

(declare-fun bs!35706 () Bool)

(assert (= bs!35706 (and b!56888 b!56816)))

(assert (=> bs!35706 (= lambda!8983 lambda!8963)))

(declare-fun bs!35707 () Bool)

(assert (= bs!35707 (and b!56888 b!56863)))

(assert (=> bs!35707 (= lambda!8983 lambda!8978)))

(declare-fun bs!35708 () Bool)

(assert (= bs!35708 (and b!56888 b!56857)))

(assert (=> bs!35708 (= lambda!8983 lambda!8977)))

(declare-fun b_next!38985 () Bool)

(assert (=> start!7888 (= b_next!38983 (or (and b!56888 (= lambda!8983 A!2194)) b_next!38985))))

(declare-fun e!30175 () Bool)

(declare-fun tp!16081 () Bool)

(declare-fun lt!10424 () Object!262)

(assert (=> b!56888 (= e!30175 (and tp!16081 (isStructure!0 lt!10424 lambda!8983)))))

(assert (=> b!56888 (= lt!10424 (ev!20 (v!2046 (value!4090 x!24384))))))

(declare-fun b!56890 () Bool)

(declare-fun e!30174 () Bool)

(declare-fun tp!16082 () Bool)

(assert (=> b!56890 (= e!30174 tp!16082)))

(declare-fun b!56889 () Bool)

(assert (=> b!56889 (= e!30175 e!30174)))

(assert (=> b!56822 (= tp!16066 e!30175)))

(assert (= (and b!56822 (is-OptionStructure!10 (v!2046 (value!4090 x!24384)))) b!56888))

(assert (= (and b!56889 (is-Some!299 (value!4090 (v!2046 (value!4090 x!24384))))) b!56890))

(assert (= (and b!56822 (is-Option!310 (v!2046 (value!4090 x!24384)))) b!56889))

(declare-fun m!61812 () Bool)

(assert (=> b!56888 m!61812))

(declare-fun tp!16083 () Bool)

(declare-fun b!56891 () Bool)

(declare-fun lt!10425 () Object!262)

(declare-fun e!30177 () Bool)

(assert (=> b!56891 (= e!30177 (and tp!16083 (isStructure!0 lt!10425 lambda!8963)))))

(assert (=> b!56891 (= lt!10425 (ev!20 (ev!20 thiss!8058)))))

(declare-fun b!56893 () Bool)

(declare-fun e!30176 () Bool)

(declare-fun tp!16084 () Bool)

(assert (=> b!56893 (= e!30176 tp!16084)))

(declare-fun b!56892 () Bool)

(assert (=> b!56892 (= e!30177 e!30176)))

(assert (=> b!56816 (= tp!16063 e!30177)))

(assert (= (and b!56816 (is-OptionStructure!10 (ev!20 thiss!8058))) b!56891))

(assert (= (and b!56892 (is-Some!299 (value!4090 (ev!20 thiss!8058)))) b!56893))

(assert (= (and b!56816 (is-Option!310 (ev!20 thiss!8058))) b!56892))

(declare-fun m!61814 () Bool)

(assert (=> b!56891 m!61814))

(declare-fun b_lambda!15237 () Bool)

(assert (= b_lambda!15233 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56837 (= lambda!8967 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56843 (= lambda!8970 A!2194)) (and b!56888 (= lambda!8983 A!2194)) (and b!56841 (= lambda!8969 A!2194)) (and start!7888 b_free!7273) (and b!56863 (= lambda!8978 A!2194)) (and b!56857 (= lambda!8977 A!2194)) (and b!56839 (= lambda!8968 A!2194)) (and b!56885 (= lambda!8982 A!2194)) (and b!56876 (= lambda!8981 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and b!56835 (= lambda!8966 A!2194)) b_lambda!15237)))

(declare-fun bs!35709 () Bool)

(declare-fun d!49790 () Bool)

(assert (= bs!35709 (and d!49790 b!56888)))

(assert (=> bs!35709 (= (dynLambda!914 lambda!8983 (Option!310 lt!10415)) true)))

(assert (=> (and b!56888 (= lambda!8983 A!2194) b!56863) d!49790))

(declare-fun bs!35710 () Bool)

(declare-fun d!49792 () Bool)

(assert (= bs!35710 (and d!49792 b!56811)))

(assert (=> bs!35710 (= (dynLambda!914 lambda!8962 (Option!310 lt!10415)) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) b!56863) d!49792))

(declare-fun bs!35711 () Bool)

(declare-fun d!49794 () Bool)

(assert (= bs!35711 (and d!49794 b!56885)))

(assert (=> bs!35711 (= (dynLambda!914 lambda!8982 (Option!310 lt!10415)) true)))

(assert (=> (and b!56885 (= lambda!8982 A!2194) b!56863) d!49794))

(declare-fun bs!35712 () Bool)

(declare-fun d!49796 () Bool)

(assert (= bs!35712 (and d!49796 b!56876)))

(assert (=> bs!35712 (= (dynLambda!914 lambda!8981 (Option!310 lt!10415)) true)))

(assert (=> (and b!56876 (= lambda!8981 A!2194) b!56863) d!49796))

(declare-fun bs!35713 () Bool)

(declare-fun d!49798 () Bool)

(assert (= bs!35713 (and d!49798 b!56816)))

(assert (=> bs!35713 (= (dynLambda!914 lambda!8963 (Option!310 lt!10415)) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) b!56863) d!49798))

(declare-fun bs!35714 () Bool)

(declare-fun d!49800 () Bool)

(assert (= bs!35714 (and d!49800 b!56841)))

(assert (=> bs!35714 (= (dynLambda!914 lambda!8969 (Option!310 lt!10415)) true)))

(assert (=> (and b!56841 (= lambda!8969 A!2194) b!56863) d!49800))

(declare-fun bs!35715 () Bool)

(declare-fun d!49802 () Bool)

(assert (= bs!35715 (and d!49802 b!56837)))

(assert (=> bs!35715 (= (dynLambda!914 lambda!8967 (Option!310 lt!10415)) true)))

(assert (=> (and b!56837 (= lambda!8967 A!2194) b!56863) d!49802))

(declare-fun bs!35716 () Bool)

(declare-fun d!49804 () Bool)

(assert (= bs!35716 (and d!49804 b!56843)))

(assert (=> bs!35716 (= (dynLambda!914 lambda!8970 (Option!310 lt!10415)) true)))

(assert (=> (and b!56843 (= lambda!8970 A!2194) b!56863) d!49804))

(declare-fun bs!35717 () Bool)

(declare-fun d!49806 () Bool)

(assert (= bs!35717 (and d!49806 b!56839)))

(assert (=> bs!35717 (= (dynLambda!914 lambda!8968 (Option!310 lt!10415)) true)))

(assert (=> (and b!56839 (= lambda!8968 A!2194) b!56863) d!49806))

(declare-fun bs!35718 () Bool)

(declare-fun d!49808 () Bool)

(assert (= bs!35718 (and d!49808 b!56863)))

(assert (=> bs!35718 (= (dynLambda!914 lambda!8978 (Option!310 lt!10415)) true)))

(assert (=> (and b!56863 (= lambda!8978 A!2194)) d!49808))

(declare-fun bs!35719 () Bool)

(declare-fun d!49810 () Bool)

(assert (= bs!35719 (and d!49810 b!56835)))

(assert (=> bs!35719 (= (dynLambda!914 lambda!8966 (Option!310 lt!10415)) true)))

(assert (=> (and b!56835 (= lambda!8966 A!2194) b!56863) d!49810))

(declare-fun bs!35720 () Bool)

(declare-fun d!49812 () Bool)

(assert (= bs!35720 (and d!49812 b!56812)))

(assert (=> bs!35720 (= (dynLambda!914 lambda!8961 (Option!310 lt!10415)) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) b!56863) d!49812))

(declare-fun bs!35721 () Bool)

(declare-fun d!49814 () Bool)

(assert (= bs!35721 (and d!49814 b!56857)))

(assert (=> bs!35721 (= (dynLambda!914 lambda!8977 (Option!310 lt!10415)) true)))

(assert (=> (and b!56857 (= lambda!8977 A!2194) b!56863) d!49814))

(declare-fun b_lambda!15239 () Bool)

(assert (= b_lambda!15231 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56837 (= lambda!8967 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56843 (= lambda!8970 A!2194)) (and b!56888 (= lambda!8983 A!2194)) (and b!56841 (= lambda!8969 A!2194)) (and start!7888 b_free!7273) (and b!56863 (= lambda!8978 A!2194)) (and b!56857 (= lambda!8977 A!2194)) (and b!56839 (= lambda!8968 A!2194)) (and b!56885 (= lambda!8982 A!2194)) (and b!56876 (= lambda!8981 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and b!56835 (= lambda!8966 A!2194)) b_lambda!15239)))

(declare-fun bs!35722 () Bool)

(declare-fun d!49816 () Bool)

(assert (= bs!35722 (and d!49816 b!56888)))

(assert (=> bs!35722 (= (dynLambda!914 lambda!8983 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56888 (= lambda!8983 A!2194) b!56861) d!49816))

(declare-fun bs!35723 () Bool)

(declare-fun d!49818 () Bool)

(assert (= bs!35723 (and d!49818 b!56876)))

(assert (=> bs!35723 (= (dynLambda!914 lambda!8981 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56876 (= lambda!8981 A!2194) b!56861) d!49818))

(declare-fun bs!35724 () Bool)

(declare-fun d!49820 () Bool)

(assert (= bs!35724 (and d!49820 b!56843)))

(assert (=> bs!35724 (= (dynLambda!914 lambda!8970 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56843 (= lambda!8970 A!2194) b!56861) d!49820))

(declare-fun bs!35725 () Bool)

(declare-fun d!49822 () Bool)

(assert (= bs!35725 (and d!49822 b!56841)))

(assert (=> bs!35725 (= (dynLambda!914 lambda!8969 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56841 (= lambda!8969 A!2194) b!56861) d!49822))

(declare-fun bs!35726 () Bool)

(declare-fun d!49824 () Bool)

(assert (= bs!35726 (and d!49824 b!56835)))

(assert (=> bs!35726 (= (dynLambda!914 lambda!8966 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56835 (= lambda!8966 A!2194) b!56861) d!49824))

(declare-fun bs!35727 () Bool)

(declare-fun d!49826 () Bool)

(assert (= bs!35727 (and d!49826 b!56837)))

(assert (=> bs!35727 (= (dynLambda!914 lambda!8967 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56837 (= lambda!8967 A!2194) b!56861) d!49826))

(declare-fun bs!35728 () Bool)

(declare-fun d!49828 () Bool)

(assert (= bs!35728 (and d!49828 b!56811)))

(assert (=> bs!35728 (= (dynLambda!914 lambda!8962 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) b!56861) d!49828))

(declare-fun bs!35729 () Bool)

(declare-fun d!49830 () Bool)

(assert (= bs!35729 (and d!49830 b!56812)))

(assert (=> bs!35729 (= (dynLambda!914 lambda!8961 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) b!56861) d!49830))

(declare-fun bs!35730 () Bool)

(declare-fun d!49832 () Bool)

(assert (= bs!35730 (and d!49832 b!56816)))

(assert (=> bs!35730 (= (dynLambda!914 lambda!8963 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) b!56861) d!49832))

(declare-fun bs!35731 () Bool)

(declare-fun d!49834 () Bool)

(assert (= bs!35731 (and d!49834 b!56857)))

(assert (=> bs!35731 (= (dynLambda!914 lambda!8977 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56857 (= lambda!8977 A!2194) b!56861) d!49834))

(declare-fun bs!35732 () Bool)

(declare-fun d!49836 () Bool)

(assert (= bs!35732 (and d!49836 b!56839)))

(assert (=> bs!35732 (= (dynLambda!914 lambda!8968 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56839 (= lambda!8968 A!2194) b!56861) d!49836))

(declare-fun bs!35733 () Bool)

(declare-fun d!49838 () Bool)

(assert (= bs!35733 (and d!49838 b!56885)))

(assert (=> bs!35733 (= (dynLambda!914 lambda!8982 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56885 (= lambda!8982 A!2194) b!56861) d!49838))

(declare-fun bs!35734 () Bool)

(declare-fun d!49840 () Bool)

(assert (= bs!35734 (and d!49840 b!56863)))

(assert (=> bs!35734 (= (dynLambda!914 lambda!8978 (Integer!251 lt!10413)) true)))

(assert (=> (and b!56863 (= lambda!8978 A!2194) b!56861) d!49840))

(declare-fun b_lambda!15241 () Bool)

(assert (= b_lambda!15235 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56837 (= lambda!8967 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56843 (= lambda!8970 A!2194)) (and b!56888 (= lambda!8983 A!2194)) (and b!56841 (= lambda!8969 A!2194)) (and start!7888 b_free!7273) (and b!56863 (= lambda!8978 A!2194)) (and b!56857 (= lambda!8977 A!2194)) (and b!56839 (= lambda!8968 A!2194)) (and b!56885 (= lambda!8982 A!2194)) (and b!56876 (= lambda!8981 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and b!56835 (= lambda!8966 A!2194)) b_lambda!15241)))

(declare-fun bs!35735 () Bool)

(declare-fun d!49842 () Bool)

(assert (= bs!35735 (and d!49842 b!56839)))

(assert (=> bs!35735 (= (dynLambda!914 lambda!8968 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56839 (= lambda!8968 A!2194) b!56867) d!49842))

(declare-fun bs!35736 () Bool)

(declare-fun d!49844 () Bool)

(assert (= bs!35736 (and d!49844 b!56816)))

(assert (=> bs!35736 (= (dynLambda!914 lambda!8963 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) b!56867) d!49844))

(declare-fun bs!35737 () Bool)

(declare-fun d!49846 () Bool)

(assert (= bs!35737 (and d!49846 b!56876)))

(assert (=> bs!35737 (= (dynLambda!914 lambda!8981 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56876 (= lambda!8981 A!2194) b!56867) d!49846))

(declare-fun bs!35738 () Bool)

(declare-fun d!49848 () Bool)

(assert (= bs!35738 (and d!49848 b!56843)))

(assert (=> bs!35738 (= (dynLambda!914 lambda!8970 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56843 (= lambda!8970 A!2194) b!56867) d!49848))

(declare-fun bs!35739 () Bool)

(declare-fun d!49850 () Bool)

(assert (= bs!35739 (and d!49850 b!56857)))

(assert (=> bs!35739 (= (dynLambda!914 lambda!8977 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56857 (= lambda!8977 A!2194) b!56867) d!49850))

(declare-fun bs!35740 () Bool)

(declare-fun d!49852 () Bool)

(assert (= bs!35740 (and d!49852 b!56888)))

(assert (=> bs!35740 (= (dynLambda!914 lambda!8983 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56888 (= lambda!8983 A!2194) b!56867) d!49852))

(declare-fun bs!35741 () Bool)

(declare-fun d!49854 () Bool)

(assert (= bs!35741 (and d!49854 b!56863)))

(assert (=> bs!35741 (= (dynLambda!914 lambda!8978 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56863 (= lambda!8978 A!2194) b!56867) d!49854))

(declare-fun bs!35742 () Bool)

(declare-fun d!49856 () Bool)

(assert (= bs!35742 (and d!49856 b!56837)))

(assert (=> bs!35742 (= (dynLambda!914 lambda!8967 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56837 (= lambda!8967 A!2194) b!56867) d!49856))

(declare-fun bs!35743 () Bool)

(declare-fun d!49858 () Bool)

(assert (= bs!35743 (and d!49858 b!56811)))

(assert (=> bs!35743 (= (dynLambda!914 lambda!8962 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) b!56867) d!49858))

(declare-fun bs!35744 () Bool)

(declare-fun d!49860 () Bool)

(assert (= bs!35744 (and d!49860 b!56885)))

(assert (=> bs!35744 (= (dynLambda!914 lambda!8982 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56885 (= lambda!8982 A!2194) b!56867) d!49860))

(declare-fun bs!35745 () Bool)

(declare-fun d!49862 () Bool)

(assert (= bs!35745 (and d!49862 b!56812)))

(assert (=> bs!35745 (= (dynLambda!914 lambda!8961 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) b!56867) d!49862))

(declare-fun bs!35746 () Bool)

(declare-fun d!49864 () Bool)

(assert (= bs!35746 (and d!49864 b!56841)))

(assert (=> bs!35746 (= (dynLambda!914 lambda!8969 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56841 (= lambda!8969 A!2194) b!56867) d!49864))

(declare-fun bs!35747 () Bool)

(declare-fun d!49866 () Bool)

(assert (= bs!35747 (and d!49866 b!56835)))

(assert (=> bs!35747 (= (dynLambda!914 lambda!8966 (Integer!251 lt!10416)) true)))

(assert (=> (and b!56835 (= lambda!8966 A!2194) b!56867) d!49866))

(declare-fun b_lambda!15243 () Bool)

(assert (= b_lambda!15229 (or (and b!56812 (= lambda!8961 A!2194)) (and b!56837 (= lambda!8967 A!2194)) (and b!56811 (= lambda!8962 A!2194)) (and b!56843 (= lambda!8970 A!2194)) (and b!56888 (= lambda!8983 A!2194)) (and b!56841 (= lambda!8969 A!2194)) (and start!7888 b_free!7273) (and b!56863 (= lambda!8978 A!2194)) (and b!56857 (= lambda!8977 A!2194)) (and b!56839 (= lambda!8968 A!2194)) (and b!56885 (= lambda!8982 A!2194)) (and b!56876 (= lambda!8981 A!2194)) (and b!56816 (= lambda!8963 A!2194)) (and b!56835 (= lambda!8966 A!2194)) b_lambda!15243)))

(declare-fun bs!35748 () Bool)

(declare-fun d!49868 () Bool)

(assert (= bs!35748 (and d!49868 b!56888)))

(assert (=> bs!35748 (= (dynLambda!914 lambda!8983 (Option!310 lt!10412)) true)))

(assert (=> (and b!56888 (= lambda!8983 A!2194) b!56857) d!49868))

(declare-fun bs!35749 () Bool)

(declare-fun d!49870 () Bool)

(assert (= bs!35749 (and d!49870 b!56837)))

(assert (=> bs!35749 (= (dynLambda!914 lambda!8967 (Option!310 lt!10412)) true)))

(assert (=> (and b!56837 (= lambda!8967 A!2194) b!56857) d!49870))

(declare-fun bs!35750 () Bool)

(declare-fun d!49872 () Bool)

(assert (= bs!35750 (and d!49872 b!56839)))

(assert (=> bs!35750 (= (dynLambda!914 lambda!8968 (Option!310 lt!10412)) true)))

(assert (=> (and b!56839 (= lambda!8968 A!2194) b!56857) d!49872))

(declare-fun bs!35751 () Bool)

(declare-fun d!49874 () Bool)

(assert (= bs!35751 (and d!49874 b!56843)))

(assert (=> bs!35751 (= (dynLambda!914 lambda!8970 (Option!310 lt!10412)) true)))

(assert (=> (and b!56843 (= lambda!8970 A!2194) b!56857) d!49874))

(declare-fun bs!35752 () Bool)

(declare-fun d!49876 () Bool)

(assert (= bs!35752 (and d!49876 b!56876)))

(assert (=> bs!35752 (= (dynLambda!914 lambda!8981 (Option!310 lt!10412)) true)))

(assert (=> (and b!56876 (= lambda!8981 A!2194) b!56857) d!49876))

(declare-fun bs!35753 () Bool)

(declare-fun d!49878 () Bool)

(assert (= bs!35753 (and d!49878 b!56841)))

(assert (=> bs!35753 (= (dynLambda!914 lambda!8969 (Option!310 lt!10412)) true)))

(assert (=> (and b!56841 (= lambda!8969 A!2194) b!56857) d!49878))

(declare-fun bs!35754 () Bool)

(declare-fun d!49880 () Bool)

(assert (= bs!35754 (and d!49880 b!56863)))

(assert (=> bs!35754 (= (dynLambda!914 lambda!8978 (Option!310 lt!10412)) true)))

(assert (=> (and b!56863 (= lambda!8978 A!2194) b!56857) d!49880))

(declare-fun bs!35755 () Bool)

(declare-fun d!49882 () Bool)

(assert (= bs!35755 (and d!49882 b!56812)))

(assert (=> bs!35755 (= (dynLambda!914 lambda!8961 (Option!310 lt!10412)) true)))

(assert (=> (and b!56812 (= lambda!8961 A!2194) b!56857) d!49882))

(declare-fun bs!35756 () Bool)

(declare-fun d!49884 () Bool)

(assert (= bs!35756 (and d!49884 b!56816)))

(assert (=> bs!35756 (= (dynLambda!914 lambda!8963 (Option!310 lt!10412)) true)))

(assert (=> (and b!56816 (= lambda!8963 A!2194) b!56857) d!49884))

(declare-fun bs!35757 () Bool)

(declare-fun d!49886 () Bool)

(assert (= bs!35757 (and d!49886 b!56835)))

(assert (=> bs!35757 (= (dynLambda!914 lambda!8966 (Option!310 lt!10412)) true)))

(assert (=> (and b!56835 (= lambda!8966 A!2194) b!56857) d!49886))

(declare-fun bs!35758 () Bool)

(declare-fun d!49888 () Bool)

(assert (= bs!35758 (and d!49888 b!56885)))

(assert (=> bs!35758 (= (dynLambda!914 lambda!8982 (Option!310 lt!10412)) true)))

(assert (=> (and b!56885 (= lambda!8982 A!2194) b!56857) d!49888))

(declare-fun bs!35759 () Bool)

(declare-fun d!49890 () Bool)

(assert (= bs!35759 (and d!49890 b!56857)))

(assert (=> bs!35759 (= (dynLambda!914 lambda!8977 (Option!310 lt!10412)) true)))

(assert (=> (and b!56857 (= lambda!8977 A!2194)) d!49890))

(declare-fun bs!35760 () Bool)

(declare-fun d!49892 () Bool)

(assert (= bs!35760 (and d!49892 b!56811)))

(assert (=> bs!35760 (= (dynLambda!914 lambda!8962 (Option!310 lt!10412)) true)))

(assert (=> (and b!56811 (= lambda!8962 A!2194) b!56857) d!49892))

(push 1)

(assert (not d!49788))

(assert (not b!56841))

(assert (not d!49776))

(assert (not b!56856))

(assert (not b!56865))

(assert (not b!56887))

(assert (not d!49780))

(assert (not b!56840))

(assert (not b_lambda!15227))

(assert (not b!56857))

(assert (not b!56876))

(assert (not d!49786))

(assert (not b!56882))

(assert (not b!56842))

(assert (not b!56838))

(assert (not b!56890))

(assert (not b!56843))

(assert (not b!56878))

(assert (not d!49778))

(assert (not b!56891))

(assert (not b!56864))

(assert (not b!56829))

(assert (not b!56835))

(assert (not b!56884))

(assert (not b!56861))

(assert (not b!56828))

(assert (not b!56839))

(assert (not b!56867))

(assert (not b!56888))

(assert (not b_lambda!15243))

(assert (not b!56834))

(assert (not b!56866))

(assert (not b_next!38985))

(assert (not b!56885))

(assert (not b_lambda!15223))

(assert (not b_lambda!15221))

(assert (not b!56879))

(assert (not b!56881))

(assert (not b_lambda!15237))

(assert (not b_lambda!15239))

(assert (not b_lambda!15225))

(assert (not d!49782))

(assert (not b_lambda!15241))

(assert (not b!56860))

(assert (not b!56863))

(assert (not b!56862))

(assert (not d!49774))

(assert (not b!56858))

(assert (not b!56859))

(assert (not b!56836))

(assert (not b!56837))

(assert (not b!56893))

(assert b_and!58489)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58489)

(assert (not b_next!38985))

(check-sat)

(pop 1)

