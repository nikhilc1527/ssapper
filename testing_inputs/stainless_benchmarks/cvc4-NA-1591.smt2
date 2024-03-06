; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11052 () Bool)

(assert start!11052)

(declare-fun b_free!7381 () Bool)

(declare-fun b_next!39369 () Bool)

(assert (=> start!11052 (= b_free!7381 (not b_next!39369))))

(declare-fun tp!16986 () Bool)

(declare-fun b_and!58955 () Bool)

(assert (=> start!11052 (= tp!16986 b_and!58955)))

(declare-fun b_free!7383 () Bool)

(declare-fun b_next!39371 () Bool)

(assert (=> start!11052 (= b_free!7383 (not b_next!39371))))

(declare-fun tp!16987 () Bool)

(declare-fun b_and!58957 () Bool)

(assert (=> start!11052 (= tp!16987 b_and!58957)))

(declare-fun b!84428 () Bool)

(assert (=> b!84428 true))

(declare-fun b_next!39373 () Bool)

(declare-fun lambda!10525 () Int)

(declare-fun p!821 () Int)

(assert (=> start!11052 (= b_next!39369 (or (and b!84428 (= lambda!10525 p!821)) b_next!39373))))

(declare-fun b_next!39375 () Bool)

(declare-fun p!832 () Int)

(assert (=> start!11052 (= b_next!39371 (or (and b!84428 (= lambda!10525 p!832)) b_next!39375))))

(declare-fun bs!40778 () Bool)

(declare-fun b!84429 () Bool)

(assert (= bs!40778 (and b!84429 b!84428)))

(declare-fun lambda!10526 () Int)

(assert (=> bs!40778 (not (= lambda!10526 lambda!10525))))

(assert (=> b!84429 true))

(declare-fun b_next!39377 () Bool)

(assert (=> start!11052 (= b_next!39373 (or (and b!84429 (= lambda!10526 p!821)) b_next!39377))))

(declare-fun b_next!39379 () Bool)

(assert (=> start!11052 (= b_next!39375 (or (and b!84429 (= lambda!10526 p!832)) b_next!39379))))

(declare-fun bs!40779 () Bool)

(declare-fun b!84433 () Bool)

(assert (= bs!40779 (and b!84433 b!84428)))

(declare-fun lambda!10527 () Int)

(assert (=> bs!40779 (not (= lambda!10527 lambda!10525))))

(declare-fun bs!40780 () Bool)

(assert (= bs!40780 (and b!84433 b!84429)))

(assert (=> bs!40780 (not (= lambda!10527 lambda!10526))))

(assert (=> b!84433 true))

(declare-fun b_next!39381 () Bool)

(assert (=> start!11052 (= b_next!39377 (or (and b!84433 (= lambda!10527 p!821)) b_next!39381))))

(declare-fun b_next!39383 () Bool)

(assert (=> start!11052 (= b_next!39379 (or (and b!84433 (= lambda!10527 p!832)) b_next!39383))))

(declare-fun b!84423 () Bool)

(declare-fun e!45739 () Bool)

(declare-datatypes () ((List!689 (Cons!646 (h!1019 Int) (t!47985 List!689)) (Nil!648))))

(declare-fun ls!77 () List!689)

(declare-fun filter_preserves_forall!0 (List!689 Int Int) Bool)

(assert (=> b!84423 (= e!45739 (filter_preserves_forall!0 (t!47985 ls!77) lambda!10526 p!821))))

(declare-fun b!84424 () Bool)

(declare-fun res!43621 () Bool)

(declare-fun e!45740 () Bool)

(assert (=> b!84424 (=> (not res!43621) (not e!45740))))

(declare-fun more!2 () List!689)

(declare-fun ls!86 () List!689)

(assert (=> b!84424 (= res!43621 (and (= ls!86 more!2) (= p!832 p!821)))))

(declare-fun b!84425 () Bool)

(declare-fun res!43613 () Bool)

(assert (=> b!84425 (=> (not res!43613) (not e!45740))))

(declare-fun res!40794 () Bool)

(declare-fun t!47724 () Bool)

(assert (=> b!84425 (= res!43613 (and (= res!40794 t!47724) res!40794))))

(declare-fun b!84426 () Bool)

(declare-fun forall!37 (List!689 Int) Bool)

(assert (=> b!84426 (= e!45740 (not (forall!37 ls!86 p!832)))))

(declare-fun b!84427 () Bool)

(declare-fun e!45741 () Bool)

(assert (=> b!84427 (= e!45741 (filter_preserves_forall!0 (t!47985 ls!77) lambda!10527 p!821))))

(declare-fun res!43612 () Bool)

(assert (=> start!11052 (=> (not res!43612) (not e!45740))))

(assert (=> start!11052 (= res!43612 (forall!37 ls!77 p!821))))

(assert (=> start!11052 e!45740))

(assert (=> start!11052 true))

(assert (=> start!11052 tp!16986))

(assert (=> start!11052 tp!16987))

(declare-fun res!43616 () Bool)

(assert (=> b!84428 (=> (not res!43616) (not e!45740))))

(declare-fun less!2 () List!689)

(declare-fun filter!36 (List!689 Int) List!689)

(assert (=> b!84428 (= res!43616 (= less!2 (filter!36 (t!47985 ls!77) lambda!10525)))))

(declare-fun res!43619 () Bool)

(assert (=> b!84429 (=> (not res!43619) (not e!45740))))

(declare-fun equal!4 () List!689)

(assert (=> b!84429 (= res!43619 (= equal!4 (Cons!646 (h!1019 ls!77) (filter!36 (t!47985 ls!77) lambda!10526))))))

(declare-fun b!84430 () Bool)

(declare-fun res!43611 () Bool)

(assert (=> b!84430 (=> (not res!43611) (not e!45740))))

(assert (=> b!84430 (= res!43611 (= t!47724 e!45741))))

(declare-fun res!43622 () Bool)

