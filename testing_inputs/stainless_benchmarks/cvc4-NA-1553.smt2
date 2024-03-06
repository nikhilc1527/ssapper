; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10514 () Bool)

(assert start!10514)

(declare-fun m!74604 () Bool)

(assert (=> start!10514 m!74604))

(declare-fun b!79904 () Bool)

(declare-fun m!74606 () Bool)

(assert (=> b!79904 m!74606))

(declare-fun bs!38176 () Bool)

(assert (= bs!38176 (and b!79904 start!10514)))

(declare-datatypes () ((List!650 (Cons!608 (h!896 Int) (t!47637 List!650)) (Nil!610))))

(declare-fun r!611 () List!650)

(declare-fun l!1419 () List!650)

(declare-fun content!113 (List!650) (Set Int))

(assert (=> (and bs!38176 (= r!611 l!1419) (= (content!113 r!611) (content!113 l!1419))) (= true true)))

(declare-fun b!79903 () Bool)

(declare-fun res!40455 () Bool)

(declare-fun e!43330 () Bool)

(assert (=> b!79903 (=> (not res!40455) (not e!43330))))

(declare-fun ls!27 () List!650)

(declare-fun x!29075 () Int)

(assert (=> b!79903 (= res!40455 (and (not (is-Nil!610 ls!27)) (<= (h!896 ls!27) x!29075)))))

(declare-fun res!40452 () Bool)

(assert (=> b!79904 (=> (not res!40452) (not e!43330))))

(assert (=> b!79904 (= res!40452 true)))

(assert (=> b!79904 true))

(declare-fun res!39941 () List!650)

(declare-fun b!79905 () Bool)

(declare-fun e!43329 () Bool)

(assert (=> b!79905 (= e!43329 (not (= (content!113 res!39941) (insert x!29075 (union (union (content!113 l!1419) (content!113 r!611)) (content!113 ls!27))))))))

(declare-fun b!79906 () Bool)

(assert (=> b!79906 (= e!43330 e!43329)))

(declare-fun res!40454 () Bool)

(assert (=> b!79906 (=> res!40454 e!43329)))

(declare-fun isSorted!2 (List!650) Bool)

(assert (=> b!79906 (= res!40454 (not (isSorted!2 res!39941)))))

(declare-fun res!40456 () Bool)

(assert (=> start!10514 (=> (not res!40456) (not e!43330))))

(assert (=> start!10514 (= res!40456 true)))

(assert (=> start!10514 true))

(assert (=> start!10514 e!43330))

(declare-fun b!79907 () Bool)

(declare-fun res!40453 () Bool)

(assert (=> b!79907 (=> (not res!40453) (not e!43330))))

(declare-fun par!0 (Int List!650 List!650 List!650) List!650)

(assert (=> b!79907 (= res!40453 (= res!39941 (par!0 x!29075 (Cons!608 (h!896 ls!27) l!1419) r!611 (t!47637 ls!27))))))

(assert (= (and start!10514 res!40456) b!79904))

(assert (= (and b!79904 res!40452) b!79903))

(assert (= (and b!79903 res!40455) b!79907))

(assert (= (and b!79907 res!40453) b!79906))

(assert (= (and b!79906 (not res!40454)) b!79905))

(assert (=> b!79905 m!74604))

(assert (=> b!79905 m!74606))

(declare-fun m!74608 () Bool)

(assert (=> b!79905 m!74608))

(declare-fun m!74610 () Bool)

(assert (=> b!79905 m!74610))

(declare-fun m!74612 () Bool)

(assert (=> b!79905 m!74612))

(declare-fun m!74614 () Bool)

(assert (=> b!79906 m!74614))

(declare-fun m!74616 () Bool)

(assert (=> b!79907 m!74616))

(push 1)

(assert (not start!10514))

(assert (not b!79907))

(assert (not b!79905))

(assert (not b!79906))

