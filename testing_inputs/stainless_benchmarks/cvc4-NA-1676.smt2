; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11670 () Bool)

(assert start!11670)

(declare-fun b_free!7533 () Bool)

(declare-fun b_next!39891 () Bool)

(assert (=> start!11670 (= b_free!7533 (not b_next!39891))))

(declare-fun tp!17462 () Bool)

(declare-fun b_and!60511 () Bool)

(assert (=> start!11670 (= tp!17462 b_and!60511)))

(declare-fun b!89397 () Bool)

(declare-fun res!46823 () Bool)

(declare-fun e!48727 () Bool)

(assert (=> b!89397 (=> (not res!46823) (not e!48727))))

(declare-datatypes () ((T!6015 (T!6016 (val!200 Int)))))

(declare-datatypes () ((List!744 (Cons!698 (h!1102 T!6015) (t!48836 List!744)) (Nil!700))))

(declare-fun l!1596 () List!744)

(declare-fun t!48611 () T!6015)

(declare-fun key!527 () Int)

(declare-fun dynLambda!1071 (Int T!6015) Int)

(assert (=> b!89397 (= res!46823 (> (dynLambda!1071 key!527 t!48611) (dynLambda!1071 key!527 (h!1102 l!1596))))))

(declare-fun b!89398 () Bool)

(declare-fun e!48729 () Bool)

(declare-fun res!45954 () List!744)

(declare-fun length!19 (List!744) Int)

(assert (=> b!89398 (= e!48729 (not (= (length!19 res!45954) (+ 1 (length!19 l!1596)))))))

(declare-fun b!89399 () Bool)

(declare-fun e!48728 () Bool)

(declare-fun tp_is_empty!395 () Bool)

(declare-fun tp!17461 () Bool)

(assert (=> b!89399 (= e!48728 (and tp_is_empty!395 tp!17461))))

(declare-fun b!89400 () Bool)

(declare-fun e!48730 () Bool)

(declare-fun tp!17460 () Bool)

(assert (=> b!89400 (= e!48730 (and tp_is_empty!395 tp!17460))))

(declare-fun b!89401 () Bool)

(declare-fun res!46826 () Bool)

(assert (=> b!89401 (=> (not res!46826) (not e!48727))))

(declare-fun x$3!216 () T!6015)

(assert (=> b!89401 (= res!46826 (= x$3!216 (h!1102 l!1596)))))

(declare-fun b!89402 () Bool)

(declare-fun res!46825 () Bool)

(assert (=> b!89402 (=> (not res!46825) (not e!48727))))

(declare-fun $colon$colon!25 (List!744 T!6015) List!744)

(declare-fun insert!34 (T!6015 List!744 Int) List!744)

(assert (=> b!89402 (= res!46825 (= res!45954 ($colon$colon!25 (insert!34 t!48611 (t!48836 l!1596) key!527) x$3!216)))))

(declare-fun res!46822 () Bool)

(assert (=> start!11670 (=> (not res!46822) (not e!48727))))

(assert (=> start!11670 (= res!46822 (not (is-Nil!700 l!1596)))))

(assert (=> start!11670 e!48727))

(assert (=> start!11670 e!48730))

(assert (=> start!11670 tp_is_empty!395))

(assert (=> start!11670 e!48728))

(assert (=> start!11670 tp!17462))

(declare-fun b!89403 () Bool)

(assert (=> b!89403 (= e!48727 e!48729)))

(declare-fun res!46824 () Bool)

(assert (=> b!89403 (=> res!46824 e!48729)))

(declare-fun content!167 (List!744) (Set T!6015))

(assert (=> b!89403 (= res!46824 (not (= (content!167 res!45954) (union (insert t!48611 (as emptyset (Set T!6015))) (content!167 l!1596)))))))

(assert (= (and start!11670 res!46822) b!89397))

(assert (= (and b!89397 res!46823) b!89401))

(assert (= (and b!89401 res!46826) b!89402))

(assert (= (and b!89402 res!46825) b!89403))

(assert (= (and b!89403 (not res!46824)) b!89398))

(assert (= (and start!11670 (is-Cons!698 l!1596)) b!89400))

(assert (= (and start!11670 (is-Cons!698 res!45954)) b!89399))

(declare-fun b_lambda!18267 () Bool)

(assert (=> (not b_lambda!18267) (not b!89397)))

(declare-fun t!48833 () Bool)

(declare-fun tb!46713 () Bool)

