; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11062 () Bool)

(assert start!11062)

(declare-fun b_free!7385 () Bool)

(declare-fun b_next!39397 () Bool)

(assert (=> start!11062 (= b_free!7385 (not b_next!39397))))

(declare-fun tp!16993 () Bool)

(declare-fun b_and!58967 () Bool)

(assert (=> start!11062 (= tp!16993 b_and!58967)))

(declare-fun b_free!7387 () Bool)

(declare-fun b_next!39399 () Bool)

(assert (=> start!11062 (= b_free!7387 (not b_next!39399))))

(declare-fun tp!16992 () Bool)

(declare-fun b_and!58969 () Bool)

(assert (=> start!11062 (= tp!16992 b_and!58969)))

(declare-fun b!84555 () Bool)

(assert (=> b!84555 true))

(declare-fun p!834 () Int)

(declare-fun lambda!10555 () Int)

(declare-fun b_next!39401 () Bool)

(assert (=> start!11062 (= b_next!39397 (or (and b!84555 (= lambda!10555 p!834)) b_next!39401))))

(declare-fun p!821 () Int)

(declare-fun b_next!39403 () Bool)

(assert (=> start!11062 (= b_next!39399 (or (and b!84555 (= lambda!10555 p!821)) b_next!39403))))

(declare-fun bs!40800 () Bool)

(declare-fun b!84551 () Bool)

(assert (= bs!40800 (and b!84551 b!84555)))

(declare-fun lambda!10556 () Int)

(assert (=> bs!40800 (not (= lambda!10556 lambda!10555))))

(assert (=> b!84551 true))

(declare-fun b_next!39405 () Bool)

(assert (=> start!11062 (= b_next!39401 (or (and b!84551 (= lambda!10556 p!834)) b_next!39405))))

(declare-fun b_next!39407 () Bool)

(assert (=> start!11062 (= b_next!39403 (or (and b!84551 (= lambda!10556 p!821)) b_next!39407))))

(declare-fun bs!40801 () Bool)

(declare-fun b!84542 () Bool)

(assert (= bs!40801 (and b!84542 b!84555)))

(declare-fun lambda!10557 () Int)

(assert (=> bs!40801 (not (= lambda!10557 lambda!10555))))

(declare-fun bs!40802 () Bool)

(assert (= bs!40802 (and b!84542 b!84551)))

(assert (=> bs!40802 (not (= lambda!10557 lambda!10556))))

(assert (=> b!84542 true))

(declare-fun b_next!39409 () Bool)

(assert (=> start!11062 (= b_next!39405 (or (and b!84542 (= lambda!10557 p!834)) b_next!39409))))

(declare-fun b_next!39411 () Bool)

(assert (=> start!11062 (= b_next!39407 (or (and b!84542 (= lambda!10557 p!821)) b_next!39411))))

(declare-fun b!84540 () Bool)

(declare-fun e!45805 () Bool)

(declare-fun e!45801 () Bool)

(assert (=> b!84540 (= e!45805 e!45801)))

(declare-fun res!43707 () Bool)

(assert (=> b!84540 (=> res!43707 e!45801)))

(declare-datatypes () ((List!690 (Cons!647 (h!1020 Int) (t!47999 List!690)) (Nil!649))))

(declare-fun l1!436 () List!690)

(declare-fun forall!38 (List!690 Int) Bool)

(assert (=> b!84540 (= res!43707 (not (forall!38 l1!436 p!834)))))

(declare-fun b!84541 () Bool)

(declare-fun e!45803 () Bool)

(declare-fun ls!77 () List!690)

(declare-fun filter_preserves_forall!0 (List!690 Int Int) Bool)

(assert (=> b!84541 (= e!45803 (filter_preserves_forall!0 (t!47999 ls!77) lambda!10557 p!821))))

(declare-fun res!43721 () Bool)

(assert (=> b!84542 (=> (not res!43721) (not e!45805))))

(declare-fun more!2 () List!690)

(declare-fun filter!37 (List!690 Int) List!690)

(assert (=> b!84542 (= res!43721 (= more!2 (filter!37 (t!47999 ls!77) lambda!10557)))))

(declare-fun b!84543 () Bool)

(declare-fun res!43716 () Bool)

(assert (=> b!84543 (=> (not res!43716) (not e!45805))))

(declare-fun less!2 () List!690)

(declare-fun quickSort!0 (List!690) List!690)

(assert (=> b!84543 (= res!43716 (= l1!436 (quickSort!0 less!2)))))

(declare-fun b!84544 () Bool)

(declare-fun res!43714 () Bool)

(assert (=> b!84544 (=> (not res!43714) (not e!45805))))

(declare-fun res!40805 () Bool)

(declare-fun t!47726 () Bool)

(assert (=> b!84544 (= res!43714 (and (= res!40805 t!47726) res!40805))))

(declare-fun b!84545 () Bool)

(declare-fun res!43708 () Bool)

(assert (=> b!84545 (=> (not res!43708) (not e!45805))))

(declare-fun equal!4 () List!690)

(declare-fun l2!429 () List!690)

(assert (=> b!84545 (= res!43708 (and (= l2!429 equal!4) (= p!834 p!821)))))

(declare-fun b!84546 () Bool)

(declare-fun res!43719 () Bool)

(assert (=> b!84546 (=> (not res!43719) (not e!45805))))

(assert (=> b!84546 (= res!43719 (and (not (is-Nil!649 ls!77)) (not (is-Nil!649 (t!47999 ls!77)))))))

(declare-fun b!84547 () Bool)

(declare-fun e!45802 () Bool)

(assert (=> b!84547 (= e!45802 (filter_preserves_forall!0 (t!47999 ls!77) lambda!10556 p!821))))

(declare-fun b!84548 () Bool)

(declare-fun res!43715 () Bool)

(assert (=> b!84548 (=> (not res!43715) (not e!45805))))

(declare-fun t!47724 () Bool)

(assert (=> b!84548 (= res!43715 (= t!47724 e!45803))))

(declare-fun res!43717 () Bool)

(assert (=> b!84548 (=> (not res!43717) (not e!45803))))

(declare-fun res!40793 () Bool)

(assert (=> b!84548 (= res!43717 res!40793)))

(declare-fun b!84549 () Bool)

(declare-fun res!43712 () Bool)

(assert (=> b!84549 (=> (not res!43712) (not e!45805))))

(declare-fun t!47721 () Bool)

(assert (=> b!84549 (= res!43712 (= res!40793 t!47721))))

(declare-fun b!84550 () Bool)

(declare-fun res!43710 () Bool)

(assert (=> b!84550 (=> (not res!43710) (not e!45805))))

(declare-fun e!45804 () Bool)

(assert (=> b!84550 (= res!43710 (= t!47726 e!45804))))

(declare-fun res!43718 () Bool)

(assert (=> b!84550 (=> (not res!43718) (not e!45804))))

(declare-fun sort_preserves_forall!0 (List!690 Int) Bool)

(assert (=> b!84550 (= res!43718 (sort_preserves_forall!0 less!2 p!821))))

(declare-fun res!43706 () Bool)

(assert (=> b!84551 (=> (not res!43706) (not e!45805))))

(assert (=> b!84551 (= res!43706 (= equal!4 (Cons!647 (h!1020 ls!77) (filter!37 (t!47999 ls!77) lambda!10556))))))

(declare-fun b!84552 () Bool)

(assert (=> b!84552 (= e!45801 (not (forall!38 l2!429 p!834)))))

(declare-fun b!84553 () Bool)

(declare-fun res!43713 () Bool)

(assert (=> b!84553 (=> (not res!43713) (not e!45805))))

(assert (=> b!84553 (= res!43713 (= t!47721 e!45802))))

(declare-fun res!43705 () Bool)

(assert (=> b!84553 (=> (not res!43705) (not e!45802))))

(assert (=> b!84553 (= res!43705 (filter_preserves_forall!0 (t!47999 ls!77) lambda!10555 p!821))))

(declare-fun res!43711 () Bool)

(assert (=> start!11062 (=> (not res!43711) (not e!45805))))

(assert (=> start!11062 (= res!43711 (forall!38 ls!77 p!821))))

(assert (=> start!11062 e!45805))

(assert (=> start!11062 true))

(assert (=> start!11062 tp!16993))

(assert (=> start!11062 tp!16992))

(declare-fun b!84554 () Bool)

(declare-fun res!43709 () Bool)

(assert (=> b!84554 (=> (not res!43709) (not e!45805))))

(declare-fun res!40794 () Bool)

(assert (=> b!84554 (= res!43709 (and (= res!40794 t!47724) res!40794))))

(declare-fun res!43720 () Bool)

(assert (=> b!84555 (=> (not res!43720) (not e!45805))))

(assert (=> b!84555 (= res!43720 (= less!2 (filter!37 (t!47999 ls!77) lambda!10555)))))

(declare-fun b!84556 () Bool)

(assert (=> b!84556 (= e!45804 (sort_preserves_forall!0 more!2 p!821))))

(assert (= (and start!11062 res!43711) b!84546))

(assert (= (and b!84546 res!43719) b!84555))

(assert (= (and b!84555 res!43720) b!84551))

(assert (= (and b!84551 res!43706) b!84542))

(assert (= (and b!84542 res!43721) b!84553))

(assert (= (and b!84553 res!43705) b!84547))

(assert (= (and b!84553 res!43713) b!84549))

(assert (= (and b!84549 res!43712) b!84548))

(assert (= (and b!84548 res!43717) b!84541))

(assert (= (and b!84548 res!43715) b!84554))

