; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8994 () Bool)

(assert start!8994)

(declare-fun b_free!7297 () Bool)

(declare-fun b_next!39059 () Bool)

(assert (=> start!8994 (= b_free!7297 (not b_next!39059))))

(declare-fun tp!16375 () Bool)

(declare-fun b_and!58587 () Bool)

(assert (=> start!8994 (= tp!16375 b_and!58587)))

(declare-fun b_free!7299 () Bool)

(declare-fun b_next!39061 () Bool)

(assert (=> start!8994 (= b_free!7299 (not b_next!39061))))

(declare-fun tp!16377 () Bool)

(declare-fun b_and!58589 () Bool)

(assert (=> start!8994 (= tp!16377 b_and!58589)))

(declare-fun b_free!7301 () Bool)

(declare-fun b_next!39063 () Bool)

(assert (=> start!8994 (= b_free!7301 (not b_next!39063))))

(declare-fun tp!16376 () Bool)

(declare-fun b_and!58591 () Bool)

(assert (=> start!8994 (= tp!16376 b_and!58591)))

(declare-fun b!62434 () Bool)

(assert (=> b!62434 true))

(declare-fun order!461 () Int)

(declare-fun f!3600 () Int)

(declare-fun lambda!9140 () Int)

(declare-fun dynLambda!946 (Int Int) Int)

(assert (=> b!62434 (< (dynLambda!946 order!461 f!3600) (dynLambda!946 order!461 lambda!9140))))

(assert (=> b!62434 true))

(declare-fun g!146 () Int)

(assert (=> b!62434 (< (dynLambda!946 order!461 g!146) (dynLambda!946 order!461 lambda!9140))))

(declare-fun res!29043 () Int)

(declare-fun b_next!39065 () Bool)

(assert (=> start!8994 (= b_next!39063 (or (and b!62434 (= lambda!9140 res!29043)) b_next!39065))))

(declare-fun b!62435 () Bool)

(declare-fun res!29056 () Bool)

(declare-fun e!33469 () Bool)

(assert (=> b!62435 (=> res!29056 e!33469)))

(declare-fun x!27541 () Int)

(declare-fun x!27542 () Int)

(assert (=> b!62435 (= res!29056 (<= x!27541 x!27542))))

(declare-fun inst!461 () Bool)

(assert (=> b!62435 (= inst!461 (=> true e!33469))))

(declare-fun b!62438 () Bool)

(declare-fun dynLambda!947 (Int Int) Int)

(assert (=> b!62438 (= e!33469 (> (dynLambda!947 res!29043 x!27541) (dynLambda!947 res!29043 x!27542)))))

(assert (= (and b!62435 (not res!29056)) b!62438))

(declare-fun b_lambda!15651 () Bool)

(assert (=> (not b_lambda!15651) (not b!62438)))

(declare-fun tb!46085 () Bool)

(declare-fun t!47299 () Bool)

(assert (=> (and start!8994 (= f!3600 res!29043) t!47299) tb!46085))

(declare-fun result!46481 () Bool)

(assert (=> tb!46085 (= result!46481 true)))

(assert (=> b!62438 t!47299))

(declare-fun b_and!58593 () Bool)

(assert (= b_and!58587 (and (=> t!47299 result!46481) b_and!58593)))

(declare-fun tb!46087 () Bool)

(declare-fun t!47301 () Bool)

(assert (=> (and start!8994 (= g!146 res!29043) t!47301) tb!46087))

(declare-fun result!46483 () Bool)

(assert (=> tb!46087 (= result!46483 true)))

(assert (=> b!62438 t!47301))

(declare-fun b_and!58595 () Bool)

(assert (= b_and!58589 (and (=> t!47301 result!46483) b_and!58595)))

(declare-fun t!47303 () Bool)

(declare-fun tb!46089 () Bool)

(assert (=> (and start!8994 (= res!29043 res!29043) t!47303) tb!46089))

(declare-fun result!46485 () Bool)

(assert (=> tb!46089 (= result!46485 true)))

(assert (=> b!62438 t!47303))

(declare-fun b_and!58597 () Bool)

(assert (= b_and!58591 (and (=> t!47303 result!46485) b_and!58597)))

(declare-fun b_lambda!15653 () Bool)

(assert (=> (not b_lambda!15653) (not b!62438)))

(declare-fun t!47305 () Bool)

(declare-fun tb!46091 () Bool)

(assert (=> (and start!8994 (= f!3600 res!29043) t!47305) tb!46091))

