; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7238 () Bool)

(assert start!7238)

(declare-fun res!24018 () Bool)

(declare-fun e!27462 () Bool)

(assert (=> start!7238 (=> (not res!24018) (not e!27462))))

(declare-datatypes () ((N!4 (Z!4) (S!17 (n!1547 N!4)))))

(declare-datatypes () ((Object!207 ($anon!48) (NatExt!3 (__x!71 Int)) ($anon!49) (N!5 (value!3388 N!4)) (Integer!201 (value!3389 Int)) (Open!207 (value!3390 Int)))))

(declare-fun nNat!2 () Object!207)

(declare-fun isNat!2 (Object!207) Bool)

(assert (=> start!7238 (= res!24018 (isNat!2 nNat!2))))

(assert (=> start!7238 e!27462))

(declare-fun lt!9246 () Object!207)

(assert (=> start!7238 (= lt!9246 nNat!2)))

(assert (=> start!7238 (isNat!2 lt!9246)))

(declare-fun b!52904 () Bool)

(declare-fun res!24019 () Bool)

(assert (=> b!52904 (=> (not res!24019) (not e!27462))))

(assert (=> b!52904 (= res!24019 (= nNat!2 $anon!49))))

(declare-fun b!52905 () Bool)

(declare-fun succ!0 (Object!207 Object!207) Object!207)

(declare-fun one!0 (Object!207) Object!207)

(declare-fun two!1 (Object!207) Object!207)

(assert (=> b!52905 (= e!27462 (not (= (succ!0 nNat!2 (one!0 nNat!2)) (two!1 nNat!2))))))

(assert (= (and start!7238 res!24018) b!52904))

(assert (= (and b!52904 res!24019) b!52905))

(declare-fun m!56923 () Bool)

(assert (=> start!7238 m!56923))

(declare-fun m!56925 () Bool)

(assert (=> start!7238 m!56925))

(declare-fun m!56927 () Bool)

(assert (=> b!52905 m!56927))

(assert (=> b!52905 m!56927))

(declare-fun m!56929 () Bool)

(assert (=> b!52905 m!56929))

(declare-fun m!56931 () Bool)

(assert (=> b!52905 m!56931))

(push 1)

(assert (not b!52905))

