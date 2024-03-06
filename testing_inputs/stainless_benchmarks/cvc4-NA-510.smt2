; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3542 () Bool)

(assert start!3542)

(declare-fun e!11747 () Bool)

(declare-datatypes () ((T!1775 (T!1776 (val!60 Int)))))

(declare-datatypes () ((List!346 (Cons!340 (h!254 T!1775) (t!4341 List!346)) (Nil!341))))

(declare-fun l1!169 () List!346)

(declare-fun i!289 () Int)

(declare-fun y!811 () T!1775)

(declare-fun b!22446 () Bool)

(declare-fun l2!163 () List!346)

(declare-fun appendInsertIndex!18 (List!346 List!346 Int T!1775) Bool)

(assert (=> b!22446 (= e!11747 (not (appendInsertIndex!18 (t!4341 l1!169) l2!163 (- i!289 1) y!811)))))

(declare-fun res!9868 () Bool)

(declare-fun e!11745 () Bool)

(assert (=> start!3542 (=> (not res!9868) (not e!11745))))

(assert (=> start!3542 (= res!9868 (<= 0 i!289))))

(assert (=> start!3542 e!11745))

(assert (=> start!3542 true))

(declare-fun e!11746 () Bool)

(assert (=> start!3542 e!11746))

(declare-fun e!11743 () Bool)

(assert (=> start!3542 e!11743))

(declare-fun tp_is_empty!119 () Bool)

(assert (=> start!3542 tp_is_empty!119))

(declare-fun e!11744 () List!346)

(declare-fun b!22447 () Bool)

(declare-fun ++!26 (List!346 List!346) List!346)

(declare-fun insertAtIndex!15 (List!346 Int T!1775) List!346)

(declare-fun size!238 (List!346) Int)