(declare-fun result!46487 () Bool)

(assert (=> tb!46091 (= result!46487 true)))

(assert (=> b!62438 t!47305))

(declare-fun b_and!58599 () Bool)

(assert (= b_and!58593 (and (=> t!47305 result!46487) b_and!58599)))

(declare-fun tb!46093 () Bool)

(declare-fun t!47307 () Bool)

(assert (=> (and start!8994 (= g!146 res!29043) t!47307) tb!46093))

(declare-fun result!46489 () Bool)

(assert (=> tb!46093 (= result!46489 true)))

(assert (=> b!62438 t!47307))

(declare-fun b_and!58601 () Bool)

(assert (= b_and!58595 (and (=> t!47307 result!46489) b_and!58601)))

(declare-fun t!47309 () Bool)

(declare-fun tb!46095 () Bool)

(assert (=> (and start!8994 (= res!29043 res!29043) t!47309) tb!46095))

(declare-fun result!46491 () Bool)

(assert (=> tb!46095 (= result!46491 true)))

(assert (=> b!62438 t!47309))

(declare-fun b_and!58603 () Bool)

(assert (= b_and!58597 (and (=> t!47309 result!46491) b_and!58603)))

(declare-fun m!68302 () Bool)

(assert (=> b!62438 m!68302))

(declare-fun m!68304 () Bool)

(assert (=> b!62438 m!68304))

(declare-fun bs!37449 () Bool)

(assert (= bs!37449 (and start!8994 b!62435)))

(assert (=> (and bs!37449 (= f!3600 res!29043)) (= true inst!461)))

(assert (=> (and bs!37449 (= g!146 res!29043)) (= true inst!461)))

(assert (=> (and start!8994 (= g!146 f!3600)) (= true true)))

(declare-fun res!29054 () Bool)

(declare-fun e!33468 () Bool)

(assert (=> start!8994 (=> (not res!29054) (not e!33468))))

(assert (=> start!8994 (= res!29054 true)))

(assert (=> start!8994 e!33468))

(assert (=> start!8994 tp!16375))

(assert (=> start!8994 tp!16377))

(assert (=> start!8994 tp!16376))

(declare-fun res!29055 () Bool)

(assert (=> b!62434 (=> (not res!29055) (not e!33468))))

(assert (=> b!62434 (= res!29055 (= res!29043 lambda!9140))))

(assert (=> b!62435 (= e!33468 (not inst!461))))

(assert (= (and start!8994 res!29054) b!62434))

(assert (= (and b!62434 res!29055) b!62435))

(push 1)

(assert b_and!58599)

(assert b_and!58601)

(assert (not b_next!39059))

(assert (not b_lambda!15653))

(assert b_and!58603)

(assert (not b_lambda!15651))

(assert (not b_next!39065))

(assert (not b_next!39061))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58599)

(assert b_and!58601)

(assert (not b_next!39059))

(assert b_and!58603)

(assert (not b_next!39065))

(assert (not b_next!39061))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15655 () Bool)

(assert (= b_lambda!15653 (or (and b!62434 (= lambda!9140 res!29043)) (and start!8994 b_free!7297 (= f!3600 res!29043)) (and start!8994 b_free!7299 (= g!146 res!29043)) (and start!8994 b_free!7301) b_lambda!15655)))

(declare-fun bs!37450 () Bool)

(declare-fun d!52844 () Bool)

(assert (= bs!37450 (and d!52844 b!62434)))

(assert (=> bs!37450 (= (dynLambda!947 lambda!9140 x!27542) (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27542)))))

(declare-fun b_lambda!15659 () Bool)

(assert (=> (not b_lambda!15659) (not bs!37450)))

(declare-fun t!47311 () Bool)

(declare-fun tb!46097 () Bool)

(assert (=> (and start!8994 (= f!3600 f!3600) t!47311) tb!46097))

(declare-fun result!46493 () Bool)

(assert (=> tb!46097 (= result!46493 true)))

(assert (=> bs!37450 t!47311))

(declare-fun b_and!58605 () Bool)

(assert (= b_and!58599 (and (=> t!47311 result!46493) b_and!58605)))

(declare-fun tb!46099 () Bool)

(declare-fun t!47313 () Bool)

(assert (=> (and start!8994 (= g!146 f!3600) t!47313) tb!46099))

(declare-fun result!46495 () Bool)

(assert (=> tb!46099 (= result!46495 true)))

(assert (=> bs!37450 t!47313))

(declare-fun b_and!58607 () Bool)

