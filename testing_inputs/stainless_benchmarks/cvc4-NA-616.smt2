; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4468 () Bool)

(assert start!4468)

(declare-fun b_free!2167 () Bool)

(declare-fun b_next!5277 () Bool)

(assert (=> start!4468 (= b_free!2167 (not b_next!5277))))

(declare-fun tp!7271 () Bool)

(declare-fun b_and!7893 () Bool)

(assert (=> start!4468 (= tp!7271 b_and!7893)))

(declare-fun res!16104 () Bool)

(declare-fun e!17624 () Bool)

(assert (=> start!4468 (=> (not res!16104) (not e!17624))))

(declare-datatypes () ((List!387 (Cons!379 (h!326 Int) (t!4973 List!387)) (Nil!380))))

(declare-fun l!956 () List!387)

(declare-fun n!435 () Int)

(declare-fun size!362 (List!387) Int)

(assert (=> start!4468 (= res!16104 (<= (size!362 l!956) n!435))))

(assert (=> start!4468 e!17624))

(assert (=> start!4468 true))

(assert (=> start!4468 tp!7271))

(declare-fun b!34891 () Bool)

(declare-fun e!17623 () Bool)

(assert (=> b!34891 (= e!17624 e!17623)))

(declare-fun res!16105 () Bool)

(assert (=> b!34891 (=> res!16105 e!17623)))

(declare-fun e!17622 () Bool)

(assert (=> b!34891 (= res!16105 e!17622)))

(declare-fun res!16106 () Bool)

(assert (=> b!34891 (=> (not res!16106) (not e!17622))))

(assert (=> b!34891 (= res!16106 (not (is-Nil!380 l!956)))))

(declare-fun p!507 () Int)

(declare-fun b!34892 () Bool)

(declare-fun filter_check!0 (Int List!387 Int) Bool)

(assert (=> b!34892 (= e!17622 (not (filter_check!0 p!507 (t!4973 l!956) n!435)))))

(declare-fun b!34893 () Bool)

(declare-fun filter1!0 (Int List!387 Int) List!387)

(declare-fun filter2!0 (Int List!387 Int) List!387)

(assert (=> b!34893 (= e!17623 (not (= (filter1!0 p!507 l!956 n!435) (filter2!0 p!507 l!956 n!435))))))

(assert (= (and start!4468 res!16104) b!34891))

(assert (= (and b!34891 res!16106) b!34892))

(assert (= (and b!34891 (not res!16105)) b!34893))

(declare-fun m!37431 () Bool)

(assert (=> start!4468 m!37431))

(declare-fun m!37433 () Bool)

(assert (=> b!34892 m!37433))

(declare-fun m!37435 () Bool)

(assert (=> b!34893 m!37435))

(declare-fun m!37437 () Bool)

(assert (=> b!34893 m!37437))

(push 1)

(assert (not start!4468))

(assert b_and!7893)

(assert (not b_next!5277))

(assert (not b!34892))

(assert (not b!34893))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7893)

(assert (not b_next!5277))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18292 () Bool)

(declare-fun c!7412 () Bool)

(declare-fun isEmpty!382 (List!387) Bool)

(assert (=> d!18292 (= c!7412 (isEmpty!382 l!956))))

(declare-fun e!17629 () List!387)

(assert (=> d!18292 (= (filter1!0 p!507 l!956 n!435) e!17629)))

(declare-fun b!34903 () Bool)

(declare-fun e!17630 () List!387)

(assert (=> b!34903 (= e!17629 e!17630)))

(declare-fun c!7413 () Bool)

(declare-fun dynLambda!636 (Int Int) Bool)

(declare-fun head!541 (List!387) Int)

(assert (=> b!34903 (= c!7413 (dynLambda!636 p!507 (head!541 l!956)))))

(declare-fun b!34905 () Bool)

(declare-fun tail!568 (List!387) List!387)

(assert (=> b!34905 (= e!17630 (filter1!0 p!507 (tail!568 l!956) n!435))))

(declare-fun b!34902 () Bool)

(assert (=> b!34902 (= e!17629 Nil!380)))

(declare-fun b!34904 () Bool)

(declare-fun $colon$colon!8 (List!387 Int) List!387)

