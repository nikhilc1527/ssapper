; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10932 () Bool)

(assert start!10932)

(declare-fun b!83529 () Bool)

(assert (=> b!83529 true))

(declare-fun bs!40565 () Bool)

(declare-fun b!83536 () Bool)

(assert (= bs!40565 (and b!83536 b!83529)))

(declare-fun lambda!10363 () Int)

(declare-fun lambda!10362 () Int)

(assert (=> bs!40565 (not (= lambda!10363 lambda!10362))))

(assert (=> b!83536 true))

(declare-fun bs!40566 () Bool)

(declare-fun b!83535 () Bool)

(assert (= bs!40566 (and b!83535 b!83529)))

(declare-fun lambda!10364 () Int)

(assert (=> bs!40566 (not (= lambda!10364 lambda!10362))))

(declare-fun bs!40567 () Bool)

(assert (= bs!40567 (and b!83535 b!83536)))

(assert (=> bs!40567 (not (= lambda!10364 lambda!10363))))

(assert (=> b!83535 true))

(declare-fun bs!40568 () Bool)

(declare-fun b!83524 () Bool)

(assert (= bs!40568 (and b!83524 b!83529)))

(declare-fun lambda!10365 () Int)

(assert (=> bs!40568 (not (= lambda!10365 lambda!10362))))

(declare-fun bs!40569 () Bool)

(assert (= bs!40569 (and b!83524 b!83536)))

(assert (=> bs!40569 (not (= lambda!10365 lambda!10363))))

(declare-fun bs!40570 () Bool)

(assert (= bs!40570 (and b!83524 b!83535)))

(assert (=> bs!40570 (not (= lambda!10365 lambda!10364))))

(assert (=> b!83524 true))

(declare-fun res!42995 () Bool)

(declare-fun e!45285 () Bool)

(assert (=> b!83524 (=> (not res!42995) (not e!45285))))

(declare-datatypes () ((List!676 (Cons!633 (h!1003 Int) (t!47921 List!676)) (Nil!635))))

(declare-fun less!5 () List!676)

(declare-fun sort_preserves_forall!0 (List!676 Int) Bool)

(assert (=> b!83524 (= res!42995 (sort_preserves_forall!0 less!5 lambda!10365))))

(declare-fun res!42990 () Bool)

(assert (=> start!10932 (=> (not res!42990) (not e!45285))))

(declare-fun ls!96 () List!676)

(assert (=> start!10932 (= res!42990 (and (not (is-Nil!635 ls!96)) (not (is-Nil!635 (t!47921 ls!96)))))))

(assert (=> start!10932 e!45285))

(assert (=> start!10932 true))

(declare-fun b!83525 () Bool)

(declare-fun res!42989 () Bool)

(assert (=> b!83525 (=> (not res!42989) (not e!45285))))

(declare-fun forall_last!0 (List!676 Int) Bool)

(declare-fun quickSort!0 (List!676) List!676)

(assert (=> b!83525 (= res!42989 (forall_last!0 (quickSort!0 less!5) lambda!10362))))

(declare-fun b!83526 () Bool)

(declare-fun res!42986 () Bool)

(assert (=> b!83526 (=> (not res!42986) (not e!45285))))

(declare-fun equal!10 () List!676)

(declare-fun forall_eq_implies_le!0 (List!676 Int) Bool)

(assert (=> b!83526 (= res!42986 (forall_eq_implies_le!0 equal!10 (h!1003 ls!96)))))

(declare-fun b!83527 () Bool)

(declare-fun res!42996 () Bool)

(assert (=> b!83527 (=> (not res!42996) (not e!45285))))

(declare-fun forall_lt_implies_le!0 (List!676 Int) Bool)

(assert (=> b!83527 (= res!42996 (forall_lt_implies_le!0 less!5 (h!1003 ls!96)))))

(declare-fun b!83528 () Bool)

(declare-fun more!5 () List!676)

(assert (=> b!83528 (= e!45285 (not (sort_preserves_forall!0 more!5 lambda!10364)))))

(declare-fun res!42985 () Bool)

(assert (=> b!83529 (=> (not res!42985) (not e!45285))))

(declare-fun filter!29 (List!676 Int) List!676)

(assert (=> b!83529 (= res!42985 (= less!5 (filter!29 (t!47921 ls!96) lambda!10362)))))

(declare-fun b!83530 () Bool)

(declare-fun res!42999 () Bool)

(assert (=> b!83530 (=> (not res!42999) (not e!45285))))

(declare-fun append_preserves_forall!0 (List!676 List!676 Int) Bool)

(assert (=> b!83530 (= res!42999 (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10365))))

(declare-fun b!83531 () Bool)

(declare-fun res!42997 () Bool)

(assert (=> b!83531 (=> (not res!42997) (not e!45285))))

(declare-fun cons_filter_equal_sorted!0 (List!676 Int) Bool)

(assert (=> b!83531 (= res!42997 (cons_filter_equal_sorted!0 (t!47921 ls!96) (h!1003 ls!96)))))

(declare-fun b!83532 () Bool)

(declare-fun res!42991 () Bool)

(assert (=> b!83532 (=> (not res!42991) (not e!45285))))

(declare-fun sorted_lemma!0 (List!676) Bool)

(assert (=> b!83532 (= res!42991 (sorted_lemma!0 more!5))))

(declare-fun b!83533 () Bool)

(declare-fun res!42993 () Bool)

(assert (=> b!83533 (=> (not res!42993) (not e!45285))))

(assert (=> b!83533 (= res!42993 (sorted_lemma!0 less!5))))

(declare-fun b!83534 () Bool)

(declare-fun res!42998 () Bool)

(assert (=> b!83534 (=> (not res!42998) (not e!45285))))

(declare-fun append_sorted!0 (List!676 List!676) Bool)

(assert (=> b!83534 (= res!42998 (append_sorted!0 (quickSort!0 less!5) equal!10))))

(declare-fun res!42987 () Bool)

(assert (=> b!83535 (=> (not res!42987) (not e!45285))))

(assert (=> b!83535 (= res!42987 (= more!5 (filter!29 (t!47921 ls!96) lambda!10364)))))

(declare-fun res!42992 () Bool)

(assert (=> b!83536 (=> (not res!42992) (not e!45285))))

(assert (=> b!83536 (= res!42992 (= equal!10 (Cons!633 (h!1003 ls!96) (filter!29 (t!47921 ls!96) lambda!10363))))))

(declare-fun b!83537 () Bool)

(declare-fun res!42988 () Bool)

(assert (=> b!83537 (=> (not res!42988) (not e!45285))))

(assert (=> b!83537 (= res!42988 (sort_preserves_forall!0 less!5 lambda!10362))))

(declare-fun b!83538 () Bool)

(declare-fun res!42994 () Bool)

(assert (=> b!83538 (=> (not res!42994) (not e!45285))))

(declare-fun ++!84 (List!676 List!676) List!676)

(assert (=> b!83538 (= res!42994 (forall_last!0 (++!84 (quickSort!0 less!5) equal!10) lambda!10365))))

(assert (= (and start!10932 res!42990) b!83529))

(assert (= (and b!83529 res!42985) b!83536))

(assert (= (and b!83536 res!42992) b!83535))

(assert (= (and b!83535 res!42987) b!83533))

(assert (= (and b!83533 res!42993) b!83537))

(assert (= (and b!83537 res!42988) b!83525))

(assert (= (and b!83525 res!42989) b!83531))

(assert (= (and b!83531 res!42997) b!83534))

(assert (= (and b!83534 res!42998) b!83527))

(assert (= (and b!83527 res!42996) b!83524))

(assert (= (and b!83524 res!42995) b!83526))

(assert (= (and b!83526 res!42986) b!83530))

(assert (= (and b!83530 res!42999) b!83538))

(assert (= (and b!83538 res!42994) b!83532))

(assert (= (and b!83532 res!42991) b!83528))

(declare-fun m!79302 () Bool)

(assert (=> b!83526 m!79302))

(declare-fun m!79304 () Bool)

(assert (=> b!83535 m!79304))

(declare-fun m!79306 () Bool)

(assert (=> b!83532 m!79306))

(declare-fun m!79308 () Bool)

(assert (=> b!83533 m!79308))

(declare-fun m!79310 () Bool)

(assert (=> b!83537 m!79310))

(declare-fun m!79312 () Bool)

(assert (=> b!83530 m!79312))

(assert (=> b!83530 m!79312))

(declare-fun m!79314 () Bool)

(assert (=> b!83530 m!79314))

(assert (=> b!83538 m!79312))

(assert (=> b!83538 m!79312))

(declare-fun m!79316 () Bool)

(assert (=> b!83538 m!79316))

(assert (=> b!83538 m!79316))

(declare-fun m!79318 () Bool)

(assert (=> b!83538 m!79318))

(declare-fun m!79320 () Bool)

(assert (=> b!83524 m!79320))

(declare-fun m!79322 () Bool)

(assert (=> b!83531 m!79322))

(declare-fun m!79324 () Bool)

(assert (=> b!83527 m!79324))

(assert (=> b!83525 m!79312))

(assert (=> b!83525 m!79312))

(declare-fun m!79326 () Bool)

(assert (=> b!83525 m!79326))

(declare-fun m!79328 () Bool)

(assert (=> b!83529 m!79328))

(assert (=> b!83534 m!79312))

(assert (=> b!83534 m!79312))

(declare-fun m!79330 () Bool)

(assert (=> b!83534 m!79330))

(declare-fun m!79332 () Bool)

(assert (=> b!83528 m!79332))

(declare-fun m!79334 () Bool)

(assert (=> b!83536 m!79334))

(push 1)

(assert (not b!83524))

(assert (not b!83534))

(assert (not b!83530))

(assert (not b!83537))

(assert (not b!83526))

(assert (not b!83538))

(assert (not b!83525))

(assert (not b!83535))

(assert (not b!83531))

(assert (not b!83532))

(assert (not b!83533))

(assert (not b!83527))

(assert (not b!83529))

(assert (not b!83528))