(assert (not b!79904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55285 () Bool)

(declare-fun c!20266 () Bool)

(assert (=> d!55285 (= c!20266 (is-Nil!610 res!39941))))

(declare-fun e!43333 () (Set Int))

(assert (=> d!55285 (= (content!113 res!39941) e!43333)))

(declare-fun b!79912 () Bool)

(assert (=> b!79912 (= e!43333 (as emptyset (Set Int)))))

(declare-fun b!79913 () Bool)

(assert (=> b!79913 (= e!43333 (union (insert (h!896 res!39941) (as emptyset (Set Int))) (content!113 (t!47637 res!39941))))))

(assert (= (and d!55285 c!20266) b!79912))

(assert (= (and d!55285 (not c!20266)) b!79913))

(declare-fun m!74618 () Bool)

(assert (=> b!79913 m!74618))

(declare-fun m!74620 () Bool)

(assert (=> b!79913 m!74620))

(assert (=> b!79905 d!55285))

(declare-fun d!55287 () Bool)

(declare-fun c!20267 () Bool)

(assert (=> d!55287 (= c!20267 (is-Nil!610 l!1419))))

(declare-fun e!43334 () (Set Int))

(assert (=> d!55287 (= (content!113 l!1419) e!43334)))

(declare-fun b!79914 () Bool)

(assert (=> b!79914 (= e!43334 (as emptyset (Set Int)))))

(declare-fun b!79915 () Bool)

(assert (=> b!79915 (= e!43334 (union (insert (h!896 l!1419) (as emptyset (Set Int))) (content!113 (t!47637 l!1419))))))

(assert (= (and d!55287 c!20267) b!79914))

(assert (= (and d!55287 (not c!20267)) b!79915))

(declare-fun m!74622 () Bool)

(assert (=> b!79915 m!74622))

(declare-fun m!74624 () Bool)

(assert (=> b!79915 m!74624))

(assert (=> b!79905 d!55287))

(declare-fun d!55289 () Bool)

(declare-fun c!20268 () Bool)

(assert (=> d!55289 (= c!20268 (is-Nil!610 r!611))))

(declare-fun e!43335 () (Set Int))

(assert (=> d!55289 (= (content!113 r!611) e!43335)))

(declare-fun b!79916 () Bool)

(assert (=> b!79916 (= e!43335 (as emptyset (Set Int)))))

(declare-fun b!79917 () Bool)

(assert (=> b!79917 (= e!43335 (union (insert (h!896 r!611) (as emptyset (Set Int))) (content!113 (t!47637 r!611))))))

(assert (= (and d!55289 c!20268) b!79916))

(assert (= (and d!55289 (not c!20268)) b!79917))

(declare-fun m!74626 () Bool)

(assert (=> b!79917 m!74626))

(declare-fun m!74628 () Bool)

(assert (=> b!79917 m!74628))

(assert (=> b!79905 d!55289))

(declare-fun d!55291 () Bool)

(declare-fun c!20269 () Bool)

(assert (=> d!55291 (= c!20269 (is-Nil!610 ls!27))))

(declare-fun e!43336 () (Set Int))

(assert (=> d!55291 (= (content!113 ls!27) e!43336)))

(declare-fun b!79918 () Bool)

(assert (=> b!79918 (= e!43336 (as emptyset (Set Int)))))

(declare-fun b!79919 () Bool)

(assert (=> b!79919 (= e!43336 (union (insert (h!896 ls!27) (as emptyset (Set Int))) (content!113 (t!47637 ls!27))))))

(assert (= (and d!55291 c!20269) b!79918))

(assert (= (and d!55291 (not c!20269)) b!79919))

(declare-fun m!74630 () Bool)

(assert (=> b!79919 m!74630))

(declare-fun m!74632 () Bool)

(assert (=> b!79919 m!74632))

(assert (=> b!79905 d!55291))

(assert (=> start!10514 d!55287))

(declare-fun d!55293 () Bool)

(declare-fun res!40461 () Bool)

(declare-fun e!43341 () Bool)

(assert (=> d!55293 (=> res!40461 e!43341)))

(assert (=> d!55293 (= res!40461 (not (and (is-Cons!608 res!39941) (is-Cons!608 (t!47637 res!39941)))))))

(assert (=> d!55293 (= (isSorted!2 res!39941) e!43341)))

(declare-fun b!79924 () Bool)

(declare-fun e!43342 () Bool)

(assert (=> b!79924 (= e!43341 e!43342)))

(declare-fun res!40462 () Bool)

(assert (=> b!79924 (=> (not res!40462) (not e!43342))))

(assert (=> b!79924 (= res!40462 (<= (h!896 res!39941) (h!896 (t!47637 res!39941))))))

(declare-fun b!79925 () Bool)

(assert (=> b!79925 (= e!43342 (isSorted!2 (t!47637 res!39941)))))

(assert (= (and d!55293 (not res!40461)) b!79924))

(assert (= (and b!79924 res!40462) b!79925))

(declare-fun m!74634 () Bool)

(assert (=> b!79925 m!74634))

(assert (=> b!79906 d!55293))

(declare-fun d!55295 () Bool)

(declare-fun m!74636 () Bool)

(assert (=> d!55295 m!74636))

(declare-fun bs!38177 () Bool)

(assert (= bs!38177 (and d!55295 b!79904)))

(assert (=> (and bs!38177 (= (Cons!608 (h!896 ls!27) l!1419) r!611) (= (content!113 (Cons!608 (h!896 ls!27) l!1419)) (content!113 r!611))) (= true true)))

(declare-fun bs!38178 () Bool)

(assert (= bs!38178 (and d!55295 start!10514)))

(assert (=> (and bs!38178 (= (Cons!608 (h!896 ls!27) l!1419) l!1419) (= (content!113 (Cons!608 (h!896 ls!27) l!1419)) (content!113 l!1419))) (= true true)))

(declare-fun bs!38179 () Bool)

(declare-fun b!79942 () Bool)

(assert (= bs!38179 (and b!79942 start!10514)))

(assert (=> (and bs!38179 (= (Cons!608 (h!896 ls!27) l!1419) l!1419)) (= true true)))

(declare-fun b!79941 () Bool)

(assert (=> b!79941 m!74606))

(declare-fun bs!38180 () Bool)

(assert (= bs!38180 (and b!79941 b!79904)))

(assert (=> bs!38180 (= true true)))

(declare-fun bs!38181 () Bool)

(assert (= bs!38181 (and b!79941 d!55295)))

(assert (=> (and bs!38181 (= r!611 (Cons!608 (h!896 ls!27) l!1419)) (= (content!113 r!611) (content!113 (Cons!608 (h!896 ls!27) l!1419)))) (= true true)))

(declare-fun bs!38182 () Bool)

(assert (= bs!38182 (and b!79941 start!10514)))

(assert (=> (and bs!38182 (= r!611 l!1419) (= (content!113 r!611) (content!113 l!1419))) (= true true)))

(assert (=> bs!38180 (= true true)))

(declare-fun b!79940 () Bool)

(declare-fun e!43353 () List!650)

(declare-fun lt!18298 () Bool)

(assert (=> b!79940 (= e!43353 (par!0 x!29075 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) (t!47637 (t!47637 ls!27))))))

(assert (=> b!79940 (= lt!18298 (<= (h!896 (t!47637 ls!27)) x!29075))))

(declare-fun e!43354 () Bool)

(assert (=> b!79941 (= e!43354 true)))

(assert (=> b!79941 true))

(declare-fun res!40479 () Bool)

(assert (=> b!79942 (=> (not res!40479) (not e!43354))))

(assert (=> b!79942 (= res!40479 true)))

(declare-fun lt!18297 () List!650)

(declare-fun e!43355 () Bool)

(declare-fun b!79943 () Bool)

(assert (=> b!79943 (= e!43355 (= (content!113 lt!18297) (insert x!29075 (union (union (content!113 (Cons!608 (h!896 ls!27) l!1419)) (content!113 r!611)) (content!113 (t!47637 ls!27))))))))

(assert (=> d!55295 e!43355))

(declare-fun res!40478 () Bool)

(assert (=> d!55295 (=> (not res!40478) (not e!43355))))

(assert (=> d!55295 (= res!40478 (isSorted!2 lt!18297))))

(assert (=> d!55295 (= lt!18297 e!43353)))

(declare-fun c!20272 () Bool)

(assert (=> d!55295 (= c!20272 (is-Nil!610 (t!47637 ls!27)))))

(assert (=> d!55295 e!43354))

(declare-fun res!40477 () Bool)

(assert (=> d!55295 (=> (not res!40477) (not e!43354))))

(assert (=> d!55295 (= res!40477 true)))

(assert (=> d!55295 (= (par!0 x!29075 (Cons!608 (h!896 ls!27) l!1419) r!611 (t!47637 ls!27)) lt!18297)))

(declare-fun b!79944 () Bool)

(declare-fun appendSorted!0 (List!650 List!650) List!650)

(declare-fun quickSort!1 (List!650) List!650)

(assert (=> b!79944 (= e!43353 (appendSorted!0 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 x!29075 (quickSort!1 r!611))))))

(assert (= (and d!55295 res!40477) b!79942))

(assert (= (and b!79942 res!40479) b!79941))

(assert (= (and d!55295 c!20272) b!79944))

(assert (= (and d!55295 (not c!20272)) b!79940))

(assert (= (and d!55295 res!40478) b!79943))

(declare-fun m!74638 () Bool)

(assert (=> b!79940 m!74638))

(declare-fun m!74640 () Bool)

(assert (=> b!79943 m!74640))

(declare-fun m!74642 () Bool)

(assert (=> b!79943 m!74642))

(assert (=> b!79943 m!74636))

(assert (=> b!79943 m!74632))

(assert (=> b!79943 m!74606))

(declare-fun m!74644 () Bool)

(assert (=> d!55295 m!74644))

(declare-fun m!74646 () Bool)

(assert (=> b!79944 m!74646))

(declare-fun m!74648 () Bool)

(assert (=> b!79944 m!74648))

(assert (=> b!79944 m!74646))

(declare-fun m!74650 () Bool)

(assert (=> b!79944 m!74650))

(assert (=> b!79907 d!55295))

(assert (=> b!79904 d!55289))

(declare-fun bs!38183 () Bool)

(declare-fun s!2423 () Bool)

(assert (= bs!38183 (and start!10514 s!2423)))

(declare-fun contains!51 (List!650 Int) Bool)

(assert (=> bs!38183 (=> true (= (contains!51 l!1419 x!29075) (member x!29075 (content!113 l!1419))))))

(declare-fun m!74652 () Bool)

(assert (=> m!74610 m!74652))

(declare-fun m!74654 () Bool)

(assert (=> m!74610 m!74654))

(assert (=> m!74610 s!2423))

(declare-fun bs!38184 () Bool)