(assert (=> (and start!11670 (= key!527 key!527) t!48833) tb!46713))

(declare-fun result!47171 () Bool)

(assert (=> tb!46713 (= result!47171 true)))

(assert (=> b!89397 t!48833))

(declare-fun b_and!60513 () Bool)

(assert (= b_and!60511 (and (=> t!48833 result!47171) b_and!60513)))

(declare-fun b_lambda!18269 () Bool)

(assert (=> (not b_lambda!18269) (not b!89397)))

(declare-fun t!48835 () Bool)

(declare-fun tb!46715 () Bool)

(assert (=> (and start!11670 (= key!527 key!527) t!48835) tb!46715))

(declare-fun result!47173 () Bool)

(assert (=> tb!46715 (= result!47173 true)))

(assert (=> b!89397 t!48835))

(declare-fun b_and!60515 () Bool)

(assert (= b_and!60513 (and (=> t!48835 result!47173) b_and!60515)))

(declare-fun m!85478 () Bool)

(assert (=> b!89397 m!85478))

(declare-fun m!85480 () Bool)

(assert (=> b!89397 m!85480))

(declare-fun m!85482 () Bool)

(assert (=> b!89398 m!85482))

(declare-fun m!85484 () Bool)

(assert (=> b!89398 m!85484))

(declare-fun m!85486 () Bool)

(assert (=> b!89402 m!85486))

(assert (=> b!89402 m!85486))

(declare-fun m!85488 () Bool)

(assert (=> b!89402 m!85488))

(declare-fun m!85490 () Bool)

(assert (=> b!89403 m!85490))

(declare-fun m!85492 () Bool)

(assert (=> b!89403 m!85492))

(declare-fun m!85494 () Bool)

(assert (=> b!89403 m!85494))

(push 1)

(assert (not b_lambda!18269))

(assert (not b!89402))

(assert (not b_next!39891))

(assert (not b!89403))

(assert (not b!89398))

(assert b_and!60515)

(assert (not b!89399))

(assert tp_is_empty!395)

(assert (not b_lambda!18267))

(assert (not b!89400))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60515)

(assert (not b_next!39891))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18271 () Bool)

(assert (= b_lambda!18267 (or (and start!11670 b_free!7533) b_lambda!18271)))

(declare-fun b_lambda!18273 () Bool)

(assert (= b_lambda!18269 (or (and start!11670 b_free!7533) b_lambda!18273)))

(push 1)

(assert (not b!89402))

(assert (not b_next!39891))

(assert (not b!89403))

(assert (not b!89398))

(assert b_and!60515)

(assert (not b!89399))

(assert tp_is_empty!395)

(assert (not b_lambda!18273))

(assert (not b_lambda!18271))

(assert (not b!89400))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60515)

(assert (not b_next!39891))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59189 () Bool)

(assert (=> d!59189 (= ($colon$colon!25 (insert!34 t!48611 (t!48836 l!1596) key!527) x$3!216) (Cons!698 x$3!216 (insert!34 t!48611 (t!48836 l!1596) key!527)))))

(assert (=> b!89402 d!59189))

(declare-fun b!89424 () Bool)

(declare-fun e!48752 () List!744)

(assert (=> b!89424 (= e!48752 ($colon$colon!25 (insert!34 t!48611 (t!48836 (t!48836 l!1596)) key!527) (h!1102 (t!48836 l!1596))))))

(declare-fun b!89425 () Bool)

(declare-fun e!48753 () Bool)

(declare-fun e!48754 () Bool)

(assert (=> b!89425 (= e!48753 e!48754)))

(declare-fun res!46843 () Bool)

(assert (=> b!89425 (=> (not res!46843) (not e!48754))))

(assert (=> b!89425 (= res!46843 (is-Cons!698 (t!48836 l!1596)))))

(declare-fun b!89426 () Bool)

(declare-fun e!48748 () Bool)

(declare-fun e!48750 () Bool)

(assert (=> b!89426 (= e!48748 e!48750)))

(declare-fun res!46846 () Bool)

(assert (=> b!89426 (=> (not res!46846) (not e!48750))))

(declare-fun lt!20406 () Bool)

(assert (=> b!89426 (= res!46846 (and (not lt!20406) (is-Cons!698 (t!48836 l!1596))))))

(declare-fun b!89427 () Bool)

(assert (=> b!89427 (= e!48754 (<= (dynLambda!1071 key!527 t!48611) (dynLambda!1071 key!527 (h!1102 (t!48836 l!1596)))))))