(assert (not b!83536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!40571 () Bool)

(declare-fun d!56539 () Bool)

(assert (= bs!40571 (and d!56539 b!83529)))

(declare-fun lambda!10372 () Int)

(assert (=> bs!40571 (not (= lambda!10372 lambda!10362))))

(declare-fun bs!40572 () Bool)

(assert (= bs!40572 (and d!56539 b!83536)))

(assert (=> bs!40572 (= lambda!10372 lambda!10363)))

(declare-fun bs!40573 () Bool)

(assert (= bs!40573 (and d!56539 b!83535)))

(assert (=> bs!40573 (not (= lambda!10372 lambda!10364))))

(declare-fun bs!40574 () Bool)

(assert (= bs!40574 (and d!56539 b!83524)))

(assert (=> bs!40574 (not (= lambda!10372 lambda!10365))))

(assert (=> d!56539 true))

(declare-fun bs!40575 () Bool)

(declare-fun b!83545 () Bool)

(assert (= bs!40575 (and b!83545 b!83524)))

(declare-fun lambda!10373 () Int)

(assert (=> bs!40575 (= lambda!10373 lambda!10365)))

(declare-fun bs!40576 () Bool)

(assert (= bs!40576 (and b!83545 b!83535)))

(assert (=> bs!40576 (not (= lambda!10373 lambda!10364))))

(declare-fun bs!40577 () Bool)

(assert (= bs!40577 (and b!83545 d!56539)))

(assert (=> bs!40577 (not (= lambda!10373 lambda!10372))))

(declare-fun bs!40578 () Bool)

(assert (= bs!40578 (and b!83545 b!83536)))

(assert (=> bs!40578 (not (= lambda!10373 lambda!10363))))

(declare-fun bs!40579 () Bool)

(assert (= bs!40579 (and b!83545 b!83529)))

(assert (=> bs!40579 (not (= lambda!10373 lambda!10362))))

(assert (=> b!83545 true))

(declare-fun bs!40580 () Bool)

(declare-fun b!83546 () Bool)

(assert (= bs!40580 (and b!83546 b!83524)))

(declare-fun lambda!10374 () Int)

(assert (=> bs!40580 (= lambda!10374 lambda!10365)))

(declare-fun bs!40581 () Bool)

(assert (= bs!40581 (and b!83546 b!83545)))

(assert (=> bs!40581 (= lambda!10374 lambda!10373)))

(declare-fun bs!40582 () Bool)

(assert (= bs!40582 (and b!83546 b!83535)))

(assert (=> bs!40582 (not (= lambda!10374 lambda!10364))))

(declare-fun bs!40583 () Bool)

(assert (= bs!40583 (and b!83546 d!56539)))

(assert (=> bs!40583 (not (= lambda!10374 lambda!10372))))

(declare-fun bs!40584 () Bool)

(assert (= bs!40584 (and b!83546 b!83536)))

(assert (=> bs!40584 (not (= lambda!10374 lambda!10363))))

(declare-fun bs!40585 () Bool)

(assert (= bs!40585 (and b!83546 b!83529)))

(assert (=> bs!40585 (not (= lambda!10374 lambda!10362))))

(assert (=> b!83546 true))

(declare-fun e!45288 () Bool)

(assert (=> d!56539 e!45288))

(declare-fun c!20918 () Bool)

(assert (=> d!56539 (= c!20918 (is-Cons!633 equal!10))))

(declare-fun forall!31 (List!676 Int) Bool)

(assert (=> d!56539 (forall!31 equal!10 lambda!10372)))

(assert (=> d!56539 (= (forall_eq_implies_le!0 equal!10 (h!1003 ls!96)) true)))

(assert (=> b!83545 (= e!45288 (forall!31 equal!10 lambda!10373))))

(declare-fun lt!19457 () Bool)

(assert (=> b!83545 (= lt!19457 (forall_eq_implies_le!0 (t!47921 equal!10) (h!1003 ls!96)))))

(assert (=> b!83546 (= e!45288 (forall!31 equal!10 lambda!10374))))

(assert (= (and d!56539 c!20918) b!83545))

(assert (= (and d!56539 (not c!20918)) b!83546))

(declare-fun m!79336 () Bool)

(assert (=> d!56539 m!79336))

(declare-fun m!79338 () Bool)

(assert (=> b!83545 m!79338))

(declare-fun m!79340 () Bool)

(assert (=> b!83545 m!79340))

(declare-fun m!79342 () Bool)

(assert (=> b!83546 m!79342))

(assert (=> b!83526 d!56539))

(declare-fun d!56541 () Bool)

(declare-fun e!45296 () Bool)

(assert (=> d!56541 e!45296))

(declare-fun c!20921 () Bool)

(assert (=> d!56541 (= c!20921 (is-Cons!633 (quickSort!0 less!5)))))

(declare-fun e!45297 () Bool)

(assert (=> d!56541 e!45297))

(declare-fun res!43011 () Bool)

(assert (=> d!56541 (=> (not res!43011) (not e!45297))))

(declare-fun isSorted!1 (List!676) Bool)

(assert (=> d!56541 (= res!43011 (isSorted!1 (quickSort!0 less!5)))))

(assert (=> d!56541 (= (append_sorted!0 (quickSort!0 less!5) equal!10) true)))

(declare-fun b!83561 () Bool)

(assert (=> b!83561 (= e!45296 (isSorted!1 (++!84 (quickSort!0 less!5) equal!10)))))

(declare-fun lt!19460 () Bool)

(assert (=> b!83561 (= lt!19460 (append_sorted!0 (t!47921 (quickSort!0 less!5)) equal!10))))

(declare-fun b!83562 () Bool)

(declare-fun res!43010 () Bool)

(declare-fun e!45295 () Bool)

(assert (=> b!83562 (=> res!43010 e!45295)))

(declare-fun isEmpty!686 (List!676) Bool)

(assert (=> b!83562 (= res!43010 (isEmpty!686 equal!10))))

(declare-fun b!83563 () Bool)

(assert (=> b!83563 (= e!45297 e!45295)))

(declare-fun res!43008 () Bool)

(assert (=> b!83563 (=> res!43008 e!45295)))

(assert (=> b!83563 (= res!43008 (isEmpty!686 (quickSort!0 less!5)))))

(declare-fun b!83564 () Bool)

(assert (=> b!83564 (= e!45296 (isSorted!1 (++!84 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83565 () Bool)

(declare-fun res!43009 () Bool)

(assert (=> b!83565 (=> (not res!43009) (not e!45297))))

(assert (=> b!83565 (= res!43009 (isSorted!1 equal!10))))

(declare-fun b!83566 () Bool)

(declare-fun last!26 (List!676) Int)

(declare-fun head!1062 (List!676) Int)

(assert (=> b!83566 (= e!45295 (<= (last!26 (quickSort!0 less!5)) (head!1062 equal!10)))))

(assert (= (and d!56541 res!43011) b!83565))

(assert (= (and b!83565 res!43009) b!83563))

(assert (= (and b!83563 (not res!43008)) b!83562))

(assert (= (and b!83562 (not res!43010)) b!83566))

(assert (= (and d!56541 c!20921) b!83561))

(assert (= (and d!56541 (not c!20921)) b!83564))

(assert (=> b!83561 m!79312))

(assert (=> b!83561 m!79316))

(assert (=> b!83561 m!79316))

(declare-fun m!79344 () Bool)

(assert (=> b!83561 m!79344))

(declare-fun m!79346 () Bool)

(assert (=> b!83561 m!79346))

(assert (=> b!83563 m!79312))

(declare-fun m!79348 () Bool)

(assert (=> b!83563 m!79348))

(assert (=> b!83566 m!79312))

(declare-fun m!79350 () Bool)

(assert (=> b!83566 m!79350))

(declare-fun m!79352 () Bool)

(assert (=> b!83566 m!79352))

(assert (=> d!56541 m!79312))

(declare-fun m!79354 () Bool)

(assert (=> d!56541 m!79354))

(declare-fun m!79356 () Bool)

(assert (=> b!83562 m!79356))

(assert (=> b!83564 m!79312))

(assert (=> b!83564 m!79316))

(assert (=> b!83564 m!79316))

(assert (=> b!83564 m!79344))

(declare-fun m!79358 () Bool)

(assert (=> b!83565 m!79358))

(assert (=> b!83534 d!56541))

(declare-fun bs!40586 () Bool)

(declare-fun b!83578 () Bool)

(assert (= bs!40586 (and b!83578 b!83524)))

(declare-fun lambda!10381 () Int)

(assert (=> bs!40586 (not (= lambda!10381 lambda!10365))))

(declare-fun bs!40587 () Bool)

(assert (= bs!40587 (and b!83578 b!83545)))

(assert (=> bs!40587 (not (= lambda!10381 lambda!10373))))

(declare-fun bs!40588 () Bool)

(assert (= bs!40588 (and b!83578 b!83535)))

(assert (=> bs!40588 (not (= lambda!10381 lambda!10364))))

(declare-fun bs!40589 () Bool)

(assert (= bs!40589 (and b!83578 d!56539)))

(assert (=> bs!40589 (not (= lambda!10381 lambda!10372))))

(declare-fun bs!40590 () Bool)

(assert (= bs!40590 (and b!83578 b!83536)))

(assert (=> bs!40590 (not (= lambda!10381 lambda!10363))))

(declare-fun bs!40591 () Bool)

(assert (= bs!40591 (and b!83578 b!83546)))

(assert (=> bs!40591 (not (= lambda!10381 lambda!10374))))

(declare-fun bs!40592 () Bool)

(assert (= bs!40592 (and b!83578 b!83529)))

(assert (=> bs!40592 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10381 lambda!10362))))

(assert (=> b!83578 true))

(declare-fun lambda!10382 () Int)

(assert (=> bs!40586 (not (= lambda!10382 lambda!10365))))

(assert (=> b!83578 (not (= lambda!10382 lambda!10381))))

(assert (=> bs!40587 (not (= lambda!10382 lambda!10373))))

(assert (=> bs!40588 (not (= lambda!10382 lambda!10364))))

(assert (=> bs!40589 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10382 lambda!10372))))

(assert (=> bs!40590 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10382 lambda!10363))))

(assert (=> bs!40591 (not (= lambda!10382 lambda!10374))))

(assert (=> bs!40592 (not (= lambda!10382 lambda!10362))))

(assert (=> b!83578 true))

(declare-fun lambda!10383 () Int)

(assert (=> bs!40586 (not (= lambda!10383 lambda!10365))))

(assert (=> b!83578 (not (= lambda!10383 lambda!10382))))

(assert (=> b!83578 (not (= lambda!10383 lambda!10381))))

(assert (=> bs!40587 (not (= lambda!10383 lambda!10373))))

(assert (=> bs!40588 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10383 lambda!10364))))

(assert (=> bs!40589 (not (= lambda!10383 lambda!10372))))

(assert (=> bs!40590 (not (= lambda!10383 lambda!10363))))

(assert (=> bs!40591 (not (= lambda!10383 lambda!10374))))

(assert (=> bs!40592 (not (= lambda!10383 lambda!10362))))

(assert (=> b!83578 true))

(declare-fun b!83575 () Bool)

(declare-fun e!45302 () List!676)

(assert (=> b!83575 (= e!45302 Nil!635)))

(declare-fun d!56543 () Bool)

(declare-fun c!20926 () Bool)

(assert (=> d!56543 (= c!20926 (is-Nil!635 less!5))))

(assert (=> d!56543 (= (quickSort!0 less!5) e!45302)))

(declare-fun b!83576 () Bool)

(declare-fun e!45303 () List!676)

(assert (=> b!83576 (= e!45302 e!45303)))

(declare-fun c!20927 () Bool)

(assert (=> b!83576 (= c!20927 (and (is-Cons!633 less!5) (is-Nil!635 (t!47921 less!5))))))

(assert (=> b!83578 (= e!45303 (++!84 (++!84 (quickSort!0 (filter!29 (t!47921 less!5) lambda!10381)) (Cons!633 (h!1003 less!5) (filter!29 (t!47921 less!5) lambda!10382))) (quickSort!0 (filter!29 (t!47921 less!5) lambda!10383))))))

(declare-fun b!83577 () Bool)

(assert (=> b!83577 (= e!45303 less!5)))

(assert (= (and b!83576 c!20927) b!83577))

(assert (= (and b!83576 (not c!20927)) b!83578))

(assert (= (and d!56543 c!20926) b!83575))

(assert (= (and d!56543 (not c!20926)) b!83576))

(declare-fun m!79360 () Bool)

(assert (=> b!83578 m!79360))

(declare-fun m!79362 () Bool)

(assert (=> b!83578 m!79362))

(declare-fun m!79364 () Bool)

(assert (=> b!83578 m!79364))

(declare-fun m!79366 () Bool)

(assert (=> b!83578 m!79366))

(declare-fun m!79368 () Bool)

(assert (=> b!83578 m!79368))

(assert (=> b!83578 m!79364))

(assert (=> b!83578 m!79368))

(declare-fun m!79370 () Bool)

(assert (=> b!83578 m!79370))

(assert (=> b!83578 m!79370))

(declare-fun m!79372 () Bool)

(assert (=> b!83578 m!79372))

(assert (=> b!83578 m!79372))

(assert (=> b!83578 m!79362))

(assert (=> b!83534 d!56543))

(declare-fun bs!40593 () Bool)

(declare-fun b!83583 () Bool)

(assert (= bs!40593 (and b!83583 b!83524)))

(declare-fun lambda!10390 () Int)

(assert (=> bs!40593 (not (= lambda!10390 lambda!10365))))

(declare-fun bs!40594 () Bool)

(assert (= bs!40594 (and b!83583 b!83578)))

(assert (=> bs!40594 (not (= lambda!10390 lambda!10383))))

(assert (=> bs!40594 (not (= lambda!10390 lambda!10382))))

(assert (=> bs!40594 (= lambda!10390 lambda!10381)))

(declare-fun bs!40595 () Bool)

(assert (= bs!40595 (and b!83583 b!83545)))

(assert (=> bs!40595 (not (= lambda!10390 lambda!10373))))

(declare-fun bs!40596 () Bool)

(assert (= bs!40596 (and b!83583 b!83535)))

(assert (=> bs!40596 (not (= lambda!10390 lambda!10364))))

(declare-fun bs!40597 () Bool)

(assert (= bs!40597 (and b!83583 d!56539)))

(assert (=> bs!40597 (not (= lambda!10390 lambda!10372))))

(declare-fun bs!40598 () Bool)

(assert (= bs!40598 (and b!83583 b!83536)))

(assert (=> bs!40598 (not (= lambda!10390 lambda!10363))))

(declare-fun bs!40599 () Bool)

(assert (= bs!40599 (and b!83583 b!83546)))

(assert (=> bs!40599 (not (= lambda!10390 lambda!10374))))

(declare-fun bs!40600 () Bool)

(assert (= bs!40600 (and b!83583 b!83529)))

(assert (=> bs!40600 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10390 lambda!10362))))

(assert (=> b!83583 true))

(declare-fun lambda!10391 () Int)

(assert (=> bs!40593 (not (= lambda!10391 lambda!10365))))

(assert (=> bs!40594 (not (= lambda!10391 lambda!10383))))

(assert (=> bs!40594 (= lambda!10391 lambda!10382)))

(assert (=> bs!40594 (not (= lambda!10391 lambda!10381))))

(assert (=> bs!40595 (not (= lambda!10391 lambda!10373))))

(assert (=> bs!40596 (not (= lambda!10391 lambda!10364))))

(assert (=> b!83583 (not (= lambda!10391 lambda!10390))))

(assert (=> bs!40597 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10391 lambda!10372))))

(assert (=> bs!40598 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10391 lambda!10363))))

(assert (=> bs!40599 (not (= lambda!10391 lambda!10374))))

(assert (=> bs!40600 (not (= lambda!10391 lambda!10362))))

(assert (=> b!83583 true))

(declare-fun lambda!10392 () Int)

(assert (=> bs!40593 (not (= lambda!10392 lambda!10365))))

(assert (=> bs!40594 (= lambda!10392 lambda!10383)))

(assert (=> bs!40594 (not (= lambda!10392 lambda!10382))))

(assert (=> bs!40594 (not (= lambda!10392 lambda!10381))))

(assert (=> bs!40595 (not (= lambda!10392 lambda!10373))))

(assert (=> bs!40596 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10392 lambda!10364))))

(assert (=> b!83583 (not (= lambda!10392 lambda!10391))))

(assert (=> b!83583 (not (= lambda!10392 lambda!10390))))

(assert (=> bs!40597 (not (= lambda!10392 lambda!10372))))

(assert (=> bs!40598 (not (= lambda!10392 lambda!10363))))

(assert (=> bs!40599 (not (= lambda!10392 lambda!10374))))

(assert (=> bs!40600 (not (= lambda!10392 lambda!10362))))

(assert (=> b!83583 true))

(declare-fun d!56545 () Bool)

(assert (=> d!56545 (isSorted!1 (quickSort!0 less!5))))

(declare-fun lt!19470 () Bool)

(declare-fun e!45308 () Bool)

(assert (=> d!56545 (= lt!19470 e!45308)))

(declare-fun res!43018 () Bool)

(assert (=> d!56545 (=> res!43018 e!45308)))

(assert (=> d!56545 (= res!43018 (or (is-Nil!635 less!5) (and (is-Cons!633 less!5) (is-Nil!635 (t!47921 less!5)))))))

(assert (=> d!56545 (= (sorted_lemma!0 less!5) true)))

(declare-fun e!45309 () Bool)

(assert (=> b!83583 (= e!45308 e!45309)))

(declare-fun res!43019 () Bool)

(assert (=> b!83583 (=> (not res!43019) (not e!45309))))

(declare-fun lt!19469 () List!676)

(declare-fun lt!19472 () List!676)

(assert (=> b!83583 (= res!43019 (append_sorted!0 (quickSort!0 lt!19469) lt!19472))))

(declare-fun lt!19471 () List!676)

(assert (=> b!83583 (= lt!19471 (filter!29 (t!47921 less!5) lambda!10392))))

(assert (=> b!83583 (= lt!19472 (Cons!633 (h!1003 less!5) (filter!29 (t!47921 less!5) lambda!10391)))))

(assert (=> b!83583 (= lt!19469 (filter!29 (t!47921 less!5) lambda!10390))))

(declare-fun b!83584 () Bool)

(assert (=> b!83584 (= e!45309 (append_sorted!0 (++!84 (quickSort!0 lt!19469) lt!19472) (quickSort!0 lt!19471)))))

(assert (= (and d!56545 (not res!43018)) b!83583))

(assert (= (and b!83583 res!43019) b!83584))

(assert (=> d!56545 m!79312))

(assert (=> d!56545 m!79312))

(assert (=> d!56545 m!79354))

(declare-fun m!79374 () Bool)

(assert (=> b!83583 m!79374))

(declare-fun m!79376 () Bool)

(assert (=> b!83583 m!79376))

(declare-fun m!79378 () Bool)

(assert (=> b!83583 m!79378))

(declare-fun m!79380 () Bool)

(assert (=> b!83583 m!79380))