(assert (=> b!34904 (= e!17630 ($colon$colon!8 (filter1!0 p!507 (tail!568 l!956) n!435) (head!541 l!956)))))

(assert (= (and b!34903 c!7413) b!34904))

(assert (= (and b!34903 (not c!7413)) b!34905))

(assert (= (and d!18292 c!7412) b!34902))

(assert (= (and d!18292 (not c!7412)) b!34903))

(declare-fun b_lambda!9511 () Bool)

(assert (=> (not b_lambda!9511) (not b!34903)))

(declare-fun t!4975 () Bool)

(declare-fun tb!4275 () Bool)

(assert (=> (and start!4468 (= p!507 p!507) t!4975) tb!4275))

(declare-fun result!4531 () Bool)

(assert (=> tb!4275 (= result!4531 true)))

(assert (=> b!34903 t!4975))

(declare-fun b_and!7895 () Bool)

(assert (= b_and!7893 (and (=> t!4975 result!4531) b_and!7895)))

(declare-fun m!37439 () Bool)

(assert (=> d!18292 m!37439))

(declare-fun m!37441 () Bool)

(assert (=> b!34903 m!37441))

(assert (=> b!34903 m!37441))

(declare-fun m!37443 () Bool)

(assert (=> b!34903 m!37443))

(declare-fun m!37445 () Bool)

(assert (=> b!34905 m!37445))

(assert (=> b!34905 m!37445))

(declare-fun m!37447 () Bool)

(assert (=> b!34905 m!37447))

(assert (=> b!34904 m!37445))

(assert (=> b!34904 m!37445))

(assert (=> b!34904 m!37447))

(assert (=> b!34904 m!37441))

(assert (=> b!34904 m!37447))

(assert (=> b!34904 m!37441))

(declare-fun m!37449 () Bool)

(assert (=> b!34904 m!37449))

(assert (=> b!34893 d!18292))

(declare-fun d!18294 () Bool)

(declare-fun filter!10 (List!387 Int) List!387)

(assert (=> d!18294 (= (filter2!0 p!507 l!956 n!435) (filter!10 l!956 p!507))))

(declare-fun bs!11227 () Bool)

(assert (= bs!11227 d!18294))

(declare-fun m!37451 () Bool)

(assert (=> bs!11227 m!37451))

(assert (=> b!34893 d!18294))

(declare-fun d!18296 () Bool)

(declare-fun lt!6509 () Int)

(assert (=> d!18296 (>= lt!6509 0)))

(declare-fun e!17633 () Int)

(assert (=> d!18296 (= lt!6509 e!17633)))

(declare-fun c!7416 () Bool)

(assert (=> d!18296 (= c!7416 (is-Nil!380 l!956))))

(assert (=> d!18296 (= (size!362 l!956) lt!6509)))

(declare-fun b!34910 () Bool)

(assert (=> b!34910 (= e!17633 0)))

(declare-fun b!34911 () Bool)

(assert (=> b!34911 (= e!17633 (+ 1 (size!362 (t!4973 l!956))))))

(assert (= (and d!18296 c!7416) b!34910))

(assert (= (and d!18296 (not c!7416)) b!34911))

(declare-fun m!37453 () Bool)

(assert (=> b!34911 m!37453))

(assert (=> start!4468 d!18296))

(declare-fun d!18298 () Bool)

(declare-fun e!17638 () Bool)

(assert (=> d!18298 e!17638))

(declare-fun res!16111 () Bool)

(assert (=> d!18298 (=> (not res!16111) (not e!17638))))

(declare-fun e!17639 () Bool)

(assert (=> d!18298 (= res!16111 e!17639)))

(declare-fun res!16112 () Bool)

(assert (=> d!18298 (=> res!16112 e!17639)))

(assert (=> d!18298 (= res!16112 (is-Nil!380 (t!4973 l!956)))))

(assert (=> d!18298 (<= (size!362 (t!4973 l!956)) n!435)))

(assert (=> d!18298 (= (filter_check!0 p!507 (t!4973 l!956) n!435) true)))

(declare-fun b!34916 () Bool)

(assert (=> b!34916 (= e!17639 (filter_check!0 p!507 (t!4973 (t!4973 l!956)) n!435))))