(declare-fun s!2425 () Bool)

(assert (= bs!38184 (and start!10514 b!79904 s!2425)))

(assert (=> bs!38184 (=> true (= (contains!51 r!611 x!29075) (member x!29075 (content!113 r!611))))))

(declare-fun m!74656 () Bool)

(assert (=> m!74610 m!74656))

(declare-fun m!74658 () Bool)

(assert (=> m!74610 m!74658))

(assert (=> m!74610 s!2425))

(push 1)

(assert (not b!79941))

(assert (not d!55295))

(assert (not b!79943))

(assert (not b!79913))

(assert (not b!79915))

(assert (not b!79940))

(assert (not b!79925))

(assert (not b!79917))

(assert (not b!79919))

(assert (not b!79944))

(assert (not bs!38183))

(assert (not bs!38184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> m!74656 s!2423))

(assert (=> m!74658 s!2423))

(assert (=> m!74652 s!2423))

(assert (=> m!74654 s!2423))

(declare-fun bs!38185 () Bool)

(declare-fun s!2427 () Bool)

(assert (= bs!38185 (and start!10514 s!2427)))

(declare-fun res!40480 () Bool)

(declare-fun e!43356 () Bool)

(assert (=> bs!38185 (=> res!40480 e!43356)))

(assert (=> bs!38185 (= res!40480 (not (contains!51 l!1419 x!29075)))))

(assert (=> bs!38185 (=> true e!43356)))

(declare-fun b!79945 () Bool)

(assert (=> b!79945 (= e!43356 (<= x!29075 x!29075))))

(assert (= (and bs!38185 (not res!40480)) b!79945))

(assert (=> m!74652 s!2427))

(assert (=> m!74656 s!2427))

(assert (=> m!74652 s!2425))

(assert (=> m!74654 s!2425))

(assert (=> m!74656 s!2425))

(assert (=> m!74658 s!2425))

(declare-fun bs!38186 () Bool)

(declare-fun s!2429 () Bool)

(assert (= bs!38186 (and start!10514 b!79904 s!2429)))

(declare-fun res!40481 () Bool)

(declare-fun e!43357 () Bool)

(assert (=> bs!38186 (=> res!40481 e!43357)))

(assert (=> bs!38186 (= res!40481 (not (contains!51 r!611 x!29075)))))

(assert (=> bs!38186 (=> true e!43357)))

(declare-fun b!79946 () Bool)

(assert (=> b!79946 (= e!43357 (< x!29075 x!29075))))

(assert (= (and bs!38186 (not res!40481)) b!79946))

(assert (=> m!74652 m!74656))

(assert (=> m!74652 s!2429))

(assert (=> m!74656 s!2429))

(declare-fun bs!38187 () Bool)

(declare-fun s!2431 () Bool)

(assert (= bs!38187 (and d!55295 s!2431)))

(assert (=> bs!38187 (=> true (= (contains!51 (Cons!608 (h!896 ls!27) l!1419) x!29075) (member x!29075 (content!113 (Cons!608 (h!896 ls!27) l!1419)))))))

(declare-fun m!74660 () Bool)

(assert (=> m!74654 m!74660))

(declare-fun m!74662 () Bool)

(assert (=> m!74654 m!74662))

(assert (=> m!74654 s!2431))

(assert (=> m!74658 s!2431))

(assert (=> m!74652 s!2431))

(assert (=> m!74656 s!2431))

(declare-fun bs!38188 () Bool)

(declare-fun s!2433 () Bool)

(assert (= bs!38188 (and d!55295 b!79942 s!2433)))

(declare-fun res!40482 () Bool)

(declare-fun e!43358 () Bool)

(assert (=> bs!38188 (=> res!40482 e!43358)))

(assert (=> bs!38188 (= res!40482 (not (contains!51 (Cons!608 (h!896 ls!27) l!1419) x!29075)))))

(assert (=> bs!38188 (=> true e!43358)))

(declare-fun b!79947 () Bool)

(assert (=> b!79947 (= e!43358 (<= x!29075 x!29075))))

(assert (= (and bs!38188 (not res!40482)) b!79947))

(assert (=> m!74652 m!74660))

(assert (=> m!74652 s!2433))

(assert (=> m!74656 s!2433))

(declare-fun bs!38189 () Bool)

(declare-fun s!2435 () Bool)

(assert (= bs!38189 (and d!55295 b!79942 b!79941 s!2435)))

(assert (=> bs!38189 (=> true (= (contains!51 r!611 x!29075) (member x!29075 (content!113 r!611))))))

(assert (=> m!74654 m!74656))

(assert (=> m!74654 m!74658))

(assert (=> m!74654 s!2435))

(assert (=> m!74656 s!2435))

(assert (=> m!74658 s!2435))

(assert (=> m!74652 s!2435))

(declare-fun s!2437 () Bool)

(declare-fun bs!38190 () Bool)

(assert (= bs!38190 (and d!55295 b!79942 b!79941 s!2437)))

(declare-fun res!40483 () Bool)

(declare-fun e!43359 () Bool)

(assert (=> bs!38190 (=> res!40483 e!43359)))

(assert (=> bs!38190 (= res!40483 (not (contains!51 r!611 x!29075)))))

(assert (=> bs!38190 (=> true e!43359)))

(declare-fun b!79948 () Bool)

(assert (=> b!79948 (= e!43359 (< x!29075 x!29075))))

(assert (= (and bs!38190 (not res!40483)) b!79948))

(assert (=> m!74652 m!74656))

(assert (=> m!74652 s!2437))

(assert (=> m!74656 s!2437))

(push 1)

(assert (not b!79941))

(assert (not d!55295))

(assert (not bs!38185))

(assert (not bs!38186))

(assert (not b!79943))

(assert (not b!79913))

(assert (not b!79915))

(assert (not b!79940))

(assert (not bs!38188))

(assert (not b!79925))

(assert (not b!79917))

(assert (not b!79919))

(assert (not bs!38187))

(assert (not b!79944))

(assert (not bs!38183))

(assert (not bs!38189))

(assert (not bs!38190))

(assert (not bs!38184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!79941 d!55289))

(declare-fun d!55297 () Bool)

(declare-fun m!74664 () Bool)

(assert (=> d!55297 m!74664))

(declare-fun bs!38191 () Bool)

(assert (= bs!38191 (and d!55297 b!79904)))

(assert (=> (and bs!38191 (= (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) r!611) (= (content!113 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (content!113 r!611))) (= true true)))

(declare-fun bs!38192 () Bool)

(assert (= bs!38192 (and d!55297 b!79941)))

(assert (=> (and bs!38192 (= (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) r!611) (= (content!113 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (content!113 r!611))) (= true true)))

(declare-fun bs!38193 () Bool)

(assert (= bs!38193 (and d!55297 d!55295)))

(assert (=> (and bs!38193 (= (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) (= (content!113 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (content!113 (Cons!608 (h!896 ls!27) l!1419)))) (= true true)))

(declare-fun bs!38194 () Bool)

(assert (= bs!38194 (and d!55297 start!10514)))

(assert (=> (and bs!38194 (= (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) l!1419) (= (content!113 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (content!113 l!1419))) (= true true)))

(declare-fun bs!38195 () Bool)

(declare-fun b!79951 () Bool)

(assert (= bs!38195 (and b!79951 start!10514)))

(assert (=> (and bs!38195 (= (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) l!1419)) (= true true)))

(declare-fun bs!38196 () Bool)

(assert (= bs!38196 (and b!79951 b!79942)))

(assert (=> (and bs!38196 (= (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (= true true)))

(declare-fun b!79950 () Bool)

(declare-fun m!74666 () Bool)

(assert (=> b!79950 m!74666))

(declare-fun bs!38197 () Bool)

(assert (= bs!38197 (and b!79950 b!79904)))

(assert (=> (and bs!38197 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) r!611) (= (content!113 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611))) (content!113 r!611))) (= true true)))

(declare-fun bs!38198 () Bool)

(assert (= bs!38198 (and b!79950 d!55297)))

(assert (=> (and bs!38198 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (= (content!113 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611))) (content!113 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))))) (= true true)))

