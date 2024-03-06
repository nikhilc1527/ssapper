; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11450 () Bool)

(assert start!11450)

(declare-fun b_free!7449 () Bool)

(declare-fun b_next!39697 () Bool)

(assert (=> start!11450 (= b_free!7449 (not b_next!39697))))

(declare-fun tp!17095 () Bool)

(declare-fun b_and!59373 () Bool)

(assert (=> start!11450 (= tp!17095 b_and!59373)))

(declare-fun b_free!7451 () Bool)

(declare-fun b_next!39699 () Bool)

(assert (=> start!11450 (= b_free!7451 (not b_next!39699))))

(declare-fun tp!17097 () Bool)

(declare-fun b_and!59375 () Bool)

(assert (=> start!11450 (= tp!17097 b_and!59375)))

(declare-fun b_free!7453 () Bool)

(declare-fun b_next!39701 () Bool)

(assert (=> start!11450 (= b_free!7453 (not b_next!39701))))

(declare-fun tp!17094 () Bool)

(declare-fun b_and!59377 () Bool)

(assert (=> start!11450 (= tp!17094 b_and!59377)))

(declare-fun b_free!7455 () Bool)

(declare-fun b_next!39703 () Bool)

(assert (=> start!11450 (= b_free!7455 (not b_next!39703))))

(declare-fun tp!17098 () Bool)

(declare-fun b_and!59379 () Bool)

(assert (=> start!11450 (= tp!17098 b_and!59379)))

(declare-fun b_free!7457 () Bool)

(declare-fun b_next!39705 () Bool)

(assert (=> start!11450 (= b_free!7457 (not b_next!39705))))

(declare-fun tp!17096 () Bool)

(declare-fun b_and!59381 () Bool)

(assert (=> start!11450 (= tp!17096 b_and!59381)))

(declare-fun res!45769 () Bool)

(declare-fun e!47628 () Bool)

(assert (=> start!11450 (=> (not res!45769) (not e!47628))))

(declare-fun sa2!3 () Int)

(declare-fun u1!7 () Int)

(declare-fun sa3!3 () Int)

(declare-fun sa1!3 () Int)

(declare-fun intersection!0 (Int Int) Int)

(assert (=> start!11450 (= res!45769 (= u1!7 (intersection!0 (intersection!0 sa1!3 sa2!3) sa3!3)))))

(assert (=> start!11450 e!47628))

(assert (=> start!11450 tp!17098))

(assert (=> start!11450 tp!17094))

(assert (=> start!11450 tp!17096))

(assert (=> start!11450 tp!17097))

(assert (=> start!11450 tp!17095))

(assert (=> start!11450 true))

(declare-fun b!87719 () Bool)

(declare-fun res!45768 () Bool)

(assert (=> b!87719 (=> (not res!45768) (not e!47628))))

(declare-fun u2!7 () Int)

(assert (=> b!87719 (= res!45768 (= u2!7 (intersection!0 sa1!3 (intersection!0 sa2!3 sa3!3))))))

(declare-fun b!87720 () Bool)

(declare-fun x!30581 () (_ BitVec 32))

(declare-fun dynLambda!1028 (Int (_ BitVec 32)) Bool)

(assert (=> b!87720 (= e!47628 (not (= (dynLambda!1028 u1!7 x!30581) (dynLambda!1028 u2!7 x!30581))))))

(assert (= (and start!11450 res!45769) b!87719))

(assert (= (and b!87719 res!45768) b!87720))

(declare-fun b_lambda!17195 () Bool)

(assert (=> (not b_lambda!17195) (not b!87720)))

(declare-fun t!48450 () Bool)

(declare-fun tb!46439 () Bool)

(assert (=> (and start!11450 (= u2!7 u1!7) t!48450) tb!46439))

(declare-fun result!46869 () Bool)

(assert (=> tb!46439 (= result!46869 true)))

(assert (=> b!87720 t!48450))

(declare-fun b_and!59383 () Bool)

(assert (= b_and!59379 (and (=> t!48450 result!46869) b_and!59383)))

(declare-fun t!48452 () Bool)

(declare-fun tb!46441 () Bool)

(assert (=> (and start!11450 (= sa2!3 u1!7) t!48452) tb!46441))

(declare-fun result!46871 () Bool)

(assert (=> tb!46441 (= result!46871 true)))

(assert (=> b!87720 t!48452))

(declare-fun b_and!59385 () Bool)

(assert (= b_and!59377 (and (=> t!48452 result!46871) b_and!59385)))

(declare-fun t!48454 () Bool)

(declare-fun tb!46443 () Bool)

(assert (=> (and start!11450 (= sa1!3 u1!7) t!48454) tb!46443))

(declare-fun result!46873 () Bool)

(assert (=> tb!46443 (= result!46873 true)))

(assert (=> b!87720 t!48454))

(declare-fun b_and!59387 () Bool)

(assert (= b_and!59373 (and (=> t!48454 result!46873) b_and!59387)))

(declare-fun t!48456 () Bool)

(declare-fun tb!46445 () Bool)

(assert (=> (and start!11450 (= u1!7 u1!7) t!48456) tb!46445))

(declare-fun result!46875 () Bool)

(assert (=> tb!46445 (= result!46875 true)))

(assert (=> b!87720 t!48456))

(declare-fun b_and!59389 () Bool)

(assert (= b_and!59381 (and (=> t!48456 result!46875) b_and!59389)))

(declare-fun t!48458 () Bool)

(declare-fun tb!46447 () Bool)

(assert (=> (and start!11450 (= sa3!3 u1!7) t!48458) tb!46447))

(declare-fun result!46877 () Bool)

(assert (=> tb!46447 (= result!46877 true)))

(assert (=> b!87720 t!48458))

(declare-fun b_and!59391 () Bool)

(assert (= b_and!59375 (and (=> t!48458 result!46877) b_and!59391)))

(declare-fun b_lambda!17197 () Bool)

(assert (=> (not b_lambda!17197) (not b!87720)))

(declare-fun tb!46449 () Bool)

(declare-fun t!48460 () Bool)

(assert (=> (and start!11450 (= sa1!3 u2!7) t!48460) tb!46449))

(declare-fun result!46879 () Bool)

(assert (=> tb!46449 (= result!46879 true)))

(assert (=> b!87720 t!48460))

(declare-fun b_and!59393 () Bool)

(assert (= b_and!59387 (and (=> t!48460 result!46879) b_and!59393)))

(declare-fun t!48462 () Bool)

(declare-fun tb!46451 () Bool)

(assert (=> (and start!11450 (= sa2!3 u2!7) t!48462) tb!46451))

(declare-fun result!46881 () Bool)

(assert (=> tb!46451 (= result!46881 true)))

(assert (=> b!87720 t!48462))

(declare-fun b_and!59395 () Bool)

(assert (= b_and!59385 (and (=> t!48462 result!46881) b_and!59395)))

(declare-fun tb!46453 () Bool)

(declare-fun t!48464 () Bool)

(assert (=> (and start!11450 (= sa3!3 u2!7) t!48464) tb!46453))

(declare-fun result!46883 () Bool)

(assert (=> tb!46453 (= result!46883 true)))

(assert (=> b!87720 t!48464))

(declare-fun b_and!59397 () Bool)

(assert (= b_and!59391 (and (=> t!48464 result!46883) b_and!59397)))

(declare-fun t!48466 () Bool)

(declare-fun tb!46455 () Bool)

(assert (=> (and start!11450 (= u2!7 u2!7) t!48466) tb!46455))

(declare-fun result!46885 () Bool)

(assert (=> tb!46455 (= result!46885 true)))

(assert (=> b!87720 t!48466))

(declare-fun b_and!59399 () Bool)

(assert (= b_and!59383 (and (=> t!48466 result!46885) b_and!59399)))

(declare-fun t!48468 () Bool)

(declare-fun tb!46457 () Bool)

(assert (=> (and start!11450 (= u1!7 u2!7) t!48468) tb!46457))

(declare-fun result!46887 () Bool)

(assert (=> tb!46457 (= result!46887 true)))

(assert (=> b!87720 t!48468))

(declare-fun b_and!59401 () Bool)

(assert (= b_and!59389 (and (=> t!48468 result!46887) b_and!59401)))

(declare-fun m!84016 () Bool)

(assert (=> start!11450 m!84016))

(assert (=> start!11450 m!84016))

(declare-fun m!84018 () Bool)

(assert (=> start!11450 m!84018))

(declare-fun m!84020 () Bool)

(assert (=> b!87719 m!84020))

(assert (=> b!87719 m!84020))

(declare-fun m!84022 () Bool)

(assert (=> b!87719 m!84022))

(declare-fun m!84024 () Bool)

(assert (=> b!87720 m!84024))

(declare-fun m!84026 () Bool)

(assert (=> b!87720 m!84026))

(push 1)

(assert b_and!59401)

(assert (not start!11450))

(assert b_and!59397)

(assert (not b_next!39705))

(assert (not b_lambda!17197))

(assert (not b_next!39703))

(assert (not b!87719))

(assert (not b_next!39697))

(assert b_and!59399)

(assert (not b_lambda!17195))

(assert (not b_next!39701))

(assert b_and!59393)

(assert b_and!59395)

(assert (not b_next!39699))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59401)

(assert b_and!59397)

(assert (not b_next!39705))

