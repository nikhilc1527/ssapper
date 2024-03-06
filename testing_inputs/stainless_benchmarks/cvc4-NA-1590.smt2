; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11044 () Bool)

(assert start!11044)

(declare-fun b_free!7377 () Bool)

(declare-fun b_next!39353 () Bool)

(assert (=> start!11044 (= b_free!7377 (not b_next!39353))))

(declare-fun tp!16981 () Bool)

(declare-fun b_and!58943 () Bool)

(assert (=> start!11044 (= tp!16981 b_and!58943)))

(declare-fun b_free!7379 () Bool)

(declare-fun b_next!39355 () Bool)

(assert (=> start!11044 (= b_free!7379 (not b_next!39355))))

(declare-fun tp!16980 () Bool)

(declare-fun b_and!58945 () Bool)

(assert (=> start!11044 (= tp!16980 b_and!58945)))

(declare-fun b!84339 () Bool)

(assert (=> b!84339 true))

(declare-fun b_next!39357 () Bool)

(declare-fun p!821 () Int)

(declare-fun lambda!10510 () Int)

(assert (=> start!11044 (= b_next!39353 (or (and b!84339 (= lambda!10510 p!821)) b_next!39357))))

(declare-fun b_next!39359 () Bool)

(declare-fun p!830 () Int)

(assert (=> start!11044 (= b_next!39355 (or (and b!84339 (= lambda!10510 p!830)) b_next!39359))))

(declare-fun bs!40765 () Bool)

(declare-fun b!84337 () Bool)

(assert (= bs!40765 (and b!84337 b!84339)))

(declare-fun lambda!10511 () Int)

(assert (=> bs!40765 (not (= lambda!10511 lambda!10510))))

(assert (=> b!84337 true))

(declare-fun b_next!39361 () Bool)

(assert (=> start!11044 (= b_next!39357 (or (and b!84337 (= lambda!10511 p!821)) b_next!39361))))

(declare-fun b_next!39363 () Bool)

(assert (=> start!11044 (= b_next!39359 (or (and b!84337 (= lambda!10511 p!830)) b_next!39363))))

(declare-fun bs!40766 () Bool)

(declare-fun b!84331 () Bool)

(assert (= bs!40766 (and b!84331 b!84339)))

(declare-fun lambda!10512 () Int)

(assert (=> bs!40766 (not (= lambda!10512 lambda!10510))))

(declare-fun bs!40767 () Bool)

(assert (= bs!40767 (and b!84331 b!84337)))

(assert (=> bs!40767 (not (= lambda!10512 lambda!10511))))

(assert (=> b!84331 true))

(declare-fun b_next!39365 () Bool)

(assert (=> start!11044 (= b_next!39361 (or (and b!84331 (= lambda!10512 p!821)) b_next!39365))))

(declare-fun b_next!39367 () Bool)

(assert (=> start!11044 (= b_next!39363 (or (and b!84331 (= lambda!10512 p!830)) b_next!39367))))

(declare-fun res!43549 () Bool)

(declare-fun e!45698 () Bool)

(assert (=> b!84331 (=> (not res!43549) (not e!45698))))

(declare-datatypes () ((List!688 (Cons!645 (h!1018 Int) (t!47976 List!688)) (Nil!647))))

(declare-fun more!2 () List!688)

(declare-fun ls!77 () List!688)

(declare-fun filter!35 (List!688 Int) List!688)

(assert (=> b!84331 (= res!43549 (= more!2 (filter!35 (t!47976 ls!77) lambda!10512)))))

(declare-fun b!84332 () Bool)

(declare-fun res!43548 () Bool)

(assert (=> b!84332 (=> (not res!43548) (not e!45698))))

(declare-fun t!47724 () Bool)

(declare-fun e!45697 () Bool)

(assert (=> b!84332 (= res!43548 (= t!47724 e!45697))))

(declare-fun res!43553 () Bool)

(assert (=> b!84332 (=> (not res!43553) (not e!45697))))

(declare-fun res!40793 () Bool)

(assert (=> b!84332 (= res!43553 res!40793)))

(declare-fun b!84333 () Bool)

(declare-fun filter_preserves_forall!0 (List!688 Int Int) Bool)

(assert (=> b!84333 (= e!45697 (filter_preserves_forall!0 (t!47976 ls!77) lambda!10512 p!821))))

(declare-fun res!43550 () Bool)

(assert (=> start!11044 (=> (not res!43550) (not e!45698))))