(declare-fun bs!38199 () Bool)

(assert (= bs!38199 (and b!79950 b!79941)))

(assert (=> (and bs!38199 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) r!611) (= (content!113 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611))) (content!113 r!611))) (= true true)))

(declare-fun bs!38200 () Bool)

(assert (= bs!38200 (and b!79950 d!55295)))

(assert (=> (and bs!38200 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) (Cons!608 (h!896 ls!27) l!1419)) (= (content!113 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611))) (content!113 (Cons!608 (h!896 ls!27) l!1419)))) (= true true)))

(declare-fun bs!38201 () Bool)

(assert (= bs!38201 (and b!79950 start!10514)))

(assert (=> (and bs!38201 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) l!1419) (= (content!113 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611))) (content!113 l!1419))) (= true true)))

(assert (=> (and bs!38199 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) r!611)) (= true true)))

(assert (=> (and bs!38197 (= (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) r!611)) (= true true)))

(declare-fun b!79949 () Bool)

(declare-fun e!43360 () List!650)

(declare-fun lt!18300 () Bool)

(assert (=> b!79949 (= e!43360 (par!0 x!29075 (ite lt!18300 (Cons!608 (h!896 (t!47637 (t!47637 ls!27))) (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (ite lt!18300 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) (Cons!608 (h!896 (t!47637 (t!47637 ls!27))) (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)))) (t!47637 (t!47637 (t!47637 ls!27)))))))

(assert (=> b!79949 (= lt!18300 (<= (h!896 (t!47637 (t!47637 ls!27))) x!29075))))

(declare-fun e!43361 () Bool)

(assert (=> b!79950 (= e!43361 true)))

(assert (=> b!79950 true))

(declare-fun res!40486 () Bool)

(assert (=> b!79951 (=> (not res!40486) (not e!43361))))

(assert (=> b!79951 (= res!40486 true)))

(declare-fun b!79952 () Bool)

(declare-fun e!43362 () Bool)

(declare-fun lt!18299 () List!650)

(assert (=> b!79952 (= e!43362 (= (content!113 lt!18299) (insert x!29075 (union (union (content!113 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (content!113 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)))) (content!113 (t!47637 (t!47637 ls!27)))))))))

(assert (=> d!55297 e!43362))

(declare-fun res!40485 () Bool)

(assert (=> d!55297 (=> (not res!40485) (not e!43362))))

(assert (=> d!55297 (= res!40485 (isSorted!2 lt!18299))))

(assert (=> d!55297 (= lt!18299 e!43360)))

(declare-fun c!20273 () Bool)

(assert (=> d!55297 (= c!20273 (is-Nil!610 (t!47637 (t!47637 ls!27))))))

(assert (=> d!55297 e!43361))

(declare-fun res!40484 () Bool)

(assert (=> d!55297 (=> (not res!40484) (not e!43361))))

(assert (=> d!55297 (= res!40484 true)))

(assert (=> d!55297 (= (par!0 x!29075 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419)) (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611)) (t!47637 (t!47637 ls!27))) lt!18299)))

(declare-fun b!79953 () Bool)