(assert (= b_and!58601 (and (=> t!47313 result!46495) b_and!58607)))

(declare-fun tb!46101 () Bool)

(declare-fun t!47315 () Bool)

(assert (=> (and start!8994 (= res!29043 f!3600) t!47315) tb!46101))

(declare-fun result!46497 () Bool)

(assert (=> tb!46101 (= result!46497 true)))

(assert (=> bs!37450 t!47315))

(declare-fun b_and!58609 () Bool)

(assert (= b_and!58603 (and (=> t!47315 result!46497) b_and!58609)))

(declare-fun b_lambda!15661 () Bool)

(assert (=> (not b_lambda!15661) (not bs!37450)))

(declare-fun t!47317 () Bool)

(declare-fun tb!46103 () Bool)

(assert (=> (and start!8994 (= f!3600 g!146) t!47317) tb!46103))

(declare-fun result!46499 () Bool)

(assert (=> tb!46103 (= result!46499 true)))

(assert (=> bs!37450 t!47317))

(declare-fun b_and!58611 () Bool)

(assert (= b_and!58605 (and (=> t!47317 result!46499) b_and!58611)))

(declare-fun t!47319 () Bool)

(declare-fun tb!46105 () Bool)

(assert (=> (and start!8994 (= g!146 g!146) t!47319) tb!46105))

(declare-fun result!46501 () Bool)

(assert (=> tb!46105 (= result!46501 true)))

(assert (=> bs!37450 t!47319))

(declare-fun b_and!58613 () Bool)

(assert (= b_and!58607 (and (=> t!47319 result!46501) b_and!58613)))

(declare-fun t!47321 () Bool)

(declare-fun tb!46107 () Bool)

(assert (=> (and start!8994 (= res!29043 g!146) t!47321) tb!46107))

(declare-fun result!46503 () Bool)

(assert (=> tb!46107 (= result!46503 true)))

(assert (=> bs!37450 t!47321))

(declare-fun b_and!58615 () Bool)

(assert (= b_and!58609 (and (=> t!47321 result!46503) b_and!58615)))

(declare-fun bs!37451 () Bool)

(declare-fun s!1924 () Bool)

(assert (= bs!37451 (and start!8994 s!1924)))

(declare-fun res!29057 () Bool)

(declare-fun e!33470 () Bool)

(assert (=> bs!37451 (=> res!29057 e!33470)))

(assert (=> bs!37451 (= res!29057 (<= x!27542 x!27542))))

(assert (=> bs!37451 (=> true e!33470)))

(declare-fun b!62439 () Bool)

(assert (=> b!62439 (= e!33470 (> (dynLambda!947 g!146 x!27542) (dynLambda!947 g!146 x!27542)))))

(assert (= (and bs!37451 (not res!29057)) b!62439))

(declare-fun b_lambda!15663 () Bool)

(assert (=> (not b_lambda!15663) (not b!62439)))

(assert (=> b!62439 t!47317))

(declare-fun b_and!58617 () Bool)

(assert (= b_and!58611 (and (=> t!47317 result!46499) b_and!58617)))

(assert (=> b!62439 t!47319))

(declare-fun b_and!58619 () Bool)

(assert (= b_and!58613 (and (=> t!47319 result!46501) b_and!58619)))

(assert (=> b!62439 t!47321))

(declare-fun b_and!58621 () Bool)

(assert (= b_and!58615 (and (=> t!47321 result!46503) b_and!58621)))

(declare-fun bs!37452 () Bool)

(declare-fun m!68306 () Bool)

(assert (= bs!37452 m!68306))

(assert (=> bs!37452 s!1924))

(assert (=> bs!37452 s!1924))

(assert (=> bs!37450 m!68306))

(assert (=> bs!37450 m!68306))

(declare-fun bs!37453 () Bool)

(declare-fun s!1926 () Bool)

(assert (= bs!37453 (and start!8994 s!1926)))

(declare-fun res!29058 () Bool)

(declare-fun e!33471 () Bool)

(assert (=> bs!37453 (=> res!29058 e!33471)))

(assert (=> bs!37453 (= res!29058 (<= (dynLambda!947 g!146 x!27542) (dynLambda!947 g!146 x!27542)))))

(assert (=> bs!37453 (=> true e!33471)))

(declare-fun b!62440 () Bool)

(assert (=> b!62440 (= e!33471 (> (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27542)) (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27542))))))

(assert (= (and bs!37453 (not res!29058)) b!62440))