(declare-fun b!89428 () Bool)

(declare-fun e!48751 () List!744)

(assert (=> b!89428 (= e!48751 ($colon$colon!25 (t!48836 l!1596) t!48611))))

(declare-fun b!89429 () Bool)

(declare-fun res!46847 () List!744)

(assert (=> b!89429 (= e!48751 res!46847)))

(assert (=> b!89429 true))

(declare-fun e!48747 () Bool)

(assert (=> b!89429 e!48747))

(declare-fun b!89430 () Bool)

(assert (=> b!89430 (= e!48752 e!48751)))

(declare-fun c!21936 () Bool)

(assert (=> b!89430 (= c!21936 e!48748)))

(declare-fun res!46848 () Bool)

(assert (=> b!89430 (=> res!46848 e!48748)))

(assert (=> b!89430 (= res!46848 lt!20406)))

(declare-fun d!59191 () Bool)

(declare-fun e!48749 () Bool)

(assert (=> d!59191 e!48749))

(declare-fun res!46845 () Bool)

(assert (=> d!59191 (=> (not res!46845) (not e!48749))))

(declare-fun lt!20405 () List!744)

(assert (=> d!59191 (= res!46845 (= (content!167 lt!20405) (union (insert t!48611 (as emptyset (Set T!6015))) (content!167 (t!48836 l!1596)))))))

(assert (=> d!59191 (= lt!20405 e!48752)))

(declare-fun c!21935 () Bool)

(assert (=> d!59191 (= c!21935 e!48753)))

(declare-fun res!46844 () Bool)

(assert (=> d!59191 (=> res!46844 e!48753)))

(assert (=> d!59191 (= res!46844 lt!20406)))

(assert (=> d!59191 (= lt!20406 (is-Nil!700 (t!48836 l!1596)))))

(assert (=> d!59191 (= (insert!34 t!48611 (t!48836 l!1596) key!527) lt!20405)))

(declare-fun b!89431 () Bool)

(declare-fun tp!17465 () Bool)

(assert (=> b!89431 (= e!48747 (and tp_is_empty!395 tp!17465))))

(declare-fun b!89432 () Bool)

(assert (=> b!89432 (= e!48750 (<= (dynLambda!1071 key!527 t!48611) (dynLambda!1071 key!527 (h!1102 (t!48836 l!1596)))))))

(declare-fun b!89433 () Bool)

(assert (=> b!89433 (= e!48749 (= (length!19 lt!20405) (+ 1 (length!19 (t!48836 l!1596)))))))

(assert (= (and d!59191 (not res!46844)) b!89425))

(assert (= (and b!89425 res!46843) b!89427))

(assert (= (and b!89430 (not res!46848)) b!89426))

(assert (= (and b!89426 res!46846) b!89432))

(assert (= (and b!89429 (is-Cons!698 res!46847)) b!89431))

(assert (= (and b!89430 c!21936) b!89428))

(assert (= (and b!89430 (not c!21936)) b!89429))

(assert (= (and d!59191 c!21935) b!89430))

(assert (= (and d!59191 (not c!21935)) b!89424))

(assert (= (and d!59191 res!46845) b!89433))

(declare-fun b_lambda!18275 () Bool)

(assert (=> (not b_lambda!18275) (not b!89427)))

(assert (=> b!89427 t!48833))

(declare-fun b_and!60517 () Bool)

(assert (= b_and!60515 (and (=> t!48833 result!47171) b_and!60517)))

(declare-fun b_lambda!18277 () Bool)

(assert (=> (not b_lambda!18277) (not b!89427)))

(declare-fun t!48840 () Bool)

(declare-fun tb!46717 () Bool)

(assert (=> (and start!11670 (= key!527 key!527) t!48840) tb!46717))

(declare-fun result!47175 () Bool)

(assert (=> tb!46717 (= result!47175 true)))

(assert (=> b!89427 t!48840))

(declare-fun b_and!60519 () Bool)

(assert (= b_and!60517 (and (=> t!48840 result!47175) b_and!60519)))

(declare-fun b_lambda!18279 () Bool)

(assert (=> (not b_lambda!18279) (not b!89432)))

(assert (=> b!89432 t!48833))

(declare-fun b_and!60521 () Bool)

(assert (= b_and!60519 (and (=> t!48833 result!47171) b_and!60521)))

(declare-fun b_lambda!18281 () Bool)

(assert (=> (not b_lambda!18281) (not b!89432)))