(assert (=> b!79953 (= e!43360 (appendSorted!0 (quickSort!1 (ite lt!18298 (Cons!608 (h!896 (t!47637 ls!27)) (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 (h!896 ls!27) l!1419))) (Cons!608 x!29075 (quickSort!1 (ite lt!18298 r!611 (Cons!608 (h!896 (t!47637 ls!27)) r!611))))))))

(assert (= (and d!55297 res!40484) b!79951))

(assert (= (and b!79951 res!40486) b!79950))

(assert (= (and d!55297 c!20273) b!79953))

(assert (= (and d!55297 (not c!20273)) b!79949))

(assert (= (and d!55297 res!40485) b!79952))

(declare-fun m!74668 () Bool)

(assert (=> b!79949 m!74668))

(declare-fun bs!38202 () Bool)

(declare-fun m!74670 () Bool)

(assert (= bs!38202 m!74670))

(assert (=> bs!38202 s!2423))

(assert (=> bs!38202 s!2425))

(assert (=> bs!38202 s!2431))

(assert (=> bs!38202 s!2435))

(assert (=> b!79952 m!74670))

(declare-fun m!74672 () Bool)

(assert (=> b!79952 m!74672))

(assert (=> b!79952 m!74664))

(declare-fun m!74674 () Bool)

(assert (=> b!79952 m!74674))

(assert (=> b!79952 m!74666))

(declare-fun m!74676 () Bool)

(assert (=> d!55297 m!74676))

(declare-fun m!74678 () Bool)

(assert (=> b!79953 m!74678))

(declare-fun m!74680 () Bool)

(assert (=> b!79953 m!74680))

(assert (=> b!79953 m!74678))

(declare-fun m!74682 () Bool)

(assert (=> b!79953 m!74682))

(assert (=> b!79940 d!55297))

(declare-fun d!55299 () Bool)

(declare-fun c!20274 () Bool)

(assert (=> d!55299 (= c!20274 (is-Nil!610 (Cons!608 (h!896 ls!27) l!1419)))))

(declare-fun e!43363 () (Set Int))

(assert (=> d!55299 (= (content!113 (Cons!608 (h!896 ls!27) l!1419)) e!43363)))

(declare-fun b!79954 () Bool)

(assert (=> b!79954 (= e!43363 (as emptyset (Set Int)))))

(declare-fun b!79955 () Bool)

(assert (=> b!79955 (= e!43363 (union (insert (h!896 (Cons!608 (h!896 ls!27) l!1419)) (as emptyset (Set Int))) (content!113 (t!47637 (Cons!608 (h!896 ls!27) l!1419)))))))

(assert (= (and d!55299 c!20274) b!79954))

(assert (= (and d!55299 (not c!20274)) b!79955))

(declare-fun m!74684 () Bool)

(assert (=> b!79955 m!74684))

(declare-fun m!74686 () Bool)

(assert (=> b!79955 m!74686))

(assert (=> d!55295 d!55299))

(declare-fun d!55301 () Bool)

(declare-fun res!40487 () Bool)

(declare-fun e!43364 () Bool)

(assert (=> d!55301 (=> res!40487 e!43364)))

(assert (=> d!55301 (= res!40487 (not (and (is-Cons!608 lt!18297) (is-Cons!608 (t!47637 lt!18297)))))))

(assert (=> d!55301 (= (isSorted!2 lt!18297) e!43364)))

(declare-fun b!79956 () Bool)

(declare-fun e!43365 () Bool)

(assert (=> b!79956 (= e!43364 e!43365)))

(declare-fun res!40488 () Bool)

(assert (=> b!79956 (=> (not res!40488) (not e!43365))))

(assert (=> b!79956 (= res!40488 (<= (h!896 lt!18297) (h!896 (t!47637 lt!18297))))))

(declare-fun b!79957 () Bool)

(assert (=> b!79957 (= e!43365 (isSorted!2 (t!47637 lt!18297)))))

(assert (= (and d!55301 (not res!40487)) b!79956))

(assert (= (and b!79956 res!40488) b!79957))

(declare-fun m!74688 () Bool)

(assert (=> b!79957 m!74688))

(assert (=> d!55295 d!55301))

(declare-fun d!55303 () Bool)

(declare-fun c!20275 () Bool)

(assert (=> d!55303 (= c!20275 (is-Nil!610 (t!47637 r!611)))))

(declare-fun e!43366 () (Set Int))

(assert (=> d!55303 (= (content!113 (t!47637 r!611)) e!43366)))

(declare-fun b!79958 () Bool)

(assert (=> b!79958 (= e!43366 (as emptyset (Set Int)))))

(declare-fun b!79959 () Bool)

(assert (=> b!79959 (= e!43366 (union (insert (h!896 (t!47637 r!611)) (as emptyset (Set Int))) (content!113 (t!47637 (t!47637 r!611)))))))

(assert (= (and d!55303 c!20275) b!79958))

(assert (= (and d!55303 (not c!20275)) b!79959))

(declare-fun m!74690 () Bool)

(assert (=> b!79959 m!74690))

(declare-fun m!74692 () Bool)

(assert (=> b!79959 m!74692))

(assert (=> b!79917 d!55303))

(declare-fun d!55305 () Bool)

(declare-fun res!40489 () Bool)

(declare-fun e!43367 () Bool)

(assert (=> d!55305 (=> res!40489 e!43367)))

(assert (=> d!55305 (= res!40489 (not (and (is-Cons!608 (t!47637 res!39941)) (is-Cons!608 (t!47637 (t!47637 res!39941))))))))

(assert (=> d!55305 (= (isSorted!2 (t!47637 res!39941)) e!43367)))

(declare-fun b!79960 () Bool)

(declare-fun e!43368 () Bool)

(assert (=> b!79960 (= e!43367 e!43368)))

(declare-fun res!40490 () Bool)

(assert (=> b!79960 (=> (not res!40490) (not e!43368))))

(assert (=> b!79960 (= res!40490 (<= (h!896 (t!47637 res!39941)) (h!896 (t!47637 (t!47637 res!39941)))))))

(declare-fun b!79961 () Bool)

(assert (=> b!79961 (= e!43368 (isSorted!2 (t!47637 (t!47637 res!39941))))))

(assert (= (and d!55305 (not res!40489)) b!79960))

(assert (= (and b!79960 res!40490) b!79961))

(declare-fun m!74694 () Bool)

(assert (=> b!79961 m!74694))

(assert (=> b!79925 d!55305))

(declare-fun d!55307 () Bool)

(declare-fun c!20276 () Bool)

(assert (=> d!55307 (= c!20276 (is-Nil!610 (t!47637 l!1419)))))

(declare-fun e!43369 () (Set Int))

(assert (=> d!55307 (= (content!113 (t!47637 l!1419)) e!43369)))

(declare-fun b!79962 () Bool)

(assert (=> b!79962 (= e!43369 (as emptyset (Set Int)))))

(declare-fun b!79963 () Bool)

(assert (=> b!79963 (= e!43369 (union (insert (h!896 (t!47637 l!1419)) (as emptyset (Set Int))) (content!113 (t!47637 (t!47637 l!1419)))))))

(assert (= (and d!55307 c!20276) b!79962))

(assert (= (and d!55307 (not c!20276)) b!79963))

(declare-fun m!74696 () Bool)

(assert (=> b!79963 m!74696))

(declare-fun m!74698 () Bool)

(assert (=> b!79963 m!74698))

(assert (=> b!79915 d!55307))

(declare-fun d!55309 () Bool)

(declare-fun c!20277 () Bool)

(assert (=> d!55309 (= c!20277 (is-Nil!610 lt!18297))))

(declare-fun e!43370 () (Set Int))

(assert (=> d!55309 (= (content!113 lt!18297) e!43370)))

(declare-fun b!79964 () Bool)

(assert (=> b!79964 (= e!43370 (as emptyset (Set Int)))))

(declare-fun b!79965 () Bool)

(assert (=> b!79965 (= e!43370 (union (insert (h!896 lt!18297) (as emptyset (Set Int))) (content!113 (t!47637 lt!18297))))))

(assert (= (and d!55309 c!20277) b!79964))

(assert (= (and d!55309 (not c!20277)) b!79965))

(declare-fun m!74700 () Bool)

(assert (=> b!79965 m!74700))

(declare-fun m!74702 () Bool)

(assert (=> b!79965 m!74702))

(assert (=> b!79943 d!55309))

(assert (=> b!79943 d!55299))

(assert (=> b!79943 d!55289))

(declare-fun d!55311 () Bool)

(declare-fun c!20278 () Bool)

(assert (=> d!55311 (= c!20278 (is-Nil!610 (t!47637 ls!27)))))

(declare-fun e!43371 () (Set Int))

(assert (=> d!55311 (= (content!113 (t!47637 ls!27)) e!43371)))

(declare-fun b!79966 () Bool)

(assert (=> b!79966 (= e!43371 (as emptyset (Set Int)))))

(declare-fun b!79967 () Bool)

(assert (=> b!79967 (= e!43371 (union (insert (h!896 (t!47637 ls!27)) (as emptyset (Set Int))) (content!113 (t!47637 (t!47637 ls!27)))))))

(assert (= (and d!55311 c!20278) b!79966))

(assert (= (and d!55311 (not c!20278)) b!79967))

(declare-fun m!74704 () Bool)

(assert (=> b!79967 m!74704))

(assert (=> b!79967 m!74674))

(assert (=> b!79943 d!55311))

(assert (=> b!79919 d!55311))

(declare-fun d!55313 () Bool)

(declare-fun c!20279 () Bool)

(assert (=> d!55313 (= c!20279 (is-Nil!610 (t!47637 res!39941)))))

(declare-fun e!43372 () (Set Int))

(assert (=> d!55313 (= (content!113 (t!47637 res!39941)) e!43372)))

(declare-fun b!79968 () Bool)

(assert (=> b!79968 (= e!43372 (as emptyset (Set Int)))))

(declare-fun b!79969 () Bool)

(assert (=> b!79969 (= e!43372 (union (insert (h!896 (t!47637 res!39941)) (as emptyset (Set Int))) (content!113 (t!47637 (t!47637 res!39941)))))))

(assert (= (and d!55313 c!20279) b!79968))

(assert (= (and d!55313 (not c!20279)) b!79969))

(declare-fun m!74706 () Bool)

(assert (=> b!79969 m!74706))

(declare-fun m!74708 () Bool)

(assert (=> b!79969 m!74708))

(assert (=> b!79913 d!55313))

(declare-fun d!55315 () Bool)

(declare-fun lt!18303 () Bool)

(assert (=> d!55315 (= lt!18303 (member x!29075 (content!113 l!1419)))))

(declare-fun e!43378 () Bool)

(assert (=> d!55315 (= lt!18303 e!43378)))

(declare-fun res!40496 () Bool)

(assert (=> d!55315 (=> (not res!40496) (not e!43378))))

(assert (=> d!55315 (= res!40496 (is-Cons!608 l!1419))))

(assert (=> d!55315 (= (contains!51 l!1419 x!29075) lt!18303)))

(declare-fun b!79974 () Bool)

(declare-fun e!43377 () Bool)

(assert (=> b!79974 (= e!43378 e!43377)))

(declare-fun res!40495 () Bool)

(assert (=> b!79974 (=> res!40495 e!43377)))

(assert (=> b!79974 (= res!40495 (= (h!896 l!1419) x!29075))))

(declare-fun b!79975 () Bool)

(assert (=> b!79975 (= e!43377 (contains!51 (t!47637 l!1419) x!29075))))

(assert (= (and d!55315 res!40496) b!79974))

(assert (= (and b!79974 (not res!40495)) b!79975))

(assert (=> d!55315 m!74604))

(assert (=> d!55315 m!74654))

(declare-fun bs!38203 () Bool)

(declare-fun m!74710 () Bool)

(assert (= bs!38203 m!74710))

(assert (=> bs!38203 s!2423))

(assert (=> bs!38203 s!2427))

(assert (=> bs!38203 s!2425))

(assert (=> bs!38203 s!2429))

(assert (=> bs!38203 s!2431))

(assert (=> bs!38203 s!2433))

(assert (=> bs!38203 s!2435))

(assert (=> bs!38203 s!2437))

(assert (=> b!79975 m!74710))

(assert (=> bs!38183 d!55315))

(declare-fun b!79990 () Bool)

(declare-fun e!43390 () List!650)

(assert (=> b!79990 (= e!43390 (Cons!608 x!29075 (quickSort!1 r!611)))))

(declare-fun e!43387 () Bool)

(declare-fun lt!18306 () List!650)

(declare-fun b!79991 () Bool)

(assert (=> b!79991 (= e!43387 (= (content!113 lt!18306) (union (content!113 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))) (content!113 (Cons!608 x!29075 (quickSort!1 r!611))))))))