(assert (=> b!83583 m!79376))

(declare-fun m!79382 () Bool)

(assert (=> b!83583 m!79382))

(assert (=> b!83584 m!79376))

(assert (=> b!83584 m!79376))

(declare-fun m!79384 () Bool)

(assert (=> b!83584 m!79384))

(declare-fun m!79386 () Bool)

(assert (=> b!83584 m!79386))

(assert (=> b!83584 m!79384))

(assert (=> b!83584 m!79386))

(declare-fun m!79388 () Bool)

(assert (=> b!83584 m!79388))

(assert (=> b!83533 d!56545))

(declare-fun bs!40601 () Bool)

(declare-fun d!56547 () Bool)

(assert (= bs!40601 (and d!56547 b!83524)))

(declare-fun lambda!10399 () Int)

(assert (=> bs!40601 (not (= lambda!10399 lambda!10365))))

(declare-fun bs!40602 () Bool)

(assert (= bs!40602 (and d!56547 b!83578)))

(assert (=> bs!40602 (not (= lambda!10399 lambda!10383))))

(assert (=> bs!40602 (not (= lambda!10399 lambda!10382))))

(assert (=> bs!40602 (= (= (h!1003 ls!96) (h!1003 less!5)) (= lambda!10399 lambda!10381))))

(declare-fun bs!40603 () Bool)

(assert (= bs!40603 (and d!56547 b!83545)))

(assert (=> bs!40603 (not (= lambda!10399 lambda!10373))))

(declare-fun bs!40604 () Bool)

(assert (= bs!40604 (and d!56547 b!83535)))

(assert (=> bs!40604 (not (= lambda!10399 lambda!10364))))

(declare-fun bs!40605 () Bool)

(assert (= bs!40605 (and d!56547 b!83583)))

(assert (=> bs!40605 (not (= lambda!10399 lambda!10392))))

(assert (=> bs!40605 (not (= lambda!10399 lambda!10391))))

(assert (=> bs!40605 (= (= (h!1003 ls!96) (h!1003 less!5)) (= lambda!10399 lambda!10390))))

(declare-fun bs!40606 () Bool)

(assert (= bs!40606 (and d!56547 d!56539)))

(assert (=> bs!40606 (not (= lambda!10399 lambda!10372))))

(declare-fun bs!40607 () Bool)

(assert (= bs!40607 (and d!56547 b!83536)))

(assert (=> bs!40607 (not (= lambda!10399 lambda!10363))))

(declare-fun bs!40608 () Bool)

(assert (= bs!40608 (and d!56547 b!83546)))

(assert (=> bs!40608 (not (= lambda!10399 lambda!10374))))

(declare-fun bs!40609 () Bool)

(assert (= bs!40609 (and d!56547 b!83529)))

(assert (=> bs!40609 (= lambda!10399 lambda!10362)))

(assert (=> d!56547 true))

(declare-fun bs!40610 () Bool)

(declare-fun b!83589 () Bool)

(assert (= bs!40610 (and b!83589 b!83524)))

(declare-fun lambda!10400 () Int)

(assert (=> bs!40610 (= lambda!10400 lambda!10365)))

(declare-fun bs!40611 () Bool)

(assert (= bs!40611 (and b!83589 b!83578)))

(assert (=> bs!40611 (not (= lambda!10400 lambda!10383))))

(assert (=> bs!40611 (not (= lambda!10400 lambda!10382))))

(assert (=> bs!40611 (not (= lambda!10400 lambda!10381))))

(declare-fun bs!40612 () Bool)

(assert (= bs!40612 (and b!83589 b!83545)))

(assert (=> bs!40612 (= lambda!10400 lambda!10373)))

(declare-fun bs!40613 () Bool)

(assert (= bs!40613 (and b!83589 b!83535)))

(assert (=> bs!40613 (not (= lambda!10400 lambda!10364))))

(declare-fun bs!40614 () Bool)

(assert (= bs!40614 (and b!83589 b!83583)))

(assert (=> bs!40614 (not (= lambda!10400 lambda!10392))))

(assert (=> bs!40614 (not (= lambda!10400 lambda!10391))))

(assert (=> bs!40614 (not (= lambda!10400 lambda!10390))))

(declare-fun bs!40615 () Bool)

(assert (= bs!40615 (and b!83589 d!56539)))

(assert (=> bs!40615 (not (= lambda!10400 lambda!10372))))

(declare-fun bs!40616 () Bool)

(assert (= bs!40616 (and b!83589 b!83536)))

(assert (=> bs!40616 (not (= lambda!10400 lambda!10363))))

(declare-fun bs!40617 () Bool)

(assert (= bs!40617 (and b!83589 b!83546)))

(assert (=> bs!40617 (= lambda!10400 lambda!10374)))

(declare-fun bs!40618 () Bool)

(assert (= bs!40618 (and b!83589 b!83529)))

(assert (=> bs!40618 (not (= lambda!10400 lambda!10362))))

(declare-fun bs!40619 () Bool)

(assert (= bs!40619 (and b!83589 d!56547)))

(assert (=> bs!40619 (not (= lambda!10400 lambda!10399))))

(assert (=> b!83589 true))

(declare-fun bs!40620 () Bool)

(declare-fun b!83590 () Bool)

(assert (= bs!40620 (and b!83590 b!83524)))

(declare-fun lambda!10401 () Int)

(assert (=> bs!40620 (= lambda!10401 lambda!10365)))

(declare-fun bs!40621 () Bool)

(assert (= bs!40621 (and b!83590 b!83578)))

(assert (=> bs!40621 (not (= lambda!10401 lambda!10383))))

(assert (=> bs!40621 (not (= lambda!10401 lambda!10382))))

(assert (=> bs!40621 (not (= lambda!10401 lambda!10381))))

(declare-fun bs!40622 () Bool)

(assert (= bs!40622 (and b!83590 b!83545)))

(assert (=> bs!40622 (= lambda!10401 lambda!10373)))

(declare-fun bs!40623 () Bool)

(assert (= bs!40623 (and b!83590 b!83589)))

(assert (=> bs!40623 (= lambda!10401 lambda!10400)))

(declare-fun bs!40624 () Bool)

(assert (= bs!40624 (and b!83590 b!83535)))

(assert (=> bs!40624 (not (= lambda!10401 lambda!10364))))

(declare-fun bs!40625 () Bool)

(assert (= bs!40625 (and b!83590 b!83583)))

(assert (=> bs!40625 (not (= lambda!10401 lambda!10392))))

(assert (=> bs!40625 (not (= lambda!10401 lambda!10391))))

(assert (=> bs!40625 (not (= lambda!10401 lambda!10390))))

(declare-fun bs!40626 () Bool)

(assert (= bs!40626 (and b!83590 d!56539)))

(assert (=> bs!40626 (not (= lambda!10401 lambda!10372))))

(declare-fun bs!40627 () Bool)

(assert (= bs!40627 (and b!83590 b!83536)))

(assert (=> bs!40627 (not (= lambda!10401 lambda!10363))))

(declare-fun bs!40628 () Bool)

(assert (= bs!40628 (and b!83590 b!83546)))

(assert (=> bs!40628 (= lambda!10401 lambda!10374)))

(declare-fun bs!40629 () Bool)

(assert (= bs!40629 (and b!83590 b!83529)))

(assert (=> bs!40629 (not (= lambda!10401 lambda!10362))))

(declare-fun bs!40630 () Bool)

(assert (= bs!40630 (and b!83590 d!56547)))

(assert (=> bs!40630 (not (= lambda!10401 lambda!10399))))

(assert (=> b!83590 true))

(declare-fun e!45312 () Bool)

(assert (=> d!56547 e!45312))

(declare-fun c!20930 () Bool)

(assert (=> d!56547 (= c!20930 (is-Cons!633 less!5))))

(assert (=> d!56547 (forall!31 less!5 lambda!10399)))

(assert (=> d!56547 (= (forall_lt_implies_le!0 less!5 (h!1003 ls!96)) true)))

(assert (=> b!83589 (= e!45312 (forall!31 less!5 lambda!10400))))

(declare-fun lt!19475 () Bool)

(assert (=> b!83589 (= lt!19475 (forall_lt_implies_le!0 (t!47921 less!5) (h!1003 ls!96)))))

(assert (=> b!83590 (= e!45312 (forall!31 less!5 lambda!10401))))

(assert (= (and d!56547 c!20930) b!83589))

(assert (= (and d!56547 (not c!20930)) b!83590))

(declare-fun m!79390 () Bool)

(assert (=> d!56547 m!79390))

(declare-fun m!79392 () Bool)

(assert (=> b!83589 m!79392))

(declare-fun m!79394 () Bool)

(assert (=> b!83589 m!79394))

(declare-fun m!79396 () Bool)

(assert (=> b!83590 m!79396))

(assert (=> b!83527 d!56547))

(declare-fun bs!40631 () Bool)

(declare-fun b!83602 () Bool)

(assert (= bs!40631 (and b!83602 b!83524)))

(declare-fun lambda!10414 () Int)

(assert (=> bs!40631 (not (= lambda!10414 lambda!10365))))

(declare-fun bs!40632 () Bool)

(assert (= bs!40632 (and b!83602 b!83578)))

(assert (=> bs!40632 (not (= lambda!10414 lambda!10383))))

(assert (=> bs!40632 (not (= lambda!10414 lambda!10382))))

(assert (=> bs!40632 (= lambda!10414 lambda!10381)))

(declare-fun bs!40633 () Bool)

(assert (= bs!40633 (and b!83602 b!83545)))

(assert (=> bs!40633 (not (= lambda!10414 lambda!10373))))

(declare-fun bs!40634 () Bool)

(assert (= bs!40634 (and b!83602 b!83589)))

(assert (=> bs!40634 (not (= lambda!10414 lambda!10400))))

(declare-fun bs!40635 () Bool)

(assert (= bs!40635 (and b!83602 b!83535)))

(assert (=> bs!40635 (not (= lambda!10414 lambda!10364))))

(declare-fun bs!40636 () Bool)

(assert (= bs!40636 (and b!83602 b!83590)))

(assert (=> bs!40636 (not (= lambda!10414 lambda!10401))))

(declare-fun bs!40637 () Bool)

(assert (= bs!40637 (and b!83602 b!83583)))

(assert (=> bs!40637 (not (= lambda!10414 lambda!10392))))

(assert (=> bs!40637 (not (= lambda!10414 lambda!10391))))

(assert (=> bs!40637 (= lambda!10414 lambda!10390)))

(declare-fun bs!40638 () Bool)

(assert (= bs!40638 (and b!83602 d!56539)))

(assert (=> bs!40638 (not (= lambda!10414 lambda!10372))))

(declare-fun bs!40639 () Bool)

(assert (= bs!40639 (and b!83602 b!83536)))

(assert (=> bs!40639 (not (= lambda!10414 lambda!10363))))

(declare-fun bs!40640 () Bool)

(assert (= bs!40640 (and b!83602 b!83546)))

(assert (=> bs!40640 (not (= lambda!10414 lambda!10374))))

(declare-fun bs!40641 () Bool)

(assert (= bs!40641 (and b!83602 b!83529)))

(assert (=> bs!40641 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10414 lambda!10362))))

(declare-fun bs!40642 () Bool)

(assert (= bs!40642 (and b!83602 d!56547)))

(assert (=> bs!40642 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10414 lambda!10399))))

(assert (=> b!83602 true))

(declare-fun lambda!10415 () Int)

(assert (=> b!83602 (not (= lambda!10415 lambda!10414))))

(assert (=> bs!40631 (not (= lambda!10415 lambda!10365))))

(assert (=> bs!40632 (not (= lambda!10415 lambda!10383))))

(assert (=> bs!40632 (= lambda!10415 lambda!10382)))

(assert (=> bs!40632 (not (= lambda!10415 lambda!10381))))

(assert (=> bs!40633 (not (= lambda!10415 lambda!10373))))

(assert (=> bs!40634 (not (= lambda!10415 lambda!10400))))

(assert (=> bs!40635 (not (= lambda!10415 lambda!10364))))

(assert (=> bs!40636 (not (= lambda!10415 lambda!10401))))

(assert (=> bs!40637 (not (= lambda!10415 lambda!10392))))

(assert (=> bs!40637 (= lambda!10415 lambda!10391)))

(assert (=> bs!40637 (not (= lambda!10415 lambda!10390))))

(assert (=> bs!40638 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10415 lambda!10372))))

(assert (=> bs!40639 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10415 lambda!10363))))

(assert (=> bs!40640 (not (= lambda!10415 lambda!10374))))

(assert (=> bs!40641 (not (= lambda!10415 lambda!10362))))

(assert (=> bs!40642 (not (= lambda!10415 lambda!10399))))

(assert (=> b!83602 true))

(declare-fun lambda!10416 () Int)

(assert (=> b!83602 (not (= lambda!10416 lambda!10415))))

(assert (=> b!83602 (not (= lambda!10416 lambda!10414))))

(assert (=> bs!40631 (not (= lambda!10416 lambda!10365))))

(assert (=> bs!40632 (= lambda!10416 lambda!10383)))

(assert (=> bs!40632 (not (= lambda!10416 lambda!10382))))

(assert (=> bs!40632 (not (= lambda!10416 lambda!10381))))

(assert (=> bs!40633 (not (= lambda!10416 lambda!10373))))

(assert (=> bs!40634 (not (= lambda!10416 lambda!10400))))

(assert (=> bs!40635 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10416 lambda!10364))))

(assert (=> bs!40636 (not (= lambda!10416 lambda!10401))))

(assert (=> bs!40637 (= lambda!10416 lambda!10392)))

(assert (=> bs!40637 (not (= lambda!10416 lambda!10391))))

(assert (=> bs!40637 (not (= lambda!10416 lambda!10390))))

(assert (=> bs!40638 (not (= lambda!10416 lambda!10372))))

(assert (=> bs!40639 (not (= lambda!10416 lambda!10363))))

(assert (=> bs!40640 (not (= lambda!10416 lambda!10374))))

(assert (=> bs!40641 (not (= lambda!10416 lambda!10362))))

(assert (=> bs!40642 (not (= lambda!10416 lambda!10399))))

(assert (=> b!83602 true))

(declare-fun b!83601 () Bool)

(declare-fun e!45327 () Bool)

(declare-fun lt!19492 () List!676)

(assert (=> b!83601 (= e!45327 (sort_preserves_forall!0 lt!19492 lambda!10362))))

(declare-fun e!45324 () Bool)

(declare-fun e!45323 () Bool)

(assert (=> b!83602 (= e!45324 e!45323)))