(declare-fun b_lambda!15665 () Bool)

(assert (=> (not b_lambda!15665) (not b!62440)))

(assert (=> b!62440 t!47311))

(declare-fun b_and!58623 () Bool)

(assert (= b_and!58617 (and (=> t!47311 result!46493) b_and!58623)))

(assert (=> b!62440 t!47313))

(declare-fun b_and!58625 () Bool)

(assert (= b_and!58619 (and (=> t!47313 result!46495) b_and!58625)))

(assert (=> b!62440 t!47315))

(declare-fun b_and!58627 () Bool)

(assert (= b_and!58621 (and (=> t!47315 result!46497) b_and!58627)))

(declare-fun bs!37454 () Bool)

(declare-fun m!68308 () Bool)

(assert (= bs!37454 m!68308))

(assert (=> bs!37454 s!1926))

(assert (=> bs!37454 s!1926))

(assert (=> bs!37450 m!68308))

(assert (=> (and b!62434 (= lambda!9140 res!29043) b!62438) d!52844))

(declare-fun b_lambda!15657 () Bool)

(assert (= b_lambda!15651 (or (and b!62434 (= lambda!9140 res!29043)) (and start!8994 b_free!7297 (= f!3600 res!29043)) (and start!8994 b_free!7299 (= g!146 res!29043)) (and start!8994 b_free!7301) b_lambda!15657)))

(declare-fun bs!37455 () Bool)

(declare-fun d!52846 () Bool)

(assert (= bs!37455 (and d!52846 b!62434)))

(assert (=> bs!37455 (= (dynLambda!947 lambda!9140 x!27541) (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27541)))))

(declare-fun b_lambda!15667 () Bool)

(assert (=> (not b_lambda!15667) (not bs!37455)))

(declare-fun t!47323 () Bool)

(declare-fun tb!46109 () Bool)

(assert (=> (and start!8994 (= f!3600 f!3600) t!47323) tb!46109))

(declare-fun result!46505 () Bool)

(assert (=> tb!46109 (= result!46505 true)))

(assert (=> bs!37455 t!47323))

(declare-fun b_and!58629 () Bool)

(assert (= b_and!58623 (and (=> t!47323 result!46505) b_and!58629)))

(declare-fun tb!46111 () Bool)

(declare-fun t!47325 () Bool)

(assert (=> (and start!8994 (= g!146 f!3600) t!47325) tb!46111))

(declare-fun result!46507 () Bool)

(assert (=> tb!46111 (= result!46507 true)))

(assert (=> bs!37455 t!47325))

(declare-fun b_and!58631 () Bool)

(assert (= b_and!58625 (and (=> t!47325 result!46507) b_and!58631)))

(declare-fun tb!46113 () Bool)

(declare-fun t!47327 () Bool)

(assert (=> (and start!8994 (= res!29043 f!3600) t!47327) tb!46113))

(declare-fun result!46509 () Bool)

(assert (=> tb!46113 (= result!46509 true)))

(assert (=> bs!37455 t!47327))

(declare-fun b_and!58633 () Bool)

(assert (= b_and!58627 (and (=> t!47327 result!46509) b_and!58633)))

(declare-fun b_lambda!15669 () Bool)

(assert (=> (not b_lambda!15669) (not bs!37455)))

(declare-fun tb!46115 () Bool)

(declare-fun t!47329 () Bool)

(assert (=> (and start!8994 (= f!3600 g!146) t!47329) tb!46115))

(declare-fun result!46511 () Bool)

(assert (=> tb!46115 (= result!46511 true)))

(assert (=> bs!37455 t!47329))

(declare-fun b_and!58635 () Bool)

(assert (= b_and!58629 (and (=> t!47329 result!46511) b_and!58635)))

(declare-fun t!47331 () Bool)

(declare-fun tb!46117 () Bool)

(assert (=> (and start!8994 (= g!146 g!146) t!47331) tb!46117))

(declare-fun result!46513 () Bool)

(assert (=> tb!46117 (= result!46513 true)))

(assert (=> bs!37455 t!47331))

(declare-fun b_and!58637 () Bool)

(assert (= b_and!58631 (and (=> t!47331 result!46513) b_and!58637)))

(declare-fun t!47333 () Bool)

(declare-fun tb!46119 () Bool)

(assert (=> (and start!8994 (= res!29043 g!146) t!47333) tb!46119))

(declare-fun result!46515 () Bool)

(assert (=> tb!46119 (= result!46515 true)))

(assert (=> bs!37455 t!47333))