(assert (=> b!89432 t!48840))

(declare-fun b_and!60523 () Bool)

(assert (= b_and!60521 (and (=> t!48840 result!47175) b_and!60523)))

(declare-fun m!85496 () Bool)

(assert (=> d!59191 m!85496))

(assert (=> d!59191 m!85492))

(declare-fun m!85498 () Bool)

(assert (=> d!59191 m!85498))

(declare-fun m!85500 () Bool)

(assert (=> b!89428 m!85500))

(declare-fun m!85502 () Bool)

(assert (=> b!89424 m!85502))

(assert (=> b!89424 m!85502))

(declare-fun m!85504 () Bool)

(assert (=> b!89424 m!85504))

(declare-fun m!85506 () Bool)

(assert (=> b!89433 m!85506))

(declare-fun m!85508 () Bool)

(assert (=> b!89433 m!85508))

(assert (=> b!89427 m!85478))

(declare-fun m!85510 () Bool)

(assert (=> b!89427 m!85510))

(assert (=> b!89432 m!85478))

(assert (=> b!89432 m!85510))

(assert (=> b!89402 d!59191))

(declare-fun d!59193 () Bool)

(declare-fun c!21939 () Bool)

(assert (=> d!59193 (= c!21939 (is-Nil!700 res!45954))))

(declare-fun e!48757 () (Set T!6015))

(assert (=> d!59193 (= (content!167 res!45954) e!48757)))

(declare-fun b!89438 () Bool)

(assert (=> b!89438 (= e!48757 (as emptyset (Set T!6015)))))

(declare-fun b!89439 () Bool)

(assert (=> b!89439 (= e!48757 (union (insert (h!1102 res!45954) (as emptyset (Set T!6015))) (content!167 (t!48836 res!45954))))))

(assert (= (and d!59193 c!21939) b!89438))

(assert (= (and d!59193 (not c!21939)) b!89439))

(declare-fun m!85512 () Bool)

(assert (=> b!89439 m!85512))

(declare-fun m!85514 () Bool)

(assert (=> b!89439 m!85514))

(assert (=> b!89403 d!59193))

(declare-fun d!59195 () Bool)

(declare-fun c!21940 () Bool)

(assert (=> d!59195 (= c!21940 (is-Nil!700 l!1596))))

(declare-fun e!48758 () (Set T!6015))

(assert (=> d!59195 (= (content!167 l!1596) e!48758)))

(declare-fun b!89440 () Bool)

(assert (=> b!89440 (= e!48758 (as emptyset (Set T!6015)))))

(declare-fun b!89441 () Bool)

(assert (=> b!89441 (= e!48758 (union (insert (h!1102 l!1596) (as emptyset (Set T!6015))) (content!167 (t!48836 l!1596))))))

(assert (= (and d!59195 c!21940) b!89440))

(assert (= (and d!59195 (not c!21940)) b!89441))

(declare-fun m!85516 () Bool)

(assert (=> b!89441 m!85516))

(assert (=> b!89441 m!85498))

(assert (=> b!89403 d!59195))

(declare-fun d!59197 () Bool)

(declare-fun size!721 (List!744) Int)

(assert (=> d!59197 (= (length!19 res!45954) (size!721 res!45954))))

(declare-fun bs!41497 () Bool)

(assert (= bs!41497 d!59197))

(declare-fun m!85518 () Bool)

(assert (=> bs!41497 m!85518))

(assert (=> b!89398 d!59197))

(declare-fun d!59199 () Bool)

(assert (=> d!59199 (= (length!19 l!1596) (size!721 l!1596))))

(declare-fun bs!41498 () Bool)

(assert (= bs!41498 d!59199))

(declare-fun m!85520 () Bool)

(assert (=> bs!41498 m!85520))

(assert (=> b!89398 d!59199))

(declare-fun b!89446 () Bool)

(declare-fun e!48761 () Bool)

(declare-fun tp!17468 () Bool)

(assert (=> b!89446 (= e!48761 (and tp_is_empty!395 tp!17468))))

(assert (=> b!89399 (= tp!17461 e!48761)))

(assert (= (and b!89399 (is-Cons!698 (t!48836 res!45954))) b!89446))

(declare-fun b!89447 () Bool)

(declare-fun e!48762 () Bool)

(declare-fun tp!17469 () Bool)

(assert (=> b!89447 (= e!48762 (and tp_is_empty!395 tp!17469))))

