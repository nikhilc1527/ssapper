; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3738 () Bool)

(assert start!3738)

(declare-fun b!24189 () Bool)

(declare-fun e!12551 () Bool)

(declare-datatypes () ((T!1803 (T!1804 (val!74 Int)))))

(declare-datatypes () ((Conc!51 (CC!50 (left!695 Conc!51) (right!698 Conc!51)) (Single!50 (x!8866 T!1803)) (Empty!61))))

(declare-fun xs!623 () Conc!51)

(declare-fun i!323 () Int)

(declare-datatypes () ((List!354 (Cons!348 (h!265 T!1803) (t!4364 List!354)) (Nil!349))))

(declare-fun appendIndex!8 (List!354 List!354 Int) Bool)

(declare-fun toList!109 (Conc!51) List!354)

(assert (=> b!24189 (= e!12551 (not (appendIndex!8 (toList!109 (left!695 xs!623)) (toList!109 (right!698 xs!623)) i!323)))))

(declare-fun b!24190 () Bool)

(declare-fun e!12552 () Bool)

(declare-fun tp!5215 () Bool)

(declare-fun tp!5214 () Bool)

(assert (=> b!24190 (= e!12552 (and tp!5215 tp!5214))))

(declare-fun b!24191 () Bool)

(declare-fun res!10741 () Bool)

(assert (=> b!24191 (=> (not res!10741) (not e!12551))))

(assert (=> b!24191 (= res!10741 (is-CC!50 xs!623))))

(declare-fun b!24192 () Bool)

(declare-fun res!10742 () Bool)

(assert (=> b!24192 (=> (not res!10742) (not e!12551))))

(declare-fun size!259 (Conc!51) Int)

(assert (=> b!24192 (= res!10742 (< i!323 (size!259 xs!623)))))

(declare-fun res!10743 () Bool)

(assert (=> start!3738 (=> (not res!10743) (not e!12551))))

(assert (=> start!3738 (= res!10743 (<= 0 i!323))))

(assert (=> start!3738 e!12551))

(assert (=> start!3738 true))

(assert (=> start!3738 e!12552))

(declare-fun b!24193 () Bool)

(declare-fun tp_is_empty!147 () Bool)

(assert (=> b!24193 (= e!12552 tp_is_empty!147)))

(assert (= (and start!3738 res!10743) b!24192))

(assert (= (and b!24192 res!10742) b!24191))

(assert (= (and b!24191 res!10741) b!24189))

(assert (= (and start!3738 (is-CC!50 xs!623)) b!24190))

(assert (= (and start!3738 (is-Single!50 xs!623)) b!24193))

(declare-fun m!25475 () Bool)

(assert (=> b!24189 m!25475))

(declare-fun m!25477 () Bool)

(assert (=> b!24189 m!25477))

(assert (=> b!24189 m!25475))

(assert (=> b!24189 m!25477))

(declare-fun m!25479 () Bool)

(assert (=> b!24189 m!25479))

(declare-fun m!25481 () Bool)

(assert (=> b!24192 m!25481))

(push 1)

(assert (not b!24192))

(assert (not b!24189))

(assert (not b!24190))

(assert tp_is_empty!147)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!24204 () Bool)

(declare-fun e!12558 () Int)

(assert (=> b!24204 (= e!12558 1)))

(declare-fun b!24202 () Bool)

(declare-fun e!12557 () Int)

(assert (=> b!24202 (= e!12557 0)))

(declare-fun b!24203 () Bool)

(assert (=> b!24203 (= e!12557 e!12558)))

(declare-fun c!5627 () Bool)

(assert (=> b!24203 (= c!5627 (is-Single!50 xs!623))))

(declare-fun d!13491 () Bool)

(declare-fun lt!3745 () Int)

(assert (=> d!13491 (>= lt!3745 0)))

(assert (=> d!13491 (= lt!3745 e!12557)))

(declare-fun c!5626 () Bool)

(assert (=> d!13491 (= c!5626 (is-Empty!61 xs!623))))

(assert (=> d!13491 (= (size!259 xs!623) lt!3745)))

(declare-fun b!24205 () Bool)

(assert (=> b!24205 (= e!12558 (+ (size!259 (left!695 xs!623)) (size!259 (right!698 xs!623))))))

(assert (= (and b!24203 c!5627) b!24204))

(assert (= (and b!24203 (not c!5627)) b!24205))

(assert (= (and d!13491 c!5626) b!24202))

(assert (= (and d!13491 (not c!5626)) b!24203))

(declare-fun m!25483 () Bool)

(assert (=> b!24205 m!25483))

(declare-fun m!25485 () Bool)

(assert (=> b!24205 m!25485))

(assert (=> b!24192 d!13491))

(declare-fun b!24217 () Bool)

