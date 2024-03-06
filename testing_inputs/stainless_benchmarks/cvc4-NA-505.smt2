; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3518 () Bool)

(assert start!3518)

(declare-fun i!249 () Int)

(declare-datatypes () ((T!1765 (T!1766 (val!55 Int)))))

(declare-fun y!781 () T!1765)

(declare-fun e!11584 () Bool)

(declare-datatypes () ((Conc!37 (CC!36 (left!681 Conc!37) (right!684 Conc!37)) (Single!36 (x!8813 T!1765)) (Empty!47))))

(declare-fun xs!570 () Conc!37)

(declare-fun b!22185 () Bool)

(declare-datatypes () ((List!341 (Cons!335 (h!249 T!1765) (t!4336 List!341)) (Nil!336))))

(declare-fun appendInsertIndex!14 (List!341 List!341 Int T!1765) Bool)

(declare-fun toList!101 (Conc!37) List!341)

(assert (=> b!22185 (= e!11584 (not (appendInsertIndex!14 (toList!101 (left!681 xs!570)) (toList!101 (right!684 xs!570)) i!249 y!781)))))

(declare-fun b!22186 () Bool)

(declare-fun e!11585 () Bool)

(declare-fun tp!4888 () Bool)

(declare-fun tp!4887 () Bool)

(assert (=> b!22186 (= e!11585 (and tp!4888 tp!4887))))

(declare-fun b!22187 () Bool)

(declare-fun res!9751 () Bool)

(assert (=> b!22187 (=> (not res!9751) (not e!11584))))

(assert (=> b!22187 (= res!9751 (is-CC!36 xs!570))))

(declare-fun b!22188 () Bool)

(declare-fun tp_is_empty!109 () Bool)

(assert (=> b!22188 (= e!11585 tp_is_empty!109)))

(declare-fun b!22189 () Bool)

(declare-fun res!9750 () Bool)

(assert (=> b!22189 (=> (not res!9750) (not e!11584))))

(declare-fun size!232 (Conc!37) Int)

(assert (=> b!22189 (= res!9750 (<= i!249 (size!232 xs!570)))))

(declare-fun res!9749 () Bool)

(assert (=> start!3518 (=> (not res!9749) (not e!11584))))

(assert (=> start!3518 (= res!9749 (>= i!249 0))))

(assert (=> start!3518 e!11584))

(assert (=> start!3518 true))

(assert (=> start!3518 e!11585))

(assert (=> start!3518 tp_is_empty!109))

(assert (= (and start!3518 res!9749) b!22189))

(assert (= (and b!22189 res!9750) b!22187))

(assert (= (and b!22187 res!9751) b!22185))

(assert (= (and start!3518 (is-CC!36 xs!570)) b!22186))

(assert (= (and start!3518 (is-Single!36 xs!570)) b!22188))

(declare-fun m!24307 () Bool)

(assert (=> b!22185 m!24307))

(declare-fun m!24309 () Bool)

(assert (=> b!22185 m!24309))

(assert (=> b!22185 m!24307))

(assert (=> b!22185 m!24309))

(declare-fun m!24311 () Bool)

(assert (=> b!22185 m!24311))

(declare-fun m!24313 () Bool)

(assert (=> b!22189 m!24313))

(push 1)

(assert (not b!22185))

(assert (not b!22189))

(assert (not b!22186))

(assert tp_is_empty!109)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!22200 () Bool)

(declare-fun e!11594 () Bool)

(declare-fun size!233 (List!341) Int)

(assert (=> b!22200 (= e!11594 (<= i!249 (+ (size!233 (toList!101 (left!681 xs!570))) (size!233 (toList!101 (right!684 xs!570))))))))

(declare-fun b!22201 () Bool)

(declare-fun e!11595 () List!341)

(declare-fun ++!24 (List!341 List!341) List!341)

(declare-fun insertAtIndex!13 (List!341 Int T!1765) List!341)

(assert (=> b!22201 (= e!11595 (++!24 (toList!101 (left!681 xs!570)) (insertAtIndex!13 (toList!101 (right!684 xs!570)) (- i!249 (size!233 (toList!101 (left!681 xs!570)))) y!781)))))

(declare-fun e!11597 () Bool)

(declare-fun b!22202 () Bool)

(assert (=> b!22202 (= e!11597 (= (insertAtIndex!13 (++!24 (toList!101 (left!681 xs!570)) (toList!101 (right!684 xs!570))) i!249 y!781) e!11595))))

(declare-fun c!5285 () Bool)

(assert (=> b!22202 (= c!5285 (< i!249 (size!233 (toList!101 (left!681 xs!570)))))))

(declare-fun d!13113 () Bool)

(assert (=> d!13113 e!11597))

(declare-fun res!9758 () Bool)

(assert (=> d!13113 (=> (not res!9758) (not e!11597))))

(declare-fun e!11596 () Bool)

(assert (=> d!13113 (= res!9758 e!11596)))

(declare-fun res!9759 () Bool)

(assert (=> d!13113 (=> res!9759 e!11596)))

