; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3352 () Bool)

(assert start!3352)

(declare-fun b!19497 () Bool)

(declare-fun res!8408 () Bool)

(declare-fun e!10280 () Bool)

(assert (=> b!19497 (=> (not res!8408) (not e!10280))))

(declare-datatypes () ((T!1749 (T!1750 (val!47 Int)))))

(declare-datatypes () ((Conc!29 (CC!28 (left!673 Conc!29) (right!676 Conc!29)) (Single!28 (x!8775 T!1749)) (Empty!39))))

(declare-fun res!5614 () Conc!29)

(declare-fun isEmpty!291 (Conc!29) Bool)

(assert (=> b!19497 (= res!8408 (not (isEmpty!291 res!5614)))))

(declare-fun b!19498 () Bool)

(declare-fun e!10278 () Bool)

(declare-fun tp_is_empty!93 () Bool)

(assert (=> b!19498 (= e!10278 tp_is_empty!93)))

(declare-fun b!19499 () Bool)

(declare-fun tp!4549 () Bool)

(declare-fun tp!4550 () Bool)

(assert (=> b!19499 (= e!10278 (and tp!4549 tp!4550))))

(declare-fun b!19500 () Bool)

(declare-fun res!8405 () Bool)

(assert (=> b!19500 (=> (not res!8405) (not e!10280))))

(declare-fun y!871 () T!1749)

(declare-fun i!321 () Int)

(declare-fun y!824 () T!1749)

(declare-fun i!298 () Int)

(assert (=> b!19500 (= res!8405 (and (= i!321 i!298) (= y!871 y!824)))))

(declare-fun b!19501 () Bool)

(declare-fun res!8401 () Bool)

(assert (=> b!19501 (=> (not res!8401) (not e!10280))))

(declare-fun xs!604 () Conc!29)

(declare-fun level!26 (Conc!29) Int)

(assert (=> b!19501 (= res!8401 (>= (level!26 res!5614) (level!26 xs!604)))))

(declare-fun b!19502 () Bool)

(declare-fun res!8404 () Bool)

(assert (=> b!19502 (=> (not res!8404) (not e!10280))))

(declare-fun size!217 (Conc!29) Int)

(assert (=> b!19502 (= res!8404 (<= i!298 (size!217 xs!604)))))

(declare-fun res!8402 () Bool)

(assert (=> start!3352 (=> (not res!8402) (not e!10280))))

(declare-fun concInv!27 (Conc!29) Bool)

(assert (=> start!3352 (= res!8402 (concInv!27 xs!604))))

(assert (=> start!3352 e!10280))

(assert (=> start!3352 tp_is_empty!93))

(assert (=> start!3352 true))

(declare-fun e!10277 () Bool)

(assert (=> start!3352 e!10277))

(assert (=> start!3352 e!10278))

(declare-fun e!10279 () Bool)

(assert (=> start!3352 e!10279))

(declare-fun b!19503 () Bool)

(declare-fun res!8411 () Bool)

(assert (=> b!19503 (=> (not res!8411) (not e!10280))))

(declare-datatypes () ((List!334 (Cons!328 (h!242 T!1749) (t!4329 List!334)) (Nil!329))))

(declare-fun l!802 () List!334)

(declare-fun toList!94 (Conc!29) List!334)

(assert (=> b!19503 (= res!8411 (= l!802 (toList!94 xs!604)))))

(declare-fun b!19504 () Bool)

(declare-fun res!8412 () Bool)

(assert (=> b!19504 (=> (not res!8412) (not e!10280))))

(declare-fun balanced!28 (Conc!29) Bool)

(assert (=> b!19504 (= res!8412 (balanced!28 xs!604))))

(declare-fun b!19505 () Bool)

(declare-fun res!8413 () Bool)

(assert (=> b!19505 (=> (not res!8413) (not e!10280))))

(assert (=> b!19505 (= res!8413 (balanced!28 res!5614))))

(declare-fun b!19506 () Bool)

(declare-fun res!8414 () Bool)

(assert (=> b!19506 (=> (not res!8414) (not e!10280))))

(assert (=> b!19506 (= res!8414 (>= i!298 0))))

(declare-fun b!19507 () Bool)

(assert (=> b!19507 (= e!10277 tp_is_empty!93)))

(declare-fun b!19508 () Bool)

(declare-fun res!8415 () Bool)

(assert (=> b!19508 (=> (not res!8415) (not e!10280))))

(assert (=> b!19508 (= res!8415 (>= i!298 (size!217 (left!673 xs!604))))))

(declare-fun b!19509 () Bool)

(declare-fun res!8403 () Bool)

(assert (=> b!19509 (=> (not res!8403) (not e!10280))))

(assert (=> b!19509 (= res!8403 (<= (- (level!26 res!5614) (level!26 xs!604)) 1))))

(declare-fun b!19510 () Bool)

(declare-fun res!8406 () Bool)

(assert (=> b!19510 (=> (not res!8406) (not e!10280))))

(assert (=> b!19510 (= res!8406 (and (not (is-Empty!39 xs!604)) (not (is-Single!28 xs!604))))))

(declare-fun b!19511 () Bool)

(declare-fun e!10276 () Bool)

(declare-fun size!218 (List!334) Int)

(assert (=> b!19511 (= e!10276 (> i!321 (size!218 l!802)))))

(declare-fun b!19512 () Bool)

(declare-fun res!8407 () Bool)

(assert (=> b!19512 (=> (not res!8407) (not e!10280))))

(declare-fun concatNonEmpty!10 (Conc!29 Conc!29) Conc!29)

(declare-fun insert!19 (Conc!29 Int T!1749) Conc!29)

(assert (=> b!19512 (= res!8407 (= res!5614 (concatNonEmpty!10 (left!673 xs!604) (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))))))

(declare-fun b!19513 () Bool)

(declare-fun tp!4547 () Bool)

(assert (=> b!19513 (= e!10279 (and tp_is_empty!93 tp!4547))))

(declare-fun b!19514 () Bool)

(declare-fun tp!4548 () Bool)

(declare-fun tp!4551 () Bool)

(assert (=> b!19514 (= e!10277 (and tp!4548 tp!4551))))

(declare-fun b!19515 () Bool)

(declare-fun res!8400 () Bool)

(assert (=> b!19515 (=> (not res!8400) (not e!10280))))

(assert (=> b!19515 (= res!8400 (concInv!27 res!5614))))

(declare-fun b!19516 () Bool)

(declare-fun res!8410 () Bool)

(assert (=> b!19516 (=> (not res!8410) (not e!10280))))

(declare-fun insertAppendAxiomInst!9 (Conc!29 Int T!1749) Bool)

(assert (=> b!19516 (= res!8410 (insertAppendAxiomInst!9 xs!604 i!298 y!824))))

(declare-fun b!19517 () Bool)