(declare-fun forall!36 (List!688 Int) Bool)

(assert (=> start!11044 (= res!43550 (forall!36 ls!77 p!821))))

(assert (=> start!11044 e!45698))

(assert (=> start!11044 true))

(assert (=> start!11044 tp!16981))

(assert (=> start!11044 tp!16980))

(declare-fun b!84334 () Bool)

(declare-fun res!43552 () Bool)

(assert (=> b!84334 (=> (not res!43552) (not e!45698))))

(declare-fun t!47721 () Bool)

(declare-fun e!45696 () Bool)

(assert (=> b!84334 (= res!43552 (= t!47721 e!45696))))

(declare-fun res!43551 () Bool)

(assert (=> b!84334 (=> (not res!43551) (not e!45696))))

(assert (=> b!84334 (= res!43551 (filter_preserves_forall!0 (t!47976 ls!77) lambda!10510 p!821))))

(declare-fun b!84335 () Bool)

(declare-fun res!43555 () Bool)

(assert (=> b!84335 (=> (not res!43555) (not e!45698))))

(assert (=> b!84335 (= res!43555 (and (not (is-Nil!647 ls!77)) (not (is-Nil!647 (t!47976 ls!77)))))))

(declare-fun b!84336 () Bool)

(declare-fun res!43557 () Bool)

(assert (=> b!84336 (=> (not res!43557) (not e!45698))))

(declare-fun ls!84 () List!688)

(declare-fun res!40794 () Bool)

(declare-fun less!2 () List!688)

(assert (=> b!84336 (= res!43557 (and (= res!40794 t!47724) res!40794 (= ls!84 less!2) (= p!830 p!821)))))

(declare-fun res!43556 () Bool)

(assert (=> b!84337 (=> (not res!43556) (not e!45698))))

(declare-fun equal!4 () List!688)

(assert (=> b!84337 (= res!43556 (= equal!4 (Cons!645 (h!1018 ls!77) (filter!35 (t!47976 ls!77) lambda!10511))))))

(declare-fun b!84338 () Bool)

(assert (=> b!84338 (= e!45696 (filter_preserves_forall!0 (t!47976 ls!77) lambda!10511 p!821))))

(declare-fun res!43547 () Bool)

(assert (=> b!84339 (=> (not res!43547) (not e!45698))))

(assert (=> b!84339 (= res!43547 (= less!2 (filter!35 (t!47976 ls!77) lambda!10510)))))

(declare-fun b!84340 () Bool)

(assert (=> b!84340 (= e!45698 (not (forall!36 ls!84 p!830)))))

(declare-fun b!84341 () Bool)

(declare-fun res!43554 () Bool)

(assert (=> b!84341 (=> (not res!43554) (not e!45698))))

(assert (=> b!84341 (= res!43554 (= res!40793 t!47721))))

(assert (= (and start!11044 res!43550) b!84335))

(assert (= (and b!84335 res!43555) b!84339))

(assert (= (and b!84339 res!43547) b!84337))

(assert (= (and b!84337 res!43556) b!84331))

(assert (= (and b!84331 res!43549) b!84334))

(assert (= (and b!84334 res!43551) b!84338))

(assert (= (and b!84334 res!43552) b!84341))

(assert (= (and b!84341 res!43554) b!84332))

(assert (= (and b!84332 res!43553) b!84333))

(assert (= (and b!84332 res!43548) b!84336))

(assert (= (and b!84336 res!43557) b!84340))

(declare-fun m!80110 () Bool)

(assert (=> b!84339 m!80110))

(declare-fun m!80112 () Bool)

(assert (=> b!84331 m!80112))

(declare-fun m!80114 () Bool)

(assert (=> b!84338 m!80114))

(declare-fun m!80116 () Bool)

(assert (=> b!84334 m!80116))

(declare-fun m!80118 () Bool)

(assert (=> b!84337 m!80118))

(declare-fun m!80120 () Bool)

(assert (=> b!84340 m!80120))

(declare-fun m!80122 () Bool)

(assert (=> b!84333 m!80122))

(declare-fun m!80124 () Bool)

(assert (=> start!11044 m!80124))

(push 1)

(assert (not b!84339))

(assert (not b_next!39365))

(assert (not b_next!39367))

(assert (not b!84337))

(assert b_and!58945)

(assert (not b!84340))

(assert (not b!84338))

(assert b_and!58943)

(assert (not b!84333))