(assert (=> d!13113 (= res!9759 (or (is-Nil!336 (toList!101 (left!681 xs!570))) (= i!249 0)))))

(assert (=> d!13113 e!11594))

(declare-fun res!9760 () Bool)

(assert (=> d!13113 (=> (not res!9760) (not e!11594))))

(assert (=> d!13113 (= res!9760 (<= 0 i!249))))

(assert (=> d!13113 (= (appendInsertIndex!14 (toList!101 (left!681 xs!570)) (toList!101 (right!684 xs!570)) i!249 y!781) true)))

(declare-fun b!22203 () Bool)

(assert (=> b!22203 (= e!11595 (++!24 (insertAtIndex!13 (toList!101 (left!681 xs!570)) i!249 y!781) (toList!101 (right!684 xs!570))))))

(declare-fun b!22204 () Bool)

(assert (=> b!22204 (= e!11596 (appendInsertIndex!14 (t!4336 (toList!101 (left!681 xs!570))) (toList!101 (right!684 xs!570)) (- i!249 1) y!781))))

(assert (= (and d!13113 res!9760) b!22200))

(assert (= (and d!13113 (not res!9759)) b!22204))

(assert (= (and d!13113 res!9758) b!22202))

(assert (= (and b!22202 c!5285) b!22203))

(assert (= (and b!22202 (not c!5285)) b!22201))

(assert (=> b!22200 m!24307))

(declare-fun m!24315 () Bool)

(assert (=> b!22200 m!24315))

(assert (=> b!22200 m!24309))

(declare-fun m!24317 () Bool)

(assert (=> b!22200 m!24317))

(assert (=> b!22202 m!24307))

(assert (=> b!22202 m!24309))

(declare-fun m!24319 () Bool)

(assert (=> b!22202 m!24319))

(assert (=> b!22202 m!24319))

(declare-fun m!24321 () Bool)

(assert (=> b!22202 m!24321))

(assert (=> b!22202 m!24307))

(assert (=> b!22202 m!24315))

(assert (=> b!22201 m!24307))

(assert (=> b!22201 m!24315))

(assert (=> b!22201 m!24309))

(declare-fun m!24323 () Bool)

(assert (=> b!22201 m!24323))

(assert (=> b!22201 m!24307))

(assert (=> b!22201 m!24323))

(declare-fun m!24325 () Bool)

(assert (=> b!22201 m!24325))

(assert (=> b!22203 m!24307))

(declare-fun m!24327 () Bool)

(assert (=> b!22203 m!24327))

(assert (=> b!22203 m!24327))

(assert (=> b!22203 m!24309))

(declare-fun m!24329 () Bool)

(assert (=> b!22203 m!24329))

(assert (=> b!22204 m!24309))

(declare-fun m!24331 () Bool)

(assert (=> b!22204 m!24331))

(assert (=> b!22185 d!13113))

(declare-fun b!22216 () Bool)

(declare-fun e!11602 () List!341)

(assert (=> b!22216 (= e!11602 (++!24 (toList!101 (left!681 (left!681 xs!570))) (toList!101 (right!684 (left!681 xs!570)))))))

(declare-fun d!13115 () Bool)

(declare-fun lt!3536 () List!341)

(assert (=> d!13115 (= (size!233 lt!3536) (size!232 (left!681 xs!570)))))

(declare-fun e!11603 () List!341)

(assert (=> d!13115 (= lt!3536 e!11603)))

(declare-fun c!5290 () Bool)

(assert (=> d!13115 (= c!5290 (is-Empty!47 (left!681 xs!570)))))

(assert (=> d!13115 (= (toList!101 (left!681 xs!570)) lt!3536)))

(declare-fun b!22213 () Bool)

(assert (=> b!22213 (= e!11603 Nil!336)))

(declare-fun b!22214 () Bool)

(assert (=> b!22214 (= e!11603 e!11602)))

(declare-fun c!5291 () Bool)

(assert (=> b!22214 (= c!5291 (is-Single!36 (left!681 xs!570)))))

(declare-fun b!22215 () Bool)

(assert (=> b!22215 (= e!11602 (Cons!335 (x!8813 (left!681 xs!570)) Nil!336))))

(assert (= (and b!22214 c!5291) b!22215))

(assert (= (and b!22214 (not c!5291)) b!22216))

(assert (= (and d!13115 c!5290) b!22213))

(assert (= (and d!13115 (not c!5290)) b!22214))

(declare-fun m!24333 () Bool)

(assert (=> b!22216 m!24333))

(declare-fun m!24335 () Bool)

(assert (=> b!22216 m!24335))

(assert (=> b!22216 m!24333))

(assert (=> b!22216 m!24335))

(declare-fun m!24337 () Bool)

(assert (=> b!22216 m!24337))

(declare-fun m!24339 () Bool)

(assert (=> d!13115 m!24339))

(declare-fun m!24341 () Bool)

(assert (=> d!13115 m!24341))

(assert (=> b!22185 d!13115))

(declare-fun b!22220 () Bool)

(declare-fun e!11604 () List!341)

