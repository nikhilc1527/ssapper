; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7204 () Bool)

(assert start!7204)

(declare-fun res!23995 () Bool)

(declare-fun e!27437 () Bool)

(assert (=> start!7204 (=> (not res!23995) (not e!27437))))

(declare-datatypes () ((N!2 (Z!3) (S!16 (n!1539 N!2)))))

(declare-datatypes () ((Object!206 ($anon!46) (NatExt!2 (__x!70 Int)) ($anon!47) (N!3 (value!3385 N!2)) (Integer!200 (value!3386 Int)) (Open!206 (value!3387 Int)))))

(declare-fun bigIntNat!2 () Object!206)

(declare-fun isNat!2 (Object!206) Bool)

(assert (=> start!7204 (= res!23995 (isNat!2 bigIntNat!2))))

(assert (=> start!7204 e!27437))

(declare-fun lt!9243 () Object!206)

(assert (=> start!7204 (= lt!9243 bigIntNat!2)))

(assert (=> start!7204 (isNat!2 lt!9243)))

(declare-fun b!52854 () Bool)

(declare-fun res!23996 () Bool)

(assert (=> b!52854 (=> (not res!23996) (not e!27437))))

(assert (=> b!52854 (= res!23996 (= bigIntNat!2 $anon!46))))

(declare-fun b!52855 () Bool)

(declare-fun succ!0 (Object!206 Object!206) Object!206)

(declare-fun one!0 (Object!206) Object!206)

(declare-fun two!1 (Object!206) Object!206)

(assert (=> b!52855 (= e!27437 (not (= (succ!0 bigIntNat!2 (one!0 bigIntNat!2)) (two!1 bigIntNat!2))))))

(assert (= (and start!7204 res!23995) b!52854))

(assert (= (and b!52854 res!23996) b!52855))

(declare-fun m!56883 () Bool)

(assert (=> start!7204 m!56883))

(declare-fun m!56885 () Bool)

(assert (=> start!7204 m!56885))

(declare-fun m!56887 () Bool)

(assert (=> b!52855 m!56887))

(assert (=> b!52855 m!56887))

(declare-fun m!56889 () Bool)

(assert (=> b!52855 m!56889))

(declare-fun m!56891 () Bool)

(assert (=> b!52855 m!56891))

(push 1)

(assert (not start!7204))