(assert (= (and b!84554 res!43709) b!84550))

(assert (= (and b!84550 res!43718) b!84556))

(assert (= (and b!84550 res!43710) b!84544))

(assert (= (and b!84544 res!43714) b!84543))

(assert (= (and b!84543 res!43716) b!84545))

(assert (= (and b!84545 res!43708) b!84540))

(assert (= (and b!84540 (not res!43707)) b!84552))

(declare-fun m!80284 () Bool)

(assert (=> b!84540 m!80284))

(declare-fun m!80286 () Bool)

(assert (=> b!84550 m!80286))

(declare-fun m!80288 () Bool)

(assert (=> start!11062 m!80288))

(declare-fun m!80290 () Bool)

(assert (=> b!84541 m!80290))

(declare-fun m!80292 () Bool)

(assert (=> b!84553 m!80292))

(declare-fun m!80294 () Bool)

(assert (=> b!84551 m!80294))

(declare-fun m!80296 () Bool)

(assert (=> b!84547 m!80296))

(declare-fun m!80298 () Bool)

(assert (=> b!84556 m!80298))

(declare-fun m!80300 () Bool)

(assert (=> b!84552 m!80300))

(declare-fun m!80302 () Bool)

(assert (=> b!84543 m!80302))

(declare-fun m!80304 () Bool)

(assert (=> b!84555 m!80304))

(declare-fun m!80306 () Bool)

(assert (=> b!84542 m!80306))

(push 1)

(assert b_and!58967)

(assert (not b!84543))

(assert (not start!11062))

(assert (not b!84540))

(assert (not b!84556))

(assert (not b!84552))

(assert (not b!84553))

(assert (not b!84547))

(assert (not b!84550))

(assert (not b_next!39409))

(assert b_and!58969)

(assert (not b!84542))

(assert (not b_next!39411))

(assert (not b!84551))

(assert (not b!84541))

(assert (not b!84555))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58967)

(assert b_and!58969)

(assert (not b_next!39411))

(assert (not b_next!39409))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40803 () Bool)

(declare-fun b!84570 () Bool)

(assert (= bs!40803 (and b!84570 b!84555)))

(declare-fun lambda!10564 () Int)

(assert (=> bs!40803 (= (= (h!1020 less!2) (h!1020 ls!77)) (= lambda!10564 lambda!10555))))

(declare-fun bs!40804 () Bool)

(assert (= bs!40804 (and b!84570 b!84551)))

(assert (=> bs!40804 (not (= lambda!10564 lambda!10556))))

(declare-fun bs!40805 () Bool)

(assert (= bs!40805 (and b!84570 b!84542)))

(assert (=> bs!40805 (not (= lambda!10564 lambda!10557))))

(assert (=> b!84570 true))

(declare-fun b_next!39413 () Bool)

(assert (=> start!11062 (= b_next!39409 (or (and b!84570 (= lambda!10564 p!834)) b_next!39413))))

(declare-fun b_next!39415 () Bool)

(assert (=> start!11062 (= b_next!39411 (or (and b!84570 (= lambda!10564 p!821)) b_next!39415))))

(declare-fun lambda!10565 () Int)

(assert (=> bs!40803 (not (= lambda!10565 lambda!10555))))

(assert (=> bs!40804 (= (= (h!1020 less!2) (h!1020 ls!77)) (= lambda!10565 lambda!10556))))

(assert (=> bs!40805 (not (= lambda!10565 lambda!10557))))

(assert (=> b!84570 (not (= lambda!10565 lambda!10564))))

(assert (=> b!84570 true))

(declare-fun b_next!39417 () Bool)

(assert (=> start!11062 (= b_next!39413 (or (and b!84570 (= lambda!10565 p!834)) b_next!39417))))

(declare-fun b_next!39419 () Bool)

(assert (=> start!11062 (= b_next!39415 (or (and b!84570 (= lambda!10565 p!821)) b_next!39419))))

(declare-fun lambda!10566 () Int)

(assert (=> bs!40804 (not (= lambda!10566 lambda!10556))))

(assert (=> b!84570 (not (= lambda!10566 lambda!10565))))

(assert (=> b!84570 (not (= lambda!10566 lambda!10564))))

(assert (=> bs!40805 (= (= (h!1020 less!2) (h!1020 ls!77)) (= lambda!10566 lambda!10557))))

(assert (=> bs!40803 (not (= lambda!10566 lambda!10555))))

(assert (=> b!84570 true))

(declare-fun b_next!39421 () Bool)

(assert (=> start!11062 (= b_next!39417 (or (and b!84570 (= lambda!10566 p!834)) b_next!39421))))

(declare-fun b_next!39423 () Bool)

(assert (=> start!11062 (= b_next!39419 (or (and b!84570 (= lambda!10566 p!821)) b_next!39423))))

(declare-fun b!84569 () Bool)

(declare-fun e!45811 () List!690)

(assert (=> b!84569 (= e!45811 less!2)))

(declare-fun b!84567 () Bool)

(declare-fun e!45810 () List!690)

(assert (=> b!84567 (= e!45810 Nil!649)))

(declare-fun b!84568 () Bool)

(assert (=> b!84568 (= e!45810 e!45811)))

(declare-fun c!21082 () Bool)

(assert (=> b!84568 (= c!21082 (and (is-Cons!647 less!2) (is-Nil!649 (t!47999 less!2))))))

(declare-fun d!56877 () Bool)

(declare-fun c!21081 () Bool)

(assert (=> d!56877 (= c!21081 (is-Nil!649 less!2))))

(assert (=> d!56877 (= (quickSort!0 less!2) e!45810)))

(declare-fun ++!89 (List!690 List!690) List!690)

(assert (=> b!84570 (= e!45811 (++!89 (++!89 (quickSort!0 (filter!37 (t!47999 less!2) lambda!10564)) (Cons!647 (h!1020 less!2) (filter!37 (t!47999 less!2) lambda!10565))) (quickSort!0 (filter!37 (t!47999 less!2) lambda!10566))))))

(assert (= (and b!84568 c!21082) b!84569))

(assert (= (and b!84568 (not c!21082)) b!84570))

(assert (= (and d!56877 c!21081) b!84567))

(assert (= (and d!56877 (not c!21081)) b!84568))

(declare-fun m!80308 () Bool)

(assert (=> b!84570 m!80308))

(declare-fun m!80310 () Bool)

(assert (=> b!84570 m!80310))

(assert (=> b!84570 m!80310))

(declare-fun m!80312 () Bool)

(assert (=> b!84570 m!80312))

(declare-fun m!80314 () Bool)

(assert (=> b!84570 m!80314))

(assert (=> b!84570 m!80308))

(declare-fun m!80316 () Bool)

(assert (=> b!84570 m!80316))

(declare-fun m!80318 () Bool)

(assert (=> b!84570 m!80318))

(assert (=> b!84570 m!80316))

(assert (=> b!84570 m!80312))

(assert (=> b!84570 m!80318))

(declare-fun m!80320 () Bool)

(assert (=> b!84570 m!80320))

(assert (=> b!84543 d!56877))

(declare-fun d!56879 () Bool)

(declare-fun e!45814 () Bool)

(assert (=> d!56879 e!45814))

(declare-fun c!21085 () Bool)

(assert (=> d!56879 (= c!21085 (is-Cons!647 (t!47999 ls!77)))))

(assert (=> d!56879 (forall!38 (t!47999 ls!77) p!821)))

(assert (=> d!56879 (= (filter_preserves_forall!0 (t!47999 ls!77) lambda!10557 p!821) true)))

(declare-fun b!84575 () Bool)

(assert (=> b!84575 (= e!45814 (forall!38 (filter!37 (t!47999 ls!77) lambda!10557) p!821))))

(declare-fun lt!19676 () Bool)

(assert (=> b!84575 (= lt!19676 (filter_preserves_forall!0 (t!47999 (t!47999 ls!77)) lambda!10557 p!821))))

(declare-fun b!84576 () Bool)

(assert (=> b!84576 (= e!45814 (forall!38 (filter!37 (t!47999 ls!77) lambda!10557) p!821))))

(assert (= (and d!56879 c!21085) b!84575))

(assert (= (and d!56879 (not c!21085)) b!84576))

(declare-fun m!80322 () Bool)

(assert (=> d!56879 m!80322))

(assert (=> b!84575 m!80306))

(assert (=> b!84575 m!80306))

(declare-fun m!80324 () Bool)

(assert (=> b!84575 m!80324))

(declare-fun m!80326 () Bool)

(assert (=> b!84575 m!80326))

(assert (=> b!84576 m!80306))

(assert (=> b!84576 m!80306))

(assert (=> b!84576 m!80324))

(assert (=> b!84541 d!56879))

(declare-fun bs!40806 () Bool)

(declare-fun b!84590 () Bool)

(assert (= bs!40806 (and b!84590 b!84551)))

(declare-fun lambda!10579 () Int)

(assert (=> bs!40806 (not (= lambda!10579 lambda!10556))))

(declare-fun bs!40807 () Bool)

(assert (= bs!40807 (and b!84590 b!84570)))

(assert (=> bs!40807 (not (= lambda!10579 lambda!10566))))

(assert (=> bs!40807 (not (= lambda!10579 lambda!10565))))

(assert (=> bs!40807 (= (= (h!1020 more!2) (h!1020 less!2)) (= lambda!10579 lambda!10564))))

(declare-fun bs!40808 () Bool)

(assert (= bs!40808 (and b!84590 b!84542)))

(assert (=> bs!40808 (not (= lambda!10579 lambda!10557))))