(assert (not start!11044))

(assert (not b!84334))

(assert (not b!84331))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58943)

(assert b_and!58945)

(assert (not b_next!39367))

(assert (not b_next!39365))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!84358 () Bool)

(declare-fun e!45708 () List!688)

(declare-fun e!45707 () List!688)

(assert (=> b!84358 (= e!45708 e!45707)))

(declare-fun c!21051 () Bool)

(declare-fun e!45710 () Bool)

(assert (=> b!84358 (= c!21051 e!45710)))

(declare-fun res!43570 () Bool)

(assert (=> b!84358 (=> (not res!43570) (not e!45710))))

(assert (=> b!84358 (= res!43570 (is-Cons!645 (t!47976 ls!77)))))

(declare-fun lt!19630 () List!688)

(assert (=> b!84358 (= lt!19630 (filter!35 (t!47976 (t!47976 ls!77)) lambda!10510))))

(declare-fun b!84359 () Bool)

(declare-fun e!45709 () Bool)

(declare-fun lt!19631 () List!688)

(assert (=> b!84359 (= e!45709 (forall!36 lt!19631 lambda!10510))))

(declare-fun b!84360 () Bool)

(declare-fun dynLambda!1000 (Int Int) Bool)

(assert (=> b!84360 (= e!45710 (dynLambda!1000 lambda!10510 (h!1018 (t!47976 ls!77))))))

(declare-fun b!84361 () Bool)

(assert (=> b!84361 (= e!45707 (Cons!645 (h!1018 (t!47976 ls!77)) lt!19630))))

(declare-fun b!84362 () Bool)

(assert (=> b!84362 (= e!45707 lt!19630)))

(declare-fun d!56795 () Bool)

(assert (=> d!56795 e!45709))

(declare-fun res!43569 () Bool)

(assert (=> d!56795 (=> (not res!43569) (not e!45709))))

(declare-fun size!671 (List!688) Int)

(assert (=> d!56795 (= res!43569 (<= (size!671 lt!19631) (size!671 (t!47976 ls!77))))))

(assert (=> d!56795 (= lt!19631 e!45708)))

(declare-fun c!21052 () Bool)

(assert (=> d!56795 (= c!21052 (is-Nil!647 (t!47976 ls!77)))))

(assert (=> d!56795 (= (filter!35 (t!47976 ls!77) lambda!10510) lt!19631)))

(declare-fun b!84363 () Bool)

(declare-fun res!43568 () Bool)

(assert (=> b!84363 (=> (not res!43568) (not e!45709))))

(declare-fun content!142 (List!688) (Set Int))

(assert (=> b!84363 (= res!43568 (subset (content!142 lt!19631) (content!142 (t!47976 ls!77))))))

(declare-fun b!84364 () Bool)

(assert (=> b!84364 (= e!45708 Nil!647)))

(assert (= (and b!84358 res!43570) b!84360))

(assert (= (and b!84358 c!21051) b!84361))

(assert (= (and b!84358 (not c!21051)) b!84362))

(assert (= (and d!56795 c!21052) b!84364))

(assert (= (and d!56795 (not c!21052)) b!84358))

(assert (= (and d!56795 res!43569) b!84363))

(assert (= (and b!84363 res!43568) b!84359))

(declare-fun b_lambda!16587 () Bool)

(assert (=> (not b_lambda!16587) (not b!84360)))

(declare-fun m!80126 () Bool)

(assert (=> b!84359 m!80126))

(declare-fun m!80128 () Bool)

(assert (=> b!84363 m!80128))

(declare-fun m!80130 () Bool)

(assert (=> b!84363 m!80130))

(declare-fun m!80132 () Bool)

(assert (=> b!84360 m!80132))

(declare-fun m!80134 () Bool)

(assert (=> b!84358 m!80134))

(declare-fun m!80136 () Bool)

(assert (=> d!56795 m!80136))

(declare-fun m!80138 () Bool)

(assert (=> d!56795 m!80138))

(assert (=> b!84339 d!56795))

(declare-fun d!56797 () Bool)

(declare-fun e!45713 () Bool)

(assert (=> d!56797 e!45713))

(declare-fun c!21055 () Bool)

(assert (=> d!56797 (= c!21055 (is-Cons!645 (t!47976 ls!77)))))

(assert (=> d!56797 (forall!36 (t!47976 ls!77) p!821)))

(assert (=> d!56797 (= (filter_preserves_forall!0 (t!47976 ls!77) lambda!10511 p!821) true)))

