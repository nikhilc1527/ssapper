; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11606 () Bool)

(assert start!11606)

(declare-fun b_free!7519 () Bool)

(declare-fun b_next!39861 () Bool)

(assert (=> start!11606 (= b_free!7519 (not b_next!39861))))

(declare-fun tp!17359 () Bool)

(declare-fun b_and!60275 () Bool)

(assert (=> start!11606 (= tp!17359 b_and!60275)))

(declare-fun b_free!7521 () Bool)

(declare-fun b_next!39863 () Bool)

(assert (=> start!11606 (= b_free!7521 (not b_next!39863))))

(declare-fun tp!17361 () Bool)

(declare-fun b_and!60277 () Bool)

(assert (=> start!11606 (= tp!17361 b_and!60277)))

(declare-fun b!88855 () Bool)

(declare-fun e!48318 () Bool)

(declare-fun tp_is_empty!385 () Bool)

(declare-fun tp!17360 () Bool)

(assert (=> b!88855 (= e!48318 (and tp_is_empty!385 tp!17360))))

(declare-fun b!88856 () Bool)

(declare-fun e!48320 () Bool)

(declare-fun e!48319 () Bool)

(assert (=> b!88856 (= e!48320 e!48319)))

(declare-fun res!46497 () Bool)

(assert (=> b!88856 (=> res!46497 e!48319)))

(declare-datatypes () ((T!6005 (T!6006 (val!195 Int)))))

(declare-datatypes () ((tuple2!410 (tuple2!411 (_1!240 T!6005) (_2!240 Int)))))

(declare-datatypes () ((List!739 (Cons!693 (h!1097 tuple2!410) (t!48750 List!739)) (Nil!695))))

(declare-fun l!1607 () List!739)

(declare-fun key!536 () Int)

(declare-fun isStableSorted!5 (List!739 Int) Bool)

(assert (=> b!88856 (= res!46497 (not (isStableSorted!5 l!1607 key!536)))))

(declare-fun res!46496 () Bool)

(assert (=> start!11606 (=> (not res!46496) (not e!48320))))

(declare-fun l!1602 () List!739)

(declare-fun key!533 () Int)

(assert (=> start!11606 (= res!46496 (isStableSorted!5 l!1602 key!533))))

(assert (=> start!11606 e!48320))

(declare-fun e!48321 () Bool)

(assert (=> start!11606 e!48321))

(assert (=> start!11606 e!48318))

(assert (=> start!11606 tp_is_empty!385))

(assert (=> start!11606 true))

(assert (=> start!11606 tp!17359))

(assert (=> start!11606 tp!17361))

(declare-fun b!88857 () Bool)

(declare-fun n!1742 () Int)

(declare-fun l2AtLeast!6 (List!739 Int) Bool)

(assert (=> b!88857 (= e!48319 (not (l2AtLeast!6 l!1607 n!1742)))))

(declare-fun b!88858 () Bool)

(declare-fun res!46498 () Bool)

(assert (=> b!88858 (=> (not res!46498) (not e!48320))))

(declare-fun n!1739 () Int)

(assert (=> b!88858 (= res!46498 (l2AtLeast!6 l!1602 n!1739))))

(declare-fun b!88859 () Bool)

(declare-fun res!46499 () Bool)

(assert (=> b!88859 (=> (not res!46499) (not e!48320))))

(declare-fun t!48628 () T!6005)

(declare-fun t!48626 () T!6005)

(assert (=> b!88859 (= res!46499 (and (is-Cons!693 l!1602) (= t!48628 t!48626) (= n!1742 n!1739) (= l!1607 (t!48750 l!1602)) (= key!536 key!533)))))

(declare-fun b!88860 () Bool)

(declare-fun tp!17358 () Bool)

(assert (=> b!88860 (= e!48321 (and tp_is_empty!385 tp!17358))))

(assert (= (and start!11606 res!46496) b!88858))

(assert (= (and b!88858 res!46498) b!88859))

(assert (= (and b!88859 res!46499) b!88856))

(assert (= (and b!88856 (not res!46497)) b!88857))