(declare-fun bs!40809 () Bool)

(assert (= bs!40809 (and b!84590 b!84555)))

(assert (=> bs!40809 (= (= (h!1020 more!2) (h!1020 ls!77)) (= lambda!10579 lambda!10555))))

(assert (=> b!84590 true))

(declare-fun b_next!39425 () Bool)

(assert (=> start!11062 (= b_next!39421 (or (and b!84590 (= lambda!10579 p!834)) b_next!39425))))

(declare-fun b_next!39427 () Bool)

(assert (=> start!11062 (= b_next!39423 (or (and b!84590 (= lambda!10579 p!821)) b_next!39427))))

(declare-fun lambda!10580 () Int)

(assert (=> bs!40806 (= (= (h!1020 more!2) (h!1020 ls!77)) (= lambda!10580 lambda!10556))))

(assert (=> bs!40807 (not (= lambda!10580 lambda!10566))))

(assert (=> bs!40807 (= (= (h!1020 more!2) (h!1020 less!2)) (= lambda!10580 lambda!10565))))

(assert (=> bs!40807 (not (= lambda!10580 lambda!10564))))

(assert (=> bs!40808 (not (= lambda!10580 lambda!10557))))

(assert (=> b!84590 (not (= lambda!10580 lambda!10579))))

(assert (=> bs!40809 (not (= lambda!10580 lambda!10555))))

(assert (=> b!84590 true))

(declare-fun b_next!39429 () Bool)

(assert (=> start!11062 (= b_next!39425 (or (and b!84590 (= lambda!10580 p!834)) b_next!39429))))

(declare-fun b_next!39431 () Bool)

(assert (=> start!11062 (= b_next!39427 (or (and b!84590 (= lambda!10580 p!821)) b_next!39431))))

(declare-fun lambda!10581 () Int)

(assert (=> bs!40806 (not (= lambda!10581 lambda!10556))))

(assert (=> bs!40807 (= (= (h!1020 more!2) (h!1020 less!2)) (= lambda!10581 lambda!10566))))

(assert (=> bs!40807 (not (= lambda!10581 lambda!10565))))

(assert (=> bs!40807 (not (= lambda!10581 lambda!10564))))

(assert (=> bs!40808 (= (= (h!1020 more!2) (h!1020 ls!77)) (= lambda!10581 lambda!10557))))

(assert (=> b!84590 (not (= lambda!10581 lambda!10580))))

(assert (=> b!84590 (not (= lambda!10581 lambda!10579))))

(assert (=> bs!40809 (not (= lambda!10581 lambda!10555))))

(assert (=> b!84590 true))

(declare-fun b_next!39433 () Bool)

(assert (=> start!11062 (= b_next!39429 (or (and b!84590 (= lambda!10581 p!834)) b_next!39433))))

(declare-fun b_next!39435 () Bool)

(assert (=> start!11062 (= b_next!39431 (or (and b!84590 (= lambda!10581 p!821)) b_next!39435))))

(declare-fun b!84587 () Bool)

(declare-fun e!45828 () Bool)

(assert (=> b!84587 (= e!45828 (filter_preserves_forall!0 (t!47999 more!2) lambda!10581 p!821))))

(declare-fun d!56881 () Bool)

(assert (=> d!56881 (forall!38 (quickSort!0 more!2) p!821)))

(declare-fun lt!19690 () Bool)

(declare-fun e!45825 () Bool)

(assert (=> d!56881 (= lt!19690 e!45825)))

(declare-fun res!43741 () Bool)

(assert (=> d!56881 (=> res!43741 e!45825)))

(assert (=> d!56881 (= res!43741 (or (is-Nil!649 more!2) (and (is-Cons!647 more!2) (is-Nil!649 (t!47999 more!2)))))))

(assert (=> d!56881 (forall!38 more!2 p!821)))

(assert (=> d!56881 (= (sort_preserves_forall!0 more!2 p!821) true)))

(declare-fun e!45827 () Bool)

(declare-fun b!84588 () Bool)

(assert (=> b!84588 (= e!45827 (filter_preserves_forall!0 (t!47999 more!2) lambda!10580 p!821))))

(declare-fun b!84589 () Bool)

(declare-fun lt!19693 () List!690)

(declare-fun lt!19692 () List!690)

(declare-fun e!45826 () Bool)

(declare-fun lt!19689 () List!690)

(declare-fun append_preserves_forall!0 (List!690 List!690 Int) Bool)

(assert (=> b!84589 (= e!45826 (append_preserves_forall!0 (++!89 (quickSort!0 lt!19689) lt!19693) (quickSort!0 lt!19692) p!821))))

(assert (=> b!84590 (= e!45825 e!45826)))

(declare-fun res!43739 () Bool)

(assert (=> b!84590 (=> (not res!43739) (not e!45826))))

(assert (=> b!84590 (= res!43739 (append_preserves_forall!0 (quickSort!0 lt!19689) lt!19693 p!821))))

(declare-fun lt!19691 () Bool)

(declare-fun e!45829 () Bool)

(assert (=> b!84590 (= lt!19691 e!45829)))

(declare-fun res!43740 () Bool)

(assert (=> b!84590 (=> (not res!43740) (not e!45829))))

(assert (=> b!84590 (= res!43740 (sort_preserves_forall!0 lt!19689 p!821))))

(declare-fun lt!19694 () Bool)

(assert (=> b!84590 (= lt!19694 e!45828)))

(declare-fun res!43737 () Bool)

(assert (=> b!84590 (=> (not res!43737) (not e!45828))))

(assert (=> b!84590 (= res!43737 e!45827)))

(declare-fun res!43738 () Bool)

(assert (=> b!84590 (=> (not res!43738) (not e!45827))))

(assert (=> b!84590 (= res!43738 (filter_preserves_forall!0 (t!47999 more!2) lambda!10579 p!821))))

(assert (=> b!84590 (= lt!19692 (filter!37 (t!47999 more!2) lambda!10581))))

(assert (=> b!84590 (= lt!19693 (Cons!647 (h!1020 more!2) (filter!37 (t!47999 more!2) lambda!10580)))))

(assert (=> b!84590 (= lt!19689 (filter!37 (t!47999 more!2) lambda!10579))))

(declare-fun b!84591 () Bool)

(assert (=> b!84591 (= e!45829 (sort_preserves_forall!0 lt!19692 p!821))))

(assert (= (and d!56881 (not res!43741)) b!84590))

(assert (= (and b!84590 res!43738) b!84588))

(assert (= (and b!84590 res!43737) b!84587))

(assert (= (and b!84590 res!43740) b!84591))

(assert (= (and b!84590 res!43739) b!84589))

(declare-fun m!80328 () Bool)

(assert (=> b!84587 m!80328))

(declare-fun m!80330 () Bool)

(assert (=> b!84589 m!80330))

(assert (=> b!84589 m!80330))

(declare-fun m!80332 () Bool)

(assert (=> b!84589 m!80332))

(declare-fun m!80334 () Bool)

(assert (=> b!84589 m!80334))

(assert (=> b!84589 m!80332))

(assert (=> b!84589 m!80334))

(declare-fun m!80336 () Bool)

(assert (=> b!84589 m!80336))

(declare-fun m!80338 () Bool)

(assert (=> b!84591 m!80338))

(declare-fun m!80340 () Bool)

(assert (=> b!84588 m!80340))

(declare-fun m!80342 () Bool)

(assert (=> b!84590 m!80342))

(assert (=> b!84590 m!80330))

(declare-fun m!80344 () Bool)

(assert (=> b!84590 m!80344))

(assert (=> b!84590 m!80330))

(declare-fun m!80346 () Bool)

(assert (=> b!84590 m!80346))

(declare-fun m!80348 () Bool)

(assert (=> b!84590 m!80348))

(declare-fun m!80350 () Bool)

(assert (=> b!84590 m!80350))

(declare-fun m!80352 () Bool)

(assert (=> b!84590 m!80352))

(declare-fun m!80354 () Bool)

(assert (=> d!56881 m!80354))

(assert (=> d!56881 m!80354))

(declare-fun m!80356 () Bool)

(assert (=> d!56881 m!80356))

(declare-fun m!80358 () Bool)

(assert (=> d!56881 m!80358))

(assert (=> b!84556 d!56881))

(declare-fun b!84606 () Bool)

(declare-fun e!45838 () Bool)

(declare-fun lt!19700 () List!690)

(assert (=> b!84606 (= e!45838 (forall!38 lt!19700 lambda!10555))))

(declare-fun b!84607 () Bool)

(declare-fun e!45841 () List!690)

(assert (=> b!84607 (= e!45841 Nil!649)))

(declare-fun b!84608 () Bool)

(declare-fun e!45840 () List!690)

(assert (=> b!84608 (= e!45841 e!45840)))

(declare-fun c!21091 () Bool)

(declare-fun e!45839 () Bool)

(assert (=> b!84608 (= c!21091 e!45839)))

(declare-fun res!43752 () Bool)

(assert (=> b!84608 (=> (not res!43752) (not e!45839))))

(assert (=> b!84608 (= res!43752 (is-Cons!647 (t!47999 ls!77)))))

(declare-fun lt!19699 () List!690)

(assert (=> b!84608 (= lt!19699 (filter!37 (t!47999 (t!47999 ls!77)) lambda!10555))))

(declare-fun b!84609 () Bool)

(assert (=> b!84609 (= e!45840 lt!19699)))

(declare-fun b!84610 () Bool)

(assert (=> b!84610 (= e!45840 (Cons!647 (h!1020 (t!47999 ls!77)) lt!19699))))