(assert (=> b!22447 (= e!11744 (++!26 l1!169 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))

(declare-fun b!22448 () Bool)

(assert (=> b!22448 (= e!11744 (++!26 (insertAtIndex!15 l1!169 i!289 y!811) l2!163))))

(declare-fun b!22449 () Bool)

(declare-fun res!9869 () Bool)

(assert (=> b!22449 (=> (not res!9869) (not e!11745))))

(assert (=> b!22449 (= res!9869 (<= i!289 (+ (size!238 l1!169) (size!238 l2!163))))))

(declare-fun b!22450 () Bool)

(declare-fun e!11748 () Bool)

(assert (=> b!22450 (= e!11745 e!11748)))

(declare-fun res!9867 () Bool)

(assert (=> b!22450 (=> res!9867 e!11748)))

(assert (=> b!22450 (= res!9867 e!11747)))

(declare-fun res!9870 () Bool)

(assert (=> b!22450 (=> (not res!9870) (not e!11747))))

(assert (=> b!22450 (= res!9870 (and (not (is-Nil!341 l1!169)) (not (= i!289 0))))))

(declare-fun b!22451 () Bool)

(declare-fun tp!4954 () Bool)

(assert (=> b!22451 (= e!11746 (and tp_is_empty!119 tp!4954))))

(declare-fun b!22452 () Bool)

(declare-fun tp!4955 () Bool)

(assert (=> b!22452 (= e!11743 (and tp_is_empty!119 tp!4955))))

(declare-fun b!22453 () Bool)

(assert (=> b!22453 (= e!11748 (not (= (insertAtIndex!15 (++!26 l1!169 l2!163) i!289 y!811) e!11744)))))

(declare-fun c!5319 () Bool)

(assert (=> b!22453 (= c!5319 (< i!289 (size!238 l1!169)))))

(assert (= (and start!3542 res!9868) b!22449))

(assert (= (and b!22449 res!9869) b!22450))

(assert (= (and b!22450 res!9870) b!22446))

(assert (= (and b!22450 (not res!9867)) b!22453))

(assert (= (and b!22453 c!5319) b!22448))

(assert (= (and b!22453 (not c!5319)) b!22447))

(assert (= (and start!3542 (is-Cons!340 l1!169)) b!22451))

(assert (= (and start!3542 (is-Cons!340 l2!163)) b!22452))

(declare-fun m!24423 () Bool)

(assert (=> b!22446 m!24423))

(declare-fun m!24425 () Bool)

(assert (=> b!22447 m!24425))

(declare-fun m!24427 () Bool)

(assert (=> b!22447 m!24427))

(assert (=> b!22447 m!24427))

(declare-fun m!24429 () Bool)

(assert (=> b!22447 m!24429))

(declare-fun m!24431 () Bool)

(assert (=> b!22453 m!24431))

(assert (=> b!22453 m!24431))

(declare-fun m!24433 () Bool)

(assert (=> b!22453 m!24433))

(assert (=> b!22453 m!24425))

(assert (=> b!22449 m!24425))

(declare-fun m!24435 () Bool)

(assert (=> b!22449 m!24435))

(declare-fun m!24437 () Bool)

(assert (=> b!22448 m!24437))

(assert (=> b!22448 m!24437))

(declare-fun m!24439 () Bool)

(assert (=> b!22448 m!24439))

(push 1)

(assert (not b!22451))

(assert tp_is_empty!119)

(assert (not b!22446))

(assert (not b!22448))

(assert (not b!22449))

(assert (not b!22452))

(assert (not b!22447))

(assert (not b!22453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13139 () Bool)

(declare-fun lt!3557 () Int)

(assert (=> d!13139 (>= lt!3557 0)))

(declare-fun e!11751 () Int)

(assert (=> d!13139 (= lt!3557 e!11751)))

(declare-fun c!5322 () Bool)

(assert (=> d!13139 (= c!5322 (is-Nil!341 l1!169))))

(assert (=> d!13139 (= (size!238 l1!169) lt!3557)))

(declare-fun b!22458 () Bool)

(assert (=> b!22458 (= e!11751 0)))

(declare-fun b!22459 () Bool)

(assert (=> b!22459 (= e!11751 (+ 1 (size!238 (t!4341 l1!169))))))

(assert (= (and d!13139 c!5322) b!22458))

(assert (= (and d!13139 (not c!5322)) b!22459))

(declare-fun m!24441 () Bool)

(assert (=> b!22459 m!24441))

(assert (=> b!22449 d!13139))

(declare-fun d!13141 () Bool)

(declare-fun lt!3558 () Int)

(assert (=> d!13141 (>= lt!3558 0)))

(declare-fun e!11752 () Int)

(assert (=> d!13141 (= lt!3558 e!11752)))

(declare-fun c!5323 () Bool)

(assert (=> d!13141 (= c!5323 (is-Nil!341 l2!163))))

(assert (=> d!13141 (= (size!238 l2!163) lt!3558)))

(declare-fun b!22460 () Bool)

(assert (=> b!22460 (= e!11752 0)))

(declare-fun b!22461 () Bool)

(assert (=> b!22461 (= e!11752 (+ 1 (size!238 (t!4341 l2!163))))))

(assert (= (and d!13141 c!5323) b!22460))

(assert (= (and d!13141 (not c!5323)) b!22461))

(declare-fun m!24443 () Bool)

(assert (=> b!22461 m!24443))

(assert (=> b!22449 d!13141))

(declare-fun b!22473 () Bool)

(declare-fun lt!3561 () List!346)

(declare-fun e!11757 () Bool)

(assert (=> b!22473 (= e!11757 (or (not (= l2!163 Nil!341)) (= lt!3561 (insertAtIndex!15 l1!169 i!289 y!811))))))

(declare-fun d!13143 () Bool)

(assert (=> d!13143 e!11757))

(declare-fun res!9877 () Bool)

(assert (=> d!13143 (=> (not res!9877) (not e!11757))))

(declare-fun content!62 (List!346) (Set T!1775))

(assert (=> d!13143 (= res!9877 (= (content!62 lt!3561) (union (content!62 (insertAtIndex!15 l1!169 i!289 y!811)) (content!62 l2!163))))))

(declare-fun e!11758 () List!346)

(assert (=> d!13143 (= lt!3561 e!11758)))

(declare-fun c!5326 () Bool)

(assert (=> d!13143 (= c!5326 (is-Nil!341 (insertAtIndex!15 l1!169 i!289 y!811)))))

(assert (=> d!13143 (= (++!26 (insertAtIndex!15 l1!169 i!289 y!811) l2!163) lt!3561)))

(declare-fun b!22471 () Bool)

(assert (=> b!22471 (= e!11758 (Cons!340 (h!254 (insertAtIndex!15 l1!169 i!289 y!811)) (++!26 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811)) l2!163)))))

(declare-fun b!22470 () Bool)

(assert (=> b!22470 (= e!11758 l2!163)))

(declare-fun b!22472 () Bool)

(declare-fun res!9876 () Bool)

(assert (=> b!22472 (=> (not res!9876) (not e!11757))))

(assert (=> b!22472 (= res!9876 (= (size!238 lt!3561) (+ (size!238 (insertAtIndex!15 l1!169 i!289 y!811)) (size!238 l2!163))))))

(assert (= (and d!13143 c!5326) b!22470))

(assert (= (and d!13143 (not c!5326)) b!22471))

(assert (= (and d!13143 res!9877) b!22472))

(assert (= (and b!22472 res!9876) b!22473))

(declare-fun m!24445 () Bool)

(assert (=> d!13143 m!24445))

(assert (=> d!13143 m!24437))

(declare-fun m!24447 () Bool)

(assert (=> d!13143 m!24447))

(declare-fun m!24449 () Bool)

(assert (=> d!13143 m!24449))

(declare-fun m!24451 () Bool)

(assert (=> b!22471 m!24451))

(declare-fun m!24453 () Bool)

(assert (=> b!22472 m!24453))

(assert (=> b!22472 m!24437))

(declare-fun m!24455 () Bool)

(assert (=> b!22472 m!24455))

(assert (=> b!22472 m!24435))

(assert (=> b!22448 d!13143))

(declare-fun b!22483 () Bool)

(declare-fun e!11763 () List!346)

(declare-fun e!11764 () List!346)

(assert (=> b!22483 (= e!11763 e!11764)))

(declare-fun c!5332 () Bool)

(assert (=> b!22483 (= c!5332 (= i!289 0))))

(declare-fun b!22484 () Bool)

(assert (=> b!22484 (= e!11764 (Cons!340 y!811 l1!169))))

(declare-fun b!22482 () Bool)

(assert (=> b!22482 (= e!11763 (Cons!340 y!811 Nil!341))))

(declare-fun d!13145 () Bool)

(declare-fun c!5331 () Bool)

(assert (=> d!13145 (= c!5331 (is-Nil!341 l1!169))))

(assert (=> d!13145 (= (insertAtIndex!15 l1!169 i!289 y!811) e!11763)))

(declare-fun b!22485 () Bool)

(assert (=> b!22485 (= e!11764 (Cons!340 (h!254 l1!169) (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811)))))

(assert (= (and b!22483 c!5332) b!22484))

(assert (= (and b!22483 (not c!5332)) b!22485))

(assert (= (and d!13145 c!5331) b!22482))

(assert (= (and d!13145 (not c!5331)) b!22483))

(declare-fun m!24457 () Bool)

(assert (=> b!22485 m!24457))

(assert (=> b!22448 d!13145))

(declare-fun b!22487 () Bool)

(declare-fun e!11765 () List!346)

(declare-fun e!11766 () List!346)

(assert (=> b!22487 (= e!11765 e!11766)))

(declare-fun c!5334 () Bool)

(assert (=> b!22487 (= c!5334 (= i!289 0))))

(declare-fun b!22488 () Bool)

(assert (=> b!22488 (= e!11766 (Cons!340 y!811 (++!26 l1!169 l2!163)))))

(declare-fun b!22486 () Bool)

(assert (=> b!22486 (= e!11765 (Cons!340 y!811 Nil!341))))

(declare-fun d!13147 () Bool)

(declare-fun c!5333 () Bool)

(assert (=> d!13147 (= c!5333 (is-Nil!341 (++!26 l1!169 l2!163)))))

(assert (=> d!13147 (= (insertAtIndex!15 (++!26 l1!169 l2!163) i!289 y!811) e!11765)))

(declare-fun b!22489 () Bool)

(assert (=> b!22489 (= e!11766 (Cons!340 (h!254 (++!26 l1!169 l2!163)) (insertAtIndex!15 (t!4341 (++!26 l1!169 l2!163)) (- i!289 1) y!811)))))

(assert (= (and b!22487 c!5334) b!22488))

(assert (= (and b!22487 (not c!5334)) b!22489))

(assert (= (and d!13147 c!5333) b!22486))

(assert (= (and d!13147 (not c!5333)) b!22487))

(declare-fun m!24459 () Bool)

(assert (=> b!22489 m!24459))

(assert (=> b!22453 d!13147))

(declare-fun lt!3562 () List!346)

(declare-fun e!11767 () Bool)

(declare-fun b!22493 () Bool)

(assert (=> b!22493 (= e!11767 (or (not (= l2!163 Nil!341)) (= lt!3562 l1!169)))))

(declare-fun d!13149 () Bool)

(assert (=> d!13149 e!11767))

(declare-fun res!9879 () Bool)

(assert (=> d!13149 (=> (not res!9879) (not e!11767))))

(assert (=> d!13149 (= res!9879 (= (content!62 lt!3562) (union (content!62 l1!169) (content!62 l2!163))))))

(declare-fun e!11768 () List!346)

(assert (=> d!13149 (= lt!3562 e!11768)))

(declare-fun c!5335 () Bool)

(assert (=> d!13149 (= c!5335 (is-Nil!341 l1!169))))

(assert (=> d!13149 (= (++!26 l1!169 l2!163) lt!3562)))

(declare-fun b!22491 () Bool)

(assert (=> b!22491 (= e!11768 (Cons!340 (h!254 l1!169) (++!26 (t!4341 l1!169) l2!163)))))

(declare-fun b!22490 () Bool)

(assert (=> b!22490 (= e!11768 l2!163)))

(declare-fun b!22492 () Bool)

(declare-fun res!9878 () Bool)

(assert (=> b!22492 (=> (not res!9878) (not e!11767))))

(assert (=> b!22492 (= res!9878 (= (size!238 lt!3562) (+ (size!238 l1!169) (size!238 l2!163))))))

(assert (= (and d!13149 c!5335) b!22490))

(assert (= (and d!13149 (not c!5335)) b!22491))

(assert (= (and d!13149 res!9879) b!22492))

(assert (= (and b!22492 res!9878) b!22493))

(declare-fun m!24461 () Bool)

(assert (=> d!13149 m!24461))

(declare-fun m!24463 () Bool)

(assert (=> d!13149 m!24463))

(assert (=> d!13149 m!24449))

(declare-fun m!24465 () Bool)

(assert (=> b!22491 m!24465))

(declare-fun m!24467 () Bool)

(assert (=> b!22492 m!24467))

(assert (=> b!22492 m!24425))

(assert (=> b!22492 m!24435))

(assert (=> b!22453 d!13149))

(assert (=> b!22453 d!13139))

(declare-fun b!22497 () Bool)

(declare-fun e!11769 () Bool)

(declare-fun lt!3563 () List!346)

(assert (=> b!22497 (= e!11769 (or (not (= (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811) Nil!341)) (= lt!3563 l1!169)))))

(declare-fun d!13151 () Bool)

(assert (=> d!13151 e!11769))

(declare-fun res!9881 () Bool)

(assert (=> d!13151 (=> (not res!9881) (not e!11769))))

(assert (=> d!13151 (= res!9881 (= (content!62 lt!3563) (union (content!62 l1!169) (content!62 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))))

(declare-fun e!11770 () List!346)

(assert (=> d!13151 (= lt!3563 e!11770)))

(declare-fun c!5336 () Bool)

(assert (=> d!13151 (= c!5336 (is-Nil!341 l1!169))))

(assert (=> d!13151 (= (++!26 l1!169 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)) lt!3563)))

(declare-fun b!22495 () Bool)

(assert (=> b!22495 (= e!11770 (Cons!340 (h!254 l1!169) (++!26 (t!4341 l1!169) (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811))))))

(declare-fun b!22494 () Bool)

(assert (=> b!22494 (= e!11770 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811))))

(declare-fun b!22496 () Bool)

(declare-fun res!9880 () Bool)

(assert (=> b!22496 (=> (not res!9880) (not e!11769))))

(assert (=> b!22496 (= res!9880 (= (size!238 lt!3563) (+ (size!238 l1!169) (size!238 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))))

(assert (= (and d!13151 c!5336) b!22494))

(assert (= (and d!13151 (not c!5336)) b!22495))

(assert (= (and d!13151 res!9881) b!22496))

(assert (= (and b!22496 res!9880) b!22497))

(declare-fun m!24469 () Bool)

(assert (=> d!13151 m!24469))

(assert (=> d!13151 m!24463))

(assert (=> d!13151 m!24427))

(declare-fun m!24471 () Bool)

(assert (=> d!13151 m!24471))

(assert (=> b!22495 m!24427))

(declare-fun m!24473 () Bool)

(assert (=> b!22495 m!24473))

(declare-fun m!24475 () Bool)

(assert (=> b!22496 m!24475))

(assert (=> b!22496 m!24425))

(assert (=> b!22496 m!24427))

(declare-fun m!24477 () Bool)

(assert (=> b!22496 m!24477))

(assert (=> b!22447 d!13151))

(declare-fun b!22499 () Bool)

(declare-fun e!11771 () List!346)

(declare-fun e!11772 () List!346)

(assert (=> b!22499 (= e!11771 e!11772)))

(declare-fun c!5338 () Bool)

(assert (=> b!22499 (= c!5338 (= (- i!289 (size!238 l1!169)) 0))))

(declare-fun b!22500 () Bool)

(assert (=> b!22500 (= e!11772 (Cons!340 y!811 l2!163))))

(declare-fun b!22498 () Bool)

(assert (=> b!22498 (= e!11771 (Cons!340 y!811 Nil!341))))

(declare-fun d!13153 () Bool)

(declare-fun c!5337 () Bool)

(assert (=> d!13153 (= c!5337 (is-Nil!341 l2!163))))

(assert (=> d!13153 (= (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811) e!11771)))

(declare-fun b!22501 () Bool)

(assert (=> b!22501 (= e!11772 (Cons!340 (h!254 l2!163) (insertAtIndex!15 (t!4341 l2!163) (- (- i!289 (size!238 l1!169)) 1) y!811)))))

(assert (= (and b!22499 c!5338) b!22500))

(assert (= (and b!22499 (not c!5338)) b!22501))

(assert (= (and d!13153 c!5337) b!22498))

(assert (= (and d!13153 (not c!5337)) b!22499))

(declare-fun m!24479 () Bool)

(assert (=> b!22501 m!24479))

(assert (=> b!22447 d!13153))

(assert (=> b!22447 d!13139))

(declare-fun b!22512 () Bool)

(declare-fun e!11782 () Bool)

(assert (=> b!22512 (= e!11782 (<= (- i!289 1) (+ (size!238 (t!4341 l1!169)) (size!238 l2!163))))))

(declare-fun e!11783 () List!346)

(declare-fun b!22513 () Bool)

(assert (=> b!22513 (= e!11783 (++!26 (t!4341 l1!169) (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811)))))

(declare-fun b!22514 () Bool)

(assert (=> b!22514 (= e!11783 (++!26 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811) l2!163))))

(declare-fun d!13155 () Bool)

(declare-fun e!11784 () Bool)

(assert (=> d!13155 e!11784))

(declare-fun res!9889 () Bool)

(assert (=> d!13155 (=> (not res!9889) (not e!11784))))

(declare-fun e!11781 () Bool)

(assert (=> d!13155 (= res!9889 e!11781)))

(declare-fun res!9890 () Bool)

(assert (=> d!13155 (=> res!9890 e!11781)))

(assert (=> d!13155 (= res!9890 (or (is-Nil!341 (t!4341 l1!169)) (= (- i!289 1) 0)))))

(assert (=> d!13155 e!11782))

(declare-fun res!9888 () Bool)

(assert (=> d!13155 (=> (not res!9888) (not e!11782))))

(assert (=> d!13155 (= res!9888 (<= 0 (- i!289 1)))))

(assert (=> d!13155 (= (appendInsertIndex!18 (t!4341 l1!169) l2!163 (- i!289 1) y!811) true)))

(declare-fun b!22515 () Bool)

(assert (=> b!22515 (= e!11781 (appendInsertIndex!18 (t!4341 (t!4341 l1!169)) l2!163 (- (- i!289 1) 1) y!811))))

(declare-fun b!22516 () Bool)

(assert (=> b!22516 (= e!11784 (= (insertAtIndex!15 (++!26 (t!4341 l1!169) l2!163) (- i!289 1) y!811) e!11783))))

(declare-fun c!5341 () Bool)

(assert (=> b!22516 (= c!5341 (< (- i!289 1) (size!238 (t!4341 l1!169))))))

(assert (= (and d!13155 res!9888) b!22512))

(assert (= (and d!13155 (not res!9890)) b!22515))

(assert (= (and d!13155 res!9889) b!22516))

(assert (= (and b!22516 c!5341) b!22514))

(assert (= (and b!22516 (not c!5341)) b!22513))

(assert (=> b!22513 m!24441))

(declare-fun m!24481 () Bool)

(assert (=> b!22513 m!24481))

(assert (=> b!22513 m!24481))

(declare-fun m!24483 () Bool)

(assert (=> b!22513 m!24483))

(assert (=> b!22512 m!24441))

(assert (=> b!22512 m!24435))

(assert (=> b!22514 m!24457))

(assert (=> b!22514 m!24457))

(declare-fun m!24485 () Bool)

(assert (=> b!22514 m!24485))

(declare-fun m!24487 () Bool)

(assert (=> b!22515 m!24487))

(assert (=> b!22516 m!24465))

(assert (=> b!22516 m!24465))

(declare-fun m!24489 () Bool)

(assert (=> b!22516 m!24489))

(assert (=> b!22516 m!24441))

(assert (=> b!22446 d!13155))

(declare-fun b!22521 () Bool)

(declare-fun e!11787 () Bool)

(declare-fun tp!4958 () Bool)

(assert (=> b!22521 (= e!11787 (and tp_is_empty!119 tp!4958))))

(assert (=> b!22452 (= tp!4955 e!11787)))

(assert (= (and b!22452 (is-Cons!340 (t!4341 l2!163))) b!22521))

(declare-fun b!22522 () Bool)

(declare-fun e!11788 () Bool)

(declare-fun tp!4959 () Bool)

(assert (=> b!22522 (= e!11788 (and tp_is_empty!119 tp!4959))))

(assert (=> b!22451 (= tp!4954 e!11788)))

(assert (= (and b!22451 (is-Cons!340 (t!4341 l1!169))) b!22522))

(push 1)

(assert (not d!13151))

(assert (not d!13143))

(assert tp_is_empty!119)

(assert (not b!22521))

(assert (not b!22515))

(assert (not b!22522))

(assert (not b!22489))

(assert (not b!22491))

(assert (not b!22516))

(assert (not d!13149))

(assert (not b!22461))

(assert (not b!22512))

(assert (not b!22495))

(assert (not b!22501))

(assert (not b!22513))

(assert (not b!22459))

(assert (not b!22514))

(assert (not b!22492))

(assert (not b!22472))

(assert (not b!22471))

(assert (not b!22496))

(assert (not b!22485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13157 () Bool)

(declare-fun lt!3564 () Int)

(assert (=> d!13157 (>= lt!3564 0)))

(declare-fun e!11789 () Int)

(assert (=> d!13157 (= lt!3564 e!11789)))

(declare-fun c!5342 () Bool)

(assert (=> d!13157 (= c!5342 (is-Nil!341 (t!4341 l1!169)))))

(assert (=> d!13157 (= (size!238 (t!4341 l1!169)) lt!3564)))

(declare-fun b!22523 () Bool)

(assert (=> b!22523 (= e!11789 0)))

(declare-fun b!22524 () Bool)

(assert (=> b!22524 (= e!11789 (+ 1 (size!238 (t!4341 (t!4341 l1!169)))))))

(assert (= (and d!13157 c!5342) b!22523))

(assert (= (and d!13157 (not c!5342)) b!22524))

(declare-fun m!24491 () Bool)

(assert (=> b!22524 m!24491))

(assert (=> b!22512 d!13157))

(assert (=> b!22512 d!13141))

(declare-fun d!13159 () Bool)

(declare-fun c!5345 () Bool)

(assert (=> d!13159 (= c!5345 (is-Nil!341 lt!3561))))

(declare-fun e!11792 () (Set T!1775))

(assert (=> d!13159 (= (content!62 lt!3561) e!11792)))

(declare-fun b!22529 () Bool)

(assert (=> b!22529 (= e!11792 (as emptyset (Set T!1775)))))

(declare-fun b!22530 () Bool)

(assert (=> b!22530 (= e!11792 (union (insert (h!254 lt!3561) (as emptyset (Set T!1775))) (content!62 (t!4341 lt!3561))))))

(assert (= (and d!13159 c!5345) b!22529))

(assert (= (and d!13159 (not c!5345)) b!22530))

(declare-fun m!24493 () Bool)

(assert (=> b!22530 m!24493))

(declare-fun m!24495 () Bool)

(assert (=> b!22530 m!24495))

(assert (=> d!13143 d!13159))

(declare-fun c!5346 () Bool)

(declare-fun d!13161 () Bool)

(assert (=> d!13161 (= c!5346 (is-Nil!341 (insertAtIndex!15 l1!169 i!289 y!811)))))

(declare-fun e!11793 () (Set T!1775))

(assert (=> d!13161 (= (content!62 (insertAtIndex!15 l1!169 i!289 y!811)) e!11793)))

(declare-fun b!22531 () Bool)

(assert (=> b!22531 (= e!11793 (as emptyset (Set T!1775)))))

(declare-fun b!22532 () Bool)

(assert (=> b!22532 (= e!11793 (union (insert (h!254 (insertAtIndex!15 l1!169 i!289 y!811)) (as emptyset (Set T!1775))) (content!62 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811)))))))

(assert (= (and d!13161 c!5346) b!22531))

(assert (= (and d!13161 (not c!5346)) b!22532))

(declare-fun m!24497 () Bool)

(assert (=> b!22532 m!24497))

(declare-fun m!24499 () Bool)

(assert (=> b!22532 m!24499))

(assert (=> d!13143 d!13161))

(declare-fun d!13163 () Bool)

(declare-fun c!5347 () Bool)

(assert (=> d!13163 (= c!5347 (is-Nil!341 l2!163))))

(declare-fun e!11794 () (Set T!1775))

(assert (=> d!13163 (= (content!62 l2!163) e!11794)))

(declare-fun b!22533 () Bool)

(assert (=> b!22533 (= e!11794 (as emptyset (Set T!1775)))))

(declare-fun b!22534 () Bool)

(assert (=> b!22534 (= e!11794 (union (insert (h!254 l2!163) (as emptyset (Set T!1775))) (content!62 (t!4341 l2!163))))))

(assert (= (and d!13163 c!5347) b!22533))

(assert (= (and d!13163 (not c!5347)) b!22534))

(declare-fun m!24501 () Bool)

(assert (=> b!22534 m!24501))

(declare-fun m!24503 () Bool)

(assert (=> b!22534 m!24503))

(assert (=> d!13143 d!13163))

(declare-fun d!13165 () Bool)

(declare-fun lt!3565 () Int)

(assert (=> d!13165 (>= lt!3565 0)))

(declare-fun e!11795 () Int)

(assert (=> d!13165 (= lt!3565 e!11795)))

(declare-fun c!5348 () Bool)

(assert (=> d!13165 (= c!5348 (is-Nil!341 lt!3562))))

(assert (=> d!13165 (= (size!238 lt!3562) lt!3565)))

(declare-fun b!22535 () Bool)

(assert (=> b!22535 (= e!11795 0)))

(declare-fun b!22536 () Bool)

(assert (=> b!22536 (= e!11795 (+ 1 (size!238 (t!4341 lt!3562))))))

(assert (= (and d!13165 c!5348) b!22535))

(assert (= (and d!13165 (not c!5348)) b!22536))

(declare-fun m!24505 () Bool)

(assert (=> b!22536 m!24505))

(assert (=> b!22492 d!13165))

(assert (=> b!22492 d!13139))

(assert (=> b!22492 d!13141))

(declare-fun d!13167 () Bool)

(declare-fun lt!3566 () Int)

(assert (=> d!13167 (>= lt!3566 0)))

(declare-fun e!11796 () Int)

(assert (=> d!13167 (= lt!3566 e!11796)))

(declare-fun c!5349 () Bool)

(assert (=> d!13167 (= c!5349 (is-Nil!341 lt!3563))))

(assert (=> d!13167 (= (size!238 lt!3563) lt!3566)))

(declare-fun b!22537 () Bool)

(assert (=> b!22537 (= e!11796 0)))

(declare-fun b!22538 () Bool)

(assert (=> b!22538 (= e!11796 (+ 1 (size!238 (t!4341 lt!3563))))))

(assert (= (and d!13167 c!5349) b!22537))

(assert (= (and d!13167 (not c!5349)) b!22538))

(declare-fun m!24507 () Bool)

(assert (=> b!22538 m!24507))

(assert (=> b!22496 d!13167))

(assert (=> b!22496 d!13139))

(declare-fun d!13169 () Bool)

(declare-fun lt!3567 () Int)

(assert (=> d!13169 (>= lt!3567 0)))

(declare-fun e!11797 () Int)

(assert (=> d!13169 (= lt!3567 e!11797)))

(declare-fun c!5350 () Bool)

(assert (=> d!13169 (= c!5350 (is-Nil!341 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))

(assert (=> d!13169 (= (size!238 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)) lt!3567)))

(declare-fun b!22539 () Bool)

(assert (=> b!22539 (= e!11797 0)))

(declare-fun b!22540 () Bool)

(assert (=> b!22540 (= e!11797 (+ 1 (size!238 (t!4341 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))))

(assert (= (and d!13169 c!5350) b!22539))

(assert (= (and d!13169 (not c!5350)) b!22540))

(declare-fun m!24509 () Bool)

(assert (=> b!22540 m!24509))

(assert (=> b!22496 d!13169))

(declare-fun d!13171 () Bool)

(declare-fun c!5351 () Bool)

(assert (=> d!13171 (= c!5351 (is-Nil!341 lt!3563))))

(declare-fun e!11798 () (Set T!1775))

(assert (=> d!13171 (= (content!62 lt!3563) e!11798)))

(declare-fun b!22541 () Bool)

(assert (=> b!22541 (= e!11798 (as emptyset (Set T!1775)))))

(declare-fun b!22542 () Bool)

(assert (=> b!22542 (= e!11798 (union (insert (h!254 lt!3563) (as emptyset (Set T!1775))) (content!62 (t!4341 lt!3563))))))

(assert (= (and d!13171 c!5351) b!22541))

(assert (= (and d!13171 (not c!5351)) b!22542))

(declare-fun m!24511 () Bool)

(assert (=> b!22542 m!24511))

(declare-fun m!24513 () Bool)

(assert (=> b!22542 m!24513))

(assert (=> d!13151 d!13171))

(declare-fun d!13173 () Bool)

(declare-fun c!5352 () Bool)

(assert (=> d!13173 (= c!5352 (is-Nil!341 l1!169))))

(declare-fun e!11799 () (Set T!1775))

(assert (=> d!13173 (= (content!62 l1!169) e!11799)))

(declare-fun b!22543 () Bool)

(assert (=> b!22543 (= e!11799 (as emptyset (Set T!1775)))))

(declare-fun b!22544 () Bool)

(assert (=> b!22544 (= e!11799 (union (insert (h!254 l1!169) (as emptyset (Set T!1775))) (content!62 (t!4341 l1!169))))))

(assert (= (and d!13173 c!5352) b!22543))

(assert (= (and d!13173 (not c!5352)) b!22544))

(declare-fun m!24515 () Bool)

(assert (=> b!22544 m!24515))

(declare-fun m!24517 () Bool)

(assert (=> b!22544 m!24517))

(assert (=> d!13151 d!13173))

(declare-fun c!5353 () Bool)

(declare-fun d!13175 () Bool)

(assert (=> d!13175 (= c!5353 (is-Nil!341 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))

(declare-fun e!11800 () (Set T!1775))

(assert (=> d!13175 (= (content!62 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)) e!11800)))

(declare-fun b!22545 () Bool)

(assert (=> b!22545 (= e!11800 (as emptyset (Set T!1775)))))

(declare-fun b!22546 () Bool)

(assert (=> b!22546 (= e!11800 (union (insert (h!254 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)) (as emptyset (Set T!1775))) (content!62 (t!4341 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))))

(assert (= (and d!13175 c!5353) b!22545))

(assert (= (and d!13175 (not c!5353)) b!22546))

(declare-fun m!24519 () Bool)

(assert (=> b!22546 m!24519))

(declare-fun m!24521 () Bool)

(assert (=> b!22546 m!24521))

(assert (=> d!13151 d!13175))

(declare-fun b!22548 () Bool)

(declare-fun e!11801 () List!346)

(declare-fun e!11802 () List!346)

(assert (=> b!22548 (= e!11801 e!11802)))

(declare-fun c!5355 () Bool)

(assert (=> b!22548 (= c!5355 (= (- i!289 1) 0))))

(declare-fun b!22549 () Bool)

(assert (=> b!22549 (= e!11802 (Cons!340 y!811 (t!4341 l1!169)))))

(declare-fun b!22547 () Bool)

(assert (=> b!22547 (= e!11801 (Cons!340 y!811 Nil!341))))

(declare-fun d!13177 () Bool)

(declare-fun c!5354 () Bool)

(assert (=> d!13177 (= c!5354 (is-Nil!341 (t!4341 l1!169)))))

(assert (=> d!13177 (= (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811) e!11801)))

(declare-fun b!22550 () Bool)

(assert (=> b!22550 (= e!11802 (Cons!340 (h!254 (t!4341 l1!169)) (insertAtIndex!15 (t!4341 (t!4341 l1!169)) (- (- i!289 1) 1) y!811)))))

(assert (= (and b!22548 c!5355) b!22549))

(assert (= (and b!22548 (not c!5355)) b!22550))

(assert (= (and d!13177 c!5354) b!22547))

(assert (= (and d!13177 (not c!5354)) b!22548))

(declare-fun m!24523 () Bool)

(assert (=> b!22550 m!24523))

(assert (=> b!22485 d!13177))

(declare-fun e!11804 () Bool)

(declare-fun b!22551 () Bool)

(assert (=> b!22551 (= e!11804 (<= (- (- i!289 1) 1) (+ (size!238 (t!4341 (t!4341 l1!169))) (size!238 l2!163))))))

(declare-fun e!11805 () List!346)

(declare-fun b!22552 () Bool)

(assert (=> b!22552 (= e!11805 (++!26 (t!4341 (t!4341 l1!169)) (insertAtIndex!15 l2!163 (- (- (- i!289 1) 1) (size!238 (t!4341 (t!4341 l1!169)))) y!811)))))

(declare-fun b!22553 () Bool)

(assert (=> b!22553 (= e!11805 (++!26 (insertAtIndex!15 (t!4341 (t!4341 l1!169)) (- (- i!289 1) 1) y!811) l2!163))))

(declare-fun d!13179 () Bool)

(declare-fun e!11806 () Bool)

(assert (=> d!13179 e!11806))

(declare-fun res!9892 () Bool)

(assert (=> d!13179 (=> (not res!9892) (not e!11806))))

(declare-fun e!11803 () Bool)

(assert (=> d!13179 (= res!9892 e!11803)))

(declare-fun res!9893 () Bool)

(assert (=> d!13179 (=> res!9893 e!11803)))

(assert (=> d!13179 (= res!9893 (or (is-Nil!341 (t!4341 (t!4341 l1!169))) (= (- (- i!289 1) 1) 0)))))

(assert (=> d!13179 e!11804))

(declare-fun res!9891 () Bool)

(assert (=> d!13179 (=> (not res!9891) (not e!11804))))

(assert (=> d!13179 (= res!9891 (<= 0 (- (- i!289 1) 1)))))

(assert (=> d!13179 (= (appendInsertIndex!18 (t!4341 (t!4341 l1!169)) l2!163 (- (- i!289 1) 1) y!811) true)))

(declare-fun b!22554 () Bool)

(assert (=> b!22554 (= e!11803 (appendInsertIndex!18 (t!4341 (t!4341 (t!4341 l1!169))) l2!163 (- (- (- i!289 1) 1) 1) y!811))))

(declare-fun b!22555 () Bool)

(assert (=> b!22555 (= e!11806 (= (insertAtIndex!15 (++!26 (t!4341 (t!4341 l1!169)) l2!163) (- (- i!289 1) 1) y!811) e!11805))))

(declare-fun c!5356 () Bool)

(assert (=> b!22555 (= c!5356 (< (- (- i!289 1) 1) (size!238 (t!4341 (t!4341 l1!169)))))))

(assert (= (and d!13179 res!9891) b!22551))

(assert (= (and d!13179 (not res!9893)) b!22554))

(assert (= (and d!13179 res!9892) b!22555))

(assert (= (and b!22555 c!5356) b!22553))

(assert (= (and b!22555 (not c!5356)) b!22552))

(assert (=> b!22552 m!24491))

(declare-fun m!24525 () Bool)

(assert (=> b!22552 m!24525))

(assert (=> b!22552 m!24525))

(declare-fun m!24527 () Bool)

(assert (=> b!22552 m!24527))

(assert (=> b!22551 m!24491))

(assert (=> b!22551 m!24435))

(assert (=> b!22553 m!24523))

(assert (=> b!22553 m!24523))

(declare-fun m!24529 () Bool)

(assert (=> b!22553 m!24529))

(declare-fun m!24531 () Bool)

(assert (=> b!22554 m!24531))

(declare-fun m!24533 () Bool)

(assert (=> b!22555 m!24533))

(assert (=> b!22555 m!24533))

(declare-fun m!24535 () Bool)

(assert (=> b!22555 m!24535))

(assert (=> b!22555 m!24491))

(assert (=> b!22515 d!13179))

(assert (=> b!22459 d!13157))

(declare-fun d!13181 () Bool)

(declare-fun lt!3568 () Int)

(assert (=> d!13181 (>= lt!3568 0)))

(declare-fun e!11807 () Int)

(assert (=> d!13181 (= lt!3568 e!11807)))

(declare-fun c!5357 () Bool)

(assert (=> d!13181 (= c!5357 (is-Nil!341 (t!4341 l2!163)))))

(assert (=> d!13181 (= (size!238 (t!4341 l2!163)) lt!3568)))

(declare-fun b!22556 () Bool)

(assert (=> b!22556 (= e!11807 0)))

(declare-fun b!22557 () Bool)

(assert (=> b!22557 (= e!11807 (+ 1 (size!238 (t!4341 (t!4341 l2!163)))))))

(assert (= (and d!13181 c!5357) b!22556))

(assert (= (and d!13181 (not c!5357)) b!22557))

(declare-fun m!24537 () Bool)

(assert (=> b!22557 m!24537))

(assert (=> b!22461 d!13181))

(declare-fun e!11808 () Bool)

(declare-fun lt!3569 () List!346)

(declare-fun b!22561 () Bool)

(assert (=> b!22561 (= e!11808 (or (not (= l2!163 Nil!341)) (= lt!3569 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811)))))))

(declare-fun d!13183 () Bool)

(assert (=> d!13183 e!11808))

(declare-fun res!9895 () Bool)

(assert (=> d!13183 (=> (not res!9895) (not e!11808))))

(assert (=> d!13183 (= res!9895 (= (content!62 lt!3569) (union (content!62 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811))) (content!62 l2!163))))))

(declare-fun e!11809 () List!346)

(assert (=> d!13183 (= lt!3569 e!11809)))

(declare-fun c!5358 () Bool)

(assert (=> d!13183 (= c!5358 (is-Nil!341 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811))))))

