; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10722 () Bool)

(assert start!10722)

(declare-fun b!81462 () Bool)

(assert (=> b!81462 true))

(declare-fun bs!38824 () Bool)

(declare-fun b!81460 () Bool)

(assert (= bs!38824 (and b!81460 b!81462)))

(declare-fun lambda!9628 () Int)

(declare-fun lambda!9627 () Int)

(assert (=> bs!38824 (not (= lambda!9628 lambda!9627))))

(assert (=> b!81460 true))

(declare-fun bs!38825 () Bool)

(declare-fun b!81466 () Bool)

(assert (= bs!38825 (and b!81466 b!81462)))

(declare-fun lambda!9629 () Int)

(assert (=> bs!38825 (not (= lambda!9629 lambda!9627))))

(declare-fun bs!38826 () Bool)

(assert (= bs!38826 (and b!81466 b!81460)))

(assert (=> bs!38826 (not (= lambda!9629 lambda!9628))))

(assert (=> b!81466 true))

(declare-fun bs!38827 () Bool)

(declare-fun b!81468 () Bool)

(assert (= bs!38827 (and b!81468 b!81462)))

(declare-fun lambda!9630 () Int)

(assert (=> bs!38827 (not (= lambda!9630 lambda!9627))))

(declare-fun bs!38828 () Bool)

(assert (= bs!38828 (and b!81468 b!81460)))

(assert (=> bs!38828 (not (= lambda!9630 lambda!9628))))

(declare-fun bs!38829 () Bool)

(assert (= bs!38829 (and b!81468 b!81466)))

(assert (=> bs!38829 (not (= lambda!9630 lambda!9629))))

(assert (=> b!81468 true))

(declare-fun b!81449 () Bool)

(declare-fun res!41666 () Bool)

(declare-fun e!44149 () Bool)

(assert (=> b!81449 (=> (not res!41666) (not e!44149))))

(declare-datatypes () ((List!665 (Cons!622 (h!991 Int) (t!47838 List!665)) (Nil!624))))

(declare-fun less!5 () List!665)

(declare-fun forall_last!0 (List!665 Int) Bool)

(declare-fun quickSort!0 (List!665) List!665)

(assert (=> b!81449 (= res!41666 (forall_last!0 (quickSort!0 less!5) lambda!9627))))

(declare-fun b!81450 () Bool)

(declare-fun res!41672 () Bool)

(assert (=> b!81450 (=> (not res!41672) (not e!44149))))

(declare-fun ls!96 () List!665)

(declare-fun cons_filter_equal_sorted!0 (List!665 Int) Bool)

(assert (=> b!81450 (= res!41672 (cons_filter_equal_sorted!0 (t!47838 ls!96) (h!991 ls!96)))))

(declare-fun b!81451 () Bool)

(declare-fun res!41679 () Bool)

(assert (=> b!81451 (=> (not res!41679) (not e!44149))))

(declare-fun equal!10 () List!665)

(declare-fun l1!444 () List!665)

(declare-fun ++!73 (List!665 List!665) List!665)

(assert (=> b!81451 (= res!41679 (= l1!444 (++!73 (quickSort!0 less!5) equal!10)))))

(declare-fun b!81452 () Bool)

(declare-fun e!44147 () Bool)

(assert (=> b!81452 (= e!44149 e!44147)))

(declare-fun res!41670 () Bool)

(assert (=> b!81452 (=> res!41670 e!44147)))

(declare-fun isSorted!1 (List!665) Bool)

(assert (=> b!81452 (= res!41670 (not (isSorted!1 l1!444)))))

(declare-fun b!81453 () Bool)

(declare-fun res!41674 () Bool)

(assert (=> b!81453 (=> (not res!41674) (not e!44149))))

(declare-fun more!5 () List!665)

(declare-fun sort_preserves_forall!0 (List!665 Int) Bool)

(assert (=> b!81453 (= res!41674 (sort_preserves_forall!0 more!5 lambda!9629))))

(declare-fun b!81454 () Bool)

(declare-fun res!41664 () Bool)

(declare-fun e!44148 () Bool)

(assert (=> b!81454 (=> (not res!41664) (not e!44148))))

(declare-fun l2!437 () List!665)

(declare-fun isEmpty!677 (List!665) Bool)

(assert (=> b!81454 (= res!41664 (not (isEmpty!677 l2!437)))))

(declare-fun b!81455 () Bool)

(declare-fun res!41678 () Bool)

(assert (=> b!81455 (=> (not res!41678) (not e!44149))))

(declare-fun append_preserves_forall!0 (List!665 List!665 Int) Bool)

(assert (=> b!81455 (= res!41678 (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!9630))))

(declare-fun b!81456 () Bool)

(assert (=> b!81456 (= e!44147 e!44148)))

(declare-fun res!41661 () Bool)

(assert (=> b!81456 (=> (not res!41661) (not e!44148))))

(assert (=> b!81456 (= res!41661 (not (isEmpty!677 l1!444)))))

(declare-fun b!81457 () Bool)

(declare-fun res!41669 () Bool)

(assert (=> b!81457 (=> (not res!41669) (not e!44149))))

(assert (=> b!81457 (= res!41669 (forall_last!0 (++!73 (quickSort!0 less!5) equal!10) lambda!9630))))

(declare-fun b!81458 () Bool)

(declare-fun res!41668 () Bool)

(assert (=> b!81458 (=> (not res!41668) (not e!44149))))

(assert (=> b!81458 (= res!41668 (= l2!437 (quickSort!0 more!5)))))

(declare-fun b!81459 () Bool)

(declare-fun res!41681 () Bool)

(assert (=> b!81459 (=> (not res!41681) (not e!44149))))

(declare-fun forall_lt_implies_le!0 (List!665 Int) Bool)

(assert (=> b!81459 (= res!41681 (forall_lt_implies_le!0 less!5 (h!991 ls!96)))))

(declare-fun res!41662 () Bool)

(assert (=> b!81460 (=> (not res!41662) (not e!44149))))

(declare-fun filter!18 (List!665 Int) List!665)

(assert (=> b!81460 (= res!41662 (= equal!10 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9628))))))

(declare-fun b!81461 () Bool)

(declare-fun res!41682 () Bool)

(assert (=> b!81461 (=> res!41682 e!44147)))

(assert (=> b!81461 (= res!41682 (not (isSorted!1 l2!437)))))

(declare-fun res!41680 () Bool)

(assert (=> start!10722 (=> (not res!41680) (not e!44149))))

(assert (=> start!10722 (= res!41680 (and (not (is-Nil!624 ls!96)) (not (is-Nil!624 (t!47838 ls!96)))))))

(assert (=> start!10722 e!44149))

(assert (=> start!10722 true))

(declare-fun res!41677 () Bool)

(assert (=> b!81462 (=> (not res!41677) (not e!44149))))

(assert (=> b!81462 (= res!41677 (= less!5 (filter!18 (t!47838 ls!96) lambda!9627)))))

(declare-fun b!81463 () Bool)

(declare-fun res!41675 () Bool)

(assert (=> b!81463 (=> (not res!41675) (not e!44149))))

(declare-fun sorted_lemma!0 (List!665) Bool)

(assert (=> b!81463 (= res!41675 (sorted_lemma!0 more!5))))

(declare-fun b!81464 () Bool)

(declare-fun res!41671 () Bool)

(assert (=> b!81464 (=> (not res!41671) (not e!44149))))

(declare-fun append_sorted!0 (List!665 List!665) Bool)

(assert (=> b!81464 (= res!41671 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun b!81465 () Bool)

(declare-fun last!17 (List!665) Int)

(declare-fun head!1055 (List!665) Int)

(assert (=> b!81465 (= e!44148 (> (last!17 l1!444) (head!1055 l2!437)))))

(declare-fun res!41667 () Bool)

(assert (=> b!81466 (=> (not res!41667) (not e!44149))))

(assert (=> b!81466 (= res!41667 (= more!5 (filter!18 (t!47838 ls!96) lambda!9629)))))

(declare-fun b!81467 () Bool)

(declare-fun res!41663 () Bool)

(assert (=> b!81467 (=> (not res!41663) (not e!44149))))

(declare-fun forall_eq_implies_le!0 (List!665 Int) Bool)

(assert (=> b!81467 (= res!41663 (forall_eq_implies_le!0 equal!10 (h!991 ls!96)))))

(declare-fun res!41673 () Bool)

(assert (=> b!81468 (=> (not res!41673) (not e!44149))))

(assert (=> b!81468 (= res!41673 (sort_preserves_forall!0 less!5 lambda!9630))))

(declare-fun b!81469 () Bool)

(declare-fun res!41665 () Bool)

(assert (=> b!81469 (=> (not res!41665) (not e!44149))))

(assert (=> b!81469 (= res!41665 (sort_preserves_forall!0 less!5 lambda!9627))))

(declare-fun b!81470 () Bool)

(declare-fun res!41676 () Bool)

(assert (=> b!81470 (=> (not res!41676) (not e!44149))))

(assert (=> b!81470 (= res!41676 (sorted_lemma!0 less!5))))

(assert (= (and start!10722 res!41680) b!81462))

(assert (= (and b!81462 res!41677) b!81460))

(assert (= (and b!81460 res!41662) b!81466))

(assert (= (and b!81466 res!41667) b!81470))

(assert (= (and b!81470 res!41676) b!81469))

(assert (= (and b!81469 res!41665) b!81449))

(assert (= (and b!81449 res!41666) b!81450))

(assert (= (and b!81450 res!41672) b!81464))

(assert (= (and b!81464 res!41671) b!81459))

(assert (= (and b!81459 res!41681) b!81468))

(assert (= (and b!81468 res!41673) b!81467))

(assert (= (and b!81467 res!41663) b!81455))

(assert (= (and b!81455 res!41678) b!81457))

(assert (= (and b!81457 res!41669) b!81463))

(assert (= (and b!81463 res!41675) b!81453))

(assert (= (and b!81453 res!41674) b!81451))

(assert (= (and b!81451 res!41679) b!81458))

(assert (= (and b!81458 res!41668) b!81452))

(assert (= (and b!81452 (not res!41670)) b!81461))

(assert (= (and b!81461 (not res!41682)) b!81456))

(assert (= (and b!81456 res!41661) b!81454))

(assert (= (and b!81454 res!41664) b!81465))

(declare-fun m!76304 () Bool)

(assert (=> b!81470 m!76304))

(declare-fun m!76306 () Bool)

(assert (=> b!81468 m!76306))

(declare-fun m!76308 () Bool)

(assert (=> b!81456 m!76308))

(declare-fun m!76310 () Bool)

(assert (=> b!81464 m!76310))

(assert (=> b!81464 m!76310))

(declare-fun m!76312 () Bool)

(assert (=> b!81464 m!76312))

(assert (=> b!81449 m!76310))

(assert (=> b!81449 m!76310))

(declare-fun m!76314 () Bool)

(assert (=> b!81449 m!76314))

(declare-fun m!76316 () Bool)

(assert (=> b!81465 m!76316))

(declare-fun m!76318 () Bool)

(assert (=> b!81465 m!76318))

(declare-fun m!76320 () Bool)

(assert (=> b!81452 m!76320))

(declare-fun m!76322 () Bool)

(assert (=> b!81450 m!76322))

(assert (=> b!81457 m!76310))

(assert (=> b!81457 m!76310))

(declare-fun m!76324 () Bool)

(assert (=> b!81457 m!76324))

(assert (=> b!81457 m!76324))

(declare-fun m!76326 () Bool)

(assert (=> b!81457 m!76326))

(declare-fun m!76328 () Bool)

(assert (=> b!81466 m!76328))

(declare-fun m!76330 () Bool)

(assert (=> b!81460 m!76330))

(declare-fun m!76332 () Bool)

(assert (=> b!81461 m!76332))

(declare-fun m!76334 () Bool)

(assert (=> b!81459 m!76334))

(assert (=> b!81455 m!76310))

(assert (=> b!81455 m!76310))

(declare-fun m!76336 () Bool)

(assert (=> b!81455 m!76336))

(declare-fun m!76338 () Bool)

(assert (=> b!81463 m!76338))

(declare-fun m!76340 () Bool)

(assert (=> b!81458 m!76340))

(declare-fun m!76342 () Bool)

(assert (=> b!81453 m!76342))

(assert (=> b!81451 m!76310))

(assert (=> b!81451 m!76310))

(assert (=> b!81451 m!76324))

(declare-fun m!76344 () Bool)

(assert (=> b!81462 m!76344))

(declare-fun m!76346 () Bool)

(assert (=> b!81454 m!76346))

(declare-fun m!76348 () Bool)

(assert (=> b!81469 m!76348))

(declare-fun m!76350 () Bool)

(assert (=> b!81467 m!76350))

(push 1)

(assert (not b!81451))

(assert (not b!81455))

(assert (not b!81460))

(assert (not b!81457))

(assert (not b!81452))

(assert (not b!81454))

(assert (not b!81463))

(assert (not b!81465))

(assert (not b!81458))

(assert (not b!81467))

(assert (not b!81466))

(assert (not b!81470))

(assert (not b!81456))

(assert (not b!81461))

(assert (not b!81462))

(assert (not b!81449))

(assert (not b!81468))

(assert (not b!81464))

(assert (not b!81469))

(assert (not b!81459))

(assert (not b!81450))

(assert (not b!81453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55857 () Bool)

(declare-fun res!41687 () Bool)

(declare-fun e!44154 () Bool)

(assert (=> d!55857 (=> res!41687 e!44154)))

(assert (=> d!55857 (= res!41687 (not (and (is-Cons!622 l1!444) (is-Cons!622 (t!47838 l1!444)))))))

(assert (=> d!55857 (= (isSorted!1 l1!444) e!44154)))

(declare-fun b!81477 () Bool)

(declare-fun e!44155 () Bool)

(assert (=> b!81477 (= e!44154 e!44155)))

(declare-fun res!41688 () Bool)

(assert (=> b!81477 (=> (not res!41688) (not e!44155))))

(assert (=> b!81477 (= res!41688 (<= (h!991 l1!444) (h!991 (t!47838 l1!444))))))

(declare-fun b!81478 () Bool)

(assert (=> b!81478 (= e!44155 (isSorted!1 (t!47838 l1!444)))))

(assert (= (and d!55857 (not res!41687)) b!81477))

(assert (= (and b!81477 res!41688) b!81478))

(declare-fun m!76352 () Bool)

(assert (=> b!81478 m!76352))

(assert (=> b!81452 d!55857))

(declare-fun bs!38830 () Bool)

(declare-fun b!81490 () Bool)

(assert (= bs!38830 (and b!81490 b!81462)))

(declare-fun lambda!9637 () Int)

(assert (=> bs!38830 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9637 lambda!9627))))

(declare-fun bs!38831 () Bool)

(assert (= bs!38831 (and b!81490 b!81460)))

(assert (=> bs!38831 (not (= lambda!9637 lambda!9628))))

(declare-fun bs!38832 () Bool)

(assert (= bs!38832 (and b!81490 b!81466)))

(assert (=> bs!38832 (not (= lambda!9637 lambda!9629))))

(declare-fun bs!38833 () Bool)

(assert (= bs!38833 (and b!81490 b!81468)))

(assert (=> bs!38833 (not (= lambda!9637 lambda!9630))))

(assert (=> b!81490 true))

(declare-fun lambda!9638 () Int)

(assert (=> bs!38830 (not (= lambda!9638 lambda!9627))))

(assert (=> bs!38831 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9638 lambda!9628))))

(assert (=> b!81490 (not (= lambda!9638 lambda!9637))))

(assert (=> bs!38832 (not (= lambda!9638 lambda!9629))))

(assert (=> bs!38833 (not (= lambda!9638 lambda!9630))))

(assert (=> b!81490 true))

(declare-fun lambda!9639 () Int)

(assert (=> bs!38830 (not (= lambda!9639 lambda!9627))))

(assert (=> bs!38831 (not (= lambda!9639 lambda!9628))))

(assert (=> b!81490 (not (= lambda!9639 lambda!9638))))

(assert (=> b!81490 (not (= lambda!9639 lambda!9637))))

(assert (=> bs!38832 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9639 lambda!9629))))

(assert (=> bs!38833 (not (= lambda!9639 lambda!9630))))

(assert (=> b!81490 true))

(declare-fun b!81487 () Bool)

(declare-fun e!44160 () List!665)

(assert (=> b!81487 (= e!44160 Nil!624)))

(declare-fun d!55859 () Bool)

(declare-fun c!20504 () Bool)

(assert (=> d!55859 (= c!20504 (is-Nil!624 more!5))))

(assert (=> d!55859 (= (quickSort!0 more!5) e!44160)))

(declare-fun b!81489 () Bool)

(declare-fun e!44161 () List!665)

(assert (=> b!81489 (= e!44161 more!5)))

(declare-fun b!81488 () Bool)

(assert (=> b!81488 (= e!44160 e!44161)))

(declare-fun c!20505 () Bool)

(assert (=> b!81488 (= c!20505 (and (is-Cons!622 more!5) (is-Nil!624 (t!47838 more!5))))))

(assert (=> b!81490 (= e!44161 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638))) (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639))))))

(assert (= (and b!81488 c!20505) b!81489))

(assert (= (and b!81488 (not c!20505)) b!81490))

(assert (= (and d!55859 c!20504) b!81487))

(assert (= (and d!55859 (not c!20504)) b!81488))

(declare-fun m!76354 () Bool)

(assert (=> b!81490 m!76354))

(declare-fun m!76356 () Bool)

(assert (=> b!81490 m!76356))

(assert (=> b!81490 m!76354))

(declare-fun m!76358 () Bool)

(assert (=> b!81490 m!76358))

(declare-fun m!76360 () Bool)

(assert (=> b!81490 m!76360))

(declare-fun m!76362 () Bool)

(assert (=> b!81490 m!76362))

(assert (=> b!81490 m!76358))

(assert (=> b!81490 m!76362))

(declare-fun m!76364 () Bool)

(assert (=> b!81490 m!76364))

(assert (=> b!81490 m!76360))

(assert (=> b!81490 m!76356))

(declare-fun m!76366 () Bool)

(assert (=> b!81490 m!76366))

(assert (=> b!81458 d!55859))

(declare-fun bs!38834 () Bool)

(declare-fun d!55861 () Bool)

(assert (= bs!38834 (and d!55861 b!81462)))

(declare-fun lambda!9646 () Int)

(assert (=> bs!38834 (not (= lambda!9646 lambda!9627))))

(declare-fun bs!38835 () Bool)

(assert (= bs!38835 (and d!55861 b!81460)))

(assert (=> bs!38835 (= lambda!9646 lambda!9628)))

(declare-fun bs!38836 () Bool)

(assert (= bs!38836 (and d!55861 b!81490)))

(assert (=> bs!38836 (not (= lambda!9646 lambda!9639))))

(assert (=> bs!38836 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9646 lambda!9638))))

(assert (=> bs!38836 (not (= lambda!9646 lambda!9637))))

(declare-fun bs!38837 () Bool)

(assert (= bs!38837 (and d!55861 b!81466)))

(assert (=> bs!38837 (not (= lambda!9646 lambda!9629))))

(declare-fun bs!38838 () Bool)

(assert (= bs!38838 (and d!55861 b!81468)))

(assert (=> bs!38838 (not (= lambda!9646 lambda!9630))))

(assert (=> d!55861 true))

(declare-fun bs!38839 () Bool)

(declare-fun b!81495 () Bool)

(assert (= bs!38839 (and b!81495 b!81462)))

(declare-fun lambda!9647 () Int)

(assert (=> bs!38839 (not (= lambda!9647 lambda!9627))))

(declare-fun bs!38840 () Bool)

(assert (= bs!38840 (and b!81495 b!81460)))

(assert (=> bs!38840 (not (= lambda!9647 lambda!9628))))

(declare-fun bs!38841 () Bool)

(assert (= bs!38841 (and b!81495 b!81490)))

(assert (=> bs!38841 (not (= lambda!9647 lambda!9639))))

(assert (=> bs!38841 (not (= lambda!9647 lambda!9638))))

(assert (=> bs!38841 (not (= lambda!9647 lambda!9637))))

(declare-fun bs!38842 () Bool)

(assert (= bs!38842 (and b!81495 b!81466)))

(assert (=> bs!38842 (not (= lambda!9647 lambda!9629))))

(declare-fun bs!38843 () Bool)

(assert (= bs!38843 (and b!81495 d!55861)))

(assert (=> bs!38843 (not (= lambda!9647 lambda!9646))))

(declare-fun bs!38844 () Bool)

(assert (= bs!38844 (and b!81495 b!81468)))

(assert (=> bs!38844 (= lambda!9647 lambda!9630)))

(assert (=> b!81495 true))

(declare-fun bs!38845 () Bool)

(declare-fun b!81496 () Bool)

(assert (= bs!38845 (and b!81496 b!81462)))

(declare-fun lambda!9648 () Int)

(assert (=> bs!38845 (not (= lambda!9648 lambda!9627))))

(declare-fun bs!38846 () Bool)

(assert (= bs!38846 (and b!81496 b!81495)))

(assert (=> bs!38846 (= lambda!9648 lambda!9647)))

(declare-fun bs!38847 () Bool)

(assert (= bs!38847 (and b!81496 b!81460)))

(assert (=> bs!38847 (not (= lambda!9648 lambda!9628))))

(declare-fun bs!38848 () Bool)

(assert (= bs!38848 (and b!81496 b!81490)))

(assert (=> bs!38848 (not (= lambda!9648 lambda!9639))))

(assert (=> bs!38848 (not (= lambda!9648 lambda!9638))))

(assert (=> bs!38848 (not (= lambda!9648 lambda!9637))))

(declare-fun bs!38849 () Bool)

(assert (= bs!38849 (and b!81496 b!81466)))

(assert (=> bs!38849 (not (= lambda!9648 lambda!9629))))

(declare-fun bs!38850 () Bool)

(assert (= bs!38850 (and b!81496 d!55861)))

(assert (=> bs!38850 (not (= lambda!9648 lambda!9646))))

(declare-fun bs!38851 () Bool)

(assert (= bs!38851 (and b!81496 b!81468)))

(assert (=> bs!38851 (= lambda!9648 lambda!9630)))

(assert (=> b!81496 true))

(declare-fun e!44164 () Bool)

(assert (=> d!55861 e!44164))

(declare-fun c!20508 () Bool)

(assert (=> d!55861 (= c!20508 (is-Cons!622 equal!10))))

(declare-fun forall!20 (List!665 Int) Bool)

(assert (=> d!55861 (forall!20 equal!10 lambda!9646)))

(assert (=> d!55861 (= (forall_eq_implies_le!0 equal!10 (h!991 ls!96)) true)))

(assert (=> b!81495 (= e!44164 (forall!20 equal!10 lambda!9647))))

(declare-fun lt!18709 () Bool)

(assert (=> b!81495 (= lt!18709 (forall_eq_implies_le!0 (t!47838 equal!10) (h!991 ls!96)))))

(assert (=> b!81496 (= e!44164 (forall!20 equal!10 lambda!9648))))

(assert (= (and d!55861 c!20508) b!81495))

(assert (= (and d!55861 (not c!20508)) b!81496))

(declare-fun m!76368 () Bool)

(assert (=> d!55861 m!76368))

(declare-fun m!76370 () Bool)

(assert (=> b!81495 m!76370))

(declare-fun m!76372 () Bool)

(assert (=> b!81495 m!76372))

(declare-fun m!76374 () Bool)

(assert (=> b!81496 m!76374))

(assert (=> b!81467 d!55861))

(declare-fun d!55863 () Bool)

(declare-fun lt!18712 () Int)

(declare-fun contains!57 (List!665 Int) Bool)

(assert (=> d!55863 (contains!57 l1!444 lt!18712)))

(declare-fun e!44167 () Int)

(assert (=> d!55863 (= lt!18712 e!44167)))

(declare-fun c!20511 () Bool)

(assert (=> d!55863 (= c!20511 (and (is-Cons!622 l1!444) (is-Nil!624 (t!47838 l1!444))))))

(assert (=> d!55863 (not (isEmpty!677 l1!444))))

(assert (=> d!55863 (= (last!17 l1!444) lt!18712)))

(declare-fun b!81503 () Bool)

(assert (=> b!81503 (= e!44167 (h!991 l1!444))))

(declare-fun b!81504 () Bool)

(assert (=> b!81504 (= e!44167 (last!17 (t!47838 l1!444)))))

(assert (= (and d!55863 c!20511) b!81503))

(assert (= (and d!55863 (not c!20511)) b!81504))

(declare-fun m!76376 () Bool)

(assert (=> d!55863 m!76376))

(assert (=> d!55863 m!76308))

(declare-fun m!76378 () Bool)

(assert (=> b!81504 m!76378))

(assert (=> b!81465 d!55863))

(declare-fun d!55865 () Bool)

(assert (=> d!55865 (= (head!1055 l2!437) (h!991 l2!437))))

(assert (=> b!81465 d!55865))

(declare-fun bs!38852 () Bool)

(declare-fun b!81517 () Bool)

(assert (= bs!38852 (and b!81517 b!81462)))

(declare-fun lambda!9661 () Int)

(assert (=> bs!38852 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9661 lambda!9627))))

(declare-fun bs!38853 () Bool)

(assert (= bs!38853 (and b!81517 b!81495)))

(assert (=> bs!38853 (not (= lambda!9661 lambda!9647))))

(declare-fun bs!38854 () Bool)

(assert (= bs!38854 (and b!81517 b!81460)))

(assert (=> bs!38854 (not (= lambda!9661 lambda!9628))))

(declare-fun bs!38855 () Bool)

(assert (= bs!38855 (and b!81517 b!81490)))

(assert (=> bs!38855 (not (= lambda!9661 lambda!9639))))

(assert (=> bs!38855 (not (= lambda!9661 lambda!9638))))

(assert (=> bs!38855 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9661 lambda!9637))))

(declare-fun bs!38856 () Bool)

(assert (= bs!38856 (and b!81517 b!81466)))

(assert (=> bs!38856 (not (= lambda!9661 lambda!9629))))

(declare-fun bs!38857 () Bool)

(assert (= bs!38857 (and b!81517 d!55861)))

(assert (=> bs!38857 (not (= lambda!9661 lambda!9646))))

(declare-fun bs!38858 () Bool)

(assert (= bs!38858 (and b!81517 b!81496)))

(assert (=> bs!38858 (not (= lambda!9661 lambda!9648))))

(declare-fun bs!38859 () Bool)

(assert (= bs!38859 (and b!81517 b!81468)))

(assert (=> bs!38859 (not (= lambda!9661 lambda!9630))))

(assert (=> b!81517 true))

(declare-fun lambda!9662 () Int)

(assert (=> b!81517 (not (= lambda!9662 lambda!9661))))

(assert (=> bs!38852 (not (= lambda!9662 lambda!9627))))

(assert (=> bs!38853 (not (= lambda!9662 lambda!9647))))

(assert (=> bs!38854 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9662 lambda!9628))))

(assert (=> bs!38855 (not (= lambda!9662 lambda!9639))))

(assert (=> bs!38855 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9662 lambda!9638))))

(assert (=> bs!38855 (not (= lambda!9662 lambda!9637))))

(assert (=> bs!38856 (not (= lambda!9662 lambda!9629))))

(assert (=> bs!38857 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9662 lambda!9646))))

(assert (=> bs!38858 (not (= lambda!9662 lambda!9648))))

(assert (=> bs!38859 (not (= lambda!9662 lambda!9630))))

(assert (=> b!81517 true))

(declare-fun lambda!9663 () Int)

(assert (=> b!81517 (not (= lambda!9663 lambda!9662))))

(assert (=> b!81517 (not (= lambda!9663 lambda!9661))))

(assert (=> bs!38852 (not (= lambda!9663 lambda!9627))))

(assert (=> bs!38853 (not (= lambda!9663 lambda!9647))))

(assert (=> bs!38854 (not (= lambda!9663 lambda!9628))))

(assert (=> bs!38855 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9663 lambda!9639))))

(assert (=> bs!38855 (not (= lambda!9663 lambda!9638))))

(assert (=> bs!38855 (not (= lambda!9663 lambda!9637))))

(assert (=> bs!38856 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9663 lambda!9629))))

(assert (=> bs!38857 (not (= lambda!9663 lambda!9646))))

(assert (=> bs!38858 (not (= lambda!9663 lambda!9648))))

(assert (=> bs!38859 (not (= lambda!9663 lambda!9630))))

(assert (=> b!81517 true))

(declare-fun e!44182 () Bool)

(declare-fun b!81515 () Bool)

(declare-fun filter_preserves_forall!0 (List!665 Int Int) Bool)

(assert (=> b!81515 (= e!44182 (filter_preserves_forall!0 (t!47838 less!5) lambda!9662 lambda!9630))))

(declare-fun b!81516 () Bool)

(declare-fun lt!18730 () List!665)

(declare-fun lt!18728 () List!665)

(declare-fun e!44180 () Bool)

(declare-fun lt!18725 () List!665)

(assert (=> b!81516 (= e!44180 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18730) lt!18725) (quickSort!0 lt!18728) lambda!9630))))

(declare-fun d!55867 () Bool)

(assert (=> d!55867 (forall!20 (quickSort!0 less!5) lambda!9630)))

(declare-fun lt!18727 () Bool)

(declare-fun e!44178 () Bool)

(assert (=> d!55867 (= lt!18727 e!44178)))

(declare-fun res!41706 () Bool)

(assert (=> d!55867 (=> res!41706 e!44178)))

(assert (=> d!55867 (= res!41706 (or (is-Nil!624 less!5) (and (is-Cons!622 less!5) (is-Nil!624 (t!47838 less!5)))))))

(assert (=> d!55867 (forall!20 less!5 lambda!9630)))

(assert (=> d!55867 (= (sort_preserves_forall!0 less!5 lambda!9630) true)))

(assert (=> b!81517 (= e!44178 e!44180)))

(declare-fun res!41707 () Bool)

(assert (=> b!81517 (=> (not res!41707) (not e!44180))))

(assert (=> b!81517 (= res!41707 (append_preserves_forall!0 (quickSort!0 lt!18730) lt!18725 lambda!9630))))

(declare-fun lt!18726 () Bool)

(declare-fun e!44179 () Bool)

(assert (=> b!81517 (= lt!18726 e!44179)))

(declare-fun res!41705 () Bool)

(assert (=> b!81517 (=> (not res!41705) (not e!44179))))

(assert (=> b!81517 (= res!41705 (sort_preserves_forall!0 lt!18730 lambda!9630))))

(declare-fun lt!18729 () Bool)

(declare-fun e!44181 () Bool)

(assert (=> b!81517 (= lt!18729 e!44181)))

(declare-fun res!41704 () Bool)

(assert (=> b!81517 (=> (not res!41704) (not e!44181))))

(assert (=> b!81517 (= res!41704 e!44182)))

(declare-fun res!41708 () Bool)

(assert (=> b!81517 (=> (not res!41708) (not e!44182))))

(assert (=> b!81517 (= res!41708 (filter_preserves_forall!0 (t!47838 less!5) lambda!9661 lambda!9630))))

(assert (=> b!81517 (= lt!18728 (filter!18 (t!47838 less!5) lambda!9663))))

(assert (=> b!81517 (= lt!18725 (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9662)))))

(assert (=> b!81517 (= lt!18730 (filter!18 (t!47838 less!5) lambda!9661))))

(declare-fun b!81518 () Bool)

(assert (=> b!81518 (= e!44179 (sort_preserves_forall!0 lt!18728 lambda!9630))))

(declare-fun b!81519 () Bool)

(assert (=> b!81519 (= e!44181 (filter_preserves_forall!0 (t!47838 less!5) lambda!9663 lambda!9630))))

(assert (= (and d!55867 (not res!41706)) b!81517))

(assert (= (and b!81517 res!41708) b!81515))

(assert (= (and b!81517 res!41704) b!81519))

(assert (= (and b!81517 res!41705) b!81518))

(assert (= (and b!81517 res!41707) b!81516))

(declare-fun m!76380 () Bool)

(assert (=> b!81519 m!76380))

(declare-fun m!76382 () Bool)

(assert (=> b!81518 m!76382))

(declare-fun m!76384 () Bool)

(assert (=> b!81516 m!76384))

(assert (=> b!81516 m!76384))

(declare-fun m!76386 () Bool)

(assert (=> b!81516 m!76386))

(declare-fun m!76388 () Bool)

(assert (=> b!81516 m!76388))

(assert (=> b!81516 m!76386))

(assert (=> b!81516 m!76388))

(declare-fun m!76390 () Bool)

(assert (=> b!81516 m!76390))

(declare-fun m!76392 () Bool)

(assert (=> b!81515 m!76392))

(declare-fun m!76394 () Bool)

(assert (=> b!81517 m!76394))

(declare-fun m!76396 () Bool)

(assert (=> b!81517 m!76396))

(assert (=> b!81517 m!76384))

(declare-fun m!76398 () Bool)

(assert (=> b!81517 m!76398))

(declare-fun m!76400 () Bool)

(assert (=> b!81517 m!76400))

(assert (=> b!81517 m!76384))

(declare-fun m!76402 () Bool)

(assert (=> b!81517 m!76402))

(declare-fun m!76404 () Bool)

(assert (=> b!81517 m!76404))

(assert (=> d!55867 m!76310))

(assert (=> d!55867 m!76310))

(declare-fun m!76406 () Bool)

(assert (=> d!55867 m!76406))

(declare-fun m!76408 () Bool)

(assert (=> d!55867 m!76408))

(assert (=> b!81468 d!55867))

(declare-fun bs!38860 () Bool)

(declare-fun b!81522 () Bool)

(assert (= bs!38860 (and b!81522 b!81517)))

(declare-fun lambda!9664 () Int)

(assert (=> bs!38860 (not (= lambda!9664 lambda!9663))))

(assert (=> bs!38860 (not (= lambda!9664 lambda!9662))))

(assert (=> bs!38860 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9664 lambda!9661))))

(declare-fun bs!38861 () Bool)

(assert (= bs!38861 (and b!81522 b!81462)))

(assert (=> bs!38861 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9664 lambda!9627))))

(declare-fun bs!38862 () Bool)

(assert (= bs!38862 (and b!81522 b!81495)))

(assert (=> bs!38862 (not (= lambda!9664 lambda!9647))))

(declare-fun bs!38863 () Bool)

(assert (= bs!38863 (and b!81522 b!81460)))

(assert (=> bs!38863 (not (= lambda!9664 lambda!9628))))

(declare-fun bs!38864 () Bool)

(assert (= bs!38864 (and b!81522 b!81490)))

(assert (=> bs!38864 (not (= lambda!9664 lambda!9639))))

(assert (=> bs!38864 (not (= lambda!9664 lambda!9638))))

(assert (=> bs!38864 (= lambda!9664 lambda!9637)))

(declare-fun bs!38865 () Bool)

(assert (= bs!38865 (and b!81522 b!81466)))

(assert (=> bs!38865 (not (= lambda!9664 lambda!9629))))

(declare-fun bs!38866 () Bool)

(assert (= bs!38866 (and b!81522 d!55861)))

(assert (=> bs!38866 (not (= lambda!9664 lambda!9646))))

(declare-fun bs!38867 () Bool)

(assert (= bs!38867 (and b!81522 b!81496)))

(assert (=> bs!38867 (not (= lambda!9664 lambda!9648))))

(declare-fun bs!38868 () Bool)

(assert (= bs!38868 (and b!81522 b!81468)))

(assert (=> bs!38868 (not (= lambda!9664 lambda!9630))))

(assert (=> b!81522 true))

(declare-fun lambda!9665 () Int)

(assert (=> bs!38860 (not (= lambda!9665 lambda!9663))))

(assert (=> bs!38860 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9665 lambda!9662))))

(assert (=> bs!38860 (not (= lambda!9665 lambda!9661))))

(assert (=> bs!38861 (not (= lambda!9665 lambda!9627))))

(assert (=> bs!38862 (not (= lambda!9665 lambda!9647))))

(assert (=> bs!38863 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9665 lambda!9628))))

(assert (=> bs!38864 (not (= lambda!9665 lambda!9639))))

(assert (=> bs!38864 (= lambda!9665 lambda!9638)))

(assert (=> bs!38864 (not (= lambda!9665 lambda!9637))))

(assert (=> bs!38865 (not (= lambda!9665 lambda!9629))))

(assert (=> bs!38866 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9665 lambda!9646))))

(assert (=> bs!38867 (not (= lambda!9665 lambda!9648))))

(assert (=> b!81522 (not (= lambda!9665 lambda!9664))))

(assert (=> bs!38868 (not (= lambda!9665 lambda!9630))))

(assert (=> b!81522 true))

(declare-fun lambda!9666 () Int)

(assert (=> bs!38860 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9666 lambda!9663))))

(assert (=> bs!38860 (not (= lambda!9666 lambda!9662))))

(assert (=> bs!38860 (not (= lambda!9666 lambda!9661))))

(assert (=> bs!38861 (not (= lambda!9666 lambda!9627))))

(assert (=> bs!38862 (not (= lambda!9666 lambda!9647))))

(assert (=> bs!38863 (not (= lambda!9666 lambda!9628))))

(assert (=> bs!38864 (= lambda!9666 lambda!9639)))

(assert (=> bs!38864 (not (= lambda!9666 lambda!9638))))

(assert (=> bs!38864 (not (= lambda!9666 lambda!9637))))

(assert (=> bs!38865 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9666 lambda!9629))))

(assert (=> bs!38866 (not (= lambda!9666 lambda!9646))))

(assert (=> bs!38867 (not (= lambda!9666 lambda!9648))))

(assert (=> b!81522 (not (= lambda!9666 lambda!9665))))

(assert (=> b!81522 (not (= lambda!9666 lambda!9664))))

(assert (=> bs!38868 (not (= lambda!9666 lambda!9630))))

(assert (=> b!81522 true))

(declare-fun b!81520 () Bool)

(declare-fun e!44187 () Bool)

(assert (=> b!81520 (= e!44187 (filter_preserves_forall!0 (t!47838 more!5) lambda!9665 lambda!9629))))

(declare-fun lt!18731 () List!665)

(declare-fun lt!18736 () List!665)

(declare-fun lt!18734 () List!665)

(declare-fun b!81521 () Bool)

(declare-fun e!44185 () Bool)

(assert (=> b!81521 (= e!44185 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18736) lt!18731) (quickSort!0 lt!18734) lambda!9629))))

(declare-fun d!55869 () Bool)

(assert (=> d!55869 (forall!20 (quickSort!0 more!5) lambda!9629)))

(declare-fun lt!18733 () Bool)

(declare-fun e!44183 () Bool)

(assert (=> d!55869 (= lt!18733 e!44183)))

(declare-fun res!41711 () Bool)

(assert (=> d!55869 (=> res!41711 e!44183)))

(assert (=> d!55869 (= res!41711 (or (is-Nil!624 more!5) (and (is-Cons!622 more!5) (is-Nil!624 (t!47838 more!5)))))))

(assert (=> d!55869 (forall!20 more!5 lambda!9629)))

(assert (=> d!55869 (= (sort_preserves_forall!0 more!5 lambda!9629) true)))

(assert (=> b!81522 (= e!44183 e!44185)))

(declare-fun res!41712 () Bool)

(assert (=> b!81522 (=> (not res!41712) (not e!44185))))

(assert (=> b!81522 (= res!41712 (append_preserves_forall!0 (quickSort!0 lt!18736) lt!18731 lambda!9629))))

(declare-fun lt!18732 () Bool)

(declare-fun e!44184 () Bool)

(assert (=> b!81522 (= lt!18732 e!44184)))

(declare-fun res!41710 () Bool)

(assert (=> b!81522 (=> (not res!41710) (not e!44184))))

(assert (=> b!81522 (= res!41710 (sort_preserves_forall!0 lt!18736 lambda!9629))))

(declare-fun lt!18735 () Bool)

(declare-fun e!44186 () Bool)

(assert (=> b!81522 (= lt!18735 e!44186)))

(declare-fun res!41709 () Bool)

(assert (=> b!81522 (=> (not res!41709) (not e!44186))))

(assert (=> b!81522 (= res!41709 e!44187)))

(declare-fun res!41713 () Bool)

(assert (=> b!81522 (=> (not res!41713) (not e!44187))))

(assert (=> b!81522 (= res!41713 (filter_preserves_forall!0 (t!47838 more!5) lambda!9664 lambda!9629))))

(assert (=> b!81522 (= lt!18734 (filter!18 (t!47838 more!5) lambda!9666))))

(assert (=> b!81522 (= lt!18731 (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9665)))))

(assert (=> b!81522 (= lt!18736 (filter!18 (t!47838 more!5) lambda!9664))))

(declare-fun b!81523 () Bool)

(assert (=> b!81523 (= e!44184 (sort_preserves_forall!0 lt!18734 lambda!9629))))

(declare-fun b!81524 () Bool)

(assert (=> b!81524 (= e!44186 (filter_preserves_forall!0 (t!47838 more!5) lambda!9666 lambda!9629))))

(assert (= (and d!55869 (not res!41711)) b!81522))

(assert (= (and b!81522 res!41713) b!81520))

(assert (= (and b!81522 res!41709) b!81524))

(assert (= (and b!81522 res!41710) b!81523))

(assert (= (and b!81522 res!41712) b!81521))

(declare-fun m!76410 () Bool)

(assert (=> b!81524 m!76410))

(declare-fun m!76412 () Bool)

(assert (=> b!81523 m!76412))

(declare-fun m!76414 () Bool)

(assert (=> b!81521 m!76414))

(assert (=> b!81521 m!76414))

(declare-fun m!76416 () Bool)

(assert (=> b!81521 m!76416))

(declare-fun m!76418 () Bool)

(assert (=> b!81521 m!76418))

(assert (=> b!81521 m!76416))

(assert (=> b!81521 m!76418))

(declare-fun m!76420 () Bool)

(assert (=> b!81521 m!76420))

(declare-fun m!76422 () Bool)

(assert (=> b!81520 m!76422))

(declare-fun m!76424 () Bool)

(assert (=> b!81522 m!76424))

(declare-fun m!76426 () Bool)

(assert (=> b!81522 m!76426))

(assert (=> b!81522 m!76414))

(declare-fun m!76428 () Bool)

(assert (=> b!81522 m!76428))

(declare-fun m!76430 () Bool)

(assert (=> b!81522 m!76430))

(assert (=> b!81522 m!76414))

(declare-fun m!76432 () Bool)

(assert (=> b!81522 m!76432))

(declare-fun m!76434 () Bool)

(assert (=> b!81522 m!76434))

(assert (=> d!55869 m!76340))

(assert (=> d!55869 m!76340))

(declare-fun m!76436 () Bool)

(assert (=> d!55869 m!76436))

(declare-fun m!76438 () Bool)

(assert (=> d!55869 m!76438))

(assert (=> b!81453 d!55869))

(declare-fun d!55871 () Bool)

(assert (=> d!55871 (= (isEmpty!677 l1!444) (is-Nil!624 l1!444))))

(assert (=> b!81456 d!55871))

(declare-fun d!55873 () Bool)

(declare-fun e!44193 () Bool)

(assert (=> d!55873 e!44193))

(declare-fun c!20514 () Bool)

(assert (=> d!55873 (= c!20514 (is-Cons!622 (quickSort!0 less!5)))))

(declare-fun e!44192 () Bool)

(assert (=> d!55873 e!44192))

(declare-fun res!41716 () Bool)

(assert (=> d!55873 (=> (not res!41716) (not e!44192))))

(assert (=> d!55873 (= res!41716 (forall!20 (quickSort!0 less!5) lambda!9630))))

(assert (=> d!55873 (= (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!9630) true)))

(declare-fun b!81531 () Bool)

(assert (=> b!81531 (= e!44192 (forall!20 equal!10 lambda!9630))))

(declare-fun b!81532 () Bool)

(assert (=> b!81532 (= e!44193 (forall!20 (++!73 (quickSort!0 less!5) equal!10) lambda!9630))))

(declare-fun lt!18739 () Bool)

(assert (=> b!81532 (= lt!18739 (append_preserves_forall!0 (t!47838 (quickSort!0 less!5)) equal!10 lambda!9630))))

(declare-fun b!81533 () Bool)

(assert (=> b!81533 (= e!44193 (forall!20 (++!73 (quickSort!0 less!5) equal!10) lambda!9630))))

(assert (= (and d!55873 res!41716) b!81531))

(assert (= (and d!55873 c!20514) b!81532))

(assert (= (and d!55873 (not c!20514)) b!81533))

(assert (=> d!55873 m!76310))

(assert (=> d!55873 m!76406))

(declare-fun m!76440 () Bool)

(assert (=> b!81531 m!76440))

(assert (=> b!81532 m!76310))

(assert (=> b!81532 m!76324))

(assert (=> b!81532 m!76324))

(declare-fun m!76442 () Bool)

(assert (=> b!81532 m!76442))

(declare-fun m!76444 () Bool)

(assert (=> b!81532 m!76444))

(assert (=> b!81533 m!76310))

(assert (=> b!81533 m!76324))

(assert (=> b!81533 m!76324))

(assert (=> b!81533 m!76442))

(assert (=> b!81455 d!55873))

(declare-fun bs!38869 () Bool)

(declare-fun b!81537 () Bool)

(assert (= bs!38869 (and b!81537 b!81517)))

(declare-fun lambda!9667 () Int)

(assert (=> bs!38869 (not (= lambda!9667 lambda!9663))))

(assert (=> bs!38869 (not (= lambda!9667 lambda!9662))))

(assert (=> bs!38869 (= lambda!9667 lambda!9661)))

(declare-fun bs!38870 () Bool)

(assert (= bs!38870 (and b!81537 b!81462)))

(assert (=> bs!38870 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9667 lambda!9627))))

(declare-fun bs!38871 () Bool)

(assert (= bs!38871 (and b!81537 b!81495)))

(assert (=> bs!38871 (not (= lambda!9667 lambda!9647))))

(declare-fun bs!38872 () Bool)

(assert (= bs!38872 (and b!81537 b!81460)))

(assert (=> bs!38872 (not (= lambda!9667 lambda!9628))))

(declare-fun bs!38873 () Bool)

(assert (= bs!38873 (and b!81537 b!81490)))

(assert (=> bs!38873 (not (= lambda!9667 lambda!9639))))

(assert (=> bs!38873 (not (= lambda!9667 lambda!9638))))

(assert (=> bs!38873 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9667 lambda!9637))))

(declare-fun bs!38874 () Bool)

(assert (= bs!38874 (and b!81537 b!81466)))

(assert (=> bs!38874 (not (= lambda!9667 lambda!9629))))

(declare-fun bs!38875 () Bool)

(assert (= bs!38875 (and b!81537 d!55861)))

(assert (=> bs!38875 (not (= lambda!9667 lambda!9646))))

(declare-fun bs!38876 () Bool)

(assert (= bs!38876 (and b!81537 b!81496)))

(assert (=> bs!38876 (not (= lambda!9667 lambda!9648))))

(declare-fun bs!38877 () Bool)

(assert (= bs!38877 (and b!81537 b!81522)))

(assert (=> bs!38877 (not (= lambda!9667 lambda!9666))))

(assert (=> bs!38877 (not (= lambda!9667 lambda!9665))))

(assert (=> bs!38877 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9667 lambda!9664))))

(declare-fun bs!38878 () Bool)

(assert (= bs!38878 (and b!81537 b!81468)))

(assert (=> bs!38878 (not (= lambda!9667 lambda!9630))))

(assert (=> b!81537 true))

(declare-fun lambda!9668 () Int)

(assert (=> bs!38869 (not (= lambda!9668 lambda!9663))))

(assert (=> bs!38869 (= lambda!9668 lambda!9662)))

(assert (=> bs!38869 (not (= lambda!9668 lambda!9661))))

(assert (=> bs!38870 (not (= lambda!9668 lambda!9627))))

(assert (=> bs!38871 (not (= lambda!9668 lambda!9647))))

(assert (=> bs!38872 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9668 lambda!9628))))

(assert (=> bs!38873 (not (= lambda!9668 lambda!9639))))

(assert (=> bs!38873 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9668 lambda!9638))))

(assert (=> bs!38873 (not (= lambda!9668 lambda!9637))))

(assert (=> bs!38874 (not (= lambda!9668 lambda!9629))))

(assert (=> bs!38875 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9668 lambda!9646))))

(assert (=> b!81537 (not (= lambda!9668 lambda!9667))))

(assert (=> bs!38876 (not (= lambda!9668 lambda!9648))))

(assert (=> bs!38877 (not (= lambda!9668 lambda!9666))))

(assert (=> bs!38877 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9668 lambda!9665))))

(assert (=> bs!38877 (not (= lambda!9668 lambda!9664))))

(assert (=> bs!38878 (not (= lambda!9668 lambda!9630))))

(assert (=> b!81537 true))

(declare-fun lambda!9669 () Int)

(assert (=> bs!38869 (= lambda!9669 lambda!9663)))

(assert (=> bs!38869 (not (= lambda!9669 lambda!9662))))

(assert (=> bs!38869 (not (= lambda!9669 lambda!9661))))

(assert (=> bs!38870 (not (= lambda!9669 lambda!9627))))

(assert (=> bs!38871 (not (= lambda!9669 lambda!9647))))

(assert (=> bs!38872 (not (= lambda!9669 lambda!9628))))

(assert (=> bs!38873 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9669 lambda!9639))))

(assert (=> bs!38873 (not (= lambda!9669 lambda!9638))))

(assert (=> bs!38873 (not (= lambda!9669 lambda!9637))))

(assert (=> bs!38874 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9669 lambda!9629))))

(assert (=> bs!38875 (not (= lambda!9669 lambda!9646))))

(assert (=> b!81537 (not (= lambda!9669 lambda!9668))))

(assert (=> b!81537 (not (= lambda!9669 lambda!9667))))

(assert (=> bs!38876 (not (= lambda!9669 lambda!9648))))

(assert (=> bs!38877 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9669 lambda!9666))))

(assert (=> bs!38877 (not (= lambda!9669 lambda!9665))))

(assert (=> bs!38877 (not (= lambda!9669 lambda!9664))))

(assert (=> bs!38878 (not (= lambda!9669 lambda!9630))))

(assert (=> b!81537 true))

(declare-fun b!81534 () Bool)

(declare-fun e!44194 () List!665)

(assert (=> b!81534 (= e!44194 Nil!624)))

(declare-fun d!55875 () Bool)

(declare-fun c!20515 () Bool)

(assert (=> d!55875 (= c!20515 (is-Nil!624 less!5))))

(assert (=> d!55875 (= (quickSort!0 less!5) e!44194)))

(declare-fun b!81536 () Bool)

(declare-fun e!44195 () List!665)

(assert (=> b!81536 (= e!44195 less!5)))

(declare-fun b!81535 () Bool)

(assert (=> b!81535 (= e!44194 e!44195)))

(declare-fun c!20516 () Bool)

(assert (=> b!81535 (= c!20516 (and (is-Cons!622 less!5) (is-Nil!624 (t!47838 less!5))))))

(assert (=> b!81537 (= e!44195 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668))) (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669))))))

(assert (= (and b!81535 c!20516) b!81536))

(assert (= (and b!81535 (not c!20516)) b!81537))

(assert (= (and d!55875 c!20515) b!81534))

(assert (= (and d!55875 (not c!20515)) b!81535))

(declare-fun m!76446 () Bool)

(assert (=> b!81537 m!76446))

(declare-fun m!76448 () Bool)

(assert (=> b!81537 m!76448))

(assert (=> b!81537 m!76446))

(declare-fun m!76450 () Bool)

(assert (=> b!81537 m!76450))

(declare-fun m!76452 () Bool)

(assert (=> b!81537 m!76452))

(declare-fun m!76454 () Bool)

(assert (=> b!81537 m!76454))

(assert (=> b!81537 m!76450))

(assert (=> b!81537 m!76454))

(declare-fun m!76456 () Bool)

(assert (=> b!81537 m!76456))

(assert (=> b!81537 m!76452))

(assert (=> b!81537 m!76448))

(declare-fun m!76458 () Bool)

(assert (=> b!81537 m!76458))

(assert (=> b!81455 d!55875))

(declare-fun b!81550 () Bool)

(declare-fun res!41727 () Bool)

(declare-fun e!44203 () Bool)

(assert (=> b!81550 (=> (not res!41727) (not e!44203))))

(assert (=> b!81550 (= res!41727 (isSorted!1 equal!10))))

(declare-fun d!55877 () Bool)

(declare-fun e!44202 () Bool)

(assert (=> d!55877 e!44202))

(declare-fun c!20519 () Bool)

(assert (=> d!55877 (= c!20519 (is-Cons!622 (quickSort!0 less!5)))))

(assert (=> d!55877 e!44203))

(declare-fun res!41725 () Bool)

(assert (=> d!55877 (=> (not res!41725) (not e!44203))))

(assert (=> d!55877 (= res!41725 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!55877 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!81551 () Bool)

(declare-fun res!41726 () Bool)

(declare-fun e!44204 () Bool)

(assert (=> b!81551 (=> res!41726 e!44204)))

(assert (=> b!81551 (= res!41726 (isEmpty!677 equal!10))))

(declare-fun b!81552 () Bool)

(assert (=> b!81552 (= e!44202 (isSorted!1 (++!73 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!18742 () Bool)

(assert (=> b!81552 (= lt!18742 (append_sorted!0 (t!47838 (quickSort!0 less!5)) equal!10))))

(declare-fun b!81553 () Bool)

(assert (=> b!81553 (= e!44204 (<= (last!17 (quickSort!0 less!5)) (head!1055 equal!10)))))

(declare-fun b!81554 () Bool)

(assert (=> b!81554 (= e!44203 e!44204)))

(declare-fun res!41728 () Bool)

(assert (=> b!81554 (=> res!41728 e!44204)))

(assert (=> b!81554 (= res!41728 (isEmpty!677 (quickSort!0 less!5)))))

(declare-fun b!81555 () Bool)

(assert (=> b!81555 (= e!44202 (isSorted!1 (++!73 (quickSort!0 less!5) equal!10)))))

(assert (= (and d!55877 res!41725) b!81550))

(assert (= (and b!81550 res!41727) b!81554))

(assert (= (and b!81554 (not res!41728)) b!81551))

(assert (= (and b!81551 (not res!41726)) b!81553))

(assert (= (and d!55877 c!20519) b!81552))

(assert (= (and d!55877 (not c!20519)) b!81555))

(declare-fun m!76460 () Bool)

(assert (=> b!81550 m!76460))

(assert (=> b!81552 m!76310))

(assert (=> b!81552 m!76324))

(assert (=> b!81552 m!76324))

(declare-fun m!76462 () Bool)

(assert (=> b!81552 m!76462))

(declare-fun m!76464 () Bool)

(assert (=> b!81552 m!76464))

(assert (=> b!81554 m!76310))

(declare-fun m!76466 () Bool)

(assert (=> b!81554 m!76466))

(declare-fun m!76468 () Bool)

(assert (=> b!81551 m!76468))

(assert (=> b!81555 m!76310))

(assert (=> b!81555 m!76324))

(assert (=> b!81555 m!76324))

(assert (=> b!81555 m!76462))

(assert (=> b!81553 m!76310))

(declare-fun m!76470 () Bool)

(assert (=> b!81553 m!76470))

(declare-fun m!76472 () Bool)

(assert (=> b!81553 m!76472))

(assert (=> d!55877 m!76310))

(declare-fun m!76474 () Bool)

(assert (=> d!55877 m!76474))

(assert (=> b!81464 d!55877))

(assert (=> b!81464 d!55875))

(declare-fun bs!38879 () Bool)

(declare-fun b!81560 () Bool)

(assert (= bs!38879 (and b!81560 b!81517)))

(declare-fun lambda!9676 () Int)

(assert (=> bs!38879 (not (= lambda!9676 lambda!9663))))

(assert (=> bs!38879 (not (= lambda!9676 lambda!9662))))

(assert (=> bs!38879 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9676 lambda!9661))))

(declare-fun bs!38880 () Bool)

(assert (= bs!38880 (and b!81560 b!81462)))

(assert (=> bs!38880 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9676 lambda!9627))))

(declare-fun bs!38881 () Bool)

(assert (= bs!38881 (and b!81560 b!81495)))

(assert (=> bs!38881 (not (= lambda!9676 lambda!9647))))

(declare-fun bs!38882 () Bool)

(assert (= bs!38882 (and b!81560 b!81460)))

(assert (=> bs!38882 (not (= lambda!9676 lambda!9628))))

(declare-fun bs!38883 () Bool)

(assert (= bs!38883 (and b!81560 b!81490)))

(assert (=> bs!38883 (not (= lambda!9676 lambda!9639))))

(assert (=> bs!38883 (not (= lambda!9676 lambda!9638))))

(assert (=> bs!38883 (= lambda!9676 lambda!9637)))

(declare-fun bs!38884 () Bool)

(assert (= bs!38884 (and b!81560 b!81466)))

(assert (=> bs!38884 (not (= lambda!9676 lambda!9629))))

(declare-fun bs!38885 () Bool)

(assert (= bs!38885 (and b!81560 d!55861)))

(assert (=> bs!38885 (not (= lambda!9676 lambda!9646))))

(declare-fun bs!38886 () Bool)

(assert (= bs!38886 (and b!81560 b!81537)))

(assert (=> bs!38886 (not (= lambda!9676 lambda!9669))))

(assert (=> bs!38886 (not (= lambda!9676 lambda!9668))))

(assert (=> bs!38886 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9676 lambda!9667))))

(declare-fun bs!38887 () Bool)

(assert (= bs!38887 (and b!81560 b!81496)))

(assert (=> bs!38887 (not (= lambda!9676 lambda!9648))))

(declare-fun bs!38888 () Bool)

(assert (= bs!38888 (and b!81560 b!81522)))

(assert (=> bs!38888 (not (= lambda!9676 lambda!9666))))

(assert (=> bs!38888 (not (= lambda!9676 lambda!9665))))

(assert (=> bs!38888 (= lambda!9676 lambda!9664)))

(declare-fun bs!38889 () Bool)

(assert (= bs!38889 (and b!81560 b!81468)))

(assert (=> bs!38889 (not (= lambda!9676 lambda!9630))))

(assert (=> b!81560 true))

(declare-fun lambda!9677 () Int)

(assert (=> bs!38879 (not (= lambda!9677 lambda!9663))))

(assert (=> bs!38879 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9677 lambda!9662))))

(assert (=> bs!38879 (not (= lambda!9677 lambda!9661))))

(assert (=> bs!38880 (not (= lambda!9677 lambda!9627))))

(assert (=> bs!38881 (not (= lambda!9677 lambda!9647))))

(assert (=> bs!38882 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9677 lambda!9628))))

(assert (=> b!81560 (not (= lambda!9677 lambda!9676))))

(assert (=> bs!38883 (not (= lambda!9677 lambda!9639))))

(assert (=> bs!38883 (= lambda!9677 lambda!9638)))

(assert (=> bs!38883 (not (= lambda!9677 lambda!9637))))

(assert (=> bs!38884 (not (= lambda!9677 lambda!9629))))

(assert (=> bs!38885 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9677 lambda!9646))))

(assert (=> bs!38886 (not (= lambda!9677 lambda!9669))))

(assert (=> bs!38886 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9677 lambda!9668))))

(assert (=> bs!38886 (not (= lambda!9677 lambda!9667))))

(assert (=> bs!38887 (not (= lambda!9677 lambda!9648))))

(assert (=> bs!38888 (not (= lambda!9677 lambda!9666))))

(assert (=> bs!38888 (= lambda!9677 lambda!9665)))

(assert (=> bs!38888 (not (= lambda!9677 lambda!9664))))

(assert (=> bs!38889 (not (= lambda!9677 lambda!9630))))

(assert (=> b!81560 true))

(declare-fun lambda!9678 () Int)

(assert (=> bs!38879 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9678 lambda!9663))))

(assert (=> bs!38879 (not (= lambda!9678 lambda!9662))))

(assert (=> bs!38879 (not (= lambda!9678 lambda!9661))))

(assert (=> bs!38880 (not (= lambda!9678 lambda!9627))))

(assert (=> bs!38881 (not (= lambda!9678 lambda!9647))))

(assert (=> bs!38882 (not (= lambda!9678 lambda!9628))))

(assert (=> b!81560 (not (= lambda!9678 lambda!9677))))

(assert (=> b!81560 (not (= lambda!9678 lambda!9676))))

(assert (=> bs!38883 (= lambda!9678 lambda!9639)))

(assert (=> bs!38883 (not (= lambda!9678 lambda!9638))))

(assert (=> bs!38883 (not (= lambda!9678 lambda!9637))))

(assert (=> bs!38884 (= (= (h!991 more!5) (h!991 ls!96)) (= lambda!9678 lambda!9629))))

(assert (=> bs!38885 (not (= lambda!9678 lambda!9646))))

(assert (=> bs!38886 (= (= (h!991 more!5) (h!991 less!5)) (= lambda!9678 lambda!9669))))

(assert (=> bs!38886 (not (= lambda!9678 lambda!9668))))

(assert (=> bs!38886 (not (= lambda!9678 lambda!9667))))

(assert (=> bs!38887 (not (= lambda!9678 lambda!9648))))

(assert (=> bs!38888 (= lambda!9678 lambda!9666)))

(assert (=> bs!38888 (not (= lambda!9678 lambda!9665))))

(assert (=> bs!38888 (not (= lambda!9678 lambda!9664))))

(assert (=> bs!38889 (not (= lambda!9678 lambda!9630))))

(assert (=> b!81560 true))

(declare-fun d!55879 () Bool)

(assert (=> d!55879 (isSorted!1 (quickSort!0 more!5))))

(declare-fun lt!18754 () Bool)

(declare-fun e!44210 () Bool)

(assert (=> d!55879 (= lt!18754 e!44210)))

(declare-fun res!41736 () Bool)

(assert (=> d!55879 (=> res!41736 e!44210)))

(assert (=> d!55879 (= res!41736 (or (is-Nil!624 more!5) (and (is-Cons!622 more!5) (is-Nil!624 (t!47838 more!5)))))))

(assert (=> d!55879 (= (sorted_lemma!0 more!5) true)))

(declare-fun e!44209 () Bool)

(assert (=> b!81560 (= e!44210 e!44209)))

(declare-fun res!41735 () Bool)

(assert (=> b!81560 (=> (not res!41735) (not e!44209))))

(declare-fun lt!18752 () List!665)

(declare-fun lt!18753 () List!665)

(assert (=> b!81560 (= res!41735 (append_sorted!0 (quickSort!0 lt!18752) lt!18753))))

(declare-fun lt!18751 () List!665)

(assert (=> b!81560 (= lt!18751 (filter!18 (t!47838 more!5) lambda!9678))))

(assert (=> b!81560 (= lt!18753 (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9677)))))

(assert (=> b!81560 (= lt!18752 (filter!18 (t!47838 more!5) lambda!9676))))

(declare-fun b!81561 () Bool)

(assert (=> b!81561 (= e!44209 (append_sorted!0 (++!73 (quickSort!0 lt!18752) lt!18753) (quickSort!0 lt!18751)))))

(assert (= (and d!55879 (not res!41736)) b!81560))

(assert (= (and b!81560 res!41735) b!81561))

(assert (=> d!55879 m!76340))

(assert (=> d!55879 m!76340))

(declare-fun m!76476 () Bool)

(assert (=> d!55879 m!76476))

(declare-fun m!76478 () Bool)

(assert (=> b!81560 m!76478))

(declare-fun m!76480 () Bool)

(assert (=> b!81560 m!76480))

(declare-fun m!76482 () Bool)

(assert (=> b!81560 m!76482))

(assert (=> b!81560 m!76480))

(declare-fun m!76484 () Bool)

(assert (=> b!81560 m!76484))

(declare-fun m!76486 () Bool)

(assert (=> b!81560 m!76486))

(assert (=> b!81561 m!76480))

(assert (=> b!81561 m!76480))

(declare-fun m!76488 () Bool)

(assert (=> b!81561 m!76488))

(declare-fun m!76490 () Bool)

(assert (=> b!81561 m!76490))

(assert (=> b!81561 m!76488))

(assert (=> b!81561 m!76490))

(declare-fun m!76492 () Bool)

(assert (=> b!81561 m!76492))

(assert (=> b!81463 d!55879))

(declare-fun b!81576 () Bool)

(declare-fun e!44220 () List!665)

(declare-fun lt!18759 () List!665)

(assert (=> b!81576 (= e!44220 (Cons!622 (h!991 (t!47838 ls!96)) lt!18759))))

(declare-fun b!81577 () Bool)

(declare-fun e!44222 () Bool)

(declare-fun dynLambda!984 (Int Int) Bool)

(assert (=> b!81577 (= e!44222 (dynLambda!984 lambda!9629 (h!991 (t!47838 ls!96))))))

(declare-fun b!81578 () Bool)

(assert (=> b!81578 (= e!44220 lt!18759)))

(declare-fun d!55881 () Bool)

(declare-fun e!44219 () Bool)

(assert (=> d!55881 e!44219))

(declare-fun res!41749 () Bool)

(assert (=> d!55881 (=> (not res!41749) (not e!44219))))

(declare-fun lt!18760 () List!665)

(declare-fun size!653 (List!665) Int)

(assert (=> d!55881 (= res!41749 (<= (size!653 lt!18760) (size!653 (t!47838 ls!96))))))

(declare-fun e!44221 () List!665)

(assert (=> d!55881 (= lt!18760 e!44221)))

(declare-fun c!20525 () Bool)

(assert (=> d!55881 (= c!20525 (is-Nil!624 (t!47838 ls!96)))))

(assert (=> d!55881 (= (filter!18 (t!47838 ls!96) lambda!9629) lt!18760)))

(declare-fun b!81579 () Bool)

(declare-fun res!41747 () Bool)

(assert (=> b!81579 (=> (not res!41747) (not e!44219))))

(declare-fun content!124 (List!665) (Set Int))

(assert (=> b!81579 (= res!41747 (subset (content!124 lt!18760) (content!124 (t!47838 ls!96))))))

(declare-fun b!81580 () Bool)

(assert (=> b!81580 (= e!44221 Nil!624)))

(declare-fun b!81581 () Bool)

(assert (=> b!81581 (= e!44219 (forall!20 lt!18760 lambda!9629))))

(declare-fun b!81582 () Bool)

(assert (=> b!81582 (= e!44221 e!44220)))

(declare-fun c!20524 () Bool)

(assert (=> b!81582 (= c!20524 e!44222)))

(declare-fun res!41748 () Bool)

(assert (=> b!81582 (=> (not res!41748) (not e!44222))))

(assert (=> b!81582 (= res!41748 (is-Cons!622 (t!47838 ls!96)))))

(assert (=> b!81582 (= lt!18759 (filter!18 (t!47838 (t!47838 ls!96)) lambda!9629))))

(assert (= (and b!81582 res!41748) b!81577))

(assert (= (and b!81582 c!20524) b!81576))

(assert (= (and b!81582 (not c!20524)) b!81578))

(assert (= (and d!55881 c!20525) b!81580))

(assert (= (and d!55881 (not c!20525)) b!81582))

(assert (= (and d!55881 res!41749) b!81579))

(assert (= (and b!81579 res!41747) b!81581))

(declare-fun b_lambda!16075 () Bool)

(assert (=> (not b_lambda!16075) (not b!81577)))

(declare-fun m!76494 () Bool)

(assert (=> b!81581 m!76494))

(declare-fun m!76496 () Bool)

(assert (=> b!81579 m!76496))

(declare-fun m!76498 () Bool)

(assert (=> b!81579 m!76498))

(declare-fun m!76500 () Bool)

(assert (=> b!81577 m!76500))

(declare-fun m!76502 () Bool)

(assert (=> d!55881 m!76502))

(declare-fun m!76504 () Bool)

(assert (=> d!55881 m!76504))

(declare-fun m!76506 () Bool)

(assert (=> b!81582 m!76506))

(assert (=> b!81466 d!55881))

(declare-fun bs!38890 () Bool)

(declare-fun d!55883 () Bool)

(assert (= bs!38890 (and d!55883 b!81517)))

(declare-fun lambda!9685 () Int)

(assert (=> bs!38890 (not (= lambda!9685 lambda!9663))))

(assert (=> bs!38890 (not (= lambda!9685 lambda!9662))))

(assert (=> bs!38890 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9685 lambda!9661))))

(declare-fun bs!38891 () Bool)

(assert (= bs!38891 (and d!55883 b!81462)))

(assert (=> bs!38891 (= lambda!9685 lambda!9627)))

(declare-fun bs!38892 () Bool)

(assert (= bs!38892 (and d!55883 b!81495)))

(assert (=> bs!38892 (not (= lambda!9685 lambda!9647))))

(declare-fun bs!38893 () Bool)

(assert (= bs!38893 (and d!55883 b!81460)))

(assert (=> bs!38893 (not (= lambda!9685 lambda!9628))))

(declare-fun bs!38894 () Bool)

(assert (= bs!38894 (and d!55883 b!81560)))

(assert (=> bs!38894 (not (= lambda!9685 lambda!9678))))

(assert (=> bs!38894 (not (= lambda!9685 lambda!9677))))

(assert (=> bs!38894 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9685 lambda!9676))))

(declare-fun bs!38895 () Bool)

(assert (= bs!38895 (and d!55883 b!81490)))

(assert (=> bs!38895 (not (= lambda!9685 lambda!9639))))

(assert (=> bs!38895 (not (= lambda!9685 lambda!9638))))

(assert (=> bs!38895 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9685 lambda!9637))))

(declare-fun bs!38896 () Bool)

(assert (= bs!38896 (and d!55883 b!81466)))

(assert (=> bs!38896 (not (= lambda!9685 lambda!9629))))

(declare-fun bs!38897 () Bool)

(assert (= bs!38897 (and d!55883 d!55861)))

(assert (=> bs!38897 (not (= lambda!9685 lambda!9646))))

(declare-fun bs!38898 () Bool)

(assert (= bs!38898 (and d!55883 b!81537)))

(assert (=> bs!38898 (not (= lambda!9685 lambda!9669))))

(assert (=> bs!38898 (not (= lambda!9685 lambda!9668))))

(assert (=> bs!38898 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9685 lambda!9667))))

(declare-fun bs!38899 () Bool)

(assert (= bs!38899 (and d!55883 b!81496)))

(assert (=> bs!38899 (not (= lambda!9685 lambda!9648))))

(declare-fun bs!38900 () Bool)

(assert (= bs!38900 (and d!55883 b!81522)))

(assert (=> bs!38900 (not (= lambda!9685 lambda!9666))))

(assert (=> bs!38900 (not (= lambda!9685 lambda!9665))))

(assert (=> bs!38900 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9685 lambda!9664))))

(declare-fun bs!38901 () Bool)

(assert (= bs!38901 (and d!55883 b!81468)))

(assert (=> bs!38901 (not (= lambda!9685 lambda!9630))))

(assert (=> d!55883 true))

(declare-fun bs!38902 () Bool)

(declare-fun b!81587 () Bool)

(assert (= bs!38902 (and b!81587 b!81517)))

(declare-fun lambda!9686 () Int)

(assert (=> bs!38902 (not (= lambda!9686 lambda!9663))))

(assert (=> bs!38902 (not (= lambda!9686 lambda!9662))))

(assert (=> bs!38902 (not (= lambda!9686 lambda!9661))))

(declare-fun bs!38903 () Bool)

(assert (= bs!38903 (and b!81587 b!81462)))

(assert (=> bs!38903 (not (= lambda!9686 lambda!9627))))

(declare-fun bs!38904 () Bool)

(assert (= bs!38904 (and b!81587 b!81495)))

(assert (=> bs!38904 (= lambda!9686 lambda!9647)))

(declare-fun bs!38905 () Bool)

(assert (= bs!38905 (and b!81587 b!81460)))

(assert (=> bs!38905 (not (= lambda!9686 lambda!9628))))

(declare-fun bs!38906 () Bool)

(assert (= bs!38906 (and b!81587 b!81560)))

(assert (=> bs!38906 (not (= lambda!9686 lambda!9678))))

(assert (=> bs!38906 (not (= lambda!9686 lambda!9677))))

(assert (=> bs!38906 (not (= lambda!9686 lambda!9676))))

(declare-fun bs!38907 () Bool)

(assert (= bs!38907 (and b!81587 b!81490)))

(assert (=> bs!38907 (not (= lambda!9686 lambda!9639))))

(assert (=> bs!38907 (not (= lambda!9686 lambda!9638))))

(assert (=> bs!38907 (not (= lambda!9686 lambda!9637))))

(declare-fun bs!38908 () Bool)

(assert (= bs!38908 (and b!81587 b!81466)))

(assert (=> bs!38908 (not (= lambda!9686 lambda!9629))))

(declare-fun bs!38909 () Bool)

(assert (= bs!38909 (and b!81587 d!55883)))

(assert (=> bs!38909 (not (= lambda!9686 lambda!9685))))

(declare-fun bs!38910 () Bool)

(assert (= bs!38910 (and b!81587 d!55861)))

(assert (=> bs!38910 (not (= lambda!9686 lambda!9646))))

(declare-fun bs!38911 () Bool)

(assert (= bs!38911 (and b!81587 b!81537)))

(assert (=> bs!38911 (not (= lambda!9686 lambda!9669))))

(assert (=> bs!38911 (not (= lambda!9686 lambda!9668))))

(assert (=> bs!38911 (not (= lambda!9686 lambda!9667))))

(declare-fun bs!38912 () Bool)

(assert (= bs!38912 (and b!81587 b!81496)))

(assert (=> bs!38912 (= lambda!9686 lambda!9648)))

(declare-fun bs!38913 () Bool)

(assert (= bs!38913 (and b!81587 b!81522)))

(assert (=> bs!38913 (not (= lambda!9686 lambda!9666))))

(assert (=> bs!38913 (not (= lambda!9686 lambda!9665))))

(assert (=> bs!38913 (not (= lambda!9686 lambda!9664))))

(declare-fun bs!38914 () Bool)

(assert (= bs!38914 (and b!81587 b!81468)))

(assert (=> bs!38914 (= lambda!9686 lambda!9630)))

(assert (=> b!81587 true))

(declare-fun bs!38915 () Bool)

(declare-fun b!81588 () Bool)

(assert (= bs!38915 (and b!81588 b!81517)))

(declare-fun lambda!9687 () Int)

(assert (=> bs!38915 (not (= lambda!9687 lambda!9663))))

(assert (=> bs!38915 (not (= lambda!9687 lambda!9662))))

(assert (=> bs!38915 (not (= lambda!9687 lambda!9661))))

(declare-fun bs!38916 () Bool)

(assert (= bs!38916 (and b!81588 b!81462)))

(assert (=> bs!38916 (not (= lambda!9687 lambda!9627))))

(declare-fun bs!38917 () Bool)

(assert (= bs!38917 (and b!81588 b!81495)))

(assert (=> bs!38917 (= lambda!9687 lambda!9647)))

(declare-fun bs!38918 () Bool)

(assert (= bs!38918 (and b!81588 b!81460)))

(assert (=> bs!38918 (not (= lambda!9687 lambda!9628))))

(declare-fun bs!38919 () Bool)

(assert (= bs!38919 (and b!81588 b!81560)))

(assert (=> bs!38919 (not (= lambda!9687 lambda!9678))))

(assert (=> bs!38919 (not (= lambda!9687 lambda!9677))))

(assert (=> bs!38919 (not (= lambda!9687 lambda!9676))))

(declare-fun bs!38920 () Bool)

(assert (= bs!38920 (and b!81588 b!81490)))

(assert (=> bs!38920 (not (= lambda!9687 lambda!9639))))

(assert (=> bs!38920 (not (= lambda!9687 lambda!9638))))

(assert (=> bs!38920 (not (= lambda!9687 lambda!9637))))

(declare-fun bs!38921 () Bool)

(assert (= bs!38921 (and b!81588 b!81466)))

(assert (=> bs!38921 (not (= lambda!9687 lambda!9629))))

(declare-fun bs!38922 () Bool)

(assert (= bs!38922 (and b!81588 d!55883)))

(assert (=> bs!38922 (not (= lambda!9687 lambda!9685))))

(declare-fun bs!38923 () Bool)

(assert (= bs!38923 (and b!81588 d!55861)))

(assert (=> bs!38923 (not (= lambda!9687 lambda!9646))))

(declare-fun bs!38924 () Bool)

(assert (= bs!38924 (and b!81588 b!81537)))

(assert (=> bs!38924 (not (= lambda!9687 lambda!9669))))

(assert (=> bs!38924 (not (= lambda!9687 lambda!9668))))

(assert (=> bs!38924 (not (= lambda!9687 lambda!9667))))

(declare-fun bs!38925 () Bool)

(assert (= bs!38925 (and b!81588 b!81587)))

(assert (=> bs!38925 (= lambda!9687 lambda!9686)))

(declare-fun bs!38926 () Bool)

(assert (= bs!38926 (and b!81588 b!81496)))

(assert (=> bs!38926 (= lambda!9687 lambda!9648)))

(declare-fun bs!38927 () Bool)

(assert (= bs!38927 (and b!81588 b!81522)))

(assert (=> bs!38927 (not (= lambda!9687 lambda!9666))))

(assert (=> bs!38927 (not (= lambda!9687 lambda!9665))))

(assert (=> bs!38927 (not (= lambda!9687 lambda!9664))))

(declare-fun bs!38928 () Bool)

(assert (= bs!38928 (and b!81588 b!81468)))

(assert (=> bs!38928 (= lambda!9687 lambda!9630)))

(assert (=> b!81588 true))

(declare-fun e!44225 () Bool)

(assert (=> d!55883 e!44225))

(declare-fun c!20528 () Bool)

(assert (=> d!55883 (= c!20528 (is-Cons!622 less!5))))

(assert (=> d!55883 (forall!20 less!5 lambda!9685)))

(assert (=> d!55883 (= (forall_lt_implies_le!0 less!5 (h!991 ls!96)) true)))

(assert (=> b!81587 (= e!44225 (forall!20 less!5 lambda!9686))))

(declare-fun lt!18763 () Bool)

(assert (=> b!81587 (= lt!18763 (forall_lt_implies_le!0 (t!47838 less!5) (h!991 ls!96)))))

(assert (=> b!81588 (= e!44225 (forall!20 less!5 lambda!9687))))

(assert (= (and d!55883 c!20528) b!81587))

(assert (= (and d!55883 (not c!20528)) b!81588))

(declare-fun m!76508 () Bool)

(assert (=> d!55883 m!76508))

(declare-fun m!76510 () Bool)

(assert (=> b!81587 m!76510))

(declare-fun m!76512 () Bool)

(assert (=> b!81587 m!76512))

(declare-fun m!76514 () Bool)

(assert (=> b!81588 m!76514))

(assert (=> b!81459 d!55883))

(declare-fun b!81589 () Bool)

(declare-fun e!44227 () List!665)

(declare-fun lt!18764 () List!665)

(assert (=> b!81589 (= e!44227 (Cons!622 (h!991 (t!47838 ls!96)) lt!18764))))

(declare-fun b!81590 () Bool)

(declare-fun e!44229 () Bool)

(assert (=> b!81590 (= e!44229 (dynLambda!984 lambda!9627 (h!991 (t!47838 ls!96))))))

(declare-fun b!81591 () Bool)

(assert (=> b!81591 (= e!44227 lt!18764)))

(declare-fun d!55885 () Bool)

(declare-fun e!44226 () Bool)

(assert (=> d!55885 e!44226))

(declare-fun res!41752 () Bool)

(assert (=> d!55885 (=> (not res!41752) (not e!44226))))

(declare-fun lt!18765 () List!665)

(assert (=> d!55885 (= res!41752 (<= (size!653 lt!18765) (size!653 (t!47838 ls!96))))))

(declare-fun e!44228 () List!665)

(assert (=> d!55885 (= lt!18765 e!44228)))

(declare-fun c!20530 () Bool)

(assert (=> d!55885 (= c!20530 (is-Nil!624 (t!47838 ls!96)))))

(assert (=> d!55885 (= (filter!18 (t!47838 ls!96) lambda!9627) lt!18765)))

(declare-fun b!81592 () Bool)

(declare-fun res!41750 () Bool)

(assert (=> b!81592 (=> (not res!41750) (not e!44226))))

(assert (=> b!81592 (= res!41750 (subset (content!124 lt!18765) (content!124 (t!47838 ls!96))))))

(declare-fun b!81593 () Bool)

(assert (=> b!81593 (= e!44228 Nil!624)))

(declare-fun b!81594 () Bool)

(assert (=> b!81594 (= e!44226 (forall!20 lt!18765 lambda!9627))))

(declare-fun b!81595 () Bool)

(assert (=> b!81595 (= e!44228 e!44227)))

(declare-fun c!20529 () Bool)

(assert (=> b!81595 (= c!20529 e!44229)))

(declare-fun res!41751 () Bool)

(assert (=> b!81595 (=> (not res!41751) (not e!44229))))

(assert (=> b!81595 (= res!41751 (is-Cons!622 (t!47838 ls!96)))))

(assert (=> b!81595 (= lt!18764 (filter!18 (t!47838 (t!47838 ls!96)) lambda!9627))))

(assert (= (and b!81595 res!41751) b!81590))

(assert (= (and b!81595 c!20529) b!81589))

(assert (= (and b!81595 (not c!20529)) b!81591))

(assert (= (and d!55885 c!20530) b!81593))

(assert (= (and d!55885 (not c!20530)) b!81595))

(assert (= (and d!55885 res!41752) b!81592))

(assert (= (and b!81592 res!41750) b!81594))

(declare-fun b_lambda!16077 () Bool)

(assert (=> (not b_lambda!16077) (not b!81590)))

(declare-fun m!76516 () Bool)

(assert (=> b!81594 m!76516))

(declare-fun m!76518 () Bool)

(assert (=> b!81592 m!76518))

(assert (=> b!81592 m!76498))

(declare-fun m!76520 () Bool)

(assert (=> b!81590 m!76520))

(declare-fun m!76522 () Bool)

(assert (=> d!55885 m!76522))

(assert (=> d!55885 m!76504))

(declare-fun m!76524 () Bool)

(assert (=> b!81595 m!76524))

(assert (=> b!81462 d!55885))

(declare-fun bs!38929 () Bool)

(declare-fun b!81598 () Bool)

(assert (= bs!38929 (and b!81598 b!81517)))

(declare-fun lambda!9688 () Int)

(assert (=> bs!38929 (not (= lambda!9688 lambda!9663))))

(assert (=> bs!38929 (not (= lambda!9688 lambda!9662))))

(assert (=> bs!38929 (= lambda!9688 lambda!9661)))

(declare-fun bs!38930 () Bool)

(assert (= bs!38930 (and b!81598 b!81462)))

(assert (=> bs!38930 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9688 lambda!9627))))

(declare-fun bs!38931 () Bool)

(assert (= bs!38931 (and b!81598 b!81495)))

(assert (=> bs!38931 (not (= lambda!9688 lambda!9647))))

(declare-fun bs!38932 () Bool)

(assert (= bs!38932 (and b!81598 b!81460)))

(assert (=> bs!38932 (not (= lambda!9688 lambda!9628))))

(declare-fun bs!38933 () Bool)

(assert (= bs!38933 (and b!81598 b!81560)))

(assert (=> bs!38933 (not (= lambda!9688 lambda!9678))))

(assert (=> bs!38933 (not (= lambda!9688 lambda!9677))))

(assert (=> bs!38933 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9688 lambda!9676))))

(declare-fun bs!38934 () Bool)

(assert (= bs!38934 (and b!81598 b!81490)))

(assert (=> bs!38934 (not (= lambda!9688 lambda!9639))))

(assert (=> bs!38934 (not (= lambda!9688 lambda!9638))))

(assert (=> bs!38934 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9688 lambda!9637))))

(declare-fun bs!38935 () Bool)

(assert (= bs!38935 (and b!81598 b!81466)))

(assert (=> bs!38935 (not (= lambda!9688 lambda!9629))))

(declare-fun bs!38936 () Bool)

(assert (= bs!38936 (and b!81598 d!55883)))

(assert (=> bs!38936 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9688 lambda!9685))))

(declare-fun bs!38937 () Bool)

(assert (= bs!38937 (and b!81598 d!55861)))

(assert (=> bs!38937 (not (= lambda!9688 lambda!9646))))

(declare-fun bs!38938 () Bool)

(assert (= bs!38938 (and b!81598 b!81537)))

(assert (=> bs!38938 (not (= lambda!9688 lambda!9669))))

(assert (=> bs!38938 (not (= lambda!9688 lambda!9668))))

(assert (=> bs!38938 (= lambda!9688 lambda!9667)))

(declare-fun bs!38939 () Bool)

(assert (= bs!38939 (and b!81598 b!81587)))

(assert (=> bs!38939 (not (= lambda!9688 lambda!9686))))

(declare-fun bs!38940 () Bool)

(assert (= bs!38940 (and b!81598 b!81496)))

(assert (=> bs!38940 (not (= lambda!9688 lambda!9648))))

(declare-fun bs!38941 () Bool)

(assert (= bs!38941 (and b!81598 b!81522)))

(assert (=> bs!38941 (not (= lambda!9688 lambda!9666))))

(assert (=> bs!38941 (not (= lambda!9688 lambda!9665))))

(assert (=> bs!38941 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9688 lambda!9664))))

(declare-fun bs!38942 () Bool)

(assert (= bs!38942 (and b!81598 b!81588)))

(assert (=> bs!38942 (not (= lambda!9688 lambda!9687))))

(declare-fun bs!38943 () Bool)

(assert (= bs!38943 (and b!81598 b!81468)))

(assert (=> bs!38943 (not (= lambda!9688 lambda!9630))))

(assert (=> b!81598 true))

(declare-fun lambda!9689 () Int)

(assert (=> bs!38929 (not (= lambda!9689 lambda!9663))))

(assert (=> bs!38929 (= lambda!9689 lambda!9662)))

(assert (=> bs!38929 (not (= lambda!9689 lambda!9661))))

(assert (=> bs!38930 (not (= lambda!9689 lambda!9627))))

(assert (=> bs!38931 (not (= lambda!9689 lambda!9647))))

(assert (=> bs!38932 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9689 lambda!9628))))

(assert (=> bs!38933 (not (= lambda!9689 lambda!9678))))

(assert (=> bs!38933 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9689 lambda!9677))))

(assert (=> bs!38933 (not (= lambda!9689 lambda!9676))))

(assert (=> bs!38934 (not (= lambda!9689 lambda!9639))))

(assert (=> bs!38934 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9689 lambda!9638))))

(assert (=> bs!38934 (not (= lambda!9689 lambda!9637))))

(assert (=> bs!38935 (not (= lambda!9689 lambda!9629))))

(assert (=> bs!38936 (not (= lambda!9689 lambda!9685))))

(assert (=> bs!38937 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9689 lambda!9646))))

(assert (=> bs!38938 (not (= lambda!9689 lambda!9669))))

(assert (=> bs!38938 (= lambda!9689 lambda!9668)))

(assert (=> bs!38938 (not (= lambda!9689 lambda!9667))))

(assert (=> bs!38939 (not (= lambda!9689 lambda!9686))))

(assert (=> bs!38940 (not (= lambda!9689 lambda!9648))))

(assert (=> bs!38941 (not (= lambda!9689 lambda!9666))))

(assert (=> bs!38941 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9689 lambda!9665))))

(assert (=> bs!38941 (not (= lambda!9689 lambda!9664))))

(assert (=> b!81598 (not (= lambda!9689 lambda!9688))))

(assert (=> bs!38942 (not (= lambda!9689 lambda!9687))))

(assert (=> bs!38943 (not (= lambda!9689 lambda!9630))))

(assert (=> b!81598 true))

(declare-fun lambda!9690 () Int)

(assert (=> bs!38929 (= lambda!9690 lambda!9663)))

(assert (=> bs!38929 (not (= lambda!9690 lambda!9662))))

(assert (=> bs!38929 (not (= lambda!9690 lambda!9661))))

(assert (=> bs!38930 (not (= lambda!9690 lambda!9627))))

(assert (=> bs!38931 (not (= lambda!9690 lambda!9647))))

(assert (=> bs!38932 (not (= lambda!9690 lambda!9628))))

(assert (=> bs!38933 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9690 lambda!9678))))

(assert (=> bs!38933 (not (= lambda!9690 lambda!9677))))

(assert (=> bs!38933 (not (= lambda!9690 lambda!9676))))

(assert (=> bs!38934 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9690 lambda!9639))))

(assert (=> bs!38934 (not (= lambda!9690 lambda!9638))))

(assert (=> bs!38934 (not (= lambda!9690 lambda!9637))))

(assert (=> bs!38935 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9690 lambda!9629))))

(assert (=> bs!38936 (not (= lambda!9690 lambda!9685))))

(assert (=> bs!38937 (not (= lambda!9690 lambda!9646))))

(assert (=> bs!38938 (= lambda!9690 lambda!9669)))

(assert (=> bs!38938 (not (= lambda!9690 lambda!9668))))

(assert (=> bs!38938 (not (= lambda!9690 lambda!9667))))

(assert (=> bs!38939 (not (= lambda!9690 lambda!9686))))

(assert (=> bs!38940 (not (= lambda!9690 lambda!9648))))

(assert (=> bs!38941 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9690 lambda!9666))))

(assert (=> bs!38941 (not (= lambda!9690 lambda!9665))))

(assert (=> bs!38941 (not (= lambda!9690 lambda!9664))))

(assert (=> b!81598 (not (= lambda!9690 lambda!9689))))

(assert (=> b!81598 (not (= lambda!9690 lambda!9688))))

(assert (=> bs!38942 (not (= lambda!9690 lambda!9687))))

(assert (=> bs!38943 (not (= lambda!9690 lambda!9630))))

(assert (=> b!81598 true))

(declare-fun b!81596 () Bool)

(declare-fun e!44234 () Bool)

(assert (=> b!81596 (= e!44234 (filter_preserves_forall!0 (t!47838 less!5) lambda!9689 lambda!9627))))

(declare-fun lt!18769 () List!665)

(declare-fun b!81597 () Bool)

(declare-fun lt!18771 () List!665)

(declare-fun e!44232 () Bool)

(declare-fun lt!18766 () List!665)

(assert (=> b!81597 (= e!44232 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18771) lt!18766) (quickSort!0 lt!18769) lambda!9627))))

(declare-fun d!55887 () Bool)

(assert (=> d!55887 (forall!20 (quickSort!0 less!5) lambda!9627)))

(declare-fun lt!18768 () Bool)

(declare-fun e!44230 () Bool)

(assert (=> d!55887 (= lt!18768 e!44230)))

(declare-fun res!41755 () Bool)

(assert (=> d!55887 (=> res!41755 e!44230)))

(assert (=> d!55887 (= res!41755 (or (is-Nil!624 less!5) (and (is-Cons!622 less!5) (is-Nil!624 (t!47838 less!5)))))))

(assert (=> d!55887 (forall!20 less!5 lambda!9627)))

(assert (=> d!55887 (= (sort_preserves_forall!0 less!5 lambda!9627) true)))

(assert (=> b!81598 (= e!44230 e!44232)))

(declare-fun res!41756 () Bool)

(assert (=> b!81598 (=> (not res!41756) (not e!44232))))

(assert (=> b!81598 (= res!41756 (append_preserves_forall!0 (quickSort!0 lt!18771) lt!18766 lambda!9627))))

(declare-fun lt!18767 () Bool)

(declare-fun e!44231 () Bool)

(assert (=> b!81598 (= lt!18767 e!44231)))

(declare-fun res!41754 () Bool)

(assert (=> b!81598 (=> (not res!41754) (not e!44231))))

(assert (=> b!81598 (= res!41754 (sort_preserves_forall!0 lt!18771 lambda!9627))))

(declare-fun lt!18770 () Bool)

(declare-fun e!44233 () Bool)

(assert (=> b!81598 (= lt!18770 e!44233)))

(declare-fun res!41753 () Bool)

(assert (=> b!81598 (=> (not res!41753) (not e!44233))))

(assert (=> b!81598 (= res!41753 e!44234)))

(declare-fun res!41757 () Bool)

(assert (=> b!81598 (=> (not res!41757) (not e!44234))))

(assert (=> b!81598 (= res!41757 (filter_preserves_forall!0 (t!47838 less!5) lambda!9688 lambda!9627))))

(assert (=> b!81598 (= lt!18769 (filter!18 (t!47838 less!5) lambda!9690))))

(assert (=> b!81598 (= lt!18766 (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9689)))))

(assert (=> b!81598 (= lt!18771 (filter!18 (t!47838 less!5) lambda!9688))))

(declare-fun b!81599 () Bool)

(assert (=> b!81599 (= e!44231 (sort_preserves_forall!0 lt!18769 lambda!9627))))

(declare-fun b!81600 () Bool)

(assert (=> b!81600 (= e!44233 (filter_preserves_forall!0 (t!47838 less!5) lambda!9690 lambda!9627))))

(assert (= (and d!55887 (not res!41755)) b!81598))

(assert (= (and b!81598 res!41757) b!81596))

(assert (= (and b!81598 res!41753) b!81600))

(assert (= (and b!81598 res!41754) b!81599))

(assert (= (and b!81598 res!41756) b!81597))

(declare-fun m!76526 () Bool)

(assert (=> b!81600 m!76526))

(declare-fun m!76528 () Bool)

(assert (=> b!81599 m!76528))

(declare-fun m!76530 () Bool)

(assert (=> b!81597 m!76530))

(assert (=> b!81597 m!76530))

(declare-fun m!76532 () Bool)

(assert (=> b!81597 m!76532))

(declare-fun m!76534 () Bool)

(assert (=> b!81597 m!76534))

(assert (=> b!81597 m!76532))

(assert (=> b!81597 m!76534))

(declare-fun m!76536 () Bool)

(assert (=> b!81597 m!76536))

(declare-fun m!76538 () Bool)

(assert (=> b!81596 m!76538))

(declare-fun m!76540 () Bool)

(assert (=> b!81598 m!76540))

(declare-fun m!76542 () Bool)

(assert (=> b!81598 m!76542))

(assert (=> b!81598 m!76530))

(declare-fun m!76544 () Bool)

(assert (=> b!81598 m!76544))

(declare-fun m!76546 () Bool)

(assert (=> b!81598 m!76546))

(assert (=> b!81598 m!76530))

(declare-fun m!76548 () Bool)

(assert (=> b!81598 m!76548))

(declare-fun m!76550 () Bool)

(assert (=> b!81598 m!76550))

(assert (=> d!55887 m!76310))

(assert (=> d!55887 m!76310))

(declare-fun m!76552 () Bool)

(assert (=> d!55887 m!76552))

(declare-fun m!76554 () Bool)

(assert (=> d!55887 m!76554))

(assert (=> b!81469 d!55887))

(declare-fun bs!38944 () Bool)

(declare-fun d!55889 () Bool)

(assert (= bs!38944 (and d!55889 b!81517)))

(declare-fun lambda!9693 () Int)

(assert (=> bs!38944 (not (= lambda!9693 lambda!9663))))

(assert (=> bs!38944 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9693 lambda!9662))))

(assert (=> bs!38944 (not (= lambda!9693 lambda!9661))))

(declare-fun bs!38945 () Bool)

(assert (= bs!38945 (and d!55889 b!81462)))

(assert (=> bs!38945 (not (= lambda!9693 lambda!9627))))

(declare-fun bs!38946 () Bool)

(assert (= bs!38946 (and d!55889 b!81495)))

(assert (=> bs!38946 (not (= lambda!9693 lambda!9647))))

(declare-fun bs!38947 () Bool)

(assert (= bs!38947 (and d!55889 b!81460)))

(assert (=> bs!38947 (= lambda!9693 lambda!9628)))

(declare-fun bs!38948 () Bool)

(assert (= bs!38948 (and d!55889 b!81560)))

(assert (=> bs!38948 (not (= lambda!9693 lambda!9678))))

(assert (=> bs!38948 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9693 lambda!9677))))

(assert (=> bs!38948 (not (= lambda!9693 lambda!9676))))

(declare-fun bs!38949 () Bool)

(assert (= bs!38949 (and d!55889 b!81490)))

(assert (=> bs!38949 (not (= lambda!9693 lambda!9639))))

(assert (=> bs!38949 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9693 lambda!9638))))

(assert (=> bs!38949 (not (= lambda!9693 lambda!9637))))

(declare-fun bs!38950 () Bool)

(assert (= bs!38950 (and d!55889 b!81466)))

(assert (=> bs!38950 (not (= lambda!9693 lambda!9629))))

(declare-fun bs!38951 () Bool)

(assert (= bs!38951 (and d!55889 d!55883)))

(assert (=> bs!38951 (not (= lambda!9693 lambda!9685))))

(declare-fun bs!38952 () Bool)

(assert (= bs!38952 (and d!55889 d!55861)))

(assert (=> bs!38952 (= lambda!9693 lambda!9646)))

(declare-fun bs!38953 () Bool)

(assert (= bs!38953 (and d!55889 b!81537)))

(assert (=> bs!38953 (not (= lambda!9693 lambda!9669))))

(assert (=> bs!38953 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9693 lambda!9668))))

(assert (=> bs!38953 (not (= lambda!9693 lambda!9667))))

(declare-fun bs!38954 () Bool)

(assert (= bs!38954 (and d!55889 b!81587)))

(assert (=> bs!38954 (not (= lambda!9693 lambda!9686))))

(declare-fun bs!38955 () Bool)

(assert (= bs!38955 (and d!55889 b!81496)))

(assert (=> bs!38955 (not (= lambda!9693 lambda!9648))))

(declare-fun bs!38956 () Bool)

(assert (= bs!38956 (and d!55889 b!81522)))

(assert (=> bs!38956 (not (= lambda!9693 lambda!9666))))

(assert (=> bs!38956 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9693 lambda!9665))))

(assert (=> bs!38956 (not (= lambda!9693 lambda!9664))))

(declare-fun bs!38957 () Bool)

(assert (= bs!38957 (and d!55889 b!81598)))

(assert (=> bs!38957 (not (= lambda!9693 lambda!9690))))

(assert (=> bs!38957 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9693 lambda!9689))))

(assert (=> bs!38957 (not (= lambda!9693 lambda!9688))))

(declare-fun bs!38958 () Bool)

(assert (= bs!38958 (and d!55889 b!81588)))

(assert (=> bs!38958 (not (= lambda!9693 lambda!9687))))

(declare-fun bs!38959 () Bool)

(assert (= bs!38959 (and d!55889 b!81468)))

(assert (=> bs!38959 (not (= lambda!9693 lambda!9630))))

(assert (=> d!55889 true))

(assert (=> d!55889 (isSorted!1 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693)))))

(declare-datatypes () ((Unit!1178 (Unit!1179))))

(declare-fun lt!18774 () Unit!1178)

(declare-fun Unit!1180 () Unit!1178)

(assert (=> d!55889 (= lt!18774 Unit!1180)))

(declare-fun filter_equal_sorted!0 (List!665 Int) Bool)

(assert (=> d!55889 (filter_equal_sorted!0 (t!47838 ls!96) (h!991 ls!96))))

(assert (=> d!55889 (= (cons_filter_equal_sorted!0 (t!47838 ls!96) (h!991 ls!96)) true)))

(declare-fun bs!38960 () Bool)

(assert (= bs!38960 d!55889))

(declare-fun m!76556 () Bool)

(assert (=> bs!38960 m!76556))

(declare-fun m!76558 () Bool)

(assert (=> bs!38960 m!76558))

(declare-fun m!76560 () Bool)

(assert (=> bs!38960 m!76560))

(assert (=> b!81450 d!55889))

(declare-fun d!55891 () Bool)

(assert (=> d!55891 (= (isEmpty!677 l2!437) (is-Nil!624 l2!437))))

(assert (=> b!81454 d!55891))

(declare-fun b!81613 () Bool)

(declare-fun e!44242 () Bool)

(declare-fun e!44241 () Bool)

(assert (=> b!81613 (= e!44242 e!44241)))

(declare-fun res!41767 () Bool)

(assert (=> b!81613 (=> res!41767 e!44241)))

(assert (=> b!81613 (= res!41767 (not (forall!20 (++!73 (quickSort!0 less!5) equal!10) lambda!9630)))))

(declare-fun lt!18777 () Bool)

(assert (=> b!81613 (= lt!18777 (forall_last!0 (t!47838 (++!73 (quickSort!0 less!5) equal!10)) lambda!9630))))

(declare-fun b!81614 () Bool)

(declare-fun res!41766 () Bool)

(declare-fun e!44243 () Bool)

(assert (=> b!81614 (=> res!41766 e!44243)))

(assert (=> b!81614 (= res!41766 (isEmpty!677 (++!73 (quickSort!0 less!5) equal!10)))))

(declare-fun b!81615 () Bool)

(assert (=> b!81615 (= e!44242 e!44243)))

(declare-fun res!41769 () Bool)

(assert (=> b!81615 (=> res!41769 e!44243)))

(assert (=> b!81615 (= res!41769 (not (forall!20 (++!73 (quickSort!0 less!5) equal!10) lambda!9630)))))

(declare-fun b!81616 () Bool)

(declare-fun res!41768 () Bool)

(assert (=> b!81616 (=> res!41768 e!44241)))

(assert (=> b!81616 (= res!41768 (isEmpty!677 (++!73 (quickSort!0 less!5) equal!10)))))

(declare-fun d!55893 () Bool)

(assert (=> d!55893 e!44242))

(declare-fun c!20533 () Bool)

(assert (=> d!55893 (= c!20533 (is-Cons!622 (++!73 (quickSort!0 less!5) equal!10)))))

(assert (=> d!55893 (= (forall_last!0 (++!73 (quickSort!0 less!5) equal!10) lambda!9630) true)))

(declare-fun b!81617 () Bool)

(assert (=> b!81617 (= e!44243 (dynLambda!984 lambda!9630 (last!17 (++!73 (quickSort!0 less!5) equal!10))))))

(declare-fun b!81618 () Bool)

(assert (=> b!81618 (= e!44241 (dynLambda!984 lambda!9630 (last!17 (++!73 (quickSort!0 less!5) equal!10))))))

(assert (= (and b!81613 (not res!41767)) b!81616))

(assert (= (and b!81616 (not res!41768)) b!81618))

(assert (= (and b!81615 (not res!41769)) b!81614))

(assert (= (and b!81614 (not res!41766)) b!81617))

(assert (= (and d!55893 c!20533) b!81613))

(assert (= (and d!55893 (not c!20533)) b!81615))

(declare-fun b_lambda!16079 () Bool)

(assert (=> (not b_lambda!16079) (not b!81617)))

(declare-fun b_lambda!16081 () Bool)

(assert (=> (not b_lambda!16081) (not b!81618)))

(assert (=> b!81613 m!76324))

(assert (=> b!81613 m!76442))

(declare-fun m!76562 () Bool)

(assert (=> b!81613 m!76562))

(assert (=> b!81617 m!76324))

(declare-fun m!76564 () Bool)

(assert (=> b!81617 m!76564))

(assert (=> b!81617 m!76564))

(declare-fun m!76566 () Bool)

(assert (=> b!81617 m!76566))

(assert (=> b!81616 m!76324))

(declare-fun m!76568 () Bool)

(assert (=> b!81616 m!76568))

(assert (=> b!81615 m!76324))

(assert (=> b!81615 m!76442))

(assert (=> b!81614 m!76324))

(assert (=> b!81614 m!76568))

(assert (=> b!81618 m!76324))

(assert (=> b!81618 m!76564))

(assert (=> b!81618 m!76564))

(assert (=> b!81618 m!76566))

(assert (=> b!81457 d!55893))

(declare-fun b!81629 () Bool)

(declare-fun res!41775 () Bool)

(declare-fun e!44249 () Bool)

(assert (=> b!81629 (=> (not res!41775) (not e!44249))))

(declare-fun lt!18780 () List!665)

(assert (=> b!81629 (= res!41775 (= (size!653 lt!18780) (+ (size!653 (quickSort!0 less!5)) (size!653 equal!10))))))

(declare-fun b!81628 () Bool)

(declare-fun e!44248 () List!665)

(assert (=> b!81628 (= e!44248 (Cons!622 (h!991 (quickSort!0 less!5)) (++!73 (t!47838 (quickSort!0 less!5)) equal!10)))))

(declare-fun b!81630 () Bool)

(assert (=> b!81630 (= e!44249 (or (not (= equal!10 Nil!624)) (= lt!18780 (quickSort!0 less!5))))))

(declare-fun b!81627 () Bool)

(assert (=> b!81627 (= e!44248 equal!10)))

(declare-fun d!55895 () Bool)

(assert (=> d!55895 e!44249))

(declare-fun res!41776 () Bool)

(assert (=> d!55895 (=> (not res!41776) (not e!44249))))

(assert (=> d!55895 (= res!41776 (= (content!124 lt!18780) (union (content!124 (quickSort!0 less!5)) (content!124 equal!10))))))

(assert (=> d!55895 (= lt!18780 e!44248)))

(declare-fun c!20536 () Bool)

(assert (=> d!55895 (= c!20536 (is-Nil!624 (quickSort!0 less!5)))))

(assert (=> d!55895 (= (++!73 (quickSort!0 less!5) equal!10) lt!18780)))

(assert (= (and d!55895 c!20536) b!81627))

(assert (= (and d!55895 (not c!20536)) b!81628))

(assert (= (and d!55895 res!41776) b!81629))

(assert (= (and b!81629 res!41775) b!81630))

(declare-fun m!76570 () Bool)

(assert (=> b!81629 m!76570))

(assert (=> b!81629 m!76310))

(declare-fun m!76572 () Bool)

(assert (=> b!81629 m!76572))

(declare-fun m!76574 () Bool)

(assert (=> b!81629 m!76574))

(declare-fun m!76576 () Bool)

(assert (=> b!81628 m!76576))

(declare-fun m!76578 () Bool)

(assert (=> d!55895 m!76578))

(assert (=> d!55895 m!76310))

(declare-fun m!76580 () Bool)

(assert (=> d!55895 m!76580))

(declare-fun m!76582 () Bool)

(assert (=> d!55895 m!76582))

(assert (=> b!81457 d!55895))

(assert (=> b!81457 d!55875))

(declare-fun d!55897 () Bool)

(declare-fun res!41777 () Bool)

(declare-fun e!44250 () Bool)

(assert (=> d!55897 (=> res!41777 e!44250)))

(assert (=> d!55897 (= res!41777 (not (and (is-Cons!622 l2!437) (is-Cons!622 (t!47838 l2!437)))))))

(assert (=> d!55897 (= (isSorted!1 l2!437) e!44250)))

(declare-fun b!81631 () Bool)

(declare-fun e!44251 () Bool)

(assert (=> b!81631 (= e!44250 e!44251)))

(declare-fun res!41778 () Bool)

(assert (=> b!81631 (=> (not res!41778) (not e!44251))))

(assert (=> b!81631 (= res!41778 (<= (h!991 l2!437) (h!991 (t!47838 l2!437))))))

(declare-fun b!81632 () Bool)

(assert (=> b!81632 (= e!44251 (isSorted!1 (t!47838 l2!437)))))

(assert (= (and d!55897 (not res!41777)) b!81631))

(assert (= (and b!81631 res!41778) b!81632))

(declare-fun m!76584 () Bool)

(assert (=> b!81632 m!76584))

(assert (=> b!81461 d!55897))

(declare-fun bs!38961 () Bool)

(declare-fun b!81633 () Bool)

(assert (= bs!38961 (and b!81633 b!81517)))

(declare-fun lambda!9694 () Int)

(assert (=> bs!38961 (not (= lambda!9694 lambda!9663))))

(assert (=> bs!38961 (not (= lambda!9694 lambda!9662))))

(assert (=> bs!38961 (= lambda!9694 lambda!9661)))

(declare-fun bs!38962 () Bool)

(assert (= bs!38962 (and b!81633 b!81462)))

(assert (=> bs!38962 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9694 lambda!9627))))

(declare-fun bs!38963 () Bool)

(assert (= bs!38963 (and b!81633 b!81495)))

(assert (=> bs!38963 (not (= lambda!9694 lambda!9647))))

(declare-fun bs!38964 () Bool)

(assert (= bs!38964 (and b!81633 b!81460)))

(assert (=> bs!38964 (not (= lambda!9694 lambda!9628))))

(declare-fun bs!38965 () Bool)

(assert (= bs!38965 (and b!81633 b!81560)))

(assert (=> bs!38965 (not (= lambda!9694 lambda!9678))))

(assert (=> bs!38965 (not (= lambda!9694 lambda!9677))))

(assert (=> bs!38965 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9694 lambda!9676))))

(declare-fun bs!38966 () Bool)

(assert (= bs!38966 (and b!81633 b!81490)))

(assert (=> bs!38966 (not (= lambda!9694 lambda!9639))))

(assert (=> bs!38966 (not (= lambda!9694 lambda!9638))))

(assert (=> bs!38966 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9694 lambda!9637))))

(declare-fun bs!38967 () Bool)

(assert (= bs!38967 (and b!81633 b!81466)))

(assert (=> bs!38967 (not (= lambda!9694 lambda!9629))))

(declare-fun bs!38968 () Bool)

(assert (= bs!38968 (and b!81633 d!55883)))

(assert (=> bs!38968 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9694 lambda!9685))))

(declare-fun bs!38969 () Bool)

(assert (= bs!38969 (and b!81633 d!55861)))

(assert (=> bs!38969 (not (= lambda!9694 lambda!9646))))

(declare-fun bs!38970 () Bool)

(assert (= bs!38970 (and b!81633 b!81537)))

(assert (=> bs!38970 (not (= lambda!9694 lambda!9669))))

(assert (=> bs!38970 (not (= lambda!9694 lambda!9668))))

(assert (=> bs!38970 (= lambda!9694 lambda!9667)))

(declare-fun bs!38971 () Bool)

(assert (= bs!38971 (and b!81633 b!81587)))

(assert (=> bs!38971 (not (= lambda!9694 lambda!9686))))

(declare-fun bs!38972 () Bool)

(assert (= bs!38972 (and b!81633 b!81496)))

(assert (=> bs!38972 (not (= lambda!9694 lambda!9648))))

(declare-fun bs!38973 () Bool)

(assert (= bs!38973 (and b!81633 d!55889)))

(assert (=> bs!38973 (not (= lambda!9694 lambda!9693))))

(declare-fun bs!38974 () Bool)

(assert (= bs!38974 (and b!81633 b!81522)))

(assert (=> bs!38974 (not (= lambda!9694 lambda!9666))))

(assert (=> bs!38974 (not (= lambda!9694 lambda!9665))))

(assert (=> bs!38974 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9694 lambda!9664))))

(declare-fun bs!38975 () Bool)

(assert (= bs!38975 (and b!81633 b!81598)))

(assert (=> bs!38975 (not (= lambda!9694 lambda!9690))))

(assert (=> bs!38975 (not (= lambda!9694 lambda!9689))))

(assert (=> bs!38975 (= lambda!9694 lambda!9688)))

(declare-fun bs!38976 () Bool)

(assert (= bs!38976 (and b!81633 b!81588)))

(assert (=> bs!38976 (not (= lambda!9694 lambda!9687))))

(declare-fun bs!38977 () Bool)

(assert (= bs!38977 (and b!81633 b!81468)))

(assert (=> bs!38977 (not (= lambda!9694 lambda!9630))))

(assert (=> b!81633 true))

(declare-fun lambda!9695 () Int)

(assert (=> bs!38961 (not (= lambda!9695 lambda!9663))))

(assert (=> bs!38961 (= lambda!9695 lambda!9662)))

(assert (=> bs!38961 (not (= lambda!9695 lambda!9661))))

(assert (=> bs!38962 (not (= lambda!9695 lambda!9627))))

(assert (=> bs!38963 (not (= lambda!9695 lambda!9647))))

(assert (=> bs!38964 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9695 lambda!9628))))

(assert (=> bs!38965 (not (= lambda!9695 lambda!9678))))

(assert (=> bs!38965 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9695 lambda!9677))))

(assert (=> bs!38965 (not (= lambda!9695 lambda!9676))))

(assert (=> bs!38966 (not (= lambda!9695 lambda!9639))))

(assert (=> bs!38966 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9695 lambda!9638))))

(assert (=> bs!38966 (not (= lambda!9695 lambda!9637))))

(assert (=> bs!38967 (not (= lambda!9695 lambda!9629))))

(assert (=> bs!38968 (not (= lambda!9695 lambda!9685))))

(assert (=> bs!38969 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9695 lambda!9646))))

(assert (=> bs!38970 (not (= lambda!9695 lambda!9669))))

(assert (=> bs!38970 (= lambda!9695 lambda!9668)))

(assert (=> bs!38970 (not (= lambda!9695 lambda!9667))))

(assert (=> bs!38971 (not (= lambda!9695 lambda!9686))))

(assert (=> bs!38972 (not (= lambda!9695 lambda!9648))))

(assert (=> bs!38973 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9695 lambda!9693))))

(assert (=> bs!38974 (not (= lambda!9695 lambda!9666))))

(assert (=> bs!38974 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9695 lambda!9665))))

(assert (=> bs!38974 (not (= lambda!9695 lambda!9664))))

(assert (=> bs!38975 (not (= lambda!9695 lambda!9690))))

(assert (=> bs!38975 (= lambda!9695 lambda!9689)))

(assert (=> bs!38975 (not (= lambda!9695 lambda!9688))))

(assert (=> bs!38976 (not (= lambda!9695 lambda!9687))))

(assert (=> bs!38977 (not (= lambda!9695 lambda!9630))))

(assert (=> b!81633 (not (= lambda!9695 lambda!9694))))

(assert (=> b!81633 true))

(declare-fun lambda!9696 () Int)

(assert (=> bs!38961 (= lambda!9696 lambda!9663)))

(assert (=> bs!38961 (not (= lambda!9696 lambda!9662))))

(assert (=> bs!38961 (not (= lambda!9696 lambda!9661))))

(assert (=> bs!38962 (not (= lambda!9696 lambda!9627))))

(assert (=> bs!38963 (not (= lambda!9696 lambda!9647))))

(assert (=> bs!38964 (not (= lambda!9696 lambda!9628))))

(assert (=> bs!38965 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9696 lambda!9678))))

(assert (=> bs!38965 (not (= lambda!9696 lambda!9677))))

(assert (=> bs!38965 (not (= lambda!9696 lambda!9676))))

(assert (=> bs!38966 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9696 lambda!9639))))

(assert (=> bs!38966 (not (= lambda!9696 lambda!9638))))

(assert (=> bs!38966 (not (= lambda!9696 lambda!9637))))

(assert (=> bs!38967 (= (= (h!991 less!5) (h!991 ls!96)) (= lambda!9696 lambda!9629))))

(assert (=> bs!38968 (not (= lambda!9696 lambda!9685))))

(assert (=> bs!38969 (not (= lambda!9696 lambda!9646))))

(assert (=> bs!38970 (= lambda!9696 lambda!9669)))

(assert (=> bs!38970 (not (= lambda!9696 lambda!9668))))

(assert (=> bs!38970 (not (= lambda!9696 lambda!9667))))

(assert (=> bs!38971 (not (= lambda!9696 lambda!9686))))

(assert (=> bs!38972 (not (= lambda!9696 lambda!9648))))

(assert (=> bs!38973 (not (= lambda!9696 lambda!9693))))

(assert (=> bs!38974 (= (= (h!991 less!5) (h!991 more!5)) (= lambda!9696 lambda!9666))))

(assert (=> bs!38974 (not (= lambda!9696 lambda!9665))))

(assert (=> bs!38974 (not (= lambda!9696 lambda!9664))))

(assert (=> bs!38975 (= lambda!9696 lambda!9690)))

(assert (=> bs!38975 (not (= lambda!9696 lambda!9689))))

(assert (=> bs!38975 (not (= lambda!9696 lambda!9688))))

(assert (=> bs!38976 (not (= lambda!9696 lambda!9687))))

(assert (=> bs!38977 (not (= lambda!9696 lambda!9630))))

(assert (=> b!81633 (not (= lambda!9696 lambda!9695))))

(assert (=> b!81633 (not (= lambda!9696 lambda!9694))))

(assert (=> b!81633 true))

(declare-fun d!55899 () Bool)

(assert (=> d!55899 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18784 () Bool)

(declare-fun e!44253 () Bool)

(assert (=> d!55899 (= lt!18784 e!44253)))

(declare-fun res!41780 () Bool)

(assert (=> d!55899 (=> res!41780 e!44253)))

(assert (=> d!55899 (= res!41780 (or (is-Nil!624 less!5) (and (is-Cons!622 less!5) (is-Nil!624 (t!47838 less!5)))))))

(assert (=> d!55899 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!44252 () Bool)

(assert (=> b!81633 (= e!44253 e!44252)))

(declare-fun res!41779 () Bool)

(assert (=> b!81633 (=> (not res!41779) (not e!44252))))

(declare-fun lt!18782 () List!665)

(declare-fun lt!18783 () List!665)

(assert (=> b!81633 (= res!41779 (append_sorted!0 (quickSort!0 lt!18782) lt!18783))))

(declare-fun lt!18781 () List!665)

(assert (=> b!81633 (= lt!18781 (filter!18 (t!47838 less!5) lambda!9696))))

(assert (=> b!81633 (= lt!18783 (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9695)))))

(assert (=> b!81633 (= lt!18782 (filter!18 (t!47838 less!5) lambda!9694))))

(declare-fun b!81634 () Bool)

(assert (=> b!81634 (= e!44252 (append_sorted!0 (++!73 (quickSort!0 lt!18782) lt!18783) (quickSort!0 lt!18781)))))

(assert (= (and d!55899 (not res!41780)) b!81633))

(assert (= (and b!81633 res!41779) b!81634))

(assert (=> d!55899 m!76310))

(assert (=> d!55899 m!76310))

(assert (=> d!55899 m!76474))

(declare-fun m!76586 () Bool)

(assert (=> b!81633 m!76586))

(declare-fun m!76588 () Bool)

(assert (=> b!81633 m!76588))

(declare-fun m!76590 () Bool)

(assert (=> b!81633 m!76590))

(assert (=> b!81633 m!76588))

(declare-fun m!76592 () Bool)

(assert (=> b!81633 m!76592))

(declare-fun m!76594 () Bool)

(assert (=> b!81633 m!76594))

(assert (=> b!81634 m!76588))

(assert (=> b!81634 m!76588))

(declare-fun m!76596 () Bool)

(assert (=> b!81634 m!76596))

(declare-fun m!76598 () Bool)

(assert (=> b!81634 m!76598))

(assert (=> b!81634 m!76596))

(assert (=> b!81634 m!76598))

(declare-fun m!76600 () Bool)

(assert (=> b!81634 m!76600))

(assert (=> b!81470 d!55899))

(declare-fun b!81635 () Bool)

(declare-fun e!44255 () Bool)

(declare-fun e!44254 () Bool)

(assert (=> b!81635 (= e!44255 e!44254)))

(declare-fun res!41782 () Bool)

(assert (=> b!81635 (=> res!41782 e!44254)))

(assert (=> b!81635 (= res!41782 (not (forall!20 (quickSort!0 less!5) lambda!9627)))))

(declare-fun lt!18785 () Bool)

(assert (=> b!81635 (= lt!18785 (forall_last!0 (t!47838 (quickSort!0 less!5)) lambda!9627))))

(declare-fun b!81636 () Bool)

(declare-fun res!41781 () Bool)

(declare-fun e!44256 () Bool)

(assert (=> b!81636 (=> res!41781 e!44256)))

(assert (=> b!81636 (= res!41781 (isEmpty!677 (quickSort!0 less!5)))))

(declare-fun b!81637 () Bool)

(assert (=> b!81637 (= e!44255 e!44256)))

(declare-fun res!41784 () Bool)

(assert (=> b!81637 (=> res!41784 e!44256)))

(assert (=> b!81637 (= res!41784 (not (forall!20 (quickSort!0 less!5) lambda!9627)))))

(declare-fun b!81638 () Bool)

(declare-fun res!41783 () Bool)

(assert (=> b!81638 (=> res!41783 e!44254)))

(assert (=> b!81638 (= res!41783 (isEmpty!677 (quickSort!0 less!5)))))

(declare-fun d!55901 () Bool)

(assert (=> d!55901 e!44255))

(declare-fun c!20537 () Bool)

(assert (=> d!55901 (= c!20537 (is-Cons!622 (quickSort!0 less!5)))))

(assert (=> d!55901 (= (forall_last!0 (quickSort!0 less!5) lambda!9627) true)))

(declare-fun b!81639 () Bool)

(assert (=> b!81639 (= e!44256 (dynLambda!984 lambda!9627 (last!17 (quickSort!0 less!5))))))

(declare-fun b!81640 () Bool)

(assert (=> b!81640 (= e!44254 (dynLambda!984 lambda!9627 (last!17 (quickSort!0 less!5))))))

(assert (= (and b!81635 (not res!41782)) b!81638))

(assert (= (and b!81638 (not res!41783)) b!81640))

(assert (= (and b!81637 (not res!41784)) b!81636))

(assert (= (and b!81636 (not res!41781)) b!81639))

(assert (= (and d!55901 c!20537) b!81635))

(assert (= (and d!55901 (not c!20537)) b!81637))

(declare-fun b_lambda!16083 () Bool)

(assert (=> (not b_lambda!16083) (not b!81639)))

(declare-fun b_lambda!16085 () Bool)

(assert (=> (not b_lambda!16085) (not b!81640)))

(assert (=> b!81635 m!76310))

(assert (=> b!81635 m!76552))

(declare-fun m!76602 () Bool)

(assert (=> b!81635 m!76602))

(assert (=> b!81639 m!76310))

(assert (=> b!81639 m!76470))

(assert (=> b!81639 m!76470))

(declare-fun m!76604 () Bool)

(assert (=> b!81639 m!76604))

(assert (=> b!81638 m!76310))

(assert (=> b!81638 m!76466))

(assert (=> b!81637 m!76310))

(assert (=> b!81637 m!76552))

(assert (=> b!81636 m!76310))

(assert (=> b!81636 m!76466))

(assert (=> b!81640 m!76310))

(assert (=> b!81640 m!76470))

(assert (=> b!81640 m!76470))

(assert (=> b!81640 m!76604))

(assert (=> b!81449 d!55901))

(assert (=> b!81449 d!55875))

(assert (=> b!81451 d!55895))

(assert (=> b!81451 d!55875))

(declare-fun b!81641 () Bool)

(declare-fun e!44258 () List!665)

(declare-fun lt!18786 () List!665)

(assert (=> b!81641 (= e!44258 (Cons!622 (h!991 (t!47838 ls!96)) lt!18786))))

(declare-fun b!81642 () Bool)

(declare-fun e!44260 () Bool)

(assert (=> b!81642 (= e!44260 (dynLambda!984 lambda!9628 (h!991 (t!47838 ls!96))))))

(declare-fun b!81643 () Bool)

(assert (=> b!81643 (= e!44258 lt!18786)))

(declare-fun d!55903 () Bool)

(declare-fun e!44257 () Bool)

(assert (=> d!55903 e!44257))

(declare-fun res!41787 () Bool)

(assert (=> d!55903 (=> (not res!41787) (not e!44257))))

(declare-fun lt!18787 () List!665)

(assert (=> d!55903 (= res!41787 (<= (size!653 lt!18787) (size!653 (t!47838 ls!96))))))

(declare-fun e!44259 () List!665)

(assert (=> d!55903 (= lt!18787 e!44259)))

(declare-fun c!20539 () Bool)

(assert (=> d!55903 (= c!20539 (is-Nil!624 (t!47838 ls!96)))))

(assert (=> d!55903 (= (filter!18 (t!47838 ls!96) lambda!9628) lt!18787)))

(declare-fun b!81644 () Bool)

(declare-fun res!41785 () Bool)

(assert (=> b!81644 (=> (not res!41785) (not e!44257))))

(assert (=> b!81644 (= res!41785 (subset (content!124 lt!18787) (content!124 (t!47838 ls!96))))))

(declare-fun b!81645 () Bool)

(assert (=> b!81645 (= e!44259 Nil!624)))

(declare-fun b!81646 () Bool)

(assert (=> b!81646 (= e!44257 (forall!20 lt!18787 lambda!9628))))

(declare-fun b!81647 () Bool)

(assert (=> b!81647 (= e!44259 e!44258)))

(declare-fun c!20538 () Bool)

(assert (=> b!81647 (= c!20538 e!44260)))

(declare-fun res!41786 () Bool)

(assert (=> b!81647 (=> (not res!41786) (not e!44260))))

(assert (=> b!81647 (= res!41786 (is-Cons!622 (t!47838 ls!96)))))

(assert (=> b!81647 (= lt!18786 (filter!18 (t!47838 (t!47838 ls!96)) lambda!9628))))

(assert (= (and b!81647 res!41786) b!81642))

(assert (= (and b!81647 c!20538) b!81641))

(assert (= (and b!81647 (not c!20538)) b!81643))

(assert (= (and d!55903 c!20539) b!81645))

(assert (= (and d!55903 (not c!20539)) b!81647))

(assert (= (and d!55903 res!41787) b!81644))

(assert (= (and b!81644 res!41785) b!81646))

(declare-fun b_lambda!16087 () Bool)

(assert (=> (not b_lambda!16087) (not b!81642)))

(declare-fun m!76606 () Bool)

(assert (=> b!81646 m!76606))

(declare-fun m!76608 () Bool)

(assert (=> b!81644 m!76608))

(assert (=> b!81644 m!76498))

(declare-fun m!76610 () Bool)

(assert (=> b!81642 m!76610))

(declare-fun m!76612 () Bool)

(assert (=> d!55903 m!76612))

(assert (=> d!55903 m!76504))

(declare-fun m!76614 () Bool)

(assert (=> b!81647 m!76614))

(assert (=> b!81460 d!55903))

(declare-fun b_lambda!16089 () Bool)

(assert (= b_lambda!16083 (or b!81462 b_lambda!16089)))

(declare-fun bs!38978 () Bool)

(declare-fun d!55905 () Bool)

(assert (= bs!38978 (and d!55905 b!81462)))

(assert (=> bs!38978 (= (dynLambda!984 lambda!9627 (last!17 (quickSort!0 less!5))) (< (last!17 (quickSort!0 less!5)) (h!991 ls!96)))))

(assert (=> b!81639 d!55905))

(declare-fun b_lambda!16091 () Bool)

(assert (= b_lambda!16075 (or b!81466 b_lambda!16091)))

(declare-fun bs!38979 () Bool)

(declare-fun d!55907 () Bool)

(assert (= bs!38979 (and d!55907 b!81466)))

(assert (=> bs!38979 (= (dynLambda!984 lambda!9629 (h!991 (t!47838 ls!96))) (> (h!991 (t!47838 ls!96)) (h!991 ls!96)))))

(assert (=> b!81577 d!55907))

(declare-fun b_lambda!16093 () Bool)

(assert (= b_lambda!16087 (or b!81460 b_lambda!16093)))

(declare-fun bs!38980 () Bool)

(declare-fun d!55909 () Bool)

(assert (= bs!38980 (and d!55909 b!81460)))

(assert (=> bs!38980 (= (dynLambda!984 lambda!9628 (h!991 (t!47838 ls!96))) (= (h!991 (t!47838 ls!96)) (h!991 ls!96)))))

(assert (=> b!81642 d!55909))

(declare-fun b_lambda!16095 () Bool)

(assert (= b_lambda!16085 (or b!81462 b_lambda!16095)))

(assert (=> b!81640 d!55905))

(declare-fun b_lambda!16097 () Bool)

(assert (= b_lambda!16081 (or b!81468 b_lambda!16097)))

(declare-fun bs!38981 () Bool)

(declare-fun d!55911 () Bool)

(assert (= bs!38981 (and d!55911 b!81468)))

(assert (=> bs!38981 (= (dynLambda!984 lambda!9630 (last!17 (++!73 (quickSort!0 less!5) equal!10))) (<= (last!17 (++!73 (quickSort!0 less!5) equal!10)) (h!991 ls!96)))))

(assert (=> b!81618 d!55911))

(declare-fun b_lambda!16099 () Bool)

(assert (= b_lambda!16079 (or b!81468 b_lambda!16099)))

(assert (=> b!81617 d!55911))

(declare-fun b_lambda!16101 () Bool)

(assert (= b_lambda!16077 (or b!81462 b_lambda!16101)))

(declare-fun bs!38982 () Bool)

(declare-fun d!55913 () Bool)

(assert (= bs!38982 (and d!55913 b!81462)))

(assert (=> bs!38982 (= (dynLambda!984 lambda!9627 (h!991 (t!47838 ls!96))) (< (h!991 (t!47838 ls!96)) (h!991 ls!96)))))

(assert (=> b!81590 d!55913))

(push 1)

(assert (not b!81516))

(assert (not b!81490))

(assert (not b!81634))

(assert (not d!55899))

(assert (not b!81636))

(assert (not b!81520))

(assert (not b!81522))

(assert (not d!55889))

(assert (not b!81594))

(assert (not d!55877))

(assert (not b!81646))

(assert (not b!81515))

(assert (not b!81518))

(assert (not b!81629))

(assert (not b!81579))

(assert (not b!81560))

(assert (not b!81521))

(assert (not b!81639))

(assert (not b!81537))

(assert (not b!81561))

(assert (not d!55869))

(assert (not b!81597))

(assert (not b!81553))

(assert (not b!81531))

(assert (not b!81519))

(assert (not b!81478))

(assert (not b!81628))

(assert (not b!81532))

(assert (not b_lambda!16089))

(assert (not b!81550))

(assert (not d!55873))

(assert (not b_lambda!16093))

(assert (not b!81638))

(assert (not b!81587))

(assert (not b!81551))

(assert (not b!81637))

(assert (not b!81613))

(assert (not d!55883))

(assert (not b!81523))

(assert (not b!81632))

(assert (not b!81614))

(assert (not b!81496))

(assert (not b_lambda!16095))

(assert (not b_lambda!16099))

(assert (not d!55861))

(assert (not b!81640))

(assert (not b!81644))

(assert (not b!81588))

(assert (not b_lambda!16097))

(assert (not b_lambda!16091))

(assert (not d!55863))

(assert (not b!81633))

(assert (not b!81647))

(assert (not b!81581))

(assert (not b!81600))

(assert (not d!55887))

(assert (not d!55903))

(assert (not d!55885))

(assert (not b!81596))

(assert (not b!81592))

(assert (not b!81533))

(assert (not d!55881))

(assert (not b!81615))

(assert (not b!81599))

(assert (not b!81524))

(assert (not b!81598))

(assert (not b!81582))

(assert (not b!81635))

(assert (not d!55895))

(assert (not b!81495))

(assert (not b!81555))

(assert (not b!81504))

(assert (not b!81618))

(assert (not d!55867))

(assert (not b!81595))

(assert (not b!81552))

(assert (not b!81517))

(assert (not b_lambda!16101))

(assert (not b!81617))

(assert (not b!81616))

(assert (not d!55879))

(assert (not b!81554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55915 () Bool)

(declare-fun e!44263 () Bool)

(assert (=> d!55915 e!44263))

(declare-fun c!20542 () Bool)

(assert (=> d!55915 (= c!20542 (is-Cons!622 (t!47838 more!5)))))

(assert (=> d!55915 (forall!20 (t!47838 more!5) lambda!9629)))

(assert (=> d!55915 (= (filter_preserves_forall!0 (t!47838 more!5) lambda!9665 lambda!9629) true)))

(declare-fun b!81652 () Bool)

(assert (=> b!81652 (= e!44263 (forall!20 (filter!18 (t!47838 more!5) lambda!9665) lambda!9629))))

(declare-fun lt!18790 () Bool)

(assert (=> b!81652 (= lt!18790 (filter_preserves_forall!0 (t!47838 (t!47838 more!5)) lambda!9665 lambda!9629))))

(declare-fun b!81653 () Bool)

(assert (=> b!81653 (= e!44263 (forall!20 (filter!18 (t!47838 more!5) lambda!9665) lambda!9629))))

(assert (= (and d!55915 c!20542) b!81652))

(assert (= (and d!55915 (not c!20542)) b!81653))

(declare-fun m!76616 () Bool)

(assert (=> d!55915 m!76616))

(assert (=> b!81652 m!76430))

(assert (=> b!81652 m!76430))

(declare-fun m!76618 () Bool)

(assert (=> b!81652 m!76618))

(declare-fun m!76620 () Bool)

(assert (=> b!81652 m!76620))

(assert (=> b!81653 m!76430))

(assert (=> b!81653 m!76430))

(assert (=> b!81653 m!76618))

(assert (=> b!81520 d!55915))

(declare-fun d!55917 () Bool)

(declare-fun e!44264 () Bool)

(assert (=> d!55917 e!44264))

(declare-fun c!20543 () Bool)

(assert (=> d!55917 (= c!20543 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!55917 (forall!20 (t!47838 less!5) lambda!9630)))

(assert (=> d!55917 (= (filter_preserves_forall!0 (t!47838 less!5) lambda!9663 lambda!9630) true)))

(declare-fun b!81654 () Bool)

(assert (=> b!81654 (= e!44264 (forall!20 (filter!18 (t!47838 less!5) lambda!9663) lambda!9630))))

(declare-fun lt!18791 () Bool)

(assert (=> b!81654 (= lt!18791 (filter_preserves_forall!0 (t!47838 (t!47838 less!5)) lambda!9663 lambda!9630))))

(declare-fun b!81655 () Bool)

(assert (=> b!81655 (= e!44264 (forall!20 (filter!18 (t!47838 less!5) lambda!9663) lambda!9630))))

(assert (= (and d!55917 c!20543) b!81654))

(assert (= (and d!55917 (not c!20543)) b!81655))

(declare-fun m!76622 () Bool)

(assert (=> d!55917 m!76622))

(assert (=> b!81654 m!76394))

(assert (=> b!81654 m!76394))

(declare-fun m!76624 () Bool)

(assert (=> b!81654 m!76624))

(declare-fun m!76626 () Bool)

(assert (=> b!81654 m!76626))

(assert (=> b!81655 m!76394))

(assert (=> b!81655 m!76394))

(assert (=> b!81655 m!76624))

(assert (=> b!81519 d!55917))

(declare-fun b!81656 () Bool)

(declare-fun e!44266 () List!665)

(declare-fun lt!18792 () List!665)

(assert (=> b!81656 (= e!44266 (Cons!622 (h!991 (t!47838 (t!47838 ls!96))) lt!18792))))

(declare-fun b!81657 () Bool)

(declare-fun e!44268 () Bool)

(assert (=> b!81657 (= e!44268 (dynLambda!984 lambda!9629 (h!991 (t!47838 (t!47838 ls!96)))))))

(declare-fun b!81658 () Bool)

(assert (=> b!81658 (= e!44266 lt!18792)))

(declare-fun d!55919 () Bool)

(declare-fun e!44265 () Bool)

(assert (=> d!55919 e!44265))

(declare-fun res!41790 () Bool)

(assert (=> d!55919 (=> (not res!41790) (not e!44265))))

(declare-fun lt!18793 () List!665)

(assert (=> d!55919 (= res!41790 (<= (size!653 lt!18793) (size!653 (t!47838 (t!47838 ls!96)))))))

(declare-fun e!44267 () List!665)

(assert (=> d!55919 (= lt!18793 e!44267)))

(declare-fun c!20545 () Bool)

(assert (=> d!55919 (= c!20545 (is-Nil!624 (t!47838 (t!47838 ls!96))))))

(assert (=> d!55919 (= (filter!18 (t!47838 (t!47838 ls!96)) lambda!9629) lt!18793)))

(declare-fun b!81659 () Bool)

(declare-fun res!41788 () Bool)

(assert (=> b!81659 (=> (not res!41788) (not e!44265))))

(assert (=> b!81659 (= res!41788 (subset (content!124 lt!18793) (content!124 (t!47838 (t!47838 ls!96)))))))

(declare-fun b!81660 () Bool)

(assert (=> b!81660 (= e!44267 Nil!624)))

(declare-fun b!81661 () Bool)

(assert (=> b!81661 (= e!44265 (forall!20 lt!18793 lambda!9629))))

(declare-fun b!81662 () Bool)

(assert (=> b!81662 (= e!44267 e!44266)))

(declare-fun c!20544 () Bool)

(assert (=> b!81662 (= c!20544 e!44268)))

(declare-fun res!41789 () Bool)

(assert (=> b!81662 (=> (not res!41789) (not e!44268))))

(assert (=> b!81662 (= res!41789 (is-Cons!622 (t!47838 (t!47838 ls!96))))))

(assert (=> b!81662 (= lt!18792 (filter!18 (t!47838 (t!47838 (t!47838 ls!96))) lambda!9629))))

(assert (= (and b!81662 res!41789) b!81657))

(assert (= (and b!81662 c!20544) b!81656))

(assert (= (and b!81662 (not c!20544)) b!81658))

(assert (= (and d!55919 c!20545) b!81660))

(assert (= (and d!55919 (not c!20545)) b!81662))

(assert (= (and d!55919 res!41790) b!81659))

(assert (= (and b!81659 res!41788) b!81661))

(declare-fun b_lambda!16103 () Bool)

(assert (=> (not b_lambda!16103) (not b!81657)))

(declare-fun m!76628 () Bool)

(assert (=> b!81661 m!76628))

(declare-fun m!76630 () Bool)

(assert (=> b!81659 m!76630))

(declare-fun m!76632 () Bool)

(assert (=> b!81659 m!76632))

(declare-fun m!76634 () Bool)

(assert (=> b!81657 m!76634))

(declare-fun m!76636 () Bool)

(assert (=> d!55919 m!76636))

(declare-fun m!76638 () Bool)

(assert (=> d!55919 m!76638))

(declare-fun m!76640 () Bool)

(assert (=> b!81662 m!76640))

(assert (=> b!81582 d!55919))

(declare-fun d!55921 () Bool)

(declare-fun res!41795 () Bool)

(declare-fun e!44273 () Bool)

(assert (=> d!55921 (=> res!41795 e!44273)))

(assert (=> d!55921 (= res!41795 (is-Nil!624 (quickSort!0 less!5)))))

(assert (=> d!55921 (= (forall!20 (quickSort!0 less!5) lambda!9627) e!44273)))

(declare-fun b!81667 () Bool)

(declare-fun e!44274 () Bool)

(assert (=> b!81667 (= e!44273 e!44274)))

(declare-fun res!41796 () Bool)

(assert (=> b!81667 (=> (not res!41796) (not e!44274))))

(assert (=> b!81667 (= res!41796 (dynLambda!984 lambda!9627 (h!991 (quickSort!0 less!5))))))

(declare-fun b!81668 () Bool)

(assert (=> b!81668 (= e!44274 (forall!20 (t!47838 (quickSort!0 less!5)) lambda!9627))))

(assert (= (and d!55921 (not res!41795)) b!81667))

(assert (= (and b!81667 res!41796) b!81668))

(declare-fun b_lambda!16105 () Bool)

(assert (=> (not b_lambda!16105) (not b!81667)))

(declare-fun m!76642 () Bool)

(assert (=> b!81667 m!76642))

(declare-fun m!76644 () Bool)

(assert (=> b!81668 m!76644))

(assert (=> b!81635 d!55921))

(declare-fun b!81669 () Bool)

(declare-fun e!44276 () Bool)

(declare-fun e!44275 () Bool)

(assert (=> b!81669 (= e!44276 e!44275)))

(declare-fun res!41798 () Bool)

(assert (=> b!81669 (=> res!41798 e!44275)))

(assert (=> b!81669 (= res!41798 (not (forall!20 (t!47838 (quickSort!0 less!5)) lambda!9627)))))

(declare-fun lt!18794 () Bool)

(assert (=> b!81669 (= lt!18794 (forall_last!0 (t!47838 (t!47838 (quickSort!0 less!5))) lambda!9627))))

(declare-fun b!81670 () Bool)

(declare-fun res!41797 () Bool)

(declare-fun e!44277 () Bool)

(assert (=> b!81670 (=> res!41797 e!44277)))

(assert (=> b!81670 (= res!41797 (isEmpty!677 (t!47838 (quickSort!0 less!5))))))

(declare-fun b!81671 () Bool)

(assert (=> b!81671 (= e!44276 e!44277)))

(declare-fun res!41800 () Bool)

(assert (=> b!81671 (=> res!41800 e!44277)))

(assert (=> b!81671 (= res!41800 (not (forall!20 (t!47838 (quickSort!0 less!5)) lambda!9627)))))

(declare-fun b!81672 () Bool)

(declare-fun res!41799 () Bool)

(assert (=> b!81672 (=> res!41799 e!44275)))

(assert (=> b!81672 (= res!41799 (isEmpty!677 (t!47838 (quickSort!0 less!5))))))

(declare-fun d!55923 () Bool)

(assert (=> d!55923 e!44276))

(declare-fun c!20546 () Bool)

(assert (=> d!55923 (= c!20546 (is-Cons!622 (t!47838 (quickSort!0 less!5))))))

(assert (=> d!55923 (= (forall_last!0 (t!47838 (quickSort!0 less!5)) lambda!9627) true)))

(declare-fun b!81673 () Bool)

(assert (=> b!81673 (= e!44277 (dynLambda!984 lambda!9627 (last!17 (t!47838 (quickSort!0 less!5)))))))

(declare-fun b!81674 () Bool)

(assert (=> b!81674 (= e!44275 (dynLambda!984 lambda!9627 (last!17 (t!47838 (quickSort!0 less!5)))))))

(assert (= (and b!81669 (not res!41798)) b!81672))

(assert (= (and b!81672 (not res!41799)) b!81674))

(assert (= (and b!81671 (not res!41800)) b!81670))

(assert (= (and b!81670 (not res!41797)) b!81673))

(assert (= (and d!55923 c!20546) b!81669))

(assert (= (and d!55923 (not c!20546)) b!81671))

(declare-fun b_lambda!16107 () Bool)

(assert (=> (not b_lambda!16107) (not b!81673)))

(declare-fun b_lambda!16109 () Bool)

(assert (=> (not b_lambda!16109) (not b!81674)))

(assert (=> b!81669 m!76644))

(declare-fun m!76646 () Bool)

(assert (=> b!81669 m!76646))

(declare-fun m!76648 () Bool)

(assert (=> b!81673 m!76648))

(assert (=> b!81673 m!76648))

(declare-fun m!76650 () Bool)

(assert (=> b!81673 m!76650))

(declare-fun m!76652 () Bool)

(assert (=> b!81672 m!76652))

(assert (=> b!81671 m!76644))

(assert (=> b!81670 m!76652))

(assert (=> b!81674 m!76648))

(assert (=> b!81674 m!76648))

(assert (=> b!81674 m!76650))

(assert (=> b!81635 d!55923))

(declare-fun d!55925 () Bool)

(declare-fun res!41801 () Bool)

(declare-fun e!44278 () Bool)

(assert (=> d!55925 (=> res!41801 e!44278)))

(assert (=> d!55925 (= res!41801 (not (and (is-Cons!622 (t!47838 l1!444)) (is-Cons!622 (t!47838 (t!47838 l1!444))))))))

(assert (=> d!55925 (= (isSorted!1 (t!47838 l1!444)) e!44278)))

(declare-fun b!81675 () Bool)

(declare-fun e!44279 () Bool)

(assert (=> b!81675 (= e!44278 e!44279)))

(declare-fun res!41802 () Bool)

(assert (=> b!81675 (=> (not res!41802) (not e!44279))))

(assert (=> b!81675 (= res!41802 (<= (h!991 (t!47838 l1!444)) (h!991 (t!47838 (t!47838 l1!444)))))))

(declare-fun b!81676 () Bool)

(assert (=> b!81676 (= e!44279 (isSorted!1 (t!47838 (t!47838 l1!444))))))

(assert (= (and d!55925 (not res!41801)) b!81675))

(assert (= (and b!81675 res!41802) b!81676))

(declare-fun m!76654 () Bool)

(assert (=> b!81676 m!76654))

(assert (=> b!81478 d!55925))

(declare-fun d!55927 () Bool)

(declare-fun e!44281 () Bool)

(assert (=> d!55927 e!44281))

(declare-fun c!20547 () Bool)

(assert (=> d!55927 (= c!20547 (is-Cons!622 (++!73 (quickSort!0 lt!18730) lt!18725)))))

(declare-fun e!44280 () Bool)

(assert (=> d!55927 e!44280))

(declare-fun res!41803 () Bool)

(assert (=> d!55927 (=> (not res!41803) (not e!44280))))

(assert (=> d!55927 (= res!41803 (forall!20 (++!73 (quickSort!0 lt!18730) lt!18725) lambda!9630))))

(assert (=> d!55927 (= (append_preserves_forall!0 (++!73 (quickSort!0 lt!18730) lt!18725) (quickSort!0 lt!18728) lambda!9630) true)))

(declare-fun b!81677 () Bool)

(assert (=> b!81677 (= e!44280 (forall!20 (quickSort!0 lt!18728) lambda!9630))))

(declare-fun b!81678 () Bool)

(assert (=> b!81678 (= e!44281 (forall!20 (++!73 (++!73 (quickSort!0 lt!18730) lt!18725) (quickSort!0 lt!18728)) lambda!9630))))

(declare-fun lt!18795 () Bool)

(assert (=> b!81678 (= lt!18795 (append_preserves_forall!0 (t!47838 (++!73 (quickSort!0 lt!18730) lt!18725)) (quickSort!0 lt!18728) lambda!9630))))

(declare-fun b!81679 () Bool)

(assert (=> b!81679 (= e!44281 (forall!20 (++!73 (++!73 (quickSort!0 lt!18730) lt!18725) (quickSort!0 lt!18728)) lambda!9630))))

(assert (= (and d!55927 res!41803) b!81677))

(assert (= (and d!55927 c!20547) b!81678))

(assert (= (and d!55927 (not c!20547)) b!81679))

(assert (=> d!55927 m!76386))

(declare-fun m!76656 () Bool)

(assert (=> d!55927 m!76656))

(assert (=> b!81677 m!76388))

(declare-fun m!76658 () Bool)

(assert (=> b!81677 m!76658))

(assert (=> b!81678 m!76386))

(assert (=> b!81678 m!76388))

(declare-fun m!76660 () Bool)

(assert (=> b!81678 m!76660))

(assert (=> b!81678 m!76660))

(declare-fun m!76662 () Bool)

(assert (=> b!81678 m!76662))

(assert (=> b!81678 m!76388))

(declare-fun m!76664 () Bool)

(assert (=> b!81678 m!76664))

(assert (=> b!81679 m!76386))

(assert (=> b!81679 m!76388))

(assert (=> b!81679 m!76660))

(assert (=> b!81679 m!76660))

(assert (=> b!81679 m!76662))

(assert (=> b!81516 d!55927))

(declare-fun b!81682 () Bool)

(declare-fun res!41804 () Bool)

(declare-fun e!44283 () Bool)

(assert (=> b!81682 (=> (not res!41804) (not e!44283))))

(declare-fun lt!18796 () List!665)

(assert (=> b!81682 (= res!41804 (= (size!653 lt!18796) (+ (size!653 (quickSort!0 lt!18730)) (size!653 lt!18725))))))

(declare-fun b!81681 () Bool)

(declare-fun e!44282 () List!665)

(assert (=> b!81681 (= e!44282 (Cons!622 (h!991 (quickSort!0 lt!18730)) (++!73 (t!47838 (quickSort!0 lt!18730)) lt!18725)))))

(declare-fun b!81683 () Bool)

(assert (=> b!81683 (= e!44283 (or (not (= lt!18725 Nil!624)) (= lt!18796 (quickSort!0 lt!18730))))))

(declare-fun b!81680 () Bool)

(assert (=> b!81680 (= e!44282 lt!18725)))

(declare-fun d!55929 () Bool)

(assert (=> d!55929 e!44283))

(declare-fun res!41805 () Bool)

(assert (=> d!55929 (=> (not res!41805) (not e!44283))))

(assert (=> d!55929 (= res!41805 (= (content!124 lt!18796) (union (content!124 (quickSort!0 lt!18730)) (content!124 lt!18725))))))

(assert (=> d!55929 (= lt!18796 e!44282)))

(declare-fun c!20548 () Bool)

(assert (=> d!55929 (= c!20548 (is-Nil!624 (quickSort!0 lt!18730)))))

(assert (=> d!55929 (= (++!73 (quickSort!0 lt!18730) lt!18725) lt!18796)))

(assert (= (and d!55929 c!20548) b!81680))

(assert (= (and d!55929 (not c!20548)) b!81681))

(assert (= (and d!55929 res!41805) b!81682))

(assert (= (and b!81682 res!41804) b!81683))

(declare-fun m!76666 () Bool)

(assert (=> b!81682 m!76666))

(assert (=> b!81682 m!76384))

(declare-fun m!76668 () Bool)

(assert (=> b!81682 m!76668))

(declare-fun m!76670 () Bool)

(assert (=> b!81682 m!76670))

(declare-fun m!76672 () Bool)

(assert (=> b!81681 m!76672))

(declare-fun m!76674 () Bool)

(assert (=> d!55929 m!76674))

(assert (=> d!55929 m!76384))

(declare-fun m!76676 () Bool)

(assert (=> d!55929 m!76676))

(declare-fun m!76678 () Bool)

(assert (=> d!55929 m!76678))

(assert (=> b!81516 d!55929))

(declare-fun bs!38983 () Bool)

(declare-fun b!81687 () Bool)

(assert (= bs!38983 (and b!81687 b!81517)))

(declare-fun lambda!9697 () Int)

(assert (=> bs!38983 (not (= lambda!9697 lambda!9663))))

(assert (=> bs!38983 (not (= lambda!9697 lambda!9662))))

(assert (=> bs!38983 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9697 lambda!9661))))

(declare-fun bs!38984 () Bool)

(assert (= bs!38984 (and b!81687 b!81462)))

(assert (=> bs!38984 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9697 lambda!9627))))

(declare-fun bs!38985 () Bool)

(assert (= bs!38985 (and b!81687 b!81495)))

(assert (=> bs!38985 (not (= lambda!9697 lambda!9647))))

(declare-fun bs!38986 () Bool)

(assert (= bs!38986 (and b!81687 b!81460)))

(assert (=> bs!38986 (not (= lambda!9697 lambda!9628))))

(declare-fun bs!38987 () Bool)

(assert (= bs!38987 (and b!81687 b!81560)))

(assert (=> bs!38987 (not (= lambda!9697 lambda!9678))))

(assert (=> bs!38987 (not (= lambda!9697 lambda!9677))))

(assert (=> bs!38987 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9697 lambda!9676))))

(declare-fun bs!38988 () Bool)

(assert (= bs!38988 (and b!81687 b!81490)))

(assert (=> bs!38988 (not (= lambda!9697 lambda!9639))))

(assert (=> bs!38988 (not (= lambda!9697 lambda!9638))))

(assert (=> bs!38988 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9697 lambda!9637))))

(declare-fun bs!38989 () Bool)

(assert (= bs!38989 (and b!81687 b!81466)))

(assert (=> bs!38989 (not (= lambda!9697 lambda!9629))))

(declare-fun bs!38990 () Bool)

(assert (= bs!38990 (and b!81687 d!55883)))

(assert (=> bs!38990 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9697 lambda!9685))))

(declare-fun bs!38991 () Bool)

(assert (= bs!38991 (and b!81687 d!55861)))

(assert (=> bs!38991 (not (= lambda!9697 lambda!9646))))

(declare-fun bs!38992 () Bool)

(assert (= bs!38992 (and b!81687 b!81537)))

(assert (=> bs!38992 (not (= lambda!9697 lambda!9669))))

(assert (=> bs!38992 (not (= lambda!9697 lambda!9668))))

(assert (=> bs!38992 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9697 lambda!9667))))

(declare-fun bs!38993 () Bool)

(assert (= bs!38993 (and b!81687 b!81587)))

(assert (=> bs!38993 (not (= lambda!9697 lambda!9686))))

(declare-fun bs!38994 () Bool)

(assert (= bs!38994 (and b!81687 b!81496)))

(assert (=> bs!38994 (not (= lambda!9697 lambda!9648))))

(declare-fun bs!38995 () Bool)

(assert (= bs!38995 (and b!81687 d!55889)))

(assert (=> bs!38995 (not (= lambda!9697 lambda!9693))))

(declare-fun bs!38996 () Bool)

(assert (= bs!38996 (and b!81687 b!81522)))

(assert (=> bs!38996 (not (= lambda!9697 lambda!9666))))

(assert (=> bs!38996 (not (= lambda!9697 lambda!9665))))

(assert (=> bs!38996 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9697 lambda!9664))))

(declare-fun bs!38997 () Bool)

(assert (= bs!38997 (and b!81687 b!81598)))

(assert (=> bs!38997 (not (= lambda!9697 lambda!9690))))

(assert (=> bs!38997 (not (= lambda!9697 lambda!9689))))

(assert (=> bs!38997 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9697 lambda!9688))))

(declare-fun bs!38998 () Bool)

(assert (= bs!38998 (and b!81687 b!81588)))

(assert (=> bs!38998 (not (= lambda!9697 lambda!9687))))

(declare-fun bs!38999 () Bool)

(assert (= bs!38999 (and b!81687 b!81468)))

(assert (=> bs!38999 (not (= lambda!9697 lambda!9630))))

(declare-fun bs!39000 () Bool)

(assert (= bs!39000 (and b!81687 b!81633)))

(assert (=> bs!39000 (not (= lambda!9697 lambda!9696))))

(assert (=> bs!39000 (not (= lambda!9697 lambda!9695))))

(assert (=> bs!39000 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9697 lambda!9694))))

(assert (=> b!81687 true))

(declare-fun lambda!9698 () Int)

(assert (=> bs!38983 (not (= lambda!9698 lambda!9663))))

(assert (=> bs!38983 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9698 lambda!9662))))

(assert (=> bs!38983 (not (= lambda!9698 lambda!9661))))

(assert (=> bs!38984 (not (= lambda!9698 lambda!9627))))

(assert (=> bs!38985 (not (= lambda!9698 lambda!9647))))

(assert (=> bs!38986 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9698 lambda!9628))))

(assert (=> bs!38987 (not (= lambda!9698 lambda!9678))))

(assert (=> bs!38987 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9698 lambda!9677))))

(assert (=> bs!38987 (not (= lambda!9698 lambda!9676))))

(assert (=> bs!38988 (not (= lambda!9698 lambda!9639))))

(assert (=> bs!38988 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9698 lambda!9638))))

(assert (=> bs!38988 (not (= lambda!9698 lambda!9637))))

(assert (=> bs!38989 (not (= lambda!9698 lambda!9629))))

(assert (=> bs!38990 (not (= lambda!9698 lambda!9685))))

(assert (=> bs!38991 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9698 lambda!9646))))

(assert (=> bs!38992 (not (= lambda!9698 lambda!9669))))

(assert (=> bs!38992 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9698 lambda!9668))))

(assert (=> bs!38992 (not (= lambda!9698 lambda!9667))))

(assert (=> bs!38993 (not (= lambda!9698 lambda!9686))))

(assert (=> bs!38994 (not (= lambda!9698 lambda!9648))))

(assert (=> bs!38995 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9698 lambda!9693))))

(assert (=> bs!38996 (not (= lambda!9698 lambda!9666))))

(assert (=> bs!38996 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9698 lambda!9665))))

(assert (=> bs!38996 (not (= lambda!9698 lambda!9664))))

(assert (=> bs!38997 (not (= lambda!9698 lambda!9690))))

(assert (=> bs!38997 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9698 lambda!9689))))

(assert (=> bs!38997 (not (= lambda!9698 lambda!9688))))

(assert (=> bs!38998 (not (= lambda!9698 lambda!9687))))

(assert (=> bs!38999 (not (= lambda!9698 lambda!9630))))

(assert (=> bs!39000 (not (= lambda!9698 lambda!9696))))

(assert (=> bs!39000 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9698 lambda!9695))))

(assert (=> bs!39000 (not (= lambda!9698 lambda!9694))))

(assert (=> b!81687 (not (= lambda!9698 lambda!9697))))

(assert (=> b!81687 true))

(declare-fun lambda!9699 () Int)

(assert (=> bs!38983 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9699 lambda!9663))))

(assert (=> bs!38983 (not (= lambda!9699 lambda!9662))))

(assert (=> bs!38983 (not (= lambda!9699 lambda!9661))))

(assert (=> bs!38984 (not (= lambda!9699 lambda!9627))))

(assert (=> bs!38985 (not (= lambda!9699 lambda!9647))))

(assert (=> bs!38986 (not (= lambda!9699 lambda!9628))))

(assert (=> bs!38987 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9699 lambda!9678))))

(assert (=> bs!38987 (not (= lambda!9699 lambda!9677))))

(assert (=> bs!38987 (not (= lambda!9699 lambda!9676))))

(assert (=> bs!38988 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9699 lambda!9639))))

(assert (=> bs!38988 (not (= lambda!9699 lambda!9638))))

(assert (=> bs!38988 (not (= lambda!9699 lambda!9637))))

(assert (=> bs!38989 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9699 lambda!9629))))

(assert (=> bs!38990 (not (= lambda!9699 lambda!9685))))

(assert (=> bs!38991 (not (= lambda!9699 lambda!9646))))

(assert (=> bs!38992 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9699 lambda!9669))))

(assert (=> bs!38992 (not (= lambda!9699 lambda!9668))))

(assert (=> bs!38992 (not (= lambda!9699 lambda!9667))))

(assert (=> bs!38993 (not (= lambda!9699 lambda!9686))))

(assert (=> bs!38994 (not (= lambda!9699 lambda!9648))))

(assert (=> bs!38995 (not (= lambda!9699 lambda!9693))))

(assert (=> bs!38996 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9699 lambda!9666))))

(assert (=> bs!38996 (not (= lambda!9699 lambda!9665))))

(assert (=> bs!38996 (not (= lambda!9699 lambda!9664))))

(assert (=> bs!38997 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9699 lambda!9690))))

(assert (=> bs!38997 (not (= lambda!9699 lambda!9689))))

(assert (=> bs!38997 (not (= lambda!9699 lambda!9688))))

(assert (=> bs!38998 (not (= lambda!9699 lambda!9687))))

(assert (=> bs!38999 (not (= lambda!9699 lambda!9630))))

(assert (=> bs!39000 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9699 lambda!9696))))

(assert (=> bs!39000 (not (= lambda!9699 lambda!9695))))

(assert (=> bs!39000 (not (= lambda!9699 lambda!9694))))

(assert (=> b!81687 (not (= lambda!9699 lambda!9698))))

(assert (=> b!81687 (not (= lambda!9699 lambda!9697))))

(assert (=> b!81687 true))

(declare-fun b!81684 () Bool)

(declare-fun e!44284 () List!665)

(assert (=> b!81684 (= e!44284 Nil!624)))

(declare-fun d!55931 () Bool)

(declare-fun c!20549 () Bool)

(assert (=> d!55931 (= c!20549 (is-Nil!624 lt!18730))))

(assert (=> d!55931 (= (quickSort!0 lt!18730) e!44284)))

(declare-fun b!81686 () Bool)

(declare-fun e!44285 () List!665)

(assert (=> b!81686 (= e!44285 lt!18730)))

(declare-fun b!81685 () Bool)

(assert (=> b!81685 (= e!44284 e!44285)))

(declare-fun c!20550 () Bool)

(assert (=> b!81685 (= c!20550 (and (is-Cons!622 lt!18730) (is-Nil!624 (t!47838 lt!18730))))))

(assert (=> b!81687 (= e!44285 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18730) lambda!9697)) (Cons!622 (h!991 lt!18730) (filter!18 (t!47838 lt!18730) lambda!9698))) (quickSort!0 (filter!18 (t!47838 lt!18730) lambda!9699))))))

(assert (= (and b!81685 c!20550) b!81686))

(assert (= (and b!81685 (not c!20550)) b!81687))

(assert (= (and d!55931 c!20549) b!81684))

(assert (= (and d!55931 (not c!20549)) b!81685))

(declare-fun m!76680 () Bool)

(assert (=> b!81687 m!76680))

(declare-fun m!76682 () Bool)

(assert (=> b!81687 m!76682))

(assert (=> b!81687 m!76680))

(declare-fun m!76684 () Bool)

(assert (=> b!81687 m!76684))

(declare-fun m!76686 () Bool)

(assert (=> b!81687 m!76686))

(declare-fun m!76688 () Bool)

(assert (=> b!81687 m!76688))

(assert (=> b!81687 m!76684))

(assert (=> b!81687 m!76688))

(declare-fun m!76690 () Bool)

(assert (=> b!81687 m!76690))

(assert (=> b!81687 m!76686))

(assert (=> b!81687 m!76682))

(declare-fun m!76692 () Bool)

(assert (=> b!81687 m!76692))

(assert (=> b!81516 d!55931))

(declare-fun bs!39001 () Bool)

(declare-fun b!81691 () Bool)

(assert (= bs!39001 (and b!81691 b!81517)))

(declare-fun lambda!9700 () Int)

(assert (=> bs!39001 (not (= lambda!9700 lambda!9663))))

(assert (=> bs!39001 (not (= lambda!9700 lambda!9662))))

(assert (=> bs!39001 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9700 lambda!9661))))

(declare-fun bs!39002 () Bool)

(assert (= bs!39002 (and b!81691 b!81462)))

(assert (=> bs!39002 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9700 lambda!9627))))

(declare-fun bs!39003 () Bool)

(assert (= bs!39003 (and b!81691 b!81495)))

(assert (=> bs!39003 (not (= lambda!9700 lambda!9647))))

(declare-fun bs!39004 () Bool)

(assert (= bs!39004 (and b!81691 b!81460)))

(assert (=> bs!39004 (not (= lambda!9700 lambda!9628))))

(declare-fun bs!39005 () Bool)

(assert (= bs!39005 (and b!81691 b!81560)))

(assert (=> bs!39005 (not (= lambda!9700 lambda!9678))))

(assert (=> bs!39005 (not (= lambda!9700 lambda!9677))))

(assert (=> bs!39005 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9700 lambda!9676))))

(declare-fun bs!39006 () Bool)

(assert (= bs!39006 (and b!81691 b!81490)))

(assert (=> bs!39006 (not (= lambda!9700 lambda!9639))))

(assert (=> bs!39006 (not (= lambda!9700 lambda!9638))))

(assert (=> bs!39006 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9700 lambda!9637))))

(declare-fun bs!39007 () Bool)

(assert (= bs!39007 (and b!81691 b!81466)))

(assert (=> bs!39007 (not (= lambda!9700 lambda!9629))))

(declare-fun bs!39008 () Bool)

(assert (= bs!39008 (and b!81691 d!55883)))

(assert (=> bs!39008 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9700 lambda!9685))))

(declare-fun bs!39009 () Bool)

(assert (= bs!39009 (and b!81691 d!55861)))

(assert (=> bs!39009 (not (= lambda!9700 lambda!9646))))

(declare-fun bs!39010 () Bool)

(assert (= bs!39010 (and b!81691 b!81537)))

(assert (=> bs!39010 (not (= lambda!9700 lambda!9669))))

(assert (=> bs!39010 (not (= lambda!9700 lambda!9668))))

(assert (=> bs!39010 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9700 lambda!9667))))

(declare-fun bs!39011 () Bool)

(assert (= bs!39011 (and b!81691 b!81587)))

(assert (=> bs!39011 (not (= lambda!9700 lambda!9686))))

(declare-fun bs!39012 () Bool)

(assert (= bs!39012 (and b!81691 b!81496)))

(assert (=> bs!39012 (not (= lambda!9700 lambda!9648))))

(declare-fun bs!39013 () Bool)

(assert (= bs!39013 (and b!81691 d!55889)))

(assert (=> bs!39013 (not (= lambda!9700 lambda!9693))))

(declare-fun bs!39014 () Bool)

(assert (= bs!39014 (and b!81691 b!81522)))

(assert (=> bs!39014 (not (= lambda!9700 lambda!9666))))

(assert (=> bs!39014 (not (= lambda!9700 lambda!9665))))

(assert (=> bs!39014 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9700 lambda!9664))))

(declare-fun bs!39015 () Bool)

(assert (= bs!39015 (and b!81691 b!81598)))

(assert (=> bs!39015 (not (= lambda!9700 lambda!9690))))

(assert (=> bs!39015 (not (= lambda!9700 lambda!9689))))

(assert (=> bs!39015 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9700 lambda!9688))))

(declare-fun bs!39016 () Bool)

(assert (= bs!39016 (and b!81691 b!81588)))

(assert (=> bs!39016 (not (= lambda!9700 lambda!9687))))

(declare-fun bs!39017 () Bool)

(assert (= bs!39017 (and b!81691 b!81468)))

(assert (=> bs!39017 (not (= lambda!9700 lambda!9630))))

(declare-fun bs!39018 () Bool)

(assert (= bs!39018 (and b!81691 b!81633)))

(assert (=> bs!39018 (not (= lambda!9700 lambda!9696))))

(assert (=> bs!39018 (not (= lambda!9700 lambda!9695))))

(assert (=> bs!39018 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9700 lambda!9694))))

(declare-fun bs!39019 () Bool)

(assert (= bs!39019 (and b!81691 b!81687)))

(assert (=> bs!39019 (not (= lambda!9700 lambda!9699))))

(assert (=> bs!39019 (not (= lambda!9700 lambda!9698))))

(assert (=> bs!39019 (= (= (h!991 lt!18728) (h!991 lt!18730)) (= lambda!9700 lambda!9697))))

(assert (=> b!81691 true))

(declare-fun lambda!9701 () Int)

(assert (=> bs!39001 (not (= lambda!9701 lambda!9663))))

(assert (=> bs!39001 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9701 lambda!9662))))

(assert (=> bs!39001 (not (= lambda!9701 lambda!9661))))

(assert (=> bs!39002 (not (= lambda!9701 lambda!9627))))

(assert (=> bs!39003 (not (= lambda!9701 lambda!9647))))

(assert (=> bs!39004 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9701 lambda!9628))))

(assert (=> bs!39005 (not (= lambda!9701 lambda!9678))))

(assert (=> bs!39005 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9701 lambda!9677))))

(assert (=> bs!39005 (not (= lambda!9701 lambda!9676))))

(assert (=> bs!39006 (not (= lambda!9701 lambda!9639))))

(assert (=> bs!39006 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9701 lambda!9638))))

(assert (=> bs!39006 (not (= lambda!9701 lambda!9637))))

(assert (=> b!81691 (not (= lambda!9701 lambda!9700))))

(assert (=> bs!39007 (not (= lambda!9701 lambda!9629))))

(assert (=> bs!39008 (not (= lambda!9701 lambda!9685))))

(assert (=> bs!39009 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9701 lambda!9646))))

(assert (=> bs!39010 (not (= lambda!9701 lambda!9669))))

(assert (=> bs!39010 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9701 lambda!9668))))

(assert (=> bs!39010 (not (= lambda!9701 lambda!9667))))

(assert (=> bs!39011 (not (= lambda!9701 lambda!9686))))

(assert (=> bs!39012 (not (= lambda!9701 lambda!9648))))

(assert (=> bs!39013 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9701 lambda!9693))))

(assert (=> bs!39014 (not (= lambda!9701 lambda!9666))))

(assert (=> bs!39014 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9701 lambda!9665))))

(assert (=> bs!39014 (not (= lambda!9701 lambda!9664))))

(assert (=> bs!39015 (not (= lambda!9701 lambda!9690))))

(assert (=> bs!39015 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9701 lambda!9689))))

(assert (=> bs!39015 (not (= lambda!9701 lambda!9688))))

(assert (=> bs!39016 (not (= lambda!9701 lambda!9687))))

(assert (=> bs!39017 (not (= lambda!9701 lambda!9630))))

(assert (=> bs!39018 (not (= lambda!9701 lambda!9696))))

(assert (=> bs!39018 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9701 lambda!9695))))

(assert (=> bs!39018 (not (= lambda!9701 lambda!9694))))

(assert (=> bs!39019 (not (= lambda!9701 lambda!9699))))

(assert (=> bs!39019 (= (= (h!991 lt!18728) (h!991 lt!18730)) (= lambda!9701 lambda!9698))))

(assert (=> bs!39019 (not (= lambda!9701 lambda!9697))))

(assert (=> b!81691 true))

(declare-fun lambda!9702 () Int)

(assert (=> bs!39001 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9702 lambda!9663))))

(assert (=> bs!39001 (not (= lambda!9702 lambda!9662))))

(assert (=> bs!39001 (not (= lambda!9702 lambda!9661))))

(assert (=> bs!39002 (not (= lambda!9702 lambda!9627))))

(assert (=> bs!39003 (not (= lambda!9702 lambda!9647))))

(assert (=> bs!39004 (not (= lambda!9702 lambda!9628))))

(assert (=> bs!39005 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9702 lambda!9678))))

(assert (=> bs!39005 (not (= lambda!9702 lambda!9677))))

(assert (=> bs!39005 (not (= lambda!9702 lambda!9676))))

(assert (=> bs!39006 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9702 lambda!9639))))

(assert (=> bs!39006 (not (= lambda!9702 lambda!9638))))

(assert (=> bs!39006 (not (= lambda!9702 lambda!9637))))

(assert (=> b!81691 (not (= lambda!9702 lambda!9701))))

(assert (=> b!81691 (not (= lambda!9702 lambda!9700))))

(assert (=> bs!39007 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9702 lambda!9629))))

(assert (=> bs!39008 (not (= lambda!9702 lambda!9685))))

(assert (=> bs!39009 (not (= lambda!9702 lambda!9646))))

(assert (=> bs!39010 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9702 lambda!9669))))

(assert (=> bs!39010 (not (= lambda!9702 lambda!9668))))

(assert (=> bs!39010 (not (= lambda!9702 lambda!9667))))

(assert (=> bs!39011 (not (= lambda!9702 lambda!9686))))

(assert (=> bs!39012 (not (= lambda!9702 lambda!9648))))

(assert (=> bs!39013 (not (= lambda!9702 lambda!9693))))

(assert (=> bs!39014 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9702 lambda!9666))))

(assert (=> bs!39014 (not (= lambda!9702 lambda!9665))))

(assert (=> bs!39014 (not (= lambda!9702 lambda!9664))))

(assert (=> bs!39015 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9702 lambda!9690))))

(assert (=> bs!39015 (not (= lambda!9702 lambda!9689))))

(assert (=> bs!39015 (not (= lambda!9702 lambda!9688))))

(assert (=> bs!39016 (not (= lambda!9702 lambda!9687))))

(assert (=> bs!39017 (not (= lambda!9702 lambda!9630))))

(assert (=> bs!39018 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9702 lambda!9696))))

(assert (=> bs!39018 (not (= lambda!9702 lambda!9695))))

(assert (=> bs!39018 (not (= lambda!9702 lambda!9694))))

(assert (=> bs!39019 (= (= (h!991 lt!18728) (h!991 lt!18730)) (= lambda!9702 lambda!9699))))

(assert (=> bs!39019 (not (= lambda!9702 lambda!9698))))

(assert (=> bs!39019 (not (= lambda!9702 lambda!9697))))

(assert (=> b!81691 true))

(declare-fun b!81688 () Bool)

(declare-fun e!44286 () List!665)

(assert (=> b!81688 (= e!44286 Nil!624)))

(declare-fun d!55933 () Bool)

(declare-fun c!20551 () Bool)

(assert (=> d!55933 (= c!20551 (is-Nil!624 lt!18728))))

(assert (=> d!55933 (= (quickSort!0 lt!18728) e!44286)))

(declare-fun b!81690 () Bool)

(declare-fun e!44287 () List!665)

(assert (=> b!81690 (= e!44287 lt!18728)))

(declare-fun b!81689 () Bool)

(assert (=> b!81689 (= e!44286 e!44287)))

(declare-fun c!20552 () Bool)

(assert (=> b!81689 (= c!20552 (and (is-Cons!622 lt!18728) (is-Nil!624 (t!47838 lt!18728))))))

(assert (=> b!81691 (= e!44287 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18728) lambda!9700)) (Cons!622 (h!991 lt!18728) (filter!18 (t!47838 lt!18728) lambda!9701))) (quickSort!0 (filter!18 (t!47838 lt!18728) lambda!9702))))))

(assert (= (and b!81689 c!20552) b!81690))

(assert (= (and b!81689 (not c!20552)) b!81691))

(assert (= (and d!55933 c!20551) b!81688))

(assert (= (and d!55933 (not c!20551)) b!81689))

(declare-fun m!76694 () Bool)

(assert (=> b!81691 m!76694))

(declare-fun m!76696 () Bool)

(assert (=> b!81691 m!76696))

(assert (=> b!81691 m!76694))

(declare-fun m!76698 () Bool)

(assert (=> b!81691 m!76698))

(declare-fun m!76700 () Bool)

(assert (=> b!81691 m!76700))

(declare-fun m!76702 () Bool)

(assert (=> b!81691 m!76702))

(assert (=> b!81691 m!76698))

(assert (=> b!81691 m!76702))

(declare-fun m!76704 () Bool)

(assert (=> b!81691 m!76704))

(assert (=> b!81691 m!76700))

(assert (=> b!81691 m!76696))

(declare-fun m!76706 () Bool)

(assert (=> b!81691 m!76706))

(assert (=> b!81516 d!55933))

(declare-fun b!81692 () Bool)

(declare-fun res!41808 () Bool)

(declare-fun e!44289 () Bool)

(assert (=> b!81692 (=> (not res!41808) (not e!44289))))

(assert (=> b!81692 (= res!41808 (isSorted!1 (quickSort!0 lt!18751)))))

(declare-fun d!55935 () Bool)

(declare-fun e!44288 () Bool)

(assert (=> d!55935 e!44288))

(declare-fun c!20553 () Bool)

(assert (=> d!55935 (= c!20553 (is-Cons!622 (++!73 (quickSort!0 lt!18752) lt!18753)))))

(assert (=> d!55935 e!44289))

(declare-fun res!41806 () Bool)

(assert (=> d!55935 (=> (not res!41806) (not e!44289))))

(assert (=> d!55935 (= res!41806 (isSorted!1 (++!73 (quickSort!0 lt!18752) lt!18753)))))

(assert (=> d!55935 (= (append_sorted!0 (++!73 (quickSort!0 lt!18752) lt!18753) (quickSort!0 lt!18751)) true)))

(declare-fun b!81693 () Bool)

(declare-fun res!41807 () Bool)

(declare-fun e!44290 () Bool)

(assert (=> b!81693 (=> res!41807 e!44290)))

(assert (=> b!81693 (= res!41807 (isEmpty!677 (quickSort!0 lt!18751)))))

(declare-fun b!81694 () Bool)

(assert (=> b!81694 (= e!44288 (isSorted!1 (++!73 (++!73 (quickSort!0 lt!18752) lt!18753) (quickSort!0 lt!18751))))))

(declare-fun lt!18797 () Bool)

(assert (=> b!81694 (= lt!18797 (append_sorted!0 (t!47838 (++!73 (quickSort!0 lt!18752) lt!18753)) (quickSort!0 lt!18751)))))

(declare-fun b!81695 () Bool)

(assert (=> b!81695 (= e!44290 (<= (last!17 (++!73 (quickSort!0 lt!18752) lt!18753)) (head!1055 (quickSort!0 lt!18751))))))

(declare-fun b!81696 () Bool)

(assert (=> b!81696 (= e!44289 e!44290)))

(declare-fun res!41809 () Bool)

(assert (=> b!81696 (=> res!41809 e!44290)))

(assert (=> b!81696 (= res!41809 (isEmpty!677 (++!73 (quickSort!0 lt!18752) lt!18753)))))

(declare-fun b!81697 () Bool)

(assert (=> b!81697 (= e!44288 (isSorted!1 (++!73 (++!73 (quickSort!0 lt!18752) lt!18753) (quickSort!0 lt!18751))))))

(assert (= (and d!55935 res!41806) b!81692))

(assert (= (and b!81692 res!41808) b!81696))

(assert (= (and b!81696 (not res!41809)) b!81693))

(assert (= (and b!81693 (not res!41807)) b!81695))

(assert (= (and d!55935 c!20553) b!81694))

(assert (= (and d!55935 (not c!20553)) b!81697))

(assert (=> b!81692 m!76490))

(declare-fun m!76708 () Bool)

(assert (=> b!81692 m!76708))

(assert (=> b!81694 m!76488))

(assert (=> b!81694 m!76490))

(declare-fun m!76710 () Bool)

(assert (=> b!81694 m!76710))

(assert (=> b!81694 m!76710))

(declare-fun m!76712 () Bool)

(assert (=> b!81694 m!76712))

(assert (=> b!81694 m!76490))

(declare-fun m!76714 () Bool)

(assert (=> b!81694 m!76714))

(assert (=> b!81696 m!76488))

(declare-fun m!76716 () Bool)

(assert (=> b!81696 m!76716))

(assert (=> b!81693 m!76490))

(declare-fun m!76718 () Bool)

(assert (=> b!81693 m!76718))

(assert (=> b!81697 m!76488))

(assert (=> b!81697 m!76490))

(assert (=> b!81697 m!76710))

(assert (=> b!81697 m!76710))

(assert (=> b!81697 m!76712))

(assert (=> b!81695 m!76488))

(declare-fun m!76720 () Bool)

(assert (=> b!81695 m!76720))

(assert (=> b!81695 m!76490))

(declare-fun m!76722 () Bool)

(assert (=> b!81695 m!76722))

(assert (=> d!55935 m!76488))

(declare-fun m!76724 () Bool)

(assert (=> d!55935 m!76724))

(assert (=> b!81561 d!55935))

(declare-fun b!81700 () Bool)

(declare-fun res!41810 () Bool)

(declare-fun e!44292 () Bool)

(assert (=> b!81700 (=> (not res!41810) (not e!44292))))

(declare-fun lt!18798 () List!665)

(assert (=> b!81700 (= res!41810 (= (size!653 lt!18798) (+ (size!653 (quickSort!0 lt!18752)) (size!653 lt!18753))))))

(declare-fun b!81699 () Bool)

(declare-fun e!44291 () List!665)

(assert (=> b!81699 (= e!44291 (Cons!622 (h!991 (quickSort!0 lt!18752)) (++!73 (t!47838 (quickSort!0 lt!18752)) lt!18753)))))

(declare-fun b!81701 () Bool)

(assert (=> b!81701 (= e!44292 (or (not (= lt!18753 Nil!624)) (= lt!18798 (quickSort!0 lt!18752))))))

(declare-fun b!81698 () Bool)

(assert (=> b!81698 (= e!44291 lt!18753)))

(declare-fun d!55937 () Bool)

(assert (=> d!55937 e!44292))

(declare-fun res!41811 () Bool)

(assert (=> d!55937 (=> (not res!41811) (not e!44292))))

(assert (=> d!55937 (= res!41811 (= (content!124 lt!18798) (union (content!124 (quickSort!0 lt!18752)) (content!124 lt!18753))))))

(assert (=> d!55937 (= lt!18798 e!44291)))

(declare-fun c!20554 () Bool)

(assert (=> d!55937 (= c!20554 (is-Nil!624 (quickSort!0 lt!18752)))))

(assert (=> d!55937 (= (++!73 (quickSort!0 lt!18752) lt!18753) lt!18798)))

(assert (= (and d!55937 c!20554) b!81698))

(assert (= (and d!55937 (not c!20554)) b!81699))

(assert (= (and d!55937 res!41811) b!81700))

(assert (= (and b!81700 res!41810) b!81701))

(declare-fun m!76726 () Bool)

(assert (=> b!81700 m!76726))

(assert (=> b!81700 m!76480))

(declare-fun m!76728 () Bool)

(assert (=> b!81700 m!76728))

(declare-fun m!76730 () Bool)

(assert (=> b!81700 m!76730))

(declare-fun m!76732 () Bool)

(assert (=> b!81699 m!76732))

(declare-fun m!76734 () Bool)

(assert (=> d!55937 m!76734))

(assert (=> d!55937 m!76480))

(declare-fun m!76736 () Bool)

(assert (=> d!55937 m!76736))

(declare-fun m!76738 () Bool)

(assert (=> d!55937 m!76738))

(assert (=> b!81561 d!55937))

(declare-fun bs!39020 () Bool)

(declare-fun b!81705 () Bool)

(assert (= bs!39020 (and b!81705 b!81517)))

(declare-fun lambda!9703 () Int)

(assert (=> bs!39020 (not (= lambda!9703 lambda!9663))))

(assert (=> bs!39020 (not (= lambda!9703 lambda!9662))))

(assert (=> bs!39020 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9703 lambda!9661))))

(declare-fun bs!39021 () Bool)

(assert (= bs!39021 (and b!81705 b!81462)))

(assert (=> bs!39021 (= (= (h!991 lt!18752) (h!991 ls!96)) (= lambda!9703 lambda!9627))))

(declare-fun bs!39022 () Bool)

(assert (= bs!39022 (and b!81705 b!81495)))

(assert (=> bs!39022 (not (= lambda!9703 lambda!9647))))

(declare-fun bs!39023 () Bool)

(assert (= bs!39023 (and b!81705 b!81460)))

(assert (=> bs!39023 (not (= lambda!9703 lambda!9628))))

(declare-fun bs!39024 () Bool)

(assert (= bs!39024 (and b!81705 b!81560)))

(assert (=> bs!39024 (not (= lambda!9703 lambda!9678))))

(assert (=> bs!39024 (not (= lambda!9703 lambda!9677))))

(assert (=> bs!39024 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9703 lambda!9676))))

(declare-fun bs!39025 () Bool)

(assert (= bs!39025 (and b!81705 b!81490)))

(assert (=> bs!39025 (not (= lambda!9703 lambda!9639))))

(assert (=> bs!39025 (not (= lambda!9703 lambda!9638))))

(assert (=> bs!39025 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9703 lambda!9637))))

(declare-fun bs!39026 () Bool)

(assert (= bs!39026 (and b!81705 b!81691)))

(assert (=> bs!39026 (not (= lambda!9703 lambda!9702))))

(assert (=> bs!39026 (not (= lambda!9703 lambda!9701))))

(assert (=> bs!39026 (= (= (h!991 lt!18752) (h!991 lt!18728)) (= lambda!9703 lambda!9700))))

(declare-fun bs!39027 () Bool)

(assert (= bs!39027 (and b!81705 b!81466)))

(assert (=> bs!39027 (not (= lambda!9703 lambda!9629))))

(declare-fun bs!39028 () Bool)

(assert (= bs!39028 (and b!81705 d!55883)))

(assert (=> bs!39028 (= (= (h!991 lt!18752) (h!991 ls!96)) (= lambda!9703 lambda!9685))))

(declare-fun bs!39029 () Bool)

(assert (= bs!39029 (and b!81705 d!55861)))

(assert (=> bs!39029 (not (= lambda!9703 lambda!9646))))

(declare-fun bs!39030 () Bool)

(assert (= bs!39030 (and b!81705 b!81537)))

(assert (=> bs!39030 (not (= lambda!9703 lambda!9669))))

(assert (=> bs!39030 (not (= lambda!9703 lambda!9668))))

(assert (=> bs!39030 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9703 lambda!9667))))

(declare-fun bs!39031 () Bool)

(assert (= bs!39031 (and b!81705 b!81587)))

(assert (=> bs!39031 (not (= lambda!9703 lambda!9686))))

(declare-fun bs!39032 () Bool)

(assert (= bs!39032 (and b!81705 b!81496)))

(assert (=> bs!39032 (not (= lambda!9703 lambda!9648))))

(declare-fun bs!39033 () Bool)

(assert (= bs!39033 (and b!81705 d!55889)))

(assert (=> bs!39033 (not (= lambda!9703 lambda!9693))))

(declare-fun bs!39034 () Bool)

(assert (= bs!39034 (and b!81705 b!81522)))

(assert (=> bs!39034 (not (= lambda!9703 lambda!9666))))

(assert (=> bs!39034 (not (= lambda!9703 lambda!9665))))

(assert (=> bs!39034 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9703 lambda!9664))))

(declare-fun bs!39035 () Bool)

(assert (= bs!39035 (and b!81705 b!81598)))

(assert (=> bs!39035 (not (= lambda!9703 lambda!9690))))

(assert (=> bs!39035 (not (= lambda!9703 lambda!9689))))

(assert (=> bs!39035 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9703 lambda!9688))))

(declare-fun bs!39036 () Bool)

(assert (= bs!39036 (and b!81705 b!81588)))

(assert (=> bs!39036 (not (= lambda!9703 lambda!9687))))

(declare-fun bs!39037 () Bool)

(assert (= bs!39037 (and b!81705 b!81468)))

(assert (=> bs!39037 (not (= lambda!9703 lambda!9630))))

(declare-fun bs!39038 () Bool)

(assert (= bs!39038 (and b!81705 b!81633)))

(assert (=> bs!39038 (not (= lambda!9703 lambda!9696))))

(assert (=> bs!39038 (not (= lambda!9703 lambda!9695))))

(assert (=> bs!39038 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9703 lambda!9694))))

(declare-fun bs!39039 () Bool)

(assert (= bs!39039 (and b!81705 b!81687)))

(assert (=> bs!39039 (not (= lambda!9703 lambda!9699))))

(assert (=> bs!39039 (not (= lambda!9703 lambda!9698))))

(assert (=> bs!39039 (= (= (h!991 lt!18752) (h!991 lt!18730)) (= lambda!9703 lambda!9697))))

(assert (=> b!81705 true))

(declare-fun lambda!9704 () Int)

(assert (=> bs!39020 (not (= lambda!9704 lambda!9663))))

(assert (=> bs!39020 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9704 lambda!9662))))

(assert (=> bs!39020 (not (= lambda!9704 lambda!9661))))

(assert (=> bs!39021 (not (= lambda!9704 lambda!9627))))

(assert (=> bs!39022 (not (= lambda!9704 lambda!9647))))

(assert (=> bs!39023 (= (= (h!991 lt!18752) (h!991 ls!96)) (= lambda!9704 lambda!9628))))

(assert (=> bs!39024 (not (= lambda!9704 lambda!9678))))

(assert (=> bs!39024 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9704 lambda!9677))))

(assert (=> bs!39024 (not (= lambda!9704 lambda!9676))))

(assert (=> bs!39025 (not (= lambda!9704 lambda!9639))))

(assert (=> bs!39025 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9704 lambda!9638))))

(assert (=> bs!39025 (not (= lambda!9704 lambda!9637))))

(assert (=> bs!39026 (not (= lambda!9704 lambda!9702))))

(assert (=> bs!39026 (= (= (h!991 lt!18752) (h!991 lt!18728)) (= lambda!9704 lambda!9701))))

(assert (=> bs!39026 (not (= lambda!9704 lambda!9700))))

(assert (=> bs!39027 (not (= lambda!9704 lambda!9629))))

(assert (=> bs!39028 (not (= lambda!9704 lambda!9685))))

(assert (=> bs!39029 (= (= (h!991 lt!18752) (h!991 ls!96)) (= lambda!9704 lambda!9646))))

(assert (=> bs!39030 (not (= lambda!9704 lambda!9669))))

(assert (=> bs!39030 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9704 lambda!9668))))

(assert (=> bs!39030 (not (= lambda!9704 lambda!9667))))

(assert (=> bs!39031 (not (= lambda!9704 lambda!9686))))

(assert (=> bs!39032 (not (= lambda!9704 lambda!9648))))

(assert (=> bs!39033 (= (= (h!991 lt!18752) (h!991 ls!96)) (= lambda!9704 lambda!9693))))

(assert (=> b!81705 (not (= lambda!9704 lambda!9703))))

(assert (=> bs!39034 (not (= lambda!9704 lambda!9666))))

(assert (=> bs!39034 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9704 lambda!9665))))

(assert (=> bs!39034 (not (= lambda!9704 lambda!9664))))

(assert (=> bs!39035 (not (= lambda!9704 lambda!9690))))

(assert (=> bs!39035 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9704 lambda!9689))))

(assert (=> bs!39035 (not (= lambda!9704 lambda!9688))))

(assert (=> bs!39036 (not (= lambda!9704 lambda!9687))))

(assert (=> bs!39037 (not (= lambda!9704 lambda!9630))))

(assert (=> bs!39038 (not (= lambda!9704 lambda!9696))))

(assert (=> bs!39038 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9704 lambda!9695))))

(assert (=> bs!39038 (not (= lambda!9704 lambda!9694))))

(assert (=> bs!39039 (not (= lambda!9704 lambda!9699))))

(assert (=> bs!39039 (= (= (h!991 lt!18752) (h!991 lt!18730)) (= lambda!9704 lambda!9698))))

(assert (=> bs!39039 (not (= lambda!9704 lambda!9697))))

(assert (=> b!81705 true))

(declare-fun lambda!9705 () Int)

(assert (=> bs!39020 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9705 lambda!9663))))

(assert (=> bs!39020 (not (= lambda!9705 lambda!9662))))

(assert (=> bs!39020 (not (= lambda!9705 lambda!9661))))

(assert (=> bs!39021 (not (= lambda!9705 lambda!9627))))

(assert (=> bs!39022 (not (= lambda!9705 lambda!9647))))

(assert (=> bs!39023 (not (= lambda!9705 lambda!9628))))

(assert (=> bs!39024 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9705 lambda!9678))))

(assert (=> bs!39024 (not (= lambda!9705 lambda!9677))))

(assert (=> bs!39024 (not (= lambda!9705 lambda!9676))))

(assert (=> bs!39025 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9705 lambda!9639))))

(assert (=> bs!39025 (not (= lambda!9705 lambda!9638))))

(assert (=> bs!39025 (not (= lambda!9705 lambda!9637))))

(assert (=> bs!39026 (= (= (h!991 lt!18752) (h!991 lt!18728)) (= lambda!9705 lambda!9702))))

(assert (=> bs!39026 (not (= lambda!9705 lambda!9701))))

(assert (=> bs!39026 (not (= lambda!9705 lambda!9700))))

(assert (=> bs!39027 (= (= (h!991 lt!18752) (h!991 ls!96)) (= lambda!9705 lambda!9629))))

(assert (=> bs!39028 (not (= lambda!9705 lambda!9685))))

(assert (=> bs!39029 (not (= lambda!9705 lambda!9646))))

(assert (=> bs!39030 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9705 lambda!9669))))

(assert (=> bs!39030 (not (= lambda!9705 lambda!9668))))

(assert (=> bs!39030 (not (= lambda!9705 lambda!9667))))

(assert (=> bs!39031 (not (= lambda!9705 lambda!9686))))

(assert (=> bs!39032 (not (= lambda!9705 lambda!9648))))

(assert (=> bs!39033 (not (= lambda!9705 lambda!9693))))

(assert (=> b!81705 (not (= lambda!9705 lambda!9704))))

(assert (=> b!81705 (not (= lambda!9705 lambda!9703))))

(assert (=> bs!39034 (= (= (h!991 lt!18752) (h!991 more!5)) (= lambda!9705 lambda!9666))))

(assert (=> bs!39034 (not (= lambda!9705 lambda!9665))))

(assert (=> bs!39034 (not (= lambda!9705 lambda!9664))))

(assert (=> bs!39035 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9705 lambda!9690))))

(assert (=> bs!39035 (not (= lambda!9705 lambda!9689))))

(assert (=> bs!39035 (not (= lambda!9705 lambda!9688))))

(assert (=> bs!39036 (not (= lambda!9705 lambda!9687))))

(assert (=> bs!39037 (not (= lambda!9705 lambda!9630))))

(assert (=> bs!39038 (= (= (h!991 lt!18752) (h!991 less!5)) (= lambda!9705 lambda!9696))))

(assert (=> bs!39038 (not (= lambda!9705 lambda!9695))))

(assert (=> bs!39038 (not (= lambda!9705 lambda!9694))))

(assert (=> bs!39039 (= (= (h!991 lt!18752) (h!991 lt!18730)) (= lambda!9705 lambda!9699))))

(assert (=> bs!39039 (not (= lambda!9705 lambda!9698))))

(assert (=> bs!39039 (not (= lambda!9705 lambda!9697))))

(assert (=> b!81705 true))

(declare-fun b!81702 () Bool)

(declare-fun e!44293 () List!665)

(assert (=> b!81702 (= e!44293 Nil!624)))

(declare-fun d!55939 () Bool)

(declare-fun c!20555 () Bool)

(assert (=> d!55939 (= c!20555 (is-Nil!624 lt!18752))))

(assert (=> d!55939 (= (quickSort!0 lt!18752) e!44293)))

(declare-fun b!81704 () Bool)

(declare-fun e!44294 () List!665)

(assert (=> b!81704 (= e!44294 lt!18752)))

(declare-fun b!81703 () Bool)

(assert (=> b!81703 (= e!44293 e!44294)))

(declare-fun c!20556 () Bool)

(assert (=> b!81703 (= c!20556 (and (is-Cons!622 lt!18752) (is-Nil!624 (t!47838 lt!18752))))))

(assert (=> b!81705 (= e!44294 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18752) lambda!9703)) (Cons!622 (h!991 lt!18752) (filter!18 (t!47838 lt!18752) lambda!9704))) (quickSort!0 (filter!18 (t!47838 lt!18752) lambda!9705))))))

(assert (= (and b!81703 c!20556) b!81704))

(assert (= (and b!81703 (not c!20556)) b!81705))

(assert (= (and d!55939 c!20555) b!81702))

(assert (= (and d!55939 (not c!20555)) b!81703))

(declare-fun m!76740 () Bool)

(assert (=> b!81705 m!76740))

(declare-fun m!76742 () Bool)

(assert (=> b!81705 m!76742))

(assert (=> b!81705 m!76740))

(declare-fun m!76744 () Bool)

(assert (=> b!81705 m!76744))

(declare-fun m!76746 () Bool)

(assert (=> b!81705 m!76746))

(declare-fun m!76748 () Bool)

(assert (=> b!81705 m!76748))

(assert (=> b!81705 m!76744))

(assert (=> b!81705 m!76748))

(declare-fun m!76750 () Bool)

(assert (=> b!81705 m!76750))

(assert (=> b!81705 m!76746))

(assert (=> b!81705 m!76742))

(declare-fun m!76752 () Bool)

(assert (=> b!81705 m!76752))

(assert (=> b!81561 d!55939))

(declare-fun bs!39040 () Bool)

(declare-fun b!81709 () Bool)

(assert (= bs!39040 (and b!81709 b!81517)))

(declare-fun lambda!9706 () Int)

(assert (=> bs!39040 (not (= lambda!9706 lambda!9663))))

(assert (=> bs!39040 (not (= lambda!9706 lambda!9662))))

(assert (=> bs!39040 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9706 lambda!9661))))

(declare-fun bs!39041 () Bool)

(assert (= bs!39041 (and b!81709 b!81462)))

(assert (=> bs!39041 (= (= (h!991 lt!18751) (h!991 ls!96)) (= lambda!9706 lambda!9627))))

(declare-fun bs!39042 () Bool)

(assert (= bs!39042 (and b!81709 b!81495)))

(assert (=> bs!39042 (not (= lambda!9706 lambda!9647))))

(declare-fun bs!39043 () Bool)

(assert (= bs!39043 (and b!81709 b!81460)))

(assert (=> bs!39043 (not (= lambda!9706 lambda!9628))))

(declare-fun bs!39044 () Bool)

(assert (= bs!39044 (and b!81709 b!81560)))

(assert (=> bs!39044 (not (= lambda!9706 lambda!9678))))

(assert (=> bs!39044 (not (= lambda!9706 lambda!9677))))

(assert (=> bs!39044 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9706 lambda!9676))))

(declare-fun bs!39045 () Bool)

(assert (= bs!39045 (and b!81709 b!81490)))

(assert (=> bs!39045 (not (= lambda!9706 lambda!9639))))

(assert (=> bs!39045 (not (= lambda!9706 lambda!9638))))

(assert (=> bs!39045 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9706 lambda!9637))))

(declare-fun bs!39046 () Bool)

(assert (= bs!39046 (and b!81709 b!81691)))

(assert (=> bs!39046 (not (= lambda!9706 lambda!9702))))

(assert (=> bs!39046 (not (= lambda!9706 lambda!9701))))

(assert (=> bs!39046 (= (= (h!991 lt!18751) (h!991 lt!18728)) (= lambda!9706 lambda!9700))))

(declare-fun bs!39047 () Bool)

(assert (= bs!39047 (and b!81709 b!81466)))

(assert (=> bs!39047 (not (= lambda!9706 lambda!9629))))

(declare-fun bs!39048 () Bool)

(assert (= bs!39048 (and b!81709 d!55883)))

(assert (=> bs!39048 (= (= (h!991 lt!18751) (h!991 ls!96)) (= lambda!9706 lambda!9685))))

(declare-fun bs!39049 () Bool)

(assert (= bs!39049 (and b!81709 d!55861)))

(assert (=> bs!39049 (not (= lambda!9706 lambda!9646))))

(declare-fun bs!39050 () Bool)

(assert (= bs!39050 (and b!81709 b!81537)))

(assert (=> bs!39050 (not (= lambda!9706 lambda!9669))))

(assert (=> bs!39050 (not (= lambda!9706 lambda!9668))))

(assert (=> bs!39050 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9706 lambda!9667))))

(declare-fun bs!39051 () Bool)

(assert (= bs!39051 (and b!81709 b!81587)))

(assert (=> bs!39051 (not (= lambda!9706 lambda!9686))))

(declare-fun bs!39052 () Bool)

(assert (= bs!39052 (and b!81709 b!81496)))

(assert (=> bs!39052 (not (= lambda!9706 lambda!9648))))

(declare-fun bs!39053 () Bool)

(assert (= bs!39053 (and b!81709 d!55889)))

(assert (=> bs!39053 (not (= lambda!9706 lambda!9693))))

(declare-fun bs!39054 () Bool)

(assert (= bs!39054 (and b!81709 b!81705)))

(assert (=> bs!39054 (not (= lambda!9706 lambda!9705))))

(assert (=> bs!39054 (not (= lambda!9706 lambda!9704))))

(assert (=> bs!39054 (= (= (h!991 lt!18751) (h!991 lt!18752)) (= lambda!9706 lambda!9703))))

(declare-fun bs!39055 () Bool)

(assert (= bs!39055 (and b!81709 b!81522)))

(assert (=> bs!39055 (not (= lambda!9706 lambda!9666))))

(assert (=> bs!39055 (not (= lambda!9706 lambda!9665))))

(assert (=> bs!39055 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9706 lambda!9664))))

(declare-fun bs!39056 () Bool)

(assert (= bs!39056 (and b!81709 b!81598)))

(assert (=> bs!39056 (not (= lambda!9706 lambda!9690))))

(assert (=> bs!39056 (not (= lambda!9706 lambda!9689))))

(assert (=> bs!39056 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9706 lambda!9688))))

(declare-fun bs!39057 () Bool)

(assert (= bs!39057 (and b!81709 b!81588)))

(assert (=> bs!39057 (not (= lambda!9706 lambda!9687))))

(declare-fun bs!39058 () Bool)

(assert (= bs!39058 (and b!81709 b!81468)))

(assert (=> bs!39058 (not (= lambda!9706 lambda!9630))))

(declare-fun bs!39059 () Bool)

(assert (= bs!39059 (and b!81709 b!81633)))

(assert (=> bs!39059 (not (= lambda!9706 lambda!9696))))

(assert (=> bs!39059 (not (= lambda!9706 lambda!9695))))

(assert (=> bs!39059 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9706 lambda!9694))))

(declare-fun bs!39060 () Bool)

(assert (= bs!39060 (and b!81709 b!81687)))

(assert (=> bs!39060 (not (= lambda!9706 lambda!9699))))

(assert (=> bs!39060 (not (= lambda!9706 lambda!9698))))

(assert (=> bs!39060 (= (= (h!991 lt!18751) (h!991 lt!18730)) (= lambda!9706 lambda!9697))))

(assert (=> b!81709 true))

(declare-fun lambda!9707 () Int)

(assert (=> bs!39040 (not (= lambda!9707 lambda!9663))))

(assert (=> bs!39040 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9707 lambda!9662))))

(assert (=> bs!39040 (not (= lambda!9707 lambda!9661))))

(assert (=> bs!39041 (not (= lambda!9707 lambda!9627))))

(assert (=> bs!39042 (not (= lambda!9707 lambda!9647))))

(assert (=> b!81709 (not (= lambda!9707 lambda!9706))))

(assert (=> bs!39043 (= (= (h!991 lt!18751) (h!991 ls!96)) (= lambda!9707 lambda!9628))))

(assert (=> bs!39044 (not (= lambda!9707 lambda!9678))))

(assert (=> bs!39044 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9707 lambda!9677))))

(assert (=> bs!39044 (not (= lambda!9707 lambda!9676))))

(assert (=> bs!39045 (not (= lambda!9707 lambda!9639))))

(assert (=> bs!39045 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9707 lambda!9638))))

(assert (=> bs!39045 (not (= lambda!9707 lambda!9637))))

(assert (=> bs!39046 (not (= lambda!9707 lambda!9702))))

(assert (=> bs!39046 (= (= (h!991 lt!18751) (h!991 lt!18728)) (= lambda!9707 lambda!9701))))

(assert (=> bs!39046 (not (= lambda!9707 lambda!9700))))

(assert (=> bs!39047 (not (= lambda!9707 lambda!9629))))

(assert (=> bs!39048 (not (= lambda!9707 lambda!9685))))

(assert (=> bs!39049 (= (= (h!991 lt!18751) (h!991 ls!96)) (= lambda!9707 lambda!9646))))

(assert (=> bs!39050 (not (= lambda!9707 lambda!9669))))

(assert (=> bs!39050 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9707 lambda!9668))))

(assert (=> bs!39050 (not (= lambda!9707 lambda!9667))))

(assert (=> bs!39051 (not (= lambda!9707 lambda!9686))))

(assert (=> bs!39052 (not (= lambda!9707 lambda!9648))))

(assert (=> bs!39053 (= (= (h!991 lt!18751) (h!991 ls!96)) (= lambda!9707 lambda!9693))))

(assert (=> bs!39054 (not (= lambda!9707 lambda!9705))))

(assert (=> bs!39054 (= (= (h!991 lt!18751) (h!991 lt!18752)) (= lambda!9707 lambda!9704))))

(assert (=> bs!39054 (not (= lambda!9707 lambda!9703))))

(assert (=> bs!39055 (not (= lambda!9707 lambda!9666))))

(assert (=> bs!39055 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9707 lambda!9665))))

(assert (=> bs!39055 (not (= lambda!9707 lambda!9664))))

(assert (=> bs!39056 (not (= lambda!9707 lambda!9690))))

(assert (=> bs!39056 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9707 lambda!9689))))

(assert (=> bs!39056 (not (= lambda!9707 lambda!9688))))

(assert (=> bs!39057 (not (= lambda!9707 lambda!9687))))

(assert (=> bs!39058 (not (= lambda!9707 lambda!9630))))

(assert (=> bs!39059 (not (= lambda!9707 lambda!9696))))

(assert (=> bs!39059 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9707 lambda!9695))))

(assert (=> bs!39059 (not (= lambda!9707 lambda!9694))))

(assert (=> bs!39060 (not (= lambda!9707 lambda!9699))))

(assert (=> bs!39060 (= (= (h!991 lt!18751) (h!991 lt!18730)) (= lambda!9707 lambda!9698))))

(assert (=> bs!39060 (not (= lambda!9707 lambda!9697))))

(assert (=> b!81709 true))

(declare-fun lambda!9708 () Int)

(assert (=> bs!39040 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9708 lambda!9663))))

(assert (=> bs!39040 (not (= lambda!9708 lambda!9662))))

(assert (=> bs!39040 (not (= lambda!9708 lambda!9661))))

(assert (=> bs!39041 (not (= lambda!9708 lambda!9627))))

(assert (=> bs!39042 (not (= lambda!9708 lambda!9647))))

(assert (=> b!81709 (not (= lambda!9708 lambda!9707))))

(assert (=> b!81709 (not (= lambda!9708 lambda!9706))))

(assert (=> bs!39043 (not (= lambda!9708 lambda!9628))))

(assert (=> bs!39044 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9708 lambda!9678))))

(assert (=> bs!39044 (not (= lambda!9708 lambda!9677))))

(assert (=> bs!39044 (not (= lambda!9708 lambda!9676))))

(assert (=> bs!39045 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9708 lambda!9639))))

(assert (=> bs!39045 (not (= lambda!9708 lambda!9638))))

(assert (=> bs!39045 (not (= lambda!9708 lambda!9637))))

(assert (=> bs!39046 (= (= (h!991 lt!18751) (h!991 lt!18728)) (= lambda!9708 lambda!9702))))

(assert (=> bs!39046 (not (= lambda!9708 lambda!9701))))

(assert (=> bs!39046 (not (= lambda!9708 lambda!9700))))

(assert (=> bs!39047 (= (= (h!991 lt!18751) (h!991 ls!96)) (= lambda!9708 lambda!9629))))

(assert (=> bs!39048 (not (= lambda!9708 lambda!9685))))

(assert (=> bs!39049 (not (= lambda!9708 lambda!9646))))

(assert (=> bs!39050 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9708 lambda!9669))))

(assert (=> bs!39050 (not (= lambda!9708 lambda!9668))))

(assert (=> bs!39050 (not (= lambda!9708 lambda!9667))))

(assert (=> bs!39051 (not (= lambda!9708 lambda!9686))))

(assert (=> bs!39052 (not (= lambda!9708 lambda!9648))))

(assert (=> bs!39053 (not (= lambda!9708 lambda!9693))))

(assert (=> bs!39054 (= (= (h!991 lt!18751) (h!991 lt!18752)) (= lambda!9708 lambda!9705))))

(assert (=> bs!39054 (not (= lambda!9708 lambda!9704))))

(assert (=> bs!39054 (not (= lambda!9708 lambda!9703))))

(assert (=> bs!39055 (= (= (h!991 lt!18751) (h!991 more!5)) (= lambda!9708 lambda!9666))))

(assert (=> bs!39055 (not (= lambda!9708 lambda!9665))))

(assert (=> bs!39055 (not (= lambda!9708 lambda!9664))))

(assert (=> bs!39056 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9708 lambda!9690))))

(assert (=> bs!39056 (not (= lambda!9708 lambda!9689))))

(assert (=> bs!39056 (not (= lambda!9708 lambda!9688))))

(assert (=> bs!39057 (not (= lambda!9708 lambda!9687))))

(assert (=> bs!39058 (not (= lambda!9708 lambda!9630))))

(assert (=> bs!39059 (= (= (h!991 lt!18751) (h!991 less!5)) (= lambda!9708 lambda!9696))))

(assert (=> bs!39059 (not (= lambda!9708 lambda!9695))))

(assert (=> bs!39059 (not (= lambda!9708 lambda!9694))))

(assert (=> bs!39060 (= (= (h!991 lt!18751) (h!991 lt!18730)) (= lambda!9708 lambda!9699))))

(assert (=> bs!39060 (not (= lambda!9708 lambda!9698))))

(assert (=> bs!39060 (not (= lambda!9708 lambda!9697))))

(assert (=> b!81709 true))

(declare-fun b!81706 () Bool)

(declare-fun e!44295 () List!665)

(assert (=> b!81706 (= e!44295 Nil!624)))

(declare-fun d!55941 () Bool)

(declare-fun c!20557 () Bool)

(assert (=> d!55941 (= c!20557 (is-Nil!624 lt!18751))))

(assert (=> d!55941 (= (quickSort!0 lt!18751) e!44295)))

(declare-fun b!81708 () Bool)

(declare-fun e!44296 () List!665)

(assert (=> b!81708 (= e!44296 lt!18751)))

(declare-fun b!81707 () Bool)

(assert (=> b!81707 (= e!44295 e!44296)))

(declare-fun c!20558 () Bool)

(assert (=> b!81707 (= c!20558 (and (is-Cons!622 lt!18751) (is-Nil!624 (t!47838 lt!18751))))))

(assert (=> b!81709 (= e!44296 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18751) lambda!9706)) (Cons!622 (h!991 lt!18751) (filter!18 (t!47838 lt!18751) lambda!9707))) (quickSort!0 (filter!18 (t!47838 lt!18751) lambda!9708))))))

(assert (= (and b!81707 c!20558) b!81708))

(assert (= (and b!81707 (not c!20558)) b!81709))

(assert (= (and d!55941 c!20557) b!81706))

(assert (= (and d!55941 (not c!20557)) b!81707))

(declare-fun m!76754 () Bool)

(assert (=> b!81709 m!76754))

(declare-fun m!76756 () Bool)

(assert (=> b!81709 m!76756))

(assert (=> b!81709 m!76754))

(declare-fun m!76758 () Bool)

(assert (=> b!81709 m!76758))

(declare-fun m!76760 () Bool)

(assert (=> b!81709 m!76760))

(declare-fun m!76762 () Bool)

(assert (=> b!81709 m!76762))

(assert (=> b!81709 m!76758))

(assert (=> b!81709 m!76762))

(declare-fun m!76764 () Bool)

(assert (=> b!81709 m!76764))

(assert (=> b!81709 m!76760))

(assert (=> b!81709 m!76756))

(declare-fun m!76766 () Bool)

(assert (=> b!81709 m!76766))

(assert (=> b!81561 d!55941))

(declare-fun d!55943 () Bool)

(declare-fun res!41812 () Bool)

(declare-fun e!44297 () Bool)

(assert (=> d!55943 (=> res!41812 e!44297)))

(assert (=> d!55943 (= res!41812 (is-Nil!624 less!5))))

(assert (=> d!55943 (= (forall!20 less!5 lambda!9687) e!44297)))

(declare-fun b!81710 () Bool)

(declare-fun e!44298 () Bool)

(assert (=> b!81710 (= e!44297 e!44298)))

(declare-fun res!41813 () Bool)

(assert (=> b!81710 (=> (not res!41813) (not e!44298))))

(assert (=> b!81710 (= res!41813 (dynLambda!984 lambda!9687 (h!991 less!5)))))

(declare-fun b!81711 () Bool)

(assert (=> b!81711 (= e!44298 (forall!20 (t!47838 less!5) lambda!9687))))

(assert (= (and d!55943 (not res!41812)) b!81710))

(assert (= (and b!81710 res!41813) b!81711))

(declare-fun b_lambda!16111 () Bool)

(assert (=> (not b_lambda!16111) (not b!81710)))

(declare-fun m!76768 () Bool)

(assert (=> b!81710 m!76768))

(declare-fun m!76770 () Bool)

(assert (=> b!81711 m!76770))

(assert (=> b!81588 d!55943))

(declare-fun d!55945 () Bool)

(declare-fun lt!18799 () Int)

(assert (=> d!55945 (contains!57 (quickSort!0 less!5) lt!18799)))

(declare-fun e!44299 () Int)

(assert (=> d!55945 (= lt!18799 e!44299)))

(declare-fun c!20559 () Bool)

(assert (=> d!55945 (= c!20559 (and (is-Cons!622 (quickSort!0 less!5)) (is-Nil!624 (t!47838 (quickSort!0 less!5)))))))

(assert (=> d!55945 (not (isEmpty!677 (quickSort!0 less!5)))))

(assert (=> d!55945 (= (last!17 (quickSort!0 less!5)) lt!18799)))

(declare-fun b!81712 () Bool)

(assert (=> b!81712 (= e!44299 (h!991 (quickSort!0 less!5)))))

(declare-fun b!81713 () Bool)

(assert (=> b!81713 (= e!44299 (last!17 (t!47838 (quickSort!0 less!5))))))

(assert (= (and d!55945 c!20559) b!81712))

(assert (= (and d!55945 (not c!20559)) b!81713))

(assert (=> d!55945 m!76310))

(declare-fun m!76772 () Bool)

(assert (=> d!55945 m!76772))

(assert (=> d!55945 m!76310))

(assert (=> d!55945 m!76466))

(assert (=> b!81713 m!76648))

(assert (=> b!81553 d!55945))

(declare-fun d!55947 () Bool)

(assert (=> d!55947 (= (head!1055 equal!10) (h!991 equal!10))))

(assert (=> b!81553 d!55947))

(assert (=> b!81640 d!55945))

(declare-fun d!55949 () Bool)

(declare-fun e!44300 () Bool)

(assert (=> d!55949 e!44300))

(declare-fun c!20560 () Bool)

(assert (=> d!55949 (= c!20560 (is-Cons!622 (t!47838 more!5)))))

(assert (=> d!55949 (forall!20 (t!47838 more!5) lambda!9629)))

(assert (=> d!55949 (= (filter_preserves_forall!0 (t!47838 more!5) lambda!9666 lambda!9629) true)))

(declare-fun b!81714 () Bool)

(assert (=> b!81714 (= e!44300 (forall!20 (filter!18 (t!47838 more!5) lambda!9666) lambda!9629))))

(declare-fun lt!18800 () Bool)

(assert (=> b!81714 (= lt!18800 (filter_preserves_forall!0 (t!47838 (t!47838 more!5)) lambda!9666 lambda!9629))))

(declare-fun b!81715 () Bool)

(assert (=> b!81715 (= e!44300 (forall!20 (filter!18 (t!47838 more!5) lambda!9666) lambda!9629))))

(assert (= (and d!55949 c!20560) b!81714))

(assert (= (and d!55949 (not c!20560)) b!81715))

(assert (=> d!55949 m!76616))

(assert (=> b!81714 m!76424))

(assert (=> b!81714 m!76424))

(declare-fun m!76774 () Bool)

(assert (=> b!81714 m!76774))

(declare-fun m!76776 () Bool)

(assert (=> b!81714 m!76776))

(assert (=> b!81715 m!76424))

(assert (=> b!81715 m!76424))

(assert (=> b!81715 m!76774))

(assert (=> b!81524 d!55949))

(declare-fun d!55951 () Bool)

(declare-fun res!41814 () Bool)

(declare-fun e!44301 () Bool)

(assert (=> d!55951 (=> res!41814 e!44301)))

(assert (=> d!55951 (= res!41814 (not (and (is-Cons!622 (++!73 (quickSort!0 less!5) equal!10)) (is-Cons!622 (t!47838 (++!73 (quickSort!0 less!5) equal!10))))))))

(assert (=> d!55951 (= (isSorted!1 (++!73 (quickSort!0 less!5) equal!10)) e!44301)))

(declare-fun b!81716 () Bool)

(declare-fun e!44302 () Bool)

(assert (=> b!81716 (= e!44301 e!44302)))

(declare-fun res!41815 () Bool)

(assert (=> b!81716 (=> (not res!41815) (not e!44302))))

(assert (=> b!81716 (= res!41815 (<= (h!991 (++!73 (quickSort!0 less!5) equal!10)) (h!991 (t!47838 (++!73 (quickSort!0 less!5) equal!10)))))))

(declare-fun b!81717 () Bool)

(assert (=> b!81717 (= e!44302 (isSorted!1 (t!47838 (++!73 (quickSort!0 less!5) equal!10))))))

(assert (= (and d!55951 (not res!41814)) b!81716))

(assert (= (and b!81716 res!41815) b!81717))

(declare-fun m!76778 () Bool)

(assert (=> b!81717 m!76778))

(assert (=> b!81552 d!55951))

(assert (=> b!81552 d!55895))

(declare-fun b!81718 () Bool)

(declare-fun res!41818 () Bool)

(declare-fun e!44304 () Bool)

(assert (=> b!81718 (=> (not res!41818) (not e!44304))))

(assert (=> b!81718 (= res!41818 (isSorted!1 equal!10))))

(declare-fun d!55953 () Bool)

(declare-fun e!44303 () Bool)

(assert (=> d!55953 e!44303))

(declare-fun c!20561 () Bool)

(assert (=> d!55953 (= c!20561 (is-Cons!622 (t!47838 (quickSort!0 less!5))))))

(assert (=> d!55953 e!44304))

(declare-fun res!41816 () Bool)

(assert (=> d!55953 (=> (not res!41816) (not e!44304))))

(assert (=> d!55953 (= res!41816 (isSorted!1 (t!47838 (quickSort!0 less!5))))))

(assert (=> d!55953 (= (append_sorted!0 (t!47838 (quickSort!0 less!5)) equal!10) true)))

(declare-fun b!81719 () Bool)

(declare-fun res!41817 () Bool)

(declare-fun e!44305 () Bool)

(assert (=> b!81719 (=> res!41817 e!44305)))

(assert (=> b!81719 (= res!41817 (isEmpty!677 equal!10))))

(declare-fun b!81720 () Bool)

(assert (=> b!81720 (= e!44303 (isSorted!1 (++!73 (t!47838 (quickSort!0 less!5)) equal!10)))))

(declare-fun lt!18801 () Bool)

(assert (=> b!81720 (= lt!18801 (append_sorted!0 (t!47838 (t!47838 (quickSort!0 less!5))) equal!10))))

(declare-fun b!81721 () Bool)

(assert (=> b!81721 (= e!44305 (<= (last!17 (t!47838 (quickSort!0 less!5))) (head!1055 equal!10)))))

(declare-fun b!81722 () Bool)

(assert (=> b!81722 (= e!44304 e!44305)))

(declare-fun res!41819 () Bool)

(assert (=> b!81722 (=> res!41819 e!44305)))

(assert (=> b!81722 (= res!41819 (isEmpty!677 (t!47838 (quickSort!0 less!5))))))

(declare-fun b!81723 () Bool)

(assert (=> b!81723 (= e!44303 (isSorted!1 (++!73 (t!47838 (quickSort!0 less!5)) equal!10)))))

(assert (= (and d!55953 res!41816) b!81718))

(assert (= (and b!81718 res!41818) b!81722))

(assert (= (and b!81722 (not res!41819)) b!81719))

(assert (= (and b!81719 (not res!41817)) b!81721))

(assert (= (and d!55953 c!20561) b!81720))

(assert (= (and d!55953 (not c!20561)) b!81723))

(assert (=> b!81718 m!76460))

(assert (=> b!81720 m!76576))

(assert (=> b!81720 m!76576))

(declare-fun m!76780 () Bool)

(assert (=> b!81720 m!76780))

(declare-fun m!76782 () Bool)

(assert (=> b!81720 m!76782))

(assert (=> b!81722 m!76652))

(assert (=> b!81719 m!76468))

(assert (=> b!81723 m!76576))

(assert (=> b!81723 m!76576))

(assert (=> b!81723 m!76780))

(assert (=> b!81721 m!76648))

(assert (=> b!81721 m!76472))

(declare-fun m!76784 () Bool)

(assert (=> d!55953 m!76784))

(assert (=> b!81552 d!55953))

(declare-fun b!81724 () Bool)

(declare-fun e!44307 () List!665)

(declare-fun lt!18802 () List!665)

(assert (=> b!81724 (= e!44307 (Cons!622 (h!991 (t!47838 less!5)) lt!18802))))

(declare-fun b!81725 () Bool)

(declare-fun e!44309 () Bool)

(assert (=> b!81725 (= e!44309 (dynLambda!984 lambda!9669 (h!991 (t!47838 less!5))))))

(declare-fun b!81726 () Bool)

(assert (=> b!81726 (= e!44307 lt!18802)))

(declare-fun d!55955 () Bool)

(declare-fun e!44306 () Bool)

(assert (=> d!55955 e!44306))

(declare-fun res!41822 () Bool)

(assert (=> d!55955 (=> (not res!41822) (not e!44306))))

(declare-fun lt!18803 () List!665)

(assert (=> d!55955 (= res!41822 (<= (size!653 lt!18803) (size!653 (t!47838 less!5))))))

(declare-fun e!44308 () List!665)

(assert (=> d!55955 (= lt!18803 e!44308)))

(declare-fun c!20563 () Bool)

(assert (=> d!55955 (= c!20563 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!55955 (= (filter!18 (t!47838 less!5) lambda!9669) lt!18803)))

(declare-fun b!81727 () Bool)

(declare-fun res!41820 () Bool)

(assert (=> b!81727 (=> (not res!41820) (not e!44306))))

(assert (=> b!81727 (= res!41820 (subset (content!124 lt!18803) (content!124 (t!47838 less!5))))))

(declare-fun b!81728 () Bool)

(assert (=> b!81728 (= e!44308 Nil!624)))

(declare-fun b!81729 () Bool)

(assert (=> b!81729 (= e!44306 (forall!20 lt!18803 lambda!9669))))

(declare-fun b!81730 () Bool)

(assert (=> b!81730 (= e!44308 e!44307)))

(declare-fun c!20562 () Bool)

(assert (=> b!81730 (= c!20562 e!44309)))

(declare-fun res!41821 () Bool)

(assert (=> b!81730 (=> (not res!41821) (not e!44309))))

(assert (=> b!81730 (= res!41821 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!81730 (= lt!18802 (filter!18 (t!47838 (t!47838 less!5)) lambda!9669))))

(assert (= (and b!81730 res!41821) b!81725))

(assert (= (and b!81730 c!20562) b!81724))

(assert (= (and b!81730 (not c!20562)) b!81726))

(assert (= (and d!55955 c!20563) b!81728))

(assert (= (and d!55955 (not c!20563)) b!81730))

(assert (= (and d!55955 res!41822) b!81727))

(assert (= (and b!81727 res!41820) b!81729))

(declare-fun b_lambda!16113 () Bool)

(assert (=> (not b_lambda!16113) (not b!81725)))

(declare-fun m!76786 () Bool)

(assert (=> b!81729 m!76786))

(declare-fun m!76788 () Bool)

(assert (=> b!81727 m!76788))

(declare-fun m!76790 () Bool)

(assert (=> b!81727 m!76790))

(declare-fun m!76792 () Bool)

(assert (=> b!81725 m!76792))

(declare-fun m!76794 () Bool)

(assert (=> d!55955 m!76794))

(declare-fun m!76796 () Bool)

(assert (=> d!55955 m!76796))

(declare-fun m!76798 () Bool)

(assert (=> b!81730 m!76798))

(assert (=> b!81537 d!55955))

(declare-fun bs!39061 () Bool)

(declare-fun b!81734 () Bool)

(assert (= bs!39061 (and b!81734 b!81517)))

(declare-fun lambda!9709 () Int)

(assert (=> bs!39061 (not (= lambda!9709 lambda!9663))))

(assert (=> bs!39061 (not (= lambda!9709 lambda!9662))))

(assert (=> bs!39061 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9709 lambda!9661))))

(declare-fun bs!39062 () Bool)

(assert (= bs!39062 (and b!81734 b!81462)))

(assert (=> bs!39062 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 ls!96)) (= lambda!9709 lambda!9627))))

(declare-fun bs!39063 () Bool)

(assert (= bs!39063 (and b!81734 b!81495)))

(assert (=> bs!39063 (not (= lambda!9709 lambda!9647))))

(declare-fun bs!39064 () Bool)

(assert (= bs!39064 (and b!81734 b!81709)))

(assert (=> bs!39064 (not (= lambda!9709 lambda!9708))))

(assert (=> bs!39064 (not (= lambda!9709 lambda!9707))))

(assert (=> bs!39064 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18751)) (= lambda!9709 lambda!9706))))

(declare-fun bs!39065 () Bool)

(assert (= bs!39065 (and b!81734 b!81460)))

(assert (=> bs!39065 (not (= lambda!9709 lambda!9628))))

(declare-fun bs!39066 () Bool)

(assert (= bs!39066 (and b!81734 b!81560)))

(assert (=> bs!39066 (not (= lambda!9709 lambda!9678))))

(assert (=> bs!39066 (not (= lambda!9709 lambda!9677))))

(assert (=> bs!39066 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9709 lambda!9676))))

(declare-fun bs!39067 () Bool)

(assert (= bs!39067 (and b!81734 b!81490)))

(assert (=> bs!39067 (not (= lambda!9709 lambda!9639))))

(assert (=> bs!39067 (not (= lambda!9709 lambda!9638))))

(assert (=> bs!39067 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9709 lambda!9637))))

(declare-fun bs!39068 () Bool)

(assert (= bs!39068 (and b!81734 b!81691)))

(assert (=> bs!39068 (not (= lambda!9709 lambda!9702))))

(assert (=> bs!39068 (not (= lambda!9709 lambda!9701))))

(assert (=> bs!39068 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18728)) (= lambda!9709 lambda!9700))))

(declare-fun bs!39069 () Bool)

(assert (= bs!39069 (and b!81734 b!81466)))

(assert (=> bs!39069 (not (= lambda!9709 lambda!9629))))

(declare-fun bs!39070 () Bool)

(assert (= bs!39070 (and b!81734 d!55883)))

(assert (=> bs!39070 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 ls!96)) (= lambda!9709 lambda!9685))))

(declare-fun bs!39071 () Bool)

(assert (= bs!39071 (and b!81734 d!55861)))

(assert (=> bs!39071 (not (= lambda!9709 lambda!9646))))

(declare-fun bs!39072 () Bool)

(assert (= bs!39072 (and b!81734 b!81537)))

(assert (=> bs!39072 (not (= lambda!9709 lambda!9669))))

(assert (=> bs!39072 (not (= lambda!9709 lambda!9668))))

(assert (=> bs!39072 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9709 lambda!9667))))

(declare-fun bs!39073 () Bool)

(assert (= bs!39073 (and b!81734 b!81587)))

(assert (=> bs!39073 (not (= lambda!9709 lambda!9686))))

(declare-fun bs!39074 () Bool)

(assert (= bs!39074 (and b!81734 b!81496)))

(assert (=> bs!39074 (not (= lambda!9709 lambda!9648))))

(declare-fun bs!39075 () Bool)

(assert (= bs!39075 (and b!81734 d!55889)))

(assert (=> bs!39075 (not (= lambda!9709 lambda!9693))))

(declare-fun bs!39076 () Bool)

(assert (= bs!39076 (and b!81734 b!81705)))

(assert (=> bs!39076 (not (= lambda!9709 lambda!9705))))

(assert (=> bs!39076 (not (= lambda!9709 lambda!9704))))

(assert (=> bs!39076 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18752)) (= lambda!9709 lambda!9703))))

(declare-fun bs!39077 () Bool)

(assert (= bs!39077 (and b!81734 b!81522)))

(assert (=> bs!39077 (not (= lambda!9709 lambda!9666))))

(assert (=> bs!39077 (not (= lambda!9709 lambda!9665))))

(assert (=> bs!39077 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9709 lambda!9664))))

(declare-fun bs!39078 () Bool)

(assert (= bs!39078 (and b!81734 b!81598)))

(assert (=> bs!39078 (not (= lambda!9709 lambda!9690))))

(assert (=> bs!39078 (not (= lambda!9709 lambda!9689))))

(assert (=> bs!39078 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9709 lambda!9688))))

(declare-fun bs!39079 () Bool)

(assert (= bs!39079 (and b!81734 b!81588)))

(assert (=> bs!39079 (not (= lambda!9709 lambda!9687))))

(declare-fun bs!39080 () Bool)

(assert (= bs!39080 (and b!81734 b!81468)))

(assert (=> bs!39080 (not (= lambda!9709 lambda!9630))))

(declare-fun bs!39081 () Bool)

(assert (= bs!39081 (and b!81734 b!81633)))

(assert (=> bs!39081 (not (= lambda!9709 lambda!9696))))

(assert (=> bs!39081 (not (= lambda!9709 lambda!9695))))

(assert (=> bs!39081 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9709 lambda!9694))))

(declare-fun bs!39082 () Bool)

(assert (= bs!39082 (and b!81734 b!81687)))

(assert (=> bs!39082 (not (= lambda!9709 lambda!9699))))

(assert (=> bs!39082 (not (= lambda!9709 lambda!9698))))

(assert (=> bs!39082 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18730)) (= lambda!9709 lambda!9697))))

(assert (=> b!81734 true))

(declare-fun lambda!9710 () Int)

(assert (=> bs!39061 (not (= lambda!9710 lambda!9663))))

(assert (=> bs!39061 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9710 lambda!9662))))

(assert (=> bs!39061 (not (= lambda!9710 lambda!9661))))

(assert (=> b!81734 (not (= lambda!9710 lambda!9709))))

(assert (=> bs!39062 (not (= lambda!9710 lambda!9627))))

(assert (=> bs!39063 (not (= lambda!9710 lambda!9647))))

(assert (=> bs!39064 (not (= lambda!9710 lambda!9708))))

(assert (=> bs!39064 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18751)) (= lambda!9710 lambda!9707))))

(assert (=> bs!39064 (not (= lambda!9710 lambda!9706))))

(assert (=> bs!39065 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 ls!96)) (= lambda!9710 lambda!9628))))

(assert (=> bs!39066 (not (= lambda!9710 lambda!9678))))

(assert (=> bs!39066 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9710 lambda!9677))))

(assert (=> bs!39066 (not (= lambda!9710 lambda!9676))))

(assert (=> bs!39067 (not (= lambda!9710 lambda!9639))))

(assert (=> bs!39067 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9710 lambda!9638))))

(assert (=> bs!39067 (not (= lambda!9710 lambda!9637))))

(assert (=> bs!39068 (not (= lambda!9710 lambda!9702))))

(assert (=> bs!39068 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18728)) (= lambda!9710 lambda!9701))))

(assert (=> bs!39068 (not (= lambda!9710 lambda!9700))))

(assert (=> bs!39069 (not (= lambda!9710 lambda!9629))))

(assert (=> bs!39070 (not (= lambda!9710 lambda!9685))))

(assert (=> bs!39071 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 ls!96)) (= lambda!9710 lambda!9646))))

(assert (=> bs!39072 (not (= lambda!9710 lambda!9669))))

(assert (=> bs!39072 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9710 lambda!9668))))

(assert (=> bs!39072 (not (= lambda!9710 lambda!9667))))

(assert (=> bs!39073 (not (= lambda!9710 lambda!9686))))

(assert (=> bs!39074 (not (= lambda!9710 lambda!9648))))

(assert (=> bs!39075 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 ls!96)) (= lambda!9710 lambda!9693))))

(assert (=> bs!39076 (not (= lambda!9710 lambda!9705))))

(assert (=> bs!39076 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18752)) (= lambda!9710 lambda!9704))))

(assert (=> bs!39076 (not (= lambda!9710 lambda!9703))))

(assert (=> bs!39077 (not (= lambda!9710 lambda!9666))))

(assert (=> bs!39077 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9710 lambda!9665))))

(assert (=> bs!39077 (not (= lambda!9710 lambda!9664))))

(assert (=> bs!39078 (not (= lambda!9710 lambda!9690))))

(assert (=> bs!39078 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9710 lambda!9689))))

(assert (=> bs!39078 (not (= lambda!9710 lambda!9688))))

(assert (=> bs!39079 (not (= lambda!9710 lambda!9687))))

(assert (=> bs!39080 (not (= lambda!9710 lambda!9630))))

(assert (=> bs!39081 (not (= lambda!9710 lambda!9696))))

(assert (=> bs!39081 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9710 lambda!9695))))

(assert (=> bs!39081 (not (= lambda!9710 lambda!9694))))

(assert (=> bs!39082 (not (= lambda!9710 lambda!9699))))

(assert (=> bs!39082 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18730)) (= lambda!9710 lambda!9698))))

(assert (=> bs!39082 (not (= lambda!9710 lambda!9697))))

(assert (=> b!81734 true))

(declare-fun lambda!9711 () Int)

(assert (=> bs!39061 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9711 lambda!9663))))

(assert (=> bs!39061 (not (= lambda!9711 lambda!9662))))

(assert (=> bs!39061 (not (= lambda!9711 lambda!9661))))

(assert (=> b!81734 (not (= lambda!9711 lambda!9710))))

(assert (=> b!81734 (not (= lambda!9711 lambda!9709))))

(assert (=> bs!39062 (not (= lambda!9711 lambda!9627))))

(assert (=> bs!39063 (not (= lambda!9711 lambda!9647))))

(assert (=> bs!39064 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18751)) (= lambda!9711 lambda!9708))))

(assert (=> bs!39064 (not (= lambda!9711 lambda!9707))))

(assert (=> bs!39064 (not (= lambda!9711 lambda!9706))))

(assert (=> bs!39065 (not (= lambda!9711 lambda!9628))))

(assert (=> bs!39066 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9711 lambda!9678))))

(assert (=> bs!39066 (not (= lambda!9711 lambda!9677))))

(assert (=> bs!39066 (not (= lambda!9711 lambda!9676))))

(assert (=> bs!39067 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9711 lambda!9639))))

(assert (=> bs!39067 (not (= lambda!9711 lambda!9638))))

(assert (=> bs!39067 (not (= lambda!9711 lambda!9637))))

(assert (=> bs!39068 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18728)) (= lambda!9711 lambda!9702))))

(assert (=> bs!39068 (not (= lambda!9711 lambda!9701))))

(assert (=> bs!39068 (not (= lambda!9711 lambda!9700))))

(assert (=> bs!39069 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 ls!96)) (= lambda!9711 lambda!9629))))

(assert (=> bs!39070 (not (= lambda!9711 lambda!9685))))

(assert (=> bs!39071 (not (= lambda!9711 lambda!9646))))

(assert (=> bs!39072 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9711 lambda!9669))))

(assert (=> bs!39072 (not (= lambda!9711 lambda!9668))))

(assert (=> bs!39072 (not (= lambda!9711 lambda!9667))))

(assert (=> bs!39073 (not (= lambda!9711 lambda!9686))))

(assert (=> bs!39074 (not (= lambda!9711 lambda!9648))))

(assert (=> bs!39075 (not (= lambda!9711 lambda!9693))))

(assert (=> bs!39076 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18752)) (= lambda!9711 lambda!9705))))

(assert (=> bs!39076 (not (= lambda!9711 lambda!9704))))

(assert (=> bs!39076 (not (= lambda!9711 lambda!9703))))

(assert (=> bs!39077 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 more!5)) (= lambda!9711 lambda!9666))))

(assert (=> bs!39077 (not (= lambda!9711 lambda!9665))))

(assert (=> bs!39077 (not (= lambda!9711 lambda!9664))))

(assert (=> bs!39078 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9711 lambda!9690))))

(assert (=> bs!39078 (not (= lambda!9711 lambda!9689))))

(assert (=> bs!39078 (not (= lambda!9711 lambda!9688))))

(assert (=> bs!39079 (not (= lambda!9711 lambda!9687))))

(assert (=> bs!39080 (not (= lambda!9711 lambda!9630))))

(assert (=> bs!39081 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 less!5)) (= lambda!9711 lambda!9696))))

(assert (=> bs!39081 (not (= lambda!9711 lambda!9695))))

(assert (=> bs!39081 (not (= lambda!9711 lambda!9694))))

(assert (=> bs!39082 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (h!991 lt!18730)) (= lambda!9711 lambda!9699))))

(assert (=> bs!39082 (not (= lambda!9711 lambda!9698))))

(assert (=> bs!39082 (not (= lambda!9711 lambda!9697))))

(assert (=> b!81734 true))

(declare-fun b!81731 () Bool)

(declare-fun e!44310 () List!665)

(assert (=> b!81731 (= e!44310 Nil!624)))

(declare-fun d!55957 () Bool)

(declare-fun c!20564 () Bool)

(assert (=> d!55957 (= c!20564 (is-Nil!624 (filter!18 (t!47838 less!5) lambda!9667)))))

(assert (=> d!55957 (= (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) e!44310)))

(declare-fun b!81733 () Bool)

(declare-fun e!44311 () List!665)

(assert (=> b!81733 (= e!44311 (filter!18 (t!47838 less!5) lambda!9667))))

(declare-fun b!81732 () Bool)

(assert (=> b!81732 (= e!44310 e!44311)))

(declare-fun c!20565 () Bool)

(assert (=> b!81732 (= c!20565 (and (is-Cons!622 (filter!18 (t!47838 less!5) lambda!9667)) (is-Nil!624 (t!47838 (filter!18 (t!47838 less!5) lambda!9667)))))))

(assert (=> b!81734 (= e!44311 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 less!5) lambda!9667)) lambda!9709)) (Cons!622 (h!991 (filter!18 (t!47838 less!5) lambda!9667)) (filter!18 (t!47838 (filter!18 (t!47838 less!5) lambda!9667)) lambda!9710))) (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 less!5) lambda!9667)) lambda!9711))))))

(assert (= (and b!81732 c!20565) b!81733))

(assert (= (and b!81732 (not c!20565)) b!81734))

(assert (= (and d!55957 c!20564) b!81731))

(assert (= (and d!55957 (not c!20564)) b!81732))

(declare-fun m!76800 () Bool)

(assert (=> b!81734 m!76800))

(declare-fun m!76802 () Bool)

(assert (=> b!81734 m!76802))

(assert (=> b!81734 m!76800))

(declare-fun m!76804 () Bool)

(assert (=> b!81734 m!76804))

(declare-fun m!76806 () Bool)

(assert (=> b!81734 m!76806))

(declare-fun m!76808 () Bool)

(assert (=> b!81734 m!76808))

(assert (=> b!81734 m!76804))

(assert (=> b!81734 m!76808))

(declare-fun m!76810 () Bool)

(assert (=> b!81734 m!76810))

(assert (=> b!81734 m!76806))

(assert (=> b!81734 m!76802))

(declare-fun m!76812 () Bool)

(assert (=> b!81734 m!76812))

(assert (=> b!81537 d!55957))

(declare-fun b!81737 () Bool)

(declare-fun res!41823 () Bool)

(declare-fun e!44313 () Bool)

(assert (=> b!81737 (=> (not res!41823) (not e!44313))))

(declare-fun lt!18804 () List!665)

(assert (=> b!81737 (= res!41823 (= (size!653 lt!18804) (+ (size!653 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667))) (size!653 (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668))))))))

(declare-fun b!81736 () Bool)

(declare-fun e!44312 () List!665)

(assert (=> b!81736 (= e!44312 (Cons!622 (h!991 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667))) (++!73 (t!47838 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667))) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))))))

(declare-fun b!81738 () Bool)

(assert (=> b!81738 (= e!44313 (or (not (= (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)) Nil!624)) (= lt!18804 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)))))))

(declare-fun b!81735 () Bool)

(assert (=> b!81735 (= e!44312 (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))))

(declare-fun d!55959 () Bool)

(assert (=> d!55959 e!44313))

(declare-fun res!41824 () Bool)

(assert (=> d!55959 (=> (not res!41824) (not e!44313))))

(assert (=> d!55959 (= res!41824 (= (content!124 lt!18804) (union (content!124 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667))) (content!124 (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668))))))))

(assert (=> d!55959 (= lt!18804 e!44312)))

(declare-fun c!20566 () Bool)

(assert (=> d!55959 (= c!20566 (is-Nil!624 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667))))))

(assert (=> d!55959 (= (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668))) lt!18804)))

(assert (= (and d!55959 c!20566) b!81735))

(assert (= (and d!55959 (not c!20566)) b!81736))

(assert (= (and d!55959 res!41824) b!81737))

(assert (= (and b!81737 res!41823) b!81738))

(declare-fun m!76814 () Bool)

(assert (=> b!81737 m!76814))

(assert (=> b!81737 m!76450))

(declare-fun m!76816 () Bool)

(assert (=> b!81737 m!76816))

(declare-fun m!76818 () Bool)

(assert (=> b!81737 m!76818))

(declare-fun m!76820 () Bool)

(assert (=> b!81736 m!76820))

(declare-fun m!76822 () Bool)

(assert (=> d!55959 m!76822))

(assert (=> d!55959 m!76450))

(declare-fun m!76824 () Bool)

(assert (=> d!55959 m!76824))

(declare-fun m!76826 () Bool)

(assert (=> d!55959 m!76826))

(assert (=> b!81537 d!55959))

(declare-fun bs!39083 () Bool)

(declare-fun b!81742 () Bool)

(assert (= bs!39083 (and b!81742 b!81517)))

(declare-fun lambda!9712 () Int)

(assert (=> bs!39083 (not (= lambda!9712 lambda!9663))))

(assert (=> bs!39083 (not (= lambda!9712 lambda!9662))))

(assert (=> bs!39083 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9712 lambda!9661))))

(declare-fun bs!39084 () Bool)

(assert (= bs!39084 (and b!81742 b!81734)))

(assert (=> bs!39084 (not (= lambda!9712 lambda!9711))))

(assert (=> bs!39084 (not (= lambda!9712 lambda!9710))))

(assert (=> bs!39084 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9712 lambda!9709))))

(declare-fun bs!39085 () Bool)

(assert (= bs!39085 (and b!81742 b!81462)))

(assert (=> bs!39085 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 ls!96)) (= lambda!9712 lambda!9627))))

(declare-fun bs!39086 () Bool)

(assert (= bs!39086 (and b!81742 b!81495)))

(assert (=> bs!39086 (not (= lambda!9712 lambda!9647))))

(declare-fun bs!39087 () Bool)

(assert (= bs!39087 (and b!81742 b!81709)))

(assert (=> bs!39087 (not (= lambda!9712 lambda!9708))))

(assert (=> bs!39087 (not (= lambda!9712 lambda!9707))))

(assert (=> bs!39087 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18751)) (= lambda!9712 lambda!9706))))

(declare-fun bs!39088 () Bool)

(assert (= bs!39088 (and b!81742 b!81460)))

(assert (=> bs!39088 (not (= lambda!9712 lambda!9628))))

(declare-fun bs!39089 () Bool)

(assert (= bs!39089 (and b!81742 b!81560)))

(assert (=> bs!39089 (not (= lambda!9712 lambda!9678))))

(assert (=> bs!39089 (not (= lambda!9712 lambda!9677))))

(assert (=> bs!39089 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9712 lambda!9676))))

(declare-fun bs!39090 () Bool)

(assert (= bs!39090 (and b!81742 b!81490)))

(assert (=> bs!39090 (not (= lambda!9712 lambda!9639))))

(assert (=> bs!39090 (not (= lambda!9712 lambda!9638))))

(assert (=> bs!39090 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9712 lambda!9637))))

(declare-fun bs!39091 () Bool)

(assert (= bs!39091 (and b!81742 b!81691)))

(assert (=> bs!39091 (not (= lambda!9712 lambda!9702))))

(assert (=> bs!39091 (not (= lambda!9712 lambda!9701))))

(assert (=> bs!39091 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18728)) (= lambda!9712 lambda!9700))))

(declare-fun bs!39092 () Bool)

(assert (= bs!39092 (and b!81742 b!81466)))

(assert (=> bs!39092 (not (= lambda!9712 lambda!9629))))

(declare-fun bs!39093 () Bool)

(assert (= bs!39093 (and b!81742 d!55883)))

(assert (=> bs!39093 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 ls!96)) (= lambda!9712 lambda!9685))))

(declare-fun bs!39094 () Bool)

(assert (= bs!39094 (and b!81742 d!55861)))

(assert (=> bs!39094 (not (= lambda!9712 lambda!9646))))

(declare-fun bs!39095 () Bool)

(assert (= bs!39095 (and b!81742 b!81537)))

(assert (=> bs!39095 (not (= lambda!9712 lambda!9669))))

(assert (=> bs!39095 (not (= lambda!9712 lambda!9668))))

(assert (=> bs!39095 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9712 lambda!9667))))

(declare-fun bs!39096 () Bool)

(assert (= bs!39096 (and b!81742 b!81587)))

(assert (=> bs!39096 (not (= lambda!9712 lambda!9686))))

(declare-fun bs!39097 () Bool)

(assert (= bs!39097 (and b!81742 b!81496)))

(assert (=> bs!39097 (not (= lambda!9712 lambda!9648))))

(declare-fun bs!39098 () Bool)

(assert (= bs!39098 (and b!81742 d!55889)))

(assert (=> bs!39098 (not (= lambda!9712 lambda!9693))))

(declare-fun bs!39099 () Bool)

(assert (= bs!39099 (and b!81742 b!81705)))

(assert (=> bs!39099 (not (= lambda!9712 lambda!9705))))

(assert (=> bs!39099 (not (= lambda!9712 lambda!9704))))

(assert (=> bs!39099 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18752)) (= lambda!9712 lambda!9703))))

(declare-fun bs!39100 () Bool)

(assert (= bs!39100 (and b!81742 b!81522)))

(assert (=> bs!39100 (not (= lambda!9712 lambda!9666))))

(assert (=> bs!39100 (not (= lambda!9712 lambda!9665))))

(assert (=> bs!39100 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9712 lambda!9664))))

(declare-fun bs!39101 () Bool)

(assert (= bs!39101 (and b!81742 b!81598)))

(assert (=> bs!39101 (not (= lambda!9712 lambda!9690))))

(assert (=> bs!39101 (not (= lambda!9712 lambda!9689))))

(assert (=> bs!39101 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9712 lambda!9688))))

(declare-fun bs!39102 () Bool)

(assert (= bs!39102 (and b!81742 b!81588)))

(assert (=> bs!39102 (not (= lambda!9712 lambda!9687))))

(declare-fun bs!39103 () Bool)

(assert (= bs!39103 (and b!81742 b!81468)))

(assert (=> bs!39103 (not (= lambda!9712 lambda!9630))))

(declare-fun bs!39104 () Bool)

(assert (= bs!39104 (and b!81742 b!81633)))

(assert (=> bs!39104 (not (= lambda!9712 lambda!9696))))

(assert (=> bs!39104 (not (= lambda!9712 lambda!9695))))

(assert (=> bs!39104 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9712 lambda!9694))))

(declare-fun bs!39105 () Bool)

(assert (= bs!39105 (and b!81742 b!81687)))

(assert (=> bs!39105 (not (= lambda!9712 lambda!9699))))

(assert (=> bs!39105 (not (= lambda!9712 lambda!9698))))

(assert (=> bs!39105 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18730)) (= lambda!9712 lambda!9697))))

(assert (=> b!81742 true))

(declare-fun lambda!9713 () Int)

(assert (=> bs!39083 (not (= lambda!9713 lambda!9663))))

(assert (=> bs!39083 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9713 lambda!9662))))

(assert (=> bs!39083 (not (= lambda!9713 lambda!9661))))

(assert (=> bs!39084 (not (= lambda!9713 lambda!9711))))

(assert (=> bs!39084 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9713 lambda!9710))))

(assert (=> bs!39084 (not (= lambda!9713 lambda!9709))))

(assert (=> bs!39085 (not (= lambda!9713 lambda!9627))))

(assert (=> bs!39086 (not (= lambda!9713 lambda!9647))))

(assert (=> b!81742 (not (= lambda!9713 lambda!9712))))

(assert (=> bs!39087 (not (= lambda!9713 lambda!9708))))

(assert (=> bs!39087 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18751)) (= lambda!9713 lambda!9707))))

(assert (=> bs!39087 (not (= lambda!9713 lambda!9706))))

(assert (=> bs!39088 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 ls!96)) (= lambda!9713 lambda!9628))))

(assert (=> bs!39089 (not (= lambda!9713 lambda!9678))))

(assert (=> bs!39089 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9713 lambda!9677))))

(assert (=> bs!39089 (not (= lambda!9713 lambda!9676))))

(assert (=> bs!39090 (not (= lambda!9713 lambda!9639))))

(assert (=> bs!39090 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9713 lambda!9638))))

(assert (=> bs!39090 (not (= lambda!9713 lambda!9637))))

(assert (=> bs!39091 (not (= lambda!9713 lambda!9702))))

(assert (=> bs!39091 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18728)) (= lambda!9713 lambda!9701))))

(assert (=> bs!39091 (not (= lambda!9713 lambda!9700))))

(assert (=> bs!39092 (not (= lambda!9713 lambda!9629))))

(assert (=> bs!39093 (not (= lambda!9713 lambda!9685))))

(assert (=> bs!39094 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 ls!96)) (= lambda!9713 lambda!9646))))

(assert (=> bs!39095 (not (= lambda!9713 lambda!9669))))

(assert (=> bs!39095 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9713 lambda!9668))))

(assert (=> bs!39095 (not (= lambda!9713 lambda!9667))))

(assert (=> bs!39096 (not (= lambda!9713 lambda!9686))))

(assert (=> bs!39097 (not (= lambda!9713 lambda!9648))))

(assert (=> bs!39098 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 ls!96)) (= lambda!9713 lambda!9693))))

(assert (=> bs!39099 (not (= lambda!9713 lambda!9705))))

(assert (=> bs!39099 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18752)) (= lambda!9713 lambda!9704))))

(assert (=> bs!39099 (not (= lambda!9713 lambda!9703))))

(assert (=> bs!39100 (not (= lambda!9713 lambda!9666))))

(assert (=> bs!39100 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9713 lambda!9665))))

(assert (=> bs!39100 (not (= lambda!9713 lambda!9664))))

(assert (=> bs!39101 (not (= lambda!9713 lambda!9690))))

(assert (=> bs!39101 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9713 lambda!9689))))

(assert (=> bs!39101 (not (= lambda!9713 lambda!9688))))

(assert (=> bs!39102 (not (= lambda!9713 lambda!9687))))

(assert (=> bs!39103 (not (= lambda!9713 lambda!9630))))

(assert (=> bs!39104 (not (= lambda!9713 lambda!9696))))

(assert (=> bs!39104 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9713 lambda!9695))))

(assert (=> bs!39104 (not (= lambda!9713 lambda!9694))))

(assert (=> bs!39105 (not (= lambda!9713 lambda!9699))))

(assert (=> bs!39105 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18730)) (= lambda!9713 lambda!9698))))

(assert (=> bs!39105 (not (= lambda!9713 lambda!9697))))

(assert (=> b!81742 true))

(declare-fun lambda!9714 () Int)

(assert (=> bs!39083 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9714 lambda!9663))))

(assert (=> bs!39083 (not (= lambda!9714 lambda!9662))))

(assert (=> bs!39083 (not (= lambda!9714 lambda!9661))))

(assert (=> bs!39084 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9714 lambda!9711))))

(assert (=> bs!39084 (not (= lambda!9714 lambda!9710))))

(assert (=> bs!39084 (not (= lambda!9714 lambda!9709))))

(assert (=> bs!39085 (not (= lambda!9714 lambda!9627))))

(assert (=> bs!39086 (not (= lambda!9714 lambda!9647))))

(assert (=> b!81742 (not (= lambda!9714 lambda!9713))))

(assert (=> b!81742 (not (= lambda!9714 lambda!9712))))

(assert (=> bs!39087 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18751)) (= lambda!9714 lambda!9708))))

(assert (=> bs!39087 (not (= lambda!9714 lambda!9707))))

(assert (=> bs!39087 (not (= lambda!9714 lambda!9706))))

(assert (=> bs!39088 (not (= lambda!9714 lambda!9628))))

(assert (=> bs!39089 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9714 lambda!9678))))

(assert (=> bs!39089 (not (= lambda!9714 lambda!9677))))

(assert (=> bs!39089 (not (= lambda!9714 lambda!9676))))

(assert (=> bs!39090 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9714 lambda!9639))))

(assert (=> bs!39090 (not (= lambda!9714 lambda!9638))))

(assert (=> bs!39090 (not (= lambda!9714 lambda!9637))))

(assert (=> bs!39091 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18728)) (= lambda!9714 lambda!9702))))

(assert (=> bs!39091 (not (= lambda!9714 lambda!9701))))

(assert (=> bs!39091 (not (= lambda!9714 lambda!9700))))

(assert (=> bs!39092 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 ls!96)) (= lambda!9714 lambda!9629))))

(assert (=> bs!39093 (not (= lambda!9714 lambda!9685))))

(assert (=> bs!39094 (not (= lambda!9714 lambda!9646))))

(assert (=> bs!39095 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9714 lambda!9669))))

(assert (=> bs!39095 (not (= lambda!9714 lambda!9668))))

(assert (=> bs!39095 (not (= lambda!9714 lambda!9667))))

(assert (=> bs!39096 (not (= lambda!9714 lambda!9686))))

(assert (=> bs!39097 (not (= lambda!9714 lambda!9648))))

(assert (=> bs!39098 (not (= lambda!9714 lambda!9693))))

(assert (=> bs!39099 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18752)) (= lambda!9714 lambda!9705))))

(assert (=> bs!39099 (not (= lambda!9714 lambda!9704))))

(assert (=> bs!39099 (not (= lambda!9714 lambda!9703))))

(assert (=> bs!39100 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 more!5)) (= lambda!9714 lambda!9666))))

(assert (=> bs!39100 (not (= lambda!9714 lambda!9665))))

(assert (=> bs!39100 (not (= lambda!9714 lambda!9664))))

(assert (=> bs!39101 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9714 lambda!9690))))

(assert (=> bs!39101 (not (= lambda!9714 lambda!9689))))

(assert (=> bs!39101 (not (= lambda!9714 lambda!9688))))

(assert (=> bs!39102 (not (= lambda!9714 lambda!9687))))

(assert (=> bs!39103 (not (= lambda!9714 lambda!9630))))

(assert (=> bs!39104 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 less!5)) (= lambda!9714 lambda!9696))))

(assert (=> bs!39104 (not (= lambda!9714 lambda!9695))))

(assert (=> bs!39104 (not (= lambda!9714 lambda!9694))))

(assert (=> bs!39105 (= (= (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (h!991 lt!18730)) (= lambda!9714 lambda!9699))))

(assert (=> bs!39105 (not (= lambda!9714 lambda!9698))))

(assert (=> bs!39105 (not (= lambda!9714 lambda!9697))))

(assert (=> b!81742 true))

(declare-fun b!81739 () Bool)

(declare-fun e!44314 () List!665)

(assert (=> b!81739 (= e!44314 Nil!624)))

(declare-fun d!55961 () Bool)

(declare-fun c!20567 () Bool)

(assert (=> d!55961 (= c!20567 (is-Nil!624 (filter!18 (t!47838 less!5) lambda!9669)))))

(assert (=> d!55961 (= (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669)) e!44314)))

(declare-fun b!81741 () Bool)

(declare-fun e!44315 () List!665)

(assert (=> b!81741 (= e!44315 (filter!18 (t!47838 less!5) lambda!9669))))

(declare-fun b!81740 () Bool)

(assert (=> b!81740 (= e!44314 e!44315)))

(declare-fun c!20568 () Bool)

(assert (=> b!81740 (= c!20568 (and (is-Cons!622 (filter!18 (t!47838 less!5) lambda!9669)) (is-Nil!624 (t!47838 (filter!18 (t!47838 less!5) lambda!9669)))))))

(assert (=> b!81742 (= e!44315 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 less!5) lambda!9669)) lambda!9712)) (Cons!622 (h!991 (filter!18 (t!47838 less!5) lambda!9669)) (filter!18 (t!47838 (filter!18 (t!47838 less!5) lambda!9669)) lambda!9713))) (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 less!5) lambda!9669)) lambda!9714))))))

(assert (= (and b!81740 c!20568) b!81741))

(assert (= (and b!81740 (not c!20568)) b!81742))

(assert (= (and d!55961 c!20567) b!81739))

(assert (= (and d!55961 (not c!20567)) b!81740))

(declare-fun m!76828 () Bool)

(assert (=> b!81742 m!76828))

(declare-fun m!76830 () Bool)

(assert (=> b!81742 m!76830))

(assert (=> b!81742 m!76828))

(declare-fun m!76832 () Bool)

(assert (=> b!81742 m!76832))

(declare-fun m!76834 () Bool)

(assert (=> b!81742 m!76834))

(declare-fun m!76836 () Bool)

(assert (=> b!81742 m!76836))

(assert (=> b!81742 m!76832))

(assert (=> b!81742 m!76836))

(declare-fun m!76838 () Bool)

(assert (=> b!81742 m!76838))

(assert (=> b!81742 m!76834))

(assert (=> b!81742 m!76830))

(declare-fun m!76840 () Bool)

(assert (=> b!81742 m!76840))

(assert (=> b!81537 d!55961))

(declare-fun b!81745 () Bool)

(declare-fun res!41825 () Bool)

(declare-fun e!44317 () Bool)

(assert (=> b!81745 (=> (not res!41825) (not e!44317))))

(declare-fun lt!18805 () List!665)

(assert (=> b!81745 (= res!41825 (= (size!653 lt!18805) (+ (size!653 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))) (size!653 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669))))))))

(declare-fun b!81744 () Bool)

(declare-fun e!44316 () List!665)

(assert (=> b!81744 (= e!44316 (Cons!622 (h!991 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))) (++!73 (t!47838 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))) (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669)))))))

(declare-fun b!81746 () Bool)

(assert (=> b!81746 (= e!44317 (or (not (= (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669)) Nil!624)) (= lt!18805 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668))))))))

(declare-fun b!81743 () Bool)

(assert (=> b!81743 (= e!44316 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669)))))

(declare-fun d!55963 () Bool)

(assert (=> d!55963 e!44317))

(declare-fun res!41826 () Bool)

(assert (=> d!55963 (=> (not res!41826) (not e!44317))))

(assert (=> d!55963 (= res!41826 (= (content!124 lt!18805) (union (content!124 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))) (content!124 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669))))))))

(assert (=> d!55963 (= lt!18805 e!44316)))

(declare-fun c!20569 () Bool)

(assert (=> d!55963 (= c!20569 (is-Nil!624 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668)))))))

(assert (=> d!55963 (= (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 less!5) lambda!9667)) (Cons!622 (h!991 less!5) (filter!18 (t!47838 less!5) lambda!9668))) (quickSort!0 (filter!18 (t!47838 less!5) lambda!9669))) lt!18805)))

(assert (= (and d!55963 c!20569) b!81743))

(assert (= (and d!55963 (not c!20569)) b!81744))

(assert (= (and d!55963 res!41826) b!81745))

(assert (= (and b!81745 res!41825) b!81746))

(declare-fun m!76842 () Bool)

(assert (=> b!81745 m!76842))

(assert (=> b!81745 m!76452))

(declare-fun m!76844 () Bool)

(assert (=> b!81745 m!76844))

(assert (=> b!81745 m!76448))

(declare-fun m!76846 () Bool)

(assert (=> b!81745 m!76846))

(assert (=> b!81744 m!76448))

(declare-fun m!76848 () Bool)

(assert (=> b!81744 m!76848))

(declare-fun m!76850 () Bool)

(assert (=> d!55963 m!76850))

(assert (=> d!55963 m!76452))

(declare-fun m!76852 () Bool)

(assert (=> d!55963 m!76852))

(assert (=> d!55963 m!76448))

(declare-fun m!76854 () Bool)

(assert (=> d!55963 m!76854))

(assert (=> b!81537 d!55963))

(declare-fun b!81747 () Bool)

(declare-fun e!44319 () List!665)

(declare-fun lt!18806 () List!665)

(assert (=> b!81747 (= e!44319 (Cons!622 (h!991 (t!47838 less!5)) lt!18806))))

(declare-fun b!81748 () Bool)

(declare-fun e!44321 () Bool)

(assert (=> b!81748 (= e!44321 (dynLambda!984 lambda!9667 (h!991 (t!47838 less!5))))))

(declare-fun b!81749 () Bool)

(assert (=> b!81749 (= e!44319 lt!18806)))

(declare-fun d!55965 () Bool)

(declare-fun e!44318 () Bool)

(assert (=> d!55965 e!44318))

(declare-fun res!41829 () Bool)

(assert (=> d!55965 (=> (not res!41829) (not e!44318))))

(declare-fun lt!18807 () List!665)

(assert (=> d!55965 (= res!41829 (<= (size!653 lt!18807) (size!653 (t!47838 less!5))))))

(declare-fun e!44320 () List!665)

(assert (=> d!55965 (= lt!18807 e!44320)))

(declare-fun c!20571 () Bool)

(assert (=> d!55965 (= c!20571 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!55965 (= (filter!18 (t!47838 less!5) lambda!9667) lt!18807)))

(declare-fun b!81750 () Bool)

(declare-fun res!41827 () Bool)

(assert (=> b!81750 (=> (not res!41827) (not e!44318))))

(assert (=> b!81750 (= res!41827 (subset (content!124 lt!18807) (content!124 (t!47838 less!5))))))

(declare-fun b!81751 () Bool)

(assert (=> b!81751 (= e!44320 Nil!624)))

(declare-fun b!81752 () Bool)

(assert (=> b!81752 (= e!44318 (forall!20 lt!18807 lambda!9667))))

(declare-fun b!81753 () Bool)

(assert (=> b!81753 (= e!44320 e!44319)))

(declare-fun c!20570 () Bool)

(assert (=> b!81753 (= c!20570 e!44321)))

(declare-fun res!41828 () Bool)

(assert (=> b!81753 (=> (not res!41828) (not e!44321))))

(assert (=> b!81753 (= res!41828 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!81753 (= lt!18806 (filter!18 (t!47838 (t!47838 less!5)) lambda!9667))))

(assert (= (and b!81753 res!41828) b!81748))

(assert (= (and b!81753 c!20570) b!81747))

(assert (= (and b!81753 (not c!20570)) b!81749))

(assert (= (and d!55965 c!20571) b!81751))

(assert (= (and d!55965 (not c!20571)) b!81753))

(assert (= (and d!55965 res!41829) b!81750))

(assert (= (and b!81750 res!41827) b!81752))

(declare-fun b_lambda!16115 () Bool)

(assert (=> (not b_lambda!16115) (not b!81748)))

(declare-fun m!76856 () Bool)

(assert (=> b!81752 m!76856))

(declare-fun m!76858 () Bool)

(assert (=> b!81750 m!76858))

(assert (=> b!81750 m!76790))

(declare-fun m!76860 () Bool)

(assert (=> b!81748 m!76860))

(declare-fun m!76862 () Bool)

(assert (=> d!55965 m!76862))

(assert (=> d!55965 m!76796))

(declare-fun m!76864 () Bool)

(assert (=> b!81753 m!76864))

(assert (=> b!81537 d!55965))

(declare-fun b!81754 () Bool)

(declare-fun e!44323 () List!665)

(declare-fun lt!18808 () List!665)

(assert (=> b!81754 (= e!44323 (Cons!622 (h!991 (t!47838 less!5)) lt!18808))))

(declare-fun b!81755 () Bool)

(declare-fun e!44325 () Bool)

(assert (=> b!81755 (= e!44325 (dynLambda!984 lambda!9668 (h!991 (t!47838 less!5))))))

(declare-fun b!81756 () Bool)

(assert (=> b!81756 (= e!44323 lt!18808)))

(declare-fun d!55967 () Bool)

(declare-fun e!44322 () Bool)

(assert (=> d!55967 e!44322))

(declare-fun res!41832 () Bool)

(assert (=> d!55967 (=> (not res!41832) (not e!44322))))

(declare-fun lt!18809 () List!665)

(assert (=> d!55967 (= res!41832 (<= (size!653 lt!18809) (size!653 (t!47838 less!5))))))

(declare-fun e!44324 () List!665)

(assert (=> d!55967 (= lt!18809 e!44324)))

(declare-fun c!20573 () Bool)

(assert (=> d!55967 (= c!20573 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!55967 (= (filter!18 (t!47838 less!5) lambda!9668) lt!18809)))

(declare-fun b!81757 () Bool)

(declare-fun res!41830 () Bool)

(assert (=> b!81757 (=> (not res!41830) (not e!44322))))

(assert (=> b!81757 (= res!41830 (subset (content!124 lt!18809) (content!124 (t!47838 less!5))))))

(declare-fun b!81758 () Bool)

(assert (=> b!81758 (= e!44324 Nil!624)))

(declare-fun b!81759 () Bool)

(assert (=> b!81759 (= e!44322 (forall!20 lt!18809 lambda!9668))))

(declare-fun b!81760 () Bool)

(assert (=> b!81760 (= e!44324 e!44323)))

(declare-fun c!20572 () Bool)

(assert (=> b!81760 (= c!20572 e!44325)))

(declare-fun res!41831 () Bool)

(assert (=> b!81760 (=> (not res!41831) (not e!44325))))

(assert (=> b!81760 (= res!41831 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!81760 (= lt!18808 (filter!18 (t!47838 (t!47838 less!5)) lambda!9668))))

(assert (= (and b!81760 res!41831) b!81755))

(assert (= (and b!81760 c!20572) b!81754))

(assert (= (and b!81760 (not c!20572)) b!81756))

(assert (= (and d!55967 c!20573) b!81758))

(assert (= (and d!55967 (not c!20573)) b!81760))

(assert (= (and d!55967 res!41832) b!81757))

(assert (= (and b!81757 res!41830) b!81759))

(declare-fun b_lambda!16117 () Bool)

(assert (=> (not b_lambda!16117) (not b!81755)))

(declare-fun m!76866 () Bool)

(assert (=> b!81759 m!76866))

(declare-fun m!76868 () Bool)

(assert (=> b!81757 m!76868))

(assert (=> b!81757 m!76790))

(declare-fun m!76870 () Bool)

(assert (=> b!81755 m!76870))

(declare-fun m!76872 () Bool)

(assert (=> d!55967 m!76872))

(assert (=> d!55967 m!76796))

(declare-fun m!76874 () Bool)

(assert (=> b!81760 m!76874))

(assert (=> b!81537 d!55967))

(declare-fun d!55969 () Bool)

(declare-fun res!41833 () Bool)

(declare-fun e!44326 () Bool)

(assert (=> d!55969 (=> res!41833 e!44326)))

(assert (=> d!55969 (= res!41833 (not (and (is-Cons!622 (t!47838 l2!437)) (is-Cons!622 (t!47838 (t!47838 l2!437))))))))

(assert (=> d!55969 (= (isSorted!1 (t!47838 l2!437)) e!44326)))

(declare-fun b!81761 () Bool)

(declare-fun e!44327 () Bool)

(assert (=> b!81761 (= e!44326 e!44327)))

(declare-fun res!41834 () Bool)

(assert (=> b!81761 (=> (not res!41834) (not e!44327))))

(assert (=> b!81761 (= res!41834 (<= (h!991 (t!47838 l2!437)) (h!991 (t!47838 (t!47838 l2!437)))))))

(declare-fun b!81762 () Bool)

(assert (=> b!81762 (= e!44327 (isSorted!1 (t!47838 (t!47838 l2!437))))))

(assert (= (and d!55969 (not res!41833)) b!81761))

(assert (= (and b!81761 res!41834) b!81762))

(declare-fun m!76876 () Bool)

(assert (=> b!81762 m!76876))

(assert (=> b!81632 d!55969))

(declare-fun b!81763 () Bool)

(declare-fun res!41837 () Bool)

(declare-fun e!44329 () Bool)

(assert (=> b!81763 (=> (not res!41837) (not e!44329))))

(assert (=> b!81763 (= res!41837 (isSorted!1 (quickSort!0 lt!18781)))))

(declare-fun d!55971 () Bool)

(declare-fun e!44328 () Bool)

(assert (=> d!55971 e!44328))

(declare-fun c!20574 () Bool)

(assert (=> d!55971 (= c!20574 (is-Cons!622 (++!73 (quickSort!0 lt!18782) lt!18783)))))

(assert (=> d!55971 e!44329))

(declare-fun res!41835 () Bool)

(assert (=> d!55971 (=> (not res!41835) (not e!44329))))

(assert (=> d!55971 (= res!41835 (isSorted!1 (++!73 (quickSort!0 lt!18782) lt!18783)))))

(assert (=> d!55971 (= (append_sorted!0 (++!73 (quickSort!0 lt!18782) lt!18783) (quickSort!0 lt!18781)) true)))

(declare-fun b!81764 () Bool)

(declare-fun res!41836 () Bool)

(declare-fun e!44330 () Bool)

(assert (=> b!81764 (=> res!41836 e!44330)))

(assert (=> b!81764 (= res!41836 (isEmpty!677 (quickSort!0 lt!18781)))))

(declare-fun b!81765 () Bool)

(assert (=> b!81765 (= e!44328 (isSorted!1 (++!73 (++!73 (quickSort!0 lt!18782) lt!18783) (quickSort!0 lt!18781))))))

(declare-fun lt!18810 () Bool)

(assert (=> b!81765 (= lt!18810 (append_sorted!0 (t!47838 (++!73 (quickSort!0 lt!18782) lt!18783)) (quickSort!0 lt!18781)))))

(declare-fun b!81766 () Bool)

(assert (=> b!81766 (= e!44330 (<= (last!17 (++!73 (quickSort!0 lt!18782) lt!18783)) (head!1055 (quickSort!0 lt!18781))))))

(declare-fun b!81767 () Bool)

(assert (=> b!81767 (= e!44329 e!44330)))

(declare-fun res!41838 () Bool)

(assert (=> b!81767 (=> res!41838 e!44330)))

(assert (=> b!81767 (= res!41838 (isEmpty!677 (++!73 (quickSort!0 lt!18782) lt!18783)))))

(declare-fun b!81768 () Bool)

(assert (=> b!81768 (= e!44328 (isSorted!1 (++!73 (++!73 (quickSort!0 lt!18782) lt!18783) (quickSort!0 lt!18781))))))

(assert (= (and d!55971 res!41835) b!81763))

(assert (= (and b!81763 res!41837) b!81767))

(assert (= (and b!81767 (not res!41838)) b!81764))

(assert (= (and b!81764 (not res!41836)) b!81766))

(assert (= (and d!55971 c!20574) b!81765))

(assert (= (and d!55971 (not c!20574)) b!81768))

(assert (=> b!81763 m!76598))

(declare-fun m!76878 () Bool)

(assert (=> b!81763 m!76878))

(assert (=> b!81765 m!76596))

(assert (=> b!81765 m!76598))

(declare-fun m!76880 () Bool)

(assert (=> b!81765 m!76880))

(assert (=> b!81765 m!76880))

(declare-fun m!76882 () Bool)

(assert (=> b!81765 m!76882))

(assert (=> b!81765 m!76598))

(declare-fun m!76884 () Bool)

(assert (=> b!81765 m!76884))

(assert (=> b!81767 m!76596))

(declare-fun m!76886 () Bool)

(assert (=> b!81767 m!76886))

(assert (=> b!81764 m!76598))

(declare-fun m!76888 () Bool)

(assert (=> b!81764 m!76888))

(assert (=> b!81768 m!76596))

(assert (=> b!81768 m!76598))

(assert (=> b!81768 m!76880))

(assert (=> b!81768 m!76880))

(assert (=> b!81768 m!76882))

(assert (=> b!81766 m!76596))

(declare-fun m!76890 () Bool)

(assert (=> b!81766 m!76890))

(assert (=> b!81766 m!76598))

(declare-fun m!76892 () Bool)

(assert (=> b!81766 m!76892))

(assert (=> d!55971 m!76596))

(declare-fun m!76894 () Bool)

(assert (=> d!55971 m!76894))

(assert (=> b!81634 d!55971))

(declare-fun b!81771 () Bool)

(declare-fun res!41839 () Bool)

(declare-fun e!44332 () Bool)

(assert (=> b!81771 (=> (not res!41839) (not e!44332))))

(declare-fun lt!18811 () List!665)

(assert (=> b!81771 (= res!41839 (= (size!653 lt!18811) (+ (size!653 (quickSort!0 lt!18782)) (size!653 lt!18783))))))

(declare-fun b!81770 () Bool)

(declare-fun e!44331 () List!665)

(assert (=> b!81770 (= e!44331 (Cons!622 (h!991 (quickSort!0 lt!18782)) (++!73 (t!47838 (quickSort!0 lt!18782)) lt!18783)))))

(declare-fun b!81772 () Bool)

(assert (=> b!81772 (= e!44332 (or (not (= lt!18783 Nil!624)) (= lt!18811 (quickSort!0 lt!18782))))))

(declare-fun b!81769 () Bool)

(assert (=> b!81769 (= e!44331 lt!18783)))

(declare-fun d!55973 () Bool)

(assert (=> d!55973 e!44332))

(declare-fun res!41840 () Bool)

(assert (=> d!55973 (=> (not res!41840) (not e!44332))))

(assert (=> d!55973 (= res!41840 (= (content!124 lt!18811) (union (content!124 (quickSort!0 lt!18782)) (content!124 lt!18783))))))

(assert (=> d!55973 (= lt!18811 e!44331)))

(declare-fun c!20575 () Bool)

(assert (=> d!55973 (= c!20575 (is-Nil!624 (quickSort!0 lt!18782)))))

(assert (=> d!55973 (= (++!73 (quickSort!0 lt!18782) lt!18783) lt!18811)))

(assert (= (and d!55973 c!20575) b!81769))

(assert (= (and d!55973 (not c!20575)) b!81770))

(assert (= (and d!55973 res!41840) b!81771))

(assert (= (and b!81771 res!41839) b!81772))

(declare-fun m!76896 () Bool)

(assert (=> b!81771 m!76896))

(assert (=> b!81771 m!76588))

(declare-fun m!76898 () Bool)

(assert (=> b!81771 m!76898))

(declare-fun m!76900 () Bool)

(assert (=> b!81771 m!76900))

(declare-fun m!76902 () Bool)

(assert (=> b!81770 m!76902))

(declare-fun m!76904 () Bool)

(assert (=> d!55973 m!76904))

(assert (=> d!55973 m!76588))

(declare-fun m!76906 () Bool)

(assert (=> d!55973 m!76906))

(declare-fun m!76908 () Bool)

(assert (=> d!55973 m!76908))

(assert (=> b!81634 d!55973))

(declare-fun bs!39106 () Bool)

(declare-fun b!81776 () Bool)

(assert (= bs!39106 (and b!81776 b!81517)))

(declare-fun lambda!9715 () Int)

(assert (=> bs!39106 (not (= lambda!9715 lambda!9663))))

(assert (=> bs!39106 (not (= lambda!9715 lambda!9662))))

(assert (=> bs!39106 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9715 lambda!9661))))

(declare-fun bs!39107 () Bool)

(assert (= bs!39107 (and b!81776 b!81734)))

(assert (=> bs!39107 (not (= lambda!9715 lambda!9711))))

(assert (=> bs!39107 (not (= lambda!9715 lambda!9710))))

(assert (=> bs!39107 (= (= (h!991 lt!18782) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9715 lambda!9709))))

(declare-fun bs!39108 () Bool)

(assert (= bs!39108 (and b!81776 b!81462)))

(assert (=> bs!39108 (= (= (h!991 lt!18782) (h!991 ls!96)) (= lambda!9715 lambda!9627))))

(declare-fun bs!39109 () Bool)

(assert (= bs!39109 (and b!81776 b!81495)))

(assert (=> bs!39109 (not (= lambda!9715 lambda!9647))))

(declare-fun bs!39110 () Bool)

(assert (= bs!39110 (and b!81776 b!81742)))

(assert (=> bs!39110 (not (= lambda!9715 lambda!9714))))

(assert (=> bs!39110 (not (= lambda!9715 lambda!9713))))

(assert (=> bs!39110 (= (= (h!991 lt!18782) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9715 lambda!9712))))

(declare-fun bs!39111 () Bool)

(assert (= bs!39111 (and b!81776 b!81709)))

(assert (=> bs!39111 (not (= lambda!9715 lambda!9708))))

(assert (=> bs!39111 (not (= lambda!9715 lambda!9707))))

(assert (=> bs!39111 (= (= (h!991 lt!18782) (h!991 lt!18751)) (= lambda!9715 lambda!9706))))

(declare-fun bs!39112 () Bool)

(assert (= bs!39112 (and b!81776 b!81460)))

(assert (=> bs!39112 (not (= lambda!9715 lambda!9628))))

(declare-fun bs!39113 () Bool)

(assert (= bs!39113 (and b!81776 b!81560)))

(assert (=> bs!39113 (not (= lambda!9715 lambda!9678))))

(assert (=> bs!39113 (not (= lambda!9715 lambda!9677))))

(assert (=> bs!39113 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9715 lambda!9676))))

(declare-fun bs!39114 () Bool)

(assert (= bs!39114 (and b!81776 b!81490)))

(assert (=> bs!39114 (not (= lambda!9715 lambda!9639))))

(assert (=> bs!39114 (not (= lambda!9715 lambda!9638))))

(assert (=> bs!39114 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9715 lambda!9637))))

(declare-fun bs!39115 () Bool)

(assert (= bs!39115 (and b!81776 b!81691)))

(assert (=> bs!39115 (not (= lambda!9715 lambda!9702))))

(assert (=> bs!39115 (not (= lambda!9715 lambda!9701))))

(assert (=> bs!39115 (= (= (h!991 lt!18782) (h!991 lt!18728)) (= lambda!9715 lambda!9700))))

(declare-fun bs!39116 () Bool)

(assert (= bs!39116 (and b!81776 b!81466)))

(assert (=> bs!39116 (not (= lambda!9715 lambda!9629))))

(declare-fun bs!39117 () Bool)

(assert (= bs!39117 (and b!81776 d!55883)))

(assert (=> bs!39117 (= (= (h!991 lt!18782) (h!991 ls!96)) (= lambda!9715 lambda!9685))))

(declare-fun bs!39118 () Bool)

(assert (= bs!39118 (and b!81776 d!55861)))

(assert (=> bs!39118 (not (= lambda!9715 lambda!9646))))

(declare-fun bs!39119 () Bool)

(assert (= bs!39119 (and b!81776 b!81537)))

(assert (=> bs!39119 (not (= lambda!9715 lambda!9669))))

(assert (=> bs!39119 (not (= lambda!9715 lambda!9668))))

(assert (=> bs!39119 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9715 lambda!9667))))

(declare-fun bs!39120 () Bool)

(assert (= bs!39120 (and b!81776 b!81587)))

(assert (=> bs!39120 (not (= lambda!9715 lambda!9686))))

(declare-fun bs!39121 () Bool)

(assert (= bs!39121 (and b!81776 b!81496)))

(assert (=> bs!39121 (not (= lambda!9715 lambda!9648))))

(declare-fun bs!39122 () Bool)

(assert (= bs!39122 (and b!81776 d!55889)))

(assert (=> bs!39122 (not (= lambda!9715 lambda!9693))))

(declare-fun bs!39123 () Bool)

(assert (= bs!39123 (and b!81776 b!81705)))

(assert (=> bs!39123 (not (= lambda!9715 lambda!9705))))

(assert (=> bs!39123 (not (= lambda!9715 lambda!9704))))

(assert (=> bs!39123 (= (= (h!991 lt!18782) (h!991 lt!18752)) (= lambda!9715 lambda!9703))))

(declare-fun bs!39124 () Bool)

(assert (= bs!39124 (and b!81776 b!81522)))

(assert (=> bs!39124 (not (= lambda!9715 lambda!9666))))

(assert (=> bs!39124 (not (= lambda!9715 lambda!9665))))

(assert (=> bs!39124 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9715 lambda!9664))))

(declare-fun bs!39125 () Bool)

(assert (= bs!39125 (and b!81776 b!81598)))

(assert (=> bs!39125 (not (= lambda!9715 lambda!9690))))

(assert (=> bs!39125 (not (= lambda!9715 lambda!9689))))

(assert (=> bs!39125 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9715 lambda!9688))))

(declare-fun bs!39126 () Bool)

(assert (= bs!39126 (and b!81776 b!81588)))

(assert (=> bs!39126 (not (= lambda!9715 lambda!9687))))

(declare-fun bs!39127 () Bool)

(assert (= bs!39127 (and b!81776 b!81468)))

(assert (=> bs!39127 (not (= lambda!9715 lambda!9630))))

(declare-fun bs!39128 () Bool)

(assert (= bs!39128 (and b!81776 b!81633)))

(assert (=> bs!39128 (not (= lambda!9715 lambda!9696))))

(assert (=> bs!39128 (not (= lambda!9715 lambda!9695))))

(assert (=> bs!39128 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9715 lambda!9694))))

(declare-fun bs!39129 () Bool)

(assert (= bs!39129 (and b!81776 b!81687)))

(assert (=> bs!39129 (not (= lambda!9715 lambda!9699))))

(assert (=> bs!39129 (not (= lambda!9715 lambda!9698))))

(assert (=> bs!39129 (= (= (h!991 lt!18782) (h!991 lt!18730)) (= lambda!9715 lambda!9697))))

(assert (=> b!81776 true))

(declare-fun lambda!9716 () Int)

(assert (=> bs!39106 (not (= lambda!9716 lambda!9663))))

(assert (=> bs!39106 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9716 lambda!9662))))

(assert (=> bs!39106 (not (= lambda!9716 lambda!9661))))

(assert (=> bs!39107 (not (= lambda!9716 lambda!9711))))

(assert (=> bs!39107 (= (= (h!991 lt!18782) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9716 lambda!9710))))

(assert (=> bs!39107 (not (= lambda!9716 lambda!9709))))

(assert (=> bs!39108 (not (= lambda!9716 lambda!9627))))

(assert (=> bs!39109 (not (= lambda!9716 lambda!9647))))

(assert (=> bs!39110 (not (= lambda!9716 lambda!9714))))

(assert (=> bs!39110 (= (= (h!991 lt!18782) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9716 lambda!9713))))

(assert (=> bs!39110 (not (= lambda!9716 lambda!9712))))

(assert (=> bs!39111 (not (= lambda!9716 lambda!9708))))

(assert (=> bs!39111 (= (= (h!991 lt!18782) (h!991 lt!18751)) (= lambda!9716 lambda!9707))))

(assert (=> bs!39111 (not (= lambda!9716 lambda!9706))))

(assert (=> bs!39112 (= (= (h!991 lt!18782) (h!991 ls!96)) (= lambda!9716 lambda!9628))))

(assert (=> bs!39113 (not (= lambda!9716 lambda!9678))))

(assert (=> bs!39113 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9716 lambda!9677))))

(assert (=> bs!39113 (not (= lambda!9716 lambda!9676))))

(assert (=> bs!39114 (not (= lambda!9716 lambda!9639))))

(assert (=> bs!39114 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9716 lambda!9638))))

(assert (=> bs!39114 (not (= lambda!9716 lambda!9637))))

(assert (=> bs!39115 (not (= lambda!9716 lambda!9702))))

(assert (=> bs!39115 (= (= (h!991 lt!18782) (h!991 lt!18728)) (= lambda!9716 lambda!9701))))

(assert (=> bs!39115 (not (= lambda!9716 lambda!9700))))

(assert (=> bs!39116 (not (= lambda!9716 lambda!9629))))

(assert (=> bs!39117 (not (= lambda!9716 lambda!9685))))

(assert (=> bs!39118 (= (= (h!991 lt!18782) (h!991 ls!96)) (= lambda!9716 lambda!9646))))

(assert (=> bs!39119 (not (= lambda!9716 lambda!9669))))

(assert (=> bs!39119 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9716 lambda!9668))))

(assert (=> bs!39119 (not (= lambda!9716 lambda!9667))))

(assert (=> bs!39120 (not (= lambda!9716 lambda!9686))))

(assert (=> bs!39121 (not (= lambda!9716 lambda!9648))))

(assert (=> bs!39122 (= (= (h!991 lt!18782) (h!991 ls!96)) (= lambda!9716 lambda!9693))))

(assert (=> bs!39123 (not (= lambda!9716 lambda!9705))))

(assert (=> bs!39123 (= (= (h!991 lt!18782) (h!991 lt!18752)) (= lambda!9716 lambda!9704))))

(assert (=> bs!39123 (not (= lambda!9716 lambda!9703))))

(assert (=> bs!39124 (not (= lambda!9716 lambda!9666))))

(assert (=> bs!39124 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9716 lambda!9665))))

(assert (=> bs!39124 (not (= lambda!9716 lambda!9664))))

(assert (=> bs!39125 (not (= lambda!9716 lambda!9690))))

(assert (=> bs!39125 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9716 lambda!9689))))

(assert (=> bs!39125 (not (= lambda!9716 lambda!9688))))

(assert (=> bs!39126 (not (= lambda!9716 lambda!9687))))

(assert (=> b!81776 (not (= lambda!9716 lambda!9715))))

(assert (=> bs!39127 (not (= lambda!9716 lambda!9630))))

(assert (=> bs!39128 (not (= lambda!9716 lambda!9696))))

(assert (=> bs!39128 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9716 lambda!9695))))

(assert (=> bs!39128 (not (= lambda!9716 lambda!9694))))

(assert (=> bs!39129 (not (= lambda!9716 lambda!9699))))

(assert (=> bs!39129 (= (= (h!991 lt!18782) (h!991 lt!18730)) (= lambda!9716 lambda!9698))))

(assert (=> bs!39129 (not (= lambda!9716 lambda!9697))))

(assert (=> b!81776 true))

(declare-fun lambda!9717 () Int)

(assert (=> bs!39106 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9717 lambda!9663))))

(assert (=> bs!39106 (not (= lambda!9717 lambda!9662))))

(assert (=> bs!39106 (not (= lambda!9717 lambda!9661))))

(assert (=> bs!39107 (= (= (h!991 lt!18782) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9717 lambda!9711))))

(assert (=> bs!39107 (not (= lambda!9717 lambda!9710))))

(assert (=> bs!39107 (not (= lambda!9717 lambda!9709))))

(assert (=> bs!39108 (not (= lambda!9717 lambda!9627))))

(assert (=> bs!39109 (not (= lambda!9717 lambda!9647))))

(assert (=> bs!39110 (= (= (h!991 lt!18782) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9717 lambda!9714))))

(assert (=> bs!39110 (not (= lambda!9717 lambda!9713))))

(assert (=> bs!39110 (not (= lambda!9717 lambda!9712))))

(assert (=> bs!39111 (= (= (h!991 lt!18782) (h!991 lt!18751)) (= lambda!9717 lambda!9708))))

(assert (=> bs!39111 (not (= lambda!9717 lambda!9707))))

(assert (=> bs!39111 (not (= lambda!9717 lambda!9706))))

(assert (=> bs!39112 (not (= lambda!9717 lambda!9628))))

(assert (=> bs!39113 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9717 lambda!9678))))

(assert (=> bs!39113 (not (= lambda!9717 lambda!9677))))

(assert (=> bs!39113 (not (= lambda!9717 lambda!9676))))

(assert (=> bs!39114 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9717 lambda!9639))))

(assert (=> bs!39114 (not (= lambda!9717 lambda!9638))))

(assert (=> bs!39114 (not (= lambda!9717 lambda!9637))))

(assert (=> bs!39115 (= (= (h!991 lt!18782) (h!991 lt!18728)) (= lambda!9717 lambda!9702))))

(assert (=> bs!39115 (not (= lambda!9717 lambda!9701))))

(assert (=> bs!39115 (not (= lambda!9717 lambda!9700))))

(assert (=> bs!39116 (= (= (h!991 lt!18782) (h!991 ls!96)) (= lambda!9717 lambda!9629))))

(assert (=> bs!39117 (not (= lambda!9717 lambda!9685))))

(assert (=> bs!39118 (not (= lambda!9717 lambda!9646))))

(assert (=> bs!39119 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9717 lambda!9669))))

(assert (=> bs!39119 (not (= lambda!9717 lambda!9668))))

(assert (=> bs!39119 (not (= lambda!9717 lambda!9667))))

(assert (=> bs!39120 (not (= lambda!9717 lambda!9686))))

(assert (=> bs!39121 (not (= lambda!9717 lambda!9648))))

(assert (=> bs!39122 (not (= lambda!9717 lambda!9693))))

(assert (=> bs!39123 (= (= (h!991 lt!18782) (h!991 lt!18752)) (= lambda!9717 lambda!9705))))

(assert (=> bs!39123 (not (= lambda!9717 lambda!9704))))

(assert (=> bs!39123 (not (= lambda!9717 lambda!9703))))

(assert (=> bs!39124 (= (= (h!991 lt!18782) (h!991 more!5)) (= lambda!9717 lambda!9666))))

(assert (=> bs!39124 (not (= lambda!9717 lambda!9665))))

(assert (=> bs!39124 (not (= lambda!9717 lambda!9664))))

(assert (=> bs!39125 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9717 lambda!9690))))

(assert (=> bs!39125 (not (= lambda!9717 lambda!9689))))

(assert (=> bs!39125 (not (= lambda!9717 lambda!9688))))

(assert (=> bs!39126 (not (= lambda!9717 lambda!9687))))

(assert (=> b!81776 (not (= lambda!9717 lambda!9716))))

(assert (=> b!81776 (not (= lambda!9717 lambda!9715))))

(assert (=> bs!39127 (not (= lambda!9717 lambda!9630))))

(assert (=> bs!39128 (= (= (h!991 lt!18782) (h!991 less!5)) (= lambda!9717 lambda!9696))))

(assert (=> bs!39128 (not (= lambda!9717 lambda!9695))))

(assert (=> bs!39128 (not (= lambda!9717 lambda!9694))))

(assert (=> bs!39129 (= (= (h!991 lt!18782) (h!991 lt!18730)) (= lambda!9717 lambda!9699))))

(assert (=> bs!39129 (not (= lambda!9717 lambda!9698))))

(assert (=> bs!39129 (not (= lambda!9717 lambda!9697))))

(assert (=> b!81776 true))

(declare-fun b!81773 () Bool)

(declare-fun e!44333 () List!665)

(assert (=> b!81773 (= e!44333 Nil!624)))

(declare-fun d!55975 () Bool)

(declare-fun c!20576 () Bool)

(assert (=> d!55975 (= c!20576 (is-Nil!624 lt!18782))))

(assert (=> d!55975 (= (quickSort!0 lt!18782) e!44333)))

(declare-fun b!81775 () Bool)

(declare-fun e!44334 () List!665)

(assert (=> b!81775 (= e!44334 lt!18782)))

(declare-fun b!81774 () Bool)

(assert (=> b!81774 (= e!44333 e!44334)))

(declare-fun c!20577 () Bool)

(assert (=> b!81774 (= c!20577 (and (is-Cons!622 lt!18782) (is-Nil!624 (t!47838 lt!18782))))))

(assert (=> b!81776 (= e!44334 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18782) lambda!9715)) (Cons!622 (h!991 lt!18782) (filter!18 (t!47838 lt!18782) lambda!9716))) (quickSort!0 (filter!18 (t!47838 lt!18782) lambda!9717))))))

(assert (= (and b!81774 c!20577) b!81775))

(assert (= (and b!81774 (not c!20577)) b!81776))

(assert (= (and d!55975 c!20576) b!81773))

(assert (= (and d!55975 (not c!20576)) b!81774))

(declare-fun m!76910 () Bool)

(assert (=> b!81776 m!76910))

(declare-fun m!76912 () Bool)

(assert (=> b!81776 m!76912))

(assert (=> b!81776 m!76910))

(declare-fun m!76914 () Bool)

(assert (=> b!81776 m!76914))

(declare-fun m!76916 () Bool)

(assert (=> b!81776 m!76916))

(declare-fun m!76918 () Bool)

(assert (=> b!81776 m!76918))

(assert (=> b!81776 m!76914))

(assert (=> b!81776 m!76918))

(declare-fun m!76920 () Bool)

(assert (=> b!81776 m!76920))

(assert (=> b!81776 m!76916))

(assert (=> b!81776 m!76912))

(declare-fun m!76922 () Bool)

(assert (=> b!81776 m!76922))

(assert (=> b!81634 d!55975))

(declare-fun bs!39130 () Bool)

(declare-fun b!81780 () Bool)

(assert (= bs!39130 (and b!81780 b!81517)))

(declare-fun lambda!9718 () Int)

(assert (=> bs!39130 (not (= lambda!9718 lambda!9663))))

(assert (=> bs!39130 (not (= lambda!9718 lambda!9662))))

(assert (=> bs!39130 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9718 lambda!9661))))

(declare-fun bs!39131 () Bool)

(assert (= bs!39131 (and b!81780 b!81734)))

(assert (=> bs!39131 (not (= lambda!9718 lambda!9711))))

(assert (=> bs!39131 (not (= lambda!9718 lambda!9710))))

(assert (=> bs!39131 (= (= (h!991 lt!18781) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9718 lambda!9709))))

(declare-fun bs!39132 () Bool)

(assert (= bs!39132 (and b!81780 b!81462)))

(assert (=> bs!39132 (= (= (h!991 lt!18781) (h!991 ls!96)) (= lambda!9718 lambda!9627))))

(declare-fun bs!39133 () Bool)

(assert (= bs!39133 (and b!81780 b!81495)))

(assert (=> bs!39133 (not (= lambda!9718 lambda!9647))))

(declare-fun bs!39134 () Bool)

(assert (= bs!39134 (and b!81780 b!81742)))

(assert (=> bs!39134 (not (= lambda!9718 lambda!9714))))

(assert (=> bs!39134 (not (= lambda!9718 lambda!9713))))

(assert (=> bs!39134 (= (= (h!991 lt!18781) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9718 lambda!9712))))

(declare-fun bs!39135 () Bool)

(assert (= bs!39135 (and b!81780 b!81709)))

(assert (=> bs!39135 (not (= lambda!9718 lambda!9708))))

(assert (=> bs!39135 (not (= lambda!9718 lambda!9707))))

(assert (=> bs!39135 (= (= (h!991 lt!18781) (h!991 lt!18751)) (= lambda!9718 lambda!9706))))

(declare-fun bs!39136 () Bool)

(assert (= bs!39136 (and b!81780 b!81460)))

(assert (=> bs!39136 (not (= lambda!9718 lambda!9628))))

(declare-fun bs!39137 () Bool)

(assert (= bs!39137 (and b!81780 b!81560)))

(assert (=> bs!39137 (not (= lambda!9718 lambda!9678))))

(assert (=> bs!39137 (not (= lambda!9718 lambda!9677))))

(assert (=> bs!39137 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9718 lambda!9676))))

(declare-fun bs!39138 () Bool)

(assert (= bs!39138 (and b!81780 b!81490)))

(assert (=> bs!39138 (not (= lambda!9718 lambda!9639))))

(assert (=> bs!39138 (not (= lambda!9718 lambda!9638))))

(assert (=> bs!39138 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9718 lambda!9637))))

(declare-fun bs!39139 () Bool)

(assert (= bs!39139 (and b!81780 b!81691)))

(assert (=> bs!39139 (not (= lambda!9718 lambda!9702))))

(assert (=> bs!39139 (not (= lambda!9718 lambda!9701))))

(assert (=> bs!39139 (= (= (h!991 lt!18781) (h!991 lt!18728)) (= lambda!9718 lambda!9700))))

(declare-fun bs!39140 () Bool)

(assert (= bs!39140 (and b!81780 b!81466)))

(assert (=> bs!39140 (not (= lambda!9718 lambda!9629))))

(declare-fun bs!39141 () Bool)

(assert (= bs!39141 (and b!81780 d!55883)))

(assert (=> bs!39141 (= (= (h!991 lt!18781) (h!991 ls!96)) (= lambda!9718 lambda!9685))))

(declare-fun bs!39142 () Bool)

(assert (= bs!39142 (and b!81780 d!55861)))

(assert (=> bs!39142 (not (= lambda!9718 lambda!9646))))

(declare-fun bs!39143 () Bool)

(assert (= bs!39143 (and b!81780 b!81537)))

(assert (=> bs!39143 (not (= lambda!9718 lambda!9669))))

(assert (=> bs!39143 (not (= lambda!9718 lambda!9668))))

(assert (=> bs!39143 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9718 lambda!9667))))

(declare-fun bs!39144 () Bool)

(assert (= bs!39144 (and b!81780 b!81587)))

(assert (=> bs!39144 (not (= lambda!9718 lambda!9686))))

(declare-fun bs!39145 () Bool)

(assert (= bs!39145 (and b!81780 b!81496)))

(assert (=> bs!39145 (not (= lambda!9718 lambda!9648))))

(declare-fun bs!39146 () Bool)

(assert (= bs!39146 (and b!81780 d!55889)))

(assert (=> bs!39146 (not (= lambda!9718 lambda!9693))))

(declare-fun bs!39147 () Bool)

(assert (= bs!39147 (and b!81780 b!81705)))

(assert (=> bs!39147 (not (= lambda!9718 lambda!9705))))

(assert (=> bs!39147 (not (= lambda!9718 lambda!9704))))

(assert (=> bs!39147 (= (= (h!991 lt!18781) (h!991 lt!18752)) (= lambda!9718 lambda!9703))))

(declare-fun bs!39148 () Bool)

(assert (= bs!39148 (and b!81780 b!81522)))

(assert (=> bs!39148 (not (= lambda!9718 lambda!9666))))

(assert (=> bs!39148 (not (= lambda!9718 lambda!9665))))

(assert (=> bs!39148 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9718 lambda!9664))))

(declare-fun bs!39149 () Bool)

(assert (= bs!39149 (and b!81780 b!81598)))

(assert (=> bs!39149 (not (= lambda!9718 lambda!9690))))

(assert (=> bs!39149 (not (= lambda!9718 lambda!9689))))

(assert (=> bs!39149 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9718 lambda!9688))))

(declare-fun bs!39150 () Bool)

(assert (= bs!39150 (and b!81780 b!81588)))

(assert (=> bs!39150 (not (= lambda!9718 lambda!9687))))

(declare-fun bs!39151 () Bool)

(assert (= bs!39151 (and b!81780 b!81776)))

(assert (=> bs!39151 (not (= lambda!9718 lambda!9717))))

(assert (=> bs!39151 (not (= lambda!9718 lambda!9716))))

(assert (=> bs!39151 (= (= (h!991 lt!18781) (h!991 lt!18782)) (= lambda!9718 lambda!9715))))

(declare-fun bs!39152 () Bool)

(assert (= bs!39152 (and b!81780 b!81468)))

(assert (=> bs!39152 (not (= lambda!9718 lambda!9630))))

(declare-fun bs!39153 () Bool)

(assert (= bs!39153 (and b!81780 b!81633)))

(assert (=> bs!39153 (not (= lambda!9718 lambda!9696))))

(assert (=> bs!39153 (not (= lambda!9718 lambda!9695))))

(assert (=> bs!39153 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9718 lambda!9694))))

(declare-fun bs!39154 () Bool)

(assert (= bs!39154 (and b!81780 b!81687)))

(assert (=> bs!39154 (not (= lambda!9718 lambda!9699))))

(assert (=> bs!39154 (not (= lambda!9718 lambda!9698))))

(assert (=> bs!39154 (= (= (h!991 lt!18781) (h!991 lt!18730)) (= lambda!9718 lambda!9697))))

(assert (=> b!81780 true))

(declare-fun lambda!9719 () Int)

(assert (=> bs!39130 (not (= lambda!9719 lambda!9663))))

(assert (=> bs!39130 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9719 lambda!9662))))

(assert (=> bs!39130 (not (= lambda!9719 lambda!9661))))

(assert (=> bs!39131 (not (= lambda!9719 lambda!9711))))

(assert (=> bs!39131 (= (= (h!991 lt!18781) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9719 lambda!9710))))

(assert (=> bs!39131 (not (= lambda!9719 lambda!9709))))

(assert (=> bs!39132 (not (= lambda!9719 lambda!9627))))

(assert (=> bs!39133 (not (= lambda!9719 lambda!9647))))

(assert (=> bs!39134 (not (= lambda!9719 lambda!9714))))

(assert (=> bs!39134 (= (= (h!991 lt!18781) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9719 lambda!9713))))

(assert (=> bs!39134 (not (= lambda!9719 lambda!9712))))

(assert (=> bs!39135 (not (= lambda!9719 lambda!9708))))

(assert (=> bs!39135 (= (= (h!991 lt!18781) (h!991 lt!18751)) (= lambda!9719 lambda!9707))))

(assert (=> bs!39135 (not (= lambda!9719 lambda!9706))))

(assert (=> bs!39136 (= (= (h!991 lt!18781) (h!991 ls!96)) (= lambda!9719 lambda!9628))))

(assert (=> bs!39137 (not (= lambda!9719 lambda!9678))))

(assert (=> bs!39137 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9719 lambda!9677))))

(assert (=> bs!39137 (not (= lambda!9719 lambda!9676))))

(assert (=> bs!39138 (not (= lambda!9719 lambda!9639))))

(assert (=> bs!39138 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9719 lambda!9638))))

(assert (=> bs!39138 (not (= lambda!9719 lambda!9637))))

(assert (=> bs!39139 (not (= lambda!9719 lambda!9702))))

(assert (=> bs!39139 (= (= (h!991 lt!18781) (h!991 lt!18728)) (= lambda!9719 lambda!9701))))

(assert (=> bs!39139 (not (= lambda!9719 lambda!9700))))

(assert (=> bs!39140 (not (= lambda!9719 lambda!9629))))

(assert (=> b!81780 (not (= lambda!9719 lambda!9718))))

(assert (=> bs!39141 (not (= lambda!9719 lambda!9685))))

(assert (=> bs!39142 (= (= (h!991 lt!18781) (h!991 ls!96)) (= lambda!9719 lambda!9646))))

(assert (=> bs!39143 (not (= lambda!9719 lambda!9669))))

(assert (=> bs!39143 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9719 lambda!9668))))

(assert (=> bs!39143 (not (= lambda!9719 lambda!9667))))

(assert (=> bs!39144 (not (= lambda!9719 lambda!9686))))

(assert (=> bs!39145 (not (= lambda!9719 lambda!9648))))

(assert (=> bs!39146 (= (= (h!991 lt!18781) (h!991 ls!96)) (= lambda!9719 lambda!9693))))

(assert (=> bs!39147 (not (= lambda!9719 lambda!9705))))

(assert (=> bs!39147 (= (= (h!991 lt!18781) (h!991 lt!18752)) (= lambda!9719 lambda!9704))))

(assert (=> bs!39147 (not (= lambda!9719 lambda!9703))))

(assert (=> bs!39148 (not (= lambda!9719 lambda!9666))))

(assert (=> bs!39148 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9719 lambda!9665))))

(assert (=> bs!39148 (not (= lambda!9719 lambda!9664))))

(assert (=> bs!39149 (not (= lambda!9719 lambda!9690))))

(assert (=> bs!39149 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9719 lambda!9689))))

(assert (=> bs!39149 (not (= lambda!9719 lambda!9688))))

(assert (=> bs!39150 (not (= lambda!9719 lambda!9687))))

(assert (=> bs!39151 (not (= lambda!9719 lambda!9717))))

(assert (=> bs!39151 (= (= (h!991 lt!18781) (h!991 lt!18782)) (= lambda!9719 lambda!9716))))

(assert (=> bs!39151 (not (= lambda!9719 lambda!9715))))

(assert (=> bs!39152 (not (= lambda!9719 lambda!9630))))

(assert (=> bs!39153 (not (= lambda!9719 lambda!9696))))

(assert (=> bs!39153 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9719 lambda!9695))))

(assert (=> bs!39153 (not (= lambda!9719 lambda!9694))))

(assert (=> bs!39154 (not (= lambda!9719 lambda!9699))))

(assert (=> bs!39154 (= (= (h!991 lt!18781) (h!991 lt!18730)) (= lambda!9719 lambda!9698))))

(assert (=> bs!39154 (not (= lambda!9719 lambda!9697))))

(assert (=> b!81780 true))

(declare-fun lambda!9720 () Int)

(assert (=> bs!39130 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9720 lambda!9663))))

(assert (=> bs!39130 (not (= lambda!9720 lambda!9662))))

(assert (=> bs!39130 (not (= lambda!9720 lambda!9661))))

(assert (=> bs!39131 (= (= (h!991 lt!18781) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9720 lambda!9711))))

(assert (=> bs!39131 (not (= lambda!9720 lambda!9710))))

(assert (=> bs!39131 (not (= lambda!9720 lambda!9709))))

(assert (=> bs!39132 (not (= lambda!9720 lambda!9627))))

(assert (=> bs!39133 (not (= lambda!9720 lambda!9647))))

(assert (=> bs!39134 (= (= (h!991 lt!18781) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9720 lambda!9714))))

(assert (=> bs!39134 (not (= lambda!9720 lambda!9713))))

(assert (=> bs!39134 (not (= lambda!9720 lambda!9712))))

(assert (=> bs!39135 (= (= (h!991 lt!18781) (h!991 lt!18751)) (= lambda!9720 lambda!9708))))

(assert (=> bs!39135 (not (= lambda!9720 lambda!9707))))

(assert (=> bs!39135 (not (= lambda!9720 lambda!9706))))

(assert (=> bs!39136 (not (= lambda!9720 lambda!9628))))

(assert (=> bs!39137 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9720 lambda!9678))))

(assert (=> bs!39137 (not (= lambda!9720 lambda!9677))))

(assert (=> bs!39137 (not (= lambda!9720 lambda!9676))))

(assert (=> bs!39138 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9720 lambda!9639))))

(assert (=> bs!39138 (not (= lambda!9720 lambda!9638))))

(assert (=> bs!39138 (not (= lambda!9720 lambda!9637))))

(assert (=> bs!39139 (= (= (h!991 lt!18781) (h!991 lt!18728)) (= lambda!9720 lambda!9702))))

(assert (=> bs!39139 (not (= lambda!9720 lambda!9701))))

(assert (=> bs!39139 (not (= lambda!9720 lambda!9700))))

(assert (=> bs!39140 (= (= (h!991 lt!18781) (h!991 ls!96)) (= lambda!9720 lambda!9629))))

(assert (=> b!81780 (not (= lambda!9720 lambda!9719))))

(assert (=> b!81780 (not (= lambda!9720 lambda!9718))))

(assert (=> bs!39141 (not (= lambda!9720 lambda!9685))))

(assert (=> bs!39142 (not (= lambda!9720 lambda!9646))))

(assert (=> bs!39143 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9720 lambda!9669))))

(assert (=> bs!39143 (not (= lambda!9720 lambda!9668))))

(assert (=> bs!39143 (not (= lambda!9720 lambda!9667))))

(assert (=> bs!39144 (not (= lambda!9720 lambda!9686))))

(assert (=> bs!39145 (not (= lambda!9720 lambda!9648))))

(assert (=> bs!39146 (not (= lambda!9720 lambda!9693))))

(assert (=> bs!39147 (= (= (h!991 lt!18781) (h!991 lt!18752)) (= lambda!9720 lambda!9705))))

(assert (=> bs!39147 (not (= lambda!9720 lambda!9704))))

(assert (=> bs!39147 (not (= lambda!9720 lambda!9703))))

(assert (=> bs!39148 (= (= (h!991 lt!18781) (h!991 more!5)) (= lambda!9720 lambda!9666))))

(assert (=> bs!39148 (not (= lambda!9720 lambda!9665))))

(assert (=> bs!39148 (not (= lambda!9720 lambda!9664))))

(assert (=> bs!39149 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9720 lambda!9690))))

(assert (=> bs!39149 (not (= lambda!9720 lambda!9689))))

(assert (=> bs!39149 (not (= lambda!9720 lambda!9688))))

(assert (=> bs!39150 (not (= lambda!9720 lambda!9687))))

(assert (=> bs!39151 (= (= (h!991 lt!18781) (h!991 lt!18782)) (= lambda!9720 lambda!9717))))

(assert (=> bs!39151 (not (= lambda!9720 lambda!9716))))

(assert (=> bs!39151 (not (= lambda!9720 lambda!9715))))

(assert (=> bs!39152 (not (= lambda!9720 lambda!9630))))

(assert (=> bs!39153 (= (= (h!991 lt!18781) (h!991 less!5)) (= lambda!9720 lambda!9696))))

(assert (=> bs!39153 (not (= lambda!9720 lambda!9695))))

(assert (=> bs!39153 (not (= lambda!9720 lambda!9694))))

(assert (=> bs!39154 (= (= (h!991 lt!18781) (h!991 lt!18730)) (= lambda!9720 lambda!9699))))

(assert (=> bs!39154 (not (= lambda!9720 lambda!9698))))

(assert (=> bs!39154 (not (= lambda!9720 lambda!9697))))

(assert (=> b!81780 true))

(declare-fun b!81777 () Bool)

(declare-fun e!44335 () List!665)

(assert (=> b!81777 (= e!44335 Nil!624)))

(declare-fun d!55977 () Bool)

(declare-fun c!20578 () Bool)

(assert (=> d!55977 (= c!20578 (is-Nil!624 lt!18781))))

(assert (=> d!55977 (= (quickSort!0 lt!18781) e!44335)))

(declare-fun b!81779 () Bool)

(declare-fun e!44336 () List!665)

(assert (=> b!81779 (= e!44336 lt!18781)))

(declare-fun b!81778 () Bool)

(assert (=> b!81778 (= e!44335 e!44336)))

(declare-fun c!20579 () Bool)

(assert (=> b!81778 (= c!20579 (and (is-Cons!622 lt!18781) (is-Nil!624 (t!47838 lt!18781))))))

(assert (=> b!81780 (= e!44336 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18781) lambda!9718)) (Cons!622 (h!991 lt!18781) (filter!18 (t!47838 lt!18781) lambda!9719))) (quickSort!0 (filter!18 (t!47838 lt!18781) lambda!9720))))))

(assert (= (and b!81778 c!20579) b!81779))

(assert (= (and b!81778 (not c!20579)) b!81780))

(assert (= (and d!55977 c!20578) b!81777))

(assert (= (and d!55977 (not c!20578)) b!81778))

(declare-fun m!76924 () Bool)

(assert (=> b!81780 m!76924))

(declare-fun m!76926 () Bool)

(assert (=> b!81780 m!76926))

(assert (=> b!81780 m!76924))

(declare-fun m!76928 () Bool)

(assert (=> b!81780 m!76928))

(declare-fun m!76930 () Bool)

(assert (=> b!81780 m!76930))

(declare-fun m!76932 () Bool)

(assert (=> b!81780 m!76932))

(assert (=> b!81780 m!76928))

(assert (=> b!81780 m!76932))

(declare-fun m!76934 () Bool)

(assert (=> b!81780 m!76934))

(assert (=> b!81780 m!76930))

(assert (=> b!81780 m!76926))

(declare-fun m!76936 () Bool)

(assert (=> b!81780 m!76936))

(assert (=> b!81634 d!55977))

(declare-fun d!55979 () Bool)

(assert (=> d!55979 (= (isEmpty!677 (++!73 (quickSort!0 less!5) equal!10)) (is-Nil!624 (++!73 (quickSort!0 less!5) equal!10)))))

(assert (=> b!81616 d!55979))

(declare-fun d!55981 () Bool)

(declare-fun res!41841 () Bool)

(declare-fun e!44337 () Bool)

(assert (=> d!55981 (=> res!41841 e!44337)))

(assert (=> d!55981 (= res!41841 (is-Nil!624 (quickSort!0 less!5)))))

(assert (=> d!55981 (= (forall!20 (quickSort!0 less!5) lambda!9630) e!44337)))

(declare-fun b!81781 () Bool)

(declare-fun e!44338 () Bool)

(assert (=> b!81781 (= e!44337 e!44338)))

(declare-fun res!41842 () Bool)

(assert (=> b!81781 (=> (not res!41842) (not e!44338))))

(assert (=> b!81781 (= res!41842 (dynLambda!984 lambda!9630 (h!991 (quickSort!0 less!5))))))

(declare-fun b!81782 () Bool)

(assert (=> b!81782 (= e!44338 (forall!20 (t!47838 (quickSort!0 less!5)) lambda!9630))))

(assert (= (and d!55981 (not res!41841)) b!81781))

(assert (= (and b!81781 res!41842) b!81782))

(declare-fun b_lambda!16119 () Bool)

(assert (=> (not b_lambda!16119) (not b!81781)))

(declare-fun m!76938 () Bool)

(assert (=> b!81781 m!76938))

(declare-fun m!76940 () Bool)

(assert (=> b!81782 m!76940))

(assert (=> d!55867 d!55981))

(assert (=> d!55867 d!55875))

(declare-fun d!55983 () Bool)

(declare-fun res!41843 () Bool)

(declare-fun e!44339 () Bool)

(assert (=> d!55983 (=> res!41843 e!44339)))

(assert (=> d!55983 (= res!41843 (is-Nil!624 less!5))))

(assert (=> d!55983 (= (forall!20 less!5 lambda!9630) e!44339)))

(declare-fun b!81783 () Bool)

(declare-fun e!44340 () Bool)

(assert (=> b!81783 (= e!44339 e!44340)))

(declare-fun res!41844 () Bool)

(assert (=> b!81783 (=> (not res!41844) (not e!44340))))

(assert (=> b!81783 (= res!41844 (dynLambda!984 lambda!9630 (h!991 less!5)))))

(declare-fun b!81784 () Bool)

(assert (=> b!81784 (= e!44340 (forall!20 (t!47838 less!5) lambda!9630))))

(assert (= (and d!55983 (not res!41843)) b!81783))

(assert (= (and b!81783 res!41844) b!81784))

(declare-fun b_lambda!16121 () Bool)

(assert (=> (not b_lambda!16121) (not b!81783)))

(declare-fun m!76942 () Bool)

(assert (=> b!81783 m!76942))

(assert (=> b!81784 m!76622))

(assert (=> d!55867 d!55983))

(declare-fun d!55985 () Bool)

(assert (=> d!55985 (= (isEmpty!677 (quickSort!0 less!5)) (is-Nil!624 (quickSort!0 less!5)))))

(assert (=> b!81638 d!55985))

(assert (=> d!55873 d!55981))

(declare-fun b!81785 () Bool)

(declare-fun e!44342 () List!665)

(declare-fun lt!18812 () List!665)

(assert (=> b!81785 (= e!44342 (Cons!622 (h!991 (t!47838 less!5)) lt!18812))))

(declare-fun b!81786 () Bool)

(declare-fun e!44344 () Bool)

(assert (=> b!81786 (= e!44344 (dynLambda!984 lambda!9689 (h!991 (t!47838 less!5))))))

(declare-fun b!81787 () Bool)

(assert (=> b!81787 (= e!44342 lt!18812)))

(declare-fun d!55987 () Bool)

(declare-fun e!44341 () Bool)

(assert (=> d!55987 e!44341))

(declare-fun res!41847 () Bool)

(assert (=> d!55987 (=> (not res!41847) (not e!44341))))

(declare-fun lt!18813 () List!665)

(assert (=> d!55987 (= res!41847 (<= (size!653 lt!18813) (size!653 (t!47838 less!5))))))

(declare-fun e!44343 () List!665)

(assert (=> d!55987 (= lt!18813 e!44343)))

(declare-fun c!20581 () Bool)

(assert (=> d!55987 (= c!20581 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!55987 (= (filter!18 (t!47838 less!5) lambda!9689) lt!18813)))

(declare-fun b!81788 () Bool)

(declare-fun res!41845 () Bool)

(assert (=> b!81788 (=> (not res!41845) (not e!44341))))

(assert (=> b!81788 (= res!41845 (subset (content!124 lt!18813) (content!124 (t!47838 less!5))))))

(declare-fun b!81789 () Bool)

(assert (=> b!81789 (= e!44343 Nil!624)))

(declare-fun b!81790 () Bool)

(assert (=> b!81790 (= e!44341 (forall!20 lt!18813 lambda!9689))))

(declare-fun b!81791 () Bool)

(assert (=> b!81791 (= e!44343 e!44342)))

(declare-fun c!20580 () Bool)

(assert (=> b!81791 (= c!20580 e!44344)))

(declare-fun res!41846 () Bool)

(assert (=> b!81791 (=> (not res!41846) (not e!44344))))

(assert (=> b!81791 (= res!41846 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!81791 (= lt!18812 (filter!18 (t!47838 (t!47838 less!5)) lambda!9689))))

(assert (= (and b!81791 res!41846) b!81786))

(assert (= (and b!81791 c!20580) b!81785))

(assert (= (and b!81791 (not c!20580)) b!81787))

(assert (= (and d!55987 c!20581) b!81789))

(assert (= (and d!55987 (not c!20581)) b!81791))

(assert (= (and d!55987 res!41847) b!81788))

(assert (= (and b!81788 res!41845) b!81790))

(declare-fun b_lambda!16123 () Bool)

(assert (=> (not b_lambda!16123) (not b!81786)))

(declare-fun m!76944 () Bool)

(assert (=> b!81790 m!76944))

(declare-fun m!76946 () Bool)

(assert (=> b!81788 m!76946))

(assert (=> b!81788 m!76790))

(declare-fun m!76948 () Bool)

(assert (=> b!81786 m!76948))

(declare-fun m!76950 () Bool)

(assert (=> d!55987 m!76950))

(assert (=> d!55987 m!76796))

(declare-fun m!76952 () Bool)

(assert (=> b!81791 m!76952))

(assert (=> b!81598 d!55987))

(declare-fun b!81792 () Bool)

(declare-fun e!44346 () List!665)

(declare-fun lt!18814 () List!665)

(assert (=> b!81792 (= e!44346 (Cons!622 (h!991 (t!47838 less!5)) lt!18814))))

(declare-fun b!81793 () Bool)

(declare-fun e!44348 () Bool)

(assert (=> b!81793 (= e!44348 (dynLambda!984 lambda!9688 (h!991 (t!47838 less!5))))))

(declare-fun b!81794 () Bool)

(assert (=> b!81794 (= e!44346 lt!18814)))

(declare-fun d!55989 () Bool)

(declare-fun e!44345 () Bool)

(assert (=> d!55989 e!44345))

(declare-fun res!41850 () Bool)

(assert (=> d!55989 (=> (not res!41850) (not e!44345))))

(declare-fun lt!18815 () List!665)

(assert (=> d!55989 (= res!41850 (<= (size!653 lt!18815) (size!653 (t!47838 less!5))))))

(declare-fun e!44347 () List!665)

(assert (=> d!55989 (= lt!18815 e!44347)))

(declare-fun c!20583 () Bool)

(assert (=> d!55989 (= c!20583 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!55989 (= (filter!18 (t!47838 less!5) lambda!9688) lt!18815)))

(declare-fun b!81795 () Bool)

(declare-fun res!41848 () Bool)

(assert (=> b!81795 (=> (not res!41848) (not e!44345))))

(assert (=> b!81795 (= res!41848 (subset (content!124 lt!18815) (content!124 (t!47838 less!5))))))

(declare-fun b!81796 () Bool)

(assert (=> b!81796 (= e!44347 Nil!624)))

(declare-fun b!81797 () Bool)

(assert (=> b!81797 (= e!44345 (forall!20 lt!18815 lambda!9688))))

(declare-fun b!81798 () Bool)

(assert (=> b!81798 (= e!44347 e!44346)))

(declare-fun c!20582 () Bool)

(assert (=> b!81798 (= c!20582 e!44348)))

(declare-fun res!41849 () Bool)

(assert (=> b!81798 (=> (not res!41849) (not e!44348))))

(assert (=> b!81798 (= res!41849 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!81798 (= lt!18814 (filter!18 (t!47838 (t!47838 less!5)) lambda!9688))))

(assert (= (and b!81798 res!41849) b!81793))

(assert (= (and b!81798 c!20582) b!81792))

(assert (= (and b!81798 (not c!20582)) b!81794))

(assert (= (and d!55989 c!20583) b!81796))

(assert (= (and d!55989 (not c!20583)) b!81798))

(assert (= (and d!55989 res!41850) b!81795))

(assert (= (and b!81795 res!41848) b!81797))

(declare-fun b_lambda!16125 () Bool)

(assert (=> (not b_lambda!16125) (not b!81793)))

(declare-fun m!76954 () Bool)

(assert (=> b!81797 m!76954))

(declare-fun m!76956 () Bool)

(assert (=> b!81795 m!76956))

(assert (=> b!81795 m!76790))

(declare-fun m!76958 () Bool)

(assert (=> b!81793 m!76958))

(declare-fun m!76960 () Bool)

(assert (=> d!55989 m!76960))

(assert (=> d!55989 m!76796))

(declare-fun m!76962 () Bool)

(assert (=> b!81798 m!76962))

(assert (=> b!81598 d!55989))

(declare-fun d!55991 () Bool)

(declare-fun e!44350 () Bool)

(assert (=> d!55991 e!44350))

(declare-fun c!20584 () Bool)

(assert (=> d!55991 (= c!20584 (is-Cons!622 (quickSort!0 lt!18771)))))

(declare-fun e!44349 () Bool)

(assert (=> d!55991 e!44349))

(declare-fun res!41851 () Bool)

(assert (=> d!55991 (=> (not res!41851) (not e!44349))))

(assert (=> d!55991 (= res!41851 (forall!20 (quickSort!0 lt!18771) lambda!9627))))

(assert (=> d!55991 (= (append_preserves_forall!0 (quickSort!0 lt!18771) lt!18766 lambda!9627) true)))

(declare-fun b!81799 () Bool)

(assert (=> b!81799 (= e!44349 (forall!20 lt!18766 lambda!9627))))

(declare-fun b!81800 () Bool)

(assert (=> b!81800 (= e!44350 (forall!20 (++!73 (quickSort!0 lt!18771) lt!18766) lambda!9627))))

(declare-fun lt!18816 () Bool)

(assert (=> b!81800 (= lt!18816 (append_preserves_forall!0 (t!47838 (quickSort!0 lt!18771)) lt!18766 lambda!9627))))

(declare-fun b!81801 () Bool)

(assert (=> b!81801 (= e!44350 (forall!20 (++!73 (quickSort!0 lt!18771) lt!18766) lambda!9627))))

(assert (= (and d!55991 res!41851) b!81799))

(assert (= (and d!55991 c!20584) b!81800))

(assert (= (and d!55991 (not c!20584)) b!81801))

(assert (=> d!55991 m!76530))

(declare-fun m!76964 () Bool)

(assert (=> d!55991 m!76964))

(declare-fun m!76966 () Bool)

(assert (=> b!81799 m!76966))

(assert (=> b!81800 m!76530))

(assert (=> b!81800 m!76532))

(assert (=> b!81800 m!76532))

(declare-fun m!76968 () Bool)

(assert (=> b!81800 m!76968))

(declare-fun m!76970 () Bool)

(assert (=> b!81800 m!76970))

(assert (=> b!81801 m!76530))

(assert (=> b!81801 m!76532))

(assert (=> b!81801 m!76532))

(assert (=> b!81801 m!76968))

(assert (=> b!81598 d!55991))

(declare-fun bs!39155 () Bool)

(declare-fun b!81804 () Bool)

(assert (= bs!39155 (and b!81804 b!81517)))

(declare-fun lambda!9721 () Int)

(assert (=> bs!39155 (not (= lambda!9721 lambda!9663))))

(assert (=> bs!39155 (not (= lambda!9721 lambda!9662))))

(assert (=> bs!39155 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9721 lambda!9661))))

(declare-fun bs!39156 () Bool)

(assert (= bs!39156 (and b!81804 b!81734)))

(assert (=> bs!39156 (not (= lambda!9721 lambda!9711))))

(assert (=> bs!39156 (not (= lambda!9721 lambda!9710))))

(assert (=> bs!39156 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9721 lambda!9709))))

(declare-fun bs!39157 () Bool)

(assert (= bs!39157 (and b!81804 b!81462)))

(assert (=> bs!39157 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9721 lambda!9627))))

(declare-fun bs!39158 () Bool)

(assert (= bs!39158 (and b!81804 b!81495)))

(assert (=> bs!39158 (not (= lambda!9721 lambda!9647))))

(declare-fun bs!39159 () Bool)

(assert (= bs!39159 (and b!81804 b!81742)))

(assert (=> bs!39159 (not (= lambda!9721 lambda!9714))))

(assert (=> bs!39159 (not (= lambda!9721 lambda!9713))))

(assert (=> bs!39159 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9721 lambda!9712))))

(declare-fun bs!39160 () Bool)

(assert (= bs!39160 (and b!81804 b!81709)))

(assert (=> bs!39160 (not (= lambda!9721 lambda!9708))))

(assert (=> bs!39160 (not (= lambda!9721 lambda!9707))))

(assert (=> bs!39160 (= (= (h!991 lt!18771) (h!991 lt!18751)) (= lambda!9721 lambda!9706))))

(declare-fun bs!39161 () Bool)

(assert (= bs!39161 (and b!81804 b!81460)))

(assert (=> bs!39161 (not (= lambda!9721 lambda!9628))))

(declare-fun bs!39162 () Bool)

(assert (= bs!39162 (and b!81804 b!81560)))

(assert (=> bs!39162 (not (= lambda!9721 lambda!9678))))

(assert (=> bs!39162 (not (= lambda!9721 lambda!9677))))

(assert (=> bs!39162 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9721 lambda!9676))))

(declare-fun bs!39163 () Bool)

(assert (= bs!39163 (and b!81804 b!81490)))

(assert (=> bs!39163 (not (= lambda!9721 lambda!9639))))

(assert (=> bs!39163 (not (= lambda!9721 lambda!9638))))

(assert (=> bs!39163 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9721 lambda!9637))))

(declare-fun bs!39164 () Bool)

(assert (= bs!39164 (and b!81804 b!81691)))

(assert (=> bs!39164 (not (= lambda!9721 lambda!9702))))

(assert (=> bs!39164 (not (= lambda!9721 lambda!9701))))

(assert (=> bs!39164 (= (= (h!991 lt!18771) (h!991 lt!18728)) (= lambda!9721 lambda!9700))))

(declare-fun bs!39165 () Bool)

(assert (= bs!39165 (and b!81804 b!81466)))

(assert (=> bs!39165 (not (= lambda!9721 lambda!9629))))

(declare-fun bs!39166 () Bool)

(assert (= bs!39166 (and b!81804 b!81780)))

(assert (=> bs!39166 (not (= lambda!9721 lambda!9720))))

(assert (=> bs!39166 (not (= lambda!9721 lambda!9719))))

(assert (=> bs!39166 (= (= (h!991 lt!18771) (h!991 lt!18781)) (= lambda!9721 lambda!9718))))

(declare-fun bs!39167 () Bool)

(assert (= bs!39167 (and b!81804 d!55883)))

(assert (=> bs!39167 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9721 lambda!9685))))

(declare-fun bs!39168 () Bool)

(assert (= bs!39168 (and b!81804 d!55861)))

(assert (=> bs!39168 (not (= lambda!9721 lambda!9646))))

(declare-fun bs!39169 () Bool)

(assert (= bs!39169 (and b!81804 b!81537)))

(assert (=> bs!39169 (not (= lambda!9721 lambda!9669))))

(assert (=> bs!39169 (not (= lambda!9721 lambda!9668))))

(assert (=> bs!39169 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9721 lambda!9667))))

(declare-fun bs!39170 () Bool)

(assert (= bs!39170 (and b!81804 b!81587)))

(assert (=> bs!39170 (not (= lambda!9721 lambda!9686))))

(declare-fun bs!39171 () Bool)

(assert (= bs!39171 (and b!81804 b!81496)))

(assert (=> bs!39171 (not (= lambda!9721 lambda!9648))))

(declare-fun bs!39172 () Bool)

(assert (= bs!39172 (and b!81804 d!55889)))

(assert (=> bs!39172 (not (= lambda!9721 lambda!9693))))

(declare-fun bs!39173 () Bool)

(assert (= bs!39173 (and b!81804 b!81705)))

(assert (=> bs!39173 (not (= lambda!9721 lambda!9705))))

(assert (=> bs!39173 (not (= lambda!9721 lambda!9704))))

(assert (=> bs!39173 (= (= (h!991 lt!18771) (h!991 lt!18752)) (= lambda!9721 lambda!9703))))

(declare-fun bs!39174 () Bool)

(assert (= bs!39174 (and b!81804 b!81522)))

(assert (=> bs!39174 (not (= lambda!9721 lambda!9666))))

(assert (=> bs!39174 (not (= lambda!9721 lambda!9665))))

(assert (=> bs!39174 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9721 lambda!9664))))

(declare-fun bs!39175 () Bool)

(assert (= bs!39175 (and b!81804 b!81598)))

(assert (=> bs!39175 (not (= lambda!9721 lambda!9690))))

(assert (=> bs!39175 (not (= lambda!9721 lambda!9689))))

(assert (=> bs!39175 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9721 lambda!9688))))

(declare-fun bs!39176 () Bool)

(assert (= bs!39176 (and b!81804 b!81588)))

(assert (=> bs!39176 (not (= lambda!9721 lambda!9687))))

(declare-fun bs!39177 () Bool)

(assert (= bs!39177 (and b!81804 b!81776)))

(assert (=> bs!39177 (not (= lambda!9721 lambda!9717))))

(assert (=> bs!39177 (not (= lambda!9721 lambda!9716))))

(assert (=> bs!39177 (= (= (h!991 lt!18771) (h!991 lt!18782)) (= lambda!9721 lambda!9715))))

(declare-fun bs!39178 () Bool)

(assert (= bs!39178 (and b!81804 b!81468)))

(assert (=> bs!39178 (not (= lambda!9721 lambda!9630))))

(declare-fun bs!39179 () Bool)

(assert (= bs!39179 (and b!81804 b!81633)))

(assert (=> bs!39179 (not (= lambda!9721 lambda!9696))))

(assert (=> bs!39179 (not (= lambda!9721 lambda!9695))))

(assert (=> bs!39179 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9721 lambda!9694))))

(declare-fun bs!39180 () Bool)

(assert (= bs!39180 (and b!81804 b!81687)))

(assert (=> bs!39180 (not (= lambda!9721 lambda!9699))))

(assert (=> bs!39180 (not (= lambda!9721 lambda!9698))))

(assert (=> bs!39180 (= (= (h!991 lt!18771) (h!991 lt!18730)) (= lambda!9721 lambda!9697))))

(assert (=> b!81804 true))

(declare-fun lambda!9722 () Int)

(assert (=> bs!39155 (not (= lambda!9722 lambda!9663))))

(assert (=> bs!39155 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9722 lambda!9662))))

(assert (=> bs!39155 (not (= lambda!9722 lambda!9661))))

(assert (=> bs!39156 (not (= lambda!9722 lambda!9711))))

(assert (=> bs!39156 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9722 lambda!9710))))

(assert (=> bs!39156 (not (= lambda!9722 lambda!9709))))

(assert (=> bs!39157 (not (= lambda!9722 lambda!9627))))

(assert (=> bs!39158 (not (= lambda!9722 lambda!9647))))

(assert (=> b!81804 (not (= lambda!9722 lambda!9721))))

(assert (=> bs!39159 (not (= lambda!9722 lambda!9714))))

(assert (=> bs!39159 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9722 lambda!9713))))

(assert (=> bs!39159 (not (= lambda!9722 lambda!9712))))

(assert (=> bs!39160 (not (= lambda!9722 lambda!9708))))

(assert (=> bs!39160 (= (= (h!991 lt!18771) (h!991 lt!18751)) (= lambda!9722 lambda!9707))))

(assert (=> bs!39160 (not (= lambda!9722 lambda!9706))))

(assert (=> bs!39161 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9722 lambda!9628))))

(assert (=> bs!39162 (not (= lambda!9722 lambda!9678))))

(assert (=> bs!39162 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9722 lambda!9677))))

(assert (=> bs!39162 (not (= lambda!9722 lambda!9676))))

(assert (=> bs!39163 (not (= lambda!9722 lambda!9639))))

(assert (=> bs!39163 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9722 lambda!9638))))

(assert (=> bs!39163 (not (= lambda!9722 lambda!9637))))

(assert (=> bs!39164 (not (= lambda!9722 lambda!9702))))

(assert (=> bs!39164 (= (= (h!991 lt!18771) (h!991 lt!18728)) (= lambda!9722 lambda!9701))))

(assert (=> bs!39164 (not (= lambda!9722 lambda!9700))))

(assert (=> bs!39165 (not (= lambda!9722 lambda!9629))))

(assert (=> bs!39166 (not (= lambda!9722 lambda!9720))))

(assert (=> bs!39166 (= (= (h!991 lt!18771) (h!991 lt!18781)) (= lambda!9722 lambda!9719))))

(assert (=> bs!39166 (not (= lambda!9722 lambda!9718))))

(assert (=> bs!39167 (not (= lambda!9722 lambda!9685))))

(assert (=> bs!39168 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9722 lambda!9646))))

(assert (=> bs!39169 (not (= lambda!9722 lambda!9669))))

(assert (=> bs!39169 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9722 lambda!9668))))

(assert (=> bs!39169 (not (= lambda!9722 lambda!9667))))

(assert (=> bs!39170 (not (= lambda!9722 lambda!9686))))

(assert (=> bs!39171 (not (= lambda!9722 lambda!9648))))

(assert (=> bs!39172 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9722 lambda!9693))))

(assert (=> bs!39173 (not (= lambda!9722 lambda!9705))))

(assert (=> bs!39173 (= (= (h!991 lt!18771) (h!991 lt!18752)) (= lambda!9722 lambda!9704))))

(assert (=> bs!39173 (not (= lambda!9722 lambda!9703))))

(assert (=> bs!39174 (not (= lambda!9722 lambda!9666))))

(assert (=> bs!39174 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9722 lambda!9665))))

(assert (=> bs!39174 (not (= lambda!9722 lambda!9664))))

(assert (=> bs!39175 (not (= lambda!9722 lambda!9690))))

(assert (=> bs!39175 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9722 lambda!9689))))

(assert (=> bs!39175 (not (= lambda!9722 lambda!9688))))

(assert (=> bs!39176 (not (= lambda!9722 lambda!9687))))

(assert (=> bs!39177 (not (= lambda!9722 lambda!9717))))

(assert (=> bs!39177 (= (= (h!991 lt!18771) (h!991 lt!18782)) (= lambda!9722 lambda!9716))))

(assert (=> bs!39177 (not (= lambda!9722 lambda!9715))))

(assert (=> bs!39178 (not (= lambda!9722 lambda!9630))))

(assert (=> bs!39179 (not (= lambda!9722 lambda!9696))))

(assert (=> bs!39179 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9722 lambda!9695))))

(assert (=> bs!39179 (not (= lambda!9722 lambda!9694))))

(assert (=> bs!39180 (not (= lambda!9722 lambda!9699))))

(assert (=> bs!39180 (= (= (h!991 lt!18771) (h!991 lt!18730)) (= lambda!9722 lambda!9698))))

(assert (=> bs!39180 (not (= lambda!9722 lambda!9697))))

(assert (=> b!81804 true))

(declare-fun lambda!9723 () Int)

(assert (=> bs!39155 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9723 lambda!9663))))

(assert (=> bs!39155 (not (= lambda!9723 lambda!9662))))

(assert (=> bs!39155 (not (= lambda!9723 lambda!9661))))

(assert (=> bs!39156 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9723 lambda!9711))))

(assert (=> bs!39156 (not (= lambda!9723 lambda!9710))))

(assert (=> bs!39156 (not (= lambda!9723 lambda!9709))))

(assert (=> bs!39157 (not (= lambda!9723 lambda!9627))))

(assert (=> bs!39158 (not (= lambda!9723 lambda!9647))))

(assert (=> b!81804 (not (= lambda!9723 lambda!9722))))

(assert (=> b!81804 (not (= lambda!9723 lambda!9721))))

(assert (=> bs!39159 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9723 lambda!9714))))

(assert (=> bs!39159 (not (= lambda!9723 lambda!9713))))

(assert (=> bs!39159 (not (= lambda!9723 lambda!9712))))

(assert (=> bs!39160 (= (= (h!991 lt!18771) (h!991 lt!18751)) (= lambda!9723 lambda!9708))))

(assert (=> bs!39160 (not (= lambda!9723 lambda!9707))))

(assert (=> bs!39160 (not (= lambda!9723 lambda!9706))))

(assert (=> bs!39161 (not (= lambda!9723 lambda!9628))))

(assert (=> bs!39162 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9723 lambda!9678))))

(assert (=> bs!39162 (not (= lambda!9723 lambda!9677))))

(assert (=> bs!39162 (not (= lambda!9723 lambda!9676))))

(assert (=> bs!39163 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9723 lambda!9639))))

(assert (=> bs!39163 (not (= lambda!9723 lambda!9638))))

(assert (=> bs!39163 (not (= lambda!9723 lambda!9637))))

(assert (=> bs!39164 (= (= (h!991 lt!18771) (h!991 lt!18728)) (= lambda!9723 lambda!9702))))

(assert (=> bs!39164 (not (= lambda!9723 lambda!9701))))

(assert (=> bs!39164 (not (= lambda!9723 lambda!9700))))

(assert (=> bs!39165 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9723 lambda!9629))))

(assert (=> bs!39166 (= (= (h!991 lt!18771) (h!991 lt!18781)) (= lambda!9723 lambda!9720))))

(assert (=> bs!39166 (not (= lambda!9723 lambda!9719))))

(assert (=> bs!39166 (not (= lambda!9723 lambda!9718))))

(assert (=> bs!39167 (not (= lambda!9723 lambda!9685))))

(assert (=> bs!39168 (not (= lambda!9723 lambda!9646))))

(assert (=> bs!39169 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9723 lambda!9669))))

(assert (=> bs!39169 (not (= lambda!9723 lambda!9668))))

(assert (=> bs!39169 (not (= lambda!9723 lambda!9667))))

(assert (=> bs!39170 (not (= lambda!9723 lambda!9686))))

(assert (=> bs!39171 (not (= lambda!9723 lambda!9648))))

(assert (=> bs!39172 (not (= lambda!9723 lambda!9693))))

(assert (=> bs!39173 (= (= (h!991 lt!18771) (h!991 lt!18752)) (= lambda!9723 lambda!9705))))

(assert (=> bs!39173 (not (= lambda!9723 lambda!9704))))

(assert (=> bs!39173 (not (= lambda!9723 lambda!9703))))

(assert (=> bs!39174 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9723 lambda!9666))))

(assert (=> bs!39174 (not (= lambda!9723 lambda!9665))))

(assert (=> bs!39174 (not (= lambda!9723 lambda!9664))))

(assert (=> bs!39175 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9723 lambda!9690))))

(assert (=> bs!39175 (not (= lambda!9723 lambda!9689))))

(assert (=> bs!39175 (not (= lambda!9723 lambda!9688))))

(assert (=> bs!39176 (not (= lambda!9723 lambda!9687))))

(assert (=> bs!39177 (= (= (h!991 lt!18771) (h!991 lt!18782)) (= lambda!9723 lambda!9717))))

(assert (=> bs!39177 (not (= lambda!9723 lambda!9716))))

(assert (=> bs!39177 (not (= lambda!9723 lambda!9715))))

(assert (=> bs!39178 (not (= lambda!9723 lambda!9630))))

(assert (=> bs!39179 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9723 lambda!9696))))

(assert (=> bs!39179 (not (= lambda!9723 lambda!9695))))

(assert (=> bs!39179 (not (= lambda!9723 lambda!9694))))

(assert (=> bs!39180 (= (= (h!991 lt!18771) (h!991 lt!18730)) (= lambda!9723 lambda!9699))))

(assert (=> bs!39180 (not (= lambda!9723 lambda!9698))))

(assert (=> bs!39180 (not (= lambda!9723 lambda!9697))))

(assert (=> b!81804 true))

(declare-fun e!44355 () Bool)

(declare-fun b!81802 () Bool)

(assert (=> b!81802 (= e!44355 (filter_preserves_forall!0 (t!47838 lt!18771) lambda!9722 lambda!9627))))

(declare-fun lt!18822 () List!665)

(declare-fun lt!18820 () List!665)

(declare-fun lt!18817 () List!665)

(declare-fun e!44353 () Bool)

(declare-fun b!81803 () Bool)

(assert (=> b!81803 (= e!44353 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18822) lt!18817) (quickSort!0 lt!18820) lambda!9627))))

(declare-fun d!55993 () Bool)

(assert (=> d!55993 (forall!20 (quickSort!0 lt!18771) lambda!9627)))

(declare-fun lt!18819 () Bool)

(declare-fun e!44351 () Bool)

(assert (=> d!55993 (= lt!18819 e!44351)))

(declare-fun res!41854 () Bool)

(assert (=> d!55993 (=> res!41854 e!44351)))

(assert (=> d!55993 (= res!41854 (or (is-Nil!624 lt!18771) (and (is-Cons!622 lt!18771) (is-Nil!624 (t!47838 lt!18771)))))))

(assert (=> d!55993 (forall!20 lt!18771 lambda!9627)))

(assert (=> d!55993 (= (sort_preserves_forall!0 lt!18771 lambda!9627) true)))

(assert (=> b!81804 (= e!44351 e!44353)))

(declare-fun res!41855 () Bool)

(assert (=> b!81804 (=> (not res!41855) (not e!44353))))

(assert (=> b!81804 (= res!41855 (append_preserves_forall!0 (quickSort!0 lt!18822) lt!18817 lambda!9627))))

(declare-fun lt!18818 () Bool)

(declare-fun e!44352 () Bool)

(assert (=> b!81804 (= lt!18818 e!44352)))

(declare-fun res!41853 () Bool)

(assert (=> b!81804 (=> (not res!41853) (not e!44352))))

(assert (=> b!81804 (= res!41853 (sort_preserves_forall!0 lt!18822 lambda!9627))))

(declare-fun lt!18821 () Bool)

(declare-fun e!44354 () Bool)

(assert (=> b!81804 (= lt!18821 e!44354)))

(declare-fun res!41852 () Bool)

(assert (=> b!81804 (=> (not res!41852) (not e!44354))))

(assert (=> b!81804 (= res!41852 e!44355)))

(declare-fun res!41856 () Bool)

(assert (=> b!81804 (=> (not res!41856) (not e!44355))))

(assert (=> b!81804 (= res!41856 (filter_preserves_forall!0 (t!47838 lt!18771) lambda!9721 lambda!9627))))

(assert (=> b!81804 (= lt!18820 (filter!18 (t!47838 lt!18771) lambda!9723))))

(assert (=> b!81804 (= lt!18817 (Cons!622 (h!991 lt!18771) (filter!18 (t!47838 lt!18771) lambda!9722)))))

(assert (=> b!81804 (= lt!18822 (filter!18 (t!47838 lt!18771) lambda!9721))))

(declare-fun b!81805 () Bool)

(assert (=> b!81805 (= e!44352 (sort_preserves_forall!0 lt!18820 lambda!9627))))

(declare-fun b!81806 () Bool)

(assert (=> b!81806 (= e!44354 (filter_preserves_forall!0 (t!47838 lt!18771) lambda!9723 lambda!9627))))

(assert (= (and d!55993 (not res!41854)) b!81804))

(assert (= (and b!81804 res!41856) b!81802))

(assert (= (and b!81804 res!41852) b!81806))

(assert (= (and b!81804 res!41853) b!81805))

(assert (= (and b!81804 res!41855) b!81803))

(declare-fun m!76972 () Bool)

(assert (=> b!81806 m!76972))

(declare-fun m!76974 () Bool)

(assert (=> b!81805 m!76974))

(declare-fun m!76976 () Bool)

(assert (=> b!81803 m!76976))

(assert (=> b!81803 m!76976))

(declare-fun m!76978 () Bool)

(assert (=> b!81803 m!76978))

(declare-fun m!76980 () Bool)

(assert (=> b!81803 m!76980))

(assert (=> b!81803 m!76978))

(assert (=> b!81803 m!76980))

(declare-fun m!76982 () Bool)

(assert (=> b!81803 m!76982))

(declare-fun m!76984 () Bool)

(assert (=> b!81802 m!76984))

(declare-fun m!76986 () Bool)

(assert (=> b!81804 m!76986))

(declare-fun m!76988 () Bool)

(assert (=> b!81804 m!76988))

(assert (=> b!81804 m!76976))

(declare-fun m!76990 () Bool)

(assert (=> b!81804 m!76990))

(declare-fun m!76992 () Bool)

(assert (=> b!81804 m!76992))

(assert (=> b!81804 m!76976))

(declare-fun m!76994 () Bool)

(assert (=> b!81804 m!76994))

(declare-fun m!76996 () Bool)

(assert (=> b!81804 m!76996))

(assert (=> d!55993 m!76530))

(assert (=> d!55993 m!76530))

(assert (=> d!55993 m!76964))

(declare-fun m!76998 () Bool)

(assert (=> d!55993 m!76998))

(assert (=> b!81598 d!55993))

(declare-fun bs!39181 () Bool)

(declare-fun b!81810 () Bool)

(assert (= bs!39181 (and b!81810 b!81517)))

(declare-fun lambda!9724 () Int)

(assert (=> bs!39181 (not (= lambda!9724 lambda!9663))))

(assert (=> bs!39181 (not (= lambda!9724 lambda!9662))))

(assert (=> bs!39181 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9724 lambda!9661))))

(declare-fun bs!39182 () Bool)

(assert (= bs!39182 (and b!81810 b!81734)))

(assert (=> bs!39182 (not (= lambda!9724 lambda!9711))))

(assert (=> bs!39182 (not (= lambda!9724 lambda!9710))))

(assert (=> bs!39182 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9724 lambda!9709))))

(declare-fun bs!39183 () Bool)

(assert (= bs!39183 (and b!81810 b!81462)))

(assert (=> bs!39183 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9724 lambda!9627))))

(declare-fun bs!39184 () Bool)

(assert (= bs!39184 (and b!81810 b!81495)))

(assert (=> bs!39184 (not (= lambda!9724 lambda!9647))))

(declare-fun bs!39185 () Bool)

(assert (= bs!39185 (and b!81810 b!81804)))

(assert (=> bs!39185 (not (= lambda!9724 lambda!9723))))

(assert (=> bs!39185 (not (= lambda!9724 lambda!9722))))

(assert (=> bs!39185 (= lambda!9724 lambda!9721)))

(declare-fun bs!39186 () Bool)

(assert (= bs!39186 (and b!81810 b!81742)))

(assert (=> bs!39186 (not (= lambda!9724 lambda!9714))))

(assert (=> bs!39186 (not (= lambda!9724 lambda!9713))))

(assert (=> bs!39186 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9724 lambda!9712))))

(declare-fun bs!39187 () Bool)

(assert (= bs!39187 (and b!81810 b!81709)))

(assert (=> bs!39187 (not (= lambda!9724 lambda!9708))))

(assert (=> bs!39187 (not (= lambda!9724 lambda!9707))))

(assert (=> bs!39187 (= (= (h!991 lt!18771) (h!991 lt!18751)) (= lambda!9724 lambda!9706))))

(declare-fun bs!39188 () Bool)

(assert (= bs!39188 (and b!81810 b!81460)))

(assert (=> bs!39188 (not (= lambda!9724 lambda!9628))))

(declare-fun bs!39189 () Bool)

(assert (= bs!39189 (and b!81810 b!81560)))

(assert (=> bs!39189 (not (= lambda!9724 lambda!9678))))

(assert (=> bs!39189 (not (= lambda!9724 lambda!9677))))

(assert (=> bs!39189 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9724 lambda!9676))))

(declare-fun bs!39190 () Bool)

(assert (= bs!39190 (and b!81810 b!81490)))

(assert (=> bs!39190 (not (= lambda!9724 lambda!9639))))

(assert (=> bs!39190 (not (= lambda!9724 lambda!9638))))

(assert (=> bs!39190 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9724 lambda!9637))))

(declare-fun bs!39191 () Bool)

(assert (= bs!39191 (and b!81810 b!81691)))

(assert (=> bs!39191 (not (= lambda!9724 lambda!9702))))

(assert (=> bs!39191 (not (= lambda!9724 lambda!9701))))

(assert (=> bs!39191 (= (= (h!991 lt!18771) (h!991 lt!18728)) (= lambda!9724 lambda!9700))))

(declare-fun bs!39192 () Bool)

(assert (= bs!39192 (and b!81810 b!81466)))

(assert (=> bs!39192 (not (= lambda!9724 lambda!9629))))

(declare-fun bs!39193 () Bool)

(assert (= bs!39193 (and b!81810 b!81780)))

(assert (=> bs!39193 (not (= lambda!9724 lambda!9720))))

(assert (=> bs!39193 (not (= lambda!9724 lambda!9719))))

(assert (=> bs!39193 (= (= (h!991 lt!18771) (h!991 lt!18781)) (= lambda!9724 lambda!9718))))

(declare-fun bs!39194 () Bool)

(assert (= bs!39194 (and b!81810 d!55883)))

(assert (=> bs!39194 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9724 lambda!9685))))

(declare-fun bs!39195 () Bool)

(assert (= bs!39195 (and b!81810 d!55861)))

(assert (=> bs!39195 (not (= lambda!9724 lambda!9646))))

(declare-fun bs!39196 () Bool)

(assert (= bs!39196 (and b!81810 b!81537)))

(assert (=> bs!39196 (not (= lambda!9724 lambda!9669))))

(assert (=> bs!39196 (not (= lambda!9724 lambda!9668))))

(assert (=> bs!39196 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9724 lambda!9667))))

(declare-fun bs!39197 () Bool)

(assert (= bs!39197 (and b!81810 b!81587)))

(assert (=> bs!39197 (not (= lambda!9724 lambda!9686))))

(declare-fun bs!39198 () Bool)

(assert (= bs!39198 (and b!81810 b!81496)))

(assert (=> bs!39198 (not (= lambda!9724 lambda!9648))))

(declare-fun bs!39199 () Bool)

(assert (= bs!39199 (and b!81810 d!55889)))

(assert (=> bs!39199 (not (= lambda!9724 lambda!9693))))

(declare-fun bs!39200 () Bool)

(assert (= bs!39200 (and b!81810 b!81705)))

(assert (=> bs!39200 (not (= lambda!9724 lambda!9705))))

(assert (=> bs!39200 (not (= lambda!9724 lambda!9704))))

(assert (=> bs!39200 (= (= (h!991 lt!18771) (h!991 lt!18752)) (= lambda!9724 lambda!9703))))

(declare-fun bs!39201 () Bool)

(assert (= bs!39201 (and b!81810 b!81522)))

(assert (=> bs!39201 (not (= lambda!9724 lambda!9666))))

(assert (=> bs!39201 (not (= lambda!9724 lambda!9665))))

(assert (=> bs!39201 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9724 lambda!9664))))

(declare-fun bs!39202 () Bool)

(assert (= bs!39202 (and b!81810 b!81598)))

(assert (=> bs!39202 (not (= lambda!9724 lambda!9690))))

(assert (=> bs!39202 (not (= lambda!9724 lambda!9689))))

(assert (=> bs!39202 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9724 lambda!9688))))

(declare-fun bs!39203 () Bool)

(assert (= bs!39203 (and b!81810 b!81588)))

(assert (=> bs!39203 (not (= lambda!9724 lambda!9687))))

(declare-fun bs!39204 () Bool)

(assert (= bs!39204 (and b!81810 b!81776)))

(assert (=> bs!39204 (not (= lambda!9724 lambda!9717))))

(assert (=> bs!39204 (not (= lambda!9724 lambda!9716))))

(assert (=> bs!39204 (= (= (h!991 lt!18771) (h!991 lt!18782)) (= lambda!9724 lambda!9715))))

(declare-fun bs!39205 () Bool)

(assert (= bs!39205 (and b!81810 b!81468)))

(assert (=> bs!39205 (not (= lambda!9724 lambda!9630))))

(declare-fun bs!39206 () Bool)

(assert (= bs!39206 (and b!81810 b!81633)))

(assert (=> bs!39206 (not (= lambda!9724 lambda!9696))))

(assert (=> bs!39206 (not (= lambda!9724 lambda!9695))))

(assert (=> bs!39206 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9724 lambda!9694))))

(declare-fun bs!39207 () Bool)

(assert (= bs!39207 (and b!81810 b!81687)))

(assert (=> bs!39207 (not (= lambda!9724 lambda!9699))))

(assert (=> bs!39207 (not (= lambda!9724 lambda!9698))))

(assert (=> bs!39207 (= (= (h!991 lt!18771) (h!991 lt!18730)) (= lambda!9724 lambda!9697))))

(assert (=> b!81810 true))

(declare-fun lambda!9725 () Int)

(assert (=> bs!39181 (not (= lambda!9725 lambda!9663))))

(assert (=> bs!39181 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9725 lambda!9662))))

(assert (=> bs!39181 (not (= lambda!9725 lambda!9661))))

(assert (=> bs!39182 (not (= lambda!9725 lambda!9711))))

(assert (=> bs!39182 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9725 lambda!9710))))

(assert (=> bs!39182 (not (= lambda!9725 lambda!9709))))

(assert (=> bs!39183 (not (= lambda!9725 lambda!9627))))

(assert (=> bs!39184 (not (= lambda!9725 lambda!9647))))

(assert (=> bs!39185 (not (= lambda!9725 lambda!9723))))

(assert (=> bs!39185 (= lambda!9725 lambda!9722)))

(assert (=> bs!39185 (not (= lambda!9725 lambda!9721))))

(assert (=> bs!39186 (not (= lambda!9725 lambda!9714))))

(assert (=> bs!39186 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9725 lambda!9713))))

(assert (=> bs!39186 (not (= lambda!9725 lambda!9712))))

(assert (=> bs!39187 (not (= lambda!9725 lambda!9708))))

(assert (=> bs!39187 (= (= (h!991 lt!18771) (h!991 lt!18751)) (= lambda!9725 lambda!9707))))

(assert (=> bs!39187 (not (= lambda!9725 lambda!9706))))

(assert (=> bs!39188 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9725 lambda!9628))))

(assert (=> bs!39189 (not (= lambda!9725 lambda!9678))))

(assert (=> bs!39189 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9725 lambda!9677))))

(assert (=> bs!39189 (not (= lambda!9725 lambda!9676))))

(assert (=> bs!39190 (not (= lambda!9725 lambda!9639))))

(assert (=> bs!39190 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9725 lambda!9638))))

(assert (=> bs!39190 (not (= lambda!9725 lambda!9637))))

(assert (=> bs!39191 (not (= lambda!9725 lambda!9702))))

(assert (=> bs!39191 (= (= (h!991 lt!18771) (h!991 lt!18728)) (= lambda!9725 lambda!9701))))

(assert (=> bs!39191 (not (= lambda!9725 lambda!9700))))

(assert (=> bs!39192 (not (= lambda!9725 lambda!9629))))

(assert (=> bs!39193 (not (= lambda!9725 lambda!9720))))

(assert (=> bs!39193 (= (= (h!991 lt!18771) (h!991 lt!18781)) (= lambda!9725 lambda!9719))))

(assert (=> bs!39193 (not (= lambda!9725 lambda!9718))))

(assert (=> bs!39194 (not (= lambda!9725 lambda!9685))))

(assert (=> bs!39195 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9725 lambda!9646))))

(assert (=> bs!39196 (not (= lambda!9725 lambda!9669))))

(assert (=> bs!39196 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9725 lambda!9668))))

(assert (=> bs!39196 (not (= lambda!9725 lambda!9667))))

(assert (=> bs!39197 (not (= lambda!9725 lambda!9686))))

(assert (=> bs!39198 (not (= lambda!9725 lambda!9648))))

(assert (=> bs!39199 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9725 lambda!9693))))

(assert (=> bs!39200 (not (= lambda!9725 lambda!9705))))

(assert (=> bs!39200 (= (= (h!991 lt!18771) (h!991 lt!18752)) (= lambda!9725 lambda!9704))))

(assert (=> bs!39200 (not (= lambda!9725 lambda!9703))))

(assert (=> bs!39201 (not (= lambda!9725 lambda!9666))))

(assert (=> bs!39201 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9725 lambda!9665))))

(assert (=> bs!39201 (not (= lambda!9725 lambda!9664))))

(assert (=> bs!39202 (not (= lambda!9725 lambda!9690))))

(assert (=> bs!39202 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9725 lambda!9689))))

(assert (=> bs!39202 (not (= lambda!9725 lambda!9688))))

(assert (=> bs!39203 (not (= lambda!9725 lambda!9687))))

(assert (=> bs!39204 (not (= lambda!9725 lambda!9717))))

(assert (=> bs!39204 (= (= (h!991 lt!18771) (h!991 lt!18782)) (= lambda!9725 lambda!9716))))

(assert (=> bs!39204 (not (= lambda!9725 lambda!9715))))

(assert (=> bs!39205 (not (= lambda!9725 lambda!9630))))

(assert (=> bs!39206 (not (= lambda!9725 lambda!9696))))

(assert (=> bs!39206 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9725 lambda!9695))))

(assert (=> bs!39206 (not (= lambda!9725 lambda!9694))))

(assert (=> bs!39207 (not (= lambda!9725 lambda!9699))))

(assert (=> bs!39207 (= (= (h!991 lt!18771) (h!991 lt!18730)) (= lambda!9725 lambda!9698))))

(assert (=> bs!39207 (not (= lambda!9725 lambda!9697))))

(assert (=> b!81810 (not (= lambda!9725 lambda!9724))))

(assert (=> b!81810 true))

(declare-fun lambda!9726 () Int)

(assert (=> bs!39181 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9726 lambda!9663))))

(assert (=> bs!39181 (not (= lambda!9726 lambda!9662))))

(assert (=> bs!39181 (not (= lambda!9726 lambda!9661))))

(assert (=> bs!39182 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9726 lambda!9711))))

(assert (=> bs!39182 (not (= lambda!9726 lambda!9710))))

(assert (=> bs!39182 (not (= lambda!9726 lambda!9709))))

(assert (=> bs!39183 (not (= lambda!9726 lambda!9627))))

(assert (=> bs!39184 (not (= lambda!9726 lambda!9647))))

(assert (=> bs!39185 (= lambda!9726 lambda!9723)))

(assert (=> bs!39185 (not (= lambda!9726 lambda!9722))))

(assert (=> bs!39185 (not (= lambda!9726 lambda!9721))))

(assert (=> bs!39186 (= (= (h!991 lt!18771) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9726 lambda!9714))))

(assert (=> bs!39186 (not (= lambda!9726 lambda!9713))))

(assert (=> bs!39186 (not (= lambda!9726 lambda!9712))))

(assert (=> bs!39187 (= (= (h!991 lt!18771) (h!991 lt!18751)) (= lambda!9726 lambda!9708))))

(assert (=> bs!39187 (not (= lambda!9726 lambda!9707))))

(assert (=> bs!39187 (not (= lambda!9726 lambda!9706))))

(assert (=> bs!39188 (not (= lambda!9726 lambda!9628))))

(assert (=> bs!39189 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9726 lambda!9678))))

(assert (=> bs!39189 (not (= lambda!9726 lambda!9677))))

(assert (=> bs!39189 (not (= lambda!9726 lambda!9676))))

(assert (=> bs!39190 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9726 lambda!9639))))

(assert (=> bs!39190 (not (= lambda!9726 lambda!9638))))

(assert (=> bs!39190 (not (= lambda!9726 lambda!9637))))

(assert (=> bs!39191 (= (= (h!991 lt!18771) (h!991 lt!18728)) (= lambda!9726 lambda!9702))))

(assert (=> bs!39191 (not (= lambda!9726 lambda!9701))))

(assert (=> bs!39191 (not (= lambda!9726 lambda!9700))))

(assert (=> bs!39192 (= (= (h!991 lt!18771) (h!991 ls!96)) (= lambda!9726 lambda!9629))))

(assert (=> bs!39193 (= (= (h!991 lt!18771) (h!991 lt!18781)) (= lambda!9726 lambda!9720))))

(assert (=> bs!39193 (not (= lambda!9726 lambda!9719))))

(assert (=> bs!39193 (not (= lambda!9726 lambda!9718))))

(assert (=> bs!39194 (not (= lambda!9726 lambda!9685))))

(assert (=> bs!39195 (not (= lambda!9726 lambda!9646))))

(assert (=> bs!39196 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9726 lambda!9669))))

(assert (=> bs!39196 (not (= lambda!9726 lambda!9668))))

(assert (=> bs!39196 (not (= lambda!9726 lambda!9667))))

(assert (=> bs!39197 (not (= lambda!9726 lambda!9686))))

(assert (=> bs!39198 (not (= lambda!9726 lambda!9648))))

(assert (=> bs!39199 (not (= lambda!9726 lambda!9693))))

(assert (=> bs!39200 (= (= (h!991 lt!18771) (h!991 lt!18752)) (= lambda!9726 lambda!9705))))

(assert (=> bs!39200 (not (= lambda!9726 lambda!9704))))

(assert (=> bs!39200 (not (= lambda!9726 lambda!9703))))

(assert (=> bs!39201 (= (= (h!991 lt!18771) (h!991 more!5)) (= lambda!9726 lambda!9666))))

(assert (=> bs!39201 (not (= lambda!9726 lambda!9665))))

(assert (=> bs!39201 (not (= lambda!9726 lambda!9664))))

(assert (=> bs!39202 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9726 lambda!9690))))

(assert (=> bs!39202 (not (= lambda!9726 lambda!9689))))

(assert (=> bs!39202 (not (= lambda!9726 lambda!9688))))

(assert (=> bs!39203 (not (= lambda!9726 lambda!9687))))

(assert (=> bs!39204 (= (= (h!991 lt!18771) (h!991 lt!18782)) (= lambda!9726 lambda!9717))))

(assert (=> bs!39204 (not (= lambda!9726 lambda!9716))))

(assert (=> bs!39204 (not (= lambda!9726 lambda!9715))))

(assert (=> bs!39205 (not (= lambda!9726 lambda!9630))))

(assert (=> bs!39206 (= (= (h!991 lt!18771) (h!991 less!5)) (= lambda!9726 lambda!9696))))

(assert (=> bs!39206 (not (= lambda!9726 lambda!9695))))

(assert (=> bs!39206 (not (= lambda!9726 lambda!9694))))

(assert (=> bs!39207 (= (= (h!991 lt!18771) (h!991 lt!18730)) (= lambda!9726 lambda!9699))))

(assert (=> bs!39207 (not (= lambda!9726 lambda!9698))))

(assert (=> bs!39207 (not (= lambda!9726 lambda!9697))))

(assert (=> b!81810 (not (= lambda!9726 lambda!9725))))

(assert (=> b!81810 (not (= lambda!9726 lambda!9724))))

(assert (=> b!81810 true))

(declare-fun b!81807 () Bool)

(declare-fun e!44356 () List!665)

(assert (=> b!81807 (= e!44356 Nil!624)))

(declare-fun d!55995 () Bool)

(declare-fun c!20585 () Bool)

(assert (=> d!55995 (= c!20585 (is-Nil!624 lt!18771))))

(assert (=> d!55995 (= (quickSort!0 lt!18771) e!44356)))

(declare-fun b!81809 () Bool)

(declare-fun e!44357 () List!665)

(assert (=> b!81809 (= e!44357 lt!18771)))

(declare-fun b!81808 () Bool)

(assert (=> b!81808 (= e!44356 e!44357)))

(declare-fun c!20586 () Bool)

(assert (=> b!81808 (= c!20586 (and (is-Cons!622 lt!18771) (is-Nil!624 (t!47838 lt!18771))))))

(assert (=> b!81810 (= e!44357 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18771) lambda!9724)) (Cons!622 (h!991 lt!18771) (filter!18 (t!47838 lt!18771) lambda!9725))) (quickSort!0 (filter!18 (t!47838 lt!18771) lambda!9726))))))

(assert (= (and b!81808 c!20586) b!81809))

(assert (= (and b!81808 (not c!20586)) b!81810))

(assert (= (and d!55995 c!20585) b!81807))

(assert (= (and d!55995 (not c!20585)) b!81808))

(declare-fun m!77000 () Bool)

(assert (=> b!81810 m!77000))

(declare-fun m!77002 () Bool)

(assert (=> b!81810 m!77002))

(assert (=> b!81810 m!77000))

(declare-fun m!77004 () Bool)

(assert (=> b!81810 m!77004))

(declare-fun m!77006 () Bool)

(assert (=> b!81810 m!77006))

(declare-fun m!77008 () Bool)

(assert (=> b!81810 m!77008))

(assert (=> b!81810 m!77004))

(assert (=> b!81810 m!77008))

(declare-fun m!77010 () Bool)

(assert (=> b!81810 m!77010))

(assert (=> b!81810 m!77006))

(assert (=> b!81810 m!77002))

(declare-fun m!77012 () Bool)

(assert (=> b!81810 m!77012))

(assert (=> b!81598 d!55995))

(declare-fun d!55997 () Bool)

(declare-fun e!44358 () Bool)

(assert (=> d!55997 e!44358))

(declare-fun c!20587 () Bool)

(assert (=> d!55997 (= c!20587 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!55997 (forall!20 (t!47838 less!5) lambda!9627)))

(assert (=> d!55997 (= (filter_preserves_forall!0 (t!47838 less!5) lambda!9688 lambda!9627) true)))

(declare-fun b!81811 () Bool)

(assert (=> b!81811 (= e!44358 (forall!20 (filter!18 (t!47838 less!5) lambda!9688) lambda!9627))))

(declare-fun lt!18823 () Bool)

(assert (=> b!81811 (= lt!18823 (filter_preserves_forall!0 (t!47838 (t!47838 less!5)) lambda!9688 lambda!9627))))

(declare-fun b!81812 () Bool)

(assert (=> b!81812 (= e!44358 (forall!20 (filter!18 (t!47838 less!5) lambda!9688) lambda!9627))))

(assert (= (and d!55997 c!20587) b!81811))

(assert (= (and d!55997 (not c!20587)) b!81812))

(declare-fun m!77014 () Bool)

(assert (=> d!55997 m!77014))

(assert (=> b!81811 m!76550))

(assert (=> b!81811 m!76550))

(declare-fun m!77016 () Bool)

(assert (=> b!81811 m!77016))

(declare-fun m!77018 () Bool)

(assert (=> b!81811 m!77018))

(assert (=> b!81812 m!76550))

(assert (=> b!81812 m!76550))

(assert (=> b!81812 m!77016))

(assert (=> b!81598 d!55997))

(declare-fun b!81813 () Bool)

(declare-fun e!44360 () List!665)

(declare-fun lt!18824 () List!665)

(assert (=> b!81813 (= e!44360 (Cons!622 (h!991 (t!47838 less!5)) lt!18824))))

(declare-fun b!81814 () Bool)

(declare-fun e!44362 () Bool)

(assert (=> b!81814 (= e!44362 (dynLambda!984 lambda!9690 (h!991 (t!47838 less!5))))))

(declare-fun b!81815 () Bool)

(assert (=> b!81815 (= e!44360 lt!18824)))

(declare-fun d!55999 () Bool)

(declare-fun e!44359 () Bool)

(assert (=> d!55999 e!44359))

(declare-fun res!41859 () Bool)

(assert (=> d!55999 (=> (not res!41859) (not e!44359))))

(declare-fun lt!18825 () List!665)

(assert (=> d!55999 (= res!41859 (<= (size!653 lt!18825) (size!653 (t!47838 less!5))))))

(declare-fun e!44361 () List!665)

(assert (=> d!55999 (= lt!18825 e!44361)))

(declare-fun c!20589 () Bool)

(assert (=> d!55999 (= c!20589 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!55999 (= (filter!18 (t!47838 less!5) lambda!9690) lt!18825)))

(declare-fun b!81816 () Bool)

(declare-fun res!41857 () Bool)

(assert (=> b!81816 (=> (not res!41857) (not e!44359))))

(assert (=> b!81816 (= res!41857 (subset (content!124 lt!18825) (content!124 (t!47838 less!5))))))

(declare-fun b!81817 () Bool)

(assert (=> b!81817 (= e!44361 Nil!624)))

(declare-fun b!81818 () Bool)

(assert (=> b!81818 (= e!44359 (forall!20 lt!18825 lambda!9690))))

(declare-fun b!81819 () Bool)

(assert (=> b!81819 (= e!44361 e!44360)))

(declare-fun c!20588 () Bool)

(assert (=> b!81819 (= c!20588 e!44362)))

(declare-fun res!41858 () Bool)

(assert (=> b!81819 (=> (not res!41858) (not e!44362))))

(assert (=> b!81819 (= res!41858 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!81819 (= lt!18824 (filter!18 (t!47838 (t!47838 less!5)) lambda!9690))))

(assert (= (and b!81819 res!41858) b!81814))

(assert (= (and b!81819 c!20588) b!81813))

(assert (= (and b!81819 (not c!20588)) b!81815))

(assert (= (and d!55999 c!20589) b!81817))

(assert (= (and d!55999 (not c!20589)) b!81819))

(assert (= (and d!55999 res!41859) b!81816))

(assert (= (and b!81816 res!41857) b!81818))

(declare-fun b_lambda!16127 () Bool)

(assert (=> (not b_lambda!16127) (not b!81814)))

(declare-fun m!77020 () Bool)

(assert (=> b!81818 m!77020))

(declare-fun m!77022 () Bool)

(assert (=> b!81816 m!77022))

(assert (=> b!81816 m!76790))

(declare-fun m!77024 () Bool)

(assert (=> b!81814 m!77024))

(declare-fun m!77026 () Bool)

(assert (=> d!55999 m!77026))

(assert (=> d!55999 m!76796))

(declare-fun m!77028 () Bool)

(assert (=> b!81819 m!77028))

(assert (=> b!81598 d!55999))

(declare-fun d!56001 () Bool)

(declare-fun lt!18828 () Int)

(assert (=> d!56001 (>= lt!18828 0)))

(declare-fun e!44365 () Int)

(assert (=> d!56001 (= lt!18828 e!44365)))

(declare-fun c!20592 () Bool)

(assert (=> d!56001 (= c!20592 (is-Nil!624 lt!18780))))

(assert (=> d!56001 (= (size!653 lt!18780) lt!18828)))

(declare-fun b!81824 () Bool)

(assert (=> b!81824 (= e!44365 0)))

(declare-fun b!81825 () Bool)

(assert (=> b!81825 (= e!44365 (+ 1 (size!653 (t!47838 lt!18780))))))

(assert (= (and d!56001 c!20592) b!81824))

(assert (= (and d!56001 (not c!20592)) b!81825))

(declare-fun m!77030 () Bool)

(assert (=> b!81825 m!77030))

(assert (=> b!81629 d!56001))

(declare-fun d!56003 () Bool)

(declare-fun lt!18829 () Int)

(assert (=> d!56003 (>= lt!18829 0)))

(declare-fun e!44366 () Int)

(assert (=> d!56003 (= lt!18829 e!44366)))

(declare-fun c!20593 () Bool)

(assert (=> d!56003 (= c!20593 (is-Nil!624 (quickSort!0 less!5)))))

(assert (=> d!56003 (= (size!653 (quickSort!0 less!5)) lt!18829)))

(declare-fun b!81826 () Bool)

(assert (=> b!81826 (= e!44366 0)))

(declare-fun b!81827 () Bool)

(assert (=> b!81827 (= e!44366 (+ 1 (size!653 (t!47838 (quickSort!0 less!5)))))))

(assert (= (and d!56003 c!20593) b!81826))

(assert (= (and d!56003 (not c!20593)) b!81827))

(declare-fun m!77032 () Bool)

(assert (=> b!81827 m!77032))

(assert (=> b!81629 d!56003))

(declare-fun d!56005 () Bool)

(declare-fun lt!18830 () Int)

(assert (=> d!56005 (>= lt!18830 0)))

(declare-fun e!44367 () Int)

(assert (=> d!56005 (= lt!18830 e!44367)))

(declare-fun c!20594 () Bool)

(assert (=> d!56005 (= c!20594 (is-Nil!624 equal!10))))

(assert (=> d!56005 (= (size!653 equal!10) lt!18830)))

(declare-fun b!81828 () Bool)

(assert (=> b!81828 (= e!44367 0)))

(declare-fun b!81829 () Bool)

(assert (=> b!81829 (= e!44367 (+ 1 (size!653 (t!47838 equal!10))))))

(assert (= (and d!56005 c!20594) b!81828))

(assert (= (and d!56005 (not c!20594)) b!81829))

(declare-fun m!77034 () Bool)

(assert (=> b!81829 m!77034))

(assert (=> b!81629 d!56005))

(assert (=> b!81637 d!55921))

(declare-fun b!81832 () Bool)

(declare-fun res!41860 () Bool)

(declare-fun e!44369 () Bool)

(assert (=> b!81832 (=> (not res!41860) (not e!44369))))

(declare-fun lt!18831 () List!665)

(assert (=> b!81832 (= res!41860 (= (size!653 lt!18831) (+ (size!653 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))) (size!653 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639))))))))

(declare-fun b!81831 () Bool)

(declare-fun e!44368 () List!665)

(assert (=> b!81831 (= e!44368 (Cons!622 (h!991 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))) (++!73 (t!47838 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))) (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639)))))))

(declare-fun b!81833 () Bool)

(assert (=> b!81833 (= e!44369 (or (not (= (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639)) Nil!624)) (= lt!18831 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638))))))))

(declare-fun b!81830 () Bool)

(assert (=> b!81830 (= e!44368 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639)))))

(declare-fun d!56007 () Bool)

(assert (=> d!56007 e!44369))

(declare-fun res!41861 () Bool)

(assert (=> d!56007 (=> (not res!41861) (not e!44369))))

(assert (=> d!56007 (= res!41861 (= (content!124 lt!18831) (union (content!124 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))) (content!124 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639))))))))

(assert (=> d!56007 (= lt!18831 e!44368)))

(declare-fun c!20595 () Bool)

(assert (=> d!56007 (= c!20595 (is-Nil!624 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))))))

(assert (=> d!56007 (= (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638))) (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639))) lt!18831)))

(assert (= (and d!56007 c!20595) b!81830))

(assert (= (and d!56007 (not c!20595)) b!81831))

(assert (= (and d!56007 res!41861) b!81832))

(assert (= (and b!81832 res!41860) b!81833))

(declare-fun m!77036 () Bool)

(assert (=> b!81832 m!77036))

(assert (=> b!81832 m!76360))

(declare-fun m!77038 () Bool)

(assert (=> b!81832 m!77038))

(assert (=> b!81832 m!76356))

(declare-fun m!77040 () Bool)

(assert (=> b!81832 m!77040))

(assert (=> b!81831 m!76356))

(declare-fun m!77042 () Bool)

(assert (=> b!81831 m!77042))

(declare-fun m!77044 () Bool)

(assert (=> d!56007 m!77044))

(assert (=> d!56007 m!76360))

(declare-fun m!77046 () Bool)

(assert (=> d!56007 m!77046))

(assert (=> d!56007 m!76356))

(declare-fun m!77048 () Bool)

(assert (=> d!56007 m!77048))

(assert (=> b!81490 d!56007))

(declare-fun bs!39208 () Bool)

(declare-fun b!81837 () Bool)

(assert (= bs!39208 (and b!81837 b!81517)))

(declare-fun lambda!9727 () Int)

(assert (=> bs!39208 (not (= lambda!9727 lambda!9663))))

(assert (=> bs!39208 (not (= lambda!9727 lambda!9662))))

(assert (=> bs!39208 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9727 lambda!9661))))

(declare-fun bs!39209 () Bool)

(assert (= bs!39209 (and b!81837 b!81734)))

(assert (=> bs!39209 (not (= lambda!9727 lambda!9711))))

(assert (=> bs!39209 (not (= lambda!9727 lambda!9710))))

(assert (=> bs!39209 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9727 lambda!9709))))

(declare-fun bs!39210 () Bool)

(assert (= bs!39210 (and b!81837 b!81462)))

(assert (=> bs!39210 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 ls!96)) (= lambda!9727 lambda!9627))))

(declare-fun bs!39211 () Bool)

(assert (= bs!39211 (and b!81837 b!81495)))

(assert (=> bs!39211 (not (= lambda!9727 lambda!9647))))

(declare-fun bs!39212 () Bool)

(assert (= bs!39212 (and b!81837 b!81804)))

(assert (=> bs!39212 (not (= lambda!9727 lambda!9723))))

(assert (=> bs!39212 (not (= lambda!9727 lambda!9722))))

(assert (=> bs!39212 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18771)) (= lambda!9727 lambda!9721))))

(declare-fun bs!39213 () Bool)

(assert (= bs!39213 (and b!81837 b!81742)))

(assert (=> bs!39213 (not (= lambda!9727 lambda!9714))))

(assert (=> bs!39213 (not (= lambda!9727 lambda!9713))))

(assert (=> bs!39213 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9727 lambda!9712))))

(declare-fun bs!39214 () Bool)

(assert (= bs!39214 (and b!81837 b!81709)))

(assert (=> bs!39214 (not (= lambda!9727 lambda!9708))))

(assert (=> bs!39214 (not (= lambda!9727 lambda!9707))))

(assert (=> bs!39214 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18751)) (= lambda!9727 lambda!9706))))

(declare-fun bs!39215 () Bool)

(assert (= bs!39215 (and b!81837 b!81460)))

(assert (=> bs!39215 (not (= lambda!9727 lambda!9628))))

(declare-fun bs!39216 () Bool)

(assert (= bs!39216 (and b!81837 b!81560)))

(assert (=> bs!39216 (not (= lambda!9727 lambda!9678))))

(assert (=> bs!39216 (not (= lambda!9727 lambda!9677))))

(assert (=> bs!39216 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9727 lambda!9676))))

(declare-fun bs!39217 () Bool)

(assert (= bs!39217 (and b!81837 b!81490)))

(assert (=> bs!39217 (not (= lambda!9727 lambda!9639))))

(assert (=> bs!39217 (not (= lambda!9727 lambda!9638))))

(assert (=> bs!39217 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9727 lambda!9637))))

(declare-fun bs!39218 () Bool)

(assert (= bs!39218 (and b!81837 b!81691)))

(assert (=> bs!39218 (not (= lambda!9727 lambda!9702))))

(assert (=> bs!39218 (not (= lambda!9727 lambda!9701))))

(assert (=> bs!39218 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18728)) (= lambda!9727 lambda!9700))))

(declare-fun bs!39219 () Bool)

(assert (= bs!39219 (and b!81837 b!81466)))

(assert (=> bs!39219 (not (= lambda!9727 lambda!9629))))

(declare-fun bs!39220 () Bool)

(assert (= bs!39220 (and b!81837 b!81780)))

(assert (=> bs!39220 (not (= lambda!9727 lambda!9720))))

(assert (=> bs!39220 (not (= lambda!9727 lambda!9719))))

(assert (=> bs!39220 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18781)) (= lambda!9727 lambda!9718))))

(declare-fun bs!39221 () Bool)

(assert (= bs!39221 (and b!81837 d!55883)))

(assert (=> bs!39221 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 ls!96)) (= lambda!9727 lambda!9685))))

(declare-fun bs!39222 () Bool)

(assert (= bs!39222 (and b!81837 d!55861)))

(assert (=> bs!39222 (not (= lambda!9727 lambda!9646))))

(declare-fun bs!39223 () Bool)

(assert (= bs!39223 (and b!81837 b!81537)))

(assert (=> bs!39223 (not (= lambda!9727 lambda!9669))))

(assert (=> bs!39223 (not (= lambda!9727 lambda!9668))))

(assert (=> bs!39223 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9727 lambda!9667))))

(declare-fun bs!39224 () Bool)

(assert (= bs!39224 (and b!81837 b!81587)))

(assert (=> bs!39224 (not (= lambda!9727 lambda!9686))))

(declare-fun bs!39225 () Bool)

(assert (= bs!39225 (and b!81837 b!81496)))

(assert (=> bs!39225 (not (= lambda!9727 lambda!9648))))

(declare-fun bs!39226 () Bool)

(assert (= bs!39226 (and b!81837 d!55889)))

(assert (=> bs!39226 (not (= lambda!9727 lambda!9693))))

(declare-fun bs!39227 () Bool)

(assert (= bs!39227 (and b!81837 b!81705)))

(assert (=> bs!39227 (not (= lambda!9727 lambda!9705))))

(assert (=> bs!39227 (not (= lambda!9727 lambda!9704))))

(assert (=> bs!39227 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18752)) (= lambda!9727 lambda!9703))))

(declare-fun bs!39228 () Bool)

(assert (= bs!39228 (and b!81837 b!81522)))

(assert (=> bs!39228 (not (= lambda!9727 lambda!9666))))

(assert (=> bs!39228 (not (= lambda!9727 lambda!9665))))

(assert (=> bs!39228 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9727 lambda!9664))))

(declare-fun bs!39229 () Bool)

(assert (= bs!39229 (and b!81837 b!81598)))

(assert (=> bs!39229 (not (= lambda!9727 lambda!9690))))

(assert (=> bs!39229 (not (= lambda!9727 lambda!9689))))

(assert (=> bs!39229 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9727 lambda!9688))))

(declare-fun bs!39230 () Bool)

(assert (= bs!39230 (and b!81837 b!81588)))

(assert (=> bs!39230 (not (= lambda!9727 lambda!9687))))

(declare-fun bs!39231 () Bool)

(assert (= bs!39231 (and b!81837 b!81776)))

(assert (=> bs!39231 (not (= lambda!9727 lambda!9717))))

(assert (=> bs!39231 (not (= lambda!9727 lambda!9716))))

(assert (=> bs!39231 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18782)) (= lambda!9727 lambda!9715))))

(declare-fun bs!39232 () Bool)

(assert (= bs!39232 (and b!81837 b!81468)))

(assert (=> bs!39232 (not (= lambda!9727 lambda!9630))))

(declare-fun bs!39233 () Bool)

(assert (= bs!39233 (and b!81837 b!81633)))

(assert (=> bs!39233 (not (= lambda!9727 lambda!9696))))

(assert (=> bs!39233 (not (= lambda!9727 lambda!9695))))

(assert (=> bs!39233 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9727 lambda!9694))))

(declare-fun bs!39234 () Bool)

(assert (= bs!39234 (and b!81837 b!81687)))

(assert (=> bs!39234 (not (= lambda!9727 lambda!9699))))

(assert (=> bs!39234 (not (= lambda!9727 lambda!9698))))

(assert (=> bs!39234 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18730)) (= lambda!9727 lambda!9697))))

(declare-fun bs!39235 () Bool)

(assert (= bs!39235 (and b!81837 b!81810)))

(assert (=> bs!39235 (not (= lambda!9727 lambda!9726))))

(assert (=> bs!39235 (not (= lambda!9727 lambda!9725))))

(assert (=> bs!39235 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18771)) (= lambda!9727 lambda!9724))))

(assert (=> b!81837 true))

(declare-fun lambda!9728 () Int)

(assert (=> bs!39208 (not (= lambda!9728 lambda!9663))))

(assert (=> bs!39208 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9728 lambda!9662))))

(assert (=> bs!39208 (not (= lambda!9728 lambda!9661))))

(assert (=> bs!39209 (not (= lambda!9728 lambda!9711))))

(assert (=> bs!39209 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9728 lambda!9710))))

(assert (=> bs!39209 (not (= lambda!9728 lambda!9709))))

(assert (=> bs!39210 (not (= lambda!9728 lambda!9627))))

(assert (=> bs!39211 (not (= lambda!9728 lambda!9647))))

(assert (=> bs!39212 (not (= lambda!9728 lambda!9723))))

(assert (=> bs!39212 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18771)) (= lambda!9728 lambda!9722))))

(assert (=> bs!39212 (not (= lambda!9728 lambda!9721))))

(assert (=> bs!39213 (not (= lambda!9728 lambda!9714))))

(assert (=> bs!39213 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9728 lambda!9713))))

(assert (=> bs!39213 (not (= lambda!9728 lambda!9712))))

(assert (=> bs!39214 (not (= lambda!9728 lambda!9708))))

(assert (=> bs!39214 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18751)) (= lambda!9728 lambda!9707))))

(assert (=> bs!39214 (not (= lambda!9728 lambda!9706))))

(assert (=> bs!39215 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 ls!96)) (= lambda!9728 lambda!9628))))

(assert (=> bs!39216 (not (= lambda!9728 lambda!9678))))

(assert (=> bs!39216 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9728 lambda!9677))))

(assert (=> bs!39216 (not (= lambda!9728 lambda!9676))))

(assert (=> bs!39217 (not (= lambda!9728 lambda!9639))))

(assert (=> bs!39217 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9728 lambda!9638))))

(assert (=> bs!39217 (not (= lambda!9728 lambda!9637))))

(assert (=> bs!39218 (not (= lambda!9728 lambda!9702))))

(assert (=> bs!39218 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18728)) (= lambda!9728 lambda!9701))))

(assert (=> bs!39218 (not (= lambda!9728 lambda!9700))))

(assert (=> bs!39219 (not (= lambda!9728 lambda!9629))))

(assert (=> bs!39220 (not (= lambda!9728 lambda!9720))))

(assert (=> bs!39220 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18781)) (= lambda!9728 lambda!9719))))

(assert (=> bs!39220 (not (= lambda!9728 lambda!9718))))

(assert (=> bs!39221 (not (= lambda!9728 lambda!9685))))

(assert (=> b!81837 (not (= lambda!9728 lambda!9727))))

(assert (=> bs!39222 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 ls!96)) (= lambda!9728 lambda!9646))))

(assert (=> bs!39223 (not (= lambda!9728 lambda!9669))))

(assert (=> bs!39223 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9728 lambda!9668))))

(assert (=> bs!39223 (not (= lambda!9728 lambda!9667))))

(assert (=> bs!39224 (not (= lambda!9728 lambda!9686))))

(assert (=> bs!39225 (not (= lambda!9728 lambda!9648))))

(assert (=> bs!39226 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 ls!96)) (= lambda!9728 lambda!9693))))

(assert (=> bs!39227 (not (= lambda!9728 lambda!9705))))

(assert (=> bs!39227 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18752)) (= lambda!9728 lambda!9704))))

(assert (=> bs!39227 (not (= lambda!9728 lambda!9703))))

(assert (=> bs!39228 (not (= lambda!9728 lambda!9666))))

(assert (=> bs!39228 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9728 lambda!9665))))

(assert (=> bs!39228 (not (= lambda!9728 lambda!9664))))

(assert (=> bs!39229 (not (= lambda!9728 lambda!9690))))

(assert (=> bs!39229 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9728 lambda!9689))))

(assert (=> bs!39229 (not (= lambda!9728 lambda!9688))))

(assert (=> bs!39230 (not (= lambda!9728 lambda!9687))))

(assert (=> bs!39231 (not (= lambda!9728 lambda!9717))))

(assert (=> bs!39231 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18782)) (= lambda!9728 lambda!9716))))

(assert (=> bs!39231 (not (= lambda!9728 lambda!9715))))

(assert (=> bs!39232 (not (= lambda!9728 lambda!9630))))

(assert (=> bs!39233 (not (= lambda!9728 lambda!9696))))

(assert (=> bs!39233 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9728 lambda!9695))))

(assert (=> bs!39233 (not (= lambda!9728 lambda!9694))))

(assert (=> bs!39234 (not (= lambda!9728 lambda!9699))))

(assert (=> bs!39234 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18730)) (= lambda!9728 lambda!9698))))

(assert (=> bs!39234 (not (= lambda!9728 lambda!9697))))

(assert (=> bs!39235 (not (= lambda!9728 lambda!9726))))

(assert (=> bs!39235 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18771)) (= lambda!9728 lambda!9725))))

(assert (=> bs!39235 (not (= lambda!9728 lambda!9724))))

(assert (=> b!81837 true))

(declare-fun lambda!9729 () Int)

(assert (=> bs!39208 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9729 lambda!9663))))

(assert (=> bs!39208 (not (= lambda!9729 lambda!9662))))

(assert (=> bs!39208 (not (= lambda!9729 lambda!9661))))

(assert (=> bs!39209 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9729 lambda!9711))))

(assert (=> bs!39209 (not (= lambda!9729 lambda!9710))))

(assert (=> bs!39209 (not (= lambda!9729 lambda!9709))))

(assert (=> bs!39210 (not (= lambda!9729 lambda!9627))))

(assert (=> bs!39211 (not (= lambda!9729 lambda!9647))))

(assert (=> bs!39212 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18771)) (= lambda!9729 lambda!9723))))

(assert (=> bs!39212 (not (= lambda!9729 lambda!9722))))

(assert (=> bs!39212 (not (= lambda!9729 lambda!9721))))

(assert (=> bs!39213 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9729 lambda!9714))))

(assert (=> bs!39213 (not (= lambda!9729 lambda!9713))))

(assert (=> bs!39213 (not (= lambda!9729 lambda!9712))))

(assert (=> bs!39214 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18751)) (= lambda!9729 lambda!9708))))

(assert (=> bs!39214 (not (= lambda!9729 lambda!9707))))

(assert (=> bs!39214 (not (= lambda!9729 lambda!9706))))

(assert (=> bs!39215 (not (= lambda!9729 lambda!9628))))

(assert (=> bs!39216 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9729 lambda!9678))))

(assert (=> bs!39216 (not (= lambda!9729 lambda!9677))))

(assert (=> bs!39216 (not (= lambda!9729 lambda!9676))))

(assert (=> bs!39217 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9729 lambda!9639))))

(assert (=> bs!39217 (not (= lambda!9729 lambda!9638))))

(assert (=> bs!39217 (not (= lambda!9729 lambda!9637))))

(assert (=> bs!39218 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18728)) (= lambda!9729 lambda!9702))))

(assert (=> bs!39218 (not (= lambda!9729 lambda!9701))))

(assert (=> bs!39218 (not (= lambda!9729 lambda!9700))))

(assert (=> bs!39219 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 ls!96)) (= lambda!9729 lambda!9629))))

(assert (=> bs!39220 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18781)) (= lambda!9729 lambda!9720))))

(assert (=> bs!39220 (not (= lambda!9729 lambda!9719))))

(assert (=> bs!39220 (not (= lambda!9729 lambda!9718))))

(assert (=> bs!39221 (not (= lambda!9729 lambda!9685))))

(assert (=> b!81837 (not (= lambda!9729 lambda!9728))))

(assert (=> b!81837 (not (= lambda!9729 lambda!9727))))

(assert (=> bs!39222 (not (= lambda!9729 lambda!9646))))

(assert (=> bs!39223 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9729 lambda!9669))))

(assert (=> bs!39223 (not (= lambda!9729 lambda!9668))))

(assert (=> bs!39223 (not (= lambda!9729 lambda!9667))))

(assert (=> bs!39224 (not (= lambda!9729 lambda!9686))))

(assert (=> bs!39225 (not (= lambda!9729 lambda!9648))))

(assert (=> bs!39226 (not (= lambda!9729 lambda!9693))))

(assert (=> bs!39227 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18752)) (= lambda!9729 lambda!9705))))

(assert (=> bs!39227 (not (= lambda!9729 lambda!9704))))

(assert (=> bs!39227 (not (= lambda!9729 lambda!9703))))

(assert (=> bs!39228 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 more!5)) (= lambda!9729 lambda!9666))))

(assert (=> bs!39228 (not (= lambda!9729 lambda!9665))))

(assert (=> bs!39228 (not (= lambda!9729 lambda!9664))))

(assert (=> bs!39229 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9729 lambda!9690))))

(assert (=> bs!39229 (not (= lambda!9729 lambda!9689))))

(assert (=> bs!39229 (not (= lambda!9729 lambda!9688))))

(assert (=> bs!39230 (not (= lambda!9729 lambda!9687))))

(assert (=> bs!39231 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18782)) (= lambda!9729 lambda!9717))))

(assert (=> bs!39231 (not (= lambda!9729 lambda!9716))))

(assert (=> bs!39231 (not (= lambda!9729 lambda!9715))))

(assert (=> bs!39232 (not (= lambda!9729 lambda!9630))))

(assert (=> bs!39233 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 less!5)) (= lambda!9729 lambda!9696))))

(assert (=> bs!39233 (not (= lambda!9729 lambda!9695))))

(assert (=> bs!39233 (not (= lambda!9729 lambda!9694))))

(assert (=> bs!39234 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18730)) (= lambda!9729 lambda!9699))))

(assert (=> bs!39234 (not (= lambda!9729 lambda!9698))))

(assert (=> bs!39234 (not (= lambda!9729 lambda!9697))))

(assert (=> bs!39235 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (h!991 lt!18771)) (= lambda!9729 lambda!9726))))

(assert (=> bs!39235 (not (= lambda!9729 lambda!9725))))

(assert (=> bs!39235 (not (= lambda!9729 lambda!9724))))

(assert (=> b!81837 true))

(declare-fun b!81834 () Bool)

(declare-fun e!44370 () List!665)

(assert (=> b!81834 (= e!44370 Nil!624)))

(declare-fun d!56009 () Bool)

(declare-fun c!20596 () Bool)

(assert (=> d!56009 (= c!20596 (is-Nil!624 (filter!18 (t!47838 more!5) lambda!9639)))))

(assert (=> d!56009 (= (quickSort!0 (filter!18 (t!47838 more!5) lambda!9639)) e!44370)))

(declare-fun b!81836 () Bool)

(declare-fun e!44371 () List!665)

(assert (=> b!81836 (= e!44371 (filter!18 (t!47838 more!5) lambda!9639))))

(declare-fun b!81835 () Bool)

(assert (=> b!81835 (= e!44370 e!44371)))

(declare-fun c!20597 () Bool)

(assert (=> b!81835 (= c!20597 (and (is-Cons!622 (filter!18 (t!47838 more!5) lambda!9639)) (is-Nil!624 (t!47838 (filter!18 (t!47838 more!5) lambda!9639)))))))

(assert (=> b!81837 (= e!44371 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 more!5) lambda!9639)) lambda!9727)) (Cons!622 (h!991 (filter!18 (t!47838 more!5) lambda!9639)) (filter!18 (t!47838 (filter!18 (t!47838 more!5) lambda!9639)) lambda!9728))) (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 more!5) lambda!9639)) lambda!9729))))))

(assert (= (and b!81835 c!20597) b!81836))

(assert (= (and b!81835 (not c!20597)) b!81837))

(assert (= (and d!56009 c!20596) b!81834))

(assert (= (and d!56009 (not c!20596)) b!81835))

(declare-fun m!77050 () Bool)

(assert (=> b!81837 m!77050))

(declare-fun m!77052 () Bool)

(assert (=> b!81837 m!77052))

(assert (=> b!81837 m!77050))

(declare-fun m!77054 () Bool)

(assert (=> b!81837 m!77054))

(declare-fun m!77056 () Bool)

(assert (=> b!81837 m!77056))

(declare-fun m!77058 () Bool)

(assert (=> b!81837 m!77058))

(assert (=> b!81837 m!77054))

(assert (=> b!81837 m!77058))

(declare-fun m!77060 () Bool)

(assert (=> b!81837 m!77060))

(assert (=> b!81837 m!77056))

(assert (=> b!81837 m!77052))

(declare-fun m!77062 () Bool)

(assert (=> b!81837 m!77062))

(assert (=> b!81490 d!56009))

(declare-fun b!81840 () Bool)

(declare-fun res!41862 () Bool)

(declare-fun e!44373 () Bool)

(assert (=> b!81840 (=> (not res!41862) (not e!44373))))

(declare-fun lt!18832 () List!665)

(assert (=> b!81840 (= res!41862 (= (size!653 lt!18832) (+ (size!653 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637))) (size!653 (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638))))))))

(declare-fun e!44372 () List!665)

(declare-fun b!81839 () Bool)

(assert (=> b!81839 (= e!44372 (Cons!622 (h!991 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637))) (++!73 (t!47838 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637))) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))))))

(declare-fun b!81841 () Bool)

(assert (=> b!81841 (= e!44373 (or (not (= (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)) Nil!624)) (= lt!18832 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)))))))

(declare-fun b!81838 () Bool)

(assert (=> b!81838 (= e!44372 (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638)))))

(declare-fun d!56011 () Bool)

(assert (=> d!56011 e!44373))

(declare-fun res!41863 () Bool)

(assert (=> d!56011 (=> (not res!41863) (not e!44373))))

(assert (=> d!56011 (= res!41863 (= (content!124 lt!18832) (union (content!124 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637))) (content!124 (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638))))))))

(assert (=> d!56011 (= lt!18832 e!44372)))

(declare-fun c!20598 () Bool)

(assert (=> d!56011 (= c!20598 (is-Nil!624 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637))))))

(assert (=> d!56011 (= (++!73 (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) (Cons!622 (h!991 more!5) (filter!18 (t!47838 more!5) lambda!9638))) lt!18832)))

(assert (= (and d!56011 c!20598) b!81838))

(assert (= (and d!56011 (not c!20598)) b!81839))

(assert (= (and d!56011 res!41863) b!81840))

(assert (= (and b!81840 res!41862) b!81841))

(declare-fun m!77064 () Bool)

(assert (=> b!81840 m!77064))

(assert (=> b!81840 m!76358))

(declare-fun m!77066 () Bool)

(assert (=> b!81840 m!77066))

(declare-fun m!77068 () Bool)

(assert (=> b!81840 m!77068))

(declare-fun m!77070 () Bool)

(assert (=> b!81839 m!77070))

(declare-fun m!77072 () Bool)

(assert (=> d!56011 m!77072))

(assert (=> d!56011 m!76358))

(declare-fun m!77074 () Bool)

(assert (=> d!56011 m!77074))

(declare-fun m!77076 () Bool)

(assert (=> d!56011 m!77076))

(assert (=> b!81490 d!56011))

(declare-fun b!81842 () Bool)

(declare-fun e!44375 () List!665)

(declare-fun lt!18833 () List!665)

(assert (=> b!81842 (= e!44375 (Cons!622 (h!991 (t!47838 more!5)) lt!18833))))

(declare-fun b!81843 () Bool)

(declare-fun e!44377 () Bool)

(assert (=> b!81843 (= e!44377 (dynLambda!984 lambda!9638 (h!991 (t!47838 more!5))))))

(declare-fun b!81844 () Bool)

(assert (=> b!81844 (= e!44375 lt!18833)))

(declare-fun d!56013 () Bool)

(declare-fun e!44374 () Bool)

(assert (=> d!56013 e!44374))

(declare-fun res!41866 () Bool)

(assert (=> d!56013 (=> (not res!41866) (not e!44374))))

(declare-fun lt!18834 () List!665)

(assert (=> d!56013 (= res!41866 (<= (size!653 lt!18834) (size!653 (t!47838 more!5))))))

(declare-fun e!44376 () List!665)

(assert (=> d!56013 (= lt!18834 e!44376)))

(declare-fun c!20600 () Bool)

(assert (=> d!56013 (= c!20600 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56013 (= (filter!18 (t!47838 more!5) lambda!9638) lt!18834)))

(declare-fun b!81845 () Bool)

(declare-fun res!41864 () Bool)

(assert (=> b!81845 (=> (not res!41864) (not e!44374))))

(assert (=> b!81845 (= res!41864 (subset (content!124 lt!18834) (content!124 (t!47838 more!5))))))

(declare-fun b!81846 () Bool)

(assert (=> b!81846 (= e!44376 Nil!624)))

(declare-fun b!81847 () Bool)

(assert (=> b!81847 (= e!44374 (forall!20 lt!18834 lambda!9638))))

(declare-fun b!81848 () Bool)

(assert (=> b!81848 (= e!44376 e!44375)))

(declare-fun c!20599 () Bool)

(assert (=> b!81848 (= c!20599 e!44377)))

(declare-fun res!41865 () Bool)

(assert (=> b!81848 (=> (not res!41865) (not e!44377))))

(assert (=> b!81848 (= res!41865 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!81848 (= lt!18833 (filter!18 (t!47838 (t!47838 more!5)) lambda!9638))))

(assert (= (and b!81848 res!41865) b!81843))

(assert (= (and b!81848 c!20599) b!81842))

(assert (= (and b!81848 (not c!20599)) b!81844))

(assert (= (and d!56013 c!20600) b!81846))

(assert (= (and d!56013 (not c!20600)) b!81848))

(assert (= (and d!56013 res!41866) b!81845))

(assert (= (and b!81845 res!41864) b!81847))

(declare-fun b_lambda!16129 () Bool)

(assert (=> (not b_lambda!16129) (not b!81843)))

(declare-fun m!77078 () Bool)

(assert (=> b!81847 m!77078))

(declare-fun m!77080 () Bool)

(assert (=> b!81845 m!77080))

(declare-fun m!77082 () Bool)

(assert (=> b!81845 m!77082))

(declare-fun m!77084 () Bool)

(assert (=> b!81843 m!77084))

(declare-fun m!77086 () Bool)

(assert (=> d!56013 m!77086))

(declare-fun m!77088 () Bool)

(assert (=> d!56013 m!77088))

(declare-fun m!77090 () Bool)

(assert (=> b!81848 m!77090))

(assert (=> b!81490 d!56013))

(declare-fun bs!39236 () Bool)

(declare-fun b!81852 () Bool)

(assert (= bs!39236 (and b!81852 b!81517)))

(declare-fun lambda!9730 () Int)

(assert (=> bs!39236 (not (= lambda!9730 lambda!9663))))

(assert (=> bs!39236 (not (= lambda!9730 lambda!9662))))

(assert (=> bs!39236 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9730 lambda!9661))))

(declare-fun bs!39237 () Bool)

(assert (= bs!39237 (and b!81852 b!81734)))

(assert (=> bs!39237 (not (= lambda!9730 lambda!9711))))

(assert (=> bs!39237 (not (= lambda!9730 lambda!9710))))

(assert (=> bs!39237 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9730 lambda!9709))))

(declare-fun bs!39238 () Bool)

(assert (= bs!39238 (and b!81852 b!81462)))

(assert (=> bs!39238 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 ls!96)) (= lambda!9730 lambda!9627))))

(declare-fun bs!39239 () Bool)

(assert (= bs!39239 (and b!81852 b!81495)))

(assert (=> bs!39239 (not (= lambda!9730 lambda!9647))))

(declare-fun bs!39240 () Bool)

(assert (= bs!39240 (and b!81852 b!81804)))

(assert (=> bs!39240 (not (= lambda!9730 lambda!9723))))

(assert (=> bs!39240 (not (= lambda!9730 lambda!9722))))

(assert (=> bs!39240 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18771)) (= lambda!9730 lambda!9721))))

(declare-fun bs!39241 () Bool)

(assert (= bs!39241 (and b!81852 b!81742)))

(assert (=> bs!39241 (not (= lambda!9730 lambda!9714))))

(assert (=> bs!39241 (not (= lambda!9730 lambda!9713))))

(assert (=> bs!39241 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9730 lambda!9712))))

(declare-fun bs!39242 () Bool)

(assert (= bs!39242 (and b!81852 b!81709)))

(assert (=> bs!39242 (not (= lambda!9730 lambda!9708))))

(assert (=> bs!39242 (not (= lambda!9730 lambda!9707))))

(assert (=> bs!39242 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18751)) (= lambda!9730 lambda!9706))))

(declare-fun bs!39243 () Bool)

(assert (= bs!39243 (and b!81852 b!81460)))

(assert (=> bs!39243 (not (= lambda!9730 lambda!9628))))

(declare-fun bs!39244 () Bool)

(assert (= bs!39244 (and b!81852 b!81560)))

(assert (=> bs!39244 (not (= lambda!9730 lambda!9678))))

(assert (=> bs!39244 (not (= lambda!9730 lambda!9677))))

(assert (=> bs!39244 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9730 lambda!9676))))

(declare-fun bs!39245 () Bool)

(assert (= bs!39245 (and b!81852 b!81490)))

(assert (=> bs!39245 (not (= lambda!9730 lambda!9639))))

(assert (=> bs!39245 (not (= lambda!9730 lambda!9638))))

(assert (=> bs!39245 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9730 lambda!9637))))

(declare-fun bs!39246 () Bool)

(assert (= bs!39246 (and b!81852 b!81691)))

(assert (=> bs!39246 (not (= lambda!9730 lambda!9702))))

(assert (=> bs!39246 (not (= lambda!9730 lambda!9701))))

(assert (=> bs!39246 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18728)) (= lambda!9730 lambda!9700))))

(declare-fun bs!39247 () Bool)

(assert (= bs!39247 (and b!81852 b!81466)))

(assert (=> bs!39247 (not (= lambda!9730 lambda!9629))))

(declare-fun bs!39248 () Bool)

(assert (= bs!39248 (and b!81852 b!81780)))

(assert (=> bs!39248 (not (= lambda!9730 lambda!9720))))

(assert (=> bs!39248 (not (= lambda!9730 lambda!9719))))

(assert (=> bs!39248 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18781)) (= lambda!9730 lambda!9718))))

(declare-fun bs!39249 () Bool)

(assert (= bs!39249 (and b!81852 d!55883)))

(assert (=> bs!39249 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 ls!96)) (= lambda!9730 lambda!9685))))

(declare-fun bs!39250 () Bool)

(assert (= bs!39250 (and b!81852 b!81837)))

(assert (=> bs!39250 (not (= lambda!9730 lambda!9729))))

(assert (=> bs!39250 (not (= lambda!9730 lambda!9728))))

(assert (=> bs!39250 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9730 lambda!9727))))

(declare-fun bs!39251 () Bool)

(assert (= bs!39251 (and b!81852 d!55861)))

(assert (=> bs!39251 (not (= lambda!9730 lambda!9646))))

(declare-fun bs!39252 () Bool)

(assert (= bs!39252 (and b!81852 b!81537)))

(assert (=> bs!39252 (not (= lambda!9730 lambda!9669))))

(assert (=> bs!39252 (not (= lambda!9730 lambda!9668))))

(assert (=> bs!39252 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9730 lambda!9667))))

(declare-fun bs!39253 () Bool)

(assert (= bs!39253 (and b!81852 b!81587)))

(assert (=> bs!39253 (not (= lambda!9730 lambda!9686))))

(declare-fun bs!39254 () Bool)

(assert (= bs!39254 (and b!81852 b!81496)))

(assert (=> bs!39254 (not (= lambda!9730 lambda!9648))))

(declare-fun bs!39255 () Bool)

(assert (= bs!39255 (and b!81852 d!55889)))

(assert (=> bs!39255 (not (= lambda!9730 lambda!9693))))

(declare-fun bs!39256 () Bool)

(assert (= bs!39256 (and b!81852 b!81705)))

(assert (=> bs!39256 (not (= lambda!9730 lambda!9705))))

(assert (=> bs!39256 (not (= lambda!9730 lambda!9704))))

(assert (=> bs!39256 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18752)) (= lambda!9730 lambda!9703))))

(declare-fun bs!39257 () Bool)

(assert (= bs!39257 (and b!81852 b!81522)))

(assert (=> bs!39257 (not (= lambda!9730 lambda!9666))))

(assert (=> bs!39257 (not (= lambda!9730 lambda!9665))))

(assert (=> bs!39257 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9730 lambda!9664))))

(declare-fun bs!39258 () Bool)

(assert (= bs!39258 (and b!81852 b!81598)))

(assert (=> bs!39258 (not (= lambda!9730 lambda!9690))))

(assert (=> bs!39258 (not (= lambda!9730 lambda!9689))))

(assert (=> bs!39258 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9730 lambda!9688))))

(declare-fun bs!39259 () Bool)

(assert (= bs!39259 (and b!81852 b!81588)))

(assert (=> bs!39259 (not (= lambda!9730 lambda!9687))))

(declare-fun bs!39260 () Bool)

(assert (= bs!39260 (and b!81852 b!81776)))

(assert (=> bs!39260 (not (= lambda!9730 lambda!9717))))

(assert (=> bs!39260 (not (= lambda!9730 lambda!9716))))

(assert (=> bs!39260 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18782)) (= lambda!9730 lambda!9715))))

(declare-fun bs!39261 () Bool)

(assert (= bs!39261 (and b!81852 b!81468)))

(assert (=> bs!39261 (not (= lambda!9730 lambda!9630))))

(declare-fun bs!39262 () Bool)

(assert (= bs!39262 (and b!81852 b!81633)))

(assert (=> bs!39262 (not (= lambda!9730 lambda!9696))))

(assert (=> bs!39262 (not (= lambda!9730 lambda!9695))))

(assert (=> bs!39262 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9730 lambda!9694))))

(declare-fun bs!39263 () Bool)

(assert (= bs!39263 (and b!81852 b!81687)))

(assert (=> bs!39263 (not (= lambda!9730 lambda!9699))))

(assert (=> bs!39263 (not (= lambda!9730 lambda!9698))))

(assert (=> bs!39263 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18730)) (= lambda!9730 lambda!9697))))

(declare-fun bs!39264 () Bool)

(assert (= bs!39264 (and b!81852 b!81810)))

(assert (=> bs!39264 (not (= lambda!9730 lambda!9726))))

(assert (=> bs!39264 (not (= lambda!9730 lambda!9725))))

(assert (=> bs!39264 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18771)) (= lambda!9730 lambda!9724))))

(assert (=> b!81852 true))

(declare-fun lambda!9731 () Int)

(assert (=> bs!39236 (not (= lambda!9731 lambda!9663))))

(assert (=> bs!39236 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9731 lambda!9662))))

(assert (=> bs!39236 (not (= lambda!9731 lambda!9661))))

(assert (=> bs!39237 (not (= lambda!9731 lambda!9711))))

(assert (=> bs!39237 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9731 lambda!9710))))

(assert (=> bs!39237 (not (= lambda!9731 lambda!9709))))

(assert (=> bs!39238 (not (= lambda!9731 lambda!9627))))

(assert (=> bs!39239 (not (= lambda!9731 lambda!9647))))

(assert (=> bs!39240 (not (= lambda!9731 lambda!9723))))

(assert (=> bs!39240 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18771)) (= lambda!9731 lambda!9722))))

(assert (=> bs!39240 (not (= lambda!9731 lambda!9721))))

(assert (=> bs!39241 (not (= lambda!9731 lambda!9714))))

(assert (=> bs!39241 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9731 lambda!9713))))

(assert (=> bs!39241 (not (= lambda!9731 lambda!9712))))

(assert (=> bs!39242 (not (= lambda!9731 lambda!9708))))

(assert (=> bs!39242 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18751)) (= lambda!9731 lambda!9707))))

(assert (=> bs!39242 (not (= lambda!9731 lambda!9706))))

(assert (=> bs!39243 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 ls!96)) (= lambda!9731 lambda!9628))))

(assert (=> bs!39244 (not (= lambda!9731 lambda!9678))))

(assert (=> bs!39244 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9731 lambda!9677))))

(assert (=> bs!39244 (not (= lambda!9731 lambda!9676))))

(assert (=> bs!39245 (not (= lambda!9731 lambda!9639))))

(assert (=> bs!39245 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9731 lambda!9638))))

(assert (=> bs!39245 (not (= lambda!9731 lambda!9637))))

(assert (=> bs!39246 (not (= lambda!9731 lambda!9702))))

(assert (=> bs!39246 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18728)) (= lambda!9731 lambda!9701))))

(assert (=> bs!39246 (not (= lambda!9731 lambda!9700))))

(assert (=> bs!39247 (not (= lambda!9731 lambda!9629))))

(assert (=> bs!39248 (not (= lambda!9731 lambda!9720))))

(assert (=> bs!39248 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18781)) (= lambda!9731 lambda!9719))))

(assert (=> bs!39248 (not (= lambda!9731 lambda!9718))))

(assert (=> bs!39249 (not (= lambda!9731 lambda!9685))))

(assert (=> bs!39250 (not (= lambda!9731 lambda!9729))))

(assert (=> bs!39250 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9731 lambda!9728))))

(assert (=> bs!39250 (not (= lambda!9731 lambda!9727))))

(assert (=> b!81852 (not (= lambda!9731 lambda!9730))))

(assert (=> bs!39251 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 ls!96)) (= lambda!9731 lambda!9646))))

(assert (=> bs!39252 (not (= lambda!9731 lambda!9669))))

(assert (=> bs!39252 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9731 lambda!9668))))

(assert (=> bs!39252 (not (= lambda!9731 lambda!9667))))

(assert (=> bs!39253 (not (= lambda!9731 lambda!9686))))

(assert (=> bs!39254 (not (= lambda!9731 lambda!9648))))

(assert (=> bs!39255 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 ls!96)) (= lambda!9731 lambda!9693))))

(assert (=> bs!39256 (not (= lambda!9731 lambda!9705))))

(assert (=> bs!39256 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18752)) (= lambda!9731 lambda!9704))))

(assert (=> bs!39256 (not (= lambda!9731 lambda!9703))))

(assert (=> bs!39257 (not (= lambda!9731 lambda!9666))))

(assert (=> bs!39257 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9731 lambda!9665))))

(assert (=> bs!39257 (not (= lambda!9731 lambda!9664))))

(assert (=> bs!39258 (not (= lambda!9731 lambda!9690))))

(assert (=> bs!39258 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9731 lambda!9689))))

(assert (=> bs!39258 (not (= lambda!9731 lambda!9688))))

(assert (=> bs!39259 (not (= lambda!9731 lambda!9687))))

(assert (=> bs!39260 (not (= lambda!9731 lambda!9717))))

(assert (=> bs!39260 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18782)) (= lambda!9731 lambda!9716))))

(assert (=> bs!39260 (not (= lambda!9731 lambda!9715))))

(assert (=> bs!39261 (not (= lambda!9731 lambda!9630))))

(assert (=> bs!39262 (not (= lambda!9731 lambda!9696))))

(assert (=> bs!39262 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9731 lambda!9695))))

(assert (=> bs!39262 (not (= lambda!9731 lambda!9694))))

(assert (=> bs!39263 (not (= lambda!9731 lambda!9699))))

(assert (=> bs!39263 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18730)) (= lambda!9731 lambda!9698))))

(assert (=> bs!39263 (not (= lambda!9731 lambda!9697))))

(assert (=> bs!39264 (not (= lambda!9731 lambda!9726))))

(assert (=> bs!39264 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18771)) (= lambda!9731 lambda!9725))))

(assert (=> bs!39264 (not (= lambda!9731 lambda!9724))))

(assert (=> b!81852 true))

(declare-fun lambda!9732 () Int)

(assert (=> bs!39236 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9732 lambda!9663))))

(assert (=> bs!39236 (not (= lambda!9732 lambda!9662))))

(assert (=> bs!39236 (not (= lambda!9732 lambda!9661))))

(assert (=> bs!39237 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9732 lambda!9711))))

(assert (=> bs!39237 (not (= lambda!9732 lambda!9710))))

(assert (=> bs!39237 (not (= lambda!9732 lambda!9709))))

(assert (=> bs!39238 (not (= lambda!9732 lambda!9627))))

(assert (=> bs!39239 (not (= lambda!9732 lambda!9647))))

(assert (=> bs!39240 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18771)) (= lambda!9732 lambda!9723))))

(assert (=> bs!39240 (not (= lambda!9732 lambda!9722))))

(assert (=> bs!39240 (not (= lambda!9732 lambda!9721))))

(assert (=> bs!39241 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9732 lambda!9714))))

(assert (=> bs!39241 (not (= lambda!9732 lambda!9713))))

(assert (=> bs!39241 (not (= lambda!9732 lambda!9712))))

(assert (=> bs!39242 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18751)) (= lambda!9732 lambda!9708))))

(assert (=> bs!39242 (not (= lambda!9732 lambda!9707))))

(assert (=> bs!39242 (not (= lambda!9732 lambda!9706))))

(assert (=> bs!39243 (not (= lambda!9732 lambda!9628))))

(assert (=> bs!39244 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9732 lambda!9678))))

(assert (=> bs!39244 (not (= lambda!9732 lambda!9677))))

(assert (=> bs!39244 (not (= lambda!9732 lambda!9676))))

(assert (=> bs!39245 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9732 lambda!9639))))

(assert (=> bs!39245 (not (= lambda!9732 lambda!9638))))

(assert (=> bs!39245 (not (= lambda!9732 lambda!9637))))

(assert (=> bs!39246 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18728)) (= lambda!9732 lambda!9702))))

(assert (=> bs!39246 (not (= lambda!9732 lambda!9701))))

(assert (=> bs!39246 (not (= lambda!9732 lambda!9700))))

(assert (=> bs!39247 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 ls!96)) (= lambda!9732 lambda!9629))))

(assert (=> bs!39248 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18781)) (= lambda!9732 lambda!9720))))

(assert (=> bs!39248 (not (= lambda!9732 lambda!9719))))

(assert (=> bs!39248 (not (= lambda!9732 lambda!9718))))

(assert (=> bs!39249 (not (= lambda!9732 lambda!9685))))

(assert (=> bs!39250 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9732 lambda!9729))))

(assert (=> bs!39250 (not (= lambda!9732 lambda!9728))))

(assert (=> bs!39250 (not (= lambda!9732 lambda!9727))))

(assert (=> b!81852 (not (= lambda!9732 lambda!9731))))

(assert (=> b!81852 (not (= lambda!9732 lambda!9730))))

(assert (=> bs!39251 (not (= lambda!9732 lambda!9646))))

(assert (=> bs!39252 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9732 lambda!9669))))

(assert (=> bs!39252 (not (= lambda!9732 lambda!9668))))

(assert (=> bs!39252 (not (= lambda!9732 lambda!9667))))

(assert (=> bs!39253 (not (= lambda!9732 lambda!9686))))

(assert (=> bs!39254 (not (= lambda!9732 lambda!9648))))

(assert (=> bs!39255 (not (= lambda!9732 lambda!9693))))

(assert (=> bs!39256 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18752)) (= lambda!9732 lambda!9705))))

(assert (=> bs!39256 (not (= lambda!9732 lambda!9704))))

(assert (=> bs!39256 (not (= lambda!9732 lambda!9703))))

(assert (=> bs!39257 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 more!5)) (= lambda!9732 lambda!9666))))

(assert (=> bs!39257 (not (= lambda!9732 lambda!9665))))

(assert (=> bs!39257 (not (= lambda!9732 lambda!9664))))

(assert (=> bs!39258 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9732 lambda!9690))))

(assert (=> bs!39258 (not (= lambda!9732 lambda!9689))))

(assert (=> bs!39258 (not (= lambda!9732 lambda!9688))))

(assert (=> bs!39259 (not (= lambda!9732 lambda!9687))))

(assert (=> bs!39260 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18782)) (= lambda!9732 lambda!9717))))

(assert (=> bs!39260 (not (= lambda!9732 lambda!9716))))

(assert (=> bs!39260 (not (= lambda!9732 lambda!9715))))

(assert (=> bs!39261 (not (= lambda!9732 lambda!9630))))

(assert (=> bs!39262 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 less!5)) (= lambda!9732 lambda!9696))))

(assert (=> bs!39262 (not (= lambda!9732 lambda!9695))))

(assert (=> bs!39262 (not (= lambda!9732 lambda!9694))))

(assert (=> bs!39263 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18730)) (= lambda!9732 lambda!9699))))

(assert (=> bs!39263 (not (= lambda!9732 lambda!9698))))

(assert (=> bs!39263 (not (= lambda!9732 lambda!9697))))

(assert (=> bs!39264 (= (= (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (h!991 lt!18771)) (= lambda!9732 lambda!9726))))

(assert (=> bs!39264 (not (= lambda!9732 lambda!9725))))

(assert (=> bs!39264 (not (= lambda!9732 lambda!9724))))

(assert (=> b!81852 true))

(declare-fun b!81849 () Bool)

(declare-fun e!44378 () List!665)

(assert (=> b!81849 (= e!44378 Nil!624)))

(declare-fun d!56015 () Bool)

(declare-fun c!20601 () Bool)

(assert (=> d!56015 (= c!20601 (is-Nil!624 (filter!18 (t!47838 more!5) lambda!9637)))))

(assert (=> d!56015 (= (quickSort!0 (filter!18 (t!47838 more!5) lambda!9637)) e!44378)))

(declare-fun b!81851 () Bool)

(declare-fun e!44379 () List!665)

(assert (=> b!81851 (= e!44379 (filter!18 (t!47838 more!5) lambda!9637))))

(declare-fun b!81850 () Bool)

(assert (=> b!81850 (= e!44378 e!44379)))

(declare-fun c!20602 () Bool)

(assert (=> b!81850 (= c!20602 (and (is-Cons!622 (filter!18 (t!47838 more!5) lambda!9637)) (is-Nil!624 (t!47838 (filter!18 (t!47838 more!5) lambda!9637)))))))

(assert (=> b!81852 (= e!44379 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 more!5) lambda!9637)) lambda!9730)) (Cons!622 (h!991 (filter!18 (t!47838 more!5) lambda!9637)) (filter!18 (t!47838 (filter!18 (t!47838 more!5) lambda!9637)) lambda!9731))) (quickSort!0 (filter!18 (t!47838 (filter!18 (t!47838 more!5) lambda!9637)) lambda!9732))))))

(assert (= (and b!81850 c!20602) b!81851))

(assert (= (and b!81850 (not c!20602)) b!81852))

(assert (= (and d!56015 c!20601) b!81849))

(assert (= (and d!56015 (not c!20601)) b!81850))

(declare-fun m!77092 () Bool)

(assert (=> b!81852 m!77092))

(declare-fun m!77094 () Bool)

(assert (=> b!81852 m!77094))

(assert (=> b!81852 m!77092))

(declare-fun m!77096 () Bool)

(assert (=> b!81852 m!77096))

(declare-fun m!77098 () Bool)

(assert (=> b!81852 m!77098))

(declare-fun m!77100 () Bool)

(assert (=> b!81852 m!77100))

(assert (=> b!81852 m!77096))

(assert (=> b!81852 m!77100))

(declare-fun m!77102 () Bool)

(assert (=> b!81852 m!77102))

(assert (=> b!81852 m!77098))

(assert (=> b!81852 m!77094))

(declare-fun m!77104 () Bool)

(assert (=> b!81852 m!77104))

(assert (=> b!81490 d!56015))

(declare-fun b!81853 () Bool)

(declare-fun e!44381 () List!665)

(declare-fun lt!18835 () List!665)

(assert (=> b!81853 (= e!44381 (Cons!622 (h!991 (t!47838 more!5)) lt!18835))))

(declare-fun b!81854 () Bool)

(declare-fun e!44383 () Bool)

(assert (=> b!81854 (= e!44383 (dynLambda!984 lambda!9637 (h!991 (t!47838 more!5))))))

(declare-fun b!81855 () Bool)

(assert (=> b!81855 (= e!44381 lt!18835)))

(declare-fun d!56017 () Bool)

(declare-fun e!44380 () Bool)

(assert (=> d!56017 e!44380))

(declare-fun res!41869 () Bool)

(assert (=> d!56017 (=> (not res!41869) (not e!44380))))

(declare-fun lt!18836 () List!665)

(assert (=> d!56017 (= res!41869 (<= (size!653 lt!18836) (size!653 (t!47838 more!5))))))

(declare-fun e!44382 () List!665)

(assert (=> d!56017 (= lt!18836 e!44382)))

(declare-fun c!20604 () Bool)

(assert (=> d!56017 (= c!20604 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56017 (= (filter!18 (t!47838 more!5) lambda!9637) lt!18836)))

(declare-fun b!81856 () Bool)

(declare-fun res!41867 () Bool)

(assert (=> b!81856 (=> (not res!41867) (not e!44380))))

(assert (=> b!81856 (= res!41867 (subset (content!124 lt!18836) (content!124 (t!47838 more!5))))))

(declare-fun b!81857 () Bool)

(assert (=> b!81857 (= e!44382 Nil!624)))

(declare-fun b!81858 () Bool)

(assert (=> b!81858 (= e!44380 (forall!20 lt!18836 lambda!9637))))

(declare-fun b!81859 () Bool)

(assert (=> b!81859 (= e!44382 e!44381)))

(declare-fun c!20603 () Bool)

(assert (=> b!81859 (= c!20603 e!44383)))

(declare-fun res!41868 () Bool)

(assert (=> b!81859 (=> (not res!41868) (not e!44383))))

(assert (=> b!81859 (= res!41868 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!81859 (= lt!18835 (filter!18 (t!47838 (t!47838 more!5)) lambda!9637))))

(assert (= (and b!81859 res!41868) b!81854))

(assert (= (and b!81859 c!20603) b!81853))

(assert (= (and b!81859 (not c!20603)) b!81855))

(assert (= (and d!56017 c!20604) b!81857))

(assert (= (and d!56017 (not c!20604)) b!81859))

(assert (= (and d!56017 res!41869) b!81856))

(assert (= (and b!81856 res!41867) b!81858))

(declare-fun b_lambda!16131 () Bool)

(assert (=> (not b_lambda!16131) (not b!81854)))

(declare-fun m!77106 () Bool)

(assert (=> b!81858 m!77106))

(declare-fun m!77108 () Bool)

(assert (=> b!81856 m!77108))

(assert (=> b!81856 m!77082))

(declare-fun m!77110 () Bool)

(assert (=> b!81854 m!77110))

(declare-fun m!77112 () Bool)

(assert (=> d!56017 m!77112))

(assert (=> d!56017 m!77088))

(declare-fun m!77114 () Bool)

(assert (=> b!81859 m!77114))

(assert (=> b!81490 d!56017))

(declare-fun b!81860 () Bool)

(declare-fun e!44385 () List!665)

(declare-fun lt!18837 () List!665)

(assert (=> b!81860 (= e!44385 (Cons!622 (h!991 (t!47838 more!5)) lt!18837))))

(declare-fun b!81861 () Bool)

(declare-fun e!44387 () Bool)

(assert (=> b!81861 (= e!44387 (dynLambda!984 lambda!9639 (h!991 (t!47838 more!5))))))

(declare-fun b!81862 () Bool)

(assert (=> b!81862 (= e!44385 lt!18837)))

(declare-fun d!56019 () Bool)

(declare-fun e!44384 () Bool)

(assert (=> d!56019 e!44384))

(declare-fun res!41872 () Bool)

(assert (=> d!56019 (=> (not res!41872) (not e!44384))))

(declare-fun lt!18838 () List!665)

(assert (=> d!56019 (= res!41872 (<= (size!653 lt!18838) (size!653 (t!47838 more!5))))))

(declare-fun e!44386 () List!665)

(assert (=> d!56019 (= lt!18838 e!44386)))

(declare-fun c!20606 () Bool)

(assert (=> d!56019 (= c!20606 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56019 (= (filter!18 (t!47838 more!5) lambda!9639) lt!18838)))

(declare-fun b!81863 () Bool)

(declare-fun res!41870 () Bool)

(assert (=> b!81863 (=> (not res!41870) (not e!44384))))

(assert (=> b!81863 (= res!41870 (subset (content!124 lt!18838) (content!124 (t!47838 more!5))))))

(declare-fun b!81864 () Bool)

(assert (=> b!81864 (= e!44386 Nil!624)))

(declare-fun b!81865 () Bool)

(assert (=> b!81865 (= e!44384 (forall!20 lt!18838 lambda!9639))))

(declare-fun b!81866 () Bool)

(assert (=> b!81866 (= e!44386 e!44385)))

(declare-fun c!20605 () Bool)

(assert (=> b!81866 (= c!20605 e!44387)))

(declare-fun res!41871 () Bool)

(assert (=> b!81866 (=> (not res!41871) (not e!44387))))

(assert (=> b!81866 (= res!41871 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!81866 (= lt!18837 (filter!18 (t!47838 (t!47838 more!5)) lambda!9639))))

(assert (= (and b!81866 res!41871) b!81861))

(assert (= (and b!81866 c!20605) b!81860))

(assert (= (and b!81866 (not c!20605)) b!81862))

(assert (= (and d!56019 c!20606) b!81864))

(assert (= (and d!56019 (not c!20606)) b!81866))

(assert (= (and d!56019 res!41872) b!81863))

(assert (= (and b!81863 res!41870) b!81865))

(declare-fun b_lambda!16133 () Bool)

(assert (=> (not b_lambda!16133) (not b!81861)))

(declare-fun m!77116 () Bool)

(assert (=> b!81865 m!77116))

(declare-fun m!77118 () Bool)

(assert (=> b!81863 m!77118))

(assert (=> b!81863 m!77082))

(declare-fun m!77120 () Bool)

(assert (=> b!81861 m!77120))

(declare-fun m!77122 () Bool)

(assert (=> d!56019 m!77122))

(assert (=> d!56019 m!77088))

(declare-fun m!77124 () Bool)

(assert (=> b!81866 m!77124))

(assert (=> b!81490 d!56019))

(declare-fun d!56021 () Bool)

(declare-fun e!44388 () Bool)

(assert (=> d!56021 e!44388))

(declare-fun c!20607 () Bool)

(assert (=> d!56021 (= c!20607 (is-Cons!622 (t!47838 more!5)))))

(assert (=> d!56021 (forall!20 (t!47838 more!5) lambda!9629)))

(assert (=> d!56021 (= (filter_preserves_forall!0 (t!47838 more!5) lambda!9664 lambda!9629) true)))

(declare-fun b!81867 () Bool)

(assert (=> b!81867 (= e!44388 (forall!20 (filter!18 (t!47838 more!5) lambda!9664) lambda!9629))))

(declare-fun lt!18839 () Bool)

(assert (=> b!81867 (= lt!18839 (filter_preserves_forall!0 (t!47838 (t!47838 more!5)) lambda!9664 lambda!9629))))

(declare-fun b!81868 () Bool)

(assert (=> b!81868 (= e!44388 (forall!20 (filter!18 (t!47838 more!5) lambda!9664) lambda!9629))))

(assert (= (and d!56021 c!20607) b!81867))

(assert (= (and d!56021 (not c!20607)) b!81868))

(assert (=> d!56021 m!76616))

(assert (=> b!81867 m!76434))

(assert (=> b!81867 m!76434))

(declare-fun m!77126 () Bool)

(assert (=> b!81867 m!77126))

(declare-fun m!77128 () Bool)

(assert (=> b!81867 m!77128))

(assert (=> b!81868 m!76434))

(assert (=> b!81868 m!76434))

(assert (=> b!81868 m!77126))

(assert (=> b!81522 d!56021))

(declare-fun b!81869 () Bool)

(declare-fun e!44390 () List!665)

(declare-fun lt!18840 () List!665)

(assert (=> b!81869 (= e!44390 (Cons!622 (h!991 (t!47838 more!5)) lt!18840))))

(declare-fun b!81870 () Bool)

(declare-fun e!44392 () Bool)

(assert (=> b!81870 (= e!44392 (dynLambda!984 lambda!9664 (h!991 (t!47838 more!5))))))

(declare-fun b!81871 () Bool)

(assert (=> b!81871 (= e!44390 lt!18840)))

(declare-fun d!56023 () Bool)

(declare-fun e!44389 () Bool)

(assert (=> d!56023 e!44389))

(declare-fun res!41875 () Bool)

(assert (=> d!56023 (=> (not res!41875) (not e!44389))))

(declare-fun lt!18841 () List!665)

(assert (=> d!56023 (= res!41875 (<= (size!653 lt!18841) (size!653 (t!47838 more!5))))))

(declare-fun e!44391 () List!665)

(assert (=> d!56023 (= lt!18841 e!44391)))

(declare-fun c!20609 () Bool)

(assert (=> d!56023 (= c!20609 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56023 (= (filter!18 (t!47838 more!5) lambda!9664) lt!18841)))

(declare-fun b!81872 () Bool)

(declare-fun res!41873 () Bool)

(assert (=> b!81872 (=> (not res!41873) (not e!44389))))

(assert (=> b!81872 (= res!41873 (subset (content!124 lt!18841) (content!124 (t!47838 more!5))))))

(declare-fun b!81873 () Bool)

(assert (=> b!81873 (= e!44391 Nil!624)))

(declare-fun b!81874 () Bool)

(assert (=> b!81874 (= e!44389 (forall!20 lt!18841 lambda!9664))))

(declare-fun b!81875 () Bool)

(assert (=> b!81875 (= e!44391 e!44390)))

(declare-fun c!20608 () Bool)

(assert (=> b!81875 (= c!20608 e!44392)))

(declare-fun res!41874 () Bool)

(assert (=> b!81875 (=> (not res!41874) (not e!44392))))

(assert (=> b!81875 (= res!41874 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!81875 (= lt!18840 (filter!18 (t!47838 (t!47838 more!5)) lambda!9664))))

(assert (= (and b!81875 res!41874) b!81870))

(assert (= (and b!81875 c!20608) b!81869))

(assert (= (and b!81875 (not c!20608)) b!81871))

(assert (= (and d!56023 c!20609) b!81873))

(assert (= (and d!56023 (not c!20609)) b!81875))

(assert (= (and d!56023 res!41875) b!81872))

(assert (= (and b!81872 res!41873) b!81874))

(declare-fun b_lambda!16135 () Bool)

(assert (=> (not b_lambda!16135) (not b!81870)))

(declare-fun m!77130 () Bool)

(assert (=> b!81874 m!77130))

(declare-fun m!77132 () Bool)

(assert (=> b!81872 m!77132))

(assert (=> b!81872 m!77082))

(declare-fun m!77134 () Bool)

(assert (=> b!81870 m!77134))

(declare-fun m!77136 () Bool)

(assert (=> d!56023 m!77136))

(assert (=> d!56023 m!77088))

(declare-fun m!77138 () Bool)

(assert (=> b!81875 m!77138))

(assert (=> b!81522 d!56023))

(declare-fun b!81876 () Bool)

(declare-fun e!44394 () List!665)

(declare-fun lt!18842 () List!665)

(assert (=> b!81876 (= e!44394 (Cons!622 (h!991 (t!47838 more!5)) lt!18842))))

(declare-fun b!81877 () Bool)

(declare-fun e!44396 () Bool)

(assert (=> b!81877 (= e!44396 (dynLambda!984 lambda!9666 (h!991 (t!47838 more!5))))))

(declare-fun b!81878 () Bool)

(assert (=> b!81878 (= e!44394 lt!18842)))

(declare-fun d!56025 () Bool)

(declare-fun e!44393 () Bool)

(assert (=> d!56025 e!44393))

(declare-fun res!41878 () Bool)

(assert (=> d!56025 (=> (not res!41878) (not e!44393))))

(declare-fun lt!18843 () List!665)

(assert (=> d!56025 (= res!41878 (<= (size!653 lt!18843) (size!653 (t!47838 more!5))))))

(declare-fun e!44395 () List!665)

(assert (=> d!56025 (= lt!18843 e!44395)))

(declare-fun c!20611 () Bool)

(assert (=> d!56025 (= c!20611 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56025 (= (filter!18 (t!47838 more!5) lambda!9666) lt!18843)))

(declare-fun b!81879 () Bool)

(declare-fun res!41876 () Bool)

(assert (=> b!81879 (=> (not res!41876) (not e!44393))))

(assert (=> b!81879 (= res!41876 (subset (content!124 lt!18843) (content!124 (t!47838 more!5))))))

(declare-fun b!81880 () Bool)

(assert (=> b!81880 (= e!44395 Nil!624)))

(declare-fun b!81881 () Bool)

(assert (=> b!81881 (= e!44393 (forall!20 lt!18843 lambda!9666))))

(declare-fun b!81882 () Bool)

(assert (=> b!81882 (= e!44395 e!44394)))

(declare-fun c!20610 () Bool)

(assert (=> b!81882 (= c!20610 e!44396)))

(declare-fun res!41877 () Bool)

(assert (=> b!81882 (=> (not res!41877) (not e!44396))))

(assert (=> b!81882 (= res!41877 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!81882 (= lt!18842 (filter!18 (t!47838 (t!47838 more!5)) lambda!9666))))

(assert (= (and b!81882 res!41877) b!81877))

(assert (= (and b!81882 c!20610) b!81876))

(assert (= (and b!81882 (not c!20610)) b!81878))

(assert (= (and d!56025 c!20611) b!81880))

(assert (= (and d!56025 (not c!20611)) b!81882))

(assert (= (and d!56025 res!41878) b!81879))

(assert (= (and b!81879 res!41876) b!81881))

(declare-fun b_lambda!16137 () Bool)

(assert (=> (not b_lambda!16137) (not b!81877)))

(declare-fun m!77140 () Bool)

(assert (=> b!81881 m!77140))

(declare-fun m!77142 () Bool)

(assert (=> b!81879 m!77142))

(assert (=> b!81879 m!77082))

(declare-fun m!77144 () Bool)

(assert (=> b!81877 m!77144))

(declare-fun m!77146 () Bool)

(assert (=> d!56025 m!77146))

(assert (=> d!56025 m!77088))

(declare-fun m!77148 () Bool)

(assert (=> b!81882 m!77148))

(assert (=> b!81522 d!56025))

(declare-fun bs!39265 () Bool)

(declare-fun b!81885 () Bool)

(assert (= bs!39265 (and b!81885 b!81517)))

(declare-fun lambda!9733 () Int)

(assert (=> bs!39265 (not (= lambda!9733 lambda!9663))))

(assert (=> bs!39265 (not (= lambda!9733 lambda!9662))))

(assert (=> bs!39265 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9733 lambda!9661))))

(declare-fun bs!39266 () Bool)

(assert (= bs!39266 (and b!81885 b!81734)))

(assert (=> bs!39266 (not (= lambda!9733 lambda!9711))))

(assert (=> bs!39266 (not (= lambda!9733 lambda!9710))))

(assert (=> bs!39266 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9733 lambda!9709))))

(declare-fun bs!39267 () Bool)

(assert (= bs!39267 (and b!81885 b!81462)))

(assert (=> bs!39267 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9733 lambda!9627))))

(declare-fun bs!39268 () Bool)

(assert (= bs!39268 (and b!81885 b!81495)))

(assert (=> bs!39268 (not (= lambda!9733 lambda!9647))))

(declare-fun bs!39269 () Bool)

(assert (= bs!39269 (and b!81885 b!81804)))

(assert (=> bs!39269 (not (= lambda!9733 lambda!9723))))

(assert (=> bs!39269 (not (= lambda!9733 lambda!9722))))

(assert (=> bs!39269 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9733 lambda!9721))))

(declare-fun bs!39270 () Bool)

(assert (= bs!39270 (and b!81885 b!81742)))

(assert (=> bs!39270 (not (= lambda!9733 lambda!9714))))

(assert (=> bs!39270 (not (= lambda!9733 lambda!9713))))

(assert (=> bs!39270 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9733 lambda!9712))))

(declare-fun bs!39271 () Bool)

(assert (= bs!39271 (and b!81885 b!81709)))

(assert (=> bs!39271 (not (= lambda!9733 lambda!9708))))

(assert (=> bs!39271 (not (= lambda!9733 lambda!9707))))

(assert (=> bs!39271 (= (= (h!991 lt!18736) (h!991 lt!18751)) (= lambda!9733 lambda!9706))))

(declare-fun bs!39272 () Bool)

(assert (= bs!39272 (and b!81885 b!81460)))

(assert (=> bs!39272 (not (= lambda!9733 lambda!9628))))

(declare-fun bs!39273 () Bool)

(assert (= bs!39273 (and b!81885 b!81560)))

(assert (=> bs!39273 (not (= lambda!9733 lambda!9678))))

(assert (=> bs!39273 (not (= lambda!9733 lambda!9677))))

(assert (=> bs!39273 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9733 lambda!9676))))

(declare-fun bs!39274 () Bool)

(assert (= bs!39274 (and b!81885 b!81490)))

(assert (=> bs!39274 (not (= lambda!9733 lambda!9639))))

(assert (=> bs!39274 (not (= lambda!9733 lambda!9638))))

(assert (=> bs!39274 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9733 lambda!9637))))

(declare-fun bs!39275 () Bool)

(assert (= bs!39275 (and b!81885 b!81691)))

(assert (=> bs!39275 (not (= lambda!9733 lambda!9702))))

(assert (=> bs!39275 (not (= lambda!9733 lambda!9701))))

(assert (=> bs!39275 (= (= (h!991 lt!18736) (h!991 lt!18728)) (= lambda!9733 lambda!9700))))

(declare-fun bs!39276 () Bool)

(assert (= bs!39276 (and b!81885 b!81466)))

(assert (=> bs!39276 (not (= lambda!9733 lambda!9629))))

(declare-fun bs!39277 () Bool)

(assert (= bs!39277 (and b!81885 b!81780)))

(assert (=> bs!39277 (not (= lambda!9733 lambda!9720))))

(assert (=> bs!39277 (not (= lambda!9733 lambda!9719))))

(assert (=> bs!39277 (= (= (h!991 lt!18736) (h!991 lt!18781)) (= lambda!9733 lambda!9718))))

(declare-fun bs!39278 () Bool)

(assert (= bs!39278 (and b!81885 d!55883)))

(assert (=> bs!39278 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9733 lambda!9685))))

(declare-fun bs!39279 () Bool)

(assert (= bs!39279 (and b!81885 b!81837)))

(assert (=> bs!39279 (not (= lambda!9733 lambda!9729))))

(assert (=> bs!39279 (not (= lambda!9733 lambda!9728))))

(assert (=> bs!39279 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9733 lambda!9727))))

(declare-fun bs!39280 () Bool)

(assert (= bs!39280 (and b!81885 b!81852)))

(assert (=> bs!39280 (not (= lambda!9733 lambda!9732))))

(assert (=> bs!39280 (not (= lambda!9733 lambda!9731))))

(assert (=> bs!39280 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9733 lambda!9730))))

(declare-fun bs!39281 () Bool)

(assert (= bs!39281 (and b!81885 d!55861)))

(assert (=> bs!39281 (not (= lambda!9733 lambda!9646))))

(declare-fun bs!39282 () Bool)

(assert (= bs!39282 (and b!81885 b!81537)))

(assert (=> bs!39282 (not (= lambda!9733 lambda!9669))))

(assert (=> bs!39282 (not (= lambda!9733 lambda!9668))))

(assert (=> bs!39282 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9733 lambda!9667))))

(declare-fun bs!39283 () Bool)

(assert (= bs!39283 (and b!81885 b!81587)))

(assert (=> bs!39283 (not (= lambda!9733 lambda!9686))))

(declare-fun bs!39284 () Bool)

(assert (= bs!39284 (and b!81885 b!81496)))

(assert (=> bs!39284 (not (= lambda!9733 lambda!9648))))

(declare-fun bs!39285 () Bool)

(assert (= bs!39285 (and b!81885 d!55889)))

(assert (=> bs!39285 (not (= lambda!9733 lambda!9693))))

(declare-fun bs!39286 () Bool)

(assert (= bs!39286 (and b!81885 b!81705)))

(assert (=> bs!39286 (not (= lambda!9733 lambda!9705))))

(assert (=> bs!39286 (not (= lambda!9733 lambda!9704))))

(assert (=> bs!39286 (= (= (h!991 lt!18736) (h!991 lt!18752)) (= lambda!9733 lambda!9703))))

(declare-fun bs!39287 () Bool)

(assert (= bs!39287 (and b!81885 b!81522)))

(assert (=> bs!39287 (not (= lambda!9733 lambda!9666))))

(assert (=> bs!39287 (not (= lambda!9733 lambda!9665))))

(assert (=> bs!39287 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9733 lambda!9664))))

(declare-fun bs!39288 () Bool)

(assert (= bs!39288 (and b!81885 b!81598)))

(assert (=> bs!39288 (not (= lambda!9733 lambda!9690))))

(assert (=> bs!39288 (not (= lambda!9733 lambda!9689))))

(assert (=> bs!39288 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9733 lambda!9688))))

(declare-fun bs!39289 () Bool)

(assert (= bs!39289 (and b!81885 b!81588)))

(assert (=> bs!39289 (not (= lambda!9733 lambda!9687))))

(declare-fun bs!39290 () Bool)

(assert (= bs!39290 (and b!81885 b!81776)))

(assert (=> bs!39290 (not (= lambda!9733 lambda!9717))))

(assert (=> bs!39290 (not (= lambda!9733 lambda!9716))))

(assert (=> bs!39290 (= (= (h!991 lt!18736) (h!991 lt!18782)) (= lambda!9733 lambda!9715))))

(declare-fun bs!39291 () Bool)

(assert (= bs!39291 (and b!81885 b!81468)))

(assert (=> bs!39291 (not (= lambda!9733 lambda!9630))))

(declare-fun bs!39292 () Bool)

(assert (= bs!39292 (and b!81885 b!81633)))

(assert (=> bs!39292 (not (= lambda!9733 lambda!9696))))

(assert (=> bs!39292 (not (= lambda!9733 lambda!9695))))

(assert (=> bs!39292 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9733 lambda!9694))))

(declare-fun bs!39293 () Bool)

(assert (= bs!39293 (and b!81885 b!81687)))

(assert (=> bs!39293 (not (= lambda!9733 lambda!9699))))

(assert (=> bs!39293 (not (= lambda!9733 lambda!9698))))

(assert (=> bs!39293 (= (= (h!991 lt!18736) (h!991 lt!18730)) (= lambda!9733 lambda!9697))))

(declare-fun bs!39294 () Bool)

(assert (= bs!39294 (and b!81885 b!81810)))

(assert (=> bs!39294 (not (= lambda!9733 lambda!9726))))

(assert (=> bs!39294 (not (= lambda!9733 lambda!9725))))

(assert (=> bs!39294 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9733 lambda!9724))))

(assert (=> b!81885 true))

(declare-fun lambda!9734 () Int)

(assert (=> bs!39265 (not (= lambda!9734 lambda!9663))))

(assert (=> bs!39265 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9734 lambda!9662))))

(assert (=> bs!39265 (not (= lambda!9734 lambda!9661))))

(assert (=> bs!39266 (not (= lambda!9734 lambda!9711))))

(assert (=> bs!39266 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9734 lambda!9710))))

(assert (=> bs!39266 (not (= lambda!9734 lambda!9709))))

(assert (=> bs!39267 (not (= lambda!9734 lambda!9627))))

(assert (=> bs!39268 (not (= lambda!9734 lambda!9647))))

(assert (=> bs!39269 (not (= lambda!9734 lambda!9723))))

(assert (=> bs!39269 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9734 lambda!9722))))

(assert (=> bs!39269 (not (= lambda!9734 lambda!9721))))

(assert (=> b!81885 (not (= lambda!9734 lambda!9733))))

(assert (=> bs!39270 (not (= lambda!9734 lambda!9714))))

(assert (=> bs!39270 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9734 lambda!9713))))

(assert (=> bs!39270 (not (= lambda!9734 lambda!9712))))

(assert (=> bs!39271 (not (= lambda!9734 lambda!9708))))

(assert (=> bs!39271 (= (= (h!991 lt!18736) (h!991 lt!18751)) (= lambda!9734 lambda!9707))))

(assert (=> bs!39271 (not (= lambda!9734 lambda!9706))))

(assert (=> bs!39272 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9734 lambda!9628))))

(assert (=> bs!39273 (not (= lambda!9734 lambda!9678))))

(assert (=> bs!39273 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9734 lambda!9677))))

(assert (=> bs!39273 (not (= lambda!9734 lambda!9676))))

(assert (=> bs!39274 (not (= lambda!9734 lambda!9639))))

(assert (=> bs!39274 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9734 lambda!9638))))

(assert (=> bs!39274 (not (= lambda!9734 lambda!9637))))

(assert (=> bs!39275 (not (= lambda!9734 lambda!9702))))

(assert (=> bs!39275 (= (= (h!991 lt!18736) (h!991 lt!18728)) (= lambda!9734 lambda!9701))))

(assert (=> bs!39275 (not (= lambda!9734 lambda!9700))))

(assert (=> bs!39276 (not (= lambda!9734 lambda!9629))))

(assert (=> bs!39277 (not (= lambda!9734 lambda!9720))))

(assert (=> bs!39277 (= (= (h!991 lt!18736) (h!991 lt!18781)) (= lambda!9734 lambda!9719))))

(assert (=> bs!39277 (not (= lambda!9734 lambda!9718))))

(assert (=> bs!39278 (not (= lambda!9734 lambda!9685))))

(assert (=> bs!39279 (not (= lambda!9734 lambda!9729))))

(assert (=> bs!39279 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9734 lambda!9728))))

(assert (=> bs!39279 (not (= lambda!9734 lambda!9727))))

(assert (=> bs!39280 (not (= lambda!9734 lambda!9732))))

(assert (=> bs!39280 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9734 lambda!9731))))

(assert (=> bs!39280 (not (= lambda!9734 lambda!9730))))

(assert (=> bs!39281 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9734 lambda!9646))))

(assert (=> bs!39282 (not (= lambda!9734 lambda!9669))))

(assert (=> bs!39282 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9734 lambda!9668))))

(assert (=> bs!39282 (not (= lambda!9734 lambda!9667))))

(assert (=> bs!39283 (not (= lambda!9734 lambda!9686))))

(assert (=> bs!39284 (not (= lambda!9734 lambda!9648))))

(assert (=> bs!39285 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9734 lambda!9693))))

(assert (=> bs!39286 (not (= lambda!9734 lambda!9705))))

(assert (=> bs!39286 (= (= (h!991 lt!18736) (h!991 lt!18752)) (= lambda!9734 lambda!9704))))

(assert (=> bs!39286 (not (= lambda!9734 lambda!9703))))

(assert (=> bs!39287 (not (= lambda!9734 lambda!9666))))

(assert (=> bs!39287 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9734 lambda!9665))))

(assert (=> bs!39287 (not (= lambda!9734 lambda!9664))))

(assert (=> bs!39288 (not (= lambda!9734 lambda!9690))))

(assert (=> bs!39288 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9734 lambda!9689))))

(assert (=> bs!39288 (not (= lambda!9734 lambda!9688))))

(assert (=> bs!39289 (not (= lambda!9734 lambda!9687))))

(assert (=> bs!39290 (not (= lambda!9734 lambda!9717))))

(assert (=> bs!39290 (= (= (h!991 lt!18736) (h!991 lt!18782)) (= lambda!9734 lambda!9716))))

(assert (=> bs!39290 (not (= lambda!9734 lambda!9715))))

(assert (=> bs!39291 (not (= lambda!9734 lambda!9630))))

(assert (=> bs!39292 (not (= lambda!9734 lambda!9696))))

(assert (=> bs!39292 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9734 lambda!9695))))

(assert (=> bs!39292 (not (= lambda!9734 lambda!9694))))

(assert (=> bs!39293 (not (= lambda!9734 lambda!9699))))

(assert (=> bs!39293 (= (= (h!991 lt!18736) (h!991 lt!18730)) (= lambda!9734 lambda!9698))))

(assert (=> bs!39293 (not (= lambda!9734 lambda!9697))))

(assert (=> bs!39294 (not (= lambda!9734 lambda!9726))))

(assert (=> bs!39294 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9734 lambda!9725))))

(assert (=> bs!39294 (not (= lambda!9734 lambda!9724))))

(assert (=> b!81885 true))

(declare-fun lambda!9735 () Int)

(assert (=> bs!39265 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9735 lambda!9663))))

(assert (=> bs!39265 (not (= lambda!9735 lambda!9662))))

(assert (=> bs!39265 (not (= lambda!9735 lambda!9661))))

(assert (=> bs!39266 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9735 lambda!9711))))

(assert (=> bs!39266 (not (= lambda!9735 lambda!9710))))

(assert (=> bs!39266 (not (= lambda!9735 lambda!9709))))

(assert (=> bs!39267 (not (= lambda!9735 lambda!9627))))

(assert (=> bs!39268 (not (= lambda!9735 lambda!9647))))

(assert (=> bs!39269 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9735 lambda!9723))))

(assert (=> bs!39269 (not (= lambda!9735 lambda!9722))))

(assert (=> bs!39269 (not (= lambda!9735 lambda!9721))))

(assert (=> b!81885 (not (= lambda!9735 lambda!9734))))

(assert (=> b!81885 (not (= lambda!9735 lambda!9733))))

(assert (=> bs!39270 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9735 lambda!9714))))

(assert (=> bs!39270 (not (= lambda!9735 lambda!9713))))

(assert (=> bs!39270 (not (= lambda!9735 lambda!9712))))

(assert (=> bs!39271 (= (= (h!991 lt!18736) (h!991 lt!18751)) (= lambda!9735 lambda!9708))))

(assert (=> bs!39271 (not (= lambda!9735 lambda!9707))))

(assert (=> bs!39271 (not (= lambda!9735 lambda!9706))))

(assert (=> bs!39272 (not (= lambda!9735 lambda!9628))))

(assert (=> bs!39273 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9735 lambda!9678))))

(assert (=> bs!39273 (not (= lambda!9735 lambda!9677))))

(assert (=> bs!39273 (not (= lambda!9735 lambda!9676))))

(assert (=> bs!39274 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9735 lambda!9639))))

(assert (=> bs!39274 (not (= lambda!9735 lambda!9638))))

(assert (=> bs!39274 (not (= lambda!9735 lambda!9637))))

(assert (=> bs!39275 (= (= (h!991 lt!18736) (h!991 lt!18728)) (= lambda!9735 lambda!9702))))

(assert (=> bs!39275 (not (= lambda!9735 lambda!9701))))

(assert (=> bs!39275 (not (= lambda!9735 lambda!9700))))

(assert (=> bs!39276 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9735 lambda!9629))))

(assert (=> bs!39277 (= (= (h!991 lt!18736) (h!991 lt!18781)) (= lambda!9735 lambda!9720))))

(assert (=> bs!39277 (not (= lambda!9735 lambda!9719))))

(assert (=> bs!39277 (not (= lambda!9735 lambda!9718))))

(assert (=> bs!39278 (not (= lambda!9735 lambda!9685))))

(assert (=> bs!39279 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9735 lambda!9729))))

(assert (=> bs!39279 (not (= lambda!9735 lambda!9728))))

(assert (=> bs!39279 (not (= lambda!9735 lambda!9727))))

(assert (=> bs!39280 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9735 lambda!9732))))

(assert (=> bs!39280 (not (= lambda!9735 lambda!9731))))

(assert (=> bs!39280 (not (= lambda!9735 lambda!9730))))

(assert (=> bs!39281 (not (= lambda!9735 lambda!9646))))

(assert (=> bs!39282 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9735 lambda!9669))))

(assert (=> bs!39282 (not (= lambda!9735 lambda!9668))))

(assert (=> bs!39282 (not (= lambda!9735 lambda!9667))))

(assert (=> bs!39283 (not (= lambda!9735 lambda!9686))))

(assert (=> bs!39284 (not (= lambda!9735 lambda!9648))))

(assert (=> bs!39285 (not (= lambda!9735 lambda!9693))))

(assert (=> bs!39286 (= (= (h!991 lt!18736) (h!991 lt!18752)) (= lambda!9735 lambda!9705))))

(assert (=> bs!39286 (not (= lambda!9735 lambda!9704))))

(assert (=> bs!39286 (not (= lambda!9735 lambda!9703))))

(assert (=> bs!39287 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9735 lambda!9666))))

(assert (=> bs!39287 (not (= lambda!9735 lambda!9665))))

(assert (=> bs!39287 (not (= lambda!9735 lambda!9664))))

(assert (=> bs!39288 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9735 lambda!9690))))

(assert (=> bs!39288 (not (= lambda!9735 lambda!9689))))

(assert (=> bs!39288 (not (= lambda!9735 lambda!9688))))

(assert (=> bs!39289 (not (= lambda!9735 lambda!9687))))

(assert (=> bs!39290 (= (= (h!991 lt!18736) (h!991 lt!18782)) (= lambda!9735 lambda!9717))))

(assert (=> bs!39290 (not (= lambda!9735 lambda!9716))))

(assert (=> bs!39290 (not (= lambda!9735 lambda!9715))))

(assert (=> bs!39291 (not (= lambda!9735 lambda!9630))))

(assert (=> bs!39292 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9735 lambda!9696))))

(assert (=> bs!39292 (not (= lambda!9735 lambda!9695))))

(assert (=> bs!39292 (not (= lambda!9735 lambda!9694))))

(assert (=> bs!39293 (= (= (h!991 lt!18736) (h!991 lt!18730)) (= lambda!9735 lambda!9699))))

(assert (=> bs!39293 (not (= lambda!9735 lambda!9698))))

(assert (=> bs!39293 (not (= lambda!9735 lambda!9697))))

(assert (=> bs!39294 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9735 lambda!9726))))

(assert (=> bs!39294 (not (= lambda!9735 lambda!9725))))

(assert (=> bs!39294 (not (= lambda!9735 lambda!9724))))

(assert (=> b!81885 true))

(declare-fun e!44401 () Bool)

(declare-fun b!81883 () Bool)

(assert (=> b!81883 (= e!44401 (filter_preserves_forall!0 (t!47838 lt!18736) lambda!9734 lambda!9629))))

(declare-fun lt!18849 () List!665)

(declare-fun lt!18847 () List!665)

(declare-fun e!44399 () Bool)

(declare-fun b!81884 () Bool)

(declare-fun lt!18844 () List!665)

(assert (=> b!81884 (= e!44399 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18849) lt!18844) (quickSort!0 lt!18847) lambda!9629))))

(declare-fun d!56027 () Bool)

(assert (=> d!56027 (forall!20 (quickSort!0 lt!18736) lambda!9629)))

(declare-fun lt!18846 () Bool)

(declare-fun e!44397 () Bool)

(assert (=> d!56027 (= lt!18846 e!44397)))

(declare-fun res!41881 () Bool)

(assert (=> d!56027 (=> res!41881 e!44397)))

(assert (=> d!56027 (= res!41881 (or (is-Nil!624 lt!18736) (and (is-Cons!622 lt!18736) (is-Nil!624 (t!47838 lt!18736)))))))

(assert (=> d!56027 (forall!20 lt!18736 lambda!9629)))

(assert (=> d!56027 (= (sort_preserves_forall!0 lt!18736 lambda!9629) true)))

(assert (=> b!81885 (= e!44397 e!44399)))

(declare-fun res!41882 () Bool)

(assert (=> b!81885 (=> (not res!41882) (not e!44399))))

(assert (=> b!81885 (= res!41882 (append_preserves_forall!0 (quickSort!0 lt!18849) lt!18844 lambda!9629))))

(declare-fun lt!18845 () Bool)

(declare-fun e!44398 () Bool)

(assert (=> b!81885 (= lt!18845 e!44398)))

(declare-fun res!41880 () Bool)

(assert (=> b!81885 (=> (not res!41880) (not e!44398))))

(assert (=> b!81885 (= res!41880 (sort_preserves_forall!0 lt!18849 lambda!9629))))

(declare-fun lt!18848 () Bool)

(declare-fun e!44400 () Bool)

(assert (=> b!81885 (= lt!18848 e!44400)))

(declare-fun res!41879 () Bool)

(assert (=> b!81885 (=> (not res!41879) (not e!44400))))

(assert (=> b!81885 (= res!41879 e!44401)))

(declare-fun res!41883 () Bool)

(assert (=> b!81885 (=> (not res!41883) (not e!44401))))

(assert (=> b!81885 (= res!41883 (filter_preserves_forall!0 (t!47838 lt!18736) lambda!9733 lambda!9629))))

(assert (=> b!81885 (= lt!18847 (filter!18 (t!47838 lt!18736) lambda!9735))))

(assert (=> b!81885 (= lt!18844 (Cons!622 (h!991 lt!18736) (filter!18 (t!47838 lt!18736) lambda!9734)))))

(assert (=> b!81885 (= lt!18849 (filter!18 (t!47838 lt!18736) lambda!9733))))

(declare-fun b!81886 () Bool)

(assert (=> b!81886 (= e!44398 (sort_preserves_forall!0 lt!18847 lambda!9629))))

(declare-fun b!81887 () Bool)

(assert (=> b!81887 (= e!44400 (filter_preserves_forall!0 (t!47838 lt!18736) lambda!9735 lambda!9629))))

(assert (= (and d!56027 (not res!41881)) b!81885))

(assert (= (and b!81885 res!41883) b!81883))

(assert (= (and b!81885 res!41879) b!81887))

(assert (= (and b!81885 res!41880) b!81886))

(assert (= (and b!81885 res!41882) b!81884))

(declare-fun m!77150 () Bool)

(assert (=> b!81887 m!77150))

(declare-fun m!77152 () Bool)

(assert (=> b!81886 m!77152))

(declare-fun m!77154 () Bool)

(assert (=> b!81884 m!77154))

(assert (=> b!81884 m!77154))

(declare-fun m!77156 () Bool)

(assert (=> b!81884 m!77156))

(declare-fun m!77158 () Bool)

(assert (=> b!81884 m!77158))

(assert (=> b!81884 m!77156))

(assert (=> b!81884 m!77158))

(declare-fun m!77160 () Bool)

(assert (=> b!81884 m!77160))

(declare-fun m!77162 () Bool)

(assert (=> b!81883 m!77162))

(declare-fun m!77164 () Bool)

(assert (=> b!81885 m!77164))

(declare-fun m!77166 () Bool)

(assert (=> b!81885 m!77166))

(assert (=> b!81885 m!77154))

(declare-fun m!77168 () Bool)

(assert (=> b!81885 m!77168))

(declare-fun m!77170 () Bool)

(assert (=> b!81885 m!77170))

(assert (=> b!81885 m!77154))

(declare-fun m!77172 () Bool)

(assert (=> b!81885 m!77172))

(declare-fun m!77174 () Bool)

(assert (=> b!81885 m!77174))

(assert (=> d!56027 m!76414))

(assert (=> d!56027 m!76414))

(declare-fun m!77176 () Bool)

(assert (=> d!56027 m!77176))

(declare-fun m!77178 () Bool)

(assert (=> d!56027 m!77178))

(assert (=> b!81522 d!56027))

(declare-fun d!56029 () Bool)

(declare-fun e!44403 () Bool)

(assert (=> d!56029 e!44403))

(declare-fun c!20612 () Bool)

(assert (=> d!56029 (= c!20612 (is-Cons!622 (quickSort!0 lt!18736)))))

(declare-fun e!44402 () Bool)

(assert (=> d!56029 e!44402))

(declare-fun res!41884 () Bool)

(assert (=> d!56029 (=> (not res!41884) (not e!44402))))

(assert (=> d!56029 (= res!41884 (forall!20 (quickSort!0 lt!18736) lambda!9629))))

(assert (=> d!56029 (= (append_preserves_forall!0 (quickSort!0 lt!18736) lt!18731 lambda!9629) true)))

(declare-fun b!81888 () Bool)

(assert (=> b!81888 (= e!44402 (forall!20 lt!18731 lambda!9629))))

(declare-fun b!81889 () Bool)

(assert (=> b!81889 (= e!44403 (forall!20 (++!73 (quickSort!0 lt!18736) lt!18731) lambda!9629))))

(declare-fun lt!18850 () Bool)

(assert (=> b!81889 (= lt!18850 (append_preserves_forall!0 (t!47838 (quickSort!0 lt!18736)) lt!18731 lambda!9629))))

(declare-fun b!81890 () Bool)

(assert (=> b!81890 (= e!44403 (forall!20 (++!73 (quickSort!0 lt!18736) lt!18731) lambda!9629))))

(assert (= (and d!56029 res!41884) b!81888))

(assert (= (and d!56029 c!20612) b!81889))

(assert (= (and d!56029 (not c!20612)) b!81890))

(assert (=> d!56029 m!76414))

(assert (=> d!56029 m!77176))

(declare-fun m!77180 () Bool)

(assert (=> b!81888 m!77180))

(assert (=> b!81889 m!76414))

(assert (=> b!81889 m!76416))

(assert (=> b!81889 m!76416))

(declare-fun m!77182 () Bool)

(assert (=> b!81889 m!77182))

(declare-fun m!77184 () Bool)

(assert (=> b!81889 m!77184))

(assert (=> b!81890 m!76414))

(assert (=> b!81890 m!76416))

(assert (=> b!81890 m!76416))

(assert (=> b!81890 m!77182))

(assert (=> b!81522 d!56029))

(declare-fun b!81891 () Bool)

(declare-fun e!44405 () List!665)

(declare-fun lt!18851 () List!665)

(assert (=> b!81891 (= e!44405 (Cons!622 (h!991 (t!47838 more!5)) lt!18851))))

(declare-fun b!81892 () Bool)

(declare-fun e!44407 () Bool)

(assert (=> b!81892 (= e!44407 (dynLambda!984 lambda!9665 (h!991 (t!47838 more!5))))))

(declare-fun b!81893 () Bool)

(assert (=> b!81893 (= e!44405 lt!18851)))

(declare-fun d!56031 () Bool)

(declare-fun e!44404 () Bool)

(assert (=> d!56031 e!44404))

(declare-fun res!41887 () Bool)

(assert (=> d!56031 (=> (not res!41887) (not e!44404))))

(declare-fun lt!18852 () List!665)

(assert (=> d!56031 (= res!41887 (<= (size!653 lt!18852) (size!653 (t!47838 more!5))))))

(declare-fun e!44406 () List!665)

(assert (=> d!56031 (= lt!18852 e!44406)))

(declare-fun c!20614 () Bool)

(assert (=> d!56031 (= c!20614 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56031 (= (filter!18 (t!47838 more!5) lambda!9665) lt!18852)))

(declare-fun b!81894 () Bool)

(declare-fun res!41885 () Bool)

(assert (=> b!81894 (=> (not res!41885) (not e!44404))))

(assert (=> b!81894 (= res!41885 (subset (content!124 lt!18852) (content!124 (t!47838 more!5))))))

(declare-fun b!81895 () Bool)

(assert (=> b!81895 (= e!44406 Nil!624)))

(declare-fun b!81896 () Bool)

(assert (=> b!81896 (= e!44404 (forall!20 lt!18852 lambda!9665))))

(declare-fun b!81897 () Bool)

(assert (=> b!81897 (= e!44406 e!44405)))

(declare-fun c!20613 () Bool)

(assert (=> b!81897 (= c!20613 e!44407)))

(declare-fun res!41886 () Bool)

(assert (=> b!81897 (=> (not res!41886) (not e!44407))))

(assert (=> b!81897 (= res!41886 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!81897 (= lt!18851 (filter!18 (t!47838 (t!47838 more!5)) lambda!9665))))

(assert (= (and b!81897 res!41886) b!81892))

(assert (= (and b!81897 c!20613) b!81891))

(assert (= (and b!81897 (not c!20613)) b!81893))

(assert (= (and d!56031 c!20614) b!81895))

(assert (= (and d!56031 (not c!20614)) b!81897))

(assert (= (and d!56031 res!41887) b!81894))

(assert (= (and b!81894 res!41885) b!81896))

(declare-fun b_lambda!16139 () Bool)

(assert (=> (not b_lambda!16139) (not b!81892)))

(declare-fun m!77186 () Bool)

(assert (=> b!81896 m!77186))

(declare-fun m!77188 () Bool)

(assert (=> b!81894 m!77188))

(assert (=> b!81894 m!77082))

(declare-fun m!77190 () Bool)

(assert (=> b!81892 m!77190))

(declare-fun m!77192 () Bool)

(assert (=> d!56031 m!77192))

(assert (=> d!56031 m!77088))

(declare-fun m!77194 () Bool)

(assert (=> b!81897 m!77194))

(assert (=> b!81522 d!56031))

(declare-fun bs!39295 () Bool)

(declare-fun b!81901 () Bool)

(assert (= bs!39295 (and b!81901 b!81517)))

(declare-fun lambda!9736 () Int)

(assert (=> bs!39295 (not (= lambda!9736 lambda!9663))))

(assert (=> bs!39295 (not (= lambda!9736 lambda!9662))))

(assert (=> bs!39295 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9736 lambda!9661))))

(declare-fun bs!39296 () Bool)

(assert (= bs!39296 (and b!81901 b!81734)))

(assert (=> bs!39296 (not (= lambda!9736 lambda!9711))))

(assert (=> bs!39296 (not (= lambda!9736 lambda!9710))))

(assert (=> bs!39296 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9736 lambda!9709))))

(declare-fun bs!39297 () Bool)

(assert (= bs!39297 (and b!81901 b!81462)))

(assert (=> bs!39297 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9736 lambda!9627))))

(declare-fun bs!39298 () Bool)

(assert (= bs!39298 (and b!81901 b!81495)))

(assert (=> bs!39298 (not (= lambda!9736 lambda!9647))))

(declare-fun bs!39299 () Bool)

(assert (= bs!39299 (and b!81901 b!81804)))

(assert (=> bs!39299 (not (= lambda!9736 lambda!9723))))

(assert (=> bs!39299 (not (= lambda!9736 lambda!9722))))

(assert (=> bs!39299 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9736 lambda!9721))))

(declare-fun bs!39300 () Bool)

(assert (= bs!39300 (and b!81901 b!81885)))

(assert (=> bs!39300 (not (= lambda!9736 lambda!9735))))

(assert (=> bs!39300 (not (= lambda!9736 lambda!9734))))

(assert (=> bs!39300 (= lambda!9736 lambda!9733)))

(declare-fun bs!39301 () Bool)

(assert (= bs!39301 (and b!81901 b!81742)))

(assert (=> bs!39301 (not (= lambda!9736 lambda!9714))))

(assert (=> bs!39301 (not (= lambda!9736 lambda!9713))))

(assert (=> bs!39301 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9736 lambda!9712))))

(declare-fun bs!39302 () Bool)

(assert (= bs!39302 (and b!81901 b!81709)))

(assert (=> bs!39302 (not (= lambda!9736 lambda!9708))))

(assert (=> bs!39302 (not (= lambda!9736 lambda!9707))))

(assert (=> bs!39302 (= (= (h!991 lt!18736) (h!991 lt!18751)) (= lambda!9736 lambda!9706))))

(declare-fun bs!39303 () Bool)

(assert (= bs!39303 (and b!81901 b!81460)))

(assert (=> bs!39303 (not (= lambda!9736 lambda!9628))))

(declare-fun bs!39304 () Bool)

(assert (= bs!39304 (and b!81901 b!81560)))

(assert (=> bs!39304 (not (= lambda!9736 lambda!9678))))

(assert (=> bs!39304 (not (= lambda!9736 lambda!9677))))

(assert (=> bs!39304 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9736 lambda!9676))))

(declare-fun bs!39305 () Bool)

(assert (= bs!39305 (and b!81901 b!81490)))

(assert (=> bs!39305 (not (= lambda!9736 lambda!9639))))

(assert (=> bs!39305 (not (= lambda!9736 lambda!9638))))

(assert (=> bs!39305 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9736 lambda!9637))))

(declare-fun bs!39306 () Bool)

(assert (= bs!39306 (and b!81901 b!81691)))

(assert (=> bs!39306 (not (= lambda!9736 lambda!9702))))

(assert (=> bs!39306 (not (= lambda!9736 lambda!9701))))

(assert (=> bs!39306 (= (= (h!991 lt!18736) (h!991 lt!18728)) (= lambda!9736 lambda!9700))))

(declare-fun bs!39307 () Bool)

(assert (= bs!39307 (and b!81901 b!81466)))

(assert (=> bs!39307 (not (= lambda!9736 lambda!9629))))

(declare-fun bs!39308 () Bool)

(assert (= bs!39308 (and b!81901 b!81780)))

(assert (=> bs!39308 (not (= lambda!9736 lambda!9720))))

(assert (=> bs!39308 (not (= lambda!9736 lambda!9719))))

(assert (=> bs!39308 (= (= (h!991 lt!18736) (h!991 lt!18781)) (= lambda!9736 lambda!9718))))

(declare-fun bs!39309 () Bool)

(assert (= bs!39309 (and b!81901 d!55883)))

(assert (=> bs!39309 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9736 lambda!9685))))

(declare-fun bs!39310 () Bool)

(assert (= bs!39310 (and b!81901 b!81837)))

(assert (=> bs!39310 (not (= lambda!9736 lambda!9729))))

(assert (=> bs!39310 (not (= lambda!9736 lambda!9728))))

(assert (=> bs!39310 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9736 lambda!9727))))

(declare-fun bs!39311 () Bool)

(assert (= bs!39311 (and b!81901 b!81852)))

(assert (=> bs!39311 (not (= lambda!9736 lambda!9732))))

(assert (=> bs!39311 (not (= lambda!9736 lambda!9731))))

(assert (=> bs!39311 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9736 lambda!9730))))

(declare-fun bs!39312 () Bool)

(assert (= bs!39312 (and b!81901 d!55861)))

(assert (=> bs!39312 (not (= lambda!9736 lambda!9646))))

(declare-fun bs!39313 () Bool)

(assert (= bs!39313 (and b!81901 b!81537)))

(assert (=> bs!39313 (not (= lambda!9736 lambda!9669))))

(assert (=> bs!39313 (not (= lambda!9736 lambda!9668))))

(assert (=> bs!39313 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9736 lambda!9667))))

(declare-fun bs!39314 () Bool)

(assert (= bs!39314 (and b!81901 b!81587)))

(assert (=> bs!39314 (not (= lambda!9736 lambda!9686))))

(declare-fun bs!39315 () Bool)

(assert (= bs!39315 (and b!81901 b!81496)))

(assert (=> bs!39315 (not (= lambda!9736 lambda!9648))))

(declare-fun bs!39316 () Bool)

(assert (= bs!39316 (and b!81901 d!55889)))

(assert (=> bs!39316 (not (= lambda!9736 lambda!9693))))

(declare-fun bs!39317 () Bool)

(assert (= bs!39317 (and b!81901 b!81705)))

(assert (=> bs!39317 (not (= lambda!9736 lambda!9705))))

(assert (=> bs!39317 (not (= lambda!9736 lambda!9704))))

(assert (=> bs!39317 (= (= (h!991 lt!18736) (h!991 lt!18752)) (= lambda!9736 lambda!9703))))

(declare-fun bs!39318 () Bool)

(assert (= bs!39318 (and b!81901 b!81522)))

(assert (=> bs!39318 (not (= lambda!9736 lambda!9666))))

(assert (=> bs!39318 (not (= lambda!9736 lambda!9665))))

(assert (=> bs!39318 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9736 lambda!9664))))

(declare-fun bs!39319 () Bool)

(assert (= bs!39319 (and b!81901 b!81598)))

(assert (=> bs!39319 (not (= lambda!9736 lambda!9690))))

(assert (=> bs!39319 (not (= lambda!9736 lambda!9689))))

(assert (=> bs!39319 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9736 lambda!9688))))

(declare-fun bs!39320 () Bool)

(assert (= bs!39320 (and b!81901 b!81588)))

(assert (=> bs!39320 (not (= lambda!9736 lambda!9687))))

(declare-fun bs!39321 () Bool)

(assert (= bs!39321 (and b!81901 b!81776)))

(assert (=> bs!39321 (not (= lambda!9736 lambda!9717))))

(assert (=> bs!39321 (not (= lambda!9736 lambda!9716))))

(assert (=> bs!39321 (= (= (h!991 lt!18736) (h!991 lt!18782)) (= lambda!9736 lambda!9715))))

(declare-fun bs!39322 () Bool)

(assert (= bs!39322 (and b!81901 b!81468)))

(assert (=> bs!39322 (not (= lambda!9736 lambda!9630))))

(declare-fun bs!39323 () Bool)

(assert (= bs!39323 (and b!81901 b!81633)))

(assert (=> bs!39323 (not (= lambda!9736 lambda!9696))))

(assert (=> bs!39323 (not (= lambda!9736 lambda!9695))))

(assert (=> bs!39323 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9736 lambda!9694))))

(declare-fun bs!39324 () Bool)

(assert (= bs!39324 (and b!81901 b!81687)))

(assert (=> bs!39324 (not (= lambda!9736 lambda!9699))))

(assert (=> bs!39324 (not (= lambda!9736 lambda!9698))))

(assert (=> bs!39324 (= (= (h!991 lt!18736) (h!991 lt!18730)) (= lambda!9736 lambda!9697))))

(declare-fun bs!39325 () Bool)

(assert (= bs!39325 (and b!81901 b!81810)))

(assert (=> bs!39325 (not (= lambda!9736 lambda!9726))))

(assert (=> bs!39325 (not (= lambda!9736 lambda!9725))))

(assert (=> bs!39325 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9736 lambda!9724))))

(assert (=> b!81901 true))

(declare-fun lambda!9737 () Int)

(assert (=> bs!39295 (not (= lambda!9737 lambda!9663))))

(assert (=> bs!39295 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9737 lambda!9662))))

(assert (=> bs!39295 (not (= lambda!9737 lambda!9661))))

(assert (=> bs!39296 (not (= lambda!9737 lambda!9711))))

(assert (=> bs!39296 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9737 lambda!9710))))

(assert (=> bs!39296 (not (= lambda!9737 lambda!9709))))

(assert (=> bs!39297 (not (= lambda!9737 lambda!9627))))

(assert (=> bs!39298 (not (= lambda!9737 lambda!9647))))

(assert (=> bs!39299 (not (= lambda!9737 lambda!9723))))

(assert (=> bs!39299 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9737 lambda!9722))))

(assert (=> bs!39299 (not (= lambda!9737 lambda!9721))))

(assert (=> bs!39300 (not (= lambda!9737 lambda!9735))))

(assert (=> bs!39300 (= lambda!9737 lambda!9734)))

(assert (=> bs!39300 (not (= lambda!9737 lambda!9733))))

(assert (=> bs!39301 (not (= lambda!9737 lambda!9714))))

(assert (=> bs!39301 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9737 lambda!9713))))

(assert (=> bs!39301 (not (= lambda!9737 lambda!9712))))

(assert (=> bs!39302 (not (= lambda!9737 lambda!9708))))

(assert (=> bs!39302 (= (= (h!991 lt!18736) (h!991 lt!18751)) (= lambda!9737 lambda!9707))))

(assert (=> bs!39302 (not (= lambda!9737 lambda!9706))))

(assert (=> bs!39303 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9737 lambda!9628))))

(assert (=> bs!39304 (not (= lambda!9737 lambda!9678))))

(assert (=> bs!39304 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9737 lambda!9677))))

(assert (=> bs!39304 (not (= lambda!9737 lambda!9676))))

(assert (=> bs!39305 (not (= lambda!9737 lambda!9639))))

(assert (=> bs!39305 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9737 lambda!9638))))

(assert (=> bs!39305 (not (= lambda!9737 lambda!9637))))

(assert (=> bs!39306 (not (= lambda!9737 lambda!9702))))

(assert (=> bs!39306 (= (= (h!991 lt!18736) (h!991 lt!18728)) (= lambda!9737 lambda!9701))))

(assert (=> bs!39306 (not (= lambda!9737 lambda!9700))))

(assert (=> bs!39307 (not (= lambda!9737 lambda!9629))))

(assert (=> bs!39308 (not (= lambda!9737 lambda!9720))))

(assert (=> bs!39308 (= (= (h!991 lt!18736) (h!991 lt!18781)) (= lambda!9737 lambda!9719))))

(assert (=> bs!39308 (not (= lambda!9737 lambda!9718))))

(assert (=> bs!39309 (not (= lambda!9737 lambda!9685))))

(assert (=> b!81901 (not (= lambda!9737 lambda!9736))))

(assert (=> bs!39310 (not (= lambda!9737 lambda!9729))))

(assert (=> bs!39310 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9737 lambda!9728))))

(assert (=> bs!39310 (not (= lambda!9737 lambda!9727))))

(assert (=> bs!39311 (not (= lambda!9737 lambda!9732))))

(assert (=> bs!39311 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9737 lambda!9731))))

(assert (=> bs!39311 (not (= lambda!9737 lambda!9730))))

(assert (=> bs!39312 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9737 lambda!9646))))

(assert (=> bs!39313 (not (= lambda!9737 lambda!9669))))

(assert (=> bs!39313 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9737 lambda!9668))))

(assert (=> bs!39313 (not (= lambda!9737 lambda!9667))))

(assert (=> bs!39314 (not (= lambda!9737 lambda!9686))))

(assert (=> bs!39315 (not (= lambda!9737 lambda!9648))))

(assert (=> bs!39316 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9737 lambda!9693))))

(assert (=> bs!39317 (not (= lambda!9737 lambda!9705))))

(assert (=> bs!39317 (= (= (h!991 lt!18736) (h!991 lt!18752)) (= lambda!9737 lambda!9704))))

(assert (=> bs!39317 (not (= lambda!9737 lambda!9703))))

(assert (=> bs!39318 (not (= lambda!9737 lambda!9666))))

(assert (=> bs!39318 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9737 lambda!9665))))

(assert (=> bs!39318 (not (= lambda!9737 lambda!9664))))

(assert (=> bs!39319 (not (= lambda!9737 lambda!9690))))

(assert (=> bs!39319 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9737 lambda!9689))))

(assert (=> bs!39319 (not (= lambda!9737 lambda!9688))))

(assert (=> bs!39320 (not (= lambda!9737 lambda!9687))))

(assert (=> bs!39321 (not (= lambda!9737 lambda!9717))))

(assert (=> bs!39321 (= (= (h!991 lt!18736) (h!991 lt!18782)) (= lambda!9737 lambda!9716))))

(assert (=> bs!39321 (not (= lambda!9737 lambda!9715))))

(assert (=> bs!39322 (not (= lambda!9737 lambda!9630))))

(assert (=> bs!39323 (not (= lambda!9737 lambda!9696))))

(assert (=> bs!39323 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9737 lambda!9695))))

(assert (=> bs!39323 (not (= lambda!9737 lambda!9694))))

(assert (=> bs!39324 (not (= lambda!9737 lambda!9699))))

(assert (=> bs!39324 (= (= (h!991 lt!18736) (h!991 lt!18730)) (= lambda!9737 lambda!9698))))

(assert (=> bs!39324 (not (= lambda!9737 lambda!9697))))

(assert (=> bs!39325 (not (= lambda!9737 lambda!9726))))

(assert (=> bs!39325 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9737 lambda!9725))))

(assert (=> bs!39325 (not (= lambda!9737 lambda!9724))))

(assert (=> b!81901 true))

(declare-fun lambda!9738 () Int)

(assert (=> bs!39295 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9738 lambda!9663))))

(assert (=> bs!39295 (not (= lambda!9738 lambda!9662))))

(assert (=> bs!39295 (not (= lambda!9738 lambda!9661))))

(assert (=> bs!39296 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9738 lambda!9711))))

(assert (=> bs!39296 (not (= lambda!9738 lambda!9710))))

(assert (=> bs!39296 (not (= lambda!9738 lambda!9709))))

(assert (=> bs!39297 (not (= lambda!9738 lambda!9627))))

(assert (=> bs!39298 (not (= lambda!9738 lambda!9647))))

(assert (=> bs!39299 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9738 lambda!9723))))

(assert (=> bs!39299 (not (= lambda!9738 lambda!9722))))

(assert (=> bs!39299 (not (= lambda!9738 lambda!9721))))

(assert (=> bs!39300 (= lambda!9738 lambda!9735)))

(assert (=> bs!39300 (not (= lambda!9738 lambda!9734))))

(assert (=> bs!39300 (not (= lambda!9738 lambda!9733))))

(assert (=> bs!39301 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9738 lambda!9714))))

(assert (=> bs!39301 (not (= lambda!9738 lambda!9713))))

(assert (=> bs!39301 (not (= lambda!9738 lambda!9712))))

(assert (=> bs!39302 (= (= (h!991 lt!18736) (h!991 lt!18751)) (= lambda!9738 lambda!9708))))

(assert (=> bs!39302 (not (= lambda!9738 lambda!9707))))

(assert (=> bs!39302 (not (= lambda!9738 lambda!9706))))

(assert (=> bs!39303 (not (= lambda!9738 lambda!9628))))

(assert (=> bs!39304 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9738 lambda!9678))))

(assert (=> bs!39304 (not (= lambda!9738 lambda!9677))))

(assert (=> bs!39304 (not (= lambda!9738 lambda!9676))))

(assert (=> bs!39305 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9738 lambda!9639))))

(assert (=> bs!39305 (not (= lambda!9738 lambda!9638))))

(assert (=> bs!39305 (not (= lambda!9738 lambda!9637))))

(assert (=> bs!39306 (= (= (h!991 lt!18736) (h!991 lt!18728)) (= lambda!9738 lambda!9702))))

(assert (=> bs!39306 (not (= lambda!9738 lambda!9701))))

(assert (=> bs!39306 (not (= lambda!9738 lambda!9700))))

(assert (=> bs!39307 (= (= (h!991 lt!18736) (h!991 ls!96)) (= lambda!9738 lambda!9629))))

(assert (=> bs!39308 (= (= (h!991 lt!18736) (h!991 lt!18781)) (= lambda!9738 lambda!9720))))

(assert (=> bs!39308 (not (= lambda!9738 lambda!9719))))

(assert (=> bs!39308 (not (= lambda!9738 lambda!9718))))

(assert (=> bs!39309 (not (= lambda!9738 lambda!9685))))

(assert (=> b!81901 (not (= lambda!9738 lambda!9737))))

(assert (=> b!81901 (not (= lambda!9738 lambda!9736))))

(assert (=> bs!39310 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9738 lambda!9729))))

(assert (=> bs!39310 (not (= lambda!9738 lambda!9728))))

(assert (=> bs!39310 (not (= lambda!9738 lambda!9727))))

(assert (=> bs!39311 (= (= (h!991 lt!18736) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9738 lambda!9732))))

(assert (=> bs!39311 (not (= lambda!9738 lambda!9731))))

(assert (=> bs!39311 (not (= lambda!9738 lambda!9730))))

(assert (=> bs!39312 (not (= lambda!9738 lambda!9646))))

(assert (=> bs!39313 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9738 lambda!9669))))

(assert (=> bs!39313 (not (= lambda!9738 lambda!9668))))

(assert (=> bs!39313 (not (= lambda!9738 lambda!9667))))

(assert (=> bs!39314 (not (= lambda!9738 lambda!9686))))

(assert (=> bs!39315 (not (= lambda!9738 lambda!9648))))

(assert (=> bs!39316 (not (= lambda!9738 lambda!9693))))

(assert (=> bs!39317 (= (= (h!991 lt!18736) (h!991 lt!18752)) (= lambda!9738 lambda!9705))))

(assert (=> bs!39317 (not (= lambda!9738 lambda!9704))))

(assert (=> bs!39317 (not (= lambda!9738 lambda!9703))))

(assert (=> bs!39318 (= (= (h!991 lt!18736) (h!991 more!5)) (= lambda!9738 lambda!9666))))

(assert (=> bs!39318 (not (= lambda!9738 lambda!9665))))

(assert (=> bs!39318 (not (= lambda!9738 lambda!9664))))

(assert (=> bs!39319 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9738 lambda!9690))))

(assert (=> bs!39319 (not (= lambda!9738 lambda!9689))))

(assert (=> bs!39319 (not (= lambda!9738 lambda!9688))))

(assert (=> bs!39320 (not (= lambda!9738 lambda!9687))))

(assert (=> bs!39321 (= (= (h!991 lt!18736) (h!991 lt!18782)) (= lambda!9738 lambda!9717))))

(assert (=> bs!39321 (not (= lambda!9738 lambda!9716))))

(assert (=> bs!39321 (not (= lambda!9738 lambda!9715))))

(assert (=> bs!39322 (not (= lambda!9738 lambda!9630))))

(assert (=> bs!39323 (= (= (h!991 lt!18736) (h!991 less!5)) (= lambda!9738 lambda!9696))))

(assert (=> bs!39323 (not (= lambda!9738 lambda!9695))))

(assert (=> bs!39323 (not (= lambda!9738 lambda!9694))))

(assert (=> bs!39324 (= (= (h!991 lt!18736) (h!991 lt!18730)) (= lambda!9738 lambda!9699))))

(assert (=> bs!39324 (not (= lambda!9738 lambda!9698))))

(assert (=> bs!39324 (not (= lambda!9738 lambda!9697))))

(assert (=> bs!39325 (= (= (h!991 lt!18736) (h!991 lt!18771)) (= lambda!9738 lambda!9726))))

(assert (=> bs!39325 (not (= lambda!9738 lambda!9725))))

(assert (=> bs!39325 (not (= lambda!9738 lambda!9724))))

(assert (=> b!81901 true))

(declare-fun b!81898 () Bool)

(declare-fun e!44408 () List!665)

(assert (=> b!81898 (= e!44408 Nil!624)))

(declare-fun d!56033 () Bool)

(declare-fun c!20615 () Bool)

(assert (=> d!56033 (= c!20615 (is-Nil!624 lt!18736))))

(assert (=> d!56033 (= (quickSort!0 lt!18736) e!44408)))

(declare-fun b!81900 () Bool)

(declare-fun e!44409 () List!665)

(assert (=> b!81900 (= e!44409 lt!18736)))

(declare-fun b!81899 () Bool)

(assert (=> b!81899 (= e!44408 e!44409)))

(declare-fun c!20616 () Bool)

(assert (=> b!81899 (= c!20616 (and (is-Cons!622 lt!18736) (is-Nil!624 (t!47838 lt!18736))))))

(assert (=> b!81901 (= e!44409 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18736) lambda!9736)) (Cons!622 (h!991 lt!18736) (filter!18 (t!47838 lt!18736) lambda!9737))) (quickSort!0 (filter!18 (t!47838 lt!18736) lambda!9738))))))

(assert (= (and b!81899 c!20616) b!81900))

(assert (= (and b!81899 (not c!20616)) b!81901))

(assert (= (and d!56033 c!20615) b!81898))

(assert (= (and d!56033 (not c!20615)) b!81899))

(declare-fun m!77196 () Bool)

(assert (=> b!81901 m!77196))

(declare-fun m!77198 () Bool)

(assert (=> b!81901 m!77198))

(assert (=> b!81901 m!77196))

(declare-fun m!77200 () Bool)

(assert (=> b!81901 m!77200))

(declare-fun m!77202 () Bool)

(assert (=> b!81901 m!77202))

(declare-fun m!77204 () Bool)

(assert (=> b!81901 m!77204))

(assert (=> b!81901 m!77200))

(assert (=> b!81901 m!77204))

(declare-fun m!77206 () Bool)

(assert (=> b!81901 m!77206))

(assert (=> b!81901 m!77202))

(assert (=> b!81901 m!77198))

(declare-fun m!77208 () Bool)

(assert (=> b!81901 m!77208))

(assert (=> b!81522 d!56033))

(declare-fun d!56035 () Bool)

(declare-fun res!41888 () Bool)

(declare-fun e!44410 () Bool)

(assert (=> d!56035 (=> res!41888 e!44410)))

(assert (=> d!56035 (= res!41888 (is-Nil!624 (++!73 (quickSort!0 less!5) equal!10)))))

(assert (=> d!56035 (= (forall!20 (++!73 (quickSort!0 less!5) equal!10) lambda!9630) e!44410)))

(declare-fun b!81902 () Bool)

(declare-fun e!44411 () Bool)

(assert (=> b!81902 (= e!44410 e!44411)))

(declare-fun res!41889 () Bool)

(assert (=> b!81902 (=> (not res!41889) (not e!44411))))

(assert (=> b!81902 (= res!41889 (dynLambda!984 lambda!9630 (h!991 (++!73 (quickSort!0 less!5) equal!10))))))

(declare-fun b!81903 () Bool)

(assert (=> b!81903 (= e!44411 (forall!20 (t!47838 (++!73 (quickSort!0 less!5) equal!10)) lambda!9630))))

(assert (= (and d!56035 (not res!41888)) b!81902))

(assert (= (and b!81902 res!41889) b!81903))

(declare-fun b_lambda!16141 () Bool)

(assert (=> (not b_lambda!16141) (not b!81902)))

(declare-fun m!77210 () Bool)

(assert (=> b!81902 m!77210))

(declare-fun m!77212 () Bool)

(assert (=> b!81903 m!77212))

(assert (=> b!81615 d!56035))

(declare-fun d!56037 () Bool)

(declare-fun res!41890 () Bool)

(declare-fun e!44412 () Bool)

(assert (=> d!56037 (=> res!41890 e!44412)))

(assert (=> d!56037 (= res!41890 (is-Nil!624 less!5))))

(assert (=> d!56037 (= (forall!20 less!5 lambda!9686) e!44412)))

(declare-fun b!81904 () Bool)

(declare-fun e!44413 () Bool)

(assert (=> b!81904 (= e!44412 e!44413)))

(declare-fun res!41891 () Bool)

(assert (=> b!81904 (=> (not res!41891) (not e!44413))))

(assert (=> b!81904 (= res!41891 (dynLambda!984 lambda!9686 (h!991 less!5)))))

(declare-fun b!81905 () Bool)

(assert (=> b!81905 (= e!44413 (forall!20 (t!47838 less!5) lambda!9686))))

(assert (= (and d!56037 (not res!41890)) b!81904))

(assert (= (and b!81904 res!41891) b!81905))

(declare-fun b_lambda!16143 () Bool)

(assert (=> (not b_lambda!16143) (not b!81904)))

(declare-fun m!77214 () Bool)

(assert (=> b!81904 m!77214))

(declare-fun m!77216 () Bool)

(assert (=> b!81905 m!77216))

(assert (=> b!81587 d!56037))

(declare-fun bs!39326 () Bool)

(declare-fun d!56039 () Bool)

(assert (= bs!39326 (and d!56039 b!81517)))

(declare-fun lambda!9739 () Int)

(assert (=> bs!39326 (not (= lambda!9739 lambda!9663))))

(assert (=> bs!39326 (not (= lambda!9739 lambda!9662))))

(assert (=> bs!39326 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9739 lambda!9661))))

(declare-fun bs!39327 () Bool)

(assert (= bs!39327 (and d!56039 b!81734)))

(assert (=> bs!39327 (not (= lambda!9739 lambda!9711))))

(assert (=> bs!39327 (not (= lambda!9739 lambda!9710))))

(assert (=> bs!39327 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9739 lambda!9709))))

(declare-fun bs!39328 () Bool)

(assert (= bs!39328 (and d!56039 b!81462)))

(assert (=> bs!39328 (= lambda!9739 lambda!9627)))

(declare-fun bs!39329 () Bool)

(assert (= bs!39329 (and d!56039 b!81495)))

(assert (=> bs!39329 (not (= lambda!9739 lambda!9647))))

(declare-fun bs!39330 () Bool)

(assert (= bs!39330 (and d!56039 b!81804)))

(assert (=> bs!39330 (not (= lambda!9739 lambda!9723))))

(assert (=> bs!39330 (not (= lambda!9739 lambda!9722))))

(assert (=> bs!39330 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9739 lambda!9721))))

(declare-fun bs!39331 () Bool)

(assert (= bs!39331 (and d!56039 b!81885)))

(assert (=> bs!39331 (not (= lambda!9739 lambda!9735))))

(assert (=> bs!39331 (not (= lambda!9739 lambda!9734))))

(assert (=> bs!39331 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9739 lambda!9733))))

(declare-fun bs!39332 () Bool)

(assert (= bs!39332 (and d!56039 b!81742)))

(assert (=> bs!39332 (not (= lambda!9739 lambda!9714))))

(assert (=> bs!39332 (not (= lambda!9739 lambda!9713))))

(assert (=> bs!39332 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9739 lambda!9712))))

(declare-fun bs!39333 () Bool)

(assert (= bs!39333 (and d!56039 b!81709)))

(assert (=> bs!39333 (not (= lambda!9739 lambda!9708))))

(assert (=> bs!39333 (not (= lambda!9739 lambda!9707))))

(assert (=> bs!39333 (= (= (h!991 ls!96) (h!991 lt!18751)) (= lambda!9739 lambda!9706))))

(declare-fun bs!39334 () Bool)

(assert (= bs!39334 (and d!56039 b!81460)))

(assert (=> bs!39334 (not (= lambda!9739 lambda!9628))))

(declare-fun bs!39335 () Bool)

(assert (= bs!39335 (and d!56039 b!81560)))

(assert (=> bs!39335 (not (= lambda!9739 lambda!9678))))

(assert (=> bs!39335 (not (= lambda!9739 lambda!9677))))

(assert (=> bs!39335 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9739 lambda!9676))))

(declare-fun bs!39336 () Bool)

(assert (= bs!39336 (and d!56039 b!81490)))

(assert (=> bs!39336 (not (= lambda!9739 lambda!9639))))

(assert (=> bs!39336 (not (= lambda!9739 lambda!9638))))

(assert (=> bs!39336 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9739 lambda!9637))))

(declare-fun bs!39337 () Bool)

(assert (= bs!39337 (and d!56039 b!81691)))

(assert (=> bs!39337 (not (= lambda!9739 lambda!9702))))

(assert (=> bs!39337 (not (= lambda!9739 lambda!9701))))

(assert (=> bs!39337 (= (= (h!991 ls!96) (h!991 lt!18728)) (= lambda!9739 lambda!9700))))

(declare-fun bs!39338 () Bool)

(assert (= bs!39338 (and d!56039 b!81466)))

(assert (=> bs!39338 (not (= lambda!9739 lambda!9629))))

(declare-fun bs!39339 () Bool)

(assert (= bs!39339 (and d!56039 b!81780)))

(assert (=> bs!39339 (not (= lambda!9739 lambda!9720))))

(assert (=> bs!39339 (not (= lambda!9739 lambda!9719))))

(assert (=> bs!39339 (= (= (h!991 ls!96) (h!991 lt!18781)) (= lambda!9739 lambda!9718))))

(declare-fun bs!39340 () Bool)

(assert (= bs!39340 (and d!56039 d!55883)))

(assert (=> bs!39340 (= lambda!9739 lambda!9685)))

(declare-fun bs!39341 () Bool)

(assert (= bs!39341 (and d!56039 b!81901)))

(assert (=> bs!39341 (not (= lambda!9739 lambda!9738))))

(assert (=> bs!39341 (not (= lambda!9739 lambda!9737))))

(assert (=> bs!39341 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9739 lambda!9736))))

(declare-fun bs!39342 () Bool)

(assert (= bs!39342 (and d!56039 b!81837)))

(assert (=> bs!39342 (not (= lambda!9739 lambda!9729))))

(assert (=> bs!39342 (not (= lambda!9739 lambda!9728))))

(assert (=> bs!39342 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9739 lambda!9727))))

(declare-fun bs!39343 () Bool)

(assert (= bs!39343 (and d!56039 b!81852)))

(assert (=> bs!39343 (not (= lambda!9739 lambda!9732))))

(assert (=> bs!39343 (not (= lambda!9739 lambda!9731))))

(assert (=> bs!39343 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9739 lambda!9730))))

(declare-fun bs!39344 () Bool)

(assert (= bs!39344 (and d!56039 d!55861)))

(assert (=> bs!39344 (not (= lambda!9739 lambda!9646))))

(declare-fun bs!39345 () Bool)

(assert (= bs!39345 (and d!56039 b!81537)))

(assert (=> bs!39345 (not (= lambda!9739 lambda!9669))))

(assert (=> bs!39345 (not (= lambda!9739 lambda!9668))))

(assert (=> bs!39345 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9739 lambda!9667))))

(declare-fun bs!39346 () Bool)

(assert (= bs!39346 (and d!56039 b!81587)))

(assert (=> bs!39346 (not (= lambda!9739 lambda!9686))))

(declare-fun bs!39347 () Bool)

(assert (= bs!39347 (and d!56039 b!81496)))

(assert (=> bs!39347 (not (= lambda!9739 lambda!9648))))

(declare-fun bs!39348 () Bool)

(assert (= bs!39348 (and d!56039 d!55889)))

(assert (=> bs!39348 (not (= lambda!9739 lambda!9693))))

(declare-fun bs!39349 () Bool)

(assert (= bs!39349 (and d!56039 b!81705)))

(assert (=> bs!39349 (not (= lambda!9739 lambda!9705))))

(assert (=> bs!39349 (not (= lambda!9739 lambda!9704))))

(assert (=> bs!39349 (= (= (h!991 ls!96) (h!991 lt!18752)) (= lambda!9739 lambda!9703))))

(declare-fun bs!39350 () Bool)

(assert (= bs!39350 (and d!56039 b!81522)))

(assert (=> bs!39350 (not (= lambda!9739 lambda!9666))))

(assert (=> bs!39350 (not (= lambda!9739 lambda!9665))))

(assert (=> bs!39350 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9739 lambda!9664))))

(declare-fun bs!39351 () Bool)

(assert (= bs!39351 (and d!56039 b!81598)))

(assert (=> bs!39351 (not (= lambda!9739 lambda!9690))))

(assert (=> bs!39351 (not (= lambda!9739 lambda!9689))))

(assert (=> bs!39351 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9739 lambda!9688))))

(declare-fun bs!39352 () Bool)

(assert (= bs!39352 (and d!56039 b!81588)))

(assert (=> bs!39352 (not (= lambda!9739 lambda!9687))))

(declare-fun bs!39353 () Bool)

(assert (= bs!39353 (and d!56039 b!81776)))

(assert (=> bs!39353 (not (= lambda!9739 lambda!9717))))

(assert (=> bs!39353 (not (= lambda!9739 lambda!9716))))

(assert (=> bs!39353 (= (= (h!991 ls!96) (h!991 lt!18782)) (= lambda!9739 lambda!9715))))

(declare-fun bs!39354 () Bool)

(assert (= bs!39354 (and d!56039 b!81468)))

(assert (=> bs!39354 (not (= lambda!9739 lambda!9630))))

(declare-fun bs!39355 () Bool)

(assert (= bs!39355 (and d!56039 b!81633)))

(assert (=> bs!39355 (not (= lambda!9739 lambda!9696))))

(assert (=> bs!39355 (not (= lambda!9739 lambda!9695))))

(assert (=> bs!39355 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9739 lambda!9694))))

(declare-fun bs!39356 () Bool)

(assert (= bs!39356 (and d!56039 b!81687)))

(assert (=> bs!39356 (not (= lambda!9739 lambda!9699))))

(assert (=> bs!39356 (not (= lambda!9739 lambda!9698))))

(assert (=> bs!39356 (= (= (h!991 ls!96) (h!991 lt!18730)) (= lambda!9739 lambda!9697))))

(declare-fun bs!39357 () Bool)

(assert (= bs!39357 (and d!56039 b!81810)))

(assert (=> bs!39357 (not (= lambda!9739 lambda!9726))))

(assert (=> bs!39357 (not (= lambda!9739 lambda!9725))))

(assert (=> bs!39357 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9739 lambda!9724))))

(assert (=> d!56039 true))

(declare-fun bs!39358 () Bool)

(declare-fun b!81906 () Bool)

(assert (= bs!39358 (and b!81906 b!81517)))

(declare-fun lambda!9740 () Int)

(assert (=> bs!39358 (not (= lambda!9740 lambda!9663))))

(assert (=> bs!39358 (not (= lambda!9740 lambda!9662))))

(assert (=> bs!39358 (not (= lambda!9740 lambda!9661))))

(declare-fun bs!39359 () Bool)

(assert (= bs!39359 (and b!81906 b!81734)))

(assert (=> bs!39359 (not (= lambda!9740 lambda!9711))))

(assert (=> bs!39359 (not (= lambda!9740 lambda!9710))))

(assert (=> bs!39359 (not (= lambda!9740 lambda!9709))))

(declare-fun bs!39360 () Bool)

(assert (= bs!39360 (and b!81906 b!81462)))

(assert (=> bs!39360 (not (= lambda!9740 lambda!9627))))

(declare-fun bs!39361 () Bool)

(assert (= bs!39361 (and b!81906 b!81495)))

(assert (=> bs!39361 (= lambda!9740 lambda!9647)))

(declare-fun bs!39362 () Bool)

(assert (= bs!39362 (and b!81906 b!81804)))

(assert (=> bs!39362 (not (= lambda!9740 lambda!9723))))

(assert (=> bs!39362 (not (= lambda!9740 lambda!9722))))

(assert (=> bs!39362 (not (= lambda!9740 lambda!9721))))

(declare-fun bs!39363 () Bool)

(assert (= bs!39363 (and b!81906 b!81885)))

(assert (=> bs!39363 (not (= lambda!9740 lambda!9735))))

(assert (=> bs!39363 (not (= lambda!9740 lambda!9734))))

(assert (=> bs!39363 (not (= lambda!9740 lambda!9733))))

(declare-fun bs!39364 () Bool)

(assert (= bs!39364 (and b!81906 b!81742)))

(assert (=> bs!39364 (not (= lambda!9740 lambda!9714))))

(assert (=> bs!39364 (not (= lambda!9740 lambda!9713))))

(assert (=> bs!39364 (not (= lambda!9740 lambda!9712))))

(declare-fun bs!39365 () Bool)

(assert (= bs!39365 (and b!81906 b!81709)))

(assert (=> bs!39365 (not (= lambda!9740 lambda!9708))))

(assert (=> bs!39365 (not (= lambda!9740 lambda!9707))))

(assert (=> bs!39365 (not (= lambda!9740 lambda!9706))))

(declare-fun bs!39366 () Bool)

(assert (= bs!39366 (and b!81906 b!81460)))

(assert (=> bs!39366 (not (= lambda!9740 lambda!9628))))

(declare-fun bs!39367 () Bool)

(assert (= bs!39367 (and b!81906 b!81560)))

(assert (=> bs!39367 (not (= lambda!9740 lambda!9678))))

(assert (=> bs!39367 (not (= lambda!9740 lambda!9677))))

(assert (=> bs!39367 (not (= lambda!9740 lambda!9676))))

(declare-fun bs!39368 () Bool)

(assert (= bs!39368 (and b!81906 b!81490)))

(assert (=> bs!39368 (not (= lambda!9740 lambda!9639))))

(assert (=> bs!39368 (not (= lambda!9740 lambda!9638))))

(assert (=> bs!39368 (not (= lambda!9740 lambda!9637))))

(declare-fun bs!39369 () Bool)

(assert (= bs!39369 (and b!81906 b!81691)))

(assert (=> bs!39369 (not (= lambda!9740 lambda!9702))))

(assert (=> bs!39369 (not (= lambda!9740 lambda!9701))))

(assert (=> bs!39369 (not (= lambda!9740 lambda!9700))))

(declare-fun bs!39370 () Bool)

(assert (= bs!39370 (and b!81906 b!81466)))

(assert (=> bs!39370 (not (= lambda!9740 lambda!9629))))

(declare-fun bs!39371 () Bool)

(assert (= bs!39371 (and b!81906 d!56039)))

(assert (=> bs!39371 (not (= lambda!9740 lambda!9739))))

(declare-fun bs!39372 () Bool)

(assert (= bs!39372 (and b!81906 b!81780)))

(assert (=> bs!39372 (not (= lambda!9740 lambda!9720))))

(assert (=> bs!39372 (not (= lambda!9740 lambda!9719))))

(assert (=> bs!39372 (not (= lambda!9740 lambda!9718))))

(declare-fun bs!39373 () Bool)

(assert (= bs!39373 (and b!81906 d!55883)))

(assert (=> bs!39373 (not (= lambda!9740 lambda!9685))))

(declare-fun bs!39374 () Bool)

(assert (= bs!39374 (and b!81906 b!81901)))

(assert (=> bs!39374 (not (= lambda!9740 lambda!9738))))

(assert (=> bs!39374 (not (= lambda!9740 lambda!9737))))

(assert (=> bs!39374 (not (= lambda!9740 lambda!9736))))

(declare-fun bs!39375 () Bool)

(assert (= bs!39375 (and b!81906 b!81837)))

(assert (=> bs!39375 (not (= lambda!9740 lambda!9729))))

(assert (=> bs!39375 (not (= lambda!9740 lambda!9728))))

(assert (=> bs!39375 (not (= lambda!9740 lambda!9727))))

(declare-fun bs!39376 () Bool)

(assert (= bs!39376 (and b!81906 b!81852)))

(assert (=> bs!39376 (not (= lambda!9740 lambda!9732))))

(assert (=> bs!39376 (not (= lambda!9740 lambda!9731))))

(assert (=> bs!39376 (not (= lambda!9740 lambda!9730))))

(declare-fun bs!39377 () Bool)

(assert (= bs!39377 (and b!81906 d!55861)))

(assert (=> bs!39377 (not (= lambda!9740 lambda!9646))))

(declare-fun bs!39378 () Bool)

(assert (= bs!39378 (and b!81906 b!81537)))

(assert (=> bs!39378 (not (= lambda!9740 lambda!9669))))

(assert (=> bs!39378 (not (= lambda!9740 lambda!9668))))

(assert (=> bs!39378 (not (= lambda!9740 lambda!9667))))

(declare-fun bs!39379 () Bool)

(assert (= bs!39379 (and b!81906 b!81587)))

(assert (=> bs!39379 (= lambda!9740 lambda!9686)))

(declare-fun bs!39380 () Bool)

(assert (= bs!39380 (and b!81906 b!81496)))

(assert (=> bs!39380 (= lambda!9740 lambda!9648)))

(declare-fun bs!39381 () Bool)

(assert (= bs!39381 (and b!81906 d!55889)))

(assert (=> bs!39381 (not (= lambda!9740 lambda!9693))))

(declare-fun bs!39382 () Bool)

(assert (= bs!39382 (and b!81906 b!81705)))

(assert (=> bs!39382 (not (= lambda!9740 lambda!9705))))

(assert (=> bs!39382 (not (= lambda!9740 lambda!9704))))

(assert (=> bs!39382 (not (= lambda!9740 lambda!9703))))

(declare-fun bs!39383 () Bool)

(assert (= bs!39383 (and b!81906 b!81522)))

(assert (=> bs!39383 (not (= lambda!9740 lambda!9666))))

(assert (=> bs!39383 (not (= lambda!9740 lambda!9665))))

(assert (=> bs!39383 (not (= lambda!9740 lambda!9664))))

(declare-fun bs!39384 () Bool)

(assert (= bs!39384 (and b!81906 b!81598)))

(assert (=> bs!39384 (not (= lambda!9740 lambda!9690))))

(assert (=> bs!39384 (not (= lambda!9740 lambda!9689))))

(assert (=> bs!39384 (not (= lambda!9740 lambda!9688))))

(declare-fun bs!39385 () Bool)

(assert (= bs!39385 (and b!81906 b!81588)))

(assert (=> bs!39385 (= lambda!9740 lambda!9687)))

(declare-fun bs!39386 () Bool)

(assert (= bs!39386 (and b!81906 b!81776)))

(assert (=> bs!39386 (not (= lambda!9740 lambda!9717))))

(assert (=> bs!39386 (not (= lambda!9740 lambda!9716))))

(assert (=> bs!39386 (not (= lambda!9740 lambda!9715))))

(declare-fun bs!39387 () Bool)

(assert (= bs!39387 (and b!81906 b!81468)))

(assert (=> bs!39387 (= lambda!9740 lambda!9630)))

(declare-fun bs!39388 () Bool)

(assert (= bs!39388 (and b!81906 b!81633)))

(assert (=> bs!39388 (not (= lambda!9740 lambda!9696))))

(assert (=> bs!39388 (not (= lambda!9740 lambda!9695))))

(assert (=> bs!39388 (not (= lambda!9740 lambda!9694))))

(declare-fun bs!39389 () Bool)

(assert (= bs!39389 (and b!81906 b!81687)))

(assert (=> bs!39389 (not (= lambda!9740 lambda!9699))))

(assert (=> bs!39389 (not (= lambda!9740 lambda!9698))))

(assert (=> bs!39389 (not (= lambda!9740 lambda!9697))))

(declare-fun bs!39390 () Bool)

(assert (= bs!39390 (and b!81906 b!81810)))

(assert (=> bs!39390 (not (= lambda!9740 lambda!9726))))

(assert (=> bs!39390 (not (= lambda!9740 lambda!9725))))

(assert (=> bs!39390 (not (= lambda!9740 lambda!9724))))

(assert (=> b!81906 true))

(declare-fun bs!39391 () Bool)

(declare-fun b!81907 () Bool)

(assert (= bs!39391 (and b!81907 b!81517)))

(declare-fun lambda!9741 () Int)

(assert (=> bs!39391 (not (= lambda!9741 lambda!9663))))

(assert (=> bs!39391 (not (= lambda!9741 lambda!9662))))

(assert (=> bs!39391 (not (= lambda!9741 lambda!9661))))

(declare-fun bs!39392 () Bool)

(assert (= bs!39392 (and b!81907 b!81734)))

(assert (=> bs!39392 (not (= lambda!9741 lambda!9711))))

(assert (=> bs!39392 (not (= lambda!9741 lambda!9710))))

(assert (=> bs!39392 (not (= lambda!9741 lambda!9709))))

(declare-fun bs!39393 () Bool)

(assert (= bs!39393 (and b!81907 b!81462)))

(assert (=> bs!39393 (not (= lambda!9741 lambda!9627))))

(declare-fun bs!39394 () Bool)

(assert (= bs!39394 (and b!81907 b!81495)))

(assert (=> bs!39394 (= lambda!9741 lambda!9647)))

(declare-fun bs!39395 () Bool)

(assert (= bs!39395 (and b!81907 b!81804)))

(assert (=> bs!39395 (not (= lambda!9741 lambda!9723))))

(assert (=> bs!39395 (not (= lambda!9741 lambda!9722))))

(assert (=> bs!39395 (not (= lambda!9741 lambda!9721))))

(declare-fun bs!39396 () Bool)

(assert (= bs!39396 (and b!81907 b!81885)))

(assert (=> bs!39396 (not (= lambda!9741 lambda!9735))))

(assert (=> bs!39396 (not (= lambda!9741 lambda!9734))))

(assert (=> bs!39396 (not (= lambda!9741 lambda!9733))))

(declare-fun bs!39397 () Bool)

(assert (= bs!39397 (and b!81907 b!81742)))

(assert (=> bs!39397 (not (= lambda!9741 lambda!9714))))

(assert (=> bs!39397 (not (= lambda!9741 lambda!9713))))

(assert (=> bs!39397 (not (= lambda!9741 lambda!9712))))

(declare-fun bs!39398 () Bool)

(assert (= bs!39398 (and b!81907 b!81709)))

(assert (=> bs!39398 (not (= lambda!9741 lambda!9708))))

(assert (=> bs!39398 (not (= lambda!9741 lambda!9707))))

(assert (=> bs!39398 (not (= lambda!9741 lambda!9706))))

(declare-fun bs!39399 () Bool)

(assert (= bs!39399 (and b!81907 b!81460)))

(assert (=> bs!39399 (not (= lambda!9741 lambda!9628))))

(declare-fun bs!39400 () Bool)

(assert (= bs!39400 (and b!81907 b!81560)))

(assert (=> bs!39400 (not (= lambda!9741 lambda!9678))))

(assert (=> bs!39400 (not (= lambda!9741 lambda!9677))))

(assert (=> bs!39400 (not (= lambda!9741 lambda!9676))))

(declare-fun bs!39401 () Bool)

(assert (= bs!39401 (and b!81907 b!81906)))

(assert (=> bs!39401 (= lambda!9741 lambda!9740)))

(declare-fun bs!39402 () Bool)

(assert (= bs!39402 (and b!81907 b!81490)))

(assert (=> bs!39402 (not (= lambda!9741 lambda!9639))))

(assert (=> bs!39402 (not (= lambda!9741 lambda!9638))))

(assert (=> bs!39402 (not (= lambda!9741 lambda!9637))))

(declare-fun bs!39403 () Bool)

(assert (= bs!39403 (and b!81907 b!81691)))

(assert (=> bs!39403 (not (= lambda!9741 lambda!9702))))

(assert (=> bs!39403 (not (= lambda!9741 lambda!9701))))

(assert (=> bs!39403 (not (= lambda!9741 lambda!9700))))

(declare-fun bs!39404 () Bool)

(assert (= bs!39404 (and b!81907 b!81466)))

(assert (=> bs!39404 (not (= lambda!9741 lambda!9629))))

(declare-fun bs!39405 () Bool)

(assert (= bs!39405 (and b!81907 d!56039)))

(assert (=> bs!39405 (not (= lambda!9741 lambda!9739))))

(declare-fun bs!39406 () Bool)

(assert (= bs!39406 (and b!81907 b!81780)))

(assert (=> bs!39406 (not (= lambda!9741 lambda!9720))))

(assert (=> bs!39406 (not (= lambda!9741 lambda!9719))))

(assert (=> bs!39406 (not (= lambda!9741 lambda!9718))))

(declare-fun bs!39407 () Bool)

(assert (= bs!39407 (and b!81907 d!55883)))

(assert (=> bs!39407 (not (= lambda!9741 lambda!9685))))

(declare-fun bs!39408 () Bool)

(assert (= bs!39408 (and b!81907 b!81901)))

(assert (=> bs!39408 (not (= lambda!9741 lambda!9738))))

(assert (=> bs!39408 (not (= lambda!9741 lambda!9737))))

(assert (=> bs!39408 (not (= lambda!9741 lambda!9736))))

(declare-fun bs!39409 () Bool)

(assert (= bs!39409 (and b!81907 b!81837)))

(assert (=> bs!39409 (not (= lambda!9741 lambda!9729))))

(assert (=> bs!39409 (not (= lambda!9741 lambda!9728))))

(assert (=> bs!39409 (not (= lambda!9741 lambda!9727))))

(declare-fun bs!39410 () Bool)

(assert (= bs!39410 (and b!81907 b!81852)))

(assert (=> bs!39410 (not (= lambda!9741 lambda!9732))))

(assert (=> bs!39410 (not (= lambda!9741 lambda!9731))))

(assert (=> bs!39410 (not (= lambda!9741 lambda!9730))))

(declare-fun bs!39411 () Bool)

(assert (= bs!39411 (and b!81907 d!55861)))

(assert (=> bs!39411 (not (= lambda!9741 lambda!9646))))

(declare-fun bs!39412 () Bool)

(assert (= bs!39412 (and b!81907 b!81537)))

(assert (=> bs!39412 (not (= lambda!9741 lambda!9669))))

(assert (=> bs!39412 (not (= lambda!9741 lambda!9668))))

(assert (=> bs!39412 (not (= lambda!9741 lambda!9667))))

(declare-fun bs!39413 () Bool)

(assert (= bs!39413 (and b!81907 b!81587)))

(assert (=> bs!39413 (= lambda!9741 lambda!9686)))

(declare-fun bs!39414 () Bool)

(assert (= bs!39414 (and b!81907 b!81496)))

(assert (=> bs!39414 (= lambda!9741 lambda!9648)))

(declare-fun bs!39415 () Bool)

(assert (= bs!39415 (and b!81907 d!55889)))

(assert (=> bs!39415 (not (= lambda!9741 lambda!9693))))

(declare-fun bs!39416 () Bool)

(assert (= bs!39416 (and b!81907 b!81705)))

(assert (=> bs!39416 (not (= lambda!9741 lambda!9705))))

(assert (=> bs!39416 (not (= lambda!9741 lambda!9704))))

(assert (=> bs!39416 (not (= lambda!9741 lambda!9703))))

(declare-fun bs!39417 () Bool)

(assert (= bs!39417 (and b!81907 b!81522)))

(assert (=> bs!39417 (not (= lambda!9741 lambda!9666))))

(assert (=> bs!39417 (not (= lambda!9741 lambda!9665))))

(assert (=> bs!39417 (not (= lambda!9741 lambda!9664))))

(declare-fun bs!39418 () Bool)

(assert (= bs!39418 (and b!81907 b!81598)))

(assert (=> bs!39418 (not (= lambda!9741 lambda!9690))))

(assert (=> bs!39418 (not (= lambda!9741 lambda!9689))))

(assert (=> bs!39418 (not (= lambda!9741 lambda!9688))))

(declare-fun bs!39419 () Bool)

(assert (= bs!39419 (and b!81907 b!81588)))

(assert (=> bs!39419 (= lambda!9741 lambda!9687)))

(declare-fun bs!39420 () Bool)

(assert (= bs!39420 (and b!81907 b!81776)))

(assert (=> bs!39420 (not (= lambda!9741 lambda!9717))))

(assert (=> bs!39420 (not (= lambda!9741 lambda!9716))))

(assert (=> bs!39420 (not (= lambda!9741 lambda!9715))))

(declare-fun bs!39421 () Bool)

(assert (= bs!39421 (and b!81907 b!81468)))

(assert (=> bs!39421 (= lambda!9741 lambda!9630)))

(declare-fun bs!39422 () Bool)

(assert (= bs!39422 (and b!81907 b!81633)))

(assert (=> bs!39422 (not (= lambda!9741 lambda!9696))))

(assert (=> bs!39422 (not (= lambda!9741 lambda!9695))))

(assert (=> bs!39422 (not (= lambda!9741 lambda!9694))))

(declare-fun bs!39423 () Bool)

(assert (= bs!39423 (and b!81907 b!81687)))

(assert (=> bs!39423 (not (= lambda!9741 lambda!9699))))

(assert (=> bs!39423 (not (= lambda!9741 lambda!9698))))

(assert (=> bs!39423 (not (= lambda!9741 lambda!9697))))

(declare-fun bs!39424 () Bool)

(assert (= bs!39424 (and b!81907 b!81810)))

(assert (=> bs!39424 (not (= lambda!9741 lambda!9726))))

(assert (=> bs!39424 (not (= lambda!9741 lambda!9725))))

(assert (=> bs!39424 (not (= lambda!9741 lambda!9724))))

(assert (=> b!81907 true))

(declare-fun e!44414 () Bool)

(assert (=> d!56039 e!44414))

(declare-fun c!20617 () Bool)

(assert (=> d!56039 (= c!20617 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!56039 (forall!20 (t!47838 less!5) lambda!9739)))

(assert (=> d!56039 (= (forall_lt_implies_le!0 (t!47838 less!5) (h!991 ls!96)) true)))

(assert (=> b!81906 (= e!44414 (forall!20 (t!47838 less!5) lambda!9740))))

(declare-fun lt!18853 () Bool)

(assert (=> b!81906 (= lt!18853 (forall_lt_implies_le!0 (t!47838 (t!47838 less!5)) (h!991 ls!96)))))

(assert (=> b!81907 (= e!44414 (forall!20 (t!47838 less!5) lambda!9741))))

(assert (= (and d!56039 c!20617) b!81906))

(assert (= (and d!56039 (not c!20617)) b!81907))

(declare-fun m!77218 () Bool)

(assert (=> d!56039 m!77218))

(declare-fun m!77220 () Bool)

(assert (=> b!81906 m!77220))

(declare-fun m!77222 () Bool)

(assert (=> b!81906 m!77222))

(declare-fun m!77224 () Bool)

(assert (=> b!81907 m!77224))

(assert (=> b!81587 d!56039))

(declare-fun d!56041 () Bool)

(declare-fun res!41892 () Bool)

(declare-fun e!44415 () Bool)

(assert (=> d!56041 (=> res!41892 e!44415)))

(assert (=> d!56041 (= res!41892 (not (and (is-Cons!622 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693))) (is-Cons!622 (t!47838 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693)))))))))

(assert (=> d!56041 (= (isSorted!1 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693))) e!44415)))

(declare-fun b!81908 () Bool)

(declare-fun e!44416 () Bool)

(assert (=> b!81908 (= e!44415 e!44416)))

(declare-fun res!41893 () Bool)

(assert (=> b!81908 (=> (not res!41893) (not e!44416))))

(assert (=> b!81908 (= res!41893 (<= (h!991 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693))) (h!991 (t!47838 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693))))))))

(declare-fun b!81909 () Bool)

(assert (=> b!81909 (= e!44416 (isSorted!1 (t!47838 (Cons!622 (h!991 ls!96) (filter!18 (t!47838 ls!96) lambda!9693)))))))

(assert (= (and d!56041 (not res!41892)) b!81908))

(assert (= (and b!81908 res!41893) b!81909))

(declare-fun m!77226 () Bool)

(assert (=> b!81909 m!77226))

(assert (=> d!55889 d!56041))

(declare-fun b!81910 () Bool)

(declare-fun e!44418 () List!665)

(declare-fun lt!18854 () List!665)

(assert (=> b!81910 (= e!44418 (Cons!622 (h!991 (t!47838 ls!96)) lt!18854))))

(declare-fun b!81911 () Bool)

(declare-fun e!44420 () Bool)

(assert (=> b!81911 (= e!44420 (dynLambda!984 lambda!9693 (h!991 (t!47838 ls!96))))))

(declare-fun b!81912 () Bool)

(assert (=> b!81912 (= e!44418 lt!18854)))

(declare-fun d!56043 () Bool)

(declare-fun e!44417 () Bool)

(assert (=> d!56043 e!44417))

(declare-fun res!41896 () Bool)

(assert (=> d!56043 (=> (not res!41896) (not e!44417))))

(declare-fun lt!18855 () List!665)

(assert (=> d!56043 (= res!41896 (<= (size!653 lt!18855) (size!653 (t!47838 ls!96))))))

(declare-fun e!44419 () List!665)

(assert (=> d!56043 (= lt!18855 e!44419)))

(declare-fun c!20619 () Bool)

(assert (=> d!56043 (= c!20619 (is-Nil!624 (t!47838 ls!96)))))

(assert (=> d!56043 (= (filter!18 (t!47838 ls!96) lambda!9693) lt!18855)))

(declare-fun b!81913 () Bool)

(declare-fun res!41894 () Bool)

(assert (=> b!81913 (=> (not res!41894) (not e!44417))))

(assert (=> b!81913 (= res!41894 (subset (content!124 lt!18855) (content!124 (t!47838 ls!96))))))

(declare-fun b!81914 () Bool)

(assert (=> b!81914 (= e!44419 Nil!624)))

(declare-fun b!81915 () Bool)

(assert (=> b!81915 (= e!44417 (forall!20 lt!18855 lambda!9693))))

(declare-fun b!81916 () Bool)

(assert (=> b!81916 (= e!44419 e!44418)))

(declare-fun c!20618 () Bool)

(assert (=> b!81916 (= c!20618 e!44420)))

(declare-fun res!41895 () Bool)

(assert (=> b!81916 (=> (not res!41895) (not e!44420))))

(assert (=> b!81916 (= res!41895 (is-Cons!622 (t!47838 ls!96)))))

(assert (=> b!81916 (= lt!18854 (filter!18 (t!47838 (t!47838 ls!96)) lambda!9693))))

(assert (= (and b!81916 res!41895) b!81911))

(assert (= (and b!81916 c!20618) b!81910))

(assert (= (and b!81916 (not c!20618)) b!81912))

(assert (= (and d!56043 c!20619) b!81914))

(assert (= (and d!56043 (not c!20619)) b!81916))

(assert (= (and d!56043 res!41896) b!81913))

(assert (= (and b!81913 res!41894) b!81915))

(declare-fun b_lambda!16145 () Bool)

(assert (=> (not b_lambda!16145) (not b!81911)))

(declare-fun m!77228 () Bool)

(assert (=> b!81915 m!77228))

(declare-fun m!77230 () Bool)

(assert (=> b!81913 m!77230))

(assert (=> b!81913 m!76498))

(declare-fun m!77232 () Bool)

(assert (=> b!81911 m!77232))

(declare-fun m!77234 () Bool)

(assert (=> d!56043 m!77234))

(assert (=> d!56043 m!76504))

(declare-fun m!77236 () Bool)

(assert (=> b!81916 m!77236))

(assert (=> d!55889 d!56043))

(declare-fun bs!39425 () Bool)

(declare-fun b!81921 () Bool)

(assert (= bs!39425 (and b!81921 b!81517)))

(declare-fun lambda!9746 () Int)

(assert (=> bs!39425 (not (= lambda!9746 lambda!9663))))

(assert (=> bs!39425 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9746 lambda!9662))))

(assert (=> bs!39425 (not (= lambda!9746 lambda!9661))))

(declare-fun bs!39426 () Bool)

(assert (= bs!39426 (and b!81921 b!81734)))

(assert (=> bs!39426 (not (= lambda!9746 lambda!9711))))

(assert (=> bs!39426 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9746 lambda!9710))))

(assert (=> bs!39426 (not (= lambda!9746 lambda!9709))))

(declare-fun bs!39427 () Bool)

(assert (= bs!39427 (and b!81921 b!81462)))

(assert (=> bs!39427 (not (= lambda!9746 lambda!9627))))

(declare-fun bs!39428 () Bool)

(assert (= bs!39428 (and b!81921 b!81495)))

(assert (=> bs!39428 (not (= lambda!9746 lambda!9647))))

(declare-fun bs!39429 () Bool)

(assert (= bs!39429 (and b!81921 b!81804)))

(assert (=> bs!39429 (not (= lambda!9746 lambda!9723))))

(assert (=> bs!39429 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9746 lambda!9722))))

(assert (=> bs!39429 (not (= lambda!9746 lambda!9721))))

(declare-fun bs!39430 () Bool)

(assert (= bs!39430 (and b!81921 b!81885)))

(assert (=> bs!39430 (not (= lambda!9746 lambda!9735))))

(assert (=> bs!39430 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9746 lambda!9734))))

(assert (=> bs!39430 (not (= lambda!9746 lambda!9733))))

(declare-fun bs!39431 () Bool)

(assert (= bs!39431 (and b!81921 b!81742)))

(assert (=> bs!39431 (not (= lambda!9746 lambda!9714))))

(assert (=> bs!39431 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9746 lambda!9713))))

(assert (=> bs!39431 (not (= lambda!9746 lambda!9712))))

(declare-fun bs!39432 () Bool)

(assert (= bs!39432 (and b!81921 b!81907)))

(assert (=> bs!39432 (not (= lambda!9746 lambda!9741))))

(declare-fun bs!39433 () Bool)

(assert (= bs!39433 (and b!81921 b!81709)))

(assert (=> bs!39433 (not (= lambda!9746 lambda!9708))))

(assert (=> bs!39433 (= (= (h!991 ls!96) (h!991 lt!18751)) (= lambda!9746 lambda!9707))))

(assert (=> bs!39433 (not (= lambda!9746 lambda!9706))))

(declare-fun bs!39434 () Bool)

(assert (= bs!39434 (and b!81921 b!81460)))

(assert (=> bs!39434 (= lambda!9746 lambda!9628)))

(declare-fun bs!39435 () Bool)

(assert (= bs!39435 (and b!81921 b!81560)))

(assert (=> bs!39435 (not (= lambda!9746 lambda!9678))))

(assert (=> bs!39435 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9746 lambda!9677))))

(assert (=> bs!39435 (not (= lambda!9746 lambda!9676))))

(declare-fun bs!39436 () Bool)

(assert (= bs!39436 (and b!81921 b!81906)))

(assert (=> bs!39436 (not (= lambda!9746 lambda!9740))))

(declare-fun bs!39437 () Bool)

(assert (= bs!39437 (and b!81921 b!81490)))

(assert (=> bs!39437 (not (= lambda!9746 lambda!9639))))

(assert (=> bs!39437 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9746 lambda!9638))))

(assert (=> bs!39437 (not (= lambda!9746 lambda!9637))))

(declare-fun bs!39438 () Bool)

(assert (= bs!39438 (and b!81921 b!81691)))

(assert (=> bs!39438 (not (= lambda!9746 lambda!9702))))

(assert (=> bs!39438 (= (= (h!991 ls!96) (h!991 lt!18728)) (= lambda!9746 lambda!9701))))

(assert (=> bs!39438 (not (= lambda!9746 lambda!9700))))

(declare-fun bs!39439 () Bool)

(assert (= bs!39439 (and b!81921 b!81466)))

(assert (=> bs!39439 (not (= lambda!9746 lambda!9629))))

(declare-fun bs!39440 () Bool)

(assert (= bs!39440 (and b!81921 d!56039)))

(assert (=> bs!39440 (not (= lambda!9746 lambda!9739))))

(declare-fun bs!39441 () Bool)

(assert (= bs!39441 (and b!81921 b!81780)))

(assert (=> bs!39441 (not (= lambda!9746 lambda!9720))))

(assert (=> bs!39441 (= (= (h!991 ls!96) (h!991 lt!18781)) (= lambda!9746 lambda!9719))))

(assert (=> bs!39441 (not (= lambda!9746 lambda!9718))))

(declare-fun bs!39442 () Bool)

(assert (= bs!39442 (and b!81921 d!55883)))

(assert (=> bs!39442 (not (= lambda!9746 lambda!9685))))

(declare-fun bs!39443 () Bool)

(assert (= bs!39443 (and b!81921 b!81901)))

(assert (=> bs!39443 (not (= lambda!9746 lambda!9738))))

(assert (=> bs!39443 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9746 lambda!9737))))

(assert (=> bs!39443 (not (= lambda!9746 lambda!9736))))

(declare-fun bs!39444 () Bool)

(assert (= bs!39444 (and b!81921 b!81837)))

(assert (=> bs!39444 (not (= lambda!9746 lambda!9729))))

(assert (=> bs!39444 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9746 lambda!9728))))

(assert (=> bs!39444 (not (= lambda!9746 lambda!9727))))

(declare-fun bs!39445 () Bool)

(assert (= bs!39445 (and b!81921 b!81852)))

(assert (=> bs!39445 (not (= lambda!9746 lambda!9732))))

(assert (=> bs!39445 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9746 lambda!9731))))

(assert (=> bs!39445 (not (= lambda!9746 lambda!9730))))

(declare-fun bs!39446 () Bool)

(assert (= bs!39446 (and b!81921 d!55861)))

(assert (=> bs!39446 (= lambda!9746 lambda!9646)))

(declare-fun bs!39447 () Bool)

(assert (= bs!39447 (and b!81921 b!81537)))

(assert (=> bs!39447 (not (= lambda!9746 lambda!9669))))

(assert (=> bs!39447 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9746 lambda!9668))))

(assert (=> bs!39447 (not (= lambda!9746 lambda!9667))))

(declare-fun bs!39448 () Bool)

(assert (= bs!39448 (and b!81921 b!81587)))

(assert (=> bs!39448 (not (= lambda!9746 lambda!9686))))

(declare-fun bs!39449 () Bool)

(assert (= bs!39449 (and b!81921 b!81496)))

(assert (=> bs!39449 (not (= lambda!9746 lambda!9648))))

(declare-fun bs!39450 () Bool)

(assert (= bs!39450 (and b!81921 d!55889)))

(assert (=> bs!39450 (= lambda!9746 lambda!9693)))

(declare-fun bs!39451 () Bool)

(assert (= bs!39451 (and b!81921 b!81705)))

(assert (=> bs!39451 (not (= lambda!9746 lambda!9705))))

(assert (=> bs!39451 (= (= (h!991 ls!96) (h!991 lt!18752)) (= lambda!9746 lambda!9704))))

(assert (=> bs!39451 (not (= lambda!9746 lambda!9703))))

(declare-fun bs!39452 () Bool)

(assert (= bs!39452 (and b!81921 b!81522)))

(assert (=> bs!39452 (not (= lambda!9746 lambda!9666))))

(assert (=> bs!39452 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9746 lambda!9665))))

(assert (=> bs!39452 (not (= lambda!9746 lambda!9664))))

(declare-fun bs!39453 () Bool)

(assert (= bs!39453 (and b!81921 b!81598)))

(assert (=> bs!39453 (not (= lambda!9746 lambda!9690))))

(assert (=> bs!39453 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9746 lambda!9689))))

(assert (=> bs!39453 (not (= lambda!9746 lambda!9688))))

(declare-fun bs!39454 () Bool)

(assert (= bs!39454 (and b!81921 b!81588)))

(assert (=> bs!39454 (not (= lambda!9746 lambda!9687))))

(declare-fun bs!39455 () Bool)

(assert (= bs!39455 (and b!81921 b!81776)))

(assert (=> bs!39455 (not (= lambda!9746 lambda!9717))))

(assert (=> bs!39455 (= (= (h!991 ls!96) (h!991 lt!18782)) (= lambda!9746 lambda!9716))))

(assert (=> bs!39455 (not (= lambda!9746 lambda!9715))))

(declare-fun bs!39456 () Bool)

(assert (= bs!39456 (and b!81921 b!81468)))

(assert (=> bs!39456 (not (= lambda!9746 lambda!9630))))

(declare-fun bs!39457 () Bool)

(assert (= bs!39457 (and b!81921 b!81633)))

(assert (=> bs!39457 (not (= lambda!9746 lambda!9696))))

(assert (=> bs!39457 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9746 lambda!9695))))

(assert (=> bs!39457 (not (= lambda!9746 lambda!9694))))

(declare-fun bs!39458 () Bool)

(assert (= bs!39458 (and b!81921 b!81687)))

(assert (=> bs!39458 (not (= lambda!9746 lambda!9699))))

(assert (=> bs!39458 (= (= (h!991 ls!96) (h!991 lt!18730)) (= lambda!9746 lambda!9698))))

(assert (=> bs!39458 (not (= lambda!9746 lambda!9697))))

(declare-fun bs!39459 () Bool)

(assert (= bs!39459 (and b!81921 b!81810)))

(assert (=> bs!39459 (not (= lambda!9746 lambda!9726))))

(assert (=> bs!39459 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9746 lambda!9725))))

(assert (=> bs!39459 (not (= lambda!9746 lambda!9724))))

(assert (=> b!81921 true))

(declare-fun bs!39460 () Bool)

(declare-fun b!81922 () Bool)

(assert (= bs!39460 (and b!81922 b!81517)))

(declare-fun lambda!9747 () Int)

(assert (=> bs!39460 (not (= lambda!9747 lambda!9663))))

(assert (=> bs!39460 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9747 lambda!9662))))

(assert (=> bs!39460 (not (= lambda!9747 lambda!9661))))

(declare-fun bs!39461 () Bool)

(assert (= bs!39461 (and b!81922 b!81734)))

(assert (=> bs!39461 (not (= lambda!9747 lambda!9711))))

(assert (=> bs!39461 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9747 lambda!9710))))

(assert (=> bs!39461 (not (= lambda!9747 lambda!9709))))

(declare-fun bs!39462 () Bool)

(assert (= bs!39462 (and b!81922 b!81462)))

(assert (=> bs!39462 (not (= lambda!9747 lambda!9627))))

(declare-fun bs!39463 () Bool)

(assert (= bs!39463 (and b!81922 b!81495)))

(assert (=> bs!39463 (not (= lambda!9747 lambda!9647))))

(declare-fun bs!39464 () Bool)

(assert (= bs!39464 (and b!81922 b!81804)))

(assert (=> bs!39464 (not (= lambda!9747 lambda!9723))))

(assert (=> bs!39464 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9747 lambda!9722))))

(assert (=> bs!39464 (not (= lambda!9747 lambda!9721))))

(declare-fun bs!39465 () Bool)

(assert (= bs!39465 (and b!81922 b!81885)))

(assert (=> bs!39465 (not (= lambda!9747 lambda!9735))))

(assert (=> bs!39465 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9747 lambda!9734))))

(assert (=> bs!39465 (not (= lambda!9747 lambda!9733))))

(declare-fun bs!39466 () Bool)

(assert (= bs!39466 (and b!81922 b!81742)))

(assert (=> bs!39466 (not (= lambda!9747 lambda!9714))))

(assert (=> bs!39466 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9747 lambda!9713))))

(assert (=> bs!39466 (not (= lambda!9747 lambda!9712))))

(declare-fun bs!39467 () Bool)

(assert (= bs!39467 (and b!81922 b!81907)))

(assert (=> bs!39467 (not (= lambda!9747 lambda!9741))))

(declare-fun bs!39468 () Bool)

(assert (= bs!39468 (and b!81922 b!81709)))

(assert (=> bs!39468 (not (= lambda!9747 lambda!9708))))

(assert (=> bs!39468 (= (= (h!991 ls!96) (h!991 lt!18751)) (= lambda!9747 lambda!9707))))

(assert (=> bs!39468 (not (= lambda!9747 lambda!9706))))

(declare-fun bs!39469 () Bool)

(assert (= bs!39469 (and b!81922 b!81460)))

(assert (=> bs!39469 (= lambda!9747 lambda!9628)))

(declare-fun bs!39470 () Bool)

(assert (= bs!39470 (and b!81922 b!81560)))

(assert (=> bs!39470 (not (= lambda!9747 lambda!9678))))

(assert (=> bs!39470 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9747 lambda!9677))))

(assert (=> bs!39470 (not (= lambda!9747 lambda!9676))))

(declare-fun bs!39471 () Bool)

(assert (= bs!39471 (and b!81922 b!81906)))

(assert (=> bs!39471 (not (= lambda!9747 lambda!9740))))

(declare-fun bs!39472 () Bool)

(assert (= bs!39472 (and b!81922 b!81490)))

(assert (=> bs!39472 (not (= lambda!9747 lambda!9639))))

(assert (=> bs!39472 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9747 lambda!9638))))

(assert (=> bs!39472 (not (= lambda!9747 lambda!9637))))

(declare-fun bs!39473 () Bool)

(assert (= bs!39473 (and b!81922 b!81921)))

(assert (=> bs!39473 (= lambda!9747 lambda!9746)))

(declare-fun bs!39474 () Bool)

(assert (= bs!39474 (and b!81922 b!81691)))

(assert (=> bs!39474 (not (= lambda!9747 lambda!9702))))

(assert (=> bs!39474 (= (= (h!991 ls!96) (h!991 lt!18728)) (= lambda!9747 lambda!9701))))

(assert (=> bs!39474 (not (= lambda!9747 lambda!9700))))

(declare-fun bs!39475 () Bool)

(assert (= bs!39475 (and b!81922 b!81466)))

(assert (=> bs!39475 (not (= lambda!9747 lambda!9629))))

(declare-fun bs!39476 () Bool)

(assert (= bs!39476 (and b!81922 d!56039)))

(assert (=> bs!39476 (not (= lambda!9747 lambda!9739))))

(declare-fun bs!39477 () Bool)

(assert (= bs!39477 (and b!81922 b!81780)))

(assert (=> bs!39477 (not (= lambda!9747 lambda!9720))))

(assert (=> bs!39477 (= (= (h!991 ls!96) (h!991 lt!18781)) (= lambda!9747 lambda!9719))))

(assert (=> bs!39477 (not (= lambda!9747 lambda!9718))))

(declare-fun bs!39478 () Bool)

(assert (= bs!39478 (and b!81922 d!55883)))

(assert (=> bs!39478 (not (= lambda!9747 lambda!9685))))

(declare-fun bs!39479 () Bool)

(assert (= bs!39479 (and b!81922 b!81901)))

(assert (=> bs!39479 (not (= lambda!9747 lambda!9738))))

(assert (=> bs!39479 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9747 lambda!9737))))

(assert (=> bs!39479 (not (= lambda!9747 lambda!9736))))

(declare-fun bs!39480 () Bool)

(assert (= bs!39480 (and b!81922 b!81837)))

(assert (=> bs!39480 (not (= lambda!9747 lambda!9729))))

(assert (=> bs!39480 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9747 lambda!9728))))

(assert (=> bs!39480 (not (= lambda!9747 lambda!9727))))

(declare-fun bs!39481 () Bool)

(assert (= bs!39481 (and b!81922 b!81852)))

(assert (=> bs!39481 (not (= lambda!9747 lambda!9732))))

(assert (=> bs!39481 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9747 lambda!9731))))

(assert (=> bs!39481 (not (= lambda!9747 lambda!9730))))

(declare-fun bs!39482 () Bool)

(assert (= bs!39482 (and b!81922 d!55861)))

(assert (=> bs!39482 (= lambda!9747 lambda!9646)))

(declare-fun bs!39483 () Bool)

(assert (= bs!39483 (and b!81922 b!81537)))

(assert (=> bs!39483 (not (= lambda!9747 lambda!9669))))

(assert (=> bs!39483 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9747 lambda!9668))))

(assert (=> bs!39483 (not (= lambda!9747 lambda!9667))))

(declare-fun bs!39484 () Bool)

(assert (= bs!39484 (and b!81922 b!81587)))

(assert (=> bs!39484 (not (= lambda!9747 lambda!9686))))

(declare-fun bs!39485 () Bool)

(assert (= bs!39485 (and b!81922 b!81496)))

(assert (=> bs!39485 (not (= lambda!9747 lambda!9648))))

(declare-fun bs!39486 () Bool)

(assert (= bs!39486 (and b!81922 d!55889)))

(assert (=> bs!39486 (= lambda!9747 lambda!9693)))

(declare-fun bs!39487 () Bool)

(assert (= bs!39487 (and b!81922 b!81705)))

(assert (=> bs!39487 (not (= lambda!9747 lambda!9705))))

(assert (=> bs!39487 (= (= (h!991 ls!96) (h!991 lt!18752)) (= lambda!9747 lambda!9704))))

(assert (=> bs!39487 (not (= lambda!9747 lambda!9703))))

(declare-fun bs!39488 () Bool)

(assert (= bs!39488 (and b!81922 b!81522)))

(assert (=> bs!39488 (not (= lambda!9747 lambda!9666))))

(assert (=> bs!39488 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9747 lambda!9665))))

(assert (=> bs!39488 (not (= lambda!9747 lambda!9664))))

(declare-fun bs!39489 () Bool)

(assert (= bs!39489 (and b!81922 b!81598)))

(assert (=> bs!39489 (not (= lambda!9747 lambda!9690))))

(assert (=> bs!39489 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9747 lambda!9689))))

(assert (=> bs!39489 (not (= lambda!9747 lambda!9688))))

(declare-fun bs!39490 () Bool)

(assert (= bs!39490 (and b!81922 b!81588)))

(assert (=> bs!39490 (not (= lambda!9747 lambda!9687))))

(declare-fun bs!39491 () Bool)

(assert (= bs!39491 (and b!81922 b!81776)))

(assert (=> bs!39491 (not (= lambda!9747 lambda!9717))))

(assert (=> bs!39491 (= (= (h!991 ls!96) (h!991 lt!18782)) (= lambda!9747 lambda!9716))))

(assert (=> bs!39491 (not (= lambda!9747 lambda!9715))))

(declare-fun bs!39492 () Bool)

(assert (= bs!39492 (and b!81922 b!81468)))

(assert (=> bs!39492 (not (= lambda!9747 lambda!9630))))

(declare-fun bs!39493 () Bool)

(assert (= bs!39493 (and b!81922 b!81633)))

(assert (=> bs!39493 (not (= lambda!9747 lambda!9696))))

(assert (=> bs!39493 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9747 lambda!9695))))

(assert (=> bs!39493 (not (= lambda!9747 lambda!9694))))

(declare-fun bs!39494 () Bool)

(assert (= bs!39494 (and b!81922 b!81687)))

(assert (=> bs!39494 (not (= lambda!9747 lambda!9699))))

(assert (=> bs!39494 (= (= (h!991 ls!96) (h!991 lt!18730)) (= lambda!9747 lambda!9698))))

(assert (=> bs!39494 (not (= lambda!9747 lambda!9697))))

(declare-fun bs!39495 () Bool)

(assert (= bs!39495 (and b!81922 b!81810)))

(assert (=> bs!39495 (not (= lambda!9747 lambda!9726))))

(assert (=> bs!39495 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9747 lambda!9725))))

(assert (=> bs!39495 (not (= lambda!9747 lambda!9724))))

(assert (=> b!81922 true))

(declare-fun e!44423 () Bool)

(assert (=> b!81921 (= e!44423 (isSorted!1 (filter!18 (t!47838 ls!96) lambda!9746)))))

(declare-fun lt!18858 () Bool)

(assert (=> b!81921 (= lt!18858 (filter_equal_sorted!0 (t!47838 (t!47838 ls!96)) (h!991 ls!96)))))

(declare-fun d!56045 () Bool)

(assert (=> d!56045 e!44423))

(declare-fun c!20622 () Bool)

(assert (=> d!56045 (= c!20622 (is-Cons!622 (t!47838 ls!96)))))

(assert (=> d!56045 (= (filter_equal_sorted!0 (t!47838 ls!96) (h!991 ls!96)) true)))

(assert (=> b!81922 (= e!44423 (isSorted!1 (filter!18 (t!47838 ls!96) lambda!9747)))))

(assert (= (and d!56045 c!20622) b!81921))

(assert (= (and d!56045 (not c!20622)) b!81922))

(declare-fun m!77238 () Bool)

(assert (=> b!81921 m!77238))

(assert (=> b!81921 m!77238))

(declare-fun m!77240 () Bool)

(assert (=> b!81921 m!77240))

(declare-fun m!77242 () Bool)

(assert (=> b!81921 m!77242))

(declare-fun m!77244 () Bool)

(assert (=> b!81922 m!77244))

(assert (=> b!81922 m!77244))

(declare-fun m!77246 () Bool)

(assert (=> b!81922 m!77246))

(assert (=> d!55889 d!56045))

(declare-fun d!56047 () Bool)

(declare-fun c!20625 () Bool)

(assert (=> d!56047 (= c!20625 (is-Nil!624 lt!18765))))

(declare-fun e!44426 () (Set Int))

(assert (=> d!56047 (= (content!124 lt!18765) e!44426)))

(declare-fun b!81927 () Bool)

(assert (=> b!81927 (= e!44426 (as emptyset (Set Int)))))

(declare-fun b!81928 () Bool)

(assert (=> b!81928 (= e!44426 (union (insert (h!991 lt!18765) (as emptyset (Set Int))) (content!124 (t!47838 lt!18765))))))

(assert (= (and d!56047 c!20625) b!81927))

(assert (= (and d!56047 (not c!20625)) b!81928))

(declare-fun m!77248 () Bool)

(assert (=> b!81928 m!77248))

(declare-fun m!77250 () Bool)

(assert (=> b!81928 m!77250))

(assert (=> b!81592 d!56047))

(declare-fun d!56049 () Bool)

(declare-fun c!20626 () Bool)

(assert (=> d!56049 (= c!20626 (is-Nil!624 (t!47838 ls!96)))))

(declare-fun e!44427 () (Set Int))

(assert (=> d!56049 (= (content!124 (t!47838 ls!96)) e!44427)))

(declare-fun b!81929 () Bool)

(assert (=> b!81929 (= e!44427 (as emptyset (Set Int)))))

(declare-fun b!81930 () Bool)

(assert (=> b!81930 (= e!44427 (union (insert (h!991 (t!47838 ls!96)) (as emptyset (Set Int))) (content!124 (t!47838 (t!47838 ls!96)))))))

(assert (= (and d!56049 c!20626) b!81929))

(assert (= (and d!56049 (not c!20626)) b!81930))

(declare-fun m!77252 () Bool)

(assert (=> b!81930 m!77252))

(assert (=> b!81930 m!76632))

(assert (=> b!81592 d!56049))

(declare-fun d!56051 () Bool)

(declare-fun res!41897 () Bool)

(declare-fun e!44428 () Bool)

(assert (=> d!56051 (=> res!41897 e!44428)))

(assert (=> d!56051 (= res!41897 (is-Nil!624 lt!18760))))

(assert (=> d!56051 (= (forall!20 lt!18760 lambda!9629) e!44428)))

(declare-fun b!81931 () Bool)

(declare-fun e!44429 () Bool)

(assert (=> b!81931 (= e!44428 e!44429)))

(declare-fun res!41898 () Bool)

(assert (=> b!81931 (=> (not res!41898) (not e!44429))))

(assert (=> b!81931 (= res!41898 (dynLambda!984 lambda!9629 (h!991 lt!18760)))))

(declare-fun b!81932 () Bool)

(assert (=> b!81932 (= e!44429 (forall!20 (t!47838 lt!18760) lambda!9629))))

(assert (= (and d!56051 (not res!41897)) b!81931))

(assert (= (and b!81931 res!41898) b!81932))

(declare-fun b_lambda!16147 () Bool)

(assert (=> (not b_lambda!16147) (not b!81931)))

(declare-fun m!77254 () Bool)

(assert (=> b!81931 m!77254))

(declare-fun m!77256 () Bool)

(assert (=> b!81932 m!77256))

(assert (=> b!81581 d!56051))

(assert (=> b!81636 d!55985))

(declare-fun d!56053 () Bool)

(assert (=> d!56053 (= (isEmpty!677 equal!10) (is-Nil!624 equal!10))))

(assert (=> b!81551 d!56053))

(declare-fun d!56055 () Bool)

(declare-fun lt!18859 () Int)

(assert (=> d!56055 (>= lt!18859 0)))

(declare-fun e!44430 () Int)

(assert (=> d!56055 (= lt!18859 e!44430)))

(declare-fun c!20627 () Bool)

(assert (=> d!56055 (= c!20627 (is-Nil!624 lt!18787))))

(assert (=> d!56055 (= (size!653 lt!18787) lt!18859)))

(declare-fun b!81933 () Bool)

(assert (=> b!81933 (= e!44430 0)))

(declare-fun b!81934 () Bool)

(assert (=> b!81934 (= e!44430 (+ 1 (size!653 (t!47838 lt!18787))))))

(assert (= (and d!56055 c!20627) b!81933))

(assert (= (and d!56055 (not c!20627)) b!81934))

(declare-fun m!77258 () Bool)

(assert (=> b!81934 m!77258))

(assert (=> d!55903 d!56055))

(declare-fun d!56057 () Bool)

(declare-fun lt!18860 () Int)

(assert (=> d!56057 (>= lt!18860 0)))

(declare-fun e!44431 () Int)

(assert (=> d!56057 (= lt!18860 e!44431)))

(declare-fun c!20628 () Bool)

(assert (=> d!56057 (= c!20628 (is-Nil!624 (t!47838 ls!96)))))

(assert (=> d!56057 (= (size!653 (t!47838 ls!96)) lt!18860)))

(declare-fun b!81935 () Bool)

(assert (=> b!81935 (= e!44431 0)))

(declare-fun b!81936 () Bool)

(assert (=> b!81936 (= e!44431 (+ 1 (size!653 (t!47838 (t!47838 ls!96)))))))

(assert (= (and d!56057 c!20628) b!81935))

(assert (= (and d!56057 (not c!20628)) b!81936))

(assert (=> b!81936 m!76638))

(assert (=> d!55903 d!56057))

(declare-fun d!56059 () Bool)

(declare-fun res!41899 () Bool)

(declare-fun e!44432 () Bool)

(assert (=> d!56059 (=> res!41899 e!44432)))

(assert (=> d!56059 (= res!41899 (not (and (is-Cons!622 (quickSort!0 less!5)) (is-Cons!622 (t!47838 (quickSort!0 less!5))))))))

(assert (=> d!56059 (= (isSorted!1 (quickSort!0 less!5)) e!44432)))

(declare-fun b!81937 () Bool)

(declare-fun e!44433 () Bool)

(assert (=> b!81937 (= e!44432 e!44433)))

(declare-fun res!41900 () Bool)

(assert (=> b!81937 (=> (not res!41900) (not e!44433))))

(assert (=> b!81937 (= res!41900 (<= (h!991 (quickSort!0 less!5)) (h!991 (t!47838 (quickSort!0 less!5)))))))

(declare-fun b!81938 () Bool)

(assert (=> b!81938 (= e!44433 (isSorted!1 (t!47838 (quickSort!0 less!5))))))

(assert (= (and d!56059 (not res!41899)) b!81937))

(assert (= (and b!81937 res!41900) b!81938))

(assert (=> b!81938 m!76784))

(assert (=> d!55877 d!56059))

(declare-fun d!56061 () Bool)

(declare-fun lt!18861 () Int)

(assert (=> d!56061 (contains!57 (++!73 (quickSort!0 less!5) equal!10) lt!18861)))

(declare-fun e!44434 () Int)

(assert (=> d!56061 (= lt!18861 e!44434)))

(declare-fun c!20629 () Bool)

(assert (=> d!56061 (= c!20629 (and (is-Cons!622 (++!73 (quickSort!0 less!5) equal!10)) (is-Nil!624 (t!47838 (++!73 (quickSort!0 less!5) equal!10)))))))

(assert (=> d!56061 (not (isEmpty!677 (++!73 (quickSort!0 less!5) equal!10)))))

(assert (=> d!56061 (= (last!17 (++!73 (quickSort!0 less!5) equal!10)) lt!18861)))

(declare-fun b!81939 () Bool)

(assert (=> b!81939 (= e!44434 (h!991 (++!73 (quickSort!0 less!5) equal!10)))))

(declare-fun b!81940 () Bool)

(assert (=> b!81940 (= e!44434 (last!17 (t!47838 (++!73 (quickSort!0 less!5) equal!10))))))

(assert (= (and d!56061 c!20629) b!81939))

(assert (= (and d!56061 (not c!20629)) b!81940))

(assert (=> d!56061 m!76324))

(declare-fun m!77260 () Bool)

(assert (=> d!56061 m!77260))

(assert (=> d!56061 m!76324))

(assert (=> d!56061 m!76568))

(declare-fun m!77262 () Bool)

(assert (=> b!81940 m!77262))

(assert (=> b!81617 d!56061))

(assert (=> d!55899 d!56059))

(assert (=> d!55899 d!55875))

(declare-fun d!56063 () Bool)

(declare-fun res!41901 () Bool)

(declare-fun e!44435 () Bool)

(assert (=> d!56063 (=> res!41901 e!44435)))

(assert (=> d!56063 (= res!41901 (is-Nil!624 less!5))))

(assert (=> d!56063 (= (forall!20 less!5 lambda!9685) e!44435)))

(declare-fun b!81941 () Bool)

(declare-fun e!44436 () Bool)

(assert (=> b!81941 (= e!44435 e!44436)))

(declare-fun res!41902 () Bool)

(assert (=> b!81941 (=> (not res!41902) (not e!44436))))

(assert (=> b!81941 (= res!41902 (dynLambda!984 lambda!9685 (h!991 less!5)))))

(declare-fun b!81942 () Bool)

(assert (=> b!81942 (= e!44436 (forall!20 (t!47838 less!5) lambda!9685))))

(assert (= (and d!56063 (not res!41901)) b!81941))

(assert (= (and b!81941 res!41902) b!81942))

(declare-fun b_lambda!16149 () Bool)

(assert (=> (not b_lambda!16149) (not b!81941)))

(declare-fun m!77264 () Bool)

(assert (=> b!81941 m!77264))

(declare-fun m!77266 () Bool)

(assert (=> b!81942 m!77266))

(assert (=> d!55883 d!56063))

(assert (=> b!81533 d!56035))

(assert (=> b!81533 d!55895))

(declare-fun d!56065 () Bool)

(declare-fun c!20630 () Bool)

(assert (=> d!56065 (= c!20630 (is-Nil!624 lt!18787))))

(declare-fun e!44437 () (Set Int))

(assert (=> d!56065 (= (content!124 lt!18787) e!44437)))

(declare-fun b!81943 () Bool)

(assert (=> b!81943 (= e!44437 (as emptyset (Set Int)))))

(declare-fun b!81944 () Bool)

(assert (=> b!81944 (= e!44437 (union (insert (h!991 lt!18787) (as emptyset (Set Int))) (content!124 (t!47838 lt!18787))))))

(assert (= (and d!56065 c!20630) b!81943))

(assert (= (and d!56065 (not c!20630)) b!81944))

(declare-fun m!77268 () Bool)

(assert (=> b!81944 m!77268))

(declare-fun m!77270 () Bool)

(assert (=> b!81944 m!77270))

(assert (=> b!81644 d!56065))

(assert (=> b!81644 d!56049))

(declare-fun d!56067 () Bool)

(declare-fun res!41903 () Bool)

(declare-fun e!44438 () Bool)

(assert (=> d!56067 (=> res!41903 e!44438)))

(assert (=> d!56067 (= res!41903 (not (and (is-Cons!622 (quickSort!0 more!5)) (is-Cons!622 (t!47838 (quickSort!0 more!5))))))))

(assert (=> d!56067 (= (isSorted!1 (quickSort!0 more!5)) e!44438)))

(declare-fun b!81945 () Bool)

(declare-fun e!44439 () Bool)

(assert (=> b!81945 (= e!44438 e!44439)))

(declare-fun res!41904 () Bool)

(assert (=> b!81945 (=> (not res!41904) (not e!44439))))

(assert (=> b!81945 (= res!41904 (<= (h!991 (quickSort!0 more!5)) (h!991 (t!47838 (quickSort!0 more!5)))))))

(declare-fun b!81946 () Bool)

(assert (=> b!81946 (= e!44439 (isSorted!1 (t!47838 (quickSort!0 more!5))))))

(assert (= (and d!56067 (not res!41903)) b!81945))

(assert (= (and b!81945 res!41904) b!81946))

(declare-fun m!77272 () Bool)

(assert (=> b!81946 m!77272))

(assert (=> d!55879 d!56067))

(assert (=> d!55879 d!55859))

(declare-fun bs!39496 () Bool)

(declare-fun b!81949 () Bool)

(assert (= bs!39496 (and b!81949 b!81517)))

(declare-fun lambda!9748 () Int)

(assert (=> bs!39496 (not (= lambda!9748 lambda!9663))))

(assert (=> bs!39496 (not (= lambda!9748 lambda!9662))))

(assert (=> bs!39496 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9748 lambda!9661))))

(declare-fun bs!39497 () Bool)

(assert (= bs!39497 (and b!81949 b!81734)))

(assert (=> bs!39497 (not (= lambda!9748 lambda!9711))))

(assert (=> bs!39497 (not (= lambda!9748 lambda!9710))))

(assert (=> bs!39497 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9748 lambda!9709))))

(declare-fun bs!39498 () Bool)

(assert (= bs!39498 (and b!81949 b!81462)))

(assert (=> bs!39498 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9748 lambda!9627))))

(declare-fun bs!39499 () Bool)

(assert (= bs!39499 (and b!81949 b!81495)))

(assert (=> bs!39499 (not (= lambda!9748 lambda!9647))))

(declare-fun bs!39500 () Bool)

(assert (= bs!39500 (and b!81949 b!81804)))

(assert (=> bs!39500 (not (= lambda!9748 lambda!9723))))

(assert (=> bs!39500 (not (= lambda!9748 lambda!9722))))

(assert (=> bs!39500 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9748 lambda!9721))))

(declare-fun bs!39501 () Bool)

(assert (= bs!39501 (and b!81949 b!81885)))

(assert (=> bs!39501 (not (= lambda!9748 lambda!9735))))

(assert (=> bs!39501 (not (= lambda!9748 lambda!9734))))

(assert (=> bs!39501 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9748 lambda!9733))))

(declare-fun bs!39502 () Bool)

(assert (= bs!39502 (and b!81949 b!81742)))

(assert (=> bs!39502 (not (= lambda!9748 lambda!9714))))

(assert (=> bs!39502 (not (= lambda!9748 lambda!9713))))

(assert (=> bs!39502 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9748 lambda!9712))))

(declare-fun bs!39503 () Bool)

(assert (= bs!39503 (and b!81949 b!81922)))

(assert (=> bs!39503 (not (= lambda!9748 lambda!9747))))

(declare-fun bs!39504 () Bool)

(assert (= bs!39504 (and b!81949 b!81907)))

(assert (=> bs!39504 (not (= lambda!9748 lambda!9741))))

(declare-fun bs!39505 () Bool)

(assert (= bs!39505 (and b!81949 b!81709)))

(assert (=> bs!39505 (not (= lambda!9748 lambda!9708))))

(assert (=> bs!39505 (not (= lambda!9748 lambda!9707))))

(assert (=> bs!39505 (= (= (h!991 lt!18769) (h!991 lt!18751)) (= lambda!9748 lambda!9706))))

(declare-fun bs!39506 () Bool)

(assert (= bs!39506 (and b!81949 b!81460)))

(assert (=> bs!39506 (not (= lambda!9748 lambda!9628))))

(declare-fun bs!39507 () Bool)

(assert (= bs!39507 (and b!81949 b!81560)))

(assert (=> bs!39507 (not (= lambda!9748 lambda!9678))))

(assert (=> bs!39507 (not (= lambda!9748 lambda!9677))))

(assert (=> bs!39507 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9748 lambda!9676))))

(declare-fun bs!39508 () Bool)

(assert (= bs!39508 (and b!81949 b!81906)))

(assert (=> bs!39508 (not (= lambda!9748 lambda!9740))))

(declare-fun bs!39509 () Bool)

(assert (= bs!39509 (and b!81949 b!81490)))

(assert (=> bs!39509 (not (= lambda!9748 lambda!9639))))

(assert (=> bs!39509 (not (= lambda!9748 lambda!9638))))

(assert (=> bs!39509 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9748 lambda!9637))))

(declare-fun bs!39510 () Bool)

(assert (= bs!39510 (and b!81949 b!81921)))

(assert (=> bs!39510 (not (= lambda!9748 lambda!9746))))

(declare-fun bs!39511 () Bool)

(assert (= bs!39511 (and b!81949 b!81691)))

(assert (=> bs!39511 (not (= lambda!9748 lambda!9702))))

(assert (=> bs!39511 (not (= lambda!9748 lambda!9701))))

(assert (=> bs!39511 (= (= (h!991 lt!18769) (h!991 lt!18728)) (= lambda!9748 lambda!9700))))

(declare-fun bs!39512 () Bool)

(assert (= bs!39512 (and b!81949 b!81466)))

(assert (=> bs!39512 (not (= lambda!9748 lambda!9629))))

(declare-fun bs!39513 () Bool)

(assert (= bs!39513 (and b!81949 d!56039)))

(assert (=> bs!39513 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9748 lambda!9739))))

(declare-fun bs!39514 () Bool)

(assert (= bs!39514 (and b!81949 b!81780)))

(assert (=> bs!39514 (not (= lambda!9748 lambda!9720))))

(assert (=> bs!39514 (not (= lambda!9748 lambda!9719))))

(assert (=> bs!39514 (= (= (h!991 lt!18769) (h!991 lt!18781)) (= lambda!9748 lambda!9718))))

(declare-fun bs!39515 () Bool)

(assert (= bs!39515 (and b!81949 d!55883)))

(assert (=> bs!39515 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9748 lambda!9685))))

(declare-fun bs!39516 () Bool)

(assert (= bs!39516 (and b!81949 b!81901)))

(assert (=> bs!39516 (not (= lambda!9748 lambda!9738))))

(assert (=> bs!39516 (not (= lambda!9748 lambda!9737))))

(assert (=> bs!39516 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9748 lambda!9736))))

(declare-fun bs!39517 () Bool)

(assert (= bs!39517 (and b!81949 b!81837)))

(assert (=> bs!39517 (not (= lambda!9748 lambda!9729))))

(assert (=> bs!39517 (not (= lambda!9748 lambda!9728))))

(assert (=> bs!39517 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9748 lambda!9727))))

(declare-fun bs!39518 () Bool)

(assert (= bs!39518 (and b!81949 b!81852)))

(assert (=> bs!39518 (not (= lambda!9748 lambda!9732))))

(assert (=> bs!39518 (not (= lambda!9748 lambda!9731))))

(assert (=> bs!39518 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9748 lambda!9730))))

(declare-fun bs!39519 () Bool)

(assert (= bs!39519 (and b!81949 d!55861)))

(assert (=> bs!39519 (not (= lambda!9748 lambda!9646))))

(declare-fun bs!39520 () Bool)

(assert (= bs!39520 (and b!81949 b!81537)))

(assert (=> bs!39520 (not (= lambda!9748 lambda!9669))))

(assert (=> bs!39520 (not (= lambda!9748 lambda!9668))))

(assert (=> bs!39520 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9748 lambda!9667))))

(declare-fun bs!39521 () Bool)

(assert (= bs!39521 (and b!81949 b!81587)))

(assert (=> bs!39521 (not (= lambda!9748 lambda!9686))))

(declare-fun bs!39522 () Bool)

(assert (= bs!39522 (and b!81949 b!81496)))

(assert (=> bs!39522 (not (= lambda!9748 lambda!9648))))

(declare-fun bs!39523 () Bool)

(assert (= bs!39523 (and b!81949 d!55889)))

(assert (=> bs!39523 (not (= lambda!9748 lambda!9693))))

(declare-fun bs!39524 () Bool)

(assert (= bs!39524 (and b!81949 b!81705)))

(assert (=> bs!39524 (not (= lambda!9748 lambda!9705))))

(assert (=> bs!39524 (not (= lambda!9748 lambda!9704))))

(assert (=> bs!39524 (= (= (h!991 lt!18769) (h!991 lt!18752)) (= lambda!9748 lambda!9703))))

(declare-fun bs!39525 () Bool)

(assert (= bs!39525 (and b!81949 b!81522)))

(assert (=> bs!39525 (not (= lambda!9748 lambda!9666))))

(assert (=> bs!39525 (not (= lambda!9748 lambda!9665))))

(assert (=> bs!39525 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9748 lambda!9664))))

(declare-fun bs!39526 () Bool)

(assert (= bs!39526 (and b!81949 b!81598)))

(assert (=> bs!39526 (not (= lambda!9748 lambda!9690))))

(assert (=> bs!39526 (not (= lambda!9748 lambda!9689))))

(assert (=> bs!39526 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9748 lambda!9688))))

(declare-fun bs!39527 () Bool)

(assert (= bs!39527 (and b!81949 b!81588)))

(assert (=> bs!39527 (not (= lambda!9748 lambda!9687))))

(declare-fun bs!39528 () Bool)

(assert (= bs!39528 (and b!81949 b!81776)))

(assert (=> bs!39528 (not (= lambda!9748 lambda!9717))))

(assert (=> bs!39528 (not (= lambda!9748 lambda!9716))))

(assert (=> bs!39528 (= (= (h!991 lt!18769) (h!991 lt!18782)) (= lambda!9748 lambda!9715))))

(declare-fun bs!39529 () Bool)

(assert (= bs!39529 (and b!81949 b!81468)))

(assert (=> bs!39529 (not (= lambda!9748 lambda!9630))))

(declare-fun bs!39530 () Bool)

(assert (= bs!39530 (and b!81949 b!81633)))

(assert (=> bs!39530 (not (= lambda!9748 lambda!9696))))

(assert (=> bs!39530 (not (= lambda!9748 lambda!9695))))

(assert (=> bs!39530 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9748 lambda!9694))))

(declare-fun bs!39531 () Bool)

(assert (= bs!39531 (and b!81949 b!81687)))

(assert (=> bs!39531 (not (= lambda!9748 lambda!9699))))

(assert (=> bs!39531 (not (= lambda!9748 lambda!9698))))

(assert (=> bs!39531 (= (= (h!991 lt!18769) (h!991 lt!18730)) (= lambda!9748 lambda!9697))))

(declare-fun bs!39532 () Bool)

(assert (= bs!39532 (and b!81949 b!81810)))

(assert (=> bs!39532 (not (= lambda!9748 lambda!9726))))

(assert (=> bs!39532 (not (= lambda!9748 lambda!9725))))

(assert (=> bs!39532 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9748 lambda!9724))))

(assert (=> b!81949 true))

(declare-fun lambda!9749 () Int)

(assert (=> b!81949 (not (= lambda!9749 lambda!9748))))

(assert (=> bs!39496 (not (= lambda!9749 lambda!9663))))

(assert (=> bs!39496 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9749 lambda!9662))))

(assert (=> bs!39496 (not (= lambda!9749 lambda!9661))))

(assert (=> bs!39497 (not (= lambda!9749 lambda!9711))))

(assert (=> bs!39497 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9749 lambda!9710))))

(assert (=> bs!39497 (not (= lambda!9749 lambda!9709))))

(assert (=> bs!39498 (not (= lambda!9749 lambda!9627))))

(assert (=> bs!39499 (not (= lambda!9749 lambda!9647))))

(assert (=> bs!39500 (not (= lambda!9749 lambda!9723))))

(assert (=> bs!39500 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9749 lambda!9722))))

(assert (=> bs!39500 (not (= lambda!9749 lambda!9721))))

(assert (=> bs!39501 (not (= lambda!9749 lambda!9735))))

(assert (=> bs!39501 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9749 lambda!9734))))

(assert (=> bs!39501 (not (= lambda!9749 lambda!9733))))

(assert (=> bs!39502 (not (= lambda!9749 lambda!9714))))

(assert (=> bs!39502 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9749 lambda!9713))))

(assert (=> bs!39502 (not (= lambda!9749 lambda!9712))))

(assert (=> bs!39503 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9749 lambda!9747))))

(assert (=> bs!39504 (not (= lambda!9749 lambda!9741))))

(assert (=> bs!39505 (not (= lambda!9749 lambda!9708))))

(assert (=> bs!39505 (= (= (h!991 lt!18769) (h!991 lt!18751)) (= lambda!9749 lambda!9707))))

(assert (=> bs!39505 (not (= lambda!9749 lambda!9706))))

(assert (=> bs!39506 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9749 lambda!9628))))

(assert (=> bs!39507 (not (= lambda!9749 lambda!9678))))

(assert (=> bs!39507 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9749 lambda!9677))))

(assert (=> bs!39507 (not (= lambda!9749 lambda!9676))))

(assert (=> bs!39508 (not (= lambda!9749 lambda!9740))))

(assert (=> bs!39509 (not (= lambda!9749 lambda!9639))))

(assert (=> bs!39509 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9749 lambda!9638))))

(assert (=> bs!39509 (not (= lambda!9749 lambda!9637))))

(assert (=> bs!39510 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9749 lambda!9746))))

(assert (=> bs!39511 (not (= lambda!9749 lambda!9702))))

(assert (=> bs!39511 (= (= (h!991 lt!18769) (h!991 lt!18728)) (= lambda!9749 lambda!9701))))

(assert (=> bs!39511 (not (= lambda!9749 lambda!9700))))

(assert (=> bs!39512 (not (= lambda!9749 lambda!9629))))

(assert (=> bs!39513 (not (= lambda!9749 lambda!9739))))

(assert (=> bs!39514 (not (= lambda!9749 lambda!9720))))

(assert (=> bs!39514 (= (= (h!991 lt!18769) (h!991 lt!18781)) (= lambda!9749 lambda!9719))))

(assert (=> bs!39514 (not (= lambda!9749 lambda!9718))))

(assert (=> bs!39515 (not (= lambda!9749 lambda!9685))))

(assert (=> bs!39516 (not (= lambda!9749 lambda!9738))))

(assert (=> bs!39516 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9749 lambda!9737))))

(assert (=> bs!39516 (not (= lambda!9749 lambda!9736))))

(assert (=> bs!39517 (not (= lambda!9749 lambda!9729))))

(assert (=> bs!39517 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9749 lambda!9728))))

(assert (=> bs!39517 (not (= lambda!9749 lambda!9727))))

(assert (=> bs!39518 (not (= lambda!9749 lambda!9732))))

(assert (=> bs!39518 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9749 lambda!9731))))

(assert (=> bs!39518 (not (= lambda!9749 lambda!9730))))

(assert (=> bs!39519 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9749 lambda!9646))))

(assert (=> bs!39520 (not (= lambda!9749 lambda!9669))))

(assert (=> bs!39520 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9749 lambda!9668))))

(assert (=> bs!39520 (not (= lambda!9749 lambda!9667))))

(assert (=> bs!39521 (not (= lambda!9749 lambda!9686))))

(assert (=> bs!39522 (not (= lambda!9749 lambda!9648))))

(assert (=> bs!39523 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9749 lambda!9693))))

(assert (=> bs!39524 (not (= lambda!9749 lambda!9705))))

(assert (=> bs!39524 (= (= (h!991 lt!18769) (h!991 lt!18752)) (= lambda!9749 lambda!9704))))

(assert (=> bs!39524 (not (= lambda!9749 lambda!9703))))

(assert (=> bs!39525 (not (= lambda!9749 lambda!9666))))

(assert (=> bs!39525 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9749 lambda!9665))))

(assert (=> bs!39525 (not (= lambda!9749 lambda!9664))))

(assert (=> bs!39526 (not (= lambda!9749 lambda!9690))))

(assert (=> bs!39526 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9749 lambda!9689))))

(assert (=> bs!39526 (not (= lambda!9749 lambda!9688))))

(assert (=> bs!39527 (not (= lambda!9749 lambda!9687))))

(assert (=> bs!39528 (not (= lambda!9749 lambda!9717))))

(assert (=> bs!39528 (= (= (h!991 lt!18769) (h!991 lt!18782)) (= lambda!9749 lambda!9716))))

(assert (=> bs!39528 (not (= lambda!9749 lambda!9715))))

(assert (=> bs!39529 (not (= lambda!9749 lambda!9630))))

(assert (=> bs!39530 (not (= lambda!9749 lambda!9696))))

(assert (=> bs!39530 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9749 lambda!9695))))

(assert (=> bs!39530 (not (= lambda!9749 lambda!9694))))

(assert (=> bs!39531 (not (= lambda!9749 lambda!9699))))

(assert (=> bs!39531 (= (= (h!991 lt!18769) (h!991 lt!18730)) (= lambda!9749 lambda!9698))))

(assert (=> bs!39531 (not (= lambda!9749 lambda!9697))))

(assert (=> bs!39532 (not (= lambda!9749 lambda!9726))))

(assert (=> bs!39532 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9749 lambda!9725))))

(assert (=> bs!39532 (not (= lambda!9749 lambda!9724))))

(assert (=> b!81949 true))

(declare-fun lambda!9750 () Int)

(assert (=> b!81949 (not (= lambda!9750 lambda!9749))))

(assert (=> b!81949 (not (= lambda!9750 lambda!9748))))

(assert (=> bs!39496 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9750 lambda!9663))))

(assert (=> bs!39496 (not (= lambda!9750 lambda!9662))))

(assert (=> bs!39496 (not (= lambda!9750 lambda!9661))))

(assert (=> bs!39497 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9750 lambda!9711))))

(assert (=> bs!39497 (not (= lambda!9750 lambda!9710))))

(assert (=> bs!39497 (not (= lambda!9750 lambda!9709))))

(assert (=> bs!39498 (not (= lambda!9750 lambda!9627))))

(assert (=> bs!39499 (not (= lambda!9750 lambda!9647))))

(assert (=> bs!39500 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9750 lambda!9723))))

(assert (=> bs!39500 (not (= lambda!9750 lambda!9722))))

(assert (=> bs!39500 (not (= lambda!9750 lambda!9721))))

(assert (=> bs!39501 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9750 lambda!9735))))

(assert (=> bs!39501 (not (= lambda!9750 lambda!9734))))

(assert (=> bs!39501 (not (= lambda!9750 lambda!9733))))

(assert (=> bs!39502 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9750 lambda!9714))))

(assert (=> bs!39502 (not (= lambda!9750 lambda!9713))))

(assert (=> bs!39502 (not (= lambda!9750 lambda!9712))))

(assert (=> bs!39503 (not (= lambda!9750 lambda!9747))))

(assert (=> bs!39504 (not (= lambda!9750 lambda!9741))))

(assert (=> bs!39505 (= (= (h!991 lt!18769) (h!991 lt!18751)) (= lambda!9750 lambda!9708))))

(assert (=> bs!39505 (not (= lambda!9750 lambda!9707))))

(assert (=> bs!39505 (not (= lambda!9750 lambda!9706))))

(assert (=> bs!39506 (not (= lambda!9750 lambda!9628))))

(assert (=> bs!39507 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9750 lambda!9678))))

(assert (=> bs!39507 (not (= lambda!9750 lambda!9677))))

(assert (=> bs!39507 (not (= lambda!9750 lambda!9676))))

(assert (=> bs!39508 (not (= lambda!9750 lambda!9740))))

(assert (=> bs!39509 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9750 lambda!9639))))

(assert (=> bs!39509 (not (= lambda!9750 lambda!9638))))

(assert (=> bs!39509 (not (= lambda!9750 lambda!9637))))

(assert (=> bs!39510 (not (= lambda!9750 lambda!9746))))

(assert (=> bs!39511 (= (= (h!991 lt!18769) (h!991 lt!18728)) (= lambda!9750 lambda!9702))))

(assert (=> bs!39511 (not (= lambda!9750 lambda!9701))))

(assert (=> bs!39511 (not (= lambda!9750 lambda!9700))))

(assert (=> bs!39512 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9750 lambda!9629))))

(assert (=> bs!39513 (not (= lambda!9750 lambda!9739))))

(assert (=> bs!39514 (= (= (h!991 lt!18769) (h!991 lt!18781)) (= lambda!9750 lambda!9720))))

(assert (=> bs!39514 (not (= lambda!9750 lambda!9719))))

(assert (=> bs!39514 (not (= lambda!9750 lambda!9718))))

(assert (=> bs!39515 (not (= lambda!9750 lambda!9685))))

(assert (=> bs!39516 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9750 lambda!9738))))

(assert (=> bs!39516 (not (= lambda!9750 lambda!9737))))

(assert (=> bs!39516 (not (= lambda!9750 lambda!9736))))

(assert (=> bs!39517 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9750 lambda!9729))))

(assert (=> bs!39517 (not (= lambda!9750 lambda!9728))))

(assert (=> bs!39517 (not (= lambda!9750 lambda!9727))))

(assert (=> bs!39518 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9750 lambda!9732))))

(assert (=> bs!39518 (not (= lambda!9750 lambda!9731))))

(assert (=> bs!39518 (not (= lambda!9750 lambda!9730))))

(assert (=> bs!39519 (not (= lambda!9750 lambda!9646))))

(assert (=> bs!39520 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9750 lambda!9669))))

(assert (=> bs!39520 (not (= lambda!9750 lambda!9668))))

(assert (=> bs!39520 (not (= lambda!9750 lambda!9667))))

(assert (=> bs!39521 (not (= lambda!9750 lambda!9686))))

(assert (=> bs!39522 (not (= lambda!9750 lambda!9648))))

(assert (=> bs!39523 (not (= lambda!9750 lambda!9693))))

(assert (=> bs!39524 (= (= (h!991 lt!18769) (h!991 lt!18752)) (= lambda!9750 lambda!9705))))

(assert (=> bs!39524 (not (= lambda!9750 lambda!9704))))

(assert (=> bs!39524 (not (= lambda!9750 lambda!9703))))

(assert (=> bs!39525 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9750 lambda!9666))))

(assert (=> bs!39525 (not (= lambda!9750 lambda!9665))))

(assert (=> bs!39525 (not (= lambda!9750 lambda!9664))))

(assert (=> bs!39526 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9750 lambda!9690))))

(assert (=> bs!39526 (not (= lambda!9750 lambda!9689))))

(assert (=> bs!39526 (not (= lambda!9750 lambda!9688))))

(assert (=> bs!39527 (not (= lambda!9750 lambda!9687))))

(assert (=> bs!39528 (= (= (h!991 lt!18769) (h!991 lt!18782)) (= lambda!9750 lambda!9717))))

(assert (=> bs!39528 (not (= lambda!9750 lambda!9716))))

(assert (=> bs!39528 (not (= lambda!9750 lambda!9715))))

(assert (=> bs!39529 (not (= lambda!9750 lambda!9630))))

(assert (=> bs!39530 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9750 lambda!9696))))

(assert (=> bs!39530 (not (= lambda!9750 lambda!9695))))

(assert (=> bs!39530 (not (= lambda!9750 lambda!9694))))

(assert (=> bs!39531 (= (= (h!991 lt!18769) (h!991 lt!18730)) (= lambda!9750 lambda!9699))))

(assert (=> bs!39531 (not (= lambda!9750 lambda!9698))))

(assert (=> bs!39531 (not (= lambda!9750 lambda!9697))))

(assert (=> bs!39532 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9750 lambda!9726))))

(assert (=> bs!39532 (not (= lambda!9750 lambda!9725))))

(assert (=> bs!39532 (not (= lambda!9750 lambda!9724))))

(assert (=> b!81949 true))

(declare-fun e!44444 () Bool)

(declare-fun b!81947 () Bool)

(assert (=> b!81947 (= e!44444 (filter_preserves_forall!0 (t!47838 lt!18769) lambda!9749 lambda!9627))))

(declare-fun e!44442 () Bool)

(declare-fun lt!18862 () List!665)

(declare-fun lt!18867 () List!665)

(declare-fun b!81948 () Bool)

(declare-fun lt!18865 () List!665)

(assert (=> b!81948 (= e!44442 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18867) lt!18862) (quickSort!0 lt!18865) lambda!9627))))

(declare-fun d!56069 () Bool)

(assert (=> d!56069 (forall!20 (quickSort!0 lt!18769) lambda!9627)))

(declare-fun lt!18864 () Bool)

(declare-fun e!44440 () Bool)

(assert (=> d!56069 (= lt!18864 e!44440)))

(declare-fun res!41907 () Bool)

(assert (=> d!56069 (=> res!41907 e!44440)))

(assert (=> d!56069 (= res!41907 (or (is-Nil!624 lt!18769) (and (is-Cons!622 lt!18769) (is-Nil!624 (t!47838 lt!18769)))))))

(assert (=> d!56069 (forall!20 lt!18769 lambda!9627)))

(assert (=> d!56069 (= (sort_preserves_forall!0 lt!18769 lambda!9627) true)))

(assert (=> b!81949 (= e!44440 e!44442)))

(declare-fun res!41908 () Bool)

(assert (=> b!81949 (=> (not res!41908) (not e!44442))))

(assert (=> b!81949 (= res!41908 (append_preserves_forall!0 (quickSort!0 lt!18867) lt!18862 lambda!9627))))

(declare-fun lt!18863 () Bool)

(declare-fun e!44441 () Bool)

(assert (=> b!81949 (= lt!18863 e!44441)))

(declare-fun res!41906 () Bool)

(assert (=> b!81949 (=> (not res!41906) (not e!44441))))

(assert (=> b!81949 (= res!41906 (sort_preserves_forall!0 lt!18867 lambda!9627))))

(declare-fun lt!18866 () Bool)

(declare-fun e!44443 () Bool)

(assert (=> b!81949 (= lt!18866 e!44443)))

(declare-fun res!41905 () Bool)

(assert (=> b!81949 (=> (not res!41905) (not e!44443))))

(assert (=> b!81949 (= res!41905 e!44444)))

(declare-fun res!41909 () Bool)

(assert (=> b!81949 (=> (not res!41909) (not e!44444))))

(assert (=> b!81949 (= res!41909 (filter_preserves_forall!0 (t!47838 lt!18769) lambda!9748 lambda!9627))))

(assert (=> b!81949 (= lt!18865 (filter!18 (t!47838 lt!18769) lambda!9750))))

(assert (=> b!81949 (= lt!18862 (Cons!622 (h!991 lt!18769) (filter!18 (t!47838 lt!18769) lambda!9749)))))

(assert (=> b!81949 (= lt!18867 (filter!18 (t!47838 lt!18769) lambda!9748))))

(declare-fun b!81950 () Bool)

(assert (=> b!81950 (= e!44441 (sort_preserves_forall!0 lt!18865 lambda!9627))))

(declare-fun b!81951 () Bool)

(assert (=> b!81951 (= e!44443 (filter_preserves_forall!0 (t!47838 lt!18769) lambda!9750 lambda!9627))))

(assert (= (and d!56069 (not res!41907)) b!81949))

(assert (= (and b!81949 res!41909) b!81947))

(assert (= (and b!81949 res!41905) b!81951))

(assert (= (and b!81949 res!41906) b!81950))

(assert (= (and b!81949 res!41908) b!81948))

(declare-fun m!77274 () Bool)

(assert (=> b!81951 m!77274))

(declare-fun m!77276 () Bool)

(assert (=> b!81950 m!77276))

(declare-fun m!77278 () Bool)

(assert (=> b!81948 m!77278))

(assert (=> b!81948 m!77278))

(declare-fun m!77280 () Bool)

(assert (=> b!81948 m!77280))

(declare-fun m!77282 () Bool)

(assert (=> b!81948 m!77282))

(assert (=> b!81948 m!77280))

(assert (=> b!81948 m!77282))

(declare-fun m!77284 () Bool)

(assert (=> b!81948 m!77284))

(declare-fun m!77286 () Bool)

(assert (=> b!81947 m!77286))

(declare-fun m!77288 () Bool)

(assert (=> b!81949 m!77288))

(declare-fun m!77290 () Bool)

(assert (=> b!81949 m!77290))

(assert (=> b!81949 m!77278))

(declare-fun m!77292 () Bool)

(assert (=> b!81949 m!77292))

(declare-fun m!77294 () Bool)

(assert (=> b!81949 m!77294))

(assert (=> b!81949 m!77278))

(declare-fun m!77296 () Bool)

(assert (=> b!81949 m!77296))

(declare-fun m!77298 () Bool)

(assert (=> b!81949 m!77298))

(assert (=> d!56069 m!76534))

(assert (=> d!56069 m!76534))

(declare-fun m!77300 () Bool)

(assert (=> d!56069 m!77300))

(declare-fun m!77302 () Bool)

(assert (=> d!56069 m!77302))

(assert (=> b!81599 d!56069))

(declare-fun d!56071 () Bool)

(declare-fun c!20631 () Bool)

(assert (=> d!56071 (= c!20631 (is-Nil!624 lt!18780))))

(declare-fun e!44445 () (Set Int))

(assert (=> d!56071 (= (content!124 lt!18780) e!44445)))

(declare-fun b!81952 () Bool)

(assert (=> b!81952 (= e!44445 (as emptyset (Set Int)))))

(declare-fun b!81953 () Bool)

(assert (=> b!81953 (= e!44445 (union (insert (h!991 lt!18780) (as emptyset (Set Int))) (content!124 (t!47838 lt!18780))))))

(assert (= (and d!56071 c!20631) b!81952))

(assert (= (and d!56071 (not c!20631)) b!81953))

(declare-fun m!77304 () Bool)

(assert (=> b!81953 m!77304))

(declare-fun m!77306 () Bool)

(assert (=> b!81953 m!77306))

(assert (=> d!55895 d!56071))

(declare-fun d!56073 () Bool)

(declare-fun c!20632 () Bool)

(assert (=> d!56073 (= c!20632 (is-Nil!624 (quickSort!0 less!5)))))

(declare-fun e!44446 () (Set Int))

(assert (=> d!56073 (= (content!124 (quickSort!0 less!5)) e!44446)))

(declare-fun b!81954 () Bool)

(assert (=> b!81954 (= e!44446 (as emptyset (Set Int)))))

(declare-fun b!81955 () Bool)

(assert (=> b!81955 (= e!44446 (union (insert (h!991 (quickSort!0 less!5)) (as emptyset (Set Int))) (content!124 (t!47838 (quickSort!0 less!5)))))))

(assert (= (and d!56073 c!20632) b!81954))

(assert (= (and d!56073 (not c!20632)) b!81955))

(declare-fun m!77308 () Bool)

(assert (=> b!81955 m!77308))

(declare-fun m!77310 () Bool)

(assert (=> b!81955 m!77310))

(assert (=> d!55895 d!56073))

(declare-fun d!56075 () Bool)

(declare-fun c!20633 () Bool)

(assert (=> d!56075 (= c!20633 (is-Nil!624 equal!10))))

(declare-fun e!44447 () (Set Int))

(assert (=> d!56075 (= (content!124 equal!10) e!44447)))

(declare-fun b!81956 () Bool)

(assert (=> b!81956 (= e!44447 (as emptyset (Set Int)))))

(declare-fun b!81957 () Bool)

(assert (=> b!81957 (= e!44447 (union (insert (h!991 equal!10) (as emptyset (Set Int))) (content!124 (t!47838 equal!10))))))

(assert (= (and d!56075 c!20633) b!81956))

(assert (= (and d!56075 (not c!20633)) b!81957))

(declare-fun m!77312 () Bool)

(assert (=> b!81957 m!77312))

(declare-fun m!77314 () Bool)

(assert (=> b!81957 m!77314))

(assert (=> d!55895 d!56075))

(declare-fun d!56077 () Bool)

(declare-fun e!44448 () Bool)

(assert (=> d!56077 e!44448))

(declare-fun c!20634 () Bool)

(assert (=> d!56077 (= c!20634 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!56077 (forall!20 (t!47838 less!5) lambda!9627)))

(assert (=> d!56077 (= (filter_preserves_forall!0 (t!47838 less!5) lambda!9689 lambda!9627) true)))

(declare-fun b!81958 () Bool)

(assert (=> b!81958 (= e!44448 (forall!20 (filter!18 (t!47838 less!5) lambda!9689) lambda!9627))))

(declare-fun lt!18868 () Bool)

(assert (=> b!81958 (= lt!18868 (filter_preserves_forall!0 (t!47838 (t!47838 less!5)) lambda!9689 lambda!9627))))

(declare-fun b!81959 () Bool)

(assert (=> b!81959 (= e!44448 (forall!20 (filter!18 (t!47838 less!5) lambda!9689) lambda!9627))))

(assert (= (and d!56077 c!20634) b!81958))

(assert (= (and d!56077 (not c!20634)) b!81959))

(assert (=> d!56077 m!77014))

(assert (=> b!81958 m!76546))

(assert (=> b!81958 m!76546))

(declare-fun m!77316 () Bool)

(assert (=> b!81958 m!77316))

(declare-fun m!77318 () Bool)

(assert (=> b!81958 m!77318))

(assert (=> b!81959 m!76546))

(assert (=> b!81959 m!76546))

(assert (=> b!81959 m!77316))

(assert (=> b!81596 d!56077))

(declare-fun d!56079 () Bool)

(declare-fun lt!18869 () Int)

(assert (=> d!56079 (>= lt!18869 0)))

(declare-fun e!44449 () Int)

(assert (=> d!56079 (= lt!18869 e!44449)))

(declare-fun c!20635 () Bool)

(assert (=> d!56079 (= c!20635 (is-Nil!624 lt!18760))))

(assert (=> d!56079 (= (size!653 lt!18760) lt!18869)))

(declare-fun b!81960 () Bool)

(assert (=> b!81960 (= e!44449 0)))

(declare-fun b!81961 () Bool)

(assert (=> b!81961 (= e!44449 (+ 1 (size!653 (t!47838 lt!18760))))))

(assert (= (and d!56079 c!20635) b!81960))

(assert (= (and d!56079 (not c!20635)) b!81961))

(declare-fun m!77320 () Bool)

(assert (=> b!81961 m!77320))

(assert (=> d!55881 d!56079))

(assert (=> d!55881 d!56057))

(declare-fun d!56081 () Bool)

(declare-fun e!44451 () Bool)

(assert (=> d!56081 e!44451))

(declare-fun c!20636 () Bool)

(assert (=> d!56081 (= c!20636 (is-Cons!622 (++!73 (quickSort!0 lt!18771) lt!18766)))))

(declare-fun e!44450 () Bool)

(assert (=> d!56081 e!44450))

(declare-fun res!41910 () Bool)

(assert (=> d!56081 (=> (not res!41910) (not e!44450))))

(assert (=> d!56081 (= res!41910 (forall!20 (++!73 (quickSort!0 lt!18771) lt!18766) lambda!9627))))

(assert (=> d!56081 (= (append_preserves_forall!0 (++!73 (quickSort!0 lt!18771) lt!18766) (quickSort!0 lt!18769) lambda!9627) true)))

(declare-fun b!81962 () Bool)

(assert (=> b!81962 (= e!44450 (forall!20 (quickSort!0 lt!18769) lambda!9627))))

(declare-fun b!81963 () Bool)

(assert (=> b!81963 (= e!44451 (forall!20 (++!73 (++!73 (quickSort!0 lt!18771) lt!18766) (quickSort!0 lt!18769)) lambda!9627))))

(declare-fun lt!18870 () Bool)

(assert (=> b!81963 (= lt!18870 (append_preserves_forall!0 (t!47838 (++!73 (quickSort!0 lt!18771) lt!18766)) (quickSort!0 lt!18769) lambda!9627))))

(declare-fun b!81964 () Bool)

(assert (=> b!81964 (= e!44451 (forall!20 (++!73 (++!73 (quickSort!0 lt!18771) lt!18766) (quickSort!0 lt!18769)) lambda!9627))))

(assert (= (and d!56081 res!41910) b!81962))

(assert (= (and d!56081 c!20636) b!81963))

(assert (= (and d!56081 (not c!20636)) b!81964))

(assert (=> d!56081 m!76532))

(assert (=> d!56081 m!76968))

(assert (=> b!81962 m!76534))

(assert (=> b!81962 m!77300))

(assert (=> b!81963 m!76532))

(assert (=> b!81963 m!76534))

(declare-fun m!77322 () Bool)

(assert (=> b!81963 m!77322))

(assert (=> b!81963 m!77322))

(declare-fun m!77324 () Bool)

(assert (=> b!81963 m!77324))

(assert (=> b!81963 m!76534))

(declare-fun m!77326 () Bool)

(assert (=> b!81963 m!77326))

(assert (=> b!81964 m!76532))

(assert (=> b!81964 m!76534))

(assert (=> b!81964 m!77322))

(assert (=> b!81964 m!77322))

(assert (=> b!81964 m!77324))

(assert (=> b!81597 d!56081))

(declare-fun b!81967 () Bool)

(declare-fun res!41911 () Bool)

(declare-fun e!44453 () Bool)

(assert (=> b!81967 (=> (not res!41911) (not e!44453))))

(declare-fun lt!18871 () List!665)

(assert (=> b!81967 (= res!41911 (= (size!653 lt!18871) (+ (size!653 (quickSort!0 lt!18771)) (size!653 lt!18766))))))

(declare-fun b!81966 () Bool)

(declare-fun e!44452 () List!665)

(assert (=> b!81966 (= e!44452 (Cons!622 (h!991 (quickSort!0 lt!18771)) (++!73 (t!47838 (quickSort!0 lt!18771)) lt!18766)))))

(declare-fun b!81968 () Bool)

(assert (=> b!81968 (= e!44453 (or (not (= lt!18766 Nil!624)) (= lt!18871 (quickSort!0 lt!18771))))))

(declare-fun b!81965 () Bool)

(assert (=> b!81965 (= e!44452 lt!18766)))

(declare-fun d!56083 () Bool)

(assert (=> d!56083 e!44453))

(declare-fun res!41912 () Bool)

(assert (=> d!56083 (=> (not res!41912) (not e!44453))))

(assert (=> d!56083 (= res!41912 (= (content!124 lt!18871) (union (content!124 (quickSort!0 lt!18771)) (content!124 lt!18766))))))

(assert (=> d!56083 (= lt!18871 e!44452)))

(declare-fun c!20637 () Bool)

(assert (=> d!56083 (= c!20637 (is-Nil!624 (quickSort!0 lt!18771)))))

(assert (=> d!56083 (= (++!73 (quickSort!0 lt!18771) lt!18766) lt!18871)))

(assert (= (and d!56083 c!20637) b!81965))

(assert (= (and d!56083 (not c!20637)) b!81966))

(assert (= (and d!56083 res!41912) b!81967))

(assert (= (and b!81967 res!41911) b!81968))

(declare-fun m!77328 () Bool)

(assert (=> b!81967 m!77328))

(assert (=> b!81967 m!76530))

(declare-fun m!77330 () Bool)

(assert (=> b!81967 m!77330))

(declare-fun m!77332 () Bool)

(assert (=> b!81967 m!77332))

(declare-fun m!77334 () Bool)

(assert (=> b!81966 m!77334))

(declare-fun m!77336 () Bool)

(assert (=> d!56083 m!77336))

(assert (=> d!56083 m!76530))

(declare-fun m!77338 () Bool)

(assert (=> d!56083 m!77338))

(declare-fun m!77340 () Bool)

(assert (=> d!56083 m!77340))

(assert (=> b!81597 d!56083))

(assert (=> b!81597 d!55995))

(declare-fun bs!39533 () Bool)

(declare-fun b!81972 () Bool)

(assert (= bs!39533 (and b!81972 b!81949)))

(declare-fun lambda!9751 () Int)

(assert (=> bs!39533 (not (= lambda!9751 lambda!9750))))

(assert (=> bs!39533 (not (= lambda!9751 lambda!9749))))

(assert (=> bs!39533 (= lambda!9751 lambda!9748)))

(declare-fun bs!39534 () Bool)

(assert (= bs!39534 (and b!81972 b!81517)))

(assert (=> bs!39534 (not (= lambda!9751 lambda!9663))))

(assert (=> bs!39534 (not (= lambda!9751 lambda!9662))))

(assert (=> bs!39534 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9751 lambda!9661))))

(declare-fun bs!39535 () Bool)

(assert (= bs!39535 (and b!81972 b!81734)))

(assert (=> bs!39535 (not (= lambda!9751 lambda!9711))))

(assert (=> bs!39535 (not (= lambda!9751 lambda!9710))))

(assert (=> bs!39535 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9751 lambda!9709))))

(declare-fun bs!39536 () Bool)

(assert (= bs!39536 (and b!81972 b!81462)))

(assert (=> bs!39536 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9751 lambda!9627))))

(declare-fun bs!39537 () Bool)

(assert (= bs!39537 (and b!81972 b!81495)))

(assert (=> bs!39537 (not (= lambda!9751 lambda!9647))))

(declare-fun bs!39538 () Bool)

(assert (= bs!39538 (and b!81972 b!81804)))

(assert (=> bs!39538 (not (= lambda!9751 lambda!9723))))

(assert (=> bs!39538 (not (= lambda!9751 lambda!9722))))

(assert (=> bs!39538 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9751 lambda!9721))))

(declare-fun bs!39539 () Bool)

(assert (= bs!39539 (and b!81972 b!81885)))

(assert (=> bs!39539 (not (= lambda!9751 lambda!9735))))

(assert (=> bs!39539 (not (= lambda!9751 lambda!9734))))

(assert (=> bs!39539 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9751 lambda!9733))))

(declare-fun bs!39540 () Bool)

(assert (= bs!39540 (and b!81972 b!81742)))

(assert (=> bs!39540 (not (= lambda!9751 lambda!9714))))

(assert (=> bs!39540 (not (= lambda!9751 lambda!9713))))

(assert (=> bs!39540 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9751 lambda!9712))))

(declare-fun bs!39541 () Bool)

(assert (= bs!39541 (and b!81972 b!81922)))

(assert (=> bs!39541 (not (= lambda!9751 lambda!9747))))

(declare-fun bs!39542 () Bool)

(assert (= bs!39542 (and b!81972 b!81907)))

(assert (=> bs!39542 (not (= lambda!9751 lambda!9741))))

(declare-fun bs!39543 () Bool)

(assert (= bs!39543 (and b!81972 b!81709)))

(assert (=> bs!39543 (not (= lambda!9751 lambda!9708))))

(assert (=> bs!39543 (not (= lambda!9751 lambda!9707))))

(assert (=> bs!39543 (= (= (h!991 lt!18769) (h!991 lt!18751)) (= lambda!9751 lambda!9706))))

(declare-fun bs!39544 () Bool)

(assert (= bs!39544 (and b!81972 b!81460)))

(assert (=> bs!39544 (not (= lambda!9751 lambda!9628))))

(declare-fun bs!39545 () Bool)

(assert (= bs!39545 (and b!81972 b!81560)))

(assert (=> bs!39545 (not (= lambda!9751 lambda!9678))))

(assert (=> bs!39545 (not (= lambda!9751 lambda!9677))))

(assert (=> bs!39545 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9751 lambda!9676))))

(declare-fun bs!39546 () Bool)

(assert (= bs!39546 (and b!81972 b!81906)))

(assert (=> bs!39546 (not (= lambda!9751 lambda!9740))))

(declare-fun bs!39547 () Bool)

(assert (= bs!39547 (and b!81972 b!81490)))

(assert (=> bs!39547 (not (= lambda!9751 lambda!9639))))

(assert (=> bs!39547 (not (= lambda!9751 lambda!9638))))

(assert (=> bs!39547 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9751 lambda!9637))))

(declare-fun bs!39548 () Bool)

(assert (= bs!39548 (and b!81972 b!81921)))

(assert (=> bs!39548 (not (= lambda!9751 lambda!9746))))

(declare-fun bs!39549 () Bool)

(assert (= bs!39549 (and b!81972 b!81691)))

(assert (=> bs!39549 (not (= lambda!9751 lambda!9702))))

(assert (=> bs!39549 (not (= lambda!9751 lambda!9701))))

(assert (=> bs!39549 (= (= (h!991 lt!18769) (h!991 lt!18728)) (= lambda!9751 lambda!9700))))

(declare-fun bs!39550 () Bool)

(assert (= bs!39550 (and b!81972 b!81466)))

(assert (=> bs!39550 (not (= lambda!9751 lambda!9629))))

(declare-fun bs!39551 () Bool)

(assert (= bs!39551 (and b!81972 d!56039)))

(assert (=> bs!39551 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9751 lambda!9739))))

(declare-fun bs!39552 () Bool)

(assert (= bs!39552 (and b!81972 b!81780)))

(assert (=> bs!39552 (not (= lambda!9751 lambda!9720))))

(assert (=> bs!39552 (not (= lambda!9751 lambda!9719))))

(assert (=> bs!39552 (= (= (h!991 lt!18769) (h!991 lt!18781)) (= lambda!9751 lambda!9718))))

(declare-fun bs!39553 () Bool)

(assert (= bs!39553 (and b!81972 d!55883)))

(assert (=> bs!39553 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9751 lambda!9685))))

(declare-fun bs!39554 () Bool)

(assert (= bs!39554 (and b!81972 b!81901)))

(assert (=> bs!39554 (not (= lambda!9751 lambda!9738))))

(assert (=> bs!39554 (not (= lambda!9751 lambda!9737))))

(assert (=> bs!39554 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9751 lambda!9736))))

(declare-fun bs!39555 () Bool)

(assert (= bs!39555 (and b!81972 b!81837)))

(assert (=> bs!39555 (not (= lambda!9751 lambda!9729))))

(assert (=> bs!39555 (not (= lambda!9751 lambda!9728))))

(assert (=> bs!39555 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9751 lambda!9727))))

(declare-fun bs!39556 () Bool)

(assert (= bs!39556 (and b!81972 b!81852)))

(assert (=> bs!39556 (not (= lambda!9751 lambda!9732))))

(assert (=> bs!39556 (not (= lambda!9751 lambda!9731))))

(assert (=> bs!39556 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9751 lambda!9730))))

(declare-fun bs!39557 () Bool)

(assert (= bs!39557 (and b!81972 d!55861)))

(assert (=> bs!39557 (not (= lambda!9751 lambda!9646))))

(declare-fun bs!39558 () Bool)

(assert (= bs!39558 (and b!81972 b!81537)))

(assert (=> bs!39558 (not (= lambda!9751 lambda!9669))))

(assert (=> bs!39558 (not (= lambda!9751 lambda!9668))))

(assert (=> bs!39558 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9751 lambda!9667))))

(declare-fun bs!39559 () Bool)

(assert (= bs!39559 (and b!81972 b!81587)))

(assert (=> bs!39559 (not (= lambda!9751 lambda!9686))))

(declare-fun bs!39560 () Bool)

(assert (= bs!39560 (and b!81972 b!81496)))

(assert (=> bs!39560 (not (= lambda!9751 lambda!9648))))

(declare-fun bs!39561 () Bool)

(assert (= bs!39561 (and b!81972 d!55889)))

(assert (=> bs!39561 (not (= lambda!9751 lambda!9693))))

(declare-fun bs!39562 () Bool)

(assert (= bs!39562 (and b!81972 b!81705)))

(assert (=> bs!39562 (not (= lambda!9751 lambda!9705))))

(assert (=> bs!39562 (not (= lambda!9751 lambda!9704))))

(assert (=> bs!39562 (= (= (h!991 lt!18769) (h!991 lt!18752)) (= lambda!9751 lambda!9703))))

(declare-fun bs!39563 () Bool)

(assert (= bs!39563 (and b!81972 b!81522)))

(assert (=> bs!39563 (not (= lambda!9751 lambda!9666))))

(assert (=> bs!39563 (not (= lambda!9751 lambda!9665))))

(assert (=> bs!39563 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9751 lambda!9664))))

(declare-fun bs!39564 () Bool)

(assert (= bs!39564 (and b!81972 b!81598)))

(assert (=> bs!39564 (not (= lambda!9751 lambda!9690))))

(assert (=> bs!39564 (not (= lambda!9751 lambda!9689))))

(assert (=> bs!39564 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9751 lambda!9688))))

(declare-fun bs!39565 () Bool)

(assert (= bs!39565 (and b!81972 b!81588)))

(assert (=> bs!39565 (not (= lambda!9751 lambda!9687))))

(declare-fun bs!39566 () Bool)

(assert (= bs!39566 (and b!81972 b!81776)))

(assert (=> bs!39566 (not (= lambda!9751 lambda!9717))))

(assert (=> bs!39566 (not (= lambda!9751 lambda!9716))))

(assert (=> bs!39566 (= (= (h!991 lt!18769) (h!991 lt!18782)) (= lambda!9751 lambda!9715))))

(declare-fun bs!39567 () Bool)

(assert (= bs!39567 (and b!81972 b!81468)))

(assert (=> bs!39567 (not (= lambda!9751 lambda!9630))))

(declare-fun bs!39568 () Bool)

(assert (= bs!39568 (and b!81972 b!81633)))

(assert (=> bs!39568 (not (= lambda!9751 lambda!9696))))

(assert (=> bs!39568 (not (= lambda!9751 lambda!9695))))

(assert (=> bs!39568 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9751 lambda!9694))))

(declare-fun bs!39569 () Bool)

(assert (= bs!39569 (and b!81972 b!81687)))

(assert (=> bs!39569 (not (= lambda!9751 lambda!9699))))

(assert (=> bs!39569 (not (= lambda!9751 lambda!9698))))

(assert (=> bs!39569 (= (= (h!991 lt!18769) (h!991 lt!18730)) (= lambda!9751 lambda!9697))))

(declare-fun bs!39570 () Bool)

(assert (= bs!39570 (and b!81972 b!81810)))

(assert (=> bs!39570 (not (= lambda!9751 lambda!9726))))

(assert (=> bs!39570 (not (= lambda!9751 lambda!9725))))

(assert (=> bs!39570 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9751 lambda!9724))))

(assert (=> b!81972 true))

(declare-fun lambda!9752 () Int)

(assert (=> bs!39533 (not (= lambda!9752 lambda!9750))))

(assert (=> bs!39533 (= lambda!9752 lambda!9749)))

(assert (=> bs!39533 (not (= lambda!9752 lambda!9748))))

(assert (=> bs!39534 (not (= lambda!9752 lambda!9663))))

(assert (=> bs!39534 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9752 lambda!9662))))

(assert (=> bs!39534 (not (= lambda!9752 lambda!9661))))

(assert (=> bs!39535 (not (= lambda!9752 lambda!9711))))

(assert (=> bs!39535 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9752 lambda!9710))))

(assert (=> bs!39535 (not (= lambda!9752 lambda!9709))))

(assert (=> bs!39536 (not (= lambda!9752 lambda!9627))))

(assert (=> bs!39537 (not (= lambda!9752 lambda!9647))))

(assert (=> bs!39538 (not (= lambda!9752 lambda!9723))))

(assert (=> bs!39538 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9752 lambda!9722))))

(assert (=> bs!39538 (not (= lambda!9752 lambda!9721))))

(assert (=> bs!39539 (not (= lambda!9752 lambda!9735))))

(assert (=> bs!39539 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9752 lambda!9734))))

(assert (=> bs!39539 (not (= lambda!9752 lambda!9733))))

(assert (=> bs!39540 (not (= lambda!9752 lambda!9714))))

(assert (=> bs!39540 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9752 lambda!9713))))

(assert (=> bs!39540 (not (= lambda!9752 lambda!9712))))

(assert (=> bs!39541 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9752 lambda!9747))))

(assert (=> b!81972 (not (= lambda!9752 lambda!9751))))

(assert (=> bs!39542 (not (= lambda!9752 lambda!9741))))

(assert (=> bs!39543 (not (= lambda!9752 lambda!9708))))

(assert (=> bs!39543 (= (= (h!991 lt!18769) (h!991 lt!18751)) (= lambda!9752 lambda!9707))))

(assert (=> bs!39543 (not (= lambda!9752 lambda!9706))))

(assert (=> bs!39544 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9752 lambda!9628))))

(assert (=> bs!39545 (not (= lambda!9752 lambda!9678))))

(assert (=> bs!39545 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9752 lambda!9677))))

(assert (=> bs!39545 (not (= lambda!9752 lambda!9676))))

(assert (=> bs!39546 (not (= lambda!9752 lambda!9740))))

(assert (=> bs!39547 (not (= lambda!9752 lambda!9639))))

(assert (=> bs!39547 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9752 lambda!9638))))

(assert (=> bs!39547 (not (= lambda!9752 lambda!9637))))

(assert (=> bs!39548 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9752 lambda!9746))))

(assert (=> bs!39549 (not (= lambda!9752 lambda!9702))))

(assert (=> bs!39549 (= (= (h!991 lt!18769) (h!991 lt!18728)) (= lambda!9752 lambda!9701))))

(assert (=> bs!39549 (not (= lambda!9752 lambda!9700))))

(assert (=> bs!39550 (not (= lambda!9752 lambda!9629))))

(assert (=> bs!39551 (not (= lambda!9752 lambda!9739))))

(assert (=> bs!39552 (not (= lambda!9752 lambda!9720))))

(assert (=> bs!39552 (= (= (h!991 lt!18769) (h!991 lt!18781)) (= lambda!9752 lambda!9719))))

(assert (=> bs!39552 (not (= lambda!9752 lambda!9718))))

(assert (=> bs!39553 (not (= lambda!9752 lambda!9685))))

(assert (=> bs!39554 (not (= lambda!9752 lambda!9738))))

(assert (=> bs!39554 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9752 lambda!9737))))

(assert (=> bs!39554 (not (= lambda!9752 lambda!9736))))

(assert (=> bs!39555 (not (= lambda!9752 lambda!9729))))

(assert (=> bs!39555 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9752 lambda!9728))))

(assert (=> bs!39555 (not (= lambda!9752 lambda!9727))))

(assert (=> bs!39556 (not (= lambda!9752 lambda!9732))))

(assert (=> bs!39556 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9752 lambda!9731))))

(assert (=> bs!39556 (not (= lambda!9752 lambda!9730))))

(assert (=> bs!39557 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9752 lambda!9646))))

(assert (=> bs!39558 (not (= lambda!9752 lambda!9669))))

(assert (=> bs!39558 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9752 lambda!9668))))

(assert (=> bs!39558 (not (= lambda!9752 lambda!9667))))

(assert (=> bs!39559 (not (= lambda!9752 lambda!9686))))

(assert (=> bs!39560 (not (= lambda!9752 lambda!9648))))

(assert (=> bs!39561 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9752 lambda!9693))))

(assert (=> bs!39562 (not (= lambda!9752 lambda!9705))))

(assert (=> bs!39562 (= (= (h!991 lt!18769) (h!991 lt!18752)) (= lambda!9752 lambda!9704))))

(assert (=> bs!39562 (not (= lambda!9752 lambda!9703))))

(assert (=> bs!39563 (not (= lambda!9752 lambda!9666))))

(assert (=> bs!39563 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9752 lambda!9665))))

(assert (=> bs!39563 (not (= lambda!9752 lambda!9664))))

(assert (=> bs!39564 (not (= lambda!9752 lambda!9690))))

(assert (=> bs!39564 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9752 lambda!9689))))

(assert (=> bs!39564 (not (= lambda!9752 lambda!9688))))

(assert (=> bs!39565 (not (= lambda!9752 lambda!9687))))

(assert (=> bs!39566 (not (= lambda!9752 lambda!9717))))

(assert (=> bs!39566 (= (= (h!991 lt!18769) (h!991 lt!18782)) (= lambda!9752 lambda!9716))))

(assert (=> bs!39566 (not (= lambda!9752 lambda!9715))))

(assert (=> bs!39567 (not (= lambda!9752 lambda!9630))))

(assert (=> bs!39568 (not (= lambda!9752 lambda!9696))))

(assert (=> bs!39568 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9752 lambda!9695))))

(assert (=> bs!39568 (not (= lambda!9752 lambda!9694))))

(assert (=> bs!39569 (not (= lambda!9752 lambda!9699))))

(assert (=> bs!39569 (= (= (h!991 lt!18769) (h!991 lt!18730)) (= lambda!9752 lambda!9698))))

(assert (=> bs!39569 (not (= lambda!9752 lambda!9697))))

(assert (=> bs!39570 (not (= lambda!9752 lambda!9726))))

(assert (=> bs!39570 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9752 lambda!9725))))

(assert (=> bs!39570 (not (= lambda!9752 lambda!9724))))

(assert (=> b!81972 true))

(declare-fun lambda!9753 () Int)

(assert (=> bs!39533 (= lambda!9753 lambda!9750)))

(assert (=> bs!39533 (not (= lambda!9753 lambda!9749))))

(assert (=> bs!39533 (not (= lambda!9753 lambda!9748))))

(assert (=> bs!39534 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9753 lambda!9663))))

(assert (=> bs!39534 (not (= lambda!9753 lambda!9662))))

(assert (=> bs!39534 (not (= lambda!9753 lambda!9661))))

(assert (=> bs!39535 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9753 lambda!9711))))

(assert (=> bs!39535 (not (= lambda!9753 lambda!9710))))

(assert (=> bs!39535 (not (= lambda!9753 lambda!9709))))

(assert (=> bs!39536 (not (= lambda!9753 lambda!9627))))

(assert (=> bs!39537 (not (= lambda!9753 lambda!9647))))

(assert (=> bs!39538 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9753 lambda!9723))))

(assert (=> bs!39538 (not (= lambda!9753 lambda!9722))))

(assert (=> bs!39538 (not (= lambda!9753 lambda!9721))))

(assert (=> bs!39539 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9753 lambda!9735))))

(assert (=> bs!39539 (not (= lambda!9753 lambda!9734))))

(assert (=> bs!39539 (not (= lambda!9753 lambda!9733))))

(assert (=> bs!39540 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9753 lambda!9714))))

(assert (=> bs!39540 (not (= lambda!9753 lambda!9713))))

(assert (=> bs!39540 (not (= lambda!9753 lambda!9712))))

(assert (=> bs!39541 (not (= lambda!9753 lambda!9747))))

(assert (=> b!81972 (not (= lambda!9753 lambda!9752))))

(assert (=> b!81972 (not (= lambda!9753 lambda!9751))))

(assert (=> bs!39542 (not (= lambda!9753 lambda!9741))))

(assert (=> bs!39543 (= (= (h!991 lt!18769) (h!991 lt!18751)) (= lambda!9753 lambda!9708))))

(assert (=> bs!39543 (not (= lambda!9753 lambda!9707))))

(assert (=> bs!39543 (not (= lambda!9753 lambda!9706))))

(assert (=> bs!39544 (not (= lambda!9753 lambda!9628))))

(assert (=> bs!39545 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9753 lambda!9678))))

(assert (=> bs!39545 (not (= lambda!9753 lambda!9677))))

(assert (=> bs!39545 (not (= lambda!9753 lambda!9676))))

(assert (=> bs!39546 (not (= lambda!9753 lambda!9740))))

(assert (=> bs!39547 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9753 lambda!9639))))

(assert (=> bs!39547 (not (= lambda!9753 lambda!9638))))

(assert (=> bs!39547 (not (= lambda!9753 lambda!9637))))

(assert (=> bs!39548 (not (= lambda!9753 lambda!9746))))

(assert (=> bs!39549 (= (= (h!991 lt!18769) (h!991 lt!18728)) (= lambda!9753 lambda!9702))))

(assert (=> bs!39549 (not (= lambda!9753 lambda!9701))))

(assert (=> bs!39549 (not (= lambda!9753 lambda!9700))))

(assert (=> bs!39550 (= (= (h!991 lt!18769) (h!991 ls!96)) (= lambda!9753 lambda!9629))))

(assert (=> bs!39551 (not (= lambda!9753 lambda!9739))))

(assert (=> bs!39552 (= (= (h!991 lt!18769) (h!991 lt!18781)) (= lambda!9753 lambda!9720))))

(assert (=> bs!39552 (not (= lambda!9753 lambda!9719))))

(assert (=> bs!39552 (not (= lambda!9753 lambda!9718))))

(assert (=> bs!39553 (not (= lambda!9753 lambda!9685))))

(assert (=> bs!39554 (= (= (h!991 lt!18769) (h!991 lt!18736)) (= lambda!9753 lambda!9738))))

(assert (=> bs!39554 (not (= lambda!9753 lambda!9737))))

(assert (=> bs!39554 (not (= lambda!9753 lambda!9736))))

(assert (=> bs!39555 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9753 lambda!9729))))

(assert (=> bs!39555 (not (= lambda!9753 lambda!9728))))

(assert (=> bs!39555 (not (= lambda!9753 lambda!9727))))

(assert (=> bs!39556 (= (= (h!991 lt!18769) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9753 lambda!9732))))

(assert (=> bs!39556 (not (= lambda!9753 lambda!9731))))

(assert (=> bs!39556 (not (= lambda!9753 lambda!9730))))

(assert (=> bs!39557 (not (= lambda!9753 lambda!9646))))

(assert (=> bs!39558 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9753 lambda!9669))))

(assert (=> bs!39558 (not (= lambda!9753 lambda!9668))))

(assert (=> bs!39558 (not (= lambda!9753 lambda!9667))))

(assert (=> bs!39559 (not (= lambda!9753 lambda!9686))))

(assert (=> bs!39560 (not (= lambda!9753 lambda!9648))))

(assert (=> bs!39561 (not (= lambda!9753 lambda!9693))))

(assert (=> bs!39562 (= (= (h!991 lt!18769) (h!991 lt!18752)) (= lambda!9753 lambda!9705))))

(assert (=> bs!39562 (not (= lambda!9753 lambda!9704))))

(assert (=> bs!39562 (not (= lambda!9753 lambda!9703))))

(assert (=> bs!39563 (= (= (h!991 lt!18769) (h!991 more!5)) (= lambda!9753 lambda!9666))))

(assert (=> bs!39563 (not (= lambda!9753 lambda!9665))))

(assert (=> bs!39563 (not (= lambda!9753 lambda!9664))))

(assert (=> bs!39564 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9753 lambda!9690))))

(assert (=> bs!39564 (not (= lambda!9753 lambda!9689))))

(assert (=> bs!39564 (not (= lambda!9753 lambda!9688))))

(assert (=> bs!39565 (not (= lambda!9753 lambda!9687))))

(assert (=> bs!39566 (= (= (h!991 lt!18769) (h!991 lt!18782)) (= lambda!9753 lambda!9717))))

(assert (=> bs!39566 (not (= lambda!9753 lambda!9716))))

(assert (=> bs!39566 (not (= lambda!9753 lambda!9715))))

(assert (=> bs!39567 (not (= lambda!9753 lambda!9630))))

(assert (=> bs!39568 (= (= (h!991 lt!18769) (h!991 less!5)) (= lambda!9753 lambda!9696))))

(assert (=> bs!39568 (not (= lambda!9753 lambda!9695))))

(assert (=> bs!39568 (not (= lambda!9753 lambda!9694))))

(assert (=> bs!39569 (= (= (h!991 lt!18769) (h!991 lt!18730)) (= lambda!9753 lambda!9699))))

(assert (=> bs!39569 (not (= lambda!9753 lambda!9698))))

(assert (=> bs!39569 (not (= lambda!9753 lambda!9697))))

(assert (=> bs!39570 (= (= (h!991 lt!18769) (h!991 lt!18771)) (= lambda!9753 lambda!9726))))

(assert (=> bs!39570 (not (= lambda!9753 lambda!9725))))

(assert (=> bs!39570 (not (= lambda!9753 lambda!9724))))

(assert (=> b!81972 true))

(declare-fun b!81969 () Bool)

(declare-fun e!44454 () List!665)

(assert (=> b!81969 (= e!44454 Nil!624)))

(declare-fun d!56085 () Bool)

(declare-fun c!20638 () Bool)

(assert (=> d!56085 (= c!20638 (is-Nil!624 lt!18769))))

(assert (=> d!56085 (= (quickSort!0 lt!18769) e!44454)))

(declare-fun b!81971 () Bool)

(declare-fun e!44455 () List!665)

(assert (=> b!81971 (= e!44455 lt!18769)))

(declare-fun b!81970 () Bool)

(assert (=> b!81970 (= e!44454 e!44455)))

(declare-fun c!20639 () Bool)

(assert (=> b!81970 (= c!20639 (and (is-Cons!622 lt!18769) (is-Nil!624 (t!47838 lt!18769))))))

(assert (=> b!81972 (= e!44455 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18769) lambda!9751)) (Cons!622 (h!991 lt!18769) (filter!18 (t!47838 lt!18769) lambda!9752))) (quickSort!0 (filter!18 (t!47838 lt!18769) lambda!9753))))))

(assert (= (and b!81970 c!20639) b!81971))

(assert (= (and b!81970 (not c!20639)) b!81972))

(assert (= (and d!56085 c!20638) b!81969))

(assert (= (and d!56085 (not c!20638)) b!81970))

(declare-fun m!77342 () Bool)

(assert (=> b!81972 m!77342))

(declare-fun m!77344 () Bool)

(assert (=> b!81972 m!77344))

(assert (=> b!81972 m!77342))

(declare-fun m!77346 () Bool)

(assert (=> b!81972 m!77346))

(declare-fun m!77348 () Bool)

(assert (=> b!81972 m!77348))

(declare-fun m!77350 () Bool)

(assert (=> b!81972 m!77350))

(assert (=> b!81972 m!77346))

(assert (=> b!81972 m!77350))

(declare-fun m!77352 () Bool)

(assert (=> b!81972 m!77352))

(assert (=> b!81972 m!77348))

(assert (=> b!81972 m!77344))

(declare-fun m!77354 () Bool)

(assert (=> b!81972 m!77354))

(assert (=> b!81597 d!56085))

(assert (=> b!81555 d!55951))

(assert (=> b!81555 d!55895))

(declare-fun d!56087 () Bool)

(declare-fun res!41913 () Bool)

(declare-fun e!44456 () Bool)

(assert (=> d!56087 (=> res!41913 e!44456)))

(assert (=> d!56087 (= res!41913 (not (and (is-Cons!622 equal!10) (is-Cons!622 (t!47838 equal!10)))))))

(assert (=> d!56087 (= (isSorted!1 equal!10) e!44456)))

(declare-fun b!81973 () Bool)

(declare-fun e!44457 () Bool)

(assert (=> b!81973 (= e!44456 e!44457)))

(declare-fun res!41914 () Bool)

(assert (=> b!81973 (=> (not res!41914) (not e!44457))))

(assert (=> b!81973 (= res!41914 (<= (h!991 equal!10) (h!991 (t!47838 equal!10))))))

(declare-fun b!81974 () Bool)

(assert (=> b!81974 (= e!44457 (isSorted!1 (t!47838 equal!10)))))

(assert (= (and d!56087 (not res!41913)) b!81973))

(assert (= (and b!81973 res!41914) b!81974))

(declare-fun m!77356 () Bool)

(assert (=> b!81974 m!77356))

(assert (=> b!81550 d!56087))

(assert (=> b!81532 d!56035))

(assert (=> b!81532 d!55895))

(declare-fun d!56089 () Bool)

(declare-fun e!44459 () Bool)

(assert (=> d!56089 e!44459))

(declare-fun c!20640 () Bool)

(assert (=> d!56089 (= c!20640 (is-Cons!622 (t!47838 (quickSort!0 less!5))))))

(declare-fun e!44458 () Bool)

(assert (=> d!56089 e!44458))

(declare-fun res!41915 () Bool)

(assert (=> d!56089 (=> (not res!41915) (not e!44458))))

(assert (=> d!56089 (= res!41915 (forall!20 (t!47838 (quickSort!0 less!5)) lambda!9630))))

(assert (=> d!56089 (= (append_preserves_forall!0 (t!47838 (quickSort!0 less!5)) equal!10 lambda!9630) true)))

(declare-fun b!81975 () Bool)

(assert (=> b!81975 (= e!44458 (forall!20 equal!10 lambda!9630))))

(declare-fun b!81976 () Bool)

(assert (=> b!81976 (= e!44459 (forall!20 (++!73 (t!47838 (quickSort!0 less!5)) equal!10) lambda!9630))))

(declare-fun lt!18872 () Bool)

(assert (=> b!81976 (= lt!18872 (append_preserves_forall!0 (t!47838 (t!47838 (quickSort!0 less!5))) equal!10 lambda!9630))))

(declare-fun b!81977 () Bool)

(assert (=> b!81977 (= e!44459 (forall!20 (++!73 (t!47838 (quickSort!0 less!5)) equal!10) lambda!9630))))

(assert (= (and d!56089 res!41915) b!81975))

(assert (= (and d!56089 c!20640) b!81976))

(assert (= (and d!56089 (not c!20640)) b!81977))

(assert (=> d!56089 m!76940))

(assert (=> b!81975 m!76440))

(assert (=> b!81976 m!76576))

(assert (=> b!81976 m!76576))

(declare-fun m!77358 () Bool)

(assert (=> b!81976 m!77358))

(declare-fun m!77360 () Bool)

(assert (=> b!81976 m!77360))

(assert (=> b!81977 m!76576))

(assert (=> b!81977 m!76576))

(assert (=> b!81977 m!77358))

(assert (=> b!81532 d!56089))

(assert (=> b!81613 d!56035))

(declare-fun b!81978 () Bool)

(declare-fun e!44461 () Bool)

(declare-fun e!44460 () Bool)

(assert (=> b!81978 (= e!44461 e!44460)))

(declare-fun res!41917 () Bool)

(assert (=> b!81978 (=> res!41917 e!44460)))

(assert (=> b!81978 (= res!41917 (not (forall!20 (t!47838 (++!73 (quickSort!0 less!5) equal!10)) lambda!9630)))))

(declare-fun lt!18873 () Bool)

(assert (=> b!81978 (= lt!18873 (forall_last!0 (t!47838 (t!47838 (++!73 (quickSort!0 less!5) equal!10))) lambda!9630))))

(declare-fun b!81979 () Bool)

(declare-fun res!41916 () Bool)

(declare-fun e!44462 () Bool)

(assert (=> b!81979 (=> res!41916 e!44462)))

(assert (=> b!81979 (= res!41916 (isEmpty!677 (t!47838 (++!73 (quickSort!0 less!5) equal!10))))))

(declare-fun b!81980 () Bool)

(assert (=> b!81980 (= e!44461 e!44462)))

(declare-fun res!41919 () Bool)

(assert (=> b!81980 (=> res!41919 e!44462)))

(assert (=> b!81980 (= res!41919 (not (forall!20 (t!47838 (++!73 (quickSort!0 less!5) equal!10)) lambda!9630)))))

(declare-fun b!81981 () Bool)

(declare-fun res!41918 () Bool)

(assert (=> b!81981 (=> res!41918 e!44460)))

(assert (=> b!81981 (= res!41918 (isEmpty!677 (t!47838 (++!73 (quickSort!0 less!5) equal!10))))))

(declare-fun d!56091 () Bool)

(assert (=> d!56091 e!44461))

(declare-fun c!20641 () Bool)

(assert (=> d!56091 (= c!20641 (is-Cons!622 (t!47838 (++!73 (quickSort!0 less!5) equal!10))))))

(assert (=> d!56091 (= (forall_last!0 (t!47838 (++!73 (quickSort!0 less!5) equal!10)) lambda!9630) true)))

(declare-fun b!81982 () Bool)

(assert (=> b!81982 (= e!44462 (dynLambda!984 lambda!9630 (last!17 (t!47838 (++!73 (quickSort!0 less!5) equal!10)))))))

(declare-fun b!81983 () Bool)

(assert (=> b!81983 (= e!44460 (dynLambda!984 lambda!9630 (last!17 (t!47838 (++!73 (quickSort!0 less!5) equal!10)))))))

(assert (= (and b!81978 (not res!41917)) b!81981))

(assert (= (and b!81981 (not res!41918)) b!81983))

(assert (= (and b!81980 (not res!41919)) b!81979))

(assert (= (and b!81979 (not res!41916)) b!81982))

(assert (= (and d!56091 c!20641) b!81978))

(assert (= (and d!56091 (not c!20641)) b!81980))

(declare-fun b_lambda!16151 () Bool)

(assert (=> (not b_lambda!16151) (not b!81982)))

(declare-fun b_lambda!16153 () Bool)

(assert (=> (not b_lambda!16153) (not b!81983)))

(assert (=> b!81978 m!77212))

(declare-fun m!77362 () Bool)

(assert (=> b!81978 m!77362))

(assert (=> b!81982 m!77262))

(assert (=> b!81982 m!77262))

(declare-fun m!77364 () Bool)

(assert (=> b!81982 m!77364))

(declare-fun m!77366 () Bool)

(assert (=> b!81981 m!77366))

(assert (=> b!81980 m!77212))

(assert (=> b!81979 m!77366))

(assert (=> b!81983 m!77262))

(assert (=> b!81983 m!77262))

(assert (=> b!81983 m!77364))

(assert (=> b!81613 d!56091))

(declare-fun b!81984 () Bool)

(declare-fun e!44464 () List!665)

(declare-fun lt!18874 () List!665)

(assert (=> b!81984 (= e!44464 (Cons!622 (h!991 (t!47838 (t!47838 ls!96))) lt!18874))))

(declare-fun b!81985 () Bool)

(declare-fun e!44466 () Bool)

(assert (=> b!81985 (= e!44466 (dynLambda!984 lambda!9627 (h!991 (t!47838 (t!47838 ls!96)))))))

(declare-fun b!81986 () Bool)

(assert (=> b!81986 (= e!44464 lt!18874)))

(declare-fun d!56093 () Bool)

(declare-fun e!44463 () Bool)

(assert (=> d!56093 e!44463))

(declare-fun res!41922 () Bool)

(assert (=> d!56093 (=> (not res!41922) (not e!44463))))

(declare-fun lt!18875 () List!665)

(assert (=> d!56093 (= res!41922 (<= (size!653 lt!18875) (size!653 (t!47838 (t!47838 ls!96)))))))

(declare-fun e!44465 () List!665)

(assert (=> d!56093 (= lt!18875 e!44465)))

(declare-fun c!20643 () Bool)

(assert (=> d!56093 (= c!20643 (is-Nil!624 (t!47838 (t!47838 ls!96))))))

(assert (=> d!56093 (= (filter!18 (t!47838 (t!47838 ls!96)) lambda!9627) lt!18875)))

(declare-fun b!81987 () Bool)

(declare-fun res!41920 () Bool)

(assert (=> b!81987 (=> (not res!41920) (not e!44463))))

(assert (=> b!81987 (= res!41920 (subset (content!124 lt!18875) (content!124 (t!47838 (t!47838 ls!96)))))))

(declare-fun b!81988 () Bool)

(assert (=> b!81988 (= e!44465 Nil!624)))

(declare-fun b!81989 () Bool)

(assert (=> b!81989 (= e!44463 (forall!20 lt!18875 lambda!9627))))

(declare-fun b!81990 () Bool)

(assert (=> b!81990 (= e!44465 e!44464)))

(declare-fun c!20642 () Bool)

(assert (=> b!81990 (= c!20642 e!44466)))

(declare-fun res!41921 () Bool)

(assert (=> b!81990 (=> (not res!41921) (not e!44466))))

(assert (=> b!81990 (= res!41921 (is-Cons!622 (t!47838 (t!47838 ls!96))))))

(assert (=> b!81990 (= lt!18874 (filter!18 (t!47838 (t!47838 (t!47838 ls!96))) lambda!9627))))

(assert (= (and b!81990 res!41921) b!81985))

(assert (= (and b!81990 c!20642) b!81984))

(assert (= (and b!81990 (not c!20642)) b!81986))

(assert (= (and d!56093 c!20643) b!81988))

(assert (= (and d!56093 (not c!20643)) b!81990))

(assert (= (and d!56093 res!41922) b!81987))

(assert (= (and b!81987 res!41920) b!81989))

(declare-fun b_lambda!16155 () Bool)

(assert (=> (not b_lambda!16155) (not b!81985)))

(declare-fun m!77368 () Bool)

(assert (=> b!81989 m!77368))

(declare-fun m!77370 () Bool)

(assert (=> b!81987 m!77370))

(assert (=> b!81987 m!76632))

(declare-fun m!77372 () Bool)

(assert (=> b!81985 m!77372))

(declare-fun m!77374 () Bool)

(assert (=> d!56093 m!77374))

(assert (=> d!56093 m!76638))

(declare-fun m!77376 () Bool)

(assert (=> b!81990 m!77376))

(assert (=> b!81595 d!56093))

(declare-fun d!56095 () Bool)

(declare-fun res!41923 () Bool)

(declare-fun e!44467 () Bool)

(assert (=> d!56095 (=> res!41923 e!44467)))

(assert (=> d!56095 (= res!41923 (is-Nil!624 (quickSort!0 more!5)))))

(assert (=> d!56095 (= (forall!20 (quickSort!0 more!5) lambda!9629) e!44467)))

(declare-fun b!81991 () Bool)

(declare-fun e!44468 () Bool)

(assert (=> b!81991 (= e!44467 e!44468)))

(declare-fun res!41924 () Bool)

(assert (=> b!81991 (=> (not res!41924) (not e!44468))))

(assert (=> b!81991 (= res!41924 (dynLambda!984 lambda!9629 (h!991 (quickSort!0 more!5))))))

(declare-fun b!81992 () Bool)

(assert (=> b!81992 (= e!44468 (forall!20 (t!47838 (quickSort!0 more!5)) lambda!9629))))

(assert (= (and d!56095 (not res!41923)) b!81991))

(assert (= (and b!81991 res!41924) b!81992))

(declare-fun b_lambda!16157 () Bool)

(assert (=> (not b_lambda!16157) (not b!81991)))

(declare-fun m!77378 () Bool)

(assert (=> b!81991 m!77378))

(declare-fun m!77380 () Bool)

(assert (=> b!81992 m!77380))

(assert (=> d!55869 d!56095))

(assert (=> d!55869 d!55859))

(declare-fun d!56097 () Bool)

(declare-fun res!41925 () Bool)

(declare-fun e!44469 () Bool)

(assert (=> d!56097 (=> res!41925 e!44469)))

(assert (=> d!56097 (= res!41925 (is-Nil!624 more!5))))

(assert (=> d!56097 (= (forall!20 more!5 lambda!9629) e!44469)))

(declare-fun b!81993 () Bool)

(declare-fun e!44470 () Bool)

(assert (=> b!81993 (= e!44469 e!44470)))

(declare-fun res!41926 () Bool)

(assert (=> b!81993 (=> (not res!41926) (not e!44470))))

(assert (=> b!81993 (= res!41926 (dynLambda!984 lambda!9629 (h!991 more!5)))))

(declare-fun b!81994 () Bool)

(assert (=> b!81994 (= e!44470 (forall!20 (t!47838 more!5) lambda!9629))))

(assert (= (and d!56097 (not res!41925)) b!81993))

(assert (= (and b!81993 res!41926) b!81994))

(declare-fun b_lambda!16159 () Bool)

(assert (=> (not b_lambda!16159) (not b!81993)))

(declare-fun m!77382 () Bool)

(assert (=> b!81993 m!77382))

(assert (=> b!81994 m!76616))

(assert (=> d!55869 d!56097))

(declare-fun b!81995 () Bool)

(declare-fun e!44472 () List!665)

(declare-fun lt!18876 () List!665)

(assert (=> b!81995 (= e!44472 (Cons!622 (h!991 (t!47838 less!5)) lt!18876))))

(declare-fun b!81996 () Bool)

(declare-fun e!44474 () Bool)

(assert (=> b!81996 (= e!44474 (dynLambda!984 lambda!9695 (h!991 (t!47838 less!5))))))

(declare-fun b!81997 () Bool)

(assert (=> b!81997 (= e!44472 lt!18876)))

(declare-fun d!56099 () Bool)

(declare-fun e!44471 () Bool)

(assert (=> d!56099 e!44471))

(declare-fun res!41929 () Bool)

(assert (=> d!56099 (=> (not res!41929) (not e!44471))))

(declare-fun lt!18877 () List!665)

(assert (=> d!56099 (= res!41929 (<= (size!653 lt!18877) (size!653 (t!47838 less!5))))))

(declare-fun e!44473 () List!665)

(assert (=> d!56099 (= lt!18877 e!44473)))

(declare-fun c!20645 () Bool)

(assert (=> d!56099 (= c!20645 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!56099 (= (filter!18 (t!47838 less!5) lambda!9695) lt!18877)))

(declare-fun b!81998 () Bool)

(declare-fun res!41927 () Bool)

(assert (=> b!81998 (=> (not res!41927) (not e!44471))))

(assert (=> b!81998 (= res!41927 (subset (content!124 lt!18877) (content!124 (t!47838 less!5))))))

(declare-fun b!81999 () Bool)

(assert (=> b!81999 (= e!44473 Nil!624)))

(declare-fun b!82000 () Bool)

(assert (=> b!82000 (= e!44471 (forall!20 lt!18877 lambda!9695))))

(declare-fun b!82001 () Bool)

(assert (=> b!82001 (= e!44473 e!44472)))

(declare-fun c!20644 () Bool)

(assert (=> b!82001 (= c!20644 e!44474)))

(declare-fun res!41928 () Bool)

(assert (=> b!82001 (=> (not res!41928) (not e!44474))))

(assert (=> b!82001 (= res!41928 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!82001 (= lt!18876 (filter!18 (t!47838 (t!47838 less!5)) lambda!9695))))

(assert (= (and b!82001 res!41928) b!81996))

(assert (= (and b!82001 c!20644) b!81995))

(assert (= (and b!82001 (not c!20644)) b!81997))

(assert (= (and d!56099 c!20645) b!81999))

(assert (= (and d!56099 (not c!20645)) b!82001))

(assert (= (and d!56099 res!41929) b!81998))

(assert (= (and b!81998 res!41927) b!82000))

(declare-fun b_lambda!16161 () Bool)

(assert (=> (not b_lambda!16161) (not b!81996)))

(declare-fun m!77384 () Bool)

(assert (=> b!82000 m!77384))

(declare-fun m!77386 () Bool)

(assert (=> b!81998 m!77386))

(assert (=> b!81998 m!76790))

(declare-fun m!77388 () Bool)

(assert (=> b!81996 m!77388))

(declare-fun m!77390 () Bool)

(assert (=> d!56099 m!77390))

(assert (=> d!56099 m!76796))

(declare-fun m!77392 () Bool)

(assert (=> b!82001 m!77392))

(assert (=> b!81633 d!56099))

(declare-fun b!82002 () Bool)

(declare-fun e!44476 () List!665)

(declare-fun lt!18878 () List!665)

(assert (=> b!82002 (= e!44476 (Cons!622 (h!991 (t!47838 less!5)) lt!18878))))

(declare-fun b!82003 () Bool)

(declare-fun e!44478 () Bool)

(assert (=> b!82003 (= e!44478 (dynLambda!984 lambda!9696 (h!991 (t!47838 less!5))))))

(declare-fun b!82004 () Bool)

(assert (=> b!82004 (= e!44476 lt!18878)))

(declare-fun d!56101 () Bool)

(declare-fun e!44475 () Bool)

(assert (=> d!56101 e!44475))

(declare-fun res!41932 () Bool)

(assert (=> d!56101 (=> (not res!41932) (not e!44475))))

(declare-fun lt!18879 () List!665)

(assert (=> d!56101 (= res!41932 (<= (size!653 lt!18879) (size!653 (t!47838 less!5))))))

(declare-fun e!44477 () List!665)

(assert (=> d!56101 (= lt!18879 e!44477)))

(declare-fun c!20647 () Bool)

(assert (=> d!56101 (= c!20647 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!56101 (= (filter!18 (t!47838 less!5) lambda!9696) lt!18879)))

(declare-fun b!82005 () Bool)

(declare-fun res!41930 () Bool)

(assert (=> b!82005 (=> (not res!41930) (not e!44475))))

(assert (=> b!82005 (= res!41930 (subset (content!124 lt!18879) (content!124 (t!47838 less!5))))))

(declare-fun b!82006 () Bool)

(assert (=> b!82006 (= e!44477 Nil!624)))

(declare-fun b!82007 () Bool)

(assert (=> b!82007 (= e!44475 (forall!20 lt!18879 lambda!9696))))

(declare-fun b!82008 () Bool)

(assert (=> b!82008 (= e!44477 e!44476)))

(declare-fun c!20646 () Bool)

(assert (=> b!82008 (= c!20646 e!44478)))

(declare-fun res!41931 () Bool)

(assert (=> b!82008 (=> (not res!41931) (not e!44478))))

(assert (=> b!82008 (= res!41931 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!82008 (= lt!18878 (filter!18 (t!47838 (t!47838 less!5)) lambda!9696))))

(assert (= (and b!82008 res!41931) b!82003))

(assert (= (and b!82008 c!20646) b!82002))

(assert (= (and b!82008 (not c!20646)) b!82004))

(assert (= (and d!56101 c!20647) b!82006))

(assert (= (and d!56101 (not c!20647)) b!82008))

(assert (= (and d!56101 res!41932) b!82005))

(assert (= (and b!82005 res!41930) b!82007))

(declare-fun b_lambda!16163 () Bool)

(assert (=> (not b_lambda!16163) (not b!82003)))

(declare-fun m!77394 () Bool)

(assert (=> b!82007 m!77394))

(declare-fun m!77396 () Bool)

(assert (=> b!82005 m!77396))

(assert (=> b!82005 m!76790))

(declare-fun m!77398 () Bool)

(assert (=> b!82003 m!77398))

(declare-fun m!77400 () Bool)

(assert (=> d!56101 m!77400))

(assert (=> d!56101 m!76796))

(declare-fun m!77402 () Bool)

(assert (=> b!82008 m!77402))

(assert (=> b!81633 d!56101))

(assert (=> b!81633 d!55975))

(declare-fun b!82009 () Bool)

(declare-fun res!41935 () Bool)

(declare-fun e!44480 () Bool)

(assert (=> b!82009 (=> (not res!41935) (not e!44480))))

(assert (=> b!82009 (= res!41935 (isSorted!1 lt!18783))))

(declare-fun d!56103 () Bool)

(declare-fun e!44479 () Bool)

(assert (=> d!56103 e!44479))

(declare-fun c!20648 () Bool)

(assert (=> d!56103 (= c!20648 (is-Cons!622 (quickSort!0 lt!18782)))))

(assert (=> d!56103 e!44480))

(declare-fun res!41933 () Bool)

(assert (=> d!56103 (=> (not res!41933) (not e!44480))))

(assert (=> d!56103 (= res!41933 (isSorted!1 (quickSort!0 lt!18782)))))

(assert (=> d!56103 (= (append_sorted!0 (quickSort!0 lt!18782) lt!18783) true)))

(declare-fun b!82010 () Bool)

(declare-fun res!41934 () Bool)

(declare-fun e!44481 () Bool)

(assert (=> b!82010 (=> res!41934 e!44481)))

(assert (=> b!82010 (= res!41934 (isEmpty!677 lt!18783))))

(declare-fun b!82011 () Bool)

(assert (=> b!82011 (= e!44479 (isSorted!1 (++!73 (quickSort!0 lt!18782) lt!18783)))))

(declare-fun lt!18880 () Bool)

(assert (=> b!82011 (= lt!18880 (append_sorted!0 (t!47838 (quickSort!0 lt!18782)) lt!18783))))

(declare-fun b!82012 () Bool)

(assert (=> b!82012 (= e!44481 (<= (last!17 (quickSort!0 lt!18782)) (head!1055 lt!18783)))))

(declare-fun b!82013 () Bool)

(assert (=> b!82013 (= e!44480 e!44481)))

(declare-fun res!41936 () Bool)

(assert (=> b!82013 (=> res!41936 e!44481)))

(assert (=> b!82013 (= res!41936 (isEmpty!677 (quickSort!0 lt!18782)))))

(declare-fun b!82014 () Bool)

(assert (=> b!82014 (= e!44479 (isSorted!1 (++!73 (quickSort!0 lt!18782) lt!18783)))))

(assert (= (and d!56103 res!41933) b!82009))

(assert (= (and b!82009 res!41935) b!82013))

(assert (= (and b!82013 (not res!41936)) b!82010))

(assert (= (and b!82010 (not res!41934)) b!82012))

(assert (= (and d!56103 c!20648) b!82011))

(assert (= (and d!56103 (not c!20648)) b!82014))

(declare-fun m!77404 () Bool)

(assert (=> b!82009 m!77404))

(assert (=> b!82011 m!76588))

(assert (=> b!82011 m!76596))

(assert (=> b!82011 m!76596))

(assert (=> b!82011 m!76894))

(declare-fun m!77406 () Bool)

(assert (=> b!82011 m!77406))

(assert (=> b!82013 m!76588))

(declare-fun m!77408 () Bool)

(assert (=> b!82013 m!77408))

(declare-fun m!77410 () Bool)

(assert (=> b!82010 m!77410))

(assert (=> b!82014 m!76588))

(assert (=> b!82014 m!76596))

(assert (=> b!82014 m!76596))

(assert (=> b!82014 m!76894))

(assert (=> b!82012 m!76588))

(declare-fun m!77412 () Bool)

(assert (=> b!82012 m!77412))

(declare-fun m!77414 () Bool)

(assert (=> b!82012 m!77414))

(assert (=> d!56103 m!76588))

(declare-fun m!77416 () Bool)

(assert (=> d!56103 m!77416))

(assert (=> b!81633 d!56103))

(declare-fun b!82015 () Bool)

(declare-fun e!44483 () List!665)

(declare-fun lt!18881 () List!665)

(assert (=> b!82015 (= e!44483 (Cons!622 (h!991 (t!47838 less!5)) lt!18881))))

(declare-fun b!82016 () Bool)

(declare-fun e!44485 () Bool)

(assert (=> b!82016 (= e!44485 (dynLambda!984 lambda!9694 (h!991 (t!47838 less!5))))))

(declare-fun b!82017 () Bool)

(assert (=> b!82017 (= e!44483 lt!18881)))

(declare-fun d!56105 () Bool)

(declare-fun e!44482 () Bool)

(assert (=> d!56105 e!44482))

(declare-fun res!41939 () Bool)

(assert (=> d!56105 (=> (not res!41939) (not e!44482))))

(declare-fun lt!18882 () List!665)

(assert (=> d!56105 (= res!41939 (<= (size!653 lt!18882) (size!653 (t!47838 less!5))))))

(declare-fun e!44484 () List!665)

(assert (=> d!56105 (= lt!18882 e!44484)))

(declare-fun c!20650 () Bool)

(assert (=> d!56105 (= c!20650 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!56105 (= (filter!18 (t!47838 less!5) lambda!9694) lt!18882)))

(declare-fun b!82018 () Bool)

(declare-fun res!41937 () Bool)

(assert (=> b!82018 (=> (not res!41937) (not e!44482))))

(assert (=> b!82018 (= res!41937 (subset (content!124 lt!18882) (content!124 (t!47838 less!5))))))

(declare-fun b!82019 () Bool)

(assert (=> b!82019 (= e!44484 Nil!624)))

(declare-fun b!82020 () Bool)

(assert (=> b!82020 (= e!44482 (forall!20 lt!18882 lambda!9694))))

(declare-fun b!82021 () Bool)

(assert (=> b!82021 (= e!44484 e!44483)))

(declare-fun c!20649 () Bool)

(assert (=> b!82021 (= c!20649 e!44485)))

(declare-fun res!41938 () Bool)

(assert (=> b!82021 (=> (not res!41938) (not e!44485))))

(assert (=> b!82021 (= res!41938 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!82021 (= lt!18881 (filter!18 (t!47838 (t!47838 less!5)) lambda!9694))))

(assert (= (and b!82021 res!41938) b!82016))

(assert (= (and b!82021 c!20649) b!82015))

(assert (= (and b!82021 (not c!20649)) b!82017))

(assert (= (and d!56105 c!20650) b!82019))

(assert (= (and d!56105 (not c!20650)) b!82021))

(assert (= (and d!56105 res!41939) b!82018))

(assert (= (and b!82018 res!41937) b!82020))

(declare-fun b_lambda!16165 () Bool)

(assert (=> (not b_lambda!16165) (not b!82016)))

(declare-fun m!77418 () Bool)

(assert (=> b!82020 m!77418))

(declare-fun m!77420 () Bool)

(assert (=> b!82018 m!77420))

(assert (=> b!82018 m!76790))

(declare-fun m!77422 () Bool)

(assert (=> b!82016 m!77422))

(declare-fun m!77424 () Bool)

(assert (=> d!56105 m!77424))

(assert (=> d!56105 m!76796))

(declare-fun m!77426 () Bool)

(assert (=> b!82021 m!77426))

(assert (=> b!81633 d!56105))

(declare-fun d!56107 () Bool)

(declare-fun lt!18883 () Int)

(assert (=> d!56107 (contains!57 (t!47838 l1!444) lt!18883)))

(declare-fun e!44486 () Int)

(assert (=> d!56107 (= lt!18883 e!44486)))

(declare-fun c!20651 () Bool)

(assert (=> d!56107 (= c!20651 (and (is-Cons!622 (t!47838 l1!444)) (is-Nil!624 (t!47838 (t!47838 l1!444)))))))

(assert (=> d!56107 (not (isEmpty!677 (t!47838 l1!444)))))

(assert (=> d!56107 (= (last!17 (t!47838 l1!444)) lt!18883)))

(declare-fun b!82022 () Bool)

(assert (=> b!82022 (= e!44486 (h!991 (t!47838 l1!444)))))

(declare-fun b!82023 () Bool)

(assert (=> b!82023 (= e!44486 (last!17 (t!47838 (t!47838 l1!444))))))

(assert (= (and d!56107 c!20651) b!82022))

(assert (= (and d!56107 (not c!20651)) b!82023))

(declare-fun m!77428 () Bool)

(assert (=> d!56107 m!77428))

(declare-fun m!77430 () Bool)

(assert (=> d!56107 m!77430))

(declare-fun m!77432 () Bool)

(assert (=> b!82023 m!77432))

(assert (=> b!81504 d!56107))

(declare-fun b!82024 () Bool)

(declare-fun e!44488 () List!665)

(declare-fun lt!18884 () List!665)

(assert (=> b!82024 (= e!44488 (Cons!622 (h!991 (t!47838 (t!47838 ls!96))) lt!18884))))

(declare-fun b!82025 () Bool)

(declare-fun e!44490 () Bool)

(assert (=> b!82025 (= e!44490 (dynLambda!984 lambda!9628 (h!991 (t!47838 (t!47838 ls!96)))))))

(declare-fun b!82026 () Bool)

(assert (=> b!82026 (= e!44488 lt!18884)))

(declare-fun d!56109 () Bool)

(declare-fun e!44487 () Bool)

(assert (=> d!56109 e!44487))

(declare-fun res!41942 () Bool)

(assert (=> d!56109 (=> (not res!41942) (not e!44487))))

(declare-fun lt!18885 () List!665)

(assert (=> d!56109 (= res!41942 (<= (size!653 lt!18885) (size!653 (t!47838 (t!47838 ls!96)))))))

(declare-fun e!44489 () List!665)

(assert (=> d!56109 (= lt!18885 e!44489)))

(declare-fun c!20653 () Bool)

(assert (=> d!56109 (= c!20653 (is-Nil!624 (t!47838 (t!47838 ls!96))))))

(assert (=> d!56109 (= (filter!18 (t!47838 (t!47838 ls!96)) lambda!9628) lt!18885)))

(declare-fun b!82027 () Bool)

(declare-fun res!41940 () Bool)

(assert (=> b!82027 (=> (not res!41940) (not e!44487))))

(assert (=> b!82027 (= res!41940 (subset (content!124 lt!18885) (content!124 (t!47838 (t!47838 ls!96)))))))

(declare-fun b!82028 () Bool)

(assert (=> b!82028 (= e!44489 Nil!624)))

(declare-fun b!82029 () Bool)

(assert (=> b!82029 (= e!44487 (forall!20 lt!18885 lambda!9628))))

(declare-fun b!82030 () Bool)

(assert (=> b!82030 (= e!44489 e!44488)))

(declare-fun c!20652 () Bool)

(assert (=> b!82030 (= c!20652 e!44490)))

(declare-fun res!41941 () Bool)

(assert (=> b!82030 (=> (not res!41941) (not e!44490))))

(assert (=> b!82030 (= res!41941 (is-Cons!622 (t!47838 (t!47838 ls!96))))))

(assert (=> b!82030 (= lt!18884 (filter!18 (t!47838 (t!47838 (t!47838 ls!96))) lambda!9628))))

(assert (= (and b!82030 res!41941) b!82025))

(assert (= (and b!82030 c!20652) b!82024))

(assert (= (and b!82030 (not c!20652)) b!82026))

(assert (= (and d!56109 c!20653) b!82028))

(assert (= (and d!56109 (not c!20653)) b!82030))

(assert (= (and d!56109 res!41942) b!82027))

(assert (= (and b!82027 res!41940) b!82029))

(declare-fun b_lambda!16167 () Bool)

(assert (=> (not b_lambda!16167) (not b!82025)))

(declare-fun m!77434 () Bool)

(assert (=> b!82029 m!77434))

(declare-fun m!77436 () Bool)

(assert (=> b!82027 m!77436))

(assert (=> b!82027 m!76632))

(declare-fun m!77438 () Bool)

(assert (=> b!82025 m!77438))

(declare-fun m!77440 () Bool)

(assert (=> d!56109 m!77440))

(assert (=> d!56109 m!76638))

(declare-fun m!77442 () Bool)

(assert (=> b!82030 m!77442))

(assert (=> b!81647 d!56109))

(assert (=> b!81618 d!56061))

(assert (=> d!55887 d!55921))

(assert (=> d!55887 d!55875))

(declare-fun d!56111 () Bool)

(declare-fun res!41943 () Bool)

(declare-fun e!44491 () Bool)

(assert (=> d!56111 (=> res!41943 e!44491)))

(assert (=> d!56111 (= res!41943 (is-Nil!624 less!5))))

(assert (=> d!56111 (= (forall!20 less!5 lambda!9627) e!44491)))

(declare-fun b!82031 () Bool)

(declare-fun e!44492 () Bool)

(assert (=> b!82031 (= e!44491 e!44492)))

(declare-fun res!41944 () Bool)

(assert (=> b!82031 (=> (not res!41944) (not e!44492))))

(assert (=> b!82031 (= res!41944 (dynLambda!984 lambda!9627 (h!991 less!5)))))

(declare-fun b!82032 () Bool)

(assert (=> b!82032 (= e!44492 (forall!20 (t!47838 less!5) lambda!9627))))

(assert (= (and d!56111 (not res!41943)) b!82031))

(assert (= (and b!82031 res!41944) b!82032))

(declare-fun b_lambda!16169 () Bool)

(assert (=> (not b_lambda!16169) (not b!82031)))

(declare-fun m!77444 () Bool)

(assert (=> b!82031 m!77444))

(assert (=> b!82032 m!77014))

(assert (=> d!55887 d!56111))

(assert (=> b!81614 d!55979))

(declare-fun b!82035 () Bool)

(declare-fun res!41945 () Bool)

(declare-fun e!44494 () Bool)

(assert (=> b!82035 (=> (not res!41945) (not e!44494))))

(declare-fun lt!18886 () List!665)

(assert (=> b!82035 (= res!41945 (= (size!653 lt!18886) (+ (size!653 (t!47838 (quickSort!0 less!5))) (size!653 equal!10))))))

(declare-fun b!82034 () Bool)

(declare-fun e!44493 () List!665)

(assert (=> b!82034 (= e!44493 (Cons!622 (h!991 (t!47838 (quickSort!0 less!5))) (++!73 (t!47838 (t!47838 (quickSort!0 less!5))) equal!10)))))

(declare-fun b!82036 () Bool)

(assert (=> b!82036 (= e!44494 (or (not (= equal!10 Nil!624)) (= lt!18886 (t!47838 (quickSort!0 less!5)))))))

(declare-fun b!82033 () Bool)

(assert (=> b!82033 (= e!44493 equal!10)))

(declare-fun d!56113 () Bool)

(assert (=> d!56113 e!44494))

(declare-fun res!41946 () Bool)

(assert (=> d!56113 (=> (not res!41946) (not e!44494))))

(assert (=> d!56113 (= res!41946 (= (content!124 lt!18886) (union (content!124 (t!47838 (quickSort!0 less!5))) (content!124 equal!10))))))

(assert (=> d!56113 (= lt!18886 e!44493)))

(declare-fun c!20654 () Bool)

(assert (=> d!56113 (= c!20654 (is-Nil!624 (t!47838 (quickSort!0 less!5))))))

(assert (=> d!56113 (= (++!73 (t!47838 (quickSort!0 less!5)) equal!10) lt!18886)))

(assert (= (and d!56113 c!20654) b!82033))

(assert (= (and d!56113 (not c!20654)) b!82034))

(assert (= (and d!56113 res!41946) b!82035))

(assert (= (and b!82035 res!41945) b!82036))

(declare-fun m!77446 () Bool)

(assert (=> b!82035 m!77446))

(assert (=> b!82035 m!77032))

(assert (=> b!82035 m!76574))

(declare-fun m!77448 () Bool)

(assert (=> b!82034 m!77448))

(declare-fun m!77450 () Bool)

(assert (=> d!56113 m!77450))

(assert (=> d!56113 m!77310))

(assert (=> d!56113 m!76582))

(assert (=> b!81628 d!56113))

(declare-fun bs!39571 () Bool)

(declare-fun b!82039 () Bool)

(assert (= bs!39571 (and b!82039 b!81949)))

(declare-fun lambda!9754 () Int)

(assert (=> bs!39571 (not (= lambda!9754 lambda!9750))))

(assert (=> bs!39571 (not (= lambda!9754 lambda!9749))))

(assert (=> bs!39571 (= (= (h!991 lt!18728) (h!991 lt!18769)) (= lambda!9754 lambda!9748))))

(declare-fun bs!39572 () Bool)

(assert (= bs!39572 (and b!82039 b!81517)))

(assert (=> bs!39572 (not (= lambda!9754 lambda!9663))))

(assert (=> bs!39572 (not (= lambda!9754 lambda!9662))))

(assert (=> bs!39572 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9754 lambda!9661))))

(declare-fun bs!39573 () Bool)

(assert (= bs!39573 (and b!82039 b!81734)))

(assert (=> bs!39573 (not (= lambda!9754 lambda!9711))))

(assert (=> bs!39573 (not (= lambda!9754 lambda!9710))))

(assert (=> bs!39573 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9754 lambda!9709))))

(declare-fun bs!39574 () Bool)

(assert (= bs!39574 (and b!82039 b!81462)))

(assert (=> bs!39574 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9754 lambda!9627))))

(declare-fun bs!39575 () Bool)

(assert (= bs!39575 (and b!82039 b!81495)))

(assert (=> bs!39575 (not (= lambda!9754 lambda!9647))))

(declare-fun bs!39576 () Bool)

(assert (= bs!39576 (and b!82039 b!81804)))

(assert (=> bs!39576 (not (= lambda!9754 lambda!9723))))

(assert (=> bs!39576 (not (= lambda!9754 lambda!9722))))

(assert (=> bs!39576 (= (= (h!991 lt!18728) (h!991 lt!18771)) (= lambda!9754 lambda!9721))))

(declare-fun bs!39577 () Bool)

(assert (= bs!39577 (and b!82039 b!81885)))

(assert (=> bs!39577 (not (= lambda!9754 lambda!9735))))

(assert (=> bs!39577 (not (= lambda!9754 lambda!9734))))

(assert (=> bs!39577 (= (= (h!991 lt!18728) (h!991 lt!18736)) (= lambda!9754 lambda!9733))))

(declare-fun bs!39578 () Bool)

(assert (= bs!39578 (and b!82039 b!81742)))

(assert (=> bs!39578 (not (= lambda!9754 lambda!9714))))

(assert (=> bs!39578 (not (= lambda!9754 lambda!9713))))

(assert (=> bs!39578 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9754 lambda!9712))))

(declare-fun bs!39579 () Bool)

(assert (= bs!39579 (and b!82039 b!81922)))

(assert (=> bs!39579 (not (= lambda!9754 lambda!9747))))

(declare-fun bs!39580 () Bool)

(assert (= bs!39580 (and b!82039 b!81972)))

(assert (=> bs!39580 (not (= lambda!9754 lambda!9753))))

(assert (=> bs!39580 (not (= lambda!9754 lambda!9752))))

(assert (=> bs!39580 (= (= (h!991 lt!18728) (h!991 lt!18769)) (= lambda!9754 lambda!9751))))

(declare-fun bs!39581 () Bool)

(assert (= bs!39581 (and b!82039 b!81907)))

(assert (=> bs!39581 (not (= lambda!9754 lambda!9741))))

(declare-fun bs!39582 () Bool)

(assert (= bs!39582 (and b!82039 b!81709)))

(assert (=> bs!39582 (not (= lambda!9754 lambda!9708))))

(assert (=> bs!39582 (not (= lambda!9754 lambda!9707))))

(assert (=> bs!39582 (= (= (h!991 lt!18728) (h!991 lt!18751)) (= lambda!9754 lambda!9706))))

(declare-fun bs!39583 () Bool)

(assert (= bs!39583 (and b!82039 b!81460)))

(assert (=> bs!39583 (not (= lambda!9754 lambda!9628))))

(declare-fun bs!39584 () Bool)

(assert (= bs!39584 (and b!82039 b!81560)))

(assert (=> bs!39584 (not (= lambda!9754 lambda!9678))))

(assert (=> bs!39584 (not (= lambda!9754 lambda!9677))))

(assert (=> bs!39584 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9754 lambda!9676))))

(declare-fun bs!39585 () Bool)

(assert (= bs!39585 (and b!82039 b!81906)))

(assert (=> bs!39585 (not (= lambda!9754 lambda!9740))))

(declare-fun bs!39586 () Bool)

(assert (= bs!39586 (and b!82039 b!81490)))

(assert (=> bs!39586 (not (= lambda!9754 lambda!9639))))

(assert (=> bs!39586 (not (= lambda!9754 lambda!9638))))

(assert (=> bs!39586 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9754 lambda!9637))))

(declare-fun bs!39587 () Bool)

(assert (= bs!39587 (and b!82039 b!81921)))

(assert (=> bs!39587 (not (= lambda!9754 lambda!9746))))

(declare-fun bs!39588 () Bool)

(assert (= bs!39588 (and b!82039 b!81691)))

(assert (=> bs!39588 (not (= lambda!9754 lambda!9702))))

(assert (=> bs!39588 (not (= lambda!9754 lambda!9701))))

(assert (=> bs!39588 (= lambda!9754 lambda!9700)))

(declare-fun bs!39589 () Bool)

(assert (= bs!39589 (and b!82039 b!81466)))

(assert (=> bs!39589 (not (= lambda!9754 lambda!9629))))

(declare-fun bs!39590 () Bool)

(assert (= bs!39590 (and b!82039 d!56039)))

(assert (=> bs!39590 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9754 lambda!9739))))

(declare-fun bs!39591 () Bool)

(assert (= bs!39591 (and b!82039 b!81780)))

(assert (=> bs!39591 (not (= lambda!9754 lambda!9720))))

(assert (=> bs!39591 (not (= lambda!9754 lambda!9719))))

(assert (=> bs!39591 (= (= (h!991 lt!18728) (h!991 lt!18781)) (= lambda!9754 lambda!9718))))

(declare-fun bs!39592 () Bool)

(assert (= bs!39592 (and b!82039 d!55883)))

(assert (=> bs!39592 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9754 lambda!9685))))

(declare-fun bs!39593 () Bool)

(assert (= bs!39593 (and b!82039 b!81901)))

(assert (=> bs!39593 (not (= lambda!9754 lambda!9738))))

(assert (=> bs!39593 (not (= lambda!9754 lambda!9737))))

(assert (=> bs!39593 (= (= (h!991 lt!18728) (h!991 lt!18736)) (= lambda!9754 lambda!9736))))

(declare-fun bs!39594 () Bool)

(assert (= bs!39594 (and b!82039 b!81837)))

(assert (=> bs!39594 (not (= lambda!9754 lambda!9729))))

(assert (=> bs!39594 (not (= lambda!9754 lambda!9728))))

(assert (=> bs!39594 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9754 lambda!9727))))

(declare-fun bs!39595 () Bool)

(assert (= bs!39595 (and b!82039 b!81852)))

(assert (=> bs!39595 (not (= lambda!9754 lambda!9732))))

(assert (=> bs!39595 (not (= lambda!9754 lambda!9731))))

(assert (=> bs!39595 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9754 lambda!9730))))

(declare-fun bs!39596 () Bool)

(assert (= bs!39596 (and b!82039 d!55861)))

(assert (=> bs!39596 (not (= lambda!9754 lambda!9646))))

(declare-fun bs!39597 () Bool)

(assert (= bs!39597 (and b!82039 b!81537)))

(assert (=> bs!39597 (not (= lambda!9754 lambda!9669))))

(assert (=> bs!39597 (not (= lambda!9754 lambda!9668))))

(assert (=> bs!39597 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9754 lambda!9667))))

(declare-fun bs!39598 () Bool)

(assert (= bs!39598 (and b!82039 b!81587)))

(assert (=> bs!39598 (not (= lambda!9754 lambda!9686))))

(declare-fun bs!39599 () Bool)

(assert (= bs!39599 (and b!82039 b!81496)))

(assert (=> bs!39599 (not (= lambda!9754 lambda!9648))))

(declare-fun bs!39600 () Bool)

(assert (= bs!39600 (and b!82039 d!55889)))

(assert (=> bs!39600 (not (= lambda!9754 lambda!9693))))

(declare-fun bs!39601 () Bool)

(assert (= bs!39601 (and b!82039 b!81705)))

(assert (=> bs!39601 (not (= lambda!9754 lambda!9705))))

(assert (=> bs!39601 (not (= lambda!9754 lambda!9704))))

(assert (=> bs!39601 (= (= (h!991 lt!18728) (h!991 lt!18752)) (= lambda!9754 lambda!9703))))

(declare-fun bs!39602 () Bool)

(assert (= bs!39602 (and b!82039 b!81522)))

(assert (=> bs!39602 (not (= lambda!9754 lambda!9666))))

(assert (=> bs!39602 (not (= lambda!9754 lambda!9665))))

(assert (=> bs!39602 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9754 lambda!9664))))

(declare-fun bs!39603 () Bool)

(assert (= bs!39603 (and b!82039 b!81598)))

(assert (=> bs!39603 (not (= lambda!9754 lambda!9690))))

(assert (=> bs!39603 (not (= lambda!9754 lambda!9689))))

(assert (=> bs!39603 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9754 lambda!9688))))

(declare-fun bs!39604 () Bool)

(assert (= bs!39604 (and b!82039 b!81588)))

(assert (=> bs!39604 (not (= lambda!9754 lambda!9687))))

(declare-fun bs!39605 () Bool)

(assert (= bs!39605 (and b!82039 b!81776)))

(assert (=> bs!39605 (not (= lambda!9754 lambda!9717))))

(assert (=> bs!39605 (not (= lambda!9754 lambda!9716))))

(assert (=> bs!39605 (= (= (h!991 lt!18728) (h!991 lt!18782)) (= lambda!9754 lambda!9715))))

(declare-fun bs!39606 () Bool)

(assert (= bs!39606 (and b!82039 b!81468)))

(assert (=> bs!39606 (not (= lambda!9754 lambda!9630))))

(declare-fun bs!39607 () Bool)

(assert (= bs!39607 (and b!82039 b!81633)))

(assert (=> bs!39607 (not (= lambda!9754 lambda!9696))))

(assert (=> bs!39607 (not (= lambda!9754 lambda!9695))))

(assert (=> bs!39607 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9754 lambda!9694))))

(declare-fun bs!39608 () Bool)

(assert (= bs!39608 (and b!82039 b!81687)))

(assert (=> bs!39608 (not (= lambda!9754 lambda!9699))))

(assert (=> bs!39608 (not (= lambda!9754 lambda!9698))))

(assert (=> bs!39608 (= (= (h!991 lt!18728) (h!991 lt!18730)) (= lambda!9754 lambda!9697))))

(declare-fun bs!39609 () Bool)

(assert (= bs!39609 (and b!82039 b!81810)))

(assert (=> bs!39609 (not (= lambda!9754 lambda!9726))))

(assert (=> bs!39609 (not (= lambda!9754 lambda!9725))))

(assert (=> bs!39609 (= (= (h!991 lt!18728) (h!991 lt!18771)) (= lambda!9754 lambda!9724))))

(assert (=> b!82039 true))

(declare-fun lambda!9755 () Int)

(assert (=> bs!39571 (not (= lambda!9755 lambda!9750))))

(assert (=> bs!39571 (= (= (h!991 lt!18728) (h!991 lt!18769)) (= lambda!9755 lambda!9749))))

(assert (=> bs!39571 (not (= lambda!9755 lambda!9748))))

(assert (=> bs!39572 (not (= lambda!9755 lambda!9663))))

(assert (=> bs!39572 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9755 lambda!9662))))

(assert (=> bs!39572 (not (= lambda!9755 lambda!9661))))

(assert (=> bs!39573 (not (= lambda!9755 lambda!9711))))

(assert (=> bs!39573 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9755 lambda!9710))))

(assert (=> bs!39573 (not (= lambda!9755 lambda!9709))))

(assert (=> bs!39574 (not (= lambda!9755 lambda!9627))))

(assert (=> bs!39575 (not (= lambda!9755 lambda!9647))))

(assert (=> bs!39576 (not (= lambda!9755 lambda!9723))))

(assert (=> bs!39576 (= (= (h!991 lt!18728) (h!991 lt!18771)) (= lambda!9755 lambda!9722))))

(assert (=> bs!39576 (not (= lambda!9755 lambda!9721))))

(assert (=> bs!39577 (not (= lambda!9755 lambda!9735))))

(assert (=> bs!39577 (= (= (h!991 lt!18728) (h!991 lt!18736)) (= lambda!9755 lambda!9734))))

(assert (=> bs!39577 (not (= lambda!9755 lambda!9733))))

(assert (=> bs!39578 (not (= lambda!9755 lambda!9714))))

(assert (=> bs!39578 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9755 lambda!9713))))

(assert (=> bs!39578 (not (= lambda!9755 lambda!9712))))

(assert (=> bs!39579 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9755 lambda!9747))))

(assert (=> bs!39580 (not (= lambda!9755 lambda!9753))))

(assert (=> bs!39580 (= (= (h!991 lt!18728) (h!991 lt!18769)) (= lambda!9755 lambda!9752))))

(assert (=> bs!39580 (not (= lambda!9755 lambda!9751))))

(assert (=> bs!39581 (not (= lambda!9755 lambda!9741))))

(assert (=> bs!39582 (not (= lambda!9755 lambda!9708))))

(assert (=> bs!39582 (= (= (h!991 lt!18728) (h!991 lt!18751)) (= lambda!9755 lambda!9707))))

(assert (=> bs!39582 (not (= lambda!9755 lambda!9706))))

(assert (=> bs!39583 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9755 lambda!9628))))

(assert (=> bs!39584 (not (= lambda!9755 lambda!9678))))

(assert (=> bs!39584 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9755 lambda!9677))))

(assert (=> bs!39584 (not (= lambda!9755 lambda!9676))))

(assert (=> bs!39585 (not (= lambda!9755 lambda!9740))))

(assert (=> b!82039 (not (= lambda!9755 lambda!9754))))

(assert (=> bs!39586 (not (= lambda!9755 lambda!9639))))

(assert (=> bs!39586 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9755 lambda!9638))))

(assert (=> bs!39586 (not (= lambda!9755 lambda!9637))))

(assert (=> bs!39587 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9755 lambda!9746))))

(assert (=> bs!39588 (not (= lambda!9755 lambda!9702))))

(assert (=> bs!39588 (= lambda!9755 lambda!9701)))

(assert (=> bs!39588 (not (= lambda!9755 lambda!9700))))

(assert (=> bs!39589 (not (= lambda!9755 lambda!9629))))

(assert (=> bs!39590 (not (= lambda!9755 lambda!9739))))

(assert (=> bs!39591 (not (= lambda!9755 lambda!9720))))

(assert (=> bs!39591 (= (= (h!991 lt!18728) (h!991 lt!18781)) (= lambda!9755 lambda!9719))))

(assert (=> bs!39591 (not (= lambda!9755 lambda!9718))))

(assert (=> bs!39592 (not (= lambda!9755 lambda!9685))))

(assert (=> bs!39593 (not (= lambda!9755 lambda!9738))))

(assert (=> bs!39593 (= (= (h!991 lt!18728) (h!991 lt!18736)) (= lambda!9755 lambda!9737))))

(assert (=> bs!39593 (not (= lambda!9755 lambda!9736))))

(assert (=> bs!39594 (not (= lambda!9755 lambda!9729))))

(assert (=> bs!39594 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9755 lambda!9728))))

(assert (=> bs!39594 (not (= lambda!9755 lambda!9727))))

(assert (=> bs!39595 (not (= lambda!9755 lambda!9732))))

(assert (=> bs!39595 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9755 lambda!9731))))

(assert (=> bs!39595 (not (= lambda!9755 lambda!9730))))

(assert (=> bs!39596 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9755 lambda!9646))))

(assert (=> bs!39597 (not (= lambda!9755 lambda!9669))))

(assert (=> bs!39597 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9755 lambda!9668))))

(assert (=> bs!39597 (not (= lambda!9755 lambda!9667))))

(assert (=> bs!39598 (not (= lambda!9755 lambda!9686))))

(assert (=> bs!39599 (not (= lambda!9755 lambda!9648))))

(assert (=> bs!39600 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9755 lambda!9693))))

(assert (=> bs!39601 (not (= lambda!9755 lambda!9705))))

(assert (=> bs!39601 (= (= (h!991 lt!18728) (h!991 lt!18752)) (= lambda!9755 lambda!9704))))

(assert (=> bs!39601 (not (= lambda!9755 lambda!9703))))

(assert (=> bs!39602 (not (= lambda!9755 lambda!9666))))

(assert (=> bs!39602 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9755 lambda!9665))))

(assert (=> bs!39602 (not (= lambda!9755 lambda!9664))))

(assert (=> bs!39603 (not (= lambda!9755 lambda!9690))))

(assert (=> bs!39603 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9755 lambda!9689))))

(assert (=> bs!39603 (not (= lambda!9755 lambda!9688))))

(assert (=> bs!39604 (not (= lambda!9755 lambda!9687))))

(assert (=> bs!39605 (not (= lambda!9755 lambda!9717))))

(assert (=> bs!39605 (= (= (h!991 lt!18728) (h!991 lt!18782)) (= lambda!9755 lambda!9716))))

(assert (=> bs!39605 (not (= lambda!9755 lambda!9715))))

(assert (=> bs!39606 (not (= lambda!9755 lambda!9630))))

(assert (=> bs!39607 (not (= lambda!9755 lambda!9696))))

(assert (=> bs!39607 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9755 lambda!9695))))

(assert (=> bs!39607 (not (= lambda!9755 lambda!9694))))

(assert (=> bs!39608 (not (= lambda!9755 lambda!9699))))

(assert (=> bs!39608 (= (= (h!991 lt!18728) (h!991 lt!18730)) (= lambda!9755 lambda!9698))))

(assert (=> bs!39608 (not (= lambda!9755 lambda!9697))))

(assert (=> bs!39609 (not (= lambda!9755 lambda!9726))))

(assert (=> bs!39609 (= (= (h!991 lt!18728) (h!991 lt!18771)) (= lambda!9755 lambda!9725))))

(assert (=> bs!39609 (not (= lambda!9755 lambda!9724))))

(assert (=> b!82039 true))

(declare-fun lambda!9756 () Int)

(assert (=> bs!39571 (= (= (h!991 lt!18728) (h!991 lt!18769)) (= lambda!9756 lambda!9750))))

(assert (=> bs!39571 (not (= lambda!9756 lambda!9749))))

(assert (=> bs!39571 (not (= lambda!9756 lambda!9748))))

(assert (=> bs!39572 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9756 lambda!9663))))

(assert (=> bs!39572 (not (= lambda!9756 lambda!9662))))

(assert (=> bs!39572 (not (= lambda!9756 lambda!9661))))

(assert (=> bs!39573 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9756 lambda!9711))))

(assert (=> bs!39573 (not (= lambda!9756 lambda!9710))))

(assert (=> bs!39573 (not (= lambda!9756 lambda!9709))))

(assert (=> bs!39574 (not (= lambda!9756 lambda!9627))))

(assert (=> bs!39575 (not (= lambda!9756 lambda!9647))))

(assert (=> bs!39576 (= (= (h!991 lt!18728) (h!991 lt!18771)) (= lambda!9756 lambda!9723))))

(assert (=> bs!39576 (not (= lambda!9756 lambda!9722))))

(assert (=> bs!39576 (not (= lambda!9756 lambda!9721))))

(assert (=> bs!39577 (= (= (h!991 lt!18728) (h!991 lt!18736)) (= lambda!9756 lambda!9735))))

(assert (=> bs!39577 (not (= lambda!9756 lambda!9734))))

(assert (=> bs!39577 (not (= lambda!9756 lambda!9733))))

(assert (=> bs!39578 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9756 lambda!9714))))

(assert (=> bs!39578 (not (= lambda!9756 lambda!9713))))

(assert (=> bs!39578 (not (= lambda!9756 lambda!9712))))

(assert (=> bs!39579 (not (= lambda!9756 lambda!9747))))

(assert (=> bs!39580 (= (= (h!991 lt!18728) (h!991 lt!18769)) (= lambda!9756 lambda!9753))))

(assert (=> bs!39580 (not (= lambda!9756 lambda!9752))))

(assert (=> bs!39580 (not (= lambda!9756 lambda!9751))))

(assert (=> bs!39581 (not (= lambda!9756 lambda!9741))))

(assert (=> bs!39582 (= (= (h!991 lt!18728) (h!991 lt!18751)) (= lambda!9756 lambda!9708))))

(assert (=> bs!39582 (not (= lambda!9756 lambda!9707))))

(assert (=> bs!39582 (not (= lambda!9756 lambda!9706))))

(assert (=> bs!39583 (not (= lambda!9756 lambda!9628))))

(assert (=> bs!39584 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9756 lambda!9678))))

(assert (=> bs!39584 (not (= lambda!9756 lambda!9677))))

(assert (=> bs!39584 (not (= lambda!9756 lambda!9676))))

(assert (=> bs!39585 (not (= lambda!9756 lambda!9740))))

(assert (=> b!82039 (not (= lambda!9756 lambda!9755))))

(assert (=> b!82039 (not (= lambda!9756 lambda!9754))))

(assert (=> bs!39586 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9756 lambda!9639))))

(assert (=> bs!39586 (not (= lambda!9756 lambda!9638))))

(assert (=> bs!39586 (not (= lambda!9756 lambda!9637))))

(assert (=> bs!39587 (not (= lambda!9756 lambda!9746))))

(assert (=> bs!39588 (= lambda!9756 lambda!9702)))

(assert (=> bs!39588 (not (= lambda!9756 lambda!9701))))

(assert (=> bs!39588 (not (= lambda!9756 lambda!9700))))

(assert (=> bs!39589 (= (= (h!991 lt!18728) (h!991 ls!96)) (= lambda!9756 lambda!9629))))

(assert (=> bs!39590 (not (= lambda!9756 lambda!9739))))

(assert (=> bs!39591 (= (= (h!991 lt!18728) (h!991 lt!18781)) (= lambda!9756 lambda!9720))))

(assert (=> bs!39591 (not (= lambda!9756 lambda!9719))))

(assert (=> bs!39591 (not (= lambda!9756 lambda!9718))))

(assert (=> bs!39592 (not (= lambda!9756 lambda!9685))))

(assert (=> bs!39593 (= (= (h!991 lt!18728) (h!991 lt!18736)) (= lambda!9756 lambda!9738))))

(assert (=> bs!39593 (not (= lambda!9756 lambda!9737))))

(assert (=> bs!39593 (not (= lambda!9756 lambda!9736))))

(assert (=> bs!39594 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9756 lambda!9729))))

(assert (=> bs!39594 (not (= lambda!9756 lambda!9728))))

(assert (=> bs!39594 (not (= lambda!9756 lambda!9727))))

(assert (=> bs!39595 (= (= (h!991 lt!18728) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9756 lambda!9732))))

(assert (=> bs!39595 (not (= lambda!9756 lambda!9731))))

(assert (=> bs!39595 (not (= lambda!9756 lambda!9730))))

(assert (=> bs!39596 (not (= lambda!9756 lambda!9646))))

(assert (=> bs!39597 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9756 lambda!9669))))

(assert (=> bs!39597 (not (= lambda!9756 lambda!9668))))

(assert (=> bs!39597 (not (= lambda!9756 lambda!9667))))

(assert (=> bs!39598 (not (= lambda!9756 lambda!9686))))

(assert (=> bs!39599 (not (= lambda!9756 lambda!9648))))

(assert (=> bs!39600 (not (= lambda!9756 lambda!9693))))

(assert (=> bs!39601 (= (= (h!991 lt!18728) (h!991 lt!18752)) (= lambda!9756 lambda!9705))))

(assert (=> bs!39601 (not (= lambda!9756 lambda!9704))))

(assert (=> bs!39601 (not (= lambda!9756 lambda!9703))))

(assert (=> bs!39602 (= (= (h!991 lt!18728) (h!991 more!5)) (= lambda!9756 lambda!9666))))

(assert (=> bs!39602 (not (= lambda!9756 lambda!9665))))

(assert (=> bs!39602 (not (= lambda!9756 lambda!9664))))

(assert (=> bs!39603 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9756 lambda!9690))))

(assert (=> bs!39603 (not (= lambda!9756 lambda!9689))))

(assert (=> bs!39603 (not (= lambda!9756 lambda!9688))))

(assert (=> bs!39604 (not (= lambda!9756 lambda!9687))))

(assert (=> bs!39605 (= (= (h!991 lt!18728) (h!991 lt!18782)) (= lambda!9756 lambda!9717))))

(assert (=> bs!39605 (not (= lambda!9756 lambda!9716))))

(assert (=> bs!39605 (not (= lambda!9756 lambda!9715))))

(assert (=> bs!39606 (not (= lambda!9756 lambda!9630))))

(assert (=> bs!39607 (= (= (h!991 lt!18728) (h!991 less!5)) (= lambda!9756 lambda!9696))))

(assert (=> bs!39607 (not (= lambda!9756 lambda!9695))))

(assert (=> bs!39607 (not (= lambda!9756 lambda!9694))))

(assert (=> bs!39608 (= (= (h!991 lt!18728) (h!991 lt!18730)) (= lambda!9756 lambda!9699))))

(assert (=> bs!39608 (not (= lambda!9756 lambda!9698))))

(assert (=> bs!39608 (not (= lambda!9756 lambda!9697))))

(assert (=> bs!39609 (= (= (h!991 lt!18728) (h!991 lt!18771)) (= lambda!9756 lambda!9726))))

(assert (=> bs!39609 (not (= lambda!9756 lambda!9725))))

(assert (=> bs!39609 (not (= lambda!9756 lambda!9724))))

(assert (=> b!82039 true))

(declare-fun e!44499 () Bool)

(declare-fun b!82037 () Bool)

(assert (=> b!82037 (= e!44499 (filter_preserves_forall!0 (t!47838 lt!18728) lambda!9755 lambda!9630))))

(declare-fun b!82038 () Bool)

(declare-fun lt!18890 () List!665)

(declare-fun lt!18887 () List!665)

(declare-fun lt!18892 () List!665)

(declare-fun e!44497 () Bool)

(assert (=> b!82038 (= e!44497 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18892) lt!18887) (quickSort!0 lt!18890) lambda!9630))))

(declare-fun d!56115 () Bool)

(assert (=> d!56115 (forall!20 (quickSort!0 lt!18728) lambda!9630)))

(declare-fun lt!18889 () Bool)

(declare-fun e!44495 () Bool)

(assert (=> d!56115 (= lt!18889 e!44495)))

(declare-fun res!41949 () Bool)

(assert (=> d!56115 (=> res!41949 e!44495)))

(assert (=> d!56115 (= res!41949 (or (is-Nil!624 lt!18728) (and (is-Cons!622 lt!18728) (is-Nil!624 (t!47838 lt!18728)))))))

(assert (=> d!56115 (forall!20 lt!18728 lambda!9630)))

(assert (=> d!56115 (= (sort_preserves_forall!0 lt!18728 lambda!9630) true)))

(assert (=> b!82039 (= e!44495 e!44497)))

(declare-fun res!41950 () Bool)

(assert (=> b!82039 (=> (not res!41950) (not e!44497))))

(assert (=> b!82039 (= res!41950 (append_preserves_forall!0 (quickSort!0 lt!18892) lt!18887 lambda!9630))))

(declare-fun lt!18888 () Bool)

(declare-fun e!44496 () Bool)

(assert (=> b!82039 (= lt!18888 e!44496)))

(declare-fun res!41948 () Bool)

(assert (=> b!82039 (=> (not res!41948) (not e!44496))))

(assert (=> b!82039 (= res!41948 (sort_preserves_forall!0 lt!18892 lambda!9630))))

(declare-fun lt!18891 () Bool)

(declare-fun e!44498 () Bool)

(assert (=> b!82039 (= lt!18891 e!44498)))

(declare-fun res!41947 () Bool)

(assert (=> b!82039 (=> (not res!41947) (not e!44498))))

(assert (=> b!82039 (= res!41947 e!44499)))

(declare-fun res!41951 () Bool)

(assert (=> b!82039 (=> (not res!41951) (not e!44499))))

(assert (=> b!82039 (= res!41951 (filter_preserves_forall!0 (t!47838 lt!18728) lambda!9754 lambda!9630))))

(assert (=> b!82039 (= lt!18890 (filter!18 (t!47838 lt!18728) lambda!9756))))

(assert (=> b!82039 (= lt!18887 (Cons!622 (h!991 lt!18728) (filter!18 (t!47838 lt!18728) lambda!9755)))))

(assert (=> b!82039 (= lt!18892 (filter!18 (t!47838 lt!18728) lambda!9754))))

(declare-fun b!82040 () Bool)

(assert (=> b!82040 (= e!44496 (sort_preserves_forall!0 lt!18890 lambda!9630))))

(declare-fun b!82041 () Bool)

(assert (=> b!82041 (= e!44498 (filter_preserves_forall!0 (t!47838 lt!18728) lambda!9756 lambda!9630))))

(assert (= (and d!56115 (not res!41949)) b!82039))

(assert (= (and b!82039 res!41951) b!82037))

(assert (= (and b!82039 res!41947) b!82041))

(assert (= (and b!82039 res!41948) b!82040))

(assert (= (and b!82039 res!41950) b!82038))

(declare-fun m!77452 () Bool)

(assert (=> b!82041 m!77452))

(declare-fun m!77454 () Bool)

(assert (=> b!82040 m!77454))

(declare-fun m!77456 () Bool)

(assert (=> b!82038 m!77456))

(assert (=> b!82038 m!77456))

(declare-fun m!77458 () Bool)

(assert (=> b!82038 m!77458))

(declare-fun m!77460 () Bool)

(assert (=> b!82038 m!77460))

(assert (=> b!82038 m!77458))

(assert (=> b!82038 m!77460))

(declare-fun m!77462 () Bool)

(assert (=> b!82038 m!77462))

(declare-fun m!77464 () Bool)

(assert (=> b!82037 m!77464))

(declare-fun m!77466 () Bool)

(assert (=> b!82039 m!77466))

(declare-fun m!77468 () Bool)

(assert (=> b!82039 m!77468))

(assert (=> b!82039 m!77456))

(declare-fun m!77470 () Bool)

(assert (=> b!82039 m!77470))

(declare-fun m!77472 () Bool)

(assert (=> b!82039 m!77472))

(assert (=> b!82039 m!77456))

(declare-fun m!77474 () Bool)

(assert (=> b!82039 m!77474))

(declare-fun m!77476 () Bool)

(assert (=> b!82039 m!77476))

(assert (=> d!56115 m!76388))

(assert (=> d!56115 m!76388))

(assert (=> d!56115 m!76658))

(declare-fun m!77478 () Bool)

(assert (=> d!56115 m!77478))

(assert (=> b!81518 d!56115))

(assert (=> b!81639 d!55945))

(declare-fun d!56117 () Bool)

(declare-fun res!41952 () Bool)

(declare-fun e!44500 () Bool)

(assert (=> d!56117 (=> res!41952 e!44500)))

(assert (=> d!56117 (= res!41952 (is-Nil!624 lt!18765))))

(assert (=> d!56117 (= (forall!20 lt!18765 lambda!9627) e!44500)))

(declare-fun b!82042 () Bool)

(declare-fun e!44501 () Bool)

(assert (=> b!82042 (= e!44500 e!44501)))

(declare-fun res!41953 () Bool)

(assert (=> b!82042 (=> (not res!41953) (not e!44501))))

(assert (=> b!82042 (= res!41953 (dynLambda!984 lambda!9627 (h!991 lt!18765)))))

(declare-fun b!82043 () Bool)

(assert (=> b!82043 (= e!44501 (forall!20 (t!47838 lt!18765) lambda!9627))))

(assert (= (and d!56117 (not res!41952)) b!82042))

(assert (= (and b!82042 res!41953) b!82043))

(declare-fun b_lambda!16171 () Bool)

(assert (=> (not b_lambda!16171) (not b!82042)))

(declare-fun m!77480 () Bool)

(assert (=> b!82042 m!77480))

(declare-fun m!77482 () Bool)

(assert (=> b!82043 m!77482))

(assert (=> b!81594 d!56117))

(declare-fun d!56119 () Bool)

(declare-fun lt!18893 () Int)

(assert (=> d!56119 (>= lt!18893 0)))

(declare-fun e!44502 () Int)

(assert (=> d!56119 (= lt!18893 e!44502)))

(declare-fun c!20655 () Bool)

(assert (=> d!56119 (= c!20655 (is-Nil!624 lt!18765))))

(assert (=> d!56119 (= (size!653 lt!18765) lt!18893)))

(declare-fun b!82044 () Bool)

(assert (=> b!82044 (= e!44502 0)))

(declare-fun b!82045 () Bool)

(assert (=> b!82045 (= e!44502 (+ 1 (size!653 (t!47838 lt!18765))))))

(assert (= (and d!56119 c!20655) b!82044))

(assert (= (and d!56119 (not c!20655)) b!82045))

(declare-fun m!77484 () Bool)

(assert (=> b!82045 m!77484))

(assert (=> d!55885 d!56119))

(assert (=> d!55885 d!56057))

(declare-fun d!56121 () Bool)

(declare-fun res!41954 () Bool)

(declare-fun e!44503 () Bool)

(assert (=> d!56121 (=> res!41954 e!44503)))

(assert (=> d!56121 (= res!41954 (is-Nil!624 equal!10))))

(assert (=> d!56121 (= (forall!20 equal!10 lambda!9648) e!44503)))

(declare-fun b!82046 () Bool)

(declare-fun e!44504 () Bool)

(assert (=> b!82046 (= e!44503 e!44504)))

(declare-fun res!41955 () Bool)

(assert (=> b!82046 (=> (not res!41955) (not e!44504))))

(assert (=> b!82046 (= res!41955 (dynLambda!984 lambda!9648 (h!991 equal!10)))))

(declare-fun b!82047 () Bool)

(assert (=> b!82047 (= e!44504 (forall!20 (t!47838 equal!10) lambda!9648))))

(assert (= (and d!56121 (not res!41954)) b!82046))

(assert (= (and b!82046 res!41955) b!82047))

(declare-fun b_lambda!16173 () Bool)

(assert (=> (not b_lambda!16173) (not b!82046)))

(declare-fun m!77486 () Bool)

(assert (=> b!82046 m!77486))

(declare-fun m!77488 () Bool)

(assert (=> b!82047 m!77488))

(assert (=> b!81496 d!56121))

(assert (=> b!81554 d!55985))

(declare-fun d!56123 () Bool)

(declare-fun res!41956 () Bool)

(declare-fun e!44505 () Bool)

(assert (=> d!56123 (=> res!41956 e!44505)))

(assert (=> d!56123 (= res!41956 (is-Nil!624 lt!18787))))

(assert (=> d!56123 (= (forall!20 lt!18787 lambda!9628) e!44505)))

(declare-fun b!82048 () Bool)

(declare-fun e!44506 () Bool)

(assert (=> b!82048 (= e!44505 e!44506)))

(declare-fun res!41957 () Bool)

(assert (=> b!82048 (=> (not res!41957) (not e!44506))))

(assert (=> b!82048 (= res!41957 (dynLambda!984 lambda!9628 (h!991 lt!18787)))))

(declare-fun b!82049 () Bool)

(assert (=> b!82049 (= e!44506 (forall!20 (t!47838 lt!18787) lambda!9628))))

(assert (= (and d!56123 (not res!41956)) b!82048))

(assert (= (and b!82048 res!41957) b!82049))

(declare-fun b_lambda!16175 () Bool)

(assert (=> (not b_lambda!16175) (not b!82048)))

(declare-fun m!77490 () Bool)

(assert (=> b!82048 m!77490))

(declare-fun m!77492 () Bool)

(assert (=> b!82049 m!77492))

(assert (=> b!81646 d!56123))

(declare-fun d!56125 () Bool)

(declare-fun res!41958 () Bool)

(declare-fun e!44507 () Bool)

(assert (=> d!56125 (=> res!41958 e!44507)))

(assert (=> d!56125 (= res!41958 (is-Nil!624 equal!10))))

(assert (=> d!56125 (= (forall!20 equal!10 lambda!9630) e!44507)))

(declare-fun b!82050 () Bool)

(declare-fun e!44508 () Bool)

(assert (=> b!82050 (= e!44507 e!44508)))

(declare-fun res!41959 () Bool)

(assert (=> b!82050 (=> (not res!41959) (not e!44508))))

(assert (=> b!82050 (= res!41959 (dynLambda!984 lambda!9630 (h!991 equal!10)))))

(declare-fun b!82051 () Bool)

(assert (=> b!82051 (= e!44508 (forall!20 (t!47838 equal!10) lambda!9630))))

(assert (= (and d!56125 (not res!41958)) b!82050))

(assert (= (and b!82050 res!41959) b!82051))

(declare-fun b_lambda!16177 () Bool)

(assert (=> (not b_lambda!16177) (not b!82050)))

(declare-fun m!77494 () Bool)

(assert (=> b!82050 m!77494))

(declare-fun m!77496 () Bool)

(assert (=> b!82051 m!77496))

(assert (=> b!81531 d!56125))

(declare-fun d!56127 () Bool)

(declare-fun e!44509 () Bool)

(assert (=> d!56127 e!44509))

(declare-fun c!20656 () Bool)

(assert (=> d!56127 (= c!20656 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!56127 (forall!20 (t!47838 less!5) lambda!9627)))

(assert (=> d!56127 (= (filter_preserves_forall!0 (t!47838 less!5) lambda!9690 lambda!9627) true)))

(declare-fun b!82052 () Bool)

(assert (=> b!82052 (= e!44509 (forall!20 (filter!18 (t!47838 less!5) lambda!9690) lambda!9627))))

(declare-fun lt!18894 () Bool)

(assert (=> b!82052 (= lt!18894 (filter_preserves_forall!0 (t!47838 (t!47838 less!5)) lambda!9690 lambda!9627))))

(declare-fun b!82053 () Bool)

(assert (=> b!82053 (= e!44509 (forall!20 (filter!18 (t!47838 less!5) lambda!9690) lambda!9627))))

(assert (= (and d!56127 c!20656) b!82052))

(assert (= (and d!56127 (not c!20656)) b!82053))

(assert (=> d!56127 m!77014))

(assert (=> b!82052 m!76540))

(assert (=> b!82052 m!76540))

(declare-fun m!77498 () Bool)

(assert (=> b!82052 m!77498))

(declare-fun m!77500 () Bool)

(assert (=> b!82052 m!77500))

(assert (=> b!82053 m!76540))

(assert (=> b!82053 m!76540))

(assert (=> b!82053 m!77498))

(assert (=> b!81600 d!56127))

(declare-fun d!56129 () Bool)

(declare-fun res!41960 () Bool)

(declare-fun e!44510 () Bool)

(assert (=> d!56129 (=> res!41960 e!44510)))

(assert (=> d!56129 (= res!41960 (is-Nil!624 equal!10))))

(assert (=> d!56129 (= (forall!20 equal!10 lambda!9646) e!44510)))

(declare-fun b!82054 () Bool)

(declare-fun e!44511 () Bool)

(assert (=> b!82054 (= e!44510 e!44511)))

(declare-fun res!41961 () Bool)

(assert (=> b!82054 (=> (not res!41961) (not e!44511))))

(assert (=> b!82054 (= res!41961 (dynLambda!984 lambda!9646 (h!991 equal!10)))))

(declare-fun b!82055 () Bool)

(assert (=> b!82055 (= e!44511 (forall!20 (t!47838 equal!10) lambda!9646))))

(assert (= (and d!56129 (not res!41960)) b!82054))

(assert (= (and b!82054 res!41961) b!82055))

(declare-fun b_lambda!16179 () Bool)

(assert (=> (not b_lambda!16179) (not b!82054)))

(declare-fun m!77502 () Bool)

(assert (=> b!82054 m!77502))

(declare-fun m!77504 () Bool)

(assert (=> b!82055 m!77504))

(assert (=> d!55861 d!56129))

(declare-fun bs!39610 () Bool)

(declare-fun b!82058 () Bool)

(assert (= bs!39610 (and b!82058 b!81949)))

(declare-fun lambda!9757 () Int)

(assert (=> bs!39610 (not (= lambda!9757 lambda!9750))))

(assert (=> bs!39610 (not (= lambda!9757 lambda!9749))))

(assert (=> bs!39610 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9757 lambda!9748))))

(declare-fun bs!39611 () Bool)

(assert (= bs!39611 (and b!82058 b!81517)))

(assert (=> bs!39611 (not (= lambda!9757 lambda!9663))))

(assert (=> bs!39611 (not (= lambda!9757 lambda!9662))))

(assert (=> bs!39611 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9757 lambda!9661))))

(declare-fun bs!39612 () Bool)

(assert (= bs!39612 (and b!82058 b!81734)))

(assert (=> bs!39612 (not (= lambda!9757 lambda!9711))))

(assert (=> bs!39612 (not (= lambda!9757 lambda!9710))))

(assert (=> bs!39612 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9757 lambda!9709))))

(declare-fun bs!39613 () Bool)

(assert (= bs!39613 (and b!82058 b!81462)))

(assert (=> bs!39613 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9757 lambda!9627))))

(declare-fun bs!39614 () Bool)

(assert (= bs!39614 (and b!82058 b!81495)))

(assert (=> bs!39614 (not (= lambda!9757 lambda!9647))))

(declare-fun bs!39615 () Bool)

(assert (= bs!39615 (and b!82058 b!81804)))

(assert (=> bs!39615 (not (= lambda!9757 lambda!9723))))

(assert (=> bs!39615 (not (= lambda!9757 lambda!9722))))

(assert (=> bs!39615 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9757 lambda!9721))))

(declare-fun bs!39616 () Bool)

(assert (= bs!39616 (and b!82058 b!81885)))

(assert (=> bs!39616 (not (= lambda!9757 lambda!9735))))

(assert (=> bs!39616 (not (= lambda!9757 lambda!9734))))

(assert (=> bs!39616 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9757 lambda!9733))))

(declare-fun bs!39617 () Bool)

(assert (= bs!39617 (and b!82058 b!81742)))

(assert (=> bs!39617 (not (= lambda!9757 lambda!9714))))

(assert (=> bs!39617 (not (= lambda!9757 lambda!9713))))

(assert (=> bs!39617 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9757 lambda!9712))))

(declare-fun bs!39618 () Bool)

(assert (= bs!39618 (and b!82058 b!81922)))

(assert (=> bs!39618 (not (= lambda!9757 lambda!9747))))

(declare-fun bs!39619 () Bool)

(assert (= bs!39619 (and b!82058 b!81972)))

(assert (=> bs!39619 (not (= lambda!9757 lambda!9753))))

(assert (=> bs!39619 (not (= lambda!9757 lambda!9752))))

(assert (=> bs!39619 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9757 lambda!9751))))

(declare-fun bs!39620 () Bool)

(assert (= bs!39620 (and b!82058 b!81907)))

(assert (=> bs!39620 (not (= lambda!9757 lambda!9741))))

(declare-fun bs!39621 () Bool)

(assert (= bs!39621 (and b!82058 b!81709)))

(assert (=> bs!39621 (not (= lambda!9757 lambda!9708))))

(assert (=> bs!39621 (not (= lambda!9757 lambda!9707))))

(assert (=> bs!39621 (= (= (h!991 lt!18734) (h!991 lt!18751)) (= lambda!9757 lambda!9706))))

(declare-fun bs!39622 () Bool)

(assert (= bs!39622 (and b!82058 b!81460)))

(assert (=> bs!39622 (not (= lambda!9757 lambda!9628))))

(declare-fun bs!39623 () Bool)

(assert (= bs!39623 (and b!82058 b!81560)))

(assert (=> bs!39623 (not (= lambda!9757 lambda!9678))))

(assert (=> bs!39623 (not (= lambda!9757 lambda!9677))))

(assert (=> bs!39623 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9757 lambda!9676))))

(declare-fun bs!39624 () Bool)

(assert (= bs!39624 (and b!82058 b!81906)))

(assert (=> bs!39624 (not (= lambda!9757 lambda!9740))))

(declare-fun bs!39625 () Bool)

(assert (= bs!39625 (and b!82058 b!82039)))

(assert (=> bs!39625 (not (= lambda!9757 lambda!9756))))

(assert (=> bs!39625 (not (= lambda!9757 lambda!9755))))

(assert (=> bs!39625 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9757 lambda!9754))))

(declare-fun bs!39626 () Bool)

(assert (= bs!39626 (and b!82058 b!81490)))

(assert (=> bs!39626 (not (= lambda!9757 lambda!9639))))

(assert (=> bs!39626 (not (= lambda!9757 lambda!9638))))

(assert (=> bs!39626 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9757 lambda!9637))))

(declare-fun bs!39627 () Bool)

(assert (= bs!39627 (and b!82058 b!81921)))

(assert (=> bs!39627 (not (= lambda!9757 lambda!9746))))

(declare-fun bs!39628 () Bool)

(assert (= bs!39628 (and b!82058 b!81691)))

(assert (=> bs!39628 (not (= lambda!9757 lambda!9702))))

(assert (=> bs!39628 (not (= lambda!9757 lambda!9701))))

(assert (=> bs!39628 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9757 lambda!9700))))

(declare-fun bs!39629 () Bool)

(assert (= bs!39629 (and b!82058 b!81466)))

(assert (=> bs!39629 (not (= lambda!9757 lambda!9629))))

(declare-fun bs!39630 () Bool)

(assert (= bs!39630 (and b!82058 d!56039)))

(assert (=> bs!39630 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9757 lambda!9739))))

(declare-fun bs!39631 () Bool)

(assert (= bs!39631 (and b!82058 b!81780)))

(assert (=> bs!39631 (not (= lambda!9757 lambda!9720))))

(assert (=> bs!39631 (not (= lambda!9757 lambda!9719))))

(assert (=> bs!39631 (= (= (h!991 lt!18734) (h!991 lt!18781)) (= lambda!9757 lambda!9718))))

(declare-fun bs!39632 () Bool)

(assert (= bs!39632 (and b!82058 d!55883)))

(assert (=> bs!39632 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9757 lambda!9685))))

(declare-fun bs!39633 () Bool)

(assert (= bs!39633 (and b!82058 b!81901)))

(assert (=> bs!39633 (not (= lambda!9757 lambda!9738))))

(assert (=> bs!39633 (not (= lambda!9757 lambda!9737))))

(assert (=> bs!39633 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9757 lambda!9736))))

(declare-fun bs!39634 () Bool)

(assert (= bs!39634 (and b!82058 b!81837)))

(assert (=> bs!39634 (not (= lambda!9757 lambda!9729))))

(assert (=> bs!39634 (not (= lambda!9757 lambda!9728))))

(assert (=> bs!39634 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9757 lambda!9727))))

(declare-fun bs!39635 () Bool)

(assert (= bs!39635 (and b!82058 b!81852)))

(assert (=> bs!39635 (not (= lambda!9757 lambda!9732))))

(assert (=> bs!39635 (not (= lambda!9757 lambda!9731))))

(assert (=> bs!39635 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9757 lambda!9730))))

(declare-fun bs!39636 () Bool)

(assert (= bs!39636 (and b!82058 d!55861)))

(assert (=> bs!39636 (not (= lambda!9757 lambda!9646))))

(declare-fun bs!39637 () Bool)

(assert (= bs!39637 (and b!82058 b!81537)))

(assert (=> bs!39637 (not (= lambda!9757 lambda!9669))))

(assert (=> bs!39637 (not (= lambda!9757 lambda!9668))))

(assert (=> bs!39637 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9757 lambda!9667))))

(declare-fun bs!39638 () Bool)

(assert (= bs!39638 (and b!82058 b!81587)))

(assert (=> bs!39638 (not (= lambda!9757 lambda!9686))))

(declare-fun bs!39639 () Bool)

(assert (= bs!39639 (and b!82058 b!81496)))

(assert (=> bs!39639 (not (= lambda!9757 lambda!9648))))

(declare-fun bs!39640 () Bool)

(assert (= bs!39640 (and b!82058 d!55889)))

(assert (=> bs!39640 (not (= lambda!9757 lambda!9693))))

(declare-fun bs!39641 () Bool)

(assert (= bs!39641 (and b!82058 b!81705)))

(assert (=> bs!39641 (not (= lambda!9757 lambda!9705))))

(assert (=> bs!39641 (not (= lambda!9757 lambda!9704))))

(assert (=> bs!39641 (= (= (h!991 lt!18734) (h!991 lt!18752)) (= lambda!9757 lambda!9703))))

(declare-fun bs!39642 () Bool)

(assert (= bs!39642 (and b!82058 b!81522)))

(assert (=> bs!39642 (not (= lambda!9757 lambda!9666))))

(assert (=> bs!39642 (not (= lambda!9757 lambda!9665))))

(assert (=> bs!39642 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9757 lambda!9664))))

(declare-fun bs!39643 () Bool)

(assert (= bs!39643 (and b!82058 b!81598)))

(assert (=> bs!39643 (not (= lambda!9757 lambda!9690))))

(assert (=> bs!39643 (not (= lambda!9757 lambda!9689))))

(assert (=> bs!39643 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9757 lambda!9688))))

(declare-fun bs!39644 () Bool)

(assert (= bs!39644 (and b!82058 b!81588)))

(assert (=> bs!39644 (not (= lambda!9757 lambda!9687))))

(declare-fun bs!39645 () Bool)

(assert (= bs!39645 (and b!82058 b!81776)))

(assert (=> bs!39645 (not (= lambda!9757 lambda!9717))))

(assert (=> bs!39645 (not (= lambda!9757 lambda!9716))))

(assert (=> bs!39645 (= (= (h!991 lt!18734) (h!991 lt!18782)) (= lambda!9757 lambda!9715))))

(declare-fun bs!39646 () Bool)

(assert (= bs!39646 (and b!82058 b!81468)))

(assert (=> bs!39646 (not (= lambda!9757 lambda!9630))))

(declare-fun bs!39647 () Bool)

(assert (= bs!39647 (and b!82058 b!81633)))

(assert (=> bs!39647 (not (= lambda!9757 lambda!9696))))

(assert (=> bs!39647 (not (= lambda!9757 lambda!9695))))

(assert (=> bs!39647 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9757 lambda!9694))))

(declare-fun bs!39648 () Bool)

(assert (= bs!39648 (and b!82058 b!81687)))

(assert (=> bs!39648 (not (= lambda!9757 lambda!9699))))

(assert (=> bs!39648 (not (= lambda!9757 lambda!9698))))

(assert (=> bs!39648 (= (= (h!991 lt!18734) (h!991 lt!18730)) (= lambda!9757 lambda!9697))))

(declare-fun bs!39649 () Bool)

(assert (= bs!39649 (and b!82058 b!81810)))

(assert (=> bs!39649 (not (= lambda!9757 lambda!9726))))

(assert (=> bs!39649 (not (= lambda!9757 lambda!9725))))

(assert (=> bs!39649 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9757 lambda!9724))))

(assert (=> b!82058 true))

(declare-fun lambda!9758 () Int)

(assert (=> bs!39610 (not (= lambda!9758 lambda!9750))))

(assert (=> bs!39610 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9758 lambda!9749))))

(assert (=> bs!39610 (not (= lambda!9758 lambda!9748))))

(assert (=> bs!39611 (not (= lambda!9758 lambda!9663))))

(assert (=> bs!39611 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9758 lambda!9662))))

(assert (=> bs!39611 (not (= lambda!9758 lambda!9661))))

(assert (=> bs!39612 (not (= lambda!9758 lambda!9711))))

(assert (=> bs!39612 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9758 lambda!9710))))

(assert (=> bs!39612 (not (= lambda!9758 lambda!9709))))

(assert (=> bs!39613 (not (= lambda!9758 lambda!9627))))

(assert (=> bs!39614 (not (= lambda!9758 lambda!9647))))

(assert (=> bs!39615 (not (= lambda!9758 lambda!9723))))

(assert (=> bs!39615 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9758 lambda!9722))))

(assert (=> bs!39615 (not (= lambda!9758 lambda!9721))))

(assert (=> bs!39616 (not (= lambda!9758 lambda!9735))))

(assert (=> bs!39616 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9758 lambda!9734))))

(assert (=> bs!39616 (not (= lambda!9758 lambda!9733))))

(assert (=> bs!39617 (not (= lambda!9758 lambda!9714))))

(assert (=> bs!39617 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9758 lambda!9713))))

(assert (=> bs!39617 (not (= lambda!9758 lambda!9712))))

(assert (=> bs!39618 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9758 lambda!9747))))

(assert (=> bs!39619 (not (= lambda!9758 lambda!9753))))

(assert (=> bs!39619 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9758 lambda!9752))))

(assert (=> bs!39619 (not (= lambda!9758 lambda!9751))))

(assert (=> bs!39620 (not (= lambda!9758 lambda!9741))))

(assert (=> bs!39621 (not (= lambda!9758 lambda!9708))))

(assert (=> bs!39621 (= (= (h!991 lt!18734) (h!991 lt!18751)) (= lambda!9758 lambda!9707))))

(assert (=> bs!39621 (not (= lambda!9758 lambda!9706))))

(assert (=> bs!39622 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9758 lambda!9628))))

(assert (=> bs!39623 (not (= lambda!9758 lambda!9678))))

(assert (=> bs!39623 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9758 lambda!9677))))

(assert (=> bs!39623 (not (= lambda!9758 lambda!9676))))

(assert (=> bs!39624 (not (= lambda!9758 lambda!9740))))

(assert (=> bs!39625 (not (= lambda!9758 lambda!9756))))

(assert (=> bs!39625 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9758 lambda!9755))))

(assert (=> bs!39625 (not (= lambda!9758 lambda!9754))))

(assert (=> bs!39626 (not (= lambda!9758 lambda!9639))))

(assert (=> bs!39626 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9758 lambda!9638))))

(assert (=> bs!39626 (not (= lambda!9758 lambda!9637))))

(assert (=> bs!39627 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9758 lambda!9746))))

(assert (=> bs!39628 (not (= lambda!9758 lambda!9702))))

(assert (=> bs!39628 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9758 lambda!9701))))

(assert (=> bs!39628 (not (= lambda!9758 lambda!9700))))

(assert (=> bs!39629 (not (= lambda!9758 lambda!9629))))

(assert (=> bs!39630 (not (= lambda!9758 lambda!9739))))

(assert (=> b!82058 (not (= lambda!9758 lambda!9757))))

(assert (=> bs!39631 (not (= lambda!9758 lambda!9720))))

(assert (=> bs!39631 (= (= (h!991 lt!18734) (h!991 lt!18781)) (= lambda!9758 lambda!9719))))

(assert (=> bs!39631 (not (= lambda!9758 lambda!9718))))

(assert (=> bs!39632 (not (= lambda!9758 lambda!9685))))

(assert (=> bs!39633 (not (= lambda!9758 lambda!9738))))

(assert (=> bs!39633 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9758 lambda!9737))))

(assert (=> bs!39633 (not (= lambda!9758 lambda!9736))))

(assert (=> bs!39634 (not (= lambda!9758 lambda!9729))))

(assert (=> bs!39634 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9758 lambda!9728))))

(assert (=> bs!39634 (not (= lambda!9758 lambda!9727))))

(assert (=> bs!39635 (not (= lambda!9758 lambda!9732))))

(assert (=> bs!39635 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9758 lambda!9731))))

(assert (=> bs!39635 (not (= lambda!9758 lambda!9730))))

(assert (=> bs!39636 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9758 lambda!9646))))

(assert (=> bs!39637 (not (= lambda!9758 lambda!9669))))

(assert (=> bs!39637 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9758 lambda!9668))))

(assert (=> bs!39637 (not (= lambda!9758 lambda!9667))))

(assert (=> bs!39638 (not (= lambda!9758 lambda!9686))))

(assert (=> bs!39639 (not (= lambda!9758 lambda!9648))))

(assert (=> bs!39640 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9758 lambda!9693))))

(assert (=> bs!39641 (not (= lambda!9758 lambda!9705))))

(assert (=> bs!39641 (= (= (h!991 lt!18734) (h!991 lt!18752)) (= lambda!9758 lambda!9704))))

(assert (=> bs!39641 (not (= lambda!9758 lambda!9703))))

(assert (=> bs!39642 (not (= lambda!9758 lambda!9666))))

(assert (=> bs!39642 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9758 lambda!9665))))

(assert (=> bs!39642 (not (= lambda!9758 lambda!9664))))

(assert (=> bs!39643 (not (= lambda!9758 lambda!9690))))

(assert (=> bs!39643 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9758 lambda!9689))))

(assert (=> bs!39643 (not (= lambda!9758 lambda!9688))))

(assert (=> bs!39644 (not (= lambda!9758 lambda!9687))))

(assert (=> bs!39645 (not (= lambda!9758 lambda!9717))))

(assert (=> bs!39645 (= (= (h!991 lt!18734) (h!991 lt!18782)) (= lambda!9758 lambda!9716))))

(assert (=> bs!39645 (not (= lambda!9758 lambda!9715))))

(assert (=> bs!39646 (not (= lambda!9758 lambda!9630))))

(assert (=> bs!39647 (not (= lambda!9758 lambda!9696))))

(assert (=> bs!39647 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9758 lambda!9695))))

(assert (=> bs!39647 (not (= lambda!9758 lambda!9694))))

(assert (=> bs!39648 (not (= lambda!9758 lambda!9699))))

(assert (=> bs!39648 (= (= (h!991 lt!18734) (h!991 lt!18730)) (= lambda!9758 lambda!9698))))

(assert (=> bs!39648 (not (= lambda!9758 lambda!9697))))

(assert (=> bs!39649 (not (= lambda!9758 lambda!9726))))

(assert (=> bs!39649 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9758 lambda!9725))))

(assert (=> bs!39649 (not (= lambda!9758 lambda!9724))))

(assert (=> b!82058 true))

(declare-fun lambda!9759 () Int)

(assert (=> bs!39610 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9759 lambda!9750))))

(assert (=> bs!39610 (not (= lambda!9759 lambda!9749))))

(assert (=> bs!39610 (not (= lambda!9759 lambda!9748))))

(assert (=> bs!39611 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9759 lambda!9663))))

(assert (=> bs!39611 (not (= lambda!9759 lambda!9662))))

(assert (=> bs!39611 (not (= lambda!9759 lambda!9661))))

(assert (=> bs!39612 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9759 lambda!9711))))

(assert (=> bs!39612 (not (= lambda!9759 lambda!9710))))

(assert (=> bs!39612 (not (= lambda!9759 lambda!9709))))

(assert (=> bs!39613 (not (= lambda!9759 lambda!9627))))

(assert (=> bs!39614 (not (= lambda!9759 lambda!9647))))

(assert (=> bs!39615 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9759 lambda!9723))))

(assert (=> bs!39615 (not (= lambda!9759 lambda!9722))))

(assert (=> bs!39615 (not (= lambda!9759 lambda!9721))))

(assert (=> bs!39616 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9759 lambda!9735))))

(assert (=> bs!39616 (not (= lambda!9759 lambda!9734))))

(assert (=> bs!39616 (not (= lambda!9759 lambda!9733))))

(assert (=> bs!39617 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9759 lambda!9714))))

(assert (=> bs!39617 (not (= lambda!9759 lambda!9713))))

(assert (=> bs!39617 (not (= lambda!9759 lambda!9712))))

(assert (=> bs!39618 (not (= lambda!9759 lambda!9747))))

(assert (=> bs!39619 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9759 lambda!9753))))

(assert (=> bs!39619 (not (= lambda!9759 lambda!9752))))

(assert (=> bs!39619 (not (= lambda!9759 lambda!9751))))

(assert (=> bs!39620 (not (= lambda!9759 lambda!9741))))

(assert (=> bs!39621 (= (= (h!991 lt!18734) (h!991 lt!18751)) (= lambda!9759 lambda!9708))))

(assert (=> bs!39621 (not (= lambda!9759 lambda!9707))))

(assert (=> bs!39621 (not (= lambda!9759 lambda!9706))))

(assert (=> bs!39622 (not (= lambda!9759 lambda!9628))))

(assert (=> bs!39623 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9759 lambda!9678))))

(assert (=> bs!39623 (not (= lambda!9759 lambda!9677))))

(assert (=> bs!39623 (not (= lambda!9759 lambda!9676))))

(assert (=> bs!39624 (not (= lambda!9759 lambda!9740))))

(assert (=> bs!39625 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9759 lambda!9756))))

(assert (=> bs!39625 (not (= lambda!9759 lambda!9755))))

(assert (=> bs!39625 (not (= lambda!9759 lambda!9754))))

(assert (=> bs!39626 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9759 lambda!9639))))

(assert (=> bs!39626 (not (= lambda!9759 lambda!9638))))

(assert (=> bs!39626 (not (= lambda!9759 lambda!9637))))

(assert (=> bs!39627 (not (= lambda!9759 lambda!9746))))

(assert (=> bs!39628 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9759 lambda!9702))))

(assert (=> bs!39628 (not (= lambda!9759 lambda!9701))))

(assert (=> bs!39628 (not (= lambda!9759 lambda!9700))))

(assert (=> bs!39629 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9759 lambda!9629))))

(assert (=> bs!39630 (not (= lambda!9759 lambda!9739))))

(assert (=> b!82058 (not (= lambda!9759 lambda!9758))))

(assert (=> b!82058 (not (= lambda!9759 lambda!9757))))

(assert (=> bs!39631 (= (= (h!991 lt!18734) (h!991 lt!18781)) (= lambda!9759 lambda!9720))))

(assert (=> bs!39631 (not (= lambda!9759 lambda!9719))))

(assert (=> bs!39631 (not (= lambda!9759 lambda!9718))))

(assert (=> bs!39632 (not (= lambda!9759 lambda!9685))))

(assert (=> bs!39633 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9759 lambda!9738))))

(assert (=> bs!39633 (not (= lambda!9759 lambda!9737))))

(assert (=> bs!39633 (not (= lambda!9759 lambda!9736))))

(assert (=> bs!39634 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9759 lambda!9729))))

(assert (=> bs!39634 (not (= lambda!9759 lambda!9728))))

(assert (=> bs!39634 (not (= lambda!9759 lambda!9727))))

(assert (=> bs!39635 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9759 lambda!9732))))

(assert (=> bs!39635 (not (= lambda!9759 lambda!9731))))

(assert (=> bs!39635 (not (= lambda!9759 lambda!9730))))

(assert (=> bs!39636 (not (= lambda!9759 lambda!9646))))

(assert (=> bs!39637 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9759 lambda!9669))))

(assert (=> bs!39637 (not (= lambda!9759 lambda!9668))))

(assert (=> bs!39637 (not (= lambda!9759 lambda!9667))))

(assert (=> bs!39638 (not (= lambda!9759 lambda!9686))))

(assert (=> bs!39639 (not (= lambda!9759 lambda!9648))))

(assert (=> bs!39640 (not (= lambda!9759 lambda!9693))))

(assert (=> bs!39641 (= (= (h!991 lt!18734) (h!991 lt!18752)) (= lambda!9759 lambda!9705))))

(assert (=> bs!39641 (not (= lambda!9759 lambda!9704))))

(assert (=> bs!39641 (not (= lambda!9759 lambda!9703))))

(assert (=> bs!39642 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9759 lambda!9666))))

(assert (=> bs!39642 (not (= lambda!9759 lambda!9665))))

(assert (=> bs!39642 (not (= lambda!9759 lambda!9664))))

(assert (=> bs!39643 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9759 lambda!9690))))

(assert (=> bs!39643 (not (= lambda!9759 lambda!9689))))

(assert (=> bs!39643 (not (= lambda!9759 lambda!9688))))

(assert (=> bs!39644 (not (= lambda!9759 lambda!9687))))

(assert (=> bs!39645 (= (= (h!991 lt!18734) (h!991 lt!18782)) (= lambda!9759 lambda!9717))))

(assert (=> bs!39645 (not (= lambda!9759 lambda!9716))))

(assert (=> bs!39645 (not (= lambda!9759 lambda!9715))))

(assert (=> bs!39646 (not (= lambda!9759 lambda!9630))))

(assert (=> bs!39647 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9759 lambda!9696))))

(assert (=> bs!39647 (not (= lambda!9759 lambda!9695))))

(assert (=> bs!39647 (not (= lambda!9759 lambda!9694))))

(assert (=> bs!39648 (= (= (h!991 lt!18734) (h!991 lt!18730)) (= lambda!9759 lambda!9699))))

(assert (=> bs!39648 (not (= lambda!9759 lambda!9698))))

(assert (=> bs!39648 (not (= lambda!9759 lambda!9697))))

(assert (=> bs!39649 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9759 lambda!9726))))

(assert (=> bs!39649 (not (= lambda!9759 lambda!9725))))

(assert (=> bs!39649 (not (= lambda!9759 lambda!9724))))

(assert (=> b!82058 true))

(declare-fun b!82056 () Bool)

(declare-fun e!44516 () Bool)

(assert (=> b!82056 (= e!44516 (filter_preserves_forall!0 (t!47838 lt!18734) lambda!9758 lambda!9629))))

(declare-fun lt!18900 () List!665)

(declare-fun lt!18898 () List!665)

(declare-fun lt!18895 () List!665)

(declare-fun e!44514 () Bool)

(declare-fun b!82057 () Bool)

(assert (=> b!82057 (= e!44514 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18900) lt!18895) (quickSort!0 lt!18898) lambda!9629))))

(declare-fun d!56131 () Bool)

(assert (=> d!56131 (forall!20 (quickSort!0 lt!18734) lambda!9629)))

(declare-fun lt!18897 () Bool)

(declare-fun e!44512 () Bool)

(assert (=> d!56131 (= lt!18897 e!44512)))

(declare-fun res!41964 () Bool)

(assert (=> d!56131 (=> res!41964 e!44512)))

(assert (=> d!56131 (= res!41964 (or (is-Nil!624 lt!18734) (and (is-Cons!622 lt!18734) (is-Nil!624 (t!47838 lt!18734)))))))

(assert (=> d!56131 (forall!20 lt!18734 lambda!9629)))

(assert (=> d!56131 (= (sort_preserves_forall!0 lt!18734 lambda!9629) true)))

(assert (=> b!82058 (= e!44512 e!44514)))

(declare-fun res!41965 () Bool)

(assert (=> b!82058 (=> (not res!41965) (not e!44514))))

(assert (=> b!82058 (= res!41965 (append_preserves_forall!0 (quickSort!0 lt!18900) lt!18895 lambda!9629))))

(declare-fun lt!18896 () Bool)

(declare-fun e!44513 () Bool)

(assert (=> b!82058 (= lt!18896 e!44513)))

(declare-fun res!41963 () Bool)

(assert (=> b!82058 (=> (not res!41963) (not e!44513))))

(assert (=> b!82058 (= res!41963 (sort_preserves_forall!0 lt!18900 lambda!9629))))

(declare-fun lt!18899 () Bool)

(declare-fun e!44515 () Bool)

(assert (=> b!82058 (= lt!18899 e!44515)))

(declare-fun res!41962 () Bool)

(assert (=> b!82058 (=> (not res!41962) (not e!44515))))

(assert (=> b!82058 (= res!41962 e!44516)))

(declare-fun res!41966 () Bool)

(assert (=> b!82058 (=> (not res!41966) (not e!44516))))

(assert (=> b!82058 (= res!41966 (filter_preserves_forall!0 (t!47838 lt!18734) lambda!9757 lambda!9629))))

(assert (=> b!82058 (= lt!18898 (filter!18 (t!47838 lt!18734) lambda!9759))))

(assert (=> b!82058 (= lt!18895 (Cons!622 (h!991 lt!18734) (filter!18 (t!47838 lt!18734) lambda!9758)))))

(assert (=> b!82058 (= lt!18900 (filter!18 (t!47838 lt!18734) lambda!9757))))

(declare-fun b!82059 () Bool)

(assert (=> b!82059 (= e!44513 (sort_preserves_forall!0 lt!18898 lambda!9629))))

(declare-fun b!82060 () Bool)

(assert (=> b!82060 (= e!44515 (filter_preserves_forall!0 (t!47838 lt!18734) lambda!9759 lambda!9629))))

(assert (= (and d!56131 (not res!41964)) b!82058))

(assert (= (and b!82058 res!41966) b!82056))

(assert (= (and b!82058 res!41962) b!82060))

(assert (= (and b!82058 res!41963) b!82059))

(assert (= (and b!82058 res!41965) b!82057))

(declare-fun m!77506 () Bool)

(assert (=> b!82060 m!77506))

(declare-fun m!77508 () Bool)

(assert (=> b!82059 m!77508))

(declare-fun m!77510 () Bool)

(assert (=> b!82057 m!77510))

(assert (=> b!82057 m!77510))

(declare-fun m!77512 () Bool)

(assert (=> b!82057 m!77512))

(declare-fun m!77514 () Bool)

(assert (=> b!82057 m!77514))

(assert (=> b!82057 m!77512))

(assert (=> b!82057 m!77514))

(declare-fun m!77516 () Bool)

(assert (=> b!82057 m!77516))

(declare-fun m!77518 () Bool)

(assert (=> b!82056 m!77518))

(declare-fun m!77520 () Bool)

(assert (=> b!82058 m!77520))

(declare-fun m!77522 () Bool)

(assert (=> b!82058 m!77522))

(assert (=> b!82058 m!77510))

(declare-fun m!77524 () Bool)

(assert (=> b!82058 m!77524))

(declare-fun m!77526 () Bool)

(assert (=> b!82058 m!77526))

(assert (=> b!82058 m!77510))

(declare-fun m!77528 () Bool)

(assert (=> b!82058 m!77528))

(declare-fun m!77530 () Bool)

(assert (=> b!82058 m!77530))

(assert (=> d!56131 m!76418))

(assert (=> d!56131 m!76418))

(declare-fun m!77532 () Bool)

(assert (=> d!56131 m!77532))

(declare-fun m!77534 () Bool)

(assert (=> d!56131 m!77534))

(assert (=> b!81523 d!56131))

(declare-fun d!56133 () Bool)

(declare-fun e!44518 () Bool)

(assert (=> d!56133 e!44518))

(declare-fun c!20657 () Bool)

(assert (=> d!56133 (= c!20657 (is-Cons!622 (++!73 (quickSort!0 lt!18736) lt!18731)))))

(declare-fun e!44517 () Bool)

(assert (=> d!56133 e!44517))

(declare-fun res!41967 () Bool)

(assert (=> d!56133 (=> (not res!41967) (not e!44517))))

(assert (=> d!56133 (= res!41967 (forall!20 (++!73 (quickSort!0 lt!18736) lt!18731) lambda!9629))))

(assert (=> d!56133 (= (append_preserves_forall!0 (++!73 (quickSort!0 lt!18736) lt!18731) (quickSort!0 lt!18734) lambda!9629) true)))

(declare-fun b!82061 () Bool)

(assert (=> b!82061 (= e!44517 (forall!20 (quickSort!0 lt!18734) lambda!9629))))

(declare-fun b!82062 () Bool)

(assert (=> b!82062 (= e!44518 (forall!20 (++!73 (++!73 (quickSort!0 lt!18736) lt!18731) (quickSort!0 lt!18734)) lambda!9629))))

(declare-fun lt!18901 () Bool)

(assert (=> b!82062 (= lt!18901 (append_preserves_forall!0 (t!47838 (++!73 (quickSort!0 lt!18736) lt!18731)) (quickSort!0 lt!18734) lambda!9629))))

(declare-fun b!82063 () Bool)

(assert (=> b!82063 (= e!44518 (forall!20 (++!73 (++!73 (quickSort!0 lt!18736) lt!18731) (quickSort!0 lt!18734)) lambda!9629))))

(assert (= (and d!56133 res!41967) b!82061))

(assert (= (and d!56133 c!20657) b!82062))

(assert (= (and d!56133 (not c!20657)) b!82063))

(assert (=> d!56133 m!76416))

(assert (=> d!56133 m!77182))

(assert (=> b!82061 m!76418))

(assert (=> b!82061 m!77532))

(assert (=> b!82062 m!76416))

(assert (=> b!82062 m!76418))

(declare-fun m!77536 () Bool)

(assert (=> b!82062 m!77536))

(assert (=> b!82062 m!77536))

(declare-fun m!77538 () Bool)

(assert (=> b!82062 m!77538))

(assert (=> b!82062 m!76418))

(declare-fun m!77540 () Bool)

(assert (=> b!82062 m!77540))

(assert (=> b!82063 m!76416))

(assert (=> b!82063 m!76418))

(assert (=> b!82063 m!77536))

(assert (=> b!82063 m!77536))

(assert (=> b!82063 m!77538))

(assert (=> b!81521 d!56133))

(declare-fun b!82066 () Bool)

(declare-fun res!41968 () Bool)

(declare-fun e!44520 () Bool)

(assert (=> b!82066 (=> (not res!41968) (not e!44520))))

(declare-fun lt!18902 () List!665)

(assert (=> b!82066 (= res!41968 (= (size!653 lt!18902) (+ (size!653 (quickSort!0 lt!18736)) (size!653 lt!18731))))))

(declare-fun b!82065 () Bool)

(declare-fun e!44519 () List!665)

(assert (=> b!82065 (= e!44519 (Cons!622 (h!991 (quickSort!0 lt!18736)) (++!73 (t!47838 (quickSort!0 lt!18736)) lt!18731)))))

(declare-fun b!82067 () Bool)

(assert (=> b!82067 (= e!44520 (or (not (= lt!18731 Nil!624)) (= lt!18902 (quickSort!0 lt!18736))))))

(declare-fun b!82064 () Bool)

(assert (=> b!82064 (= e!44519 lt!18731)))

(declare-fun d!56135 () Bool)

(assert (=> d!56135 e!44520))

(declare-fun res!41969 () Bool)

(assert (=> d!56135 (=> (not res!41969) (not e!44520))))

(assert (=> d!56135 (= res!41969 (= (content!124 lt!18902) (union (content!124 (quickSort!0 lt!18736)) (content!124 lt!18731))))))

(assert (=> d!56135 (= lt!18902 e!44519)))

(declare-fun c!20658 () Bool)

(assert (=> d!56135 (= c!20658 (is-Nil!624 (quickSort!0 lt!18736)))))

(assert (=> d!56135 (= (++!73 (quickSort!0 lt!18736) lt!18731) lt!18902)))

(assert (= (and d!56135 c!20658) b!82064))

(assert (= (and d!56135 (not c!20658)) b!82065))

(assert (= (and d!56135 res!41969) b!82066))

(assert (= (and b!82066 res!41968) b!82067))

(declare-fun m!77542 () Bool)

(assert (=> b!82066 m!77542))

(assert (=> b!82066 m!76414))

(declare-fun m!77544 () Bool)

(assert (=> b!82066 m!77544))

(declare-fun m!77546 () Bool)

(assert (=> b!82066 m!77546))

(declare-fun m!77548 () Bool)

(assert (=> b!82065 m!77548))

(declare-fun m!77550 () Bool)

(assert (=> d!56135 m!77550))

(assert (=> d!56135 m!76414))

(declare-fun m!77552 () Bool)

(assert (=> d!56135 m!77552))

(declare-fun m!77554 () Bool)

(assert (=> d!56135 m!77554))

(assert (=> b!81521 d!56135))

(assert (=> b!81521 d!56033))

(declare-fun bs!39650 () Bool)

(declare-fun b!82071 () Bool)

(assert (= bs!39650 (and b!82071 b!81949)))

(declare-fun lambda!9760 () Int)

(assert (=> bs!39650 (not (= lambda!9760 lambda!9750))))

(assert (=> bs!39650 (not (= lambda!9760 lambda!9749))))

(assert (=> bs!39650 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9760 lambda!9748))))

(declare-fun bs!39651 () Bool)

(assert (= bs!39651 (and b!82071 b!81517)))

(assert (=> bs!39651 (not (= lambda!9760 lambda!9663))))

(assert (=> bs!39651 (not (= lambda!9760 lambda!9662))))

(assert (=> bs!39651 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9760 lambda!9661))))

(declare-fun bs!39652 () Bool)

(assert (= bs!39652 (and b!82071 b!81734)))

(assert (=> bs!39652 (not (= lambda!9760 lambda!9711))))

(assert (=> bs!39652 (not (= lambda!9760 lambda!9710))))

(assert (=> bs!39652 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9760 lambda!9709))))

(declare-fun bs!39653 () Bool)

(assert (= bs!39653 (and b!82071 b!81462)))

(assert (=> bs!39653 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9760 lambda!9627))))

(declare-fun bs!39654 () Bool)

(assert (= bs!39654 (and b!82071 b!81495)))

(assert (=> bs!39654 (not (= lambda!9760 lambda!9647))))

(declare-fun bs!39655 () Bool)

(assert (= bs!39655 (and b!82071 b!81804)))

(assert (=> bs!39655 (not (= lambda!9760 lambda!9723))))

(assert (=> bs!39655 (not (= lambda!9760 lambda!9722))))

(assert (=> bs!39655 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9760 lambda!9721))))

(declare-fun bs!39656 () Bool)

(assert (= bs!39656 (and b!82071 b!81885)))

(assert (=> bs!39656 (not (= lambda!9760 lambda!9735))))

(assert (=> bs!39656 (not (= lambda!9760 lambda!9734))))

(assert (=> bs!39656 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9760 lambda!9733))))

(declare-fun bs!39657 () Bool)

(assert (= bs!39657 (and b!82071 b!81742)))

(assert (=> bs!39657 (not (= lambda!9760 lambda!9714))))

(assert (=> bs!39657 (not (= lambda!9760 lambda!9713))))

(assert (=> bs!39657 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9760 lambda!9712))))

(declare-fun bs!39658 () Bool)

(assert (= bs!39658 (and b!82071 b!81922)))

(assert (=> bs!39658 (not (= lambda!9760 lambda!9747))))

(declare-fun bs!39659 () Bool)

(assert (= bs!39659 (and b!82071 b!81972)))

(assert (=> bs!39659 (not (= lambda!9760 lambda!9753))))

(assert (=> bs!39659 (not (= lambda!9760 lambda!9752))))

(assert (=> bs!39659 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9760 lambda!9751))))

(declare-fun bs!39660 () Bool)

(assert (= bs!39660 (and b!82071 b!81907)))

(assert (=> bs!39660 (not (= lambda!9760 lambda!9741))))

(declare-fun bs!39661 () Bool)

(assert (= bs!39661 (and b!82071 b!81709)))

(assert (=> bs!39661 (not (= lambda!9760 lambda!9708))))

(assert (=> bs!39661 (not (= lambda!9760 lambda!9707))))

(assert (=> bs!39661 (= (= (h!991 lt!18734) (h!991 lt!18751)) (= lambda!9760 lambda!9706))))

(declare-fun bs!39662 () Bool)

(assert (= bs!39662 (and b!82071 b!81460)))

(assert (=> bs!39662 (not (= lambda!9760 lambda!9628))))

(declare-fun bs!39663 () Bool)

(assert (= bs!39663 (and b!82071 b!81560)))

(assert (=> bs!39663 (not (= lambda!9760 lambda!9678))))

(assert (=> bs!39663 (not (= lambda!9760 lambda!9677))))

(assert (=> bs!39663 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9760 lambda!9676))))

(declare-fun bs!39664 () Bool)

(assert (= bs!39664 (and b!82071 b!81906)))

(assert (=> bs!39664 (not (= lambda!9760 lambda!9740))))

(declare-fun bs!39665 () Bool)

(assert (= bs!39665 (and b!82071 b!82039)))

(assert (=> bs!39665 (not (= lambda!9760 lambda!9756))))

(assert (=> bs!39665 (not (= lambda!9760 lambda!9755))))

(assert (=> bs!39665 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9760 lambda!9754))))

(declare-fun bs!39666 () Bool)

(assert (= bs!39666 (and b!82071 b!81490)))

(assert (=> bs!39666 (not (= lambda!9760 lambda!9639))))

(assert (=> bs!39666 (not (= lambda!9760 lambda!9638))))

(assert (=> bs!39666 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9760 lambda!9637))))

(declare-fun bs!39667 () Bool)

(assert (= bs!39667 (and b!82071 b!81921)))

(assert (=> bs!39667 (not (= lambda!9760 lambda!9746))))

(declare-fun bs!39668 () Bool)

(assert (= bs!39668 (and b!82071 b!81691)))

(assert (=> bs!39668 (not (= lambda!9760 lambda!9702))))

(assert (=> bs!39668 (not (= lambda!9760 lambda!9701))))

(assert (=> bs!39668 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9760 lambda!9700))))

(declare-fun bs!39669 () Bool)

(assert (= bs!39669 (and b!82071 b!81466)))

(assert (=> bs!39669 (not (= lambda!9760 lambda!9629))))

(declare-fun bs!39670 () Bool)

(assert (= bs!39670 (and b!82071 d!56039)))

(assert (=> bs!39670 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9760 lambda!9739))))

(declare-fun bs!39671 () Bool)

(assert (= bs!39671 (and b!82071 b!82058)))

(assert (=> bs!39671 (not (= lambda!9760 lambda!9759))))

(assert (=> bs!39671 (not (= lambda!9760 lambda!9758))))

(assert (=> bs!39671 (= lambda!9760 lambda!9757)))

(declare-fun bs!39672 () Bool)

(assert (= bs!39672 (and b!82071 b!81780)))

(assert (=> bs!39672 (not (= lambda!9760 lambda!9720))))

(assert (=> bs!39672 (not (= lambda!9760 lambda!9719))))

(assert (=> bs!39672 (= (= (h!991 lt!18734) (h!991 lt!18781)) (= lambda!9760 lambda!9718))))

(declare-fun bs!39673 () Bool)

(assert (= bs!39673 (and b!82071 d!55883)))

(assert (=> bs!39673 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9760 lambda!9685))))

(declare-fun bs!39674 () Bool)

(assert (= bs!39674 (and b!82071 b!81901)))

(assert (=> bs!39674 (not (= lambda!9760 lambda!9738))))

(assert (=> bs!39674 (not (= lambda!9760 lambda!9737))))

(assert (=> bs!39674 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9760 lambda!9736))))

(declare-fun bs!39675 () Bool)

(assert (= bs!39675 (and b!82071 b!81837)))

(assert (=> bs!39675 (not (= lambda!9760 lambda!9729))))

(assert (=> bs!39675 (not (= lambda!9760 lambda!9728))))

(assert (=> bs!39675 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9760 lambda!9727))))

(declare-fun bs!39676 () Bool)

(assert (= bs!39676 (and b!82071 b!81852)))

(assert (=> bs!39676 (not (= lambda!9760 lambda!9732))))

(assert (=> bs!39676 (not (= lambda!9760 lambda!9731))))

(assert (=> bs!39676 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9760 lambda!9730))))

(declare-fun bs!39677 () Bool)

(assert (= bs!39677 (and b!82071 d!55861)))

(assert (=> bs!39677 (not (= lambda!9760 lambda!9646))))

(declare-fun bs!39678 () Bool)

(assert (= bs!39678 (and b!82071 b!81537)))

(assert (=> bs!39678 (not (= lambda!9760 lambda!9669))))

(assert (=> bs!39678 (not (= lambda!9760 lambda!9668))))

(assert (=> bs!39678 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9760 lambda!9667))))

(declare-fun bs!39679 () Bool)

(assert (= bs!39679 (and b!82071 b!81587)))

(assert (=> bs!39679 (not (= lambda!9760 lambda!9686))))

(declare-fun bs!39680 () Bool)

(assert (= bs!39680 (and b!82071 b!81496)))

(assert (=> bs!39680 (not (= lambda!9760 lambda!9648))))

(declare-fun bs!39681 () Bool)

(assert (= bs!39681 (and b!82071 d!55889)))

(assert (=> bs!39681 (not (= lambda!9760 lambda!9693))))

(declare-fun bs!39682 () Bool)

(assert (= bs!39682 (and b!82071 b!81705)))

(assert (=> bs!39682 (not (= lambda!9760 lambda!9705))))

(assert (=> bs!39682 (not (= lambda!9760 lambda!9704))))

(assert (=> bs!39682 (= (= (h!991 lt!18734) (h!991 lt!18752)) (= lambda!9760 lambda!9703))))

(declare-fun bs!39683 () Bool)

(assert (= bs!39683 (and b!82071 b!81522)))

(assert (=> bs!39683 (not (= lambda!9760 lambda!9666))))

(assert (=> bs!39683 (not (= lambda!9760 lambda!9665))))

(assert (=> bs!39683 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9760 lambda!9664))))

(declare-fun bs!39684 () Bool)

(assert (= bs!39684 (and b!82071 b!81598)))

(assert (=> bs!39684 (not (= lambda!9760 lambda!9690))))

(assert (=> bs!39684 (not (= lambda!9760 lambda!9689))))

(assert (=> bs!39684 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9760 lambda!9688))))

(declare-fun bs!39685 () Bool)

(assert (= bs!39685 (and b!82071 b!81588)))

(assert (=> bs!39685 (not (= lambda!9760 lambda!9687))))

(declare-fun bs!39686 () Bool)

(assert (= bs!39686 (and b!82071 b!81776)))

(assert (=> bs!39686 (not (= lambda!9760 lambda!9717))))

(assert (=> bs!39686 (not (= lambda!9760 lambda!9716))))

(assert (=> bs!39686 (= (= (h!991 lt!18734) (h!991 lt!18782)) (= lambda!9760 lambda!9715))))

(declare-fun bs!39687 () Bool)

(assert (= bs!39687 (and b!82071 b!81468)))

(assert (=> bs!39687 (not (= lambda!9760 lambda!9630))))

(declare-fun bs!39688 () Bool)

(assert (= bs!39688 (and b!82071 b!81633)))

(assert (=> bs!39688 (not (= lambda!9760 lambda!9696))))

(assert (=> bs!39688 (not (= lambda!9760 lambda!9695))))

(assert (=> bs!39688 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9760 lambda!9694))))

(declare-fun bs!39689 () Bool)

(assert (= bs!39689 (and b!82071 b!81687)))

(assert (=> bs!39689 (not (= lambda!9760 lambda!9699))))

(assert (=> bs!39689 (not (= lambda!9760 lambda!9698))))

(assert (=> bs!39689 (= (= (h!991 lt!18734) (h!991 lt!18730)) (= lambda!9760 lambda!9697))))

(declare-fun bs!39690 () Bool)

(assert (= bs!39690 (and b!82071 b!81810)))

(assert (=> bs!39690 (not (= lambda!9760 lambda!9726))))

(assert (=> bs!39690 (not (= lambda!9760 lambda!9725))))

(assert (=> bs!39690 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9760 lambda!9724))))

(assert (=> b!82071 true))

(declare-fun lambda!9761 () Int)

(assert (=> bs!39650 (not (= lambda!9761 lambda!9750))))

(assert (=> bs!39650 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9761 lambda!9749))))

(assert (=> bs!39650 (not (= lambda!9761 lambda!9748))))

(assert (=> bs!39651 (not (= lambda!9761 lambda!9663))))

(assert (=> bs!39651 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9761 lambda!9662))))

(assert (=> bs!39651 (not (= lambda!9761 lambda!9661))))

(assert (=> bs!39652 (not (= lambda!9761 lambda!9711))))

(assert (=> bs!39652 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9761 lambda!9710))))

(assert (=> bs!39652 (not (= lambda!9761 lambda!9709))))

(assert (=> bs!39653 (not (= lambda!9761 lambda!9627))))

(assert (=> bs!39654 (not (= lambda!9761 lambda!9647))))

(assert (=> bs!39655 (not (= lambda!9761 lambda!9723))))

(assert (=> bs!39655 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9761 lambda!9722))))

(assert (=> bs!39655 (not (= lambda!9761 lambda!9721))))

(assert (=> bs!39656 (not (= lambda!9761 lambda!9735))))

(assert (=> bs!39656 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9761 lambda!9734))))

(assert (=> bs!39656 (not (= lambda!9761 lambda!9733))))

(assert (=> bs!39657 (not (= lambda!9761 lambda!9714))))

(assert (=> bs!39657 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9761 lambda!9713))))

(assert (=> bs!39657 (not (= lambda!9761 lambda!9712))))

(assert (=> bs!39658 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9761 lambda!9747))))

(assert (=> bs!39659 (not (= lambda!9761 lambda!9753))))

(assert (=> bs!39659 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9761 lambda!9752))))

(assert (=> bs!39659 (not (= lambda!9761 lambda!9751))))

(assert (=> bs!39660 (not (= lambda!9761 lambda!9741))))

(assert (=> bs!39661 (not (= lambda!9761 lambda!9708))))

(assert (=> bs!39661 (= (= (h!991 lt!18734) (h!991 lt!18751)) (= lambda!9761 lambda!9707))))

(assert (=> bs!39661 (not (= lambda!9761 lambda!9706))))

(assert (=> bs!39662 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9761 lambda!9628))))

(assert (=> bs!39663 (not (= lambda!9761 lambda!9678))))

(assert (=> bs!39663 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9761 lambda!9677))))

(assert (=> bs!39663 (not (= lambda!9761 lambda!9676))))

(assert (=> bs!39664 (not (= lambda!9761 lambda!9740))))

(assert (=> bs!39665 (not (= lambda!9761 lambda!9756))))

(assert (=> bs!39665 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9761 lambda!9755))))

(assert (=> bs!39665 (not (= lambda!9761 lambda!9754))))

(assert (=> bs!39666 (not (= lambda!9761 lambda!9639))))

(assert (=> bs!39666 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9761 lambda!9638))))

(assert (=> bs!39666 (not (= lambda!9761 lambda!9637))))

(assert (=> bs!39667 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9761 lambda!9746))))

(assert (=> bs!39668 (not (= lambda!9761 lambda!9702))))

(assert (=> bs!39668 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9761 lambda!9701))))

(assert (=> bs!39668 (not (= lambda!9761 lambda!9700))))

(assert (=> bs!39669 (not (= lambda!9761 lambda!9629))))

(assert (=> bs!39670 (not (= lambda!9761 lambda!9739))))

(assert (=> bs!39671 (not (= lambda!9761 lambda!9759))))

(assert (=> bs!39671 (= lambda!9761 lambda!9758)))

(assert (=> bs!39671 (not (= lambda!9761 lambda!9757))))

(assert (=> bs!39672 (not (= lambda!9761 lambda!9720))))

(assert (=> bs!39672 (= (= (h!991 lt!18734) (h!991 lt!18781)) (= lambda!9761 lambda!9719))))

(assert (=> bs!39672 (not (= lambda!9761 lambda!9718))))

(assert (=> bs!39673 (not (= lambda!9761 lambda!9685))))

(assert (=> bs!39674 (not (= lambda!9761 lambda!9738))))

(assert (=> bs!39674 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9761 lambda!9737))))

(assert (=> bs!39674 (not (= lambda!9761 lambda!9736))))

(assert (=> bs!39675 (not (= lambda!9761 lambda!9729))))

(assert (=> bs!39675 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9761 lambda!9728))))

(assert (=> bs!39675 (not (= lambda!9761 lambda!9727))))

(assert (=> bs!39676 (not (= lambda!9761 lambda!9732))))

(assert (=> bs!39676 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9761 lambda!9731))))

(assert (=> bs!39676 (not (= lambda!9761 lambda!9730))))

(assert (=> bs!39677 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9761 lambda!9646))))

(assert (=> bs!39678 (not (= lambda!9761 lambda!9669))))

(assert (=> bs!39678 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9761 lambda!9668))))

(assert (=> bs!39678 (not (= lambda!9761 lambda!9667))))

(assert (=> bs!39679 (not (= lambda!9761 lambda!9686))))

(assert (=> bs!39680 (not (= lambda!9761 lambda!9648))))

(assert (=> b!82071 (not (= lambda!9761 lambda!9760))))

(assert (=> bs!39681 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9761 lambda!9693))))

(assert (=> bs!39682 (not (= lambda!9761 lambda!9705))))

(assert (=> bs!39682 (= (= (h!991 lt!18734) (h!991 lt!18752)) (= lambda!9761 lambda!9704))))

(assert (=> bs!39682 (not (= lambda!9761 lambda!9703))))

(assert (=> bs!39683 (not (= lambda!9761 lambda!9666))))

(assert (=> bs!39683 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9761 lambda!9665))))

(assert (=> bs!39683 (not (= lambda!9761 lambda!9664))))

(assert (=> bs!39684 (not (= lambda!9761 lambda!9690))))

(assert (=> bs!39684 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9761 lambda!9689))))

(assert (=> bs!39684 (not (= lambda!9761 lambda!9688))))

(assert (=> bs!39685 (not (= lambda!9761 lambda!9687))))

(assert (=> bs!39686 (not (= lambda!9761 lambda!9717))))

(assert (=> bs!39686 (= (= (h!991 lt!18734) (h!991 lt!18782)) (= lambda!9761 lambda!9716))))

(assert (=> bs!39686 (not (= lambda!9761 lambda!9715))))

(assert (=> bs!39687 (not (= lambda!9761 lambda!9630))))

(assert (=> bs!39688 (not (= lambda!9761 lambda!9696))))

(assert (=> bs!39688 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9761 lambda!9695))))

(assert (=> bs!39688 (not (= lambda!9761 lambda!9694))))

(assert (=> bs!39689 (not (= lambda!9761 lambda!9699))))

(assert (=> bs!39689 (= (= (h!991 lt!18734) (h!991 lt!18730)) (= lambda!9761 lambda!9698))))

(assert (=> bs!39689 (not (= lambda!9761 lambda!9697))))

(assert (=> bs!39690 (not (= lambda!9761 lambda!9726))))

(assert (=> bs!39690 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9761 lambda!9725))))

(assert (=> bs!39690 (not (= lambda!9761 lambda!9724))))

(assert (=> b!82071 true))

(declare-fun lambda!9762 () Int)

(assert (=> bs!39650 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9762 lambda!9750))))

(assert (=> bs!39650 (not (= lambda!9762 lambda!9749))))

(assert (=> bs!39650 (not (= lambda!9762 lambda!9748))))

(assert (=> bs!39651 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9762 lambda!9663))))

(assert (=> bs!39651 (not (= lambda!9762 lambda!9662))))

(assert (=> bs!39651 (not (= lambda!9762 lambda!9661))))

(assert (=> bs!39652 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9762 lambda!9711))))

(assert (=> bs!39652 (not (= lambda!9762 lambda!9710))))

(assert (=> bs!39652 (not (= lambda!9762 lambda!9709))))

(assert (=> bs!39653 (not (= lambda!9762 lambda!9627))))

(assert (=> bs!39654 (not (= lambda!9762 lambda!9647))))

(assert (=> bs!39655 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9762 lambda!9723))))

(assert (=> bs!39655 (not (= lambda!9762 lambda!9722))))

(assert (=> bs!39655 (not (= lambda!9762 lambda!9721))))

(assert (=> bs!39656 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9762 lambda!9735))))

(assert (=> bs!39656 (not (= lambda!9762 lambda!9734))))

(assert (=> bs!39656 (not (= lambda!9762 lambda!9733))))

(assert (=> bs!39657 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9762 lambda!9714))))

(assert (=> bs!39657 (not (= lambda!9762 lambda!9713))))

(assert (=> bs!39657 (not (= lambda!9762 lambda!9712))))

(assert (=> bs!39658 (not (= lambda!9762 lambda!9747))))

(assert (=> bs!39659 (= (= (h!991 lt!18734) (h!991 lt!18769)) (= lambda!9762 lambda!9753))))

(assert (=> bs!39659 (not (= lambda!9762 lambda!9752))))

(assert (=> bs!39659 (not (= lambda!9762 lambda!9751))))

(assert (=> bs!39660 (not (= lambda!9762 lambda!9741))))

(assert (=> bs!39661 (= (= (h!991 lt!18734) (h!991 lt!18751)) (= lambda!9762 lambda!9708))))

(assert (=> bs!39661 (not (= lambda!9762 lambda!9707))))

(assert (=> bs!39661 (not (= lambda!9762 lambda!9706))))

(assert (=> bs!39662 (not (= lambda!9762 lambda!9628))))

(assert (=> bs!39663 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9762 lambda!9678))))

(assert (=> bs!39663 (not (= lambda!9762 lambda!9677))))

(assert (=> bs!39663 (not (= lambda!9762 lambda!9676))))

(assert (=> bs!39664 (not (= lambda!9762 lambda!9740))))

(assert (=> bs!39665 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9762 lambda!9756))))

(assert (=> bs!39665 (not (= lambda!9762 lambda!9755))))

(assert (=> bs!39665 (not (= lambda!9762 lambda!9754))))

(assert (=> bs!39666 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9762 lambda!9639))))

(assert (=> bs!39666 (not (= lambda!9762 lambda!9638))))

(assert (=> bs!39666 (not (= lambda!9762 lambda!9637))))

(assert (=> bs!39667 (not (= lambda!9762 lambda!9746))))

(assert (=> bs!39668 (= (= (h!991 lt!18734) (h!991 lt!18728)) (= lambda!9762 lambda!9702))))

(assert (=> bs!39668 (not (= lambda!9762 lambda!9701))))

(assert (=> bs!39668 (not (= lambda!9762 lambda!9700))))

(assert (=> bs!39669 (= (= (h!991 lt!18734) (h!991 ls!96)) (= lambda!9762 lambda!9629))))

(assert (=> bs!39670 (not (= lambda!9762 lambda!9739))))

(assert (=> bs!39671 (= lambda!9762 lambda!9759)))

(assert (=> bs!39671 (not (= lambda!9762 lambda!9758))))

(assert (=> bs!39671 (not (= lambda!9762 lambda!9757))))

(assert (=> bs!39672 (= (= (h!991 lt!18734) (h!991 lt!18781)) (= lambda!9762 lambda!9720))))

(assert (=> bs!39672 (not (= lambda!9762 lambda!9719))))

(assert (=> bs!39672 (not (= lambda!9762 lambda!9718))))

(assert (=> bs!39673 (not (= lambda!9762 lambda!9685))))

(assert (=> bs!39674 (= (= (h!991 lt!18734) (h!991 lt!18736)) (= lambda!9762 lambda!9738))))

(assert (=> bs!39674 (not (= lambda!9762 lambda!9737))))

(assert (=> bs!39674 (not (= lambda!9762 lambda!9736))))

(assert (=> bs!39675 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9762 lambda!9729))))

(assert (=> bs!39675 (not (= lambda!9762 lambda!9728))))

(assert (=> bs!39675 (not (= lambda!9762 lambda!9727))))

(assert (=> bs!39676 (= (= (h!991 lt!18734) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9762 lambda!9732))))

(assert (=> bs!39676 (not (= lambda!9762 lambda!9731))))

(assert (=> bs!39676 (not (= lambda!9762 lambda!9730))))

(assert (=> bs!39677 (not (= lambda!9762 lambda!9646))))

(assert (=> bs!39678 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9762 lambda!9669))))

(assert (=> bs!39678 (not (= lambda!9762 lambda!9668))))

(assert (=> bs!39678 (not (= lambda!9762 lambda!9667))))

(assert (=> bs!39679 (not (= lambda!9762 lambda!9686))))

(assert (=> bs!39680 (not (= lambda!9762 lambda!9648))))

(assert (=> b!82071 (not (= lambda!9762 lambda!9761))))

(assert (=> b!82071 (not (= lambda!9762 lambda!9760))))

(assert (=> bs!39681 (not (= lambda!9762 lambda!9693))))

(assert (=> bs!39682 (= (= (h!991 lt!18734) (h!991 lt!18752)) (= lambda!9762 lambda!9705))))

(assert (=> bs!39682 (not (= lambda!9762 lambda!9704))))

(assert (=> bs!39682 (not (= lambda!9762 lambda!9703))))

(assert (=> bs!39683 (= (= (h!991 lt!18734) (h!991 more!5)) (= lambda!9762 lambda!9666))))

(assert (=> bs!39683 (not (= lambda!9762 lambda!9665))))

(assert (=> bs!39683 (not (= lambda!9762 lambda!9664))))

(assert (=> bs!39684 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9762 lambda!9690))))

(assert (=> bs!39684 (not (= lambda!9762 lambda!9689))))

(assert (=> bs!39684 (not (= lambda!9762 lambda!9688))))

(assert (=> bs!39685 (not (= lambda!9762 lambda!9687))))

(assert (=> bs!39686 (= (= (h!991 lt!18734) (h!991 lt!18782)) (= lambda!9762 lambda!9717))))

(assert (=> bs!39686 (not (= lambda!9762 lambda!9716))))

(assert (=> bs!39686 (not (= lambda!9762 lambda!9715))))

(assert (=> bs!39687 (not (= lambda!9762 lambda!9630))))

(assert (=> bs!39688 (= (= (h!991 lt!18734) (h!991 less!5)) (= lambda!9762 lambda!9696))))

(assert (=> bs!39688 (not (= lambda!9762 lambda!9695))))

(assert (=> bs!39688 (not (= lambda!9762 lambda!9694))))

(assert (=> bs!39689 (= (= (h!991 lt!18734) (h!991 lt!18730)) (= lambda!9762 lambda!9699))))

(assert (=> bs!39689 (not (= lambda!9762 lambda!9698))))

(assert (=> bs!39689 (not (= lambda!9762 lambda!9697))))

(assert (=> bs!39690 (= (= (h!991 lt!18734) (h!991 lt!18771)) (= lambda!9762 lambda!9726))))

(assert (=> bs!39690 (not (= lambda!9762 lambda!9725))))

(assert (=> bs!39690 (not (= lambda!9762 lambda!9724))))

(assert (=> b!82071 true))

(declare-fun b!82068 () Bool)

(declare-fun e!44521 () List!665)

(assert (=> b!82068 (= e!44521 Nil!624)))

(declare-fun d!56137 () Bool)

(declare-fun c!20659 () Bool)

(assert (=> d!56137 (= c!20659 (is-Nil!624 lt!18734))))

(assert (=> d!56137 (= (quickSort!0 lt!18734) e!44521)))

(declare-fun b!82070 () Bool)

(declare-fun e!44522 () List!665)

(assert (=> b!82070 (= e!44522 lt!18734)))

(declare-fun b!82069 () Bool)

(assert (=> b!82069 (= e!44521 e!44522)))

(declare-fun c!20660 () Bool)

(assert (=> b!82069 (= c!20660 (and (is-Cons!622 lt!18734) (is-Nil!624 (t!47838 lt!18734))))))

(assert (=> b!82071 (= e!44522 (++!73 (++!73 (quickSort!0 (filter!18 (t!47838 lt!18734) lambda!9760)) (Cons!622 (h!991 lt!18734) (filter!18 (t!47838 lt!18734) lambda!9761))) (quickSort!0 (filter!18 (t!47838 lt!18734) lambda!9762))))))

(assert (= (and b!82069 c!20660) b!82070))

(assert (= (and b!82069 (not c!20660)) b!82071))

(assert (= (and d!56137 c!20659) b!82068))

(assert (= (and d!56137 (not c!20659)) b!82069))

(declare-fun m!77556 () Bool)

(assert (=> b!82071 m!77556))

(declare-fun m!77558 () Bool)

(assert (=> b!82071 m!77558))

(assert (=> b!82071 m!77556))

(declare-fun m!77560 () Bool)

(assert (=> b!82071 m!77560))

(declare-fun m!77562 () Bool)

(assert (=> b!82071 m!77562))

(declare-fun m!77564 () Bool)

(assert (=> b!82071 m!77564))

(assert (=> b!82071 m!77560))

(assert (=> b!82071 m!77564))

(declare-fun m!77566 () Bool)

(assert (=> b!82071 m!77566))

(assert (=> b!82071 m!77562))

(assert (=> b!82071 m!77558))

(declare-fun m!77568 () Bool)

(assert (=> b!82071 m!77568))

(assert (=> b!81521 d!56137))

(declare-fun d!56139 () Bool)

(declare-fun lt!18905 () Bool)

(assert (=> d!56139 (= lt!18905 (member lt!18712 (content!124 l1!444)))))

(declare-fun e!44527 () Bool)

(assert (=> d!56139 (= lt!18905 e!44527)))

(declare-fun res!41975 () Bool)

(assert (=> d!56139 (=> (not res!41975) (not e!44527))))

(assert (=> d!56139 (= res!41975 (is-Cons!622 l1!444))))

(assert (=> d!56139 (= (contains!57 l1!444 lt!18712) lt!18905)))

(declare-fun b!82076 () Bool)

(declare-fun e!44528 () Bool)

(assert (=> b!82076 (= e!44527 e!44528)))

(declare-fun res!41974 () Bool)

(assert (=> b!82076 (=> res!41974 e!44528)))

(assert (=> b!82076 (= res!41974 (= (h!991 l1!444) lt!18712))))

(declare-fun b!82077 () Bool)

(assert (=> b!82077 (= e!44528 (contains!57 (t!47838 l1!444) lt!18712))))

(assert (= (and d!56139 res!41975) b!82076))

(assert (= (and b!82076 (not res!41974)) b!82077))

(declare-fun m!77570 () Bool)

(assert (=> d!56139 m!77570))

(declare-fun m!77572 () Bool)

(assert (=> d!56139 m!77572))

(declare-fun m!77574 () Bool)

(assert (=> b!82077 m!77574))

(assert (=> d!55863 d!56139))

(assert (=> d!55863 d!55871))

(declare-fun d!56141 () Bool)

(declare-fun c!20661 () Bool)

(assert (=> d!56141 (= c!20661 (is-Nil!624 lt!18760))))

(declare-fun e!44529 () (Set Int))

(assert (=> d!56141 (= (content!124 lt!18760) e!44529)))

(declare-fun b!82078 () Bool)

(assert (=> b!82078 (= e!44529 (as emptyset (Set Int)))))

(declare-fun b!82079 () Bool)

(assert (=> b!82079 (= e!44529 (union (insert (h!991 lt!18760) (as emptyset (Set Int))) (content!124 (t!47838 lt!18760))))))

(assert (= (and d!56141 c!20661) b!82078))

(assert (= (and d!56141 (not c!20661)) b!82079))

(declare-fun m!77576 () Bool)

(assert (=> b!82079 m!77576))

(declare-fun m!77578 () Bool)

(assert (=> b!82079 m!77578))

(assert (=> b!81579 d!56141))

(assert (=> b!81579 d!56049))

(assert (=> b!81517 d!55931))

(declare-fun b!82080 () Bool)

(declare-fun e!44531 () List!665)

(declare-fun lt!18906 () List!665)

(assert (=> b!82080 (= e!44531 (Cons!622 (h!991 (t!47838 less!5)) lt!18906))))

(declare-fun b!82081 () Bool)

(declare-fun e!44533 () Bool)

(assert (=> b!82081 (= e!44533 (dynLambda!984 lambda!9663 (h!991 (t!47838 less!5))))))

(declare-fun b!82082 () Bool)

(assert (=> b!82082 (= e!44531 lt!18906)))

(declare-fun d!56143 () Bool)

(declare-fun e!44530 () Bool)

(assert (=> d!56143 e!44530))

(declare-fun res!41978 () Bool)

(assert (=> d!56143 (=> (not res!41978) (not e!44530))))

(declare-fun lt!18907 () List!665)

(assert (=> d!56143 (= res!41978 (<= (size!653 lt!18907) (size!653 (t!47838 less!5))))))

(declare-fun e!44532 () List!665)

(assert (=> d!56143 (= lt!18907 e!44532)))

(declare-fun c!20663 () Bool)

(assert (=> d!56143 (= c!20663 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!56143 (= (filter!18 (t!47838 less!5) lambda!9663) lt!18907)))

(declare-fun b!82083 () Bool)

(declare-fun res!41976 () Bool)

(assert (=> b!82083 (=> (not res!41976) (not e!44530))))

(assert (=> b!82083 (= res!41976 (subset (content!124 lt!18907) (content!124 (t!47838 less!5))))))

(declare-fun b!82084 () Bool)

(assert (=> b!82084 (= e!44532 Nil!624)))

(declare-fun b!82085 () Bool)

(assert (=> b!82085 (= e!44530 (forall!20 lt!18907 lambda!9663))))

(declare-fun b!82086 () Bool)

(assert (=> b!82086 (= e!44532 e!44531)))

(declare-fun c!20662 () Bool)

(assert (=> b!82086 (= c!20662 e!44533)))

(declare-fun res!41977 () Bool)

(assert (=> b!82086 (=> (not res!41977) (not e!44533))))

(assert (=> b!82086 (= res!41977 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!82086 (= lt!18906 (filter!18 (t!47838 (t!47838 less!5)) lambda!9663))))

(assert (= (and b!82086 res!41977) b!82081))

(assert (= (and b!82086 c!20662) b!82080))

(assert (= (and b!82086 (not c!20662)) b!82082))

(assert (= (and d!56143 c!20663) b!82084))

(assert (= (and d!56143 (not c!20663)) b!82086))

(assert (= (and d!56143 res!41978) b!82083))

(assert (= (and b!82083 res!41976) b!82085))

(declare-fun b_lambda!16181 () Bool)

(assert (=> (not b_lambda!16181) (not b!82081)))

(declare-fun m!77580 () Bool)

(assert (=> b!82085 m!77580))

(declare-fun m!77582 () Bool)

(assert (=> b!82083 m!77582))

(assert (=> b!82083 m!76790))

(declare-fun m!77584 () Bool)

(assert (=> b!82081 m!77584))

(declare-fun m!77586 () Bool)

(assert (=> d!56143 m!77586))

(assert (=> d!56143 m!76796))

(declare-fun m!77588 () Bool)

(assert (=> b!82086 m!77588))

(assert (=> b!81517 d!56143))

(declare-fun b!82087 () Bool)

(declare-fun e!44535 () List!665)

(declare-fun lt!18908 () List!665)

(assert (=> b!82087 (= e!44535 (Cons!622 (h!991 (t!47838 less!5)) lt!18908))))

(declare-fun b!82088 () Bool)

(declare-fun e!44537 () Bool)

(assert (=> b!82088 (= e!44537 (dynLambda!984 lambda!9661 (h!991 (t!47838 less!5))))))

(declare-fun b!82089 () Bool)

(assert (=> b!82089 (= e!44535 lt!18908)))

(declare-fun d!56145 () Bool)

(declare-fun e!44534 () Bool)

(assert (=> d!56145 e!44534))

(declare-fun res!41981 () Bool)

(assert (=> d!56145 (=> (not res!41981) (not e!44534))))

(declare-fun lt!18909 () List!665)

(assert (=> d!56145 (= res!41981 (<= (size!653 lt!18909) (size!653 (t!47838 less!5))))))

(declare-fun e!44536 () List!665)

(assert (=> d!56145 (= lt!18909 e!44536)))

(declare-fun c!20665 () Bool)

(assert (=> d!56145 (= c!20665 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!56145 (= (filter!18 (t!47838 less!5) lambda!9661) lt!18909)))

(declare-fun b!82090 () Bool)

(declare-fun res!41979 () Bool)

(assert (=> b!82090 (=> (not res!41979) (not e!44534))))

(assert (=> b!82090 (= res!41979 (subset (content!124 lt!18909) (content!124 (t!47838 less!5))))))

(declare-fun b!82091 () Bool)

(assert (=> b!82091 (= e!44536 Nil!624)))

(declare-fun b!82092 () Bool)

(assert (=> b!82092 (= e!44534 (forall!20 lt!18909 lambda!9661))))

(declare-fun b!82093 () Bool)

(assert (=> b!82093 (= e!44536 e!44535)))

(declare-fun c!20664 () Bool)

(assert (=> b!82093 (= c!20664 e!44537)))

(declare-fun res!41980 () Bool)

(assert (=> b!82093 (=> (not res!41980) (not e!44537))))

(assert (=> b!82093 (= res!41980 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!82093 (= lt!18908 (filter!18 (t!47838 (t!47838 less!5)) lambda!9661))))

(assert (= (and b!82093 res!41980) b!82088))

(assert (= (and b!82093 c!20664) b!82087))

(assert (= (and b!82093 (not c!20664)) b!82089))

(assert (= (and d!56145 c!20665) b!82091))

(assert (= (and d!56145 (not c!20665)) b!82093))

(assert (= (and d!56145 res!41981) b!82090))

(assert (= (and b!82090 res!41979) b!82092))

(declare-fun b_lambda!16183 () Bool)

(assert (=> (not b_lambda!16183) (not b!82088)))

(declare-fun m!77590 () Bool)

(assert (=> b!82092 m!77590))

(declare-fun m!77592 () Bool)

(assert (=> b!82090 m!77592))

(assert (=> b!82090 m!76790))

(declare-fun m!77594 () Bool)

(assert (=> b!82088 m!77594))

(declare-fun m!77596 () Bool)

(assert (=> d!56145 m!77596))

(assert (=> d!56145 m!76796))

(declare-fun m!77598 () Bool)

(assert (=> b!82093 m!77598))

(assert (=> b!81517 d!56145))

(declare-fun bs!39691 () Bool)

(declare-fun b!82096 () Bool)

(assert (= bs!39691 (and b!82096 b!81949)))

(declare-fun lambda!9763 () Int)

(assert (=> bs!39691 (not (= lambda!9763 lambda!9750))))

(assert (=> bs!39691 (not (= lambda!9763 lambda!9749))))

(assert (=> bs!39691 (= (= (h!991 lt!18730) (h!991 lt!18769)) (= lambda!9763 lambda!9748))))

(declare-fun bs!39692 () Bool)

(assert (= bs!39692 (and b!82096 b!81517)))

(assert (=> bs!39692 (not (= lambda!9763 lambda!9663))))

(assert (=> bs!39692 (not (= lambda!9763 lambda!9662))))

(assert (=> bs!39692 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9763 lambda!9661))))

(declare-fun bs!39693 () Bool)

(assert (= bs!39693 (and b!82096 b!81734)))

(assert (=> bs!39693 (not (= lambda!9763 lambda!9711))))

(assert (=> bs!39693 (not (= lambda!9763 lambda!9710))))

(assert (=> bs!39693 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9763 lambda!9709))))

(declare-fun bs!39694 () Bool)

(assert (= bs!39694 (and b!82096 b!81462)))

(assert (=> bs!39694 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9763 lambda!9627))))

(declare-fun bs!39695 () Bool)

(assert (= bs!39695 (and b!82096 b!81495)))

(assert (=> bs!39695 (not (= lambda!9763 lambda!9647))))

(declare-fun bs!39696 () Bool)

(assert (= bs!39696 (and b!82096 b!81804)))

(assert (=> bs!39696 (not (= lambda!9763 lambda!9723))))

(assert (=> bs!39696 (not (= lambda!9763 lambda!9722))))

(assert (=> bs!39696 (= (= (h!991 lt!18730) (h!991 lt!18771)) (= lambda!9763 lambda!9721))))

(declare-fun bs!39697 () Bool)

(assert (= bs!39697 (and b!82096 b!81885)))

(assert (=> bs!39697 (not (= lambda!9763 lambda!9735))))

(assert (=> bs!39697 (not (= lambda!9763 lambda!9734))))

(assert (=> bs!39697 (= (= (h!991 lt!18730) (h!991 lt!18736)) (= lambda!9763 lambda!9733))))

(declare-fun bs!39698 () Bool)

(assert (= bs!39698 (and b!82096 b!81742)))

(assert (=> bs!39698 (not (= lambda!9763 lambda!9714))))

(assert (=> bs!39698 (not (= lambda!9763 lambda!9713))))

(assert (=> bs!39698 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9763 lambda!9712))))

(declare-fun bs!39699 () Bool)

(assert (= bs!39699 (and b!82096 b!81922)))

(assert (=> bs!39699 (not (= lambda!9763 lambda!9747))))

(declare-fun bs!39700 () Bool)

(assert (= bs!39700 (and b!82096 b!81972)))

(assert (=> bs!39700 (not (= lambda!9763 lambda!9753))))

(assert (=> bs!39700 (not (= lambda!9763 lambda!9752))))

(assert (=> bs!39700 (= (= (h!991 lt!18730) (h!991 lt!18769)) (= lambda!9763 lambda!9751))))

(declare-fun bs!39701 () Bool)

(assert (= bs!39701 (and b!82096 b!81907)))

(assert (=> bs!39701 (not (= lambda!9763 lambda!9741))))

(declare-fun bs!39702 () Bool)

(assert (= bs!39702 (and b!82096 b!81709)))

(assert (=> bs!39702 (not (= lambda!9763 lambda!9708))))

(assert (=> bs!39702 (not (= lambda!9763 lambda!9707))))

(assert (=> bs!39702 (= (= (h!991 lt!18730) (h!991 lt!18751)) (= lambda!9763 lambda!9706))))

(declare-fun bs!39703 () Bool)

(assert (= bs!39703 (and b!82096 b!81460)))

(assert (=> bs!39703 (not (= lambda!9763 lambda!9628))))

(declare-fun bs!39704 () Bool)

(assert (= bs!39704 (and b!82096 b!81560)))

(assert (=> bs!39704 (not (= lambda!9763 lambda!9678))))

(assert (=> bs!39704 (not (= lambda!9763 lambda!9677))))

(assert (=> bs!39704 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9763 lambda!9676))))

(declare-fun bs!39705 () Bool)

(assert (= bs!39705 (and b!82096 b!81906)))

(assert (=> bs!39705 (not (= lambda!9763 lambda!9740))))

(declare-fun bs!39706 () Bool)

(assert (= bs!39706 (and b!82096 b!82039)))

(assert (=> bs!39706 (not (= lambda!9763 lambda!9756))))

(assert (=> bs!39706 (not (= lambda!9763 lambda!9755))))

(assert (=> bs!39706 (= (= (h!991 lt!18730) (h!991 lt!18728)) (= lambda!9763 lambda!9754))))

(declare-fun bs!39707 () Bool)

(assert (= bs!39707 (and b!82096 b!81490)))

(assert (=> bs!39707 (not (= lambda!9763 lambda!9639))))

(assert (=> bs!39707 (not (= lambda!9763 lambda!9638))))

(assert (=> bs!39707 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9763 lambda!9637))))

(declare-fun bs!39708 () Bool)

(assert (= bs!39708 (and b!82096 b!81921)))

(assert (=> bs!39708 (not (= lambda!9763 lambda!9746))))

(declare-fun bs!39709 () Bool)

(assert (= bs!39709 (and b!82096 b!81691)))

(assert (=> bs!39709 (not (= lambda!9763 lambda!9702))))

(assert (=> bs!39709 (not (= lambda!9763 lambda!9701))))

(assert (=> bs!39709 (= (= (h!991 lt!18730) (h!991 lt!18728)) (= lambda!9763 lambda!9700))))

(declare-fun bs!39710 () Bool)

(assert (= bs!39710 (and b!82096 b!81466)))

(assert (=> bs!39710 (not (= lambda!9763 lambda!9629))))

(declare-fun bs!39711 () Bool)

(assert (= bs!39711 (and b!82096 d!56039)))

(assert (=> bs!39711 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9763 lambda!9739))))

(declare-fun bs!39712 () Bool)

(assert (= bs!39712 (and b!82096 b!82058)))

(assert (=> bs!39712 (not (= lambda!9763 lambda!9759))))

(assert (=> bs!39712 (not (= lambda!9763 lambda!9758))))

(assert (=> bs!39712 (= (= (h!991 lt!18730) (h!991 lt!18734)) (= lambda!9763 lambda!9757))))

(declare-fun bs!39713 () Bool)

(assert (= bs!39713 (and b!82096 b!81780)))

(assert (=> bs!39713 (not (= lambda!9763 lambda!9720))))

(assert (=> bs!39713 (not (= lambda!9763 lambda!9719))))

(assert (=> bs!39713 (= (= (h!991 lt!18730) (h!991 lt!18781)) (= lambda!9763 lambda!9718))))

(declare-fun bs!39714 () Bool)

(assert (= bs!39714 (and b!82096 d!55883)))

(assert (=> bs!39714 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9763 lambda!9685))))

(declare-fun bs!39715 () Bool)

(assert (= bs!39715 (and b!82096 b!81901)))

(assert (=> bs!39715 (not (= lambda!9763 lambda!9738))))

(assert (=> bs!39715 (not (= lambda!9763 lambda!9737))))

(assert (=> bs!39715 (= (= (h!991 lt!18730) (h!991 lt!18736)) (= lambda!9763 lambda!9736))))

(declare-fun bs!39716 () Bool)

(assert (= bs!39716 (and b!82096 b!81837)))

(assert (=> bs!39716 (not (= lambda!9763 lambda!9729))))

(assert (=> bs!39716 (not (= lambda!9763 lambda!9728))))

(assert (=> bs!39716 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9763 lambda!9727))))

(declare-fun bs!39717 () Bool)

(assert (= bs!39717 (and b!82096 b!81852)))

(assert (=> bs!39717 (not (= lambda!9763 lambda!9732))))

(assert (=> bs!39717 (not (= lambda!9763 lambda!9731))))

(assert (=> bs!39717 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9763 lambda!9730))))

(declare-fun bs!39718 () Bool)

(assert (= bs!39718 (and b!82096 d!55861)))

(assert (=> bs!39718 (not (= lambda!9763 lambda!9646))))

(declare-fun bs!39719 () Bool)

(assert (= bs!39719 (and b!82096 b!81537)))

(assert (=> bs!39719 (not (= lambda!9763 lambda!9669))))

(assert (=> bs!39719 (not (= lambda!9763 lambda!9668))))

(assert (=> bs!39719 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9763 lambda!9667))))

(declare-fun bs!39720 () Bool)

(assert (= bs!39720 (and b!82096 b!81587)))

(assert (=> bs!39720 (not (= lambda!9763 lambda!9686))))

(declare-fun bs!39721 () Bool)

(assert (= bs!39721 (and b!82096 b!81496)))

(assert (=> bs!39721 (not (= lambda!9763 lambda!9648))))

(declare-fun bs!39722 () Bool)

(assert (= bs!39722 (and b!82096 b!82071)))

(assert (=> bs!39722 (not (= lambda!9763 lambda!9762))))

(assert (=> bs!39722 (not (= lambda!9763 lambda!9761))))

(assert (=> bs!39722 (= (= (h!991 lt!18730) (h!991 lt!18734)) (= lambda!9763 lambda!9760))))

(declare-fun bs!39723 () Bool)

(assert (= bs!39723 (and b!82096 d!55889)))

(assert (=> bs!39723 (not (= lambda!9763 lambda!9693))))

(declare-fun bs!39724 () Bool)

(assert (= bs!39724 (and b!82096 b!81705)))

(assert (=> bs!39724 (not (= lambda!9763 lambda!9705))))

(assert (=> bs!39724 (not (= lambda!9763 lambda!9704))))

(assert (=> bs!39724 (= (= (h!991 lt!18730) (h!991 lt!18752)) (= lambda!9763 lambda!9703))))

(declare-fun bs!39725 () Bool)

(assert (= bs!39725 (and b!82096 b!81522)))

(assert (=> bs!39725 (not (= lambda!9763 lambda!9666))))

(assert (=> bs!39725 (not (= lambda!9763 lambda!9665))))

(assert (=> bs!39725 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9763 lambda!9664))))

(declare-fun bs!39726 () Bool)

(assert (= bs!39726 (and b!82096 b!81598)))

(assert (=> bs!39726 (not (= lambda!9763 lambda!9690))))

(assert (=> bs!39726 (not (= lambda!9763 lambda!9689))))

(assert (=> bs!39726 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9763 lambda!9688))))

(declare-fun bs!39727 () Bool)

(assert (= bs!39727 (and b!82096 b!81588)))

(assert (=> bs!39727 (not (= lambda!9763 lambda!9687))))

(declare-fun bs!39728 () Bool)

(assert (= bs!39728 (and b!82096 b!81776)))

(assert (=> bs!39728 (not (= lambda!9763 lambda!9717))))

(assert (=> bs!39728 (not (= lambda!9763 lambda!9716))))

(assert (=> bs!39728 (= (= (h!991 lt!18730) (h!991 lt!18782)) (= lambda!9763 lambda!9715))))

(declare-fun bs!39729 () Bool)

(assert (= bs!39729 (and b!82096 b!81468)))

(assert (=> bs!39729 (not (= lambda!9763 lambda!9630))))

(declare-fun bs!39730 () Bool)

(assert (= bs!39730 (and b!82096 b!81633)))

(assert (=> bs!39730 (not (= lambda!9763 lambda!9696))))

(assert (=> bs!39730 (not (= lambda!9763 lambda!9695))))

(assert (=> bs!39730 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9763 lambda!9694))))

(declare-fun bs!39731 () Bool)

(assert (= bs!39731 (and b!82096 b!81687)))

(assert (=> bs!39731 (not (= lambda!9763 lambda!9699))))

(assert (=> bs!39731 (not (= lambda!9763 lambda!9698))))

(assert (=> bs!39731 (= lambda!9763 lambda!9697)))

(declare-fun bs!39732 () Bool)

(assert (= bs!39732 (and b!82096 b!81810)))

(assert (=> bs!39732 (not (= lambda!9763 lambda!9726))))

(assert (=> bs!39732 (not (= lambda!9763 lambda!9725))))

(assert (=> bs!39732 (= (= (h!991 lt!18730) (h!991 lt!18771)) (= lambda!9763 lambda!9724))))

(assert (=> b!82096 true))

(declare-fun lambda!9764 () Int)

(assert (=> bs!39691 (not (= lambda!9764 lambda!9750))))

(assert (=> bs!39691 (= (= (h!991 lt!18730) (h!991 lt!18769)) (= lambda!9764 lambda!9749))))

(assert (=> bs!39691 (not (= lambda!9764 lambda!9748))))

(assert (=> bs!39692 (not (= lambda!9764 lambda!9663))))

(assert (=> bs!39692 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9764 lambda!9662))))

(assert (=> bs!39692 (not (= lambda!9764 lambda!9661))))

(assert (=> bs!39693 (not (= lambda!9764 lambda!9711))))

(assert (=> bs!39693 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9764 lambda!9710))))

(assert (=> bs!39693 (not (= lambda!9764 lambda!9709))))

(assert (=> bs!39694 (not (= lambda!9764 lambda!9627))))

(assert (=> bs!39695 (not (= lambda!9764 lambda!9647))))

(assert (=> bs!39696 (not (= lambda!9764 lambda!9723))))

(assert (=> bs!39696 (= (= (h!991 lt!18730) (h!991 lt!18771)) (= lambda!9764 lambda!9722))))

(assert (=> bs!39696 (not (= lambda!9764 lambda!9721))))

(assert (=> bs!39697 (not (= lambda!9764 lambda!9735))))

(assert (=> bs!39697 (= (= (h!991 lt!18730) (h!991 lt!18736)) (= lambda!9764 lambda!9734))))

(assert (=> bs!39697 (not (= lambda!9764 lambda!9733))))

(assert (=> bs!39698 (not (= lambda!9764 lambda!9714))))

(assert (=> bs!39698 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9764 lambda!9713))))

(assert (=> bs!39698 (not (= lambda!9764 lambda!9712))))

(assert (=> bs!39699 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9764 lambda!9747))))

(assert (=> bs!39700 (not (= lambda!9764 lambda!9753))))

(assert (=> bs!39700 (= (= (h!991 lt!18730) (h!991 lt!18769)) (= lambda!9764 lambda!9752))))

(assert (=> bs!39700 (not (= lambda!9764 lambda!9751))))

(assert (=> bs!39701 (not (= lambda!9764 lambda!9741))))

(assert (=> bs!39702 (not (= lambda!9764 lambda!9708))))

(assert (=> bs!39702 (= (= (h!991 lt!18730) (h!991 lt!18751)) (= lambda!9764 lambda!9707))))

(assert (=> bs!39702 (not (= lambda!9764 lambda!9706))))

(assert (=> bs!39703 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9764 lambda!9628))))

(assert (=> bs!39704 (not (= lambda!9764 lambda!9678))))

(assert (=> bs!39704 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9764 lambda!9677))))

(assert (=> bs!39704 (not (= lambda!9764 lambda!9676))))

(assert (=> bs!39705 (not (= lambda!9764 lambda!9740))))

(assert (=> bs!39706 (not (= lambda!9764 lambda!9756))))

(assert (=> bs!39706 (= (= (h!991 lt!18730) (h!991 lt!18728)) (= lambda!9764 lambda!9755))))

(assert (=> bs!39706 (not (= lambda!9764 lambda!9754))))

(assert (=> bs!39707 (not (= lambda!9764 lambda!9639))))

(assert (=> bs!39707 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9764 lambda!9638))))

(assert (=> bs!39707 (not (= lambda!9764 lambda!9637))))

(assert (=> b!82096 (not (= lambda!9764 lambda!9763))))

(assert (=> bs!39708 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9764 lambda!9746))))

(assert (=> bs!39709 (not (= lambda!9764 lambda!9702))))

(assert (=> bs!39709 (= (= (h!991 lt!18730) (h!991 lt!18728)) (= lambda!9764 lambda!9701))))

(assert (=> bs!39709 (not (= lambda!9764 lambda!9700))))

(assert (=> bs!39710 (not (= lambda!9764 lambda!9629))))

(assert (=> bs!39711 (not (= lambda!9764 lambda!9739))))

(assert (=> bs!39712 (not (= lambda!9764 lambda!9759))))

(assert (=> bs!39712 (= (= (h!991 lt!18730) (h!991 lt!18734)) (= lambda!9764 lambda!9758))))

(assert (=> bs!39712 (not (= lambda!9764 lambda!9757))))

(assert (=> bs!39713 (not (= lambda!9764 lambda!9720))))

(assert (=> bs!39713 (= (= (h!991 lt!18730) (h!991 lt!18781)) (= lambda!9764 lambda!9719))))

(assert (=> bs!39713 (not (= lambda!9764 lambda!9718))))

(assert (=> bs!39714 (not (= lambda!9764 lambda!9685))))

(assert (=> bs!39715 (not (= lambda!9764 lambda!9738))))

(assert (=> bs!39715 (= (= (h!991 lt!18730) (h!991 lt!18736)) (= lambda!9764 lambda!9737))))

(assert (=> bs!39715 (not (= lambda!9764 lambda!9736))))

(assert (=> bs!39716 (not (= lambda!9764 lambda!9729))))

(assert (=> bs!39716 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9764 lambda!9728))))

(assert (=> bs!39716 (not (= lambda!9764 lambda!9727))))

(assert (=> bs!39717 (not (= lambda!9764 lambda!9732))))

(assert (=> bs!39717 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9764 lambda!9731))))

(assert (=> bs!39717 (not (= lambda!9764 lambda!9730))))

(assert (=> bs!39718 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9764 lambda!9646))))

(assert (=> bs!39719 (not (= lambda!9764 lambda!9669))))

(assert (=> bs!39719 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9764 lambda!9668))))

(assert (=> bs!39719 (not (= lambda!9764 lambda!9667))))

(assert (=> bs!39720 (not (= lambda!9764 lambda!9686))))

(assert (=> bs!39721 (not (= lambda!9764 lambda!9648))))

(assert (=> bs!39722 (not (= lambda!9764 lambda!9762))))

(assert (=> bs!39722 (= (= (h!991 lt!18730) (h!991 lt!18734)) (= lambda!9764 lambda!9761))))

(assert (=> bs!39722 (not (= lambda!9764 lambda!9760))))

(assert (=> bs!39723 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9764 lambda!9693))))

(assert (=> bs!39724 (not (= lambda!9764 lambda!9705))))

(assert (=> bs!39724 (= (= (h!991 lt!18730) (h!991 lt!18752)) (= lambda!9764 lambda!9704))))

(assert (=> bs!39724 (not (= lambda!9764 lambda!9703))))

(assert (=> bs!39725 (not (= lambda!9764 lambda!9666))))

(assert (=> bs!39725 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9764 lambda!9665))))

(assert (=> bs!39725 (not (= lambda!9764 lambda!9664))))

(assert (=> bs!39726 (not (= lambda!9764 lambda!9690))))

(assert (=> bs!39726 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9764 lambda!9689))))

(assert (=> bs!39726 (not (= lambda!9764 lambda!9688))))

(assert (=> bs!39727 (not (= lambda!9764 lambda!9687))))

(assert (=> bs!39728 (not (= lambda!9764 lambda!9717))))

(assert (=> bs!39728 (= (= (h!991 lt!18730) (h!991 lt!18782)) (= lambda!9764 lambda!9716))))

(assert (=> bs!39728 (not (= lambda!9764 lambda!9715))))

(assert (=> bs!39729 (not (= lambda!9764 lambda!9630))))

(assert (=> bs!39730 (not (= lambda!9764 lambda!9696))))

(assert (=> bs!39730 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9764 lambda!9695))))

(assert (=> bs!39730 (not (= lambda!9764 lambda!9694))))

(assert (=> bs!39731 (not (= lambda!9764 lambda!9699))))

(assert (=> bs!39731 (= lambda!9764 lambda!9698)))

(assert (=> bs!39731 (not (= lambda!9764 lambda!9697))))

(assert (=> bs!39732 (not (= lambda!9764 lambda!9726))))

(assert (=> bs!39732 (= (= (h!991 lt!18730) (h!991 lt!18771)) (= lambda!9764 lambda!9725))))

(assert (=> bs!39732 (not (= lambda!9764 lambda!9724))))

(assert (=> b!82096 true))

(declare-fun lambda!9765 () Int)

(assert (=> bs!39691 (= (= (h!991 lt!18730) (h!991 lt!18769)) (= lambda!9765 lambda!9750))))

(assert (=> bs!39691 (not (= lambda!9765 lambda!9749))))

(assert (=> bs!39691 (not (= lambda!9765 lambda!9748))))

(assert (=> bs!39692 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9765 lambda!9663))))

(assert (=> bs!39692 (not (= lambda!9765 lambda!9662))))

(assert (=> bs!39692 (not (= lambda!9765 lambda!9661))))

(assert (=> bs!39693 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9765 lambda!9711))))

(assert (=> bs!39693 (not (= lambda!9765 lambda!9710))))

(assert (=> bs!39693 (not (= lambda!9765 lambda!9709))))

(assert (=> bs!39694 (not (= lambda!9765 lambda!9627))))

(assert (=> bs!39695 (not (= lambda!9765 lambda!9647))))

(assert (=> bs!39696 (= (= (h!991 lt!18730) (h!991 lt!18771)) (= lambda!9765 lambda!9723))))

(assert (=> bs!39696 (not (= lambda!9765 lambda!9722))))

(assert (=> bs!39696 (not (= lambda!9765 lambda!9721))))

(assert (=> bs!39697 (= (= (h!991 lt!18730) (h!991 lt!18736)) (= lambda!9765 lambda!9735))))

(assert (=> bs!39697 (not (= lambda!9765 lambda!9734))))

(assert (=> bs!39697 (not (= lambda!9765 lambda!9733))))

(assert (=> bs!39698 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9765 lambda!9714))))

(assert (=> bs!39698 (not (= lambda!9765 lambda!9713))))

(assert (=> bs!39698 (not (= lambda!9765 lambda!9712))))

(assert (=> bs!39699 (not (= lambda!9765 lambda!9747))))

(assert (=> bs!39700 (= (= (h!991 lt!18730) (h!991 lt!18769)) (= lambda!9765 lambda!9753))))

(assert (=> bs!39700 (not (= lambda!9765 lambda!9752))))

(assert (=> bs!39700 (not (= lambda!9765 lambda!9751))))

(assert (=> bs!39701 (not (= lambda!9765 lambda!9741))))

(assert (=> bs!39702 (= (= (h!991 lt!18730) (h!991 lt!18751)) (= lambda!9765 lambda!9708))))

(assert (=> bs!39702 (not (= lambda!9765 lambda!9707))))

(assert (=> bs!39702 (not (= lambda!9765 lambda!9706))))

(assert (=> bs!39703 (not (= lambda!9765 lambda!9628))))

(assert (=> bs!39704 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9765 lambda!9678))))

(assert (=> bs!39704 (not (= lambda!9765 lambda!9677))))

(assert (=> bs!39704 (not (= lambda!9765 lambda!9676))))

(assert (=> bs!39705 (not (= lambda!9765 lambda!9740))))

(assert (=> bs!39706 (= (= (h!991 lt!18730) (h!991 lt!18728)) (= lambda!9765 lambda!9756))))

(assert (=> bs!39706 (not (= lambda!9765 lambda!9755))))

(assert (=> bs!39706 (not (= lambda!9765 lambda!9754))))

(assert (=> bs!39707 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9765 lambda!9639))))

(assert (=> bs!39707 (not (= lambda!9765 lambda!9638))))

(assert (=> bs!39707 (not (= lambda!9765 lambda!9637))))

(assert (=> b!82096 (not (= lambda!9765 lambda!9764))))

(assert (=> b!82096 (not (= lambda!9765 lambda!9763))))

(assert (=> bs!39708 (not (= lambda!9765 lambda!9746))))

(assert (=> bs!39709 (= (= (h!991 lt!18730) (h!991 lt!18728)) (= lambda!9765 lambda!9702))))

(assert (=> bs!39709 (not (= lambda!9765 lambda!9701))))

(assert (=> bs!39709 (not (= lambda!9765 lambda!9700))))

(assert (=> bs!39710 (= (= (h!991 lt!18730) (h!991 ls!96)) (= lambda!9765 lambda!9629))))

(assert (=> bs!39711 (not (= lambda!9765 lambda!9739))))

(assert (=> bs!39712 (= (= (h!991 lt!18730) (h!991 lt!18734)) (= lambda!9765 lambda!9759))))

(assert (=> bs!39712 (not (= lambda!9765 lambda!9758))))

(assert (=> bs!39712 (not (= lambda!9765 lambda!9757))))

(assert (=> bs!39713 (= (= (h!991 lt!18730) (h!991 lt!18781)) (= lambda!9765 lambda!9720))))

(assert (=> bs!39713 (not (= lambda!9765 lambda!9719))))

(assert (=> bs!39713 (not (= lambda!9765 lambda!9718))))

(assert (=> bs!39714 (not (= lambda!9765 lambda!9685))))

(assert (=> bs!39715 (= (= (h!991 lt!18730) (h!991 lt!18736)) (= lambda!9765 lambda!9738))))

(assert (=> bs!39715 (not (= lambda!9765 lambda!9737))))

(assert (=> bs!39715 (not (= lambda!9765 lambda!9736))))

(assert (=> bs!39716 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9765 lambda!9729))))

(assert (=> bs!39716 (not (= lambda!9765 lambda!9728))))

(assert (=> bs!39716 (not (= lambda!9765 lambda!9727))))

(assert (=> bs!39717 (= (= (h!991 lt!18730) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9765 lambda!9732))))

(assert (=> bs!39717 (not (= lambda!9765 lambda!9731))))

(assert (=> bs!39717 (not (= lambda!9765 lambda!9730))))

(assert (=> bs!39718 (not (= lambda!9765 lambda!9646))))

(assert (=> bs!39719 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9765 lambda!9669))))

(assert (=> bs!39719 (not (= lambda!9765 lambda!9668))))

(assert (=> bs!39719 (not (= lambda!9765 lambda!9667))))

(assert (=> bs!39720 (not (= lambda!9765 lambda!9686))))

(assert (=> bs!39721 (not (= lambda!9765 lambda!9648))))

(assert (=> bs!39722 (= (= (h!991 lt!18730) (h!991 lt!18734)) (= lambda!9765 lambda!9762))))

(assert (=> bs!39722 (not (= lambda!9765 lambda!9761))))

(assert (=> bs!39722 (not (= lambda!9765 lambda!9760))))

(assert (=> bs!39723 (not (= lambda!9765 lambda!9693))))

(assert (=> bs!39724 (= (= (h!991 lt!18730) (h!991 lt!18752)) (= lambda!9765 lambda!9705))))

(assert (=> bs!39724 (not (= lambda!9765 lambda!9704))))

(assert (=> bs!39724 (not (= lambda!9765 lambda!9703))))

(assert (=> bs!39725 (= (= (h!991 lt!18730) (h!991 more!5)) (= lambda!9765 lambda!9666))))

(assert (=> bs!39725 (not (= lambda!9765 lambda!9665))))

(assert (=> bs!39725 (not (= lambda!9765 lambda!9664))))

(assert (=> bs!39726 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9765 lambda!9690))))

(assert (=> bs!39726 (not (= lambda!9765 lambda!9689))))

(assert (=> bs!39726 (not (= lambda!9765 lambda!9688))))

(assert (=> bs!39727 (not (= lambda!9765 lambda!9687))))

(assert (=> bs!39728 (= (= (h!991 lt!18730) (h!991 lt!18782)) (= lambda!9765 lambda!9717))))

(assert (=> bs!39728 (not (= lambda!9765 lambda!9716))))

(assert (=> bs!39728 (not (= lambda!9765 lambda!9715))))

(assert (=> bs!39729 (not (= lambda!9765 lambda!9630))))

(assert (=> bs!39730 (= (= (h!991 lt!18730) (h!991 less!5)) (= lambda!9765 lambda!9696))))

(assert (=> bs!39730 (not (= lambda!9765 lambda!9695))))

(assert (=> bs!39730 (not (= lambda!9765 lambda!9694))))

(assert (=> bs!39731 (= lambda!9765 lambda!9699)))

(assert (=> bs!39731 (not (= lambda!9765 lambda!9698))))

(assert (=> bs!39731 (not (= lambda!9765 lambda!9697))))

(assert (=> bs!39732 (= (= (h!991 lt!18730) (h!991 lt!18771)) (= lambda!9765 lambda!9726))))

(assert (=> bs!39732 (not (= lambda!9765 lambda!9725))))

(assert (=> bs!39732 (not (= lambda!9765 lambda!9724))))

(assert (=> b!82096 true))

(declare-fun b!82094 () Bool)

(declare-fun e!44542 () Bool)

(assert (=> b!82094 (= e!44542 (filter_preserves_forall!0 (t!47838 lt!18730) lambda!9764 lambda!9630))))

(declare-fun lt!18910 () List!665)

(declare-fun b!82095 () Bool)

(declare-fun lt!18915 () List!665)

(declare-fun lt!18913 () List!665)

(declare-fun e!44540 () Bool)

(assert (=> b!82095 (= e!44540 (append_preserves_forall!0 (++!73 (quickSort!0 lt!18915) lt!18910) (quickSort!0 lt!18913) lambda!9630))))

(declare-fun d!56147 () Bool)

(assert (=> d!56147 (forall!20 (quickSort!0 lt!18730) lambda!9630)))

(declare-fun lt!18912 () Bool)

(declare-fun e!44538 () Bool)

(assert (=> d!56147 (= lt!18912 e!44538)))

(declare-fun res!41984 () Bool)

(assert (=> d!56147 (=> res!41984 e!44538)))

(assert (=> d!56147 (= res!41984 (or (is-Nil!624 lt!18730) (and (is-Cons!622 lt!18730) (is-Nil!624 (t!47838 lt!18730)))))))

(assert (=> d!56147 (forall!20 lt!18730 lambda!9630)))

(assert (=> d!56147 (= (sort_preserves_forall!0 lt!18730 lambda!9630) true)))

(assert (=> b!82096 (= e!44538 e!44540)))

(declare-fun res!41985 () Bool)

(assert (=> b!82096 (=> (not res!41985) (not e!44540))))

(assert (=> b!82096 (= res!41985 (append_preserves_forall!0 (quickSort!0 lt!18915) lt!18910 lambda!9630))))

(declare-fun lt!18911 () Bool)

(declare-fun e!44539 () Bool)

(assert (=> b!82096 (= lt!18911 e!44539)))

(declare-fun res!41983 () Bool)

(assert (=> b!82096 (=> (not res!41983) (not e!44539))))

(assert (=> b!82096 (= res!41983 (sort_preserves_forall!0 lt!18915 lambda!9630))))

(declare-fun lt!18914 () Bool)

(declare-fun e!44541 () Bool)

(assert (=> b!82096 (= lt!18914 e!44541)))

(declare-fun res!41982 () Bool)

(assert (=> b!82096 (=> (not res!41982) (not e!44541))))

(assert (=> b!82096 (= res!41982 e!44542)))

(declare-fun res!41986 () Bool)

(assert (=> b!82096 (=> (not res!41986) (not e!44542))))

(assert (=> b!82096 (= res!41986 (filter_preserves_forall!0 (t!47838 lt!18730) lambda!9763 lambda!9630))))

(assert (=> b!82096 (= lt!18913 (filter!18 (t!47838 lt!18730) lambda!9765))))

(assert (=> b!82096 (= lt!18910 (Cons!622 (h!991 lt!18730) (filter!18 (t!47838 lt!18730) lambda!9764)))))

(assert (=> b!82096 (= lt!18915 (filter!18 (t!47838 lt!18730) lambda!9763))))

(declare-fun b!82097 () Bool)

(assert (=> b!82097 (= e!44539 (sort_preserves_forall!0 lt!18913 lambda!9630))))

(declare-fun b!82098 () Bool)

(assert (=> b!82098 (= e!44541 (filter_preserves_forall!0 (t!47838 lt!18730) lambda!9765 lambda!9630))))

(assert (= (and d!56147 (not res!41984)) b!82096))

(assert (= (and b!82096 res!41986) b!82094))

(assert (= (and b!82096 res!41982) b!82098))

(assert (= (and b!82096 res!41983) b!82097))

(assert (= (and b!82096 res!41985) b!82095))

(declare-fun m!77600 () Bool)

(assert (=> b!82098 m!77600))

(declare-fun m!77602 () Bool)

(assert (=> b!82097 m!77602))

(declare-fun m!77604 () Bool)

(assert (=> b!82095 m!77604))

(assert (=> b!82095 m!77604))

(declare-fun m!77606 () Bool)

(assert (=> b!82095 m!77606))

(declare-fun m!77608 () Bool)

(assert (=> b!82095 m!77608))

(assert (=> b!82095 m!77606))

(assert (=> b!82095 m!77608))

(declare-fun m!77610 () Bool)

(assert (=> b!82095 m!77610))

(declare-fun m!77612 () Bool)

(assert (=> b!82094 m!77612))

(declare-fun m!77614 () Bool)

(assert (=> b!82096 m!77614))

(declare-fun m!77616 () Bool)

(assert (=> b!82096 m!77616))

(assert (=> b!82096 m!77604))

(declare-fun m!77618 () Bool)

(assert (=> b!82096 m!77618))

(declare-fun m!77620 () Bool)

(assert (=> b!82096 m!77620))

(assert (=> b!82096 m!77604))

(declare-fun m!77622 () Bool)

(assert (=> b!82096 m!77622))

(declare-fun m!77624 () Bool)

(assert (=> b!82096 m!77624))

(assert (=> d!56147 m!76384))

(assert (=> d!56147 m!76384))

(declare-fun m!77626 () Bool)

(assert (=> d!56147 m!77626))

(declare-fun m!77628 () Bool)

(assert (=> d!56147 m!77628))

(assert (=> b!81517 d!56147))

(declare-fun d!56149 () Bool)

(declare-fun e!44544 () Bool)

(assert (=> d!56149 e!44544))

(declare-fun c!20666 () Bool)

(assert (=> d!56149 (= c!20666 (is-Cons!622 (quickSort!0 lt!18730)))))

(declare-fun e!44543 () Bool)

(assert (=> d!56149 e!44543))

(declare-fun res!41987 () Bool)

(assert (=> d!56149 (=> (not res!41987) (not e!44543))))

(assert (=> d!56149 (= res!41987 (forall!20 (quickSort!0 lt!18730) lambda!9630))))

(assert (=> d!56149 (= (append_preserves_forall!0 (quickSort!0 lt!18730) lt!18725 lambda!9630) true)))

(declare-fun b!82099 () Bool)

(assert (=> b!82099 (= e!44543 (forall!20 lt!18725 lambda!9630))))

(declare-fun b!82100 () Bool)

(assert (=> b!82100 (= e!44544 (forall!20 (++!73 (quickSort!0 lt!18730) lt!18725) lambda!9630))))

(declare-fun lt!18916 () Bool)

(assert (=> b!82100 (= lt!18916 (append_preserves_forall!0 (t!47838 (quickSort!0 lt!18730)) lt!18725 lambda!9630))))

(declare-fun b!82101 () Bool)

(assert (=> b!82101 (= e!44544 (forall!20 (++!73 (quickSort!0 lt!18730) lt!18725) lambda!9630))))

(assert (= (and d!56149 res!41987) b!82099))

(assert (= (and d!56149 c!20666) b!82100))

(assert (= (and d!56149 (not c!20666)) b!82101))

(assert (=> d!56149 m!76384))

(assert (=> d!56149 m!77626))

(declare-fun m!77630 () Bool)

(assert (=> b!82099 m!77630))

(assert (=> b!82100 m!76384))

(assert (=> b!82100 m!76386))

(assert (=> b!82100 m!76386))

(assert (=> b!82100 m!76656))

(declare-fun m!77632 () Bool)

(assert (=> b!82100 m!77632))

(assert (=> b!82101 m!76384))

(assert (=> b!82101 m!76386))

(assert (=> b!82101 m!76386))

(assert (=> b!82101 m!76656))

(assert (=> b!81517 d!56149))

(declare-fun b!82102 () Bool)

(declare-fun e!44546 () List!665)

(declare-fun lt!18917 () List!665)

(assert (=> b!82102 (= e!44546 (Cons!622 (h!991 (t!47838 less!5)) lt!18917))))

(declare-fun b!82103 () Bool)

(declare-fun e!44548 () Bool)

(assert (=> b!82103 (= e!44548 (dynLambda!984 lambda!9662 (h!991 (t!47838 less!5))))))

(declare-fun b!82104 () Bool)

(assert (=> b!82104 (= e!44546 lt!18917)))

(declare-fun d!56151 () Bool)

(declare-fun e!44545 () Bool)

(assert (=> d!56151 e!44545))

(declare-fun res!41990 () Bool)

(assert (=> d!56151 (=> (not res!41990) (not e!44545))))

(declare-fun lt!18918 () List!665)

(assert (=> d!56151 (= res!41990 (<= (size!653 lt!18918) (size!653 (t!47838 less!5))))))

(declare-fun e!44547 () List!665)

(assert (=> d!56151 (= lt!18918 e!44547)))

(declare-fun c!20668 () Bool)

(assert (=> d!56151 (= c!20668 (is-Nil!624 (t!47838 less!5)))))

(assert (=> d!56151 (= (filter!18 (t!47838 less!5) lambda!9662) lt!18918)))

(declare-fun b!82105 () Bool)

(declare-fun res!41988 () Bool)

(assert (=> b!82105 (=> (not res!41988) (not e!44545))))

(assert (=> b!82105 (= res!41988 (subset (content!124 lt!18918) (content!124 (t!47838 less!5))))))

(declare-fun b!82106 () Bool)

(assert (=> b!82106 (= e!44547 Nil!624)))

(declare-fun b!82107 () Bool)

(assert (=> b!82107 (= e!44545 (forall!20 lt!18918 lambda!9662))))

(declare-fun b!82108 () Bool)

(assert (=> b!82108 (= e!44547 e!44546)))

(declare-fun c!20667 () Bool)

(assert (=> b!82108 (= c!20667 e!44548)))

(declare-fun res!41989 () Bool)

(assert (=> b!82108 (=> (not res!41989) (not e!44548))))

(assert (=> b!82108 (= res!41989 (is-Cons!622 (t!47838 less!5)))))

(assert (=> b!82108 (= lt!18917 (filter!18 (t!47838 (t!47838 less!5)) lambda!9662))))

(assert (= (and b!82108 res!41989) b!82103))

(assert (= (and b!82108 c!20667) b!82102))

(assert (= (and b!82108 (not c!20667)) b!82104))

(assert (= (and d!56151 c!20668) b!82106))

(assert (= (and d!56151 (not c!20668)) b!82108))

(assert (= (and d!56151 res!41990) b!82105))

(assert (= (and b!82105 res!41988) b!82107))

(declare-fun b_lambda!16185 () Bool)

(assert (=> (not b_lambda!16185) (not b!82103)))

(declare-fun m!77634 () Bool)

(assert (=> b!82107 m!77634))

(declare-fun m!77636 () Bool)

(assert (=> b!82105 m!77636))

(assert (=> b!82105 m!76790))

(declare-fun m!77638 () Bool)

(assert (=> b!82103 m!77638))

(declare-fun m!77640 () Bool)

(assert (=> d!56151 m!77640))

(assert (=> d!56151 m!76796))

(declare-fun m!77642 () Bool)

(assert (=> b!82108 m!77642))

(assert (=> b!81517 d!56151))

(declare-fun d!56153 () Bool)

(declare-fun e!44549 () Bool)

(assert (=> d!56153 e!44549))

(declare-fun c!20669 () Bool)

(assert (=> d!56153 (= c!20669 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!56153 (forall!20 (t!47838 less!5) lambda!9630)))

(assert (=> d!56153 (= (filter_preserves_forall!0 (t!47838 less!5) lambda!9661 lambda!9630) true)))

(declare-fun b!82109 () Bool)

(assert (=> b!82109 (= e!44549 (forall!20 (filter!18 (t!47838 less!5) lambda!9661) lambda!9630))))

(declare-fun lt!18919 () Bool)

(assert (=> b!82109 (= lt!18919 (filter_preserves_forall!0 (t!47838 (t!47838 less!5)) lambda!9661 lambda!9630))))

(declare-fun b!82110 () Bool)

(assert (=> b!82110 (= e!44549 (forall!20 (filter!18 (t!47838 less!5) lambda!9661) lambda!9630))))

(assert (= (and d!56153 c!20669) b!82109))

(assert (= (and d!56153 (not c!20669)) b!82110))

(assert (=> d!56153 m!76622))

(assert (=> b!82109 m!76404))

(assert (=> b!82109 m!76404))

(declare-fun m!77644 () Bool)

(assert (=> b!82109 m!77644))

(declare-fun m!77646 () Bool)

(assert (=> b!82109 m!77646))

(assert (=> b!82110 m!76404))

(assert (=> b!82110 m!76404))

(assert (=> b!82110 m!77644))

(assert (=> b!81517 d!56153))

(declare-fun d!56155 () Bool)

(declare-fun res!41991 () Bool)

(declare-fun e!44550 () Bool)

(assert (=> d!56155 (=> res!41991 e!44550)))

(assert (=> d!56155 (= res!41991 (is-Nil!624 equal!10))))

(assert (=> d!56155 (= (forall!20 equal!10 lambda!9647) e!44550)))

(declare-fun b!82111 () Bool)

(declare-fun e!44551 () Bool)

(assert (=> b!82111 (= e!44550 e!44551)))

(declare-fun res!41992 () Bool)

(assert (=> b!82111 (=> (not res!41992) (not e!44551))))

(assert (=> b!82111 (= res!41992 (dynLambda!984 lambda!9647 (h!991 equal!10)))))

(declare-fun b!82112 () Bool)

(assert (=> b!82112 (= e!44551 (forall!20 (t!47838 equal!10) lambda!9647))))

(assert (= (and d!56155 (not res!41991)) b!82111))

(assert (= (and b!82111 res!41992) b!82112))

(declare-fun b_lambda!16187 () Bool)

(assert (=> (not b_lambda!16187) (not b!82111)))

(declare-fun m!77648 () Bool)

(assert (=> b!82111 m!77648))

(declare-fun m!77650 () Bool)

(assert (=> b!82112 m!77650))

(assert (=> b!81495 d!56155))

(declare-fun bs!39733 () Bool)

(declare-fun d!56157 () Bool)

(assert (= bs!39733 (and d!56157 b!81949)))

(declare-fun lambda!9766 () Int)

(assert (=> bs!39733 (not (= lambda!9766 lambda!9750))))

(assert (=> bs!39733 (= (= (h!991 ls!96) (h!991 lt!18769)) (= lambda!9766 lambda!9749))))

(assert (=> bs!39733 (not (= lambda!9766 lambda!9748))))

(declare-fun bs!39734 () Bool)

(assert (= bs!39734 (and d!56157 b!81517)))

(assert (=> bs!39734 (not (= lambda!9766 lambda!9663))))

(assert (=> bs!39734 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9766 lambda!9662))))

(assert (=> bs!39734 (not (= lambda!9766 lambda!9661))))

(declare-fun bs!39735 () Bool)

(assert (= bs!39735 (and d!56157 b!81734)))

(assert (=> bs!39735 (not (= lambda!9766 lambda!9711))))

(assert (=> bs!39735 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9667))) (= lambda!9766 lambda!9710))))

(assert (=> bs!39735 (not (= lambda!9766 lambda!9709))))

(declare-fun bs!39736 () Bool)

(assert (= bs!39736 (and d!56157 b!81462)))

(assert (=> bs!39736 (not (= lambda!9766 lambda!9627))))

(declare-fun bs!39737 () Bool)

(assert (= bs!39737 (and d!56157 b!81495)))

(assert (=> bs!39737 (not (= lambda!9766 lambda!9647))))

(declare-fun bs!39738 () Bool)

(assert (= bs!39738 (and d!56157 b!81804)))

(assert (=> bs!39738 (not (= lambda!9766 lambda!9723))))

(assert (=> bs!39738 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9766 lambda!9722))))

(assert (=> bs!39738 (not (= lambda!9766 lambda!9721))))

(declare-fun bs!39739 () Bool)

(assert (= bs!39739 (and d!56157 b!81885)))

(assert (=> bs!39739 (not (= lambda!9766 lambda!9735))))

(assert (=> bs!39739 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9766 lambda!9734))))

(assert (=> bs!39739 (not (= lambda!9766 lambda!9733))))

(declare-fun bs!39740 () Bool)

(assert (= bs!39740 (and d!56157 b!81742)))

(assert (=> bs!39740 (not (= lambda!9766 lambda!9714))))

(assert (=> bs!39740 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 less!5) lambda!9669))) (= lambda!9766 lambda!9713))))

(assert (=> bs!39740 (not (= lambda!9766 lambda!9712))))

(declare-fun bs!39741 () Bool)

(assert (= bs!39741 (and d!56157 b!81922)))

(assert (=> bs!39741 (= lambda!9766 lambda!9747)))

(declare-fun bs!39742 () Bool)

(assert (= bs!39742 (and d!56157 b!81972)))

(assert (=> bs!39742 (not (= lambda!9766 lambda!9753))))

(assert (=> bs!39742 (= (= (h!991 ls!96) (h!991 lt!18769)) (= lambda!9766 lambda!9752))))

(assert (=> bs!39742 (not (= lambda!9766 lambda!9751))))

(declare-fun bs!39743 () Bool)

(assert (= bs!39743 (and d!56157 b!81907)))

(assert (=> bs!39743 (not (= lambda!9766 lambda!9741))))

(declare-fun bs!39744 () Bool)

(assert (= bs!39744 (and d!56157 b!81709)))

(assert (=> bs!39744 (not (= lambda!9766 lambda!9708))))

(assert (=> bs!39744 (= (= (h!991 ls!96) (h!991 lt!18751)) (= lambda!9766 lambda!9707))))

(assert (=> bs!39744 (not (= lambda!9766 lambda!9706))))

(declare-fun bs!39745 () Bool)

(assert (= bs!39745 (and d!56157 b!81460)))

(assert (=> bs!39745 (= lambda!9766 lambda!9628)))

(declare-fun bs!39746 () Bool)

(assert (= bs!39746 (and d!56157 b!81560)))

(assert (=> bs!39746 (not (= lambda!9766 lambda!9678))))

(assert (=> bs!39746 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9766 lambda!9677))))

(assert (=> bs!39746 (not (= lambda!9766 lambda!9676))))

(declare-fun bs!39747 () Bool)

(assert (= bs!39747 (and d!56157 b!81906)))

(assert (=> bs!39747 (not (= lambda!9766 lambda!9740))))

(declare-fun bs!39748 () Bool)

(assert (= bs!39748 (and d!56157 b!82039)))

(assert (=> bs!39748 (not (= lambda!9766 lambda!9756))))

(assert (=> bs!39748 (= (= (h!991 ls!96) (h!991 lt!18728)) (= lambda!9766 lambda!9755))))

(assert (=> bs!39748 (not (= lambda!9766 lambda!9754))))

(declare-fun bs!39749 () Bool)

(assert (= bs!39749 (and d!56157 b!81490)))

(assert (=> bs!39749 (not (= lambda!9766 lambda!9639))))

(assert (=> bs!39749 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9766 lambda!9638))))

(assert (=> bs!39749 (not (= lambda!9766 lambda!9637))))

(declare-fun bs!39750 () Bool)

(assert (= bs!39750 (and d!56157 b!82096)))

(assert (=> bs!39750 (not (= lambda!9766 lambda!9765))))

(assert (=> bs!39750 (= (= (h!991 ls!96) (h!991 lt!18730)) (= lambda!9766 lambda!9764))))

(assert (=> bs!39750 (not (= lambda!9766 lambda!9763))))

(declare-fun bs!39751 () Bool)

(assert (= bs!39751 (and d!56157 b!81921)))

(assert (=> bs!39751 (= lambda!9766 lambda!9746)))

(declare-fun bs!39752 () Bool)

(assert (= bs!39752 (and d!56157 b!81691)))

(assert (=> bs!39752 (not (= lambda!9766 lambda!9702))))

(assert (=> bs!39752 (= (= (h!991 ls!96) (h!991 lt!18728)) (= lambda!9766 lambda!9701))))

(assert (=> bs!39752 (not (= lambda!9766 lambda!9700))))

(declare-fun bs!39753 () Bool)

(assert (= bs!39753 (and d!56157 b!81466)))

(assert (=> bs!39753 (not (= lambda!9766 lambda!9629))))

(declare-fun bs!39754 () Bool)

(assert (= bs!39754 (and d!56157 d!56039)))

(assert (=> bs!39754 (not (= lambda!9766 lambda!9739))))

(declare-fun bs!39755 () Bool)

(assert (= bs!39755 (and d!56157 b!82058)))

(assert (=> bs!39755 (not (= lambda!9766 lambda!9759))))

(assert (=> bs!39755 (= (= (h!991 ls!96) (h!991 lt!18734)) (= lambda!9766 lambda!9758))))

(assert (=> bs!39755 (not (= lambda!9766 lambda!9757))))

(declare-fun bs!39756 () Bool)

(assert (= bs!39756 (and d!56157 b!81780)))

(assert (=> bs!39756 (not (= lambda!9766 lambda!9720))))

(assert (=> bs!39756 (= (= (h!991 ls!96) (h!991 lt!18781)) (= lambda!9766 lambda!9719))))

(assert (=> bs!39756 (not (= lambda!9766 lambda!9718))))

(declare-fun bs!39757 () Bool)

(assert (= bs!39757 (and d!56157 d!55883)))

(assert (=> bs!39757 (not (= lambda!9766 lambda!9685))))

(declare-fun bs!39758 () Bool)

(assert (= bs!39758 (and d!56157 b!81901)))

(assert (=> bs!39758 (not (= lambda!9766 lambda!9738))))

(assert (=> bs!39758 (= (= (h!991 ls!96) (h!991 lt!18736)) (= lambda!9766 lambda!9737))))

(assert (=> bs!39758 (not (= lambda!9766 lambda!9736))))

(declare-fun bs!39759 () Bool)

(assert (= bs!39759 (and d!56157 b!81837)))

(assert (=> bs!39759 (not (= lambda!9766 lambda!9729))))

(assert (=> bs!39759 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9639))) (= lambda!9766 lambda!9728))))

(assert (=> bs!39759 (not (= lambda!9766 lambda!9727))))

(declare-fun bs!39760 () Bool)

(assert (= bs!39760 (and d!56157 b!81852)))

(assert (=> bs!39760 (not (= lambda!9766 lambda!9732))))

(assert (=> bs!39760 (= (= (h!991 ls!96) (h!991 (filter!18 (t!47838 more!5) lambda!9637))) (= lambda!9766 lambda!9731))))

(assert (=> bs!39760 (not (= lambda!9766 lambda!9730))))

(declare-fun bs!39761 () Bool)

(assert (= bs!39761 (and d!56157 d!55861)))

(assert (=> bs!39761 (= lambda!9766 lambda!9646)))

(declare-fun bs!39762 () Bool)

(assert (= bs!39762 (and d!56157 b!81537)))

(assert (=> bs!39762 (not (= lambda!9766 lambda!9669))))

(assert (=> bs!39762 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9766 lambda!9668))))

(assert (=> bs!39762 (not (= lambda!9766 lambda!9667))))

(declare-fun bs!39763 () Bool)

(assert (= bs!39763 (and d!56157 b!81587)))

(assert (=> bs!39763 (not (= lambda!9766 lambda!9686))))

(declare-fun bs!39764 () Bool)

(assert (= bs!39764 (and d!56157 b!81496)))

(assert (=> bs!39764 (not (= lambda!9766 lambda!9648))))

(declare-fun bs!39765 () Bool)

(assert (= bs!39765 (and d!56157 b!82071)))

(assert (=> bs!39765 (not (= lambda!9766 lambda!9762))))

(assert (=> bs!39765 (= (= (h!991 ls!96) (h!991 lt!18734)) (= lambda!9766 lambda!9761))))

(assert (=> bs!39765 (not (= lambda!9766 lambda!9760))))

(declare-fun bs!39766 () Bool)

(assert (= bs!39766 (and d!56157 d!55889)))

(assert (=> bs!39766 (= lambda!9766 lambda!9693)))

(declare-fun bs!39767 () Bool)

(assert (= bs!39767 (and d!56157 b!81705)))

(assert (=> bs!39767 (not (= lambda!9766 lambda!9705))))

(assert (=> bs!39767 (= (= (h!991 ls!96) (h!991 lt!18752)) (= lambda!9766 lambda!9704))))

(assert (=> bs!39767 (not (= lambda!9766 lambda!9703))))

(declare-fun bs!39768 () Bool)

(assert (= bs!39768 (and d!56157 b!81522)))

(assert (=> bs!39768 (not (= lambda!9766 lambda!9666))))

(assert (=> bs!39768 (= (= (h!991 ls!96) (h!991 more!5)) (= lambda!9766 lambda!9665))))

(assert (=> bs!39768 (not (= lambda!9766 lambda!9664))))

(declare-fun bs!39769 () Bool)

(assert (= bs!39769 (and d!56157 b!81598)))

(assert (=> bs!39769 (not (= lambda!9766 lambda!9690))))

(assert (=> bs!39769 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9766 lambda!9689))))

(assert (=> bs!39769 (not (= lambda!9766 lambda!9688))))

(declare-fun bs!39770 () Bool)

(assert (= bs!39770 (and d!56157 b!81588)))

(assert (=> bs!39770 (not (= lambda!9766 lambda!9687))))

(declare-fun bs!39771 () Bool)

(assert (= bs!39771 (and d!56157 b!81776)))

(assert (=> bs!39771 (not (= lambda!9766 lambda!9717))))

(assert (=> bs!39771 (= (= (h!991 ls!96) (h!991 lt!18782)) (= lambda!9766 lambda!9716))))

(assert (=> bs!39771 (not (= lambda!9766 lambda!9715))))

(declare-fun bs!39772 () Bool)

(assert (= bs!39772 (and d!56157 b!81468)))

(assert (=> bs!39772 (not (= lambda!9766 lambda!9630))))

(declare-fun bs!39773 () Bool)

(assert (= bs!39773 (and d!56157 b!81633)))

(assert (=> bs!39773 (not (= lambda!9766 lambda!9696))))

(assert (=> bs!39773 (= (= (h!991 ls!96) (h!991 less!5)) (= lambda!9766 lambda!9695))))

(assert (=> bs!39773 (not (= lambda!9766 lambda!9694))))

(declare-fun bs!39774 () Bool)

(assert (= bs!39774 (and d!56157 b!81687)))

(assert (=> bs!39774 (not (= lambda!9766 lambda!9699))))

(assert (=> bs!39774 (= (= (h!991 ls!96) (h!991 lt!18730)) (= lambda!9766 lambda!9698))))

(assert (=> bs!39774 (not (= lambda!9766 lambda!9697))))

(declare-fun bs!39775 () Bool)

(assert (= bs!39775 (and d!56157 b!81810)))

(assert (=> bs!39775 (not (= lambda!9766 lambda!9726))))

(assert (=> bs!39775 (= (= (h!991 ls!96) (h!991 lt!18771)) (= lambda!9766 lambda!9725))))

(assert (=> bs!39775 (not (= lambda!9766 lambda!9724))))

(assert (=> d!56157 true))

(declare-fun bs!39776 () Bool)

(declare-fun b!82113 () Bool)

(assert (= bs!39776 (and b!82113 b!81949)))

(declare-fun lambda!9767 () Int)

(assert (=> bs!39776 (not (= lambda!9767 lambda!9750))))

(assert (=> bs!39776 (not (= lambda!9767 lambda!9749))))

(assert (=> bs!39776 (not (= lambda!9767 lambda!9748))))

(declare-fun bs!39777 () Bool)

(assert (= bs!39777 (and b!82113 b!81517)))

(assert (=> bs!39777 (not (= lambda!9767 lambda!9663))))

(assert (=> bs!39777 (not (= lambda!9767 lambda!9662))))

(assert (=> bs!39777 (not (= lambda!9767 lambda!9661))))

(declare-fun bs!39778 () Bool)

(assert (= bs!39778 (and b!82113 b!81734)))

(assert (=> bs!39778 (not (= lambda!9767 lambda!9711))))

(assert (=> bs!39778 (not (= lambda!9767 lambda!9710))))

(assert (=> bs!39778 (not (= lambda!9767 lambda!9709))))

(declare-fun bs!39779 () Bool)

(assert (= bs!39779 (and b!82113 b!81462)))

(assert (=> bs!39779 (not (= lambda!9767 lambda!9627))))

(declare-fun bs!39780 () Bool)

(assert (= bs!39780 (and b!82113 b!81495)))

(assert (=> bs!39780 (= lambda!9767 lambda!9647)))

(declare-fun bs!39781 () Bool)

(assert (= bs!39781 (and b!82113 b!81804)))

(assert (=> bs!39781 (not (= lambda!9767 lambda!9723))))

(assert (=> bs!39781 (not (= lambda!9767 lambda!9722))))

(assert (=> bs!39781 (not (= lambda!9767 lambda!9721))))

(declare-fun bs!39782 () Bool)

(assert (= bs!39782 (and b!82113 b!81885)))

(assert (=> bs!39782 (not (= lambda!9767 lambda!9735))))

(assert (=> bs!39782 (not (= lambda!9767 lambda!9734))))

(assert (=> bs!39782 (not (= lambda!9767 lambda!9733))))

(declare-fun bs!39783 () Bool)

(assert (= bs!39783 (and b!82113 b!81742)))

(assert (=> bs!39783 (not (= lambda!9767 lambda!9714))))

(assert (=> bs!39783 (not (= lambda!9767 lambda!9713))))

(assert (=> bs!39783 (not (= lambda!9767 lambda!9712))))

(declare-fun bs!39784 () Bool)

(assert (= bs!39784 (and b!82113 b!81922)))

(assert (=> bs!39784 (not (= lambda!9767 lambda!9747))))

(declare-fun bs!39785 () Bool)

(assert (= bs!39785 (and b!82113 b!81972)))

(assert (=> bs!39785 (not (= lambda!9767 lambda!9753))))

(assert (=> bs!39785 (not (= lambda!9767 lambda!9752))))

(assert (=> bs!39785 (not (= lambda!9767 lambda!9751))))

(declare-fun bs!39786 () Bool)

(assert (= bs!39786 (and b!82113 b!81907)))

(assert (=> bs!39786 (= lambda!9767 lambda!9741)))

(declare-fun bs!39787 () Bool)

(assert (= bs!39787 (and b!82113 b!81709)))

(assert (=> bs!39787 (not (= lambda!9767 lambda!9708))))

(assert (=> bs!39787 (not (= lambda!9767 lambda!9707))))

(assert (=> bs!39787 (not (= lambda!9767 lambda!9706))))

(declare-fun bs!39788 () Bool)

(assert (= bs!39788 (and b!82113 b!81460)))

(assert (=> bs!39788 (not (= lambda!9767 lambda!9628))))

(declare-fun bs!39789 () Bool)

(assert (= bs!39789 (and b!82113 b!81560)))

(assert (=> bs!39789 (not (= lambda!9767 lambda!9678))))

(assert (=> bs!39789 (not (= lambda!9767 lambda!9677))))

(assert (=> bs!39789 (not (= lambda!9767 lambda!9676))))

(declare-fun bs!39790 () Bool)

(assert (= bs!39790 (and b!82113 b!81906)))

(assert (=> bs!39790 (= lambda!9767 lambda!9740)))

(declare-fun bs!39791 () Bool)

(assert (= bs!39791 (and b!82113 b!82039)))

(assert (=> bs!39791 (not (= lambda!9767 lambda!9756))))

(assert (=> bs!39791 (not (= lambda!9767 lambda!9755))))

(assert (=> bs!39791 (not (= lambda!9767 lambda!9754))))

(declare-fun bs!39792 () Bool)

(assert (= bs!39792 (and b!82113 b!81490)))

(assert (=> bs!39792 (not (= lambda!9767 lambda!9639))))

(assert (=> bs!39792 (not (= lambda!9767 lambda!9638))))

(assert (=> bs!39792 (not (= lambda!9767 lambda!9637))))

(declare-fun bs!39793 () Bool)

(assert (= bs!39793 (and b!82113 b!82096)))

(assert (=> bs!39793 (not (= lambda!9767 lambda!9765))))

(assert (=> bs!39793 (not (= lambda!9767 lambda!9764))))

(assert (=> bs!39793 (not (= lambda!9767 lambda!9763))))

(declare-fun bs!39794 () Bool)

(assert (= bs!39794 (and b!82113 b!81921)))

(assert (=> bs!39794 (not (= lambda!9767 lambda!9746))))

(declare-fun bs!39795 () Bool)

(assert (= bs!39795 (and b!82113 b!81691)))

(assert (=> bs!39795 (not (= lambda!9767 lambda!9702))))

(assert (=> bs!39795 (not (= lambda!9767 lambda!9701))))

(assert (=> bs!39795 (not (= lambda!9767 lambda!9700))))

(declare-fun bs!39796 () Bool)

(assert (= bs!39796 (and b!82113 b!81466)))

(assert (=> bs!39796 (not (= lambda!9767 lambda!9629))))

(declare-fun bs!39797 () Bool)

(assert (= bs!39797 (and b!82113 d!56039)))

(assert (=> bs!39797 (not (= lambda!9767 lambda!9739))))

(declare-fun bs!39798 () Bool)

(assert (= bs!39798 (and b!82113 b!82058)))

(assert (=> bs!39798 (not (= lambda!9767 lambda!9759))))

(assert (=> bs!39798 (not (= lambda!9767 lambda!9758))))

(assert (=> bs!39798 (not (= lambda!9767 lambda!9757))))

(declare-fun bs!39799 () Bool)

(assert (= bs!39799 (and b!82113 b!81780)))

(assert (=> bs!39799 (not (= lambda!9767 lambda!9720))))

(assert (=> bs!39799 (not (= lambda!9767 lambda!9719))))

(assert (=> bs!39799 (not (= lambda!9767 lambda!9718))))

(declare-fun bs!39800 () Bool)

(assert (= bs!39800 (and b!82113 d!55883)))

(assert (=> bs!39800 (not (= lambda!9767 lambda!9685))))

(declare-fun bs!39801 () Bool)

(assert (= bs!39801 (and b!82113 b!81901)))

(assert (=> bs!39801 (not (= lambda!9767 lambda!9738))))

(assert (=> bs!39801 (not (= lambda!9767 lambda!9737))))

(assert (=> bs!39801 (not (= lambda!9767 lambda!9736))))

(declare-fun bs!39802 () Bool)

(assert (= bs!39802 (and b!82113 b!81837)))

(assert (=> bs!39802 (not (= lambda!9767 lambda!9729))))

(assert (=> bs!39802 (not (= lambda!9767 lambda!9728))))

(assert (=> bs!39802 (not (= lambda!9767 lambda!9727))))

(declare-fun bs!39803 () Bool)

(assert (= bs!39803 (and b!82113 b!81852)))

(assert (=> bs!39803 (not (= lambda!9767 lambda!9732))))

(assert (=> bs!39803 (not (= lambda!9767 lambda!9731))))

(assert (=> bs!39803 (not (= lambda!9767 lambda!9730))))

(declare-fun bs!39804 () Bool)

(assert (= bs!39804 (and b!82113 d!55861)))

(assert (=> bs!39804 (not (= lambda!9767 lambda!9646))))

(declare-fun bs!39805 () Bool)

(assert (= bs!39805 (and b!82113 b!81537)))

(assert (=> bs!39805 (not (= lambda!9767 lambda!9669))))

(assert (=> bs!39805 (not (= lambda!9767 lambda!9668))))

(assert (=> bs!39805 (not (= lambda!9767 lambda!9667))))

(declare-fun bs!39806 () Bool)

(assert (= bs!39806 (and b!82113 b!81587)))

(assert (=> bs!39806 (= lambda!9767 lambda!9686)))

(declare-fun bs!39807 () Bool)

(assert (= bs!39807 (and b!82113 b!81496)))

(assert (=> bs!39807 (= lambda!9767 lambda!9648)))

(declare-fun bs!39808 () Bool)

(assert (= bs!39808 (and b!82113 b!82071)))

(assert (=> bs!39808 (not (= lambda!9767 lambda!9762))))

(assert (=> bs!39808 (not (= lambda!9767 lambda!9761))))

(assert (=> bs!39808 (not (= lambda!9767 lambda!9760))))

(declare-fun bs!39809 () Bool)

(assert (= bs!39809 (and b!82113 d!55889)))

(assert (=> bs!39809 (not (= lambda!9767 lambda!9693))))

(declare-fun bs!39810 () Bool)

(assert (= bs!39810 (and b!82113 d!56157)))

(assert (=> bs!39810 (not (= lambda!9767 lambda!9766))))

(declare-fun bs!39811 () Bool)

(assert (= bs!39811 (and b!82113 b!81705)))

(assert (=> bs!39811 (not (= lambda!9767 lambda!9705))))

(assert (=> bs!39811 (not (= lambda!9767 lambda!9704))))

(assert (=> bs!39811 (not (= lambda!9767 lambda!9703))))

(declare-fun bs!39812 () Bool)

(assert (= bs!39812 (and b!82113 b!81522)))

(assert (=> bs!39812 (not (= lambda!9767 lambda!9666))))

(assert (=> bs!39812 (not (= lambda!9767 lambda!9665))))

(assert (=> bs!39812 (not (= lambda!9767 lambda!9664))))

(declare-fun bs!39813 () Bool)

(assert (= bs!39813 (and b!82113 b!81598)))

(assert (=> bs!39813 (not (= lambda!9767 lambda!9690))))

(assert (=> bs!39813 (not (= lambda!9767 lambda!9689))))

(assert (=> bs!39813 (not (= lambda!9767 lambda!9688))))

(declare-fun bs!39814 () Bool)

(assert (= bs!39814 (and b!82113 b!81588)))

(assert (=> bs!39814 (= lambda!9767 lambda!9687)))

(declare-fun bs!39815 () Bool)

(assert (= bs!39815 (and b!82113 b!81776)))

(assert (=> bs!39815 (not (= lambda!9767 lambda!9717))))

(assert (=> bs!39815 (not (= lambda!9767 lambda!9716))))

(assert (=> bs!39815 (not (= lambda!9767 lambda!9715))))

(declare-fun bs!39816 () Bool)

(assert (= bs!39816 (and b!82113 b!81468)))

(assert (=> bs!39816 (= lambda!9767 lambda!9630)))

(declare-fun bs!39817 () Bool)

(assert (= bs!39817 (and b!82113 b!81633)))

(assert (=> bs!39817 (not (= lambda!9767 lambda!9696))))

(assert (=> bs!39817 (not (= lambda!9767 lambda!9695))))

(assert (=> bs!39817 (not (= lambda!9767 lambda!9694))))

(declare-fun bs!39818 () Bool)

(assert (= bs!39818 (and b!82113 b!81687)))

(assert (=> bs!39818 (not (= lambda!9767 lambda!9699))))

(assert (=> bs!39818 (not (= lambda!9767 lambda!9698))))

(assert (=> bs!39818 (not (= lambda!9767 lambda!9697))))

(declare-fun bs!39819 () Bool)

(assert (= bs!39819 (and b!82113 b!81810)))

(assert (=> bs!39819 (not (= lambda!9767 lambda!9726))))

(assert (=> bs!39819 (not (= lambda!9767 lambda!9725))))

(assert (=> bs!39819 (not (= lambda!9767 lambda!9724))))

(assert (=> b!82113 true))

(declare-fun bs!39820 () Bool)

(declare-fun b!82114 () Bool)

(assert (= bs!39820 (and b!82114 b!81949)))

(declare-fun lambda!9768 () Int)

(assert (=> bs!39820 (not (= lambda!9768 lambda!9750))))

(assert (=> bs!39820 (not (= lambda!9768 lambda!9749))))

(assert (=> bs!39820 (not (= lambda!9768 lambda!9748))))

(declare-fun bs!39821 () Bool)

(assert (= bs!39821 (and b!82114 b!81517)))

(assert (=> bs!39821 (not (= lambda!9768 lambda!9663))))

(assert (=> bs!39821 (not (= lambda!9768 lambda!9662))))

(assert (=> bs!39821 (not (= lambda!9768 lambda!9661))))

(declare-fun bs!39822 () Bool)

(assert (= bs!39822 (and b!82114 b!81734)))

(assert (=> bs!39822 (not (= lambda!9768 lambda!9711))))

(assert (=> bs!39822 (not (= lambda!9768 lambda!9710))))

(assert (=> bs!39822 (not (= lambda!9768 lambda!9709))))

(declare-fun bs!39823 () Bool)

(assert (= bs!39823 (and b!82114 b!81462)))

(assert (=> bs!39823 (not (= lambda!9768 lambda!9627))))

(declare-fun bs!39824 () Bool)

(assert (= bs!39824 (and b!82114 b!81495)))

(assert (=> bs!39824 (= lambda!9768 lambda!9647)))

(declare-fun bs!39825 () Bool)

(assert (= bs!39825 (and b!82114 b!81804)))

(assert (=> bs!39825 (not (= lambda!9768 lambda!9723))))

(assert (=> bs!39825 (not (= lambda!9768 lambda!9722))))

(assert (=> bs!39825 (not (= lambda!9768 lambda!9721))))

(declare-fun bs!39826 () Bool)

(assert (= bs!39826 (and b!82114 b!81885)))

(assert (=> bs!39826 (not (= lambda!9768 lambda!9735))))

(assert (=> bs!39826 (not (= lambda!9768 lambda!9734))))

(assert (=> bs!39826 (not (= lambda!9768 lambda!9733))))

(declare-fun bs!39827 () Bool)

(assert (= bs!39827 (and b!82114 b!81742)))

(assert (=> bs!39827 (not (= lambda!9768 lambda!9714))))

(assert (=> bs!39827 (not (= lambda!9768 lambda!9713))))

(assert (=> bs!39827 (not (= lambda!9768 lambda!9712))))

(declare-fun bs!39828 () Bool)

(assert (= bs!39828 (and b!82114 b!81922)))

(assert (=> bs!39828 (not (= lambda!9768 lambda!9747))))

(declare-fun bs!39829 () Bool)

(assert (= bs!39829 (and b!82114 b!81972)))

(assert (=> bs!39829 (not (= lambda!9768 lambda!9753))))

(assert (=> bs!39829 (not (= lambda!9768 lambda!9752))))

(assert (=> bs!39829 (not (= lambda!9768 lambda!9751))))

(declare-fun bs!39830 () Bool)

(assert (= bs!39830 (and b!82114 b!81907)))

(assert (=> bs!39830 (= lambda!9768 lambda!9741)))

(declare-fun bs!39831 () Bool)

(assert (= bs!39831 (and b!82114 b!81709)))

(assert (=> bs!39831 (not (= lambda!9768 lambda!9708))))

(assert (=> bs!39831 (not (= lambda!9768 lambda!9707))))

(assert (=> bs!39831 (not (= lambda!9768 lambda!9706))))

(declare-fun bs!39832 () Bool)

(assert (= bs!39832 (and b!82114 b!81460)))

(assert (=> bs!39832 (not (= lambda!9768 lambda!9628))))

(declare-fun bs!39833 () Bool)

(assert (= bs!39833 (and b!82114 b!81560)))

(assert (=> bs!39833 (not (= lambda!9768 lambda!9678))))

(assert (=> bs!39833 (not (= lambda!9768 lambda!9677))))

(assert (=> bs!39833 (not (= lambda!9768 lambda!9676))))

(declare-fun bs!39834 () Bool)

(assert (= bs!39834 (and b!82114 b!81906)))

(assert (=> bs!39834 (= lambda!9768 lambda!9740)))

(declare-fun bs!39835 () Bool)

(assert (= bs!39835 (and b!82114 b!82039)))

(assert (=> bs!39835 (not (= lambda!9768 lambda!9756))))

(assert (=> bs!39835 (not (= lambda!9768 lambda!9755))))

(assert (=> bs!39835 (not (= lambda!9768 lambda!9754))))

(declare-fun bs!39836 () Bool)

(assert (= bs!39836 (and b!82114 b!81490)))

(assert (=> bs!39836 (not (= lambda!9768 lambda!9639))))

(assert (=> bs!39836 (not (= lambda!9768 lambda!9638))))

(assert (=> bs!39836 (not (= lambda!9768 lambda!9637))))

(declare-fun bs!39837 () Bool)

(assert (= bs!39837 (and b!82114 b!82096)))

(assert (=> bs!39837 (not (= lambda!9768 lambda!9765))))

(assert (=> bs!39837 (not (= lambda!9768 lambda!9764))))

(assert (=> bs!39837 (not (= lambda!9768 lambda!9763))))

(declare-fun bs!39838 () Bool)

(assert (= bs!39838 (and b!82114 b!81921)))

(assert (=> bs!39838 (not (= lambda!9768 lambda!9746))))

(declare-fun bs!39839 () Bool)

(assert (= bs!39839 (and b!82114 b!81691)))

(assert (=> bs!39839 (not (= lambda!9768 lambda!9702))))

(assert (=> bs!39839 (not (= lambda!9768 lambda!9701))))

(assert (=> bs!39839 (not (= lambda!9768 lambda!9700))))

(declare-fun bs!39840 () Bool)

(assert (= bs!39840 (and b!82114 b!81466)))

(assert (=> bs!39840 (not (= lambda!9768 lambda!9629))))

(declare-fun bs!39841 () Bool)

(assert (= bs!39841 (and b!82114 d!56039)))

(assert (=> bs!39841 (not (= lambda!9768 lambda!9739))))

(declare-fun bs!39842 () Bool)

(assert (= bs!39842 (and b!82114 b!82058)))

(assert (=> bs!39842 (not (= lambda!9768 lambda!9759))))

(assert (=> bs!39842 (not (= lambda!9768 lambda!9758))))

(assert (=> bs!39842 (not (= lambda!9768 lambda!9757))))

(declare-fun bs!39843 () Bool)

(assert (= bs!39843 (and b!82114 b!81780)))

(assert (=> bs!39843 (not (= lambda!9768 lambda!9720))))

(assert (=> bs!39843 (not (= lambda!9768 lambda!9719))))

(assert (=> bs!39843 (not (= lambda!9768 lambda!9718))))

(declare-fun bs!39844 () Bool)

(assert (= bs!39844 (and b!82114 d!55883)))

(assert (=> bs!39844 (not (= lambda!9768 lambda!9685))))

(declare-fun bs!39845 () Bool)

(assert (= bs!39845 (and b!82114 b!81901)))

(assert (=> bs!39845 (not (= lambda!9768 lambda!9738))))

(assert (=> bs!39845 (not (= lambda!9768 lambda!9737))))

(assert (=> bs!39845 (not (= lambda!9768 lambda!9736))))

(declare-fun bs!39846 () Bool)

(assert (= bs!39846 (and b!82114 b!81837)))

(assert (=> bs!39846 (not (= lambda!9768 lambda!9729))))

(assert (=> bs!39846 (not (= lambda!9768 lambda!9728))))

(assert (=> bs!39846 (not (= lambda!9768 lambda!9727))))

(declare-fun bs!39847 () Bool)

(assert (= bs!39847 (and b!82114 b!82113)))

(assert (=> bs!39847 (= lambda!9768 lambda!9767)))

(declare-fun bs!39848 () Bool)

(assert (= bs!39848 (and b!82114 b!81852)))

(assert (=> bs!39848 (not (= lambda!9768 lambda!9732))))

(assert (=> bs!39848 (not (= lambda!9768 lambda!9731))))

(assert (=> bs!39848 (not (= lambda!9768 lambda!9730))))

(declare-fun bs!39849 () Bool)

(assert (= bs!39849 (and b!82114 d!55861)))

(assert (=> bs!39849 (not (= lambda!9768 lambda!9646))))

(declare-fun bs!39850 () Bool)

(assert (= bs!39850 (and b!82114 b!81537)))

(assert (=> bs!39850 (not (= lambda!9768 lambda!9669))))

(assert (=> bs!39850 (not (= lambda!9768 lambda!9668))))

(assert (=> bs!39850 (not (= lambda!9768 lambda!9667))))

(declare-fun bs!39851 () Bool)

(assert (= bs!39851 (and b!82114 b!81587)))

(assert (=> bs!39851 (= lambda!9768 lambda!9686)))

(declare-fun bs!39852 () Bool)

(assert (= bs!39852 (and b!82114 b!81496)))

(assert (=> bs!39852 (= lambda!9768 lambda!9648)))

(declare-fun bs!39853 () Bool)

(assert (= bs!39853 (and b!82114 b!82071)))

(assert (=> bs!39853 (not (= lambda!9768 lambda!9762))))

(assert (=> bs!39853 (not (= lambda!9768 lambda!9761))))

(assert (=> bs!39853 (not (= lambda!9768 lambda!9760))))

(declare-fun bs!39854 () Bool)

(assert (= bs!39854 (and b!82114 d!55889)))

(assert (=> bs!39854 (not (= lambda!9768 lambda!9693))))

(declare-fun bs!39855 () Bool)

(assert (= bs!39855 (and b!82114 d!56157)))

(assert (=> bs!39855 (not (= lambda!9768 lambda!9766))))

(declare-fun bs!39856 () Bool)

(assert (= bs!39856 (and b!82114 b!81705)))

(assert (=> bs!39856 (not (= lambda!9768 lambda!9705))))

(assert (=> bs!39856 (not (= lambda!9768 lambda!9704))))

(assert (=> bs!39856 (not (= lambda!9768 lambda!9703))))

(declare-fun bs!39857 () Bool)

(assert (= bs!39857 (and b!82114 b!81522)))

(assert (=> bs!39857 (not (= lambda!9768 lambda!9666))))

(assert (=> bs!39857 (not (= lambda!9768 lambda!9665))))

(assert (=> bs!39857 (not (= lambda!9768 lambda!9664))))

(declare-fun bs!39858 () Bool)

(assert (= bs!39858 (and b!82114 b!81598)))

(assert (=> bs!39858 (not (= lambda!9768 lambda!9690))))

(assert (=> bs!39858 (not (= lambda!9768 lambda!9689))))

(assert (=> bs!39858 (not (= lambda!9768 lambda!9688))))

(declare-fun bs!39859 () Bool)

(assert (= bs!39859 (and b!82114 b!81588)))

(assert (=> bs!39859 (= lambda!9768 lambda!9687)))

(declare-fun bs!39860 () Bool)

(assert (= bs!39860 (and b!82114 b!81776)))

(assert (=> bs!39860 (not (= lambda!9768 lambda!9717))))

(assert (=> bs!39860 (not (= lambda!9768 lambda!9716))))

(assert (=> bs!39860 (not (= lambda!9768 lambda!9715))))

(declare-fun bs!39861 () Bool)

(assert (= bs!39861 (and b!82114 b!81468)))

(assert (=> bs!39861 (= lambda!9768 lambda!9630)))

(declare-fun bs!39862 () Bool)

(assert (= bs!39862 (and b!82114 b!81633)))

(assert (=> bs!39862 (not (= lambda!9768 lambda!9696))))

(assert (=> bs!39862 (not (= lambda!9768 lambda!9695))))

(assert (=> bs!39862 (not (= lambda!9768 lambda!9694))))

(declare-fun bs!39863 () Bool)

(assert (= bs!39863 (and b!82114 b!81687)))

(assert (=> bs!39863 (not (= lambda!9768 lambda!9699))))

(assert (=> bs!39863 (not (= lambda!9768 lambda!9698))))

(assert (=> bs!39863 (not (= lambda!9768 lambda!9697))))

(declare-fun bs!39864 () Bool)

(assert (= bs!39864 (and b!82114 b!81810)))

(assert (=> bs!39864 (not (= lambda!9768 lambda!9726))))

(assert (=> bs!39864 (not (= lambda!9768 lambda!9725))))

(assert (=> bs!39864 (not (= lambda!9768 lambda!9724))))

(assert (=> b!82114 true))

(declare-fun e!44552 () Bool)

(assert (=> d!56157 e!44552))

(declare-fun c!20670 () Bool)

(assert (=> d!56157 (= c!20670 (is-Cons!622 (t!47838 equal!10)))))

(assert (=> d!56157 (forall!20 (t!47838 equal!10) lambda!9766)))

(assert (=> d!56157 (= (forall_eq_implies_le!0 (t!47838 equal!10) (h!991 ls!96)) true)))

(assert (=> b!82113 (= e!44552 (forall!20 (t!47838 equal!10) lambda!9767))))

(declare-fun lt!18920 () Bool)

(assert (=> b!82113 (= lt!18920 (forall_eq_implies_le!0 (t!47838 (t!47838 equal!10)) (h!991 ls!96)))))

(assert (=> b!82114 (= e!44552 (forall!20 (t!47838 equal!10) lambda!9768))))

(assert (= (and d!56157 c!20670) b!82113))

(assert (= (and d!56157 (not c!20670)) b!82114))

(declare-fun m!77652 () Bool)

(assert (=> d!56157 m!77652))

(declare-fun m!77654 () Bool)

(assert (=> b!82113 m!77654))

(declare-fun m!77656 () Bool)

(assert (=> b!82113 m!77656))

(declare-fun m!77658 () Bool)

(assert (=> b!82114 m!77658))

(assert (=> b!81495 d!56157))

(declare-fun d!56159 () Bool)

(declare-fun e!44553 () Bool)

(assert (=> d!56159 e!44553))

(declare-fun c!20671 () Bool)

(assert (=> d!56159 (= c!20671 (is-Cons!622 (t!47838 less!5)))))

(assert (=> d!56159 (forall!20 (t!47838 less!5) lambda!9630)))

(assert (=> d!56159 (= (filter_preserves_forall!0 (t!47838 less!5) lambda!9662 lambda!9630) true)))

(declare-fun b!82115 () Bool)

(assert (=> b!82115 (= e!44553 (forall!20 (filter!18 (t!47838 less!5) lambda!9662) lambda!9630))))

(declare-fun lt!18921 () Bool)

(assert (=> b!82115 (= lt!18921 (filter_preserves_forall!0 (t!47838 (t!47838 less!5)) lambda!9662 lambda!9630))))

(declare-fun b!82116 () Bool)

(assert (=> b!82116 (= e!44553 (forall!20 (filter!18 (t!47838 less!5) lambda!9662) lambda!9630))))

(assert (= (and d!56159 c!20671) b!82115))

(assert (= (and d!56159 (not c!20671)) b!82116))

(assert (=> d!56159 m!76622))

(assert (=> b!82115 m!76400))

(assert (=> b!82115 m!76400))

(declare-fun m!77660 () Bool)

(assert (=> b!82115 m!77660))

(declare-fun m!77662 () Bool)

(assert (=> b!82115 m!77662))

(assert (=> b!82116 m!76400))

(assert (=> b!82116 m!76400))

(assert (=> b!82116 m!77660))

(assert (=> b!81515 d!56159))

(declare-fun b!82117 () Bool)

(declare-fun e!44555 () List!665)

(declare-fun lt!18922 () List!665)

(assert (=> b!82117 (= e!44555 (Cons!622 (h!991 (t!47838 more!5)) lt!18922))))

(declare-fun b!82118 () Bool)

(declare-fun e!44557 () Bool)

(assert (=> b!82118 (= e!44557 (dynLambda!984 lambda!9676 (h!991 (t!47838 more!5))))))

(declare-fun b!82119 () Bool)

(assert (=> b!82119 (= e!44555 lt!18922)))

(declare-fun d!56161 () Bool)

(declare-fun e!44554 () Bool)

(assert (=> d!56161 e!44554))

(declare-fun res!41995 () Bool)

(assert (=> d!56161 (=> (not res!41995) (not e!44554))))

(declare-fun lt!18923 () List!665)

(assert (=> d!56161 (= res!41995 (<= (size!653 lt!18923) (size!653 (t!47838 more!5))))))

(declare-fun e!44556 () List!665)

(assert (=> d!56161 (= lt!18923 e!44556)))

(declare-fun c!20673 () Bool)

(assert (=> d!56161 (= c!20673 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56161 (= (filter!18 (t!47838 more!5) lambda!9676) lt!18923)))

(declare-fun b!82120 () Bool)

(declare-fun res!41993 () Bool)

(assert (=> b!82120 (=> (not res!41993) (not e!44554))))

(assert (=> b!82120 (= res!41993 (subset (content!124 lt!18923) (content!124 (t!47838 more!5))))))

(declare-fun b!82121 () Bool)

(assert (=> b!82121 (= e!44556 Nil!624)))

(declare-fun b!82122 () Bool)

(assert (=> b!82122 (= e!44554 (forall!20 lt!18923 lambda!9676))))

(declare-fun b!82123 () Bool)

(assert (=> b!82123 (= e!44556 e!44555)))

(declare-fun c!20672 () Bool)

(assert (=> b!82123 (= c!20672 e!44557)))

(declare-fun res!41994 () Bool)

(assert (=> b!82123 (=> (not res!41994) (not e!44557))))

(assert (=> b!82123 (= res!41994 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!82123 (= lt!18922 (filter!18 (t!47838 (t!47838 more!5)) lambda!9676))))

(assert (= (and b!82123 res!41994) b!82118))

(assert (= (and b!82123 c!20672) b!82117))

(assert (= (and b!82123 (not c!20672)) b!82119))

(assert (= (and d!56161 c!20673) b!82121))

(assert (= (and d!56161 (not c!20673)) b!82123))

(assert (= (and d!56161 res!41995) b!82120))

(assert (= (and b!82120 res!41993) b!82122))

(declare-fun b_lambda!16189 () Bool)

(assert (=> (not b_lambda!16189) (not b!82118)))

(declare-fun m!77664 () Bool)

(assert (=> b!82122 m!77664))

(declare-fun m!77666 () Bool)

(assert (=> b!82120 m!77666))

(assert (=> b!82120 m!77082))

(declare-fun m!77668 () Bool)

(assert (=> b!82118 m!77668))

(declare-fun m!77670 () Bool)

(assert (=> d!56161 m!77670))

(assert (=> d!56161 m!77088))

(declare-fun m!77672 () Bool)

(assert (=> b!82123 m!77672))

(assert (=> b!81560 d!56161))

(assert (=> b!81560 d!55939))

(declare-fun b!82124 () Bool)

(declare-fun e!44559 () List!665)

(declare-fun lt!18924 () List!665)

(assert (=> b!82124 (= e!44559 (Cons!622 (h!991 (t!47838 more!5)) lt!18924))))

(declare-fun b!82125 () Bool)

(declare-fun e!44561 () Bool)

(assert (=> b!82125 (= e!44561 (dynLambda!984 lambda!9678 (h!991 (t!47838 more!5))))))

(declare-fun b!82126 () Bool)

(assert (=> b!82126 (= e!44559 lt!18924)))

(declare-fun d!56163 () Bool)

(declare-fun e!44558 () Bool)

(assert (=> d!56163 e!44558))

(declare-fun res!41998 () Bool)

(assert (=> d!56163 (=> (not res!41998) (not e!44558))))

(declare-fun lt!18925 () List!665)

(assert (=> d!56163 (= res!41998 (<= (size!653 lt!18925) (size!653 (t!47838 more!5))))))

(declare-fun e!44560 () List!665)

(assert (=> d!56163 (= lt!18925 e!44560)))

(declare-fun c!20675 () Bool)

(assert (=> d!56163 (= c!20675 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56163 (= (filter!18 (t!47838 more!5) lambda!9678) lt!18925)))

(declare-fun b!82127 () Bool)

(declare-fun res!41996 () Bool)

(assert (=> b!82127 (=> (not res!41996) (not e!44558))))

(assert (=> b!82127 (= res!41996 (subset (content!124 lt!18925) (content!124 (t!47838 more!5))))))

(declare-fun b!82128 () Bool)

(assert (=> b!82128 (= e!44560 Nil!624)))

(declare-fun b!82129 () Bool)

(assert (=> b!82129 (= e!44558 (forall!20 lt!18925 lambda!9678))))

(declare-fun b!82130 () Bool)

(assert (=> b!82130 (= e!44560 e!44559)))

(declare-fun c!20674 () Bool)

(assert (=> b!82130 (= c!20674 e!44561)))

(declare-fun res!41997 () Bool)

(assert (=> b!82130 (=> (not res!41997) (not e!44561))))

(assert (=> b!82130 (= res!41997 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!82130 (= lt!18924 (filter!18 (t!47838 (t!47838 more!5)) lambda!9678))))

(assert (= (and b!82130 res!41997) b!82125))

(assert (= (and b!82130 c!20674) b!82124))

(assert (= (and b!82130 (not c!20674)) b!82126))

(assert (= (and d!56163 c!20675) b!82128))

(assert (= (and d!56163 (not c!20675)) b!82130))

(assert (= (and d!56163 res!41998) b!82127))

(assert (= (and b!82127 res!41996) b!82129))

(declare-fun b_lambda!16191 () Bool)

(assert (=> (not b_lambda!16191) (not b!82125)))

(declare-fun m!77674 () Bool)

(assert (=> b!82129 m!77674))

(declare-fun m!77676 () Bool)

(assert (=> b!82127 m!77676))

(assert (=> b!82127 m!77082))

(declare-fun m!77678 () Bool)

(assert (=> b!82125 m!77678))

(declare-fun m!77680 () Bool)

(assert (=> d!56163 m!77680))

(assert (=> d!56163 m!77088))

(declare-fun m!77682 () Bool)

(assert (=> b!82130 m!77682))

(assert (=> b!81560 d!56163))

(declare-fun b!82131 () Bool)

(declare-fun e!44563 () List!665)

(declare-fun lt!18926 () List!665)

(assert (=> b!82131 (= e!44563 (Cons!622 (h!991 (t!47838 more!5)) lt!18926))))

(declare-fun b!82132 () Bool)

(declare-fun e!44565 () Bool)

(assert (=> b!82132 (= e!44565 (dynLambda!984 lambda!9677 (h!991 (t!47838 more!5))))))

(declare-fun b!82133 () Bool)

(assert (=> b!82133 (= e!44563 lt!18926)))

(declare-fun d!56165 () Bool)

(declare-fun e!44562 () Bool)

(assert (=> d!56165 e!44562))

(declare-fun res!42001 () Bool)

(assert (=> d!56165 (=> (not res!42001) (not e!44562))))

(declare-fun lt!18927 () List!665)

(assert (=> d!56165 (= res!42001 (<= (size!653 lt!18927) (size!653 (t!47838 more!5))))))

(declare-fun e!44564 () List!665)

(assert (=> d!56165 (= lt!18927 e!44564)))

(declare-fun c!20677 () Bool)

(assert (=> d!56165 (= c!20677 (is-Nil!624 (t!47838 more!5)))))

(assert (=> d!56165 (= (filter!18 (t!47838 more!5) lambda!9677) lt!18927)))

(declare-fun b!82134 () Bool)

(declare-fun res!41999 () Bool)

(assert (=> b!82134 (=> (not res!41999) (not e!44562))))

(assert (=> b!82134 (= res!41999 (subset (content!124 lt!18927) (content!124 (t!47838 more!5))))))

(declare-fun b!82135 () Bool)

(assert (=> b!82135 (= e!44564 Nil!624)))

(declare-fun b!82136 () Bool)

(assert (=> b!82136 (= e!44562 (forall!20 lt!18927 lambda!9677))))

(declare-fun b!82137 () Bool)

(assert (=> b!82137 (= e!44564 e!44563)))

(declare-fun c!20676 () Bool)

(assert (=> b!82137 (= c!20676 e!44565)))

(declare-fun res!42000 () Bool)

(assert (=> b!82137 (=> (not res!42000) (not e!44565))))

(assert (=> b!82137 (= res!42000 (is-Cons!622 (t!47838 more!5)))))

(assert (=> b!82137 (= lt!18926 (filter!18 (t!47838 (t!47838 more!5)) lambda!9677))))

(assert (= (and b!82137 res!42000) b!82132))

(assert (= (and b!82137 c!20676) b!82131))

(assert (= (and b!82137 (not c!20676)) b!82133))

(assert (= (and d!56165 c!20677) b!82135))

(assert (= (and d!56165 (not c!20677)) b!82137))

(assert (= (and d!56165 res!42001) b!82134))

(assert (= (and b!82134 res!41999) b!82136))

(declare-fun b_lambda!16193 () Bool)

(assert (=> (not b_lambda!16193) (not b!82132)))

(declare-fun m!77684 () Bool)

(assert (=> b!82136 m!77684))

(declare-fun m!77686 () Bool)

(assert (=> b!82134 m!77686))

(assert (=> b!82134 m!77082))

(declare-fun m!77688 () Bool)

(assert (=> b!82132 m!77688))

(declare-fun m!77690 () Bool)

(assert (=> d!56165 m!77690))

(assert (=> d!56165 m!77088))

(declare-fun m!77692 () Bool)

(assert (=> b!82137 m!77692))

(assert (=> b!81560 d!56165))

(declare-fun b!82138 () Bool)

(declare-fun res!42004 () Bool)

(declare-fun e!44567 () Bool)

(assert (=> b!82138 (=> (not res!42004) (not e!44567))))

(assert (=> b!82138 (= res!42004 (isSorted!1 lt!18753))))

(declare-fun d!56167 () Bool)

(declare-fun e!44566 () Bool)

(assert (=> d!56167 e!44566))

(declare-fun c!20678 () Bool)

(assert (=> d!56167 (= c!20678 (is-Cons!622 (quickSort!0 lt!18752)))))

(assert (=> d!56167 e!44567))

(declare-fun res!42002 () Bool)

(assert (=> d!56167 (=> (not res!42002) (not e!44567))))

(assert (=> d!56167 (= res!42002 (isSorted!1 (quickSort!0 lt!18752)))))

(assert (=> d!56167 (= (append_sorted!0 (quickSort!0 lt!18752) lt!18753) true)))

(declare-fun b!82139 () Bool)

(declare-fun res!42003 () Bool)

(declare-fun e!44568 () Bool)

(assert (=> b!82139 (=> res!42003 e!44568)))

(assert (=> b!82139 (= res!42003 (isEmpty!677 lt!18753))))

(declare-fun b!82140 () Bool)

(assert (=> b!82140 (= e!44566 (isSorted!1 (++!73 (quickSort!0 lt!18752) lt!18753)))))

(declare-fun lt!18928 () Bool)

(assert (=> b!82140 (= lt!18928 (append_sorted!0 (t!47838 (quickSort!0 lt!18752)) lt!18753))))

(declare-fun b!82141 () Bool)

(assert (=> b!82141 (= e!44568 (<= (last!17 (quickSort!0 lt!18752)) (head!1055 lt!18753)))))

(declare-fun b!82142 () Bool)

(assert (=> b!82142 (= e!44567 e!44568)))

(declare-fun res!42005 () Bool)

(assert (=> b!82142 (=> res!42005 e!44568)))

(assert (=> b!82142 (= res!42005 (isEmpty!677 (quickSort!0 lt!18752)))))

(declare-fun b!82143 () Bool)

(assert (=> b!82143 (= e!44566 (isSorted!1 (++!73 (quickSort!0 lt!18752) lt!18753)))))

(assert (= (and d!56167 res!42002) b!82138))

(assert (= (and b!82138 res!42004) b!82142))

(assert (= (and b!82142 (not res!42005)) b!82139))

(assert (= (and b!82139 (not res!42003)) b!82141))

(assert (= (and d!56167 c!20678) b!82140))

(assert (= (and d!56167 (not c!20678)) b!82143))

(declare-fun m!77694 () Bool)

(assert (=> b!82138 m!77694))

(assert (=> b!82140 m!76480))

(assert (=> b!82140 m!76488))

(assert (=> b!82140 m!76488))

(assert (=> b!82140 m!76724))

(declare-fun m!77696 () Bool)

(assert (=> b!82140 m!77696))

(assert (=> b!82142 m!76480))

(declare-fun m!77698 () Bool)

(assert (=> b!82142 m!77698))

(declare-fun m!77700 () Bool)

(assert (=> b!82139 m!77700))

(assert (=> b!82143 m!76480))

(assert (=> b!82143 m!76488))

(assert (=> b!82143 m!76488))

(assert (=> b!82143 m!76724))

(assert (=> b!82141 m!76480))

(declare-fun m!77702 () Bool)

(assert (=> b!82141 m!77702))

(declare-fun m!77704 () Bool)

(assert (=> b!82141 m!77704))

(assert (=> d!56167 m!76480))

(declare-fun m!77706 () Bool)

(assert (=> d!56167 m!77706))

(assert (=> b!81560 d!56167))

(declare-fun b_lambda!16195 () Bool)

(assert (= b_lambda!16181 (or b!81517 b_lambda!16195)))

(declare-fun bs!39865 () Bool)

(declare-fun d!56169 () Bool)

(assert (= bs!39865 (and d!56169 b!81517)))

(assert (=> bs!39865 (= (dynLambda!984 lambda!9663 (h!991 (t!47838 less!5))) (> (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!82081 d!56169))

(declare-fun b_lambda!16197 () Bool)

(assert (= b_lambda!16147 (or b!81466 b_lambda!16197)))

(declare-fun bs!39866 () Bool)

(declare-fun d!56171 () Bool)

(assert (= bs!39866 (and d!56171 b!81466)))

(assert (=> bs!39866 (= (dynLambda!984 lambda!9629 (h!991 lt!18760)) (> (h!991 lt!18760) (h!991 ls!96)))))

(assert (=> b!81931 d!56171))

(declare-fun b_lambda!16199 () Bool)

(assert (= b_lambda!16105 (or b!81462 b_lambda!16199)))

(declare-fun bs!39867 () Bool)

(declare-fun d!56173 () Bool)

(assert (= bs!39867 (and d!56173 b!81462)))

(assert (=> bs!39867 (= (dynLambda!984 lambda!9627 (h!991 (quickSort!0 less!5))) (< (h!991 (quickSort!0 less!5)) (h!991 ls!96)))))

(assert (=> b!81667 d!56173))

(declare-fun b_lambda!16201 () Bool)

(assert (= b_lambda!16141 (or b!81468 b_lambda!16201)))

(declare-fun bs!39868 () Bool)

(declare-fun d!56175 () Bool)

(assert (= bs!39868 (and d!56175 b!81468)))

(assert (=> bs!39868 (= (dynLambda!984 lambda!9630 (h!991 (++!73 (quickSort!0 less!5) equal!10))) (<= (h!991 (++!73 (quickSort!0 less!5) equal!10)) (h!991 ls!96)))))

(assert (=> b!81902 d!56175))

(declare-fun b_lambda!16203 () Bool)

(assert (= b_lambda!16169 (or b!81462 b_lambda!16203)))

(declare-fun bs!39869 () Bool)

(declare-fun d!56177 () Bool)

(assert (= bs!39869 (and d!56177 b!81462)))

(assert (=> bs!39869 (= (dynLambda!984 lambda!9627 (h!991 less!5)) (< (h!991 less!5) (h!991 ls!96)))))

(assert (=> b!82031 d!56177))

(declare-fun b_lambda!16205 () Bool)

(assert (= b_lambda!16175 (or b!81460 b_lambda!16205)))

(declare-fun bs!39870 () Bool)

(declare-fun d!56179 () Bool)

(assert (= bs!39870 (and d!56179 b!81460)))

(assert (=> bs!39870 (= (dynLambda!984 lambda!9628 (h!991 lt!18787)) (= (h!991 lt!18787) (h!991 ls!96)))))

(assert (=> b!82048 d!56179))

(declare-fun b_lambda!16207 () Bool)

(assert (= b_lambda!16131 (or b!81490 b_lambda!16207)))

(declare-fun bs!39871 () Bool)

(declare-fun d!56181 () Bool)

(assert (= bs!39871 (and d!56181 b!81490)))

(assert (=> bs!39871 (= (dynLambda!984 lambda!9637 (h!991 (t!47838 more!5))) (< (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!81854 d!56181))

(declare-fun b_lambda!16209 () Bool)

(assert (= b_lambda!16149 (or d!55883 b_lambda!16209)))

(declare-fun bs!39872 () Bool)

(declare-fun d!56183 () Bool)

(assert (= bs!39872 (and d!56183 d!55883)))

(assert (=> bs!39872 (= (dynLambda!984 lambda!9685 (h!991 less!5)) (< (h!991 less!5) (h!991 ls!96)))))

(assert (=> b!81941 d!56183))

(declare-fun b_lambda!16211 () Bool)

(assert (= b_lambda!16157 (or b!81466 b_lambda!16211)))

(declare-fun bs!39873 () Bool)

(declare-fun d!56185 () Bool)

(assert (= bs!39873 (and d!56185 b!81466)))

(assert (=> bs!39873 (= (dynLambda!984 lambda!9629 (h!991 (quickSort!0 more!5))) (> (h!991 (quickSort!0 more!5)) (h!991 ls!96)))))

(assert (=> b!81991 d!56185))

(declare-fun b_lambda!16213 () Bool)

(assert (= b_lambda!16153 (or b!81468 b_lambda!16213)))

(declare-fun bs!39874 () Bool)

(declare-fun d!56187 () Bool)

(assert (= bs!39874 (and d!56187 b!81468)))

(assert (=> bs!39874 (= (dynLambda!984 lambda!9630 (last!17 (t!47838 (++!73 (quickSort!0 less!5) equal!10)))) (<= (last!17 (t!47838 (++!73 (quickSort!0 less!5) equal!10))) (h!991 ls!96)))))

(assert (=> b!81983 d!56187))

(declare-fun b_lambda!16215 () Bool)

(assert (= b_lambda!16177 (or b!81468 b_lambda!16215)))

(declare-fun bs!39875 () Bool)

(declare-fun d!56189 () Bool)

(assert (= bs!39875 (and d!56189 b!81468)))

(assert (=> bs!39875 (= (dynLambda!984 lambda!9630 (h!991 equal!10)) (<= (h!991 equal!10) (h!991 ls!96)))))

(assert (=> b!82050 d!56189))

(declare-fun b_lambda!16217 () Bool)

(assert (= b_lambda!16183 (or b!81517 b_lambda!16217)))

(declare-fun bs!39876 () Bool)

(declare-fun d!56191 () Bool)

(assert (= bs!39876 (and d!56191 b!81517)))

(assert (=> bs!39876 (= (dynLambda!984 lambda!9661 (h!991 (t!47838 less!5))) (< (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!82088 d!56191))

(declare-fun b_lambda!16219 () Bool)

(assert (= b_lambda!16173 (or b!81496 b_lambda!16219)))

(declare-fun bs!39877 () Bool)

(declare-fun d!56193 () Bool)

(assert (= bs!39877 (and d!56193 b!81496)))

(assert (=> bs!39877 (= (dynLambda!984 lambda!9648 (h!991 equal!10)) (<= (h!991 equal!10) (h!991 ls!96)))))

(assert (=> b!82046 d!56193))

(declare-fun b_lambda!16221 () Bool)

(assert (= b_lambda!16109 (or b!81462 b_lambda!16221)))

(declare-fun bs!39878 () Bool)

(declare-fun d!56195 () Bool)

(assert (= bs!39878 (and d!56195 b!81462)))

(assert (=> bs!39878 (= (dynLambda!984 lambda!9627 (last!17 (t!47838 (quickSort!0 less!5)))) (< (last!17 (t!47838 (quickSort!0 less!5))) (h!991 ls!96)))))

(assert (=> b!81674 d!56195))

(declare-fun b_lambda!16223 () Bool)

(assert (= b_lambda!16119 (or b!81468 b_lambda!16223)))

(declare-fun bs!39879 () Bool)

(declare-fun d!56197 () Bool)

(assert (= bs!39879 (and d!56197 b!81468)))

(assert (=> bs!39879 (= (dynLambda!984 lambda!9630 (h!991 (quickSort!0 less!5))) (<= (h!991 (quickSort!0 less!5)) (h!991 ls!96)))))

(assert (=> b!81781 d!56197))

(declare-fun b_lambda!16225 () Bool)

(assert (= b_lambda!16137 (or b!81522 b_lambda!16225)))

(declare-fun bs!39880 () Bool)

(declare-fun d!56199 () Bool)

(assert (= bs!39880 (and d!56199 b!81522)))

(assert (=> bs!39880 (= (dynLambda!984 lambda!9666 (h!991 (t!47838 more!5))) (> (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!81877 d!56199))

(declare-fun b_lambda!16227 () Bool)

(assert (= b_lambda!16155 (or b!81462 b_lambda!16227)))

(declare-fun bs!39881 () Bool)

(declare-fun d!56201 () Bool)

(assert (= bs!39881 (and d!56201 b!81462)))

(assert (=> bs!39881 (= (dynLambda!984 lambda!9627 (h!991 (t!47838 (t!47838 ls!96)))) (< (h!991 (t!47838 (t!47838 ls!96))) (h!991 ls!96)))))

(assert (=> b!81985 d!56201))

(declare-fun b_lambda!16229 () Bool)

(assert (= b_lambda!16167 (or b!81460 b_lambda!16229)))

(declare-fun bs!39882 () Bool)

(declare-fun d!56203 () Bool)

(assert (= bs!39882 (and d!56203 b!81460)))

(assert (=> bs!39882 (= (dynLambda!984 lambda!9628 (h!991 (t!47838 (t!47838 ls!96)))) (= (h!991 (t!47838 (t!47838 ls!96))) (h!991 ls!96)))))

(assert (=> b!82025 d!56203))

(declare-fun b_lambda!16231 () Bool)

(assert (= b_lambda!16193 (or b!81560 b_lambda!16231)))

(declare-fun bs!39883 () Bool)

(declare-fun d!56205 () Bool)

(assert (= bs!39883 (and d!56205 b!81560)))

(assert (=> bs!39883 (= (dynLambda!984 lambda!9677 (h!991 (t!47838 more!5))) (= (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!82132 d!56205))

(declare-fun b_lambda!16233 () Bool)

(assert (= b_lambda!16115 (or b!81537 b_lambda!16233)))

(declare-fun bs!39884 () Bool)

(declare-fun d!56207 () Bool)

(assert (= bs!39884 (and d!56207 b!81537)))

(assert (=> bs!39884 (= (dynLambda!984 lambda!9667 (h!991 (t!47838 less!5))) (< (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81748 d!56207))

(declare-fun b_lambda!16235 () Bool)

(assert (= b_lambda!16103 (or b!81466 b_lambda!16235)))

(declare-fun bs!39885 () Bool)

(declare-fun d!56209 () Bool)

(assert (= bs!39885 (and d!56209 b!81466)))

(assert (=> bs!39885 (= (dynLambda!984 lambda!9629 (h!991 (t!47838 (t!47838 ls!96)))) (> (h!991 (t!47838 (t!47838 ls!96))) (h!991 ls!96)))))

(assert (=> b!81657 d!56209))

(declare-fun b_lambda!16237 () Bool)

(assert (= b_lambda!16163 (or b!81633 b_lambda!16237)))

(declare-fun bs!39886 () Bool)

(declare-fun d!56211 () Bool)

(assert (= bs!39886 (and d!56211 b!81633)))

(assert (=> bs!39886 (= (dynLambda!984 lambda!9696 (h!991 (t!47838 less!5))) (> (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!82003 d!56211))

(declare-fun b_lambda!16239 () Bool)

(assert (= b_lambda!16121 (or b!81468 b_lambda!16239)))

(declare-fun bs!39887 () Bool)

(declare-fun d!56213 () Bool)

(assert (= bs!39887 (and d!56213 b!81468)))

(assert (=> bs!39887 (= (dynLambda!984 lambda!9630 (h!991 less!5)) (<= (h!991 less!5) (h!991 ls!96)))))

(assert (=> b!81783 d!56213))

(declare-fun b_lambda!16241 () Bool)

(assert (= b_lambda!16179 (or d!55861 b_lambda!16241)))

(declare-fun bs!39888 () Bool)

(declare-fun d!56215 () Bool)

(assert (= bs!39888 (and d!56215 d!55861)))

(assert (=> bs!39888 (= (dynLambda!984 lambda!9646 (h!991 equal!10)) (= (h!991 equal!10) (h!991 ls!96)))))

(assert (=> b!82054 d!56215))

(declare-fun b_lambda!16243 () Bool)

(assert (= b_lambda!16143 (or b!81587 b_lambda!16243)))

(declare-fun bs!39889 () Bool)

(declare-fun d!56217 () Bool)

(assert (= bs!39889 (and d!56217 b!81587)))

(assert (=> bs!39889 (= (dynLambda!984 lambda!9686 (h!991 less!5)) (<= (h!991 less!5) (h!991 ls!96)))))

(assert (=> b!81904 d!56217))

(declare-fun b_lambda!16245 () Bool)

(assert (= b_lambda!16123 (or b!81598 b_lambda!16245)))

(declare-fun bs!39890 () Bool)

(declare-fun d!56219 () Bool)

(assert (= bs!39890 (and d!56219 b!81598)))

(assert (=> bs!39890 (= (dynLambda!984 lambda!9689 (h!991 (t!47838 less!5))) (= (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81786 d!56219))

(declare-fun b_lambda!16247 () Bool)

(assert (= b_lambda!16111 (or b!81588 b_lambda!16247)))

(declare-fun bs!39891 () Bool)

(declare-fun d!56221 () Bool)

(assert (= bs!39891 (and d!56221 b!81588)))

(assert (=> bs!39891 (= (dynLambda!984 lambda!9687 (h!991 less!5)) (<= (h!991 less!5) (h!991 ls!96)))))

(assert (=> b!81710 d!56221))

(declare-fun b_lambda!16249 () Bool)

(assert (= b_lambda!16129 (or b!81490 b_lambda!16249)))

(declare-fun bs!39892 () Bool)

(declare-fun d!56223 () Bool)

(assert (= bs!39892 (and d!56223 b!81490)))

(assert (=> bs!39892 (= (dynLambda!984 lambda!9638 (h!991 (t!47838 more!5))) (= (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!81843 d!56223))

(declare-fun b_lambda!16251 () Bool)

(assert (= b_lambda!16187 (or b!81495 b_lambda!16251)))

(declare-fun bs!39893 () Bool)

(declare-fun d!56225 () Bool)

(assert (= bs!39893 (and d!56225 b!81495)))

(assert (=> bs!39893 (= (dynLambda!984 lambda!9647 (h!991 equal!10)) (<= (h!991 equal!10) (h!991 ls!96)))))

(assert (=> b!82111 d!56225))

(declare-fun b_lambda!16253 () Bool)

(assert (= b_lambda!16171 (or b!81462 b_lambda!16253)))

(declare-fun bs!39894 () Bool)

(declare-fun d!56227 () Bool)

(assert (= bs!39894 (and d!56227 b!81462)))

(assert (=> bs!39894 (= (dynLambda!984 lambda!9627 (h!991 lt!18765)) (< (h!991 lt!18765) (h!991 ls!96)))))

(assert (=> b!82042 d!56227))

(declare-fun b_lambda!16255 () Bool)

(assert (= b_lambda!16189 (or b!81560 b_lambda!16255)))

(declare-fun bs!39895 () Bool)

(declare-fun d!56229 () Bool)

(assert (= bs!39895 (and d!56229 b!81560)))

(assert (=> bs!39895 (= (dynLambda!984 lambda!9676 (h!991 (t!47838 more!5))) (< (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!82118 d!56229))

(declare-fun b_lambda!16257 () Bool)

(assert (= b_lambda!16165 (or b!81633 b_lambda!16257)))

(declare-fun bs!39896 () Bool)

(declare-fun d!56231 () Bool)

(assert (= bs!39896 (and d!56231 b!81633)))

(assert (=> bs!39896 (= (dynLambda!984 lambda!9694 (h!991 (t!47838 less!5))) (< (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!82016 d!56231))

(declare-fun b_lambda!16259 () Bool)

(assert (= b_lambda!16145 (or d!55889 b_lambda!16259)))

(declare-fun bs!39897 () Bool)

(declare-fun d!56233 () Bool)

(assert (= bs!39897 (and d!56233 d!55889)))

(assert (=> bs!39897 (= (dynLambda!984 lambda!9693 (h!991 (t!47838 ls!96))) (= (h!991 (t!47838 ls!96)) (h!991 ls!96)))))

(assert (=> b!81911 d!56233))

(declare-fun b_lambda!16261 () Bool)

(assert (= b_lambda!16139 (or b!81522 b_lambda!16261)))

(declare-fun bs!39898 () Bool)

(declare-fun d!56235 () Bool)

(assert (= bs!39898 (and d!56235 b!81522)))

(assert (=> bs!39898 (= (dynLambda!984 lambda!9665 (h!991 (t!47838 more!5))) (= (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!81892 d!56235))

(declare-fun b_lambda!16263 () Bool)

(assert (= b_lambda!16151 (or b!81468 b_lambda!16263)))

(assert (=> b!81982 d!56187))

(declare-fun b_lambda!16265 () Bool)

(assert (= b_lambda!16127 (or b!81598 b_lambda!16265)))

(declare-fun bs!39899 () Bool)

(declare-fun d!56237 () Bool)

(assert (= bs!39899 (and d!56237 b!81598)))

(assert (=> bs!39899 (= (dynLambda!984 lambda!9690 (h!991 (t!47838 less!5))) (> (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81814 d!56237))

(declare-fun b_lambda!16267 () Bool)

(assert (= b_lambda!16161 (or b!81633 b_lambda!16267)))

(declare-fun bs!39900 () Bool)

(declare-fun d!56239 () Bool)

(assert (= bs!39900 (and d!56239 b!81633)))

(assert (=> bs!39900 (= (dynLambda!984 lambda!9695 (h!991 (t!47838 less!5))) (= (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81996 d!56239))

(declare-fun b_lambda!16269 () Bool)

(assert (= b_lambda!16133 (or b!81490 b_lambda!16269)))

(declare-fun bs!39901 () Bool)

(declare-fun d!56241 () Bool)

(assert (= bs!39901 (and d!56241 b!81490)))

(assert (=> bs!39901 (= (dynLambda!984 lambda!9639 (h!991 (t!47838 more!5))) (> (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!81861 d!56241))

(declare-fun b_lambda!16271 () Bool)

(assert (= b_lambda!16135 (or b!81522 b_lambda!16271)))

(declare-fun bs!39902 () Bool)

(declare-fun d!56243 () Bool)

(assert (= bs!39902 (and d!56243 b!81522)))

(assert (=> bs!39902 (= (dynLambda!984 lambda!9664 (h!991 (t!47838 more!5))) (< (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!81870 d!56243))

(declare-fun b_lambda!16273 () Bool)

(assert (= b_lambda!16185 (or b!81517 b_lambda!16273)))

(declare-fun bs!39903 () Bool)

(declare-fun d!56245 () Bool)

(assert (= bs!39903 (and d!56245 b!81517)))

(assert (=> bs!39903 (= (dynLambda!984 lambda!9662 (h!991 (t!47838 less!5))) (= (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!82103 d!56245))

(declare-fun b_lambda!16275 () Bool)

(assert (= b_lambda!16113 (or b!81537 b_lambda!16275)))

(declare-fun bs!39904 () Bool)

(declare-fun d!56247 () Bool)

(assert (= bs!39904 (and d!56247 b!81537)))

(assert (=> bs!39904 (= (dynLambda!984 lambda!9669 (h!991 (t!47838 less!5))) (> (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81725 d!56247))

(declare-fun b_lambda!16277 () Bool)

(assert (= b_lambda!16107 (or b!81462 b_lambda!16277)))

(assert (=> b!81673 d!56195))

(declare-fun b_lambda!16279 () Bool)

(assert (= b_lambda!16191 (or b!81560 b_lambda!16279)))

(declare-fun bs!39905 () Bool)

(declare-fun d!56249 () Bool)

(assert (= bs!39905 (and d!56249 b!81560)))

(assert (=> bs!39905 (= (dynLambda!984 lambda!9678 (h!991 (t!47838 more!5))) (> (h!991 (t!47838 more!5)) (h!991 more!5)))))

(assert (=> b!82125 d!56249))

(declare-fun b_lambda!16281 () Bool)

(assert (= b_lambda!16159 (or b!81466 b_lambda!16281)))

(declare-fun bs!39906 () Bool)

(declare-fun d!56251 () Bool)

(assert (= bs!39906 (and d!56251 b!81466)))

(assert (=> bs!39906 (= (dynLambda!984 lambda!9629 (h!991 more!5)) (> (h!991 more!5) (h!991 ls!96)))))

(assert (=> b!81993 d!56251))

(declare-fun b_lambda!16283 () Bool)

(assert (= b_lambda!16125 (or b!81598 b_lambda!16283)))

(declare-fun bs!39907 () Bool)

(declare-fun d!56253 () Bool)

(assert (= bs!39907 (and d!56253 b!81598)))

(assert (=> bs!39907 (= (dynLambda!984 lambda!9688 (h!991 (t!47838 less!5))) (< (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81793 d!56253))

(declare-fun b_lambda!16285 () Bool)

(assert (= b_lambda!16117 (or b!81537 b_lambda!16285)))

(declare-fun bs!39908 () Bool)

(declare-fun d!56255 () Bool)

(assert (= bs!39908 (and d!56255 b!81537)))

(assert (=> bs!39908 (= (dynLambda!984 lambda!9668 (h!991 (t!47838 less!5))) (= (h!991 (t!47838 less!5)) (h!991 less!5)))))

(assert (=> b!81755 d!56255))

(push 1)

(assert (not b!81720))

(assert (not b!82083))

(assert (not b!82061))

(assert (not b!81681))

(assert (not b_lambda!16273))

(assert (not b!81950))

(assert (not d!55993))

(assert (not b_lambda!16249))

(assert (not b_lambda!16203))

(assert (not d!56107))

(assert (not b!81883))

(assert (not b_lambda!16285))

(assert (not d!56043))

(assert (not b!82038))

(assert (not b!81790))

(assert (not b!82086))

(assert (not b!82058))

(assert (not b_lambda!16235))

(assert (not b!81907))

(assert (not b!81709))

(assert (not b_lambda!16201))

(assert (not b!81653))

(assert (not d!55963))

(assert (not b!81771))

(assert (not d!55999))

(assert (not d!55991))

(assert (not d!55987))

(assert (not b!81659))

(assert (not b_lambda!16195))

(assert (not b!81978))

(assert (not b!81901))

(assert (not b!81909))

(assert (not b!81922))

(assert (not b!81845))

(assert (not b!81697))

(assert (not b!82138))

(assert (not b!81705))

(assert (not b!81992))

(assert (not b!82018))

(assert (not b!81888))

(assert (not b!81896))

(assert (not b!82130))

(assert (not b!82101))

(assert (not d!56159))

(assert (not b!81750))

(assert (not d!56103))

(assert (not b!81947))

(assert (not d!55965))

(assert (not b!81742))

(assert (not b_lambda!16239))

(assert (not b!82037))

(assert (not b!81913))

(assert (not b!82013))

(assert (not b!81669))

(assert (not d!56011))

(assert (not d!55967))

(assert (not b!82085))

(assert (not b_lambda!16245))

(assert (not b!81801))

(assert (not d!55935))

(assert (not b!82140))

(assert (not d!55927))

(assert (not d!56167))

(assert (not b!81682))

(assert (not b!81975))

(assert (not b!81670))

(assert (not b!82055))

(assert (not b!82109))

(assert (not b!81811))

(assert (not b!82116))

(assert (not b!81662))

(assert (not b_lambda!16209))

(assert (not b_lambda!16197))

(assert (not b!81932))

(assert (not b!81767))

(assert (not b!81915))

(assert (not b!81687))

(assert (not d!56147))

(assert (not d!56131))

(assert (not b!81695))

(assert (not b!82097))

(assert (not b!81714))

(assert (not d!56153))

(assert (not b!81752))

(assert (not b!82053))

(assert (not b!81713))

(assert (not b!81897))

(assert (not b!81940))

(assert (not b!81719))

(assert (not b!81696))

(assert (not b!82137))

(assert (not b!82011))

(assert (not b!82032))

(assert (not d!56021))

(assert (not b!81994))

(assert (not d!56157))

(assert (not b!81654))

(assert (not b!81936))

(assert (not d!56029))

(assert (not b!82043))

(assert (not b_lambda!16089))

(assert (not d!56019))

(assert (not b!81887))

(assert (not b!81678))

(assert (not b!81797))

(assert (not b!82057))

(assert (not b!82035))

(assert (not b_lambda!16205))

(assert (not b!81934))

(assert (not b!82143))

(assert (not b!81744))

(assert (not b!82129))

(assert (not b!81972))

(assert (not b_lambda!16213))

(assert (not d!56025))

(assert (not b!81966))

(assert (not b!82141))

(assert (not b!81764))

(assert (not b_lambda!16093))

(assert (not b!81691))

(assert (not b!81858))

(assert (not d!56135))

(assert (not d!56113))

(assert (not b!81962))

(assert (not d!55915))

(assert (not b!81827))

(assert (not b!82092))

(assert (not d!56165))

(assert (not b!82107))

(assert (not b!82105))

(assert (not d!56069))

(assert (not b!81886))

(assert (not b!82065))

(assert (not b!81868))

(assert (not d!55997))

(assert (not b!82000))

(assert (not b!81930))

(assert (not b!81694))

(assert (not b!81766))

(assert (not b!81885))

(assert (not b!81668))

(assert (not b!81805))

(assert (not b!81979))

(assert (not b!81799))

(assert (not b!81782))

(assert (not b!82079))

(assert (not b!82096))

(assert (not b!82142))

(assert (not b!81951))

(assert (not b!81989))

(assert (not b_lambda!16229))

(assert (not b!81804))

(assert (not b!81760))

(assert (not d!55953))

(assert (not b!81866))

(assert (not b!82040))

(assert (not b_lambda!16219))

(assert (not b!81942))

(assert (not b!81859))

(assert (not b!82008))

(assert (not d!55929))

(assert (not b!81955))

(assert (not b_lambda!16237))

(assert (not b!81679))

(assert (not d!56077))

(assert (not b_lambda!16283))

(assert (not b_lambda!16095))

(assert (not b_lambda!16099))

(assert (not b!81831))

(assert (not b!81944))

(assert (not d!56007))

(assert (not b!81798))

(assert (not d!56031))

(assert (not b!81949))

(assert (not b!81812))

(assert (not b!81982))

(assert (not b!81816))

(assert (not d!56143))

(assert (not b_lambda!16261))

(assert (not b!81829))

(assert (not b!81753))

(assert (not b!82100))

(assert (not b!81722))

(assert (not b!82049))

(assert (not b_lambda!16253))

(assert (not b!81825))

(assert (not b!81889))

(assert (not b!82001))

(assert (not b!81872))

(assert (not b!81736))

(assert (not b!81928))

(assert (not d!55989))

(assert (not b!81890))

(assert (not b!81672))

(assert (not b!81763))

(assert (not d!56139))

(assert (not b!81906))

(assert (not b!82110))

(assert (not b_lambda!16097))

(assert (not b_lambda!16247))

(assert (not b_lambda!16091))

(assert (not b!81692))

(assert (not b!81757))

(assert (not b!81882))

(assert (not b!81946))

(assert (not b!82123))

(assert (not d!55945))

(assert (not b!81847))

(assert (not b!81727))

(assert (not b!81839))

(assert (not b!81967))

(assert (not b_lambda!16271))

(assert (not b_lambda!16225))

(assert (not b!81715))

(assert (not b!81759))

(assert (not b!81983))

(assert (not b!82134))

(assert (not b!81961))

(assert (not b_lambda!16269))

(assert (not b!81879))

(assert (not b!81803))

(assert (not d!56163))

(assert (not b_lambda!16233))

(assert (not b!81723))

(assert (not b!81856))

(assert (not d!56027))

(assert (not b!81884))

(assert (not b!82120))

(assert (not d!56109))

(assert (not b!81661))

(assert (not b!81903))

(assert (not b_lambda!16257))

(assert (not b!82066))

(assert (not b!81721))

(assert (not b!81905))

(assert (not b!82045))

(assert (not d!56039))

(assert (not b!81819))

(assert (not b!82010))

(assert (not b!81875))

(assert (not b!82094))

(assert (not d!56089))

(assert (not d!56127))

(assert (not b!82012))

(assert (not b!82108))

(assert (not b!81916))

(assert (not b!81802))

(assert (not b!81810))

(assert (not b!81987))

(assert (not d!56083))

(assert (not d!55971))

(assert (not b_lambda!16265))

(assert (not b!81959))

(assert (not b!81976))

(assert (not d!56151))

(assert (not b!81990))

(assert (not b!81977))

(assert (not b!81865))

(assert (not b!82099))

(assert (not b!82009))

(assert (not b!81674))

(assert (not b!82095))

(assert (not b!82039))

(assert (not b!82060))

(assert (not b!81957))

(assert (not b!81874))

(assert (not d!55949))

(assert (not d!56149))

(assert (not b!81677))

(assert (not b_lambda!16279))

(assert (not b_lambda!16243))

(assert (not b!81700))

(assert (not b!82052))

(assert (not b!81800))

(assert (not d!56101))

(assert (not d!55959))

(assert (not b!81832))

(assert (not b!82112))

(assert (not b!81784))

(assert (not d!55955))

(assert (not b_lambda!16211))

(assert (not b!82071))

(assert (not b_lambda!16259))

(assert (not d!56081))

(assert (not d!56145))

(assert (not b!81964))

(assert (not b!82005))

(assert (not b!82030))

(assert (not b!81791))

(assert (not b!81840))

(assert (not b!82122))

(assert (not d!55937))

(assert (not b_lambda!16263))

(assert (not b_lambda!16227))

(assert (not b!81770))

(assert (not b_lambda!16199))

(assert (not b!81948))

(assert (not b!81652))

(assert (not d!55917))

(assert (not b!81953))

(assert (not b!82059))

(assert (not b_lambda!16251))

(assert (not b!81729))

(assert (not b!81671))

(assert (not b!81762))

(assert (not b!82056))

(assert (not b_lambda!16217))

(assert (not d!56105))

(assert (not b!82021))

(assert (not b_lambda!16255))

(assert (not b!81852))

(assert (not b!81980))

(assert (not d!56023))

(assert (not b!82136))

(assert (not d!56161))

(assert (not b!81921))

(assert (not b!81745))

(assert (not d!55973))

(assert (not b!81795))

(assert (not b!82007))

(assert (not d!56093))

(assert (not b!82139))

(assert (not b_lambda!16231))

(assert (not b!82023))

(assert (not b_lambda!16207))

(assert (not b!81958))

(assert (not b!82113))

(assert (not b_lambda!16281))

(assert (not d!56061))

(assert (not b!81867))

(assert (not b!81963))

(assert (not b!82041))

(assert (not b_lambda!16215))

(assert (not b!82090))

(assert (not b_lambda!16221))

(assert (not b!82047))

(assert (not b!82098))

(assert (not b!82014))

(assert (not b!81717))

(assert (not d!56133))

(assert (not d!56013))

(assert (not b!81974))

(assert (not b!81737))

(assert (not b!82077))

(assert (not b!82062))

(assert (not b!81848))

(assert (not b!82114))

(assert (not b!81881))

(assert (not b_lambda!16101))

(assert (not b!81863))

(assert (not b!81655))

(assert (not b_lambda!16277))

(assert (not b!81676))

(assert (not b!81806))

(assert (not b!81938))

(assert (not b!81818))

(assert (not b_lambda!16267))

(assert (not b!81718))

(assert (not b_lambda!16275))

(assert (not b!82115))

(assert (not d!56115))

(assert (not d!55919))

(assert (not d!56099))

(assert (not b!81776))

(assert (not b!82029))

(assert (not b!81788))

(assert (not b!81693))

(assert (not b!81768))

(assert (not b!81711))

(assert (not b!82034))

(assert (not b!82063))

(assert (not b!81837))

(assert (not b!81981))

(assert (not b!81894))

(assert (not b!82051))

(assert (not b!82127))

(assert (not b!82093))

(assert (not b!81699))

(assert (not b_lambda!16241))

(assert (not b!81780))

(assert (not b!81765))

(assert (not b!82020))

(assert (not d!56017))

(assert (not b!81673))

(assert (not b!82027))

(assert (not b!81734))

(assert (not b_lambda!16223))

(assert (not b!81998))

(assert (not b!81730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