(declare-fun b!84611 () Bool)

(declare-fun res!43754 () Bool)

(assert (=> b!84611 (=> (not res!43754) (not e!45838))))

(declare-fun content!144 (List!690) (Set Int))

(assert (=> b!84611 (= res!43754 (subset (content!144 lt!19700) (content!144 (t!47999 ls!77))))))

(declare-fun b!84612 () Bool)

(declare-fun dynLambda!1002 (Int Int) Bool)

(assert (=> b!84612 (= e!45839 (dynLambda!1002 lambda!10555 (h!1020 (t!47999 ls!77))))))

(declare-fun d!56883 () Bool)

(assert (=> d!56883 e!45838))

(declare-fun res!43753 () Bool)

(assert (=> d!56883 (=> (not res!43753) (not e!45838))))

(declare-fun size!673 (List!690) Int)

(assert (=> d!56883 (= res!43753 (<= (size!673 lt!19700) (size!673 (t!47999 ls!77))))))

(assert (=> d!56883 (= lt!19700 e!45841)))

(declare-fun c!21090 () Bool)

(assert (=> d!56883 (= c!21090 (is-Nil!649 (t!47999 ls!77)))))

(assert (=> d!56883 (= (filter!37 (t!47999 ls!77) lambda!10555) lt!19700)))

(assert (= (and b!84608 res!43752) b!84612))

(assert (= (and b!84608 c!21091) b!84610))

(assert (= (and b!84608 (not c!21091)) b!84609))

(assert (= (and d!56883 c!21090) b!84607))

(assert (= (and d!56883 (not c!21090)) b!84608))

(assert (= (and d!56883 res!43753) b!84611))

(assert (= (and b!84611 res!43754) b!84606))

(declare-fun b_lambda!16627 () Bool)

(assert (=> (not b_lambda!16627) (not b!84612)))

(declare-fun m!80360 () Bool)

(assert (=> b!84606 m!80360))

(declare-fun m!80362 () Bool)

(assert (=> b!84608 m!80362))

(declare-fun m!80364 () Bool)

(assert (=> b!84612 m!80364))

(declare-fun m!80366 () Bool)

(assert (=> b!84611 m!80366))

(declare-fun m!80368 () Bool)

(assert (=> b!84611 m!80368))

(declare-fun m!80370 () Bool)

(assert (=> d!56883 m!80370))

(declare-fun m!80372 () Bool)

(assert (=> d!56883 m!80372))

(assert (=> b!84555 d!56883))

(declare-fun d!56885 () Bool)

(declare-fun res!43759 () Bool)

(declare-fun e!45846 () Bool)

(assert (=> d!56885 (=> res!43759 e!45846)))

(assert (=> d!56885 (= res!43759 (is-Nil!649 l1!436))))

(assert (=> d!56885 (= (forall!38 l1!436 p!834) e!45846)))

(declare-fun b!84617 () Bool)

(declare-fun e!45847 () Bool)

(assert (=> b!84617 (= e!45846 e!45847)))

(declare-fun res!43760 () Bool)

(assert (=> b!84617 (=> (not res!43760) (not e!45847))))

(assert (=> b!84617 (= res!43760 (dynLambda!1002 p!834 (h!1020 l1!436)))))

(declare-fun b!84618 () Bool)

(assert (=> b!84618 (= e!45847 (forall!38 (t!47999 l1!436) p!834))))

(assert (= (and d!56885 (not res!43759)) b!84617))

(assert (= (and b!84617 res!43760) b!84618))

(declare-fun b_lambda!16629 () Bool)

(assert (=> (not b_lambda!16629) (not b!84617)))

(declare-fun t!48006 () Bool)

(declare-fun tb!46261 () Bool)

(assert (=> (and start!11062 (= p!834 p!834) t!48006) tb!46261))

(declare-fun result!46691 () Bool)

(assert (=> tb!46261 (= result!46691 true)))

(assert (=> b!84617 t!48006))

(declare-fun b_and!58971 () Bool)

(assert (= b_and!58967 (and (=> t!48006 result!46691) b_and!58971)))

(declare-fun tb!46263 () Bool)

(declare-fun t!48008 () Bool)

(assert (=> (and start!11062 (= p!821 p!834) t!48008) tb!46263))

(declare-fun result!46693 () Bool)

(assert (=> tb!46263 (= result!46693 true)))

(assert (=> b!84617 t!48008))

(declare-fun b_and!58973 () Bool)

(assert (= b_and!58969 (and (=> t!48008 result!46693) b_and!58973)))

(declare-fun m!80374 () Bool)

(assert (=> b!84617 m!80374))

(declare-fun m!80376 () Bool)

(assert (=> b!84618 m!80376))

(assert (=> b!84540 d!56885))

(declare-fun d!56887 () Bool)

(declare-fun e!45848 () Bool)

(assert (=> d!56887 e!45848))

(declare-fun c!21092 () Bool)

(assert (=> d!56887 (= c!21092 (is-Cons!647 (t!47999 ls!77)))))

(assert (=> d!56887 (forall!38 (t!47999 ls!77) p!821)))

(assert (=> d!56887 (= (filter_preserves_forall!0 (t!47999 ls!77) lambda!10555 p!821) true)))

(declare-fun b!84619 () Bool)

(assert (=> b!84619 (= e!45848 (forall!38 (filter!37 (t!47999 ls!77) lambda!10555) p!821))))

(declare-fun lt!19701 () Bool)

(assert (=> b!84619 (= lt!19701 (filter_preserves_forall!0 (t!47999 (t!47999 ls!77)) lambda!10555 p!821))))

(declare-fun b!84620 () Bool)

(assert (=> b!84620 (= e!45848 (forall!38 (filter!37 (t!47999 ls!77) lambda!10555) p!821))))

(assert (= (and d!56887 c!21092) b!84619))

(assert (= (and d!56887 (not c!21092)) b!84620))

(assert (=> d!56887 m!80322))

(assert (=> b!84619 m!80304))

(assert (=> b!84619 m!80304))

(declare-fun m!80378 () Bool)

(assert (=> b!84619 m!80378))

(declare-fun m!80380 () Bool)

(assert (=> b!84619 m!80380))

(assert (=> b!84620 m!80304))

(assert (=> b!84620 m!80304))

(assert (=> b!84620 m!80378))

(assert (=> b!84553 d!56887))

(declare-fun d!56889 () Bool)

(declare-fun e!45849 () Bool)

(assert (=> d!56889 e!45849))

(declare-fun c!21093 () Bool)

(assert (=> d!56889 (= c!21093 (is-Cons!647 (t!47999 ls!77)))))

(assert (=> d!56889 (forall!38 (t!47999 ls!77) p!821)))

(assert (=> d!56889 (= (filter_preserves_forall!0 (t!47999 ls!77) lambda!10556 p!821) true)))

(declare-fun b!84621 () Bool)

(assert (=> b!84621 (= e!45849 (forall!38 (filter!37 (t!47999 ls!77) lambda!10556) p!821))))

(declare-fun lt!19702 () Bool)

(assert (=> b!84621 (= lt!19702 (filter_preserves_forall!0 (t!47999 (t!47999 ls!77)) lambda!10556 p!821))))

(declare-fun b!84622 () Bool)

(assert (=> b!84622 (= e!45849 (forall!38 (filter!37 (t!47999 ls!77) lambda!10556) p!821))))

(assert (= (and d!56889 c!21093) b!84621))

(assert (= (and d!56889 (not c!21093)) b!84622))

(assert (=> d!56889 m!80322))

(assert (=> b!84621 m!80294))

(assert (=> b!84621 m!80294))

(declare-fun m!80382 () Bool)

(assert (=> b!84621 m!80382))

(declare-fun m!80384 () Bool)

(assert (=> b!84621 m!80384))

(assert (=> b!84622 m!80294))

(assert (=> b!84622 m!80294))

(assert (=> b!84622 m!80382))

(assert (=> b!84547 d!56889))

(declare-fun d!56891 () Bool)

(declare-fun res!43761 () Bool)

(declare-fun e!45850 () Bool)

(assert (=> d!56891 (=> res!43761 e!45850)))

(assert (=> d!56891 (= res!43761 (is-Nil!649 ls!77))))

(assert (=> d!56891 (= (forall!38 ls!77 p!821) e!45850)))

(declare-fun b!84623 () Bool)

(declare-fun e!45851 () Bool)

(assert (=> b!84623 (= e!45850 e!45851)))

(declare-fun res!43762 () Bool)

(assert (=> b!84623 (=> (not res!43762) (not e!45851))))

(assert (=> b!84623 (= res!43762 (dynLambda!1002 p!821 (h!1020 ls!77)))))

(declare-fun b!84624 () Bool)

(assert (=> b!84624 (= e!45851 (forall!38 (t!47999 ls!77) p!821))))

(assert (= (and d!56891 (not res!43761)) b!84623))

(assert (= (and b!84623 res!43762) b!84624))

(declare-fun b_lambda!16631 () Bool)

(assert (=> (not b_lambda!16631) (not b!84623)))

(declare-fun tb!46265 () Bool)

(declare-fun t!48010 () Bool)

(assert (=> (and start!11062 (= p!834 p!821) t!48010) tb!46265))

(declare-fun result!46695 () Bool)

(assert (=> tb!46265 (= result!46695 true)))

(assert (=> b!84623 t!48010))

(declare-fun b_and!58975 () Bool)

(assert (= b_and!58971 (and (=> t!48010 result!46695) b_and!58975)))

(declare-fun t!48012 () Bool)