(declare-fun res!43038 () Bool)

(assert (=> b!83602 (=> (not res!43038) (not e!45323))))

(declare-fun lt!19488 () List!676)

(declare-fun lt!19491 () List!676)

(assert (=> b!83602 (= res!43038 (append_preserves_forall!0 (quickSort!0 lt!19488) lt!19491 lambda!10362))))

(declare-fun lt!19493 () Bool)

(assert (=> b!83602 (= lt!19493 e!45327)))

(declare-fun res!43036 () Bool)

(assert (=> b!83602 (=> (not res!43036) (not e!45327))))

(assert (=> b!83602 (= res!43036 (sort_preserves_forall!0 lt!19488 lambda!10362))))

(declare-fun lt!19489 () Bool)

(declare-fun e!45326 () Bool)

(assert (=> b!83602 (= lt!19489 e!45326)))

(declare-fun res!43035 () Bool)

(assert (=> b!83602 (=> (not res!43035) (not e!45326))))

(declare-fun e!45325 () Bool)

(assert (=> b!83602 (= res!43035 e!45325)))

(declare-fun res!43039 () Bool)

(assert (=> b!83602 (=> (not res!43039) (not e!45325))))

(declare-fun filter_preserves_forall!0 (List!676 Int Int) Bool)

(assert (=> b!83602 (= res!43039 (filter_preserves_forall!0 (t!47921 less!5) lambda!10414 lambda!10362))))

(assert (=> b!83602 (= lt!19492 (filter!29 (t!47921 less!5) lambda!10416))))

(assert (=> b!83602 (= lt!19491 (Cons!633 (h!1003 less!5) (filter!29 (t!47921 less!5) lambda!10415)))))

(assert (=> b!83602 (= lt!19488 (filter!29 (t!47921 less!5) lambda!10414))))

(declare-fun b!83603 () Bool)

(assert (=> b!83603 (= e!45325 (filter_preserves_forall!0 (t!47921 less!5) lambda!10415 lambda!10362))))

(declare-fun b!83604 () Bool)

(assert (=> b!83604 (= e!45323 (append_preserves_forall!0 (++!84 (quickSort!0 lt!19488) lt!19491) (quickSort!0 lt!19492) lambda!10362))))

(declare-fun d!56549 () Bool)

(assert (=> d!56549 (forall!31 (quickSort!0 less!5) lambda!10362)))

(declare-fun lt!19490 () Bool)

(assert (=> d!56549 (= lt!19490 e!45324)))

(declare-fun res!43037 () Bool)

(assert (=> d!56549 (=> res!43037 e!45324)))

(assert (=> d!56549 (= res!43037 (or (is-Nil!635 less!5) (and (is-Cons!633 less!5) (is-Nil!635 (t!47921 less!5)))))))

(assert (=> d!56549 (forall!31 less!5 lambda!10362)))

(assert (=> d!56549 (= (sort_preserves_forall!0 less!5 lambda!10362) true)))

(declare-fun b!83605 () Bool)

(assert (=> b!83605 (= e!45326 (filter_preserves_forall!0 (t!47921 less!5) lambda!10416 lambda!10362))))

(assert (= (and d!56549 (not res!43037)) b!83602))

(assert (= (and b!83602 res!43039) b!83603))

(assert (= (and b!83602 res!43035) b!83605))

(assert (= (and b!83602 res!43036) b!83601))

(assert (= (and b!83602 res!43038) b!83604))

(declare-fun m!79398 () Bool)

(assert (=> b!83601 m!79398))

(declare-fun m!79400 () Bool)

(assert (=> b!83604 m!79400))

(assert (=> b!83604 m!79400))

(declare-fun m!79402 () Bool)

(assert (=> b!83604 m!79402))

(declare-fun m!79404 () Bool)

(assert (=> b!83604 m!79404))

(assert (=> b!83604 m!79402))

(assert (=> b!83604 m!79404))

(declare-fun m!79406 () Bool)

(assert (=> b!83604 m!79406))

(declare-fun m!79408 () Bool)

(assert (=> b!83605 m!79408))

(assert (=> d!56549 m!79312))

(assert (=> d!56549 m!79312))

(declare-fun m!79410 () Bool)

(assert (=> d!56549 m!79410))

(declare-fun m!79412 () Bool)

(assert (=> d!56549 m!79412))

(declare-fun m!79414 () Bool)

(assert (=> b!83602 m!79414))

(declare-fun m!79416 () Bool)

(assert (=> b!83602 m!79416))

(assert (=> b!83602 m!79400))

(declare-fun m!79418 () Bool)

(assert (=> b!83602 m!79418))

(declare-fun m!79420 () Bool)

(assert (=> b!83602 m!79420))

(declare-fun m!79422 () Bool)

(assert (=> b!83602 m!79422))

(assert (=> b!83602 m!79400))

(declare-fun m!79424 () Bool)

(assert (=> b!83602 m!79424))

(declare-fun m!79426 () Bool)

(assert (=> b!83603 m!79426))

(assert (=> b!83537 d!56549))

(declare-fun bs!40643 () Bool)

(declare-fun d!56551 () Bool)

(assert (= bs!40643 (and d!56551 b!83602)))

(declare-fun lambda!10419 () Int)

(assert (=> bs!40643 (not (= lambda!10419 lambda!10416))))

(assert (=> bs!40643 (= (= (h!1003 ls!96) (h!1003 less!5)) (= lambda!10419 lambda!10415))))

(assert (=> bs!40643 (not (= lambda!10419 lambda!10414))))

(declare-fun bs!40644 () Bool)

(assert (= bs!40644 (and d!56551 b!83524)))

(assert (=> bs!40644 (not (= lambda!10419 lambda!10365))))

(declare-fun bs!40645 () Bool)

(assert (= bs!40645 (and d!56551 b!83578)))

(assert (=> bs!40645 (not (= lambda!10419 lambda!10383))))

(assert (=> bs!40645 (= (= (h!1003 ls!96) (h!1003 less!5)) (= lambda!10419 lambda!10382))))

(assert (=> bs!40645 (not (= lambda!10419 lambda!10381))))

(declare-fun bs!40646 () Bool)

(assert (= bs!40646 (and d!56551 b!83545)))

(assert (=> bs!40646 (not (= lambda!10419 lambda!10373))))

(declare-fun bs!40647 () Bool)

(assert (= bs!40647 (and d!56551 b!83589)))

(assert (=> bs!40647 (not (= lambda!10419 lambda!10400))))

(declare-fun bs!40648 () Bool)

(assert (= bs!40648 (and d!56551 b!83535)))

(assert (=> bs!40648 (not (= lambda!10419 lambda!10364))))

(declare-fun bs!40649 () Bool)

(assert (= bs!40649 (and d!56551 b!83590)))

(assert (=> bs!40649 (not (= lambda!10419 lambda!10401))))

(declare-fun bs!40650 () Bool)

(assert (= bs!40650 (and d!56551 b!83583)))

(assert (=> bs!40650 (not (= lambda!10419 lambda!10392))))

(assert (=> bs!40650 (= (= (h!1003 ls!96) (h!1003 less!5)) (= lambda!10419 lambda!10391))))

(assert (=> bs!40650 (not (= lambda!10419 lambda!10390))))

(declare-fun bs!40651 () Bool)

(assert (= bs!40651 (and d!56551 d!56539)))

(assert (=> bs!40651 (= lambda!10419 lambda!10372)))

(declare-fun bs!40652 () Bool)

(assert (= bs!40652 (and d!56551 b!83536)))

(assert (=> bs!40652 (= lambda!10419 lambda!10363)))

(declare-fun bs!40653 () Bool)

(assert (= bs!40653 (and d!56551 b!83546)))

(assert (=> bs!40653 (not (= lambda!10419 lambda!10374))))

(declare-fun bs!40654 () Bool)

(assert (= bs!40654 (and d!56551 b!83529)))

(assert (=> bs!40654 (not (= lambda!10419 lambda!10362))))

(declare-fun bs!40655 () Bool)

(assert (= bs!40655 (and d!56551 d!56547)))

(assert (=> bs!40655 (not (= lambda!10419 lambda!10399))))

(assert (=> d!56551 true))

(assert (=> d!56551 (isSorted!1 (Cons!633 (h!1003 ls!96) (filter!29 (t!47921 ls!96) lambda!10419)))))

(declare-datatypes () ((Unit!1202 (Unit!1203))))

(declare-fun lt!19496 () Unit!1202)

(declare-fun Unit!1204 () Unit!1202)

(assert (=> d!56551 (= lt!19496 Unit!1204)))

(declare-fun filter_equal_sorted!0 (List!676 Int) Bool)

(assert (=> d!56551 (filter_equal_sorted!0 (t!47921 ls!96) (h!1003 ls!96))))

(assert (=> d!56551 (= (cons_filter_equal_sorted!0 (t!47921 ls!96) (h!1003 ls!96)) true)))

(declare-fun bs!40656 () Bool)

(assert (= bs!40656 d!56551))

(declare-fun m!79428 () Bool)

(assert (=> bs!40656 m!79428))

(declare-fun m!79430 () Bool)

(assert (=> bs!40656 m!79430))

(declare-fun m!79432 () Bool)

(assert (=> bs!40656 m!79432))

(assert (=> b!83531 d!56551))

(declare-fun d!56553 () Bool)

(declare-fun e!45336 () Bool)

(assert (=> d!56553 e!45336))

(declare-fun res!43052 () Bool)

(assert (=> d!56553 (=> (not res!43052) (not e!45336))))

(declare-fun lt!19501 () List!676)

(declare-fun size!664 (List!676) Int)

(assert (=> d!56553 (= res!43052 (<= (size!664 lt!19501) (size!664 (t!47921 ls!96))))))

(declare-fun e!45339 () List!676)

(assert (=> d!56553 (= lt!19501 e!45339)))

(declare-fun c!20935 () Bool)

(assert (=> d!56553 (= c!20935 (is-Nil!635 (t!47921 ls!96)))))

(assert (=> d!56553 (= (filter!29 (t!47921 ls!96) lambda!10363) lt!19501)))

(declare-fun b!83620 () Bool)

(assert (=> b!83620 (= e!45339 Nil!635)))

(declare-fun b!83621 () Bool)

(declare-fun e!45338 () List!676)

(declare-fun lt!19502 () List!676)

(assert (=> b!83621 (= e!45338 lt!19502)))

(declare-fun b!83622 () Bool)

(assert (=> b!83622 (= e!45339 e!45338)))

(declare-fun c!20936 () Bool)

(declare-fun e!45337 () Bool)

(assert (=> b!83622 (= c!20936 e!45337)))

(declare-fun res!43050 () Bool)

(assert (=> b!83622 (=> (not res!43050) (not e!45337))))

(assert (=> b!83622 (= res!43050 (is-Cons!633 (t!47921 ls!96)))))

(assert (=> b!83622 (= lt!19502 (filter!29 (t!47921 (t!47921 ls!96)) lambda!10363))))

(declare-fun b!83623 () Bool)

(assert (=> b!83623 (= e!45336 (forall!31 lt!19501 lambda!10363))))

(declare-fun b!83624 () Bool)

(declare-fun res!43051 () Bool)

(assert (=> b!83624 (=> (not res!43051) (not e!45336))))

(declare-fun content!135 (List!676) (Set Int))

(assert (=> b!83624 (= res!43051 (subset (content!135 lt!19501) (content!135 (t!47921 ls!96))))))

(declare-fun b!83625 () Bool)

(assert (=> b!83625 (= e!45338 (Cons!633 (h!1003 (t!47921 ls!96)) lt!19502))))

(declare-fun b!83626 () Bool)

(declare-fun dynLambda!995 (Int Int) Bool)

(assert (=> b!83626 (= e!45337 (dynLambda!995 lambda!10363 (h!1003 (t!47921 ls!96))))))

(assert (= (and b!83622 res!43050) b!83626))

(assert (= (and b!83622 c!20936) b!83625))

(assert (= (and b!83622 (not c!20936)) b!83621))

(assert (= (and d!56553 c!20935) b!83620))

(assert (= (and d!56553 (not c!20935)) b!83622))

(assert (= (and d!56553 res!43052) b!83624))

(assert (= (and b!83624 res!43051) b!83623))

(declare-fun b_lambda!16487 () Bool)

(assert (=> (not b_lambda!16487) (not b!83626)))

(declare-fun m!79434 () Bool)

(assert (=> b!83626 m!79434))

(declare-fun m!79436 () Bool)

(assert (=> b!83622 m!79436))

(declare-fun m!79438 () Bool)

(assert (=> d!56553 m!79438))

(declare-fun m!79440 () Bool)

(assert (=> d!56553 m!79440))

(declare-fun m!79442 () Bool)

(assert (=> b!83623 m!79442))

(declare-fun m!79444 () Bool)

(assert (=> b!83624 m!79444))

(declare-fun m!79446 () Bool)

(assert (=> b!83624 m!79446))

(assert (=> b!83536 d!56553))

(declare-fun d!56555 () Bool)

(declare-fun e!45345 () Bool)

(assert (=> d!56555 e!45345))

(declare-fun c!20939 () Bool)

(assert (=> d!56555 (= c!20939 (is-Cons!633 (quickSort!0 less!5)))))

(declare-fun e!45344 () Bool)

(assert (=> d!56555 e!45344))

(declare-fun res!43055 () Bool)

(assert (=> d!56555 (=> (not res!43055) (not e!45344))))

(assert (=> d!56555 (= res!43055 (forall!31 (quickSort!0 less!5) lambda!10365))))

(assert (=> d!56555 (= (append_preserves_forall!0 (quickSort!0 less!5) equal!10 lambda!10365) true)))

(declare-fun b!83633 () Bool)

(assert (=> b!83633 (= e!45344 (forall!31 equal!10 lambda!10365))))

(declare-fun b!83634 () Bool)

(assert (=> b!83634 (= e!45345 (forall!31 (++!84 (quickSort!0 less!5) equal!10) lambda!10365))))

(declare-fun lt!19505 () Bool)

(assert (=> b!83634 (= lt!19505 (append_preserves_forall!0 (t!47921 (quickSort!0 less!5)) equal!10 lambda!10365))))

(declare-fun b!83635 () Bool)

(assert (=> b!83635 (= e!45345 (forall!31 (++!84 (quickSort!0 less!5) equal!10) lambda!10365))))

(assert (= (and d!56555 res!43055) b!83633))

(assert (= (and d!56555 c!20939) b!83634))

(assert (= (and d!56555 (not c!20939)) b!83635))

(assert (=> d!56555 m!79312))

(declare-fun m!79448 () Bool)