(assert (not start!7238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44504 () Bool)

(declare-fun c!11497 () Bool)

(declare-fun is$anon!0 (Object!207) Bool)

(assert (=> d!44504 (= c!11497 (is$anon!0 nNat!2))))

(declare-fun e!27467 () Object!207)

(assert (=> d!44504 (= (succ!0 nNat!2 (one!0 nNat!2)) e!27467)))

(declare-fun b!52917 () Bool)

(declare-fun e!27468 () Object!207)

(declare-fun succ!2 (Object!207 N!4) N!4)

(assert (=> b!52917 (= e!27468 (N!5 (succ!2 nNat!2 (value!3388 (one!0 nNat!2)))))))

(declare-fun b!52915 () Bool)

(assert (=> b!52915 (= e!27467 e!27468)))

(declare-fun c!11498 () Bool)

(declare-fun isNatExt!0 (Object!207) Bool)

(assert (=> b!52915 (= c!11498 (isNatExt!0 nNat!2))))

(declare-fun b!52914 () Bool)

(declare-fun succ!1 (Object!207 Int) Int)

(assert (=> b!52914 (= e!27467 (Integer!201 (succ!1 nNat!2 (value!3389 (one!0 nNat!2)))))))

(declare-fun b!52916 () Bool)

(declare-fun succ!3 (Object!207 Object!207) Object!207)

(assert (=> b!52916 (= e!27468 (succ!3 nNat!2 (one!0 nNat!2)))))

(assert (= (and b!52915 c!11498) b!52916))

(assert (= (and b!52915 (not c!11498)) b!52917))

(assert (= (and d!44504 c!11497) b!52914))

(assert (= (and d!44504 (not c!11497)) b!52915))

(declare-fun m!56933 () Bool)

(assert (=> d!44504 m!56933))

(assert (=> b!52916 m!56927))

(declare-fun m!56935 () Bool)

(assert (=> b!52916 m!56935))

(declare-fun m!56937 () Bool)

(assert (=> b!52914 m!56937))

(declare-fun m!56939 () Bool)

(assert (=> b!52915 m!56939))

(declare-fun m!56941 () Bool)

(assert (=> b!52917 m!56941))

(assert (=> b!52905 d!44504))

(declare-fun b!52926 () Bool)

(declare-fun e!27473 () Object!207)

(declare-fun one!1 (Object!207) Int)

(assert (=> b!52926 (= e!27473 (Integer!201 (one!1 nNat!2)))))

(declare-fun b!52927 () Bool)

(declare-fun e!27474 () Object!207)

(assert (=> b!52927 (= e!27473 e!27474)))

(declare-fun c!11504 () Bool)

(assert (=> b!52927 (= c!11504 (isNatExt!0 nNat!2))))

(declare-fun b!52929 () Bool)

(declare-fun one!2 (Object!207) N!4)

(assert (=> b!52929 (= e!27474 (N!5 (one!2 nNat!2)))))

(declare-fun d!44506 () Bool)

(declare-fun c!11503 () Bool)

(assert (=> d!44506 (= c!11503 (is$anon!0 nNat!2))))

(assert (=> d!44506 (= (one!0 nNat!2) e!27473)))

(declare-fun b!52928 () Bool)

(declare-fun one!7 (Object!207) Object!207)

(assert (=> b!52928 (= e!27474 (one!7 nNat!2))))

(assert (= (and b!52927 c!11504) b!52928))

(assert (= (and b!52927 (not c!11504)) b!52929))

(assert (= (and d!44506 c!11503) b!52926))

(assert (= (and d!44506 (not c!11503)) b!52927))

(assert (=> d!44506 m!56933))

(declare-fun m!56943 () Bool)

(assert (=> b!52929 m!56943))

(declare-fun m!56945 () Bool)

(assert (=> b!52928 m!56945))

(declare-fun m!56947 () Bool)

(assert (=> b!52926 m!56947))

(assert (=> b!52927 m!56939))

(assert (=> b!52905 d!44506))

(declare-fun b!52939 () Bool)

(declare-fun e!27479 () Object!207)

(declare-fun e!27480 () Object!207)

(assert (=> b!52939 (= e!27479 e!27480)))

(declare-fun c!11510 () Bool)

(assert (=> b!52939 (= c!11510 (isNatExt!0 nNat!2))))

(declare-fun b!52941 () Bool)

(declare-fun two!3 (Object!207) N!4)

(assert (=> b!52941 (= e!27480 (N!5 (two!3 nNat!2)))))

(declare-fun b!52938 () Bool)

(declare-fun two!2 (Object!207) Int)

(assert (=> b!52938 (= e!27479 (Integer!201 (two!2 nNat!2)))))

(declare-fun b!52940 () Bool)

(declare-fun two!6 (Object!207) Object!207)

(assert (=> b!52940 (= e!27480 (two!6 nNat!2))))

(declare-fun d!44508 () Bool)

(declare-fun c!11509 () Bool)

(assert (=> d!44508 (= c!11509 (is$anon!0 nNat!2))))

(assert (=> d!44508 (= (two!1 nNat!2) e!27479)))

(assert (= (and b!52939 c!11510) b!52940))

(assert (= (and b!52939 (not c!11510)) b!52941))

(assert (= (and d!44508 c!11509) b!52938))

(assert (= (and d!44508 (not c!11509)) b!52939))

(declare-fun m!56949 () Bool)

(assert (=> b!52941 m!56949))

(declare-fun m!56951 () Bool)

(assert (=> b!52940 m!56951))

(declare-fun m!56953 () Bool)

(assert (=> b!52938 m!56953))

(assert (=> d!44508 m!56933))

(assert (=> b!52939 m!56939))

(assert (=> b!52905 d!44508))

(declare-fun d!44510 () Bool)

(declare-fun res!24024 () Bool)

(declare-fun e!27483 () Bool)

(assert (=> d!44510 (=> res!24024 e!27483)))

(assert (=> d!44510 (= res!24024 (is$anon!0 nNat!2))))

(assert (=> d!44510 (= (isNat!2 nNat!2) e!27483)))

(declare-fun b!52946 () Bool)

(declare-fun res!24025 () Bool)

(assert (=> b!52946 (=> res!24025 e!27483)))

(assert (=> b!52946 (= res!24025 (isNatExt!0 nNat!2))))

(declare-fun b!52947 () Bool)

(declare-fun is$anon!1 (Object!207) Bool)

(assert (=> b!52947 (= e!27483 (is$anon!1 nNat!2))))

(assert (= (and d!44510 (not res!24024)) b!52946))

(assert (= (and b!52946 (not res!24025)) b!52947))

(assert (=> d!44510 m!56933))

(assert (=> b!52946 m!56939))

(declare-fun m!56955 () Bool)

(assert (=> b!52947 m!56955))

(assert (=> start!7238 d!44510))

(declare-fun d!44512 () Bool)

(declare-fun res!24026 () Bool)

(declare-fun e!27484 () Bool)

(assert (=> d!44512 (=> res!24026 e!27484)))

(assert (=> d!44512 (= res!24026 (is$anon!0 lt!9246))))

(assert (=> d!44512 (= (isNat!2 lt!9246) e!27484)))

(declare-fun b!52948 () Bool)

(declare-fun res!24027 () Bool)

(assert (=> b!52948 (=> res!24027 e!27484)))

(assert (=> b!52948 (= res!24027 (isNatExt!0 lt!9246))))

(declare-fun b!52949 () Bool)

(assert (=> b!52949 (= e!27484 (is$anon!1 lt!9246))))

(assert (= (and d!44512 (not res!24026)) b!52948))

(assert (= (and b!52948 (not res!24027)) b!52949))

(declare-fun m!56957 () Bool)

(assert (=> d!44512 m!56957))

(declare-fun m!56959 () Bool)

(assert (=> b!52948 m!56959))

(declare-fun m!56961 () Bool)

(assert (=> b!52949 m!56961))

(assert (=> start!7238 d!44512))

(push 1)

(assert (not b!52948))

(assert (not d!44506))

(assert (not d!44508))

(assert (not b!52947))

(assert (not b!52939))

(assert (not b!52916))

(assert (not b!52929))

(assert (not d!44510))

(assert (not b!52928))

(assert (not d!44504))

(assert (not b!52914))

(assert (not b!52915))

(assert (not b!52949))

(assert (not b!52940))

(assert (not b!52926))

(assert (not b!52917))

(assert (not b!52946))

(assert (not d!44512))

(assert (not b!52938))

(assert (not b!52927))

(assert (not b!52941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44514 () Bool)

(assert (=> d!44514 (= (isNatExt!0 nNat!2) (is-NatExt!3 nNat!2))))

(assert (=> b!52946 d!44514))

(declare-fun d!44516 () Bool)

(assert (=> d!44516 true))

(assert (=> d!44516 true))

(declare-fun res!24030 () Object!207)

(assert (=> d!44516 (= (succ!3 nNat!2 (one!0 nNat!2)) res!24030)))

(assert (=> b!52916 d!44516))

(declare-fun d!44518 () Bool)

(assert (=> d!44518 (= (is$anon!0 lt!9246) (is-$anon!48 lt!9246))))

(assert (=> d!44512 d!44518))

(declare-fun d!44520 () Bool)

(assert (=> d!44520 (= (is$anon!0 nNat!2) (is-$anon!48 nNat!2))))

(assert (=> d!44504 d!44520))

(assert (=> d!44510 d!44520))

(declare-fun d!44522 () Bool)

(assert (=> d!44522 true))

(assert (=> d!44522 true))

(declare-fun res!24033 () Object!207)

(assert (=> d!44522 (= (one!7 nNat!2) res!24033)))

(assert (=> b!52928 d!44522))

(assert (=> b!52927 d!44514))

(declare-fun d!44524 () Bool)

(assert (=> d!44524 (= (one!2 nNat!2) (S!17 Z!4))))

(assert (=> b!52929 d!44524))

(declare-fun d!44526 () Bool)

(assert (=> d!44526 (= (is$anon!1 nNat!2) (is-$anon!49 nNat!2))))

(assert (=> b!52947 d!44526))

(assert (=> b!52939 d!44514))

(assert (=> d!44508 d!44520))

(assert (=> b!52915 d!44514))

(declare-fun d!44528 () Bool)

(assert (=> d!44528 (= (is$anon!1 lt!9246) (is-$anon!49 lt!9246))))

(assert (=> b!52949 d!44528))

(declare-fun d!44530 () Bool)

(assert (=> d!44530 (= (two!2 nNat!2) 2)))

(assert (=> b!52938 d!44530))

(declare-fun d!44532 () Bool)

(assert (=> d!44532 (= (succ!2 nNat!2 (value!3388 (one!0 nNat!2))) (S!17 (value!3388 (one!0 nNat!2))))))

(assert (=> b!52917 d!44532))

(declare-fun d!44534 () Bool)

(assert (=> d!44534 (= (two!3 nNat!2) (S!17 (S!17 Z!4)))))

(assert (=> b!52941 d!44534))

(assert (=> d!44506 d!44520))

(declare-fun d!44536 () Bool)

(assert (=> d!44536 (= (isNatExt!0 lt!9246) (is-NatExt!3 lt!9246))))

(assert (=> b!52948 d!44536))

(declare-fun d!44538 () Bool)

(assert (=> d!44538 true))

(assert (=> d!44538 true))

(declare-fun res!24036 () Object!207)

(assert (=> d!44538 (= (two!6 nNat!2) res!24036)))

(assert (=> b!52940 d!44538))

(declare-fun d!44540 () Bool)

(assert (=> d!44540 (= (one!1 nNat!2) 1)))

(assert (=> b!52926 d!44540))

(declare-fun d!44542 () Bool)

(assert (=> d!44542 (= (succ!1 nNat!2 (value!3389 (one!0 nNat!2))) (+ (value!3389 (one!0 nNat!2)) 1))))

(assert (=> b!52914 d!44542))

(push 1)

(check-sat)

(pop 1)