(assert (= (and start!11606 (is-Cons!693 l!1607)) b!88860))

(assert (= (and start!11606 (is-Cons!693 l!1602)) b!88855))

(declare-fun m!84996 () Bool)

(assert (=> b!88856 m!84996))

(declare-fun m!84998 () Bool)

(assert (=> start!11606 m!84998))

(declare-fun m!85000 () Bool)

(assert (=> b!88857 m!85000))

(declare-fun m!85002 () Bool)

(assert (=> b!88858 m!85002))

(push 1)

(assert (not b!88860))

(assert (not b_next!39861))

(assert (not b!88856))

(assert (not b!88855))

(assert tp_is_empty!385)

(assert b_and!60277)

(assert (not b_next!39863))

(assert (not b!88858))

(assert (not b!88857))

(assert (not start!11606))

(assert b_and!60275)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60275)

(assert b_and!60277)

(assert (not b_next!39863))

(assert (not b_next!39861))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58909 () Bool)

(declare-fun res!46504 () Bool)

(declare-fun e!48326 () Bool)

(assert (=> d!58909 (=> res!46504 e!48326)))

(assert (=> d!58909 (= res!46504 (is-Nil!695 l!1607))))

(assert (=> d!58909 (= (l2AtLeast!6 l!1607 n!1742) e!48326)))

(declare-fun b!88865 () Bool)

(declare-fun e!48327 () Bool)

(assert (=> b!88865 (= e!48326 e!48327)))

(declare-fun res!46505 () Bool)

(assert (=> b!88865 (=> (not res!46505) (not e!48327))))

(assert (=> b!88865 (= res!46505 (<= n!1742 (_2!240 (h!1097 l!1607))))))

(declare-fun b!88866 () Bool)

(assert (=> b!88866 (= e!48327 (l2AtLeast!6 (t!48750 l!1607) n!1742))))

(assert (= (and d!58909 (not res!46504)) b!88865))

(assert (= (and b!88865 res!46505) b!88866))

(declare-fun m!85004 () Bool)

(assert (=> b!88866 m!85004))

(assert (=> b!88857 d!58909))

(declare-fun d!58911 () Bool)

(declare-fun res!46508 () Bool)

(declare-fun e!48330 () Bool)

(assert (=> d!58911 (=> res!46508 e!48330)))

(assert (=> d!58911 (= res!46508 (is-Nil!695 l!1602))))

(assert (=> d!58911 (= (isStableSorted!5 l!1602 key!533) e!48330)))

(declare-fun b!88869 () Bool)

(declare-fun isStableSortedAndAtLeast!5 (List!739 Int Int Int) Bool)

(declare-fun dynLambda!1061 (Int T!6005) Int)

(assert (=> b!88869 (= e!48330 (isStableSortedAndAtLeast!5 (t!48750 l!1602) key!533 (dynLambda!1061 key!533 (_1!240 (h!1097 l!1602))) (_2!240 (h!1097 l!1602))))))

(assert (= (and d!58911 (not res!46508)) b!88869))

(declare-fun b_lambda!17791 () Bool)

(assert (=> (not b_lambda!17791) (not b!88869)))

(declare-fun tb!46643 () Bool)

(declare-fun t!48752 () Bool)

(assert (=> (and start!11606 (= key!536 key!533) t!48752) tb!46643))

(declare-fun result!47091 () Bool)

(assert (=> tb!46643 (= result!47091 true)))

(assert (=> b!88869 t!48752))

(declare-fun b_and!60279 () Bool)

(assert (= b_and!60275 (and (=> t!48752 result!47091) b_and!60279)))

(declare-fun t!48754 () Bool)

(declare-fun tb!46645 () Bool)

(assert (=> (and start!11606 (= key!533 key!533) t!48754) tb!46645))

(declare-fun result!47093 () Bool)

(assert (=> tb!46645 (= result!47093 true)))

(assert (=> b!88869 t!48754))

(declare-fun b_and!60281 () Bool)

(assert (= b_and!60277 (and (=> t!48754 result!47093) b_and!60281)))

(declare-fun m!85006 () Bool)