(assert (=> b!84430 (=> (not res!43622) (not e!45741))))

(declare-fun res!40793 () Bool)

(assert (=> b!84430 (= res!43622 res!40793)))

(declare-fun b!84431 () Bool)

(declare-fun res!43614 () Bool)

(assert (=> b!84431 (=> (not res!43614) (not e!45740))))

(declare-fun sort_preserves_forall!0 (List!689 Int) Bool)

(assert (=> b!84431 (= res!43614 (sort_preserves_forall!0 less!2 p!821))))

(declare-fun b!84432 () Bool)

(declare-fun res!43617 () Bool)

(assert (=> b!84432 (=> (not res!43617) (not e!45740))))

(declare-fun t!47721 () Bool)

(assert (=> b!84432 (= res!43617 (= t!47721 e!45739))))

(declare-fun res!43623 () Bool)

(assert (=> b!84432 (=> (not res!43623) (not e!45739))))

(assert (=> b!84432 (= res!43623 (filter_preserves_forall!0 (t!47985 ls!77) lambda!10525 p!821))))

(declare-fun res!43620 () Bool)

(assert (=> b!84433 (=> (not res!43620) (not e!45740))))

(assert (=> b!84433 (= res!43620 (= more!2 (filter!36 (t!47985 ls!77) lambda!10527)))))

(declare-fun b!84434 () Bool)

(declare-fun res!43615 () Bool)

(assert (=> b!84434 (=> (not res!43615) (not e!45740))))

(assert (=> b!84434 (= res!43615 (= res!40793 t!47721))))

(declare-fun b!84435 () Bool)

(declare-fun res!43618 () Bool)

(assert (=> b!84435 (=> (not res!43618) (not e!45740))))

(assert (=> b!84435 (= res!43618 (and (not (is-Nil!648 ls!77)) (not (is-Nil!648 (t!47985 ls!77)))))))

(assert (= (and start!11052 res!43612) b!84435))

(assert (= (and b!84435 res!43618) b!84428))

(assert (= (and b!84428 res!43616) b!84429))

(assert (= (and b!84429 res!43619) b!84433))

(assert (= (and b!84433 res!43620) b!84432))

(assert (= (and b!84432 res!43623) b!84423))

(assert (= (and b!84432 res!43617) b!84434))

(assert (= (and b!84434 res!43615) b!84430))

(assert (= (and b!84430 res!43622) b!84427))

(assert (= (and b!84430 res!43611) b!84425))

(assert (= (and b!84425 res!43613) b!84431))

(assert (= (and b!84431 res!43614) b!84424))

(assert (= (and b!84424 res!43621) b!84426))

(declare-fun m!80180 () Bool)

(assert (=> b!84428 m!80180))

(declare-fun m!80182 () Bool)

(assert (=> b!84426 m!80182))

(declare-fun m!80184 () Bool)

(assert (=> b!84431 m!80184))

(declare-fun m!80186 () Bool)

(assert (=> b!84432 m!80186))

(declare-fun m!80188 () Bool)

(assert (=> start!11052 m!80188))

(declare-fun m!80190 () Bool)

(assert (=> b!84429 m!80190))

(declare-fun m!80192 () Bool)

(assert (=> b!84427 m!80192))

(declare-fun m!80194 () Bool)

(assert (=> b!84433 m!80194))

(declare-fun m!80196 () Bool)

(assert (=> b!84423 m!80196))

(push 1)

(assert (not b!84423))

(assert (not b!84427))

(assert (not b_next!39381))

(assert (not b!84426))

(assert b_and!58955)

(assert (not start!11052))

(assert b_and!58957)

(assert (not b!84432))

(assert (not b!84431))

(assert (not b!84429))

(assert (not b!84428))

(assert (not b!84433))

(assert (not b_next!39383))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58955)

(assert b_and!58957)

(assert (not b_next!39381))

(assert (not b_next!39383))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40781 () Bool)

(declare-fun b!84448 () Bool)

(assert (= bs!40781 (and b!84448 b!84428)))

(declare-fun lambda!10540 () Int)

(assert (=> bs!40781 (= (= (h!1019 less!2) (h!1019 ls!77)) (= lambda!10540 lambda!10525))))

(declare-fun bs!40782 () Bool)

(assert (= bs!40782 (and b!84448 b!84429)))

(assert (=> bs!40782 (not (= lambda!10540 lambda!10526))))

(declare-fun bs!40783 () Bool)

(assert (= bs!40783 (and b!84448 b!84433)))

(assert (=> bs!40783 (not (= lambda!10540 lambda!10527))))

(assert (=> b!84448 true))

(declare-fun b_next!39385 () Bool)

(assert (=> start!11052 (= b_next!39381 (or (and b!84448 (= lambda!10540 p!821)) b_next!39385))))

(declare-fun b_next!39387 () Bool)

(assert (=> start!11052 (= b_next!39383 (or (and b!84448 (= lambda!10540 p!832)) b_next!39387))))

(declare-fun lambda!10541 () Int)

(assert (=> bs!40781 (not (= lambda!10541 lambda!10525))))

(assert (=> bs!40782 (= (= (h!1019 less!2) (h!1019 ls!77)) (= lambda!10541 lambda!10526))))

(assert (=> bs!40783 (not (= lambda!10541 lambda!10527))))

(assert (=> b!84448 (not (= lambda!10541 lambda!10540))))

(assert (=> b!84448 true))

(declare-fun b_next!39389 () Bool)

(assert (=> start!11052 (= b_next!39385 (or (and b!84448 (= lambda!10541 p!821)) b_next!39389))))

(declare-fun b_next!39391 () Bool)

(assert (=> start!11052 (= b_next!39387 (or (and b!84448 (= lambda!10541 p!832)) b_next!39391))))

(declare-fun lambda!10542 () Int)

(assert (=> b!84448 (not (= lambda!10542 lambda!10541))))

(assert (=> b!84448 (not (= lambda!10542 lambda!10540))))

