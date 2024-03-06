; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10616 () Bool)

(assert start!10616)

(declare-fun b!80572 () Bool)

(assert (=> b!80572 true))

(declare-fun bs!38316 () Bool)

(declare-fun b!80576 () Bool)

(assert (= bs!38316 (and b!80576 b!80572)))

(declare-fun lambda!9285 () Int)

(declare-fun lambda!9284 () Int)

(assert (=> bs!38316 (not (= lambda!9285 lambda!9284))))

(assert (=> b!80576 true))

(declare-fun bs!38317 () Bool)

(declare-fun b!80577 () Bool)

(assert (= bs!38317 (and b!80577 b!80572)))

(declare-fun lambda!9286 () Int)

(assert (=> bs!38317 (not (= lambda!9286 lambda!9284))))

(declare-fun bs!38318 () Bool)

(assert (= bs!38318 (and b!80577 b!80576)))

(assert (=> bs!38318 (not (= lambda!9286 lambda!9285))))

(assert (=> b!80577 true))

(declare-fun bs!38319 () Bool)

(declare-fun b!80580 () Bool)

(assert (= bs!38319 (and b!80580 b!80572)))

(declare-datatypes () ((List!660 (Cons!617 (h!986 Int) (t!47790 List!660)) (Nil!619))))

(declare-fun ls!96 () List!660)

(declare-fun x!29304 () Int)

(declare-fun lambda!9287 () Int)

(assert (=> bs!38319 (= (= x!29304 (h!986 ls!96)) (= lambda!9287 lambda!9284))))

(declare-fun bs!38320 () Bool)

(assert (= bs!38320 (and b!80580 b!80576)))

(assert (=> bs!38320 (not (= lambda!9287 lambda!9285))))

(declare-fun bs!38321 () Bool)

(assert (= bs!38321 (and b!80580 b!80577)))

(assert (=> bs!38321 (not (= lambda!9287 lambda!9286))))

(assert (=> b!80580 true))

(declare-fun res!41024 () Bool)

(declare-fun e!43708 () Bool)

(assert (=> b!80572 (=> (not res!41024) (not e!43708))))

(declare-fun less!5 () List!660)

(declare-fun filter!13 (List!660 Int) List!660)

(assert (=> b!80572 (= res!41024 (= less!5 (filter!13 (t!47790 ls!96) lambda!9284)))))

(declare-fun b!80573 () Bool)

(declare-fun res!41020 () Bool)

(assert (=> b!80573 (=> (not res!41020) (not e!43708))))

(declare-fun ls!109 () List!660)

(assert (=> b!80573 (= res!41020 (and (= ls!109 less!5) (= x!29304 (h!986 ls!96))))))

(declare-fun b!80574 () Bool)

(declare-fun res!41023 () Bool)

(assert (=> b!80574 (=> (not res!41023) (not e!43708))))

(declare-fun sort_preserves_forall!0 (List!660 Int) Bool)

(assert (=> b!80574 (= res!41023 (sort_preserves_forall!0 less!5 lambda!9284))))

(declare-fun b!80575 () Bool)

(declare-fun res!41019 () Bool)

(assert (=> b!80575 (=> (not res!41019) (not e!43708))))

(declare-fun equal!10 () List!660)

(declare-fun append_sorted!0 (List!660 List!660) Bool)

(declare-fun quickSort!0 (List!660) List!660)

(assert (=> b!80575 (= res!41019 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!41018 () Bool)

(assert (=> b!80576 (=> (not res!41018) (not e!43708))))

(assert (=> b!80576 (= res!41018 (= equal!10 (Cons!617 (h!986 ls!96) (filter!13 (t!47790 ls!96) lambda!9285))))))

(declare-fun res!41021 () Bool)

(assert (=> start!10616 (=> (not res!41021) (not e!43708))))

(assert (=> start!10616 (= res!41021 (and (not (is-Nil!619 ls!96)) (not (is-Nil!619 (t!47790 ls!96)))))))

(assert (=> start!10616 e!43708))

(assert (=> start!10616 true))

(declare-fun res!41026 () Bool)

(assert (=> b!80577 (=> (not res!41026) (not e!43708))))

(declare-fun more!5 () List!660)

(assert (=> b!80577 (= res!41026 (= more!5 (filter!13 (t!47790 ls!96) lambda!9286)))))

(declare-fun b!80578 () Bool)

(declare-fun res!41025 () Bool)

(assert (=> b!80578 (=> (not res!41025) (not e!43708))))

(declare-fun sorted_lemma!0 (List!660) Bool)

(assert (=> b!80578 (= res!41025 (sorted_lemma!0 less!5))))

(declare-fun b!80579 () Bool)

(declare-fun res!41027 () Bool)

(assert (=> b!80579 (=> (not res!41027) (not e!43708))))

(declare-fun cons_filter_equal_sorted!0 (List!660 Int) Bool)

(assert (=> b!80579 (= res!41027 (cons_filter_equal_sorted!0 (t!47790 ls!96) (h!986 ls!96)))))

(declare-fun forall!15 (List!660 Int) Bool)

(assert (=> b!80580 (= e!43708 (not (forall!15 ls!109 lambda!9287)))))

(declare-fun b!80581 () Bool)

(declare-fun res!41022 () Bool)

(assert (=> b!80581 (=> (not res!41022) (not e!43708))))

(declare-fun forall_last!0 (List!660 Int) Bool)

(assert (=> b!80581 (= res!41022 (forall_last!0 (quickSort!0 less!5) lambda!9284))))

(assert (= (and start!10616 res!41021) b!80572))

(assert (= (and b!80572 res!41024) b!80576))

(assert (= (and b!80576 res!41018) b!80577))

(assert (= (and b!80577 res!41026) b!80578))

(assert (= (and b!80578 res!41025) b!80574))

(assert (= (and b!80574 res!41023) b!80581))

(assert (= (and b!80581 res!41022) b!80579))

(assert (= (and b!80579 res!41027) b!80575))

(assert (= (and b!80575 res!41019) b!80573))

(assert (= (and b!80573 res!41020) b!80580))

(declare-fun m!75358 () Bool)

(assert (=> b!80581 m!75358))

(assert (=> b!80581 m!75358))

(declare-fun m!75360 () Bool)

(assert (=> b!80581 m!75360))

(declare-fun m!75362 () Bool)

(assert (=> b!80577 m!75362))

(declare-fun m!75364 () Bool)

(assert (=> b!80580 m!75364))

(declare-fun m!75366 () Bool)

(assert (=> b!80576 m!75366))

(declare-fun m!75368 () Bool)

(assert (=> b!80574 m!75368))

(assert (=> b!80575 m!75358))

(assert (=> b!80575 m!75358))

(declare-fun m!75370 () Bool)

(assert (=> b!80575 m!75370))

(declare-fun m!75372 () Bool)

(assert (=> b!80572 m!75372))

(declare-fun m!75374 () Bool)

(assert (=> b!80578 m!75374))

(declare-fun m!75376 () Bool)

(assert (=> b!80579 m!75376))

(push 1)

(assert (not b!80580))

(assert (not b!80576))

(assert (not b!80581))

(assert (not b!80577))

(assert (not b!80574))

(assert (not b!80572))

(assert (not b!80575))

(assert (not b!80578))

(assert (not b!80579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!38322 () Bool)

(declare-fun b!80590 () Bool)

(assert (= bs!38322 (and b!80590 b!80572)))

(declare-fun lambda!9294 () Int)

(assert (=> bs!38322 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9294 lambda!9284))))

(declare-fun bs!38323 () Bool)

(assert (= bs!38323 (and b!80590 b!80576)))

(assert (=> bs!38323 (not (= lambda!9294 lambda!9285))))

(declare-fun bs!38324 () Bool)

(assert (= bs!38324 (and b!80590 b!80577)))

(assert (=> bs!38324 (not (= lambda!9294 lambda!9286))))

(declare-fun bs!38325 () Bool)

(assert (= bs!38325 (and b!80590 b!80580)))

(assert (=> bs!38325 (= (= (h!986 less!5) x!29304) (= lambda!9294 lambda!9287))))

(assert (=> b!80590 true))

(declare-fun lambda!9295 () Int)

(assert (=> bs!38323 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9295 lambda!9285))))