(declare-fun tb!46267 () Bool)

(assert (=> (and start!11062 (= p!821 p!821) t!48012) tb!46267))

(declare-fun result!46697 () Bool)

(assert (=> tb!46267 (= result!46697 true)))

(assert (=> b!84623 t!48012))

(declare-fun b_and!58977 () Bool)

(assert (= b_and!58973 (and (=> t!48012 result!46697) b_and!58977)))

(declare-fun m!80386 () Bool)

(assert (=> b!84623 m!80386))

(assert (=> b!84624 m!80322))

(assert (=> start!11062 d!56891))

(declare-fun d!56893 () Bool)

(declare-fun res!43763 () Bool)

(declare-fun e!45852 () Bool)

(assert (=> d!56893 (=> res!43763 e!45852)))

(assert (=> d!56893 (= res!43763 (is-Nil!649 l2!429))))

(assert (=> d!56893 (= (forall!38 l2!429 p!834) e!45852)))

(declare-fun b!84625 () Bool)

(declare-fun e!45853 () Bool)

(assert (=> b!84625 (= e!45852 e!45853)))

(declare-fun res!43764 () Bool)

(assert (=> b!84625 (=> (not res!43764) (not e!45853))))

(assert (=> b!84625 (= res!43764 (dynLambda!1002 p!834 (h!1020 l2!429)))))

(declare-fun b!84626 () Bool)

(assert (=> b!84626 (= e!45853 (forall!38 (t!47999 l2!429) p!834))))

(assert (= (and d!56893 (not res!43763)) b!84625))

(assert (= (and b!84625 res!43764) b!84626))

(declare-fun b_lambda!16633 () Bool)

(assert (=> (not b_lambda!16633) (not b!84625)))

(declare-fun t!48014 () Bool)

(declare-fun tb!46269 () Bool)

(assert (=> (and start!11062 (= p!834 p!834) t!48014) tb!46269))

(declare-fun result!46699 () Bool)

(assert (=> tb!46269 (= result!46699 true)))

(assert (=> b!84625 t!48014))

(declare-fun b_and!58979 () Bool)

(assert (= b_and!58975 (and (=> t!48014 result!46699) b_and!58979)))

(declare-fun tb!46271 () Bool)

(declare-fun t!48016 () Bool)

(assert (=> (and start!11062 (= p!821 p!834) t!48016) tb!46271))

(declare-fun result!46701 () Bool)

(assert (=> tb!46271 (= result!46701 true)))

(assert (=> b!84625 t!48016))

(declare-fun b_and!58981 () Bool)

(assert (= b_and!58977 (and (=> t!48016 result!46701) b_and!58981)))

(declare-fun m!80388 () Bool)

(assert (=> b!84625 m!80388))

(declare-fun m!80390 () Bool)

(assert (=> b!84626 m!80390))

(assert (=> b!84552 d!56893))

(declare-fun b!84627 () Bool)

(declare-fun e!45854 () Bool)

(declare-fun lt!19704 () List!690)

(assert (=> b!84627 (= e!45854 (forall!38 lt!19704 lambda!10556))))

(declare-fun b!84628 () Bool)

(declare-fun e!45857 () List!690)

(assert (=> b!84628 (= e!45857 Nil!649)))

(declare-fun b!84629 () Bool)

(declare-fun e!45856 () List!690)

(assert (=> b!84629 (= e!45857 e!45856)))

(declare-fun c!21095 () Bool)

(declare-fun e!45855 () Bool)

(assert (=> b!84629 (= c!21095 e!45855)))

(declare-fun res!43765 () Bool)

(assert (=> b!84629 (=> (not res!43765) (not e!45855))))

(assert (=> b!84629 (= res!43765 (is-Cons!647 (t!47999 ls!77)))))

(declare-fun lt!19703 () List!690)

(assert (=> b!84629 (= lt!19703 (filter!37 (t!47999 (t!47999 ls!77)) lambda!10556))))

(declare-fun b!84630 () Bool)

(assert (=> b!84630 (= e!45856 lt!19703)))

(declare-fun b!84631 () Bool)

(assert (=> b!84631 (= e!45856 (Cons!647 (h!1020 (t!47999 ls!77)) lt!19703))))

(declare-fun b!84632 () Bool)

(declare-fun res!43767 () Bool)

(assert (=> b!84632 (=> (not res!43767) (not e!45854))))

(assert (=> b!84632 (= res!43767 (subset (content!144 lt!19704) (content!144 (t!47999 ls!77))))))

(declare-fun b!84633 () Bool)

(assert (=> b!84633 (= e!45855 (dynLambda!1002 lambda!10556 (h!1020 (t!47999 ls!77))))))

(declare-fun d!56895 () Bool)

(assert (=> d!56895 e!45854))

(declare-fun res!43766 () Bool)

(assert (=> d!56895 (=> (not res!43766) (not e!45854))))

(assert (=> d!56895 (= res!43766 (<= (size!673 lt!19704) (size!673 (t!47999 ls!77))))))

(assert (=> d!56895 (= lt!19704 e!45857)))

(declare-fun c!21094 () Bool)

(assert (=> d!56895 (= c!21094 (is-Nil!649 (t!47999 ls!77)))))

(assert (=> d!56895 (= (filter!37 (t!47999 ls!77) lambda!10556) lt!19704)))

(assert (= (and b!84629 res!43765) b!84633))

(assert (= (and b!84629 c!21095) b!84631))

(assert (= (and b!84629 (not c!21095)) b!84630))

(assert (= (and d!56895 c!21094) b!84628))

(assert (= (and d!56895 (not c!21094)) b!84629))

(assert (= (and d!56895 res!43766) b!84632))

(assert (= (and b!84632 res!43767) b!84627))

(declare-fun b_lambda!16635 () Bool)

(assert (=> (not b_lambda!16635) (not b!84633)))

(declare-fun m!80392 () Bool)

(assert (=> b!84627 m!80392))

(declare-fun m!80394 () Bool)

(assert (=> b!84629 m!80394))

(declare-fun m!80396 () Bool)

(assert (=> b!84633 m!80396))

(declare-fun m!80398 () Bool)

(assert (=> b!84632 m!80398))

(assert (=> b!84632 m!80368))

(declare-fun m!80400 () Bool)

(assert (=> d!56895 m!80400))

(assert (=> d!56895 m!80372))

(assert (=> b!84551 d!56895))

(declare-fun b!84634 () Bool)

(declare-fun e!45858 () Bool)

(declare-fun lt!19706 () List!690)

(assert (=> b!84634 (= e!45858 (forall!38 lt!19706 lambda!10557))))

(declare-fun b!84635 () Bool)

(declare-fun e!45861 () List!690)

(assert (=> b!84635 (= e!45861 Nil!649)))

(declare-fun b!84636 () Bool)

(declare-fun e!45860 () List!690)

(assert (=> b!84636 (= e!45861 e!45860)))

(declare-fun c!21097 () Bool)

(declare-fun e!45859 () Bool)

(assert (=> b!84636 (= c!21097 e!45859)))

(declare-fun res!43768 () Bool)

(assert (=> b!84636 (=> (not res!43768) (not e!45859))))

(assert (=> b!84636 (= res!43768 (is-Cons!647 (t!47999 ls!77)))))

(declare-fun lt!19705 () List!690)

(assert (=> b!84636 (= lt!19705 (filter!37 (t!47999 (t!47999 ls!77)) lambda!10557))))

(declare-fun b!84637 () Bool)

(assert (=> b!84637 (= e!45860 lt!19705)))

(declare-fun b!84638 () Bool)

(assert (=> b!84638 (= e!45860 (Cons!647 (h!1020 (t!47999 ls!77)) lt!19705))))

(declare-fun b!84639 () Bool)

(declare-fun res!43770 () Bool)

(assert (=> b!84639 (=> (not res!43770) (not e!45858))))

(assert (=> b!84639 (= res!43770 (subset (content!144 lt!19706) (content!144 (t!47999 ls!77))))))

(declare-fun b!84640 () Bool)

(assert (=> b!84640 (= e!45859 (dynLambda!1002 lambda!10557 (h!1020 (t!47999 ls!77))))))

(declare-fun d!56897 () Bool)

(assert (=> d!56897 e!45858))

(declare-fun res!43769 () Bool)

(assert (=> d!56897 (=> (not res!43769) (not e!45858))))

(assert (=> d!56897 (= res!43769 (<= (size!673 lt!19706) (size!673 (t!47999 ls!77))))))

(assert (=> d!56897 (= lt!19706 e!45861)))

(declare-fun c!21096 () Bool)

(assert (=> d!56897 (= c!21096 (is-Nil!649 (t!47999 ls!77)))))

(assert (=> d!56897 (= (filter!37 (t!47999 ls!77) lambda!10557) lt!19706)))

(assert (= (and b!84636 res!43768) b!84640))

(assert (= (and b!84636 c!21097) b!84638))

(assert (= (and b!84636 (not c!21097)) b!84637))

(assert (= (and d!56897 c!21096) b!84635))

(assert (= (and d!56897 (not c!21096)) b!84636))

(assert (= (and d!56897 res!43769) b!84639))

(assert (= (and b!84639 res!43770) b!84634))

(declare-fun b_lambda!16637 () Bool)

(assert (=> (not b_lambda!16637) (not b!84640)))

(declare-fun m!80402 () Bool)

(assert (=> b!84634 m!80402))

(declare-fun m!80404 () Bool)

(assert (=> b!84636 m!80404))

(declare-fun m!80406 () Bool)

(assert (=> b!84640 m!80406))