(declare-fun b!84369 () Bool)

(assert (=> b!84369 (= e!45713 (forall!36 (filter!35 (t!47976 ls!77) lambda!10511) p!821))))

(declare-fun lt!19634 () Bool)

(assert (=> b!84369 (= lt!19634 (filter_preserves_forall!0 (t!47976 (t!47976 ls!77)) lambda!10511 p!821))))

(declare-fun b!84370 () Bool)

(assert (=> b!84370 (= e!45713 (forall!36 (filter!35 (t!47976 ls!77) lambda!10511) p!821))))

(assert (= (and d!56797 c!21055) b!84369))

(assert (= (and d!56797 (not c!21055)) b!84370))

(declare-fun m!80140 () Bool)

(assert (=> d!56797 m!80140))

(assert (=> b!84369 m!80118))

(assert (=> b!84369 m!80118))

(declare-fun m!80142 () Bool)

(assert (=> b!84369 m!80142))

(declare-fun m!80144 () Bool)

(assert (=> b!84369 m!80144))

(assert (=> b!84370 m!80118))

(assert (=> b!84370 m!80118))

(assert (=> b!84370 m!80142))

(assert (=> b!84338 d!56797))

(declare-fun d!56799 () Bool)

(declare-fun e!45714 () Bool)

(assert (=> d!56799 e!45714))

(declare-fun c!21056 () Bool)

(assert (=> d!56799 (= c!21056 (is-Cons!645 (t!47976 ls!77)))))

(assert (=> d!56799 (forall!36 (t!47976 ls!77) p!821)))

(assert (=> d!56799 (= (filter_preserves_forall!0 (t!47976 ls!77) lambda!10510 p!821) true)))

(declare-fun b!84371 () Bool)

(assert (=> b!84371 (= e!45714 (forall!36 (filter!35 (t!47976 ls!77) lambda!10510) p!821))))

(declare-fun lt!19635 () Bool)

(assert (=> b!84371 (= lt!19635 (filter_preserves_forall!0 (t!47976 (t!47976 ls!77)) lambda!10510 p!821))))

(declare-fun b!84372 () Bool)

(assert (=> b!84372 (= e!45714 (forall!36 (filter!35 (t!47976 ls!77) lambda!10510) p!821))))

(assert (= (and d!56799 c!21056) b!84371))

(assert (= (and d!56799 (not c!21056)) b!84372))

(assert (=> d!56799 m!80140))

(assert (=> b!84371 m!80110))

(assert (=> b!84371 m!80110))

(declare-fun m!80146 () Bool)

(assert (=> b!84371 m!80146))

(declare-fun m!80148 () Bool)

(assert (=> b!84371 m!80148))

(assert (=> b!84372 m!80110))

(assert (=> b!84372 m!80110))

(assert (=> b!84372 m!80146))

(assert (=> b!84334 d!56799))

(declare-fun d!56801 () Bool)

(declare-fun res!43575 () Bool)

(declare-fun e!45719 () Bool)

(assert (=> d!56801 (=> res!43575 e!45719)))

(assert (=> d!56801 (= res!43575 (is-Nil!647 ls!84))))

(assert (=> d!56801 (= (forall!36 ls!84 p!830) e!45719)))

(declare-fun b!84377 () Bool)

(declare-fun e!45720 () Bool)

(assert (=> b!84377 (= e!45719 e!45720)))

(declare-fun res!43576 () Bool)

(assert (=> b!84377 (=> (not res!43576) (not e!45720))))

(assert (=> b!84377 (= res!43576 (dynLambda!1000 p!830 (h!1018 ls!84)))))

(declare-fun b!84378 () Bool)

(assert (=> b!84378 (= e!45720 (forall!36 (t!47976 ls!84) p!830))))

(assert (= (and d!56801 (not res!43575)) b!84377))

(assert (= (and b!84377 res!43576) b!84378))

(declare-fun b_lambda!16589 () Bool)

(assert (=> (not b_lambda!16589) (not b!84377)))

(declare-fun t!47978 () Bool)

(declare-fun tb!46245 () Bool)

(assert (=> (and start!11044 (= p!821 p!830) t!47978) tb!46245))

(declare-fun result!46675 () Bool)

(assert (=> tb!46245 (= result!46675 true)))

(assert (=> b!84377 t!47978))

(declare-fun b_and!58947 () Bool)

