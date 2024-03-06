; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3028 () Bool)

(assert start!3028)

(declare-fun b!14363 () Bool)

(declare-fun res!5744 () Bool)

(declare-fun e!7938 () Bool)

(assert (=> b!14363 (=> (not res!5744) (not e!7938))))

(declare-datatypes () ((T!1701 (T!1702 (val!23 Int)))))

(declare-datatypes () ((Conc!5 (CC!4 (left!649 Conc!5) (right!652 Conc!5)) (Single!4 (x!8687 T!1701)) (Empty!15))))

(declare-fun xs!637 () Conc!5)

(declare-fun balanced!5 (Conc!5) Bool)

(assert (=> b!14363 (= res!5744 (balanced!5 xs!637))))

(declare-fun b!14364 () Bool)

(declare-fun e!7936 () Bool)

(declare-fun ys!129 () Conc!5)

(assert (=> b!14364 (= e!7936 (not (balanced!5 ys!129)))))

(declare-fun b!14365 () Bool)

(declare-fun e!7934 () Bool)

(declare-fun tp_is_empty!45 () Bool)

(assert (=> b!14365 (= e!7934 tp_is_empty!45)))

(declare-fun b!14366 () Bool)

(declare-fun e!7932 () Bool)

(assert (=> b!14366 (= e!7932 tp_is_empty!45)))

(declare-fun b!14367 () Bool)

(declare-fun tp!3492 () Bool)

(declare-fun tp!3488 () Bool)

(assert (=> b!14367 (= e!7934 (and tp!3492 tp!3488))))

(declare-fun b!14368 () Bool)

(declare-fun e!7937 () Bool)

(declare-fun tp!3479 () Bool)

(declare-fun tp!3490 () Bool)

(assert (=> b!14368 (= e!7937 (and tp!3479 tp!3490))))

(declare-fun b!14369 () Bool)

(declare-fun res!5745 () Bool)

(assert (=> b!14369 (=> (not res!5745) (not e!7938))))

(assert (=> b!14369 (= res!5745 (and (not (is-Empty!15 xs!637)) (not (is-Single!4 xs!637))))))

(declare-fun b!14370 () Bool)

(declare-fun res!5751 () Bool)

(assert (=> b!14370 (=> res!5751 e!7936)))

(declare-fun concInv!4 (Conc!5) Bool)

(assert (=> b!14370 (= res!5751 (not (concInv!4 ys!129)))))

(declare-fun b!14371 () Bool)

(declare-fun res!5743 () Bool)

(assert (=> b!14371 (=> res!5743 e!7936)))

(declare-fun xs!654 () Conc!5)

(assert (=> b!14371 (= res!5743 (not (balanced!5 xs!654)))))

(declare-fun b!14372 () Bool)

(declare-fun e!7933 () Bool)

(declare-fun tp!3481 () Bool)

(declare-fun tp!3487 () Bool)

(assert (=> b!14372 (= e!7933 (and tp!3481 tp!3487))))

(declare-fun b!14373 () Bool)

(declare-fun e!7935 () Bool)

(declare-fun tp!3486 () Bool)

(declare-fun tp!3483 () Bool)

(assert (=> b!14373 (= e!7935 (and tp!3486 tp!3483))))

(declare-fun b!14374 () Bool)

(declare-fun e!7939 () Bool)

(declare-fun tp!3491 () Bool)

(declare-fun tp!3485 () Bool)

(assert (=> b!14374 (= e!7939 (and tp!3491 tp!3485))))

(declare-fun b!14375 () Bool)

(assert (=> b!14375 (= e!7935 tp_is_empty!45)))

(declare-fun b!14376 () Bool)

(assert (=> b!14376 (= e!7937 tp_is_empty!45)))

(declare-fun b!14377 () Bool)

(declare-fun res!5748 () Bool)

(assert (=> b!14377 (=> (not res!5748) (not e!7938))))

(declare-fun n!315 () Int)

(declare-fun size!183 (Conc!5) Int)

(assert (=> b!14377 (= res!5748 (< n!315 (size!183 (left!649 xs!637))))))

(declare-fun b!14378 () Bool)

(declare-fun res!5749 () Bool)

(assert (=> b!14378 (=> (not res!5749) (not e!7938))))

(declare-datatypes () ((tuple2!96 (tuple2!97 (_1!48 Conc!5) (_2!48 Conc!5)))))

(declare-fun x$3!88 () tuple2!96)

(declare-fun lr!32 () Conc!5)

(declare-fun ll!30 () Conc!5)

(assert (=> b!14378 (= res!5749 (and (= ll!30 (_1!48 x$3!88)) (= lr!32 (_2!48 x$3!88)) (= xs!654 lr!32) (= ys!129 (right!652 xs!637))))))

(declare-fun b!14379 () Bool)

(assert (=> b!14379 (= e!7938 e!7936)))

(declare-fun res!5750 () Bool)

(assert (=> b!14379 (=> res!5750 e!7936)))

(assert (=> b!14379 (= res!5750 (not (concInv!4 xs!654)))))

(declare-fun b!14380 () Bool)

(declare-fun res!5746 () Bool)

(assert (=> b!14380 (=> (not res!5746) (not e!7938))))

(declare-fun split!8 (Conc!5 Int) tuple2!96)

(assert (=> b!14380 (= res!5746 (= x$3!88 (split!8 (left!649 xs!637) n!315)))))