(assert (=> b!88869 m!85006))

(assert (=> b!88869 m!85006))

(declare-fun m!85008 () Bool)

(assert (=> b!88869 m!85008))

(assert (=> start!11606 d!58911))

(declare-fun d!58913 () Bool)

(declare-fun res!46509 () Bool)

(declare-fun e!48331 () Bool)

(assert (=> d!58913 (=> res!46509 e!48331)))

(assert (=> d!58913 (= res!46509 (is-Nil!695 l!1607))))

(assert (=> d!58913 (= (isStableSorted!5 l!1607 key!536) e!48331)))

(declare-fun b!88870 () Bool)

(assert (=> b!88870 (= e!48331 (isStableSortedAndAtLeast!5 (t!48750 l!1607) key!536 (dynLambda!1061 key!536 (_1!240 (h!1097 l!1607))) (_2!240 (h!1097 l!1607))))))

(assert (= (and d!58913 (not res!46509)) b!88870))

(declare-fun b_lambda!17793 () Bool)

(assert (=> (not b_lambda!17793) (not b!88870)))

(declare-fun t!48756 () Bool)

(declare-fun tb!46647 () Bool)

(assert (=> (and start!11606 (= key!536 key!536) t!48756) tb!46647))

(declare-fun result!47095 () Bool)

(assert (=> tb!46647 (= result!47095 true)))

(assert (=> b!88870 t!48756))

(declare-fun b_and!60283 () Bool)

(assert (= b_and!60279 (and (=> t!48756 result!47095) b_and!60283)))

(declare-fun t!48758 () Bool)

(declare-fun tb!46649 () Bool)

(assert (=> (and start!11606 (= key!533 key!536) t!48758) tb!46649))

(declare-fun result!47097 () Bool)

(assert (=> tb!46649 (= result!47097 true)))

(assert (=> b!88870 t!48758))

(declare-fun b_and!60285 () Bool)

(assert (= b_and!60281 (and (=> t!48758 result!47097) b_and!60285)))

(declare-fun m!85010 () Bool)

(assert (=> b!88870 m!85010))

(assert (=> b!88870 m!85010))

(declare-fun m!85012 () Bool)

(assert (=> b!88870 m!85012))

(assert (=> b!88856 d!58913))

(declare-fun d!58915 () Bool)

(declare-fun res!46510 () Bool)

(declare-fun e!48332 () Bool)

(assert (=> d!58915 (=> res!46510 e!48332)))

(assert (=> d!58915 (= res!46510 (is-Nil!695 l!1602))))

(assert (=> d!58915 (= (l2AtLeast!6 l!1602 n!1739) e!48332)))

(declare-fun b!88871 () Bool)

(declare-fun e!48333 () Bool)

(assert (=> b!88871 (= e!48332 e!48333)))

(declare-fun res!46511 () Bool)

(assert (=> b!88871 (=> (not res!46511) (not e!48333))))

(assert (=> b!88871 (= res!46511 (<= n!1739 (_2!240 (h!1097 l!1602))))))

(declare-fun b!88872 () Bool)

(assert (=> b!88872 (= e!48333 (l2AtLeast!6 (t!48750 l!1602) n!1739))))

(assert (= (and d!58915 (not res!46510)) b!88871))

(assert (= (and b!88871 res!46511) b!88872))

(declare-fun m!85014 () Bool)

(assert (=> b!88872 m!85014))

(assert (=> b!88858 d!58915))

(declare-fun b!88877 () Bool)

(declare-fun e!48336 () Bool)

(declare-fun tp!17364 () Bool)

(assert (=> b!88877 (= e!48336 (and tp_is_empty!385 tp!17364))))

(assert (=> b!88855 (= tp!17360 e!48336)))

(assert (= (and b!88855 (is-Cons!693 (t!48750 l!1602))) b!88877))

(declare-fun b!88878 () Bool)

(declare-fun e!48337 () Bool)

(declare-fun tp!17365 () Bool)

(assert (=> b!88878 (= e!48337 (and tp_is_empty!385 tp!17365))))