(assert (=> b!89400 (= tp!17460 e!48762)))

(assert (= (and b!89400 (is-Cons!698 (t!48836 l!1596))) b!89447))

(declare-fun b_lambda!18283 () Bool)

(assert (= b_lambda!18279 (or (and start!11670 b_free!7533) b_lambda!18283)))

(declare-fun b_lambda!18285 () Bool)

(assert (= b_lambda!18281 (or (and start!11670 b_free!7533) b_lambda!18285)))

(declare-fun b_lambda!18287 () Bool)

(assert (= b_lambda!18275 (or (and start!11670 b_free!7533) b_lambda!18287)))

(declare-fun b_lambda!18289 () Bool)

(assert (= b_lambda!18277 (or (and start!11670 b_free!7533) b_lambda!18289)))

(push 1)

(assert (not b_lambda!18283))

(assert (not d!59199))

(assert (not b!89439))

(assert (not b_next!39891))

(assert (not b!89424))

(assert (not b!89433))

(assert (not b!89441))

(assert (not b!89447))

(assert (not b_lambda!18287))

(assert (not d!59197))

(assert tp_is_empty!395)

(assert (not d!59191))

(assert (not b_lambda!18273))

(assert (not b_lambda!18271))

(assert (not b!89431))

(assert (not b_lambda!18289))

(assert (not b_lambda!18285))

(assert (not b!89428))

(assert b_and!60523)

(assert (not b!89446))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60523)

(assert (not b_next!39891))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59201 () Bool)

(assert (=> d!59201 (= ($colon$colon!25 (insert!34 t!48611 (t!48836 (t!48836 l!1596)) key!527) (h!1102 (t!48836 l!1596))) (Cons!698 (h!1102 (t!48836 l!1596)) (insert!34 t!48611 (t!48836 (t!48836 l!1596)) key!527)))))

(assert (=> b!89424 d!59201))

(declare-fun e!48768 () List!744)

(declare-fun b!89448 () Bool)

(assert (=> b!89448 (= e!48768 ($colon$colon!25 (insert!34 t!48611 (t!48836 (t!48836 (t!48836 l!1596))) key!527) (h!1102 (t!48836 (t!48836 l!1596)))))))

(declare-fun b!89449 () Bool)

(declare-fun e!48769 () Bool)

(declare-fun e!48770 () Bool)

(assert (=> b!89449 (= e!48769 e!48770)))

(declare-fun res!46849 () Bool)

(assert (=> b!89449 (=> (not res!46849) (not e!48770))))

(assert (=> b!89449 (= res!46849 (is-Cons!698 (t!48836 (t!48836 l!1596))))))

(declare-fun b!89450 () Bool)

(declare-fun e!48764 () Bool)

(declare-fun e!48766 () Bool)

(assert (=> b!89450 (= e!48764 e!48766)))

(declare-fun res!46852 () Bool)

(assert (=> b!89450 (=> (not res!46852) (not e!48766))))

(declare-fun lt!20408 () Bool)

(assert (=> b!89450 (= res!46852 (and (not lt!20408) (is-Cons!698 (t!48836 (t!48836 l!1596)))))))

(declare-fun b!89451 () Bool)

(assert (=> b!89451 (= e!48770 (<= (dynLambda!1071 key!527 t!48611) (dynLambda!1071 key!527 (h!1102 (t!48836 (t!48836 l!1596))))))))

(declare-fun b!89452 () Bool)

(declare-fun e!48767 () List!744)

(assert (=> b!89452 (= e!48767 ($colon$colon!25 (t!48836 (t!48836 l!1596)) t!48611))))

(declare-fun b!89453 () Bool)

(declare-fun res!46853 () List!744)

(assert (=> b!89453 (= e!48767 res!46853)))

(assert (=> b!89453 true))

(declare-fun e!48763 () Bool)

(assert (=> b!89453 e!48763))

(declare-fun b!89454 () Bool)

(assert (=> b!89454 (= e!48768 e!48767)))

(declare-fun c!21942 () Bool)

(assert (=> b!89454 (= c!21942 e!48764)))

(declare-fun res!46854 () Bool)

(assert (=> b!89454 (=> res!46854 e!48764)))

(assert (=> b!89454 (= res!46854 lt!20408)))

(declare-fun d!59203 () Bool)

(declare-fun e!48765 () Bool)

(assert (=> d!59203 e!48765))

(declare-fun res!46851 () Bool)

(assert (=> d!59203 (=> (not res!46851) (not e!48765))))