(declare-fun b!34917 () Bool)

(assert (=> b!34917 (= e!17638 (= (filter1!0 p!507 (t!4973 l!956) n!435) (filter2!0 p!507 (t!4973 l!956) n!435)))))

(assert (= (and d!18298 (not res!16112)) b!34916))

(assert (= (and d!18298 res!16111) b!34917))

(assert (=> d!18298 m!37453))

(declare-fun m!37455 () Bool)

(assert (=> b!34916 m!37455))

(declare-fun m!37457 () Bool)

(assert (=> b!34917 m!37457))

(declare-fun m!37459 () Bool)

(assert (=> b!34917 m!37459))

(assert (=> b!34892 d!18298))

(declare-fun b_lambda!9513 () Bool)

(assert (= b_lambda!9511 (or (and start!4468 b_free!2167) b_lambda!9513)))

(push 1)

(assert (not b!34903))

(assert (not b!34904))

(assert (not d!18294))

(assert (not b_lambda!9513))

(assert (not b!34916))

(assert (not d!18298))

(assert (not b_next!5277))

(assert b_and!7895)

(assert (not d!18292))

(assert (not b!34905))

(assert (not b!34917))

(assert (not b!34911))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7895)

(assert (not b_next!5277))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18300 () Bool)

(assert (=> d!18300 (= ($colon$colon!8 (filter1!0 p!507 (tail!568 l!956) n!435) (head!541 l!956)) (Cons!379 (head!541 l!956) (filter1!0 p!507 (tail!568 l!956) n!435)))))

(assert (=> b!34904 d!18300))

(declare-fun d!18302 () Bool)

(declare-fun c!7417 () Bool)

(assert (=> d!18302 (= c!7417 (isEmpty!382 (tail!568 l!956)))))

(declare-fun e!17640 () List!387)

(assert (=> d!18302 (= (filter1!0 p!507 (tail!568 l!956) n!435) e!17640)))

(declare-fun b!34919 () Bool)

(declare-fun e!17641 () List!387)

(assert (=> b!34919 (= e!17640 e!17641)))

(declare-fun c!7418 () Bool)

(assert (=> b!34919 (= c!7418 (dynLambda!636 p!507 (head!541 (tail!568 l!956))))))

(declare-fun b!34921 () Bool)

(assert (=> b!34921 (= e!17641 (filter1!0 p!507 (tail!568 (tail!568 l!956)) n!435))))

(declare-fun b!34918 () Bool)

(assert (=> b!34918 (= e!17640 Nil!380)))

(declare-fun b!34920 () Bool)

(assert (=> b!34920 (= e!17641 ($colon$colon!8 (filter1!0 p!507 (tail!568 (tail!568 l!956)) n!435) (head!541 (tail!568 l!956))))))

(assert (= (and b!34919 c!7418) b!34920))

(assert (= (and b!34919 (not c!7418)) b!34921))

(assert (= (and d!18302 c!7417) b!34918))

(assert (= (and d!18302 (not c!7417)) b!34919))

(declare-fun b_lambda!9515 () Bool)

(assert (=> (not b_lambda!9515) (not b!34919)))

(declare-fun t!4978 () Bool)

(declare-fun tb!4277 () Bool)

(assert (=> (and start!4468 (= p!507 p!507) t!4978) tb!4277))

(declare-fun result!4533 () Bool)

(assert (=> tb!4277 (= result!4533 true)))

(assert (=> b!34919 t!4978))

(declare-fun b_and!7897 () Bool)

(assert (= b_and!7895 (and (=> t!4978 result!4533) b_and!7897)))

(assert (=> d!18302 m!37445))

(declare-fun m!37461 () Bool)

(assert (=> d!18302 m!37461))

(assert (=> b!34919 m!37445))

(declare-fun m!37463 () Bool)

(assert (=> b!34919 m!37463))

(assert (=> b!34919 m!37463))

(declare-fun m!37465 () Bool)

(assert (=> b!34919 m!37465))

(assert (=> b!34921 m!37445))

(declare-fun m!37467 () Bool)

(assert (=> b!34921 m!37467))

(assert (=> b!34921 m!37467))

