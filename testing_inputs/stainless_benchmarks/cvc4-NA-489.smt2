; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3268 () Bool)

(assert start!3268)

(declare-fun b!18367 () Bool)

(declare-fun res!7704 () Bool)

(declare-fun e!9832 () Bool)

(assert (=> b!18367 (=> (not res!7704) (not e!9832))))

(declare-datatypes () ((T!1733 (T!1734 (val!39 Int)))))

(declare-datatypes () ((Conc!21 (CC!20 (left!665 Conc!21) (right!668 Conc!21)) (Single!20 (x!8747 T!1733)) (Empty!31))))

(declare-fun res!5606 () Conc!21)

(declare-fun y!824 () T!1733)

(declare-fun xs!604 () Conc!21)

(declare-fun i!298 () Int)

(assert (=> b!18367 (= res!7704 (and (not (is-Empty!31 xs!604)) (is-Single!20 xs!604) (not (= i!298 0)) (= res!5606 (CC!20 xs!604 (Single!20 y!824)))))))

(declare-fun b!18368 () Bool)

(declare-fun res!7707 () Bool)

(assert (=> b!18368 (=> (not res!7707) (not e!9832))))

(declare-fun insertAppendAxiomInst!5 (Conc!21 Int T!1733) Bool)

(assert (=> b!18368 (= res!7707 (insertAppendAxiomInst!5 xs!604 i!298 y!824))))

(declare-fun b!18369 () Bool)

(declare-fun e!9831 () Bool)

(declare-fun tp_is_empty!77 () Bool)

(assert (=> b!18369 (= e!9831 tp_is_empty!77)))

(declare-fun b!18370 () Bool)

(declare-fun res!7712 () Bool)

(assert (=> b!18370 (=> (not res!7712) (not e!9832))))

(declare-fun isEmpty!283 (Conc!21) Bool)

(assert (=> b!18370 (= res!7712 (not (isEmpty!283 res!5606)))))

(declare-fun b!18371 () Bool)

(declare-fun res!7706 () Bool)

(assert (=> b!18371 (=> (not res!7706) (not e!9832))))

(declare-fun balanced!20 (Conc!21) Bool)

(assert (=> b!18371 (= res!7706 (balanced!20 xs!604))))

(declare-fun b!18372 () Bool)

(declare-fun res!7705 () Bool)

(assert (=> b!18372 (=> (not res!7705) (not e!9832))))

(assert (=> b!18372 (= res!7705 (>= i!298 0))))

(declare-fun b!18373 () Bool)

(declare-fun tp!4320 () Bool)

(declare-fun tp!4319 () Bool)

(assert (=> b!18373 (= e!9831 (and tp!4320 tp!4319))))

(declare-fun b!18374 () Bool)

(declare-fun res!7716 () Bool)

(assert (=> b!18374 (=> (not res!7716) (not e!9832))))

(declare-fun level!18 (Conc!21) Int)

(assert (=> b!18374 (= res!7716 (<= (- (level!18 res!5606) (level!18 xs!604)) 1))))

(declare-fun b!18375 () Bool)

(declare-fun res!7710 () Bool)

(assert (=> b!18375 (=> (not res!7710) (not e!9832))))

(assert (=> b!18375 (= res!7710 (balanced!20 res!5606))))

(declare-fun b!18376 () Bool)

(declare-fun res!7717 () Bool)

(assert (=> b!18376 (=> (not res!7717) (not e!9832))))

(declare-datatypes () ((List!330 (Cons!324 (h!238 T!1733) (t!4325 List!330)) (Nil!325))))

(declare-fun l!772 () List!330)

(declare-fun toList!90 (Conc!21) List!330)

(assert (=> b!18376 (= res!7717 (= l!772 (toList!90 xs!604)))))

(declare-fun b!18377 () Bool)

(declare-fun e!9830 () Bool)

(declare-fun tp!4321 () Bool)

(assert (=> b!18377 (= e!9830 (and tp_is_empty!77 tp!4321))))

(declare-fun b!18378 () Bool)

(declare-fun e!9833 () Bool)

(declare-fun i!309 () Int)

(declare-fun size!207 (List!330) Int)

(assert (=> b!18378 (= e!9833 (> i!309 (size!207 l!772)))))

(declare-fun b!18379 () Bool)

(declare-fun res!7715 () Bool)

(assert (=> b!18379 (=> (not res!7715) (not e!9832))))