(declare-fun lt!20407 () List!744)

(assert (=> d!59203 (= res!46851 (= (content!167 lt!20407) (union (insert t!48611 (as emptyset (Set T!6015))) (content!167 (t!48836 (t!48836 l!1596))))))))

(assert (=> d!59203 (= lt!20407 e!48768)))

(declare-fun c!21941 () Bool)

(assert (=> d!59203 (= c!21941 e!48769)))

(declare-fun res!46850 () Bool)

(assert (=> d!59203 (=> res!46850 e!48769)))

(assert (=> d!59203 (= res!46850 lt!20408)))

(assert (=> d!59203 (= lt!20408 (is-Nil!700 (t!48836 (t!48836 l!1596))))))

(assert (=> d!59203 (= (insert!34 t!48611 (t!48836 (t!48836 l!1596)) key!527) lt!20407)))

(declare-fun b!89455 () Bool)

(declare-fun tp!17470 () Bool)

(assert (=> b!89455 (= e!48763 (and tp_is_empty!395 tp!17470))))

(declare-fun b!89456 () Bool)

(assert (=> b!89456 (= e!48766 (<= (dynLambda!1071 key!527 t!48611) (dynLambda!1071 key!527 (h!1102 (t!48836 (t!48836 l!1596))))))))

(declare-fun b!89457 () Bool)

(assert (=> b!89457 (= e!48765 (= (length!19 lt!20407) (+ 1 (length!19 (t!48836 (t!48836 l!1596))))))))

(assert (= (and d!59203 (not res!46850)) b!89449))

(assert (= (and b!89449 res!46849) b!89451))

(assert (= (and b!89454 (not res!46854)) b!89450))

(assert (= (and b!89450 res!46852) b!89456))

(assert (= (and b!89453 (is-Cons!698 res!46853)) b!89455))

(assert (= (and b!89454 c!21942) b!89452))

(assert (= (and b!89454 (not c!21942)) b!89453))

(assert (= (and d!59203 c!21941) b!89454))

(assert (= (and d!59203 (not c!21941)) b!89448))

(assert (= (and d!59203 res!46851) b!89457))

(declare-fun b_lambda!18291 () Bool)

(assert (=> (not b_lambda!18291) (not b!89451)))

(assert (=> b!89451 t!48833))

(declare-fun b_and!60525 () Bool)

(assert (= b_and!60523 (and (=> t!48833 result!47171) b_and!60525)))

(declare-fun b_lambda!18293 () Bool)

(assert (=> (not b_lambda!18293) (not b!89451)))

(declare-fun t!48842 () Bool)

(declare-fun tb!46719 () Bool)

(assert (=> (and start!11670 (= key!527 key!527) t!48842) tb!46719))

(declare-fun result!47179 () Bool)

(assert (=> tb!46719 (= result!47179 true)))

(assert (=> b!89451 t!48842))

(declare-fun b_and!60527 () Bool)

(assert (= b_and!60525 (and (=> t!48842 result!47179) b_and!60527)))

(declare-fun b_lambda!18295 () Bool)

(assert (=> (not b_lambda!18295) (not b!89456)))

(assert (=> b!89456 t!48833))

(declare-fun b_and!60529 () Bool)

(assert (= b_and!60527 (and (=> t!48833 result!47171) b_and!60529)))

(declare-fun b_lambda!18297 () Bool)

(assert (=> (not b_lambda!18297) (not b!89456)))

(assert (=> b!89456 t!48842))

(declare-fun b_and!60531 () Bool)

(assert (= b_and!60529 (and (=> t!48842 result!47179) b_and!60531)))

(declare-fun m!85522 () Bool)

(assert (=> d!59203 m!85522))

(assert (=> d!59203 m!85492))

(declare-fun m!85524 () Bool)

(assert (=> d!59203 m!85524))

(declare-fun m!85526 () Bool)

(assert (=> b!89452 m!85526))

(declare-fun m!85528 () Bool)

(assert (=> b!89448 m!85528))

(assert (=> b!89448 m!85528))

(declare-fun m!85530 () Bool)

(assert (=> b!89448 m!85530))

(declare-fun m!85532 () Bool)

(assert (=> b!89457 m!85532))

(declare-fun m!85534 () Bool)

(assert (=> b!89457 m!85534))

(assert (=> b!89451 m!85478))

(declare-fun m!85536 () Bool)

(assert (=> b!89451 m!85536))