(declare-fun b_and!58639 () Bool)

(assert (= b_and!58633 (and (=> t!47333 result!46515) b_and!58639)))

(declare-fun bs!37456 () Bool)

(declare-fun s!1928 () Bool)

(assert (= bs!37456 (and start!8994 s!1928)))

(declare-fun res!29059 () Bool)

(declare-fun e!33472 () Bool)

(assert (=> bs!37456 (=> res!29059 e!33472)))

(assert (=> bs!37456 (= res!29059 (<= x!27541 x!27542))))

(assert (=> bs!37456 (=> true e!33472)))

(declare-fun b!62441 () Bool)

(assert (=> b!62441 (= e!33472 (> (dynLambda!947 g!146 x!27541) (dynLambda!947 g!146 x!27542)))))

(assert (= (and bs!37456 (not res!29059)) b!62441))

(declare-fun b_lambda!15671 () Bool)

(assert (=> (not b_lambda!15671) (not b!62441)))

(assert (=> b!62441 t!47329))

(declare-fun b_and!58641 () Bool)

(assert (= b_and!58635 (and (=> t!47329 result!46511) b_and!58641)))

(assert (=> b!62441 t!47331))

(declare-fun b_and!58643 () Bool)

(assert (= b_and!58637 (and (=> t!47331 result!46513) b_and!58643)))

(assert (=> b!62441 t!47333))

(declare-fun b_and!58645 () Bool)

(assert (= b_and!58639 (and (=> t!47333 result!46515) b_and!58645)))

(declare-fun b_lambda!15673 () Bool)

(assert (=> (not b_lambda!15673) (not b!62441)))

(assert (=> b!62441 t!47317))

(declare-fun b_and!58647 () Bool)

(assert (= b_and!58641 (and (=> t!47317 result!46499) b_and!58647)))

(assert (=> b!62441 t!47319))

(declare-fun b_and!58649 () Bool)

(assert (= b_and!58643 (and (=> t!47319 result!46501) b_and!58649)))

(assert (=> b!62441 t!47321))

(declare-fun b_and!58651 () Bool)

(assert (= b_and!58645 (and (=> t!47321 result!46503) b_and!58651)))

(declare-fun bs!37457 () Bool)

(declare-fun m!68310 () Bool)

(assert (= bs!37457 (and m!68310 m!68304 m!68306)))

(assert (=> bs!37457 s!1928))

(declare-fun bs!37458 () Bool)

(declare-fun s!1930 () Bool)

(assert (= bs!37458 (and start!8994 s!1930)))

(declare-fun res!29060 () Bool)

(declare-fun e!33473 () Bool)

(assert (=> bs!37458 (=> res!29060 e!33473)))

(assert (=> bs!37458 (= res!29060 (<= x!27541 x!27541))))

(assert (=> bs!37458 (=> true e!33473)))

(declare-fun b!62442 () Bool)

(assert (=> b!62442 (= e!33473 (> (dynLambda!947 g!146 x!27541) (dynLambda!947 g!146 x!27541)))))

(assert (= (and bs!37458 (not res!29060)) b!62442))

(declare-fun b_lambda!15675 () Bool)

(assert (=> (not b_lambda!15675) (not b!62442)))

(assert (=> b!62442 t!47329))

(declare-fun b_and!58653 () Bool)

(assert (= b_and!58647 (and (=> t!47329 result!46511) b_and!58653)))

(assert (=> b!62442 t!47331))

(declare-fun b_and!58655 () Bool)

(assert (= b_and!58649 (and (=> t!47331 result!46513) b_and!58655)))

(assert (=> b!62442 t!47333))

(declare-fun b_and!58657 () Bool)

(assert (= b_and!58651 (and (=> t!47333 result!46515) b_and!58657)))

(declare-fun bs!37459 () Bool)

(assert (= bs!37459 m!68310))

(assert (=> bs!37459 s!1930))

(declare-fun bs!37460 () Bool)

(declare-fun s!1932 () Bool)

(assert (= bs!37460 (and start!8994 s!1932)))

(declare-fun res!29061 () Bool)

(declare-fun e!33474 () Bool)

(assert (=> bs!37460 (=> res!29061 e!33474)))

(assert (=> bs!37460 (= res!29061 (<= x!27542 x!27541))))

(assert (=> bs!37460 (=> true e!33474)))

(declare-fun b!62443 () Bool)

(assert (=> b!62443 (= e!33474 (> (dynLambda!947 g!146 x!27542) (dynLambda!947 g!146 x!27541)))))