(declare-fun m!37469 () Bool)

(assert (=> b!34921 m!37469))

(assert (=> b!34920 m!37445))

(assert (=> b!34920 m!37467))

(assert (=> b!34920 m!37467))

(assert (=> b!34920 m!37469))

(assert (=> b!34920 m!37445))

(assert (=> b!34920 m!37463))

(assert (=> b!34920 m!37469))

(assert (=> b!34920 m!37463))

(declare-fun m!37471 () Bool)

(assert (=> b!34920 m!37471))

(assert (=> b!34904 d!18302))

(declare-fun d!18304 () Bool)

(assert (=> d!18304 (= (tail!568 l!956) (t!4973 l!956))))

(assert (=> b!34904 d!18304))

(declare-fun d!18306 () Bool)

(assert (=> d!18306 (= (head!541 l!956) (h!326 l!956))))

(assert (=> b!34904 d!18306))

(assert (=> b!34903 d!18306))

(declare-fun d!18308 () Bool)

(declare-fun lt!6510 () Int)

(assert (=> d!18308 (>= lt!6510 0)))

(declare-fun e!17642 () Int)

(assert (=> d!18308 (= lt!6510 e!17642)))

(declare-fun c!7419 () Bool)

(assert (=> d!18308 (= c!7419 (is-Nil!380 (t!4973 l!956)))))

(assert (=> d!18308 (= (size!362 (t!4973 l!956)) lt!6510)))

(declare-fun b!34922 () Bool)

(assert (=> b!34922 (= e!17642 0)))

(declare-fun b!34923 () Bool)

(assert (=> b!34923 (= e!17642 (+ 1 (size!362 (t!4973 (t!4973 l!956)))))))

(assert (= (and d!18308 c!7419) b!34922))

(assert (= (and d!18308 (not c!7419)) b!34923))

(declare-fun m!37473 () Bool)

(assert (=> b!34923 m!37473))

(assert (=> b!34911 d!18308))

(declare-fun d!18310 () Bool)

(assert (=> d!18310 (= (isEmpty!382 l!956) (is-Nil!380 l!956))))

(assert (=> d!18292 d!18310))

(assert (=> b!34905 d!18302))

(assert (=> b!34905 d!18304))

(declare-fun d!18312 () Bool)

(declare-fun c!7420 () Bool)

(assert (=> d!18312 (= c!7420 (isEmpty!382 (t!4973 l!956)))))

(declare-fun e!17643 () List!387)

(assert (=> d!18312 (= (filter1!0 p!507 (t!4973 l!956) n!435) e!17643)))

(declare-fun b!34925 () Bool)

(declare-fun e!17644 () List!387)

(assert (=> b!34925 (= e!17643 e!17644)))

(declare-fun c!7421 () Bool)

(assert (=> b!34925 (= c!7421 (dynLambda!636 p!507 (head!541 (t!4973 l!956))))))

(declare-fun b!34927 () Bool)

(assert (=> b!34927 (= e!17644 (filter1!0 p!507 (tail!568 (t!4973 l!956)) n!435))))

(declare-fun b!34924 () Bool)

(assert (=> b!34924 (= e!17643 Nil!380)))

(declare-fun b!34926 () Bool)

(assert (=> b!34926 (= e!17644 ($colon$colon!8 (filter1!0 p!507 (tail!568 (t!4973 l!956)) n!435) (head!541 (t!4973 l!956))))))

(assert (= (and b!34925 c!7421) b!34926))

(assert (= (and b!34925 (not c!7421)) b!34927))

(assert (= (and d!18312 c!7420) b!34924))

(assert (= (and d!18312 (not c!7420)) b!34925))

(declare-fun b_lambda!9517 () Bool)

(assert (=> (not b_lambda!9517) (not b!34925)))

(declare-fun t!4981 () Bool)

(declare-fun tb!4279 () Bool)

(assert (=> (and start!4468 (= p!507 p!507) t!4981) tb!4279))

(declare-fun result!4535 () Bool)

(assert (=> tb!4279 (= result!4535 true)))

(assert (=> b!34925 t!4981))

(declare-fun b_and!7899 () Bool)