(assert (=> d!13183 (= (++!26 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811)) l2!163) lt!3569)))

(declare-fun b!22559 () Bool)

(assert (=> b!22559 (= e!11809 (Cons!340 (h!254 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811))) (++!26 (t!4341 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811))) l2!163)))))

(declare-fun b!22558 () Bool)

(assert (=> b!22558 (= e!11809 l2!163)))

(declare-fun b!22560 () Bool)

(declare-fun res!9894 () Bool)

(assert (=> b!22560 (=> (not res!9894) (not e!11808))))

(assert (=> b!22560 (= res!9894 (= (size!238 lt!3569) (+ (size!238 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811))) (size!238 l2!163))))))

(assert (= (and d!13183 c!5358) b!22558))

(assert (= (and d!13183 (not c!5358)) b!22559))

(assert (= (and d!13183 res!9895) b!22560))

(assert (= (and b!22560 res!9894) b!22561))

(declare-fun m!24539 () Bool)

(assert (=> d!13183 m!24539))

(assert (=> d!13183 m!24499))

(assert (=> d!13183 m!24449))

(declare-fun m!24541 () Bool)

(assert (=> b!22559 m!24541))

(declare-fun m!24543 () Bool)

(assert (=> b!22560 m!24543))

(declare-fun m!24545 () Bool)

