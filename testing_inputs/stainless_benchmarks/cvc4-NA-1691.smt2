; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11792 () Bool)

(assert start!11792)

(declare-fun res!47035 () Bool)

(declare-fun e!49036 () Bool)

(assert (=> start!11792 (=> (not res!47035) (not e!49036))))

(declare-fun n!1787 () Int)

(declare-fun m!85913 () Int)

(assert (=> start!11792 (= res!47035 (and (>= n!1787 0) (>= m!85913 0) (not (= m!85913 0))))))

(assert (=> start!11792 e!49036))

(assert (=> start!11792 true))

(declare-fun b!89855 () Bool)

(declare-fun res!47036 () Bool)

(assert (=> b!89855 (=> (not res!47036) (not e!49036))))

(declare-fun res!47029 () Int)

(declare-fun add!3 (Int Int) Int)

(assert (=> b!89855 (= res!47036 (= res!47029 (+ (add!3 n!1787 (- m!85913 1)) 1)))))

(declare-fun b!89856 () Bool)

(assert (=> b!89856 (= e!49036 (< res!47029 0))))

(assert (= (and start!11792 res!47035) b!89855))

(assert (= (and b!89855 res!47036) b!89856))

(declare-fun m!85917 () Bool)

(assert (=> b!89855 m!85917))

(push 1)

(assert (not b!89855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59437 () Bool)

(declare-fun lt!20452 () Int)

(assert (=> d!59437 (>= lt!20452 0)))

(declare-fun e!49039 () Int)

(assert (=> d!59437 (= lt!20452 e!49039)))

(declare-fun c!22010 () Bool)

(assert (=> d!59437 (= c!22010 (= (- m!85913 1) 0))))

(assert (=> d!59437 (and (>= n!1787 0) (>= (- m!85913 1) 0))))

(assert (=> d!59437 (= (add!3 n!1787 (- m!85913 1)) lt!20452)))

(declare-fun b!89861 () Bool)

(assert (=> b!89861 (= e!49039 n!1787)))

(declare-fun b!89862 () Bool)

(assert (=> b!89862 (= e!49039 (+ (add!3 n!1787 (- (- m!85913 1) 1)) 1))))

(assert (= (and d!59437 c!22010) b!89861))

(assert (= (and d!59437 (not c!22010)) b!89862))

(declare-fun m!85920 () Bool)

(assert (=> b!89862 m!85920))

(assert (=> b!89855 d!59437))

(push 1)

(assert (not b!89862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