(assert (not b!52855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44464 () Bool)

(declare-fun res!24001 () Bool)

(declare-fun e!27440 () Bool)

(assert (=> d!44464 (=> res!24001 e!27440)))

(declare-fun is$anon!0 (Object!206) Bool)

(assert (=> d!44464 (= res!24001 (is$anon!0 bigIntNat!2))))

(assert (=> d!44464 (= (isNat!2 bigIntNat!2) e!27440)))

(declare-fun b!52860 () Bool)

(declare-fun res!24002 () Bool)

(assert (=> b!52860 (=> res!24002 e!27440)))

(declare-fun isNatExt!0 (Object!206) Bool)

(assert (=> b!52860 (= res!24002 (isNatExt!0 bigIntNat!2))))

(declare-fun b!52861 () Bool)

(declare-fun is$anon!1 (Object!206) Bool)

(assert (=> b!52861 (= e!27440 (is$anon!1 bigIntNat!2))))

(assert (= (and d!44464 (not res!24001)) b!52860))

(assert (= (and b!52860 (not res!24002)) b!52861))

(declare-fun m!56893 () Bool)

(assert (=> d!44464 m!56893))

(declare-fun m!56895 () Bool)

(assert (=> b!52860 m!56895))

(declare-fun m!56897 () Bool)

(assert (=> b!52861 m!56897))

(assert (=> start!7204 d!44464))

(declare-fun d!44466 () Bool)

(declare-fun res!24003 () Bool)

(declare-fun e!27441 () Bool)

(assert (=> d!44466 (=> res!24003 e!27441)))

(assert (=> d!44466 (= res!24003 (is$anon!0 lt!9243))))

(assert (=> d!44466 (= (isNat!2 lt!9243) e!27441)))

(declare-fun b!52862 () Bool)

(declare-fun res!24004 () Bool)

(assert (=> b!52862 (=> res!24004 e!27441)))

(assert (=> b!52862 (= res!24004 (isNatExt!0 lt!9243))))

(declare-fun b!52863 () Bool)

(assert (=> b!52863 (= e!27441 (is$anon!1 lt!9243))))

(assert (= (and d!44466 (not res!24003)) b!52862))

(assert (= (and b!52862 (not res!24004)) b!52863))

(declare-fun m!56899 () Bool)

(assert (=> d!44466 m!56899))

(declare-fun m!56901 () Bool)

(assert (=> b!52862 m!56901))

(declare-fun m!56903 () Bool)

(assert (=> b!52863 m!56903))

(assert (=> start!7204 d!44466))

(declare-fun b!52874 () Bool)

(declare-fun e!27447 () Object!206)

(declare-fun succ!3 (Object!206 Object!206) Object!206)

(assert (=> b!52874 (= e!27447 (succ!3 bigIntNat!2 (one!0 bigIntNat!2)))))

(declare-fun b!52875 () Bool)

(declare-fun succ!2 (Object!206 N!2) N!2)

(assert (=> b!52875 (= e!27447 (N!3 (succ!2 bigIntNat!2 (value!3385 (one!0 bigIntNat!2)))))))

(declare-fun b!52873 () Bool)

(declare-fun e!27446 () Object!206)

(assert (=> b!52873 (= e!27446 e!27447)))

(declare-fun c!11480 () Bool)

(assert (=> b!52873 (= c!11480 (isNatExt!0 bigIntNat!2))))

(declare-fun d!44468 () Bool)

(declare-fun c!11479 () Bool)

(assert (=> d!44468 (= c!11479 (is$anon!0 bigIntNat!2))))

(assert (=> d!44468 (= (succ!0 bigIntNat!2 (one!0 bigIntNat!2)) e!27446)))

(declare-fun b!52872 () Bool)

(declare-fun succ!1 (Object!206 Int) Int)

(assert (=> b!52872 (= e!27446 (Integer!200 (succ!1 bigIntNat!2 (value!3386 (one!0 bigIntNat!2)))))))

(assert (= (and b!52873 c!11480) b!52874))

(assert (= (and b!52873 (not c!11480)) b!52875))

(assert (= (and d!44468 c!11479) b!52872))

(assert (= (and d!44468 (not c!11479)) b!52873))

(assert (=> d!44468 m!56893))

(declare-fun m!56905 () Bool)

(assert (=> b!52872 m!56905))

(assert (=> b!52874 m!56887))

(declare-fun m!56907 () Bool)

(assert (=> b!52874 m!56907))

(declare-fun m!56909 () Bool)

(assert (=> b!52875 m!56909))

(assert (=> b!52873 m!56895))

(assert (=> b!52855 d!44468))

(declare-fun b!52884 () Bool)

(declare-fun e!27452 () Object!206)

(declare-fun one!1 (Object!206) Int)

(assert (=> b!52884 (= e!27452 (Integer!200 (one!1 bigIntNat!2)))))

(declare-fun b!52887 () Bool)

(declare-fun e!27453 () Object!206)

(declare-fun one!2 (Object!206) N!2)

(assert (=> b!52887 (= e!27453 (N!3 (one!2 bigIntNat!2)))))

(declare-fun b!52885 () Bool)

(assert (=> b!52885 (= e!27452 e!27453)))

(declare-fun c!11486 () Bool)

(assert (=> b!52885 (= c!11486 (isNatExt!0 bigIntNat!2))))

(declare-fun d!44470 () Bool)

(declare-fun c!11485 () Bool)

(assert (=> d!44470 (= c!11485 (is$anon!0 bigIntNat!2))))

(assert (=> d!44470 (= (one!0 bigIntNat!2) e!27452)))

(declare-fun b!52886 () Bool)

(declare-fun one!7 (Object!206) Object!206)

(assert (=> b!52886 (= e!27453 (one!7 bigIntNat!2))))

(assert (= (and b!52885 c!11486) b!52886))

(assert (= (and b!52885 (not c!11486)) b!52887))

(assert (= (and d!44470 c!11485) b!52884))

(assert (= (and d!44470 (not c!11485)) b!52885))

(declare-fun m!56911 () Bool)

(assert (=> b!52886 m!56911))

(declare-fun m!56913 () Bool)

(assert (=> b!52884 m!56913))

(assert (=> d!44470 m!56893))

(declare-fun m!56915 () Bool)

(assert (=> b!52887 m!56915))

(assert (=> b!52885 m!56895))

(assert (=> b!52855 d!44470))

(declare-fun b!52896 () Bool)

(declare-fun e!27458 () Object!206)

(declare-fun two!2 (Object!206) Int)

(assert (=> b!52896 (= e!27458 (Integer!200 (two!2 bigIntNat!2)))))

(declare-fun b!52899 () Bool)

(declare-fun e!27459 () Object!206)

(declare-fun two!3 (Object!206) N!2)

(assert (=> b!52899 (= e!27459 (N!3 (two!3 bigIntNat!2)))))

(declare-fun b!52898 () Bool)

(declare-fun two!6 (Object!206) Object!206)

(assert (=> b!52898 (= e!27459 (two!6 bigIntNat!2))))

(declare-fun b!52897 () Bool)

(assert (=> b!52897 (= e!27458 e!27459)))

(declare-fun c!11492 () Bool)

(assert (=> b!52897 (= c!11492 (isNatExt!0 bigIntNat!2))))

(declare-fun d!44472 () Bool)

(declare-fun c!11491 () Bool)

(assert (=> d!44472 (= c!11491 (is$anon!0 bigIntNat!2))))

(assert (=> d!44472 (= (two!1 bigIntNat!2) e!27458)))

(assert (= (and b!52897 c!11492) b!52898))

(assert (= (and b!52897 (not c!11492)) b!52899))

(assert (= (and d!44472 c!11491) b!52896))

(assert (= (and d!44472 (not c!11491)) b!52897))

(declare-fun m!56917 () Bool)

(assert (=> b!52898 m!56917))

(assert (=> b!52897 m!56895))

(declare-fun m!56919 () Bool)

(assert (=> b!52896 m!56919))

(assert (=> d!44472 m!56893))

(declare-fun m!56921 () Bool)

(assert (=> b!52899 m!56921))

(assert (=> b!52855 d!44472))

(push 1)

(assert (not b!52862))

(assert (not b!52899))

(assert (not b!52863))

(assert (not d!44464))

(assert (not b!52885))

(assert (not d!44466))

(assert (not b!52884))

(assert (not d!44468))

(assert (not b!52897))

(assert (not d!44472))

(assert (not b!52898))

(assert (not b!52875))

(assert (not b!52874))

(assert (not b!52896))

(assert (not b!52873))

(assert (not b!52860))

(assert (not d!44470))

(assert (not b!52886))

(assert (not b!52861))

(assert (not b!52887))

(assert (not b!52872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44474 () Bool)

(assert (=> d!44474 true))

(assert (=> d!44474 true))

(declare-fun res!24007 () Object!206)

(assert (=> d!44474 (= (succ!3 bigIntNat!2 (one!0 bigIntNat!2)) res!24007)))

(assert (=> b!52874 d!44474))

(declare-fun d!44476 () Bool)

(assert (=> d!44476 (= (two!2 bigIntNat!2) 2)))

(assert (=> b!52896 d!44476))

(declare-fun d!44478 () Bool)

(assert (=> d!44478 (= (succ!1 bigIntNat!2 (value!3386 (one!0 bigIntNat!2))) (+ (value!3386 (one!0 bigIntNat!2)) 1))))

(assert (=> b!52872 d!44478))

(declare-fun d!44480 () Bool)

(assert (=> d!44480 (= (is$anon!1 bigIntNat!2) (is-$anon!47 bigIntNat!2))))

(assert (=> b!52861 d!44480))

(declare-fun d!44482 () Bool)

(assert (=> d!44482 (= (is$anon!0 bigIntNat!2) (is-$anon!46 bigIntNat!2))))

(assert (=> d!44464 d!44482))

(assert (=> d!44470 d!44482))

(declare-fun d!44484 () Bool)

(assert (=> d!44484 (= (isNatExt!0 bigIntNat!2) (is-NatExt!2 bigIntNat!2))))

(assert (=> b!52860 d!44484))

(declare-fun d!44486 () Bool)

(assert (=> d!44486 (= (one!1 bigIntNat!2) 1)))

(assert (=> b!52884 d!44486))

(declare-fun d!44488 () Bool)

(assert (=> d!44488 (= (one!2 bigIntNat!2) (S!16 Z!3))))

(assert (=> b!52887 d!44488))

(assert (=> b!52897 d!44484))

(assert (=> d!44468 d!44482))

(declare-fun d!44490 () Bool)

(assert (=> d!44490 (= (is$anon!1 lt!9243) (is-$anon!47 lt!9243))))

(assert (=> b!52863 d!44490))

(assert (=> b!52885 d!44484))

(declare-fun d!44492 () Bool)

(assert (=> d!44492 true))

(assert (=> d!44492 true))

(declare-fun res!24010 () Object!206)

(assert (=> d!44492 (= (two!6 bigIntNat!2) res!24010)))

(assert (=> b!52898 d!44492))

(declare-fun d!44494 () Bool)

(assert (=> d!44494 true))

(assert (=> d!44494 true))

(declare-fun res!24013 () Object!206)

(assert (=> d!44494 (= (one!7 bigIntNat!2) res!24013)))

(assert (=> b!52886 d!44494))

(declare-fun d!44496 () Bool)

(assert (=> d!44496 (= (is$anon!0 lt!9243) (is-$anon!46 lt!9243))))

(assert (=> d!44466 d!44496))

(declare-fun d!44498 () Bool)

(assert (=> d!44498 (= (isNatExt!0 lt!9243) (is-NatExt!2 lt!9243))))

(assert (=> b!52862 d!44498))

(assert (=> d!44472 d!44482))

(declare-fun d!44500 () Bool)

(assert (=> d!44500 (= (two!3 bigIntNat!2) (S!16 (S!16 Z!3)))))

(assert (=> b!52899 d!44500))

(declare-fun d!44502 () Bool)

(assert (=> d!44502 (= (succ!2 bigIntNat!2 (value!3385 (one!0 bigIntNat!2))) (S!16 (value!3385 (one!0 bigIntNat!2))))))

(assert (=> b!52875 d!44502))

(assert (=> b!52873 d!44484))

(push 1)

(check-sat)

(pop 1)