(declare-fun concInv!19 (Conc!21) Bool)

(assert (=> b!18379 (= res!7715 (concInv!19 res!5606))))

(declare-fun b!18380 () Bool)

(declare-fun res!7713 () Bool)

(assert (=> b!18380 (=> (not res!7713) (not e!9832))))

(declare-fun y!847 () T!1733)

(assert (=> b!18380 (= res!7713 (and (= i!309 i!298) (= y!847 y!824)))))

(declare-fun res!7711 () Bool)

(assert (=> start!3268 (=> (not res!7711) (not e!9832))))

(assert (=> start!3268 (= res!7711 (concInv!19 xs!604))))

(assert (=> start!3268 e!9832))

(assert (=> start!3268 e!9830))

(assert (=> start!3268 true))

(declare-fun e!9829 () Bool)

(assert (=> start!3268 e!9829))

(assert (=> start!3268 tp_is_empty!77))

(assert (=> start!3268 e!9831))

(declare-fun b!18381 () Bool)

(declare-fun res!7714 () Bool)

(assert (=> b!18381 (=> (not res!7714) (not e!9832))))

(assert (=> b!18381 (= res!7714 (>= (level!18 res!5606) (level!18 xs!604)))))

(declare-fun b!18382 () Bool)

(assert (=> b!18382 (= e!9829 tp_is_empty!77)))

(declare-fun b!18383 () Bool)

(assert (=> b!18383 (= e!9832 e!9833)))

(declare-fun res!7708 () Bool)

(assert (=> b!18383 (=> res!7708 e!9833)))

(assert (=> b!18383 (= res!7708 (> 0 i!309))))

(declare-fun b!18384 () Bool)

(declare-fun res!7709 () Bool)

(assert (=> b!18384 (=> (not res!7709) (not e!9832))))

(declare-fun size!208 (Conc!21) Int)

(assert (=> b!18384 (= res!7709 (<= i!298 (size!208 xs!604)))))

(declare-fun b!18385 () Bool)

(declare-fun tp!4322 () Bool)

(declare-fun tp!4323 () Bool)

(assert (=> b!18385 (= e!9829 (and tp!4322 tp!4323))))

(assert (= (and start!3268 res!7711) b!18371))

(assert (= (and b!18371 res!7706) b!18372))

(assert (= (and b!18372 res!7705) b!18384))

(assert (= (and b!18384 res!7709) b!18367))

(assert (= (and b!18367 res!7704) b!18379))

(assert (= (and b!18379 res!7715) b!18375))

(assert (= (and b!18375 res!7710) b!18374))

(assert (= (and b!18374 res!7716) b!18381))

(assert (= (and b!18381 res!7714) b!18370))

(assert (= (and b!18370 res!7712) b!18368))

(assert (= (and b!18368 res!7707) b!18376))

(assert (= (and b!18376 res!7717) b!18380))

(assert (= (and b!18380 res!7713) b!18383))

(assert (= (and b!18383 (not res!7708)) b!18378))

(assert (= (and start!3268 (is-Cons!324 l!772)) b!18377))

(assert (= (and start!3268 (is-CC!20 res!5606)) b!18385))

(assert (= (and start!3268 (is-Single!20 res!5606)) b!18382))

(assert (= (and start!3268 (is-CC!20 xs!604)) b!18373))

(assert (= (and start!3268 (is-Single!20 xs!604)) b!18369))

(declare-fun m!21187 () Bool)

(assert (=> b!18381 m!21187))

(declare-fun m!21189 () Bool)

(assert (=> b!18381 m!21189))

(declare-fun m!21191 () Bool)

(assert (=> b!18376 m!21191))

(declare-fun m!21193 () Bool)

(assert (=> b!18378 m!21193))

(assert (=> b!18374 m!21187))

(assert (=> b!18374 m!21189))

(declare-fun m!21195 () Bool)

(assert (=> b!18379 m!21195))

(declare-fun m!21197 () Bool)

(assert (=> b!18370 m!21197))

(declare-fun m!21199 () Bool)

(assert (=> b!18371 m!21199))

(declare-fun m!21201 () Bool)

(assert (=> b!18384 m!21201))

(declare-fun m!21203 () Bool)

(assert (=> start!3268 m!21203))

(declare-fun m!21205 () Bool)

(assert (=> b!18375 m!21205))