(declare-fun m!80408 () Bool)

(assert (=> b!84639 m!80408))

(assert (=> b!84639 m!80368))

(declare-fun m!80410 () Bool)

(assert (=> d!56897 m!80410))

(assert (=> d!56897 m!80372))

(assert (=> b!84542 d!56897))

(declare-fun bs!40810 () Bool)

(declare-fun b!84644 () Bool)

(assert (= bs!40810 (and b!84644 b!84551)))

(declare-fun lambda!10582 () Int)

(assert (=> bs!40810 (not (= lambda!10582 lambda!10556))))

(declare-fun bs!40811 () Bool)

(assert (= bs!40811 (and b!84644 b!84570)))

(assert (=> bs!40811 (not (= lambda!10582 lambda!10566))))

(assert (=> bs!40811 (not (= lambda!10582 lambda!10565))))

(assert (=> bs!40811 (= lambda!10582 lambda!10564)))

(declare-fun bs!40812 () Bool)

(assert (= bs!40812 (and b!84644 b!84542)))

(assert (=> bs!40812 (not (= lambda!10582 lambda!10557))))

(declare-fun bs!40813 () Bool)

(assert (= bs!40813 (and b!84644 b!84590)))

(assert (=> bs!40813 (not (= lambda!10582 lambda!10581))))

(assert (=> bs!40813 (not (= lambda!10582 lambda!10580))))

(assert (=> bs!40813 (= (= (h!1020 less!2) (h!1020 more!2)) (= lambda!10582 lambda!10579))))

(declare-fun bs!40814 () Bool)

(assert (= bs!40814 (and b!84644 b!84555)))

(assert (=> bs!40814 (= (= (h!1020 less!2) (h!1020 ls!77)) (= lambda!10582 lambda!10555))))

(assert (=> b!84644 true))

(declare-fun b_next!39437 () Bool)

(assert (=> start!11062 (= b_next!39433 (or (and b!84644 (= lambda!10582 p!834)) b_next!39437))))

(declare-fun b_next!39439 () Bool)

(assert (=> start!11062 (= b_next!39435 (or (and b!84644 (= lambda!10582 p!821)) b_next!39439))))

(declare-fun lambda!10583 () Int)

(assert (=> bs!40810 (= (= (h!1020 less!2) (h!1020 ls!77)) (= lambda!10583 lambda!10556))))

(assert (=> bs!40811 (not (= lambda!10583 lambda!10566))))

(assert (=> bs!40811 (= lambda!10583 lambda!10565)))

(assert (=> bs!40811 (not (= lambda!10583 lambda!10564))))

(assert (=> bs!40812 (not (= lambda!10583 lambda!10557))))

(assert (=> bs!40813 (not (= lambda!10583 lambda!10581))))

(assert (=> bs!40813 (= (= (h!1020 less!2) (h!1020 more!2)) (= lambda!10583 lambda!10580))))

(assert (=> bs!40813 (not (= lambda!10583 lambda!10579))))

(assert (=> bs!40814 (not (= lambda!10583 lambda!10555))))

(assert (=> b!84644 (not (= lambda!10583 lambda!10582))))

(assert (=> b!84644 true))

(declare-fun b_next!39441 () Bool)

(assert (=> start!11062 (= b_next!39437 (or (and b!84644 (= lambda!10583 p!834)) b_next!39441))))

(declare-fun b_next!39443 () Bool)

(assert (=> start!11062 (= b_next!39439 (or (and b!84644 (= lambda!10583 p!821)) b_next!39443))))

(declare-fun lambda!10584 () Int)

(assert (=> bs!40810 (not (= lambda!10584 lambda!10556))))

(assert (=> bs!40811 (= lambda!10584 lambda!10566)))

(assert (=> bs!40811 (not (= lambda!10584 lambda!10565))))

(assert (=> bs!40811 (not (= lambda!10584 lambda!10564))))

(assert (=> bs!40812 (= (= (h!1020 less!2) (h!1020 ls!77)) (= lambda!10584 lambda!10557))))

(assert (=> bs!40813 (= (= (h!1020 less!2) (h!1020 more!2)) (= lambda!10584 lambda!10581))))

(assert (=> bs!40813 (not (= lambda!10584 lambda!10580))))

(assert (=> bs!40813 (not (= lambda!10584 lambda!10579))))

(assert (=> bs!40814 (not (= lambda!10584 lambda!10555))))

(assert (=> b!84644 (not (= lambda!10584 lambda!10583))))

(assert (=> b!84644 (not (= lambda!10584 lambda!10582))))

(assert (=> b!84644 true))

(declare-fun b_next!39445 () Bool)

(assert (=> start!11062 (= b_next!39441 (or (and b!84644 (= lambda!10584 p!834)) b_next!39445))))

(declare-fun b_next!39447 () Bool)

(assert (=> start!11062 (= b_next!39443 (or (and b!84644 (= lambda!10584 p!821)) b_next!39447))))

(declare-fun e!45865 () Bool)

(declare-fun b!84641 () Bool)

(assert (=> b!84641 (= e!45865 (filter_preserves_forall!0 (t!47999 less!2) lambda!10584 p!821))))

(declare-fun d!56899 () Bool)

(assert (=> d!56899 (forall!38 (quickSort!0 less!2) p!821)))

(declare-fun lt!19708 () Bool)

(declare-fun e!45862 () Bool)

(assert (=> d!56899 (= lt!19708 e!45862)))

(declare-fun res!43775 () Bool)

(assert (=> d!56899 (=> res!43775 e!45862)))

(assert (=> d!56899 (= res!43775 (or (is-Nil!649 less!2) (and (is-Cons!647 less!2) (is-Nil!649 (t!47999 less!2)))))))

(assert (=> d!56899 (forall!38 less!2 p!821)))

(assert (=> d!56899 (= (sort_preserves_forall!0 less!2 p!821) true)))

(declare-fun e!45864 () Bool)

(declare-fun b!84642 () Bool)

(assert (=> b!84642 (= e!45864 (filter_preserves_forall!0 (t!47999 less!2) lambda!10583 p!821))))

(declare-fun lt!19711 () List!690)

(declare-fun b!84643 () Bool)

(declare-fun lt!19710 () List!690)

(declare-fun e!45863 () Bool)

(declare-fun lt!19707 () List!690)

(assert (=> b!84643 (= e!45863 (append_preserves_forall!0 (++!89 (quickSort!0 lt!19707) lt!19711) (quickSort!0 lt!19710) p!821))))

(assert (=> b!84644 (= e!45862 e!45863)))

(declare-fun res!43773 () Bool)

(assert (=> b!84644 (=> (not res!43773) (not e!45863))))

(assert (=> b!84644 (= res!43773 (append_preserves_forall!0 (quickSort!0 lt!19707) lt!19711 p!821))))

(declare-fun lt!19709 () Bool)

(declare-fun e!45866 () Bool)

(assert (=> b!84644 (= lt!19709 e!45866)))

(declare-fun res!43774 () Bool)

(assert (=> b!84644 (=> (not res!43774) (not e!45866))))

(assert (=> b!84644 (= res!43774 (sort_preserves_forall!0 lt!19707 p!821))))

(declare-fun lt!19712 () Bool)

(assert (=> b!84644 (= lt!19712 e!45865)))

(declare-fun res!43771 () Bool)

(assert (=> b!84644 (=> (not res!43771) (not e!45865))))

(assert (=> b!84644 (= res!43771 e!45864)))

(declare-fun res!43772 () Bool)

(assert (=> b!84644 (=> (not res!43772) (not e!45864))))

(assert (=> b!84644 (= res!43772 (filter_preserves_forall!0 (t!47999 less!2) lambda!10582 p!821))))

(assert (=> b!84644 (= lt!19710 (filter!37 (t!47999 less!2) lambda!10584))))

(assert (=> b!84644 (= lt!19711 (Cons!647 (h!1020 less!2) (filter!37 (t!47999 less!2) lambda!10583)))))

(assert (=> b!84644 (= lt!19707 (filter!37 (t!47999 less!2) lambda!10582))))

(declare-fun b!84645 () Bool)

(assert (=> b!84645 (= e!45866 (sort_preserves_forall!0 lt!19710 p!821))))

(assert (= (and d!56899 (not res!43775)) b!84644))

(assert (= (and b!84644 res!43772) b!84642))

(assert (= (and b!84644 res!43771) b!84641))

(assert (= (and b!84644 res!43774) b!84645))

(assert (= (and b!84644 res!43773) b!84643))

(declare-fun m!80412 () Bool)

(assert (=> b!84641 m!80412))

(declare-fun m!80414 () Bool)

(assert (=> b!84643 m!80414))

(assert (=> b!84643 m!80414))

(declare-fun m!80416 () Bool)

(assert (=> b!84643 m!80416))

(declare-fun m!80418 () Bool)

(assert (=> b!84643 m!80418))

(assert (=> b!84643 m!80416))

(assert (=> b!84643 m!80418))

(declare-fun m!80420 () Bool)

(assert (=> b!84643 m!80420))

(declare-fun m!80422 () Bool)

(assert (=> b!84645 m!80422))

(declare-fun m!80424 () Bool)

(assert (=> b!84642 m!80424))

(declare-fun m!80426 () Bool)

(assert (=> b!84644 m!80426))

(assert (=> b!84644 m!80414))

(declare-fun m!80428 () Bool)

(assert (=> b!84644 m!80428))

(assert (=> b!84644 m!80414))

(declare-fun m!80430 () Bool)

(assert (=> b!84644 m!80430))

(declare-fun m!80432 () Bool)