(assert (= (and bs!37460 (not res!29061)) b!62443))

(declare-fun b_lambda!15677 () Bool)

(assert (=> (not b_lambda!15677) (not b!62443)))

(assert (=> b!62443 t!47317))

(declare-fun b_and!58659 () Bool)

(assert (= b_and!58653 (and (=> t!47317 result!46499) b_and!58659)))

(assert (=> b!62443 t!47319))

(declare-fun b_and!58661 () Bool)

(assert (= b_and!58655 (and (=> t!47319 result!46501) b_and!58661)))

(assert (=> b!62443 t!47321))

(declare-fun b_and!58663 () Bool)

(assert (= b_and!58657 (and (=> t!47321 result!46503) b_and!58663)))

(declare-fun b_lambda!15679 () Bool)

(assert (=> (not b_lambda!15679) (not b!62443)))

(assert (=> b!62443 t!47329))

(declare-fun b_and!58665 () Bool)

(assert (= b_and!58659 (and (=> t!47329 result!46511) b_and!58665)))

(assert (=> b!62443 t!47331))

(declare-fun b_and!58667 () Bool)

(assert (= b_and!58661 (and (=> t!47331 result!46513) b_and!58667)))

(assert (=> b!62443 t!47333))

(declare-fun b_and!58669 () Bool)

(assert (= b_and!58663 (and (=> t!47333 result!46515) b_and!58669)))

(assert (=> bs!37457 s!1932))

(assert (=> bs!37459 s!1930))

(assert (=> bs!37455 m!68310))

(assert (=> bs!37455 m!68310))

(declare-fun bs!37461 () Bool)

(declare-fun s!1934 () Bool)

(assert (= bs!37461 (and start!8994 s!1934)))

(declare-fun res!29062 () Bool)

(declare-fun e!33475 () Bool)

(assert (=> bs!37461 (=> res!29062 e!33475)))

(assert (=> bs!37461 (= res!29062 (<= (dynLambda!947 g!146 x!27541) (dynLambda!947 g!146 x!27542)))))

(assert (=> bs!37461 (=> true e!33475)))

(declare-fun b!62444 () Bool)

(assert (=> b!62444 (= e!33475 (> (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27541)) (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27542))))))

(assert (= (and bs!37461 (not res!29062)) b!62444))

(declare-fun b_lambda!15681 () Bool)

(assert (=> (not b_lambda!15681) (not b!62444)))

(assert (=> b!62444 t!47323))

(declare-fun b_and!58671 () Bool)

(assert (= b_and!58665 (and (=> t!47323 result!46505) b_and!58671)))

(assert (=> b!62444 t!47325))

(declare-fun b_and!58673 () Bool)

(assert (= b_and!58667 (and (=> t!47325 result!46507) b_and!58673)))

(assert (=> b!62444 t!47327))

(declare-fun b_and!58675 () Bool)

(assert (= b_and!58669 (and (=> t!47327 result!46509) b_and!58675)))

(declare-fun b_lambda!15683 () Bool)

(assert (=> (not b_lambda!15683) (not b!62444)))

(assert (=> b!62444 t!47311))

(declare-fun b_and!58677 () Bool)

(assert (= b_and!58671 (and (=> t!47311 result!46493) b_and!58677)))

(assert (=> b!62444 t!47313))

(declare-fun b_and!58679 () Bool)

(assert (= b_and!58673 (and (=> t!47313 result!46495) b_and!58679)))

(assert (=> b!62444 t!47315))

(declare-fun b_and!58681 () Bool)

(assert (= b_and!58675 (and (=> t!47315 result!46497) b_and!58681)))

(declare-fun bs!37462 () Bool)

(declare-fun m!68312 () Bool)

(assert (= bs!37462 (and m!68312 m!68308)))

(assert (=> bs!37462 s!1934))

(declare-fun bs!37463 () Bool)

(declare-fun s!1936 () Bool)

(assert (= bs!37463 (and start!8994 s!1936)))

(declare-fun res!29063 () Bool)

(declare-fun e!33476 () Bool)

(assert (=> bs!37463 (=> res!29063 e!33476)))

(assert (=> bs!37463 (= res!29063 (<= (dynLambda!947 g!146 x!27541) (dynLambda!947 g!146 x!27541)))))

(assert (=> bs!37463 (=> true e!33476)))

(declare-fun b!62445 () Bool)

(assert (=> b!62445 (= e!33476 (> (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27541)) (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27541))))))