(assert (= b_and!7897 (and (=> t!4981 result!4535) b_and!7899)))

(declare-fun m!37475 () Bool)

(assert (=> d!18312 m!37475))

(declare-fun m!37477 () Bool)

(assert (=> b!34925 m!37477))

(assert (=> b!34925 m!37477))

(declare-fun m!37479 () Bool)

(assert (=> b!34925 m!37479))

(declare-fun m!37481 () Bool)

(assert (=> b!34927 m!37481))

(assert (=> b!34927 m!37481))

(declare-fun m!37483 () Bool)

(assert (=> b!34927 m!37483))

(assert (=> b!34926 m!37481))

(assert (=> b!34926 m!37481))

(assert (=> b!34926 m!37483))

(assert (=> b!34926 m!37477))

(assert (=> b!34926 m!37483))

(assert (=> b!34926 m!37477))

(declare-fun m!37485 () Bool)

(assert (=> b!34926 m!37485))

(assert (=> b!34917 d!18312))

(declare-fun d!18314 () Bool)

(assert (=> d!18314 (= (filter2!0 p!507 (t!4973 l!956) n!435) (filter!10 (t!4973 l!956) p!507))))

(declare-fun bs!11228 () Bool)

(assert (= bs!11228 d!18314))

(declare-fun m!37487 () Bool)

(assert (=> bs!11228 m!37487))

(assert (=> b!34917 d!18314))

(declare-fun d!18316 () Bool)

(declare-fun e!17645 () Bool)

(assert (=> d!18316 e!17645))

(declare-fun res!16113 () Bool)

(assert (=> d!18316 (=> (not res!16113) (not e!17645))))

(declare-fun e!17646 () Bool)

(assert (=> d!18316 (= res!16113 e!17646)))

(declare-fun res!16114 () Bool)

(assert (=> d!18316 (=> res!16114 e!17646)))

(assert (=> d!18316 (= res!16114 (is-Nil!380 (t!4973 (t!4973 l!956))))))

(assert (=> d!18316 (<= (size!362 (t!4973 (t!4973 l!956))) n!435)))

(assert (=> d!18316 (= (filter_check!0 p!507 (t!4973 (t!4973 l!956)) n!435) true)))

(declare-fun b!34928 () Bool)

(assert (=> b!34928 (= e!17646 (filter_check!0 p!507 (t!4973 (t!4973 (t!4973 l!956))) n!435))))

(declare-fun b!34929 () Bool)

(assert (=> b!34929 (= e!17645 (= (filter1!0 p!507 (t!4973 (t!4973 l!956)) n!435) (filter2!0 p!507 (t!4973 (t!4973 l!956)) n!435)))))

(assert (= (and d!18316 (not res!16114)) b!34928))

(assert (= (and d!18316 res!16113) b!34929))

(assert (=> d!18316 m!37473))

(declare-fun m!37489 () Bool)

(assert (=> b!34928 m!37489))

(declare-fun m!37491 () Bool)

(assert (=> b!34929 m!37491))

(declare-fun m!37493 () Bool)

(assert (=> b!34929 m!37493))

(assert (=> b!34916 d!18316))

(declare-fun d!18318 () Bool)

(declare-fun e!17656 () Bool)

(assert (=> d!18318 e!17656))

(declare-fun res!16125 () Bool)

(assert (=> d!18318 (=> (not res!16125) (not e!17656))))

(declare-fun lt!6516 () List!387)

(assert (=> d!18318 (= res!16125 (<= (size!362 lt!6516) (size!362 l!956)))))

(declare-fun e!17658 () List!387)

(assert (=> d!18318 (= lt!6516 e!17658)))

(declare-fun c!7427 () Bool)

(assert (=> d!18318 (= c!7427 (is-Nil!380 l!956))))

(assert (=> d!18318 (= (filter!10 l!956 p!507) lt!6516)))

(declare-fun b!34944 () Bool)

(declare-fun e!17655 () Bool)

(assert (=> b!34944 (= e!17655 (dynLambda!636 p!507 (h!326 l!956)))))

(declare-fun b!34945 () Bool)

(declare-fun res!16127 () Bool)

(assert (=> b!34945 (=> (not res!16127) (not e!17656))))

