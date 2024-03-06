; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10086 () Bool)

(assert start!10086)

(declare-fun b_free!7317 () Bool)

(declare-fun b_next!39093 () Bool)

(assert (=> start!10086 (= b_free!7317 (not b_next!39093))))

(declare-fun tp!16876 () Bool)

(declare-fun b_and!58745 () Bool)

(assert (=> start!10086 (= tp!16876 b_and!58745)))

(declare-fun b!72809 () Bool)

(assert (=> b!72809 true))

(declare-fun order!469 () Int)

(declare-fun p!702 () Int)

(declare-fun lambda!9190 () Int)

(declare-fun dynLambda!961 (Int Int) Int)

(assert (=> b!72809 (< (dynLambda!961 order!469 p!702) (dynLambda!961 order!469 lambda!9190))))

(declare-fun b!72805 () Bool)

(declare-fun res!35550 () Bool)

(declare-fun e!39345 () Bool)

(assert (=> b!72805 (=> (not res!35550) (not e!39345))))

(declare-datatypes () ((IList!8 (Cons!587 (head!1008 Int) (tail!1029 IList!8)) (Nil!589))))

(declare-fun l1!412 () IList!8)

(declare-datatypes () ((tuple2!392 (tuple2!393 (_1!231 IList!8) (_2!231 IList!8)))))

(declare-fun res!35488 () tuple2!392)

(declare-fun l!1390 () IList!8)

(declare-fun l2!405 () IList!8)

(assert (=> b!72805 (= res!35550 (= res!35488 (tuple2!393 (Cons!587 (head!1008 l!1390) l1!412) l2!405)))))

(declare-fun b!72806 () Bool)

(declare-fun res!35548 () Bool)

(assert (=> b!72806 (=> (not res!35548) (not e!39345))))

(declare-fun x$1!1010 () tuple2!392)

(declare-fun partition!1 (IList!8 Int) tuple2!392)

(assert (=> b!72806 (= res!35548 (= x$1!1010 (partition!1 (tail!1029 l!1390) p!702)))))

(declare-fun b!72807 () Bool)

(declare-fun res!35552 () Bool)

(assert (=> b!72807 (=> (not res!35552) (not e!39345))))

(assert (=> b!72807 (= res!35552 (and (= l1!412 (_1!231 x$1!1010)) (= l2!405 (_2!231 x$1!1010))))))

(declare-fun b!72808 () Bool)

(declare-fun res!35547 () Bool)

(assert (=> b!72808 (=> (not res!35547) (not e!39345))))

(declare-fun dynLambda!962 (Int Int) Bool)

(assert (=> b!72808 (= res!35547 (dynLambda!962 p!702 (head!1008 l!1390)))))

(declare-fun res!35551 () Bool)

(assert (=> start!10086 (=> (not res!35551) (not e!39345))))

(assert (=> start!10086 (= res!35551 (not (is-Nil!589 l!1390)))))

(assert (=> start!10086 e!39345))

(assert (=> start!10086 tp!16876))

(assert (=> start!10086 true))

(declare-fun e!39346 () Bool)

(declare-fun filter!4 (IList!8 Int) IList!8)

(assert (=> b!72809 (= e!39346 (not (= (_2!231 res!35488) (filter!4 l!1390 lambda!9190))))))

(declare-fun b!72810 () Bool)

(assert (=> b!72810 (= e!39345 e!39346)))

(declare-fun res!35549 () Bool)

(assert (=> b!72810 (=> res!35549 e!39346)))

(assert (=> b!72810 (= res!35549 (not (= (_1!231 res!35488) (filter!4 l!1390 p!702))))))

(assert (= (and start!10086 res!35551) b!72806))

(assert (= (and b!72806 res!35548) b!72807))

(assert (= (and b!72807 res!35552) b!72808))

(assert (= (and b!72808 res!35547) b!72805))

(assert (= (and b!72805 res!35550) b!72810))