(assert (=> b!88860 (= tp!17358 e!48337)))

(assert (= (and b!88860 (is-Cons!693 (t!48750 l!1607))) b!88878))

(declare-fun b_lambda!17795 () Bool)

(assert (= b_lambda!17793 (or (and start!11606 b_free!7519) (and start!11606 b_free!7521 (= key!533 key!536)) b_lambda!17795)))

(declare-fun b_lambda!17797 () Bool)

(assert (= b_lambda!17791 (or (and start!11606 b_free!7519 (= key!536 key!533)) (and start!11606 b_free!7521) b_lambda!17797)))

(push 1)

(assert (not b!88870))

(assert (not b_next!39861))

(assert (not b!88866))

(assert (not b!88872))

(assert tp_is_empty!385)

(assert (not b!88877))

(assert (not b_next!39863))

(assert b_and!60285)

(assert b_and!60283)

(assert (not b_lambda!17797))

(assert (not b!88869))

(assert (not b_lambda!17795))

(assert (not b!88878))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60283)

(assert b_and!60285)

(assert (not b_next!39863))

(assert (not b_next!39861))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!88890 () Bool)

(declare-fun e!48347 () Bool)

(assert (=> b!88890 (= e!48347 (isStableSortedAndAtLeast!5 (t!48750 (t!48750 l!1602)) key!533 (dynLambda!1061 key!533 (_1!240 (h!1097 (t!48750 l!1602)))) (_2!240 (h!1097 (t!48750 l!1602)))))))

(declare-fun d!58917 () Bool)

(declare-fun res!46521 () Bool)

(declare-fun e!48349 () Bool)

(assert (=> d!58917 (=> res!46521 e!48349)))

(assert (=> d!58917 (= res!46521 (is-Nil!695 (t!48750 l!1602)))))

(assert (=> d!58917 (= (isStableSortedAndAtLeast!5 (t!48750 l!1602) key!533 (dynLambda!1061 key!533 (_1!240 (h!1097 l!1602))) (_2!240 (h!1097 l!1602))) e!48349)))

(declare-fun b!88887 () Bool)

(assert (=> b!88887 (= e!48349 e!48347)))

(declare-fun res!46522 () Bool)

(assert (=> b!88887 (=> (not res!46522) (not e!48347))))

(declare-fun e!48348 () Bool)

(assert (=> b!88887 (= res!46522 e!48348)))

(declare-fun res!46520 () Bool)

(assert (=> b!88887 (=> res!46520 e!48348)))

(assert (=> b!88887 (= res!46520 (< (dynLambda!1061 key!533 (_1!240 (h!1097 l!1602))) (dynLambda!1061 key!533 (_1!240 (h!1097 (t!48750 l!1602))))))))

(declare-fun b!88889 () Bool)

(declare-fun e!48346 () Bool)

(assert (=> b!88889 (= e!48346 (<= (_2!240 (h!1097 l!1602)) (_2!240 (h!1097 (t!48750 l!1602)))))))

(declare-fun b!88888 () Bool)

(assert (=> b!88888 (= e!48348 e!48346)))

(declare-fun res!46523 () Bool)

(assert (=> b!88888 (=> (not res!46523) (not e!48346))))

(assert (=> b!88888 (= res!46523 (= (dynLambda!1061 key!533 (_1!240 (h!1097 l!1602))) (dynLambda!1061 key!533 (_1!240 (h!1097 (t!48750 l!1602))))))))

(assert (= (and d!58917 (not res!46521)) b!88887))

(assert (= (and b!88887 (not res!46520)) b!88888))

(assert (= (and b!88888 res!46523) b!88889))

(assert (= (and b!88887 res!46522) b!88890))

(declare-fun b_lambda!17799 () Bool)

(assert (=> (not b_lambda!17799) (not b!88890)))

(declare-fun tb!46651 () Bool)

(declare-fun t!48760 () Bool)

(assert (=> (and start!11606 (= key!536 key!533) t!48760) tb!46651))

(declare-fun result!47101 () Bool)

(assert (=> tb!46651 (= result!47101 true)))

(assert (=> b!88890 t!48760))