(declare-fun b!14381 () Bool)

(declare-fun e!7940 () Bool)

(declare-fun tp!3484 () Bool)

(declare-fun tp!3480 () Bool)

(assert (=> b!14381 (= e!7940 (and tp!3484 tp!3480))))

(declare-fun b!14382 () Bool)

(assert (=> b!14382 (= e!7933 tp_is_empty!45)))

(declare-fun res!5747 () Bool)

(assert (=> start!3028 (=> (not res!5747) (not e!7938))))

(assert (=> start!3028 (= res!5747 (concInv!4 xs!637))))

(assert (=> start!3028 e!7938))

(assert (=> start!3028 (and e!7932 e!7940)))

(assert (=> start!3028 e!7935))

(assert (=> start!3028 true))

(assert (=> start!3028 e!7933))

(assert (=> start!3028 e!7934))

(assert (=> start!3028 e!7939))

(assert (=> start!3028 e!7937))

(declare-fun b!14383 () Bool)

(declare-fun tp!3482 () Bool)

(declare-fun tp!3489 () Bool)

(assert (=> b!14383 (= e!7932 (and tp!3482 tp!3489))))

(declare-fun b!14384 () Bool)

(assert (=> b!14384 (= e!7940 tp_is_empty!45)))

(declare-fun b!14385 () Bool)

(assert (=> b!14385 (= e!7939 tp_is_empty!45)))

(assert (= (and start!3028 res!5747) b!14363))

(assert (= (and b!14363 res!5744) b!14369))

(assert (= (and b!14369 res!5745) b!14377))

(assert (= (and b!14377 res!5748) b!14380))

(assert (= (and b!14380 res!5746) b!14378))

(assert (= (and b!14378 res!5749) b!14379))

(assert (= (and b!14379 (not res!5750)) b!14371))

(assert (= (and b!14371 (not res!5743)) b!14370))

(assert (= (and b!14370 (not res!5751)) b!14364))

(assert (= (and start!3028 (is-CC!4 (_1!48 x$3!88))) b!14383))

(assert (= (and start!3028 (is-Single!4 (_1!48 x$3!88))) b!14366))

(assert (= (and start!3028 (is-CC!4 (_2!48 x$3!88))) b!14381))

(assert (= (and start!3028 (is-Single!4 (_2!48 x$3!88))) b!14384))

(assert (= (and start!3028 (is-CC!4 xs!637)) b!14373))

(assert (= (and start!3028 (is-Single!4 xs!637)) b!14375))

(assert (= (and start!3028 (is-CC!4 xs!654)) b!14372))

(assert (= (and start!3028 (is-Single!4 xs!654)) b!14382))

(assert (= (and start!3028 (is-CC!4 lr!32)) b!14367))

(assert (= (and start!3028 (is-Single!4 lr!32)) b!14365))

(assert (= (and start!3028 (is-CC!4 ys!129)) b!14374))

(assert (= (and start!3028 (is-Single!4 ys!129)) b!14385))

(assert (= (and start!3028 (is-CC!4 ll!30)) b!14368))

(assert (= (and start!3028 (is-Single!4 ll!30)) b!14376))

(declare-fun m!18161 () Bool)

(assert (=> b!14380 m!18161))

(declare-fun m!18163 () Bool)

(assert (=> b!14379 m!18163))

(declare-fun m!18165 () Bool)

(assert (=> b!14377 m!18165))

(declare-fun m!18167 () Bool)

(assert (=> b!14363 m!18167))

(declare-fun m!18169 () Bool)

(assert (=> b!14371 m!18169))

(declare-fun m!18171 () Bool)

(assert (=> b!14370 m!18171))

(declare-fun m!18173 () Bool)

(assert (=> b!14364 m!18173))

(declare-fun m!18175 () Bool)

(assert (=> start!3028 m!18175))

(push 1)

(assert tp_is_empty!45)

(assert (not b!14380))

(assert (not b!14370))

(assert (not start!3028))

(assert (not b!14379))

(assert (not b!14372))

(assert (not b!14374))

(assert (not b!14367))

(assert (not b!14373))

(assert (not b!14364))

(assert (not b!14383))

(assert (not b!14377))

(assert (not b!14371))

(assert (not b!14381))

(assert (not b!14363))