(assert (= (and b!72810 (not res!35549)) b!72809))

(declare-fun b_lambda!15775 () Bool)

(assert (=> (not b_lambda!15775) (not b!72808)))

(declare-fun t!47519 () Bool)

(declare-fun tb!46145 () Bool)

(assert (=> (and start!10086 (= p!702 p!702) t!47519) tb!46145))

(declare-fun result!46573 () Bool)

(assert (=> tb!46145 (= result!46573 true)))

(assert (=> b!72808 t!47519))

(declare-fun b_and!58747 () Bool)

(assert (= b_and!58745 (and (=> t!47519 result!46573) b_and!58747)))

(declare-fun m!72628 () Bool)

(assert (=> b!72806 m!72628))

(declare-fun m!72630 () Bool)

(assert (=> b!72808 m!72630))

(declare-fun m!72632 () Bool)

(assert (=> b!72809 m!72632))

(declare-fun m!72634 () Bool)

(assert (=> b!72810 m!72634))

(push 1)

(assert (not b!72806))

(assert b_and!58747)

(assert (not b!72810))

(assert (not b!72809))

(assert (not b_lambda!15775))

(assert (not b_next!39093))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58747)

(assert (not b_next!39093))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15777 () Bool)

(assert (= b_lambda!15775 (or (and start!10086 b_free!7317) b_lambda!15777)))

(push 1)

(assert (not b!72806))

(assert b_and!58747)

(assert (not b!72810))

(assert (not b!72809))

(assert (not b_next!39093))

(assert (not b_lambda!15777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58747)

(assert (not b_next!39093))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72823 () Bool)

(declare-fun e!39353 () IList!8)

(assert (=> b!72823 (= e!39353 Nil!589)))

(declare-fun b!72824 () Bool)

(declare-fun e!39355 () IList!8)

(declare-fun lt!15451 () IList!8)

(assert (=> b!72824 (= e!39355 lt!15451)))

(declare-fun b!72825 () Bool)

(assert (=> b!72825 (= e!39355 (Cons!587 (head!1008 l!1390) lt!15451))))

(declare-fun b!72826 () Bool)

(assert (=> b!72826 (= e!39353 e!39355)))

(declare-fun c!17561 () Bool)

(declare-fun e!39354 () Bool)

(assert (=> b!72826 (= c!17561 e!39354)))

(declare-fun res!35558 () Bool)

(assert (=> b!72826 (=> (not res!35558) (not e!39354))))

(assert (=> b!72826 (= res!35558 (is-Cons!587 l!1390))))

(assert (=> b!72826 (= lt!15451 (filter!4 (tail!1029 l!1390) lambda!9190))))

(declare-fun d!54687 () Bool)

(declare-fun c!17562 () Bool)

(assert (=> d!54687 (= c!17562 (is-Nil!589 l!1390))))

(assert (=> d!54687 (= (filter!4 l!1390 lambda!9190) e!39353)))

(declare-fun b!72827 () Bool)

(assert (=> b!72827 (= e!39354 (dynLambda!962 lambda!9190 (head!1008 l!1390)))))

(assert (= (and b!72826 res!35558) b!72827))

(assert (= (and b!72826 c!17561) b!72825))

(assert (= (and b!72826 (not c!17561)) b!72824))

(assert (= (and d!54687 c!17562) b!72823))

(assert (= (and d!54687 (not c!17562)) b!72826))

(declare-fun b_lambda!15779 () Bool)

(assert (=> (not b_lambda!15779) (not b!72827)))

(declare-fun m!72636 () Bool)

(assert (=> b!72826 m!72636))

(declare-fun m!72638 () Bool)

(assert (=> b!72827 m!72638))

(assert (=> b!72809 d!54687))

(declare-fun bs!37779 () Bool)

(declare-fun b!72839 () Bool)

(assert (= bs!37779 (and b!72839 b!72809)))

(declare-fun lambda!9193 () Int)