(declare-fun b_and!60287 () Bool)

(assert (= b_and!60283 (and (=> t!48760 result!47101) b_and!60287)))

(declare-fun t!48762 () Bool)

(declare-fun tb!46653 () Bool)

(assert (=> (and start!11606 (= key!533 key!533) t!48762) tb!46653))

(declare-fun result!47103 () Bool)

(assert (=> tb!46653 (= result!47103 true)))

(assert (=> b!88890 t!48762))

(declare-fun b_and!60289 () Bool)

(assert (= b_and!60285 (and (=> t!48762 result!47103) b_and!60289)))

(declare-fun b_lambda!17801 () Bool)

(assert (=> (not b_lambda!17801) (not b!88887)))

(assert (=> b!88887 t!48760))

(declare-fun b_and!60291 () Bool)

(assert (= b_and!60287 (and (=> t!48760 result!47101) b_and!60291)))

(assert (=> b!88887 t!48762))

(declare-fun b_and!60293 () Bool)

(assert (= b_and!60289 (and (=> t!48762 result!47103) b_and!60293)))

(declare-fun b_lambda!17803 () Bool)

(assert (=> (not b_lambda!17803) (not b!88888)))

(assert (=> b!88888 t!48760))

(declare-fun b_and!60295 () Bool)

(assert (= b_and!60291 (and (=> t!48760 result!47101) b_and!60295)))

(assert (=> b!88888 t!48762))

(declare-fun b_and!60297 () Bool)

(assert (= b_and!60293 (and (=> t!48762 result!47103) b_and!60297)))

(declare-fun m!85016 () Bool)

(assert (=> b!88890 m!85016))

(assert (=> b!88890 m!85016))

(declare-fun m!85018 () Bool)

(assert (=> b!88890 m!85018))

(assert (=> b!88887 m!85016))

(assert (=> b!88888 m!85016))

(assert (=> b!88869 d!58917))

(declare-fun b!88894 () Bool)

(declare-fun e!48351 () Bool)

(assert (=> b!88894 (= e!48351 (isStableSortedAndAtLeast!5 (t!48750 (t!48750 l!1607)) key!536 (dynLambda!1061 key!536 (_1!240 (h!1097 (t!48750 l!1607)))) (_2!240 (h!1097 (t!48750 l!1607)))))))

(declare-fun d!58919 () Bool)

(declare-fun res!46525 () Bool)

(declare-fun e!48353 () Bool)

(assert (=> d!58919 (=> res!46525 e!48353)))

(assert (=> d!58919 (= res!46525 (is-Nil!695 (t!48750 l!1607)))))

(assert (=> d!58919 (= (isStableSortedAndAtLeast!5 (t!48750 l!1607) key!536 (dynLambda!1061 key!536 (_1!240 (h!1097 l!1607))) (_2!240 (h!1097 l!1607))) e!48353)))

(declare-fun b!88891 () Bool)

(assert (=> b!88891 (= e!48353 e!48351)))

(declare-fun res!46526 () Bool)

(assert (=> b!88891 (=> (not res!46526) (not e!48351))))

(declare-fun e!48352 () Bool)

(assert (=> b!88891 (= res!46526 e!48352)))

(declare-fun res!46524 () Bool)

(assert (=> b!88891 (=> res!46524 e!48352)))

(assert (=> b!88891 (= res!46524 (< (dynLambda!1061 key!536 (_1!240 (h!1097 l!1607))) (dynLambda!1061 key!536 (_1!240 (h!1097 (t!48750 l!1607))))))))

(declare-fun b!88893 () Bool)

(declare-fun e!48350 () Bool)

(assert (=> b!88893 (= e!48350 (<= (_2!240 (h!1097 l!1607)) (_2!240 (h!1097 (t!48750 l!1607)))))))

(declare-fun b!88892 () Bool)

(assert (=> b!88892 (= e!48352 e!48350)))

(declare-fun res!46527 () Bool)

(assert (=> b!88892 (=> (not res!46527) (not e!48350))))