(assert (=> bs!38322 (not (= lambda!9295 lambda!9284))))

(assert (=> b!80590 (not (= lambda!9295 lambda!9294))))

(assert (=> bs!38324 (not (= lambda!9295 lambda!9286))))

(assert (=> bs!38325 (not (= lambda!9295 lambda!9287))))

(assert (=> b!80590 true))

(declare-fun lambda!9296 () Int)

(assert (=> bs!38323 (not (= lambda!9296 lambda!9285))))

(assert (=> bs!38322 (not (= lambda!9296 lambda!9284))))

(assert (=> b!80590 (not (= lambda!9296 lambda!9295))))

(assert (=> b!80590 (not (= lambda!9296 lambda!9294))))

(assert (=> bs!38324 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9296 lambda!9286))))

(assert (=> bs!38325 (not (= lambda!9296 lambda!9287))))

(assert (=> b!80590 true))

(declare-fun d!55505 () Bool)

(declare-fun isSorted!1 (List!660) Bool)

(assert (=> d!55505 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!18425 () Bool)

(declare-fun e!43714 () Bool)

(assert (=> d!55505 (= lt!18425 e!43714)))

(declare-fun res!41034 () Bool)

(assert (=> d!55505 (=> res!41034 e!43714)))

(assert (=> d!55505 (= res!41034 (or (is-Nil!619 less!5) (and (is-Cons!617 less!5) (is-Nil!619 (t!47790 less!5)))))))

(assert (=> d!55505 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!43713 () Bool)

(assert (=> b!80590 (= e!43714 e!43713)))

(declare-fun res!41035 () Bool)

(assert (=> b!80590 (=> (not res!41035) (not e!43713))))

(declare-fun lt!18426 () List!660)

(declare-fun lt!18424 () List!660)

(assert (=> b!80590 (= res!41035 (append_sorted!0 (quickSort!0 lt!18426) lt!18424))))

(declare-fun lt!18423 () List!660)

(assert (=> b!80590 (= lt!18423 (filter!13 (t!47790 less!5) lambda!9296))))

(assert (=> b!80590 (= lt!18424 (Cons!617 (h!986 less!5) (filter!13 (t!47790 less!5) lambda!9295)))))

(assert (=> b!80590 (= lt!18426 (filter!13 (t!47790 less!5) lambda!9294))))

(declare-fun b!80591 () Bool)

(declare-fun ++!68 (List!660 List!660) List!660)

(assert (=> b!80591 (= e!43713 (append_sorted!0 (++!68 (quickSort!0 lt!18426) lt!18424) (quickSort!0 lt!18423)))))

(assert (= (and d!55505 (not res!41034)) b!80590))

(assert (= (and b!80590 res!41035) b!80591))

(assert (=> d!55505 m!75358))

(assert (=> d!55505 m!75358))

(declare-fun m!75378 () Bool)

(assert (=> d!55505 m!75378))

(declare-fun m!75380 () Bool)

(assert (=> b!80590 m!75380))

(declare-fun m!75382 () Bool)

(assert (=> b!80590 m!75382))

(declare-fun m!75384 () Bool)

(assert (=> b!80590 m!75384))

(declare-fun m!75386 () Bool)

(assert (=> b!80590 m!75386))

(assert (=> b!80590 m!75384))

(declare-fun m!75388 () Bool)

(assert (=> b!80590 m!75388))

(assert (=> b!80591 m!75384))

(assert (=> b!80591 m!75384))

(declare-fun m!75390 () Bool)

(assert (=> b!80591 m!75390))

(declare-fun m!75392 () Bool)

(assert (=> b!80591 m!75392))

(assert (=> b!80591 m!75390))

(assert (=> b!80591 m!75392))

(declare-fun m!75394 () Bool)

(assert (=> b!80591 m!75394))

(assert (=> b!80578 d!55505))

(declare-fun b!80606 () Bool)

(declare-fun e!43724 () Bool)

(declare-fun dynLambda!979 (Int Int) Bool)

(assert (=> b!80606 (= e!43724 (dynLambda!979 lambda!9285 (h!986 (t!47790 ls!96))))))

(declare-fun b!80607 () Bool)

(declare-fun e!43723 () List!660)

(declare-fun lt!18431 () List!660)

(assert (=> b!80607 (= e!43723 (Cons!617 (h!986 (t!47790 ls!96)) lt!18431))))

(declare-fun b!80608 () Bool)

(declare-fun e!43726 () List!660)

(assert (=> b!80608 (= e!43726 Nil!619)))

(declare-fun b!80609 () Bool)

(assert (=> b!80609 (= e!43726 e!43723)))

(declare-fun c!20369 () Bool)

(assert (=> b!80609 (= c!20369 e!43724)))

(declare-fun res!41048 () Bool)

(assert (=> b!80609 (=> (not res!41048) (not e!43724))))

(assert (=> b!80609 (= res!41048 (is-Cons!617 (t!47790 ls!96)))))

(assert (=> b!80609 (= lt!18431 (filter!13 (t!47790 (t!47790 ls!96)) lambda!9285))))

(declare-fun b!80610 () Bool)

(assert (=> b!80610 (= e!43723 lt!18431)))

(declare-fun b!80611 () Bool)

(declare-fun res!41046 () Bool)

(declare-fun e!43725 () Bool)

(assert (=> b!80611 (=> (not res!41046) (not e!43725))))

(declare-fun lt!18432 () List!660)

(declare-fun content!119 (List!660) (Set Int))

(assert (=> b!80611 (= res!41046 (subset (content!119 lt!18432) (content!119 (t!47790 ls!96))))))

(declare-fun d!55507 () Bool)

(assert (=> d!55507 e!43725))

(declare-fun res!41047 () Bool)

(assert (=> d!55507 (=> (not res!41047) (not e!43725))))

(declare-fun size!648 (List!660) Int)

(assert (=> d!55507 (= res!41047 (<= (size!648 lt!18432) (size!648 (t!47790 ls!96))))))

(assert (=> d!55507 (= lt!18432 e!43726)))

(declare-fun c!20370 () Bool)

(assert (=> d!55507 (= c!20370 (is-Nil!619 (t!47790 ls!96)))))

(assert (=> d!55507 (= (filter!13 (t!47790 ls!96) lambda!9285) lt!18432)))

(declare-fun b!80612 () Bool)

(assert (=> b!80612 (= e!43725 (forall!15 lt!18432 lambda!9285))))

(assert (= (and b!80609 res!41048) b!80606))

(assert (= (and b!80609 c!20369) b!80607))

(assert (= (and b!80609 (not c!20369)) b!80610))

(assert (= (and d!55507 c!20370) b!80608))

(assert (= (and d!55507 (not c!20370)) b!80609))

(assert (= (and d!55507 res!41047) b!80611))

(assert (= (and b!80611 res!41046) b!80612))

(declare-fun b_lambda!15943 () Bool)

(assert (=> (not b_lambda!15943) (not b!80606)))

(declare-fun m!75396 () Bool)

(assert (=> b!80606 m!75396))

(declare-fun m!75398 () Bool)

(assert (=> d!55507 m!75398))

(declare-fun m!75400 () Bool)

(assert (=> d!55507 m!75400))

(declare-fun m!75402 () Bool)

(assert (=> b!80611 m!75402))

(declare-fun m!75404 () Bool)

(assert (=> b!80611 m!75404))

(declare-fun m!75406 () Bool)

(assert (=> b!80609 m!75406))

(declare-fun m!75408 () Bool)

(assert (=> b!80612 m!75408))

(assert (=> b!80576 d!55507))

(declare-fun b!80625 () Bool)

(declare-fun e!43733 () Bool)

(declare-fun e!43735 () Bool)

(assert (=> b!80625 (= e!43733 e!43735)))

(declare-fun res!41057 () Bool)

(assert (=> b!80625 (=> res!41057 e!43735)))

(declare-fun isEmpty!672 (List!660) Bool)

(assert (=> b!80625 (= res!41057 (isEmpty!672 (quickSort!0 less!5)))))

(declare-fun b!80626 () Bool)

(declare-fun res!41058 () Bool)

(assert (=> b!80626 (=> res!41058 e!43735)))

(assert (=> b!80626 (= res!41058 (isEmpty!672 equal!10))))

(declare-fun b!80627 () Bool)

(declare-fun e!43734 () Bool)

(assert (=> b!80627 (= e!43734 (isSorted!1 (++!68 (quickSort!0 less!5) equal!10)))))

(declare-fun d!55509 () Bool)

(assert (=> d!55509 e!43734))

(declare-fun c!20373 () Bool)

(assert (=> d!55509 (= c!20373 (is-Cons!617 (quickSort!0 less!5)))))

(assert (=> d!55509 e!43733))

(declare-fun res!41060 () Bool)

(assert (=> d!55509 (=> (not res!41060) (not e!43733))))

(assert (=> d!55509 (= res!41060 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!55509 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!80628 () Bool)

(declare-fun last!12 (List!660) Int)

(declare-fun head!1050 (List!660) Int)

(assert (=> b!80628 (= e!43735 (<= (last!12 (quickSort!0 less!5)) (head!1050 equal!10)))))

(declare-fun b!80629 () Bool)

(assert (=> b!80629 (= e!43734 (isSorted!1 (++!68 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!18435 () Bool)

(assert (=> b!80629 (= lt!18435 (append_sorted!0 (t!47790 (quickSort!0 less!5)) equal!10))))

(declare-fun b!80630 () Bool)

(declare-fun res!41059 () Bool)

(assert (=> b!80630 (=> (not res!41059) (not e!43733))))

(assert (=> b!80630 (= res!41059 (isSorted!1 equal!10))))

(assert (= (and d!55509 res!41060) b!80630))

(assert (= (and b!80630 res!41059) b!80625))

(assert (= (and b!80625 (not res!41057)) b!80626))

(assert (= (and b!80626 (not res!41058)) b!80628))

(assert (= (and d!55509 c!20373) b!80629))

(assert (= (and d!55509 (not c!20373)) b!80627))

(assert (=> b!80629 m!75358))

(declare-fun m!75410 () Bool)

(assert (=> b!80629 m!75410))

(assert (=> b!80629 m!75410))

(declare-fun m!75412 () Bool)

(assert (=> b!80629 m!75412))

(declare-fun m!75414 () Bool)

(assert (=> b!80629 m!75414))

(declare-fun m!75416 () Bool)

(assert (=> b!80630 m!75416))

(assert (=> d!55509 m!75358))

(assert (=> d!55509 m!75378))

(assert (=> b!80627 m!75358))

(assert (=> b!80627 m!75410))

(assert (=> b!80627 m!75410))

(assert (=> b!80627 m!75412))

(declare-fun m!75418 () Bool)

(assert (=> b!80626 m!75418))

(assert (=> b!80625 m!75358))

(declare-fun m!75420 () Bool)

(assert (=> b!80625 m!75420))

(assert (=> b!80628 m!75358))

(declare-fun m!75422 () Bool)

(assert (=> b!80628 m!75422))

(declare-fun m!75424 () Bool)

(assert (=> b!80628 m!75424))

(assert (=> b!80575 d!55509))

(declare-fun bs!38326 () Bool)

(declare-fun b!80642 () Bool)

(assert (= bs!38326 (and b!80642 b!80576)))

(declare-fun lambda!9303 () Int)

(assert (=> bs!38326 (not (= lambda!9303 lambda!9285))))

(declare-fun bs!38327 () Bool)

(assert (= bs!38327 (and b!80642 b!80572)))

(assert (=> bs!38327 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9303 lambda!9284))))

(declare-fun bs!38328 () Bool)

(assert (= bs!38328 (and b!80642 b!80590)))

(assert (=> bs!38328 (not (= lambda!9303 lambda!9296))))

(assert (=> bs!38328 (not (= lambda!9303 lambda!9295))))

(assert (=> bs!38328 (= lambda!9303 lambda!9294)))

(declare-fun bs!38329 () Bool)

(assert (= bs!38329 (and b!80642 b!80577)))

(assert (=> bs!38329 (not (= lambda!9303 lambda!9286))))

(declare-fun bs!38330 () Bool)

(assert (= bs!38330 (and b!80642 b!80580)))

(assert (=> bs!38330 (= (= (h!986 less!5) x!29304) (= lambda!9303 lambda!9287))))

(assert (=> b!80642 true))

(declare-fun lambda!9304 () Int)

(assert (=> b!80642 (not (= lambda!9304 lambda!9303))))

(assert (=> bs!38326 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9304 lambda!9285))))

(assert (=> bs!38327 (not (= lambda!9304 lambda!9284))))

(assert (=> bs!38328 (not (= lambda!9304 lambda!9296))))

(assert (=> bs!38328 (= lambda!9304 lambda!9295)))

(assert (=> bs!38328 (not (= lambda!9304 lambda!9294))))

(assert (=> bs!38329 (not (= lambda!9304 lambda!9286))))

(assert (=> bs!38330 (not (= lambda!9304 lambda!9287))))

(assert (=> b!80642 true))

(declare-fun lambda!9305 () Int)

(assert (=> b!80642 (not (= lambda!9305 lambda!9304))))

(assert (=> b!80642 (not (= lambda!9305 lambda!9303))))

(assert (=> bs!38326 (not (= lambda!9305 lambda!9285))))

(assert (=> bs!38327 (not (= lambda!9305 lambda!9284))))

(assert (=> bs!38328 (= lambda!9305 lambda!9296)))

(assert (=> bs!38328 (not (= lambda!9305 lambda!9295))))

(assert (=> bs!38328 (not (= lambda!9305 lambda!9294))))

(assert (=> bs!38329 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9305 lambda!9286))))

(assert (=> bs!38330 (not (= lambda!9305 lambda!9287))))

(assert (=> b!80642 true))

(declare-fun b!80640 () Bool)

(declare-fun e!43740 () List!660)

(declare-fun e!43741 () List!660)

(assert (=> b!80640 (= e!43740 e!43741)))

(declare-fun c!20379 () Bool)

(assert (=> b!80640 (= c!20379 (and (is-Cons!617 less!5) (is-Nil!619 (t!47790 less!5))))))

(declare-fun d!55511 () Bool)

(declare-fun c!20378 () Bool)

(assert (=> d!55511 (= c!20378 (is-Nil!619 less!5))))

(assert (=> d!55511 (= (quickSort!0 less!5) e!43740)))

(assert (=> b!80642 (= e!43741 (++!68 (++!68 (quickSort!0 (filter!13 (t!47790 less!5) lambda!9303)) (Cons!617 (h!986 less!5) (filter!13 (t!47790 less!5) lambda!9304))) (quickSort!0 (filter!13 (t!47790 less!5) lambda!9305))))))

(declare-fun b!80639 () Bool)

(assert (=> b!80639 (= e!43740 Nil!619)))

(declare-fun b!80641 () Bool)

(assert (=> b!80641 (= e!43741 less!5)))

(assert (= (and b!80640 c!20379) b!80641))

(assert (= (and b!80640 (not c!20379)) b!80642))

(assert (= (and d!55511 c!20378) b!80639))

(assert (= (and d!55511 (not c!20378)) b!80640))

(declare-fun m!75426 () Bool)

(assert (=> b!80642 m!75426))

(declare-fun m!75428 () Bool)

(assert (=> b!80642 m!75428))

(assert (=> b!80642 m!75426))

(declare-fun m!75430 () Bool)

(assert (=> b!80642 m!75430))

(declare-fun m!75432 () Bool)

(assert (=> b!80642 m!75432))

(assert (=> b!80642 m!75428))

(declare-fun m!75434 () Bool)

(assert (=> b!80642 m!75434))

(assert (=> b!80642 m!75430))

(declare-fun m!75436 () Bool)

(assert (=> b!80642 m!75436))

(assert (=> b!80642 m!75434))

(assert (=> b!80642 m!75436))

(declare-fun m!75438 () Bool)

(assert (=> b!80642 m!75438))

(assert (=> b!80575 d!55511))

(declare-fun bs!38331 () Bool)

(declare-fun d!55513 () Bool)

(assert (= bs!38331 (and d!55513 b!80642)))

(declare-fun lambda!9308 () Int)

(assert (=> bs!38331 (not (= lambda!9308 lambda!9305))))

(assert (=> bs!38331 (= (= (h!986 ls!96) (h!986 less!5)) (= lambda!9308 lambda!9304))))

(assert (=> bs!38331 (not (= lambda!9308 lambda!9303))))

(declare-fun bs!38332 () Bool)

(assert (= bs!38332 (and d!55513 b!80576)))

(assert (=> bs!38332 (= lambda!9308 lambda!9285)))

(declare-fun bs!38333 () Bool)

(assert (= bs!38333 (and d!55513 b!80572)))

(assert (=> bs!38333 (not (= lambda!9308 lambda!9284))))

(declare-fun bs!38334 () Bool)

(assert (= bs!38334 (and d!55513 b!80590)))

(assert (=> bs!38334 (not (= lambda!9308 lambda!9296))))

(assert (=> bs!38334 (= (= (h!986 ls!96) (h!986 less!5)) (= lambda!9308 lambda!9295))))

(assert (=> bs!38334 (not (= lambda!9308 lambda!9294))))

(declare-fun bs!38335 () Bool)

(assert (= bs!38335 (and d!55513 b!80577)))

(assert (=> bs!38335 (not (= lambda!9308 lambda!9286))))

(declare-fun bs!38336 () Bool)

(assert (= bs!38336 (and d!55513 b!80580)))

(assert (=> bs!38336 (not (= lambda!9308 lambda!9287))))

(assert (=> d!55513 true))

(assert (=> d!55513 (isSorted!1 (Cons!617 (h!986 ls!96) (filter!13 (t!47790 ls!96) lambda!9308)))))

(declare-datatypes () ((Unit!1163 (Unit!1164))))

(declare-fun lt!18438 () Unit!1163)

(declare-fun Unit!1165 () Unit!1163)

(assert (=> d!55513 (= lt!18438 Unit!1165)))

(declare-fun filter_equal_sorted!0 (List!660 Int) Bool)

(assert (=> d!55513 (filter_equal_sorted!0 (t!47790 ls!96) (h!986 ls!96))))

(assert (=> d!55513 (= (cons_filter_equal_sorted!0 (t!47790 ls!96) (h!986 ls!96)) true)))

(declare-fun bs!38337 () Bool)

(assert (= bs!38337 d!55513))

(declare-fun m!75440 () Bool)

(assert (=> bs!38337 m!75440))

(declare-fun m!75442 () Bool)

(assert (=> bs!38337 m!75442))

(declare-fun m!75444 () Bool)

(assert (=> bs!38337 m!75444))

(assert (=> b!80579 d!55513))

(declare-fun bs!38338 () Bool)

(declare-fun b!80657 () Bool)

(assert (= bs!38338 (and b!80657 b!80642)))

(declare-fun lambda!9321 () Int)

(assert (=> bs!38338 (not (= lambda!9321 lambda!9305))))

(assert (=> bs!38338 (not (= lambda!9321 lambda!9304))))

(assert (=> bs!38338 (= lambda!9321 lambda!9303)))

(declare-fun bs!38339 () Bool)

(assert (= bs!38339 (and b!80657 b!80576)))

(assert (=> bs!38339 (not (= lambda!9321 lambda!9285))))

(declare-fun bs!38340 () Bool)

(assert (= bs!38340 (and b!80657 b!80572)))

(assert (=> bs!38340 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9321 lambda!9284))))