(assert (=> bs!40782 (not (= lambda!10542 lambda!10526))))

(assert (=> bs!40781 (not (= lambda!10542 lambda!10525))))

(assert (=> bs!40783 (= (= (h!1019 less!2) (h!1019 ls!77)) (= lambda!10542 lambda!10527))))

(assert (=> b!84448 true))

(declare-fun b_next!39393 () Bool)

(assert (=> start!11052 (= b_next!39389 (or (and b!84448 (= lambda!10542 p!821)) b_next!39393))))

(declare-fun b_next!39395 () Bool)

(assert (=> start!11052 (= b_next!39391 (or (and b!84448 (= lambda!10542 p!832)) b_next!39395))))

(declare-fun e!45756 () Bool)

(declare-fun e!45754 () Bool)

(assert (=> b!84448 (= e!45756 e!45754)))

(declare-fun res!43639 () Bool)

(assert (=> b!84448 (=> (not res!43639) (not e!45754))))

(declare-fun lt!19656 () List!689)

(declare-fun lt!19657 () List!689)

(declare-fun append_preserves_forall!0 (List!689 List!689 Int) Bool)

(declare-fun quickSort!0 (List!689) List!689)

(assert (=> b!84448 (= res!43639 (append_preserves_forall!0 (quickSort!0 lt!19657) lt!19656 p!821))))

(declare-fun lt!19655 () Bool)

(declare-fun e!45755 () Bool)

(assert (=> b!84448 (= lt!19655 e!45755)))

(declare-fun res!43640 () Bool)

(assert (=> b!84448 (=> (not res!43640) (not e!45755))))

(assert (=> b!84448 (= res!43640 (sort_preserves_forall!0 lt!19657 p!821))))

(declare-fun lt!19654 () Bool)

(declare-fun e!45753 () Bool)

(assert (=> b!84448 (= lt!19654 e!45753)))

(declare-fun res!43643 () Bool)

(assert (=> b!84448 (=> (not res!43643) (not e!45753))))

(declare-fun e!45752 () Bool)

(assert (=> b!84448 (= res!43643 e!45752)))

(declare-fun res!43642 () Bool)

(assert (=> b!84448 (=> (not res!43642) (not e!45752))))

(assert (=> b!84448 (= res!43642 (filter_preserves_forall!0 (t!47985 less!2) lambda!10540 p!821))))

(declare-fun lt!19653 () List!689)

(assert (=> b!84448 (= lt!19653 (filter!36 (t!47985 less!2) lambda!10542))))

(assert (=> b!84448 (= lt!19656 (Cons!646 (h!1019 less!2) (filter!36 (t!47985 less!2) lambda!10541)))))

(assert (=> b!84448 (= lt!19657 (filter!36 (t!47985 less!2) lambda!10540))))

(declare-fun b!84449 () Bool)

(assert (=> b!84449 (= e!45752 (filter_preserves_forall!0 (t!47985 less!2) lambda!10541 p!821))))

(declare-fun b!84450 () Bool)

(assert (=> b!84450 (= e!45753 (filter_preserves_forall!0 (t!47985 less!2) lambda!10542 p!821))))

(declare-fun b!84451 () Bool)

(declare-fun ++!88 (List!689 List!689) List!689)

(assert (=> b!84451 (= e!45754 (append_preserves_forall!0 (++!88 (quickSort!0 lt!19657) lt!19656) (quickSort!0 lt!19653) p!821))))

(declare-fun d!56829 () Bool)

(assert (=> d!56829 (forall!37 (quickSort!0 less!2) p!821)))

(declare-fun lt!19658 () Bool)

(assert (=> d!56829 (= lt!19658 e!45756)))

(declare-fun res!43641 () Bool)

(assert (=> d!56829 (=> res!43641 e!45756)))

(assert (=> d!56829 (= res!43641 (or (is-Nil!648 less!2) (and (is-Cons!646 less!2) (is-Nil!648 (t!47985 less!2)))))))

(assert (=> d!56829 (forall!37 less!2 p!821)))

(assert (=> d!56829 (= (sort_preserves_forall!0 less!2 p!821) true)))

(declare-fun b!84452 () Bool)

(assert (=> b!84452 (= e!45755 (sort_preserves_forall!0 lt!19653 p!821))))

(assert (= (and d!56829 (not res!43641)) b!84448))

(assert (= (and b!84448 res!43642) b!84449))

(assert (= (and b!84448 res!43643) b!84450))

(assert (= (and b!84448 res!43640) b!84452))

(assert (= (and b!84448 res!43639) b!84451))

(declare-fun m!80198 () Bool)

(assert (=> b!84449 m!80198))

(declare-fun m!80200 () Bool)

(assert (=> d!56829 m!80200))

(assert (=> d!56829 m!80200))

(declare-fun m!80202 () Bool)

(assert (=> d!56829 m!80202))

(declare-fun m!80204 () Bool)

(assert (=> d!56829 m!80204))

(declare-fun m!80206 () Bool)

(assert (=> b!84448 m!80206))

(declare-fun m!80208 () Bool)

(assert (=> b!84448 m!80208))

(declare-fun m!80210 () Bool)

(assert (=> b!84448 m!80210))

(declare-fun m!80212 () Bool)

(assert (=> b!84448 m!80212))

(declare-fun m!80214 () Bool)

(assert (=> b!84448 m!80214))

(declare-fun m!80216 () Bool)

(assert (=> b!84448 m!80216))

(declare-fun m!80218 () Bool)

(assert (=> b!84448 m!80218))

(assert (=> b!84448 m!80210))

(declare-fun m!80220 () Bool)

(assert (=> b!84452 m!80220))

(assert (=> b!84451 m!80210))

(assert (=> b!84451 m!80210))

(declare-fun m!80222 () Bool)

(assert (=> b!84451 m!80222))

(declare-fun m!80224 () Bool)

(assert (=> b!84451 m!80224))