(assert (=> b!19517 (= e!10280 e!10276)))

(declare-fun res!8409 () Bool)

(assert (=> b!19517 (=> res!8409 e!10276)))

(assert (=> b!19517 (= res!8409 (> 0 i!321))))

(assert (= (and start!3352 res!8402) b!19504))

(assert (= (and b!19504 res!8412) b!19506))

(assert (= (and b!19506 res!8414) b!19502))

(assert (= (and b!19502 res!8404) b!19510))

(assert (= (and b!19510 res!8406) b!19508))

(assert (= (and b!19508 res!8415) b!19512))

(assert (= (and b!19512 res!8407) b!19515))

(assert (= (and b!19515 res!8400) b!19505))

(assert (= (and b!19505 res!8413) b!19509))

(assert (= (and b!19509 res!8403) b!19501))

(assert (= (and b!19501 res!8401) b!19497))

(assert (= (and b!19497 res!8408) b!19516))

(assert (= (and b!19516 res!8410) b!19503))

(assert (= (and b!19503 res!8411) b!19500))

(assert (= (and b!19500 res!8405) b!19517))

(assert (= (and b!19517 (not res!8409)) b!19511))

(assert (= (and start!3352 (is-CC!28 res!5614)) b!19514))

(assert (= (and start!3352 (is-Single!28 res!5614)) b!19507))

(assert (= (and start!3352 (is-CC!28 xs!604)) b!19499))

(assert (= (and start!3352 (is-Single!28 xs!604)) b!19498))

(assert (= (and start!3352 (is-Cons!328 l!802)) b!19513))

(declare-fun m!21747 () Bool)

(assert (=> start!3352 m!21747))

(declare-fun m!21749 () Bool)

(assert (=> b!19502 m!21749))

(declare-fun m!21751 () Bool)

(assert (=> b!19511 m!21751))

(declare-fun m!21753 () Bool)

(assert (=> b!19505 m!21753))

(declare-fun m!21755 () Bool)

(assert (=> b!19512 m!21755))

(declare-fun m!21757 () Bool)

(assert (=> b!19512 m!21757))

(assert (=> b!19512 m!21757))

(declare-fun m!21759 () Bool)

(assert (=> b!19512 m!21759))

(declare-fun m!21761 () Bool)

(assert (=> b!19509 m!21761))

(declare-fun m!21763 () Bool)

(assert (=> b!19509 m!21763))

(declare-fun m!21765 () Bool)

(assert (=> b!19497 m!21765))

(assert (=> b!19508 m!21755))

(declare-fun m!21767 () Bool)

(assert (=> b!19503 m!21767))

(assert (=> b!19501 m!21761))

(assert (=> b!19501 m!21763))

(declare-fun m!21769 () Bool)

(assert (=> b!19515 m!21769))

(declare-fun m!21771 () Bool)

(assert (=> b!19504 m!21771))

(declare-fun m!21773 () Bool)

(assert (=> b!19516 m!21773))

(push 1)

(assert (not b!19512))

(assert (not b!19509))

(assert (not b!19514))

(assert tp_is_empty!93)

(assert (not b!19501))

(assert (not b!19504))

(assert (not b!19516))

(assert (not b!19513))

(assert (not start!3352))

(assert (not b!19505))

(assert (not b!19515))

(assert (not b!19497))

(assert (not b!19502))

(assert (not b!19499))

(assert (not b!19508))

(assert (not b!19511))