(assert (not b_next!39703))

(assert (not b_next!39697))

(assert b_and!59399)

(assert (not b_next!39701))

(assert b_and!59393)

(assert b_and!59395)

(assert (not b_next!39699))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17199 () Bool)

(assert (= b_lambda!17197 (or (and start!11450 b_free!7449 (= sa1!3 u2!7)) (and start!11450 b_free!7457 (= u1!7 u2!7)) (and start!11450 b_free!7455) (and start!11450 b_free!7453 (= sa2!3 u2!7)) (and start!11450 b_free!7451 (= sa3!3 u2!7)) b_lambda!17199)))

(declare-fun b_lambda!17201 () Bool)

(assert (= b_lambda!17195 (or (and start!11450 b_free!7457) (and start!11450 b_free!7453 (= sa2!3 u1!7)) (and start!11450 b_free!7449 (= sa1!3 u1!7)) (and start!11450 b_free!7455 (= u2!7 u1!7)) (and start!11450 b_free!7451 (= sa3!3 u1!7)) b_lambda!17201)))

(push 1)

(assert b_and!59401)

(assert (not start!11450))

(assert b_and!59397)

(assert (not b_next!39705))

(assert (not b_next!39703))

(assert (not b!87719))

(assert (not b_next!39697))

(assert (not b_lambda!17199))

(assert b_and!59399)

(assert (not b_next!39701))

(assert b_and!59393)

(assert (not b_lambda!17201))

(assert b_and!59395)

(assert (not b_next!39699))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59401)

(assert b_and!59397)

(assert (not b_next!39705))

(assert (not b_next!39703))

(assert (not b_next!39697))

(assert b_and!59399)

(assert (not b_next!39701))

(assert b_and!59393)

(assert b_and!59395)

(assert (not b_next!39699))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58425 () Bool)

(assert (=> d!58425 true))

(declare-fun order!477 () Int)

(declare-fun lambda!10843 () Int)

(declare-fun dynLambda!1029 (Int Int) Int)

(assert (=> d!58425 (< (dynLambda!1029 order!477 sa1!3) (dynLambda!1029 order!477 lambda!10843))))

(assert (=> d!58425 true))

(assert (=> d!58425 (< (dynLambda!1029 order!477 (intersection!0 sa2!3 sa3!3)) (dynLambda!1029 order!477 lambda!10843))))

(declare-fun b_next!39707 () Bool)

(assert (=> start!11450 (= b_next!39701 (or (and d!58425 (= lambda!10843 sa2!3)) b_next!39707))))

(declare-fun b_next!39709 () Bool)

(assert (=> start!11450 (= b_next!39699 (or (and d!58425 (= lambda!10843 sa3!3)) b_next!39709))))

(declare-fun b_next!39711 () Bool)

(assert (=> start!11450 (= b_next!39703 (or (and d!58425 (= lambda!10843 u2!7)) b_next!39711))))

(declare-fun b_next!39713 () Bool)

(assert (=> start!11450 (= b_next!39705 (or (and d!58425 (= lambda!10843 u1!7)) b_next!39713))))

(assert (=> d!58425 (= (intersection!0 sa1!3 (intersection!0 sa2!3 sa3!3)) lambda!10843)))

(assert (=> b!87719 d!58425))

(declare-fun bs!41207 () Bool)

(declare-fun d!58427 () Bool)

(assert (= bs!41207 (and d!58427 d!58425)))

(declare-fun lambda!10844 () Int)

(assert (=> bs!41207 (= (and (= sa2!3 sa1!3) (= sa3!3 (intersection!0 sa2!3 sa3!3))) (= lambda!10844 lambda!10843))))

(assert (=> d!58427 true))

(assert (=> d!58427 (< (dynLambda!1029 order!477 sa2!3) (dynLambda!1029 order!477 lambda!10844))))

(assert (=> d!58427 true))

(assert (=> d!58427 (< (dynLambda!1029 order!477 sa3!3) (dynLambda!1029 order!477 lambda!10844))))

(declare-fun b_next!39715 () Bool)

(assert (=> start!11450 (= b_next!39711 (or (and d!58427 (= lambda!10844 u2!7)) b_next!39715))))

(declare-fun b_next!39717 () Bool)

(assert (=> start!11450 (= b_next!39713 (or (and d!58427 (= lambda!10844 u1!7)) b_next!39717))))

(declare-fun b_next!39719 () Bool)

(assert (=> start!11450 (= b_next!39697 (or (and d!58427 (= lambda!10844 sa1!3)) b_next!39719))))

(assert (=> d!58427 (= (intersection!0 sa2!3 sa3!3) lambda!10844)))

(assert (=> b!87719 d!58427))

(declare-fun bs!41208 () Bool)

(declare-fun d!58429 () Bool)

(assert (= bs!41208 (and d!58429 d!58425)))

(declare-fun lambda!10845 () Int)

(assert (=> bs!41208 (= (and (= (intersection!0 sa1!3 sa2!3) sa1!3) (= sa3!3 (intersection!0 sa2!3 sa3!3))) (= lambda!10845 lambda!10843))))

(declare-fun bs!41209 () Bool)

(assert (= bs!41209 (and d!58429 d!58427)))

(assert (=> bs!41209 (= (= (intersection!0 sa1!3 sa2!3) sa2!3) (= lambda!10845 lambda!10844))))

(assert (=> d!58429 true))

(assert (=> d!58429 (< (dynLambda!1029 order!477 (intersection!0 sa1!3 sa2!3)) (dynLambda!1029 order!477 lambda!10845))))

(assert (=> d!58429 true))

(assert (=> d!58429 (< (dynLambda!1029 order!477 sa3!3) (dynLambda!1029 order!477 lambda!10845))))

(declare-fun b_next!39721 () Bool)

(assert (=> start!11450 (= b_next!39707 (or (and d!58429 (= lambda!10845 sa2!3)) b_next!39721))))

(declare-fun b_next!39723 () Bool)

(assert (=> start!11450 (= b_next!39715 (or (and d!58429 (= lambda!10845 u2!7)) b_next!39723))))

(declare-fun b_next!39725 () Bool)

(assert (=> start!11450 (= b_next!39717 (or (and d!58429 (= lambda!10845 u1!7)) b_next!39725))))

(declare-fun b_next!39727 () Bool)

(assert (=> start!11450 (= b_next!39719 (or (and d!58429 (= lambda!10845 sa1!3)) b_next!39727))))

(assert (=> d!58429 (= (intersection!0 (intersection!0 sa1!3 sa2!3) sa3!3) lambda!10845)))

(assert (=> start!11450 d!58429))

(declare-fun bs!41210 () Bool)

(declare-fun d!58431 () Bool)

(assert (= bs!41210 (and d!58431 d!58425)))

(declare-fun lambda!10846 () Int)

(assert (=> bs!41210 (= (= sa2!3 (intersection!0 sa2!3 sa3!3)) (= lambda!10846 lambda!10843))))

(declare-fun bs!41211 () Bool)

(assert (= bs!41211 (and d!58431 d!58427)))

(assert (=> bs!41211 (= (and (= sa1!3 sa2!3) (= sa2!3 sa3!3)) (= lambda!10846 lambda!10844))))

(declare-fun bs!41212 () Bool)

(assert (= bs!41212 (and d!58431 d!58429)))

(assert (=> bs!41212 (= (and (= sa1!3 (intersection!0 sa1!3 sa2!3)) (= sa2!3 sa3!3)) (= lambda!10846 lambda!10845))))

(assert (=> d!58431 true))

(assert (=> d!58431 (< (dynLambda!1029 order!477 sa1!3) (dynLambda!1029 order!477 lambda!10846))))

(assert (=> d!58431 true))

(assert (=> d!58431 (< (dynLambda!1029 order!477 sa2!3) (dynLambda!1029 order!477 lambda!10846))))

(declare-fun b_next!39729 () Bool)

(assert (=> start!11450 (= b_next!39709 (or (and d!58431 (= lambda!10846 sa3!3)) b_next!39729))))

(declare-fun b_next!39731 () Bool)

(assert (=> start!11450 (= b_next!39723 (or (and d!58431 (= lambda!10846 u2!7)) b_next!39731))))

(declare-fun b_next!39733 () Bool)

(assert (=> start!11450 (= b_next!39725 (or (and d!58431 (= lambda!10846 u1!7)) b_next!39733))))

(assert (=> d!58431 (= (intersection!0 sa1!3 sa2!3) lambda!10846)))

(assert (=> start!11450 d!58431))

(push 1)

(assert b_and!59401)

(assert b_and!59397)

(assert (not b_next!39729))

(assert (not b_next!39731))

(assert (not b_next!39727))

(assert (not b_next!39721))

(assert (not b_next!39733))

(assert (not b_lambda!17199))

(assert b_and!59399)

(assert b_and!59393)

(assert (not b_lambda!17201))

(assert b_and!59395)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59401)

(assert b_and!59397)

(assert (not b_next!39729))

(assert (not b_next!39731))

(assert (not b_next!39727))

(assert (not b_next!39721))

(assert (not b_next!39733))

(assert b_and!59399)

(assert b_and!59393)

(assert b_and!59395)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17203 () Bool)

