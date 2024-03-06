; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11366 () Bool)

(assert start!11366)

(declare-fun res!45548 () Bool)

(declare-fun e!47360 () Bool)

(assert (=> start!11366 (=> (not res!45548) (not e!47360))))

(declare-datatypes () ((Color!13 (Red!12) (Black!12))))

(declare-datatypes () ((Tree!110 (Empty!193) (Node!154 (color!43 Color!13) (left!1653 Tree!110) (value!6800 Int) (right!1656 Tree!110)))))

(declare-fun t!48193 () Tree!110)

(assert (=> start!11366 (= res!45548 (not (is-Empty!193 t!48193)))))

(assert (=> start!11366 e!47360))

(assert (=> start!11366 true))

(declare-fun b!87296 () Bool)

(declare-fun res!45549 () Bool)

(assert (=> b!87296 (=> (not res!45549) (not e!47360))))

(declare-fun x$1!1126 () Int)

(declare-fun size!3 (Tree!110) Int)

(assert (=> b!87296 (= res!45549 (= x$1!1126 (+ (+ (size!3 (left!1653 t!48193)) 1) (size!3 (right!1656 t!48193)))))))

(declare-fun b!87297 () Bool)

(assert (=> b!87297 (= e!47360 (< x$1!1126 0))))

(assert (= (and start!11366 res!45548) b!87296))

(assert (= (and b!87296 res!45549) b!87297))

(declare-fun m!83486 () Bool)

(assert (=> b!87296 m!83486))

(declare-fun m!83488 () Bool)

(assert (=> b!87296 m!83488))

(push 1)

(assert (not b!87296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58165 () Bool)

(declare-fun lt!20177 () Int)

(assert (=> d!58165 (>= lt!20177 0)))

(declare-fun e!47363 () Int)

(assert (=> d!58165 (= lt!20177 e!47363)))

(declare-fun c!21611 () Bool)

(assert (=> d!58165 (= c!21611 (is-Empty!193 (left!1653 t!48193)))))

(assert (=> d!58165 (= (size!3 (left!1653 t!48193)) lt!20177)))

(declare-fun b!87302 () Bool)

(assert (=> b!87302 (= e!47363 0)))

(declare-fun b!87303 () Bool)

(assert (=> b!87303 (= e!47363 (+ (+ (size!3 (left!1653 (left!1653 t!48193))) 1) (size!3 (right!1656 (left!1653 t!48193)))))))

(assert (= (and d!58165 c!21611) b!87302))

(assert (= (and d!58165 (not c!21611)) b!87303))

(declare-fun m!83490 () Bool)

(assert (=> b!87303 m!83490))

(declare-fun m!83492 () Bool)

(assert (=> b!87303 m!83492))

(assert (=> b!87296 d!58165))

(declare-fun d!58167 () Bool)

(declare-fun lt!20178 () Int)

(assert (=> d!58167 (>= lt!20178 0)))

(declare-fun e!47364 () Int)

(assert (=> d!58167 (= lt!20178 e!47364)))

(declare-fun c!21612 () Bool)

(assert (=> d!58167 (= c!21612 (is-Empty!193 (right!1656 t!48193)))))

(assert (=> d!58167 (= (size!3 (right!1656 t!48193)) lt!20178)))

(declare-fun b!87304 () Bool)

(assert (=> b!87304 (= e!47364 0)))

(declare-fun b!87305 () Bool)

(assert (=> b!87305 (= e!47364 (+ (+ (size!3 (left!1653 (right!1656 t!48193))) 1) (size!3 (right!1656 (right!1656 t!48193)))))))

(assert (= (and d!58167 c!21612) b!87304))

(assert (= (and d!58167 (not c!21612)) b!87305))

(declare-fun m!83494 () Bool)

(assert (=> b!87305 m!83494))

(declare-fun m!83496 () Bool)

(assert (=> b!87305 m!83496))

(assert (=> b!87296 d!58167))

(push 1)

(assert (not b!87305))

(assert (not b!87303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