(assert (=> b!89456 m!85478))

(assert (=> b!89456 m!85536))

(assert (=> b!89424 d!59203))

(declare-fun d!59205 () Bool)

(declare-fun c!21943 () Bool)

(assert (=> d!59205 (= c!21943 (is-Nil!700 (t!48836 res!45954)))))

(declare-fun e!48771 () (Set T!6015))

(assert (=> d!59205 (= (content!167 (t!48836 res!45954)) e!48771)))

(declare-fun b!89458 () Bool)

(assert (=> b!89458 (= e!48771 (as emptyset (Set T!6015)))))

(declare-fun b!89459 () Bool)

(assert (=> b!89459 (= e!48771 (union (insert (h!1102 (t!48836 res!45954)) (as emptyset (Set T!6015))) (content!167 (t!48836 (t!48836 res!45954)))))))

(assert (= (and d!59205 c!21943) b!89458))

(assert (= (and d!59205 (not c!21943)) b!89459))

(declare-fun m!85538 () Bool)

(assert (=> b!89459 m!85538))

(declare-fun m!85540 () Bool)

(assert (=> b!89459 m!85540))

(assert (=> b!89439 d!59205))

(declare-fun d!59207 () Bool)

(assert (=> d!59207 (= ($colon$colon!25 (t!48836 l!1596) t!48611) (Cons!698 t!48611 (t!48836 l!1596)))))

(assert (=> b!89428 d!59207))

(declare-fun d!59209 () Bool)

(declare-fun c!21944 () Bool)

(assert (=> d!59209 (= c!21944 (is-Nil!700 (t!48836 l!1596)))))

(declare-fun e!48772 () (Set T!6015))

(assert (=> d!59209 (= (content!167 (t!48836 l!1596)) e!48772)))

(declare-fun b!89460 () Bool)

(assert (=> b!89460 (= e!48772 (as emptyset (Set T!6015)))))

(declare-fun b!89461 () Bool)

(assert (=> b!89461 (= e!48772 (union (insert (h!1102 (t!48836 l!1596)) (as emptyset (Set T!6015))) (content!167 (t!48836 (t!48836 l!1596)))))))

(assert (= (and d!59209 c!21944) b!89460))

(assert (= (and d!59209 (not c!21944)) b!89461))

(declare-fun m!85542 () Bool)

(assert (=> b!89461 m!85542))

(assert (=> b!89461 m!85524))

(assert (=> b!89441 d!59209))

(declare-fun d!59211 () Bool)

(declare-fun lt!20411 () Int)

(assert (=> d!59211 (>= lt!20411 0)))

(declare-fun e!48775 () Int)

(assert (=> d!59211 (= lt!20411 e!48775)))

(declare-fun c!21947 () Bool)

(assert (=> d!59211 (= c!21947 (is-Nil!700 l!1596))))

(assert (=> d!59211 (= (size!721 l!1596) lt!20411)))

(declare-fun b!89466 () Bool)

(assert (=> b!89466 (= e!48775 0)))

(declare-fun b!89467 () Bool)

(assert (=> b!89467 (= e!48775 (+ 1 (size!721 (t!48836 l!1596))))))

(assert (= (and d!59211 c!21947) b!89466))

(assert (= (and d!59211 (not c!21947)) b!89467))

(declare-fun m!85544 () Bool)

(assert (=> b!89467 m!85544))

(assert (=> d!59199 d!59211))

(declare-fun d!59213 () Bool)

(declare-fun c!21948 () Bool)

(assert (=> d!59213 (= c!21948 (is-Nil!700 lt!20405))))

(declare-fun e!48776 () (Set T!6015))

(assert (=> d!59213 (= (content!167 lt!20405) e!48776)))

(declare-fun b!89468 () Bool)

(assert (=> b!89468 (= e!48776 (as emptyset (Set T!6015)))))

(declare-fun b!89469 () Bool)

(assert (=> b!89469 (= e!48776 (union (insert (h!1102 lt!20405) (as emptyset (Set T!6015))) (content!167 (t!48836 lt!20405))))))

(assert (= (and d!59213 c!21948) b!89468))

(assert (= (and d!59213 (not c!21948)) b!89469))

(declare-fun m!85546 () Bool)

(assert (=> b!89469 m!85546))

(declare-fun m!85548 () Bool)

(assert (=> b!89469 m!85548))

(assert (=> d!59191 d!59213))

(assert (=> d!59191 d!59209))