(assert (=> b!22560 m!24545))

(assert (=> b!22560 m!24435))

(assert (=> b!22471 d!13183))

(declare-fun b!22563 () Bool)

(declare-fun e!11810 () List!346)

(declare-fun e!11811 () List!346)

(assert (=> b!22563 (= e!11810 e!11811)))

(declare-fun c!5360 () Bool)

(assert (=> b!22563 (= c!5360 (= (- i!289 1) 0))))

(declare-fun b!22564 () Bool)

(assert (=> b!22564 (= e!11811 (Cons!340 y!811 (t!4341 (++!26 l1!169 l2!163))))))

(declare-fun b!22562 () Bool)

(assert (=> b!22562 (= e!11810 (Cons!340 y!811 Nil!341))))

(declare-fun d!13185 () Bool)

(declare-fun c!5359 () Bool)

(assert (=> d!13185 (= c!5359 (is-Nil!341 (t!4341 (++!26 l1!169 l2!163))))))

(assert (=> d!13185 (= (insertAtIndex!15 (t!4341 (++!26 l1!169 l2!163)) (- i!289 1) y!811) e!11810)))

(declare-fun b!22565 () Bool)

(assert (=> b!22565 (= e!11811 (Cons!340 (h!254 (t!4341 (++!26 l1!169 l2!163))) (insertAtIndex!15 (t!4341 (t!4341 (++!26 l1!169 l2!163))) (- (- i!289 1) 1) y!811)))))