(assert (=> d!56555 m!79448))

(declare-fun m!79450 () Bool)

(assert (=> b!83633 m!79450))

(assert (=> b!83634 m!79312))

(assert (=> b!83634 m!79316))

(assert (=> b!83634 m!79316))

(declare-fun m!79452 () Bool)

(assert (=> b!83634 m!79452))

(declare-fun m!79454 () Bool)

(assert (=> b!83634 m!79454))

(assert (=> b!83635 m!79312))

(assert (=> b!83635 m!79316))

(assert (=> b!83635 m!79316))

(assert (=> b!83635 m!79452))

(assert (=> b!83530 d!56555))

(assert (=> b!83530 d!56543))

(declare-fun bs!40657 () Bool)

(declare-fun b!83637 () Bool)

(assert (= bs!40657 (and b!83637 b!83602)))

(declare-fun lambda!10420 () Int)

(assert (=> bs!40657 (not (= lambda!10420 lambda!10416))))

(assert (=> bs!40657 (not (= lambda!10420 lambda!10415))))

(assert (=> bs!40657 (= lambda!10420 lambda!10414)))

(declare-fun bs!40658 () Bool)

(assert (= bs!40658 (and b!83637 b!83524)))

(assert (=> bs!40658 (not (= lambda!10420 lambda!10365))))

(declare-fun bs!40659 () Bool)

(assert (= bs!40659 (and b!83637 b!83578)))

(assert (=> bs!40659 (not (= lambda!10420 lambda!10383))))

(assert (=> bs!40659 (not (= lambda!10420 lambda!10382))))

(assert (=> bs!40659 (= lambda!10420 lambda!10381)))

(declare-fun bs!40660 () Bool)

(assert (= bs!40660 (and b!83637 b!83545)))

(assert (=> bs!40660 (not (= lambda!10420 lambda!10373))))

(declare-fun bs!40661 () Bool)

(assert (= bs!40661 (and b!83637 b!83589)))

(assert (=> bs!40661 (not (= lambda!10420 lambda!10400))))

(declare-fun bs!40662 () Bool)

(assert (= bs!40662 (and b!83637 d!56551)))

(assert (=> bs!40662 (not (= lambda!10420 lambda!10419))))

(declare-fun bs!40663 () Bool)

(assert (= bs!40663 (and b!83637 b!83535)))

(assert (=> bs!40663 (not (= lambda!10420 lambda!10364))))

(declare-fun bs!40664 () Bool)

(assert (= bs!40664 (and b!83637 b!83590)))

(assert (=> bs!40664 (not (= lambda!10420 lambda!10401))))

(declare-fun bs!40665 () Bool)

(assert (= bs!40665 (and b!83637 b!83583)))

(assert (=> bs!40665 (not (= lambda!10420 lambda!10392))))

(assert (=> bs!40665 (not (= lambda!10420 lambda!10391))))

(assert (=> bs!40665 (= lambda!10420 lambda!10390)))

(declare-fun bs!40666 () Bool)

(assert (= bs!40666 (and b!83637 d!56539)))

(assert (=> bs!40666 (not (= lambda!10420 lambda!10372))))

(declare-fun bs!40667 () Bool)

(assert (= bs!40667 (and b!83637 b!83536)))

(assert (=> bs!40667 (not (= lambda!10420 lambda!10363))))

(declare-fun bs!40668 () Bool)

(assert (= bs!40668 (and b!83637 b!83546)))

(assert (=> bs!40668 (not (= lambda!10420 lambda!10374))))

(declare-fun bs!40669 () Bool)

(assert (= bs!40669 (and b!83637 b!83529)))

(assert (=> bs!40669 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10420 lambda!10362))))

(declare-fun bs!40670 () Bool)

(assert (= bs!40670 (and b!83637 d!56547)))

(assert (=> bs!40670 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10420 lambda!10399))))

(assert (=> b!83637 true))

(declare-fun lambda!10421 () Int)

(assert (=> bs!40657 (not (= lambda!10421 lambda!10416))))

(assert (=> bs!40657 (= lambda!10421 lambda!10415)))

(assert (=> bs!40657 (not (= lambda!10421 lambda!10414))))

(assert (=> bs!40658 (not (= lambda!10421 lambda!10365))))

(assert (=> bs!40659 (not (= lambda!10421 lambda!10383))))

(assert (=> bs!40659 (= lambda!10421 lambda!10382)))

(assert (=> bs!40659 (not (= lambda!10421 lambda!10381))))

(assert (=> bs!40660 (not (= lambda!10421 lambda!10373))))

(assert (=> bs!40661 (not (= lambda!10421 lambda!10400))))

(assert (=> bs!40662 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10421 lambda!10419))))

(assert (=> bs!40663 (not (= lambda!10421 lambda!10364))))

(assert (=> bs!40664 (not (= lambda!10421 lambda!10401))))

(assert (=> bs!40665 (not (= lambda!10421 lambda!10392))))

(assert (=> bs!40665 (= lambda!10421 lambda!10391)))

(assert (=> bs!40665 (not (= lambda!10421 lambda!10390))))

(assert (=> bs!40666 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10421 lambda!10372))))

(assert (=> bs!40667 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10421 lambda!10363))))

(assert (=> bs!40668 (not (= lambda!10421 lambda!10374))))

(assert (=> bs!40669 (not (= lambda!10421 lambda!10362))))

(assert (=> bs!40670 (not (= lambda!10421 lambda!10399))))

(assert (=> b!83637 (not (= lambda!10421 lambda!10420))))

(assert (=> b!83637 true))

(declare-fun lambda!10422 () Int)

(assert (=> bs!40657 (= lambda!10422 lambda!10416)))

(assert (=> bs!40657 (not (= lambda!10422 lambda!10415))))

(assert (=> bs!40657 (not (= lambda!10422 lambda!10414))))

(assert (=> bs!40658 (not (= lambda!10422 lambda!10365))))

(assert (=> bs!40659 (= lambda!10422 lambda!10383)))

(assert (=> bs!40659 (not (= lambda!10422 lambda!10382))))

(assert (=> bs!40659 (not (= lambda!10422 lambda!10381))))

(assert (=> bs!40660 (not (= lambda!10422 lambda!10373))))

(assert (=> bs!40661 (not (= lambda!10422 lambda!10400))))

(assert (=> bs!40662 (not (= lambda!10422 lambda!10419))))

(assert (=> bs!40663 (= (= (h!1003 less!5) (h!1003 ls!96)) (= lambda!10422 lambda!10364))))

(assert (=> bs!40664 (not (= lambda!10422 lambda!10401))))

(assert (=> bs!40665 (= lambda!10422 lambda!10392)))

(assert (=> bs!40665 (not (= lambda!10422 lambda!10391))))

(assert (=> bs!40665 (not (= lambda!10422 lambda!10390))))

(assert (=> bs!40666 (not (= lambda!10422 lambda!10372))))

(assert (=> bs!40667 (not (= lambda!10422 lambda!10363))))

(assert (=> bs!40668 (not (= lambda!10422 lambda!10374))))

(assert (=> bs!40669 (not (= lambda!10422 lambda!10362))))

(assert (=> bs!40670 (not (= lambda!10422 lambda!10399))))

(assert (=> b!83637 (not (= lambda!10422 lambda!10421))))

(assert (=> b!83637 (not (= lambda!10422 lambda!10420))))

(assert (=> b!83637 true))

(declare-fun b!83636 () Bool)

(declare-fun e!45350 () Bool)

(declare-fun lt!19510 () List!676)

(assert (=> b!83636 (= e!45350 (sort_preserves_forall!0 lt!19510 lambda!10365))))

(declare-fun e!45347 () Bool)

(declare-fun e!45346 () Bool)

(assert (=> b!83637 (= e!45347 e!45346)))

(declare-fun res!43059 () Bool)

(assert (=> b!83637 (=> (not res!43059) (not e!45346))))

(declare-fun lt!19506 () List!676)

(declare-fun lt!19509 () List!676)

(assert (=> b!83637 (= res!43059 (append_preserves_forall!0 (quickSort!0 lt!19506) lt!19509 lambda!10365))))

(declare-fun lt!19511 () Bool)

(assert (=> b!83637 (= lt!19511 e!45350)))

(declare-fun res!43057 () Bool)

(assert (=> b!83637 (=> (not res!43057) (not e!45350))))

(assert (=> b!83637 (= res!43057 (sort_preserves_forall!0 lt!19506 lambda!10365))))

(declare-fun lt!19507 () Bool)

(declare-fun e!45349 () Bool)

(assert (=> b!83637 (= lt!19507 e!45349)))

(declare-fun res!43056 () Bool)

(assert (=> b!83637 (=> (not res!43056) (not e!45349))))

(declare-fun e!45348 () Bool)

(assert (=> b!83637 (= res!43056 e!45348)))

(declare-fun res!43060 () Bool)

(assert (=> b!83637 (=> (not res!43060) (not e!45348))))

(assert (=> b!83637 (= res!43060 (filter_preserves_forall!0 (t!47921 less!5) lambda!10420 lambda!10365))))

(assert (=> b!83637 (= lt!19510 (filter!29 (t!47921 less!5) lambda!10422))))

(assert (=> b!83637 (= lt!19509 (Cons!633 (h!1003 less!5) (filter!29 (t!47921 less!5) lambda!10421)))))

(assert (=> b!83637 (= lt!19506 (filter!29 (t!47921 less!5) lambda!10420))))

(declare-fun b!83638 () Bool)

(assert (=> b!83638 (= e!45348 (filter_preserves_forall!0 (t!47921 less!5) lambda!10421 lambda!10365))))

(declare-fun b!83639 () Bool)

(assert (=> b!83639 (= e!45346 (append_preserves_forall!0 (++!84 (quickSort!0 lt!19506) lt!19509) (quickSort!0 lt!19510) lambda!10365))))

(declare-fun d!56557 () Bool)

(assert (=> d!56557 (forall!31 (quickSort!0 less!5) lambda!10365)))

(declare-fun lt!19508 () Bool)

(assert (=> d!56557 (= lt!19508 e!45347)))

(declare-fun res!43058 () Bool)

(assert (=> d!56557 (=> res!43058 e!45347)))

(assert (=> d!56557 (= res!43058 (or (is-Nil!635 less!5) (and (is-Cons!633 less!5) (is-Nil!635 (t!47921 less!5)))))))

(assert (=> d!56557 (forall!31 less!5 lambda!10365)))

(assert (=> d!56557 (= (sort_preserves_forall!0 less!5 lambda!10365) true)))

(declare-fun b!83640 () Bool)

(assert (=> b!83640 (= e!45349 (filter_preserves_forall!0 (t!47921 less!5) lambda!10422 lambda!10365))))

(assert (= (and d!56557 (not res!43058)) b!83637))

(assert (= (and b!83637 res!43060) b!83638))

(assert (= (and b!83637 res!43056) b!83640))

(assert (= (and b!83637 res!43057) b!83636))

(assert (= (and b!83637 res!43059) b!83639))

(declare-fun m!79456 () Bool)

(assert (=> b!83636 m!79456))

(declare-fun m!79458 () Bool)

(assert (=> b!83639 m!79458))

(assert (=> b!83639 m!79458))

(declare-fun m!79460 () Bool)

(assert (=> b!83639 m!79460))

(declare-fun m!79462 () Bool)

(assert (=> b!83639 m!79462))

(assert (=> b!83639 m!79460))

(assert (=> b!83639 m!79462))

(declare-fun m!79464 () Bool)

(assert (=> b!83639 m!79464))

(declare-fun m!79466 () Bool)

(assert (=> b!83640 m!79466))

(assert (=> d!56557 m!79312))

(assert (=> d!56557 m!79312))

(assert (=> d!56557 m!79448))

(declare-fun m!79468 () Bool)

(assert (=> d!56557 m!79468))

(declare-fun m!79470 () Bool)

(assert (=> b!83637 m!79470))

(declare-fun m!79472 () Bool)

(assert (=> b!83637 m!79472))

(assert (=> b!83637 m!79458))

(declare-fun m!79474 () Bool)

(assert (=> b!83637 m!79474))

(declare-fun m!79476 () Bool)

(assert (=> b!83637 m!79476))

(declare-fun m!79478 () Bool)

(assert (=> b!83637 m!79478))

(assert (=> b!83637 m!79458))

(declare-fun m!79480 () Bool)

(assert (=> b!83637 m!79480))

(declare-fun m!79482 () Bool)

(assert (=> b!83638 m!79482))

(assert (=> b!83524 d!56557))

(declare-fun bs!40671 () Bool)

(declare-fun b!83642 () Bool)

(assert (= bs!40671 (and b!83642 b!83602)))

(declare-fun lambda!10423 () Int)

(assert (=> bs!40671 (not (= lambda!10423 lambda!10416))))

(assert (=> bs!40671 (not (= lambda!10423 lambda!10415))))

(assert (=> bs!40671 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10423 lambda!10414))))

(declare-fun bs!40672 () Bool)

(assert (= bs!40672 (and b!83642 b!83524)))

(assert (=> bs!40672 (not (= lambda!10423 lambda!10365))))

(declare-fun bs!40673 () Bool)

(assert (= bs!40673 (and b!83642 b!83578)))

(assert (=> bs!40673 (not (= lambda!10423 lambda!10383))))

(assert (=> bs!40673 (not (= lambda!10423 lambda!10382))))

(assert (=> bs!40673 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10423 lambda!10381))))

(declare-fun bs!40674 () Bool)

(assert (= bs!40674 (and b!83642 b!83545)))

(assert (=> bs!40674 (not (= lambda!10423 lambda!10373))))

(declare-fun bs!40675 () Bool)

(assert (= bs!40675 (and b!83642 b!83589)))

(assert (=> bs!40675 (not (= lambda!10423 lambda!10400))))

(declare-fun bs!40676 () Bool)

(assert (= bs!40676 (and b!83642 d!56551)))

(assert (=> bs!40676 (not (= lambda!10423 lambda!10419))))

(declare-fun bs!40677 () Bool)

(assert (= bs!40677 (and b!83642 b!83535)))

(assert (=> bs!40677 (not (= lambda!10423 lambda!10364))))

(declare-fun bs!40678 () Bool)

(assert (= bs!40678 (and b!83642 b!83590)))

(assert (=> bs!40678 (not (= lambda!10423 lambda!10401))))

(declare-fun bs!40679 () Bool)

(assert (= bs!40679 (and b!83642 b!83583)))

(assert (=> bs!40679 (not (= lambda!10423 lambda!10392))))

(assert (=> bs!40679 (not (= lambda!10423 lambda!10391))))