(assert (=> b!88892 (= res!46527 (= (dynLambda!1061 key!536 (_1!240 (h!1097 l!1607))) (dynLambda!1061 key!536 (_1!240 (h!1097 (t!48750 l!1607))))))))

(assert (= (and d!58919 (not res!46525)) b!88891))

(assert (= (and b!88891 (not res!46524)) b!88892))

(assert (= (and b!88892 res!46527) b!88893))

(assert (= (and b!88891 res!46526) b!88894))

(declare-fun b_lambda!17805 () Bool)

(assert (=> (not b_lambda!17805) (not b!88894)))

(declare-fun t!48764 () Bool)

(declare-fun tb!46655 () Bool)

(assert (=> (and start!11606 (= key!536 key!536) t!48764) tb!46655))

(declare-fun result!47105 () Bool)

(assert (=> tb!46655 (= result!47105 true)))

(assert (=> b!88894 t!48764))

(declare-fun b_and!60299 () Bool)

(assert (= b_and!60295 (and (=> t!48764 result!47105) b_and!60299)))

(declare-fun t!48766 () Bool)

(declare-fun tb!46657 () Bool)

(assert (=> (and start!11606 (= key!533 key!536) t!48766) tb!46657))

(declare-fun result!47107 () Bool)

(assert (=> tb!46657 (= result!47107 true)))

(assert (=> b!88894 t!48766))

(declare-fun b_and!60301 () Bool)

(assert (= b_and!60297 (and (=> t!48766 result!47107) b_and!60301)))

(declare-fun b_lambda!17807 () Bool)

(assert (=> (not b_lambda!17807) (not b!88891)))

(assert (=> b!88891 t!48764))

(declare-fun b_and!60303 () Bool)

(assert (= b_and!60299 (and (=> t!48764 result!47105) b_and!60303)))

(assert (=> b!88891 t!48766))

(declare-fun b_and!60305 () Bool)

(assert (= b_and!60301 (and (=> t!48766 result!47107) b_and!60305)))

(declare-fun b_lambda!17809 () Bool)

(assert (=> (not b_lambda!17809) (not b!88892)))

(assert (=> b!88892 t!48764))

(declare-fun b_and!60307 () Bool)

(assert (= b_and!60303 (and (=> t!48764 result!47105) b_and!60307)))

(assert (=> b!88892 t!48766))

(declare-fun b_and!60309 () Bool)

(assert (= b_and!60305 (and (=> t!48766 result!47107) b_and!60309)))

(declare-fun m!85020 () Bool)

(assert (=> b!88894 m!85020))

(assert (=> b!88894 m!85020))

(declare-fun m!85022 () Bool)

(assert (=> b!88894 m!85022))

(assert (=> b!88891 m!85020))

(assert (=> b!88892 m!85020))

(assert (=> b!88870 d!58919))

(declare-fun d!58921 () Bool)

(declare-fun res!46528 () Bool)

(declare-fun e!48354 () Bool)

(assert (=> d!58921 (=> res!46528 e!48354)))

(assert (=> d!58921 (= res!46528 (is-Nil!695 (t!48750 l!1607)))))

(assert (=> d!58921 (= (l2AtLeast!6 (t!48750 l!1607) n!1742) e!48354)))

(declare-fun b!88895 () Bool)

(declare-fun e!48355 () Bool)

(assert (=> b!88895 (= e!48354 e!48355)))

(declare-fun res!46529 () Bool)

(assert (=> b!88895 (=> (not res!46529) (not e!48355))))

(assert (=> b!88895 (= res!46529 (<= n!1742 (_2!240 (h!1097 (t!48750 l!1607)))))))

(declare-fun b!88896 () Bool)

(assert (=> b!88896 (= e!48355 (l2AtLeast!6 (t!48750 (t!48750 l!1607)) n!1742))))

(assert (= (and d!58921 (not res!46528)) b!88895))

(assert (= (and b!88895 res!46529) b!88896))

(declare-fun m!85024 () Bool)

(assert (=> b!88896 m!85024))

(assert (=> b!88866 d!58921))

(declare-fun d!58923 () Bool)

(declare-fun res!46530 () Bool)