(declare-fun bs!38341 () Bool)

(assert (= bs!38341 (and b!80657 b!80590)))

(assert (=> bs!38341 (not (= lambda!9321 lambda!9296))))

(assert (=> bs!38341 (not (= lambda!9321 lambda!9295))))

(assert (=> bs!38341 (= lambda!9321 lambda!9294)))

(declare-fun bs!38342 () Bool)

(assert (= bs!38342 (and b!80657 d!55513)))

(assert (=> bs!38342 (not (= lambda!9321 lambda!9308))))

(declare-fun bs!38343 () Bool)

(assert (= bs!38343 (and b!80657 b!80577)))

(assert (=> bs!38343 (not (= lambda!9321 lambda!9286))))

(declare-fun bs!38344 () Bool)

(assert (= bs!38344 (and b!80657 b!80580)))

(assert (=> bs!38344 (= (= (h!986 less!5) x!29304) (= lambda!9321 lambda!9287))))

(assert (=> b!80657 true))

(declare-fun lambda!9322 () Int)

(assert (=> bs!38338 (not (= lambda!9322 lambda!9305))))

(assert (=> bs!38338 (= lambda!9322 lambda!9304)))

(assert (=> bs!38338 (not (= lambda!9322 lambda!9303))))

(assert (=> bs!38339 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9322 lambda!9285))))