(assert (=> b!84644 m!80432))

(declare-fun m!80434 () Bool)

(assert (=> b!84644 m!80434))

(declare-fun m!80436 () Bool)

(assert (=> b!84644 m!80436))

(assert (=> d!56899 m!80302))

(assert (=> d!56899 m!80302))

(declare-fun m!80438 () Bool)

(assert (=> d!56899 m!80438))

(declare-fun m!80440 () Bool)

(assert (=> d!56899 m!80440))

(assert (=> b!84550 d!56899))

(declare-fun b_lambda!16639 () Bool)

(assert (= b_lambda!16627 (or b!84555 b_lambda!16639)))

(declare-fun bs!40815 () Bool)

(declare-fun d!56901 () Bool)

(assert (= bs!40815 (and d!56901 b!84555)))

(assert (=> bs!40815 (= (dynLambda!1002 lambda!10555 (h!1020 (t!47999 ls!77))) (< (h!1020 (t!47999 ls!77)) (h!1020 ls!77)))))

(assert (=> b!84612 d!56901))

(declare-fun b_lambda!16641 () Bool)

(assert (= b_lambda!16633 (or (and start!11062 b_free!7385) (and b!84644 (= lambda!10582 p!834)) (and b!84542 (= lambda!10557 p!834)) (and b!84644 (= lambda!10583 p!834)) (and start!11062 b_free!7387 (= p!821 p!834)) (and b!84590 (= lambda!10579 p!834)) (and b!84555 (= lambda!10555 p!834)) (and b!84644 (= lambda!10584 p!834)) (and b!84590 (= lambda!10581 p!834)) (and b!84570 (= lambda!10564 p!834)) (and b!84551 (= lambda!10556 p!834)) (and b!84590 (= lambda!10580 p!834)) (and b!84570 (= lambda!10566 p!834)) (and b!84570 (= lambda!10565 p!834)) b_lambda!16641)))

(declare-fun bs!40816 () Bool)

(declare-fun d!56903 () Bool)

(assert (= bs!40816 (and d!56903 b!84590)))

(assert (=> bs!40816 (= (dynLambda!1002 lambda!10579 (h!1020 l2!429)) (< (h!1020 l2!429) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10579 p!834) b!84625) d!56903))

(declare-fun bs!40817 () Bool)

(declare-fun d!56905 () Bool)

(assert (= bs!40817 (and d!56905 b!84555)))

(assert (=> bs!40817 (= (dynLambda!1002 lambda!10555 (h!1020 l2!429)) (< (h!1020 l2!429) (h!1020 ls!77)))))

(assert (=> (and b!84555 (= lambda!10555 p!834) b!84625) d!56905))

(declare-fun bs!40818 () Bool)

(declare-fun d!56907 () Bool)

(assert (= bs!40818 (and d!56907 b!84551)))

(assert (=> bs!40818 (= (dynLambda!1002 lambda!10556 (h!1020 l2!429)) (= (h!1020 l2!429) (h!1020 ls!77)))))

(assert (=> (and b!84551 (= lambda!10556 p!834) b!84625) d!56907))

(declare-fun bs!40819 () Bool)

(declare-fun d!56909 () Bool)

(assert (= bs!40819 (and d!56909 b!84570)))

(assert (=> bs!40819 (= (dynLambda!1002 lambda!10564 (h!1020 l2!429)) (< (h!1020 l2!429) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10564 p!834) b!84625) d!56909))

(declare-fun bs!40820 () Bool)

(declare-fun d!56911 () Bool)

(assert (= bs!40820 (and d!56911 b!84644)))

(assert (=> bs!40820 (= (dynLambda!1002 lambda!10584 (h!1020 l2!429)) (> (h!1020 l2!429) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10584 p!834) b!84625) d!56911))

(declare-fun bs!40821 () Bool)

(declare-fun d!56913 () Bool)

(assert (= bs!40821 (and d!56913 b!84570)))

(assert (=> bs!40821 (= (dynLambda!1002 lambda!10565 (h!1020 l2!429)) (= (h!1020 l2!429) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10565 p!834) b!84625) d!56913))

(declare-fun bs!40822 () Bool)

(declare-fun d!56915 () Bool)

(assert (= bs!40822 (and d!56915 b!84542)))

(assert (=> bs!40822 (= (dynLambda!1002 lambda!10557 (h!1020 l2!429)) (> (h!1020 l2!429) (h!1020 ls!77)))))

(assert (=> (and b!84542 (= lambda!10557 p!834) b!84625) d!56915))

(declare-fun bs!40823 () Bool)

(declare-fun d!56917 () Bool)

(assert (= bs!40823 (and d!56917 b!84570)))

(assert (=> bs!40823 (= (dynLambda!1002 lambda!10566 (h!1020 l2!429)) (> (h!1020 l2!429) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10566 p!834) b!84625) d!56917))

(declare-fun bs!40824 () Bool)

(declare-fun d!56919 () Bool)

(assert (= bs!40824 (and d!56919 b!84644)))

(assert (=> bs!40824 (= (dynLambda!1002 lambda!10583 (h!1020 l2!429)) (= (h!1020 l2!429) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10583 p!834) b!84625) d!56919))

(declare-fun bs!40825 () Bool)

(declare-fun d!56921 () Bool)

(assert (= bs!40825 (and d!56921 b!84590)))

(assert (=> bs!40825 (= (dynLambda!1002 lambda!10580 (h!1020 l2!429)) (= (h!1020 l2!429) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10580 p!834) b!84625) d!56921))

(declare-fun bs!40826 () Bool)

(declare-fun d!56923 () Bool)

(assert (= bs!40826 (and d!56923 b!84590)))

(assert (=> bs!40826 (= (dynLambda!1002 lambda!10581 (h!1020 l2!429)) (> (h!1020 l2!429) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10581 p!834) b!84625) d!56923))

(declare-fun bs!40827 () Bool)

(declare-fun d!56925 () Bool)

(assert (= bs!40827 (and d!56925 b!84644)))

(assert (=> bs!40827 (= (dynLambda!1002 lambda!10582 (h!1020 l2!429)) (< (h!1020 l2!429) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10582 p!834) b!84625) d!56925))

(declare-fun b_lambda!16643 () Bool)

(assert (= b_lambda!16637 (or b!84542 b_lambda!16643)))

(declare-fun bs!40828 () Bool)

(declare-fun d!56927 () Bool)

(assert (= bs!40828 (and d!56927 b!84542)))

(assert (=> bs!40828 (= (dynLambda!1002 lambda!10557 (h!1020 (t!47999 ls!77))) (> (h!1020 (t!47999 ls!77)) (h!1020 ls!77)))))

(assert (=> b!84640 d!56927))

(declare-fun b_lambda!16645 () Bool)

(assert (= b_lambda!16629 (or (and start!11062 b_free!7385) (and b!84644 (= lambda!10582 p!834)) (and b!84542 (= lambda!10557 p!834)) (and b!84644 (= lambda!10583 p!834)) (and start!11062 b_free!7387 (= p!821 p!834)) (and b!84590 (= lambda!10579 p!834)) (and b!84555 (= lambda!10555 p!834)) (and b!84644 (= lambda!10584 p!834)) (and b!84590 (= lambda!10581 p!834)) (and b!84570 (= lambda!10564 p!834)) (and b!84551 (= lambda!10556 p!834)) (and b!84590 (= lambda!10580 p!834)) (and b!84570 (= lambda!10566 p!834)) (and b!84570 (= lambda!10565 p!834)) b_lambda!16645)))

(declare-fun bs!40829 () Bool)

(declare-fun d!56929 () Bool)

(assert (= bs!40829 (and d!56929 b!84542)))

(assert (=> bs!40829 (= (dynLambda!1002 lambda!10557 (h!1020 l1!436)) (> (h!1020 l1!436) (h!1020 ls!77)))))

(assert (=> (and b!84542 (= lambda!10557 p!834) b!84617) d!56929))

(declare-fun bs!40830 () Bool)

(declare-fun d!56931 () Bool)

(assert (= bs!40830 (and d!56931 b!84590)))

(assert (=> bs!40830 (= (dynLambda!1002 lambda!10580 (h!1020 l1!436)) (= (h!1020 l1!436) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10580 p!834) b!84617) d!56931))

(declare-fun bs!40831 () Bool)

(declare-fun d!56933 () Bool)

(assert (= bs!40831 (and d!56933 b!84644)))

(assert (=> bs!40831 (= (dynLambda!1002 lambda!10583 (h!1020 l1!436)) (= (h!1020 l1!436) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10583 p!834) b!84617) d!56933))

(declare-fun bs!40832 () Bool)

(declare-fun d!56935 () Bool)

(assert (= bs!40832 (and d!56935 b!84644)))

(assert (=> bs!40832 (= (dynLambda!1002 lambda!10584 (h!1020 l1!436)) (> (h!1020 l1!436) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10584 p!834) b!84617) d!56935))

(declare-fun bs!40833 () Bool)

(declare-fun d!56937 () Bool)

(assert (= bs!40833 (and d!56937 b!84570)))

(assert (=> bs!40833 (= (dynLambda!1002 lambda!10565 (h!1020 l1!436)) (= (h!1020 l1!436) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10565 p!834) b!84617) d!56937))

(declare-fun bs!40834 () Bool)

(declare-fun d!56939 () Bool)

(assert (= bs!40834 (and d!56939 b!84555)))

(assert (=> bs!40834 (= (dynLambda!1002 lambda!10555 (h!1020 l1!436)) (< (h!1020 l1!436) (h!1020 ls!77)))))