(assert (=> b!22220 (= e!11604 (++!24 (toList!101 (left!681 (right!684 xs!570))) (toList!101 (right!684 (right!684 xs!570)))))))

(declare-fun d!13117 () Bool)

(declare-fun lt!3537 () List!341)

(assert (=> d!13117 (= (size!233 lt!3537) (size!232 (right!684 xs!570)))))

(declare-fun e!11605 () List!341)

(assert (=> d!13117 (= lt!3537 e!11605)))

(declare-fun c!5292 () Bool)

(assert (=> d!13117 (= c!5292 (is-Empty!47 (right!684 xs!570)))))

(assert (=> d!13117 (= (toList!101 (right!684 xs!570)) lt!3537)))

(declare-fun b!22217 () Bool)

(assert (=> b!22217 (= e!11605 Nil!336)))

(declare-fun b!22218 () Bool)

(assert (=> b!22218 (= e!11605 e!11604)))

(declare-fun c!5293 () Bool)

(assert (=> b!22218 (= c!5293 (is-Single!36 (right!684 xs!570)))))

(declare-fun b!22219 () Bool)

(assert (=> b!22219 (= e!11604 (Cons!335 (x!8813 (right!684 xs!570)) Nil!336))))

(assert (= (and b!22218 c!5293) b!22219))

(assert (= (and b!22218 (not c!5293)) b!22220))

(assert (= (and d!13117 c!5292) b!22217))

(assert (= (and d!13117 (not c!5292)) b!22218))

(declare-fun m!24343 () Bool)

(assert (=> b!22220 m!24343))

(declare-fun m!24345 () Bool)

(assert (=> b!22220 m!24345))

(assert (=> b!22220 m!24343))

(assert (=> b!22220 m!24345))

(declare-fun m!24347 () Bool)

(assert (=> b!22220 m!24347))

(declare-fun m!24349 () Bool)

(assert (=> d!13117 m!24349))

(declare-fun m!24351 () Bool)

(assert (=> d!13117 m!24351))

(assert (=> b!22185 d!13117))

(declare-fun b!22231 () Bool)

(declare-fun e!11611 () Int)

(assert (=> b!22231 (= e!11611 1)))

(declare-fun b!22229 () Bool)

(declare-fun e!11610 () Int)

(assert (=> b!22229 (= e!11610 0)))

(declare-fun b!22230 () Bool)

(assert (=> b!22230 (= e!11610 e!11611)))

(declare-fun c!5299 () Bool)

(assert (=> b!22230 (= c!5299 (is-Single!36 xs!570))))

(declare-fun d!13119 () Bool)

(declare-fun lt!3540 () Int)

(assert (=> d!13119 (>= lt!3540 0)))

(assert (=> d!13119 (= lt!3540 e!11610)))

(declare-fun c!5298 () Bool)

(assert (=> d!13119 (= c!5298 (is-Empty!47 xs!570))))

(assert (=> d!13119 (= (size!232 xs!570) lt!3540)))

(declare-fun b!22232 () Bool)

(assert (=> b!22232 (= e!11611 (+ (size!232 (left!681 xs!570)) (size!232 (right!684 xs!570))))))

(assert (= (and b!22230 c!5299) b!22231))

(assert (= (and b!22230 (not c!5299)) b!22232))

(assert (= (and d!13119 c!5298) b!22229))

(assert (= (and d!13119 (not c!5298)) b!22230))

(assert (=> b!22232 m!24341))

(assert (=> b!22232 m!24351))

(assert (=> b!22189 d!13119))

(declare-fun b!22239 () Bool)

(declare-fun e!11614 () Bool)

(declare-fun tp!4893 () Bool)

(declare-fun tp!4894 () Bool)

(assert (=> b!22239 (= e!11614 (and tp!4893 tp!4894))))

(declare-fun b!22240 () Bool)

(assert (=> b!22240 (= e!11614 tp_is_empty!109)))

(assert (=> b!22186 (= tp!4888 e!11614)))

(assert (= (and b!22186 (is-CC!36 (left!681 xs!570))) b!22239))

(assert (= (and b!22186 (is-Single!36 (left!681 xs!570))) b!22240))

(declare-fun b!22241 () Bool)

(declare-fun e!11615 () Bool)

(declare-fun tp!4895 () Bool)

(declare-fun tp!4896 () Bool)

(assert (=> b!22241 (= e!11615 (and tp!4895 tp!4896))))

(declare-fun b!22242 () Bool)

(assert (=> b!22242 (= e!11615 tp_is_empty!109)))

(assert (=> b!22186 (= tp!4887 e!11615)))

(assert (= (and b!22186 (is-CC!36 (right!684 xs!570))) b!22241))

(assert (= (and b!22186 (is-Single!36 (right!684 xs!570))) b!22242))

(push 1)

(assert (not b!22216))

(assert (not d!13117))

(assert (not b!22241))

(assert (not b!22203))

(assert (not b!22232))

(assert tp_is_empty!109)

(assert (not b!22239))

(assert (not b!22220))

(assert (not d!13115))

(assert (not b!22204))

(assert (not b!22200))

(assert (not b!22202))

(assert (not b!22201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