(assert (=> bs!38340 (not (= lambda!9322 lambda!9284))))

(assert (=> b!80657 (not (= lambda!9322 lambda!9321))))

(assert (=> bs!38341 (not (= lambda!9322 lambda!9296))))

(assert (=> bs!38341 (= lambda!9322 lambda!9295)))

(assert (=> bs!38341 (not (= lambda!9322 lambda!9294))))

(assert (=> bs!38342 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9322 lambda!9308))))

(assert (=> bs!38343 (not (= lambda!9322 lambda!9286))))

(assert (=> bs!38344 (not (= lambda!9322 lambda!9287))))

(assert (=> b!80657 true))

(declare-fun lambda!9323 () Int)

(assert (=> bs!38338 (= lambda!9323 lambda!9305)))

(assert (=> bs!38338 (not (= lambda!9323 lambda!9304))))

(assert (=> bs!38338 (not (= lambda!9323 lambda!9303))))

(assert (=> bs!38339 (not (= lambda!9323 lambda!9285))))

(assert (=> bs!38340 (not (= lambda!9323 lambda!9284))))

(assert (=> b!80657 (not (= lambda!9323 lambda!9322))))

(assert (=> b!80657 (not (= lambda!9323 lambda!9321))))

(assert (=> bs!38341 (= lambda!9323 lambda!9296)))