(declare-fun m!21207 () Bool)

(assert (=> b!18368 m!21207))

(push 1)

(assert (not b!18374))

(assert (not b!18385))

(assert (not b!18370))

(assert (not b!18384))

(assert (not b!18377))

(assert tp_is_empty!77)

(assert (not b!18378))

(assert (not b!18375))

(assert (not b!18371))

(assert (not b!18381))

(assert (not b!18368))

(assert (not start!3268))

(assert (not b!18376))

(assert (not b!18373))

(assert (not b!18379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!18395 () Bool)

(declare-fun e!9839 () Int)

(declare-fun e!9838 () Int)

(assert (=> b!18395 (= e!9839 e!9838)))

(declare-fun c!4613 () Bool)

(assert (=> b!18395 (= c!4613 (is-Single!20 xs!604))))

(declare-fun b!18396 () Bool)

(assert (=> b!18396 (= e!9838 1)))

(declare-fun d!12175 () Bool)

(declare-fun lt!2764 () Int)

(assert (=> d!12175 (>= lt!2764 0)))

(assert (=> d!12175 (= lt!2764 e!9839)))

(declare-fun c!4612 () Bool)

(assert (=> d!12175 (= c!4612 (is-Empty!31 xs!604))))

(assert (=> d!12175 (= (size!208 xs!604) lt!2764)))

(declare-fun b!18394 () Bool)

(assert (=> b!18394 (= e!9839 0)))

(declare-fun b!18397 () Bool)

(assert (=> b!18397 (= e!9838 (+ (size!208 (left!665 xs!604)) (size!208 (right!668 xs!604))))))

(assert (= (and b!18395 c!4613) b!18396))

(assert (= (and b!18395 (not c!4613)) b!18397))

(assert (= (and d!12175 c!4612) b!18394))

(assert (= (and d!12175 (not c!4612)) b!18395))

(declare-fun m!21209 () Bool)

(assert (=> b!18397 m!21209))

(declare-fun m!21211 () Bool)

(assert (=> b!18397 m!21211))

(assert (=> b!18384 d!12175))

(declare-fun d!12177 () Bool)

(declare-fun lt!2767 () Int)

(assert (=> d!12177 (>= lt!2767 0)))

(declare-fun e!9842 () Int)

(assert (=> d!12177 (= lt!2767 e!9842)))

(declare-fun c!4616 () Bool)

(assert (=> d!12177 (= c!4616 (is-Nil!325 l!772))))

(assert (=> d!12177 (= (size!207 l!772) lt!2767)))

(declare-fun b!18402 () Bool)

(assert (=> b!18402 (= e!9842 0)))

(declare-fun b!18403 () Bool)

(assert (=> b!18403 (= e!9842 (+ 1 (size!207 (t!4325 l!772))))))

(assert (= (and d!12177 c!4616) b!18402))

(assert (= (and d!12177 (not c!4616)) b!18403))

(declare-fun m!21213 () Bool)

(assert (=> b!18403 m!21213))

(assert (=> b!18378 d!12177))

(declare-fun b!18409 () Bool)

(declare-fun e!9845 () Int)

(declare-fun lt!2776 () Int)

(declare-fun lt!2775 () Int)

(assert (=> b!18409 (= e!9845 (+ 1 (ite (>= lt!2776 lt!2775) lt!2776 lt!2775)))))

(assert (=> b!18409 (= lt!2775 (level!18 (right!668 res!5606)))))

(assert (=> b!18409 (= lt!2776 (level!18 (left!665 res!5606)))))

(declare-fun d!12179 () Bool)

(declare-fun lt!2774 () Int)

(assert (=> d!12179 (>= lt!2774 0)))

(assert (=> d!12179 (= lt!2774 e!9845)))

(declare-fun c!4619 () Bool)

(assert (=> d!12179 (= c!4619 (or (is-Empty!31 res!5606) (is-Single!20 res!5606)))))

(assert (=> d!12179 (= (level!18 res!5606) lt!2774)))

(declare-fun b!18408 () Bool)

(assert (=> b!18408 (= e!9845 0)))

(assert (= (and d!12179 c!4619) b!18408))

(assert (= (and d!12179 (not c!4619)) b!18409))

(declare-fun m!21215 () Bool)

(assert (=> b!18409 m!21215))

(declare-fun m!21217 () Bool)

(assert (=> b!18409 m!21217))

(assert (=> b!18374 d!12179))

(declare-fun b!18411 () Bool)

(declare-fun e!9846 () Int)

(declare-fun lt!2779 () Int)

(declare-fun lt!2778 () Int)

(assert (=> b!18411 (= e!9846 (+ 1 (ite (>= lt!2779 lt!2778) lt!2779 lt!2778)))))

(assert (=> b!18411 (= lt!2778 (level!18 (right!668 xs!604)))))

(assert (=> b!18411 (= lt!2779 (level!18 (left!665 xs!604)))))

(declare-fun d!12181 () Bool)

(declare-fun lt!2777 () Int)

(assert (=> d!12181 (>= lt!2777 0)))

(assert (=> d!12181 (= lt!2777 e!9846)))

(declare-fun c!4620 () Bool)

(assert (=> d!12181 (= c!4620 (or (is-Empty!31 xs!604) (is-Single!20 xs!604)))))

(assert (=> d!12181 (= (level!18 xs!604) lt!2777)))

(declare-fun b!18410 () Bool)

(assert (=> b!18410 (= e!9846 0)))

(assert (= (and d!12181 c!4620) b!18410))

(assert (= (and d!12181 (not c!4620)) b!18411))

(declare-fun m!21219 () Bool)

(assert (=> b!18411 m!21219))

(declare-fun m!21221 () Bool)

(assert (=> b!18411 m!21221))

(assert (=> b!18374 d!12181))

(declare-fun b!18420 () Bool)

(declare-fun e!9851 () Bool)

(declare-fun e!9852 () Bool)

(assert (=> b!18420 (= e!9851 e!9852)))

(declare-fun res!7728 () Bool)

(assert (=> b!18420 (=> (not res!7728) (not e!9852))))

(assert (=> b!18420 (= res!7728 (>= (- (level!18 (left!665 xs!604)) (level!18 (right!668 xs!604))) (- 1)))))

(declare-fun d!12183 () Bool)

(declare-fun res!7729 () Bool)

(assert (=> d!12183 (=> res!7729 e!9851)))

(assert (=> d!12183 (= res!7729 (not (is-CC!20 xs!604)))))

(assert (=> d!12183 (= (balanced!20 xs!604) e!9851)))

(declare-fun b!18422 () Bool)

(declare-fun res!7726 () Bool)

(assert (=> b!18422 (=> (not res!7726) (not e!9852))))

(assert (=> b!18422 (= res!7726 (balanced!20 (left!665 xs!604)))))

(declare-fun b!18421 () Bool)

(declare-fun res!7727 () Bool)

(assert (=> b!18421 (=> (not res!7727) (not e!9852))))

(assert (=> b!18421 (= res!7727 (<= (- (level!18 (left!665 xs!604)) (level!18 (right!668 xs!604))) 1))))

(declare-fun b!18423 () Bool)

(assert (=> b!18423 (= e!9852 (balanced!20 (right!668 xs!604)))))

(assert (= (and d!12183 (not res!7729)) b!18420))

(assert (= (and b!18420 res!7728) b!18421))

(assert (= (and b!18421 res!7727) b!18422))

(assert (= (and b!18422 res!7726) b!18423))

(assert (=> b!18420 m!21221))

(assert (=> b!18420 m!21219))

(declare-fun m!21223 () Bool)

(assert (=> b!18422 m!21223))

(assert (=> b!18421 m!21221))

(assert (=> b!18421 m!21219))

(declare-fun m!21225 () Bool)

(assert (=> b!18423 m!21225))

(assert (=> b!18371 d!12183))

(declare-fun d!12185 () Bool)

(declare-fun res!7740 () Bool)

(declare-fun e!9858 () Bool)

(assert (=> d!12185 (=> res!7740 e!9858)))

(assert (=> d!12185 (= res!7740 (not (is-CC!20 xs!604)))))

(assert (=> d!12185 (= (concInv!19 xs!604) e!9858)))

(declare-fun b!18433 () Bool)

(declare-fun res!7738 () Bool)

(declare-fun e!9857 () Bool)

(assert (=> b!18433 (=> (not res!7738) (not e!9857))))

(assert (=> b!18433 (= res!7738 (not (isEmpty!283 (right!668 xs!604))))))

(declare-fun b!18434 () Bool)

(declare-fun res!7741 () Bool)

(assert (=> b!18434 (=> (not res!7741) (not e!9857))))

(assert (=> b!18434 (= res!7741 (concInv!19 (left!665 xs!604)))))

(declare-fun b!18435 () Bool)

(assert (=> b!18435 (= e!9857 (concInv!19 (right!668 xs!604)))))

(declare-fun b!18432 () Bool)

(assert (=> b!18432 (= e!9858 e!9857)))

(declare-fun res!7739 () Bool)

(assert (=> b!18432 (=> (not res!7739) (not e!9857))))

(assert (=> b!18432 (= res!7739 (not (isEmpty!283 (left!665 xs!604))))))

(assert (= (and d!12185 (not res!7740)) b!18432))

(assert (= (and b!18432 res!7739) b!18433))

(assert (= (and b!18433 res!7738) b!18434))

(assert (= (and b!18434 res!7741) b!18435))

(declare-fun m!21227 () Bool)

(assert (=> b!18433 m!21227))

(declare-fun m!21229 () Bool)

(assert (=> b!18434 m!21229))

(declare-fun m!21231 () Bool)

(assert (=> b!18435 m!21231))

(declare-fun m!21233 () Bool)

(assert (=> b!18432 m!21233))

(assert (=> start!3268 d!12185))

(declare-fun d!12187 () Bool)

(declare-fun e!9864 () Bool)

(assert (=> d!12187 e!9864))

(declare-fun res!7747 () Bool)

(assert (=> d!12187 (=> res!7747 e!9864)))

(assert (=> d!12187 (= res!7747 (not (is-CC!20 xs!604)))))

(declare-fun e!9863 () Bool)

(assert (=> d!12187 e!9863))

(declare-fun res!7746 () Bool)

(assert (=> d!12187 (=> (not res!7746) (not e!9863))))

(assert (=> d!12187 (= res!7746 (>= i!298 0))))

(assert (=> d!12187 (= (insertAppendAxiomInst!5 xs!604 i!298 y!824) true)))

(declare-fun b!18440 () Bool)

(assert (=> b!18440 (= e!9863 (<= i!298 (size!208 xs!604)))))

(declare-fun b!18441 () Bool)

(declare-fun appendInsertIndex!6 (List!330 List!330 Int T!1733) Bool)

(assert (=> b!18441 (= e!9864 (appendInsertIndex!6 (toList!90 (left!665 xs!604)) (toList!90 (right!668 xs!604)) i!298 y!824))))

(assert (= (and d!12187 res!7746) b!18440))

(assert (= (and d!12187 (not res!7747)) b!18441))

(assert (=> b!18440 m!21201))

(declare-fun m!21235 () Bool)

(assert (=> b!18441 m!21235))

(declare-fun m!21237 () Bool)

(assert (=> b!18441 m!21237))

(assert (=> b!18441 m!21235))

(assert (=> b!18441 m!21237))

(declare-fun m!21239 () Bool)

(assert (=> b!18441 m!21239))

(assert (=> b!18368 d!12187))

(assert (=> b!18381 d!12179))

(assert (=> b!18381 d!12181))

(declare-fun b!18452 () Bool)

(declare-fun e!9870 () List!330)

(assert (=> b!18452 (= e!9870 (Cons!324 (x!8747 xs!604) Nil!325))))

(declare-fun b!18451 () Bool)

(declare-fun e!9869 () List!330)

(assert (=> b!18451 (= e!9869 e!9870)))

(declare-fun c!4625 () Bool)

(assert (=> b!18451 (= c!4625 (is-Single!20 xs!604))))

(declare-fun d!12189 () Bool)

(declare-fun lt!2782 () List!330)

(assert (=> d!12189 (= (size!207 lt!2782) (size!208 xs!604))))

(assert (=> d!12189 (= lt!2782 e!9869)))

(declare-fun c!4626 () Bool)

(assert (=> d!12189 (= c!4626 (is-Empty!31 xs!604))))

(assert (=> d!12189 (= (toList!90 xs!604) lt!2782)))

(declare-fun b!18453 () Bool)

(declare-fun ++!15 (List!330 List!330) List!330)

(assert (=> b!18453 (= e!9870 (++!15 (toList!90 (left!665 xs!604)) (toList!90 (right!668 xs!604))))))

(declare-fun b!18450 () Bool)

(assert (=> b!18450 (= e!9869 Nil!325)))

(assert (= (and b!18451 c!4625) b!18452))

(assert (= (and b!18451 (not c!4625)) b!18453))

(assert (= (and d!12189 c!4626) b!18450))

(assert (= (and d!12189 (not c!4626)) b!18451))

(declare-fun m!21241 () Bool)

(assert (=> d!12189 m!21241))

(assert (=> d!12189 m!21201))

(assert (=> b!18453 m!21235))

(assert (=> b!18453 m!21237))

(assert (=> b!18453 m!21235))

(assert (=> b!18453 m!21237))

(declare-fun m!21243 () Bool)

(assert (=> b!18453 m!21243))

(assert (=> b!18376 d!12189))

(declare-fun b!18454 () Bool)

(declare-fun e!9871 () Bool)

(declare-fun e!9872 () Bool)

(assert (=> b!18454 (= e!9871 e!9872)))

(declare-fun res!7751 () Bool)

(assert (=> b!18454 (=> (not res!7751) (not e!9872))))

(assert (=> b!18454 (= res!7751 (>= (- (level!18 (left!665 res!5606)) (level!18 (right!668 res!5606))) (- 1)))))

(declare-fun d!12191 () Bool)

(declare-fun res!7752 () Bool)

(assert (=> d!12191 (=> res!7752 e!9871)))

(assert (=> d!12191 (= res!7752 (not (is-CC!20 res!5606)))))

(assert (=> d!12191 (= (balanced!20 res!5606) e!9871)))

(declare-fun b!18456 () Bool)

(declare-fun res!7749 () Bool)

(assert (=> b!18456 (=> (not res!7749) (not e!9872))))

(assert (=> b!18456 (= res!7749 (balanced!20 (left!665 res!5606)))))

(declare-fun b!18455 () Bool)

(declare-fun res!7750 () Bool)

(assert (=> b!18455 (=> (not res!7750) (not e!9872))))

(assert (=> b!18455 (= res!7750 (<= (- (level!18 (left!665 res!5606)) (level!18 (right!668 res!5606))) 1))))

(declare-fun b!18457 () Bool)

(assert (=> b!18457 (= e!9872 (balanced!20 (right!668 res!5606)))))

(assert (= (and d!12191 (not res!7752)) b!18454))

(assert (= (and b!18454 res!7751) b!18455))

(assert (= (and b!18455 res!7750) b!18456))

(assert (= (and b!18456 res!7749) b!18457))

(assert (=> b!18454 m!21217))

(assert (=> b!18454 m!21215))

(declare-fun m!21245 () Bool)

(assert (=> b!18456 m!21245))

(assert (=> b!18455 m!21217))

(assert (=> b!18455 m!21215))

(declare-fun m!21247 () Bool)

(assert (=> b!18457 m!21247))

(assert (=> b!18375 d!12191))

(declare-fun d!12193 () Bool)

(declare-fun res!7755 () Bool)

(declare-fun e!9874 () Bool)

(assert (=> d!12193 (=> res!7755 e!9874)))

(assert (=> d!12193 (= res!7755 (not (is-CC!20 res!5606)))))

(assert (=> d!12193 (= (concInv!19 res!5606) e!9874)))

(declare-fun b!18459 () Bool)

(declare-fun res!7753 () Bool)

(declare-fun e!9873 () Bool)

(assert (=> b!18459 (=> (not res!7753) (not e!9873))))

(assert (=> b!18459 (= res!7753 (not (isEmpty!283 (right!668 res!5606))))))

(declare-fun b!18460 () Bool)

(declare-fun res!7756 () Bool)

(assert (=> b!18460 (=> (not res!7756) (not e!9873))))

(assert (=> b!18460 (= res!7756 (concInv!19 (left!665 res!5606)))))

(declare-fun b!18461 () Bool)

(assert (=> b!18461 (= e!9873 (concInv!19 (right!668 res!5606)))))

(declare-fun b!18458 () Bool)

(assert (=> b!18458 (= e!9874 e!9873)))

(declare-fun res!7754 () Bool)

(assert (=> b!18458 (=> (not res!7754) (not e!9873))))

(assert (=> b!18458 (= res!7754 (not (isEmpty!283 (left!665 res!5606))))))

(assert (= (and d!12193 (not res!7755)) b!18458))

(assert (= (and b!18458 res!7754) b!18459))

(assert (= (and b!18459 res!7753) b!18460))

(assert (= (and b!18460 res!7756) b!18461))

(declare-fun m!21249 () Bool)

(assert (=> b!18459 m!21249))

(declare-fun m!21251 () Bool)

(assert (=> b!18460 m!21251))

(declare-fun m!21253 () Bool)

(assert (=> b!18461 m!21253))

(declare-fun m!21255 () Bool)

(assert (=> b!18458 m!21255))

(assert (=> b!18379 d!12193))

(declare-fun d!12195 () Bool)

(assert (=> d!12195 (= (isEmpty!283 res!5606) (= res!5606 Empty!31))))

(assert (=> b!18370 d!12195))

(declare-fun b!18466 () Bool)

(declare-fun e!9877 () Bool)

(declare-fun tp!4326 () Bool)

(assert (=> b!18466 (= e!9877 (and tp_is_empty!77 tp!4326))))

(assert (=> b!18377 (= tp!4321 e!9877)))

(assert (= (and b!18377 (is-Cons!324 (t!4325 l!772))) b!18466))

(declare-fun b!18473 () Bool)

(declare-fun e!9880 () Bool)

(declare-fun tp!4331 () Bool)

(declare-fun tp!4332 () Bool)

(assert (=> b!18473 (= e!9880 (and tp!4331 tp!4332))))

(declare-fun b!18474 () Bool)

(assert (=> b!18474 (= e!9880 tp_is_empty!77)))

(assert (=> b!18373 (= tp!4320 e!9880)))

(assert (= (and b!18373 (is-CC!20 (left!665 xs!604))) b!18473))

(assert (= (and b!18373 (is-Single!20 (left!665 xs!604))) b!18474))

(declare-fun b!18475 () Bool)

(declare-fun e!9881 () Bool)

(declare-fun tp!4333 () Bool)

(declare-fun tp!4334 () Bool)

(assert (=> b!18475 (= e!9881 (and tp!4333 tp!4334))))

(declare-fun b!18476 () Bool)

(assert (=> b!18476 (= e!9881 tp_is_empty!77)))

(assert (=> b!18373 (= tp!4319 e!9881)))

(assert (= (and b!18373 (is-CC!20 (right!668 xs!604))) b!18475))

(assert (= (and b!18373 (is-Single!20 (right!668 xs!604))) b!18476))

(declare-fun b!18477 () Bool)

(declare-fun e!9882 () Bool)

(declare-fun tp!4335 () Bool)

(declare-fun tp!4336 () Bool)

(assert (=> b!18477 (= e!9882 (and tp!4335 tp!4336))))

(declare-fun b!18478 () Bool)

(assert (=> b!18478 (= e!9882 tp_is_empty!77)))

(assert (=> b!18385 (= tp!4322 e!9882)))

(assert (= (and b!18385 (is-CC!20 (left!665 res!5606))) b!18477))

(assert (= (and b!18385 (is-Single!20 (left!665 res!5606))) b!18478))

(declare-fun b!18479 () Bool)

(declare-fun e!9883 () Bool)

(declare-fun tp!4337 () Bool)

(declare-fun tp!4338 () Bool)

(assert (=> b!18479 (= e!9883 (and tp!4337 tp!4338))))

(declare-fun b!18480 () Bool)

(assert (=> b!18480 (= e!9883 tp_is_empty!77)))

(assert (=> b!18385 (= tp!4323 e!9883)))

(assert (= (and b!18385 (is-CC!20 (right!668 res!5606))) b!18479))

(assert (= (and b!18385 (is-Single!20 (right!668 res!5606))) b!18480))

(push 1)

(assert (not b!18461))

(assert (not b!18473))

(assert (not b!18455))

(assert (not b!18477))

(assert (not b!18411))

(assert (not b!18453))

(assert (not b!18441))

(assert (not b!18421))

(assert (not b!18432))

(assert (not b!18423))

(assert (not b!18422))

(assert (not d!12189))

(assert (not b!18454))

(assert tp_is_empty!77)

(assert (not b!18475))

(assert (not b!18434))

(assert (not b!18440))

(assert (not b!18460))

(assert (not b!18397))

(assert (not b!18458))

(assert (not b!18457))

(assert (not b!18479))

(assert (not b!18435))

(assert (not b!18420))

(assert (not b!18466))

(assert (not b!18459))

(assert (not b!18456))

(assert (not b!18403))

(assert (not b!18433))

(assert (not b!18409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