(assert (= b_and!58943 (and (=> t!47978 result!46675) b_and!58947)))

(declare-fun t!47980 () Bool)

(declare-fun tb!46247 () Bool)

(assert (=> (and start!11044 (= p!830 p!830) t!47980) tb!46247))

(declare-fun result!46677 () Bool)

(assert (=> tb!46247 (= result!46677 true)))

(assert (=> b!84377 t!47980))

(declare-fun b_and!58949 () Bool)

(assert (= b_and!58945 (and (=> t!47980 result!46677) b_and!58949)))

(declare-fun m!80150 () Bool)

(assert (=> b!84377 m!80150))

(declare-fun m!80152 () Bool)

(assert (=> b!84378 m!80152))

(assert (=> b!84340 d!56801))

(declare-fun b!84379 () Bool)

(declare-fun e!45722 () List!688)

(declare-fun e!45721 () List!688)

(assert (=> b!84379 (= e!45722 e!45721)))

(declare-fun c!21057 () Bool)

(declare-fun e!45724 () Bool)

(assert (=> b!84379 (= c!21057 e!45724)))

(declare-fun res!43579 () Bool)

(assert (=> b!84379 (=> (not res!43579) (not e!45724))))

(assert (=> b!84379 (= res!43579 (is-Cons!645 (t!47976 ls!77)))))

(declare-fun lt!19636 () List!688)

(assert (=> b!84379 (= lt!19636 (filter!35 (t!47976 (t!47976 ls!77)) lambda!10512))))

(declare-fun b!84380 () Bool)

(declare-fun e!45723 () Bool)

(declare-fun lt!19637 () List!688)

(assert (=> b!84380 (= e!45723 (forall!36 lt!19637 lambda!10512))))

(declare-fun b!84381 () Bool)

(assert (=> b!84381 (= e!45724 (dynLambda!1000 lambda!10512 (h!1018 (t!47976 ls!77))))))

(declare-fun b!84382 () Bool)

(assert (=> b!84382 (= e!45721 (Cons!645 (h!1018 (t!47976 ls!77)) lt!19636))))

(declare-fun b!84383 () Bool)

(assert (=> b!84383 (= e!45721 lt!19636)))

(declare-fun d!56803 () Bool)

(assert (=> d!56803 e!45723))

(declare-fun res!43578 () Bool)

(assert (=> d!56803 (=> (not res!43578) (not e!45723))))

(assert (=> d!56803 (= res!43578 (<= (size!671 lt!19637) (size!671 (t!47976 ls!77))))))

(assert (=> d!56803 (= lt!19637 e!45722)))

(declare-fun c!21058 () Bool)

(assert (=> d!56803 (= c!21058 (is-Nil!647 (t!47976 ls!77)))))

(assert (=> d!56803 (= (filter!35 (t!47976 ls!77) lambda!10512) lt!19637)))

(declare-fun b!84384 () Bool)

(declare-fun res!43577 () Bool)

(assert (=> b!84384 (=> (not res!43577) (not e!45723))))

(assert (=> b!84384 (= res!43577 (subset (content!142 lt!19637) (content!142 (t!47976 ls!77))))))

(declare-fun b!84385 () Bool)

(assert (=> b!84385 (= e!45722 Nil!647)))

(assert (= (and b!84379 res!43579) b!84381))

(assert (= (and b!84379 c!21057) b!84382))

(assert (= (and b!84379 (not c!21057)) b!84383))

(assert (= (and d!56803 c!21058) b!84385))

(assert (= (and d!56803 (not c!21058)) b!84379))

(assert (= (and d!56803 res!43578) b!84384))

(assert (= (and b!84384 res!43577) b!84380))

(declare-fun b_lambda!16591 () Bool)

(assert (=> (not b_lambda!16591) (not b!84381)))

(declare-fun m!80154 () Bool)

(assert (=> b!84380 m!80154))

(declare-fun m!80156 () Bool)

(assert (=> b!84384 m!80156))

(assert (=> b!84384 m!80130))

(declare-fun m!80158 () Bool)

(assert (=> b!84381 m!80158))

(declare-fun m!80160 () Bool)

(assert (=> b!84379 m!80160))

(declare-fun m!80162 () Bool)

(assert (=> d!56803 m!80162))

(assert (=> d!56803 m!80138))

(assert (=> b!84331 d!56803))

(declare-fun b!84386 () Bool)

(declare-fun e!45726 () List!688)

(declare-fun e!45725 () List!688)