(assert (=> bs!38341 (not (= lambda!9323 lambda!9295))))

(assert (=> bs!38341 (not (= lambda!9323 lambda!9294))))

(assert (=> bs!38342 (not (= lambda!9323 lambda!9308))))

(assert (=> bs!38343 (= (= (h!986 less!5) (h!986 ls!96)) (= lambda!9323 lambda!9286))))

(assert (=> bs!38344 (not (= lambda!9323 lambda!9287))))

(assert (=> b!80657 true))

(declare-fun b!80653 () Bool)

(declare-fun e!43754 () Bool)

(declare-fun lt!18451 () List!660)

(assert (=> b!80653 (= e!43754 (sort_preserves_forall!0 lt!18451 lambda!9284))))

(declare-fun b!80654 () Bool)

(declare-fun e!43752 () Bool)

(declare-fun filter_preserves_forall!0 (List!660 Int Int) Bool)

(assert (=> b!80654 (= e!43752 (filter_preserves_forall!0 (t!47790 less!5) lambda!9322 lambda!9284))))

(declare-fun e!43753 () Bool)

(declare-fun b!80655 () Bool)

(declare-fun lt!18452 () List!660)

(declare-fun lt!18455 () List!660)

(declare-fun append_preserves_forall!0 (List!660 List!660 Int) Bool)

(assert (=> b!80655 (= e!43753 (append_preserves_forall!0 (++!68 (quickSort!0 lt!18452) lt!18455) (quickSort!0 lt!18451) lambda!9284))))

(declare-fun e!43756 () Bool)

(declare-fun b!80656 () Bool)

(assert (=> b!80656 (= e!43756 (filter_preserves_forall!0 (t!47790 less!5) lambda!9323 lambda!9284))))

(declare-fun d!55515 () Bool)

(assert (=> d!55515 (forall!15 (quickSort!0 less!5) lambda!9284)))

(declare-fun lt!18454 () Bool)

(declare-fun e!43755 () Bool)

(assert (=> d!55515 (= lt!18454 e!43755)))

(declare-fun res!41078 () Bool)

(assert (=> d!55515 (=> res!41078 e!43755)))

(assert (=> d!55515 (= res!41078 (or (is-Nil!619 less!5) (and (is-Cons!617 less!5) (is-Nil!619 (t!47790 less!5)))))))