(declare-fun b!79992 () Bool)

(declare-fun res!40509 () Bool)

(declare-fun e!43388 () Bool)

(assert (=> b!79992 (=> (not res!40509) (not e!43388))))

(assert (=> b!79992 (= res!40509 (isSorted!2 (Cons!608 x!29075 (quickSort!1 r!611))))))

(declare-fun b!79993 () Bool)

(declare-fun e!43389 () Bool)

(assert (=> b!79993 (= e!43388 e!43389)))

(declare-fun res!40510 () Bool)

(assert (=> b!79993 (=> res!40510 e!43389)))

(declare-fun isEmpty!662 (List!650) Bool)

(assert (=> b!79993 (= res!40510 (isEmpty!662 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))))))

(declare-fun b!79994 () Bool)

(assert (=> b!79994 (= e!43390 (Cons!608 (h!896 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))) (appendSorted!0 (t!47637 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))) (Cons!608 x!29075 (quickSort!1 r!611)))))))

(declare-fun d!55317 () Bool)

(assert (=> d!55317 e!43387))

(declare-fun res!40511 () Bool)

(assert (=> d!55317 (=> (not res!40511) (not e!43387))))

(assert (=> d!55317 (= res!40511 (isSorted!2 lt!18306))))

(assert (=> d!55317 (= lt!18306 e!43390)))

(declare-fun c!20282 () Bool)

(assert (=> d!55317 (= c!20282 (is-Nil!610 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))))))

(assert (=> d!55317 e!43388))

(declare-fun res!40508 () Bool)

(assert (=> d!55317 (=> (not res!40508) (not e!43388))))

(assert (=> d!55317 (= res!40508 (isSorted!2 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))))))

(assert (=> d!55317 (= (appendSorted!0 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419)) (Cons!608 x!29075 (quickSort!1 r!611))) lt!18306)))

(declare-fun b!79995 () Bool)

(declare-fun res!40512 () Bool)

(assert (=> b!79995 (=> res!40512 e!43389)))

(assert (=> b!79995 (= res!40512 (isEmpty!662 (Cons!608 x!29075 (quickSort!1 r!611))))))

(declare-fun b!79996 () Bool)

(declare-fun last!6 (List!650) Int)

(declare-fun head!1044 (List!650) Int)

(assert (=> b!79996 (= e!43389 (<= (last!6 (quickSort!1 (Cons!608 (h!896 ls!27) l!1419))) (head!1044 (Cons!608 x!29075 (quickSort!1 r!611)))))))

(assert (= (and d!55317 res!40508) b!79992))

(assert (= (and b!79992 res!40509) b!79993))

(assert (= (and b!79993 (not res!40510)) b!79995))

(assert (= (and b!79995 (not res!40512)) b!79996))

(assert (= (and d!55317 c!20282) b!79990))

(assert (= (and d!55317 (not c!20282)) b!79994))

(assert (= (and d!55317 res!40511) b!79991))

(assert (=> b!79996 m!74646))

(declare-fun m!74712 () Bool)

(assert (=> b!79996 m!74712))

(declare-fun m!74714 () Bool)

(assert (=> b!79996 m!74714))

(assert (=> b!79993 m!74646))

(declare-fun m!74716 () Bool)

(assert (=> b!79993 m!74716))

(declare-fun m!74718 () Bool)

(assert (=> b!79994 m!74718))

(declare-fun m!74720 () Bool)

(assert (=> d!55317 m!74720))

(assert (=> d!55317 m!74646))

(declare-fun m!74722 () Bool)

(assert (=> d!55317 m!74722))

(declare-fun m!74724 () Bool)

(assert (=> b!79991 m!74724))

(assert (=> b!79991 m!74646))

(declare-fun m!74726 () Bool)

(assert (=> b!79991 m!74726))

(declare-fun m!74728 () Bool)

(assert (=> b!79991 m!74728))

(declare-fun m!74730 () Bool)

(assert (=> b!79992 m!74730))

(declare-fun m!74732 () Bool)

(assert (=> b!79995 m!74732))

(assert (=> b!79944 d!55317))

(declare-fun d!55319 () Bool)

(declare-fun e!43395 () Bool)

(assert (=> d!55319 e!43395))

(declare-fun res!40516 () Bool)

(assert (=> d!55319 (=> (not res!40516) (not e!43395))))

(declare-fun lt!18309 () List!650)

(assert (=> d!55319 (= res!40516 (isSorted!2 lt!18309))))

(declare-fun e!43396 () List!650)

(assert (=> d!55319 (= lt!18309 e!43396)))

(declare-fun c!20285 () Bool)

(assert (=> d!55319 (= c!20285 (is-Nil!610 (Cons!608 (h!896 ls!27) l!1419)))))

(assert (=> d!55319 (= (quickSort!1 (Cons!608 (h!896 ls!27) l!1419)) lt!18309)))

(declare-fun b!80003 () Bool)

(assert (=> b!80003 (= e!43396 Nil!610)))

(declare-fun b!80004 () Bool)

(assert (=> b!80004 (= e!43396 (par!0 (h!896 (Cons!608 (h!896 ls!27) l!1419)) Nil!610 Nil!610 (t!47637 (Cons!608 (h!896 ls!27) l!1419))))))

(declare-fun b!80005 () Bool)

(assert (=> b!80005 (= e!43395 (= (content!113 lt!18309) (content!113 (Cons!608 (h!896 ls!27) l!1419))))))