(assert (=> bs!37779 (= lambda!9193 lambda!9190)))

(assert (=> b!72839 true))

(assert (=> b!72839 (< (dynLambda!961 order!469 p!702) (dynLambda!961 order!469 lambda!9193))))

(declare-fun b!72838 () Bool)

(declare-fun e!39362 () tuple2!392)

(declare-fun lt!15465 () IList!8)

(declare-fun lt!15466 () IList!8)

(assert (=> b!72838 (= e!39362 (tuple2!393 lt!15466 (Cons!587 (head!1008 (tail!1029 l!1390)) lt!15465)))))

(declare-fun d!54689 () Bool)

(declare-fun e!39363 () Bool)

(assert (=> d!54689 e!39363))

(declare-fun res!35562 () Bool)

(assert (=> d!54689 (=> (not res!35562) (not e!39363))))

(declare-fun lt!15464 () tuple2!392)

(assert (=> d!54689 (= res!35562 (= (_1!231 lt!15464) (filter!4 (tail!1029 l!1390) p!702)))))

(declare-fun e!39364 () tuple2!392)

(assert (=> d!54689 (= lt!15464 e!39364)))

(declare-fun c!17568 () Bool)

(assert (=> d!54689 (= c!17568 (is-Nil!589 (tail!1029 l!1390)))))

(assert (=> d!54689 (= (partition!1 (tail!1029 l!1390) p!702) lt!15464)))

(assert (=> b!72839 (= e!39363 (= (_2!231 lt!15464) (filter!4 (tail!1029 l!1390) lambda!9193)))))

(declare-fun b!72840 () Bool)

(assert (=> b!72840 (= e!39362 (tuple2!393 (Cons!587 (head!1008 (tail!1029 l!1390)) lt!15466) lt!15465))))

(declare-fun b!72841 () Bool)

(assert (=> b!72841 (= e!39364 e!39362)))

(declare-fun c!17567 () Bool)

(assert (=> b!72841 (= c!17567 (dynLambda!962 p!702 (head!1008 (tail!1029 l!1390))))))

(declare-fun lt!15463 () tuple2!392)

(assert (=> b!72841 (= lt!15465 (_2!231 lt!15463))))

(declare-fun lt!15462 () tuple2!392)

(assert (=> b!72841 (= lt!15466 (_1!231 lt!15462))))

(assert (=> b!72841 (= lt!15463 (partition!1 (tail!1029 (tail!1029 l!1390)) p!702))))

(assert (=> b!72841 (= lt!15462 (partition!1 (tail!1029 (tail!1029 l!1390)) p!702))))

(declare-fun b!72842 () Bool)

(assert (=> b!72842 (= e!39364 (tuple2!393 Nil!589 Nil!589))))

(assert (= (and b!72841 c!17567) b!72840))

(assert (= (and b!72841 (not c!17567)) b!72838))

(assert (= (and d!54689 c!17568) b!72842))

(assert (= (and d!54689 (not c!17568)) b!72841))

(assert (= (and d!54689 res!35562) b!72839))

(declare-fun b_lambda!15781 () Bool)

(assert (=> (not b_lambda!15781) (not b!72841)))

(declare-fun t!47521 () Bool)

(declare-fun tb!46147 () Bool)

(assert (=> (and start!10086 (= p!702 p!702) t!47521) tb!46147))

(declare-fun result!46575 () Bool)

(assert (=> tb!46147 (= result!46575 true)))

(assert (=> b!72841 t!47521))

(declare-fun b_and!58749 () Bool)

(assert (= b_and!58747 (and (=> t!47521 result!46575) b_and!58749)))

(declare-fun m!72640 () Bool)

(assert (=> d!54689 m!72640))

(declare-fun m!72642 () Bool)

(assert (=> b!72839 m!72642))

(declare-fun m!72644 () Bool)

(assert (=> b!72841 m!72644))

(declare-fun m!72646 () Bool)

(assert (=> b!72841 m!72646))