(declare-fun e!12566 () T!1803)

(declare-fun apply!48 (List!354 Int) T!1803)

(declare-fun size!260 (List!354) Int)

(assert (=> b!24217 (= e!12566 (apply!48 (toList!109 (right!698 xs!623)) (- i!323 (size!260 (toList!109 (left!695 xs!623))))))))

(declare-fun b!24214 () Bool)

(declare-fun e!12565 () Bool)

(assert (=> b!24214 (= e!12565 (< i!323 (+ (size!260 (toList!109 (left!695 xs!623))) (size!260 (toList!109 (right!698 xs!623))))))))

(declare-fun b!24215 () Bool)

(declare-fun e!12567 () Bool)

(assert (=> b!24215 (= e!12567 (appendIndex!8 (t!4364 (toList!109 (left!695 xs!623))) (toList!109 (right!698 xs!623)) (- i!323 1)))))

(declare-fun b!24216 () Bool)

(assert (=> b!24216 (= e!12566 (apply!48 (toList!109 (left!695 xs!623)) i!323))))

(declare-fun d!13493 () Bool)

(declare-fun ++!34 (List!354 List!354) List!354)

(assert (=> d!13493 (= (apply!48 (++!34 (toList!109 (left!695 xs!623)) (toList!109 (right!698 xs!623))) i!323) e!12566)))

(declare-fun c!5630 () Bool)

(assert (=> d!13493 (= c!5630 (< i!323 (size!260 (toList!109 (left!695 xs!623)))))))

(declare-fun lt!3748 () Bool)

(assert (=> d!13493 (= lt!3748 e!12567)))

(declare-fun res!10752 () Bool)

(assert (=> d!13493 (=> res!10752 e!12567)))

(assert (=> d!13493 (= res!10752 (or (is-Nil!349 (toList!109 (left!695 xs!623))) (= i!323 0)))))

(assert (=> d!13493 e!12565))

(declare-fun res!10753 () Bool)

(assert (=> d!13493 (=> (not res!10753) (not e!12565))))

(assert (=> d!13493 (= res!10753 (<= 0 i!323))))

(assert (=> d!13493 (= (appendIndex!8 (toList!109 (left!695 xs!623)) (toList!109 (right!698 xs!623)) i!323) true)))

(assert (= (and d!13493 res!10753) b!24214))

(assert (= (and d!13493 (not res!10752)) b!24215))

(assert (= (and d!13493 c!5630) b!24216))

(assert (= (and d!13493 (not c!5630)) b!24217))

(assert (=> b!24214 m!25475))

(declare-fun m!25487 () Bool)

(assert (=> b!24214 m!25487))

(assert (=> b!24214 m!25477))

(declare-fun m!25489 () Bool)

(assert (=> b!24214 m!25489))

(assert (=> b!24217 m!25475))

(assert (=> b!24217 m!25487))

(assert (=> b!24217 m!25477))

(declare-fun m!25491 () Bool)

(assert (=> b!24217 m!25491))

(assert (=> b!24216 m!25475))

(declare-fun m!25493 () Bool)

(assert (=> b!24216 m!25493))

(assert (=> d!13493 m!25475))

(assert (=> d!13493 m!25477))

(declare-fun m!25495 () Bool)

(assert (=> d!13493 m!25495))

(assert (=> d!13493 m!25495))

(declare-fun m!25497 () Bool)

(assert (=> d!13493 m!25497))

(assert (=> d!13493 m!25475))

(assert (=> d!13493 m!25487))

(assert (=> b!24215 m!25477))

(declare-fun m!25499 () Bool)

(assert (=> b!24215 m!25499))

(assert (=> b!24189 d!13493))

(declare-fun d!13495 () Bool)

(declare-fun lt!3751 () List!354)

(assert (=> d!13495 (= (size!260 lt!3751) (size!259 (left!695 xs!623)))))

(declare-fun e!12572 () List!354)

(assert (=> d!13495 (= lt!3751 e!12572)))

(declare-fun c!5635 () Bool)

(assert (=> d!13495 (= c!5635 (is-Empty!61 (left!695 xs!623)))))

(assert (=> d!13495 (= (toList!109 (left!695 xs!623)) lt!3751)))

(declare-fun b!24227 () Bool)

(declare-fun e!12573 () List!354)

(assert (=> b!24227 (= e!12572 e!12573)))

(declare-fun c!5636 () Bool)

(assert (=> b!24227 (= c!5636 (is-Single!50 (left!695 xs!623)))))

(declare-fun b!24229 () Bool)

(assert (=> b!24229 (= e!12573 (++!34 (toList!109 (left!695 (left!695 xs!623))) (toList!109 (right!698 (left!695 xs!623)))))))

(declare-fun b!24226 () Bool)