(assert (=> b!84451 m!80222))

(assert (=> b!84451 m!80224))

(declare-fun m!80226 () Bool)

(assert (=> b!84451 m!80226))

(declare-fun m!80228 () Bool)

(assert (=> b!84450 m!80228))

(assert (=> b!84431 d!56829))

(declare-fun d!56831 () Bool)

(declare-fun e!45759 () Bool)

(assert (=> d!56831 e!45759))

(declare-fun c!21064 () Bool)

(assert (=> d!56831 (= c!21064 (is-Cons!646 (t!47985 ls!77)))))

(assert (=> d!56831 (forall!37 (t!47985 ls!77) p!821)))

(assert (=> d!56831 (= (filter_preserves_forall!0 (t!47985 ls!77) lambda!10526 p!821) true)))

(declare-fun b!84457 () Bool)

(assert (=> b!84457 (= e!45759 (forall!37 (filter!36 (t!47985 ls!77) lambda!10526) p!821))))

(declare-fun lt!19661 () Bool)

(assert (=> b!84457 (= lt!19661 (filter_preserves_forall!0 (t!47985 (t!47985 ls!77)) lambda!10526 p!821))))

(declare-fun b!84458 () Bool)

(assert (=> b!84458 (= e!45759 (forall!37 (filter!36 (t!47985 ls!77) lambda!10526) p!821))))

(assert (= (and d!56831 c!21064) b!84457))

(assert (= (and d!56831 (not c!21064)) b!84458))

(declare-fun m!80230 () Bool)

(assert (=> d!56831 m!80230))

(assert (=> b!84457 m!80190))

(assert (=> b!84457 m!80190))

(declare-fun m!80232 () Bool)

(assert (=> b!84457 m!80232))

(declare-fun m!80234 () Bool)

(assert (=> b!84457 m!80234))

(assert (=> b!84458 m!80190))

(assert (=> b!84458 m!80190))

(assert (=> b!84458 m!80232))

(assert (=> b!84423 d!56831))

(declare-fun d!56833 () Bool)

(declare-fun res!43648 () Bool)

(declare-fun e!45764 () Bool)

(assert (=> d!56833 (=> res!43648 e!45764)))

(assert (=> d!56833 (= res!43648 (is-Nil!648 ls!77))))

(assert (=> d!56833 (= (forall!37 ls!77 p!821) e!45764)))

(declare-fun b!84463 () Bool)

(declare-fun e!45765 () Bool)

(assert (=> b!84463 (= e!45764 e!45765)))

(declare-fun res!43649 () Bool)

(assert (=> b!84463 (=> (not res!43649) (not e!45765))))

(declare-fun dynLambda!1001 (Int Int) Bool)

(assert (=> b!84463 (= res!43649 (dynLambda!1001 p!821 (h!1019 ls!77)))))

(declare-fun b!84464 () Bool)

(assert (=> b!84464 (= e!45765 (forall!37 (t!47985 ls!77) p!821))))

(assert (= (and d!56833 (not res!43648)) b!84463))

(assert (= (and b!84463 res!43649) b!84464))

(declare-fun b_lambda!16607 () Bool)

(assert (=> (not b_lambda!16607) (not b!84463)))

(declare-fun t!47992 () Bool)

(declare-fun tb!46253 () Bool)

(assert (=> (and start!11052 (= p!821 p!821) t!47992) tb!46253))

(declare-fun result!46683 () Bool)

(assert (=> tb!46253 (= result!46683 true)))

(assert (=> b!84463 t!47992))

(declare-fun b_and!58959 () Bool)

(assert (= b_and!58955 (and (=> t!47992 result!46683) b_and!58959)))

(declare-fun t!47994 () Bool)

(declare-fun tb!46255 () Bool)

(assert (=> (and start!11052 (= p!832 p!821) t!47994) tb!46255))

(declare-fun result!46685 () Bool)

(assert (=> tb!46255 (= result!46685 true)))

(assert (=> b!84463 t!47994))

(declare-fun b_and!58961 () Bool)

(assert (= b_and!58957 (and (=> t!47994 result!46685) b_and!58961)))

(declare-fun m!80236 () Bool)

(assert (=> b!84463 m!80236))

(assert (=> b!84464 m!80230))

(assert (=> start!11052 d!56833))

(declare-fun b!84479 () Bool)

(declare-fun e!45776 () List!689)

(declare-fun lt!19666 () List!689)

(assert (=> b!84479 (= e!45776 (Cons!646 (h!1019 (t!47985 ls!77)) lt!19666))))

(declare-fun b!84480 () Bool)

(assert (=> b!84480 (= e!45776 lt!19666)))

(declare-fun b!84481 () Bool)

(declare-fun res!43661 () Bool)

(declare-fun e!45774 () Bool)

(assert (=> b!84481 (=> (not res!43661) (not e!45774))))

(declare-fun lt!19667 () List!689)

(declare-fun content!143 (List!689) (Set Int))

(assert (=> b!84481 (= res!43661 (subset (content!143 lt!19667) (content!143 (t!47985 ls!77))))))

(declare-fun b!84482 () Bool)

(declare-fun e!45775 () Bool)

(assert (=> b!84482 (= e!45775 (dynLambda!1001 lambda!10527 (h!1019 (t!47985 ls!77))))))

(declare-fun d!56835 () Bool)

(assert (=> d!56835 e!45774))

(declare-fun res!43662 () Bool)

(assert (=> d!56835 (=> (not res!43662) (not e!45774))))

(declare-fun size!672 (List!689) Int)

(assert (=> d!56835 (= res!43662 (<= (size!672 lt!19667) (size!672 (t!47985 ls!77))))))

(declare-fun e!45777 () List!689)

(assert (=> d!56835 (= lt!19667 e!45777)))

(declare-fun c!21070 () Bool)

(assert (=> d!56835 (= c!21070 (is-Nil!648 (t!47985 ls!77)))))