(declare-fun d!59215 () Bool)

(assert (=> d!59215 (= (length!19 lt!20405) (size!721 lt!20405))))

(declare-fun bs!41499 () Bool)

(assert (= bs!41499 d!59215))

(declare-fun m!85550 () Bool)

(assert (=> bs!41499 m!85550))

(assert (=> b!89433 d!59215))

(declare-fun d!59217 () Bool)

(assert (=> d!59217 (= (length!19 (t!48836 l!1596)) (size!721 (t!48836 l!1596)))))

(declare-fun bs!41500 () Bool)

(assert (= bs!41500 d!59217))

(assert (=> bs!41500 m!85544))

(assert (=> b!89433 d!59217))

(declare-fun d!59219 () Bool)

(declare-fun lt!20412 () Int)

(assert (=> d!59219 (>= lt!20412 0)))

(declare-fun e!48777 () Int)

(assert (=> d!59219 (= lt!20412 e!48777)))

(declare-fun c!21949 () Bool)

(assert (=> d!59219 (= c!21949 (is-Nil!700 res!45954))))

(assert (=> d!59219 (= (size!721 res!45954) lt!20412)))

(declare-fun b!89470 () Bool)

(assert (=> b!89470 (= e!48777 0)))

(declare-fun b!89471 () Bool)

(assert (=> b!89471 (= e!48777 (+ 1 (size!721 (t!48836 res!45954))))))

(assert (= (and d!59219 c!21949) b!89470))

(assert (= (and d!59219 (not c!21949)) b!89471))

(declare-fun m!85552 () Bool)

(assert (=> b!89471 m!85552))

(assert (=> d!59197 d!59219))

(declare-fun b!89472 () Bool)

(declare-fun e!48778 () Bool)

(declare-fun tp!17471 () Bool)

(assert (=> b!89472 (= e!48778 (and tp_is_empty!395 tp!17471))))

(assert (=> b!89447 (= tp!17469 e!48778)))

(assert (= (and b!89447 (is-Cons!698 (t!48836 (t!48836 l!1596)))) b!89472))

(declare-fun b!89473 () Bool)

(declare-fun e!48779 () Bool)

(declare-fun tp!17472 () Bool)

(assert (=> b!89473 (= e!48779 (and tp_is_empty!395 tp!17472))))

(assert (=> b!89431 (= tp!17465 e!48779)))

(assert (= (and b!89431 (is-Cons!698 (t!48836 res!46847))) b!89473))

(declare-fun b!89474 () Bool)

(declare-fun e!48780 () Bool)

(declare-fun tp!17473 () Bool)

(assert (=> b!89474 (= e!48780 (and tp_is_empty!395 tp!17473))))

(assert (=> b!89446 (= tp!17468 e!48780)))

(assert (= (and b!89446 (is-Cons!698 (t!48836 (t!48836 res!45954)))) b!89474))

(declare-fun b_lambda!18299 () Bool)

(assert (= b_lambda!18295 (or (and start!11670 b_free!7533) b_lambda!18299)))

(declare-fun b_lambda!18301 () Bool)

(assert (= b_lambda!18291 (or (and start!11670 b_free!7533) b_lambda!18301)))

(declare-fun b_lambda!18303 () Bool)

(assert (= b_lambda!18297 (or (and start!11670 b_free!7533) b_lambda!18303)))

(declare-fun b_lambda!18305 () Bool)

(assert (= b_lambda!18293 (or (and start!11670 b_free!7533) b_lambda!18305)))

(push 1)

(assert (not b!89467))

(assert (not b_lambda!18283))

(assert (not b!89473))

(assert (not b!89448))

(assert (not b_lambda!18303))

(assert (not d!59217))

(assert (not d!59215))

(assert (not b!89457))

(assert (not b_next!39891))

(assert (not b!89472))

(assert (not b_lambda!18299))

(assert (not b!89459))

(assert (not b!89471))

(assert (not d!59203))

(assert b_and!60531)

(assert (not b!89452))

(assert (not b_lambda!18287))

(assert (not b!89474))

(assert (not b!89455))

(assert (not b_lambda!18305))

(assert tp_is_empty!395)

(assert (not b_lambda!18273))

(assert (not b_lambda!18271))

(assert (not b_lambda!18289))

(assert (not b_lambda!18285))

(assert (not b_lambda!18301))

(assert (not b!89469))

(assert (not b!89461))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60531)

(assert (not b_next!39891))

(check-sat)

(pop 1)