(assert (=> b!24226 (= e!12572 Nil!349)))

(declare-fun b!24228 () Bool)

(assert (=> b!24228 (= e!12573 (Cons!348 (x!8866 (left!695 xs!623)) Nil!349))))

(assert (= (and b!24227 c!5636) b!24228))

(assert (= (and b!24227 (not c!5636)) b!24229))

(assert (= (and d!13495 c!5635) b!24226))

(assert (= (and d!13495 (not c!5635)) b!24227))

(declare-fun m!25501 () Bool)

(assert (=> d!13495 m!25501))

(assert (=> d!13495 m!25483))

(declare-fun m!25503 () Bool)

(assert (=> b!24229 m!25503))

(declare-fun m!25505 () Bool)

(assert (=> b!24229 m!25505))

(assert (=> b!24229 m!25503))

(assert (=> b!24229 m!25505))

(declare-fun m!25507 () Bool)

(assert (=> b!24229 m!25507))

(assert (=> b!24189 d!13495))

(declare-fun d!13497 () Bool)

(declare-fun lt!3752 () List!354)

(assert (=> d!13497 (= (size!260 lt!3752) (size!259 (right!698 xs!623)))))

(declare-fun e!12574 () List!354)

(assert (=> d!13497 (= lt!3752 e!12574)))

(declare-fun c!5637 () Bool)

(assert (=> d!13497 (= c!5637 (is-Empty!61 (right!698 xs!623)))))

(assert (=> d!13497 (= (toList!109 (right!698 xs!623)) lt!3752)))

(declare-fun b!24231 () Bool)

(declare-fun e!12575 () List!354)

(assert (=> b!24231 (= e!12574 e!12575)))

(declare-fun c!5638 () Bool)

(assert (=> b!24231 (= c!5638 (is-Single!50 (right!698 xs!623)))))

(declare-fun b!24233 () Bool)

(assert (=> b!24233 (= e!12575 (++!34 (toList!109 (left!695 (right!698 xs!623))) (toList!109 (right!698 (right!698 xs!623)))))))

(declare-fun b!24230 () Bool)

(assert (=> b!24230 (= e!12574 Nil!349)))

(declare-fun b!24232 () Bool)

(assert (=> b!24232 (= e!12575 (Cons!348 (x!8866 (right!698 xs!623)) Nil!349))))

(assert (= (and b!24231 c!5638) b!24232))

(assert (= (and b!24231 (not c!5638)) b!24233))

(assert (= (and d!13497 c!5637) b!24230))

(assert (= (and d!13497 (not c!5637)) b!24231))

(declare-fun m!25509 () Bool)

(assert (=> d!13497 m!25509))

(assert (=> d!13497 m!25485))

(declare-fun m!25511 () Bool)

(assert (=> b!24233 m!25511))

(declare-fun m!25513 () Bool)

(assert (=> b!24233 m!25513))

(assert (=> b!24233 m!25511))

(assert (=> b!24233 m!25513))

(declare-fun m!25515 () Bool)

(assert (=> b!24233 m!25515))

(assert (=> b!24189 d!13497))

(declare-fun b!24240 () Bool)

(declare-fun e!12578 () Bool)

(declare-fun tp!5220 () Bool)

(declare-fun tp!5221 () Bool)

(assert (=> b!24240 (= e!12578 (and tp!5220 tp!5221))))

(declare-fun b!24241 () Bool)

(assert (=> b!24241 (= e!12578 tp_is_empty!147)))

(assert (=> b!24190 (= tp!5215 e!12578)))

(assert (= (and b!24190 (is-CC!50 (left!695 xs!623))) b!24240))

(assert (= (and b!24190 (is-Single!50 (left!695 xs!623))) b!24241))

(declare-fun b!24242 () Bool)

(declare-fun e!12579 () Bool)

(declare-fun tp!5222 () Bool)

(declare-fun tp!5223 () Bool)

(assert (=> b!24242 (= e!12579 (and tp!5222 tp!5223))))

(declare-fun b!24243 () Bool)

(assert (=> b!24243 (= e!12579 tp_is_empty!147)))

(assert (=> b!24190 (= tp!5214 e!12579)))

(assert (= (and b!24190 (is-CC!50 (right!698 xs!623))) b!24242))

(assert (= (and b!24190 (is-Single!50 (right!698 xs!623))) b!24243))

(push 1)

(assert (not b!24233))

(assert (not b!24242))

(assert (not d!13495))

(assert (not b!24216))

(assert (not b!24229))

(assert (not d!13493))

(assert (not d!13497))

(assert (not b!24215))

(assert (not b!24217))

(assert (not b!24214))

(assert (not b!24240))

(assert tp_is_empty!147)

(assert (not b!24205))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