(assert (=> b!84386 (= e!45726 e!45725)))

(declare-fun c!21059 () Bool)

(declare-fun e!45728 () Bool)

(assert (=> b!84386 (= c!21059 e!45728)))

(declare-fun res!43582 () Bool)

(assert (=> b!84386 (=> (not res!43582) (not e!45728))))

(assert (=> b!84386 (= res!43582 (is-Cons!645 (t!47976 ls!77)))))

(declare-fun lt!19638 () List!688)

(assert (=> b!84386 (= lt!19638 (filter!35 (t!47976 (t!47976 ls!77)) lambda!10511))))

(declare-fun b!84387 () Bool)

(declare-fun e!45727 () Bool)

(declare-fun lt!19639 () List!688)

(assert (=> b!84387 (= e!45727 (forall!36 lt!19639 lambda!10511))))

(declare-fun b!84388 () Bool)

(assert (=> b!84388 (= e!45728 (dynLambda!1000 lambda!10511 (h!1018 (t!47976 ls!77))))))

(declare-fun b!84389 () Bool)

(assert (=> b!84389 (= e!45725 (Cons!645 (h!1018 (t!47976 ls!77)) lt!19638))))

(declare-fun b!84390 () Bool)

(assert (=> b!84390 (= e!45725 lt!19638)))

(declare-fun d!56805 () Bool)

(assert (=> d!56805 e!45727))

(declare-fun res!43581 () Bool)

(assert (=> d!56805 (=> (not res!43581) (not e!45727))))

(assert (=> d!56805 (= res!43581 (<= (size!671 lt!19639) (size!671 (t!47976 ls!77))))))

(assert (=> d!56805 (= lt!19639 e!45726)))

(declare-fun c!21060 () Bool)

(assert (=> d!56805 (= c!21060 (is-Nil!647 (t!47976 ls!77)))))

(assert (=> d!56805 (= (filter!35 (t!47976 ls!77) lambda!10511) lt!19639)))

(declare-fun b!84391 () Bool)

(declare-fun res!43580 () Bool)

(assert (=> b!84391 (=> (not res!43580) (not e!45727))))

(assert (=> b!84391 (= res!43580 (subset (content!142 lt!19639) (content!142 (t!47976 ls!77))))))

(declare-fun b!84392 () Bool)

(assert (=> b!84392 (= e!45726 Nil!647)))

(assert (= (and b!84386 res!43582) b!84388))

(assert (= (and b!84386 c!21059) b!84389))

(assert (= (and b!84386 (not c!21059)) b!84390))

(assert (= (and d!56805 c!21060) b!84392))

(assert (= (and d!56805 (not c!21060)) b!84386))

(assert (= (and d!56805 res!43581) b!84391))

(assert (= (and b!84391 res!43580) b!84387))

(declare-fun b_lambda!16593 () Bool)

(assert (=> (not b_lambda!16593) (not b!84388)))

(declare-fun m!80164 () Bool)

(assert (=> b!84387 m!80164))

(declare-fun m!80166 () Bool)

(assert (=> b!84391 m!80166))

(assert (=> b!84391 m!80130))

(declare-fun m!80168 () Bool)

(assert (=> b!84388 m!80168))

(declare-fun m!80170 () Bool)

(assert (=> b!84386 m!80170))

(declare-fun m!80172 () Bool)

(assert (=> d!56805 m!80172))

(assert (=> d!56805 m!80138))

(assert (=> b!84337 d!56805))

(declare-fun d!56807 () Bool)

(declare-fun res!43583 () Bool)

(declare-fun e!45729 () Bool)

(assert (=> d!56807 (=> res!43583 e!45729)))

(assert (=> d!56807 (= res!43583 (is-Nil!647 ls!77))))

(assert (=> d!56807 (= (forall!36 ls!77 p!821) e!45729)))

(declare-fun b!84393 () Bool)

(declare-fun e!45730 () Bool)

(assert (=> b!84393 (= e!45729 e!45730)))

(declare-fun res!43584 () Bool)

(assert (=> b!84393 (=> (not res!43584) (not e!45730))))

(assert (=> b!84393 (= res!43584 (dynLambda!1000 p!821 (h!1018 ls!77)))))

(declare-fun b!84394 () Bool)

(assert (=> b!84394 (= e!45730 (forall!36 (t!47976 ls!77) p!821))))

(assert (= (and d!56807 (not res!43583)) b!84393))