(assert (=> bs!40679 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10423 lambda!10390))))

(declare-fun bs!40680 () Bool)

(assert (= bs!40680 (and b!83642 d!56539)))

(assert (=> bs!40680 (not (= lambda!10423 lambda!10372))))

(declare-fun bs!40681 () Bool)

(assert (= bs!40681 (and b!83642 b!83536)))

(assert (=> bs!40681 (not (= lambda!10423 lambda!10363))))

(declare-fun bs!40682 () Bool)

(assert (= bs!40682 (and b!83642 b!83546)))

(assert (=> bs!40682 (not (= lambda!10423 lambda!10374))))

(declare-fun bs!40683 () Bool)

(assert (= bs!40683 (and b!83642 b!83529)))

(assert (=> bs!40683 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10423 lambda!10362))))

(declare-fun bs!40684 () Bool)

(assert (= bs!40684 (and b!83642 d!56547)))

(assert (=> bs!40684 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10423 lambda!10399))))

(declare-fun bs!40685 () Bool)

(assert (= bs!40685 (and b!83642 b!83637)))

(assert (=> bs!40685 (not (= lambda!10423 lambda!10422))))

(assert (=> bs!40685 (not (= lambda!10423 lambda!10421))))

(assert (=> bs!40685 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10423 lambda!10420))))

(assert (=> b!83642 true))

(declare-fun lambda!10424 () Int)

(assert (=> bs!40671 (not (= lambda!10424 lambda!10416))))

(assert (=> bs!40671 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10424 lambda!10415))))

(assert (=> bs!40671 (not (= lambda!10424 lambda!10414))))

(assert (=> bs!40672 (not (= lambda!10424 lambda!10365))))

(assert (=> bs!40673 (not (= lambda!10424 lambda!10383))))

(assert (=> bs!40673 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10424 lambda!10382))))

(assert (=> bs!40673 (not (= lambda!10424 lambda!10381))))

(assert (=> bs!40674 (not (= lambda!10424 lambda!10373))))

(assert (=> bs!40675 (not (= lambda!10424 lambda!10400))))

(assert (=> b!83642 (not (= lambda!10424 lambda!10423))))

(assert (=> bs!40676 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10424 lambda!10419))))

(assert (=> bs!40677 (not (= lambda!10424 lambda!10364))))

(assert (=> bs!40678 (not (= lambda!10424 lambda!10401))))

(assert (=> bs!40679 (not (= lambda!10424 lambda!10392))))

(assert (=> bs!40679 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10424 lambda!10391))))

(assert (=> bs!40679 (not (= lambda!10424 lambda!10390))))

(assert (=> bs!40680 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10424 lambda!10372))))

(assert (=> bs!40681 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10424 lambda!10363))))

(assert (=> bs!40682 (not (= lambda!10424 lambda!10374))))

(assert (=> bs!40683 (not (= lambda!10424 lambda!10362))))

(assert (=> bs!40684 (not (= lambda!10424 lambda!10399))))

(assert (=> bs!40685 (not (= lambda!10424 lambda!10422))))

(assert (=> bs!40685 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10424 lambda!10421))))

(assert (=> bs!40685 (not (= lambda!10424 lambda!10420))))

(assert (=> b!83642 true))

(declare-fun lambda!10425 () Int)

(assert (=> bs!40671 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10425 lambda!10416))))

(assert (=> bs!40671 (not (= lambda!10425 lambda!10415))))

(assert (=> bs!40671 (not (= lambda!10425 lambda!10414))))

(assert (=> bs!40672 (not (= lambda!10425 lambda!10365))))

(assert (=> bs!40673 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10425 lambda!10383))))

(assert (=> bs!40673 (not (= lambda!10425 lambda!10382))))

(assert (=> bs!40673 (not (= lambda!10425 lambda!10381))))

(assert (=> bs!40674 (not (= lambda!10425 lambda!10373))))

(assert (=> bs!40675 (not (= lambda!10425 lambda!10400))))

(assert (=> b!83642 (not (= lambda!10425 lambda!10424))))

(assert (=> b!83642 (not (= lambda!10425 lambda!10423))))

(assert (=> bs!40676 (not (= lambda!10425 lambda!10419))))

(assert (=> bs!40677 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10425 lambda!10364))))

(assert (=> bs!40678 (not (= lambda!10425 lambda!10401))))

(assert (=> bs!40679 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10425 lambda!10392))))

(assert (=> bs!40679 (not (= lambda!10425 lambda!10391))))

(assert (=> bs!40679 (not (= lambda!10425 lambda!10390))))

(assert (=> bs!40680 (not (= lambda!10425 lambda!10372))))

(assert (=> bs!40681 (not (= lambda!10425 lambda!10363))))

(assert (=> bs!40682 (not (= lambda!10425 lambda!10374))))

(assert (=> bs!40683 (not (= lambda!10425 lambda!10362))))

(assert (=> bs!40684 (not (= lambda!10425 lambda!10399))))

(assert (=> bs!40685 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10425 lambda!10422))))

(assert (=> bs!40685 (not (= lambda!10425 lambda!10421))))

(assert (=> bs!40685 (not (= lambda!10425 lambda!10420))))

(assert (=> b!83642 true))

(declare-fun b!83641 () Bool)

(declare-fun e!45355 () Bool)

(declare-fun lt!19516 () List!676)

(assert (=> b!83641 (= e!45355 (sort_preserves_forall!0 lt!19516 lambda!10364))))

(declare-fun e!45352 () Bool)

(declare-fun e!45351 () Bool)

(assert (=> b!83642 (= e!45352 e!45351)))

(declare-fun res!43064 () Bool)

(assert (=> b!83642 (=> (not res!43064) (not e!45351))))

(declare-fun lt!19515 () List!676)

(declare-fun lt!19512 () List!676)

(assert (=> b!83642 (= res!43064 (append_preserves_forall!0 (quickSort!0 lt!19512) lt!19515 lambda!10364))))

(declare-fun lt!19517 () Bool)

(assert (=> b!83642 (= lt!19517 e!45355)))

(declare-fun res!43062 () Bool)

(assert (=> b!83642 (=> (not res!43062) (not e!45355))))

(assert (=> b!83642 (= res!43062 (sort_preserves_forall!0 lt!19512 lambda!10364))))

(declare-fun lt!19513 () Bool)

(declare-fun e!45354 () Bool)

(assert (=> b!83642 (= lt!19513 e!45354)))

(declare-fun res!43061 () Bool)

(assert (=> b!83642 (=> (not res!43061) (not e!45354))))

(declare-fun e!45353 () Bool)

(assert (=> b!83642 (= res!43061 e!45353)))

(declare-fun res!43065 () Bool)

(assert (=> b!83642 (=> (not res!43065) (not e!45353))))

(assert (=> b!83642 (= res!43065 (filter_preserves_forall!0 (t!47921 more!5) lambda!10423 lambda!10364))))

(assert (=> b!83642 (= lt!19516 (filter!29 (t!47921 more!5) lambda!10425))))

(assert (=> b!83642 (= lt!19515 (Cons!633 (h!1003 more!5) (filter!29 (t!47921 more!5) lambda!10424)))))

(assert (=> b!83642 (= lt!19512 (filter!29 (t!47921 more!5) lambda!10423))))

(declare-fun b!83643 () Bool)

(assert (=> b!83643 (= e!45353 (filter_preserves_forall!0 (t!47921 more!5) lambda!10424 lambda!10364))))

(declare-fun b!83644 () Bool)

(assert (=> b!83644 (= e!45351 (append_preserves_forall!0 (++!84 (quickSort!0 lt!19512) lt!19515) (quickSort!0 lt!19516) lambda!10364))))

(declare-fun d!56559 () Bool)

(assert (=> d!56559 (forall!31 (quickSort!0 more!5) lambda!10364)))

(declare-fun lt!19514 () Bool)

(assert (=> d!56559 (= lt!19514 e!45352)))

(declare-fun res!43063 () Bool)

(assert (=> d!56559 (=> res!43063 e!45352)))

(assert (=> d!56559 (= res!43063 (or (is-Nil!635 more!5) (and (is-Cons!633 more!5) (is-Nil!635 (t!47921 more!5)))))))

(assert (=> d!56559 (forall!31 more!5 lambda!10364)))

(assert (=> d!56559 (= (sort_preserves_forall!0 more!5 lambda!10364) true)))

(declare-fun b!83645 () Bool)

(assert (=> b!83645 (= e!45354 (filter_preserves_forall!0 (t!47921 more!5) lambda!10425 lambda!10364))))

(assert (= (and d!56559 (not res!43063)) b!83642))

(assert (= (and b!83642 res!43065) b!83643))

(assert (= (and b!83642 res!43061) b!83645))

(assert (= (and b!83642 res!43062) b!83641))

(assert (= (and b!83642 res!43064) b!83644))

(declare-fun m!79484 () Bool)

(assert (=> b!83641 m!79484))

(declare-fun m!79486 () Bool)

(assert (=> b!83644 m!79486))

(assert (=> b!83644 m!79486))

(declare-fun m!79488 () Bool)

(assert (=> b!83644 m!79488))

(declare-fun m!79490 () Bool)

(assert (=> b!83644 m!79490))

(assert (=> b!83644 m!79488))

(assert (=> b!83644 m!79490))

(declare-fun m!79492 () Bool)

(assert (=> b!83644 m!79492))

(declare-fun m!79494 () Bool)

(assert (=> b!83645 m!79494))

(declare-fun m!79496 () Bool)

(assert (=> d!56559 m!79496))

(assert (=> d!56559 m!79496))

(declare-fun m!79498 () Bool)

(assert (=> d!56559 m!79498))

(declare-fun m!79500 () Bool)

(assert (=> d!56559 m!79500))

(declare-fun m!79502 () Bool)

(assert (=> b!83642 m!79502))

(declare-fun m!79504 () Bool)

(assert (=> b!83642 m!79504))

(assert (=> b!83642 m!79486))

(declare-fun m!79506 () Bool)

(assert (=> b!83642 m!79506))

(declare-fun m!79508 () Bool)

(assert (=> b!83642 m!79508))

(declare-fun m!79510 () Bool)

(assert (=> b!83642 m!79510))

(assert (=> b!83642 m!79486))

(declare-fun m!79512 () Bool)

(assert (=> b!83642 m!79512))

(declare-fun m!79514 () Bool)

(assert (=> b!83643 m!79514))

(assert (=> b!83528 d!56559))

(declare-fun d!56561 () Bool)

(declare-fun e!45356 () Bool)

(assert (=> d!56561 e!45356))

(declare-fun res!43068 () Bool)

(assert (=> d!56561 (=> (not res!43068) (not e!45356))))

(declare-fun lt!19518 () List!676)

(assert (=> d!56561 (= res!43068 (<= (size!664 lt!19518) (size!664 (t!47921 ls!96))))))

(declare-fun e!45359 () List!676)

(assert (=> d!56561 (= lt!19518 e!45359)))

(declare-fun c!20940 () Bool)

(assert (=> d!56561 (= c!20940 (is-Nil!635 (t!47921 ls!96)))))

(assert (=> d!56561 (= (filter!29 (t!47921 ls!96) lambda!10362) lt!19518)))

(declare-fun b!83646 () Bool)

(assert (=> b!83646 (= e!45359 Nil!635)))

(declare-fun b!83647 () Bool)

(declare-fun e!45358 () List!676)

(declare-fun lt!19519 () List!676)

(assert (=> b!83647 (= e!45358 lt!19519)))

(declare-fun b!83648 () Bool)

(assert (=> b!83648 (= e!45359 e!45358)))

(declare-fun c!20941 () Bool)

(declare-fun e!45357 () Bool)

(assert (=> b!83648 (= c!20941 e!45357)))

(declare-fun res!43066 () Bool)

(assert (=> b!83648 (=> (not res!43066) (not e!45357))))

(assert (=> b!83648 (= res!43066 (is-Cons!633 (t!47921 ls!96)))))

(assert (=> b!83648 (= lt!19519 (filter!29 (t!47921 (t!47921 ls!96)) lambda!10362))))

(declare-fun b!83649 () Bool)

(assert (=> b!83649 (= e!45356 (forall!31 lt!19518 lambda!10362))))

(declare-fun b!83650 () Bool)

(declare-fun res!43067 () Bool)

(assert (=> b!83650 (=> (not res!43067) (not e!45356))))

(assert (=> b!83650 (= res!43067 (subset (content!135 lt!19518) (content!135 (t!47921 ls!96))))))

(declare-fun b!83651 () Bool)

(assert (=> b!83651 (= e!45358 (Cons!633 (h!1003 (t!47921 ls!96)) lt!19519))))

(declare-fun b!83652 () Bool)

(assert (=> b!83652 (= e!45357 (dynLambda!995 lambda!10362 (h!1003 (t!47921 ls!96))))))

(assert (= (and b!83648 res!43066) b!83652))

(assert (= (and b!83648 c!20941) b!83651))

(assert (= (and b!83648 (not c!20941)) b!83647))

(assert (= (and d!56561 c!20940) b!83646))

(assert (= (and d!56561 (not c!20940)) b!83648))

(assert (= (and d!56561 res!43068) b!83650))

(assert (= (and b!83650 res!43067) b!83649))

(declare-fun b_lambda!16489 () Bool)

(assert (=> (not b_lambda!16489) (not b!83652)))

(declare-fun m!79516 () Bool)

(assert (=> b!83652 m!79516))

(declare-fun m!79518 () Bool)

(assert (=> b!83648 m!79518))

(declare-fun m!79520 () Bool)

(assert (=> d!56561 m!79520))

(assert (=> d!56561 m!79440))

(declare-fun m!79522 () Bool)

(assert (=> b!83649 m!79522))

(declare-fun m!79524 () Bool)

(assert (=> b!83650 m!79524))

(assert (=> b!83650 m!79446))

(assert (=> b!83529 d!56561))

(declare-fun bs!40686 () Bool)

(declare-fun b!83653 () Bool)

(assert (= bs!40686 (and b!83653 b!83602)))

(declare-fun lambda!10426 () Int)

(assert (=> bs!40686 (not (= lambda!10426 lambda!10416))))

(assert (=> bs!40686 (not (= lambda!10426 lambda!10415))))

(assert (=> bs!40686 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10426 lambda!10414))))

(declare-fun bs!40687 () Bool)

(assert (= bs!40687 (and b!83653 b!83524)))

(assert (=> bs!40687 (not (= lambda!10426 lambda!10365))))

(declare-fun bs!40688 () Bool)

(assert (= bs!40688 (and b!83653 b!83578)))