(assert (= (and b!22563 c!5360) b!22564))

(assert (= (and b!22563 (not c!5360)) b!22565))

(assert (= (and d!13185 c!5359) b!22562))

(assert (= (and d!13185 (not c!5359)) b!22563))

(declare-fun m!24547 () Bool)

(assert (=> b!22565 m!24547))

(assert (=> b!22489 d!13185))

(declare-fun d!13187 () Bool)

(declare-fun lt!3570 () Int)

(assert (=> d!13187 (>= lt!3570 0)))

(declare-fun e!11812 () Int)

(assert (=> d!13187 (= lt!3570 e!11812)))

(declare-fun c!5361 () Bool)

(assert (=> d!13187 (= c!5361 (is-Nil!341 lt!3561))))

(assert (=> d!13187 (= (size!238 lt!3561) lt!3570)))

(declare-fun b!22566 () Bool)

(assert (=> b!22566 (= e!11812 0)))

(declare-fun b!22567 () Bool)

(assert (=> b!22567 (= e!11812 (+ 1 (size!238 (t!4341 lt!3561))))))

(assert (= (and d!13187 c!5361) b!22566))

(assert (= (and d!13187 (not c!5361)) b!22567))

(declare-fun m!24549 () Bool)

(assert (=> b!22567 m!24549))