(assert (=> (and b!84555 (= lambda!10555 p!834) b!84617) d!56939))

(declare-fun bs!40835 () Bool)

(declare-fun d!56941 () Bool)

(assert (= bs!40835 (and d!56941 b!84570)))

(assert (=> bs!40835 (= (dynLambda!1002 lambda!10564 (h!1020 l1!436)) (< (h!1020 l1!436) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10564 p!834) b!84617) d!56941))

(declare-fun bs!40836 () Bool)

(declare-fun d!56943 () Bool)

(assert (= bs!40836 (and d!56943 b!84590)))

(assert (=> bs!40836 (= (dynLambda!1002 lambda!10579 (h!1020 l1!436)) (< (h!1020 l1!436) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10579 p!834) b!84617) d!56943))

(declare-fun bs!40837 () Bool)

(declare-fun d!56945 () Bool)

(assert (= bs!40837 (and d!56945 b!84590)))

(assert (=> bs!40837 (= (dynLambda!1002 lambda!10581 (h!1020 l1!436)) (> (h!1020 l1!436) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10581 p!834) b!84617) d!56945))

(declare-fun bs!40838 () Bool)

(declare-fun d!56947 () Bool)

(assert (= bs!40838 (and d!56947 b!84551)))

(assert (=> bs!40838 (= (dynLambda!1002 lambda!10556 (h!1020 l1!436)) (= (h!1020 l1!436) (h!1020 ls!77)))))

(assert (=> (and b!84551 (= lambda!10556 p!834) b!84617) d!56947))

(declare-fun bs!40839 () Bool)

(declare-fun d!56949 () Bool)

(assert (= bs!40839 (and d!56949 b!84644)))

(assert (=> bs!40839 (= (dynLambda!1002 lambda!10582 (h!1020 l1!436)) (< (h!1020 l1!436) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10582 p!834) b!84617) d!56949))

(declare-fun bs!40840 () Bool)

(declare-fun d!56951 () Bool)

(assert (= bs!40840 (and d!56951 b!84570)))

(assert (=> bs!40840 (= (dynLambda!1002 lambda!10566 (h!1020 l1!436)) (> (h!1020 l1!436) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10566 p!834) b!84617) d!56951))

(declare-fun b_lambda!16647 () Bool)

(assert (= b_lambda!16635 (or b!84551 b_lambda!16647)))

(declare-fun bs!40841 () Bool)

(declare-fun d!56953 () Bool)

(assert (= bs!40841 (and d!56953 b!84551)))

(assert (=> bs!40841 (= (dynLambda!1002 lambda!10556 (h!1020 (t!47999 ls!77))) (= (h!1020 (t!47999 ls!77)) (h!1020 ls!77)))))

(assert (=> b!84633 d!56953))

(declare-fun b_lambda!16649 () Bool)

(assert (= b_lambda!16631 (or (and b!84570 (= lambda!10565 p!821)) (and start!11062 b_free!7387) (and b!84644 (= lambda!10582 p!821)) (and b!84551 (= lambda!10556 p!821)) (and b!84590 (= lambda!10581 p!821)) (and b!84644 (= lambda!10584 p!821)) (and b!84644 (= lambda!10583 p!821)) (and b!84590 (= lambda!10580 p!821)) (and start!11062 b_free!7385 (= p!834 p!821)) (and b!84555 (= lambda!10555 p!821)) (and b!84570 (= lambda!10566 p!821)) (and b!84570 (= lambda!10564 p!821)) (and b!84590 (= lambda!10579 p!821)) (and b!84542 (= lambda!10557 p!821)) b_lambda!16649)))

(declare-fun bs!40842 () Bool)

(declare-fun d!56955 () Bool)

(assert (= bs!40842 (and d!56955 b!84644)))

(assert (=> bs!40842 (= (dynLambda!1002 lambda!10583 (h!1020 ls!77)) (= (h!1020 ls!77) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10583 p!821) b!84623) d!56955))

(declare-fun bs!40843 () Bool)

(declare-fun d!56957 () Bool)

(assert (= bs!40843 (and d!56957 b!84590)))

(assert (=> bs!40843 (= (dynLambda!1002 lambda!10580 (h!1020 ls!77)) (= (h!1020 ls!77) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10580 p!821) b!84623) d!56957))

(declare-fun bs!40844 () Bool)

(declare-fun d!56959 () Bool)

(assert (= bs!40844 (and d!56959 b!84644)))

(assert (=> bs!40844 (= (dynLambda!1002 lambda!10582 (h!1020 ls!77)) (< (h!1020 ls!77) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10582 p!821) b!84623) d!56959))

(declare-fun bs!40845 () Bool)

(declare-fun d!56961 () Bool)

(assert (= bs!40845 (and d!56961 b!84590)))

(assert (=> bs!40845 (= (dynLambda!1002 lambda!10581 (h!1020 ls!77)) (> (h!1020 ls!77) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10581 p!821) b!84623) d!56961))

(declare-fun bs!40846 () Bool)

(declare-fun d!56963 () Bool)

(assert (= bs!40846 (and d!56963 b!84570)))

(assert (=> bs!40846 (= (dynLambda!1002 lambda!10566 (h!1020 ls!77)) (> (h!1020 ls!77) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10566 p!821) b!84623) d!56963))

(declare-fun bs!40847 () Bool)

(declare-fun d!56965 () Bool)

(assert (= bs!40847 (and d!56965 b!84570)))

(assert (=> bs!40847 (= (dynLambda!1002 lambda!10565 (h!1020 ls!77)) (= (h!1020 ls!77) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10565 p!821) b!84623) d!56965))

(declare-fun bs!40848 () Bool)

(declare-fun d!56967 () Bool)

(assert (= bs!40848 (and d!56967 b!84644)))

(assert (=> bs!40848 (= (dynLambda!1002 lambda!10584 (h!1020 ls!77)) (> (h!1020 ls!77) (h!1020 less!2)))))

(assert (=> (and b!84644 (= lambda!10584 p!821) b!84623) d!56967))

(declare-fun bs!40849 () Bool)

(declare-fun d!56969 () Bool)

(assert (= bs!40849 (and d!56969 b!84570)))

(assert (=> bs!40849 (= (dynLambda!1002 lambda!10564 (h!1020 ls!77)) (< (h!1020 ls!77) (h!1020 less!2)))))

(assert (=> (and b!84570 (= lambda!10564 p!821) b!84623) d!56969))

(declare-fun bs!40850 () Bool)

(declare-fun d!56971 () Bool)

(assert (= bs!40850 (and d!56971 b!84555)))

(assert (=> bs!40850 (= (dynLambda!1002 lambda!10555 (h!1020 ls!77)) (< (h!1020 ls!77) (h!1020 ls!77)))))

(assert (=> (and b!84555 (= lambda!10555 p!821) b!84623) d!56971))

(declare-fun bs!40851 () Bool)

(declare-fun d!56973 () Bool)

(assert (= bs!40851 (and d!56973 b!84551)))

(assert (=> bs!40851 (= (dynLambda!1002 lambda!10556 (h!1020 ls!77)) (= (h!1020 ls!77) (h!1020 ls!77)))))

(assert (=> (and b!84551 (= lambda!10556 p!821) b!84623) d!56973))

(declare-fun bs!40852 () Bool)

(declare-fun d!56975 () Bool)

(assert (= bs!40852 (and d!56975 b!84542)))

(assert (=> bs!40852 (= (dynLambda!1002 lambda!10557 (h!1020 ls!77)) (> (h!1020 ls!77) (h!1020 ls!77)))))

(assert (=> (and b!84542 (= lambda!10557 p!821) b!84623) d!56975))

(declare-fun bs!40853 () Bool)

(declare-fun d!56977 () Bool)

(assert (= bs!40853 (and d!56977 b!84590)))

(assert (=> bs!40853 (= (dynLambda!1002 lambda!10579 (h!1020 ls!77)) (< (h!1020 ls!77) (h!1020 more!2)))))

(assert (=> (and b!84590 (= lambda!10579 p!821) b!84623) d!56977))

(push 1)

(assert (not b!84626))

(assert (not b!84575))

(assert (not d!56897))

(assert (not d!56887))

(assert (not b_lambda!16649))

(assert (not b!84576))

(assert (not b!84643))

(assert (not b!84570))

(assert (not b!84589))

(assert (not b!84627))

(assert (not b!84629))

(assert (not b!84636))

(assert (not b_next!39445))

(assert (not b!84639))

(assert (not b!84642))

(assert (not d!56895))

(assert (not b!84634))

(assert (not b!84618))

(assert b_and!58981)

(assert (not b!84622))

(assert (not b!84621))

(assert (not d!56883))

(assert (not d!56889))

(assert (not b!84645))

(assert (not b!84588))

(assert (not b_lambda!16641))

(assert (not b_lambda!16643))

(assert (not d!56879))

(assert (not b!84624))

(assert (not b!84641))

(assert (not d!56899))

(assert (not b!84619))

(assert (not b_next!39447))

(assert (not b_lambda!16647))

(assert b_and!58979)

(assert (not b!84606))

(assert (not b!84608))

(assert (not b!84632))

(assert (not b!84611))

(assert (not d!56881))

(assert (not b!84587))

(assert (not b!84620))

(assert (not b_lambda!16639))

(assert (not b!84644))

(assert (not b_lambda!16645))

(assert (not b!84591))

(assert (not b!84590))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58979)

(assert b_and!58981)

(assert (not b_next!39447))

(assert (not b_next!39445))

(check-sat)

(pop 1)