(assert (=> bs!40688 (not (= lambda!10426 lambda!10383))))

(assert (=> bs!40688 (not (= lambda!10426 lambda!10382))))

(assert (=> bs!40688 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10426 lambda!10381))))

(declare-fun bs!40689 () Bool)

(assert (= bs!40689 (and b!83653 b!83545)))

(assert (=> bs!40689 (not (= lambda!10426 lambda!10373))))

(declare-fun bs!40690 () Bool)

(assert (= bs!40690 (and b!83653 b!83589)))

(assert (=> bs!40690 (not (= lambda!10426 lambda!10400))))

(declare-fun bs!40691 () Bool)

(assert (= bs!40691 (and b!83653 b!83642)))

(assert (=> bs!40691 (not (= lambda!10426 lambda!10425))))

(assert (=> bs!40691 (not (= lambda!10426 lambda!10424))))

(assert (=> bs!40691 (= lambda!10426 lambda!10423)))

(declare-fun bs!40692 () Bool)

(assert (= bs!40692 (and b!83653 d!56551)))

(assert (=> bs!40692 (not (= lambda!10426 lambda!10419))))

(declare-fun bs!40693 () Bool)

(assert (= bs!40693 (and b!83653 b!83535)))

(assert (=> bs!40693 (not (= lambda!10426 lambda!10364))))

(declare-fun bs!40694 () Bool)

(assert (= bs!40694 (and b!83653 b!83590)))

(assert (=> bs!40694 (not (= lambda!10426 lambda!10401))))

(declare-fun bs!40695 () Bool)

(assert (= bs!40695 (and b!83653 b!83583)))

(assert (=> bs!40695 (not (= lambda!10426 lambda!10392))))

(assert (=> bs!40695 (not (= lambda!10426 lambda!10391))))

(assert (=> bs!40695 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10426 lambda!10390))))

(declare-fun bs!40696 () Bool)

(assert (= bs!40696 (and b!83653 d!56539)))

(assert (=> bs!40696 (not (= lambda!10426 lambda!10372))))

(declare-fun bs!40697 () Bool)

(assert (= bs!40697 (and b!83653 b!83536)))

(assert (=> bs!40697 (not (= lambda!10426 lambda!10363))))

(declare-fun bs!40698 () Bool)

(assert (= bs!40698 (and b!83653 b!83546)))

(assert (=> bs!40698 (not (= lambda!10426 lambda!10374))))

(declare-fun bs!40699 () Bool)

(assert (= bs!40699 (and b!83653 b!83529)))

(assert (=> bs!40699 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10426 lambda!10362))))

(declare-fun bs!40700 () Bool)

(assert (= bs!40700 (and b!83653 d!56547)))

(assert (=> bs!40700 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10426 lambda!10399))))

(declare-fun bs!40701 () Bool)

(assert (= bs!40701 (and b!83653 b!83637)))

(assert (=> bs!40701 (not (= lambda!10426 lambda!10422))))

(assert (=> bs!40701 (not (= lambda!10426 lambda!10421))))

(assert (=> bs!40701 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10426 lambda!10420))))

(assert (=> b!83653 true))

(declare-fun lambda!10427 () Int)

(assert (=> bs!40686 (not (= lambda!10427 lambda!10416))))

(assert (=> bs!40686 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10427 lambda!10415))))

(assert (=> bs!40686 (not (= lambda!10427 lambda!10414))))

(assert (=> bs!40687 (not (= lambda!10427 lambda!10365))))

(assert (=> bs!40688 (not (= lambda!10427 lambda!10383))))

(assert (=> bs!40688 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10427 lambda!10382))))

(assert (=> bs!40688 (not (= lambda!10427 lambda!10381))))

(assert (=> bs!40689 (not (= lambda!10427 lambda!10373))))

(assert (=> bs!40690 (not (= lambda!10427 lambda!10400))))

(assert (=> bs!40691 (not (= lambda!10427 lambda!10425))))

(assert (=> bs!40691 (= lambda!10427 lambda!10424)))

(assert (=> bs!40691 (not (= lambda!10427 lambda!10423))))

(assert (=> bs!40692 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10427 lambda!10419))))

(assert (=> bs!40693 (not (= lambda!10427 lambda!10364))))

(assert (=> bs!40694 (not (= lambda!10427 lambda!10401))))

(assert (=> b!83653 (not (= lambda!10427 lambda!10426))))

(assert (=> bs!40695 (not (= lambda!10427 lambda!10392))))

(assert (=> bs!40695 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10427 lambda!10391))))

(assert (=> bs!40695 (not (= lambda!10427 lambda!10390))))

(assert (=> bs!40696 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10427 lambda!10372))))

(assert (=> bs!40697 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10427 lambda!10363))))

(assert (=> bs!40698 (not (= lambda!10427 lambda!10374))))

(assert (=> bs!40699 (not (= lambda!10427 lambda!10362))))

(assert (=> bs!40700 (not (= lambda!10427 lambda!10399))))

(assert (=> bs!40701 (not (= lambda!10427 lambda!10422))))

(assert (=> bs!40701 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10427 lambda!10421))))

(assert (=> bs!40701 (not (= lambda!10427 lambda!10420))))

(assert (=> b!83653 true))

(declare-fun lambda!10428 () Int)

(assert (=> bs!40686 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10428 lambda!10416))))

(assert (=> bs!40686 (not (= lambda!10428 lambda!10415))))

(assert (=> bs!40686 (not (= lambda!10428 lambda!10414))))

(assert (=> bs!40687 (not (= lambda!10428 lambda!10365))))

(assert (=> bs!40688 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10428 lambda!10383))))

(assert (=> bs!40688 (not (= lambda!10428 lambda!10382))))

(assert (=> bs!40688 (not (= lambda!10428 lambda!10381))))

(assert (=> bs!40689 (not (= lambda!10428 lambda!10373))))

(assert (=> bs!40690 (not (= lambda!10428 lambda!10400))))

(assert (=> bs!40691 (= lambda!10428 lambda!10425)))

(assert (=> bs!40691 (not (= lambda!10428 lambda!10424))))

(assert (=> bs!40691 (not (= lambda!10428 lambda!10423))))

(assert (=> bs!40692 (not (= lambda!10428 lambda!10419))))

(assert (=> bs!40693 (= (= (h!1003 more!5) (h!1003 ls!96)) (= lambda!10428 lambda!10364))))

(assert (=> bs!40694 (not (= lambda!10428 lambda!10401))))

(assert (=> b!83653 (not (= lambda!10428 lambda!10427))))

(assert (=> b!83653 (not (= lambda!10428 lambda!10426))))

(assert (=> bs!40695 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10428 lambda!10392))))

(assert (=> bs!40695 (not (= lambda!10428 lambda!10391))))

(assert (=> bs!40695 (not (= lambda!10428 lambda!10390))))

(assert (=> bs!40696 (not (= lambda!10428 lambda!10372))))

(assert (=> bs!40697 (not (= lambda!10428 lambda!10363))))

(assert (=> bs!40698 (not (= lambda!10428 lambda!10374))))

(assert (=> bs!40699 (not (= lambda!10428 lambda!10362))))

(assert (=> bs!40700 (not (= lambda!10428 lambda!10399))))

(assert (=> bs!40701 (= (= (h!1003 more!5) (h!1003 less!5)) (= lambda!10428 lambda!10422))))

(assert (=> bs!40701 (not (= lambda!10428 lambda!10421))))

(assert (=> bs!40701 (not (= lambda!10428 lambda!10420))))

(assert (=> b!83653 true))

(declare-fun d!56563 () Bool)

(assert (=> d!56563 (isSorted!1 (quickSort!0 more!5))))

(declare-fun lt!19521 () Bool)

(declare-fun e!45360 () Bool)

(assert (=> d!56563 (= lt!19521 e!45360)))

(declare-fun res!43069 () Bool)

(assert (=> d!56563 (=> res!43069 e!45360)))

(assert (=> d!56563 (= res!43069 (or (is-Nil!635 more!5) (and (is-Cons!633 more!5) (is-Nil!635 (t!47921 more!5)))))))

(assert (=> d!56563 (= (sorted_lemma!0 more!5) true)))

(declare-fun e!45361 () Bool)

(assert (=> b!83653 (= e!45360 e!45361)))

(declare-fun res!43070 () Bool)

(assert (=> b!83653 (=> (not res!43070) (not e!45361))))

(declare-fun lt!19520 () List!676)

(declare-fun lt!19523 () List!676)

(assert (=> b!83653 (= res!43070 (append_sorted!0 (quickSort!0 lt!19520) lt!19523))))

(declare-fun lt!19522 () List!676)

(assert (=> b!83653 (= lt!19522 (filter!29 (t!47921 more!5) lambda!10428))))

(assert (=> b!83653 (= lt!19523 (Cons!633 (h!1003 more!5) (filter!29 (t!47921 more!5) lambda!10427)))))

(assert (=> b!83653 (= lt!19520 (filter!29 (t!47921 more!5) lambda!10426))))

(declare-fun b!83654 () Bool)

(assert (=> b!83654 (= e!45361 (append_sorted!0 (++!84 (quickSort!0 lt!19520) lt!19523) (quickSort!0 lt!19522)))))

(assert (= (and d!56563 (not res!43069)) b!83653))

(assert (= (and b!83653 res!43070) b!83654))

(assert (=> d!56563 m!79496))

(assert (=> d!56563 m!79496))

(declare-fun m!79526 () Bool)

(assert (=> d!56563 m!79526))

(declare-fun m!79528 () Bool)

(assert (=> b!83653 m!79528))

(declare-fun m!79530 () Bool)

(assert (=> b!83653 m!79530))

(declare-fun m!79532 () Bool)

(assert (=> b!83653 m!79532))

(declare-fun m!79534 () Bool)

(assert (=> b!83653 m!79534))

(assert (=> b!83653 m!79530))

(declare-fun m!79536 () Bool)

(assert (=> b!83653 m!79536))

(assert (=> b!83654 m!79530))

(assert (=> b!83654 m!79530))

(declare-fun m!79538 () Bool)

(assert (=> b!83654 m!79538))

(declare-fun m!79540 () Bool)

(assert (=> b!83654 m!79540))

(assert (=> b!83654 m!79538))

(assert (=> b!83654 m!79540))

(declare-fun m!79542 () Bool)

(assert (=> b!83654 m!79542))

(assert (=> b!83532 d!56563))

(declare-fun b!83667 () Bool)

(declare-fun res!43079 () Bool)

(declare-fun e!45369 () Bool)

(assert (=> b!83667 (=> res!43079 e!45369)))

(assert (=> b!83667 (= res!43079 (isEmpty!686 (++!84 (quickSort!0 less!5) equal!10)))))

(declare-fun b!83668 () Bool)

(declare-fun res!43081 () Bool)

(declare-fun e!45368 () Bool)

(assert (=> b!83668 (=> res!43081 e!45368)))

(assert (=> b!83668 (= res!43081 (isEmpty!686 (++!84 (quickSort!0 less!5) equal!10)))))

(declare-fun d!56565 () Bool)

(declare-fun e!45370 () Bool)

(assert (=> d!56565 e!45370))

(declare-fun c!20944 () Bool)

(assert (=> d!56565 (= c!20944 (is-Cons!633 (++!84 (quickSort!0 less!5) equal!10)))))

(assert (=> d!56565 (= (forall_last!0 (++!84 (quickSort!0 less!5) equal!10) lambda!10365) true)))

(declare-fun b!83669 () Bool)

(assert (=> b!83669 (= e!45370 e!45368)))

(declare-fun res!43082 () Bool)

(assert (=> b!83669 (=> res!43082 e!45368)))

(assert (=> b!83669 (= res!43082 (not (forall!31 (++!84 (quickSort!0 less!5) equal!10) lambda!10365)))))

(declare-fun lt!19526 () Bool)

(assert (=> b!83669 (= lt!19526 (forall_last!0 (t!47921 (++!84 (quickSort!0 less!5) equal!10)) lambda!10365))))

(declare-fun b!83670 () Bool)

(assert (=> b!83670 (= e!45368 (dynLambda!995 lambda!10365 (last!26 (++!84 (quickSort!0 less!5) equal!10))))))

(declare-fun b!83671 () Bool)

(assert (=> b!83671 (= e!45369 (dynLambda!995 lambda!10365 (last!26 (++!84 (quickSort!0 less!5) equal!10))))))

(declare-fun b!83672 () Bool)

(assert (=> b!83672 (= e!45370 e!45369)))

(declare-fun res!43080 () Bool)

(assert (=> b!83672 (=> res!43080 e!45369)))

(assert (=> b!83672 (= res!43080 (not (forall!31 (++!84 (quickSort!0 less!5) equal!10) lambda!10365)))))

(assert (= (and b!83669 (not res!43082)) b!83668))

(assert (= (and b!83668 (not res!43081)) b!83670))

(assert (= (and b!83672 (not res!43080)) b!83667))

(assert (= (and b!83667 (not res!43079)) b!83671))

(assert (= (and d!56565 c!20944) b!83669))

(assert (= (and d!56565 (not c!20944)) b!83672))

(declare-fun b_lambda!16491 () Bool)

(assert (=> (not b_lambda!16491) (not b!83670)))

(declare-fun b_lambda!16493 () Bool)

(assert (=> (not b_lambda!16493) (not b!83671)))

(assert (=> b!83667 m!79316))

(declare-fun m!79544 () Bool)

(assert (=> b!83667 m!79544))

(assert (=> b!83672 m!79316))

(assert (=> b!83672 m!79452))

(assert (=> b!83671 m!79316))

(declare-fun m!79546 () Bool)

(assert (=> b!83671 m!79546))

(assert (=> b!83671 m!79546))

(declare-fun m!79548 () Bool)

(assert (=> b!83671 m!79548))

(assert (=> b!83669 m!79316))

(assert (=> b!83669 m!79452))

(declare-fun m!79550 () Bool)

(assert (=> b!83669 m!79550))

(assert (=> b!83670 m!79316))

(assert (=> b!83670 m!79546))

(assert (=> b!83670 m!79546))

(assert (=> b!83670 m!79548))

(assert (=> b!83668 m!79316))

(assert (=> b!83668 m!79544))

(assert (=> b!83538 d!56565))

(declare-fun e!45375 () Bool)

(declare-fun lt!19529 () List!676)

(declare-fun b!83684 () Bool)

(assert (=> b!83684 (= e!45375 (or (not (= equal!10 Nil!635)) (= lt!19529 (quickSort!0 less!5))))))

(declare-fun b!83681 () Bool)