(assert (not b!19503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12297 () Bool)

(declare-fun res!8424 () Bool)

(declare-fun e!10286 () Bool)

(assert (=> d!12297 (=> res!8424 e!10286)))

(assert (=> d!12297 (= res!8424 (not (is-CC!28 xs!604)))))

(assert (=> d!12297 (= (concInv!27 xs!604) e!10286)))

(declare-fun b!19529 () Bool)

(declare-fun e!10285 () Bool)

(assert (=> b!19529 (= e!10285 (concInv!27 (right!676 xs!604)))))

(declare-fun b!19527 () Bool)

(declare-fun res!8426 () Bool)

(assert (=> b!19527 (=> (not res!8426) (not e!10285))))

(assert (=> b!19527 (= res!8426 (not (isEmpty!291 (right!676 xs!604))))))

(declare-fun b!19526 () Bool)

(assert (=> b!19526 (= e!10286 e!10285)))

(declare-fun res!8427 () Bool)

(assert (=> b!19526 (=> (not res!8427) (not e!10285))))

(assert (=> b!19526 (= res!8427 (not (isEmpty!291 (left!673 xs!604))))))

(declare-fun b!19528 () Bool)

(declare-fun res!8425 () Bool)

(assert (=> b!19528 (=> (not res!8425) (not e!10285))))

(assert (=> b!19528 (= res!8425 (concInv!27 (left!673 xs!604)))))

(assert (= (and d!12297 (not res!8424)) b!19526))

(assert (= (and b!19526 res!8427) b!19527))

(assert (= (and b!19527 res!8426) b!19528))

(assert (= (and b!19528 res!8425) b!19529))

(declare-fun m!21775 () Bool)

(assert (=> b!19529 m!21775))

(declare-fun m!21777 () Bool)

(assert (=> b!19527 m!21777))

(declare-fun m!21779 () Bool)

(assert (=> b!19526 m!21779))

(declare-fun m!21781 () Bool)

(assert (=> b!19528 m!21781))

(assert (=> start!3352 d!12297))

(declare-fun d!12299 () Bool)

(declare-fun e!10292 () Bool)

(assert (=> d!12299 e!10292))

(declare-fun res!8433 () Bool)

(assert (=> d!12299 (=> res!8433 e!10292)))

(assert (=> d!12299 (= res!8433 (not (is-CC!28 xs!604)))))

(declare-fun e!10291 () Bool)

(assert (=> d!12299 e!10291))

(declare-fun res!8432 () Bool)

(assert (=> d!12299 (=> (not res!8432) (not e!10291))))

(assert (=> d!12299 (= res!8432 (>= i!298 0))))

(assert (=> d!12299 (= (insertAppendAxiomInst!9 xs!604 i!298 y!824) true)))

(declare-fun b!19534 () Bool)

(assert (=> b!19534 (= e!10291 (<= i!298 (size!217 xs!604)))))

(declare-fun b!19535 () Bool)

(declare-fun appendInsertIndex!8 (List!334 List!334 Int T!1749) Bool)

(assert (=> b!19535 (= e!10292 (appendInsertIndex!8 (toList!94 (left!673 xs!604)) (toList!94 (right!676 xs!604)) i!298 y!824))))

(assert (= (and d!12299 res!8432) b!19534))

(assert (= (and d!12299 (not res!8433)) b!19535))

(assert (=> b!19534 m!21749))

(declare-fun m!21783 () Bool)

(assert (=> b!19535 m!21783))

(declare-fun m!21785 () Bool)

(assert (=> b!19535 m!21785))

(assert (=> b!19535 m!21783))

(assert (=> b!19535 m!21785))

(declare-fun m!21787 () Bool)

(assert (=> b!19535 m!21787))

(assert (=> b!19516 d!12299))

(declare-fun d!12301 () Bool)

(declare-fun lt!2882 () Int)

(assert (=> d!12301 (>= lt!2882 0)))

(declare-fun e!10295 () Int)

(assert (=> d!12301 (= lt!2882 e!10295)))

(declare-fun c!4725 () Bool)

(assert (=> d!12301 (= c!4725 (is-Nil!329 l!802))))

(assert (=> d!12301 (= (size!218 l!802) lt!2882)))

(declare-fun b!19540 () Bool)

(assert (=> b!19540 (= e!10295 0)))

(declare-fun b!19541 () Bool)

(assert (=> b!19541 (= e!10295 (+ 1 (size!218 (t!4329 l!802))))))

(assert (= (and d!12301 c!4725) b!19540))

(assert (= (and d!12301 (not c!4725)) b!19541))

(declare-fun m!21789 () Bool)

(assert (=> b!19541 m!21789))

(assert (=> b!19511 d!12301))

(declare-fun b!19547 () Bool)

(declare-fun e!10298 () Int)

(declare-fun lt!2891 () Int)

(declare-fun lt!2889 () Int)

(assert (=> b!19547 (= e!10298 (+ 1 (ite (>= lt!2891 lt!2889) lt!2891 lt!2889)))))

(assert (=> b!19547 (= lt!2889 (level!26 (right!676 res!5614)))))

(assert (=> b!19547 (= lt!2891 (level!26 (left!673 res!5614)))))

(declare-fun d!12303 () Bool)

(declare-fun lt!2890 () Int)

(assert (=> d!12303 (>= lt!2890 0)))

(assert (=> d!12303 (= lt!2890 e!10298)))

(declare-fun c!4728 () Bool)

(assert (=> d!12303 (= c!4728 (or (is-Empty!39 res!5614) (is-Single!28 res!5614)))))

(assert (=> d!12303 (= (level!26 res!5614) lt!2890)))

(declare-fun b!19546 () Bool)

(assert (=> b!19546 (= e!10298 0)))

(assert (= (and d!12303 c!4728) b!19546))

(assert (= (and d!12303 (not c!4728)) b!19547))

(declare-fun m!21791 () Bool)

(assert (=> b!19547 m!21791))

(declare-fun m!21793 () Bool)

(assert (=> b!19547 m!21793))

(assert (=> b!19509 d!12303))

(declare-fun b!19549 () Bool)

(declare-fun e!10299 () Int)

(declare-fun lt!2894 () Int)

(declare-fun lt!2892 () Int)

(assert (=> b!19549 (= e!10299 (+ 1 (ite (>= lt!2894 lt!2892) lt!2894 lt!2892)))))

(assert (=> b!19549 (= lt!2892 (level!26 (right!676 xs!604)))))

(assert (=> b!19549 (= lt!2894 (level!26 (left!673 xs!604)))))

(declare-fun d!12305 () Bool)

(declare-fun lt!2893 () Int)

(assert (=> d!12305 (>= lt!2893 0)))

(assert (=> d!12305 (= lt!2893 e!10299)))

(declare-fun c!4729 () Bool)

(assert (=> d!12305 (= c!4729 (or (is-Empty!39 xs!604) (is-Single!28 xs!604)))))

(assert (=> d!12305 (= (level!26 xs!604) lt!2893)))

(declare-fun b!19548 () Bool)

(assert (=> b!19548 (= e!10299 0)))

(assert (= (and d!12305 c!4729) b!19548))

(assert (= (and d!12305 (not c!4729)) b!19549))

(declare-fun m!21795 () Bool)

(assert (=> b!19549 m!21795))

(declare-fun m!21797 () Bool)

(assert (=> b!19549 m!21797))

(assert (=> b!19509 d!12305))

(assert (=> b!19501 d!12303))

(assert (=> b!19501 d!12305))

(declare-fun d!12307 () Bool)

(declare-fun lt!2897 () Int)

(assert (=> d!12307 (>= lt!2897 0)))

(declare-fun e!10304 () Int)

(assert (=> d!12307 (= lt!2897 e!10304)))

(declare-fun c!4734 () Bool)

(assert (=> d!12307 (= c!4734 (is-Empty!39 xs!604))))

(assert (=> d!12307 (= (size!217 xs!604) lt!2897)))

(declare-fun b!19558 () Bool)

(assert (=> b!19558 (= e!10304 0)))

(declare-fun b!19560 () Bool)

(declare-fun e!10305 () Int)

(assert (=> b!19560 (= e!10305 1)))

(declare-fun b!19561 () Bool)

(assert (=> b!19561 (= e!10305 (+ (size!217 (left!673 xs!604)) (size!217 (right!676 xs!604))))))

(declare-fun b!19559 () Bool)

(assert (=> b!19559 (= e!10304 e!10305)))

(declare-fun c!4735 () Bool)

(assert (=> b!19559 (= c!4735 (is-Single!28 xs!604))))

(assert (= (and b!19559 c!4735) b!19560))

(assert (= (and b!19559 (not c!4735)) b!19561))

(assert (= (and d!12307 c!4734) b!19558))

(assert (= (and d!12307 (not c!4734)) b!19559))

(assert (=> b!19561 m!21755))

(declare-fun m!21799 () Bool)

(assert (=> b!19561 m!21799))

(assert (=> b!19502 d!12307))

(declare-fun b!19570 () Bool)

(declare-fun e!10311 () List!334)

(assert (=> b!19570 (= e!10311 Nil!329)))

(declare-fun b!19573 () Bool)

(declare-fun e!10310 () List!334)

(declare-fun ++!17 (List!334 List!334) List!334)

(assert (=> b!19573 (= e!10310 (++!17 (toList!94 (left!673 xs!604)) (toList!94 (right!676 xs!604))))))

(declare-fun b!19572 () Bool)

(assert (=> b!19572 (= e!10310 (Cons!328 (x!8775 xs!604) Nil!329))))

(declare-fun d!12309 () Bool)

(declare-fun lt!2900 () List!334)

(assert (=> d!12309 (= (size!218 lt!2900) (size!217 xs!604))))

(assert (=> d!12309 (= lt!2900 e!10311)))

(declare-fun c!4740 () Bool)

(assert (=> d!12309 (= c!4740 (is-Empty!39 xs!604))))

(assert (=> d!12309 (= (toList!94 xs!604) lt!2900)))

(declare-fun b!19571 () Bool)

(assert (=> b!19571 (= e!10311 e!10310)))

(declare-fun c!4741 () Bool)

(assert (=> b!19571 (= c!4741 (is-Single!28 xs!604))))

(assert (= (and b!19571 c!4741) b!19572))

(assert (= (and b!19571 (not c!4741)) b!19573))

(assert (= (and d!12309 c!4740) b!19570))

(assert (= (and d!12309 (not c!4740)) b!19571))

(assert (=> b!19573 m!21783))

(assert (=> b!19573 m!21785))

(assert (=> b!19573 m!21783))

(assert (=> b!19573 m!21785))

(declare-fun m!21801 () Bool)

(assert (=> b!19573 m!21801))

(declare-fun m!21803 () Bool)

(assert (=> d!12309 m!21803))

(assert (=> d!12309 m!21749))

(assert (=> b!19503 d!12309))

(declare-fun d!12311 () Bool)

(assert (=> d!12311 (= (isEmpty!291 res!5614) (= res!5614 Empty!39))))

(assert (=> b!19497 d!12311))

(declare-fun d!12313 () Bool)

(declare-fun lt!2901 () Int)

(assert (=> d!12313 (>= lt!2901 0)))

(declare-fun e!10312 () Int)

(assert (=> d!12313 (= lt!2901 e!10312)))

(declare-fun c!4742 () Bool)

(assert (=> d!12313 (= c!4742 (is-Empty!39 (left!673 xs!604)))))

(assert (=> d!12313 (= (size!217 (left!673 xs!604)) lt!2901)))

(declare-fun b!19574 () Bool)

(assert (=> b!19574 (= e!10312 0)))

(declare-fun b!19576 () Bool)

(declare-fun e!10313 () Int)

(assert (=> b!19576 (= e!10313 1)))

(declare-fun b!19577 () Bool)

(assert (=> b!19577 (= e!10313 (+ (size!217 (left!673 (left!673 xs!604))) (size!217 (right!676 (left!673 xs!604)))))))

(declare-fun b!19575 () Bool)

(assert (=> b!19575 (= e!10312 e!10313)))

(declare-fun c!4743 () Bool)

(assert (=> b!19575 (= c!4743 (is-Single!28 (left!673 xs!604)))))

(assert (= (and b!19575 c!4743) b!19576))

(assert (= (and b!19575 (not c!4743)) b!19577))

(assert (= (and d!12313 c!4742) b!19574))

(assert (= (and d!12313 (not c!4742)) b!19575))

(declare-fun m!21805 () Bool)

(assert (=> b!19577 m!21805))

(declare-fun m!21807 () Bool)

(assert (=> b!19577 m!21807))

(assert (=> b!19508 d!12313))

(declare-fun b!19587 () Bool)

(declare-fun res!8443 () Bool)

(declare-fun e!10318 () Bool)

(assert (=> b!19587 (=> (not res!8443) (not e!10318))))

(assert (=> b!19587 (= res!8443 (<= (- (level!26 (left!673 xs!604)) (level!26 (right!676 xs!604))) 1))))

(declare-fun b!19588 () Bool)

(declare-fun res!8444 () Bool)

(assert (=> b!19588 (=> (not res!8444) (not e!10318))))

(assert (=> b!19588 (= res!8444 (balanced!28 (left!673 xs!604)))))

(declare-fun b!19589 () Bool)

(assert (=> b!19589 (= e!10318 (balanced!28 (right!676 xs!604)))))

(declare-fun d!12315 () Bool)

(declare-fun res!8446 () Bool)

(declare-fun e!10319 () Bool)

(assert (=> d!12315 (=> res!8446 e!10319)))

(assert (=> d!12315 (= res!8446 (not (is-CC!28 xs!604)))))

(assert (=> d!12315 (= (balanced!28 xs!604) e!10319)))

(declare-fun b!19586 () Bool)

(assert (=> b!19586 (= e!10319 e!10318)))

(declare-fun res!8445 () Bool)

(assert (=> b!19586 (=> (not res!8445) (not e!10318))))

(assert (=> b!19586 (= res!8445 (>= (- (level!26 (left!673 xs!604)) (level!26 (right!676 xs!604))) (- 1)))))

(assert (= (and d!12315 (not res!8446)) b!19586))

(assert (= (and b!19586 res!8445) b!19587))

(assert (= (and b!19587 res!8443) b!19588))

(assert (= (and b!19588 res!8444) b!19589))

(assert (=> b!19587 m!21797))

(assert (=> b!19587 m!21795))

(declare-fun m!21809 () Bool)

(assert (=> b!19588 m!21809))

(declare-fun m!21811 () Bool)

(assert (=> b!19589 m!21811))

(assert (=> b!19586 m!21797))

(assert (=> b!19586 m!21795))

(assert (=> b!19504 d!12315))

(declare-fun d!12317 () Bool)

(declare-fun res!8447 () Bool)

(declare-fun e!10321 () Bool)

(assert (=> d!12317 (=> res!8447 e!10321)))

(assert (=> d!12317 (= res!8447 (not (is-CC!28 res!5614)))))

(assert (=> d!12317 (= (concInv!27 res!5614) e!10321)))

(declare-fun b!19593 () Bool)

(declare-fun e!10320 () Bool)

(assert (=> b!19593 (= e!10320 (concInv!27 (right!676 res!5614)))))

(declare-fun b!19591 () Bool)

(declare-fun res!8449 () Bool)

(assert (=> b!19591 (=> (not res!8449) (not e!10320))))

(assert (=> b!19591 (= res!8449 (not (isEmpty!291 (right!676 res!5614))))))

(declare-fun b!19590 () Bool)

(assert (=> b!19590 (= e!10321 e!10320)))

(declare-fun res!8450 () Bool)

(assert (=> b!19590 (=> (not res!8450) (not e!10320))))

(assert (=> b!19590 (= res!8450 (not (isEmpty!291 (left!673 res!5614))))))

(declare-fun b!19592 () Bool)

(declare-fun res!8448 () Bool)

(assert (=> b!19592 (=> (not res!8448) (not e!10320))))

(assert (=> b!19592 (= res!8448 (concInv!27 (left!673 res!5614)))))

(assert (= (and d!12317 (not res!8447)) b!19590))

(assert (= (and b!19590 res!8450) b!19591))

(assert (= (and b!19591 res!8449) b!19592))

(assert (= (and b!19592 res!8448) b!19593))

(declare-fun m!21813 () Bool)

(assert (=> b!19593 m!21813))

(declare-fun m!21815 () Bool)

(assert (=> b!19591 m!21815))

(declare-fun m!21817 () Bool)

(assert (=> b!19590 m!21817))

(declare-fun m!21819 () Bool)

(assert (=> b!19592 m!21819))

(assert (=> b!19515 d!12317))

(declare-fun b!19636 () Bool)

(declare-fun e!10346 () Bool)

(assert (=> b!19636 (= e!10346 (not (isEmpty!291 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))))))