(declare-fun content!86 (List!387) (Set Int))

(assert (=> b!34945 (= res!16127 (subset (content!86 lt!6516) (content!86 l!956)))))

(declare-fun b!34946 () Bool)

(assert (=> b!34946 (= e!17658 Nil!380)))

(declare-fun b!34947 () Bool)

(declare-fun e!17657 () List!387)

(declare-fun lt!6515 () List!387)

(assert (=> b!34947 (= e!17657 (Cons!379 (h!326 l!956) lt!6515))))

(declare-fun b!34948 () Bool)

(assert (=> b!34948 (= e!17657 lt!6515)))

(declare-fun b!34949 () Bool)

(declare-fun forall!12 (List!387 Int) Bool)

(assert (=> b!34949 (= e!17656 (forall!12 lt!6516 p!507))))

(declare-fun b!34950 () Bool)

(assert (=> b!34950 (= e!17658 e!17657)))

(declare-fun c!7426 () Bool)

(assert (=> b!34950 (= c!7426 e!17655)))

(declare-fun res!16126 () Bool)

(assert (=> b!34950 (=> (not res!16126) (not e!17655))))

(assert (=> b!34950 (= res!16126 (is-Cons!379 l!956))))

(assert (=> b!34950 (= lt!6515 (filter!10 (t!4973 l!956) p!507))))

(assert (= (and b!34950 res!16126) b!34944))

(assert (= (and b!34950 c!7426) b!34947))

(assert (= (and b!34950 (not c!7426)) b!34948))

(assert (= (and d!18318 c!7427) b!34946))

(assert (= (and d!18318 (not c!7427)) b!34950))

(assert (= (and d!18318 res!16125) b!34945))

(assert (= (and b!34945 res!16127) b!34949))

(declare-fun b_lambda!9519 () Bool)

(assert (=> (not b_lambda!9519) (not b!34944)))

(declare-fun t!4983 () Bool)

(declare-fun tb!4281 () Bool)

(assert (=> (and start!4468 (= p!507 p!507) t!4983) tb!4281))

(declare-fun result!4537 () Bool)

(assert (=> tb!4281 (= result!4537 true)))

(assert (=> b!34944 t!4983))

(declare-fun b_and!7901 () Bool)

(assert (= b_and!7899 (and (=> t!4983 result!4537) b_and!7901)))

(declare-fun m!37495 () Bool)

(assert (=> b!34949 m!37495))

(declare-fun m!37497 () Bool)

(assert (=> d!18318 m!37497))

(assert (=> d!18318 m!37431))

(declare-fun m!37499 () Bool)

(assert (=> b!34945 m!37499))

(declare-fun m!37501 () Bool)

(assert (=> b!34945 m!37501))

(declare-fun m!37503 () Bool)

(assert (=> b!34944 m!37503))

(assert (=> b!34950 m!37487))

(assert (=> d!18294 d!18318))

(assert (=> d!18298 d!18308))

(declare-fun b_lambda!9521 () Bool)

(assert (= b_lambda!9517 (or (and start!4468 b_free!2167) b_lambda!9521)))

(declare-fun b_lambda!9523 () Bool)

(assert (= b_lambda!9519 (or (and start!4468 b_free!2167) b_lambda!9523)))

(declare-fun b_lambda!9525 () Bool)

(assert (= b_lambda!9515 (or (and start!4468 b_free!2167) b_lambda!9525)))

(push 1)

(assert (not b!34929))

(assert (not d!18318))

(assert (not b!34923))

(assert (not b_lambda!9525))

(assert (not b!34921))

(assert (not d!18312))

(assert (not d!18316))

(assert (not b_lambda!9513))

(assert (not d!18314))

(assert (not b_next!5277))

(assert (not b!34920))

(assert (not b!34927))

(assert (not b_lambda!9523))

(assert (not b!34925))

(assert (not b!34949))

(assert (not b!34928))

(assert (not b_lambda!9521))

(assert (not d!18302))

(assert (not b!34945))

(assert (not b!34926))

(assert b_and!7901)

(assert (not b!34950))

(assert (not b!34919))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7901)

(assert (not b_next!5277))

(check-sat)

(pop 1)