(assert (=> d!55515 (forall!15 less!5 lambda!9284)))

(assert (=> d!55515 (= (sort_preserves_forall!0 less!5 lambda!9284) true)))

(assert (=> b!80657 (= e!43755 e!43753)))

(declare-fun res!41077 () Bool)

(assert (=> b!80657 (=> (not res!41077) (not e!43753))))

(assert (=> b!80657 (= res!41077 (append_preserves_forall!0 (quickSort!0 lt!18452) lt!18455 lambda!9284))))

(declare-fun lt!18456 () Bool)

(assert (=> b!80657 (= lt!18456 e!43754)))

(declare-fun res!41080 () Bool)

(assert (=> b!80657 (=> (not res!41080) (not e!43754))))

(assert (=> b!80657 (= res!41080 (sort_preserves_forall!0 lt!18452 lambda!9284))))

(declare-fun lt!18453 () Bool)

(assert (=> b!80657 (= lt!18453 e!43756)))

(declare-fun res!41079 () Bool)

(assert (=> b!80657 (=> (not res!41079) (not e!43756))))

(assert (=> b!80657 (= res!41079 e!43752)))

(declare-fun res!41076 () Bool)

(assert (=> b!80657 (=> (not res!41076) (not e!43752))))

(assert (=> b!80657 (= res!41076 (filter_preserves_forall!0 (t!47790 less!5) lambda!9321 lambda!9284))))

(assert (=> b!80657 (= lt!18451 (filter!13 (t!47790 less!5) lambda!9323))))

(assert (=> b!80657 (= lt!18455 (Cons!617 (h!986 less!5) (filter!13 (t!47790 less!5) lambda!9322)))))

(assert (=> b!80657 (= lt!18452 (filter!13 (t!47790 less!5) lambda!9321))))

(assert (= (and d!55515 (not res!41078)) b!80657))

(assert (= (and b!80657 res!41076) b!80654))

(assert (= (and b!80657 res!41079) b!80656))

(assert (= (and b!80657 res!41080) b!80653))

(assert (= (and b!80657 res!41077) b!80655))

(declare-fun m!75446 () Bool)

(assert (=> b!80655 m!75446))

(assert (=> b!80655 m!75446))

(declare-fun m!75448 () Bool)

(assert (=> b!80655 m!75448))

(declare-fun m!75450 () Bool)

(assert (=> b!80655 m!75450))

(assert (=> b!80655 m!75448))

(assert (=> b!80655 m!75450))

(declare-fun m!75452 () Bool)

(assert (=> b!80655 m!75452))

(declare-fun m!75454 () Bool)

(assert (=> b!80657 m!75454))

(declare-fun m!75456 () Bool)

(assert (=> b!80657 m!75456))

(declare-fun m!75458 () Bool)

(assert (=> b!80657 m!75458))

(declare-fun m!75460 () Bool)

(assert (=> b!80657 m!75460))

(declare-fun m!75462 () Bool)

(assert (=> b!80657 m!75462))

(assert (=> b!80657 m!75446))

(declare-fun m!75464 () Bool)

(assert (=> b!80657 m!75464))

(assert (=> b!80657 m!75446))

(assert (=> d!55515 m!75358))

(assert (=> d!55515 m!75358))

(declare-fun m!75466 () Bool)

(assert (=> d!55515 m!75466))

(declare-fun m!75468 () Bool)

(assert (=> d!55515 m!75468))

(declare-fun m!75470 () Bool)

(assert (=> b!80653 m!75470))

(declare-fun m!75472 () Bool)

(assert (=> b!80656 m!75472))

(declare-fun m!75474 () Bool)

(assert (=> b!80654 m!75474))

(assert (=> b!80574 d!55515))

(declare-fun b!80658 () Bool)

(declare-fun e!43758 () Bool)

(assert (=> b!80658 (= e!43758 (dynLambda!979 lambda!9284 (h!986 (t!47790 ls!96))))))

(declare-fun b!80659 () Bool)

(declare-fun e!43757 () List!660)

(declare-fun lt!18457 () List!660)

(assert (=> b!80659 (= e!43757 (Cons!617 (h!986 (t!47790 ls!96)) lt!18457))))

(declare-fun b!80660 () Bool)

(declare-fun e!43760 () List!660)

(assert (=> b!80660 (= e!43760 Nil!619)))

(declare-fun b!80661 () Bool)

(assert (=> b!80661 (= e!43760 e!43757)))

(declare-fun c!20380 () Bool)

(assert (=> b!80661 (= c!20380 e!43758)))

(declare-fun res!41083 () Bool)

(assert (=> b!80661 (=> (not res!41083) (not e!43758))))

(assert (=> b!80661 (= res!41083 (is-Cons!617 (t!47790 ls!96)))))

(assert (=> b!80661 (= lt!18457 (filter!13 (t!47790 (t!47790 ls!96)) lambda!9284))))

(declare-fun b!80662 () Bool)

(assert (=> b!80662 (= e!43757 lt!18457)))

(declare-fun b!80663 () Bool)

(declare-fun res!41081 () Bool)

(declare-fun e!43759 () Bool)

(assert (=> b!80663 (=> (not res!41081) (not e!43759))))

(declare-fun lt!18458 () List!660)

(assert (=> b!80663 (= res!41081 (subset (content!119 lt!18458) (content!119 (t!47790 ls!96))))))

(declare-fun d!55517 () Bool)

(assert (=> d!55517 e!43759))

(declare-fun res!41082 () Bool)

(assert (=> d!55517 (=> (not res!41082) (not e!43759))))

(assert (=> d!55517 (= res!41082 (<= (size!648 lt!18458) (size!648 (t!47790 ls!96))))))

(assert (=> d!55517 (= lt!18458 e!43760)))

(declare-fun c!20381 () Bool)

(assert (=> d!55517 (= c!20381 (is-Nil!619 (t!47790 ls!96)))))

(assert (=> d!55517 (= (filter!13 (t!47790 ls!96) lambda!9284) lt!18458)))

(declare-fun b!80664 () Bool)

(assert (=> b!80664 (= e!43759 (forall!15 lt!18458 lambda!9284))))

(assert (= (and b!80661 res!41083) b!80658))

(assert (= (and b!80661 c!20380) b!80659))

(assert (= (and b!80661 (not c!20380)) b!80662))

(assert (= (and d!55517 c!20381) b!80660))

(assert (= (and d!55517 (not c!20381)) b!80661))

(assert (= (and d!55517 res!41082) b!80663))

(assert (= (and b!80663 res!41081) b!80664))

(declare-fun b_lambda!15945 () Bool)