(assert (= b_lambda!17199 (or (and d!58425 (= lambda!10843 u2!7)) (and d!58427 (= lambda!10844 u2!7)) (and d!58429 (= lambda!10845 u2!7)) (and d!58431 (= lambda!10846 u2!7)) b_lambda!17203)))

(declare-fun bs!41213 () Bool)

(declare-fun d!58433 () Bool)

(assert (= bs!41213 (and d!58433 d!58425)))

(declare-fun res!45772 () Bool)

(declare-fun e!47631 () Bool)

(assert (=> bs!41213 (=> (not res!45772) (not e!47631))))

(assert (=> bs!41213 (= res!45772 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41213 (= (dynLambda!1028 lambda!10843 x!30581) e!47631)))

(declare-fun b!87725 () Bool)

(assert (=> b!87725 (= e!47631 (dynLambda!1028 (intersection!0 sa2!3 sa3!3) x!30581))))

(assert (= (and bs!41213 res!45772) b!87725))

(declare-fun b_lambda!17207 () Bool)

(assert (=> (not b_lambda!17207) (not bs!41213)))

(declare-fun tb!46459 () Bool)

(declare-fun t!48470 () Bool)

(assert (=> (and start!11450 (= u2!7 sa1!3) t!48470) tb!46459))

(declare-fun result!46889 () Bool)

(assert (=> tb!46459 (= result!46889 true)))

(assert (=> bs!41213 t!48470))

(declare-fun b_and!59403 () Bool)

(assert (= b_and!59399 (and (=> t!48470 result!46889) b_and!59403)))

(declare-fun t!48472 () Bool)

(declare-fun tb!46461 () Bool)

(assert (=> (and start!11450 (= u1!7 sa1!3) t!48472) tb!46461))

(declare-fun result!46891 () Bool)

(assert (=> tb!46461 (= result!46891 true)))

(assert (=> bs!41213 t!48472))

(declare-fun b_and!59405 () Bool)

(assert (= b_and!59401 (and (=> t!48472 result!46891) b_and!59405)))

(declare-fun t!48474 () Bool)

(declare-fun tb!46463 () Bool)

(assert (=> (and start!11450 (= sa1!3 sa1!3) t!48474) tb!46463))

(declare-fun result!46893 () Bool)

(assert (=> tb!46463 (= result!46893 true)))

(assert (=> bs!41213 t!48474))

(declare-fun b_and!59407 () Bool)

(assert (= b_and!59393 (and (=> t!48474 result!46893) b_and!59407)))

(declare-fun tb!46465 () Bool)

(declare-fun t!48476 () Bool)

(assert (=> (and start!11450 (= sa2!3 sa1!3) t!48476) tb!46465))

(declare-fun result!46895 () Bool)

(assert (=> tb!46465 (= result!46895 true)))

(assert (=> bs!41213 t!48476))

(declare-fun b_and!59409 () Bool)

(assert (= b_and!59395 (and (=> t!48476 result!46895) b_and!59409)))

(declare-fun t!48478 () Bool)

(declare-fun tb!46467 () Bool)

(assert (=> (and start!11450 (= sa3!3 sa1!3) t!48478) tb!46467))

(declare-fun result!46897 () Bool)

(assert (=> tb!46467 (= result!46897 true)))

(assert (=> bs!41213 t!48478))

(declare-fun b_and!59411 () Bool)

(assert (= b_and!59397 (and (=> t!48478 result!46897) b_and!59411)))

(declare-fun b_lambda!17209 () Bool)

(assert (=> (not b_lambda!17209) (not b!87725)))

(declare-fun m!84028 () Bool)

(assert (=> bs!41213 m!84028))

(declare-fun m!84030 () Bool)

(assert (=> b!87725 m!84030))

(assert (=> (and d!58425 (= lambda!10843 u2!7) b!87720) d!58433))

(declare-fun bs!41214 () Bool)

(declare-fun d!58435 () Bool)

(assert (= bs!41214 (and d!58435 d!58427)))

(declare-fun res!45773 () Bool)

(declare-fun e!47632 () Bool)

(assert (=> bs!41214 (=> (not res!45773) (not e!47632))))

(assert (=> bs!41214 (= res!45773 (dynLambda!1028 sa2!3 x!30581))))

(assert (=> bs!41214 (= (dynLambda!1028 lambda!10844 x!30581) e!47632)))

(declare-fun b!87726 () Bool)

(assert (=> b!87726 (= e!47632 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41214 res!45773) b!87726))

(declare-fun b_lambda!17211 () Bool)

(assert (=> (not b_lambda!17211) (not bs!41214)))

(declare-fun t!48480 () Bool)

(declare-fun tb!46469 () Bool)

(assert (=> (and start!11450 (= sa3!3 sa2!3) t!48480) tb!46469))

(declare-fun result!46899 () Bool)

(assert (=> tb!46469 (= result!46899 true)))

(assert (=> bs!41214 t!48480))

(declare-fun b_and!59413 () Bool)

(assert (= b_and!59411 (and (=> t!48480 result!46899) b_and!59413)))

(declare-fun t!48482 () Bool)

(declare-fun tb!46471 () Bool)

(assert (=> (and start!11450 (= sa2!3 sa2!3) t!48482) tb!46471))

(declare-fun result!46901 () Bool)

(assert (=> tb!46471 (= result!46901 true)))

(assert (=> bs!41214 t!48482))

(declare-fun b_and!59415 () Bool)

(assert (= b_and!59409 (and (=> t!48482 result!46901) b_and!59415)))

(declare-fun t!48484 () Bool)

(declare-fun tb!46473 () Bool)

(assert (=> (and start!11450 (= u2!7 sa2!3) t!48484) tb!46473))

(declare-fun result!46903 () Bool)

(assert (=> tb!46473 (= result!46903 true)))

(assert (=> bs!41214 t!48484))

(declare-fun b_and!59417 () Bool)

(assert (= b_and!59403 (and (=> t!48484 result!46903) b_and!59417)))

(declare-fun tb!46475 () Bool)

(declare-fun t!48486 () Bool)

(assert (=> (and start!11450 (= sa1!3 sa2!3) t!48486) tb!46475))

(declare-fun result!46905 () Bool)

(assert (=> tb!46475 (= result!46905 true)))

(assert (=> bs!41214 t!48486))

(declare-fun b_and!59419 () Bool)

(assert (= b_and!59407 (and (=> t!48486 result!46905) b_and!59419)))

(declare-fun t!48488 () Bool)

(declare-fun tb!46477 () Bool)

(assert (=> (and start!11450 (= u1!7 sa2!3) t!48488) tb!46477))

(declare-fun result!46907 () Bool)

(assert (=> tb!46477 (= result!46907 true)))

(assert (=> bs!41214 t!48488))

(declare-fun b_and!59421 () Bool)

(assert (= b_and!59405 (and (=> t!48488 result!46907) b_and!59421)))

(declare-fun b_lambda!17213 () Bool)

(assert (=> (not b_lambda!17213) (not b!87726)))

(declare-fun tb!46479 () Bool)

(declare-fun t!48490 () Bool)

(assert (=> (and start!11450 (= sa1!3 sa3!3) t!48490) tb!46479))

(declare-fun result!46909 () Bool)

(assert (=> tb!46479 (= result!46909 true)))

(assert (=> b!87726 t!48490))

(declare-fun b_and!59423 () Bool)

(assert (= b_and!59419 (and (=> t!48490 result!46909) b_and!59423)))

(declare-fun t!48492 () Bool)

(declare-fun tb!46481 () Bool)

(assert (=> (and start!11450 (= sa3!3 sa3!3) t!48492) tb!46481))

(declare-fun result!46911 () Bool)

(assert (=> tb!46481 (= result!46911 true)))

(assert (=> b!87726 t!48492))

(declare-fun b_and!59425 () Bool)

(assert (= b_and!59413 (and (=> t!48492 result!46911) b_and!59425)))

(declare-fun tb!46483 () Bool)

(declare-fun t!48494 () Bool)

(assert (=> (and start!11450 (= sa2!3 sa3!3) t!48494) tb!46483))

(declare-fun result!46913 () Bool)

(assert (=> tb!46483 (= result!46913 true)))

(assert (=> b!87726 t!48494))

(declare-fun b_and!59427 () Bool)

(assert (= b_and!59415 (and (=> t!48494 result!46913) b_and!59427)))

(declare-fun t!48496 () Bool)

(declare-fun tb!46485 () Bool)

(assert (=> (and start!11450 (= u1!7 sa3!3) t!48496) tb!46485))

(declare-fun result!46915 () Bool)

(assert (=> tb!46485 (= result!46915 true)))

(assert (=> b!87726 t!48496))

(declare-fun b_and!59429 () Bool)

(assert (= b_and!59421 (and (=> t!48496 result!46915) b_and!59429)))

(declare-fun tb!46487 () Bool)

(declare-fun t!48498 () Bool)

(assert (=> (and start!11450 (= u2!7 sa3!3) t!48498) tb!46487))

(declare-fun result!46917 () Bool)

(assert (=> tb!46487 (= result!46917 true)))

(assert (=> b!87726 t!48498))

(declare-fun b_and!59431 () Bool)

(assert (= b_and!59417 (and (=> t!48498 result!46917) b_and!59431)))

(declare-fun m!84032 () Bool)

(assert (=> bs!41214 m!84032))

(declare-fun m!84034 () Bool)

(assert (=> b!87726 m!84034))

(assert (=> (and d!58427 (= lambda!10844 u2!7) b!87720) d!58435))

(declare-fun bs!41215 () Bool)

(declare-fun d!58437 () Bool)

(assert (= bs!41215 (and d!58437 d!58429)))

(declare-fun res!45774 () Bool)

(declare-fun e!47633 () Bool)

(assert (=> bs!41215 (=> (not res!45774) (not e!47633))))

(assert (=> bs!41215 (= res!45774 (dynLambda!1028 (intersection!0 sa1!3 sa2!3) x!30581))))

(assert (=> bs!41215 (= (dynLambda!1028 lambda!10845 x!30581) e!47633)))

(declare-fun b!87727 () Bool)

(assert (=> b!87727 (= e!47633 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41215 res!45774) b!87727))

(declare-fun b_lambda!17215 () Bool)

(assert (=> (not b_lambda!17215) (not bs!41215)))

(declare-fun b_lambda!17217 () Bool)

(assert (=> (not b_lambda!17217) (not b!87727)))

(assert (=> b!87727 t!48494))

(declare-fun b_and!59433 () Bool)

(assert (= b_and!59427 (and (=> t!48494 result!46913) b_and!59433)))

(assert (=> b!87727 t!48498))

(declare-fun b_and!59435 () Bool)

(assert (= b_and!59431 (and (=> t!48498 result!46917) b_and!59435)))

(assert (=> b!87727 t!48496))

(declare-fun b_and!59437 () Bool)

(assert (= b_and!59429 (and (=> t!48496 result!46915) b_and!59437)))

(assert (=> b!87727 t!48492))

(declare-fun b_and!59439 () Bool)

(assert (= b_and!59425 (and (=> t!48492 result!46911) b_and!59439)))

(assert (=> b!87727 t!48490))

(declare-fun b_and!59441 () Bool)

(assert (= b_and!59423 (and (=> t!48490 result!46909) b_and!59441)))

(declare-fun m!84036 () Bool)

(assert (=> bs!41215 m!84036))

(assert (=> b!87727 m!84034))

(assert (=> (and d!58429 (= lambda!10845 u2!7) b!87720) d!58437))

(declare-fun bs!41216 () Bool)

(declare-fun d!58439 () Bool)

(assert (= bs!41216 (and d!58439 d!58431)))

(declare-fun res!45775 () Bool)

(declare-fun e!47634 () Bool)

(assert (=> bs!41216 (=> (not res!45775) (not e!47634))))

(assert (=> bs!41216 (= res!45775 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41216 (= (dynLambda!1028 lambda!10846 x!30581) e!47634)))

(declare-fun b!87728 () Bool)

(assert (=> b!87728 (= e!47634 (dynLambda!1028 sa2!3 x!30581))))

(assert (= (and bs!41216 res!45775) b!87728))

(declare-fun b_lambda!17219 () Bool)

(assert (=> (not b_lambda!17219) (not bs!41216)))

(assert (=> bs!41216 t!48472))

(declare-fun b_and!59443 () Bool)

(assert (= b_and!59437 (and (=> t!48472 result!46891) b_and!59443)))

(assert (=> bs!41216 t!48474))

(declare-fun b_and!59445 () Bool)

(assert (= b_and!59441 (and (=> t!48474 result!46893) b_and!59445)))

(assert (=> bs!41216 t!48476))

(declare-fun b_and!59447 () Bool)

(assert (= b_and!59433 (and (=> t!48476 result!46895) b_and!59447)))

(assert (=> bs!41216 t!48470))

(declare-fun b_and!59449 () Bool)

(assert (= b_and!59435 (and (=> t!48470 result!46889) b_and!59449)))

(assert (=> bs!41216 t!48478))

(declare-fun b_and!59451 () Bool)

(assert (= b_and!59439 (and (=> t!48478 result!46897) b_and!59451)))

(declare-fun b_lambda!17221 () Bool)

(assert (=> (not b_lambda!17221) (not b!87728)))

(assert (=> b!87728 t!48480))

(declare-fun b_and!59453 () Bool)

(assert (= b_and!59451 (and (=> t!48480 result!46899) b_and!59453)))

(assert (=> b!87728 t!48488))

(declare-fun b_and!59455 () Bool)

(assert (= b_and!59443 (and (=> t!48488 result!46907) b_and!59455)))

(assert (=> b!87728 t!48484))

(declare-fun b_and!59457 () Bool)

(assert (= b_and!59449 (and (=> t!48484 result!46903) b_and!59457)))

(assert (=> b!87728 t!48482))

(declare-fun b_and!59459 () Bool)

(assert (= b_and!59447 (and (=> t!48482 result!46901) b_and!59459)))

(assert (=> b!87728 t!48486))

(declare-fun b_and!59461 () Bool)

(assert (= b_and!59445 (and (=> t!48486 result!46905) b_and!59461)))

(assert (=> bs!41216 m!84028))

(assert (=> b!87728 m!84032))

(assert (=> (and d!58431 (= lambda!10846 u2!7) b!87720) d!58439))

(declare-fun b_lambda!17205 () Bool)

(assert (= b_lambda!17201 (or (and d!58425 (= lambda!10843 u1!7)) (and d!58427 (= lambda!10844 u1!7)) (and d!58429 (= lambda!10845 u1!7)) (and d!58431 (= lambda!10846 u1!7)) b_lambda!17205)))

(declare-fun bs!41217 () Bool)

(declare-fun d!58441 () Bool)

(assert (= bs!41217 (and d!58441 d!58425)))

(declare-fun res!45776 () Bool)

(declare-fun e!47635 () Bool)

(assert (=> bs!41217 (=> (not res!45776) (not e!47635))))

(assert (=> bs!41217 (= res!45776 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41217 (= (dynLambda!1028 lambda!10843 x!30581) e!47635)))

(declare-fun b!87729 () Bool)

(assert (=> b!87729 (= e!47635 (dynLambda!1028 (intersection!0 sa2!3 sa3!3) x!30581))))

(assert (= (and bs!41217 res!45776) b!87729))

(declare-fun b_lambda!17223 () Bool)

(assert (=> (not b_lambda!17223) (not bs!41217)))

(assert (=> bs!41217 t!48476))

(declare-fun b_and!59463 () Bool)

(assert (= b_and!59459 (and (=> t!48476 result!46895) b_and!59463)))

(assert (=> bs!41217 t!48472))

(declare-fun b_and!59465 () Bool)

(assert (= b_and!59455 (and (=> t!48472 result!46891) b_and!59465)))

(assert (=> bs!41217 t!48470))

(declare-fun b_and!59467 () Bool)

(assert (= b_and!59457 (and (=> t!48470 result!46889) b_and!59467)))

(assert (=> bs!41217 t!48474))

(declare-fun b_and!59469 () Bool)

(assert (= b_and!59461 (and (=> t!48474 result!46893) b_and!59469)))

(assert (=> bs!41217 t!48478))

(declare-fun b_and!59471 () Bool)

(assert (= b_and!59453 (and (=> t!48478 result!46897) b_and!59471)))

(declare-fun b_lambda!17225 () Bool)

(assert (=> (not b_lambda!17225) (not b!87729)))

(assert (=> bs!41217 m!84028))

(assert (=> b!87729 m!84030))

(assert (=> (and d!58425 (= lambda!10843 u1!7) b!87720) d!58441))

(declare-fun bs!41218 () Bool)

(declare-fun d!58443 () Bool)

(assert (= bs!41218 (and d!58443 d!58427)))

(declare-fun res!45777 () Bool)

(declare-fun e!47636 () Bool)

(assert (=> bs!41218 (=> (not res!45777) (not e!47636))))

(assert (=> bs!41218 (= res!45777 (dynLambda!1028 sa2!3 x!30581))))

(assert (=> bs!41218 (= (dynLambda!1028 lambda!10844 x!30581) e!47636)))

(declare-fun b!87730 () Bool)

(assert (=> b!87730 (= e!47636 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41218 res!45777) b!87730))

(declare-fun b_lambda!17227 () Bool)

(assert (=> (not b_lambda!17227) (not bs!41218)))

(assert (=> bs!41218 t!48486))

(declare-fun b_and!59473 () Bool)

(assert (= b_and!59469 (and (=> t!48486 result!46905) b_and!59473)))

(assert (=> bs!41218 t!48488))

(declare-fun b_and!59475 () Bool)

(assert (= b_and!59465 (and (=> t!48488 result!46907) b_and!59475)))

(assert (=> bs!41218 t!48482))

(declare-fun b_and!59477 () Bool)

(assert (= b_and!59463 (and (=> t!48482 result!46901) b_and!59477)))

(assert (=> bs!41218 t!48480))

(declare-fun b_and!59479 () Bool)

(assert (= b_and!59471 (and (=> t!48480 result!46899) b_and!59479)))

(assert (=> bs!41218 t!48484))

(declare-fun b_and!59481 () Bool)

(assert (= b_and!59467 (and (=> t!48484 result!46903) b_and!59481)))

(declare-fun b_lambda!17229 () Bool)

(assert (=> (not b_lambda!17229) (not b!87730)))

(assert (=> b!87730 t!48490))

(declare-fun b_and!59483 () Bool)

(assert (= b_and!59473 (and (=> t!48490 result!46909) b_and!59483)))

(assert (=> b!87730 t!48492))

(declare-fun b_and!59485 () Bool)

(assert (= b_and!59479 (and (=> t!48492 result!46911) b_and!59485)))

(assert (=> b!87730 t!48498))

(declare-fun b_and!59487 () Bool)

(assert (= b_and!59481 (and (=> t!48498 result!46917) b_and!59487)))

(assert (=> b!87730 t!48496))

(declare-fun b_and!59489 () Bool)

(assert (= b_and!59475 (and (=> t!48496 result!46915) b_and!59489)))

(assert (=> b!87730 t!48494))

(declare-fun b_and!59491 () Bool)

(assert (= b_and!59477 (and (=> t!48494 result!46913) b_and!59491)))

(assert (=> bs!41218 m!84032))

(assert (=> b!87730 m!84034))

(assert (=> (and d!58427 (= lambda!10844 u1!7) b!87720) d!58443))

(declare-fun bs!41219 () Bool)

(declare-fun d!58445 () Bool)

(assert (= bs!41219 (and d!58445 d!58429)))

(declare-fun res!45778 () Bool)

(declare-fun e!47637 () Bool)

(assert (=> bs!41219 (=> (not res!45778) (not e!47637))))

(assert (=> bs!41219 (= res!45778 (dynLambda!1028 (intersection!0 sa1!3 sa2!3) x!30581))))

(assert (=> bs!41219 (= (dynLambda!1028 lambda!10845 x!30581) e!47637)))

(declare-fun b!87731 () Bool)

(assert (=> b!87731 (= e!47637 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41219 res!45778) b!87731))

(declare-fun b_lambda!17231 () Bool)

(assert (=> (not b_lambda!17231) (not bs!41219)))

(declare-fun b_lambda!17233 () Bool)

(assert (=> (not b_lambda!17233) (not b!87731)))

(assert (=> b!87731 t!48490))

(declare-fun b_and!59493 () Bool)

(assert (= b_and!59483 (and (=> t!48490 result!46909) b_and!59493)))

(assert (=> b!87731 t!48496))

(declare-fun b_and!59495 () Bool)

(assert (= b_and!59489 (and (=> t!48496 result!46915) b_and!59495)))

(assert (=> b!87731 t!48492))

(declare-fun b_and!59497 () Bool)

(assert (= b_and!59485 (and (=> t!48492 result!46911) b_and!59497)))

(assert (=> b!87731 t!48494))

(declare-fun b_and!59499 () Bool)

(assert (= b_and!59491 (and (=> t!48494 result!46913) b_and!59499)))

(assert (=> b!87731 t!48498))

(declare-fun b_and!59501 () Bool)

(assert (= b_and!59487 (and (=> t!48498 result!46917) b_and!59501)))

(assert (=> bs!41219 m!84036))

(assert (=> b!87731 m!84034))

(assert (=> (and d!58429 (= lambda!10845 u1!7) b!87720) d!58445))

(declare-fun bs!41220 () Bool)

(declare-fun d!58447 () Bool)

(assert (= bs!41220 (and d!58447 d!58431)))

(declare-fun res!45779 () Bool)

(declare-fun e!47638 () Bool)

(assert (=> bs!41220 (=> (not res!45779) (not e!47638))))

(assert (=> bs!41220 (= res!45779 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41220 (= (dynLambda!1028 lambda!10846 x!30581) e!47638)))

(declare-fun b!87732 () Bool)

(assert (=> b!87732 (= e!47638 (dynLambda!1028 sa2!3 x!30581))))

(assert (= (and bs!41220 res!45779) b!87732))

(declare-fun b_lambda!17235 () Bool)

(assert (=> (not b_lambda!17235) (not bs!41220)))

(assert (=> bs!41220 t!48478))

(declare-fun b_and!59503 () Bool)

(assert (= b_and!59497 (and (=> t!48478 result!46897) b_and!59503)))

(assert (=> bs!41220 t!48474))

(declare-fun b_and!59505 () Bool)

(assert (= b_and!59493 (and (=> t!48474 result!46893) b_and!59505)))

(assert (=> bs!41220 t!48470))

(declare-fun b_and!59507 () Bool)

(assert (= b_and!59501 (and (=> t!48470 result!46889) b_and!59507)))

(assert (=> bs!41220 t!48472))

(declare-fun b_and!59509 () Bool)

(assert (= b_and!59495 (and (=> t!48472 result!46891) b_and!59509)))

(assert (=> bs!41220 t!48476))

(declare-fun b_and!59511 () Bool)

(assert (= b_and!59499 (and (=> t!48476 result!46895) b_and!59511)))

(declare-fun b_lambda!17237 () Bool)

(assert (=> (not b_lambda!17237) (not b!87732)))

(assert (=> b!87732 t!48484))

(declare-fun b_and!59513 () Bool)

(assert (= b_and!59507 (and (=> t!48484 result!46903) b_and!59513)))

(assert (=> b!87732 t!48486))

(declare-fun b_and!59515 () Bool)

(assert (= b_and!59505 (and (=> t!48486 result!46905) b_and!59515)))

(assert (=> b!87732 t!48482))

(declare-fun b_and!59517 () Bool)

(assert (= b_and!59511 (and (=> t!48482 result!46901) b_and!59517)))

(assert (=> b!87732 t!48480))

(declare-fun b_and!59519 () Bool)

(assert (= b_and!59503 (and (=> t!48480 result!46899) b_and!59519)))

(assert (=> b!87732 t!48488))

(declare-fun b_and!59521 () Bool)

(assert (= b_and!59509 (and (=> t!48488 result!46907) b_and!59521)))

(assert (=> bs!41220 m!84028))

(assert (=> b!87732 m!84032))

(assert (=> (and d!58431 (= lambda!10846 u1!7) b!87720) d!58447))

(push 1)

(assert b_and!59517)

(assert (not b_lambda!17217))

(assert (not b_lambda!17213))

(assert (not b_next!39729))

(assert (not b_lambda!17205))

(assert b_and!59519)

(assert (not b_lambda!17229))

(assert b_and!59521)

(assert (not b_lambda!17207))

(assert b_and!59515)

(assert (not b_next!39731))

(assert (not b_lambda!17215))

(assert (not b_lambda!17235))

(assert (not b_next!39727))

(assert (not b_next!39721))

(assert (not b_next!39733))

(assert (not b_lambda!17233))

(assert (not b_lambda!17203))

(assert (not b_lambda!17221))

(assert (not b_lambda!17231))

(assert (not b_lambda!17225))

(assert (not b_lambda!17209))

(assert (not b_lambda!17223))

(assert b_and!59513)

(assert (not b_lambda!17211))

(assert (not b_lambda!17219))

(assert (not b_lambda!17227))

(assert (not b_lambda!17237))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59517)

(assert (not b_next!39729))

(assert b_and!59519)

(assert b_and!59521)

(assert b_and!59515)

(assert (not b_next!39731))

(assert (not b_next!39727))

(assert (not b_next!39721))

(assert (not b_next!39733))

(assert b_and!59513)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17239 () Bool)

(assert (= b_lambda!17237 (or (and d!58429 (= lambda!10845 sa2!3)) (and start!11450 b_free!7449 (= sa1!3 sa2!3)) (and start!11450 b_free!7451 (= sa3!3 sa2!3)) (and start!11450 b_free!7457 (= u1!7 sa2!3)) (and start!11450 b_free!7455 (= u2!7 sa2!3)) (and start!11450 b_free!7453) (and d!58425 (= lambda!10843 sa2!3)) b_lambda!17239)))

(declare-fun bs!41221 () Bool)

(declare-fun d!58449 () Bool)

(assert (= bs!41221 (and d!58449 d!58429)))

(declare-fun res!45780 () Bool)

(declare-fun e!47639 () Bool)

(assert (=> bs!41221 (=> (not res!45780) (not e!47639))))

(assert (=> bs!41221 (= res!45780 (dynLambda!1028 (intersection!0 sa1!3 sa2!3) x!30581))))

(assert (=> bs!41221 (= (dynLambda!1028 lambda!10845 x!30581) e!47639)))

(declare-fun b!87733 () Bool)

(assert (=> b!87733 (= e!47639 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41221 res!45780) b!87733))

(declare-fun b_lambda!17271 () Bool)

(assert (=> (not b_lambda!17271) (not bs!41221)))

(declare-fun b_lambda!17273 () Bool)

(assert (=> (not b_lambda!17273) (not b!87733)))

(assert (=> b!87733 t!48496))

(declare-fun b_and!59523 () Bool)

(assert (= b_and!59521 (and (=> t!48496 result!46915) b_and!59523)))

(assert (=> b!87733 t!48494))

(declare-fun b_and!59525 () Bool)

(assert (= b_and!59517 (and (=> t!48494 result!46913) b_and!59525)))

(assert (=> b!87733 t!48490))

(declare-fun b_and!59527 () Bool)

(assert (= b_and!59515 (and (=> t!48490 result!46909) b_and!59527)))

(assert (=> b!87733 t!48498))

(declare-fun b_and!59529 () Bool)

(assert (= b_and!59513 (and (=> t!48498 result!46917) b_and!59529)))

(assert (=> b!87733 t!48492))

(declare-fun b_and!59531 () Bool)

(assert (= b_and!59519 (and (=> t!48492 result!46911) b_and!59531)))

(assert (=> bs!41221 m!84036))

(assert (=> b!87733 m!84034))

(assert (=> (and d!58429 (= lambda!10845 sa2!3) b!87732) d!58449))

(declare-fun bs!41222 () Bool)

(declare-fun d!58451 () Bool)

(assert (= bs!41222 (and d!58451 d!58425)))

(declare-fun res!45781 () Bool)

(declare-fun e!47640 () Bool)

(assert (=> bs!41222 (=> (not res!45781) (not e!47640))))

(assert (=> bs!41222 (= res!45781 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41222 (= (dynLambda!1028 lambda!10843 x!30581) e!47640)))

(declare-fun b!87734 () Bool)

(assert (=> b!87734 (= e!47640 (dynLambda!1028 (intersection!0 sa2!3 sa3!3) x!30581))))

(assert (= (and bs!41222 res!45781) b!87734))

(declare-fun b_lambda!17275 () Bool)

(assert (=> (not b_lambda!17275) (not bs!41222)))

(assert (=> bs!41222 t!48476))

(declare-fun b_and!59533 () Bool)

(assert (= b_and!59525 (and (=> t!48476 result!46895) b_and!59533)))

(assert (=> bs!41222 t!48478))

(declare-fun b_and!59535 () Bool)

(assert (= b_and!59531 (and (=> t!48478 result!46897) b_and!59535)))

(assert (=> bs!41222 t!48472))

(declare-fun b_and!59537 () Bool)

(assert (= b_and!59523 (and (=> t!48472 result!46891) b_and!59537)))

(assert (=> bs!41222 t!48470))

(declare-fun b_and!59539 () Bool)

(assert (= b_and!59529 (and (=> t!48470 result!46889) b_and!59539)))

(assert (=> bs!41222 t!48474))

(declare-fun b_and!59541 () Bool)

(assert (= b_and!59527 (and (=> t!48474 result!46893) b_and!59541)))

(declare-fun b_lambda!17277 () Bool)

(assert (=> (not b_lambda!17277) (not b!87734)))

(assert (=> bs!41222 m!84028))

(assert (=> b!87734 m!84030))

(assert (=> (and d!58425 (= lambda!10843 sa2!3) b!87732) d!58451))

(declare-fun b_lambda!17241 () Bool)

(assert (= b_lambda!17225 (or d!58427 b_lambda!17241)))

(declare-fun bs!41223 () Bool)

(declare-fun d!58453 () Bool)

(assert (= bs!41223 (and d!58453 d!58427)))

(declare-fun res!45782 () Bool)

(declare-fun e!47641 () Bool)

(assert (=> bs!41223 (=> (not res!45782) (not e!47641))))

(assert (=> bs!41223 (= res!45782 (dynLambda!1028 sa2!3 x!30581))))

(assert (=> bs!41223 (= (dynLambda!1028 lambda!10844 x!30581) e!47641)))

(declare-fun b!87735 () Bool)

(assert (=> b!87735 (= e!47641 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41223 res!45782) b!87735))

(declare-fun b_lambda!17279 () Bool)

(assert (=> (not b_lambda!17279) (not bs!41223)))

(assert (=> bs!41223 t!48486))

(declare-fun b_and!59543 () Bool)

(assert (= b_and!59541 (and (=> t!48486 result!46905) b_and!59543)))

(assert (=> bs!41223 t!48488))

(declare-fun b_and!59545 () Bool)

(assert (= b_and!59537 (and (=> t!48488 result!46907) b_and!59545)))

(assert (=> bs!41223 t!48480))

(declare-fun b_and!59547 () Bool)

(assert (= b_and!59535 (and (=> t!48480 result!46899) b_and!59547)))

(assert (=> bs!41223 t!48484))

(declare-fun b_and!59549 () Bool)

(assert (= b_and!59539 (and (=> t!48484 result!46903) b_and!59549)))

(assert (=> bs!41223 t!48482))

(declare-fun b_and!59551 () Bool)

(assert (= b_and!59533 (and (=> t!48482 result!46901) b_and!59551)))

(declare-fun b_lambda!17281 () Bool)

(assert (=> (not b_lambda!17281) (not b!87735)))

(assert (=> b!87735 t!48498))

(declare-fun b_and!59553 () Bool)

(assert (= b_and!59549 (and (=> t!48498 result!46917) b_and!59553)))

(assert (=> b!87735 t!48490))

(declare-fun b_and!59555 () Bool)

(assert (= b_and!59543 (and (=> t!48490 result!46909) b_and!59555)))

(assert (=> b!87735 t!48492))

(declare-fun b_and!59557 () Bool)

(assert (= b_and!59547 (and (=> t!48492 result!46911) b_and!59557)))

(assert (=> b!87735 t!48496))

(declare-fun b_and!59559 () Bool)

(assert (= b_and!59545 (and (=> t!48496 result!46915) b_and!59559)))

(assert (=> b!87735 t!48494))

(declare-fun b_and!59561 () Bool)

(assert (= b_and!59551 (and (=> t!48494 result!46913) b_and!59561)))

(assert (=> bs!41223 m!84032))

(assert (=> b!87735 m!84034))

(assert (=> b!87729 d!58453))

(declare-fun b_lambda!17243 () Bool)

(assert (= b_lambda!17231 (or d!58431 b_lambda!17243)))

(declare-fun bs!41224 () Bool)

(declare-fun d!58455 () Bool)

(assert (= bs!41224 (and d!58455 d!58431)))

(declare-fun res!45783 () Bool)

(declare-fun e!47642 () Bool)

(assert (=> bs!41224 (=> (not res!45783) (not e!47642))))

(assert (=> bs!41224 (= res!45783 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41224 (= (dynLambda!1028 lambda!10846 x!30581) e!47642)))

(declare-fun b!87736 () Bool)

(assert (=> b!87736 (= e!47642 (dynLambda!1028 sa2!3 x!30581))))

(assert (= (and bs!41224 res!45783) b!87736))

(declare-fun b_lambda!17283 () Bool)

(assert (=> (not b_lambda!17283) (not bs!41224)))

(assert (=> bs!41224 t!48474))

(declare-fun b_and!59563 () Bool)

(assert (= b_and!59555 (and (=> t!48474 result!46893) b_and!59563)))

(assert (=> bs!41224 t!48476))

(declare-fun b_and!59565 () Bool)

(assert (= b_and!59561 (and (=> t!48476 result!46895) b_and!59565)))

(assert (=> bs!41224 t!48470))

(declare-fun b_and!59567 () Bool)

(assert (= b_and!59553 (and (=> t!48470 result!46889) b_and!59567)))

(assert (=> bs!41224 t!48478))

(declare-fun b_and!59569 () Bool)

(assert (= b_and!59557 (and (=> t!48478 result!46897) b_and!59569)))

(assert (=> bs!41224 t!48472))

(declare-fun b_and!59571 () Bool)

(assert (= b_and!59559 (and (=> t!48472 result!46891) b_and!59571)))

(declare-fun b_lambda!17285 () Bool)

(assert (=> (not b_lambda!17285) (not b!87736)))

(assert (=> b!87736 t!48488))

(declare-fun b_and!59573 () Bool)

(assert (= b_and!59571 (and (=> t!48488 result!46907) b_and!59573)))

(assert (=> b!87736 t!48482))

(declare-fun b_and!59575 () Bool)

(assert (= b_and!59565 (and (=> t!48482 result!46901) b_and!59575)))

(assert (=> b!87736 t!48484))

(declare-fun b_and!59577 () Bool)

(assert (= b_and!59567 (and (=> t!48484 result!46903) b_and!59577)))

(assert (=> b!87736 t!48486))

(declare-fun b_and!59579 () Bool)

(assert (= b_and!59563 (and (=> t!48486 result!46905) b_and!59579)))

(assert (=> b!87736 t!48480))

(declare-fun b_and!59581 () Bool)

(assert (= b_and!59569 (and (=> t!48480 result!46899) b_and!59581)))

(assert (=> bs!41224 m!84028))

(assert (=> b!87736 m!84032))

(assert (=> bs!41219 d!58455))

(declare-fun b_lambda!17245 () Bool)

(assert (= b_lambda!17211 (or (and d!58429 (= lambda!10845 sa2!3)) (and start!11450 b_free!7449 (= sa1!3 sa2!3)) (and start!11450 b_free!7451 (= sa3!3 sa2!3)) (and start!11450 b_free!7457 (= u1!7 sa2!3)) (and start!11450 b_free!7455 (= u2!7 sa2!3)) (and start!11450 b_free!7453) (and d!58425 (= lambda!10843 sa2!3)) b_lambda!17245)))

(assert (=> (and d!58429 (= lambda!10845 sa2!3) bs!41214) d!58449))

(assert (=> (and d!58425 (= lambda!10843 sa2!3) bs!41214) d!58451))

(declare-fun b_lambda!17247 () Bool)

(assert (= b_lambda!17221 (or (and d!58429 (= lambda!10845 sa2!3)) (and start!11450 b_free!7449 (= sa1!3 sa2!3)) (and start!11450 b_free!7451 (= sa3!3 sa2!3)) (and start!11450 b_free!7457 (= u1!7 sa2!3)) (and start!11450 b_free!7455 (= u2!7 sa2!3)) (and start!11450 b_free!7453) (and d!58425 (= lambda!10843 sa2!3)) b_lambda!17247)))

(assert (=> (and d!58429 (= lambda!10845 sa2!3) b!87728) d!58449))

(assert (=> (and d!58425 (= lambda!10843 sa2!3) b!87728) d!58451))

(declare-fun b_lambda!17249 () Bool)

(assert (= b_lambda!17223 (or (and d!58429 (= lambda!10845 sa1!3)) (and d!58427 (= lambda!10844 sa1!3)) (and start!11450 b_free!7457 (= u1!7 sa1!3)) (and start!11450 b_free!7455 (= u2!7 sa1!3)) (and start!11450 b_free!7451 (= sa3!3 sa1!3)) (and start!11450 b_free!7453 (= sa2!3 sa1!3)) (and start!11450 b_free!7449) b_lambda!17249)))

(declare-fun bs!41225 () Bool)

(declare-fun d!58457 () Bool)

(assert (= bs!41225 (and d!58457 d!58429)))

(declare-fun res!45784 () Bool)

(declare-fun e!47643 () Bool)

(assert (=> bs!41225 (=> (not res!45784) (not e!47643))))

(assert (=> bs!41225 (= res!45784 (dynLambda!1028 (intersection!0 sa1!3 sa2!3) x!30581))))

(assert (=> bs!41225 (= (dynLambda!1028 lambda!10845 x!30581) e!47643)))

(declare-fun b!87737 () Bool)

(assert (=> b!87737 (= e!47643 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41225 res!45784) b!87737))

(declare-fun b_lambda!17287 () Bool)

(assert (=> (not b_lambda!17287) (not bs!41225)))

(declare-fun b_lambda!17289 () Bool)

(assert (=> (not b_lambda!17289) (not b!87737)))

(assert (=> b!87737 t!48494))

(declare-fun b_and!59583 () Bool)

(assert (= b_and!59575 (and (=> t!48494 result!46913) b_and!59583)))

(assert (=> b!87737 t!48498))

(declare-fun b_and!59585 () Bool)

(assert (= b_and!59577 (and (=> t!48498 result!46917) b_and!59585)))

(assert (=> b!87737 t!48490))

(declare-fun b_and!59587 () Bool)

(assert (= b_and!59579 (and (=> t!48490 result!46909) b_and!59587)))

(assert (=> b!87737 t!48492))

(declare-fun b_and!59589 () Bool)

(assert (= b_and!59581 (and (=> t!48492 result!46911) b_and!59589)))

(assert (=> b!87737 t!48496))

(declare-fun b_and!59591 () Bool)

(assert (= b_and!59573 (and (=> t!48496 result!46915) b_and!59591)))

(assert (=> bs!41225 m!84036))

(assert (=> b!87737 m!84034))

(assert (=> (and d!58429 (= lambda!10845 sa1!3) bs!41217) d!58457))

(declare-fun bs!41226 () Bool)

(declare-fun d!58459 () Bool)

(assert (= bs!41226 (and d!58459 d!58427)))

(declare-fun res!45785 () Bool)

(declare-fun e!47644 () Bool)

(assert (=> bs!41226 (=> (not res!45785) (not e!47644))))

(assert (=> bs!41226 (= res!45785 (dynLambda!1028 sa2!3 x!30581))))

(assert (=> bs!41226 (= (dynLambda!1028 lambda!10844 x!30581) e!47644)))

(declare-fun b!87738 () Bool)

(assert (=> b!87738 (= e!47644 (dynLambda!1028 sa3!3 x!30581))))

(assert (= (and bs!41226 res!45785) b!87738))

(declare-fun b_lambda!17291 () Bool)

(assert (=> (not b_lambda!17291) (not bs!41226)))

(assert (=> bs!41226 t!48484))

(declare-fun b_and!59593 () Bool)

(assert (= b_and!59585 (and (=> t!48484 result!46903) b_and!59593)))

(assert (=> bs!41226 t!48488))

(declare-fun b_and!59595 () Bool)

(assert (= b_and!59591 (and (=> t!48488 result!46907) b_and!59595)))

(assert (=> bs!41226 t!48482))

(declare-fun b_and!59597 () Bool)

(assert (= b_and!59583 (and (=> t!48482 result!46901) b_and!59597)))

(assert (=> bs!41226 t!48486))

(declare-fun b_and!59599 () Bool)

(assert (= b_and!59587 (and (=> t!48486 result!46905) b_and!59599)))

(assert (=> bs!41226 t!48480))

(declare-fun b_and!59601 () Bool)

(assert (= b_and!59589 (and (=> t!48480 result!46899) b_and!59601)))

(declare-fun b_lambda!17293 () Bool)

(assert (=> (not b_lambda!17293) (not b!87738)))

(assert (=> b!87738 t!48496))

(declare-fun b_and!59603 () Bool)

(assert (= b_and!59595 (and (=> t!48496 result!46915) b_and!59603)))

(assert (=> b!87738 t!48498))

(declare-fun b_and!59605 () Bool)

(assert (= b_and!59593 (and (=> t!48498 result!46917) b_and!59605)))

(assert (=> b!87738 t!48492))

(declare-fun b_and!59607 () Bool)

(assert (= b_and!59601 (and (=> t!48492 result!46911) b_and!59607)))

(assert (=> b!87738 t!48490))

(declare-fun b_and!59609 () Bool)

(assert (= b_and!59599 (and (=> t!48490 result!46909) b_and!59609)))

(assert (=> b!87738 t!48494))

(declare-fun b_and!59611 () Bool)

(assert (= b_and!59597 (and (=> t!48494 result!46913) b_and!59611)))

(assert (=> bs!41226 m!84032))

(assert (=> b!87738 m!84034))

(assert (=> (and d!58427 (= lambda!10844 sa1!3) bs!41217) d!58459))

(declare-fun b_lambda!17251 () Bool)

(assert (= b_lambda!17213 (or (and start!11450 b_free!7449 (= sa1!3 sa3!3)) (and start!11450 b_free!7453 (= sa2!3 sa3!3)) (and start!11450 b_free!7451) (and d!58425 (= lambda!10843 sa3!3)) (and start!11450 b_free!7455 (= u2!7 sa3!3)) (and start!11450 b_free!7457 (= u1!7 sa3!3)) (and d!58431 (= lambda!10846 sa3!3)) b_lambda!17251)))

(declare-fun bs!41227 () Bool)

(declare-fun d!58461 () Bool)

(assert (= bs!41227 (and d!58461 d!58425)))

(declare-fun res!45786 () Bool)

(declare-fun e!47645 () Bool)

(assert (=> bs!41227 (=> (not res!45786) (not e!47645))))

(assert (=> bs!41227 (= res!45786 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41227 (= (dynLambda!1028 lambda!10843 x!30581) e!47645)))

(declare-fun b!87739 () Bool)

(assert (=> b!87739 (= e!47645 (dynLambda!1028 (intersection!0 sa2!3 sa3!3) x!30581))))

(assert (= (and bs!41227 res!45786) b!87739))

(declare-fun b_lambda!17295 () Bool)

(assert (=> (not b_lambda!17295) (not bs!41227)))

(assert (=> bs!41227 t!48478))

(declare-fun b_and!59613 () Bool)

(assert (= b_and!59607 (and (=> t!48478 result!46897) b_and!59613)))

(assert (=> bs!41227 t!48476))

(declare-fun b_and!59615 () Bool)

(assert (= b_and!59611 (and (=> t!48476 result!46895) b_and!59615)))

(assert (=> bs!41227 t!48472))

(declare-fun b_and!59617 () Bool)

(assert (= b_and!59603 (and (=> t!48472 result!46891) b_and!59617)))

(assert (=> bs!41227 t!48474))

(declare-fun b_and!59619 () Bool)

(assert (= b_and!59609 (and (=> t!48474 result!46893) b_and!59619)))

(assert (=> bs!41227 t!48470))

(declare-fun b_and!59621 () Bool)

(assert (= b_and!59605 (and (=> t!48470 result!46889) b_and!59621)))

(declare-fun b_lambda!17297 () Bool)

(assert (=> (not b_lambda!17297) (not b!87739)))

(assert (=> bs!41227 m!84028))

(assert (=> b!87739 m!84030))

(assert (=> (and d!58425 (= lambda!10843 sa3!3) b!87726) d!58461))

(declare-fun bs!41228 () Bool)

(declare-fun d!58463 () Bool)

(assert (= bs!41228 (and d!58463 d!58431)))

(declare-fun res!45787 () Bool)

(declare-fun e!47646 () Bool)

(assert (=> bs!41228 (=> (not res!45787) (not e!47646))))

(assert (=> bs!41228 (= res!45787 (dynLambda!1028 sa1!3 x!30581))))

(assert (=> bs!41228 (= (dynLambda!1028 lambda!10846 x!30581) e!47646)))

(declare-fun b!87740 () Bool)

(assert (=> b!87740 (= e!47646 (dynLambda!1028 sa2!3 x!30581))))

(assert (= (and bs!41228 res!45787) b!87740))

(declare-fun b_lambda!17299 () Bool)

(assert (=> (not b_lambda!17299) (not bs!41228)))

(assert (=> bs!41228 t!48474))

(declare-fun b_and!59623 () Bool)

(assert (= b_and!59619 (and (=> t!48474 result!46893) b_and!59623)))

(assert (=> bs!41228 t!48470))

(declare-fun b_and!59625 () Bool)

(assert (= b_and!59621 (and (=> t!48470 result!46889) b_and!59625)))

(assert (=> bs!41228 t!48472))

(declare-fun b_and!59627 () Bool)

(assert (= b_and!59617 (and (=> t!48472 result!46891) b_and!59627)))

(assert (=> bs!41228 t!48476))

(declare-fun b_and!59629 () Bool)

(assert (= b_and!59615 (and (=> t!48476 result!46895) b_and!59629)))

(assert (=> bs!41228 t!48478))

(declare-fun b_and!59631 () Bool)

(assert (= b_and!59613 (and (=> t!48478 result!46897) b_and!59631)))

(declare-fun b_lambda!17301 () Bool)

(assert (=> (not b_lambda!17301) (not b!87740)))

(assert (=> b!87740 t!48480))

(declare-fun b_and!59633 () Bool)

(assert (= b_and!59631 (and (=> t!48480 result!46899) b_and!59633)))

(assert (=> b!87740 t!48484))

(declare-fun b_and!59635 () Bool)

(assert (= b_and!59625 (and (=> t!48484 result!46903) b_and!59635)))

(assert (=> b!87740 t!48488))

(declare-fun b_and!59637 () Bool)

(assert (= b_and!59627 (and (=> t!48488 result!46907) b_and!59637)))

(assert (=> b!87740 t!48486))

(declare-fun b_and!59639 () Bool)

(assert (= b_and!59623 (and (=> t!48486 result!46905) b_and!59639)))

(assert (=> b!87740 t!48482))

(declare-fun b_and!59641 () Bool)

(assert (= b_and!59629 (and (=> t!48482 result!46901) b_and!59641)))

(assert (=> bs!41228 m!84028))

(assert (=> b!87740 m!84032))

(assert (=> (and d!58431 (= lambda!10846 sa3!3) b!87726) d!58463))

(declare-fun b_lambda!17253 () Bool)

(assert (= b_lambda!17219 (or (and d!58429 (= lambda!10845 sa1!3)) (and d!58427 (= lambda!10844 sa1!3)) (and start!11450 b_free!7457 (= u1!7 sa1!3)) (and start!11450 b_free!7455 (= u2!7 sa1!3)) (and start!11450 b_free!7451 (= sa3!3 sa1!3)) (and start!11450 b_free!7453 (= sa2!3 sa1!3)) (and start!11450 b_free!7449) b_lambda!17253)))

(assert (=> (and d!58429 (= lambda!10845 sa1!3) bs!41216) d!58457))

(assert (=> (and d!58427 (= lambda!10844 sa1!3) bs!41216) d!58459))

(declare-fun b_lambda!17255 () Bool)

(assert (= b_lambda!17229 (or (and start!11450 b_free!7449 (= sa1!3 sa3!3)) (and start!11450 b_free!7453 (= sa2!3 sa3!3)) (and start!11450 b_free!7451) (and d!58425 (= lambda!10843 sa3!3)) (and start!11450 b_free!7455 (= u2!7 sa3!3)) (and start!11450 b_free!7457 (= u1!7 sa3!3)) (and d!58431 (= lambda!10846 sa3!3)) b_lambda!17255)))

(assert (=> (and d!58425 (= lambda!10843 sa3!3) b!87730) d!58461))

(assert (=> (and d!58431 (= lambda!10846 sa3!3) b!87730) d!58463))

(declare-fun b_lambda!17257 () Bool)

(assert (= b_lambda!17207 (or (and d!58429 (= lambda!10845 sa1!3)) (and d!58427 (= lambda!10844 sa1!3)) (and start!11450 b_free!7457 (= u1!7 sa1!3)) (and start!11450 b_free!7455 (= u2!7 sa1!3)) (and start!11450 b_free!7451 (= sa3!3 sa1!3)) (and start!11450 b_free!7453 (= sa2!3 sa1!3)) (and start!11450 b_free!7449) b_lambda!17257)))

(assert (=> (and d!58429 (= lambda!10845 sa1!3) bs!41213) d!58457))

(assert (=> (and d!58427 (= lambda!10844 sa1!3) bs!41213) d!58459))

(declare-fun b_lambda!17259 () Bool)

(assert (= b_lambda!17227 (or (and d!58429 (= lambda!10845 sa2!3)) (and start!11450 b_free!7449 (= sa1!3 sa2!3)) (and start!11450 b_free!7451 (= sa3!3 sa2!3)) (and start!11450 b_free!7457 (= u1!7 sa2!3)) (and start!11450 b_free!7455 (= u2!7 sa2!3)) (and start!11450 b_free!7453) (and d!58425 (= lambda!10843 sa2!3)) b_lambda!17259)))

(assert (=> (and d!58429 (= lambda!10845 sa2!3) bs!41218) d!58449))

(assert (=> (and d!58425 (= lambda!10843 sa2!3) bs!41218) d!58451))

(declare-fun b_lambda!17261 () Bool)

(assert (= b_lambda!17217 (or (and start!11450 b_free!7449 (= sa1!3 sa3!3)) (and start!11450 b_free!7453 (= sa2!3 sa3!3)) (and start!11450 b_free!7451) (and d!58425 (= lambda!10843 sa3!3)) (and start!11450 b_free!7455 (= u2!7 sa3!3)) (and start!11450 b_free!7457 (= u1!7 sa3!3)) (and d!58431 (= lambda!10846 sa3!3)) b_lambda!17261)))

(assert (=> (and d!58425 (= lambda!10843 sa3!3) b!87727) d!58461))

(assert (=> (and d!58431 (= lambda!10846 sa3!3) b!87727) d!58463))

(declare-fun b_lambda!17263 () Bool)

(assert (= b_lambda!17235 (or (and d!58429 (= lambda!10845 sa1!3)) (and d!58427 (= lambda!10844 sa1!3)) (and start!11450 b_free!7457 (= u1!7 sa1!3)) (and start!11450 b_free!7455 (= u2!7 sa1!3)) (and start!11450 b_free!7451 (= sa3!3 sa1!3)) (and start!11450 b_free!7453 (= sa2!3 sa1!3)) (and start!11450 b_free!7449) b_lambda!17263)))

(assert (=> (and d!58429 (= lambda!10845 sa1!3) bs!41220) d!58457))

(assert (=> (and d!58427 (= lambda!10844 sa1!3) bs!41220) d!58459))

(declare-fun b_lambda!17265 () Bool)

(assert (= b_lambda!17209 (or d!58427 b_lambda!17265)))

(assert (=> b!87725 d!58453))

(declare-fun b_lambda!17267 () Bool)

(assert (= b_lambda!17215 (or d!58431 b_lambda!17267)))

(assert (=> bs!41215 d!58455))

(declare-fun b_lambda!17269 () Bool)

(assert (= b_lambda!17233 (or (and start!11450 b_free!7449 (= sa1!3 sa3!3)) (and start!11450 b_free!7453 (= sa2!3 sa3!3)) (and start!11450 b_free!7451) (and d!58425 (= lambda!10843 sa3!3)) (and start!11450 b_free!7455 (= u2!7 sa3!3)) (and start!11450 b_free!7457 (= u1!7 sa3!3)) (and d!58431 (= lambda!10846 sa3!3)) b_lambda!17269)))

(assert (=> (and d!58425 (= lambda!10843 sa3!3) b!87731) d!58461))

(assert (=> (and d!58431 (= lambda!10846 sa3!3) b!87731) d!58463))

(push 1)

(assert (not b_lambda!17281))

(assert (not b_lambda!17285))

(assert (not b_lambda!17279))

(assert (not b_lambda!17287))

(assert (not b_lambda!17297))

(assert (not b_lambda!17291))

(assert (not b_lambda!17289))

(assert (not b_lambda!17255))

(assert (not b_lambda!17267))

(assert (not b_next!39729))

(assert (not b_lambda!17239))

(assert (not b_lambda!17205))

(assert (not b_lambda!17283))

(assert (not b_lambda!17251))

(assert (not b_lambda!17245))

(assert (not b_lambda!17293))

(assert (not b_next!39731))

(assert b_and!59633)

(assert (not b_lambda!17243))

(assert (not b_next!39727))

(assert b_and!59641)

(assert (not b_next!39721))

(assert (not b_lambda!17253))

(assert (not b_lambda!17299))

(assert (not b_next!39733))

(assert (not b_lambda!17261))

(assert (not b_lambda!17249))

(assert (not b_lambda!17273))

(assert (not b_lambda!17203))

(assert (not b_lambda!17265))

(assert (not b_lambda!17241))

(assert (not b_lambda!17277))

(assert (not b_lambda!17301))

(assert (not b_lambda!17271))

(assert (not b_lambda!17263))

(assert (not b_lambda!17257))

(assert (not b_lambda!17295))

(assert b_and!59639)

(assert b_and!59635)

(assert b_and!59637)

(assert (not b_lambda!17247))

(assert (not b_lambda!17259))

(assert (not b_lambda!17275))

(assert (not b_lambda!17269))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39729))

(assert (not b_next!39731))

(assert b_and!59633)

(assert (not b_next!39727))

(assert b_and!59641)

(assert (not b_next!39721))

(assert (not b_next!39733))

(assert b_and!59639)

(assert b_and!59635)

(assert b_and!59637)

(check-sat)

(pop 1)