(declare-fun e!48356 () Bool)

(assert (=> d!58923 (=> res!46530 e!48356)))

(assert (=> d!58923 (= res!46530 (is-Nil!695 (t!48750 l!1602)))))

(assert (=> d!58923 (= (l2AtLeast!6 (t!48750 l!1602) n!1739) e!48356)))

(declare-fun b!88897 () Bool)

(declare-fun e!48357 () Bool)

(assert (=> b!88897 (= e!48356 e!48357)))

(declare-fun res!46531 () Bool)

(assert (=> b!88897 (=> (not res!46531) (not e!48357))))

(assert (=> b!88897 (= res!46531 (<= n!1739 (_2!240 (h!1097 (t!48750 l!1602)))))))

(declare-fun b!88898 () Bool)

(assert (=> b!88898 (= e!48357 (l2AtLeast!6 (t!48750 (t!48750 l!1602)) n!1739))))

(assert (= (and d!58923 (not res!46530)) b!88897))

(assert (= (and b!88897 res!46531) b!88898))

(declare-fun m!85026 () Bool)

(assert (=> b!88898 m!85026))

(assert (=> b!88872 d!58923))

(declare-fun b!88899 () Bool)

(declare-fun e!48358 () Bool)

(declare-fun tp!17366 () Bool)

(assert (=> b!88899 (= e!48358 (and tp_is_empty!385 tp!17366))))

(assert (=> b!88877 (= tp!17364 e!48358)))

(assert (= (and b!88877 (is-Cons!693 (t!48750 (t!48750 l!1602)))) b!88899))

(declare-fun b!88900 () Bool)

(declare-fun e!48359 () Bool)

(declare-fun tp!17367 () Bool)

(assert (=> b!88900 (= e!48359 (and tp_is_empty!385 tp!17367))))

(assert (=> b!88878 (= tp!17365 e!48359)))

(assert (= (and b!88878 (is-Cons!693 (t!48750 (t!48750 l!1607)))) b!88900))

(declare-fun b_lambda!17811 () Bool)

(assert (= b_lambda!17805 (or (and start!11606 b_free!7519) (and start!11606 b_free!7521 (= key!533 key!536)) b_lambda!17811)))

(declare-fun b_lambda!17813 () Bool)

(assert (= b_lambda!17801 (or (and start!11606 b_free!7519 (= key!536 key!533)) (and start!11606 b_free!7521) b_lambda!17813)))

(declare-fun b_lambda!17815 () Bool)

(assert (= b_lambda!17809 (or (and start!11606 b_free!7519) (and start!11606 b_free!7521 (= key!533 key!536)) b_lambda!17815)))

(declare-fun b_lambda!17817 () Bool)

(assert (= b_lambda!17803 (or (and start!11606 b_free!7519 (= key!536 key!533)) (and start!11606 b_free!7521) b_lambda!17817)))

(declare-fun b_lambda!17819 () Bool)

(assert (= b_lambda!17799 (or (and start!11606 b_free!7519 (= key!536 key!533)) (and start!11606 b_free!7521) b_lambda!17819)))

(declare-fun b_lambda!17821 () Bool)

(assert (= b_lambda!17807 (or (and start!11606 b_free!7519) (and start!11606 b_free!7521 (= key!533 key!536)) b_lambda!17821)))

(push 1)

(assert (not b_next!39861))

(assert b_and!60307)

(assert (not b!88900))

(assert (not b_lambda!17811))

(assert (not b!88898))

(assert (not b!88894))

(assert tp_is_empty!385)

(assert (not b_lambda!17813))

(assert (not b_lambda!17821))

(assert (not b_next!39863))

(assert (not b_lambda!17817))

(assert (not b_lambda!17797))

(assert (not b!88890))

(assert (not b_lambda!17815))

(assert (not b!88896))

(assert (not b_lambda!17795))

(assert (not b_lambda!17819))

(assert b_and!60309)

(assert (not b!88899))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60307)

(assert b_and!60309)

(assert (not b_next!39863))

(assert (not b_next!39861))

(check-sat)

(pop 1)