(assert (= (and b!84393 res!43584) b!84394))

(declare-fun b_lambda!16595 () Bool)

(assert (=> (not b_lambda!16595) (not b!84393)))

(declare-fun t!47982 () Bool)

(declare-fun tb!46249 () Bool)

(assert (=> (and start!11044 (= p!821 p!821) t!47982) tb!46249))

(declare-fun result!46679 () Bool)

(assert (=> tb!46249 (= result!46679 true)))

(assert (=> b!84393 t!47982))

(declare-fun b_and!58951 () Bool)

(assert (= b_and!58947 (and (=> t!47982 result!46679) b_and!58951)))

(declare-fun t!47984 () Bool)

(declare-fun tb!46251 () Bool)

(assert (=> (and start!11044 (= p!830 p!821) t!47984) tb!46251))

(declare-fun result!46681 () Bool)

(assert (=> tb!46251 (= result!46681 true)))

(assert (=> b!84393 t!47984))

(declare-fun b_and!58953 () Bool)

(assert (= b_and!58949 (and (=> t!47984 result!46681) b_and!58953)))

(declare-fun m!80174 () Bool)

(assert (=> b!84393 m!80174))

(assert (=> b!84394 m!80140))

(assert (=> start!11044 d!56807))

(declare-fun d!56809 () Bool)

(declare-fun e!45731 () Bool)

(assert (=> d!56809 e!45731))

(declare-fun c!21061 () Bool)

(assert (=> d!56809 (= c!21061 (is-Cons!645 (t!47976 ls!77)))))

(assert (=> d!56809 (forall!36 (t!47976 ls!77) p!821)))

(assert (=> d!56809 (= (filter_preserves_forall!0 (t!47976 ls!77) lambda!10512 p!821) true)))

(declare-fun b!84395 () Bool)

(assert (=> b!84395 (= e!45731 (forall!36 (filter!35 (t!47976 ls!77) lambda!10512) p!821))))

(declare-fun lt!19640 () Bool)

(assert (=> b!84395 (= lt!19640 (filter_preserves_forall!0 (t!47976 (t!47976 ls!77)) lambda!10512 p!821))))

(declare-fun b!84396 () Bool)

(assert (=> b!84396 (= e!45731 (forall!36 (filter!35 (t!47976 ls!77) lambda!10512) p!821))))

(assert (= (and d!56809 c!21061) b!84395))

(assert (= (and d!56809 (not c!21061)) b!84396))

(assert (=> d!56809 m!80140))

(assert (=> b!84395 m!80112))

(assert (=> b!84395 m!80112))

(declare-fun m!80176 () Bool)

(assert (=> b!84395 m!80176))

(declare-fun m!80178 () Bool)

(assert (=> b!84395 m!80178))

(assert (=> b!84396 m!80112))

(assert (=> b!84396 m!80112))

(assert (=> b!84396 m!80176))

(assert (=> b!84333 d!56809))

(declare-fun b_lambda!16597 () Bool)

(assert (= b_lambda!16591 (or b!84331 b_lambda!16597)))

(declare-fun bs!40768 () Bool)

(declare-fun d!56811 () Bool)

(assert (= bs!40768 (and d!56811 b!84331)))

(assert (=> bs!40768 (= (dynLambda!1000 lambda!10512 (h!1018 (t!47976 ls!77))) (> (h!1018 (t!47976 ls!77)) (h!1018 ls!77)))))

(assert (=> b!84381 d!56811))

(declare-fun b_lambda!16599 () Bool)

(assert (= b_lambda!16589 (or (and b!84331 (= lambda!10512 p!830)) (and b!84337 (= lambda!10511 p!830)) (and start!11044 b_free!7379) (and b!84339 (= lambda!10510 p!830)) (and start!11044 b_free!7377 (= p!821 p!830)) b_lambda!16599)))

(declare-fun bs!40769 () Bool)

(declare-fun d!56813 () Bool)

(assert (= bs!40769 (and d!56813 b!84339)))

(assert (=> bs!40769 (= (dynLambda!1000 lambda!10510 (h!1018 ls!84)) (< (h!1018 ls!84) (h!1018 ls!77)))))

(assert (=> (and b!84339 (= lambda!10510 p!830) b!84377) d!56813))

(declare-fun bs!40770 () Bool)

(declare-fun d!56815 () Bool)

(assert (= bs!40770 (and d!56815 b!84331)))