(assert (=> b!22472 d!13187))

(declare-fun d!13189 () Bool)

(declare-fun lt!3571 () Int)

(assert (=> d!13189 (>= lt!3571 0)))

(declare-fun e!11813 () Int)

(assert (=> d!13189 (= lt!3571 e!11813)))

(declare-fun c!5362 () Bool)

(assert (=> d!13189 (= c!5362 (is-Nil!341 (insertAtIndex!15 l1!169 i!289 y!811)))))

(assert (=> d!13189 (= (size!238 (insertAtIndex!15 l1!169 i!289 y!811)) lt!3571)))

(declare-fun b!22568 () Bool)

(assert (=> b!22568 (= e!11813 0)))

(declare-fun b!22569 () Bool)

(assert (=> b!22569 (= e!11813 (+ 1 (size!238 (t!4341 (insertAtIndex!15 l1!169 i!289 y!811)))))))

(assert (= (and d!13189 c!5362) b!22568))

(assert (= (and d!13189 (not c!5362)) b!22569))

(assert (=> b!22569 m!24545))

(assert (=> b!22472 d!13189))

(assert (=> b!22472 d!13141))

(declare-fun b!22571 () Bool)

(declare-fun e!11814 () List!346)

(declare-fun e!11815 () List!346)

(assert (=> b!22571 (= e!11814 e!11815)))

(declare-fun c!5364 () Bool)

(assert (=> b!22571 (= c!5364 (= (- (- i!289 (size!238 l1!169)) 1) 0))))

(declare-fun b!22572 () Bool)

(assert (=> b!22572 (= e!11815 (Cons!340 y!811 (t!4341 l2!163)))))

(declare-fun b!22570 () Bool)

(assert (=> b!22570 (= e!11814 (Cons!340 y!811 Nil!341))))

(declare-fun d!13191 () Bool)

(declare-fun c!5363 () Bool)

(assert (=> d!13191 (= c!5363 (is-Nil!341 (t!4341 l2!163)))))

(assert (=> d!13191 (= (insertAtIndex!15 (t!4341 l2!163) (- (- i!289 (size!238 l1!169)) 1) y!811) e!11814)))

(declare-fun b!22573 () Bool)

(assert (=> b!22573 (= e!11815 (Cons!340 (h!254 (t!4341 l2!163)) (insertAtIndex!15 (t!4341 (t!4341 l2!163)) (- (- (- i!289 (size!238 l1!169)) 1) 1) y!811)))))

(assert (= (and b!22571 c!5364) b!22572))

(assert (= (and b!22571 (not c!5364)) b!22573))

(assert (= (and d!13191 c!5363) b!22570))

(assert (= (and d!13191 (not c!5363)) b!22571))

(declare-fun m!24551 () Bool)

(assert (=> b!22573 m!24551))

(assert (=> b!22501 d!13191))

(declare-fun e!11816 () Bool)

(declare-fun b!22577 () Bool)

(declare-fun lt!3572 () List!346)

(assert (=> b!22577 (= e!11816 (or (not (= l2!163 Nil!341)) (= lt!3572 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811))))))

(declare-fun d!13193 () Bool)

(assert (=> d!13193 e!11816))