(assert (= (and d!55319 c!20285) b!80003))

(assert (= (and d!55319 (not c!20285)) b!80004))

(assert (= (and d!55319 res!40516) b!80005))

(declare-fun m!74734 () Bool)

(assert (=> d!55319 m!74734))

(declare-fun m!74736 () Bool)

(assert (=> b!80004 m!74736))

(declare-fun m!74738 () Bool)

(assert (=> b!80005 m!74738))

(assert (=> b!80005 m!74636))

(assert (=> b!79944 d!55319))

(declare-fun d!55321 () Bool)

(declare-fun e!43397 () Bool)

(assert (=> d!55321 e!43397))

(declare-fun res!40517 () Bool)

(assert (=> d!55321 (=> (not res!40517) (not e!43397))))

(declare-fun lt!18310 () List!650)

(assert (=> d!55321 (= res!40517 (isSorted!2 lt!18310))))

(declare-fun e!43398 () List!650)

(assert (=> d!55321 (= lt!18310 e!43398)))

(declare-fun c!20286 () Bool)

(assert (=> d!55321 (= c!20286 (is-Nil!610 r!611))))

(assert (=> d!55321 (= (quickSort!1 r!611) lt!18310)))

(declare-fun b!80006 () Bool)

(assert (=> b!80006 (= e!43398 Nil!610)))

(declare-fun b!80007 () Bool)

(assert (=> b!80007 (= e!43398 (par!0 (h!896 r!611) Nil!610 Nil!610 (t!47637 r!611)))))

(declare-fun b!80008 () Bool)

(assert (=> b!80008 (= e!43397 (= (content!113 lt!18310) (content!113 r!611)))))

(assert (= (and d!55321 c!20286) b!80006))

(assert (= (and d!55321 (not c!20286)) b!80007))

(assert (= (and d!55321 res!40517) b!80008))

(declare-fun m!74740 () Bool)

(assert (=> d!55321 m!74740))

(declare-fun m!74742 () Bool)

(assert (=> b!80007 m!74742))

(declare-fun m!74744 () Bool)

(assert (=> b!80008 m!74744))

(assert (=> b!80008 m!74606))

(assert (=> b!79944 d!55321))

(declare-fun d!55323 () Bool)

(declare-fun lt!18311 () Bool)

(assert (=> d!55323 (= lt!18311 (member x!29075 (content!113 r!611)))))

(declare-fun e!43400 () Bool)

(assert (=> d!55323 (= lt!18311 e!43400)))

(declare-fun res!40519 () Bool)

(assert (=> d!55323 (=> (not res!40519) (not e!43400))))

(assert (=> d!55323 (= res!40519 (is-Cons!608 r!611))))

(assert (=> d!55323 (= (contains!51 r!611 x!29075) lt!18311)))

(declare-fun b!80009 () Bool)

(declare-fun e!43399 () Bool)

(assert (=> b!80009 (= e!43400 e!43399)))

(declare-fun res!40518 () Bool)

(assert (=> b!80009 (=> res!40518 e!43399)))

(assert (=> b!80009 (= res!40518 (= (h!896 r!611) x!29075))))

(declare-fun b!80010 () Bool)

(assert (=> b!80010 (= e!43399 (contains!51 (t!47637 r!611) x!29075))))

(assert (= (and d!55323 res!40519) b!80009))

(assert (= (and b!80009 (not res!40518)) b!80010))

(assert (=> d!55323 m!74606))

(assert (=> d!55323 m!74658))

(declare-fun bs!38204 () Bool)

(declare-fun m!74746 () Bool)

(assert (= bs!38204 m!74746))

(assert (=> bs!38204 s!2423))

(assert (=> bs!38204 s!2427))

(assert (=> bs!38204 s!2425))

(assert (=> bs!38204 s!2429))

(assert (=> bs!38204 s!2431))

(assert (=> bs!38204 s!2433))

(assert (=> bs!38204 s!2435))

(assert (=> bs!38204 s!2437))

(assert (=> b!80010 m!74746))

(assert (=> bs!38184 d!55323))

(declare-fun bs!38205 () Bool)

(declare-fun s!2439 () Bool)

(assert (= bs!38205 (and start!10514 s!2439)))

(assert (=> bs!38205 (=> true (= (contains!51 l!1419 (h!896 ls!27)) (member (h!896 ls!27) (content!113 l!1419))))))

(declare-fun m!74748 () Bool)

(assert (=> m!74630 m!74748))

(declare-fun m!74750 () Bool)

(assert (=> m!74630 m!74750))

(assert (=> m!74630 s!2439))

(declare-fun bs!38206 () Bool)

(declare-fun s!2441 () Bool)

(assert (= bs!38206 (and start!10514 s!2441)))

(assert (=> bs!38206 (=> true (= (contains!51 l!1419 (h!896 res!39941)) (member (h!896 res!39941) (content!113 l!1419))))))

(declare-fun m!74752 () Bool)

(assert (=> m!74618 m!74752))

(declare-fun m!74754 () Bool)

(assert (=> m!74618 m!74754))

(assert (=> m!74618 s!2441))

(assert (=> m!74662 s!2423))

(assert (=> m!74640 s!2423))

(declare-fun bs!38207 () Bool)

(declare-fun s!2443 () Bool)

(assert (= bs!38207 (and start!10514 s!2443)))

(assert (=> bs!38207 (=> true (= (contains!51 l!1419 (h!896 l!1419)) (member (h!896 l!1419) (content!113 l!1419))))))

(declare-fun m!74756 () Bool)

(assert (=> m!74622 m!74756))

(declare-fun m!74758 () Bool)

(assert (=> m!74622 m!74758))

(assert (=> m!74622 s!2443))

(assert (=> m!74660 s!2423))

(declare-fun bs!38208 () Bool)

(declare-fun s!2445 () Bool)

(assert (= bs!38208 (and start!10514 s!2445)))

(assert (=> bs!38208 (=> true (= (contains!51 l!1419 (h!896 r!611)) (member (h!896 r!611) (content!113 l!1419))))))

(declare-fun m!74760 () Bool)

(assert (=> m!74626 m!74760))

(declare-fun m!74762 () Bool)

(assert (=> m!74626 m!74762))

(assert (=> m!74626 s!2445))

(assert (=> m!74660 s!2427))

(declare-fun bs!38209 () Bool)

(declare-fun s!2447 () Bool)

(assert (= bs!38209 (and start!10514 b!79904 s!2447)))

(assert (=> bs!38209 (=> true (= (contains!51 r!611 (h!896 res!39941)) (member (h!896 res!39941) (content!113 r!611))))))

(declare-fun m!74764 () Bool)

(assert (=> m!74618 m!74764))

(declare-fun m!74766 () Bool)

(assert (=> m!74618 m!74766))

(assert (=> m!74618 s!2447))

(assert (=> m!74662 s!2425))

(declare-fun bs!38210 () Bool)

(declare-fun s!2449 () Bool)

(assert (= bs!38210 (and start!10514 b!79904 s!2449)))

(assert (=> bs!38210 (=> true (= (contains!51 r!611 (h!896 l!1419)) (member (h!896 l!1419) (content!113 r!611))))))

(declare-fun m!74768 () Bool)

(assert (=> m!74622 m!74768))

(declare-fun m!74770 () Bool)

(assert (=> m!74622 m!74770))

(assert (=> m!74622 s!2449))