(assert (=> (not b_lambda!15945) (not b!80658)))

(declare-fun m!75476 () Bool)

(assert (=> b!80658 m!75476))

(declare-fun m!75478 () Bool)

(assert (=> d!55517 m!75478))

(assert (=> d!55517 m!75400))

(declare-fun m!75480 () Bool)

(assert (=> b!80663 m!75480))

(assert (=> b!80663 m!75404))

(declare-fun m!75482 () Bool)

(assert (=> b!80661 m!75482))

(declare-fun m!75484 () Bool)

(assert (=> b!80664 m!75484))

(assert (=> b!80572 d!55517))

(declare-fun d!55519 () Bool)

(declare-fun res!41088 () Bool)

(declare-fun e!43765 () Bool)

(assert (=> d!55519 (=> res!41088 e!43765)))

(assert (=> d!55519 (= res!41088 (is-Nil!619 ls!109))))

(assert (=> d!55519 (= (forall!15 ls!109 lambda!9287) e!43765)))

(declare-fun b!80669 () Bool)

(declare-fun e!43766 () Bool)

(assert (=> b!80669 (= e!43765 e!43766)))

(declare-fun res!41089 () Bool)

(assert (=> b!80669 (=> (not res!41089) (not e!43766))))

(assert (=> b!80669 (= res!41089 (dynLambda!979 lambda!9287 (h!986 ls!109)))))

(declare-fun b!80670 () Bool)

(assert (=> b!80670 (= e!43766 (forall!15 (t!47790 ls!109) lambda!9287))))

(assert (= (and d!55519 (not res!41088)) b!80669))

(assert (= (and b!80669 res!41089) b!80670))

(declare-fun b_lambda!15947 () Bool)

(assert (=> (not b_lambda!15947) (not b!80669)))

(declare-fun m!75486 () Bool)

(assert (=> b!80669 m!75486))

(declare-fun m!75488 () Bool)

(assert (=> b!80670 m!75488))

(assert (=> b!80580 d!55519))

(declare-fun b!80671 () Bool)

(declare-fun e!43768 () Bool)

(assert (=> b!80671 (= e!43768 (dynLambda!979 lambda!9286 (h!986 (t!47790 ls!96))))))

(declare-fun b!80672 () Bool)

(declare-fun e!43767 () List!660)

(declare-fun lt!18459 () List!660)

(assert (=> b!80672 (= e!43767 (Cons!617 (h!986 (t!47790 ls!96)) lt!18459))))

(declare-fun b!80673 () Bool)

(declare-fun e!43770 () List!660)

(assert (=> b!80673 (= e!43770 Nil!619)))

(declare-fun b!80674 () Bool)

(assert (=> b!80674 (= e!43770 e!43767)))

(declare-fun c!20382 () Bool)

(assert (=> b!80674 (= c!20382 e!43768)))

(declare-fun res!41092 () Bool)

(assert (=> b!80674 (=> (not res!41092) (not e!43768))))

(assert (=> b!80674 (= res!41092 (is-Cons!617 (t!47790 ls!96)))))

(assert (=> b!80674 (= lt!18459 (filter!13 (t!47790 (t!47790 ls!96)) lambda!9286))))

(declare-fun b!80675 () Bool)

(assert (=> b!80675 (= e!43767 lt!18459)))

(declare-fun b!80676 () Bool)

(declare-fun res!41090 () Bool)

(declare-fun e!43769 () Bool)

(assert (=> b!80676 (=> (not res!41090) (not e!43769))))

(declare-fun lt!18460 () List!660)

(assert (=> b!80676 (= res!41090 (subset (content!119 lt!18460) (content!119 (t!47790 ls!96))))))

(declare-fun d!55521 () Bool)

(assert (=> d!55521 e!43769))

(declare-fun res!41091 () Bool)

(assert (=> d!55521 (=> (not res!41091) (not e!43769))))

(assert (=> d!55521 (= res!41091 (<= (size!648 lt!18460) (size!648 (t!47790 ls!96))))))

(assert (=> d!55521 (= lt!18460 e!43770)))

(declare-fun c!20383 () Bool)

(assert (=> d!55521 (= c!20383 (is-Nil!619 (t!47790 ls!96)))))

(assert (=> d!55521 (= (filter!13 (t!47790 ls!96) lambda!9286) lt!18460)))

(declare-fun b!80677 () Bool)

(assert (=> b!80677 (= e!43769 (forall!15 lt!18460 lambda!9286))))

(assert (= (and b!80674 res!41092) b!80671))

(assert (= (and b!80674 c!20382) b!80672))

(assert (= (and b!80674 (not c!20382)) b!80675))

(assert (= (and d!55521 c!20383) b!80673))

(assert (= (and d!55521 (not c!20383)) b!80674))

(assert (= (and d!55521 res!41091) b!80676))

(assert (= (and b!80676 res!41090) b!80677))

(declare-fun b_lambda!15949 () Bool)

(assert (=> (not b_lambda!15949) (not b!80671)))

(declare-fun m!75490 () Bool)

(assert (=> b!80671 m!75490))

(declare-fun m!75492 () Bool)

(assert (=> d!55521 m!75492))

(assert (=> d!55521 m!75400))

(declare-fun m!75494 () Bool)

(assert (=> b!80676 m!75494))

(assert (=> b!80676 m!75404))

(declare-fun m!75496 () Bool)

(assert (=> b!80674 m!75496))

(declare-fun m!75498 () Bool)

(assert (=> b!80677 m!75498))

(assert (=> b!80577 d!55521))

(declare-fun b!80690 () Bool)

(declare-fun e!43778 () Bool)

(assert (=> b!80690 (= e!43778 (dynLambda!979 lambda!9284 (last!12 (quickSort!0 less!5))))))

(declare-fun b!80691 () Bool)

(declare-fun res!41104 () Bool)

(declare-fun e!43777 () Bool)

(assert (=> b!80691 (=> res!41104 e!43777)))

(assert (=> b!80691 (= res!41104 (isEmpty!672 (quickSort!0 less!5)))))

(declare-fun b!80692 () Bool)

(declare-fun e!43779 () Bool)

(assert (=> b!80692 (= e!43779 e!43777)))

(declare-fun res!41102 () Bool)

(assert (=> b!80692 (=> res!41102 e!43777)))

(assert (=> b!80692 (= res!41102 (not (forall!15 (quickSort!0 less!5) lambda!9284)))))

(declare-fun b!80693 () Bool)

(declare-fun res!41101 () Bool)

(assert (=> b!80693 (=> res!41101 e!43778)))