(declare-fun res!9897 () Bool)

(assert (=> d!13193 (=> (not res!9897) (not e!11816))))

(assert (=> d!13193 (= res!9897 (= (content!62 lt!3572) (union (content!62 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811)) (content!62 l2!163))))))

(declare-fun e!11817 () List!346)

(assert (=> d!13193 (= lt!3572 e!11817)))

(declare-fun c!5365 () Bool)

(assert (=> d!13193 (= c!5365 (is-Nil!341 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811)))))

(assert (=> d!13193 (= (++!26 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811) l2!163) lt!3572)))

(declare-fun b!22575 () Bool)

(assert (=> b!22575 (= e!11817 (Cons!340 (h!254 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811)) (++!26 (t!4341 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811)) l2!163)))))

(declare-fun b!22574 () Bool)

(assert (=> b!22574 (= e!11817 l2!163)))

(declare-fun b!22576 () Bool)

(declare-fun res!9896 () Bool)

(assert (=> b!22576 (=> (not res!9896) (not e!11816))))

(assert (=> b!22576 (= res!9896 (= (size!238 lt!3572) (+ (size!238 (insertAtIndex!15 (t!4341 l1!169) (- i!289 1) y!811)) (size!238 l2!163))))))

(assert (= (and d!13193 c!5365) b!22574))

(assert (= (and d!13193 (not c!5365)) b!22575))

(assert (= (and d!13193 res!9897) b!22576))

(assert (= (and b!22576 res!9896) b!22577))

(declare-fun m!24553 () Bool)

(assert (=> d!13193 m!24553))

(assert (=> d!13193 m!24457))

(declare-fun m!24555 () Bool)

(assert (=> d!13193 m!24555))

(assert (=> d!13193 m!24449))

(declare-fun m!24557 () Bool)

(assert (=> b!22575 m!24557))

(declare-fun m!24559 () Bool)

(assert (=> b!22576 m!24559))

(assert (=> b!22576 m!24457))

(declare-fun m!24561 () Bool)

(assert (=> b!22576 m!24561))

(assert (=> b!22576 m!24435))

(assert (=> b!22514 d!13193))

(assert (=> b!22514 d!13177))

(declare-fun b!22579 () Bool)

(declare-fun e!11818 () List!346)

(declare-fun e!11819 () List!346)

(assert (=> b!22579 (= e!11818 e!11819)))

(declare-fun c!5367 () Bool)

(assert (=> b!22579 (= c!5367 (= (- i!289 1) 0))))

(declare-fun b!22580 () Bool)

(assert (=> b!22580 (= e!11819 (Cons!340 y!811 (++!26 (t!4341 l1!169) l2!163)))))

(declare-fun b!22578 () Bool)

(assert (=> b!22578 (= e!11818 (Cons!340 y!811 Nil!341))))

(declare-fun d!13195 () Bool)

(declare-fun c!5366 () Bool)

(assert (=> d!13195 (= c!5366 (is-Nil!341 (++!26 (t!4341 l1!169) l2!163)))))

(assert (=> d!13195 (= (insertAtIndex!15 (++!26 (t!4341 l1!169) l2!163) (- i!289 1) y!811) e!11818)))

(declare-fun b!22581 () Bool)

(assert (=> b!22581 (= e!11819 (Cons!340 (h!254 (++!26 (t!4341 l1!169) l2!163)) (insertAtIndex!15 (t!4341 (++!26 (t!4341 l1!169) l2!163)) (- (- i!289 1) 1) y!811)))))

(assert (= (and b!22579 c!5367) b!22580))

(assert (= (and b!22579 (not c!5367)) b!22581))

(assert (= (and d!13195 c!5366) b!22578))

(assert (= (and d!13195 (not c!5366)) b!22579))

(declare-fun m!24563 () Bool)

(assert (=> b!22581 m!24563))

(assert (=> b!22516 d!13195))

(declare-fun lt!3573 () List!346)

(declare-fun b!22585 () Bool)

(declare-fun e!11820 () Bool)

(assert (=> b!22585 (= e!11820 (or (not (= l2!163 Nil!341)) (= lt!3573 (t!4341 l1!169))))))

(declare-fun d!13197 () Bool)

(assert (=> d!13197 e!11820))

(declare-fun res!9899 () Bool)

(assert (=> d!13197 (=> (not res!9899) (not e!11820))))

(assert (=> d!13197 (= res!9899 (= (content!62 lt!3573) (union (content!62 (t!4341 l1!169)) (content!62 l2!163))))))

(declare-fun e!11821 () List!346)

(assert (=> d!13197 (= lt!3573 e!11821)))

(declare-fun c!5368 () Bool)

(assert (=> d!13197 (= c!5368 (is-Nil!341 (t!4341 l1!169)))))

(assert (=> d!13197 (= (++!26 (t!4341 l1!169) l2!163) lt!3573)))

(declare-fun b!22583 () Bool)

(assert (=> b!22583 (= e!11821 (Cons!340 (h!254 (t!4341 l1!169)) (++!26 (t!4341 (t!4341 l1!169)) l2!163)))))

(declare-fun b!22582 () Bool)

(assert (=> b!22582 (= e!11821 l2!163)))

(declare-fun b!22584 () Bool)

(declare-fun res!9898 () Bool)

(assert (=> b!22584 (=> (not res!9898) (not e!11820))))

(assert (=> b!22584 (= res!9898 (= (size!238 lt!3573) (+ (size!238 (t!4341 l1!169)) (size!238 l2!163))))))

(assert (= (and d!13197 c!5368) b!22582))

(assert (= (and d!13197 (not c!5368)) b!22583))

(assert (= (and d!13197 res!9899) b!22584))

(assert (= (and b!22584 res!9898) b!22585))

(declare-fun m!24565 () Bool)

(assert (=> d!13197 m!24565))

(assert (=> d!13197 m!24517))

(assert (=> d!13197 m!24449))

(assert (=> b!22583 m!24533))

(declare-fun m!24567 () Bool)

(assert (=> b!22584 m!24567))

(assert (=> b!22584 m!24441))

(assert (=> b!22584 m!24435))

(assert (=> b!22516 d!13197))

(assert (=> b!22516 d!13157))

(declare-fun e!11822 () Bool)

(declare-fun b!22589 () Bool)

(declare-fun lt!3574 () List!346)

(assert (=> b!22589 (= e!11822 (or (not (= (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811) Nil!341)) (= lt!3574 (t!4341 l1!169))))))

(declare-fun d!13199 () Bool)

(assert (=> d!13199 e!11822))

(declare-fun res!9901 () Bool)

(assert (=> d!13199 (=> (not res!9901) (not e!11822))))