(assert (=> bs!40770 (= (dynLambda!1000 lambda!10512 (h!1018 ls!84)) (> (h!1018 ls!84) (h!1018 ls!77)))))

(assert (=> (and b!84331 (= lambda!10512 p!830) b!84377) d!56815))

(declare-fun bs!40771 () Bool)

(declare-fun d!56817 () Bool)

(assert (= bs!40771 (and d!56817 b!84337)))

(assert (=> bs!40771 (= (dynLambda!1000 lambda!10511 (h!1018 ls!84)) (= (h!1018 ls!84) (h!1018 ls!77)))))

(assert (=> (and b!84337 (= lambda!10511 p!830) b!84377) d!56817))

(declare-fun b_lambda!16601 () Bool)

(assert (= b_lambda!16595 (or (and start!11044 b_free!7379 (= p!830 p!821)) (and b!84331 (= lambda!10512 p!821)) (and b!84337 (= lambda!10511 p!821)) (and start!11044 b_free!7377) (and b!84339 (= lambda!10510 p!821)) b_lambda!16601)))

(declare-fun bs!40772 () Bool)

(declare-fun d!56819 () Bool)

(assert (= bs!40772 (and d!56819 b!84337)))

(assert (=> bs!40772 (= (dynLambda!1000 lambda!10511 (h!1018 ls!77)) (= (h!1018 ls!77) (h!1018 ls!77)))))

(assert (=> (and b!84337 (= lambda!10511 p!821) b!84393) d!56819))

(declare-fun bs!40773 () Bool)

(declare-fun d!56821 () Bool)

(assert (= bs!40773 (and d!56821 b!84339)))

(assert (=> bs!40773 (= (dynLambda!1000 lambda!10510 (h!1018 ls!77)) (< (h!1018 ls!77) (h!1018 ls!77)))))

(assert (=> (and b!84339 (= lambda!10510 p!821) b!84393) d!56821))

(declare-fun bs!40774 () Bool)

(declare-fun d!56823 () Bool)

(assert (= bs!40774 (and d!56823 b!84331)))

(assert (=> bs!40774 (= (dynLambda!1000 lambda!10512 (h!1018 ls!77)) (> (h!1018 ls!77) (h!1018 ls!77)))))

(assert (=> (and b!84331 (= lambda!10512 p!821) b!84393) d!56823))

(declare-fun b_lambda!16603 () Bool)

(assert (= b_lambda!16587 (or b!84339 b_lambda!16603)))

(declare-fun bs!40775 () Bool)

(declare-fun d!56825 () Bool)

(assert (= bs!40775 (and d!56825 b!84339)))

(assert (=> bs!40775 (= (dynLambda!1000 lambda!10510 (h!1018 (t!47976 ls!77))) (< (h!1018 (t!47976 ls!77)) (h!1018 ls!77)))))

(assert (=> b!84360 d!56825))

(declare-fun b_lambda!16605 () Bool)

(assert (= b_lambda!16593 (or b!84337 b_lambda!16605)))

(declare-fun bs!40776 () Bool)

(declare-fun d!56827 () Bool)

(assert (= bs!40776 (and d!56827 b!84337)))

(assert (=> bs!40776 (= (dynLambda!1000 lambda!10511 (h!1018 (t!47976 ls!77))) (= (h!1018 (t!47976 ls!77)) (h!1018 ls!77)))))

(assert (=> b!84388 d!56827))

(push 1)

(assert (not b!84395))

(assert (not b!84371))

(assert (not d!56809))

(assert (not b!84386))

(assert (not b!84396))

(assert (not b!84394))

(assert (not b_next!39365))

(assert (not b!84378))

(assert (not b!84380))

(assert (not b_next!39367))

(assert (not d!56803))

(assert (not d!56797))

(assert (not b!84363))

(assert (not b_lambda!16597))

(assert (not b_lambda!16603))

(assert (not b!84369))

(assert (not b!84379))

(assert (not d!56805))

(assert b_and!58951)

(assert (not d!56795))

(assert (not b_lambda!16605))

(assert (not b_lambda!16601))

(assert (not b_lambda!16599))

(assert (not b!84372))

(assert (not b!84359))

(assert (not d!56799))

(assert (not b!84387))

(assert (not b!84358))

(assert (not b!84391))

(assert b_and!58953)

(assert (not b!84370))

(assert (not b!84384))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58951)

(assert b_and!58953)

(assert (not b_next!39367))

(assert (not b_next!39365))

(check-sat)

(pop 1)