(assert (= (and bs!37463 (not res!29063)) b!62445))

(declare-fun b_lambda!15685 () Bool)

(assert (=> (not b_lambda!15685) (not b!62445)))

(assert (=> b!62445 t!47323))

(declare-fun b_and!58683 () Bool)

(assert (= b_and!58677 (and (=> t!47323 result!46505) b_and!58683)))

(assert (=> b!62445 t!47325))

(declare-fun b_and!58685 () Bool)

(assert (= b_and!58679 (and (=> t!47325 result!46507) b_and!58685)))

(assert (=> b!62445 t!47327))

(declare-fun b_and!58687 () Bool)

(assert (= b_and!58681 (and (=> t!47327 result!46509) b_and!58687)))

(declare-fun bs!37464 () Bool)

(assert (= bs!37464 m!68312))

(assert (=> bs!37464 s!1936))

(declare-fun bs!37465 () Bool)

(declare-fun s!1938 () Bool)

(assert (= bs!37465 (and start!8994 s!1938)))

(declare-fun res!29064 () Bool)

(declare-fun e!33477 () Bool)

(assert (=> bs!37465 (=> res!29064 e!33477)))

(assert (=> bs!37465 (= res!29064 (<= (dynLambda!947 g!146 x!27542) (dynLambda!947 g!146 x!27541)))))

(assert (=> bs!37465 (=> true e!33477)))

(declare-fun b!62446 () Bool)

(assert (=> b!62446 (= e!33477 (> (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27542)) (dynLambda!947 f!3600 (dynLambda!947 g!146 x!27541))))))

(assert (= (and bs!37465 (not res!29064)) b!62446))

(declare-fun b_lambda!15687 () Bool)

(assert (=> (not b_lambda!15687) (not b!62446)))

(assert (=> b!62446 t!47311))

(declare-fun b_and!58689 () Bool)

(assert (= b_and!58683 (and (=> t!47311 result!46493) b_and!58689)))

(assert (=> b!62446 t!47313))

(declare-fun b_and!58691 () Bool)

(assert (= b_and!58685 (and (=> t!47313 result!46495) b_and!58691)))

(assert (=> b!62446 t!47315))

(declare-fun b_and!58693 () Bool)

(assert (= b_and!58687 (and (=> t!47315 result!46497) b_and!58693)))

(declare-fun b_lambda!15689 () Bool)

(assert (=> (not b_lambda!15689) (not b!62446)))

(assert (=> b!62446 t!47323))

(declare-fun b_and!58695 () Bool)

(assert (= b_and!58689 (and (=> t!47323 result!46505) b_and!58695)))

(assert (=> b!62446 t!47325))

(declare-fun b_and!58697 () Bool)

(assert (= b_and!58691 (and (=> t!47325 result!46507) b_and!58697)))

(assert (=> b!62446 t!47327))

(declare-fun b_and!58699 () Bool)

(assert (= b_and!58693 (and (=> t!47327 result!46509) b_and!58699)))

(assert (=> bs!37462 s!1938))

(assert (=> bs!37464 s!1936))

(assert (=> bs!37455 m!68312))

(assert (=> (and b!62434 (= lambda!9140 res!29043) b!62438) d!52846))

(declare-fun bs!37466 () Bool)

(declare-fun s!1940 () Bool)

(assert (= bs!37466 (and start!8994 s!1940)))

(declare-fun res!29065 () Bool)

(declare-fun e!33478 () Bool)

(assert (=> bs!37466 (=> res!29065 e!33478)))

(assert (=> bs!37466 (= res!29065 (<= x!27541 x!27541))))

(assert (=> bs!37466 (=> true e!33478)))

(declare-fun b!62447 () Bool)

(assert (=> b!62447 (= e!33478 (> (dynLambda!947 f!3600 x!27541) (dynLambda!947 f!3600 x!27541)))))

(assert (= (and bs!37466 (not res!29065)) b!62447))

(declare-fun b_lambda!15691 () Bool)

(assert (=> (not b_lambda!15691) (not b!62447)))

(declare-fun t!47335 () Bool)

(declare-fun tb!46121 () Bool)

(assert (=> (and start!8994 (= f!3600 f!3600) t!47335) tb!46121))

(declare-fun result!46517 () Bool)

(assert (=> tb!46121 (= result!46517 true)))

(assert (=> b!62447 t!47335))

(declare-fun b_and!58701 () Bool)

(assert (= b_and!58695 (and (=> t!47335 result!46517) b_and!58701)))