(assert (not b!14368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!14397 () Bool)

(declare-fun e!7946 () Bool)

(assert (=> b!14397 (= e!7946 (concInv!4 (right!652 xs!654)))))

(declare-fun b!14396 () Bool)

(declare-fun res!5760 () Bool)

(assert (=> b!14396 (=> (not res!5760) (not e!7946))))

(assert (=> b!14396 (= res!5760 (concInv!4 (left!649 xs!654)))))

(declare-fun d!11281 () Bool)

(declare-fun res!5762 () Bool)

(declare-fun e!7945 () Bool)

(assert (=> d!11281 (=> res!5762 e!7945)))

(assert (=> d!11281 (= res!5762 (not (is-CC!4 xs!654)))))

(assert (=> d!11281 (= (concInv!4 xs!654) e!7945)))

(declare-fun b!14394 () Bool)

(assert (=> b!14394 (= e!7945 e!7946)))

(declare-fun res!5763 () Bool)

(assert (=> b!14394 (=> (not res!5763) (not e!7946))))

(declare-fun isEmpty!269 (Conc!5) Bool)

(assert (=> b!14394 (= res!5763 (not (isEmpty!269 (left!649 xs!654))))))

(declare-fun b!14395 () Bool)

(declare-fun res!5761 () Bool)

(assert (=> b!14395 (=> (not res!5761) (not e!7946))))

(assert (=> b!14395 (= res!5761 (not (isEmpty!269 (right!652 xs!654))))))

(assert (= (and d!11281 (not res!5762)) b!14394))

(assert (= (and b!14394 res!5763) b!14395))

(assert (= (and b!14395 res!5761) b!14396))

(assert (= (and b!14396 res!5760) b!14397))

(declare-fun m!18177 () Bool)

(assert (=> b!14397 m!18177))

(declare-fun m!18179 () Bool)

(assert (=> b!14396 m!18179))

(declare-fun m!18181 () Bool)

(assert (=> b!14394 m!18181))

(declare-fun m!18183 () Bool)

(assert (=> b!14395 m!18183))

(assert (=> b!14379 d!11281))

(declare-fun b!14401 () Bool)

(declare-fun e!7948 () Bool)

(assert (=> b!14401 (= e!7948 (concInv!4 (right!652 ys!129)))))

(declare-fun b!14400 () Bool)

(declare-fun res!5764 () Bool)

(assert (=> b!14400 (=> (not res!5764) (not e!7948))))

(assert (=> b!14400 (= res!5764 (concInv!4 (left!649 ys!129)))))

(declare-fun d!11283 () Bool)

(declare-fun res!5766 () Bool)

(declare-fun e!7947 () Bool)

(assert (=> d!11283 (=> res!5766 e!7947)))

(assert (=> d!11283 (= res!5766 (not (is-CC!4 ys!129)))))

(assert (=> d!11283 (= (concInv!4 ys!129) e!7947)))

(declare-fun b!14398 () Bool)

(assert (=> b!14398 (= e!7947 e!7948)))

(declare-fun res!5767 () Bool)

(assert (=> b!14398 (=> (not res!5767) (not e!7948))))

(assert (=> b!14398 (= res!5767 (not (isEmpty!269 (left!649 ys!129))))))

(declare-fun b!14399 () Bool)

(declare-fun res!5765 () Bool)

(assert (=> b!14399 (=> (not res!5765) (not e!7948))))

(assert (=> b!14399 (= res!5765 (not (isEmpty!269 (right!652 ys!129))))))

(assert (= (and d!11283 (not res!5766)) b!14398))

(assert (= (and b!14398 res!5767) b!14399))

(assert (= (and b!14399 res!5765) b!14400))

(assert (= (and b!14400 res!5764) b!14401))

(declare-fun m!18185 () Bool)

(assert (=> b!14401 m!18185))

(declare-fun m!18187 () Bool)

(assert (=> b!14400 m!18187))

(declare-fun m!18189 () Bool)

(assert (=> b!14398 m!18189))

(declare-fun m!18191 () Bool)

(assert (=> b!14399 m!18191))

(assert (=> b!14370 d!11283))

(declare-fun b!14405 () Bool)

(declare-fun e!7950 () Bool)

(assert (=> b!14405 (= e!7950 (concInv!4 (right!652 xs!637)))))

(declare-fun b!14404 () Bool)

(declare-fun res!5768 () Bool)

(assert (=> b!14404 (=> (not res!5768) (not e!7950))))

(assert (=> b!14404 (= res!5768 (concInv!4 (left!649 xs!637)))))

(declare-fun d!11285 () Bool)

(declare-fun res!5770 () Bool)

(declare-fun e!7949 () Bool)

(assert (=> d!11285 (=> res!5770 e!7949)))

(assert (=> d!11285 (= res!5770 (not (is-CC!4 xs!637)))))

(assert (=> d!11285 (= (concInv!4 xs!637) e!7949)))

(declare-fun b!14402 () Bool)

(assert (=> b!14402 (= e!7949 e!7950)))

(declare-fun res!5771 () Bool)

(assert (=> b!14402 (=> (not res!5771) (not e!7950))))

(assert (=> b!14402 (= res!5771 (not (isEmpty!269 (left!649 xs!637))))))

(declare-fun b!14403 () Bool)

(declare-fun res!5769 () Bool)

(assert (=> b!14403 (=> (not res!5769) (not e!7950))))

(assert (=> b!14403 (= res!5769 (not (isEmpty!269 (right!652 xs!637))))))

(assert (= (and d!11285 (not res!5770)) b!14402))

(assert (= (and b!14402 res!5771) b!14403))

(assert (= (and b!14403 res!5769) b!14404))

(assert (= (and b!14404 res!5768) b!14405))

(declare-fun m!18193 () Bool)

(assert (=> b!14405 m!18193))

(declare-fun m!18195 () Bool)

(assert (=> b!14404 m!18195))

(declare-fun m!18197 () Bool)

(assert (=> b!14402 m!18197))

(declare-fun m!18199 () Bool)

(assert (=> b!14403 m!18199))

(assert (=> start!3028 d!11285))

(declare-fun b!14414 () Bool)

(declare-fun e!7956 () Bool)

(declare-fun e!7955 () Bool)

(assert (=> b!14414 (= e!7956 e!7955)))

(declare-fun res!5783 () Bool)

(assert (=> b!14414 (=> (not res!5783) (not e!7955))))

(declare-fun level!4 (Conc!5) Int)

(assert (=> b!14414 (= res!5783 (>= (- (level!4 (left!649 xs!654)) (level!4 (right!652 xs!654))) (- 1)))))

(declare-fun b!14416 () Bool)

(declare-fun res!5780 () Bool)

(assert (=> b!14416 (=> (not res!5780) (not e!7955))))

(assert (=> b!14416 (= res!5780 (balanced!5 (left!649 xs!654)))))

(declare-fun d!11287 () Bool)

(declare-fun res!5781 () Bool)

(assert (=> d!11287 (=> res!5781 e!7956)))

(assert (=> d!11287 (= res!5781 (not (is-CC!4 xs!654)))))

(assert (=> d!11287 (= (balanced!5 xs!654) e!7956)))

(declare-fun b!14415 () Bool)

(declare-fun res!5782 () Bool)

(assert (=> b!14415 (=> (not res!5782) (not e!7955))))

(assert (=> b!14415 (= res!5782 (<= (- (level!4 (left!649 xs!654)) (level!4 (right!652 xs!654))) 1))))

(declare-fun b!14417 () Bool)

(assert (=> b!14417 (= e!7955 (balanced!5 (right!652 xs!654)))))

(assert (= (and d!11287 (not res!5781)) b!14414))

(assert (= (and b!14414 res!5783) b!14415))

(assert (= (and b!14415 res!5782) b!14416))

(assert (= (and b!14416 res!5780) b!14417))

(declare-fun m!18201 () Bool)

(assert (=> b!14414 m!18201))

(declare-fun m!18203 () Bool)

(assert (=> b!14414 m!18203))

(declare-fun m!18205 () Bool)

(assert (=> b!14416 m!18205))

(assert (=> b!14415 m!18201))

(assert (=> b!14415 m!18203))

(declare-fun m!18207 () Bool)

(assert (=> b!14417 m!18207))

(assert (=> b!14371 d!11287))

(declare-fun b!14450 () Bool)

(declare-fun e!7975 () tuple2!96)

(declare-fun concatNormalized!3 (Conc!5 Conc!5) Conc!5)

(assert (=> b!14450 (= e!7975 (tuple2!97 (_1!48 (split!8 (left!649 (left!649 xs!637)) n!315)) (concatNormalized!3 (_2!48 (split!8 (left!649 (left!649 xs!637)) n!315)) (right!652 (left!649 xs!637)))))))

(declare-fun b!14451 () Bool)

(declare-fun res!5802 () Bool)

(declare-fun e!7978 () Bool)

(assert (=> b!14451 (=> (not res!5802) (not e!7978))))

(declare-fun lt!2060 () tuple2!96)

(assert (=> b!14451 (= res!5802 (>= (level!4 (left!649 xs!637)) (level!4 (_2!48 lt!2060))))))

(declare-fun b!14452 () Bool)

(declare-fun e!7973 () Bool)

(declare-fun lt!2062 () Conc!5)

(assert (=> b!14452 (= e!7973 (balanced!5 lt!2062))))

(declare-fun d!11289 () Bool)

(assert (=> d!11289 e!7978))

(declare-fun res!5803 () Bool)

(assert (=> d!11289 (=> (not res!5803) (not e!7978))))

(declare-fun e!7980 () Bool)

(assert (=> d!11289 (= res!5803 e!7980)))

(declare-fun res!5805 () Bool)

(assert (=> d!11289 (=> (not res!5805) (not e!7980))))

(declare-fun lt!2061 () Conc!5)

(assert (=> d!11289 (= res!5805 (concInv!4 lt!2061))))

(assert (=> d!11289 (= lt!2061 (_1!48 lt!2060))))

(declare-fun e!7976 () tuple2!96)

(assert (=> d!11289 (= lt!2060 e!7976)))

(declare-fun c!3946 () Bool)

(assert (=> d!11289 (= c!3946 (is-Empty!15 (left!649 xs!637)))))

(declare-fun e!7977 () Bool)

(assert (=> d!11289 e!7977))

(declare-fun res!5808 () Bool)

(assert (=> d!11289 (=> (not res!5808) (not e!7977))))

(assert (=> d!11289 (= res!5808 (concInv!4 (left!649 xs!637)))))

(assert (=> d!11289 (= (split!8 (left!649 xs!637) n!315) lt!2060)))

(declare-fun b!14453 () Bool)

(assert (=> b!14453 (= e!7976 (tuple2!97 Empty!15 Empty!15))))

(declare-fun b!14454 () Bool)

(declare-fun res!5804 () Bool)

(assert (=> b!14454 (=> (not res!5804) (not e!7978))))

(assert (=> b!14454 (= res!5804 (>= (level!4 (left!649 xs!637)) (level!4 (_1!48 lt!2060))))))

(declare-fun b!14455 () Bool)

(declare-fun splitCorrectness!1 (tuple2!96 Conc!5 Int) Bool)

(assert (=> b!14455 (= e!7978 (splitCorrectness!1 lt!2060 (left!649 xs!637) n!315))))

(declare-fun b!14456 () Bool)

(declare-fun e!7974 () tuple2!96)

(assert (=> b!14456 (= e!7974 (tuple2!97 (concatNormalized!3 (left!649 (left!649 xs!637)) (_1!48 (split!8 (right!652 (left!649 xs!637)) (- n!315 (size!183 (left!649 (left!649 xs!637))))))) (_2!48 (split!8 (right!652 (left!649 xs!637)) (- n!315 (size!183 (left!649 (left!649 xs!637))))))))))

(declare-fun b!14457 () Bool)

(declare-fun res!5801 () Bool)

(assert (=> b!14457 (=> (not res!5801) (not e!7978))))

(declare-fun instSplitAxiom!3 (Conc!5 Int) Bool)

(assert (=> b!14457 (= res!5801 (instSplitAxiom!3 (left!649 xs!637) n!315))))

(declare-fun b!14458 () Bool)

(declare-fun e!7979 () tuple2!96)

(assert (=> b!14458 (= e!7976 e!7979)))

(declare-fun c!3948 () Bool)

(assert (=> b!14458 (= c!3948 (is-Single!4 (left!649 xs!637)))))

(declare-fun b!14459 () Bool)

(assert (=> b!14459 (= e!7979 (ite (<= n!315 0) (tuple2!97 Empty!15 (left!649 xs!637)) (tuple2!97 (left!649 xs!637) Empty!15)))))

(declare-fun b!14460 () Bool)

(assert (=> b!14460 (= e!7974 (tuple2!97 (left!649 (left!649 xs!637)) (right!652 (left!649 xs!637))))))

(declare-fun b!14461 () Bool)

(assert (=> b!14461 (= e!7975 e!7974)))

(declare-fun c!3945 () Bool)

(assert (=> b!14461 (= c!3945 (> n!315 (size!183 (left!649 (left!649 xs!637)))))))

(declare-fun b!14462 () Bool)

(assert (=> b!14462 (= e!7979 e!7975)))

(declare-fun c!3947 () Bool)

(assert (=> b!14462 (= c!3947 (< n!315 (size!183 (left!649 (left!649 xs!637)))))))

(declare-fun b!14463 () Bool)

(assert (=> b!14463 (= e!7980 (balanced!5 lt!2061))))

(declare-fun b!14464 () Bool)

(declare-fun res!5807 () Bool)

(assert (=> b!14464 (=> (not res!5807) (not e!7978))))

(assert (=> b!14464 (= res!5807 e!7973)))

(declare-fun res!5806 () Bool)

(assert (=> b!14464 (=> (not res!5806) (not e!7973))))

(assert (=> b!14464 (= res!5806 (concInv!4 lt!2062))))

(assert (=> b!14464 (= lt!2062 (_2!48 lt!2060))))

(declare-fun b!14465 () Bool)

(assert (=> b!14465 (= e!7977 (balanced!5 (left!649 xs!637)))))

(assert (= (and d!11289 res!5808) b!14465))

(assert (= (and b!14461 c!3945) b!14456))

(assert (= (and b!14461 (not c!3945)) b!14460))

(assert (= (and b!14462 c!3947) b!14450))

(assert (= (and b!14462 (not c!3947)) b!14461))

(assert (= (and b!14458 c!3948) b!14459))

(assert (= (and b!14458 (not c!3948)) b!14462))

(assert (= (and d!11289 c!3946) b!14453))

(assert (= (and d!11289 (not c!3946)) b!14458))

(assert (= (and d!11289 res!5805) b!14463))

(assert (= (and d!11289 res!5803) b!14464))

(assert (= (and b!14464 res!5806) b!14452))

(assert (= (and b!14464 res!5807) b!14454))

(assert (= (and b!14454 res!5804) b!14451))

(assert (= (and b!14451 res!5802) b!14457))

(assert (= (and b!14457 res!5801) b!14455))

(declare-fun m!18209 () Bool)

(assert (=> b!14450 m!18209))

(declare-fun m!18211 () Bool)

(assert (=> b!14450 m!18211))

(declare-fun m!18213 () Bool)

(assert (=> b!14455 m!18213))

(declare-fun m!18215 () Bool)

(assert (=> b!14461 m!18215))

(declare-fun m!18217 () Bool)

(assert (=> b!14463 m!18217))

(assert (=> b!14456 m!18215))

(declare-fun m!18219 () Bool)

(assert (=> b!14456 m!18219))

(declare-fun m!18221 () Bool)

(assert (=> b!14456 m!18221))

(declare-fun m!18223 () Bool)

(assert (=> b!14464 m!18223))

(declare-fun m!18225 () Bool)

(assert (=> b!14454 m!18225))

(declare-fun m!18227 () Bool)

(assert (=> b!14454 m!18227))

(assert (=> b!14462 m!18215))

(declare-fun m!18229 () Bool)

(assert (=> b!14465 m!18229))

(declare-fun m!18231 () Bool)

(assert (=> b!14452 m!18231))

(declare-fun m!18233 () Bool)

(assert (=> d!11289 m!18233))

(assert (=> d!11289 m!18195))

(assert (=> b!14451 m!18225))

(declare-fun m!18235 () Bool)

(assert (=> b!14451 m!18235))

(declare-fun m!18237 () Bool)

(assert (=> b!14457 m!18237))

(assert (=> b!14380 d!11289))

(declare-fun b!14474 () Bool)

(declare-fun e!7986 () Int)

(assert (=> b!14474 (= e!7986 0)))

(declare-fun b!14476 () Bool)

(declare-fun e!7985 () Int)

(assert (=> b!14476 (= e!7985 1)))

(declare-fun d!11291 () Bool)

(declare-fun lt!2065 () Int)

(assert (=> d!11291 (>= lt!2065 0)))

(assert (=> d!11291 (= lt!2065 e!7986)))

(declare-fun c!3953 () Bool)

(assert (=> d!11291 (= c!3953 (is-Empty!15 (left!649 xs!637)))))

(assert (=> d!11291 (= (size!183 (left!649 xs!637)) lt!2065)))

(declare-fun b!14477 () Bool)

(assert (=> b!14477 (= e!7985 (+ (size!183 (left!649 (left!649 xs!637))) (size!183 (right!652 (left!649 xs!637)))))))

(declare-fun b!14475 () Bool)

(assert (=> b!14475 (= e!7986 e!7985)))

(declare-fun c!3954 () Bool)

(assert (=> b!14475 (= c!3954 (is-Single!4 (left!649 xs!637)))))

(assert (= (and b!14475 c!3954) b!14476))

(assert (= (and b!14475 (not c!3954)) b!14477))

(assert (= (and d!11291 c!3953) b!14474))

(assert (= (and d!11291 (not c!3953)) b!14475))

(assert (=> b!14477 m!18215))

(declare-fun m!18239 () Bool)

(assert (=> b!14477 m!18239))

(assert (=> b!14377 d!11291))

(declare-fun b!14478 () Bool)

(declare-fun e!7988 () Bool)

(declare-fun e!7987 () Bool)

(assert (=> b!14478 (= e!7988 e!7987)))

(declare-fun res!5812 () Bool)

(assert (=> b!14478 (=> (not res!5812) (not e!7987))))

(assert (=> b!14478 (= res!5812 (>= (- (level!4 (left!649 xs!637)) (level!4 (right!652 xs!637))) (- 1)))))

(declare-fun b!14480 () Bool)

(declare-fun res!5809 () Bool)

(assert (=> b!14480 (=> (not res!5809) (not e!7987))))

(assert (=> b!14480 (= res!5809 (balanced!5 (left!649 xs!637)))))

(declare-fun d!11293 () Bool)

(declare-fun res!5810 () Bool)

(assert (=> d!11293 (=> res!5810 e!7988)))

(assert (=> d!11293 (= res!5810 (not (is-CC!4 xs!637)))))

(assert (=> d!11293 (= (balanced!5 xs!637) e!7988)))

(declare-fun b!14479 () Bool)

(declare-fun res!5811 () Bool)

(assert (=> b!14479 (=> (not res!5811) (not e!7987))))

(assert (=> b!14479 (= res!5811 (<= (- (level!4 (left!649 xs!637)) (level!4 (right!652 xs!637))) 1))))

(declare-fun b!14481 () Bool)

(assert (=> b!14481 (= e!7987 (balanced!5 (right!652 xs!637)))))

(assert (= (and d!11293 (not res!5810)) b!14478))

(assert (= (and b!14478 res!5812) b!14479))

(assert (= (and b!14479 res!5811) b!14480))

(assert (= (and b!14480 res!5809) b!14481))

(assert (=> b!14478 m!18225))

(declare-fun m!18241 () Bool)

(assert (=> b!14478 m!18241))

(assert (=> b!14480 m!18229))

(assert (=> b!14479 m!18225))

(assert (=> b!14479 m!18241))

(declare-fun m!18243 () Bool)

(assert (=> b!14481 m!18243))

(assert (=> b!14363 d!11293))

(declare-fun b!14482 () Bool)

(declare-fun e!7990 () Bool)

(declare-fun e!7989 () Bool)

(assert (=> b!14482 (= e!7990 e!7989)))

(declare-fun res!5816 () Bool)

(assert (=> b!14482 (=> (not res!5816) (not e!7989))))

(assert (=> b!14482 (= res!5816 (>= (- (level!4 (left!649 ys!129)) (level!4 (right!652 ys!129))) (- 1)))))

(declare-fun b!14484 () Bool)

(declare-fun res!5813 () Bool)

(assert (=> b!14484 (=> (not res!5813) (not e!7989))))

(assert (=> b!14484 (= res!5813 (balanced!5 (left!649 ys!129)))))

(declare-fun d!11295 () Bool)

(declare-fun res!5814 () Bool)

(assert (=> d!11295 (=> res!5814 e!7990)))

(assert (=> d!11295 (= res!5814 (not (is-CC!4 ys!129)))))

(assert (=> d!11295 (= (balanced!5 ys!129) e!7990)))

(declare-fun b!14483 () Bool)

(declare-fun res!5815 () Bool)

(assert (=> b!14483 (=> (not res!5815) (not e!7989))))

(assert (=> b!14483 (= res!5815 (<= (- (level!4 (left!649 ys!129)) (level!4 (right!652 ys!129))) 1))))

(declare-fun b!14485 () Bool)

(assert (=> b!14485 (= e!7989 (balanced!5 (right!652 ys!129)))))

(assert (= (and d!11295 (not res!5814)) b!14482))

(assert (= (and b!14482 res!5816) b!14483))

(assert (= (and b!14483 res!5815) b!14484))

(assert (= (and b!14484 res!5813) b!14485))

(declare-fun m!18245 () Bool)

(assert (=> b!14482 m!18245))

(declare-fun m!18247 () Bool)

(assert (=> b!14482 m!18247))

(declare-fun m!18249 () Bool)

(assert (=> b!14484 m!18249))

(assert (=> b!14483 m!18245))

(assert (=> b!14483 m!18247))

(declare-fun m!18251 () Bool)

(assert (=> b!14485 m!18251))

(assert (=> b!14364 d!11295))

(declare-fun b!14492 () Bool)

(declare-fun e!7993 () Bool)

(declare-fun tp!3497 () Bool)

(declare-fun tp!3498 () Bool)

(assert (=> b!14492 (= e!7993 (and tp!3497 tp!3498))))

(declare-fun b!14493 () Bool)

(assert (=> b!14493 (= e!7993 tp_is_empty!45)))

(assert (=> b!14383 (= tp!3482 e!7993)))

(assert (= (and b!14383 (is-CC!4 (left!649 (_1!48 x$3!88)))) b!14492))

(assert (= (and b!14383 (is-Single!4 (left!649 (_1!48 x$3!88)))) b!14493))

(declare-fun b!14494 () Bool)

(declare-fun e!7994 () Bool)

(declare-fun tp!3499 () Bool)

(declare-fun tp!3500 () Bool)

(assert (=> b!14494 (= e!7994 (and tp!3499 tp!3500))))

(declare-fun b!14495 () Bool)

(assert (=> b!14495 (= e!7994 tp_is_empty!45)))

(assert (=> b!14383 (= tp!3489 e!7994)))

(assert (= (and b!14383 (is-CC!4 (right!652 (_1!48 x$3!88)))) b!14494))

(assert (= (and b!14383 (is-Single!4 (right!652 (_1!48 x$3!88)))) b!14495))

(declare-fun b!14496 () Bool)

(declare-fun e!7995 () Bool)

(declare-fun tp!3501 () Bool)

(declare-fun tp!3502 () Bool)

(assert (=> b!14496 (= e!7995 (and tp!3501 tp!3502))))

(declare-fun b!14497 () Bool)

(assert (=> b!14497 (= e!7995 tp_is_empty!45)))

(assert (=> b!14374 (= tp!3491 e!7995)))

(assert (= (and b!14374 (is-CC!4 (left!649 ys!129))) b!14496))

(assert (= (and b!14374 (is-Single!4 (left!649 ys!129))) b!14497))

(declare-fun b!14498 () Bool)

(declare-fun e!7996 () Bool)

(declare-fun tp!3503 () Bool)

(declare-fun tp!3504 () Bool)

(assert (=> b!14498 (= e!7996 (and tp!3503 tp!3504))))

(declare-fun b!14499 () Bool)

(assert (=> b!14499 (= e!7996 tp_is_empty!45)))

(assert (=> b!14374 (= tp!3485 e!7996)))

(assert (= (and b!14374 (is-CC!4 (right!652 ys!129))) b!14498))

(assert (= (and b!14374 (is-Single!4 (right!652 ys!129))) b!14499))

(declare-fun b!14500 () Bool)

(declare-fun e!7997 () Bool)

(declare-fun tp!3505 () Bool)

(declare-fun tp!3506 () Bool)

(assert (=> b!14500 (= e!7997 (and tp!3505 tp!3506))))

(declare-fun b!14501 () Bool)

(assert (=> b!14501 (= e!7997 tp_is_empty!45)))

(assert (=> b!14372 (= tp!3481 e!7997)))

(assert (= (and b!14372 (is-CC!4 (left!649 xs!654))) b!14500))

(assert (= (and b!14372 (is-Single!4 (left!649 xs!654))) b!14501))

(declare-fun b!14502 () Bool)

(declare-fun e!7998 () Bool)

(declare-fun tp!3507 () Bool)

(declare-fun tp!3508 () Bool)

(assert (=> b!14502 (= e!7998 (and tp!3507 tp!3508))))

(declare-fun b!14503 () Bool)

(assert (=> b!14503 (= e!7998 tp_is_empty!45)))

(assert (=> b!14372 (= tp!3487 e!7998)))

(assert (= (and b!14372 (is-CC!4 (right!652 xs!654))) b!14502))

(assert (= (and b!14372 (is-Single!4 (right!652 xs!654))) b!14503))

(declare-fun b!14504 () Bool)

(declare-fun e!7999 () Bool)

(declare-fun tp!3509 () Bool)

(declare-fun tp!3510 () Bool)

(assert (=> b!14504 (= e!7999 (and tp!3509 tp!3510))))

(declare-fun b!14505 () Bool)

(assert (=> b!14505 (= e!7999 tp_is_empty!45)))

(assert (=> b!14367 (= tp!3492 e!7999)))

(assert (= (and b!14367 (is-CC!4 (left!649 lr!32))) b!14504))

(assert (= (and b!14367 (is-Single!4 (left!649 lr!32))) b!14505))

(declare-fun b!14506 () Bool)

(declare-fun e!8000 () Bool)

(declare-fun tp!3511 () Bool)

(declare-fun tp!3512 () Bool)

(assert (=> b!14506 (= e!8000 (and tp!3511 tp!3512))))

(declare-fun b!14507 () Bool)

(assert (=> b!14507 (= e!8000 tp_is_empty!45)))

(assert (=> b!14367 (= tp!3488 e!8000)))

(assert (= (and b!14367 (is-CC!4 (right!652 lr!32))) b!14506))

(assert (= (and b!14367 (is-Single!4 (right!652 lr!32))) b!14507))

(declare-fun b!14508 () Bool)

(declare-fun e!8001 () Bool)

(declare-fun tp!3513 () Bool)

(declare-fun tp!3514 () Bool)

(assert (=> b!14508 (= e!8001 (and tp!3513 tp!3514))))

(declare-fun b!14509 () Bool)

(assert (=> b!14509 (= e!8001 tp_is_empty!45)))

(assert (=> b!14381 (= tp!3484 e!8001)))

(assert (= (and b!14381 (is-CC!4 (left!649 (_2!48 x$3!88)))) b!14508))

(assert (= (and b!14381 (is-Single!4 (left!649 (_2!48 x$3!88)))) b!14509))

(declare-fun b!14510 () Bool)

(declare-fun e!8002 () Bool)

(declare-fun tp!3515 () Bool)

(declare-fun tp!3516 () Bool)

(assert (=> b!14510 (= e!8002 (and tp!3515 tp!3516))))

(declare-fun b!14511 () Bool)

(assert (=> b!14511 (= e!8002 tp_is_empty!45)))

(assert (=> b!14381 (= tp!3480 e!8002)))

(assert (= (and b!14381 (is-CC!4 (right!652 (_2!48 x$3!88)))) b!14510))

(assert (= (and b!14381 (is-Single!4 (right!652 (_2!48 x$3!88)))) b!14511))

(declare-fun b!14512 () Bool)

(declare-fun e!8003 () Bool)

(declare-fun tp!3517 () Bool)

(declare-fun tp!3518 () Bool)

(assert (=> b!14512 (= e!8003 (and tp!3517 tp!3518))))

(declare-fun b!14513 () Bool)

(assert (=> b!14513 (= e!8003 tp_is_empty!45)))

(assert (=> b!14368 (= tp!3479 e!8003)))

(assert (= (and b!14368 (is-CC!4 (left!649 ll!30))) b!14512))

(assert (= (and b!14368 (is-Single!4 (left!649 ll!30))) b!14513))

(declare-fun b!14514 () Bool)

(declare-fun e!8004 () Bool)

(declare-fun tp!3519 () Bool)

(declare-fun tp!3520 () Bool)

(assert (=> b!14514 (= e!8004 (and tp!3519 tp!3520))))

(declare-fun b!14515 () Bool)

(assert (=> b!14515 (= e!8004 tp_is_empty!45)))

(assert (=> b!14368 (= tp!3490 e!8004)))

(assert (= (and b!14368 (is-CC!4 (right!652 ll!30))) b!14514))

(assert (= (and b!14368 (is-Single!4 (right!652 ll!30))) b!14515))

(declare-fun b!14516 () Bool)

(declare-fun e!8005 () Bool)

(declare-fun tp!3521 () Bool)

(declare-fun tp!3522 () Bool)

(assert (=> b!14516 (= e!8005 (and tp!3521 tp!3522))))

(declare-fun b!14517 () Bool)

(assert (=> b!14517 (= e!8005 tp_is_empty!45)))

(assert (=> b!14373 (= tp!3486 e!8005)))

(assert (= (and b!14373 (is-CC!4 (left!649 xs!637))) b!14516))

(assert (= (and b!14373 (is-Single!4 (left!649 xs!637))) b!14517))

(declare-fun b!14518 () Bool)

(declare-fun e!8006 () Bool)

(declare-fun tp!3523 () Bool)

(declare-fun tp!3524 () Bool)

(assert (=> b!14518 (= e!8006 (and tp!3523 tp!3524))))

(declare-fun b!14519 () Bool)

(assert (=> b!14519 (= e!8006 tp_is_empty!45)))

(assert (=> b!14373 (= tp!3483 e!8006)))

(assert (= (and b!14373 (is-CC!4 (right!652 xs!637))) b!14518))

(assert (= (and b!14373 (is-Single!4 (right!652 xs!637))) b!14519))

(push 1)

(assert tp_is_empty!45)

(assert (not b!14478))

(assert (not b!14465))

(assert (not b!14414))

(assert (not b!14452))

(assert (not b!14416))

(assert (not b!14464))

(assert (not b!14494))

(assert (not b!14397))

(assert (not b!14502))

(assert (not b!14451))

(assert (not b!14485))

(assert (not b!14402))

(assert (not b!14504))

(assert (not b!14401))

(assert (not b!14455))

(assert (not b!14498))

(assert (not b!14462))

(assert (not b!14405))

(assert (not b!14454))

(assert (not b!14403))

(assert (not d!11289))

(assert (not b!14516))

(assert (not b!14506))

(assert (not b!14482))

(assert (not b!14518))

(assert (not b!14398))

(assert (not b!14479))

(assert (not b!14456))

(assert (not b!14400))

(assert (not b!14399))

(assert (not b!14496))

(assert (not b!14483))

(assert (not b!14457))

(assert (not b!14512))

(assert (not b!14396))

(assert (not b!14450))

(assert (not b!14463))

(assert (not b!14500))

(assert (not b!14477))

(assert (not b!14508))

(assert (not b!14404))

(assert (not b!14395))

(assert (not b!14484))

(assert (not b!14514))

(assert (not b!14510))

(assert (not b!14461))

(assert (not b!14394))

(assert (not b!14492))

(assert (not b!14480))

(assert (not b!14417))

(assert (not b!14481))

(assert (not b!14415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