(assert (=> b!72806 d!54689))

(declare-fun b!72843 () Bool)

(declare-fun e!39365 () IList!8)

(assert (=> b!72843 (= e!39365 Nil!589)))

(declare-fun b!72844 () Bool)

(declare-fun e!39367 () IList!8)

(declare-fun lt!15467 () IList!8)

(assert (=> b!72844 (= e!39367 lt!15467)))

(declare-fun b!72845 () Bool)

(assert (=> b!72845 (= e!39367 (Cons!587 (head!1008 l!1390) lt!15467))))

(declare-fun b!72846 () Bool)

(assert (=> b!72846 (= e!39365 e!39367)))

(declare-fun c!17569 () Bool)

(declare-fun e!39366 () Bool)

(assert (=> b!72846 (= c!17569 e!39366)))

(declare-fun res!35563 () Bool)

(assert (=> b!72846 (=> (not res!35563) (not e!39366))))

(assert (=> b!72846 (= res!35563 (is-Cons!587 l!1390))))

(assert (=> b!72846 (= lt!15467 (filter!4 (tail!1029 l!1390) p!702))))

(declare-fun d!54691 () Bool)

(declare-fun c!17570 () Bool)

(assert (=> d!54691 (= c!17570 (is-Nil!589 l!1390))))

(assert (=> d!54691 (= (filter!4 l!1390 p!702) e!39365)))

(declare-fun b!72847 () Bool)

(assert (=> b!72847 (= e!39366 (dynLambda!962 p!702 (head!1008 l!1390)))))

(assert (= (and b!72846 res!35563) b!72847))

(assert (= (and b!72846 c!17569) b!72845))

(assert (= (and b!72846 (not c!17569)) b!72844))

(assert (= (and d!54691 c!17570) b!72843))

(assert (= (and d!54691 (not c!17570)) b!72846))

(declare-fun b_lambda!15783 () Bool)

(assert (=> (not b_lambda!15783) (not b!72847)))

(assert (=> b!72847 t!47519))

(declare-fun b_and!58751 () Bool)

(assert (= b_and!58749 (and (=> t!47519 result!46573) b_and!58751)))

(assert (=> b!72846 m!72640))

(assert (=> b!72847 m!72630))

(assert (=> b!72810 d!54691))

(declare-fun b_lambda!15785 () Bool)

(assert (= b_lambda!15783 (or (and start!10086 b_free!7317) b_lambda!15785)))

(declare-fun b_lambda!15787 () Bool)

(assert (= b_lambda!15781 (or (and start!10086 b_free!7317) b_lambda!15787)))

(declare-fun b_lambda!15789 () Bool)

(assert (= b_lambda!15779 (or b!72809 b_lambda!15789)))

(declare-fun bs!37780 () Bool)

(declare-fun d!54693 () Bool)

(assert (= bs!37780 (and d!54693 b!72809)))

(assert (=> bs!37780 (= (dynLambda!962 lambda!9190 (head!1008 l!1390)) (not (dynLambda!962 p!702 (head!1008 l!1390))))))

(declare-fun b_lambda!15791 () Bool)

(assert (=> (not b_lambda!15791) (not bs!37780)))

(assert (=> bs!37780 t!47519))

(declare-fun b_and!58753 () Bool)

(assert (= b_and!58751 (and (=> t!47519 result!46573) b_and!58753)))

(assert (=> bs!37780 m!72630))

(assert (=> b!72827 d!54693))

(push 1)

(assert (not b!72841))

(assert (not b_lambda!15789))

(assert (not d!54689))

(assert (not b!72826))

(assert (not b_lambda!15787))

(assert (not b_next!39093))

(assert (not b!72839))

(assert (not b_lambda!15785))

(assert (not b_lambda!15777))

(assert b_and!58753)

(assert (not b!72846))

(assert (not b_lambda!15791))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58753)

(assert (not b_next!39093))

(check-sat)

(pop 1)