(assert (=> d!56835 (= (filter!36 (t!47985 ls!77) lambda!10527) lt!19667)))

(declare-fun b!84483 () Bool)

(assert (=> b!84483 (= e!45777 e!45776)))

(declare-fun c!21069 () Bool)

(assert (=> b!84483 (= c!21069 e!45775)))

(declare-fun res!43660 () Bool)

(assert (=> b!84483 (=> (not res!43660) (not e!45775))))

(assert (=> b!84483 (= res!43660 (is-Cons!646 (t!47985 ls!77)))))

(assert (=> b!84483 (= lt!19666 (filter!36 (t!47985 (t!47985 ls!77)) lambda!10527))))

(declare-fun b!84484 () Bool)

(assert (=> b!84484 (= e!45777 Nil!648)))

(declare-fun b!84485 () Bool)

(assert (=> b!84485 (= e!45774 (forall!37 lt!19667 lambda!10527))))

(assert (= (and b!84483 res!43660) b!84482))

(assert (= (and b!84483 c!21069) b!84479))

(assert (= (and b!84483 (not c!21069)) b!84480))

(assert (= (and d!56835 c!21070) b!84484))

(assert (= (and d!56835 (not c!21070)) b!84483))

(assert (= (and d!56835 res!43662) b!84481))

(assert (= (and b!84481 res!43661) b!84485))

(declare-fun b_lambda!16609 () Bool)

(assert (=> (not b_lambda!16609) (not b!84482)))

(declare-fun m!80238 () Bool)

(assert (=> b!84483 m!80238))

(declare-fun m!80240 () Bool)

(assert (=> b!84481 m!80240))

(declare-fun m!80242 () Bool)

(assert (=> b!84481 m!80242))

(declare-fun m!80244 () Bool)

(assert (=> b!84485 m!80244))

(declare-fun m!80246 () Bool)

(assert (=> d!56835 m!80246))

(declare-fun m!80248 () Bool)

(assert (=> d!56835 m!80248))

(declare-fun m!80250 () Bool)

(assert (=> b!84482 m!80250))

(assert (=> b!84433 d!56835))

(declare-fun b!84486 () Bool)

(declare-fun e!45780 () List!689)

(declare-fun lt!19668 () List!689)

(assert (=> b!84486 (= e!45780 (Cons!646 (h!1019 (t!47985 ls!77)) lt!19668))))

(declare-fun b!84487 () Bool)

(assert (=> b!84487 (= e!45780 lt!19668)))

(declare-fun b!84488 () Bool)

(declare-fun res!43664 () Bool)

(declare-fun e!45778 () Bool)

(assert (=> b!84488 (=> (not res!43664) (not e!45778))))

(declare-fun lt!19669 () List!689)

(assert (=> b!84488 (= res!43664 (subset (content!143 lt!19669) (content!143 (t!47985 ls!77))))))

(declare-fun b!84489 () Bool)

(declare-fun e!45779 () Bool)

(assert (=> b!84489 (= e!45779 (dynLambda!1001 lambda!10525 (h!1019 (t!47985 ls!77))))))

(declare-fun d!56837 () Bool)

(assert (=> d!56837 e!45778))

(declare-fun res!43665 () Bool)

(assert (=> d!56837 (=> (not res!43665) (not e!45778))))

(assert (=> d!56837 (= res!43665 (<= (size!672 lt!19669) (size!672 (t!47985 ls!77))))))

(declare-fun e!45781 () List!689)

(assert (=> d!56837 (= lt!19669 e!45781)))

(declare-fun c!21072 () Bool)

(assert (=> d!56837 (= c!21072 (is-Nil!648 (t!47985 ls!77)))))

(assert (=> d!56837 (= (filter!36 (t!47985 ls!77) lambda!10525) lt!19669)))

(declare-fun b!84490 () Bool)

(assert (=> b!84490 (= e!45781 e!45780)))

(declare-fun c!21071 () Bool)

(assert (=> b!84490 (= c!21071 e!45779)))

(declare-fun res!43663 () Bool)

(assert (=> b!84490 (=> (not res!43663) (not e!45779))))

(assert (=> b!84490 (= res!43663 (is-Cons!646 (t!47985 ls!77)))))

(assert (=> b!84490 (= lt!19668 (filter!36 (t!47985 (t!47985 ls!77)) lambda!10525))))

(declare-fun b!84491 () Bool)

(assert (=> b!84491 (= e!45781 Nil!648)))

(declare-fun b!84492 () Bool)

(assert (=> b!84492 (= e!45778 (forall!37 lt!19669 lambda!10525))))

(assert (= (and b!84490 res!43663) b!84489))

(assert (= (and b!84490 c!21071) b!84486))

(assert (= (and b!84490 (not c!21071)) b!84487))

(assert (= (and d!56837 c!21072) b!84491))

(assert (= (and d!56837 (not c!21072)) b!84490))

(assert (= (and d!56837 res!43665) b!84488))

(assert (= (and b!84488 res!43664) b!84492))

(declare-fun b_lambda!16611 () Bool)

(assert (=> (not b_lambda!16611) (not b!84489)))

(declare-fun m!80252 () Bool)

(assert (=> b!84490 m!80252))

(declare-fun m!80254 () Bool)

(assert (=> b!84488 m!80254))

(assert (=> b!84488 m!80242))

(declare-fun m!80256 () Bool)

(assert (=> b!84492 m!80256))

(declare-fun m!80258 () Bool)

(assert (=> d!56837 m!80258))

(assert (=> d!56837 m!80248))

(declare-fun m!80260 () Bool)

(assert (=> b!84489 m!80260))

(assert (=> b!84428 d!56837))

(declare-fun d!56839 () Bool)

(declare-fun e!45782 () Bool)

(assert (=> d!56839 e!45782))

(declare-fun c!21073 () Bool)

(assert (=> d!56839 (= c!21073 (is-Cons!646 (t!47985 ls!77)))))