(declare-fun bs!38211 () Bool)

(declare-fun s!2451 () Bool)

(assert (= bs!38211 (and start!10514 b!79904 s!2451)))

(assert (=> bs!38211 (=> true (= (contains!51 r!611 (h!896 ls!27)) (member (h!896 ls!27) (content!113 r!611))))))

(declare-fun m!74772 () Bool)

(assert (=> m!74630 m!74772))

(declare-fun m!74774 () Bool)

(assert (=> m!74630 m!74774))

(assert (=> m!74630 s!2451))

(declare-fun bs!38212 () Bool)

(declare-fun s!2453 () Bool)

(assert (= bs!38212 (and start!10514 b!79904 s!2453)))

(assert (=> bs!38212 (=> true (= (contains!51 r!611 (h!896 r!611)) (member (h!896 r!611) (content!113 r!611))))))

(declare-fun m!74776 () Bool)

(assert (=> m!74626 m!74776))

(declare-fun m!74778 () Bool)

(assert (=> m!74626 m!74778))

(assert (=> m!74626 s!2453))

(assert (=> m!74640 s!2425))

(assert (=> m!74660 s!2425))

(assert (=> m!74660 s!2429))

(declare-fun bs!38213 () Bool)

(declare-fun s!2455 () Bool)

(assert (= bs!38213 (and d!55295 s!2455)))

(assert (=> bs!38213 (=> true (= (contains!51 (Cons!608 (h!896 ls!27) l!1419) (h!896 ls!27)) (member (h!896 ls!27) (content!113 (Cons!608 (h!896 ls!27) l!1419)))))))

(declare-fun m!74780 () Bool)

(assert (=> m!74630 m!74780))

(declare-fun m!74782 () Bool)

(assert (=> m!74630 m!74782))

(assert (=> m!74630 s!2455))

(assert (=> m!74610 s!2431))

(assert (=> m!74662 s!2431))

(declare-fun bs!38214 () Bool)

(declare-fun s!2457 () Bool)

(assert (= bs!38214 (and d!55295 s!2457)))

(assert (=> bs!38214 (=> true (= (contains!51 (Cons!608 (h!896 ls!27) l!1419) (h!896 r!611)) (member (h!896 r!611) (content!113 (Cons!608 (h!896 ls!27) l!1419)))))))

(declare-fun m!74784 () Bool)

(assert (=> m!74626 m!74784))

(declare-fun m!74786 () Bool)

(assert (=> m!74626 m!74786))

(assert (=> m!74626 s!2457))

(assert (=> m!74660 s!2431))

(declare-fun bs!38215 () Bool)

(declare-fun s!2459 () Bool)

(assert (= bs!38215 (and d!55295 s!2459)))

(assert (=> bs!38215 (=> true (= (contains!51 (Cons!608 (h!896 ls!27) l!1419) (h!896 l!1419)) (member (h!896 l!1419) (content!113 (Cons!608 (h!896 ls!27) l!1419)))))))

(declare-fun m!74788 () Bool)

(assert (=> m!74622 m!74788))

(declare-fun m!74790 () Bool)

(assert (=> m!74622 m!74790))

(assert (=> m!74622 s!2459))

(assert (=> m!74640 s!2431))

(declare-fun bs!38216 () Bool)

(declare-fun s!2461 () Bool)

(assert (= bs!38216 (and d!55295 s!2461)))

(assert (=> bs!38216 (=> true (= (contains!51 (Cons!608 (h!896 ls!27) l!1419) (h!896 res!39941)) (member (h!896 res!39941) (content!113 (Cons!608 (h!896 ls!27) l!1419)))))))

(declare-fun m!74792 () Bool)

(assert (=> m!74618 m!74792))

(declare-fun m!74794 () Bool)

(assert (=> m!74618 m!74794))

(assert (=> m!74618 s!2461))

(assert (=> m!74660 s!2433))

(declare-fun bs!38217 () Bool)

(declare-fun s!2463 () Bool)

(assert (= bs!38217 (and d!55295 b!79942 b!79941 s!2463)))

(assert (=> bs!38217 (=> true (= (contains!51 r!611 (h!896 ls!27)) (member (h!896 ls!27) (content!113 r!611))))))

(assert (=> m!74630 m!74772))

(assert (=> m!74630 m!74774))

(assert (=> m!74630 s!2463))

(assert (=> m!74660 s!2435))

(assert (=> m!74610 s!2435))

(assert (=> m!74640 s!2435))

(assert (=> m!74662 s!2435))

(declare-fun s!2465 () Bool)

(declare-fun bs!38218 () Bool)

(assert (= bs!38218 (and d!55295 b!79942 b!79941 s!2465)))

(assert (=> bs!38218 (=> true (= (contains!51 r!611 (h!896 l!1419)) (member (h!896 l!1419) (content!113 r!611))))))

(assert (=> m!74622 m!74768))

(assert (=> m!74622 m!74770))

(assert (=> m!74622 s!2465))

(declare-fun bs!38219 () Bool)

(declare-fun s!2467 () Bool)

(assert (= bs!38219 (and d!55295 b!79942 b!79941 s!2467)))

(assert (=> bs!38219 (=> true (= (contains!51 r!611 (h!896 res!39941)) (member (h!896 res!39941) (content!113 r!611))))))

(assert (=> m!74618 m!74764))

(assert (=> m!74618 m!74766))

(assert (=> m!74618 s!2467))

(declare-fun bs!38220 () Bool)

(declare-fun s!2469 () Bool)

(assert (= bs!38220 (and d!55295 b!79942 b!79941 s!2469)))

(assert (=> bs!38220 (=> true (= (contains!51 r!611 (h!896 r!611)) (member (h!896 r!611) (content!113 r!611))))))

(assert (=> m!74626 m!74776))

(assert (=> m!74626 m!74778))

(assert (=> m!74626 s!2469))

(assert (=> m!74660 s!2437))

(push 1)

(assert (not d!55315))

(assert (not b!79963))

(assert (not b!79955))

(assert (not bs!38205))

(assert (not bs!38207))

(assert (not bs!38185))

(assert (not bs!38186))

(assert (not b!79949))

(assert (not d!55297))

(assert (not bs!38211))

(assert (not b!79991))

(assert (not bs!38212))

(assert (not d!55321))

(assert (not bs!38213))

(assert (not b!79996))

(assert (not b!80010))

(assert (not b!79975))

(assert (not bs!38218))

(assert (not bs!38208))

(assert (not b!80005))

(assert (not b!79995))

(assert (not bs!38215))

(assert (not b!80008))

(assert (not bs!38210))

(assert (not b!79953))

(assert (not bs!38216))

(assert (not bs!38217))

(assert (not b!79994))

(assert (not bs!38188))

(assert (not b!79950))

(assert (not bs!38219))

(assert (not b!79961))

(assert (not d!55317))

(assert (not d!55319))

(assert (not b!80004))

(assert (not b!79992))

(assert (not b!80007))

(assert (not b!79957))

(assert (not b!79969))

(assert (not b!79959))

(assert (not bs!38187))

(assert (not bs!38206))

(assert (not b!79967))

(assert (not bs!38220))

(assert (not d!55323))

(assert (not bs!38209))

(assert (not b!79993))

(assert (not b!79965))

(assert (not b!79952))

(assert (not bs!38189))

(assert (not bs!38190))

(assert (not bs!38214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