(assert (=> d!13199 (= res!9901 (= (content!62 lt!3574) (union (content!62 (t!4341 l1!169)) (content!62 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))))

(declare-fun e!11823 () List!346)

(assert (=> d!13199 (= lt!3574 e!11823)))

(declare-fun c!5369 () Bool)

(assert (=> d!13199 (= c!5369 (is-Nil!341 (t!4341 l1!169)))))

(assert (=> d!13199 (= (++!26 (t!4341 l1!169) (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)) lt!3574)))

(declare-fun b!22587 () Bool)

(assert (=> b!22587 (= e!11823 (Cons!340 (h!254 (t!4341 l1!169)) (++!26 (t!4341 (t!4341 l1!169)) (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811))))))

(declare-fun b!22586 () Bool)

(assert (=> b!22586 (= e!11823 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811))))

(declare-fun b!22588 () Bool)

(declare-fun res!9900 () Bool)

(assert (=> b!22588 (=> (not res!9900) (not e!11822))))

(assert (=> b!22588 (= res!9900 (= (size!238 lt!3574) (+ (size!238 (t!4341 l1!169)) (size!238 (insertAtIndex!15 l2!163 (- i!289 (size!238 l1!169)) y!811)))))))

(assert (= (and d!13199 c!5369) b!22586))

(assert (= (and d!13199 (not c!5369)) b!22587))

(assert (= (and d!13199 res!9901) b!22588))

(assert (= (and b!22588 res!9900) b!22589))

(declare-fun m!24569 () Bool)

(assert (=> d!13199 m!24569))

(assert (=> d!13199 m!24517))

(assert (=> d!13199 m!24427))

(assert (=> d!13199 m!24471))

(assert (=> b!22587 m!24427))

(declare-fun m!24571 () Bool)

(assert (=> b!22587 m!24571))

(declare-fun m!24573 () Bool)

(assert (=> b!22588 m!24573))

(assert (=> b!22588 m!24441))

(assert (=> b!22588 m!24427))

(assert (=> b!22588 m!24477))

(assert (=> b!22495 d!13199))

(declare-fun e!11824 () Bool)

(declare-fun b!22593 () Bool)

(declare-fun lt!3575 () List!346)

(assert (=> b!22593 (= e!11824 (or (not (= (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811) Nil!341)) (= lt!3575 (t!4341 l1!169))))))

(declare-fun d!13201 () Bool)

(assert (=> d!13201 e!11824))

(declare-fun res!9903 () Bool)

(assert (=> d!13201 (=> (not res!9903) (not e!11824))))

(assert (=> d!13201 (= res!9903 (= (content!62 lt!3575) (union (content!62 (t!4341 l1!169)) (content!62 (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811)))))))

(declare-fun e!11825 () List!346)

(assert (=> d!13201 (= lt!3575 e!11825)))

(declare-fun c!5370 () Bool)

(assert (=> d!13201 (= c!5370 (is-Nil!341 (t!4341 l1!169)))))

(assert (=> d!13201 (= (++!26 (t!4341 l1!169) (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811)) lt!3575)))

(declare-fun b!22591 () Bool)

(assert (=> b!22591 (= e!11825 (Cons!340 (h!254 (t!4341 l1!169)) (++!26 (t!4341 (t!4341 l1!169)) (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811))))))

(declare-fun b!22590 () Bool)

(assert (=> b!22590 (= e!11825 (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811))))

(declare-fun b!22592 () Bool)

(declare-fun res!9902 () Bool)

(assert (=> b!22592 (=> (not res!9902) (not e!11824))))

(assert (=> b!22592 (= res!9902 (= (size!238 lt!3575) (+ (size!238 (t!4341 l1!169)) (size!238 (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811)))))))

(assert (= (and d!13201 c!5370) b!22590))

(assert (= (and d!13201 (not c!5370)) b!22591))

(assert (= (and d!13201 res!9903) b!22592))

(assert (= (and b!22592 res!9902) b!22593))

(declare-fun m!24575 () Bool)

(assert (=> d!13201 m!24575))

(assert (=> d!13201 m!24517))

(assert (=> d!13201 m!24481))

(declare-fun m!24577 () Bool)

(assert (=> d!13201 m!24577))

(assert (=> b!22591 m!24481))

(declare-fun m!24579 () Bool)

(assert (=> b!22591 m!24579))

(declare-fun m!24581 () Bool)

(assert (=> b!22592 m!24581))

(assert (=> b!22592 m!24441))

(assert (=> b!22592 m!24481))

(declare-fun m!24583 () Bool)

(assert (=> b!22592 m!24583))

(assert (=> b!22513 d!13201))

(declare-fun b!22595 () Bool)

(declare-fun e!11826 () List!346)

(declare-fun e!11827 () List!346)

(assert (=> b!22595 (= e!11826 e!11827)))

(declare-fun c!5372 () Bool)

(assert (=> b!22595 (= c!5372 (= (- (- i!289 1) (size!238 (t!4341 l1!169))) 0))))

(declare-fun b!22596 () Bool)

(assert (=> b!22596 (= e!11827 (Cons!340 y!811 l2!163))))

(declare-fun b!22594 () Bool)

(assert (=> b!22594 (= e!11826 (Cons!340 y!811 Nil!341))))

(declare-fun d!13203 () Bool)

(declare-fun c!5371 () Bool)

(assert (=> d!13203 (= c!5371 (is-Nil!341 l2!163))))

(assert (=> d!13203 (= (insertAtIndex!15 l2!163 (- (- i!289 1) (size!238 (t!4341 l1!169))) y!811) e!11826)))

(declare-fun b!22597 () Bool)

(assert (=> b!22597 (= e!11827 (Cons!340 (h!254 l2!163) (insertAtIndex!15 (t!4341 l2!163) (- (- (- i!289 1) (size!238 (t!4341 l1!169))) 1) y!811)))))

(assert (= (and b!22595 c!5372) b!22596))

(assert (= (and b!22595 (not c!5372)) b!22597))

(assert (= (and d!13203 c!5371) b!22594))

(assert (= (and d!13203 (not c!5371)) b!22595))

(declare-fun m!24585 () Bool)

(assert (=> b!22597 m!24585))

(assert (=> b!22513 d!13203))

(assert (=> b!22513 d!13157))

(assert (=> b!22491 d!13197))

(declare-fun d!13205 () Bool)

(declare-fun c!5373 () Bool)

(assert (=> d!13205 (= c!5373 (is-Nil!341 lt!3562))))

(declare-fun e!11828 () (Set T!1775))

(assert (=> d!13205 (= (content!62 lt!3562) e!11828)))

(declare-fun b!22598 () Bool)

(assert (=> b!22598 (= e!11828 (as emptyset (Set T!1775)))))

(declare-fun b!22599 () Bool)

(assert (=> b!22599 (= e!11828 (union (insert (h!254 lt!3562) (as emptyset (Set T!1775))) (content!62 (t!4341 lt!3562))))))

(assert (= (and d!13205 c!5373) b!22598))

(assert (= (and d!13205 (not c!5373)) b!22599))

(declare-fun m!24587 () Bool)

(assert (=> b!22599 m!24587))

(declare-fun m!24589 () Bool)

(assert (=> b!22599 m!24589))

(assert (=> d!13149 d!13205))

(assert (=> d!13149 d!13173))

(assert (=> d!13149 d!13163))

(declare-fun b!22600 () Bool)

(declare-fun e!11829 () Bool)

(declare-fun tp!4960 () Bool)

(assert (=> b!22600 (= e!11829 (and tp_is_empty!119 tp!4960))))

(assert (=> b!22521 (= tp!4958 e!11829)))

(assert (= (and b!22521 (is-Cons!340 (t!4341 (t!4341 l2!163)))) b!22600))

(declare-fun b!22601 () Bool)

(declare-fun e!11830 () Bool)

(declare-fun tp!4961 () Bool)

(assert (=> b!22601 (= e!11830 (and tp_is_empty!119 tp!4961))))

(assert (=> b!22522 (= tp!4959 e!11830)))

(assert (= (and b!22522 (is-Cons!340 (t!4341 (t!4341 l1!169)))) b!22601))

(push 1)

(assert (not b!22575))

(assert (not b!22552))

(assert (not b!22565))

(assert (not b!22583))

(assert (not b!22550))

(assert (not d!13183))

(assert (not b!22557))

(assert (not b!22601))

(assert tp_is_empty!119)

(assert (not b!22530))

(assert (not b!22592))

(assert (not b!22524))

(assert (not b!22554))

(assert (not b!22573))

(assert (not b!22600))

(assert (not b!22542))

(assert (not b!22555))

(assert (not b!22538))

(assert (not b!22591))

(assert (not b!22551))

(assert (not b!22597))

(assert (not b!22599))

(assert (not b!22546))

(assert (not b!22567))

(assert (not b!22587))

(assert (not b!22532))

(assert (not b!22553))

(assert (not d!13197))

(assert (not b!22544))

(assert (not b!22559))

(assert (not b!22584))

(assert (not b!22576))

(assert (not b!22536))

(assert (not b!22534))

(assert (not b!22540))

(assert (not b!22560))

(assert (not d!13193))

(assert (not d!13199))

(assert (not b!22588))

(assert (not b!22581))

(assert (not b!22569))

(assert (not d!13201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