(assert (=> d!56839 (forall!37 (t!47985 ls!77) p!821)))

(assert (=> d!56839 (= (filter_preserves_forall!0 (t!47985 ls!77) lambda!10527 p!821) true)))

(declare-fun b!84493 () Bool)

(assert (=> b!84493 (= e!45782 (forall!37 (filter!36 (t!47985 ls!77) lambda!10527) p!821))))

(declare-fun lt!19670 () Bool)

(assert (=> b!84493 (= lt!19670 (filter_preserves_forall!0 (t!47985 (t!47985 ls!77)) lambda!10527 p!821))))

(declare-fun b!84494 () Bool)

(assert (=> b!84494 (= e!45782 (forall!37 (filter!36 (t!47985 ls!77) lambda!10527) p!821))))

(assert (= (and d!56839 c!21073) b!84493))

(assert (= (and d!56839 (not c!21073)) b!84494))

(assert (=> d!56839 m!80230))

(assert (=> b!84493 m!80194))

(assert (=> b!84493 m!80194))

(declare-fun m!80262 () Bool)

(assert (=> b!84493 m!80262))

(declare-fun m!80264 () Bool)

(assert (=> b!84493 m!80264))

(assert (=> b!84494 m!80194))

(assert (=> b!84494 m!80194))

(assert (=> b!84494 m!80262))

(assert (=> b!84427 d!56839))

(declare-fun d!56841 () Bool)

(declare-fun res!43666 () Bool)

(declare-fun e!45783 () Bool)

(assert (=> d!56841 (=> res!43666 e!45783)))

(assert (=> d!56841 (= res!43666 (is-Nil!648 ls!86))))

(assert (=> d!56841 (= (forall!37 ls!86 p!832) e!45783)))

(declare-fun b!84495 () Bool)

(declare-fun e!45784 () Bool)

(assert (=> b!84495 (= e!45783 e!45784)))

(declare-fun res!43667 () Bool)

(assert (=> b!84495 (=> (not res!43667) (not e!45784))))

(assert (=> b!84495 (= res!43667 (dynLambda!1001 p!832 (h!1019 ls!86)))))

(declare-fun b!84496 () Bool)

(assert (=> b!84496 (= e!45784 (forall!37 (t!47985 ls!86) p!832))))

(assert (= (and d!56841 (not res!43666)) b!84495))

(assert (= (and b!84495 res!43667) b!84496))

(declare-fun b_lambda!16613 () Bool)

(assert (=> (not b_lambda!16613) (not b!84495)))

(declare-fun t!47996 () Bool)

(declare-fun tb!46257 () Bool)

(assert (=> (and start!11052 (= p!821 p!832) t!47996) tb!46257))

(declare-fun result!46687 () Bool)

(assert (=> tb!46257 (= result!46687 true)))

(assert (=> b!84495 t!47996))

(declare-fun b_and!58963 () Bool)

(assert (= b_and!58959 (and (=> t!47996 result!46687) b_and!58963)))

(declare-fun t!47998 () Bool)

(declare-fun tb!46259 () Bool)

(assert (=> (and start!11052 (= p!832 p!832) t!47998) tb!46259))

(declare-fun result!46689 () Bool)

(assert (=> tb!46259 (= result!46689 true)))

(assert (=> b!84495 t!47998))

(declare-fun b_and!58965 () Bool)

(assert (= b_and!58961 (and (=> t!47998 result!46689) b_and!58965)))

(declare-fun m!80266 () Bool)

(assert (=> b!84495 m!80266))

(declare-fun m!80268 () Bool)

(assert (=> b!84496 m!80268))

(assert (=> b!84426 d!56841))

(declare-fun b!84497 () Bool)

(declare-fun e!45787 () List!689)

(declare-fun lt!19671 () List!689)

(assert (=> b!84497 (= e!45787 (Cons!646 (h!1019 (t!47985 ls!77)) lt!19671))))

(declare-fun b!84498 () Bool)

(assert (=> b!84498 (= e!45787 lt!19671)))

(declare-fun b!84499 () Bool)

(declare-fun res!43669 () Bool)

(declare-fun e!45785 () Bool)

(assert (=> b!84499 (=> (not res!43669) (not e!45785))))

(declare-fun lt!19672 () List!689)

(assert (=> b!84499 (= res!43669 (subset (content!143 lt!19672) (content!143 (t!47985 ls!77))))))

(declare-fun b!84500 () Bool)

(declare-fun e!45786 () Bool)

(assert (=> b!84500 (= e!45786 (dynLambda!1001 lambda!10526 (h!1019 (t!47985 ls!77))))))

(declare-fun d!56843 () Bool)

(assert (=> d!56843 e!45785))

(declare-fun res!43670 () Bool)

(assert (=> d!56843 (=> (not res!43670) (not e!45785))))

(assert (=> d!56843 (= res!43670 (<= (size!672 lt!19672) (size!672 (t!47985 ls!77))))))

(declare-fun e!45788 () List!689)

(assert (=> d!56843 (= lt!19672 e!45788)))

(declare-fun c!21075 () Bool)

(assert (=> d!56843 (= c!21075 (is-Nil!648 (t!47985 ls!77)))))

(assert (=> d!56843 (= (filter!36 (t!47985 ls!77) lambda!10526) lt!19672)))

(declare-fun b!84501 () Bool)

(assert (=> b!84501 (= e!45788 e!45787)))

(declare-fun c!21074 () Bool)

(assert (=> b!84501 (= c!21074 e!45786)))

(declare-fun res!43668 () Bool)

(assert (=> b!84501 (=> (not res!43668) (not e!45786))))

(assert (=> b!84501 (= res!43668 (is-Cons!646 (t!47985 ls!77)))))

(assert (=> b!84501 (= lt!19671 (filter!36 (t!47985 (t!47985 ls!77)) lambda!10526))))

(declare-fun b!84502 () Bool)