(declare-fun t!47337 () Bool)

(declare-fun tb!46123 () Bool)

(assert (=> (and start!8994 (= g!146 f!3600) t!47337) tb!46123))

(declare-fun result!46519 () Bool)

(assert (=> tb!46123 (= result!46519 true)))

(assert (=> b!62447 t!47337))

(declare-fun b_and!58703 () Bool)

(assert (= b_and!58697 (and (=> t!47337 result!46519) b_and!58703)))

(declare-fun t!47339 () Bool)

(declare-fun tb!46125 () Bool)

(assert (=> (and start!8994 (= res!29043 f!3600) t!47339) tb!46125))

(declare-fun result!46521 () Bool)

(assert (=> tb!46125 (= result!46521 true)))

(assert (=> b!62447 t!47339))

(declare-fun b_and!58705 () Bool)

(assert (= b_and!58699 (and (=> t!47339 result!46521) b_and!58705)))

(assert (=> m!68302 s!1940))

(declare-fun bs!37467 () Bool)

(declare-fun s!1942 () Bool)

(assert (= bs!37467 (and start!8994 s!1942)))

(declare-fun res!29066 () Bool)

(declare-fun e!33479 () Bool)

(assert (=> bs!37467 (=> res!29066 e!33479)))

(assert (=> bs!37467 (= res!29066 (<= x!27542 x!27542))))

(assert (=> bs!37467 (=> true e!33479)))

(declare-fun b!62448 () Bool)

(assert (=> b!62448 (= e!33479 (> (dynLambda!947 f!3600 x!27542) (dynLambda!947 f!3600 x!27542)))))

(assert (= (and bs!37467 (not res!29066)) b!62448))

(declare-fun b_lambda!15693 () Bool)

(assert (=> (not b_lambda!15693) (not b!62448)))

(declare-fun t!47341 () Bool)

(declare-fun tb!46127 () Bool)

(assert (=> (and start!8994 (= f!3600 f!3600) t!47341) tb!46127))

(declare-fun result!46523 () Bool)

(assert (=> tb!46127 (= result!46523 true)))

(assert (=> b!62448 t!47341))

(declare-fun b_and!58707 () Bool)

(assert (= b_and!58701 (and (=> t!47341 result!46523) b_and!58707)))

(declare-fun tb!46129 () Bool)

(declare-fun t!47343 () Bool)

(assert (=> (and start!8994 (= g!146 f!3600) t!47343) tb!46129))

(declare-fun result!46525 () Bool)

(assert (=> tb!46129 (= result!46525 true)))

(assert (=> b!62448 t!47343))

(declare-fun b_and!58709 () Bool)

(assert (= b_and!58703 (and (=> t!47343 result!46525) b_and!58709)))

(declare-fun t!47345 () Bool)

(declare-fun tb!46131 () Bool)

(assert (=> (and start!8994 (= res!29043 f!3600) t!47345) tb!46131))

(declare-fun result!46527 () Bool)

(assert (=> tb!46131 (= result!46527 true)))

(assert (=> b!62448 t!47345))

(declare-fun b_and!58711 () Bool)

(assert (= b_and!58705 (and (=> t!47345 result!46527) b_and!58711)))

(assert (=> m!68304 s!1942))

(assert (=> m!68304 s!1924))

(assert (=> m!68302 s!1930))

(push 1)

(assert (not b_lambda!15681))

(assert b_and!58707)

(assert (not b_lambda!15655))

(assert (not b_next!39059))

(assert (not b_lambda!15671))

(assert (not b_lambda!15683))

(assert b_and!58711)

(assert (not b_lambda!15661))

(assert (not b_lambda!15677))

(assert b_and!58709)

(assert (not b_lambda!15679))

(assert (not b_lambda!15663))

(assert (not b_lambda!15689))

(assert (not b_lambda!15665))

(assert (not b_next!39065))

(assert (not b_lambda!15675))

(assert (not b_lambda!15673))

(assert (not b_lambda!15667))

(assert (not b_next!39061))

(assert (not b_lambda!15669))

(assert (not b_lambda!15685))

(assert (not b_lambda!15687))

(assert (not b_lambda!15659))

(assert (not b_lambda!15657))

(assert (not b_lambda!15693))

(assert (not b_lambda!15691))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58707)

(assert (not b_next!39059))

(assert b_and!58711)

(assert b_and!58709)

(assert (not b_next!39065))

(assert (not b_next!39061))

(check-sat)

(pop 1)