(assert (=> b!80693 (= res!41101 (isEmpty!672 (quickSort!0 less!5)))))

(declare-fun b!80694 () Bool)

(assert (=> b!80694 (= e!43777 (dynLambda!979 lambda!9284 (last!12 (quickSort!0 less!5))))))

(declare-fun b!80695 () Bool)

(assert (=> b!80695 (= e!43779 e!43778)))

(declare-fun res!41103 () Bool)

(assert (=> b!80695 (=> res!41103 e!43778)))

(assert (=> b!80695 (= res!41103 (not (forall!15 (quickSort!0 less!5) lambda!9284)))))

(declare-fun lt!18463 () Bool)

(assert (=> b!80695 (= lt!18463 (forall_last!0 (t!47790 (quickSort!0 less!5)) lambda!9284))))

(declare-fun d!55523 () Bool)

(assert (=> d!55523 e!43779))

(declare-fun c!20386 () Bool)

(assert (=> d!55523 (= c!20386 (is-Cons!617 (quickSort!0 less!5)))))

(assert (=> d!55523 (= (forall_last!0 (quickSort!0 less!5) lambda!9284) true)))

(assert (= (and b!80695 (not res!41103)) b!80693))

(assert (= (and b!80693 (not res!41101)) b!80690))

(assert (= (and b!80692 (not res!41102)) b!80691))

(assert (= (and b!80691 (not res!41104)) b!80694))

(assert (= (and d!55523 c!20386) b!80695))

(assert (= (and d!55523 (not c!20386)) b!80692))

(declare-fun b_lambda!15951 () Bool)

(assert (=> (not b_lambda!15951) (not b!80690)))

(declare-fun b_lambda!15953 () Bool)

(assert (=> (not b_lambda!15953) (not b!80694)))

(assert (=> b!80690 m!75358))

(assert (=> b!80690 m!75422))

(assert (=> b!80690 m!75422))

(declare-fun m!75500 () Bool)

(assert (=> b!80690 m!75500))

(assert (=> b!80692 m!75358))

(assert (=> b!80692 m!75466))

(assert (=> b!80695 m!75358))

(assert (=> b!80695 m!75466))

(declare-fun m!75502 () Bool)

(assert (=> b!80695 m!75502))

(assert (=> b!80693 m!75358))

(assert (=> b!80693 m!75420))

(assert (=> b!80694 m!75358))

(assert (=> b!80694 m!75422))

(assert (=> b!80694 m!75422))

(assert (=> b!80694 m!75500))

(assert (=> b!80691 m!75358))

(assert (=> b!80691 m!75420))

(assert (=> b!80581 d!55523))

(assert (=> b!80581 d!55511))

(declare-fun b_lambda!15955 () Bool)

(assert (= b_lambda!15945 (or b!80572 b_lambda!15955)))

(declare-fun bs!38345 () Bool)

(declare-fun d!55525 () Bool)

(assert (= bs!38345 (and d!55525 b!80572)))

(assert (=> bs!38345 (= (dynLambda!979 lambda!9284 (h!986 (t!47790 ls!96))) (< (h!986 (t!47790 ls!96)) (h!986 ls!96)))))

(assert (=> b!80658 d!55525))

(declare-fun b_lambda!15957 () Bool)

(assert (= b_lambda!15951 (or b!80572 b_lambda!15957)))

(declare-fun bs!38346 () Bool)

(declare-fun d!55527 () Bool)

(assert (= bs!38346 (and d!55527 b!80572)))

(assert (=> bs!38346 (= (dynLambda!979 lambda!9284 (last!12 (quickSort!0 less!5))) (< (last!12 (quickSort!0 less!5)) (h!986 ls!96)))))

(assert (=> b!80690 d!55527))

(declare-fun b_lambda!15959 () Bool)

(assert (= b_lambda!15947 (or b!80580 b_lambda!15959)))

(declare-fun bs!38347 () Bool)

(declare-fun d!55529 () Bool)

(assert (= bs!38347 (and d!55529 b!80580)))

(assert (=> bs!38347 (= (dynLambda!979 lambda!9287 (h!986 ls!109)) (< (h!986 ls!109) x!29304))))

(assert (=> b!80669 d!55529))

(declare-fun b_lambda!15961 () Bool)

(assert (= b_lambda!15949 (or b!80577 b_lambda!15961)))

(declare-fun bs!38348 () Bool)

(declare-fun d!55531 () Bool)

(assert (= bs!38348 (and d!55531 b!80577)))

(assert (=> bs!38348 (= (dynLambda!979 lambda!9286 (h!986 (t!47790 ls!96))) (> (h!986 (t!47790 ls!96)) (h!986 ls!96)))))

(assert (=> b!80671 d!55531))

(declare-fun b_lambda!15963 () Bool)

(assert (= b_lambda!15953 (or b!80572 b_lambda!15963)))

(assert (=> b!80694 d!55527))

(declare-fun b_lambda!15965 () Bool)

(assert (= b_lambda!15943 (or b!80576 b_lambda!15965)))

(declare-fun bs!38349 () Bool)

(declare-fun d!55533 () Bool)

(assert (= bs!38349 (and d!55533 b!80576)))

(assert (=> bs!38349 (= (dynLambda!979 lambda!9285 (h!986 (t!47790 ls!96))) (= (h!986 (t!47790 ls!96)) (h!986 ls!96)))))

(assert (=> b!80606 d!55533))

(push 1)

(assert (not b!80626))

(assert (not b_lambda!15957))

(assert (not d!55513))

(assert (not b!80695))

(assert (not d!55505))

(assert (not b_lambda!15961))

(assert (not d!55517))

(assert (not b!80627))

(assert (not b_lambda!15955))

(assert (not d!55521))

(assert (not b!80590))

(assert (not b!80677))

(assert (not d!55509))

(assert (not b!80653))

(assert (not b!80657))

(assert (not b!80611))

(assert (not b!80664))

(assert (not b!80630))

(assert (not b!80690))

(assert (not b!80629))

(assert (not b!80674))

(assert (not b!80670))

(assert (not b!80661))

(assert (not b!80642))

(assert (not d!55507))

(assert (not d!55515))

(assert (not b_lambda!15959))

(assert (not b!80694))

(assert (not b!80692))

(assert (not b!80609))

(assert (not b!80655))

(assert (not b!80676))

(assert (not b!80625))

(assert (not b_lambda!15963))

(assert (not b!80663))

(assert (not b!80628))

(assert (not b_lambda!15965))

(assert (not b!80654))

(assert (not b!80591))

(assert (not b!80656))

(assert (not b!80691))

(assert (not b!80693))

(assert (not b!80612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