(assert (=> b!84502 (= e!45788 Nil!648)))

(declare-fun b!84503 () Bool)

(assert (=> b!84503 (= e!45785 (forall!37 lt!19672 lambda!10526))))

(assert (= (and b!84501 res!43668) b!84500))

(assert (= (and b!84501 c!21074) b!84497))

(assert (= (and b!84501 (not c!21074)) b!84498))

(assert (= (and d!56843 c!21075) b!84502))

(assert (= (and d!56843 (not c!21075)) b!84501))

(assert (= (and d!56843 res!43670) b!84499))

(assert (= (and b!84499 res!43669) b!84503))

(declare-fun b_lambda!16615 () Bool)

(assert (=> (not b_lambda!16615) (not b!84500)))

(declare-fun m!80270 () Bool)

(assert (=> b!84501 m!80270))

(declare-fun m!80272 () Bool)

(assert (=> b!84499 m!80272))

(assert (=> b!84499 m!80242))

(declare-fun m!80274 () Bool)

(assert (=> b!84503 m!80274))

(declare-fun m!80276 () Bool)

(assert (=> d!56843 m!80276))

(assert (=> d!56843 m!80248))

(declare-fun m!80278 () Bool)

(assert (=> b!84500 m!80278))

(assert (=> b!84429 d!56843))

(declare-fun d!56845 () Bool)

(declare-fun e!45789 () Bool)

(assert (=> d!56845 e!45789))

(declare-fun c!21076 () Bool)

(assert (=> d!56845 (= c!21076 (is-Cons!646 (t!47985 ls!77)))))

(assert (=> d!56845 (forall!37 (t!47985 ls!77) p!821)))

(assert (=> d!56845 (= (filter_preserves_forall!0 (t!47985 ls!77) lambda!10525 p!821) true)))

(declare-fun b!84504 () Bool)

(assert (=> b!84504 (= e!45789 (forall!37 (filter!36 (t!47985 ls!77) lambda!10525) p!821))))

(declare-fun lt!19673 () Bool)

(assert (=> b!84504 (= lt!19673 (filter_preserves_forall!0 (t!47985 (t!47985 ls!77)) lambda!10525 p!821))))

(declare-fun b!84505 () Bool)

(assert (=> b!84505 (= e!45789 (forall!37 (filter!36 (t!47985 ls!77) lambda!10525) p!821))))

(assert (= (and d!56845 c!21076) b!84504))

(assert (= (and d!56845 (not c!21076)) b!84505))

(assert (=> d!56845 m!80230))

(assert (=> b!84504 m!80180))

(assert (=> b!84504 m!80180))

(declare-fun m!80280 () Bool)

(assert (=> b!84504 m!80280))

(declare-fun m!80282 () Bool)

(assert (=> b!84504 m!80282))

(assert (=> b!84505 m!80180))

(assert (=> b!84505 m!80180))

(assert (=> b!84505 m!80280))

(assert (=> b!84432 d!56845))

(declare-fun b_lambda!16617 () Bool)

(assert (= b_lambda!16609 (or b!84433 b_lambda!16617)))

(declare-fun bs!40784 () Bool)

(declare-fun d!56847 () Bool)

(assert (= bs!40784 (and d!56847 b!84433)))

(assert (=> bs!40784 (= (dynLambda!1001 lambda!10527 (h!1019 (t!47985 ls!77))) (> (h!1019 (t!47985 ls!77)) (h!1019 ls!77)))))

(assert (=> b!84482 d!56847))

(declare-fun b_lambda!16619 () Bool)

(assert (= b_lambda!16611 (or b!84428 b_lambda!16619)))

(declare-fun bs!40785 () Bool)

(declare-fun d!56849 () Bool)

(assert (= bs!40785 (and d!56849 b!84428)))

(assert (=> bs!40785 (= (dynLambda!1001 lambda!10525 (h!1019 (t!47985 ls!77))) (< (h!1019 (t!47985 ls!77)) (h!1019 ls!77)))))

(assert (=> b!84489 d!56849))

(declare-fun b_lambda!16621 () Bool)

(assert (= b_lambda!16615 (or b!84429 b_lambda!16621)))

(declare-fun bs!40786 () Bool)

(declare-fun d!56851 () Bool)

(assert (= bs!40786 (and d!56851 b!84429)))

(assert (=> bs!40786 (= (dynLambda!1001 lambda!10526 (h!1019 (t!47985 ls!77))) (= (h!1019 (t!47985 ls!77)) (h!1019 ls!77)))))

(assert (=> b!84500 d!56851))

(declare-fun b_lambda!16623 () Bool)

(assert (= b_lambda!16613 (or (and b!84448 (= lambda!10542 p!832)) (and b!84448 (= lambda!10540 p!832)) (and b!84433 (= lambda!10527 p!832)) (and b!84429 (= lambda!10526 p!832)) (and start!11052 b_free!7383) (and b!84428 (= lambda!10525 p!832)) (and start!11052 b_free!7381 (= p!821 p!832)) (and b!84448 (= lambda!10541 p!832)) b_lambda!16623)))

(declare-fun bs!40787 () Bool)

(declare-fun d!56853 () Bool)

(assert (= bs!40787 (and d!56853 b!84433)))

(assert (=> bs!40787 (= (dynLambda!1001 lambda!10527 (h!1019 ls!86)) (> (h!1019 ls!86) (h!1019 ls!77)))))

(assert (=> (and b!84433 (= lambda!10527 p!832) b!84495) d!56853))

(declare-fun bs!40788 () Bool)

(declare-fun d!56855 () Bool)

(assert (= bs!40788 (and d!56855 b!84448)))

(assert (=> bs!40788 (= (dynLambda!1001 lambda!10540 (h!1019 ls!86)) (< (h!1019 ls!86) (h!1019 less!2)))))

(assert (=> (and b!84448 (= lambda!10540 p!832) b!84495) d!56855))

(declare-fun bs!40789 () Bool)