(declare-fun e!45376 () List!676)

(assert (=> b!83681 (= e!45376 equal!10)))

(declare-fun b!83682 () Bool)

(assert (=> b!83682 (= e!45376 (Cons!633 (h!1003 (quickSort!0 less!5)) (++!84 (t!47921 (quickSort!0 less!5)) equal!10)))))

(declare-fun d!56567 () Bool)

(assert (=> d!56567 e!45375))

(declare-fun res!43088 () Bool)

(assert (=> d!56567 (=> (not res!43088) (not e!45375))))

(assert (=> d!56567 (= res!43088 (= (content!135 lt!19529) (union (content!135 (quickSort!0 less!5)) (content!135 equal!10))))))

(assert (=> d!56567 (= lt!19529 e!45376)))

(declare-fun c!20947 () Bool)

(assert (=> d!56567 (= c!20947 (is-Nil!635 (quickSort!0 less!5)))))

(assert (=> d!56567 (= (++!84 (quickSort!0 less!5) equal!10) lt!19529)))

(declare-fun b!83683 () Bool)

(declare-fun res!43089 () Bool)

(assert (=> b!83683 (=> (not res!43089) (not e!45375))))

(assert (=> b!83683 (= res!43089 (= (size!664 lt!19529) (+ (size!664 (quickSort!0 less!5)) (size!664 equal!10))))))

(assert (= (and d!56567 c!20947) b!83681))

(assert (= (and d!56567 (not c!20947)) b!83682))

(assert (= (and d!56567 res!43088) b!83683))

(assert (= (and b!83683 res!43089) b!83684))

(declare-fun m!79552 () Bool)

(assert (=> b!83682 m!79552))

(declare-fun m!79554 () Bool)

(assert (=> d!56567 m!79554))

(assert (=> d!56567 m!79312))

(declare-fun m!79556 () Bool)

(assert (=> d!56567 m!79556))

(declare-fun m!79558 () Bool)

(assert (=> d!56567 m!79558))

(declare-fun m!79560 () Bool)

(assert (=> b!83683 m!79560))

(assert (=> b!83683 m!79312))

(declare-fun m!79562 () Bool)

(assert (=> b!83683 m!79562))

(declare-fun m!79564 () Bool)

(assert (=> b!83683 m!79564))

(assert (=> b!83538 d!56567))

(assert (=> b!83538 d!56543))

(declare-fun d!56569 () Bool)

(declare-fun e!45377 () Bool)

(assert (=> d!56569 e!45377))

(declare-fun res!43092 () Bool)

(assert (=> d!56569 (=> (not res!43092) (not e!45377))))

(declare-fun lt!19530 () List!676)

(assert (=> d!56569 (= res!43092 (<= (size!664 lt!19530) (size!664 (t!47921 ls!96))))))

(declare-fun e!45380 () List!676)

(assert (=> d!56569 (= lt!19530 e!45380)))

(declare-fun c!20948 () Bool)

(assert (=> d!56569 (= c!20948 (is-Nil!635 (t!47921 ls!96)))))

(assert (=> d!56569 (= (filter!29 (t!47921 ls!96) lambda!10364) lt!19530)))

(declare-fun b!83685 () Bool)

(assert (=> b!83685 (= e!45380 Nil!635)))

(declare-fun b!83686 () Bool)

(declare-fun e!45379 () List!676)

(declare-fun lt!19531 () List!676)

(assert (=> b!83686 (= e!45379 lt!19531)))

(declare-fun b!83687 () Bool)

(assert (=> b!83687 (= e!45380 e!45379)))

(declare-fun c!20949 () Bool)

(declare-fun e!45378 () Bool)

(assert (=> b!83687 (= c!20949 e!45378)))

(declare-fun res!43090 () Bool)

(assert (=> b!83687 (=> (not res!43090) (not e!45378))))

(assert (=> b!83687 (= res!43090 (is-Cons!633 (t!47921 ls!96)))))

(assert (=> b!83687 (= lt!19531 (filter!29 (t!47921 (t!47921 ls!96)) lambda!10364))))

(declare-fun b!83688 () Bool)

(assert (=> b!83688 (= e!45377 (forall!31 lt!19530 lambda!10364))))

(declare-fun b!83689 () Bool)

(declare-fun res!43091 () Bool)

(assert (=> b!83689 (=> (not res!43091) (not e!45377))))

(assert (=> b!83689 (= res!43091 (subset (content!135 lt!19530) (content!135 (t!47921 ls!96))))))

(declare-fun b!83690 () Bool)

(assert (=> b!83690 (= e!45379 (Cons!633 (h!1003 (t!47921 ls!96)) lt!19531))))

(declare-fun b!83691 () Bool)

(assert (=> b!83691 (= e!45378 (dynLambda!995 lambda!10364 (h!1003 (t!47921 ls!96))))))

(assert (= (and b!83687 res!43090) b!83691))

(assert (= (and b!83687 c!20949) b!83690))

(assert (= (and b!83687 (not c!20949)) b!83686))

(assert (= (and d!56569 c!20948) b!83685))

(assert (= (and d!56569 (not c!20948)) b!83687))

(assert (= (and d!56569 res!43092) b!83689))

(assert (= (and b!83689 res!43091) b!83688))

(declare-fun b_lambda!16495 () Bool)

(assert (=> (not b_lambda!16495) (not b!83691)))

(declare-fun m!79566 () Bool)

(assert (=> b!83691 m!79566))

(declare-fun m!79568 () Bool)

(assert (=> b!83687 m!79568))

(declare-fun m!79570 () Bool)

(assert (=> d!56569 m!79570))

(assert (=> d!56569 m!79440))

(declare-fun m!79572 () Bool)

(assert (=> b!83688 m!79572))

(declare-fun m!79574 () Bool)

(assert (=> b!83689 m!79574))

(assert (=> b!83689 m!79446))

(assert (=> b!83535 d!56569))

(declare-fun b!83692 () Bool)

(declare-fun res!43093 () Bool)

(declare-fun e!45382 () Bool)

(assert (=> b!83692 (=> res!43093 e!45382)))

(assert (=> b!83692 (= res!43093 (isEmpty!686 (quickSort!0 less!5)))))

(declare-fun b!83693 () Bool)

(declare-fun res!43095 () Bool)

(declare-fun e!45381 () Bool)

(assert (=> b!83693 (=> res!43095 e!45381)))

(assert (=> b!83693 (= res!43095 (isEmpty!686 (quickSort!0 less!5)))))

(declare-fun d!56571 () Bool)

(declare-fun e!45383 () Bool)

(assert (=> d!56571 e!45383))

(declare-fun c!20950 () Bool)

(assert (=> d!56571 (= c!20950 (is-Cons!633 (quickSort!0 less!5)))))

(assert (=> d!56571 (= (forall_last!0 (quickSort!0 less!5) lambda!10362) true)))

(declare-fun b!83694 () Bool)

(assert (=> b!83694 (= e!45383 e!45381)))

(declare-fun res!43096 () Bool)

(assert (=> b!83694 (=> res!43096 e!45381)))

(assert (=> b!83694 (= res!43096 (not (forall!31 (quickSort!0 less!5) lambda!10362)))))

(declare-fun lt!19532 () Bool)

(assert (=> b!83694 (= lt!19532 (forall_last!0 (t!47921 (quickSort!0 less!5)) lambda!10362))))

(declare-fun b!83695 () Bool)

(assert (=> b!83695 (= e!45381 (dynLambda!995 lambda!10362 (last!26 (quickSort!0 less!5))))))

(declare-fun b!83696 () Bool)

(assert (=> b!83696 (= e!45382 (dynLambda!995 lambda!10362 (last!26 (quickSort!0 less!5))))))

(declare-fun b!83697 () Bool)

(assert (=> b!83697 (= e!45383 e!45382)))

(declare-fun res!43094 () Bool)

(assert (=> b!83697 (=> res!43094 e!45382)))

(assert (=> b!83697 (= res!43094 (not (forall!31 (quickSort!0 less!5) lambda!10362)))))

(assert (= (and b!83694 (not res!43096)) b!83693))

(assert (= (and b!83693 (not res!43095)) b!83695))

(assert (= (and b!83697 (not res!43094)) b!83692))

(assert (= (and b!83692 (not res!43093)) b!83696))

(assert (= (and d!56571 c!20950) b!83694))

(assert (= (and d!56571 (not c!20950)) b!83697))

(declare-fun b_lambda!16497 () Bool)

(assert (=> (not b_lambda!16497) (not b!83695)))

(declare-fun b_lambda!16499 () Bool)

(assert (=> (not b_lambda!16499) (not b!83696)))

(assert (=> b!83692 m!79312))

(assert (=> b!83692 m!79348))

(assert (=> b!83697 m!79312))

(assert (=> b!83697 m!79410))

(assert (=> b!83696 m!79312))

(assert (=> b!83696 m!79350))

(assert (=> b!83696 m!79350))

(declare-fun m!79576 () Bool)

(assert (=> b!83696 m!79576))

(assert (=> b!83694 m!79312))

(assert (=> b!83694 m!79410))

(declare-fun m!79578 () Bool)

(assert (=> b!83694 m!79578))

(assert (=> b!83695 m!79312))

(assert (=> b!83695 m!79350))

(assert (=> b!83695 m!79350))

(assert (=> b!83695 m!79576))

(assert (=> b!83693 m!79312))

(assert (=> b!83693 m!79348))

(assert (=> b!83525 d!56571))

(assert (=> b!83525 d!56543))

(declare-fun b_lambda!16501 () Bool)

(assert (= b_lambda!16497 (or b!83529 b_lambda!16501)))

(declare-fun bs!40702 () Bool)

(declare-fun d!56573 () Bool)

(assert (= bs!40702 (and d!56573 b!83529)))

(assert (=> bs!40702 (= (dynLambda!995 lambda!10362 (last!26 (quickSort!0 less!5))) (< (last!26 (quickSort!0 less!5)) (h!1003 ls!96)))))

(assert (=> b!83695 d!56573))

(declare-fun b_lambda!16503 () Bool)

(assert (= b_lambda!16487 (or b!83536 b_lambda!16503)))

(declare-fun bs!40703 () Bool)

(declare-fun d!56575 () Bool)

(assert (= bs!40703 (and d!56575 b!83536)))

(assert (=> bs!40703 (= (dynLambda!995 lambda!10363 (h!1003 (t!47921 ls!96))) (= (h!1003 (t!47921 ls!96)) (h!1003 ls!96)))))

(assert (=> b!83626 d!56575))

(declare-fun b_lambda!16505 () Bool)

(assert (= b_lambda!16495 (or b!83535 b_lambda!16505)))

(declare-fun bs!40704 () Bool)

(declare-fun d!56577 () Bool)

(assert (= bs!40704 (and d!56577 b!83535)))

(assert (=> bs!40704 (= (dynLambda!995 lambda!10364 (h!1003 (t!47921 ls!96))) (> (h!1003 (t!47921 ls!96)) (h!1003 ls!96)))))

(assert (=> b!83691 d!56577))

(declare-fun b_lambda!16507 () Bool)

(assert (= b_lambda!16489 (or b!83529 b_lambda!16507)))

(declare-fun bs!40705 () Bool)

(declare-fun d!56579 () Bool)

(assert (= bs!40705 (and d!56579 b!83529)))

(assert (=> bs!40705 (= (dynLambda!995 lambda!10362 (h!1003 (t!47921 ls!96))) (< (h!1003 (t!47921 ls!96)) (h!1003 ls!96)))))

(assert (=> b!83652 d!56579))

(declare-fun b_lambda!16509 () Bool)

(assert (= b_lambda!16491 (or b!83524 b_lambda!16509)))

(declare-fun bs!40706 () Bool)

(declare-fun d!56581 () Bool)

(assert (= bs!40706 (and d!56581 b!83524)))

(assert (=> bs!40706 (= (dynLambda!995 lambda!10365 (last!26 (++!84 (quickSort!0 less!5) equal!10))) (<= (last!26 (++!84 (quickSort!0 less!5) equal!10)) (h!1003 ls!96)))))

(assert (=> b!83670 d!56581))

(declare-fun b_lambda!16511 () Bool)

(assert (= b_lambda!16499 (or b!83529 b_lambda!16511)))

(assert (=> b!83696 d!56573))

(declare-fun b_lambda!16513 () Bool)

(assert (= b_lambda!16493 (or b!83524 b_lambda!16513)))

(assert (=> b!83671 d!56581))

(push 1)

(assert (not b!83695))

(assert (not b!83672))

(assert (not b!83649))

(assert (not b_lambda!16509))

(assert (not b!83601))

(assert (not b!83583))

(assert (not b!83545))

(assert (not b!83561))

(assert (not b!83670))

(assert (not b!83641))

(assert (not b!83622))

(assert (not b!83636))

(assert (not b!83562))

(assert (not b!83623))

(assert (not b!83689))

(assert (not b!83693))

(assert (not d!56561))

(assert (not b!83683))

(assert (not d!56541))

(assert (not b_lambda!16505))

(assert (not b_lambda!16507))

(assert (not b!83692))

(assert (not b!83637))

(assert (not b!83696))

(assert (not b!83605))

(assert (not b!83648))

(assert (not b!83645))

(assert (not b!83639))

(assert (not b!83589))

(assert (not d!56549))

(assert (not b!83668))

(assert (not b!83682))

(assert (not b_lambda!16501))

(assert (not b!83650))

(assert (not b!83694))

(assert (not b!83669))

(assert (not d!56547))

(assert (not b!83624))

(assert (not b!83643))

(assert (not d!56555))

(assert (not d!56539))

(assert (not b!83635))

(assert (not b_lambda!16511))

(assert (not b!83578))

(assert (not b!83644))

(assert (not b!83653))

(assert (not b!83563))

(assert (not d!56557))

(assert (not d!56551))

(assert (not b!83546))

(assert (not d!56559))

(assert (not b!83642))

(assert (not b!83667))

(assert (not b!83638))

(assert (not b!83564))

(assert (not b!83602))

(assert (not b!83687))

(assert (not d!56569))

(assert (not b_lambda!16503))

(assert (not b!83604))

(assert (not b!83603))

(assert (not d!56545))

(assert (not d!56567))

(assert (not b!83584))

(assert (not d!56553))

(assert (not b_lambda!16513))

(assert (not b!83697))

(assert (not b!83633))

(assert (not b!83590))

(assert (not b!83565))

(assert (not b!83688))

(assert (not b!83671))

(assert (not b!83634))

(assert (not b!83654))

(assert (not b!83566))

(assert (not b!83640))

(assert (not d!56563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