(declare-fun b!19637 () Bool)

(declare-fun e!10340 () Int)

(declare-fun lt!2943 () Conc!29)

(assert (=> b!19637 (= e!10340 (level!26 lt!2943))))

(declare-fun b!19638 () Bool)

(declare-fun res!8516 () Int)

(assert (=> b!19638 (= e!10340 res!8516)))

(assert (=> b!19638 true))

(declare-fun b!19639 () Bool)

(declare-fun res!8506 () Bool)

(declare-fun e!10343 () Bool)

(assert (=> b!19639 (=> (not res!8506) (not e!10343))))

(declare-fun appendAssocInst!6 (Conc!29 Conc!29) Bool)

(assert (=> b!19639 (= res!8506 (appendAssocInst!6 (left!673 xs!604) (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(declare-fun b!19640 () Bool)

(declare-fun e!10341 () Conc!29)

(declare-fun res!8507 () Conc!29)

(assert (=> b!19640 (= e!10341 res!8507)))

(assert (=> b!19640 true))

(declare-fun e!10347 () Bool)

(assert (=> b!19640 e!10347))

(declare-fun lt!2938 () Int)

(declare-fun b!19641 () Bool)

(declare-fun lt!2942 () Int)

(declare-fun lt!2936 () Bool)

(assert (=> b!19641 (= e!10341 (concatNonEmpty!10 (ite lt!2936 (ite (>= lt!2938 lt!2942) (right!676 (left!673 xs!604)) (right!676 (right!676 (left!673 xs!604)))) (left!673 xs!604)) (ite lt!2936 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824) (ite (>= lt!2938 lt!2942) (left!673 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)) (left!673 (left!673 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))))))

(declare-fun d!12319 () Bool)

(declare-fun e!10345 () Bool)

(assert (=> d!12319 e!10345))

(declare-fun res!8508 () Bool)

(assert (=> d!12319 (=> (not res!8508) (not e!10345))))

(declare-fun lt!2944 () Conc!29)

(assert (=> d!12319 (= res!8508 (is-CC!28 lt!2944))))

(declare-fun e!10344 () Conc!29)

(assert (=> d!12319 (= lt!2944 e!10344)))

(declare-fun c!4755 () Bool)

(declare-fun lt!2941 () Int)

(assert (=> d!12319 (= c!4755 (and (>= lt!2941 (- 1)) (<= lt!2941 1)))))

(assert (=> d!12319 (= lt!2941 (- (level!26 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)) (level!26 (left!673 xs!604))))))

(assert (=> d!12319 e!10346))

(declare-fun res!8511 () Bool)

(assert (=> d!12319 (=> (not res!8511) (not e!10346))))

(declare-fun e!10348 () Bool)

(assert (=> d!12319 (= res!8511 e!10348)))

(declare-fun res!8505 () Bool)

(assert (=> d!12319 (=> (not res!8505) (not e!10348))))

(assert (=> d!12319 (= res!8505 (concInv!27 (left!673 xs!604)))))

(assert (=> d!12319 (= (concatNonEmpty!10 (left!673 xs!604) (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)) lt!2944)))

(declare-fun b!19642 () Bool)

(declare-fun res!8509 () Bool)

(assert (=> b!19642 (=> (not res!8509) (not e!10343))))

(assert (=> b!19642 (= res!8509 (concInv!27 lt!2944))))

(declare-fun b!19643 () Bool)

(declare-fun res!8514 () Bool)

(assert (=> b!19643 (=> (not res!8514) (not e!10343))))

(assert (=> b!19643 (= res!8514 (balanced!28 lt!2944))))

(declare-fun b!19644 () Bool)

(assert (=> b!19644 (= e!10348 (balanced!28 (left!673 xs!604)))))

(declare-fun b!19645 () Bool)

(declare-fun tp!4557 () Bool)

(declare-fun tp!4556 () Bool)

(assert (=> b!19645 (= e!10347 (and tp!4557 tp!4556))))

(declare-fun b!19646 () Bool)

(declare-fun e!10342 () Int)

(declare-fun res!8517 () Int)

(assert (=> b!19646 (= e!10342 res!8517)))

(assert (=> b!19646 true))

(assert (=> b!19646 true))

(declare-fun b!19647 () Bool)

(assert (=> b!19647 (= e!10345 e!10343)))

(declare-fun res!8510 () Bool)

(assert (=> b!19647 (=> (not res!8510) (not e!10343))))

(declare-fun lt!2937 () Int)

(declare-fun lt!2949 () Int)

(declare-fun lt!2946 () Int)

(assert (=> b!19647 (= res!8510 (<= lt!2946 (+ (ite (>= lt!2937 lt!2949) lt!2937 lt!2949) 1)))))

(assert (=> b!19647 (= lt!2949 (level!26 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(assert (=> b!19647 (= lt!2937 (level!26 (left!673 xs!604)))))

(assert (=> b!19647 (= lt!2946 (level!26 lt!2944))))

(declare-fun lt!2945 () Bool)

(declare-fun b!19648 () Bool)

(assert (=> b!19648 (= e!10342 (level!26 (ite lt!2945 (left!673 xs!604) (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))))))

(declare-fun b!19649 () Bool)

(assert (=> b!19649 (= e!10347 tp_is_empty!93)))

(declare-fun b!19650 () Bool)

(assert (=> b!19650 (= e!10344 (CC!28 (left!673 xs!604) (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(declare-fun b!19651 () Bool)

(declare-fun res!8515 () Bool)

(assert (=> b!19651 (=> (not res!8515) (not e!10346))))

(assert (=> b!19651 (= res!8515 (not (isEmpty!291 (left!673 xs!604))))))

(declare-fun b!19652 () Bool)

(declare-fun concatCorrectness!4 (Conc!29 Conc!29 Conc!29) Bool)

(assert (=> b!19652 (= e!10343 (concatCorrectness!4 lt!2944 (left!673 xs!604) (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(declare-fun lt!2935 () Bool)

(declare-fun lt!2948 () Int)

(declare-fun lt!2939 () Int)

(declare-fun b!19653 () Bool)

(assert (=> b!19653 (= e!10344 (ite lt!2935 (let ((res!8454 lt!2943)) (ite (>= lt!2938 lt!2942) (CC!28 (left!673 (left!673 xs!604)) res!8454) (ite (= lt!2948 (- lt!2939 3)) (CC!28 (left!673 (left!673 xs!604)) (CC!28 (left!673 (right!676 (left!673 xs!604))) res!8454)) (CC!28 (CC!28 (left!673 (left!673 xs!604)) (left!673 (right!676 (left!673 xs!604)))) res!8454)))) (let ((res!8457 lt!2943)) (ite (>= lt!2938 lt!2942) (CC!28 res!8457 (right!676 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))) (ite (= lt!2948 (- lt!2939 3)) (CC!28 (CC!28 res!8457 (right!676 (left!673 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))) (right!676 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))) (CC!28 res!8457 (CC!28 (right!676 (left!673 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))) (right!676 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))))))))

(assert (=> b!19653 (= lt!2939 e!10342)))

(declare-fun c!4754 () Bool)

(assert (=> b!19653 (= c!4754 (or lt!2945 (and (not lt!2935) (not (>= lt!2938 lt!2942)))))))

(assert (=> b!19653 (= lt!2945 (and lt!2935 (not (>= lt!2938 lt!2942))))))

(assert (=> b!19653 (= lt!2948 e!10340)))

(declare-fun c!4753 () Bool)

(assert (=> b!19653 (= c!4753 (or (and lt!2935 (not (>= lt!2938 lt!2942))) (and (not lt!2935) (not (>= lt!2938 lt!2942)))))))

(assert (=> b!19653 (= lt!2943 e!10341)))

(declare-fun c!4752 () Bool)

(assert (=> b!19653 (= c!4752 (or lt!2936 (not lt!2935)))))

(assert (=> b!19653 (= lt!2936 lt!2935)))

(assert (=> b!19653 (= lt!2942 (level!26 (ite lt!2935 (right!676 (left!673 xs!604)) (left!673 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))))

(assert (=> b!19653 (= lt!2938 (level!26 (ite lt!2935 (left!673 (left!673 xs!604)) (right!676 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))))

(assert (=> b!19653 (= lt!2935 (< lt!2941 (- 1)))))

(declare-fun b!19654 () Bool)

(declare-fun res!8513 () Bool)

(assert (=> b!19654 (=> (not res!8513) (not e!10346))))

(assert (=> b!19654 (= res!8513 (balanced!28 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(declare-fun b!19655 () Bool)

(declare-fun res!8518 () Bool)

(assert (=> b!19655 (=> (not res!8518) (not e!10346))))

(assert (=> b!19655 (= res!8518 (concInv!27 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(declare-fun b!19656 () Bool)

(declare-fun res!8512 () Bool)

(assert (=> b!19656 (=> (not res!8512) (not e!10343))))

(declare-fun lt!2934 () Int)

(declare-fun lt!2940 () Int)

(declare-fun lt!2947 () Int)

(assert (=> b!19656 (= res!8512 (>= lt!2940 (ite (>= lt!2947 lt!2934) lt!2947 lt!2934)))))

(assert (=> b!19656 (= lt!2934 (level!26 (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(assert (=> b!19656 (= lt!2947 (level!26 (left!673 xs!604)))))

(assert (=> b!19656 (= lt!2940 (level!26 lt!2944))))

(assert (= (and d!12319 res!8505) b!19644))

(assert (= (and d!12319 res!8511) b!19655))

(assert (= (and b!19655 res!8518) b!19654))

(assert (= (and b!19654 res!8513) b!19651))

(assert (= (and b!19651 res!8515) b!19636))

(assert (= (and b!19640 (is-CC!28 res!8507)) b!19645))

(assert (= (and b!19640 (is-Single!28 res!8507)) b!19649))

(assert (= (and b!19653 c!4752) b!19641))

(assert (= (and b!19653 (not c!4752)) b!19640))

(assert (= (and b!19653 c!4753) b!19637))

(assert (= (and b!19653 (not c!4753)) b!19638))

(assert (= (and b!19653 c!4754) b!19648))

(assert (= (and b!19653 (not c!4754)) b!19646))

(assert (= (and d!12319 c!4755) b!19650))

(assert (= (and d!12319 (not c!4755)) b!19653))

(assert (= (and d!12319 res!8508) b!19647))

(assert (= (and b!19647 res!8510) b!19656))

(assert (= (and b!19656 res!8512) b!19642))

(assert (= (and b!19642 res!8509) b!19643))

(assert (= (and b!19643 res!8514) b!19639))

(assert (= (and b!19639 res!8506) b!19652))

(assert (=> b!19636 m!21757))

(declare-fun m!21821 () Bool)

(assert (=> b!19636 m!21821))

(declare-fun m!21823 () Bool)

(assert (=> b!19637 m!21823))

(assert (=> b!19647 m!21757))

(declare-fun m!21825 () Bool)

(assert (=> b!19647 m!21825))

(assert (=> b!19647 m!21797))

(declare-fun m!21827 () Bool)

(assert (=> b!19647 m!21827))

(declare-fun m!21829 () Bool)

(assert (=> b!19653 m!21829))

(declare-fun m!21831 () Bool)

(assert (=> b!19653 m!21831))

(assert (=> b!19639 m!21757))

(declare-fun m!21833 () Bool)

(assert (=> b!19639 m!21833))

(declare-fun m!21835 () Bool)

(assert (=> b!19643 m!21835))

(assert (=> b!19651 m!21779))

(assert (=> b!19652 m!21757))

(declare-fun m!21837 () Bool)

(assert (=> b!19652 m!21837))

(assert (=> d!12319 m!21757))

(assert (=> d!12319 m!21825))

(assert (=> d!12319 m!21797))

(assert (=> d!12319 m!21781))

(declare-fun m!21839 () Bool)

(assert (=> b!19641 m!21839))

(assert (=> b!19656 m!21757))

(assert (=> b!19656 m!21825))

(assert (=> b!19656 m!21797))

(assert (=> b!19656 m!21827))

(assert (=> b!19654 m!21757))

(declare-fun m!21841 () Bool)

(assert (=> b!19654 m!21841))

(declare-fun m!21843 () Bool)

(assert (=> b!19642 m!21843))

(assert (=> b!19655 m!21757))

(declare-fun m!21845 () Bool)

(assert (=> b!19655 m!21845))

(assert (=> b!19644 m!21809))

(declare-fun m!21847 () Bool)

(assert (=> b!19648 m!21847))

(assert (=> b!19512 d!12319))

(declare-fun b!19687 () Bool)

(declare-fun res!8542 () Bool)

(declare-fun e!10367 () Bool)

(assert (=> b!19687 (=> (not res!8542) (not e!10367))))

(declare-fun lt!2952 () Conc!29)

(assert (=> b!19687 (= res!8542 (>= (level!26 lt!2952) (level!26 (right!676 xs!604))))))

(declare-fun b!19688 () Bool)

(declare-fun res!8543 () Bool)

(assert (=> b!19688 (=> (not res!8543) (not e!10367))))

(assert (=> b!19688 (= res!8543 (<= (- (level!26 lt!2952) (level!26 (right!676 xs!604))) 1))))

(declare-fun b!19689 () Bool)

(declare-fun res!8540 () Bool)

(declare-fun e!10366 () Bool)

(assert (=> b!19689 (=> (not res!8540) (not e!10366))))

(assert (=> b!19689 (= res!8540 (>= (- i!298 (size!217 (left!673 xs!604))) 0))))

(declare-fun b!19690 () Bool)

(declare-fun e!10368 () Conc!29)

(declare-fun e!10363 () Conc!29)

(assert (=> b!19690 (= e!10368 e!10363)))

(declare-fun c!4762 () Bool)

(assert (=> b!19690 (= c!4762 (< (- i!298 (size!217 (left!673 xs!604))) (size!217 (left!673 (right!676 xs!604)))))))

(declare-fun b!19691 () Bool)

(declare-fun insertAtIndex!7 (List!334 Int T!1749) List!334)

(assert (=> b!19691 (= e!10367 (= (toList!94 lt!2952) (insertAtIndex!7 (toList!94 (right!676 xs!604)) (- i!298 (size!217 (left!673 xs!604))) y!824)))))

(declare-fun b!19692 () Bool)

(assert (=> b!19692 (= e!10366 (<= (- i!298 (size!217 (left!673 xs!604))) (size!217 (right!676 xs!604))))))

(declare-fun b!19693 () Bool)

(declare-fun res!8544 () Bool)

(assert (=> b!19693 (=> (not res!8544) (not e!10367))))

(assert (=> b!19693 (= res!8544 (insertAppendAxiomInst!9 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824))))

(declare-fun b!19694 () Bool)

(assert (=> b!19694 (= e!10363 (concatNonEmpty!10 (left!673 (right!676 xs!604)) (insert!19 (right!676 (right!676 xs!604)) (- (- i!298 (size!217 (left!673 xs!604))) (size!217 (left!673 (right!676 xs!604)))) y!824)))))

(declare-fun b!19695 () Bool)

(declare-fun e!10364 () Conc!29)

(assert (=> b!19695 (= e!10364 e!10368)))

(declare-fun c!4764 () Bool)

(assert (=> b!19695 (= c!4764 (is-Single!28 (right!676 xs!604)))))

(declare-fun b!19696 () Bool)

(declare-fun e!10365 () Bool)

(assert (=> b!19696 (= e!10365 (balanced!28 lt!2952))))

(declare-fun d!12321 () Bool)

(assert (=> d!12321 e!10367))

(declare-fun res!8541 () Bool)

(assert (=> d!12321 (=> (not res!8541) (not e!10367))))

(assert (=> d!12321 (= res!8541 e!10365)))

(declare-fun res!8546 () Bool)

(assert (=> d!12321 (=> (not res!8546) (not e!10365))))

(assert (=> d!12321 (= res!8546 (concInv!27 lt!2952))))

(assert (=> d!12321 (= lt!2952 e!10364)))

(declare-fun c!4763 () Bool)

(assert (=> d!12321 (= c!4763 (is-Empty!39 (right!676 xs!604)))))

(assert (=> d!12321 e!10366))

(declare-fun res!8539 () Bool)

(assert (=> d!12321 (=> (not res!8539) (not e!10366))))

(declare-fun e!10369 () Bool)

(assert (=> d!12321 (= res!8539 e!10369)))

(declare-fun res!8545 () Bool)

(assert (=> d!12321 (=> (not res!8545) (not e!10369))))

(assert (=> d!12321 (= res!8545 (concInv!27 (right!676 xs!604)))))

(assert (=> d!12321 (= (insert!19 (right!676 xs!604) (- i!298 (size!217 (left!673 xs!604))) y!824) lt!2952)))

(declare-fun b!19697 () Bool)

(assert (=> b!19697 (= e!10363 (concatNonEmpty!10 (insert!19 (left!673 (right!676 xs!604)) (- i!298 (size!217 (left!673 xs!604))) y!824) (right!676 (right!676 xs!604))))))

(declare-fun b!19698 () Bool)

(declare-fun res!8538 () Bool)

(assert (=> b!19698 (=> (not res!8538) (not e!10367))))

(assert (=> b!19698 (= res!8538 (not (isEmpty!291 lt!2952)))))

(declare-fun b!19699 () Bool)

(assert (=> b!19699 (= e!10364 (Single!28 y!824))))

(declare-fun b!19700 () Bool)

(assert (=> b!19700 (= e!10368 (ite (= (- i!298 (size!217 (left!673 xs!604))) 0) (CC!28 (Single!28 y!824) (right!676 xs!604)) (CC!28 (right!676 xs!604) (Single!28 y!824))))))

(declare-fun b!19701 () Bool)

(assert (=> b!19701 (= e!10369 (balanced!28 (right!676 xs!604)))))

(assert (= (and d!12321 res!8545) b!19701))

(assert (= (and d!12321 res!8539) b!19689))

(assert (= (and b!19689 res!8540) b!19692))

(assert (= (and b!19690 c!4762) b!19697))

(assert (= (and b!19690 (not c!4762)) b!19694))

(assert (= (and b!19695 c!4764) b!19700))

(assert (= (and b!19695 (not c!4764)) b!19690))

(assert (= (and d!12321 c!4763) b!19699))

(assert (= (and d!12321 (not c!4763)) b!19695))

(assert (= (and d!12321 res!8546) b!19696))

(assert (= (and d!12321 res!8541) b!19688))

(assert (= (and b!19688 res!8543) b!19687))

(assert (= (and b!19687 res!8542) b!19698))

(assert (= (and b!19698 res!8538) b!19693))

(assert (= (and b!19693 res!8544) b!19691))

(declare-fun m!21849 () Bool)

(assert (=> b!19696 m!21849))

(declare-fun m!21851 () Bool)

(assert (=> b!19688 m!21851))

(assert (=> b!19688 m!21795))

(declare-fun m!21853 () Bool)

(assert (=> b!19691 m!21853))

(assert (=> b!19691 m!21785))

(assert (=> b!19691 m!21785))

(declare-fun m!21855 () Bool)

(assert (=> b!19691 m!21855))

(declare-fun m!21857 () Bool)

(assert (=> b!19697 m!21857))

(assert (=> b!19697 m!21857))

(declare-fun m!21859 () Bool)

(assert (=> b!19697 m!21859))

(declare-fun m!21861 () Bool)

(assert (=> b!19698 m!21861))

(assert (=> b!19687 m!21851))

(assert (=> b!19687 m!21795))

(declare-fun m!21863 () Bool)

(assert (=> b!19694 m!21863))

(declare-fun m!21865 () Bool)

(assert (=> b!19694 m!21865))

(assert (=> b!19694 m!21865))

(declare-fun m!21867 () Bool)

(assert (=> b!19694 m!21867))

(assert (=> b!19690 m!21863))

(assert (=> b!19701 m!21811))

(declare-fun m!21869 () Bool)

(assert (=> b!19693 m!21869))

(assert (=> b!19692 m!21799))

(declare-fun m!21871 () Bool)

(assert (=> d!12321 m!21871))

(assert (=> d!12321 m!21775))

(assert (=> b!19512 d!12321))

(assert (=> b!19512 d!12313))

(declare-fun b!19703 () Bool)

(declare-fun res!8547 () Bool)

(declare-fun e!10370 () Bool)

(assert (=> b!19703 (=> (not res!8547) (not e!10370))))

(assert (=> b!19703 (= res!8547 (<= (- (level!26 (left!673 res!5614)) (level!26 (right!676 res!5614))) 1))))

(declare-fun b!19704 () Bool)

(declare-fun res!8548 () Bool)

(assert (=> b!19704 (=> (not res!8548) (not e!10370))))

(assert (=> b!19704 (= res!8548 (balanced!28 (left!673 res!5614)))))

(declare-fun b!19705 () Bool)

(assert (=> b!19705 (= e!10370 (balanced!28 (right!676 res!5614)))))

(declare-fun d!12323 () Bool)

(declare-fun res!8550 () Bool)

(declare-fun e!10371 () Bool)

(assert (=> d!12323 (=> res!8550 e!10371)))

(assert (=> d!12323 (= res!8550 (not (is-CC!28 res!5614)))))

(assert (=> d!12323 (= (balanced!28 res!5614) e!10371)))

(declare-fun b!19702 () Bool)

(assert (=> b!19702 (= e!10371 e!10370)))

(declare-fun res!8549 () Bool)

(assert (=> b!19702 (=> (not res!8549) (not e!10370))))

(assert (=> b!19702 (= res!8549 (>= (- (level!26 (left!673 res!5614)) (level!26 (right!676 res!5614))) (- 1)))))

(assert (= (and d!12323 (not res!8550)) b!19702))

(assert (= (and b!19702 res!8549) b!19703))

(assert (= (and b!19703 res!8547) b!19704))

(assert (= (and b!19704 res!8548) b!19705))

(assert (=> b!19703 m!21793))

(assert (=> b!19703 m!21791))

(declare-fun m!21873 () Bool)

(assert (=> b!19704 m!21873))

(declare-fun m!21875 () Bool)

(assert (=> b!19705 m!21875))

(assert (=> b!19702 m!21793))

(assert (=> b!19702 m!21791))

(assert (=> b!19505 d!12323))

(declare-fun b!19712 () Bool)

(declare-fun e!10374 () Bool)

(declare-fun tp!4562 () Bool)

(declare-fun tp!4563 () Bool)

(assert (=> b!19712 (= e!10374 (and tp!4562 tp!4563))))

(declare-fun b!19713 () Bool)

(assert (=> b!19713 (= e!10374 tp_is_empty!93)))

(assert (=> b!19499 (= tp!4549 e!10374)))

(assert (= (and b!19499 (is-CC!28 (left!673 xs!604))) b!19712))

(assert (= (and b!19499 (is-Single!28 (left!673 xs!604))) b!19713))

(declare-fun b!19714 () Bool)

(declare-fun e!10375 () Bool)

(declare-fun tp!4564 () Bool)

(declare-fun tp!4565 () Bool)

(assert (=> b!19714 (= e!10375 (and tp!4564 tp!4565))))

(declare-fun b!19715 () Bool)

(assert (=> b!19715 (= e!10375 tp_is_empty!93)))

(assert (=> b!19499 (= tp!4550 e!10375)))

(assert (= (and b!19499 (is-CC!28 (right!676 xs!604))) b!19714))

(assert (= (and b!19499 (is-Single!28 (right!676 xs!604))) b!19715))

(declare-fun b!19716 () Bool)

(declare-fun e!10376 () Bool)

(declare-fun tp!4566 () Bool)

(declare-fun tp!4567 () Bool)

(assert (=> b!19716 (= e!10376 (and tp!4566 tp!4567))))

(declare-fun b!19717 () Bool)

(assert (=> b!19717 (= e!10376 tp_is_empty!93)))

(assert (=> b!19514 (= tp!4548 e!10376)))

(assert (= (and b!19514 (is-CC!28 (left!673 res!5614))) b!19716))

(assert (= (and b!19514 (is-Single!28 (left!673 res!5614))) b!19717))

(declare-fun b!19718 () Bool)

(declare-fun e!10377 () Bool)

(declare-fun tp!4568 () Bool)

(declare-fun tp!4569 () Bool)

(assert (=> b!19718 (= e!10377 (and tp!4568 tp!4569))))

(declare-fun b!19719 () Bool)

(assert (=> b!19719 (= e!10377 tp_is_empty!93)))

(assert (=> b!19514 (= tp!4551 e!10377)))

(assert (= (and b!19514 (is-CC!28 (right!676 res!5614))) b!19718))

(assert (= (and b!19514 (is-Single!28 (right!676 res!5614))) b!19719))

(declare-fun b!19724 () Bool)

(declare-fun e!10380 () Bool)

(declare-fun tp!4572 () Bool)

(assert (=> b!19724 (= e!10380 (and tp_is_empty!93 tp!4572))))

(assert (=> b!19513 (= tp!4547 e!10380)))

(assert (= (and b!19513 (is-Cons!328 (t!4329 l!802))) b!19724))

(push 1)

(assert (not b!19636))

(assert (not b!19529))

(assert (not b!19642))

(assert (not b!19528))

(assert (not b!19587))

(assert (not b!19637))

(assert (not b!19691))

(assert (not b!19701))

(assert (not b!19653))

(assert tp_is_empty!93)

(assert (not b!19652))

(assert (not b!19688))

(assert (not b!19716))

(assert (not b!19705))

(assert (not b!19712))

(assert (not b!19647))

(assert (not b!19656))

(assert (not b!19643))

(assert (not b!19590))

(assert (not b!19644))

(assert (not b!19714))

(assert (not b!19645))

(assert (not b!19687))

(assert (not b!19724))

(assert (not b!19703))

(assert (not b!19527))

(assert (not b!19549))

(assert (not b!19704))

(assert (not b!19639))

(assert (not b!19541))

(assert (not b!19573))

(assert (not b!19697))

(assert (not b!19593))

(assert (not b!19592))

(assert (not b!19591))

(assert (not b!19702))

(assert (not b!19526))

(assert (not b!19694))

(assert (not b!19651))

(assert (not b!19690))

(assert (not b!19561))

(assert (not d!12321))

(assert (not b!19696))

(assert (not b!19586))

(assert (not b!19588))

(assert (not b!19547))

(assert (not b!19577))

(assert (not b!19692))

(assert (not b!19641))

(assert (not b!19698))

(assert (not b!19589))

(assert (not d!12319))

(assert (not b!19534))

(assert (not b!19655))

(assert (not b!19718))

(assert (not b!19654))

(assert (not b!19693))

(assert (not d!12309))

(assert (not b!19535))

(assert (not b!19648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