(declare-fun d!56857 () Bool)

(assert (= bs!40789 (and d!56857 b!84429)))

(assert (=> bs!40789 (= (dynLambda!1001 lambda!10526 (h!1019 ls!86)) (= (h!1019 ls!86) (h!1019 ls!77)))))

(assert (=> (and b!84429 (= lambda!10526 p!832) b!84495) d!56857))

(declare-fun bs!40790 () Bool)

(declare-fun d!56859 () Bool)

(assert (= bs!40790 (and d!56859 b!84448)))

(assert (=> bs!40790 (= (dynLambda!1001 lambda!10541 (h!1019 ls!86)) (= (h!1019 ls!86) (h!1019 less!2)))))

(assert (=> (and b!84448 (= lambda!10541 p!832) b!84495) d!56859))

(declare-fun bs!40791 () Bool)

(declare-fun d!56861 () Bool)

(assert (= bs!40791 (and d!56861 b!84448)))

(assert (=> bs!40791 (= (dynLambda!1001 lambda!10542 (h!1019 ls!86)) (> (h!1019 ls!86) (h!1019 less!2)))))

(assert (=> (and b!84448 (= lambda!10542 p!832) b!84495) d!56861))

(declare-fun bs!40792 () Bool)

(declare-fun d!56863 () Bool)

(assert (= bs!40792 (and d!56863 b!84428)))

(assert (=> bs!40792 (= (dynLambda!1001 lambda!10525 (h!1019 ls!86)) (< (h!1019 ls!86) (h!1019 ls!77)))))

(assert (=> (and b!84428 (= lambda!10525 p!832) b!84495) d!56863))

(declare-fun b_lambda!16625 () Bool)

(assert (= b_lambda!16607 (or (and start!11052 b_free!7381) (and b!84448 (= lambda!10541 p!821)) (and start!11052 b_free!7383 (= p!832 p!821)) (and b!84448 (= lambda!10542 p!821)) (and b!84428 (= lambda!10525 p!821)) (and b!84448 (= lambda!10540 p!821)) (and b!84433 (= lambda!10527 p!821)) (and b!84429 (= lambda!10526 p!821)) b_lambda!16625)))

(declare-fun bs!40793 () Bool)

(declare-fun d!56865 () Bool)

(assert (= bs!40793 (and d!56865 b!84448)))

(assert (=> bs!40793 (= (dynLambda!1001 lambda!10542 (h!1019 ls!77)) (> (h!1019 ls!77) (h!1019 less!2)))))

(assert (=> (and b!84448 (= lambda!10542 p!821) b!84463) d!56865))

(declare-fun bs!40794 () Bool)

(declare-fun d!56867 () Bool)

(assert (= bs!40794 (and d!56867 b!84433)))

(assert (=> bs!40794 (= (dynLambda!1001 lambda!10527 (h!1019 ls!77)) (> (h!1019 ls!77) (h!1019 ls!77)))))

(assert (=> (and b!84433 (= lambda!10527 p!821) b!84463) d!56867))

(declare-fun bs!40795 () Bool)

(declare-fun d!56869 () Bool)

(assert (= bs!40795 (and d!56869 b!84429)))

(assert (=> bs!40795 (= (dynLambda!1001 lambda!10526 (h!1019 ls!77)) (= (h!1019 ls!77) (h!1019 ls!77)))))

(assert (=> (and b!84429 (= lambda!10526 p!821) b!84463) d!56869))

(declare-fun bs!40796 () Bool)

(declare-fun d!56871 () Bool)

(assert (= bs!40796 (and d!56871 b!84448)))

(assert (=> bs!40796 (= (dynLambda!1001 lambda!10541 (h!1019 ls!77)) (= (h!1019 ls!77) (h!1019 less!2)))))

(assert (=> (and b!84448 (= lambda!10541 p!821) b!84463) d!56871))

(declare-fun bs!40797 () Bool)

(declare-fun d!56873 () Bool)

(assert (= bs!40797 (and d!56873 b!84428)))

(assert (=> bs!40797 (= (dynLambda!1001 lambda!10525 (h!1019 ls!77)) (< (h!1019 ls!77) (h!1019 ls!77)))))

(assert (=> (and b!84428 (= lambda!10525 p!821) b!84463) d!56873))

(declare-fun bs!40798 () Bool)

(declare-fun d!56875 () Bool)

(assert (= bs!40798 (and d!56875 b!84448)))

(assert (=> bs!40798 (= (dynLambda!1001 lambda!10540 (h!1019 ls!77)) (< (h!1019 ls!77) (h!1019 less!2)))))

(assert (=> (and b!84448 (= lambda!10540 p!821) b!84463) d!56875))

(push 1)

(assert (not b!84452))

(assert (not d!56837))

(assert b_and!58963)

(assert (not b!84490))

(assert (not b!84488))

(assert (not d!56831))

(assert (not b!84496))

(assert (not b!84494))

(assert (not d!56843))

(assert (not b!84501))

(assert (not b!84457))

(assert (not d!56829))

(assert (not b_next!39395))

(assert (not b!84504))

(assert (not b!84503))

(assert (not b!84458))

(assert (not b_lambda!16621))

(assert (not b!84493))

(assert (not b!84449))

(assert (not b!84505))

(assert (not b!84492))

(assert (not b_lambda!16625))

(assert (not b_lambda!16619))

(assert (not b!84499))

(assert (not d!56835))

(assert (not b!84450))

(assert (not b!84451))

(assert (not b!84448))

(assert (not b_lambda!16623))

(assert b_and!58965)

(assert (not b_next!39393))

(assert (not b!84483))

(assert (not b!84481))

(assert (not b!84464))

(assert (not b_lambda!16617))

(assert (not d!56839))

(assert (not d!56845))

(assert (not b!84485))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58963)

(assert b_and!58965)

(assert (not b_next!39393))

(assert (not b_next!39395))

(check-sat)

(pop 1)

